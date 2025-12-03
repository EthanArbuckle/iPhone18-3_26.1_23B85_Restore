@interface HNDSceneDelegate
- (HNDSceneDelegate)init;
- (void)scene:(id)scene willConnectToSession:(id)session options:(id)options;
- (void)sceneDidDisconnect:(id)disconnect;
@end

@implementation HNDSceneDelegate

- (void)scene:(id)scene willConnectToSession:(id)session options:(id)options
{
  sceneCopy = scene;
  sessionCopy = session;
  optionsCopy = options;
  selfCopy = self;
  sub_1000FEDA4(sceneCopy);
}

- (void)sceneDidDisconnect:(id)disconnect
{
  v4 = objc_opt_self();
  disconnectCopy = disconnect;
  sharedManager = [v4 sharedManager];
  if (sharedManager)
  {
    v6 = sharedManager;
    [sharedManager sceneDidDisconnect:disconnectCopy];
  }

  else
  {
    __break(1u);
  }
}

- (HNDSceneDelegate)init
{
  *(&self->super.super.isa + OBJC_IVAR___HNDSceneDelegate_window) = 0;
  *(&self->super.super.isa + OBJC_IVAR___HNDSceneDelegate_ignoredWindow) = 0;
  *(&self->super.super.isa + OBJC_IVAR___HNDSceneDelegate_trackpadWindow) = 0;
  v3.receiver = self;
  v3.super_class = type metadata accessor for SceneDelegate();
  return [(HNDSceneDelegate *)&v3 init];
}

@end