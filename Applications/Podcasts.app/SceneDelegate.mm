@interface SceneDelegate
- (_TtC8Podcasts13SceneDelegate)init;
- (id)stateRestorationActivityForScene:(id)scene;
- (void)scene:(id)scene continueUserActivity:(id)activity;
- (void)scene:(id)scene didFailToContinueUserActivityWithType:(id)type error:(id)error;
- (void)scene:(id)scene openURLContexts:(id)contexts;
- (void)scene:(id)scene restoreInteractionStateWithUserActivity:(id)activity;
- (void)scene:(id)scene willConnectToSession:(id)session options:(id)options;
- (void)scene:(id)scene willContinueUserActivityWithType:(id)type;
- (void)windowScene:(id)scene performActionForShortcutItem:(id)item completionHandler:(id)handler;
@end

@implementation SceneDelegate

- (_TtC8Podcasts13SceneDelegate)init
{
  v3.receiver = self;
  v3.super_class = type metadata accessor for SceneDelegate();
  return [(SceneDelegate *)&v3 init];
}

- (void)scene:(id)scene willConnectToSession:(id)session options:(id)options
{
  sceneCopy = scene;
  sessionCopy = session;
  optionsCopy = options;
  selfCopy = self;
  sub_10001CA54(sceneCopy, optionsCopy);
}

- (void)scene:(id)scene restoreInteractionStateWithUserActivity:(id)activity
{
  sceneCopy = scene;
  activityCopy = activity;
  selfCopy = self;
  [sceneCopy setUserActivity:activityCopy];
  sub_10003B728(activityCopy);
}

- (void)scene:(id)scene openURLContexts:(id)contexts
{
  sub_100009F1C(0, &qword_10057A278);
  sub_100031980(&qword_10057A280, &qword_10057A278);
  v6 = static Set._unconditionallyBridgeFromObjectiveC(_:)();
  sceneCopy = scene;
  selfCopy = self;
  sub_100270DF4(v6);
}

- (void)scene:(id)scene continueUserActivity:(id)activity
{
  sceneCopy = scene;
  activityCopy = activity;
  selfCopy = self;
  sub_10003B728(activityCopy);
}

- (void)scene:(id)scene willContinueUserActivityWithType:(id)type
{
  v6 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v8 = v7;
  sceneCopy = scene;
  selfCopy = self;
  sub_1002715E8(v6, v8);
}

- (void)scene:(id)scene didFailToContinueUserActivityWithType:(id)type error:(id)error
{
  v8 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v10 = v9;
  sceneCopy = scene;
  errorCopy = error;
  selfCopy = self;
  sub_1002717D8(v8, v10);
}

- (void)windowScene:(id)scene performActionForShortcutItem:(id)item completionHandler:(id)handler
{
  v8 = _Block_copy(handler);
  _Block_copy(v8);
  sceneCopy = scene;
  itemCopy = item;
  selfCopy = self;
  sub_1002719DC(itemCopy, v8);
  _Block_release(v8);
  _Block_release(v8);
}

- (id)stateRestorationActivityForScene:(id)scene
{
  v4 = objc_opt_self();
  sceneCopy = scene;
  sharedApplication = [v4 sharedApplication];
  [sharedApplication ignoreSnapshotOnNextApplicationLaunch];

  userActivity = [sceneCopy userActivity];

  return userActivity;
}

@end