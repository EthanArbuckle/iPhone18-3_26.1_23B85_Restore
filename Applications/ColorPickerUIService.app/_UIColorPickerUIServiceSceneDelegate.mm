@interface _UIColorPickerUIServiceSceneDelegate
- (void)scene:(id)scene willConnectToSession:(id)session options:(id)options;
@end

@implementation _UIColorPickerUIServiceSceneDelegate

- (void)scene:(id)scene willConnectToSession:(id)session options:(id)options
{
  sceneCopy = scene;
  v7 = [[_UIColorPickerUIServiceSecureWindow alloc] initWithWindowScene:sceneCopy];

  [(_UIColorPickerUIServiceSceneDelegate *)self setWindow:v7];
  v13 = objc_alloc_init(_UIColorPickerUIServiceViewController);
  window = [(_UIColorPickerUIServiceSceneDelegate *)self window];
  [window setRootViewController:v13];

  window2 = [(_UIColorPickerUIServiceSceneDelegate *)self window];
  [window2 makeKeyAndVisible];

  window3 = [(_UIColorPickerUIServiceSceneDelegate *)self window];
  _rootPresentationController = [window3 _rootPresentationController];

  v12 = objc_opt_new();
  [v12 setFlexible:0];
  [_rootPresentationController _setNonLargeBackground:v12];
}

@end