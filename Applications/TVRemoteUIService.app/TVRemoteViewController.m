@interface TVRemoteViewController
- (BOOL)isConfigured;
- (unint64_t)supportedInterfaceOrientations;
- (void)_acquireAppSwitcherAssertion;
- (void)_appWillTerminate:(id)a3;
- (void)_configureWithDefaultContext;
- (void)_releaseAppSwitcherAssertion;
- (void)configureWithContext:(id)a3;
- (void)deviceDidConnect;
- (void)deviceDidDisconnect;
- (void)devicePickerWillExpand;
- (void)dismiss;
- (void)presentFindMyTip;
- (void)sceneDidActivate:(id)a3;
- (void)sceneDidEnterBackground:(id)a3;
- (void)sceneWillDeactivate:(id)a3;
- (void)viewDidLoad;
- (void)willEnterLockScreenScene;
- (void)willExitLockScreenScene;
@end

@implementation TVRemoteViewController

- (void)viewDidLoad
{
  v35.receiver = self;
  v35.super_class = TVRemoteViewController;
  [(TVRemoteViewController *)&v35 viewDidLoad];
  v3 = objc_alloc_init(TVRUIHintsViewController);
  [(TVRemoteViewController *)self setHintsViewController:v3];

  v4 = [(TVRemoteViewController *)self view];
  [v4 bounds];
  v6 = v5;
  v8 = v7;
  v10 = v9;
  v12 = v11;
  v13 = [(TVRemoteViewController *)self hintsViewController];
  v14 = [v13 view];
  [v14 setFrame:{v6, v8, v10, v12}];

  v15 = objc_alloc_init(TVRUIRemoteViewController);
  [(TVRemoteViewController *)self setRemoteViewController:v15];

  v16 = [(TVRemoteViewController *)self view];
  [v16 bounds];
  v18 = v17;
  v20 = v19;
  v22 = v21;
  v24 = v23;
  v25 = [(TVRemoteViewController *)self remoteViewController];
  v26 = [v25 view];
  [v26 setFrame:{v18, v20, v22, v24}];

  v27 = [(TVRemoteViewController *)self remoteViewController];
  [v27 setDelegate:self];

  v28 = [(TVRemoteViewController *)self remoteViewController];
  [v28 setDeviceConnectionStatusDelegate:self];

  v29 = [(TVRemoteViewController *)self remoteViewController];
  [(TVRemoteViewController *)self bs_addChildViewController:v29];

  v30 = [(TVRemoteViewController *)self hintsViewController];
  [(TVRemoteViewController *)self bs_addChildViewController:v30];

  v31 = +[NSNotificationCenter defaultCenter];
  [v31 addObserver:self selector:"_appWillTerminate:" name:UIApplicationWillTerminateNotification object:0];

  v32 = +[NSNotificationCenter defaultCenter];
  [v32 addObserver:self selector:"sceneDidActivate:" name:UISceneDidActivateNotification object:0];

  v33 = +[NSNotificationCenter defaultCenter];
  [v33 addObserver:self selector:"sceneWillDeactivate:" name:UISceneWillDeactivateNotification object:0];

  v34 = +[NSNotificationCenter defaultCenter];
  [v34 addObserver:self selector:"sceneDidEnterBackground:" name:UISceneDidEnterBackgroundNotification object:0];
}

- (void)sceneDidActivate:(id)a3
{
  v4 = [a3 object];
  v5 = _TVRUIServiceAppLog();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v8 = 136315394;
    v9 = "[TVRemoteViewController sceneDidActivate:]";
    v10 = 2112;
    v11 = v4;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "%s - %@", &v8, 0x16u);
  }

  if ([(TVRemoteViewController *)self isConnectedToDevice]&& [(TVRemoteViewController *)self shouldReplayHints])
  {
    v6 = _TVRUIServiceAppLog();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      LOWORD(v8) = 0;
      _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "Replaying hints", &v8, 2u);
    }

    v7 = [(TVRemoteViewController *)self hintsViewController];
    [v7 replayHints];

    [(TVRemoteViewController *)self setShouldReplayHints:0];
  }
}

- (void)sceneWillDeactivate:(id)a3
{
  v4 = [a3 object];
  v5 = _TVRUIServiceAppLog();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v7 = 136315394;
    v8 = "[TVRemoteViewController sceneWillDeactivate:]";
    v9 = 2112;
    v10 = v4;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "%s - %@", &v7, 0x16u);
  }

  [(TVRemoteViewController *)self _dismissHintsAnimated:0];
  v6 = +[_TtC17TVRemoteUIService11TipsManager shared];
  [v6 invalidate];
}

- (void)sceneDidEnterBackground:(id)a3
{
  v4 = [a3 object];
  v5 = _TVRUIServiceAppLog();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v8 = 136315394;
    v9 = "[TVRemoteViewController sceneDidEnterBackground:]";
    v10 = 2112;
    v11 = v4;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "%s - %@", &v8, 0x16u);
  }

  v6 = [(TVRemoteViewController *)self hintsViewController];
  [v6 remoteWillBeDismissed];

  v7 = +[_TtC17TVRemoteUIService11TipsManager shared];
  [v7 invalidate];
}

- (BOOL)isConfigured
{
  v2 = [(TVRemoteViewController *)self remoteViewController];
  v3 = [v2 isConfigured];

  return v3;
}

- (void)willEnterLockScreenScene
{
  v3 = _TVRUIServiceAppLog();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *v5 = 0;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "willEnterLockScreenScene", v5, 2u);
  }

  v4 = [(TVRemoteViewController *)self remoteViewController];
  [v4 setIsInSecureWindow:1];
}

