@interface AppDelegate
- (BOOL)application:(id)a3 runTest:(id)a4 options:(id)a5;
- (id)application:(id)a3 configurationForConnectingSceneSession:(id)a4 options:(id)a5;
- (id)createSceneContainer;
- (void)application:(id)a3 didDiscardSceneSessions:(id)a4;
- (void)buildMenuWithBuilder:(id)a3;
- (void)didBecomeActive;
- (void)didBecomeKeyWindow;
- (void)didEnterBackground;
- (void)willEnterForeground;
- (void)willResignActive;
- (void)willTerminate;
@end

@implementation AppDelegate

- (id)application:(id)a3 configurationForConnectingSceneSession:(id)a4 options:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v11 = self;
  v12 = sub_1000610E4(v11, v9);

  return v12;
}

- (void)didBecomeKeyWindow
{
  v2 = self;
  sub_1000A5EA4();
}

- (void)willEnterForeground
{
  v2 = self;
  sub_1000BECF0("Application will enter foreground", 33, &dispatch thunk of ApplicationStateManagerType.willEnterForeground());
}

- (void)application:(id)a3 didDiscardSceneSessions:(id)a4
{
  sub_10000C70C(0, &qword_100CAF470);
  sub_10016B300();
  static Set._unconditionallyBridgeFromObjectiveC(_:)();
}

- (void)willTerminate
{
  v2 = self;
  sub_100356078();
}

- (void)didEnterBackground
{
  v2 = self;
  sub_1000BECF0("Application did enter background", 32, &dispatch thunk of ApplicationStateManagerType.didEnterBackground());
}

- (id)createSceneContainer
{
  v2 = self;
  sub_100356628(v5);

  sub_1000161C0(v5, v5[3]);
  v3 = _bridgeAnythingToObjectiveC<A>(_:)();
  sub_100006F14(v5);

  return v3;
}

- (void)willResignActive
{
  v2 = self;
  sub_1003567D4(0);
}

- (void)didBecomeActive
{
  v2 = self;
  sub_1003567D4(1);
}

- (BOOL)application:(id)a3 runTest:(id)a4 options:(id)a5
{
  v7 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v9 = v8;
  static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();
  v10 = a3;
  v11 = self;
  LOBYTE(self) = sub_100356894(v11, v7, v9);

  return self & 1;
}

- (void)buildMenuWithBuilder:(id)a3
{
  swift_unknownObjectRetain();
  v5 = self;
  sub_100356990(a3);
  swift_unknownObjectRelease();
}

@end