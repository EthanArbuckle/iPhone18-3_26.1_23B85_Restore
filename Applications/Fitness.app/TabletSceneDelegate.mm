@interface TabletSceneDelegate
- (void)scene:(id)scene continueUserActivity:(id)activity;
- (void)scene:(id)scene openURLContexts:(id)contexts;
- (void)scene:(id)scene willConnectToSession:(id)session options:(id)options;
- (void)sceneDidBecomeActive:(id)active;
- (void)sceneDidDisconnect:(id)disconnect;
- (void)sceneDidEnterBackground:(id)background;
- (void)sceneWillEnterForeground:(id)foreground;
- (void)setWindow:(id)window;
- (void)userNotificationCenter:(id)center didReceiveNotificationResponse:(id)response withCompletionHandler:(id)handler;
- (void)userNotificationCenter:(id)center openSettingsForNotification:(id)notification;
@end

@implementation TabletSceneDelegate

- (void)setWindow:(id)window
{
  v4 = *(&self->super.super.isa + OBJC_IVAR____TtC10FitnessApp19TabletSceneDelegate_window);
  *(&self->super.super.isa + OBJC_IVAR____TtC10FitnessApp19TabletSceneDelegate_window) = window;
  windowCopy = window;
}

- (void)scene:(id)scene willConnectToSession:(id)session options:(id)options
{
  sceneCopy = scene;
  sessionCopy = session;
  optionsCopy = options;
  selfCopy = self;
  sub_1005321C8(sceneCopy, optionsCopy);
}

- (void)scene:(id)scene continueUserActivity:(id)activity
{
  sceneCopy = scene;
  activityCopy = activity;
  selfCopy = self;
  sub_1005329E0(activityCopy);
}

- (void)sceneDidDisconnect:(id)disconnect
{
  sub_100007C5C(*(&self->super.super.isa + OBJC_IVAR____TtC10FitnessApp19TabletSceneDelegate_navigator) + 88, v5);
  sub_1000066AC(v5, v5[3]);
  selfCopy = self;
  dispatch thunk of MetricSceneLifecycleReporting.reportDidDisconnect()();
  sub_100005A40(v5);
}

- (void)scene:(id)scene openURLContexts:(id)contexts
{
  sub_1000059F8(0, &qword_1008F2028);
  sub_1005342B0();
  v6 = static Set._unconditionallyBridgeFromObjectiveC(_:)();
  sceneCopy = scene;
  selfCopy = self;
  sub_100532C70(v6);
}

- (void)sceneWillEnterForeground:(id)foreground
{
  foregroundCopy = foreground;
  selfCopy = self;
  sub_1005331BC();
}

- (void)sceneDidBecomeActive:(id)active
{
  activeCopy = active;
  selfCopy = self;
  sub_1005335DC();
}

- (void)sceneDidEnterBackground:(id)background
{
  (*(&self->super.super.isa + OBJC_IVAR____TtC10FitnessApp19TabletSceneDelegate_fitnessAppBadgeAggregator))[OBJC_IVAR___CHFitnessAppBadgeAggregator_isBrowsingSeymour] = 0;
  sub_100007C5C(*(&self->super.super.isa + OBJC_IVAR____TtC10FitnessApp19TabletSceneDelegate_navigator) + 88, v5);
  sub_1000066AC(v5, v5[3]);
  selfCopy = self;
  dispatch thunk of MetricSceneLifecycleReporting.reportDidEnterBackground()();
  sub_100005A40(v5);
}

- (void)userNotificationCenter:(id)center openSettingsForNotification:(id)notification
{
  centerCopy = center;
  notificationCopy = notification;
  selfCopy = self;
  sub_100533750();
}

- (void)userNotificationCenter:(id)center didReceiveNotificationResponse:(id)response withCompletionHandler:(id)handler
{
  v8 = _Block_copy(handler);
  _Block_copy(v8);
  centerCopy = center;
  responseCopy = response;
  selfCopy = self;
  sub_100533E78(responseCopy, selfCopy, v8);
  _Block_release(v8);
  _Block_release(v8);
}

@end