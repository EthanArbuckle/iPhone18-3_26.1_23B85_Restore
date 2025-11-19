@interface FMAppDelegate
- (BOOL)application:(id)a3 continueUserActivity:(id)a4 restorationHandler:(id)a5;
- (BOOL)application:(id)a3 didFinishLaunchingWithOptions:(id)a4;
- (BOOL)application:(id)a3 openURL:(id)a4 options:(id)a5;
- (BOOL)application:(id)a3 runTest:(id)a4 options:(id)a5;
- (void)applicationDidBecomeActive:(id)a3;
- (void)applicationDidEnterBackground:(id)a3;
- (void)applicationWillEnterForeground:(id)a3;
- (void)applicationWillResignActive:(id)a3;
- (void)applicationWillTerminate:(id)a3;
- (void)buildMenuWithBuilder:(id)a3;
- (void)onMenuAction:(id)a3;
- (void)setWindow:(id)a3;
- (void)validateCommand:(id)a3;
@end

@implementation FMAppDelegate

- (BOOL)application:(id)a3 didFinishLaunchingWithOptions:(id)a4
{
  v4 = a4;
  if (a4)
  {
    type metadata accessor for LaunchOptionsKey(0);
    sub_10000A4B0(&qword_1006AF350, type metadata accessor for LaunchOptionsKey);
    v4 = static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();
  }

  v7 = a3;
  v8 = self;
  sub_100004E30(v7, v4);

  return 1;
}

- (BOOL)application:(id)a3 continueUserActivity:(id)a4 restorationHandler:(id)a5
{
  v8 = _Block_copy(a5);
  v9 = a3;
  v10 = a4;
  v11 = self;
  LOBYTE(self) = sub_1000C27E8(v10);
  _Block_release(v8);

  return self & 1;
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
  v13 = sub_10012277C(a3, v8, v10, v5);

  return v13 & 1;
}

- (void)setWindow:(id)a3
{
  v4 = *(&self->super.super.isa + OBJC_IVAR____TtC6FindMy13FMAppDelegate_window);
  *(&self->super.super.isa + OBJC_IVAR____TtC6FindMy13FMAppDelegate_window) = a3;
  v3 = a3;
}

- (void)applicationWillResignActive:(id)a3
{
  v4 = a3;
  v5 = self;
  sub_1003E1C00();
}

- (void)applicationDidEnterBackground:(id)a3
{
  v4 = a3;
  v5 = self;
  sub_1003E1DC4();
}

- (void)applicationWillEnterForeground:(id)a3
{
  v4 = a3;
  v5 = self;
  sub_1003E2500();
}

- (BOOL)application:(id)a3 openURL:(id)a4 options:(id)a5
{
  v7 = type metadata accessor for URL();
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v10 = &v14 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  static URL._unconditionallyBridgeFromObjectiveC(_:)();
  v11 = a3;
  v12 = self;
  LOBYTE(self) = sub_1003E281C(v10);

  (*(v8 + 8))(v10, v7);
  return self & 1;
}

- (void)applicationDidBecomeActive:(id)a3
{
  v4 = a3;
  v5 = self;
  sub_1003E0ED8(v4);
}

- (void)applicationWillTerminate:(id)a3
{
  v4 = a3;
  v5 = self;
  sub_1003E2A50();
}

- (void)buildMenuWithBuilder:(id)a3
{
  swift_unknownObjectRetain();
  v5 = self;
  sub_10048B9C8(a3);
  swift_unknownObjectRelease();
}

- (void)onMenuAction:(id)a3
{
  v4 = qword_1006AEC80;
  swift_unknownObjectRetain();
  if (v4 != -1)
  {
    swift_once();
  }

  sub_100110FE0();
  sub_10047121C(a3);

  swift_unknownObjectRelease();
}

- (void)validateCommand:(id)a3
{
  v3 = qword_1006AEC80;
  v4 = a3;
  if (v3 != -1)
  {
    swift_once();
  }

  sub_100110FE0();
  sub_100470874(v4);
}

@end