@interface LaunchHistory
+ (_TtC9appstored13LaunchHistory)shared;
- (_TtC9appstored13LaunchHistory)init;
- (id)getBiomeLaunchesWithLogKey:(id)key dateInterval:(id)interval latestLaunchOnly:(BOOL)only;
- (id)getLaunchesWithLogKey:(id)key dateInterval:(id)interval;
- (id)syncIfNeededWithLogKey:(id)key;
- (id)syncLaunchesWithLogKey:(id)key;
- (void)clearLaunchHistoryWithBundleIDs:(id)ds;
@end

@implementation LaunchHistory

+ (_TtC9appstored13LaunchHistory)shared
{
  if (qword_10059B500 != -1)
  {
    swift_once();
  }

  v3 = qword_1005AB128;

  return v3;
}

- (void)clearLaunchHistoryWithBundleIDs:(id)ds
{
  v4 = static Array._unconditionallyBridgeFromObjectiveC(_:)();
  selfCopy = self;
  sub_100110E0C(v4);
}

- (id)getLaunchesWithLogKey:(id)key dateInterval:(id)interval
{
  v4 = type metadata accessor for DateInterval();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v10 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  static DateInterval._unconditionallyBridgeFromObjectiveC(_:)();
  sub_100116A98(v7);
  (*(v5 + 8))(v7, v4);
  sub_10009FAD4(0, &qword_10059D850);
  v8.super.isa = Array._bridgeToObjectiveC()().super.isa;

  return v8.super.isa;
}

- (id)syncIfNeededWithLogKey:(id)key
{
  keyCopy = key;
  selfCopy = self;
  v6 = sub_100111CC0(keyCopy);

  return v6;
}

- (id)syncLaunchesWithLogKey:(id)key
{
  keyCopy = key;
  selfCopy = self;
  v6 = sub_10011242C(keyCopy);

  return v6;
}

- (id)getBiomeLaunchesWithLogKey:(id)key dateInterval:(id)interval latestLaunchOnly:(BOOL)only
{
  onlyCopy = only;
  v8 = type metadata accessor for DateInterval();
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = &v16 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  static DateInterval._unconditionallyBridgeFromObjectiveC(_:)();
  keyCopy = key;
  selfCopy = self;
  sub_100113074(keyCopy, v11, onlyCopy);

  (*(v9 + 8))(v11, v8);
  sub_10009FAD4(0, &qword_10059D850);
  v14.super.isa = Array._bridgeToObjectiveC()().super.isa;

  return v14.super.isa;
}

- (_TtC9appstored13LaunchHistory)init
{
  ObjectType = swift_getObjectType();
  *(&self->super.isa + OBJC_IVAR____TtC9appstored13LaunchHistory_twentyEightDays) = 0x4142750000000000;
  *(&self->super.isa + OBJC_IVAR____TtC9appstored13LaunchHistory_fiveMinutes) = 0x4072C00000000000;
  v4 = self + OBJC_IVAR____TtC9appstored13LaunchHistory_lockedThing;
  *v4 = 0;
  *(v4 + 1) = 0;
  v6.receiver = self;
  v6.super_class = ObjectType;
  return [(LaunchHistory *)&v6 init];
}

@end