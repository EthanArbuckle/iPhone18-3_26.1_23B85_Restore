@interface CrashEvent
- (NSDate)date;
- (NSString)bundleID;
- (_TtC9appstored10CrashEvent)init;
@end

@implementation CrashEvent

- (NSString)bundleID
{

  v2 = String._bridgeToObjectiveC()();

  return v2;
}

- (NSDate)date
{
  v3 = type metadata accessor for Date();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v9 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v4 + 16))(v6, self + OBJC_IVAR____TtC9appstored10CrashEvent_date, v3);
  v7.super.isa = Date._bridgeToObjectiveC()().super.isa;
  (*(v4 + 8))(v6, v3);

  return v7.super.isa;
}

- (_TtC9appstored10CrashEvent)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end