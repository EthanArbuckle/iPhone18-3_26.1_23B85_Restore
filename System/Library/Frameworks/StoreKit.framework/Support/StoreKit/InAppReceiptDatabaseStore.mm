@interface InAppReceiptDatabaseStore
+ (BOOL)createOrMigrateStoreUsingSchema:(id)schema;
+ (id)storeDescriptor;
- (void)clearTransactionsForBundleID:(id)d;
@end

@implementation InAppReceiptDatabaseStore

+ (id)storeDescriptor
{
  v2 = objc_alloc_init(SQLiteDatabaseStoreDescriptor);
  [(SQLiteDatabaseStoreDescriptor *)v2 setSchemaName:@"storekit_receipts"];
  [(SQLiteDatabaseStoreDescriptor *)v2 setSessionClass:objc_opt_class()];
  [(SQLiteDatabaseStoreDescriptor *)v2 setTransactionClass:objc_opt_class()];

  return v2;
}

+ (BOOL)createOrMigrateStoreUsingSchema:(id)schema
{
  schemaCopy = schema;
  *&v4 = 138543874;
  v19 = v4;
  do
  {
    currentSchemaVersion = [schemaCopy currentSchemaVersion];
    if (currentSchemaVersion > 18401)
    {
      break;
    }

    currentSchemaVersion2 = [schemaCopy currentSchemaVersion];
    v7 = currentSchemaVersion2;
    if (currentSchemaVersion2 <= 15399)
    {
      if ((currentSchemaVersion2 - 15000) >= 5 && currentSchemaVersion2)
      {
        if (currentSchemaVersion2 != 15005)
        {
          goto LABEL_36;
        }

        v8 = schemaCopy;
        v9 = 15400;
        v10 = &stru_100381E70;
      }

      else
      {
        v8 = schemaCopy;
        v9 = 16200;
        v10 = &stru_100381E50;
      }

      goto LABEL_11;
    }

    if (currentSchemaVersion2 <= 17999)
    {
      if (currentSchemaVersion2 > 16000)
      {
        if (currentSchemaVersion2 == 16001)
        {
          v8 = schemaCopy;
          v9 = 16200;
          v10 = &stru_100381F10;
        }

        else
        {
          if (currentSchemaVersion2 != 16200)
          {
            goto LABEL_36;
          }

          v8 = schemaCopy;
          v9 = 18000;
          v10 = &stru_100381F30;
        }
      }

      else if (currentSchemaVersion2 == 15400)
      {
        v8 = schemaCopy;
        v9 = 16000;
        v10 = &stru_100381ED0;
      }

      else
      {
        if (currentSchemaVersion2 != 16000)
        {
          goto LABEL_36;
        }

        v8 = schemaCopy;
        v9 = 16001;
        v10 = &stru_100381EF0;
      }

      goto LABEL_11;
    }

    if (currentSchemaVersion2 <= 18400)
    {
      if (currentSchemaVersion2 == 18000)
      {
        v8 = schemaCopy;
        v9 = 18401;
        v10 = &stru_100381F50;
      }

      else
      {
        if (currentSchemaVersion2 != 18400)
        {
          goto LABEL_36;
        }

        v8 = schemaCopy;
        v9 = 18401;
        v10 = &stru_100381F70;
      }

      goto LABEL_11;
    }

    if (currentSchemaVersion2 == 18401)
    {
      v8 = schemaCopy;
      v9 = 18402;
      v10 = &stru_100381F90;
LABEL_11:
      v11 = [v8 migrateToVersion:v9 usingBlock:v10];
      goto LABEL_12;
    }

    if (currentSchemaVersion2 != 18402)
    {
LABEL_36:
      if (qword_1003D42E0 != -1)
      {
        sub_1002CDA50();
      }

      v17 = qword_1003D4298;
      if (os_log_type_enabled(qword_1003D4298, OS_LOG_TYPE_ERROR))
      {
        *buf = v19;
        selfCopy2 = self;
        v23 = 2048;
        v24 = v7;
        v25 = 2048;
        v26 = 18402;
        _os_log_error_impl(&_mh_execute_header, v17, OS_LOG_TYPE_ERROR, "[%{public}@]: No StoreKit In App Receipt Database migration function for %li => %li", buf, 0x20u);
      }

      v11 = 0;
      goto LABEL_12;
    }

    v11 = 1;
LABEL_12:
    if (qword_1003D42E0 != -1)
    {
      sub_1002CDA50();
    }

    v12 = qword_1003D4298;
    if (v11)
    {
      v13 = OS_LOG_TYPE_DEFAULT;
    }

    else
    {
      v13 = OS_LOG_TYPE_ERROR;
    }

    if (os_log_type_enabled(qword_1003D4298, v13))
    {
      v14 = v12;
      currentSchemaVersion3 = [schemaCopy currentSchemaVersion];
      *buf = 138544130;
      v16 = @"FAIL";
      if (v11)
      {
        v16 = @"SUCCESS";
      }

      selfCopy2 = self;
      v23 = 2048;
      v24 = v7;
      v25 = 2048;
      v26 = currentSchemaVersion3;
      v27 = 2114;
      v28 = v16;
      _os_log_impl(&_mh_execute_header, v14, v13, "[%{public}@]: Transaction database migration from %li => %li %{public}@", buf, 0x2Au);
    }
  }

  while ((v11 & 1) != 0);

  return currentSchemaVersion > 18401;
}

- (void)clearTransactionsForBundleID:(id)d
{
  dCopy = d;
  if (qword_1003D42E0 != -1)
  {
    sub_1002CDA78();
  }

  v5 = qword_1003D42C0;
  if (os_log_type_enabled(qword_1003D42C0, OS_LOG_TYPE_DEFAULT))
  {
    v6 = v5;
    *buf = 138543618;
    v12 = objc_opt_class();
    v13 = 2114;
    v14 = dCopy;
    v7 = v12;
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "[%{public}@] Clearing transactions for %{public}@", buf, 0x16u);
  }

  v9[0] = _NSConcreteStackBlock;
  v9[1] = 3221225472;
  v9[2] = sub_10004BF1C;
  v9[3] = &unk_100381FB8;
  v10 = dCopy;
  v8 = dCopy;
  [(SQLiteDatabaseStore *)self modifyUsingTransaction:v9];
}

@end