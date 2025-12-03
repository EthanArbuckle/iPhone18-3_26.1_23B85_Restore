@interface TTRIWindowSceneController
- (id)stateRestorationActivityForScene:(id)scene;
- (void)scene:(id)scene continueUserActivity:(id)activity;
- (void)scene:(id)scene openURLContexts:(id)contexts;
- (void)scene:(id)scene willConnectToSession:(id)session options:(id)options;
- (void)scene:(id)scene willContinueUserActivityWithType:(id)type;
- (void)sceneDidBecomeActive:(id)active;
- (void)sceneDidDisconnect:(id)disconnect;
- (void)sceneDidEnterBackground:(id)background;
- (void)sceneWillEnterForeground:(id)foreground;
- (void)sceneWillResignActive:(id)active;
- (void)windowScene:(id)scene performActionForShortcutItem:(id)item completionHandler:(id)handler;
- (void)windowScene:(id)scene userDidAcceptCloudKitShareWithMetadata:(id)metadata;
@end

@implementation TTRIWindowSceneController

- (void)scene:(id)scene willConnectToSession:(id)session options:(id)options
{
  sceneCopy = scene;
  sessionCopy = session;
  optionsCopy = options;
  selfCopy = self;
  sub_100004E18(sceneCopy, sessionCopy, optionsCopy);
}

- (void)sceneWillEnterForeground:(id)foreground
{
  foregroundCopy = foreground;
  selfCopy = self;
  sub_100007F3C(foregroundCopy);
}

- (void)sceneDidBecomeActive:(id)active
{
  activeCopy = active;
  selfCopy = self;
  sub_10001CDA4(activeCopy);
}

- (void)sceneDidDisconnect:(id)disconnect
{
  disconnectCopy = disconnect;
  selfCopy = self;
  sub_10060DCAC(disconnectCopy);
}

- (void)sceneWillResignActive:(id)active
{
  activeCopy = active;
  selfCopy = self;
  sub_10060E0CC(activeCopy);
}

- (void)sceneDidEnterBackground:(id)background
{
  backgroundCopy = background;
  selfCopy = self;
  sub_10060E344(backgroundCopy);
}

- (id)stateRestorationActivityForScene:(id)scene
{
  sceneCopy = scene;
  selfCopy = self;
  v6 = sub_10060E930(sceneCopy);

  return v6;
}

- (void)scene:(id)scene willContinueUserActivityWithType:(id)type
{
  v6 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v8 = v7;
  sceneCopy = scene;
  selfCopy = self;
  sub_10060F664(sceneCopy, v6, v8);
}

- (void)scene:(id)scene continueUserActivity:(id)activity
{
  sceneCopy = scene;
  activityCopy = activity;
  selfCopy = self;
  sub_10060ED80(sceneCopy, activityCopy);
}

- (void)scene:(id)scene openURLContexts:(id)contexts
{
  sub_100003540(0, &qword_10078E0E8);
  sub_10000CF18(&qword_100792FC0, &qword_10078E0E8);
  v6 = static Set._unconditionallyBridgeFromObjectiveC(_:)();
  sceneCopy = scene;
  selfCopy = self;
  sub_10060F0D8(sceneCopy, v6);
}

- (void)windowScene:(id)scene performActionForShortcutItem:(id)item completionHandler:(id)handler
{
  v7 = _Block_copy(handler);
  itemCopy = item;
  selfCopy = self;
  v10 = sub_100608F88(itemCopy);
  (v7)[2](v7, v10);

  _Block_release(v7);
}

- (void)windowScene:(id)scene userDidAcceptCloudKitShareWithMetadata:(id)metadata
{
  sceneCopy = scene;
  metadataCopy = metadata;
  selfCopy = self;
  sub_10060F85C(metadataCopy);
}

@end