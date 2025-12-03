@interface TVLatencyColorimeterSetupUnsupportedViewController
- (void)_handleDismissButton;
- (void)viewDidDisappear:(BOOL)disappear;
- (void)viewDidLoad;
- (void)viewWillAppear:(BOOL)appear;
@end

@implementation TVLatencyColorimeterSetupUnsupportedViewController

- (void)_handleDismissButton
{
  if (dword_1001BEA68 <= 30 && (dword_1001BEA68 != -1 || _LogCategory_Initialize()))
  {
    LogPrintF();
  }

  mainController = [(TVLatencyColorimeterSetupBaseViewController *)self mainController];
  [mainController dismiss:5];
}

- (void)viewDidDisappear:(BOOL)disappear
{
  disappearCopy = disappear;
  if (dword_1001BEA68 <= 30 && (dword_1001BEA68 != -1 || _LogCategory_Initialize()))
  {
    LogPrintF();
  }

  v5.receiver = self;
  v5.super_class = TVLatencyColorimeterSetupUnsupportedViewController;
  [(TVLatencyColorimeterSetupUnsupportedViewController *)&v5 viewDidDisappear:disappearCopy];
}

- (void)viewWillAppear:(BOOL)appear
{
  appearCopy = appear;
  if (dword_1001BEA68 <= 30 && (dword_1001BEA68 != -1 || _LogCategory_Initialize()))
  {
    LogPrintF();
  }

  v5.receiver = self;
  v5.super_class = TVLatencyColorimeterSetupUnsupportedViewController;
  [(TVLatencyColorimeterSetupUnsupportedViewController *)&v5 viewWillAppear:appearCopy];
}

- (void)viewDidLoad
{
  v51.receiver = self;
  v51.super_class = TVLatencyColorimeterSetupUnsupportedViewController;
  [(TVLatencyColorimeterSetupUnsupportedViewController *)&v51 viewDidLoad];
  [(TVLatencyColorimeterSetupUnsupportedViewController *)self setDismissalType:3];
  objc_initWeak(&location, self);
  v3 = +[NSBundle mainBundle];
  v4 = [v3 localizedStringForKey:@"CANCEL" value:&stru_100195CA8 table:@"Localizable"];
  v48[0] = _NSConcreteStackBlock;
  v48[1] = 3221225472;
  v48[2] = sub_1001060D4;
  v48[3] = &unk_1001958D8;
  objc_copyWeak(&v49, &location);
  v46 = [PRXAction actionWithTitle:v4 style:1 handler:v48];

  v5 = [(TVLatencyColorimeterSetupUnsupportedViewController *)self addAction:v46];
  v6 = +[NSBundle mainBundle];
  v7 = sub_1001279D0(v6, @"Localizable-TVLatencyColorimeter", @"TLV_COLOR_UNSUPPORTED_TITLE");
  [(TVLatencyColorimeterSetupUnsupportedViewController *)self setTitle:v7];

  v8 = +[NSBundle mainBundle];
  v9 = sub_1001279D0(v8, @"Localizable-TVLatencyColorimeter", @"TLV_COLOR_UNSUPPORTED_SUBTITLE");
  [(TVLatencyColorimeterSetupUnsupportedViewController *)self setSubtitle:v9];

  v10 = [UIImageView alloc];
  v11 = [UIImage imageNamed:@"TV_Colorimeter"];
  v12 = [v10 initWithImage:v11];

  [v12 setContentMode:1];
  [v12 setTranslatesAutoresizingMaskIntoConstraints:0];
  contentView = [(TVLatencyColorimeterSetupUnsupportedViewController *)self contentView];
  [contentView addSubview:v12];

  v14 = [UIImageView alloc];
  v15 = [UIImage systemImageNamed:@"exclamationmark.circle"];
  v16 = [v14 initWithImage:v15];
  statusImageViewIcon = self->super._statusImageViewIcon;
  self->super._statusImageViewIcon = v16;

  v18 = +[UIColor systemRedColor];
  [(UIImageView *)self->super._statusImageViewIcon setTintColor:v18];

  [(UIImageView *)self->super._statusImageViewIcon setTranslatesAutoresizingMaskIntoConstraints:0];
  contentView2 = [(TVLatencyColorimeterSetupUnsupportedViewController *)self contentView];
  [contentView2 addSubview:self->super._statusImageViewIcon];

  contentView3 = [(TVLatencyColorimeterSetupUnsupportedViewController *)self contentView];
  mainContentGuide = [contentView3 mainContentGuide];

  topAnchor = [v12 topAnchor];
  topAnchor2 = [mainContentGuide topAnchor];
  v43 = [topAnchor constraintEqualToAnchor:topAnchor2];
  v52[0] = v43;
  bottomAnchor = [v12 bottomAnchor];
  bottomAnchor2 = [mainContentGuide bottomAnchor];
  v40 = [bottomAnchor constraintLessThanOrEqualToAnchor:bottomAnchor2];
  v52[1] = v40;
  leadingAnchor = [v12 leadingAnchor];
  leadingAnchor2 = [mainContentGuide leadingAnchor];
  v37 = [leadingAnchor constraintEqualToAnchor:leadingAnchor2];
  v52[2] = v37;
  trailingAnchor = [v12 trailingAnchor];
  trailingAnchor2 = [mainContentGuide trailingAnchor];
  v34 = [trailingAnchor constraintEqualToAnchor:trailingAnchor2];
  v52[3] = v34;
  heightAnchor = [v12 heightAnchor];
  v32 = [heightAnchor constraintEqualToConstant:150.0];
  v52[4] = v32;
  centerXAnchor = [(UIImageView *)self->super._statusImageViewIcon centerXAnchor];
  centerXAnchor2 = [v12 centerXAnchor];
  v21 = [centerXAnchor constraintEqualToAnchor:centerXAnchor2];
  v52[5] = v21;
  centerYAnchor = [(UIImageView *)self->super._statusImageViewIcon centerYAnchor];
  centerYAnchor2 = [v12 centerYAnchor];
  v24 = [centerYAnchor constraintEqualToAnchor:centerYAnchor2 constant:-6.0];
  v52[6] = v24;
  widthAnchor = [(UIImageView *)self->super._statusImageViewIcon widthAnchor];
  v26 = [widthAnchor constraintEqualToConstant:40.0];
  v52[7] = v26;
  heightAnchor2 = [(UIImageView *)self->super._statusImageViewIcon heightAnchor];
  v28 = [heightAnchor2 constraintEqualToConstant:40.0];
  v52[8] = v28;
  v29 = [NSArray arrayWithObjects:v52 count:9];
  [NSLayoutConstraint activateConstraints:v29];

  objc_destroyWeak(&v49);
  objc_destroyWeak(&location);
}

@end