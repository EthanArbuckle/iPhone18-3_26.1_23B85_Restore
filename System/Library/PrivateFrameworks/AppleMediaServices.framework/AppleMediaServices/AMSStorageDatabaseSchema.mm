@interface AMSStorageDatabaseSchema
+ (BOOL)createOrUpdateSchemaUsingConnection:(id)connection error:(id *)error;
+ (void)migrateVersion0to1WithMigration:(id)migration;
@end

@implementation AMSStorageDatabaseSchema

+ (BOOL)createOrUpdateSchemaUsingConnection:(id)connection error:(id *)error
{
  v29 = *MEMORY[0x1E69E9840];
  connectionCopy = connection;
  v6 = [[AMSSQLiteSchema alloc] initWithConnection:connectionCopy];
  currentUserVersion = [(AMSSQLiteSchema *)v6 currentUserVersion];
  v8 = 0;
  while (1)
  {
    if (currentUserVersion > 0)
    {
      v16 = 1;
      v17 = connectionCopy;
      goto LABEL_22;
    }

    if (currentUserVersion)
    {
      goto LABEL_6;
    }

    v23 = v8;
    v24[0] = MEMORY[0x1E69E9820];
    v24[1] = 3221225472;
    v24[2] = __70__AMSStorageDatabaseSchema_createOrUpdateSchemaUsingConnection_error___block_invoke;
    v24[3] = &__block_descriptor_40_e34_v16__0__AMSSQLiteSchemaMigration_8l;
    v24[4] = self;
    v9 = [(AMSSQLiteSchema *)v6 migrateToVersion:1 usingBlock:v24 error:&v23];
    v10 = v23;

    if (!v9)
    {
      break;
    }

    v8 = v10;
LABEL_6:
    currentUserVersion2 = [(AMSSQLiteSchema *)v6 currentUserVersion];
    v12 = currentUserVersion2 == currentUserVersion;
    currentUserVersion = currentUserVersion2;
    if (v12)
    {
      v13 = +[AMSLogConfig sharedConfig];
      if (!v13)
      {
        v13 = +[AMSLogConfig sharedConfig];
      }

      oSLogObject = [v13 OSLogObject];
      if (os_log_type_enabled(oSLogObject, OS_LOG_TYPE_ERROR))
      {
        v15 = objc_opt_class();
        *buf = 138543362;
        v26 = v15;
        _os_log_impl(&dword_192869000, oSLogObject, OS_LOG_TYPE_ERROR, "%{public}@: Failed to update AMSStorage database scheme. User version did not change", buf, 0xCu);
      }

      v16 = 1;
      v10 = v8;
      goto LABEL_21;
    }
  }

  if (error)
  {
    v18 = v10;
    *error = v10;
  }

  v13 = +[AMSLogConfig sharedConfig];
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
    v26 = v19;
    v27 = 2112;
    v28 = v20;
    _os_log_impl(&dword_192869000, oSLogObject, OS_LOG_TYPE_ERROR, "%{public}@: Failed to update AMSStorage database scheme. Success = NO. Error = %@{public}@", buf, 0x16u);
  }

  v16 = 0;
LABEL_21:
  v17 = connectionCopy;

  v8 = v10;
LABEL_22:

  return v16;
}

+ (void)migrateVersion0to1WithMigration:(id)migration
{
  migrationCopy = migration;
  [migrationCopy executeStatement:@"PRAGMA auto_vacuum = 2;"];
  [migrationCopy executeStatement:{@"CREATE TABLE IF NOT EXISTS data (domain TEXT, key TEXT, valueType INT, value BLOB, lastModified REAL, PRIMARY KEY (key, domain));"}];
}

@end