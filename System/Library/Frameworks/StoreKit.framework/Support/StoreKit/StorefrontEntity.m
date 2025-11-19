@interface StorefrontEntity
+ (id)databaseTable;
@end

@implementation StorefrontEntity

+ (id)databaseTable
{
  swift_getObjCClassMetadata();
  sub_10022CDEC();
  v2 = String._bridgeToObjectiveC()();

  return v2;
}

@end