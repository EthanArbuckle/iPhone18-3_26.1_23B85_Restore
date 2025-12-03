@interface AmbientSceneDelegate
- (UIWindow)window;
- (id)sceneDidDisconnectBlock;
- (void)scene:(id)scene willConnectToSession:(id)session options:(id)options;
- (void)sceneDidBecomeActive:(id)active;
- (void)sceneDidDisconnect:(id)disconnect;
- (void)sceneWillResignActive:(id)active;
- (void)setSceneDidDisconnectBlock:(id)block;
- (void)setWindow:(id)window;
@end

@implementation AmbientSceneDelegate

- (UIWindow)window
{
  v2 = sub_1001D6020();

  return v2;
}

- (void)setWindow:(id)window
{
  windowCopy = window;
  selfCopy = self;
  sub_1001D60AC(window);
}

- (id)sceneDidDisconnectBlock
{
  v2 = sub_1001D6168();
  if (v2)
  {
    v6[4] = v2;
    v6[5] = v3;
    v6[0] = _NSConcreteStackBlock;
    v6[1] = 1107296256;
    v6[2] = sub_10002E570;
    v6[3] = &unk_10035EA20;
    v4 = _Block_copy(v6);
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (void)setSceneDidDisconnectBlock:(id)block
{
  v4 = _Block_copy(block);
  if (v4)
  {
    v5 = swift_allocObject();
    *(v5 + 16) = v4;
    v4 = sub_1001541E8;
  }

  else
  {
    v5 = 0;
  }

  selfCopy = self;
  sub_1001D6250(v4, v5);
}

- (void)scene:(id)scene willConnectToSession:(id)session options:(id)options
{
  sceneCopy = scene;
  sessionCopy = session;
  optionsCopy = options;
  selfCopy = self;
  sub_1001D6270(sceneCopy);
}

- (void)sceneDidDisconnect:(id)disconnect
{
  disconnectCopy = disconnect;
  selfCopy = self;
  sub_1001D697C();
}

- (void)sceneDidBecomeActive:(id)active
{
  activeCopy = active;
  selfCopy = self;
  sub_1001D6B48(selfCopy, 1);
}

- (void)sceneWillResignActive:(id)active
{
  activeCopy = active;
  selfCopy = self;
  sub_1001D6B48(selfCopy, 0);
}

@end