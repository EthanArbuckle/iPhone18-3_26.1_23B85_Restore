@interface ClarityUISceneDelegate
- (UIWindow)window;
- (void)scene:(id)scene willConnectToSession:(id)session options:(id)options;
- (void)setWindow:(id)window;
@end

@implementation ClarityUISceneDelegate

- (UIWindow)window
{
  v2 = sub_10017B6EC();

  return v2;
}

- (void)setWindow:(id)window
{
  windowCopy = window;
  selfCopy = self;
  sub_10017B778(window);
}

- (void)scene:(id)scene willConnectToSession:(id)session options:(id)options
{
  sceneCopy = scene;
  sessionCopy = session;
  optionsCopy = options;
  selfCopy = self;
  sub_10017B78C(sceneCopy);
}

@end