- (void)willExitLockScreenScene
{
  v3 = _TVRUIServiceAppLog();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *v5 = 0;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "willExitLockScreenScene", v5, 2u);
  }

  v4 = [(TVRemoteViewController *)self remoteViewController];
  [v4 setIsInSecureWindow:0];
}

- (void)_acquireAppSwitcherAssertion
{
  if (!self->_appSwitcherAssertion)
  {
    v3 = _TVRUIServiceAppLog();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
    {
      LOWORD(buf[0]) = 0;
      _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "Acquiring AppSwitcher Assertion", buf, 2u);
    }

    objc_initWeak(buf, self);
    objc_copyWeak(&v4, buf);
    SBSRequestAppSwitcherAppearanceForHiddenApplication();
    objc_destroyWeak(&v4);
    objc_destroyWeak(buf);
  }
}

void __54__TVRemoteViewController__acquireAppSwitcherAssertion__block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained setAppSwitcherAssertion:v3];
}

- (void)_releaseAppSwitcherAssertion
{
  v3 = _TVRUIServiceAppLog();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *v5 = 0;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "Releasing AppSwitcher Assertion", v5, 2u);
  }

  [(SBSAssertion *)self->_appSwitcherAssertion invalidate];
  appSwitcherAssertion = self->_appSwitcherAssertion;
  self->_appSwitcherAssertion = 0;
}

- (void)_appWillTerminate:(id)a3
{
  v4 = _TVRUIServiceAppLog();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v5 = 136315138;
    v6 = "[TVRemoteViewController _appWillTerminate:]";
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "%s", &v5, 0xCu);
  }

  [(TVRemoteViewController *)self dismiss];
}

- (void)_configureWithDefaultContext
{
  v3 = _TVRUIServiceAppLog();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *v5 = 0;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "Configuring RemoteViewController with default context", v5, 2u);
  }

  v4 = [(TVRemoteViewController *)self remoteViewController];
  [v4 configureWithDeviceIdentifier:0 identifierType:TVRViewServiceDeviceIdentifierTypeNone deviceType:0 launchContext:1];
}

- (void)configureWithContext:(id)a3
{
  v4 = a3;
  v5 = _TVRUIServiceAppLog();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v7 = 138543362;
    v8 = v4;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "Configuring RemoteViewController with context: %{public}@", &v7, 0xCu);
  }

  if (([(TVRemoteViewController *)self isViewLoaded]& 1) == 0)
  {
    [(TVRemoteViewController *)self loadViewIfNeeded];
  }

  v6 = [(TVRemoteViewController *)self remoteViewController];
  [v6 configureWithContext:v4];
}

- (void)dismiss
{
  v3 = _TVRUIServiceAppLog();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *v8 = 0;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "Dismissing HintsViewController and RemoteViewController", v8, 2u);
  }

  [(TVRemoteViewController *)self _dismissPresentedContentAnimated:0];
  v4 = [(TVRemoteViewController *)self hintsViewController];
  [v4 remoteWillBeDismissed];

  v5 = [(TVRemoteViewController *)self hintsViewController];
  [v5 dismissHints];

  v6 = [(TVRemoteViewController *)self remoteViewController];
  [v6 _disconnectUserInitiated];

  v7 = [(TVRemoteViewController *)self remoteViewController];
  [v7 stopConnections];
}

- (unint64_t)supportedInterfaceOrientations
{
  v2 = [(TVRemoteViewController *)self traitCollection];
  if ([v2 userInterfaceIdiom] == 1)
  {
    v3 = 30;
  }

  else
  {
    v3 = 2;
  }

  return v3;
}

- (void)deviceDidConnect
{
  v3 = _TVRUIServiceAppLog();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "Device did connect. Acquiring AppSwitcher assertion", buf, 2u);
  }

  [(TVRemoteViewController *)self setIsConnectedToDevice:1];
  [(TVRemoteViewController *)self _acquireAppSwitcherAssertion];
  v4 = dispatch_time(0, 1000000000);
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = __42__TVRemoteViewController_deviceDidConnect__block_invoke;
  block[3] = &unk_100018C20;
  block[4] = self;
  dispatch_after(v4, &_dispatch_main_q, block);
}

- (void)deviceDidDisconnect
{
  v3 = _TVRUIServiceAppLog();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *v4 = 0;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "Device did disconnect. Releasing AppSwitcher assertion", v4, 2u);
  }

  [(TVRemoteViewController *)self setIsConnectedToDevice:0];
  [(TVRemoteViewController *)self _releaseAppSwitcherAssertion];
}

- (void)presentFindMyTip
{
  v3 = [(TVRemoteViewController *)self remoteViewController];
  v4 = [v3 isInSecureWindow];

  if (v4)
  {
    v5 = _TVRUIServiceAppLog();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "Not showing the mini tip since the view controller is in a secure window", buf, 2u);
    }
  }

  else
  {
    v8 = +[_TtC17TVRemoteUIService11TipsManager shared];
    v6 = [(TVRemoteViewController *)self remoteViewController];
    v7 = [v6 tipSourceViewProvider];
    [v8 updatePresentingViewController:v7];

    [v8 presentTip];
  }
}

- (void)devicePickerWillExpand
{
  v3 = [(TVRemoteViewController *)self hintsViewController];
  [v3 devicePickerWillExpand];

  v4 = dispatch_time(0, 1000000000);
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = __48__TVRemoteViewController_devicePickerWillExpand__block_invoke;
  block[3] = &unk_100018C20;
  block[4] = self;
  dispatch_after(v4, &_dispatch_main_q, block);
}

@end