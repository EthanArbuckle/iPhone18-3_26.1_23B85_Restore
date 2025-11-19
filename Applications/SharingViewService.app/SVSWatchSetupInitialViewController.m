@interface SVSWatchSetupInitialViewController
- (SVSWatchSetupInitialViewController)initWithUserInfo:(id)a3;
- (WatchSetupViewControllerProxy)mainController;
- (void)_handleContinueButton;
- (void)_handleUpdateNow;
- (void)_launchWatchAppForPairing;
- (void)_restoreWatchApp;
- (void)applicationsDidInstall:(id)a3;
- (void)handleDeviceSetupNotification:(id)a3;
- (void)viewDidDisappear:(BOOL)a3;
- (void)viewDidLoad;
- (void)viewWillAppear:(BOOL)a3;
@end

@implementation SVSWatchSetupInitialViewController

- (WatchSetupViewControllerProxy)mainController
{
  WeakRetained = objc_loadWeakRetained(&self->_mainController);

  return WeakRetained;
}

- (void)applicationsDidInstall:(id)a3
{
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v4 = a3;
  v5 = [v4 countByEnumeratingWithState:&v12 objects:v16 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v13;
    while (2)
    {
      for (i = 0; i != v6; i = i + 1)
      {
        if (*v13 != v7)
        {
          objc_enumerationMutation(v4);
        }

        v9 = [*(*(&v12 + 1) + 8 * i) bundleIdentifier];
        v10 = [v9 isEqual:@"com.apple.Bridge"];

        if (v10)
        {
          if (dword_1001BF328 <= 30 && (dword_1001BF328 != -1 || _LogCategory_Initialize()))
          {
            LogPrintF();
          }

          block[0] = _NSConcreteStackBlock;
          block[1] = 3221225472;
          block[2] = sub_10012C814;
          block[3] = &unk_100195AC0;
          block[4] = self;
          dispatch_async(&_dispatch_main_q, block);
          goto LABEL_15;
        }
      }

      v6 = [v4 countByEnumeratingWithState:&v12 objects:v16 count:16];
      if (v6)
      {
        continue;
      }

      break;
    }
  }

LABEL_15:
}

- (void)_restoreWatchApp
{
  v3 = sub_10012794C(@"Localizable", @"RESTORING");
  [(SVSWatchSetupInitialViewController *)self showActivityIndicatorWithStatus:v3];

  v4 = +[LSApplicationWorkspace defaultWorkspace];
  [v4 addObserver:self];
  v5 = [objc_alloc(off_1001BF3A0()) initWithBundleID:@"com.apple.Bridge"];
  v6[0] = _NSConcreteStackBlock;
  v6[1] = 3221225472;
  v6[2] = sub_10012C90C;
  v6[3] = &unk_100195940;
  v6[4] = self;
  [v5 startWithErrorHandler:v6];
}

- (void)_launchWatchAppForPairing
{
  v2 = [(SVSWatchSetupInitialViewController *)self mainController];
  [v2 dismissAnimated:1 completion:&stru_100195918];
}

- (void)_handleUpdateNow
{
  v2 = [NSURL URLWithString:@"prefs:root=General&path=SOFTWARE_UPDATE_LINK&ShowDefaultAudiencePane=YES"];
  v3 = +[LSApplicationWorkspace defaultWorkspace];
  v4 = sub_100128254();
  v8 = 0;
  v5 = [v3 openSensitiveURL:v2 withOptions:v4 error:&v8];
  v6 = v8;

  if (v5)
  {
    v7 = v6 == 0;
  }

  else
  {
    v7 = 0;
  }

  if (!v7 && dword_1001BF328 <= 90 && (dword_1001BF328 != -1 || _LogCategory_Initialize()))
  {
    LogPrintF();
  }
}

- (void)_handleContinueButton
{
  if (![(SVSWatchSetupInitialViewController *)self isPairing])
  {
    [(SVSWatchSetupInitialViewController *)self setPairing:1];
    v3 = [LSApplicationProxy applicationProxyForIdentifier:@"com.apple.Bridge"];
    v4 = [v3 appState];
    v5 = [v4 isInstalled];

    if (v5)
    {

      [(SVSWatchSetupInitialViewController *)self _launchWatchAppForPairing];
    }

    else
    {

      [(SVSWatchSetupInitialViewController *)self _restoreWatchApp];
    }
  }
}

- (void)handleDeviceSetupNotification:(id)a3
{
  v17 = a3;
  v4 = [(SVSWatchSetupInitialViewController *)self isPairing];
  v5 = v17;
  if (!v4)
  {
    v6 = [v17 name];
    v7 = [v17 userInfo];
    if (dword_1001BF328 <= 30 && (dword_1001BF328 != -1 || _LogCategory_Initialize()))
    {
      v8 = &stru_100195CA8;
      if (v7)
      {
        v8 = v7;
      }

      v15 = v6;
      v16 = v8;
      LogPrintF();
    }

    v9 = [v17 name];
    v10 = [v9 isEqual:@"com.apple.sharing.DeviceSetup"];

    if (v10 && !CFDictionaryGetInt64())
    {
      v11 = [(SVSWatchSetupInitialViewController *)self userInfo];
      CFStringGetTypeID();
      v12 = CFDictionaryGetTypedValue();

      CFStringGetTypeID();
      v13 = CFDictionaryGetTypedValue();
      if ([v13 isEqual:v12])
      {
        if (dword_1001BF328 <= 30 && (dword_1001BF328 != -1 || _LogCategory_Initialize()))
        {
          LogPrintF();
        }

        v14 = [(SVSWatchSetupInitialViewController *)self mainController];
        [v14 dismiss:0];
      }
    }

    v5 = v17;
  }

  _objc_release_x1(v4, v5);
}

