@interface UniversalMetricsDictionary
- (NSDictionary)dictionary;
- (_TtC8ShelfKit26UniversalMetricsDictionary)init;
@end

@implementation UniversalMetricsDictionary

- (NSDictionary)dictionary
{
  v2 = self;
  UniversalMetricsDictionary.dictionary.getter();

  v3.super.isa = sub_3ED084().super.isa;

  return v3.super.isa;
}

- (_TtC8ShelfKit26UniversalMetricsDictionary)init
{
  ObjectType = swift_getObjectType();
  v4 = sub_13CF5C();
  v6 = v5;
  v8 = v7;
  v9 = [objc_opt_self() ams_sharedAccountStore];
  *(&self->super.isa + OBJC_IVAR____TtC8ShelfKit26UniversalMetricsDictionary_accountStore) = v9;
  v10 = (self + OBJC_IVAR____TtC8ShelfKit26UniversalMetricsDictionary_screenSize);
  *v10 = v4;
  *(v10 + 1) = v6;
  *(&self->super.isa + OBJC_IVAR____TtC8ShelfKit26UniversalMetricsDictionary_screenScale) = v8;
  v12.receiver = self;
  v12.super_class = ObjectType;
  return [(UniversalMetricsDictionary *)&v12 init];
}

@end