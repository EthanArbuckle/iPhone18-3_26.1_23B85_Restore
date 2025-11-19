@interface AppUpdatesDatabaseStore
+ (BOOL)createOrMigrateStoreUsingSchema:(id)a3;
+ (id)storeDescriptor;
@end

@implementation AppUpdatesDatabaseStore

+ (id)storeDescriptor
{
  v2 = [SQLiteDatabaseStoreDescriptor alloc];
  v3 = objc_opt_class();
  v4 = objc_opt_class();
  v5 = sub_100399680(v2, @"app_updates", &off_100549410, v3, v4);

  return v5;
}

+ (BOOL)createOrMigrateStoreUsingSchema:(id)a3
{
  if (a3)
  {
    return sub_100252C84(a3, 19000, &stru_100520EC8, 0);
  }

  else
  {
    return 0;
  }
}

@end