@interface SRAppDelegate
- (BOOL)application:(id)application didFinishLaunchingWithOptions:(id)options;
- (SRApplicationDataSource)dataSource;
- (id)application:(id)application configurationForConnectingSceneSession:(id)session options:(id)options;
- (void)_invalidateTrialManager;
- (void)_updateDeferral;
- (void)_verifyAndSyncTrialExperiments;
- (void)_windowDidCreateContext:(id)context;
- (void)_windowWillDestroyContext:(id)context;
- (void)didBecomeActiveHandler;
- (void)invalidateKeyboardWindowIfNeeded;
- (void)setUpViews;
- (void)tearDownViews;
- (void)userNotificationCenter:(id)center willPresentNotification:(id)notification withCompletionHandler:(id)handler;
- (void)willEnterForegroundHandler;
- (void)willResignActiveHandler;
@end

@implementation SRAppDelegate

- (void)_updateDeferral
{
  objc_initWeak(&location, self);
  _FBSScene = [(UIScene *)self->_currentScene _FBSScene];
  v4[0] = _NSConcreteStackBlock;
  v4[1] = 3221225472;
  v4[2] = sub_100004004;
  v4[3] = &unk_100168D90;
  objc_copyWeak(&v5, &location);
  [_FBSScene updateClientSettingsWithBlock:v4];

  objc_destroyWeak(&v5);
  objc_destroyWeak(&location);
}

- (void)invalidateKeyboardWindowIfNeeded
{
  v3 = +[UIKeyboard activeKeyboard];
  window = [v3 window];
  v5 = NSClassFromString(@"UIRemoteKeyboardWindow");
  if (window)
  {
    v6 = 1;
  }

  else
  {
    v6 = v5 == 0;
  }

  if (!v6)
  {
    [UIWindow allWindowsIncludingInternalWindows:1 onlyVisibleWindows:0];
    v15 = 0u;
    v16 = 0u;
    v17 = 0u;
    v7 = v18 = 0u;
    window = [v7 countByEnumeratingWithState:&v15 objects:v25 count:16];
    if (window)
    {
      v8 = *v16;
      while (2)
      {
        for (i = 0; i != window; i = i + 1)
        {
          if (*v16 != v8)
          {
            objc_enumerationMutation(v7);
          }

          v10 = *(*(&v15 + 1) + 8 * i);
          if (objc_opt_isKindOfClass())
          {
            window = v10;
            goto LABEL_15;
          }
        }

        window = [v7 countByEnumeratingWithState:&v15 objects:v25 count:16];
        if (window)
        {
          continue;
        }

        break;
      }
    }

LABEL_15:
  }

  _windowInterfaceOrientation = [window _windowInterfaceOrientation];
  appWindow = [(SRAppDelegate *)self appWindow];
  _windowInterfaceOrientation2 = [appWindow _windowInterfaceOrientation];

  if (window && (objc_opt_respondsToSelector() & 1) != 0 && _windowInterfaceOrientation != _windowInterfaceOrientation2)
  {
    v14 = AFSiriLogContextConnection;
    if (os_log_type_enabled(AFSiriLogContextConnection, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136315650;
      v20 = "[SRAppDelegate invalidateKeyboardWindowIfNeeded]";
      v21 = 2048;
      v22 = _windowInterfaceOrientation;
      v23 = 2048;
      v24 = _windowInterfaceOrientation2;
      _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_DEFAULT, "%s #keyboardInvalidation: Invalidating keyboard window because orientation (%ld) didn't match our launch orientation (%ld)", buf, 0x20u);
    }

    [window invalidate];
  }
}

- (void)willEnterForegroundHandler
{
  [(SRAppDelegate *)self _verifyAndSyncTrialExperiments];
  SiriUISyncCachedPreferences();
  appWindow = [(SRAppDelegate *)self appWindow];
  rootViewController = [appWindow rootViewController];
  [rootViewController willEnterForegroundHandler];
}

- (void)_verifyAndSyncTrialExperiments
{
  v3 = [SRUIFPreferences alloc];
  v4 = [v3 initWithSuiteName:SRUIFPreferencesDefaultDomain];
  if (([v4 BOOLForKey:SRUIFPreferencesDeviceEnrolledInASRSettingTrialExperiment] & 1) == 0)
  {
    trialManager = self->_trialManager;
    if (!trialManager)
    {
      v6 = [SRUIFTrialManager alloc];
      v7 = [v6 initWithNamespace:SRUIFTrialNamespaceForResponsesSettings];
      v8 = self->_trialManager;
      self->_trialManager = v7;

      trialManager = self->_trialManager;
    }

    v9 = SRUIFTrialFactorForOverrideAlwaysShowRecognizedSpeech;
    v10[0] = _NSConcreteStackBlock;
    v10[1] = 3221225472;
    v10[2] = sub_1000058D4;
    v10[3] = &unk_100168888;
    v11 = v4;
    [(SRUIFTrialManager *)trialManager BOOLValueForFactor:v9 defaultValueIfNoFactorsFilePresent:0 withCompletionHandler:v10];
  }
}

