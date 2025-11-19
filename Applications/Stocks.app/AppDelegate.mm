@interface AppDelegate
- (BOOL)application:(id)a3 didFinishLaunchingWithOptions:(id)a4;
- (BOOL)application:(id)a3 runTest:(id)a4 options:(id)a5;
- (BOOL)application:(id)a3 willFinishLaunchingWithOptions:(id)a4;
- (BOOL)canPerformAction:(SEL)a3 withSender:(id)a4;
- (id)application:(id)a3 configurationForConnectingSceneSession:(id)a4 options:(id)a5;
- (id)forwardingTargetForSelector:(SEL)a3;
- (void)application:(id)a3 didDiscardSceneSessions:(id)a4;
- (void)application:(id)a3 didFailToRegisterForRemoteNotificationsWithError:(id)a4;
- (void)application:(id)a3 didReceiveRemoteNotification:(id)a4 fetchCompletionHandler:(id)a5;
- (void)application:(id)a3 didRegisterForRemoteNotificationsWithDeviceToken:(id)a4;
- (void)application:(id)a3 performFetchWithCompletionHandler:(id)a4;
- (void)applicationWillTerminate:(id)a3;
- (void)buildMenuWithBuilder:(id)a3;
- (void)validateCommand:(id)a3;
@end

@implementation AppDelegate

- (BOOL)application:(id)a3 willFinishLaunchingWithOptions:(id)a4
{
  v4 = a4;
  if (a4)
  {
    type metadata accessor for LaunchOptionsKey(0);
    sub_10000402C(&qword_10004F080, 255, type metadata accessor for LaunchOptionsKey);
    v4 = static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();
  }

  v7 = a3;
  v8 = self;
  v9 = sub_100002AF4(v4);

  return v9 & 1;
}

- (BOOL)application:(id)a3 didFinishLaunchingWithOptions:(id)a4
{
  v4 = a4;
  if (a4)
  {
    type metadata accessor for LaunchOptionsKey(0);
    sub_10000402C(&qword_10004F080, 255, type metadata accessor for LaunchOptionsKey);
    v4 = static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();
  }

  v7 = a3;
  v8 = self;
  v9 = sub_10000916C(v7, v4);

  return v9 & 1;
}

- (void)application:(id)a3 didRegisterForRemoteNotificationsWithDeviceToken:(id)a4
{
  v4 = a4;
  v5 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
  sub_10000F96C(v5, v6);

  sub_10000557C(0, &qword_10004F060, OS_os_log_ptr);
  v7 = static OS_os_log.default.getter();
  static os_log_type_t.default.getter();
  os_log(_:dso:log:type:_:)();
}

- (void)applicationWillTerminate:(id)a3
{
  v4 = a3;
  v5 = self;
  sub_10001524C();
}

- (id)application:(id)a3 configurationForConnectingSceneSession:(id)a4 options:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v11 = self;
  v12 = sub_1000154F4(v9);

  return v12;
}

- (void)application:(id)a3 didDiscardSceneSessions:(id)a4
{
  sub_10000557C(0, &qword_10004F068, UISceneSession_ptr);
  sub_1000160EC();
  v6 = static Set._unconditionallyBridgeFromObjectiveC(_:)();
  v7 = a3;
  v8 = self;
  sub_100015768(v6);
}

- (void)application:(id)a3 didReceiveRemoteNotification:(id)a4 fetchCompletionHandler:(id)a5
{
  v7 = _Block_copy(a5);
  v8 = static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();
  v9 = swift_allocObject();
  *(v9 + 16) = v7;
  v10 = a3;
  v11 = self;
  sub_100015A3C(v8, sub_10001615C, v9);
}

- (void)application:(id)a3 didFailToRegisterForRemoteNotificationsWithError:(id)a4
{
  v6 = a3;
  v8 = a4;
  v7 = self;
  sub_100015CB4();
}

- (void)application:(id)a3 performFetchWithCompletionHandler:(id)a4
{
  v6 = _Block_copy(a4);
  v7 = swift_allocObject();
  *(v7 + 16) = v6;
  v8 = a3;
  v9 = self;
  sub_100015DF8(sub_100016074, v7);
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
  v13 = sub_100015F6C(v8, v10, v5);

  return v13 & 1;
}

- (void)buildMenuWithBuilder:(id)a3
{
  swift_unknownObjectRetain();
  v6 = self;
  v5 = sub_100013D40();
  [v5 buildMenuWithBuilder:a3];

  swift_unknownObjectRelease();
}

- (id)forwardingTargetForSelector:(SEL)a3
{
  v4 = self;
  sub_1000149D4(a3, v13);

  v5 = v14;
  if (v14)
  {
    v6 = sub_1000045D8(v13, v14);
    v7 = *(v5 - 8);
    v8 = *(v7 + 64);
    __chkstk_darwin(v6);
    v10 = v13 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
    (*(v7 + 16))(v10);
    v11 = _bridgeAnythingToObjectiveC<A>(_:)();
    (*(v7 + 8))(v10, v5);
    sub_10000461C(v13);
  }

  else
  {
    v11 = 0;
  }

  return v11;
}

- (void)validateCommand:(id)a3
{
  v4 = a3;
  v5 = self;
  sub_100014C24();
}

- (BOOL)canPerformAction:(SEL)a3 withSender:(id)a4
{
  if (a4)
  {
    v6 = self;
    swift_unknownObjectRetain();
    _bridgeAnyObjectToAny(_:)();
    swift_unknownObjectRelease();
  }

  else
  {
    memset(v10, 0, sizeof(v10));
    v7 = self;
  }

  v8 = sub_100014DD4(a3, v10);

  sub_100015138(v10);
  return v8 & 1;
}

@end