@interface AppDelegate
- (BOOL)application:(id)application didFinishLaunchingWithOptions:(id)options;
- (BOOL)application:(id)application runTest:(id)test options:(id)options;
- (BOOL)application:(id)application willFinishLaunchingWithOptions:(id)options;
- (BOOL)canPerformAction:(SEL)action withSender:(id)sender;
- (id)application:(id)application configurationForConnectingSceneSession:(id)session options:(id)options;
- (id)forwardingTargetForSelector:(SEL)selector;
- (void)application:(id)application didDiscardSceneSessions:(id)sessions;
- (void)application:(id)application didFailToRegisterForRemoteNotificationsWithError:(id)error;
- (void)application:(id)application didReceiveRemoteNotification:(id)notification fetchCompletionHandler:(id)handler;
- (void)application:(id)application didRegisterForRemoteNotificationsWithDeviceToken:(id)token;
- (void)application:(id)application performFetchWithCompletionHandler:(id)handler;
- (void)applicationWillTerminate:(id)terminate;
- (void)buildMenuWithBuilder:(id)builder;
- (void)validateCommand:(id)command;
@end

@implementation AppDelegate

- (BOOL)application:(id)application willFinishLaunchingWithOptions:(id)options
{
  optionsCopy = options;
  if (options)
  {
    type metadata accessor for LaunchOptionsKey(0);
    sub_10000402C(&qword_10004F080, 255, type metadata accessor for LaunchOptionsKey);
    optionsCopy = static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();
  }

  applicationCopy = application;
  selfCopy = self;
  v9 = sub_100002AF4(optionsCopy);

  return v9 & 1;
}

- (BOOL)application:(id)application didFinishLaunchingWithOptions:(id)options
{
  optionsCopy = options;
  if (options)
  {
    type metadata accessor for LaunchOptionsKey(0);
    sub_10000402C(&qword_10004F080, 255, type metadata accessor for LaunchOptionsKey);
    optionsCopy = static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();
  }

  applicationCopy = application;
  selfCopy = self;
  v9 = sub_10000916C(applicationCopy, optionsCopy);

  return v9 & 1;
}

- (void)application:(id)application didRegisterForRemoteNotificationsWithDeviceToken:(id)token
{
  tokenCopy = token;
  v5 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
  sub_10000F96C(v5, v6);

  sub_10000557C(0, &qword_10004F060, OS_os_log_ptr);
  v7 = static OS_os_log.default.getter();
  static os_log_type_t.default.getter();
  os_log(_:dso:log:type:_:)();
}

- (void)applicationWillTerminate:(id)terminate
{
  terminateCopy = terminate;
  selfCopy = self;
  sub_10001524C();
}

- (id)application:(id)application configurationForConnectingSceneSession:(id)session options:(id)options
{
  applicationCopy = application;
  sessionCopy = session;
  optionsCopy = options;
  selfCopy = self;
  v12 = sub_1000154F4(sessionCopy);

  return v12;
}

- (void)application:(id)application didDiscardSceneSessions:(id)sessions
{
  sub_10000557C(0, &qword_10004F068, UISceneSession_ptr);
  sub_1000160EC();
  v6 = static Set._unconditionallyBridgeFromObjectiveC(_:)();
  applicationCopy = application;
  selfCopy = self;
  sub_100015768(v6);
}

- (void)application:(id)application didReceiveRemoteNotification:(id)notification fetchCompletionHandler:(id)handler
{
  v7 = _Block_copy(handler);
  v8 = static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();
  v9 = swift_allocObject();
  *(v9 + 16) = v7;
  applicationCopy = application;
  selfCopy = self;
  sub_100015A3C(v8, sub_10001615C, v9);
}

- (void)application:(id)application didFailToRegisterForRemoteNotificationsWithError:(id)error
{
  applicationCopy = application;
  errorCopy = error;
  selfCopy = self;
  sub_100015CB4();
}

- (void)application:(id)application performFetchWithCompletionHandler:(id)handler
{
  v6 = _Block_copy(handler);
  v7 = swift_allocObject();
  *(v7 + 16) = v6;
  applicationCopy = application;
  selfCopy = self;
  sub_100015DF8(sub_100016074, v7);
}

- (BOOL)application:(id)application runTest:(id)test options:(id)options
{
  optionsCopy = options;
  if (!test)
  {
    v8 = 0;
    v10 = 0;
    if (!options)
    {
      goto LABEL_4;
    }

    goto LABEL_3;
  }

  v8 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v10 = v9;
  if (optionsCopy)
  {
LABEL_3:
    optionsCopy = static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();
  }

LABEL_4:
  applicationCopy = application;
  selfCopy = self;
  v13 = sub_100015F6C(v8, v10, optionsCopy);

  return v13 & 1;
}

- (void)buildMenuWithBuilder:(id)builder
{
  swift_unknownObjectRetain();
  selfCopy = self;
  v5 = sub_100013D40();
  [v5 buildMenuWithBuilder:builder];

  swift_unknownObjectRelease();
}

- (id)forwardingTargetForSelector:(SEL)selector
{
  selfCopy = self;
  sub_1000149D4(selector, v13);

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

- (void)validateCommand:(id)command
{
  commandCopy = command;
  selfCopy = self;
  sub_100014C24();
}

- (BOOL)canPerformAction:(SEL)action withSender:(id)sender
{
  if (sender)
  {
    selfCopy = self;
    swift_unknownObjectRetain();
    _bridgeAnyObjectToAny(_:)();
    swift_unknownObjectRelease();
  }

  else
  {
    memset(v10, 0, sizeof(v10));
    selfCopy2 = self;
  }

  v8 = sub_100014DD4(action, v10);

  sub_100015138(v10);
  return v8 & 1;
}

@end