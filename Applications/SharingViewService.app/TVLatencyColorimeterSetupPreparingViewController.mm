@interface TVLatencyColorimeterSetupPreparingViewController
- (void)_handleDismissButton;
- (void)viewDidLoad;
- (void)viewWillAppear:(BOOL)appear;
@end

@implementation TVLatencyColorimeterSetupPreparingViewController

- (void)_handleDismissButton
{
  if (dword_1001BEA68 <= 30 && (dword_1001BEA68 != -1 || _LogCategory_Initialize()))
  {
    LogPrintF();
  }

  mainController = [(TVLatencyColorimeterSetupBaseViewController *)self mainController];
  [mainController dismiss:5];
}

- (void)viewWillAppear:(BOOL)appear
{
  appearCopy = appear;
  if (dword_1001BEA68 <= 30 && (dword_1001BEA68 != -1 || _LogCategory_Initialize()))
  {
    LogPrintF();
  }

  v5.receiver = self;
  v5.super_class = TVLatencyColorimeterSetupPreparingViewController;
  [(TVLatencyColorimeterSetupPreparingViewController *)&v5 viewWillAppear:appearCopy];
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
  contentView = [(TVLatencyColorimeterSetupPreparingViewController *)self contentView];
  [contentView addSubview:v12];

  v39 = [[UIActivityIndicatorView alloc] initWithActivityIndicatorStyle:101];
  [v39 setTranslatesAutoresizingMaskIntoConstraints:0];
  contentView2 = [(TVLatencyColorimeterSetupPreparingViewController *)self contentView];
  [contentView2 addSubview:v39];

  [v39 startAnimating];
  contentView3 = [(TVLatencyColorimeterSetupPreparingViewController *)self contentView];
  mainContentGuide = [contentView3 mainContentGuide];

  topAnchor = [v12 topAnchor];
  topAnchor2 = [mainContentGuide topAnchor];
  v34 = [topAnchor constraintEqualToAnchor:topAnchor2];
  v44[0] = v34;
  bottomAnchor = [v12 bottomAnchor];
  bottomAnchor2 = [mainContentGuide bottomAnchor];
  v31 = [bottomAnchor constraintLessThanOrEqualToAnchor:bottomAnchor2];
  v44[1] = v31;
  leadingAnchor = [v12 leadingAnchor];
  leadingAnchor2 = [mainContentGuide leadingAnchor];
  v28 = [leadingAnchor constraintEqualToAnchor:leadingAnchor2];
  v44[2] = v28;
  trailingAnchor = [v12 trailingAnchor];
  trailingAnchor2 = [mainContentGuide trailingAnchor];
  v25 = [trailingAnchor constraintEqualToAnchor:trailingAnchor2];
  v44[3] = v25;
  heightAnchor = [v12 heightAnchor];
  v17 = [heightAnchor constraintEqualToConstant:150.0];
  v44[4] = v17;
  centerXAnchor = [v39 centerXAnchor];
  centerXAnchor2 = [v12 centerXAnchor];
  v20 = [centerXAnchor constraintEqualToAnchor:centerXAnchor2];
  v44[5] = v20;
  centerYAnchor = [v39 centerYAnchor];
  centerYAnchor2 = [v12 centerYAnchor];
  v23 = [centerYAnchor constraintEqualToAnchor:centerYAnchor2 constant:-6.0];
  v44[6] = v23;
  v24 = [NSArray arrayWithObjects:v44 count:7];
  [NSLayoutConstraint activateConstraints:v24];

  objc_destroyWeak(&v41);
  objc_destroyWeak(&location);
}

@end