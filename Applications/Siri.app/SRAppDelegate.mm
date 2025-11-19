@interface SRAppDelegate
- (BOOL)application:(id)a3 didFinishLaunchingWithOptions:(id)a4;
- (SRApplicationDataSource)dataSource;
- (id)application:(id)a3 configurationForConnectingSceneSession:(id)a4 options:(id)a5;
- (void)_invalidateTrialManager;
- (void)_updateDeferral;
- (void)_verifyAndSyncTrialExperiments;
- (void)_windowDidCreateContext:(id)a3;
- (void)_windowWillDestroyContext:(id)a3;
- (void)didBecomeActiveHandler;
- (void)invalidateKeyboardWindowIfNeeded;
- (void)setUpViews;
- (void)tearDownViews;
- (void)userNotificationCenter:(id)a3 willPresentNotification:(id)a4 withCompletionHandler:(id)a5;
- (void)willEnterForegroundHandler;
- (void)willResignActiveHandler;
@end

@implementation SRAppDelegate

- (void)_updateDeferral
{
  objc_initWeak(&location, self);
  v3 = [(UIScene *)self->_currentScene _FBSScene];
  v4[0] = _NSConcreteStackBlock;
  v4[1] = 3221225472;
  v4[2] = sub_100004004;
  v4[3] = &unk_100168D90;
  objc_copyWeak(&v5, &location);
  [v3 updateClientSettingsWithBlock:v4];

  objc_destroyWeak(&v5);
  objc_destroyWeak(&location);
}

- (void)invalidateKeyboardWindowIfNeeded
{
  v3 = +[UIKeyboard activeKeyboard];
  v4 = [v3 window];
  v5 = NSClassFromString(@"UIRemoteKeyboardWindow");
  if (v4)
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
    v4 = [v7 countByEnumeratingWithState:&v15 objects:v25 count:16];
    if (v4)
    {
      v8 = *v16;
      while (2)
      {
        for (i = 0; i != v4; i = i + 1)
        {
          if (*v16 != v8)
          {
            objc_enumerationMutation(v7);
          }

          v10 = *(*(&v15 + 1) + 8 * i);
          if (objc_opt_isKindOfClass())
          {
            v4 = v10;
            goto LABEL_15;
          }
        }

        v4 = [v7 countByEnumeratingWithState:&v15 objects:v25 count:16];
        if (v4)
        {
          continue;
        }

        break;
      }
    }

LABEL_15:
  }

  v11 = [v4 _windowInterfaceOrientation];
  v12 = [(SRAppDelegate *)self appWindow];
  v13 = [v12 _windowInterfaceOrientation];

  if (v4 && (objc_opt_respondsToSelector() & 1) != 0 && v11 != v13)
  {
    v14 = AFSiriLogContextConnection;
    if (os_log_type_enabled(AFSiriLogContextConnection, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136315650;
      v20 = "[SRAppDelegate invalidateKeyboardWindowIfNeeded]";
      v21 = 2048;
      v22 = v11;
      v23 = 2048;
      v24 = v13;
      _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_DEFAULT, "%s #keyboardInvalidation: Invalidating keyboard window because orientation (%ld) didn't match our launch orientation (%ld)", buf, 0x20u);
    }

    [v4 invalidate];
  }
}

- (void)willEnterForegroundHandler
{
  [(SRAppDelegate *)self _verifyAndSyncTrialExperiments];
  SiriUISyncCachedPreferences();
  v4 = [(SRAppDelegate *)self appWindow];
  v3 = [v4 rootViewController];
  [v3 willEnterForegroundHandler];
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
  v3 = [(SRAppDelegate *)self appWindow];
  v2 = [v3 rootViewController];
  [v2 setUpViews];
}

- (void)didBecomeActiveHandler
{
  v3 = [(SRAppDelegate *)self appWindow];
  v2 = [v3 rootViewController];
  [v2 didBecomeActiveHandler];
}

- (void)_invalidateTrialManager
{
  if (self->_trialManager)
  {
    self->_trialManager = 0;
    _objc_release_x1();
  }
}

- (void)_windowDidCreateContext:(id)a3
{
  v4 = [a3 object];
  if (v4 == self->_appWindow)
  {
    v5 = v4;
    [(SRAppDelegate *)self _updateDeferral];
    v4 = v5;
  }
}

- (void)_windowWillDestroyContext:(id)a3
{
  v4 = [a3 object];
  if (v4 == self->_appWindow)
  {
    v5 = v4;
    [(SRAppDelegate *)self _updateDeferral];
    v4 = v5;
  }
}

- (BOOL)application:(id)a3 didFinishLaunchingWithOptions:(id)a4
{
  v5 = [NSNotificationCenter defaultCenter:a3];
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
    v14 = [(SRSecureWindow *)v7 _contextId];
    v16 = 136316162;
    v17 = "[SRAppDelegate application:didFinishLaunchingWithOptions:]";
    v18 = 1024;
    v19 = v13;
    v20 = 2048;
    v21 = v6;
    v22 = 2048;
    v23 = v7;
    v24 = 1024;
    v25 = v14;
    _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEFAULT, "%s (%u) Creating initial viewController (%p) and window (%p) and contextID %u", &v16, 0x2Cu);
  }

  [(SRAppDelegate *)self setAppWindow:v7];

  return 1;
}

- (id)application:(id)a3 configurationForConnectingSceneSession:(id)a4 options:(id)a5
{
  v5 = [a4 configuration];
  [v5 setDelegateClass:objc_opt_class()];

  return v5;
}

- (void)tearDownViews
{
  [(SRAppDelegate *)self _invalidateTrialManager];
  v4 = [(SRAppDelegate *)self appWindow];
  v3 = [v4 rootViewController];
  [v3 tearDownViews];
}

- (void)willResignActiveHandler
{
  v3 = [(SRAppDelegate *)self appWindow];
  v2 = [v3 rootViewController];
  [v2 willResignActiveHandler];
}

- (void)userNotificationCenter:(id)a3 willPresentNotification:(id)a4 withCompletionHandler:(id)a5
{
  v5 = a5;
  v6 = AFSiriLogContextConnection;
  if (os_log_type_enabled(AFSiriLogContextConnection, OS_LOG_TYPE_DEFAULT))
  {
    v7 = 136315138;
    v8 = "[SRAppDelegate userNotificationCenter:willPresentNotification:withCompletionHandler:]";
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "%s Telling notification center to use list and banner presentation options", &v7, 0xCu);
  }

  v5[2](v5, 24);
}

- (SRApplicationDataSource)dataSource
{
  WeakRetained = objc_loadWeakRetained(&self->_dataSource);

  return WeakRetained;
}

@end