- (void)viewDidDisappear:(BOOL)a3
{
  v5.receiver = self;
  v5.super_class = SVSWatchSetupInitialViewController;
  [(SVSWatchSetupInitialViewController *)&v5 viewDidDisappear:a3];
  if (dword_1001BF328 <= 30 && (dword_1001BF328 != -1 || _LogCategory_Initialize()))
  {
    LogPrintF();
  }

  v4 = +[NSDistributedNotificationCenter defaultCenter];
  [v4 removeObserver:self name:@"com.apple.sharing.DeviceSetup" object:0];
}

- (void)viewWillAppear:(BOOL)a3
{
  v7.receiver = self;
  v7.super_class = SVSWatchSetupInitialViewController;
  [(SVSWatchSetupInitialViewController *)&v7 viewWillAppear:a3];
  if (dword_1001BF328 <= 30 && (dword_1001BF328 != -1 || _LogCategory_Initialize()))
  {
    LogPrintF();
  }

  v4 = [(SVSWatchSetupInitialViewController *)self mainController];
  v5 = [v4 _remoteViewControllerProxy];
  [v5 setStatusBarHidden:1 withDuration:0.0];

  v6 = +[NSDistributedNotificationCenter defaultCenter];
  [v6 addObserver:self selector:"handleDeviceSetupNotification:" name:@"com.apple.sharing.DeviceSetup" object:0 suspensionBehavior:4];
}

- (void)viewDidLoad
{
  v38.receiver = self;
  v38.super_class = SVSWatchSetupInitialViewController;
  [(SVSWatchSetupInitialViewController *)&v38 viewDidLoad];
  [(SVSWatchSetupInitialViewController *)self setDismissalType:3];
  v3 = sub_10012794C(@"Localizable", @"APPLE_WATCH_SETUP_TITLE");
  [(SVSWatchSetupInitialViewController *)self setTitle:v3];

  v4 = sub_10012794C(@"Localizable", @"APPLE_WATCH_SETUP_SUBTITLE");
  [(SVSWatchSetupInitialViewController *)self setSubtitle:v4];

  objc_initWeak(&location, self);
  v5 = sub_10012794C(@"Localizable", @"CONTINUE");
  v35[0] = _NSConcreteStackBlock;
  v35[1] = 3221225472;
  v35[2] = sub_10012D858;
  v35[3] = &unk_1001958D8;
  objc_copyWeak(&v36, &location);
  v33 = [PRXAction actionWithTitle:v5 style:0 handler:v35];

  v6 = [(SVSWatchSetupInitialViewController *)self addAction:v33];
  v7 = [[BPSRemoteWatchView alloc] initWithSize:{CGSizeZero.width, CGSizeZero.height}];
  [v7 setTranslatesAutoresizingMaskIntoConstraints:0];
  CFStringGetTypeID();
  v34 = CFDictionaryGetTypedValue();
  if (dword_1001BF328 <= 30 && (dword_1001BF328 != -1 || _LogCategory_Initialize()))
  {
    v18 = v34;
    LogPrintF();
  }

  if (v34)
  {
    [v7 setAdvertisingName:v34];
  }

  v8 = [(SVSWatchSetupInitialViewController *)self contentView];
  [v8 addSubview:v7];

  v30 = [v7 topAnchor];
  v32 = [(SVSWatchSetupInitialViewController *)self contentView];
  v31 = [v32 mainContentGuide];
  v29 = [v31 topAnchor];
  v28 = [v30 constraintEqualToAnchor:v29];
  v39[0] = v28;
  v25 = [v7 bottomAnchor];
  v27 = [(SVSWatchSetupInitialViewController *)self contentView];
  v26 = [v27 mainContentGuide];
  v24 = [v26 bottomAnchor];
  v23 = [v25 constraintLessThanOrEqualToAnchor:v24];
  v39[1] = v23;
  v20 = [v7 leadingAnchor];
  v22 = [(SVSWatchSetupInitialViewController *)self contentView];
  v21 = [v22 mainContentGuide];
  v19 = [v21 leadingAnchor];
  v9 = [v20 constraintEqualToAnchor:v19];
  v39[2] = v9;
  v10 = [v7 trailingAnchor];
  v11 = [(SVSWatchSetupInitialViewController *)self contentView];
  v12 = [v11 mainContentGuide];
  v13 = [v12 trailingAnchor];
  v14 = [v10 constraintEqualToAnchor:v13];
  v39[3] = v14;
  v15 = [v7 heightAnchor];
  v16 = [v15 constraintEqualToConstant:175.0];
  v39[4] = v16;
  v17 = [NSArray arrayWithObjects:v39 count:5];
  [NSLayoutConstraint activateConstraints:v17];

  objc_destroyWeak(&v36);
  objc_destroyWeak(&location);
}

- (SVSWatchSetupInitialViewController)initWithUserInfo:(id)a3
{
  v8.receiver = self;
  v8.super_class = SVSWatchSetupInitialViewController;
  v3 = a3;
  v4 = [(SVSWatchSetupInitialViewController *)&v8 initWithContentView:0];
  v5 = [v3 copy];

  userInfo = v4->_userInfo;
  v4->_userInfo = v5;

  return v4;
}

@end