- (void)setUpViews
{
  appWindow = [(SRAppDelegate *)self appWindow];
  rootViewController = [appWindow rootViewController];
  [rootViewController setUpViews];
}

- (void)didBecomeActiveHandler
{
  appWindow = [(SRAppDelegate *)self appWindow];
  rootViewController = [appWindow rootViewController];
  [rootViewController didBecomeActiveHandler];
}

- (void)_invalidateTrialManager
{
  if (self->_trialManager)
  {
    self->_trialManager = 0;
    _objc_release_x1();
  }
}

- (void)_windowDidCreateContext:(id)context
{
  object = [context object];
  if (object == self->_appWindow)
  {
    v5 = object;
    [(SRAppDelegate *)self _updateDeferral];
    object = v5;
  }
}

- (void)_windowWillDestroyContext:(id)context
{
  object = [context object];
  if (object == self->_appWindow)
  {
    v5 = object;
    [(SRAppDelegate *)self _updateDeferral];
    object = v5;
  }
}

- (BOOL)application:(id)application didFinishLaunchingWithOptions:(id)options
{
  v5 = [NSNotificationCenter defaultCenter:application];
  [v5 addObserver:self selector:"_windowDidCreateContext:" name:UIWindowDidCreateWindowContextNotification object:0];
  [v5 addObserver:self selector:"_windowWillDestroyContext:" name:UIWindowWillDestroyWindowContextNotification object:0];
  +[SRAssetsUtilities setupBackgroundAssetCheck];
  v6 = objc_alloc_init(SRViewController);
  v7 = objc_alloc_init(SRSecureWindow);
  v8 = +[UIColor clearColor];
  [(SRSecureWindow *)v7 setBackgroundColor:v8];

  [(SRSecureWindow *)v7 setRootViewController:v6];
  [(SRSecureWindow *)v7 makeKeyAndVisible];
  v9 = +[UNUserNotificationCenter currentNotificationCenter];
  [v9 setDelegate:self];
  v10 = AFSiriLogContextConnection;
  if (os_log_type_enabled(AFSiriLogContextConnection, OS_LOG_TYPE_DEFAULT))
  {
    v16 = 136315138;
    v17 = "[SRAppDelegate application:didFinishLaunchingWithOptions:]";
    _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "%s Set UNUserNotificationCenter delegate to self", &v16, 0xCu);
  }

  v11 = AFSiriLogContextConnection;
  if (os_log_type_enabled(AFSiriLogContextConnection, OS_LOG_TYPE_DEFAULT))
  {
    v12 = v11;
    v13 = getpid();
    _contextId = [(SRSecureWindow *)v7 _contextId];
    v16 = 136316162;
    v17 = "[SRAppDelegate application:didFinishLaunchingWithOptions:]";
    v18 = 1024;
    v19 = v13;
    v20 = 2048;
    v21 = v6;
    v22 = 2048;
    v23 = v7;
    v24 = 1024;
    v25 = _contextId;
    _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEFAULT, "%s (%u) Creating initial viewController (%p) and window (%p) and contextID %u", &v16, 0x2Cu);
  }

  [(SRAppDelegate *)self setAppWindow:v7];

  return 1;
}

- (id)application:(id)application configurationForConnectingSceneSession:(id)session options:(id)options
{
  configuration = [session configuration];
  [configuration setDelegateClass:objc_opt_class()];

  return configuration;
}

- (void)tearDownViews
{
  [(SRAppDelegate *)self _invalidateTrialManager];
  appWindow = [(SRAppDelegate *)self appWindow];
  rootViewController = [appWindow rootViewController];
  [rootViewController tearDownViews];
}

- (void)willResignActiveHandler
{
  appWindow = [(SRAppDelegate *)self appWindow];
  rootViewController = [appWindow rootViewController];
  [rootViewController willResignActiveHandler];
}

- (void)userNotificationCenter:(id)center willPresentNotification:(id)notification withCompletionHandler:(id)handler
{
  handlerCopy = handler;
  v6 = AFSiriLogContextConnection;
  if (os_log_type_enabled(AFSiriLogContextConnection, OS_LOG_TYPE_DEFAULT))
  {
    v7 = 136315138;
    v8 = "[SRAppDelegate userNotificationCenter:willPresentNotification:withCompletionHandler:]";
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "%s Telling notification center to use list and banner presentation options", &v7, 0xCu);
  }

  handlerCopy[2](handlerCopy, 24);
}

- (SRApplicationDataSource)dataSource
{
  WeakRetained = objc_loadWeakRetained(&self->_dataSource);

  return WeakRetained;
}

@end