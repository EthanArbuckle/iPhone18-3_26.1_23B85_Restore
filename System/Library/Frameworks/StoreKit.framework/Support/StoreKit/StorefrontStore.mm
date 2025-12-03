@interface StorefrontStore
+ (BOOL)createOrMigrateStoreUsingSchema:(id)schema;
+ (SQLiteDatabaseStoreDescriptor)storeDescriptor;
@end

@implementation StorefrontStore

+ (SQLiteDatabaseStoreDescriptor)storeDescriptor
{
  swift_getObjCClassMetadata();
  v2 = sub_10022C884();

  return v2;
}

+ (BOOL)createOrMigrateStoreUsingSchema:(id)schema
{
  swift_getObjCClassMetadata();
  schemaCopy = schema;
  v5 = sub_10022C958(schemaCopy);

  return v5;
}

@end