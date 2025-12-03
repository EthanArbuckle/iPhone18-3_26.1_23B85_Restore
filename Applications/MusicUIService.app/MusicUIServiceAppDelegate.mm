@interface MusicUIServiceAppDelegate
- (BOOL)application:(id)application didFinishLaunchingWithOptions:(id)options;
- (MusicUIServiceAppDelegate)init;
- (UIWindow)activeWindow;
- (id)application:(id)application configurationForConnectingSceneSession:(id)session options:(id)options;
- (void)_sceneWillEnterForeground:(id)foreground;
- (void)appEnvironmentWillDisconnect:(id)disconnect;
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

- (BOOL)application:(id)application didFinishLaunchingWithOptions:(id)options
{
  v5 = [MPMediaLibrary defaultMediaLibrary:application];
  [v5 beginGeneratingLibraryChangeNotifications];

  v6 = objc_alloc_init(MusicUIServiceScreenManager);
  screenManager = self->_screenManager;
  self->_screenManager = v6;

  return 1;
}

- (id)application:(id)application configurationForConnectingSceneSession:(id)session options:(id)options
{
  sessionCopy = session;
  configuration = [sessionCopy configuration];
  role = [sessionCopy role];

  LODWORD(sessionCopy) = [role isEqualToString:_UIWindowSceneSessionRoleCarPlay];
  if (sessionCopy)
  {
    [configuration setDelegateClass:objc_opt_class()];
  }

  return configuration;
}

- (void)appEnvironmentWillDisconnect:(id)disconnect
{
  applicationIdentifier = [disconnect applicationIdentifier];
  environments = [(MusicUIServiceAppDelegate *)self environments];
  [environments setObject:0 forKeyedSubscript:applicationIdentifier];
}

- (void)_sceneWillEnterForeground:(id)foreground
{
  object = [foreground object];
  _FBSScene = [object _FBSScene];
  settings = [_FBSScene settings];
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();

  if (isKindOfClass)
  {
    settings2 = [_FBSScene settings];
    proxiedApplicationBundleIdentifier = [settings2 proxiedApplicationBundleIdentifier];
    if (proxiedApplicationBundleIdentifier)
    {
      environments = [(MusicUIServiceAppDelegate *)self environments];
      delegate2 = [environments objectForKeyedSubscript:proxiedApplicationBundleIdentifier];

      if (!delegate2)
      {
        delegate = [object delegate];
        objc_opt_class();
        v13 = objc_opt_isKindOfClass();

        v14 = os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT);
        if ((v13 & 1) == 0)
        {
          if (v14)
          {
            v17 = 138543362;
            v18 = proxiedApplicationBundleIdentifier;
            _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, "No available environment for app %{public}@", &v17, 0xCu);
          }

          goto LABEL_9;
        }

        if (v14)
        {
          v17 = 138543362;
          v18 = proxiedApplicationBundleIdentifier;
          _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, "Assigning environment for app %{public}@", &v17, 0xCu);
        }

        delegate2 = [object delegate];
        environments2 = [(MusicUIServiceAppDelegate *)self environments];
        [environments2 setObject:delegate2 forKeyedSubscript:proxiedApplicationBundleIdentifier];

        [delegate2 setDelegate:self];
      }

      window = [delegate2 window];
      [(MusicUIServiceAppDelegate *)self setActiveWindow:window];
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