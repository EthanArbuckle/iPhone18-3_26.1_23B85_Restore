@interface AppTransactionCacheManager.AppTransactionStore
+ (BOOL)createOrMigrateStoreUsingSchema:(id)schema;
+ (SQLiteDatabaseStoreDescriptor)storeDescriptor;
@end

@implementation AppTransactionCacheManager.AppTransactionStore

+ (BOOL)createOrMigrateStoreUsingSchema:(id)schema
{
  swift_getObjCClassMetadata();
  schemaCopy = schema;
  v6 = sub_1001D8218(schemaCopy, v5);

  return v6;
}

+ (SQLiteDatabaseStoreDescriptor)storeDescriptor
{
  v2 = sub_1001D8960();

  return v2;
}

@end