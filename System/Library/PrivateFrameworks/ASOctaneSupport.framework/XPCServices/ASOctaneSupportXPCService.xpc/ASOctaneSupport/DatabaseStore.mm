@interface DatabaseStore
+ (BOOL)createOrMigrateStoreUsingSchema:(id)schema;
+ (SQLiteDatabaseStoreDescriptor)storeDescriptor;
@end

@implementation DatabaseStore

+ (SQLiteDatabaseStoreDescriptor)storeDescriptor
{
  v2 = sub_1001E00F0();

  return v2;
}

+ (BOOL)createOrMigrateStoreUsingSchema:(id)schema
{
  swift_getObjCClassMetadata();
  schemaCopy = schema;
  v5 = sub_1001E0198(schemaCopy);

  return v5 & 1;
}

@end