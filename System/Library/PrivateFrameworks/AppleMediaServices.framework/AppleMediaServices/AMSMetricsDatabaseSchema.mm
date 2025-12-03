@interface AMSMetricsDatabaseSchema
+ (BOOL)createOrUpdateSchemaUsingConnection:(id)connection error:(id *)error;
+ (void)migrateVersion0to1WithMigration:(id)migration;
+ (void)migrateVersion4to5WithMigration:(id)migration;
+ (void)migrateVersion6to7WithMigration:(id)migration;
@end

@implementation AMSMetricsDatabaseSchema

+ (BOOL)createOrUpdateSchemaUsingConnection:(id)connection error:(id *)error
{
  errorCopy = error;
  v42 = *MEMORY[0x1E69E9840];
  connectionCopy = connection;
  v5 = [[AMSSQLiteSchema alloc] initWithConnection:connectionCopy];
  currentUserVersion = [(AMSSQLiteSchema *)v5 currentUserVersion];
  v7 = 0;
  while (1)
  {
    if (currentUserVersion > 6)
    {
      v16 = 1;
      v17 = connectionCopy;
      goto LABEL_34;
    }

    if (currentUserVersion > 2)
    {
      break;
    }

    switch(currentUserVersion)
    {
      case 0:
        v36 = v7;
        v37[0] = MEMORY[0x1E69E9820];
        v37[1] = 3221225472;
        v37[2] = __70__AMSMetricsDatabaseSchema_createOrUpdateSchemaUsingConnection_error___block_invoke;
        v37[3] = &__block_descriptor_40_e34_v16__0__AMSSQLiteSchemaMigration_8l;
        v37[4] = self;
        v8 = [(AMSSQLiteSchema *)v5 migrateToVersion:1 usingBlock:v37 error:&v36];
        v9 = v36;
        goto LABEL_17;
      case 1:
        v34 = v7;
        v35[0] = MEMORY[0x1E69E9820];
        v35[1] = 3221225472;
        v35[2] = __70__AMSMetricsDatabaseSchema_createOrUpdateSchemaUsingConnection_error___block_invoke_2;
        v35[3] = &__block_descriptor_40_e34_v16__0__AMSSQLiteSchemaMigration_8l;
        v35[4] = self;
        v8 = [(AMSSQLiteSchema *)v5 migrateToVersion:2 usingBlock:v35 error:&v34];
        v9 = v34;
        goto LABEL_17;
      case 2:
        v32 = v7;
        v33[0] = MEMORY[0x1E69E9820];
        v33[1] = 3221225472;
        v33[2] = __70__AMSMetricsDatabaseSchema_createOrUpdateSchemaUsingConnection_error___block_invoke_3;
        v33[3] = &__block_descriptor_40_e34_v16__0__AMSSQLiteSchemaMigration_8l;
        v33[4] = self;
        v8 = [(AMSSQLiteSchema *)v5 migrateToVersion:3 usingBlock:v33 error:&v32];
        v9 = v32;
        goto LABEL_17;
    }

LABEL_18:
    currentUserVersion2 = [(AMSSQLiteSchema *)v5 currentUserVersion];
    v12 = currentUserVersion2 == currentUserVersion;
    currentUserVersion = currentUserVersion2;
    if (v12)
    {
      v13 = +[AMSLogConfig sharedMetricsConfig];
      if (!v13)
      {
        v13 = +[AMSLogConfig sharedConfig];
      }

      oSLogObject = [v13 OSLogObject];
      if (os_log_type_enabled(oSLogObject, OS_LOG_TYPE_ERROR))
      {
        v15 = objc_opt_class();
        *buf = 138543362;
        v39 = v15;
        _os_log_impl(&dword_192869000, oSLogObject, OS_LOG_TYPE_ERROR, "%{public}@: Failed to update database scheme. User version did not change", buf, 0xCu);
      }

      v16 = 1;
      v10 = v7;
      goto LABEL_33;
    }
  }

  if (currentUserVersion > 4)
  {
    if (currentUserVersion == 5)
    {
      v26 = v7;
      v27[0] = MEMORY[0x1E69E9820];
      v27[1] = 3221225472;
      v27[2] = __70__AMSMetricsDatabaseSchema_createOrUpdateSchemaUsingConnection_error___block_invoke_6;
      v27[3] = &__block_descriptor_40_e34_v16__0__AMSSQLiteSchemaMigration_8l;
      v27[4] = self;
      v8 = [(AMSSQLiteSchema *)v5 migrateToVersion:6 usingBlock:v27 error:&v26];
      v9 = v26;
    }

    else
    {
      v24 = v7;
      v25[0] = MEMORY[0x1E69E9820];
      v25[1] = 3221225472;
      v25[2] = __70__AMSMetricsDatabaseSchema_createOrUpdateSchemaUsingConnection_error___block_invoke_7;
      v25[3] = &__block_descriptor_40_e34_v16__0__AMSSQLiteSchemaMigration_8l;
      v25[4] = self;
      v8 = [(AMSSQLiteSchema *)v5 migrateToVersion:7 usingBlock:v25 error:&v24];
      v9 = v24;
    }
  }

  else if (currentUserVersion == 3)
  {
    v30 = v7;
    v31[0] = MEMORY[0x1E69E9820];
    v31[1] = 3221225472;
    v31[2] = __70__AMSMetricsDatabaseSchema_createOrUpdateSchemaUsingConnection_error___block_invoke_4;
    v31[3] = &__block_descriptor_40_e34_v16__0__AMSSQLiteSchemaMigration_8l;
    v31[4] = self;
    v8 = [(AMSSQLiteSchema *)v5 migrateToVersion:4 usingBlock:v31 error:&v30];
    v9 = v30;
  }

  else
  {
    v28 = v7;
    v29[0] = MEMORY[0x1E69E9820];
    v29[1] = 3221225472;
    v29[2] = __70__AMSMetricsDatabaseSchema_createOrUpdateSchemaUsingConnection_error___block_invoke_5;
    v29[3] = &__block_descriptor_40_e34_v16__0__AMSSQLiteSchemaMigration_8l;
    v29[4] = self;
    v8 = [(AMSSQLiteSchema *)v5 migrateToVersion:5 usingBlock:v29 error:&v28];
    v9 = v28;
  }

LABEL_17:
  v10 = v9;

  v7 = v10;
  if (v8)
  {
    goto LABEL_18;
  }

  if (errorCopy)
  {
    v18 = v10;
    *errorCopy = v10;
  }

  v13 = +[AMSLogConfig sharedMetricsConfig];
  if (!v13)
  {
    v13 = +[AMSLogConfig sharedConfig];
  }

  oSLogObject = [v13 OSLogObject];
  if (os_log_type_enabled(oSLogObject, OS_LOG_TYPE_ERROR))
  {
    v19 = objc_opt_class();
    v20 = AMSLogableError(v10);
    *buf = 138543618;
    v39 = v19;
    v40 = 2114;
    v41 = v20;
    _os_log_impl(&dword_192869000, oSLogObject, OS_LOG_TYPE_ERROR, "%{public}@: Failed to update database scheme. Success = NO. Error = %{public}@", buf, 0x16u);
  }

  v16 = 0;
LABEL_33:
  v17 = connectionCopy;

  v7 = v10;
LABEL_34:

  return v16;
}

