@interface LastStoreActionStore
+ (BOOL)createOrMigrateStoreUsingSchema:(id)schema;
+ (SQLiteDatabaseStoreDescriptor)storeDescriptor;
@end

@implementation LastStoreActionStore

+ (SQLiteDatabaseStoreDescriptor)storeDescriptor
{
  v2 = sub_10015D6E0();

  return v2;
}

+ (BOOL)createOrMigrateStoreUsingSchema:(id)schema
{
  schemaCopy = schema;
  v4 = sub_10015D7B4(schemaCopy);

  return v4;
}

@end