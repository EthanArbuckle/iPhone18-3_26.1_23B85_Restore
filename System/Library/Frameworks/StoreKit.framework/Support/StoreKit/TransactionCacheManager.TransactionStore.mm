@interface TransactionCacheManager.TransactionStore
+ (BOOL)createOrMigrateStoreUsingSchema:(id)schema;
+ (SQLiteDatabaseStoreDescriptor)storeDescriptor;
@end

@implementation TransactionCacheManager.TransactionStore

+ (BOOL)createOrMigrateStoreUsingSchema:(id)schema
{
  swift_getObjCClassMetadata();
  schemaCopy = schema;
  v6 = sub_1000DA594(schemaCopy, v5);

  return v6;
}

+ (SQLiteDatabaseStoreDescriptor)storeDescriptor
{
  v2 = sub_1000DAE94();

  return v2;
}

@end