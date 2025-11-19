@interface MadBridge
+ (_TtC9appstored9MadBridge)shared;
- (BOOL)isThirdPartyRestore:(id)a3;
- (_TtC9appstored9MadBridge)init;
- (void)kickOffRestoreIfNeeded:(id)a3;
- (void)sendDiscoverEvent;
- (void)transferAppAssetPromisesForCoordinators:(id)a3 logKey:(id)a4;
@end

@implementation MadBridge

+ (_TtC9appstored9MadBridge)shared
{
  if (qword_10059B580 != -1)
  {
    swift_once();
  }

  v3 = qword_1005AB190;

  return v3;
}

- (BOOL)isThirdPartyRestore:(id)a3
{
  v4 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v6 = v5;
  v7 = self;
  LOBYTE(v4) = sub_1001916B8(v4, v6);

  return v4 & 1;
}

- (void)transferAppAssetPromisesForCoordinators:(id)a3 logKey:(id)a4
{
  sub_10009FAD4(0, &qword_10059EEE0);
  v6 = static Array._unconditionallyBridgeFromObjectiveC(_:)();
  v7 = a4;
  v8 = self;
  sub_100191DAC(v6, v7);
}

- (void)sendDiscoverEvent
{
  v2 = sub_100085D40(&qword_10059C3E0);
  __chkstk_darwin(v2 - 8);
  v4 = &v7 - v3;
  v5 = type metadata accessor for TaskPriority();
  (*(*(v5 - 8) + 56))(v4, 1, 1, v5);
  v6 = swift_allocObject();
  *(v6 + 16) = 0;
  *(v6 + 24) = 0;
  sub_10019F02C(0, 0, v4, &unk_100438998, v6);
}

- (void)kickOffRestoreIfNeeded:(id)a3
{
  v4 = a3;
  v5 = self;
  sub_1001922C0(v4);
}

- (_TtC9appstored9MadBridge)init
{
  v3.receiver = self;
  v3.super_class = swift_getObjectType();
  return [(MadBridge *)&v3 init];
}

@end