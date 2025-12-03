@interface TVLatencyColorimeterSetupTryAgainViewController
- (void)_handleDismissButton;
- (void)_handleTryAgainButton;
- (void)viewDidDisappear:(BOOL)disappear;
- (void)viewDidLoad;
- (void)viewWillAppear:(BOOL)appear;
@end

@implementation TVLatencyColorimeterSetupTryAgainViewController

- (void)_handleDismissButton
{
  if (dword_1001BEA68 <= 30 && (dword_1001BEA68 != -1 || _LogCategory_Initialize()))
  {
    LogPrintF();
  }

  mainController = [(TVLatencyColorimeterSetupBaseViewController *)self mainController];
  [mainController dismiss:5];
}

- (void)_handleTryAgainButton
{
  if (dword_1001BEA68 <= 30 && (dword_1001BEA68 != -1 || _LogCategory_Initialize()))
  {
    LogPrintF();
  }

  mainController = [(TVLatencyColorimeterSetupBaseViewController *)self mainController];
  testFlags = [mainController testFlags];

  mainController2 = [(TVLatencyColorimeterSetupBaseViewController *)self mainController];
  [mainController2 showProgressUI];

  if (!testFlags)
  {
    v6 = dispatch_time(0, 1000000000);
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_1001022E0;
    block[3] = &unk_100195AC0;
    block[4] = self;
    dispatch_after(v6, &_dispatch_main_q, block);
  }
}

- (void)viewDidDisappear:(BOOL)disappear
{
  disappearCopy = disappear;
  if (dword_1001BEA68 <= 30 && (dword_1001BEA68 != -1 || _LogCategory_Initialize()))
  {
    LogPrintF();
  }

  v5.receiver = self;
  v5.super_class = TVLatencyColorimeterSetupTryAgainViewController;
  [(TVLatencyColorimeterSetupTryAgainViewController *)&v5 viewDidDisappear:disappearCopy];
}

- (void)viewWillAppear:(BOOL)appear
{
  appearCopy = appear;
  if (dword_1001BEA68 <= 30 && (dword_1001BEA68 != -1 || _LogCategory_Initialize()))
  {
    LogPrintF();
  }

  v5.receiver = self;
  v5.super_class = TVLatencyColorimeterSetupTryAgainViewController;
  [(TVLatencyColorimeterSetupTryAgainViewController *)&v5 viewWillAppear:appearCopy];
}

