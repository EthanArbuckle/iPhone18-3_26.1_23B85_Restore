@interface CAMOverlayAppDelegate
- (BOOL)application:(id)application didFinishLaunchingWithOptions:(id)options;
- (id)application:(id)application configurationForConnectingSceneSession:(id)session options:(id)options;
@end

@implementation CAMOverlayAppDelegate

- (BOOL)application:(id)application didFinishLaunchingWithOptions:(id)options
{
  v4 = os_log_create("com.apple.camera.overlay", "Angel");
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    *v6 = 0;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "CameraOverlayAngel launched.", v6, 2u);
  }

  return 1;
}

- (id)application:(id)application configurationForConnectingSceneSession:(id)session options:(id)options
{
  sessionCopy = session;
  v6 = [UISceneConfiguration alloc];
  role = [sessionCopy role];

  v8 = [v6 initWithName:@"SBSUICameraOverlay Configuration" sessionRole:role];

  return v8;
}

@end