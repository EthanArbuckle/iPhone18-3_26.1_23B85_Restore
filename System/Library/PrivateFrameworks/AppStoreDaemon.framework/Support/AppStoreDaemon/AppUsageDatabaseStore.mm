@interface AppUsageDatabaseStore
+ (BOOL)createOrMigrateStoreUsingSchema:(id)schema;
+ (id)storeDescriptor;
@end

@implementation AppUsageDatabaseStore

+ (id)storeDescriptor
{
  v2 = [SQLiteDatabaseStoreDescriptor alloc];
  v3 = objc_opt_class();
  v4 = objc_opt_class();
  v5 = sub_100399680(v2, @"app_usage", &off_1005495F0, v3, v4);

  return v5;
}

+ (BOOL)createOrMigrateStoreUsingSchema:(id)schema
{
  if (schema)
  {
    return sub_100252C84(schema, 19001, &stru_100524E38, 0);
  }

  else
  {
    return 0;
  }
}

@end