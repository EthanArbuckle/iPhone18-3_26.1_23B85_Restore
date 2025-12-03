@interface PurchaseIntentStore
+ (BOOL)createOrMigrateStoreUsingSchema:(id)schema;
+ (SQLiteDatabaseStoreDescriptor)storeDescriptor;
@end

@implementation PurchaseIntentStore

+ (SQLiteDatabaseStoreDescriptor)storeDescriptor
{
  swift_getObjCClassMetadata();
  v2 = sub_1001429E4();

  return v2;
}

+ (BOOL)createOrMigrateStoreUsingSchema:(id)schema
{
  swift_getObjCClassMetadata();
  schemaCopy = schema;
  v5 = sub_100142AB8(schemaCopy);

  return v5;
}

@end