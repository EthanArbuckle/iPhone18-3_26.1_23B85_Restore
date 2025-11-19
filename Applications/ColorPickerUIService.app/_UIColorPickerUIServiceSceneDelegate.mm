@interface _UIColorPickerUIServiceSceneDelegate
- (void)scene:(id)a3 willConnectToSession:(id)a4 options:(id)a5;
@end

@implementation _UIColorPickerUIServiceSceneDelegate

- (void)scene:(id)a3 willConnectToSession:(id)a4 options:(id)a5
{
  v6 = a3;
  v7 = [[_UIColorPickerUIServiceSecureWindow alloc] initWithWindowScene:v6];

  [(_UIColorPickerUIServiceSceneDelegate *)self setWindow:v7];
  v13 = objc_alloc_init(_UIColorPickerUIServiceViewController);
  v8 = [(_UIColorPickerUIServiceSceneDelegate *)self window];
  [v8 setRootViewController:v13];

  v9 = [(_UIColorPickerUIServiceSceneDelegate *)self window];
  [v9 makeKeyAndVisible];

  v10 = [(_UIColorPickerUIServiceSceneDelegate *)self window];
  v11 = [v10 _rootPresentationController];

  v12 = objc_opt_new();
  [v12 setFlexible:0];
  [v11 _setNonLargeBackground:v12];
}

@end