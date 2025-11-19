@interface WFUISceneDelegateRouter
- (WFUISceneDelegateRouter)init;
- (void)scene:(id)a3 willConnectToSession:(id)a4 options:(id)a5;
- (void)sceneDidDisconnect:(id)a3;
- (void)sceneDidEnterBackground:(id)a3;
@end

@implementation WFUISceneDelegateRouter

- (void)sceneDidEnterBackground:(id)a3
{
  v4 = a3;
  v5 = [(WFUISceneDelegateRouter *)self forwardingTarget];
  [v5 sceneDidEnterBackground:v4];
}

- (void)sceneDidDisconnect:(id)a3
{
  v4 = a3;
  v5 = [(WFUISceneDelegateRouter *)self forwardingTarget];
  [v5 sceneDidDisconnect:v4];
}

- (void)scene:(id)a3 willConnectToSession:(id)a4 options:(id)a5
{
  v8 = a5;
  v9 = a4;
  v10 = a3;
  v11 = [(WFUISceneDelegateRouter *)self forwardingTarget];
  [v11 scene:v10 willConnectToSession:v9 options:v8];
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