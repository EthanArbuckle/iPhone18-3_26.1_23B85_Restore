@interface PurchaseHistoryDatabaseStore
+ (BOOL)createOrMigrateStoreUsingSchema:(id)a3;
+ (id)storeDescriptor;
@end

@implementation PurchaseHistoryDatabaseStore

+ (id)storeDescriptor
{
  v2 = [SQLiteDatabaseStoreDescriptor alloc];
  v3 = objc_opt_class();
  v4 = objc_opt_class();
  v5 = sub_100399680(v2, @"purchase_history", &off_100549590, v3, v4);

  return v5;
}

+ (BOOL)createOrMigrateStoreUsingSchema:(id)a3
{
  if (a3)
  {
    return sub_100252C84(a3, 19002, &stru_1005246A0, 0);
  }

  else
  {
    return 0;
  }
}

@end