- (void)viewDidLoad
{
  v56.receiver = self;
  v56.super_class = TVLatencyColorimeterSetupTryAgainViewController;
  [(TVLatencyColorimeterSetupTryAgainViewController *)&v56 viewDidLoad];
  [(TVLatencyColorimeterSetupTryAgainViewController *)self setDismissalType:3];
  objc_initWeak(&location, self);
  v3 = sub_10012794C(@"Localizable", @"TRY_AGAIN");
  v53[0] = _NSConcreteStackBlock;
  v53[1] = 3221225472;
  v53[2] = sub_100102B84;
  v53[3] = &unk_1001958D8;
  objc_copyWeak(&v54, &location);
  v49 = [PRXAction actionWithTitle:v3 style:0 handler:v53];

  v4 = [(TVLatencyColorimeterSetupTryAgainViewController *)self addAction:v49];
  v5 = +[NSBundle mainBundle];
  v6 = [v5 localizedStringForKey:@"CANCEL" value:&stru_100195CA8 table:@"Localizable"];
  v51[0] = _NSConcreteStackBlock;
  v51[1] = 3221225472;
  v51[2] = sub_100102BC4;
  v51[3] = &unk_1001958D8;
  objc_copyWeak(&v52, &location);
  v48 = [PRXAction actionWithTitle:v6 style:1 handler:v51];

  v7 = [(TVLatencyColorimeterSetupTryAgainViewController *)self addAction:v48];
  v8 = +[NSBundle mainBundle];
  v9 = sub_1001279D0(v8, @"Localizable-TVLatencyColorimeter", @"TLV_COLOR_TRYAGAIN_TITLE");
  [(TVLatencyColorimeterSetupTryAgainViewController *)self setTitle:v9];

  v10 = +[NSBundle mainBundle];
  v11 = sub_1001279D0(v10, @"Localizable-TVLatencyColorimeter", @"TLV_COLOR_TRYAGAIN_SUBTITLE");
  [(TVLatencyColorimeterSetupTryAgainViewController *)self setSubtitle:v11];

  v12 = [UIImageView alloc];
  v13 = [UIImage imageNamed:@"TV_Colorimeter"];
  v14 = [v12 initWithImage:v13];

  [v14 setContentMode:1];
  [v14 setTranslatesAutoresizingMaskIntoConstraints:0];
  contentView = [(TVLatencyColorimeterSetupTryAgainViewController *)self contentView];
  [contentView addSubview:v14];

  v16 = [UIImageView alloc];
  v17 = [UIImage systemImageNamed:@"exclamationmark.circle"];
  v18 = [v16 initWithImage:v17];
  statusImageViewIcon = self->super._statusImageViewIcon;
  self->super._statusImageViewIcon = v18;

  v20 = +[UIColor systemRedColor];
  [(UIImageView *)self->super._statusImageViewIcon setTintColor:v20];

  [(UIImageView *)self->super._statusImageViewIcon setTranslatesAutoresizingMaskIntoConstraints:0];
  contentView2 = [(TVLatencyColorimeterSetupTryAgainViewController *)self contentView];
  [contentView2 addSubview:self->super._statusImageViewIcon];

  contentView3 = [(TVLatencyColorimeterSetupTryAgainViewController *)self contentView];
  mainContentGuide = [contentView3 mainContentGuide];

  topAnchor = [v14 topAnchor];
  topAnchor2 = [mainContentGuide topAnchor];
  v45 = [topAnchor constraintEqualToAnchor:topAnchor2];
  v57[0] = v45;
  bottomAnchor = [v14 bottomAnchor];
  bottomAnchor2 = [mainContentGuide bottomAnchor];
  v42 = [bottomAnchor constraintLessThanOrEqualToAnchor:bottomAnchor2];
  v57[1] = v42;
  leadingAnchor = [v14 leadingAnchor];
  leadingAnchor2 = [mainContentGuide leadingAnchor];
  v39 = [leadingAnchor constraintEqualToAnchor:leadingAnchor2];
  v57[2] = v39;
  trailingAnchor = [v14 trailingAnchor];
  trailingAnchor2 = [mainContentGuide trailingAnchor];
  v36 = [trailingAnchor constraintEqualToAnchor:trailingAnchor2];
  v57[3] = v36;
  heightAnchor = [v14 heightAnchor];
  v34 = [heightAnchor constraintEqualToConstant:150.0];
  v57[4] = v34;
  centerXAnchor = [(UIImageView *)self->super._statusImageViewIcon centerXAnchor];
  centerXAnchor2 = [v14 centerXAnchor];
  v23 = [centerXAnchor constraintEqualToAnchor:centerXAnchor2];
  v57[5] = v23;
  centerYAnchor = [(UIImageView *)self->super._statusImageViewIcon centerYAnchor];
  centerYAnchor2 = [v14 centerYAnchor];
  v26 = [centerYAnchor constraintEqualToAnchor:centerYAnchor2 constant:-6.0];
  v57[6] = v26;
  widthAnchor = [(UIImageView *)self->super._statusImageViewIcon widthAnchor];
  v28 = [widthAnchor constraintEqualToConstant:40.0];
  v57[7] = v28;
  heightAnchor2 = [(UIImageView *)self->super._statusImageViewIcon heightAnchor];
  v30 = [heightAnchor2 constraintEqualToConstant:40.0];
  v57[8] = v30;
  v31 = [NSArray arrayWithObjects:v57 count:9];
  [NSLayoutConstraint activateConstraints:v31];

  objc_destroyWeak(&v52);
  objc_destroyWeak(&v54);
  objc_destroyWeak(&location);
}

@end