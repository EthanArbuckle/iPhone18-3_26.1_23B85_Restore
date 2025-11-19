@interface LastStoreActionStore
+ (BOOL)createOrMigrateStoreUsingSchema:(id)a3;
+ (SQLiteDatabaseStoreDescriptor)storeDescriptor;
@end

@implementation LastStoreActionStore

+ (SQLiteDatabaseStoreDescriptor)storeDescriptor
{
  v2 = sub_10015D6E0();

  return v2;
}

+ (BOOL)createOrMigrateStoreUsingSchema:(id)a3
{
  v3 = a3;
  v4 = sub_10015D7B4(v3);

  return v4;
}

@end