@interface AppDelegate
- (AppDelegate)init;
- (BOOL)application:(id)application didFinishLaunchingWithOptions:(id)options;
- (id)application:(id)application configurationForConnectingSceneSession:(id)session options:(id)options;
@end

@implementation AppDelegate

- (AppDelegate)init
{
  v6.receiver = self;
  v6.super_class = AppDelegate;
  v2 = [(AppDelegate *)&v6 init];
  if (v2)
  {
    v3 = objc_opt_new();
    sceneManager = v2->_sceneManager;
    v2->_sceneManager = v3;
  }

  return v2;
}

- (BOOL)application:(id)application didFinishLaunchingWithOptions:(id)options
{
  v5 = [(AppDelegate *)self sceneManager:application];
  [v5 createInitialAppScene];

  sceneManager = [(AppDelegate *)self sceneManager];
  [sceneManager createInputUIScene];

  v7 = [_UIKeyboardArbiterHost launchAdvisorWithOmniscientDelegate:0 sceneDelegate:self];
  BKSHIDServicesSetHIDUILockedState();
  return 1;
}

- (id)application:(id)application configurationForConnectingSceneSession:(id)session options:(id)options
{
  sessionCopy = session;
  v6 = sub_100012608();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    v10 = 136446210;
    v11 = "[AppDelegate application:configurationForConnectingSceneSession:options:]";
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "%{public}s: (#function): (connectingSceneSession)", &v10, 0xCu);
  }

  role = [sessionCopy role];

  if ([role isEqualToString:UIWindowSceneSessionRoleApplication])
  {
    v8 = [[UISceneConfiguration alloc] initWithName:@"dre-main-view" sessionRole:role];
    [v8 setSceneClass:objc_opt_class()];
    [v8 setDelegateClass:objc_opt_class()];
  }

  else
  {
    v8 = objc_opt_new();
  }

  return v8;
}

@end