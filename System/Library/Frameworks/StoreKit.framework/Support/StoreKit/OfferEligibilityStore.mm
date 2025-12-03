@interface OfferEligibilityStore
+ (BOOL)createOrMigrateStoreUsingSchema:(id)schema;
+ (SQLiteDatabaseStoreDescriptor)storeDescriptor;
@end

@implementation OfferEligibilityStore

+ (SQLiteDatabaseStoreDescriptor)storeDescriptor
{
  swift_getObjCClassMetadata();
  v2 = sub_10009DAE8();

  return v2;
}

+ (BOOL)createOrMigrateStoreUsingSchema:(id)schema
{
  swift_getObjCClassMetadata();
  schemaCopy = schema;
  v5 = sub_10009DBBC(schemaCopy);

  return v5;
}

@end