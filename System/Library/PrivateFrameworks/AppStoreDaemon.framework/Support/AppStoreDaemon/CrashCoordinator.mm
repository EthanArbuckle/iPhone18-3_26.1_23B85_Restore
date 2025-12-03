@interface CrashCoordinator
+ (_TtC9appstored16CrashCoordinator)shared;
- (_TtC9appstored16CrashCoordinator)init;
- (id)getBiomeCrashesWithLogKey:(id)key startDate:(id)date;
@end

@implementation CrashCoordinator

+ (_TtC9appstored16CrashCoordinator)shared
{
  if (qword_10059B540 != -1)
  {
    swift_once();
  }

  v3 = qword_1005AB158;

  return v3;
}

- (id)getBiomeCrashesWithLogKey:(id)key startDate:(id)date
{
  v6 = type metadata accessor for Date();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = &v14 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  static Date._unconditionallyBridgeFromObjectiveC(_:)();
  keyCopy = key;
  selfCopy = self;
  sub_10013FE88();

  (*(v7 + 8))(v9, v6);
  type metadata accessor for CrashEvent();
  v12.super.isa = Array._bridgeToObjectiveC()().super.isa;

  return v12.super.isa;
}

- (_TtC9appstored16CrashCoordinator)init
{
  ObjectType = swift_getObjectType();
  v4 = OBJC_IVAR____TtC9appstored16CrashCoordinator_appCrashStream;
  oSAnalytics = [BiomeLibrary() OSAnalytics];
  swift_unknownObjectRelease();
  stability = [oSAnalytics Stability];
  swift_unknownObjectRelease();
  crash = [stability Crash];
  swift_unknownObjectRelease();
  *(&self->super.isa + v4) = crash;
  v9.receiver = self;
  v9.super_class = ObjectType;
  return [(CrashCoordinator *)&v9 init];
}

@end