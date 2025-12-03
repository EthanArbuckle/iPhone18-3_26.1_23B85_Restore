@interface CARAirPlayLoggingPanel
- (CARAirPlayLoggingSettingProvider)settingProvider;
- (id)_loggingButtonTitleForLoggingEnabled:(BOOL)enabled;
- (void)_toggleLoggingEnabled;
- (void)viewDidLoad;
@end

@implementation CARAirPlayLoggingPanel

- (void)viewDidLoad
{
  v48.receiver = self;
  v48.super_class = CARAirPlayLoggingPanel;
  [(CARSettingsPanel *)&v48 viewDidLoad];
  view = [(CARAirPlayLoggingPanel *)self view];
  panelController = [(CARSettingsPanel *)self panelController];
  vehicleVideoSettings = [panelController vehicleVideoSettings];

  settingProvider = [(CARAirPlayLoggingPanel *)self settingProvider];
  if (objc_opt_respondsToSelector())
  {
    isAirPlayLoggingEnabled = [settingProvider isAirPlayLoggingEnabled];
  }

  else
  {
    isAirPlayLoggingEnabled = 0;
  }

  objc_initWeak(&location, self);
  v5 = objc_alloc_init(UITextView);
  [v5 setTranslatesAutoresizingMaskIntoConstraints:0];
  v6 = sub_10001C80C(@"VIDEO_LOGGING_DISCLOSURE");
  [v5 setText:v6];

  [v5 setTextAlignment:4];
  v7 = +[UIColor labelColor];
  [v5 setTextColor:v7];

  v8 = [UIFont preferredFontForTextStyle:UIFontTextStyleFootnote];
  [v5 setFont:v8];

  [v5 setEditable:0];
  [v5 setSelectable:0];
  backgroundColor = [view backgroundColor];
  [v5 setBackgroundColor:backgroundColor];

  [view addSubview:v5];
  v41 = [(CARAirPlayLoggingPanel *)self _loggingButtonTitleForLoggingEnabled:isAirPlayLoggingEnabled];
  v43 = +[UIButtonConfiguration grayButtonConfiguration];
  v10 = +[UIColor labelColor];
  [v43 setBaseForegroundColor:v10];

  v45[0] = _NSConcreteStackBlock;
  v45[1] = 3221225472;
  v45[2] = sub_10001EF00;
  v45[3] = &unk_1000DB4A0;
  objc_copyWeak(&v46, &location);
  v11 = [UIAction actionWithHandler:v45];
  v12 = [UIButton buttonWithConfiguration:v43 primaryAction:v11];

  [v12 setTranslatesAutoresizingMaskIntoConstraints:0];
  [v12 setTitle:v41 forState:0];
  [v12 setTag:isAirPlayLoggingEnabled ^ 1];
  objc_storeStrong(&self->_enableLoggingButton, v12);
  [view addSubview:v12];
  topAnchor = [v5 topAnchor];
  safeAreaLayoutGuide = [view safeAreaLayoutGuide];
  topAnchor2 = [safeAreaLayoutGuide topAnchor];
  v37 = [topAnchor constraintEqualToSystemSpacingBelowAnchor:topAnchor2 multiplier:1.0];
  v49[0] = v37;
  leadingAnchor = [v5 leadingAnchor];
  safeAreaLayoutGuide2 = [view safeAreaLayoutGuide];
  leadingAnchor2 = [safeAreaLayoutGuide2 leadingAnchor];
  v33 = [leadingAnchor constraintEqualToSystemSpacingAfterAnchor:leadingAnchor2 multiplier:2.0];
  v49[1] = v33;
  safeAreaLayoutGuide3 = [view safeAreaLayoutGuide];
  trailingAnchor = [safeAreaLayoutGuide3 trailingAnchor];
  trailingAnchor2 = [v5 trailingAnchor];
  v29 = [trailingAnchor constraintEqualToSystemSpacingAfterAnchor:trailingAnchor2 multiplier:2.0];
  v49[2] = v29;
  centerXAnchor = [v12 centerXAnchor];
  centerXAnchor2 = [view centerXAnchor];
  v26 = [centerXAnchor constraintEqualToAnchor:centerXAnchor2];
  v49[3] = v26;
  widthAnchor = [v12 widthAnchor];
  safeAreaLayoutGuide4 = [view safeAreaLayoutGuide];
  widthAnchor2 = [safeAreaLayoutGuide4 widthAnchor];
  v22 = [widthAnchor constraintLessThanOrEqualToAnchor:widthAnchor2];
  v49[4] = v22;
  topAnchor3 = [v12 topAnchor];
  bottomAnchor = [v5 bottomAnchor];
  v15 = [topAnchor3 constraintEqualToSystemSpacingBelowAnchor:bottomAnchor multiplier:1.0];
  v49[5] = v15;
  safeAreaLayoutGuide5 = [view safeAreaLayoutGuide];
  bottomAnchor2 = [safeAreaLayoutGuide5 bottomAnchor];
  bottomAnchor3 = [v12 bottomAnchor];
  v19 = [bottomAnchor2 constraintEqualToSystemSpacingBelowAnchor:bottomAnchor3 multiplier:2.0];
  v49[6] = v19;
  v20 = [NSArray arrayWithObjects:v49 count:7];
  [view addConstraints:v20];

  objc_destroyWeak(&v46);
  objc_destroyWeak(&location);
}

- (id)_loggingButtonTitleForLoggingEnabled:(BOOL)enabled
{
  if (enabled)
  {
    v3 = @"VIDEO_LOGGING_TURN_OFF";
  }

  else
  {
    v3 = @"VIDEO_LOGGING_TURN_ON";
  }

  v4 = sub_10001C80C(v3);

  return v4;
}

- (void)_toggleLoggingEnabled
{
  enableLoggingButton = [(CARAirPlayLoggingPanel *)self enableLoggingButton];
  v3 = [enableLoggingButton tag];
  settingProvider = [(CARAirPlayLoggingPanel *)self settingProvider];
  if (objc_opt_respondsToSelector())
  {
    [settingProvider setAirPlayLoggingEnabled:v3 == 1];
  }

  v5 = v3 == 1;
  v6 = v3 != 1;
  v7 = v5;
  v8 = [(CARAirPlayLoggingPanel *)self _loggingButtonTitleForLoggingEnabled:v7];
  [enableLoggingButton setTitle:v8 forState:0];
  [enableLoggingButton setTag:v6];
}

- (CARAirPlayLoggingSettingProvider)settingProvider
{
  WeakRetained = objc_loadWeakRetained(&self->_settingProvider);

  return WeakRetained;
}

@end