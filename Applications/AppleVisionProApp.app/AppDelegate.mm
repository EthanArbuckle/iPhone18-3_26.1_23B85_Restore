@interface AppDelegate
- (BOOL)application:(id)application didFinishLaunchingWithOptions:(id)options;
- (id)application:(id)application configurationForConnectingSceneSession:(id)session options:(id)options;
- (unint64_t)application:(id)application supportedInterfaceOrientationsForWindow:(id)window;
- (void)application:(UIApplication *)application didReceiveRemoteNotification:(NSDictionary *)notification fetchCompletionHandler:(id)handler;
- (void)application:(id)application didFailToRegisterForRemoteNotificationsWithError:(id)error;
- (void)application:(id)application didRegisterForRemoteNotificationsWithDeviceToken:(id)token;
- (void)userNotificationCenter:(UNUserNotificationCenter *)center didReceiveNotificationResponse:(UNNotificationResponse *)response withCompletionHandler:(id)handler;
- (void)userNotificationCenter:(UNUserNotificationCenter *)center willPresentNotification:(UNNotification *)notification withCompletionHandler:(id)handler;
@end

@implementation AppDelegate

- (BOOL)application:(id)application didFinishLaunchingWithOptions:(id)options
{
  optionsCopy = options;
  if (options)
  {
    type metadata accessor for LaunchOptionsKey(0);
    sub_1000FBE40(&qword_1001691F0, type metadata accessor for LaunchOptionsKey);
    optionsCopy = static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();
  }

  applicationCopy = application;
  selfCopy = self;
  v9 = sub_1000F94DC(optionsCopy);

  return v9 & 1;
}

- (void)application:(id)application didRegisterForRemoteNotificationsWithDeviceToken:(id)token
{
  applicationCopy = application;
  tokenCopy = token;
  selfCopy = self;
  v8 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
  v10 = v9;

  sub_1000F98CC(v8, v10);
  sub_10003DBB8(v8, v10);
}

- (void)application:(id)application didFailToRegisterForRemoteNotificationsWithError:(id)error
{
  applicationCopy = application;
  errorCopy = error;
  selfCopy = self;
  sub_1000F9C94();
}

- (void)application:(UIApplication *)application didReceiveRemoteNotification:(NSDictionary *)notification fetchCompletionHandler:(id)handler
{
  v9 = sub_100002BE4(&unk_10016F2B0, &qword_10010F6F0);
  v10 = *(*(v9 - 8) + 64);
  __chkstk_darwin(v9 - 8);
  v12 = &v21 - v11;
  v13 = _Block_copy(handler);
  v14 = swift_allocObject();
  v14[2] = application;
  v14[3] = notification;
  v14[4] = v13;
  v14[5] = self;
  v15 = type metadata accessor for TaskPriority();
  (*(*(v15 - 8) + 56))(v12, 1, 1, v15);
  v16 = swift_allocObject();
  v16[2] = 0;
  v16[3] = 0;
  v16[4] = &unk_10011A540;
  v16[5] = v14;
  v17 = swift_allocObject();
  v17[2] = 0;
  v17[3] = 0;
  v17[4] = &unk_10011A548;
  v17[5] = v16;
  applicationCopy = application;
  notificationCopy = notification;
  selfCopy = self;
  sub_1000F8E38(0, 0, v12, &unk_10011A550, v17);
}

- (id)application:(id)application configurationForConnectingSceneSession:(id)session options:(id)options
{
  applicationCopy = application;
  sessionCopy = session;
  optionsCopy = options;
  selfCopy = self;
  v12 = sub_1000FA53C(sessionCopy, optionsCopy);

  return v12;
}

- (unint64_t)application:(id)application supportedInterfaceOrientationsForWindow:(id)window
{
  applicationCopy = application;
  windowCopy = window;
  selfCopy = self;
  v9 = sub_1000FA7D4();

  return v9;
}

- (void)userNotificationCenter:(UNUserNotificationCenter *)center didReceiveNotificationResponse:(UNNotificationResponse *)response withCompletionHandler:(id)handler
{
  v9 = sub_100002BE4(&unk_10016F2B0, &qword_10010F6F0);
  v10 = *(*(v9 - 8) + 64);
  __chkstk_darwin(v9 - 8);
  v12 = &v21 - v11;
  v13 = _Block_copy(handler);
  v14 = swift_allocObject();
  v14[2] = center;
  v14[3] = response;
  v14[4] = v13;
  v14[5] = self;
  v15 = type metadata accessor for TaskPriority();
  (*(*(v15 - 8) + 56))(v12, 1, 1, v15);
  v16 = swift_allocObject();
  v16[2] = 0;
  v16[3] = 0;
  v16[4] = &unk_10011A4B0;
  v16[5] = v14;
  v17 = swift_allocObject();
  v17[2] = 0;
  v17[3] = 0;
  v17[4] = &unk_10011A4B8;
  v17[5] = v16;
  centerCopy = center;
  responseCopy = response;
  selfCopy = self;
  sub_1000F8E38(0, 0, v12, &unk_10011A4C0, v17);
}

- (void)userNotificationCenter:(UNUserNotificationCenter *)center willPresentNotification:(UNNotification *)notification withCompletionHandler:(id)handler
{
  v9 = sub_100002BE4(&unk_10016F2B0, &qword_10010F6F0);
  v10 = *(*(v9 - 8) + 64);
  __chkstk_darwin(v9 - 8);
  v12 = &v21 - v11;
  v13 = _Block_copy(handler);
  v14 = swift_allocObject();
  v14[2] = center;
  v14[3] = notification;
  v14[4] = v13;
  v14[5] = self;
  v15 = type metadata accessor for TaskPriority();
  (*(*(v15 - 8) + 56))(v12, 1, 1, v15);
  v16 = swift_allocObject();
  v16[2] = 0;
  v16[3] = 0;
  v16[4] = &unk_10011A460;
  v16[5] = v14;
  v17 = swift_allocObject();
  v17[2] = 0;
  v17[3] = 0;
  v17[4] = &unk_10011A470;
  v17[5] = v16;
  centerCopy = center;
  notificationCopy = notification;
  selfCopy = self;
  sub_1000F8E38(0, 0, v12, &unk_10011A480, v17);
}

@end