@interface AppDelegate
- (BOOL)application:(id)application continueUserActivity:(id)activity restorationHandler:(id)handler;
- (BOOL)application:(id)application didFinishLaunchingWithOptions:(id)options;
- (id)application:(id)application configurationForConnectingSceneSession:(id)session options:(id)options;
- (void)application:(id)application didDiscardSceneSessions:(id)sessions;
- (void)application:(id)application didFailToRegisterForRemoteNotificationsWithError:(id)error;
- (void)application:(id)application didRegisterForRemoteNotificationsWithDeviceToken:(id)token;
@end

@implementation AppDelegate

- (BOOL)application:(id)application didFinishLaunchingWithOptions:(id)options
{
  if (options)
  {
    type metadata accessor for LaunchOptionsKey(0);
    sub_100018F38(&qword_100188590, type metadata accessor for LaunchOptionsKey);
    static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();
  }

  applicationCopy = application;
  selfCopy = self;
  sub_100017C48();

  return 1;
}

- (id)application:(id)application configurationForConnectingSceneSession:(id)session options:(id)options
{
  applicationCopy = application;
  sessionCopy = session;
  optionsCopy = options;
  selfCopy = self;
  sub_100017EF0();
  v13 = v12;

  return v13;
}

- (void)application:(id)application didDiscardSceneSessions:(id)sessions
{
  sub_100018EBC();
  sub_100018F38(&qword_100189698, sub_100018EBC);
  static Set._unconditionallyBridgeFromObjectiveC(_:)();
  applicationCopy = application;
  selfCopy = self;
  sub_1000182B0();
}

- (void)application:(id)application didRegisterForRemoteNotificationsWithDeviceToken:(id)token
{
  applicationCopy = application;
  tokenCopy = token;
  selfCopy = self;
  v8 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
  v10 = v9;

  sub_100018570();
  sub_100008408(v8, v10);
}

- (void)application:(id)application didFailToRegisterForRemoteNotificationsWithError:(id)error
{
  applicationCopy = application;
  errorCopy = error;
  selfCopy = self;
  sub_1000187F0();
}

- (BOOL)application:(id)application continueUserActivity:(id)activity restorationHandler:(id)handler
{
  v8 = _Block_copy(handler);
  *(swift_allocObject() + 16) = v8;
  applicationCopy = application;
  activityCopy = activity;
  selfCopy = self;
  sub_100018A48();

  return 1;
}

@end