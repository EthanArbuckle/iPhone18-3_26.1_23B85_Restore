@interface AppStoreStyledFileSizeFormatter
+ (id)fileSize:(double)a3;
- (_TtC9appstored31AppStoreStyledFileSizeFormatter)init;
@end

@implementation AppStoreStyledFileSizeFormatter

+ (id)fileSize:(double)a3
{
  sub_10018FE5C(a3);
  v3 = String._bridgeToObjectiveC()();

  return v3;
}

- (_TtC9appstored31AppStoreStyledFileSizeFormatter)init
{
  v3.receiver = self;
  v3.super_class = swift_getObjectType();
  return [(AppStoreStyledFileSizeFormatter *)&v3 init];
}

@end