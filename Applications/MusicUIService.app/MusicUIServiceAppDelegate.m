@interface MusicUIServiceAppDelegate
- (BOOL)application:(id)a3 didFinishLaunchingWithOptions:(id)a4;
- (MusicUIServiceAppDelegate)init;
- (UIWindow)activeWindow;
- (id)application:(id)a3 configurationForConnectingSceneSession:(id)a4 options:(id)a5;
- (void)_sceneWillEnterForeground:(id)a3;
- (void)appEnvironmentWillDisconnect:(id)a3;
@end

@implementation MusicUIServiceAppDelegate

- (MusicUIServiceAppDelegate)init
{
  v7.receiver = self;
  v7.super_class = MusicUIServiceAppDelegate;
  v2 = [(MusicUIServiceAppDelegate *)&v7 init];
  if (v2)
  {
    v3 = objc_opt_new();
    environments = v2->_environments;
    v2->_environments = v3;

    v5 = +[NSNotificationCenter defaultCenter];
    [v5 addObserver:v2 selector:"_sceneWillEnterForeground:" name:UISceneWillEnterForegroundNotification object:0];
  }

  return v2;
}

- (BOOL)application:(id)a3 didFinishLaunchingWithOptions:(id)a4
{
  v5 = [MPMediaLibrary defaultMediaLibrary:a3];
  [v5 beginGeneratingLibraryChangeNotifications];

  v6 = objc_alloc_init(MusicUIServiceScreenManager);
  screenManager = self->_screenManager;
  self->_screenManager = v6;

  return 1;
}

- (id)application:(id)a3 configurationForConnectingSceneSession:(id)a4 options:(id)a5
{
  v5 = a4;
  v6 = [v5 configuration];
  v7 = [v5 role];

  LODWORD(v5) = [v7 isEqualToString:_UIWindowSceneSessionRoleCarPlay];
  if (v5)
  {
    [v6 setDelegateClass:objc_opt_class()];
  }

  return v6;
}

- (void)appEnvironmentWillDisconnect:(id)a3
{
  v5 = [a3 applicationIdentifier];
  v4 = [(MusicUIServiceAppDelegate *)self environments];
  [v4 setObject:0 forKeyedSubscript:v5];
}

- (void)_sceneWillEnterForeground:(id)a3
{
  v4 = [a3 object];
  v5 = [v4 _FBSScene];
  v6 = [v5 settings];
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();

  if (isKindOfClass)
  {
    v8 = [v5 settings];
    v9 = [v8 proxiedApplicationBundleIdentifier];
    if (v9)
    {
      v10 = [(MusicUIServiceAppDelegate *)self environments];
      v11 = [v10 objectForKeyedSubscript:v9];

      if (!v11)
      {
        v12 = [v4 delegate];
        objc_opt_class();
        v13 = objc_opt_isKindOfClass();

        v14 = os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT);
        if ((v13 & 1) == 0)
        {
          if (v14)
          {
            v17 = 138543362;
            v18 = v9;
            _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, "No available environment for app %{public}@", &v17, 0xCu);
          }

          goto LABEL_9;
        }

        if (v14)
        {
          v17 = 138543362;
          v18 = v9;
          _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, "Assigning environment for app %{public}@", &v17, 0xCu);
        }

        v11 = [v4 delegate];
        v15 = [(MusicUIServiceAppDelegate *)self environments];
        [v15 setObject:v11 forKeyedSubscript:v9];

        [v11 setDelegate:self];
      }

      v16 = [v11 window];
      [(MusicUIServiceAppDelegate *)self setActiveWindow:v16];
    }

LABEL_9:
  }
}

- (UIWindow)activeWindow
{
  WeakRetained = objc_loadWeakRetained(&self->_activeWindow);

  return WeakRetained;
}

@end