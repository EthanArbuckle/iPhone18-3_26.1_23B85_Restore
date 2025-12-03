@interface MRAppDelegateiOS
- (BOOL)application:(id)application didFinishLaunchingWithOptions:(id)options;
- (void)setViewController:(id)controller;
@end

@implementation MRAppDelegateiOS

- (BOOL)application:(id)application didFinishLaunchingWithOptions:(id)options
{
  applicationCopy = application;
  sub_100003250(v19, 1, 1);
  v6 = [UIWindow alloc];
  v7 = +[UIScreen mainScreen];
  [v7 bounds];
  v8 = [v6 initWithFrame:?];
  v9 = *(&self->super._shouldCreateViewController + 1);
  *(&self->super._shouldCreateViewController + 1) = v8;

  DeviceRGB = CGColorSpaceCreateDeviceRGB();
  v18[0] = xmmword_100005600;
  v18[1] = unk_100005610;
  v11 = CGColorCreate(DeviceRGB, v18);
  v12 = [UIView alloc];
  [*(&self->super._shouldCreateViewController + 1) bounds];
  v13 = [v12 initWithFrame:?];
  layer = [v13 layer];
  [layer setBackgroundColor:v11];

  CGColorRelease(v11);
  CGColorSpaceRelease(DeviceRGB);
  [applicationCopy setIdleTimerDisabled:1];
  [applicationCopy setIdleTimerDisabled:1];
  v15 = objc_alloc_init(UIViewController);
  v16 = *(&self->_window + 1);
  *(&self->_window + 1) = v15;

  [*(&self->_window + 1) setView:v13];
  [*(&self->super._shouldCreateViewController + 1) setRootViewController:*(&self->_window + 1)];
  [*(&self->super._shouldCreateViewController + 1) makeKeyAndVisible];

  sub_10000331C(v19);
  [(MRAppDelegate *)self startupAndCreateViewController:1];

  return 1;
}

- (void)setViewController:(id)controller
{
  controllerCopy = controller;
  sub_100003250(v5, 1, 1);
  if (controllerCopy)
  {
    [*(&self->super._shouldCreateViewController + 1) setRootViewController:controllerCopy];
  }

  else
  {
    [*(&self->super._shouldCreateViewController + 1) setRootViewController:*(&self->_window + 1)];
  }

  sub_10000331C(v5);
}

@end