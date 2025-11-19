@interface CARTemplateUIWindowSceneDelegate
- (void)scene:(id)a3 willConnectToSession:(id)a4 options:(id)a5;
@end

@implementation CARTemplateUIWindowSceneDelegate

- (void)scene:(id)a3 willConnectToSession:(id)a4 options:(id)a5
{
  v6 = a5;
  v7 = a3;
  v8 = +[UIApplication sharedApplication];
  [v8 didConnectScene:v7 options:v6];
}

@end