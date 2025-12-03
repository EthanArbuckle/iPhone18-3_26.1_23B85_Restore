@interface TVLatencyColorimeterSetupStartViewController
- (void)_handleContinueButton;
- (void)_handleDismissButton;
- (void)handleDeviceSetupNotification:(id)notification;
- (void)viewDidDisappear:(BOOL)disappear;
- (void)viewDidLoad;
- (void)viewWillAppear:(BOOL)appear;
@end

@implementation TVLatencyColorimeterSetupStartViewController

- (void)_handleDismissButton
{
  if (dword_1001BEA68 <= 30 && (dword_1001BEA68 != -1 || _LogCategory_Initialize()))
  {
    LogPrintF();
  }

  mainController = [(TVLatencyColorimeterSetupBaseViewController *)self mainController];
  [mainController dismiss:5];
}

- (void)_handleContinueButton
{
  if (dword_1001BEA68 <= 30 && (dword_1001BEA68 != -1 || _LogCategory_Initialize()))
  {
    LogPrintF();
  }

  mainController = [(TVLatencyColorimeterSetupBaseViewController *)self mainController];
  testFlags = [mainController testFlags];

  if (testFlags)
  {
    mainController2 = [(TVLatencyColorimeterSetupBaseViewController *)self mainController];
    [mainController2 showPreparingUI];
  }

  else
  {
    mainController2 = objc_alloc_init(SFDevice);
    mainController3 = [(TVLatencyColorimeterSetupBaseViewController *)self mainController];
    deviceIdentifier = [mainController3 deviceIdentifier];
    [mainController2 setIdentifier:deviceIdentifier];

    mainController4 = [(TVLatencyColorimeterSetupBaseViewController *)self mainController];
    userInfo = [mainController4 userInfo];
    [mainController2 setOsVersion:CFDictionaryGetInt64Ranged()];

    mainController5 = [(TVLatencyColorimeterSetupBaseViewController *)self mainController];
    [mainController5 _sessionStart:mainController2];

    mainController6 = [(TVLatencyColorimeterSetupBaseViewController *)self mainController];
    [mainController6 showPreparingUI];
  }
}

- (void)handleDeviceSetupNotification:(id)notification
{
  notificationCopy = notification;
  name = [notificationCopy name];
  userInfo = [notificationCopy userInfo];
  if (dword_1001BEA68 <= 30 && (dword_1001BEA68 != -1 || _LogCategory_Initialize()))
  {
    v6 = &stru_100195CA8;
    if (userInfo)
    {
      v6 = userInfo;
    }

    v14 = name;
    v15 = v6;
    LogPrintF();
  }

  name2 = [notificationCopy name];
  v8 = [name2 isEqual:@"com.apple.sharing.DeviceSetup"];

  if (v8 && !CFDictionaryGetInt64())
  {
    mainController = [(TVLatencyColorimeterSetupBaseViewController *)self mainController];
    userInfo2 = [mainController userInfo];
    CFStringGetTypeID();
    v11 = CFDictionaryGetTypedValue();

    CFStringGetTypeID();
    v12 = CFDictionaryGetTypedValue();
    if ([v12 isEqual:v11])
    {
      if (dword_1001BEA68 <= 30 && (dword_1001BEA68 != -1 || _LogCategory_Initialize()))
      {
        LogPrintF();
      }

      mainController2 = [(TVLatencyColorimeterSetupBaseViewController *)self mainController];
      [mainController2 dismiss:16];
    }
  }
}

- (void)viewDidDisappear:(BOOL)disappear
{
  disappearCopy = disappear;
  if (dword_1001BEA68 <= 30 && (dword_1001BEA68 != -1 || _LogCategory_Initialize()))
  {
    LogPrintF();
  }

  v6.receiver = self;
  v6.super_class = TVLatencyColorimeterSetupStartViewController;
  [(TVLatencyColorimeterSetupStartViewController *)&v6 viewDidDisappear:disappearCopy];
  v5 = +[NSDistributedNotificationCenter defaultCenter];
  [v5 removeObserver:self name:@"com.apple.sharing.DeviceSetup" object:0];
}

