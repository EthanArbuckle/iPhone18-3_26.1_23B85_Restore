@interface AMSEngagementCacheDatabaseSchema
+ (BOOL)createOrUpdateSchemaUsingConnection:(id)a3 error:(id *)a4;
+ (void)_migrateVersion0to1WithMigration:(id)a3;
@end

@implementation AMSEngagementCacheDatabaseSchema

+ (BOOL)createOrUpdateSchemaUsingConnection:(id)a3 error:(id *)a4
{
  v29 = *MEMORY[0x1E69E9840];
  v22 = a3;
  v6 = [[AMSSQLiteSchema alloc] initWithConnection:v22];
  v7 = [(AMSSQLiteSchema *)v6 currentUserVersion];
  v8 = 0;
  while (1)
  {
    if (v7 > 0)
    {
      v16 = 1;
      v17 = v22;
      goto LABEL_22;
    }

    if (v7)
    {
      goto LABEL_6;
    }

    v23 = v8;
    v24[0] = MEMORY[0x1E69E9820];
    v24[1] = 3221225472;
    v24[2] = __78__AMSEngagementCacheDatabaseSchema_createOrUpdateSchemaUsingConnection_error___block_invoke;
    v24[3] = &__block_descriptor_40_e34_v16__0__AMSSQLiteSchemaMigration_8l;
    v24[4] = a1;
    v9 = [(AMSSQLiteSchema *)v6 migrateToVersion:1 usingBlock:v24 error:&v23];
    v10 = v23;

    if (!v9)
    {
      break;
    }

    v8 = v10;
LABEL_6:
    v11 = [(AMSSQLiteSchema *)v6 currentUserVersion];
    v12 = v11 == v7;
    v7 = v11;
    if (v12)
    {
      v13 = +[AMSLogConfig sharedConfig];
      if (!v13)
      {
        v13 = +[AMSLogConfig sharedConfig];
      }

      v14 = [v13 OSLogObject];
      if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
      {
        v15 = objc_opt_class();
        *buf = 138543362;
        v26 = v15;
        _os_log_impl(&dword_192869000, v14, OS_LOG_TYPE_ERROR, "%{public}@: Failed to update Engagement cache database scheme. User version did not change", buf, 0xCu);
      }

      v16 = 1;
      v10 = v8;
      goto LABEL_21;
    }
  }

  if (a4)
  {
    v18 = v10;
    *a4 = v10;
  }

  v13 = +[AMSLogConfig sharedConfig];
  if (!v13)
  {
    v13 = +[AMSLogConfig sharedConfig];
  }

  v14 = [v13 OSLogObject];
  if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
  {
    v19 = objc_opt_class();
    v20 = AMSLogableError(v10);
    *buf = 138543618;
    v26 = v19;
    v27 = 2114;
    v28 = v20;
    _os_log_impl(&dword_192869000, v14, OS_LOG_TYPE_ERROR, "%{public}@: Failed to update Engagement cache database scheme. Success = NO. Error = %{public}@", buf, 0x16u);
  }

  v16 = 0;
LABEL_21:
  v17 = v22;

  v8 = v10;
LABEL_22:

  return v16;
}

+ (void)_migrateVersion0to1WithMigration:(id)a3
{
  v3 = a3;
  [v3 executeStatement:@"PRAGMA auto_vacuum = 2;"];
  v4 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"CREATE TABLE IF NOT EXISTS %@(  %@ BLOB, %@ REAL, %@ BLOB, %@ INTEGER PRIMARY KEY);", @"responses", @"data", @"expiration", @"filter", @"identifier"];
  [v3 executeStatement:v4];
}

@end