@interface TVLatencyColorimeterSetupDoneViewController
- (void)_handleDismissButton;
- (void)viewDidDisappear:(BOOL)disappear;
- (void)viewDidLoad;
- (void)viewWillAppear:(BOOL)appear;
@end

@implementation TVLatencyColorimeterSetupDoneViewController

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
  v5.super_class = TVLatencyColorimeterSetupDoneViewController;
  [(TVLatencyColorimeterSetupDoneViewController *)&v5 viewDidDisappear:disappearCopy];
}

- (void)viewWillAppear:(BOOL)appear
{
  appearCopy = appear;
  if (dword_1001BEA68 <= 30 && (dword_1001BEA68 != -1 || _LogCategory_Initialize()))
  {
    LogPrintF();
  }

  v20.receiver = self;
  v20.super_class = TVLatencyColorimeterSetupDoneViewController;
  [(TVLatencyColorimeterSetupDoneViewController *)&v20 viewWillAppear:appearCopy];
  error = self->_error;
  v6 = +[NSBundle mainBundle];
  v7 = v6;
  if (error)
  {
    v8 = sub_1001279D0(v6, @"Localizable-TVLatencyColorimeter", @"TLV_COLOR_FAILED_TITLE");
    [(TVLatencyColorimeterSetupDoneViewController *)self setTitle:v8];

    v9 = +[NSBundle mainBundle];
    v10 = sub_1001279D0(v9, @"Localizable-TVLatencyColorimeter", @"TLV_COLOR_FAILED_SUBTITLE");
    [(TVLatencyColorimeterSetupDoneViewController *)self setSubtitle:v10];

    v11 = +[UIColor systemRedColor];
    v12 = @"exclamationmark.circle";
  }

  else
  {
    if (self->_completed)
    {
      v13 = @"TVL_COLOR_SUCCESS_TITLE";
    }

    else
    {
      v13 = @"TVL_COLOR_SUCCESS2_TITLE";
    }

    v14 = sub_1001279D0(v6, @"Localizable-TVLatencyColorimeter", v13);
    [(TVLatencyColorimeterSetupDoneViewController *)self setTitle:v14];

    v15 = +[NSBundle mainBundle];
    v16 = v15;
    if (self->_completed)
    {
      v17 = @"TVL_COLOR_SUCCESS_SUBTITLE";
    }

    else
    {
      v17 = @"TVL_COLOR_SUCCESS2_SUBTITLE";
    }

    v18 = sub_1001279D0(v15, @"Localizable-TVLatencyColorimeter", v17);
    [(TVLatencyColorimeterSetupDoneViewController *)self setSubtitle:v18];

    v11 = [UIColor colorWithRed:0.203921569 green:0.470588235 blue:0.964705882 alpha:1.0];
    v12 = @"checkmark.circle";
  }

  [(UIImageView *)self->super._statusImageViewIcon setTintColor:v11];

  v19 = [UIImage systemImageNamed:v12];
  [(UIImageView *)self->super._statusImageViewIcon setImage:v19];
}

- (void)viewDidLoad
{
  v46.receiver = self;
  v46.super_class = TVLatencyColorimeterSetupDoneViewController;
  [(TVLatencyColorimeterSetupDoneViewController *)&v46 viewDidLoad];
  [(TVLatencyColorimeterSetupDoneViewController *)self setDismissalType:3];
  objc_initWeak(&location, self);
  v3 = sub_10012794C(@"Localizable", @"DONE");
  v43[0] = _NSConcreteStackBlock;
  v43[1] = 3221225472;
  v43[2] = sub_100104BB0;
  v43[3] = &unk_1001958D8;
  objc_copyWeak(&v44, &location);
  v41 = [PRXAction actionWithTitle:v3 style:0 handler:v43];

  v4 = [(TVLatencyColorimeterSetupDoneViewController *)self addAction:v41];
  v5 = [UIImageView alloc];
  v6 = [UIImage imageNamed:@"TV_Colorimeter"];
  v7 = [v5 initWithImage:v6];

  [v7 setContentMode:1];
  [v7 setTranslatesAutoresizingMaskIntoConstraints:0];
  contentView = [(TVLatencyColorimeterSetupDoneViewController *)self contentView];
  [contentView addSubview:v7];

  v9 = [UIImageView alloc];
  v10 = [UIImage systemImageNamed:@"exclamationmark.circle"];
  v11 = [v9 initWithImage:v10];
  statusImageViewIcon = self->super._statusImageViewIcon;
  self->super._statusImageViewIcon = v11;

  v13 = +[UIColor systemRedColor];
  [(UIImageView *)self->super._statusImageViewIcon setTintColor:v13];

  [(UIImageView *)self->super._statusImageViewIcon setTranslatesAutoresizingMaskIntoConstraints:0];
  contentView2 = [(TVLatencyColorimeterSetupDoneViewController *)self contentView];
  [contentView2 addSubview:self->super._statusImageViewIcon];

  contentView3 = [(TVLatencyColorimeterSetupDoneViewController *)self contentView];
  mainContentGuide = [contentView3 mainContentGuide];

  topAnchor = [v7 topAnchor];
  topAnchor2 = [mainContentGuide topAnchor];
  v38 = [topAnchor constraintEqualToAnchor:topAnchor2];
  v47[0] = v38;
  bottomAnchor = [v7 bottomAnchor];
  bottomAnchor2 = [mainContentGuide bottomAnchor];
  v35 = [bottomAnchor constraintLessThanOrEqualToAnchor:bottomAnchor2];
  v47[1] = v35;
  leadingAnchor = [v7 leadingAnchor];
  leadingAnchor2 = [mainContentGuide leadingAnchor];
  v32 = [leadingAnchor constraintEqualToAnchor:leadingAnchor2];
  v47[2] = v32;
  trailingAnchor = [v7 trailingAnchor];
  trailingAnchor2 = [mainContentGuide trailingAnchor];
  v29 = [trailingAnchor constraintEqualToAnchor:trailingAnchor2];
  v47[3] = v29;
  heightAnchor = [v7 heightAnchor];
  v27 = [heightAnchor constraintEqualToConstant:150.0];
  v47[4] = v27;
  centerXAnchor = [(UIImageView *)self->super._statusImageViewIcon centerXAnchor];
  centerXAnchor2 = [v7 centerXAnchor];
  v16 = [centerXAnchor constraintEqualToAnchor:centerXAnchor2];
  v47[5] = v16;
  centerYAnchor = [(UIImageView *)self->super._statusImageViewIcon centerYAnchor];
  centerYAnchor2 = [v7 centerYAnchor];
  v19 = [centerYAnchor constraintEqualToAnchor:centerYAnchor2 constant:-6.0];
  v47[6] = v19;
  widthAnchor = [(UIImageView *)self->super._statusImageViewIcon widthAnchor];
  v21 = [widthAnchor constraintEqualToConstant:40.0];
  v47[7] = v21;
  heightAnchor2 = [(UIImageView *)self->super._statusImageViewIcon heightAnchor];
  v23 = [heightAnchor2 constraintEqualToConstant:40.0];
  v47[8] = v23;
  v24 = [NSArray arrayWithObjects:v47 count:9];
  [NSLayoutConstraint activateConstraints:v24];

  objc_destroyWeak(&v44);
  objc_destroyWeak(&location);
}

@end