+ (void)migrateVersion0to1WithMigration:(id)migration
{
  migrationCopy = migration;
  [migrationCopy executeStatement:@"PRAGMA auto_vacuum = 2;"];
  [migrationCopy executeStatement:{@"CREATE TABLE events (pid INTEGER, report_url TEXT, eventBody TEXT, locked_by TEXT, locked_time REAL DEFAULT 0, timestampInserted REAL, PRIMARY KEY (pid));"}];
  [migrationCopy executeStatement:@"CREATE INDEX events_locked_by ON events (locked_by);"];
  [migrationCopy executeStatement:@"CREATE INDEX events_locked_time ON events (locked_time);"];
  [migrationCopy executeStatement:@"CREATE INDEX events_report_url ON events (report_url);"];
  [migrationCopy executeStatement:@"CREATE INDEX events_timestampInserted ON events (timestampInserted);"];
}

+ (void)migrateVersion4to5WithMigration:(id)migration
{
  migrationCopy = migration;
  [migrationCopy executeOptionalStatement:@"ALTER TABLE identifiers RENAME TO old_identifiers;"];
  [migrationCopy executeStatement:{@"CREATE TABLE identifier_stores (store_key TEXT PRIMARY KEY, store_uuid TEXT UNIQUE, account TEXT, interval REAL, cross_device INTEGER, started REAL, modified REAL, last_sync REAL DEFAULT 0, deleted INTEGER DEFAULT 0);"}];
  [migrationCopy executeStatement:{@"CREATE TABLE identifiers (identifier_key TEXT PRIMARY KEY, store_uuid TEXT, name TEXT, value TEXT, cross_device INTEGER, expires REAL, modified REAL, last_sync REAL DEFAULT 0, deleted INTEGER DEFAULT 0);"}];
  [migrationCopy executeStatement:@"CREATE INDEX identifiers_store_uuid ON identifiers (store_uuid);"];
  v4 = [MEMORY[0x1E695DF00] now];
  [v4 timeIntervalSinceReferenceDate];
  v6 = v5;

  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __60__AMSMetricsDatabaseSchema_migrateVersion4to5WithMigration___block_invoke;
  v8[3] = &__block_descriptor_40_e28_v16__0___AMSSQLiteBinding__8l;
  v8[4] = v6;
  [migrationCopy executeOptionalStatement:@"INSERT INTO identifier_stores (store_key bindings:{store_uuid, account, interval, cross_device, started, modified) SELECT key, key, account, 0, 0, ?, ? FROM old_identifiers;", v8}];
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __60__AMSMetricsDatabaseSchema_migrateVersion4to5WithMigration___block_invoke_2;
  v7[3] = &__block_descriptor_40_e28_v16__0___AMSSQLiteBinding__8l;
  v7[4] = v6;
  [migrationCopy executeOptionalStatement:@"INSERT INTO identifiers (identifier_key bindings:{store_uuid, name, value, cross_device, expires, modified) SELECT key || '_clientId', key, 'clientId', value, 0, expires, ? FROM old_identifiers;", v7}];
  [migrationCopy executeOptionalStatement:@"DROP TABLE old_identifiers;"];
}

void __60__AMSMetricsDatabaseSchema_migrateVersion4to5WithMigration___block_invoke(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);
  v4 = a2;
  [v4 bindDouble:1 atPosition:v3];
  [v4 bindDouble:2 atPosition:*(a1 + 32)];
  [v4 bindDouble:3 atPosition:*(a1 + 32)];
}

+ (void)migrateVersion6to7WithMigration:(id)migration
{
  migrationCopy = migration;
  [migrationCopy executeStatement:@"ALTER TABLE identifiers ADD change_counter INTEGER;"];
  [migrationCopy executeStatement:@"ALTER TABLE identifiers ADD change_cause INTEGER;"];
  [migrationCopy executeStatement:@"ALTER TABLE identifiers ADD previous_value TEXT;"];
}

@end