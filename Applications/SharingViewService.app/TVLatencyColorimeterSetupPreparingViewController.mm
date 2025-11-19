@interface TVLatencyColorimeterSetupPreparingViewController
- (void)_handleDismissButton;
- (void)viewDidLoad;
- (void)viewWillAppear:(BOOL)a3;
@end

@implementation TVLatencyColorimeterSetupPreparingViewController

- (void)_handleDismissButton
{
  if (dword_1001BEA68 <= 30 && (dword_1001BEA68 != -1 || _LogCategory_Initialize()))
  {
    LogPrintF();
  }

  v3 = [(TVLatencyColorimeterSetupBaseViewController *)self mainController];
  [v3 dismiss:5];
}

- (void)viewWillAppear:(BOOL)a3
{
  v3 = a3;
  if (dword_1001BEA68 <= 30 && (dword_1001BEA68 != -1 || _LogCategory_Initialize()))
  {
    LogPrintF();
  }

  v5.receiver = self;
  v5.super_class = TVLatencyColorimeterSetupPreparingViewController;
  [(TVLatencyColorimeterSetupPreparingViewController *)&v5 viewWillAppear:v3];
}

- (void)viewDidLoad
{
  v43.receiver = self;
  v43.super_class = TVLatencyColorimeterSetupPreparingViewController;
  [(TVLatencyColorimeterSetupPreparingViewController *)&v43 viewDidLoad];
  [(TVLatencyColorimeterSetupPreparingViewController *)self setDismissalType:1];
  objc_initWeak(&location, self);
  v3 = +[NSBundle mainBundle];
  v4 = [v3 localizedStringForKey:@"CANCEL" value:&stru_100195CA8 table:@"Localizable"];
  v40[0] = _NSConcreteStackBlock;
  v40[1] = 3221225472;
  v40[2] = sub_100103FB8;
  v40[3] = &unk_1001958D8;
  objc_copyWeak(&v41, &location);
  v37 = [PRXAction actionWithTitle:v4 style:1 handler:v40];

  v5 = [(TVLatencyColorimeterSetupPreparingViewController *)self addAction:v37];
  v6 = +[NSBundle mainBundle];
  v7 = sub_1001279D0(v6, @"Localizable-TVLatency", @"TLV_PREPARING_TITLE");
  [(TVLatencyColorimeterSetupPreparingViewController *)self setTitle:v7];

  v8 = +[NSBundle mainBundle];
  v9 = sub_1001279D0(v8, @"Localizable-TVLatencyColorimeter", @"TLV_SETTING_UP_COLOR_CALIBRATION");
  [(TVLatencyColorimeterSetupPreparingViewController *)self setSubtitle:v9];

  v10 = [UIImageView alloc];
  v11 = [UIImage imageNamed:@"TV_Colorimeter"];
  v12 = [v10 initWithImage:v11];

  [v12 setContentMode:1];
  [v12 setTranslatesAutoresizingMaskIntoConstraints:0];
  v13 = [(TVLatencyColorimeterSetupPreparingViewController *)self contentView];
  [v13 addSubview:v12];

  v39 = [[UIActivityIndicatorView alloc] initWithActivityIndicatorStyle:101];
  [v39 setTranslatesAutoresizingMaskIntoConstraints:0];
  v14 = [(TVLatencyColorimeterSetupPreparingViewController *)self contentView];
  [v14 addSubview:v39];

  [v39 startAnimating];
  v15 = [(TVLatencyColorimeterSetupPreparingViewController *)self contentView];
  v38 = [v15 mainContentGuide];

  v36 = [v12 topAnchor];
  v35 = [v38 topAnchor];
  v34 = [v36 constraintEqualToAnchor:v35];
  v44[0] = v34;
  v33 = [v12 bottomAnchor];
  v32 = [v38 bottomAnchor];
  v31 = [v33 constraintLessThanOrEqualToAnchor:v32];
  v44[1] = v31;
  v30 = [v12 leadingAnchor];
  v29 = [v38 leadingAnchor];
  v28 = [v30 constraintEqualToAnchor:v29];
  v44[2] = v28;
  v27 = [v12 trailingAnchor];
  v26 = [v38 trailingAnchor];
  v25 = [v27 constraintEqualToAnchor:v26];
  v44[3] = v25;
  v16 = [v12 heightAnchor];
  v17 = [v16 constraintEqualToConstant:150.0];
  v44[4] = v17;
  v18 = [v39 centerXAnchor];
  v19 = [v12 centerXAnchor];
  v20 = [v18 constraintEqualToAnchor:v19];
  v44[5] = v20;
  v21 = [v39 centerYAnchor];
  v22 = [v12 centerYAnchor];
  v23 = [v21 constraintEqualToAnchor:v22 constant:-6.0];
  v44[6] = v23;
  v24 = [NSArray arrayWithObjects:v44 count:7];
  [NSLayoutConstraint activateConstraints:v24];

  objc_destroyWeak(&v41);
  objc_destroyWeak(&location);
}

@end