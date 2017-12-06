use Mix.Config

# In this file, we keep production configuration that
# you'll likely want to automate and keep away from
# your version control system.
#
# You should document the content of this
# file or create a script for recreating it, since it's
# kept out of version control and might be hard to recover
# or recreate for your teammates (or yourself later on).
config :demo, DemoWeb.Endpoint,
  secret_key_base: "lRnlCHNxs5eCw/5EkFTvIfG7sQU6uPUseOtMhh57D+9IXs7CnPjVq1RO+XLLZHeY"

# Configure your database
config :demo, Demo.Repo,
  adapter: Ecto.Adapters.Postgres,
  username: System.get_env("DATA_DB_USER"),
  password: System.get_env("DATA_DB_PASS"),
  hostname: System.get_env("DATA_DB_HOST"),
  database: "demo_prod",
  pool_size: 15
