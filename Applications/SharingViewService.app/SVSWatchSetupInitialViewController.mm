@interface SVSWatchSetupInitialViewController
- (SVSWatchSetupInitialViewController)initWithUserInfo:(id)info;
- (WatchSetupViewControllerProxy)mainController;
- (void)_handleContinueButton;
- (void)_handleUpdateNow;
- (void)_launchWatchAppForPairing;
- (void)_restoreWatchApp;
- (void)applicationsDidInstall:(id)install;
- (void)handleDeviceSetupNotification:(id)notification;
- (void)viewDidDisappear:(BOOL)disappear;
- (void)viewDidLoad;
- (void)viewWillAppear:(BOOL)appear;
@end

@implementation SVSWatchSetupInitialViewController

- (WatchSetupViewControllerProxy)mainController
{
  WeakRetained = objc_loadWeakRetained(&self->_mainController);

  return WeakRetained;
}

- (void)applicationsDidInstall:(id)install
{
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  installCopy = install;
  v5 = [installCopy countByEnumeratingWithState:&v12 objects:v16 count:16];
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
          objc_enumerationMutation(installCopy);
        }

        bundleIdentifier = [*(*(&v12 + 1) + 8 * i) bundleIdentifier];
        v10 = [bundleIdentifier isEqual:@"com.apple.Bridge"];

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

      v6 = [installCopy countByEnumeratingWithState:&v12 objects:v16 count:16];
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
  mainController = [(SVSWatchSetupInitialViewController *)self mainController];
  [mainController dismissAnimated:1 completion:&stru_100195918];
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
    appState = [v3 appState];
    isInstalled = [appState isInstalled];

    if (isInstalled)
    {

      [(SVSWatchSetupInitialViewController *)self _launchWatchAppForPairing];
    }

    else
    {

      [(SVSWatchSetupInitialViewController *)self _restoreWatchApp];
    }
  }
}

- (void)handleDeviceSetupNotification:(id)notification
{
  notificationCopy = notification;
  isPairing = [(SVSWatchSetupInitialViewController *)self isPairing];
  v5 = notificationCopy;
  if (!isPairing)
  {
    name = [notificationCopy name];
    userInfo = [notificationCopy userInfo];
    if (dword_1001BF328 <= 30 && (dword_1001BF328 != -1 || _LogCategory_Initialize()))
    {
      v8 = &stru_100195CA8;
      if (userInfo)
      {
        v8 = userInfo;
      }

      v15 = name;
      v16 = v8;
      LogPrintF();
    }

    name2 = [notificationCopy name];
    v10 = [name2 isEqual:@"com.apple.sharing.DeviceSetup"];

    if (v10 && !CFDictionaryGetInt64())
    {
      userInfo2 = [(SVSWatchSetupInitialViewController *)self userInfo];
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

        mainController = [(SVSWatchSetupInitialViewController *)self mainController];
        [mainController dismiss:0];
      }
    }

    v5 = notificationCopy;
  }

  _objc_release_x1(isPairing, v5);
}

- (void)viewDidDisappear:(BOOL)disappear
{
  v5.receiver = self;
  v5.super_class = SVSWatchSetupInitialViewController;
  [(SVSWatchSetupInitialViewController *)&v5 viewDidDisappear:disappear];
  if (dword_1001BF328 <= 30 && (dword_1001BF328 != -1 || _LogCategory_Initialize()))
  {
    LogPrintF();
  }

  v4 = +[NSDistributedNotificationCenter defaultCenter];
  [v4 removeObserver:self name:@"com.apple.sharing.DeviceSetup" object:0];
}

- (void)viewWillAppear:(BOOL)appear
{
  v7.receiver = self;
  v7.super_class = SVSWatchSetupInitialViewController;
  [(SVSWatchSetupInitialViewController *)&v7 viewWillAppear:appear];
  if (dword_1001BF328 <= 30 && (dword_1001BF328 != -1 || _LogCategory_Initialize()))
  {
    LogPrintF();
  }

  mainController = [(SVSWatchSetupInitialViewController *)self mainController];
  _remoteViewControllerProxy = [mainController _remoteViewControllerProxy];
  [_remoteViewControllerProxy setStatusBarHidden:1 withDuration:0.0];

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

  contentView = [(SVSWatchSetupInitialViewController *)self contentView];
  [contentView addSubview:v7];

  topAnchor = [v7 topAnchor];
  contentView2 = [(SVSWatchSetupInitialViewController *)self contentView];
  mainContentGuide = [contentView2 mainContentGuide];
  topAnchor2 = [mainContentGuide topAnchor];
  v28 = [topAnchor constraintEqualToAnchor:topAnchor2];
  v39[0] = v28;
  bottomAnchor = [v7 bottomAnchor];
  contentView3 = [(SVSWatchSetupInitialViewController *)self contentView];
  mainContentGuide2 = [contentView3 mainContentGuide];
  bottomAnchor2 = [mainContentGuide2 bottomAnchor];
  v23 = [bottomAnchor constraintLessThanOrEqualToAnchor:bottomAnchor2];
  v39[1] = v23;
  leadingAnchor = [v7 leadingAnchor];
  contentView4 = [(SVSWatchSetupInitialViewController *)self contentView];
  mainContentGuide3 = [contentView4 mainContentGuide];
  leadingAnchor2 = [mainContentGuide3 leadingAnchor];
  v9 = [leadingAnchor constraintEqualToAnchor:leadingAnchor2];
  v39[2] = v9;
  trailingAnchor = [v7 trailingAnchor];
  contentView5 = [(SVSWatchSetupInitialViewController *)self contentView];
  mainContentGuide4 = [contentView5 mainContentGuide];
  trailingAnchor2 = [mainContentGuide4 trailingAnchor];
  v14 = [trailingAnchor constraintEqualToAnchor:trailingAnchor2];
  v39[3] = v14;
  heightAnchor = [v7 heightAnchor];
  v16 = [heightAnchor constraintEqualToConstant:175.0];
  v39[4] = v16;
  v17 = [NSArray arrayWithObjects:v39 count:5];
  [NSLayoutConstraint activateConstraints:v17];

  objc_destroyWeak(&v36);
  objc_destroyWeak(&location);
}

- (SVSWatchSetupInitialViewController)initWithUserInfo:(id)info
{
  v8.receiver = self;
  v8.super_class = SVSWatchSetupInitialViewController;
  infoCopy = info;
  v4 = [(SVSWatchSetupInitialViewController *)&v8 initWithContentView:0];
  v5 = [infoCopy copy];

  userInfo = v4->_userInfo;
  v4->_userInfo = v5;

  return v4;
}

@end