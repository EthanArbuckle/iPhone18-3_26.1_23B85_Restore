@interface AppDelegate
- (BOOL)application:(id)application runTest:(id)test options:(id)options;
- (id)application:(id)application configurationForConnectingSceneSession:(id)session options:(id)options;
- (id)createSceneContainer;
- (void)application:(id)application didDiscardSceneSessions:(id)sessions;
- (void)buildMenuWithBuilder:(id)builder;
- (void)didBecomeActive;
- (void)didBecomeKeyWindow;
- (void)didEnterBackground;
- (void)willEnterForeground;
- (void)willResignActive;
- (void)willTerminate;
@end

@implementation AppDelegate

- (id)application:(id)application configurationForConnectingSceneSession:(id)session options:(id)options
{
  applicationCopy = application;
  sessionCopy = session;
  optionsCopy = options;
  selfCopy = self;
  v12 = sub_1000610E4(selfCopy, sessionCopy);

  return v12;
}

- (void)didBecomeKeyWindow
{
  selfCopy = self;
  sub_1000A5EA4();
}

- (void)willEnterForeground
{
  selfCopy = self;
  sub_1000BECF0("Application will enter foreground", 33, &dispatch thunk of ApplicationStateManagerType.willEnterForeground());
}

- (void)application:(id)application didDiscardSceneSessions:(id)sessions
{
  sub_10000C70C(0, &qword_100CAF470);
  sub_10016B300();
  static Set._unconditionallyBridgeFromObjectiveC(_:)();
}

- (void)willTerminate
{
  selfCopy = self;
  sub_100356078();
}

- (void)didEnterBackground
{
  selfCopy = self;
  sub_1000BECF0("Application did enter background", 32, &dispatch thunk of ApplicationStateManagerType.didEnterBackground());
}

- (id)createSceneContainer
{
  selfCopy = self;
  sub_100356628(v5);

  sub_1000161C0(v5, v5[3]);
  v3 = _bridgeAnythingToObjectiveC<A>(_:)();
  sub_100006F14(v5);

  return v3;
}

- (void)willResignActive
{
  selfCopy = self;
  sub_1003567D4(0);
}

- (void)didBecomeActive
{
  selfCopy = self;
  sub_1003567D4(1);
}

- (BOOL)application:(id)application runTest:(id)test options:(id)options
{
  v7 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v9 = v8;
  static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();
  applicationCopy = application;
  selfCopy = self;
  LOBYTE(self) = sub_100356894(selfCopy, v7, v9);

  return self & 1;
}

- (void)buildMenuWithBuilder:(id)builder
{
  swift_unknownObjectRetain();
  selfCopy = self;
  sub_100356990(builder);
  swift_unknownObjectRelease();
}

@end