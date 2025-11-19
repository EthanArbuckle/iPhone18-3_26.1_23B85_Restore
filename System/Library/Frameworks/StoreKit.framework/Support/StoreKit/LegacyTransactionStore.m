@interface LegacyTransactionStore
+ (BOOL)createOrMigrateStoreUsingSchema:(id)a3;
+ (SQLiteDatabaseStoreDescriptor)storeDescriptor;
@end

@implementation LegacyTransactionStore

+ (SQLiteDatabaseStoreDescriptor)storeDescriptor
{
  v2 = sub_10017F238();

  return v2;
}

+ (BOOL)createOrMigrateStoreUsingSchema:(id)a3
{
  v3 = a3;
  v4 = sub_10017F308(v3);

  return v4;
}

@end