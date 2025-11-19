@interface AppDelegate
- (AppDelegate)init;
- (BOOL)application:(id)a3 didFinishLaunchingWithOptions:(id)a4;
- (id)application:(id)a3 configurationForConnectingSceneSession:(id)a4 options:(id)a5;
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

- (BOOL)application:(id)a3 didFinishLaunchingWithOptions:(id)a4
{
  v5 = [(AppDelegate *)self sceneManager:a3];
  [v5 createInitialAppScene];

  v6 = [(AppDelegate *)self sceneManager];
  [v6 createInputUIScene];

  v7 = [_UIKeyboardArbiterHost launchAdvisorWithOmniscientDelegate:0 sceneDelegate:self];
  BKSHIDServicesSetHIDUILockedState();
  return 1;
}

- (id)application:(id)a3 configurationForConnectingSceneSession:(id)a4 options:(id)a5
{
  v5 = a4;
  v6 = sub_100012608();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    v10 = 136446210;
    v11 = "[AppDelegate application:configurationForConnectingSceneSession:options:]";
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "%{public}s: (#function): (connectingSceneSession)", &v10, 0xCu);
  }

  v7 = [v5 role];

  if ([v7 isEqualToString:UIWindowSceneSessionRoleApplication])
  {
    v8 = [[UISceneConfiguration alloc] initWithName:@"dre-main-view" sessionRole:v7];
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