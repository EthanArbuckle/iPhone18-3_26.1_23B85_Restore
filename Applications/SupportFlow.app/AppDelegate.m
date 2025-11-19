@interface AppDelegate
- (BOOL)application:(id)a3 continueUserActivity:(id)a4 restorationHandler:(id)a5;
- (BOOL)application:(id)a3 didFinishLaunchingWithOptions:(id)a4;
- (id)application:(id)a3 configurationForConnectingSceneSession:(id)a4 options:(id)a5;
- (void)application:(id)a3 didDiscardSceneSessions:(id)a4;
- (void)application:(id)a3 didFailToRegisterForRemoteNotificationsWithError:(id)a4;
- (void)application:(id)a3 didRegisterForRemoteNotificationsWithDeviceToken:(id)a4;
@end

@implementation AppDelegate

- (BOOL)application:(id)a3 didFinishLaunchingWithOptions:(id)a4
{
  if (a4)
  {
    type metadata accessor for LaunchOptionsKey(0);
    sub_100018F38(&qword_100188590, type metadata accessor for LaunchOptionsKey);
    static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();
  }

  v6 = a3;
  v7 = self;
  sub_100017C48();

  return 1;
}

- (id)application:(id)a3 configurationForConnectingSceneSession:(id)a4 options:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v11 = self;
  sub_100017EF0();
  v13 = v12;

  return v13;
}

- (void)application:(id)a3 didDiscardSceneSessions:(id)a4
{
  sub_100018EBC();
  sub_100018F38(&qword_100189698, sub_100018EBC);
  static Set._unconditionallyBridgeFromObjectiveC(_:)();
  v6 = a3;
  v7 = self;
  sub_1000182B0();
}

- (void)application:(id)a3 didRegisterForRemoteNotificationsWithDeviceToken:(id)a4
{
  v6 = a3;
  v7 = a4;
  v11 = self;
  v8 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
  v10 = v9;

  sub_100018570();
  sub_100008408(v8, v10);
}

- (void)application:(id)a3 didFailToRegisterForRemoteNotificationsWithError:(id)a4
{
  v6 = a3;
  v8 = a4;
  v7 = self;
  sub_1000187F0();
}

- (BOOL)application:(id)a3 continueUserActivity:(id)a4 restorationHandler:(id)a5
{
  v8 = _Block_copy(a5);
  *(swift_allocObject() + 16) = v8;
  v9 = a3;
  v10 = a4;
  v11 = self;
  sub_100018A48();

  return 1;
}

@end