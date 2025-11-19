@interface DatabaseStore
+ (BOOL)createOrMigrateStoreUsingSchema:(id)a3;
+ (SQLiteDatabaseStoreDescriptor)storeDescriptor;
@end

@implementation DatabaseStore

+ (SQLiteDatabaseStoreDescriptor)storeDescriptor
{
  v2 = sub_1001E00F0();

  return v2;
}

+ (BOOL)createOrMigrateStoreUsingSchema:(id)a3
{
  swift_getObjCClassMetadata();
  v4 = a3;
  v5 = sub_1001E0198(v4);

  return v5 & 1;
}

@end