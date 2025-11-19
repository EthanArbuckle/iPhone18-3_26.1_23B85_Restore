@interface Transaction
+ (Class)databaseEntityClass;
+ (id)defaultProperties;
- (_TtC25ASOctaneSupportXPCService11Transaction)initWithDatabaseID:(int64_t)a3 propertyValues:(id)a4 externalPropertyValues:(id)a5;
- (id)copyWithZone:(void *)a3;
@end

@implementation Transaction

+ (Class)databaseEntityClass
{
  sub_1000C515C();

  return swift_getObjCClassFromMetadata();
}

+ (id)defaultProperties
{
  sub_1000C518C();
  v2.super.isa = sub_1001F6F18().super.isa;

  return v2.super.isa;
}

- (id)copyWithZone:(void *)a3
{
  v4 = self;
  sub_1000C6BE8(a3, v7);

  sub_10001AE68(v7, v7[3]);
  v5 = sub_1001F7E98();
  sub_100019CCC(v7);
  return v5;
}

- (_TtC25ASOctaneSupportXPCService11Transaction)initWithDatabaseID:(int64_t)a3 propertyValues:(id)a4 externalPropertyValues:(id)a5
{
  sub_1001F6998();
  sub_1001F6998();
  sub_1000C6CF8();
  return result;
}

@end