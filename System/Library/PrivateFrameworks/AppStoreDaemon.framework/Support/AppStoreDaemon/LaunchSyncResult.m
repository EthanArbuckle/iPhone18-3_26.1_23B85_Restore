@interface LaunchSyncResult
- (NSDateInterval)dateInterval;
- (NSError)error;
- (_TtC9appstored16LaunchSyncResult)init;
@end

@implementation LaunchSyncResult

- (NSDateInterval)dateInterval
{
  v3 = type metadata accessor for DateInterval();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v9 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v4 + 16))(v6, self + OBJC_IVAR____TtC9appstored16LaunchSyncResult_dateInterval, v3);
  v7.super.isa = DateInterval._bridgeToObjectiveC()().super.isa;
  (*(v4 + 8))(v6, v3);

  return v7.super.isa;
}

- (NSError)error
{
  if (*(self + OBJC_IVAR____TtC9appstored16LaunchSyncResult_error))
  {
    swift_errorRetain();
    v2 = _convertErrorToNSError(_:)();
  }

  else
  {
    v2 = 0;
  }

  return v2;
}

- (_TtC9appstored16LaunchSyncResult)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end