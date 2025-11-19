@interface SceneDelegate
- (id)stateRestorationActivityForScene:(id)a3;
- (void)applicationDidUnlock;
- (void)applicationWillUnlock;
- (void)scene:(id)a3 continueUserActivity:(id)a4;
- (void)scene:(id)a3 openURLContexts:(id)a4;
- (void)scene:(id)a3 willConnectToSession:(id)a4 options:(id)a5;
- (void)sceneDidBecomeActive:(id)a3;
- (void)sceneDidDisconnect:(id)a3;
- (void)sceneDidEnterBackground:(id)a3;
- (void)sceneWillEnterForeground:(id)a3;
- (void)setWindow:(id)a3;
- (void)showSystemAlertWithNotification:(id)a3;
- (void)tapToRadarNotificationReceived:(id)a3;
- (void)windowScene:(UIWindowScene *)a3 performActionForShortcutItem:(UIApplicationShortcutItem *)a4 completionHandler:(id)a5;
@end

@implementation SceneDelegate

- (void)scene:(id)a3 willConnectToSession:(id)a4 options:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v11 = self;
  sub_100009144(v8, v9, v10);
}

- (void)sceneWillEnterForeground:(id)a3
{
  v4 = a3;
  v5 = self;
  sub_100026FF8();
}

- (void)sceneDidBecomeActive:(id)a3
{
  v4 = a3;
  v5 = self;
  sub_10004AFE0();
}

- (void)applicationWillUnlock
{
  v2 = self;
  sub_10004F468();
}

- (void)applicationDidUnlock
{
  v2 = self;
  sub_10005D2B8();
}

- (void)showSystemAlertWithNotification:(id)a3
{
  v4 = type metadata accessor for Notification();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v9 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  static Notification._unconditionallyBridgeFromObjectiveC(_:)();
  v8 = self;
  sub_1004CD348(v7);

  (*(v5 + 8))(v7, v4);
}

- (void)setWindow:(id)a3
{
  v4 = *(&self->super.super.isa + OBJC_IVAR____TtC7Journal13SceneDelegate_window);
  *(&self->super.super.isa + OBJC_IVAR____TtC7Journal13SceneDelegate_window) = a3;
  v3 = a3;
}

- (void)sceneDidEnterBackground:(id)a3
{
  v3 = type metadata accessor for JournalFeatureFlags();
  v4 = *(v3 - 8);
  v5 = __chkstk_darwin(v3);
  v7 = &v9 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v4 + 104))(v7, enum case for JournalFeatureFlags.suggestionsAPI(_:), v3, v5);
  v8 = JournalFeatureFlags.isEnabled.getter();
  (*(v4 + 8))(v7, v3);
  if ((v8 & 1) == 0)
  {
    if (qword_100ACFD50 != -1)
    {
      swift_once();
    }

    sub_1003ED2C8(0, 0);
  }
}

- (id)stateRestorationActivityForScene:(id)a3
{
  v3 = [a3 userActivity];

  return v3;
}

- (void)sceneDidDisconnect:(id)a3
{
  v4 = objc_opt_self();
  v6 = self;
  v5 = [v4 defaultCenter];
  [v5 removeObserver:v6];
}

- (void)scene:(id)a3 openURLContexts:(id)a4
{
  sub_1000065A8(0, &qword_100AE9080);
  sub_10054CD00();
  v6 = static Set._unconditionallyBridgeFromObjectiveC(_:)();
  v7 = a3;
  v8 = self;
  sub_10054C18C(v6);
}

- (void)scene:(id)a3 continueUserActivity:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = self;
  sub_10054C4F8(v7);
}

- (void)windowScene:(UIWindowScene *)a3 performActionForShortcutItem:(UIApplicationShortcutItem *)a4 completionHandler:(id)a5
{
  v9 = sub_1000F24EC(&qword_100AD5170);
  __chkstk_darwin(v9 - 8);
  v11 = &v20 - v10;
  v12 = _Block_copy(a5);
  v13 = swift_allocObject();
  v13[2] = a3;
  v13[3] = a4;
  v13[4] = v12;
  v13[5] = self;
  v14 = type metadata accessor for TaskPriority();
  (*(*(v14 - 8) + 56))(v11, 1, 1, v14);
  v15 = swift_allocObject();
  v15[2] = 0;
  v15[3] = 0;
  v15[4] = &unk_10095D550;
  v15[5] = v13;
  v16 = swift_allocObject();
  v16[2] = 0;
  v16[3] = 0;
  v16[4] = &unk_1009439C0;
  v16[5] = v15;
  v17 = a3;
  v18 = a4;
  v19 = self;
  sub_100564F58(0, 0, v11, &unk_10095DB30, v16);
}

- (void)tapToRadarNotificationReceived:(id)a3
{
  v4 = type metadata accessor for Notification();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v9 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  static Notification._unconditionallyBridgeFromObjectiveC(_:)();
  v8 = self;
  sub_10054CEE4(v7);

  (*(v5 + 8))(v7, v4);
}

@end