@interface StoreKitMessagesDatabaseStore
+ (BOOL)createOrMigrateStoreUsingSchema:(id)schema;
+ (id)storeDescriptor;
@end

@implementation StoreKitMessagesDatabaseStore

+ (id)storeDescriptor
{
  v2 = objc_alloc_init(SQLiteDatabaseStoreDescriptor);
  [(SQLiteDatabaseStoreDescriptor *)v2 setSchemaName:@"storekit_messages"];
  [(SQLiteDatabaseStoreDescriptor *)v2 setSessionClass:objc_opt_class()];
  [(SQLiteDatabaseStoreDescriptor *)v2 setTransactionClass:objc_opt_class()];

  return v2;
}

+ (BOOL)createOrMigrateStoreUsingSchema:(id)schema
{
  schemaCopy = schema;
  if ([schemaCopy currentSchemaVersion] > 15999)
  {
LABEL_2:
    v6 = 1;
    goto LABEL_46;
  }

  *&v5 = 138544130;
  v27 = v5;
  while (1)
  {
    currentSchemaVersion = [schemaCopy currentSchemaVersion];
    if (currentSchemaVersion <= 15199)
    {
      if (currentSchemaVersion)
      {
        if (currentSchemaVersion != 13400)
        {
          if (currentSchemaVersion != 14000)
          {
            goto LABEL_41;
          }

          v8 = [schemaCopy migrateToVersion:15200 usingBlock:&stru_100381428];
          if (qword_1003D4088 != -1)
          {
            sub_1002CB024();
          }

          v9 = qword_1003D4048;
          if (!os_log_type_enabled(qword_1003D4048, OS_LOG_TYPE_DEFAULT))
          {
            goto LABEL_32;
          }

          v10 = v9;
          currentSchemaVersion2 = [schemaCopy currentSchemaVersion];
          *buf = v27;
          *&buf[4] = self;
          *&buf[12] = 2048;
          *&buf[14] = currentSchemaVersion2;
          *&buf[22] = 2048;
          v29 = 15200;
          LOWORD(v30) = 1024;
          *(&v30 + 2) = v8;
          v12 = v10;
          v13 = "[%{public}@]: Messages database migration function for %li => %li success=%d";
          goto LABEL_31;
        }

        v8 = [schemaCopy migrateToVersion:14000 usingBlock:&stru_100381408];
        if (qword_1003D4088 != -1)
        {
          sub_1002CB024();
        }

        v19 = qword_1003D4048;
        if (os_log_type_enabled(qword_1003D4048, OS_LOG_TYPE_DEFAULT))
        {
          v10 = v19;
          currentSchemaVersion3 = [schemaCopy currentSchemaVersion];
          *buf = v27;
          *&buf[4] = self;
          *&buf[12] = 2048;
          *&buf[14] = currentSchemaVersion3;
          *&buf[22] = 2048;
          v29 = 14000;
          LOWORD(v30) = 1024;
          *(&v30 + 2) = v8;
          v12 = v10;
          v13 = "[%{public}@]: Messages database migration function for %li => %li success=%d";
          goto LABEL_31;
        }

LABEL_32:
        if ((v8 & 1) == 0)
        {
          goto LABEL_45;
        }

        goto LABEL_33;
      }

      v8 = [schemaCopy migrateToVersion:16000 usingBlock:&stru_1003813E8];
      if (qword_1003D4088 != -1)
      {
        sub_1002CB024();
      }

      v14 = qword_1003D4048;
      if (!os_log_type_enabled(qword_1003D4048, OS_LOG_TYPE_DEFAULT))
      {
        goto LABEL_32;
      }

      v10 = v14;
      currentSchemaVersion4 = [schemaCopy currentSchemaVersion];
      *buf = v27;
      *&buf[4] = self;
      *&buf[12] = 2048;
      *&buf[14] = currentSchemaVersion4;
      *&buf[22] = 2048;
      v29 = 16000;
      LOWORD(v30) = 1024;
      *(&v30 + 2) = v8;
      v12 = v10;
      v13 = "[%{public}@]: Messages database migration function for %li => %li success=%d";
LABEL_31:
      _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEFAULT, v13, buf, 0x26u);

      goto LABEL_32;
    }

    if (currentSchemaVersion == 15200)
    {
      if ([schemaCopy column:@"allow_developer_control" existsInTable:@"storekit_messages"])
      {
        v16 = &stru_100381448;
      }

      else
      {
        v16 = &stru_100381428;
      }

      v8 = [schemaCopy migrateToVersion:15400 usingBlock:v16];
      if (qword_1003D4088 != -1)
      {
        sub_1002CB024();
      }

      v17 = qword_1003D4048;
      if (!os_log_type_enabled(qword_1003D4048, OS_LOG_TYPE_DEFAULT))
      {
        goto LABEL_32;
      }

      v10 = v17;
      currentSchemaVersion5 = [schemaCopy currentSchemaVersion];
      *buf = v27;
      *&buf[4] = self;
      *&buf[12] = 2048;
      *&buf[14] = currentSchemaVersion5;
      *&buf[22] = 2048;
      v29 = 15400;
      LOWORD(v30) = 1024;
      *(&v30 + 2) = v8;
      v12 = v10;
      v13 = "[%{public}@]: Database migration function for %li => %li success=%d";
      goto LABEL_31;
    }

    if (currentSchemaVersion != 15400)
    {
      break;
    }

    v21 = [schemaCopy migrateToVersion:16000 usingBlock:&stru_100381468];
    if (qword_1003D4088 != -1)
    {
      sub_1002CB024();
    }

    v22 = qword_1003D4048;
    if (os_log_type_enabled(qword_1003D4048, OS_LOG_TYPE_DEFAULT))
    {
      v23 = v22;
      currentSchemaVersion6 = [schemaCopy currentSchemaVersion];
      *buf = v27;
      *&buf[4] = self;
      *&buf[12] = 2048;
      *&buf[14] = currentSchemaVersion6;
      *&buf[22] = 2048;
      v29 = 16000;
      LOWORD(v30) = 1024;
      *(&v30 + 2) = v21;
      _os_log_impl(&_mh_execute_header, v23, OS_LOG_TYPE_DEFAULT, "[%{public}@]: Database migration function for %li => %li success=%d", buf, 0x26u);
    }

    if (!v21)
    {
      goto LABEL_45;
    }

LABEL_33:
    if ([schemaCopy currentSchemaVersion] > 15999)
    {
      goto LABEL_2;
    }
  }

  if (currentSchemaVersion == 16000)
  {
    goto LABEL_33;
  }

LABEL_41:
  if (qword_1003D4088 != -1)
  {
    sub_1002CB024();
  }

  v25 = qword_1003D4048;
  if (os_log_type_enabled(qword_1003D4048, OS_LOG_TYPE_ERROR))
  {
    sub_1002CB04C(v25, schemaCopy);
  }

LABEL_45:
  v6 = 0;
LABEL_46:

  return v6;
}

@end