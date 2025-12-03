@interface SceneDelegate
- (id)stateRestorationActivityForScene:(id)scene;
- (void)applicationDidUnlock;
- (void)applicationWillUnlock;
- (void)scene:(id)scene continueUserActivity:(id)activity;
- (void)scene:(id)scene openURLContexts:(id)contexts;
- (void)scene:(id)scene willConnectToSession:(id)session options:(id)options;
- (void)sceneDidBecomeActive:(id)active;
- (void)sceneDidDisconnect:(id)disconnect;
- (void)sceneDidEnterBackground:(id)background;
- (void)sceneWillEnterForeground:(id)foreground;
- (void)setWindow:(id)window;
- (void)showSystemAlertWithNotification:(id)notification;
- (void)tapToRadarNotificationReceived:(id)received;
- (void)windowScene:(UIWindowScene *)scene performActionForShortcutItem:(UIApplicationShortcutItem *)item completionHandler:(id)handler;
@end

@implementation SceneDelegate

- (void)scene:(id)scene willConnectToSession:(id)session options:(id)options
{
  sceneCopy = scene;
  sessionCopy = session;
  optionsCopy = options;
  selfCopy = self;
  sub_100009144(sceneCopy, sessionCopy, optionsCopy);
}

- (void)sceneWillEnterForeground:(id)foreground
{
  foregroundCopy = foreground;
  selfCopy = self;
  sub_100026FF8();
}

- (void)sceneDidBecomeActive:(id)active
{
  activeCopy = active;
  selfCopy = self;
  sub_10004AFE0();
}

- (void)applicationWillUnlock
{
  selfCopy = self;
  sub_10004F468();
}

- (void)applicationDidUnlock
{
  selfCopy = self;
  sub_10005D2B8();
}

- (void)showSystemAlertWithNotification:(id)notification
{
  v4 = type metadata accessor for Notification();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v9 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  static Notification._unconditionallyBridgeFromObjectiveC(_:)();
  selfCopy = self;
  sub_1004CD348(v7);

  (*(v5 + 8))(v7, v4);
}

- (void)setWindow:(id)window
{
  v4 = *(&self->super.super.isa + OBJC_IVAR____TtC7Journal13SceneDelegate_window);
  *(&self->super.super.isa + OBJC_IVAR____TtC7Journal13SceneDelegate_window) = window;
  windowCopy = window;
}

- (void)sceneDidEnterBackground:(id)background
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

- (id)stateRestorationActivityForScene:(id)scene
{
  userActivity = [scene userActivity];

  return userActivity;
}

- (void)sceneDidDisconnect:(id)disconnect
{
  v4 = objc_opt_self();
  selfCopy = self;
  defaultCenter = [v4 defaultCenter];
  [defaultCenter removeObserver:selfCopy];
}

- (void)scene:(id)scene openURLContexts:(id)contexts
{
  sub_1000065A8(0, &qword_100AE9080);
  sub_10054CD00();
  v6 = static Set._unconditionallyBridgeFromObjectiveC(_:)();
  sceneCopy = scene;
  selfCopy = self;
  sub_10054C18C(v6);
}

- (void)scene:(id)scene continueUserActivity:(id)activity
{
  sceneCopy = scene;
  activityCopy = activity;
  selfCopy = self;
  sub_10054C4F8(activityCopy);
}

- (void)windowScene:(UIWindowScene *)scene performActionForShortcutItem:(UIApplicationShortcutItem *)item completionHandler:(id)handler
{
  v9 = sub_1000F24EC(&qword_100AD5170);
  __chkstk_darwin(v9 - 8);
  v11 = &v20 - v10;
  v12 = _Block_copy(handler);
  v13 = swift_allocObject();
  v13[2] = scene;
  v13[3] = item;
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
  sceneCopy = scene;
  itemCopy = item;
  selfCopy = self;
  sub_100564F58(0, 0, v11, &unk_10095DB30, v16);
}

- (void)tapToRadarNotificationReceived:(id)received
{
  v4 = type metadata accessor for Notification();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v9 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  static Notification._unconditionallyBridgeFromObjectiveC(_:)();
  selfCopy = self;
  sub_10054CEE4(v7);

  (*(v5 + 8))(v7, v4);
}

@end