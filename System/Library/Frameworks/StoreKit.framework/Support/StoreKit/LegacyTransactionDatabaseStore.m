@interface LegacyTransactionDatabaseStore
+ (BOOL)createOrMigrateStoreUsingSchema:(id)a3;
+ (id)storeDescriptor;
@end

@implementation LegacyTransactionDatabaseStore

+ (id)storeDescriptor
{
  v2 = objc_alloc_init(SQLiteDatabaseStoreDescriptor);
  [(SQLiteDatabaseStoreDescriptor *)v2 setSchemaName:@"storekit_legacy_receipts"];
  [(SQLiteDatabaseStoreDescriptor *)v2 setSessionClass:objc_opt_class()];
  [(SQLiteDatabaseStoreDescriptor *)v2 setTransactionClass:objc_opt_class()];

  return v2;
}

+ (BOOL)createOrMigrateStoreUsingSchema:(id)a3
{
  v4 = a3;
  *&v5 = 138543874;
  v17 = v5;
  do
  {
    v6 = [v4 currentSchemaVersion];
    if (v6 > 18399)
    {
      break;
    }

    v7 = [v4 currentSchemaVersion];
    v8 = v7;
    if (v7 == 18400)
    {
      v9 = 1;
    }

    else if (v7)
    {
      if (qword_1003D4430 != -1)
      {
        sub_1002CF5DC();
      }

      v10 = qword_1003D43E8;
      if (os_log_type_enabled(qword_1003D43E8, OS_LOG_TYPE_ERROR))
      {
        *buf = v17;
        v19 = a1;
        v20 = 2048;
        v21 = v8;
        v22 = 2048;
        v23 = 18400;
        _os_log_error_impl(&_mh_execute_header, v10, OS_LOG_TYPE_ERROR, "[%{public}@]: No legacy receipt database migration function for %li => %li", buf, 0x20u);
      }

      v9 = 0;
    }

    else
    {
      v9 = [v4 migrateToVersion:18400 usingBlock:&stru_1003823A8];
    }

    if (qword_1003D4430 != -1)
    {
      sub_1002CF5DC();
    }

    v11 = qword_1003D43E8;
    if (v9)
    {
      v12 = OS_LOG_TYPE_DEFAULT;
    }

    else
    {
      v12 = OS_LOG_TYPE_ERROR;
    }

    if (os_log_type_enabled(qword_1003D43E8, v12))
    {
      v13 = v11;
      v14 = [v4 currentSchemaVersion];
      *buf = 138544130;
      v15 = @"FAIL";
      if (v9)
      {
        v15 = @"SUCCESS";
      }

      v19 = a1;
      v20 = 2048;
      v21 = v8;
      v22 = 2048;
      v23 = v14;
      v24 = 2114;
      v25 = v15;
      _os_log_impl(&_mh_execute_header, v13, v12, "[%{public}@]: Legacy transaction database migration from %li => %li %{public}@", buf, 0x2Au);
    }
  }

  while ((v9 & 1) != 0);

  return v6 > 18399;
}

@end