@interface InAppPromotionDatabaseStore
+ (BOOL)createOrMigrateStoreUsingSchema:(id)schema;
+ (id)storeDescriptor;
@end

@implementation InAppPromotionDatabaseStore

+ (id)storeDescriptor
{
  v2 = objc_alloc_init(SQLiteDatabaseStoreDescriptor);
  [(SQLiteDatabaseStoreDescriptor *)v2 setSchemaName:@"storekit_promotions"];
  [(SQLiteDatabaseStoreDescriptor *)v2 setSessionClass:objc_opt_class()];
  [(SQLiteDatabaseStoreDescriptor *)v2 setTransactionClass:objc_opt_class()];

  return v2;
}

+ (BOOL)createOrMigrateStoreUsingSchema:(id)schema
{
  schemaCopy = schema;
  if ([schemaCopy currentSchemaVersion] > 14499)
  {
LABEL_9:
    v5 = 1;
    goto LABEL_15;
  }

  while (1)
  {
    currentSchemaVersion = [schemaCopy currentSchemaVersion];
    if (currentSchemaVersion == 14500)
    {
      goto LABEL_8;
    }

    if (currentSchemaVersion != 14000)
    {
      break;
    }

    if (![schemaCopy migrateToVersion:14500 usingBlock:&stru_100382640])
    {
      goto LABEL_14;
    }

LABEL_8:
    if ([schemaCopy currentSchemaVersion] > 14499)
    {
      goto LABEL_9;
    }
  }

  if (!currentSchemaVersion)
  {
    if (([schemaCopy migrateToVersion:14500 usingBlock:&stru_100382620] & 1) == 0)
    {
      goto LABEL_14;
    }

    goto LABEL_8;
  }

  if (qword_1003D45F8 != -1)
  {
    sub_1002D0284();
  }

  v6 = qword_1003D45E0;
  if (os_log_type_enabled(qword_1003D45E0, OS_LOG_TYPE_ERROR))
  {
    sub_1002D0298(v6, schemaCopy);
  }

LABEL_14:
  v5 = 0;
LABEL_15:

  return v5;
}

@end