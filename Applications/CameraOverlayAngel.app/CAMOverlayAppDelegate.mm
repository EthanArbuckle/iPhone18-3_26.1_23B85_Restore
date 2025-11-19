@interface CAMOverlayAppDelegate
- (BOOL)application:(id)a3 didFinishLaunchingWithOptions:(id)a4;
- (id)application:(id)a3 configurationForConnectingSceneSession:(id)a4 options:(id)a5;
@end

@implementation CAMOverlayAppDelegate

- (BOOL)application:(id)a3 didFinishLaunchingWithOptions:(id)a4
{
  v4 = os_log_create("com.apple.camera.overlay", "Angel");
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    *v6 = 0;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "CameraOverlayAngel launched.", v6, 2u);
  }

  return 1;
}

- (id)application:(id)a3 configurationForConnectingSceneSession:(id)a4 options:(id)a5
{
  v5 = a4;
  v6 = [UISceneConfiguration alloc];
  v7 = [v5 role];

  v8 = [v6 initWithName:@"SBSUICameraOverlay Configuration" sessionRole:v7];

  return v8;
}

@end