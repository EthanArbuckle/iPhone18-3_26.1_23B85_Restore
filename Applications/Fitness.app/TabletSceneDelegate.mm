@interface TabletSceneDelegate
- (void)scene:(id)a3 continueUserActivity:(id)a4;
- (void)scene:(id)a3 openURLContexts:(id)a4;
- (void)scene:(id)a3 willConnectToSession:(id)a4 options:(id)a5;
- (void)sceneDidBecomeActive:(id)a3;
- (void)sceneDidDisconnect:(id)a3;
- (void)sceneDidEnterBackground:(id)a3;
- (void)sceneWillEnterForeground:(id)a3;
- (void)setWindow:(id)a3;
- (void)userNotificationCenter:(id)a3 didReceiveNotificationResponse:(id)a4 withCompletionHandler:(id)a5;
- (void)userNotificationCenter:(id)a3 openSettingsForNotification:(id)a4;
@end

@implementation TabletSceneDelegate

- (void)setWindow:(id)a3
{
  v4 = *(&self->super.super.isa + OBJC_IVAR____TtC10FitnessApp19TabletSceneDelegate_window);
  *(&self->super.super.isa + OBJC_IVAR____TtC10FitnessApp19TabletSceneDelegate_window) = a3;
  v3 = a3;
}

- (void)scene:(id)a3 willConnectToSession:(id)a4 options:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v11 = self;
  sub_1005321C8(v8, v10);
}

- (void)scene:(id)a3 continueUserActivity:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = self;
  sub_1005329E0(v7);
}

- (void)sceneDidDisconnect:(id)a3
{
  sub_100007C5C(*(&self->super.super.isa + OBJC_IVAR____TtC10FitnessApp19TabletSceneDelegate_navigator) + 88, v5);
  sub_1000066AC(v5, v5[3]);
  v4 = self;
  dispatch thunk of MetricSceneLifecycleReporting.reportDidDisconnect()();
  sub_100005A40(v5);
}

- (void)scene:(id)a3 openURLContexts:(id)a4
{
  sub_1000059F8(0, &qword_1008F2028);
  sub_1005342B0();
  v6 = static Set._unconditionallyBridgeFromObjectiveC(_:)();
  v7 = a3;
  v8 = self;
  sub_100532C70(v6);
}

- (void)sceneWillEnterForeground:(id)a3
{
  v4 = a3;
  v5 = self;
  sub_1005331BC();
}

- (void)sceneDidBecomeActive:(id)a3
{
  v4 = a3;
  v5 = self;
  sub_1005335DC();
}

- (void)sceneDidEnterBackground:(id)a3
{
  (*(&self->super.super.isa + OBJC_IVAR____TtC10FitnessApp19TabletSceneDelegate_fitnessAppBadgeAggregator))[OBJC_IVAR___CHFitnessAppBadgeAggregator_isBrowsingSeymour] = 0;
  sub_100007C5C(*(&self->super.super.isa + OBJC_IVAR____TtC10FitnessApp19TabletSceneDelegate_navigator) + 88, v5);
  sub_1000066AC(v5, v5[3]);
  v4 = self;
  dispatch thunk of MetricSceneLifecycleReporting.reportDidEnterBackground()();
  sub_100005A40(v5);
}

- (void)userNotificationCenter:(id)a3 openSettingsForNotification:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = self;
  sub_100533750();
}

- (void)userNotificationCenter:(id)a3 didReceiveNotificationResponse:(id)a4 withCompletionHandler:(id)a5
{
  v8 = _Block_copy(a5);
  _Block_copy(v8);
  v9 = a3;
  v10 = a4;
  v11 = self;
  sub_100533E78(v10, v11, v8);
  _Block_release(v8);
  _Block_release(v8);
}

@end