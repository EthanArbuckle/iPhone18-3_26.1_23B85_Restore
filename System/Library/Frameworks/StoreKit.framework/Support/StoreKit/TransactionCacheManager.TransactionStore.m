@interface TransactionCacheManager.TransactionStore
+ (BOOL)createOrMigrateStoreUsingSchema:(id)a3;
+ (SQLiteDatabaseStoreDescriptor)storeDescriptor;
@end

@implementation TransactionCacheManager.TransactionStore

+ (BOOL)createOrMigrateStoreUsingSchema:(id)a3
{
  swift_getObjCClassMetadata();
  v4 = a3;
  v6 = sub_1000DA594(v4, v5);

  return v6;
}

+ (SQLiteDatabaseStoreDescriptor)storeDescriptor
{
  v2 = sub_1000DAE94();

  return v2;
}

@end