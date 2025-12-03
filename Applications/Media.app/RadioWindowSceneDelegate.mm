@interface RadioWindowSceneDelegate
- (_TtC5Media24RadioWindowSceneDelegate)init;
- (void)_performActionsForUIScene:(id)scene withUpdatedFBSScene:(id)sScene settingsDiff:(id)diff fromSettings:(id)settings transitionContext:(id)context lifecycleActionType:(unsigned int)type;
- (void)scene:(id)scene openURLContexts:(id)contexts;
- (void)scene:(id)scene willConnectToSession:(id)session options:(id)options;
- (void)sceneWillEnterForeground:(id)foreground;
@end

@implementation RadioWindowSceneDelegate

- (void)scene:(id)scene willConnectToSession:(id)session options:(id)options
{
  sceneCopy = scene;
  sessionCopy = session;
  optionsCopy = options;
  selfCopy = self;
  sub_10004B4B8(sceneCopy, sessionCopy);
}

- (void)sceneWillEnterForeground:(id)foreground
{
  foregroundCopy = foreground;
  selfCopy = self;
  sub_10004B7DC(foregroundCopy);
}

- (void)scene:(id)scene openURLContexts:(id)contexts
{
  sub_100005A50(0, &qword_1000ECF40, UIOpenURLContext_ptr);
  sub_10004BC80();
  v6 = static Set._unconditionallyBridgeFromObjectiveC(_:)();
  sceneCopy = scene;
  selfCopy = self;
  sub_10004B910(v6);
}

- (_TtC5Media24RadioWindowSceneDelegate)init
{
  v3.receiver = self;
  v3.super_class = type metadata accessor for RadioWindowSceneDelegate();
  return [(RadioWindowSceneDelegate *)&v3 init];
}

- (void)_performActionsForUIScene:(id)scene withUpdatedFBSScene:(id)sScene settingsDiff:(id)diff fromSettings:(id)settings transitionContext:(id)context lifecycleActionType:(unsigned int)type
{
  sceneCopy = scene;
  sSceneCopy = sScene;
  diffCopy = diff;
  settingsCopy = settings;
  contextCopy = context;
  selfCopy = self;
  sub_10004BB24(scene, sScene);
}

@end