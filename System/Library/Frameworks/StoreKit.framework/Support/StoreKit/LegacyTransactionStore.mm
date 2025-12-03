@interface LegacyTransactionStore
+ (BOOL)createOrMigrateStoreUsingSchema:(id)schema;
+ (SQLiteDatabaseStoreDescriptor)storeDescriptor;
@end

@implementation LegacyTransactionStore

+ (SQLiteDatabaseStoreDescriptor)storeDescriptor
{
  v2 = sub_10017F238();

  return v2;
}

+ (BOOL)createOrMigrateStoreUsingSchema:(id)schema
{
  schemaCopy = schema;
  v4 = sub_10017F308(schemaCopy);

  return v4;
}

@end