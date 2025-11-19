@interface AppDelegate
- (BOOL)application:(id)a3 openURL:(id)a4 options:(id)a5;
- (BOOL)application:(id)a3 runTest:(id)a4 options:(id)a5;
- (BOOL)application:(id)a3 willFinishLaunchingWithOptions:(id)a4;
- (_TtC6Health11AppDelegate)init;
- (id)application:(id)a3 configurationForConnectingSceneSession:(id)a4 options:(id)a5;
- (void)application:(id)a3 didDiscardSceneSessions:(id)a4;
- (void)buildMenuWithBuilder:(id)a3;
- (void)setWindow:(id)a3;
@end

@implementation AppDelegate

- (_TtC6Health11AppDelegate)init
{
  *(&self->super.super.isa + OBJC_IVAR____TtC6Health11AppDelegate_window) = 0;
  *(&self->super.super.isa + OBJC_IVAR____TtC6Health11AppDelegate____lazy_storage___pluginNotificationRouter) = 0;
  v3.receiver = self;
  v3.super_class = type metadata accessor for AppDelegate();
  return [(AppDelegate *)&v3 init];
}

- (BOOL)application:(id)a3 willFinishLaunchingWithOptions:(id)a4
{
  if (a4)
  {
    type metadata accessor for LaunchOptionsKey(0);
    sub_100003E7C(&unk_1000DC670, 255, type metadata accessor for LaunchOptionsKey);
    static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();
  }

  v6 = a3;
  v7 = self;
  v8 = sub_100003308();

  return v8 & 1;
}

- (id)application:(id)a3 configurationForConnectingSceneSession:(id)a4 options:(id)a5
{
  v5 = a4;
  v6 = [v5 role];
  v7 = objc_allocWithZone(UISceneConfiguration);
  v8 = String._bridgeToObjectiveC()();
  v9 = [v7 initWithName:v8 sessionRole:v6];

  return v9;
}

- (void)application:(id)a3 didDiscardSceneSessions:(id)a4
{
  v5 = a3;
  v6 = self;
  sub_10001CC90();
}

- (void)buildMenuWithBuilder:(id)a3
{
  swift_unknownObjectRetain();
  v5 = self;
  sub_10003A0E8(a3);
  swift_unknownObjectRelease();
}

- (void)setWindow:(id)a3
{
  v4 = *(&self->super.super.isa + OBJC_IVAR____TtC6Health11AppDelegate_window);
  *(&self->super.super.isa + OBJC_IVAR____TtC6Health11AppDelegate_window) = a3;
  v3 = a3;
}

- (BOOL)application:(id)a3 openURL:(id)a4 options:(id)a5
{
  v7 = type metadata accessor for URL();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  __chkstk_darwin(v7);
  v11 = &v17 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  static URL._unconditionallyBridgeFromObjectiveC(_:)();
  type metadata accessor for OpenURLOptionsKey(0);
  sub_100003E7C(&qword_1000DA758, 255, type metadata accessor for OpenURLOptionsKey);
  v12 = static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();
  v13 = a3;
  v14 = self;
  v15 = sub_10005696C(v11, v12);

  (*(v8 + 8))(v11, v7);
  return v15 & 1;
}

- (BOOL)application:(id)a3 runTest:(id)a4 options:(id)a5
{
  v5 = a5;
  if (!a4)
  {
    v8 = 0;
    v10 = 0;
    if (!a5)
    {
      goto LABEL_4;
    }

    goto LABEL_3;
  }

  v8 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v10 = v9;
  if (v5)
  {
LABEL_3:
    v5 = static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();
  }

LABEL_4:
  v11 = a3;
  v12 = self;
  v13 = sub_100069AC8(a3, v8, v10, v5);

  return v13 & 1;
}

@end