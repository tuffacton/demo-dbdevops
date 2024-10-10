terraform {
  required_providers {
    harness = {
      source = "harness/harness"
    }
  }
}

#Configure the Harness provider for Next Gen resources
provider "harness" {
  endpoint         = "https://app.harness.io/gateway"
  account_id       = "...."
  platform_api_key = "......"
}

resource "harness_platform_db_schema" "test" {
  identifier = "harness_platform_db_schema"
  project_id = "default_project"
  name       = "name"
  tags       = ["foo:bar", "bar:foo"]
  schema_source {
    connector = "gitConnector"
    repo      = "TestRepo"
    location  = "db/example-changelog.yaml"
  }
}
