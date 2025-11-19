@interface Migration
- (NSArray)uuids;
- (NSDate)date;
- (_TtC8Podcasts9Migration)init;
@end

@implementation Migration

- (NSDate)date
{
  v3 = type metadata accessor for Date();
  v4 = *(v3 - 8);
  v5 = __chkstk_darwin(v3);
  v7 = &v10 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v4 + 16))(v7, self + OBJC_IVAR____TtC8Podcasts9Migration_date, v3, v5);
  v8.super.isa = Date._bridgeToObjectiveC()().super.isa;
  (*(v4 + 8))(v7, v3);

  return v8.super.isa;
}

- (NSArray)uuids
{

  v2.super.isa = Array._bridgeToObjectiveC()().super.isa;

  return v2.super.isa;
}

- (_TtC8Podcasts9Migration)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end