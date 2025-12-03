@interface MusicAngel.Server.SceneDelegate
- (UIWindow)window;
- (void)scene:(id)scene willConnectToSession:(id)session options:(id)options;
- (void)setWindow:(id)window;
@end

@implementation MusicAngel.Server.SceneDelegate

- (UIWindow)window
{
  v2 = sub_100011E34();

  return v2;
}

- (void)setWindow:(id)window
{
  windowCopy = window;
  selfCopy = self;
  sub_100011EC0(window);
}

- (void)scene:(id)scene willConnectToSession:(id)session options:(id)options
{
  sceneCopy = scene;
  sessionCopy = session;
  optionsCopy = options;
  selfCopy = self;
  sub_100011ED4(sceneCopy, selfCopy, optionsCopy);
}

@end