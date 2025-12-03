@interface CARTemplateUIWindowSceneDelegate
- (void)scene:(id)scene willConnectToSession:(id)session options:(id)options;
@end

@implementation CARTemplateUIWindowSceneDelegate

- (void)scene:(id)scene willConnectToSession:(id)session options:(id)options
{
  optionsCopy = options;
  sceneCopy = scene;
  v8 = +[UIApplication sharedApplication];
  [v8 didConnectScene:sceneCopy options:optionsCopy];
}

@end