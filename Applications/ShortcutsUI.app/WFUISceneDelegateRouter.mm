@interface WFUISceneDelegateRouter
- (WFUISceneDelegateRouter)init;
- (void)scene:(id)scene willConnectToSession:(id)session options:(id)options;
- (void)sceneDidDisconnect:(id)disconnect;
- (void)sceneDidEnterBackground:(id)background;
@end

@implementation WFUISceneDelegateRouter

- (void)sceneDidEnterBackground:(id)background
{
  backgroundCopy = background;
  forwardingTarget = [(WFUISceneDelegateRouter *)self forwardingTarget];
  [forwardingTarget sceneDidEnterBackground:backgroundCopy];
}

- (void)sceneDidDisconnect:(id)disconnect
{
  disconnectCopy = disconnect;
  forwardingTarget = [(WFUISceneDelegateRouter *)self forwardingTarget];
  [forwardingTarget sceneDidDisconnect:disconnectCopy];
}

- (void)scene:(id)scene willConnectToSession:(id)session options:(id)options
{
  optionsCopy = options;
  sessionCopy = session;
  sceneCopy = scene;
  forwardingTarget = [(WFUISceneDelegateRouter *)self forwardingTarget];
  [forwardingTarget scene:sceneCopy willConnectToSession:sessionCopy options:optionsCopy];
}

- (WFUISceneDelegateRouter)init
{
  v7.receiver = self;
  v7.super_class = WFUISceneDelegateRouter;
  v2 = [(WFUISceneDelegateRouter *)&v7 init];
  if (v2)
  {
    v3 = +[WFAngelSceneManager sharedManager];
    forwardingTarget = v2->_forwardingTarget;
    v2->_forwardingTarget = v3;

    v5 = v2;
  }

  return v2;
}

@end