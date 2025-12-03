@interface ExternalGatewayTokenFamilyStore
+ (BOOL)createOrMigrateStoreUsingSchema:(id)schema;
+ (SQLiteDatabaseStoreDescriptor)storeDescriptor;
@end

@implementation ExternalGatewayTokenFamilyStore

+ (SQLiteDatabaseStoreDescriptor)storeDescriptor
{
  swift_getObjCClassMetadata();
  v2 = sub_10019B058();

  return v2;
}

+ (BOOL)createOrMigrateStoreUsingSchema:(id)schema
{
  swift_getObjCClassMetadata();
  schemaCopy = schema;
  v5 = sub_10019B12C(schemaCopy);

  return v5;
}

@end