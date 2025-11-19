@interface TVLatencyColorimeterSetupStartViewController
- (void)_handleContinueButton;
- (void)_handleDismissButton;
- (void)handleDeviceSetupNotification:(id)a3;
- (void)viewDidDisappear:(BOOL)a3;
- (void)viewDidLoad;
- (void)viewWillAppear:(BOOL)a3;
@end

@implementation TVLatencyColorimeterSetupStartViewController

- (void)_handleDismissButton
{
  if (dword_1001BEA68 <= 30 && (dword_1001BEA68 != -1 || _LogCategory_Initialize()))
  {
    LogPrintF();
  }

  v3 = [(TVLatencyColorimeterSetupBaseViewController *)self mainController];
  [v3 dismiss:5];
}

- (void)_handleContinueButton
{
  if (dword_1001BEA68 <= 30 && (dword_1001BEA68 != -1 || _LogCategory_Initialize()))
  {
    LogPrintF();
  }

  v3 = [(TVLatencyColorimeterSetupBaseViewController *)self mainController];
  v4 = [v3 testFlags];

  if (v4)
  {
    v11 = [(TVLatencyColorimeterSetupBaseViewController *)self mainController];
    [v11 showPreparingUI];
  }

  else
  {
    v11 = objc_alloc_init(SFDevice);
    v5 = [(TVLatencyColorimeterSetupBaseViewController *)self mainController];
    v6 = [v5 deviceIdentifier];
    [v11 setIdentifier:v6];

    v7 = [(TVLatencyColorimeterSetupBaseViewController *)self mainController];
    v8 = [v7 userInfo];
    [v11 setOsVersion:CFDictionaryGetInt64Ranged()];

    v9 = [(TVLatencyColorimeterSetupBaseViewController *)self mainController];
    [v9 _sessionStart:v11];

    v10 = [(TVLatencyColorimeterSetupBaseViewController *)self mainController];
    [v10 showPreparingUI];
  }
}

- (void)handleDeviceSetupNotification:(id)a3
{
  v16 = a3;
  v4 = [v16 name];
  v5 = [v16 userInfo];
  if (dword_1001BEA68 <= 30 && (dword_1001BEA68 != -1 || _LogCategory_Initialize()))
  {
    v6 = &stru_100195CA8;
    if (v5)
    {
      v6 = v5;
    }

    v14 = v4;
    v15 = v6;
    LogPrintF();
  }

  v7 = [v16 name];
  v8 = [v7 isEqual:@"com.apple.sharing.DeviceSetup"];

  if (v8 && !CFDictionaryGetInt64())
  {
    v9 = [(TVLatencyColorimeterSetupBaseViewController *)self mainController];
    v10 = [v9 userInfo];
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

      v13 = [(TVLatencyColorimeterSetupBaseViewController *)self mainController];
      [v13 dismiss:16];
    }
  }
}

- (void)viewDidDisappear:(BOOL)a3
{
  v3 = a3;
  if (dword_1001BEA68 <= 30 && (dword_1001BEA68 != -1 || _LogCategory_Initialize()))
  {
    LogPrintF();
  }

  v6.receiver = self;
  v6.super_class = TVLatencyColorimeterSetupStartViewController;
  [(TVLatencyColorimeterSetupStartViewController *)&v6 viewDidDisappear:v3];
  v5 = +[NSDistributedNotificationCenter defaultCenter];
  [v5 removeObserver:self name:@"com.apple.sharing.DeviceSetup" object:0];
}

- (void)viewWillAppear:(BOOL)a3
{
  v3 = a3;
  if (dword_1001BEA68 <= 30 && (dword_1001BEA68 != -1 || _LogCategory_Initialize()))
  {
    LogPrintF();
  }

  v8.receiver = self;
  v8.super_class = TVLatencyColorimeterSetupStartViewController;
  [(TVLatencyColorimeterSetupStartViewController *)&v8 viewWillAppear:v3];
  v5 = [(TVLatencyColorimeterSetupBaseViewController *)self mainController];
  v6 = [v5 _remoteViewControllerProxy];
  [v6 setStatusBarHidden:1 withDuration:0.0];

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
  v15 = [(TVLatencyColorimeterSetupStartViewController *)self contentView];
  [v15 addSubview:v14];

  v16 = [(TVLatencyColorimeterSetupStartViewController *)self contentView];
  v17 = [v16 mainContentGuide];

  v32 = [v14 topAnchor];
  v31 = [v17 topAnchor];
  v30 = [v32 constraintEqualToAnchor:v31];
  v41[0] = v30;
  v29 = [v14 bottomAnchor];
  v28 = [v17 bottomAnchor];
  v27 = [v29 constraintLessThanOrEqualToAnchor:v28];
  v41[1] = v27;
  v26 = [v14 leadingAnchor];
  v18 = [v17 leadingAnchor];
  v19 = [v26 constraintEqualToAnchor:v18];
  v41[2] = v19;
  v20 = [v14 trailingAnchor];
  v21 = [v17 trailingAnchor];
  v22 = [v20 constraintEqualToAnchor:v21];
  v41[3] = v22;
  v23 = [v14 heightAnchor];
  v24 = [v23 constraintEqualToConstant:150.0];
  v41[4] = v24;
  v25 = [NSArray arrayWithObjects:v41 count:5];
  [NSLayoutConstraint activateConstraints:v25];

  objc_destroyWeak(&v36);
  objc_destroyWeak(&v38);
  objc_destroyWeak(&location);
}

@end