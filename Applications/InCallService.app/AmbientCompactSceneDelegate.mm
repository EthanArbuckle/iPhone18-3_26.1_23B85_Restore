@interface AmbientCompactSceneDelegate
- (UIWindow)window;
- (void)scene:(id)scene willConnectToSession:(id)session options:(id)options;
- (void)setWindow:(id)window;
@end

@implementation AmbientCompactSceneDelegate

- (UIWindow)window
{
  v2 = sub_1002047E8();

  return v2;
}

- (void)setWindow:(id)window
{
  windowCopy = window;
  selfCopy = self;
  sub_100204874(window);
}

- (void)scene:(id)scene willConnectToSession:(id)session options:(id)options
{
  sceneCopy = scene;
  sessionCopy = session;
  optionsCopy = options;
  selfCopy = self;
  sub_100204888(sceneCopy);
}

@end