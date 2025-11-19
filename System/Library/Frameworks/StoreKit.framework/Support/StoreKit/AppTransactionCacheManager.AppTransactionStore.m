@interface AppTransactionCacheManager.AppTransactionStore
+ (BOOL)createOrMigrateStoreUsingSchema:(id)a3;
+ (SQLiteDatabaseStoreDescriptor)storeDescriptor;
@end

@implementation AppTransactionCacheManager.AppTransactionStore

+ (BOOL)createOrMigrateStoreUsingSchema:(id)a3
{
  swift_getObjCClassMetadata();
  v4 = a3;
  v6 = sub_1001D8218(v4, v5);

  return v6;
}

+ (SQLiteDatabaseStoreDescriptor)storeDescriptor
{
  v2 = sub_1001D8960();

  return v2;
}

@end