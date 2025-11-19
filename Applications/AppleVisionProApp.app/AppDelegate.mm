@interface AppDelegate
- (BOOL)application:(id)a3 didFinishLaunchingWithOptions:(id)a4;
- (id)application:(id)a3 configurationForConnectingSceneSession:(id)a4 options:(id)a5;
- (unint64_t)application:(id)a3 supportedInterfaceOrientationsForWindow:(id)a4;
- (void)application:(UIApplication *)a3 didReceiveRemoteNotification:(NSDictionary *)a4 fetchCompletionHandler:(id)a5;
- (void)application:(id)a3 didFailToRegisterForRemoteNotificationsWithError:(id)a4;
- (void)application:(id)a3 didRegisterForRemoteNotificationsWithDeviceToken:(id)a4;
- (void)userNotificationCenter:(UNUserNotificationCenter *)a3 didReceiveNotificationResponse:(UNNotificationResponse *)a4 withCompletionHandler:(id)a5;
- (void)userNotificationCenter:(UNUserNotificationCenter *)a3 willPresentNotification:(UNNotification *)a4 withCompletionHandler:(id)a5;
@end

@implementation AppDelegate

- (BOOL)application:(id)a3 didFinishLaunchingWithOptions:(id)a4
{
  v4 = a4;
  if (a4)
  {
    type metadata accessor for LaunchOptionsKey(0);
    sub_1000FBE40(&qword_1001691F0, type metadata accessor for LaunchOptionsKey);
    v4 = static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();
  }

  v7 = a3;
  v8 = self;
  v9 = sub_1000F94DC(v4);

  return v9 & 1;
}

- (void)application:(id)a3 didRegisterForRemoteNotificationsWithDeviceToken:(id)a4
{
  v6 = a3;
  v7 = a4;
  v11 = self;
  v8 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
  v10 = v9;

  sub_1000F98CC(v8, v10);
  sub_10003DBB8(v8, v10);
}

- (void)application:(id)a3 didFailToRegisterForRemoteNotificationsWithError:(id)a4
{
  v6 = a3;
  v8 = a4;
  v7 = self;
  sub_1000F9C94();
}

- (void)application:(UIApplication *)a3 didReceiveRemoteNotification:(NSDictionary *)a4 fetchCompletionHandler:(id)a5
{
  v9 = sub_100002BE4(&unk_10016F2B0, &qword_10010F6F0);
  v10 = *(*(v9 - 8) + 64);
  __chkstk_darwin(v9 - 8);
  v12 = &v21 - v11;
  v13 = _Block_copy(a5);
  v14 = swift_allocObject();
  v14[2] = a3;
  v14[3] = a4;
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
  v18 = a3;
  v19 = a4;
  v20 = self;
  sub_1000F8E38(0, 0, v12, &unk_10011A550, v17);
}

- (id)application:(id)a3 configurationForConnectingSceneSession:(id)a4 options:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v11 = self;
  v12 = sub_1000FA53C(v9, v10);

  return v12;
}

- (unint64_t)application:(id)a3 supportedInterfaceOrientationsForWindow:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = self;
  v9 = sub_1000FA7D4();

  return v9;
}

- (void)userNotificationCenter:(UNUserNotificationCenter *)a3 didReceiveNotificationResponse:(UNNotificationResponse *)a4 withCompletionHandler:(id)a5
{
  v9 = sub_100002BE4(&unk_10016F2B0, &qword_10010F6F0);
  v10 = *(*(v9 - 8) + 64);
  __chkstk_darwin(v9 - 8);
  v12 = &v21 - v11;
  v13 = _Block_copy(a5);
  v14 = swift_allocObject();
  v14[2] = a3;
  v14[3] = a4;
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
  v18 = a3;
  v19 = a4;
  v20 = self;
  sub_1000F8E38(0, 0, v12, &unk_10011A4C0, v17);
}

- (void)userNotificationCenter:(UNUserNotificationCenter *)a3 willPresentNotification:(UNNotification *)a4 withCompletionHandler:(id)a5
{
  v9 = sub_100002BE4(&unk_10016F2B0, &qword_10010F6F0);
  v10 = *(*(v9 - 8) + 64);
  __chkstk_darwin(v9 - 8);
  v12 = &v21 - v11;
  v13 = _Block_copy(a5);
  v14 = swift_allocObject();
  v14[2] = a3;
  v14[3] = a4;
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
  v18 = a3;
  v19 = a4;
  v20 = self;
  sub_1000F8E38(0, 0, v12, &unk_10011A480, v17);
}

@end