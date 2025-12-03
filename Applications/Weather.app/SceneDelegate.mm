@interface SceneDelegate
- (void)scene:(id)scene continueUserActivity:(id)activity;
- (void)scene:(id)scene willConnectToSession:(id)session options:(id)options;
- (void)sceneDidBecomeActive:(id)active;
- (void)sceneDidEnterBackground:(id)background;
- (void)sceneWillEnterForeground:(id)foreground;
- (void)sceneWillResignActive:(id)active;
- (void)traitActiveAppearanceDidChangeWithScene:(id)scene previousTraitCollection:(id)collection;
- (void)windowScene:(id)scene didUpdateEffectiveGeometry:(id)geometry;
- (void)windowScene:(id)scene performActionForShortcutItem:(id)item completionHandler:(id)handler;
@end

@implementation SceneDelegate

- (void)scene:(id)scene willConnectToSession:(id)session options:(id)options
{
  sceneCopy = scene;
  sessionCopy = session;
  optionsCopy = options;
  selfCopy = self;
  sub_1000A6290(sceneCopy, selfCopy, optionsCopy);
}

- (void)sceneWillEnterForeground:(id)foreground
{
  foregroundCopy = foreground;
  selfCopy = self;
  sub_1000BEB58(selfCopy, "Scene will enter foreground", &dispatch thunk of SceneStateManagerType.willEnterForeground());
}

- (void)sceneDidBecomeActive:(id)active
{
  activeCopy = active;
  selfCopy = self;
  sub_1003BFB70(activeCopy);
}

- (void)sceneWillResignActive:(id)active
{
  activeCopy = active;
  selfCopy = self;
  sub_1003BFEC4();
}

- (void)scene:(id)scene continueUserActivity:(id)activity
{
  sceneCopy = scene;
  activityCopy = activity;
  selfCopy = self;
  sub_1003BFF80(selfCopy, activityCopy);
}

- (void)windowScene:(id)scene performActionForShortcutItem:(id)item completionHandler:(id)handler
{
  v8 = _Block_copy(handler);
  _Block_copy(v8);
  sceneCopy = scene;
  itemCopy = item;
  selfCopy = self;
  v11.super.isa = itemCopy;
  sub_1003C0120(sceneCopy, v11, selfCopy, v8);
  _Block_release(v8);
}

- (void)sceneDidEnterBackground:(id)background
{
  backgroundCopy = background;
  selfCopy = self;
  sub_1000BEB58(selfCopy, "Scene did enter background", &dispatch thunk of SceneStateManagerType.didEnterBackground());
}

- (void)traitActiveAppearanceDidChangeWithScene:(id)scene previousTraitCollection:(id)collection
{
  sceneCopy = scene;
  collectionCopy = collection;
  selfCopy = self;
  sub_1003BF84C(sceneCopy);
}

- (void)windowScene:(id)scene didUpdateEffectiveGeometry:(id)geometry
{
  sceneCopy = scene;
  geometryCopy = geometry;
  selfCopy = self;
  sub_1003C033C(sceneCopy, geometryCopy);
}

@end