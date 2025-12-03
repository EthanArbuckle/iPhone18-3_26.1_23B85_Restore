@interface AppDelegate
- (BOOL)application:(id)application didFinishLaunchingWithOptions:(id)options;
- (_TtC8SOSBuddy11AppDelegate)init;
- (id)application:(id)application configurationForConnectingSceneSession:(id)session options:(id)options;
- (void)application:didDiscardSceneSessions:;
- (void)applicationWillTerminate:(id)terminate;
@end

@implementation AppDelegate

- (BOOL)application:(id)application didFinishLaunchingWithOptions:(id)options
{
  if (options)
  {
    type metadata accessor for LaunchOptionsKey(0);
    sub_1000276E8(&qword_100354990, type metadata accessor for LaunchOptionsKey);
    v5 = static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();
  }

  else
  {
    v5 = 0;
  }

  selfCopy = self;
  v7 = sub_100026C34(v5);

  return v7 & 1;
}

- (void)applicationWillTerminate:(id)terminate
{
  selfCopy = self;
  sub_100027464();
}

- (id)application:(id)application configurationForConnectingSceneSession:(id)session options:(id)options
{
  sessionCopy = session;
  optionsCopy = options;
  selfCopy = self;
  v10 = sub_10010682C(sessionCopy, optionsCopy);

  return v10;
}

- (void)application:didDiscardSceneSessions:
{
  if (qword_100353A10 != -1)
  {
    swift_once();
  }

  v0 = type metadata accessor for Logger();
  sub_10000F53C(v0, qword_100381C80);
  oslog = Logger.logObject.getter();
  v1 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(oslog, v1))
  {
    v2 = swift_slowAlloc();
    *v2 = 0;
    _os_log_impl(&_mh_execute_header, oslog, v1, "AppDelegate didDiscardSceneSessions()", v2, 2u);
  }
}

- (_TtC8SOSBuddy11AppDelegate)init
{
  v3 = (self + OBJC_IVAR____TtC8SOSBuddy11AppDelegate_delegate);
  type metadata accessor for ProdAppDelegate();
  v4 = swift_allocObject();
  type metadata accessor for SOSBuddyEnvironment();
  swift_allocObject();
  *(v4 + 16) = sub_100179D5C();
  *v3 = v4;
  v3[1] = &off_100326ED0;
  v6.receiver = self;
  v6.super_class = type metadata accessor for AppDelegate();
  return [(AppDelegate *)&v6 init];
}

@end