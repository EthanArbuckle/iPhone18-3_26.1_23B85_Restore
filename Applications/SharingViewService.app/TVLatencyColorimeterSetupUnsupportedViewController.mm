@interface TVLatencyColorimeterSetupUnsupportedViewController
- (void)_handleDismissButton;
- (void)viewDidDisappear:(BOOL)a3;
- (void)viewDidLoad;
- (void)viewWillAppear:(BOOL)a3;
@end

@implementation TVLatencyColorimeterSetupUnsupportedViewController

- (void)_handleDismissButton
{
  if (dword_1001BEA68 <= 30 && (dword_1001BEA68 != -1 || _LogCategory_Initialize()))
  {
    LogPrintF();
  }

  v3 = [(TVLatencyColorimeterSetupBaseViewController *)self mainController];
  [v3 dismiss:5];
}

- (void)viewDidDisappear:(BOOL)a3
{
  v3 = a3;
  if (dword_1001BEA68 <= 30 && (dword_1001BEA68 != -1 || _LogCategory_Initialize()))
  {
    LogPrintF();
  }

  v5.receiver = self;
  v5.super_class = TVLatencyColorimeterSetupUnsupportedViewController;
  [(TVLatencyColorimeterSetupUnsupportedViewController *)&v5 viewDidDisappear:v3];
}

- (void)viewWillAppear:(BOOL)a3
{
  v3 = a3;
  if (dword_1001BEA68 <= 30 && (dword_1001BEA68 != -1 || _LogCategory_Initialize()))
  {
    LogPrintF();
  }

  v5.receiver = self;
  v5.super_class = TVLatencyColorimeterSetupUnsupportedViewController;
  [(TVLatencyColorimeterSetupUnsupportedViewController *)&v5 viewWillAppear:v3];
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
  v13 = [(TVLatencyColorimeterSetupUnsupportedViewController *)self contentView];
  [v13 addSubview:v12];

  v14 = [UIImageView alloc];
  v15 = [UIImage systemImageNamed:@"exclamationmark.circle"];
  v16 = [v14 initWithImage:v15];
  statusImageViewIcon = self->super._statusImageViewIcon;
  self->super._statusImageViewIcon = v16;

  v18 = +[UIColor systemRedColor];
  [(UIImageView *)self->super._statusImageViewIcon setTintColor:v18];

  [(UIImageView *)self->super._statusImageViewIcon setTranslatesAutoresizingMaskIntoConstraints:0];
  v19 = [(TVLatencyColorimeterSetupUnsupportedViewController *)self contentView];
  [v19 addSubview:self->super._statusImageViewIcon];

  v20 = [(TVLatencyColorimeterSetupUnsupportedViewController *)self contentView];
  v47 = [v20 mainContentGuide];

  v45 = [v12 topAnchor];
  v44 = [v47 topAnchor];
  v43 = [v45 constraintEqualToAnchor:v44];
  v52[0] = v43;
  v42 = [v12 bottomAnchor];
  v41 = [v47 bottomAnchor];
  v40 = [v42 constraintLessThanOrEqualToAnchor:v41];
  v52[1] = v40;
  v39 = [v12 leadingAnchor];
  v38 = [v47 leadingAnchor];
  v37 = [v39 constraintEqualToAnchor:v38];
  v52[2] = v37;
  v36 = [v12 trailingAnchor];
  v35 = [v47 trailingAnchor];
  v34 = [v36 constraintEqualToAnchor:v35];
  v52[3] = v34;
  v33 = [v12 heightAnchor];
  v32 = [v33 constraintEqualToConstant:150.0];
  v52[4] = v32;
  v31 = [(UIImageView *)self->super._statusImageViewIcon centerXAnchor];
  v30 = [v12 centerXAnchor];
  v21 = [v31 constraintEqualToAnchor:v30];
  v52[5] = v21;
  v22 = [(UIImageView *)self->super._statusImageViewIcon centerYAnchor];
  v23 = [v12 centerYAnchor];
  v24 = [v22 constraintEqualToAnchor:v23 constant:-6.0];
  v52[6] = v24;
  v25 = [(UIImageView *)self->super._statusImageViewIcon widthAnchor];
  v26 = [v25 constraintEqualToConstant:40.0];
  v52[7] = v26;
  v27 = [(UIImageView *)self->super._statusImageViewIcon heightAnchor];
  v28 = [v27 constraintEqualToConstant:40.0];
  v52[8] = v28;
  v29 = [NSArray arrayWithObjects:v52 count:9];
  [NSLayoutConstraint activateConstraints:v29];

  objc_destroyWeak(&v49);
  objc_destroyWeak(&location);
}

@end