@interface InstallAttributionDatabaseStore
+ (BOOL)createOrMigrateStoreUsingSchema:(id)schema;
+ (id)storeDescriptor;
@end

@implementation InstallAttributionDatabaseStore

+ (id)storeDescriptor
{
  v2 = [SQLiteDatabaseStoreDescriptor alloc];
  v3 = objc_opt_class();
  v4 = objc_opt_class();
  v5 = sub_100399680(v2, @"install_attribution", &off_100549380, v3, v4);

  return v5;
}

+ (BOOL)createOrMigrateStoreUsingSchema:(id)schema
{
  if (schema)
  {
    return sub_100252C84(schema, 19000, &stru_10051E8F0, 0);
  }

  else
  {
    return 0;
  }
}

@end