- (void)viewWillAppear:(BOOL)appear
{
  appearCopy = appear;
  if (dword_1001BEA68 <= 30 && (dword_1001BEA68 != -1 || _LogCategory_Initialize()))
  {
    LogPrintF();
  }

  v8.receiver = self;
  v8.super_class = TVLatencyColorimeterSetupStartViewController;
  [(TVLatencyColorimeterSetupStartViewController *)&v8 viewWillAppear:appearCopy];
  mainController = [(TVLatencyColorimeterSetupBaseViewController *)self mainController];
  _remoteViewControllerProxy = [mainController _remoteViewControllerProxy];
  [_remoteViewControllerProxy setStatusBarHidden:1 withDuration:0.0];

  v7 = +[NSDistributedNotificationCenter defaultCenter];
  [v7 addObserver:self selector:"handleDeviceSetupNotification:" name:@"com.apple.sharing.DeviceSetup" object:0 suspensionBehavior:4];
}

- (void)viewDidLoad
{
  v40.receiver = self;
  v40.super_class = TVLatencyColorimeterSetupStartViewController;
  [(TVLatencyColorimeterSetupStartViewController *)&v40 viewDidLoad];
  [(TVLatencyColorimeterSetupStartViewController *)self setDismissalType:3];
  objc_initWeak(&location, self);
  v3 = sub_10012794C(@"Localizable", @"CONTINUE");
  v37[0] = _NSConcreteStackBlock;
  v37[1] = 3221225472;
  v37[2] = sub_100106CEC;
  v37[3] = &unk_1001958D8;
  objc_copyWeak(&v38, &location);
  v34 = [PRXAction actionWithTitle:v3 style:0 handler:v37];

  v4 = [(TVLatencyColorimeterSetupStartViewController *)self addAction:v34];
  v5 = +[NSBundle mainBundle];
  v6 = [v5 localizedStringForKey:@"NOT_NOW" value:&stru_100195CA8 table:@"Localizable"];
  v35[0] = _NSConcreteStackBlock;
  v35[1] = 3221225472;
  v35[2] = sub_100106D2C;
  v35[3] = &unk_1001958D8;
  objc_copyWeak(&v36, &location);
  v33 = [PRXAction actionWithTitle:v6 style:1 handler:v35];

  v7 = [(TVLatencyColorimeterSetupStartViewController *)self addAction:v33];
  v8 = +[NSBundle mainBundle];
  v9 = sub_1001279D0(v8, @"Localizable-TVLatencyColorimeter", @"TLV_COLOR_TITLE");
  [(TVLatencyColorimeterSetupStartViewController *)self setTitle:v9];

  v10 = +[NSBundle mainBundle];
  v11 = sub_1001279D0(v10, @"Localizable-TVLatencyColorimeter", @"TLV_COLOR_SUBTITLE");
  [(TVLatencyColorimeterSetupStartViewController *)self setSubtitle:v11];

  v12 = [UIImageView alloc];
  v13 = [UIImage imageNamed:@"TV_Colorimeter"];
  v14 = [v12 initWithImage:v13];

  [v14 setContentMode:1];
  [v14 setTranslatesAutoresizingMaskIntoConstraints:0];
  contentView = [(TVLatencyColorimeterSetupStartViewController *)self contentView];
  [contentView addSubview:v14];

  contentView2 = [(TVLatencyColorimeterSetupStartViewController *)self contentView];
  mainContentGuide = [contentView2 mainContentGuide];

  topAnchor = [v14 topAnchor];
  topAnchor2 = [mainContentGuide topAnchor];
  v30 = [topAnchor constraintEqualToAnchor:topAnchor2];
  v41[0] = v30;
  bottomAnchor = [v14 bottomAnchor];
  bottomAnchor2 = [mainContentGuide bottomAnchor];
  v27 = [bottomAnchor constraintLessThanOrEqualToAnchor:bottomAnchor2];
  v41[1] = v27;
  leadingAnchor = [v14 leadingAnchor];
  leadingAnchor2 = [mainContentGuide leadingAnchor];
  v19 = [leadingAnchor constraintEqualToAnchor:leadingAnchor2];
  v41[2] = v19;
  trailingAnchor = [v14 trailingAnchor];
  trailingAnchor2 = [mainContentGuide trailingAnchor];
  v22 = [trailingAnchor constraintEqualToAnchor:trailingAnchor2];
  v41[3] = v22;
  heightAnchor = [v14 heightAnchor];
  v24 = [heightAnchor constraintEqualToConstant:150.0];
  v41[4] = v24;
  v25 = [NSArray arrayWithObjects:v41 count:5];
  [NSLayoutConstraint activateConstraints:v25];

  objc_destroyWeak(&v36);
  objc_destroyWeak(&v38);
  objc_destroyWeak(&location);
}

@end