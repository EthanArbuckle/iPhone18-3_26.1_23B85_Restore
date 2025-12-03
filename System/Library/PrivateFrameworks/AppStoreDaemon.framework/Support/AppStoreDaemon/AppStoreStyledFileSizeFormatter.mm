@interface AppStoreStyledFileSizeFormatter
+ (id)fileSize:(double)size;
- (_TtC9appstored31AppStoreStyledFileSizeFormatter)init;
@end

@implementation AppStoreStyledFileSizeFormatter

+ (id)fileSize:(double)size
{
  sub_10018FE5C(size);
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