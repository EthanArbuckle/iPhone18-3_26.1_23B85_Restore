@interface SceneDelegate
- (_TtC8Podcasts13SceneDelegate)init;
- (id)stateRestorationActivityForScene:(id)a3;
- (void)scene:(id)a3 continueUserActivity:(id)a4;
- (void)scene:(id)a3 didFailToContinueUserActivityWithType:(id)a4 error:(id)a5;
- (void)scene:(id)a3 openURLContexts:(id)a4;
- (void)scene:(id)a3 restoreInteractionStateWithUserActivity:(id)a4;
- (void)scene:(id)a3 willConnectToSession:(id)a4 options:(id)a5;
- (void)scene:(id)a3 willContinueUserActivityWithType:(id)a4;
- (void)windowScene:(id)a3 performActionForShortcutItem:(id)a4 completionHandler:(id)a5;
@end

@implementation SceneDelegate

- (_TtC8Podcasts13SceneDelegate)init
{
  v3.receiver = self;
  v3.super_class = type metadata accessor for SceneDelegate();
  return [(SceneDelegate *)&v3 init];
}

- (void)scene:(id)a3 willConnectToSession:(id)a4 options:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v11 = self;
  sub_10001CA54(v8, v10);
}

- (void)scene:(id)a3 restoreInteractionStateWithUserActivity:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = self;
  [v6 setUserActivity:v7];
  sub_10003B728(v7);
}

- (void)scene:(id)a3 openURLContexts:(id)a4
{
  sub_100009F1C(0, &qword_10057A278);
  sub_100031980(&qword_10057A280, &qword_10057A278);
  v6 = static Set._unconditionallyBridgeFromObjectiveC(_:)();
  v7 = a3;
  v8 = self;
  sub_100270DF4(v6);
}

- (void)scene:(id)a3 continueUserActivity:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = self;
  sub_10003B728(v7);
}

- (void)scene:(id)a3 willContinueUserActivityWithType:(id)a4
{
  v6 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v8 = v7;
  v9 = a3;
  v10 = self;
  sub_1002715E8(v6, v8);
}

- (void)scene:(id)a3 didFailToContinueUserActivityWithType:(id)a4 error:(id)a5
{
  v8 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v10 = v9;
  v11 = a3;
  v13 = a5;
  v12 = self;
  sub_1002717D8(v8, v10);
}

- (void)windowScene:(id)a3 performActionForShortcutItem:(id)a4 completionHandler:(id)a5
{
  v8 = _Block_copy(a5);
  _Block_copy(v8);
  v9 = a3;
  v10 = a4;
  v11 = self;
  sub_1002719DC(v10, v8);
  _Block_release(v8);
  _Block_release(v8);
}

- (id)stateRestorationActivityForScene:(id)a3
{
  v4 = objc_opt_self();
  v5 = a3;
  v6 = [v4 sharedApplication];
  [v6 ignoreSnapshotOnNextApplicationLaunch];

  v7 = [v5 userActivity];

  return v7;
}

@end