@interface CARAirPlayLoggingPanel
- (CARAirPlayLoggingSettingProvider)settingProvider;
- (id)_loggingButtonTitleForLoggingEnabled:(BOOL)a3;
- (void)_toggleLoggingEnabled;
- (void)viewDidLoad;
@end

@implementation CARAirPlayLoggingPanel

- (void)viewDidLoad
{
  v48.receiver = self;
  v48.super_class = CARAirPlayLoggingPanel;
  [(CARSettingsPanel *)&v48 viewDidLoad];
  v44 = [(CARAirPlayLoggingPanel *)self view];
  v3 = [(CARSettingsPanel *)self panelController];
  v21 = [v3 vehicleVideoSettings];

  v42 = [(CARAirPlayLoggingPanel *)self settingProvider];
  if (objc_opt_respondsToSelector())
  {
    v4 = [v42 isAirPlayLoggingEnabled];
  }

  else
  {
    v4 = 0;
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
  v9 = [v44 backgroundColor];
  [v5 setBackgroundColor:v9];

  [v44 addSubview:v5];
  v41 = [(CARAirPlayLoggingPanel *)self _loggingButtonTitleForLoggingEnabled:v4];
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
  [v12 setTag:v4 ^ 1];
  objc_storeStrong(&self->_enableLoggingButton, v12);
  [v44 addSubview:v12];
  v39 = [v5 topAnchor];
  v40 = [v44 safeAreaLayoutGuide];
  v38 = [v40 topAnchor];
  v37 = [v39 constraintEqualToSystemSpacingBelowAnchor:v38 multiplier:1.0];
  v49[0] = v37;
  v35 = [v5 leadingAnchor];
  v36 = [v44 safeAreaLayoutGuide];
  v34 = [v36 leadingAnchor];
  v33 = [v35 constraintEqualToSystemSpacingAfterAnchor:v34 multiplier:2.0];
  v49[1] = v33;
  v32 = [v44 safeAreaLayoutGuide];
  v31 = [v32 trailingAnchor];
  v30 = [v5 trailingAnchor];
  v29 = [v31 constraintEqualToSystemSpacingAfterAnchor:v30 multiplier:2.0];
  v49[2] = v29;
  v28 = [v12 centerXAnchor];
  v27 = [v44 centerXAnchor];
  v26 = [v28 constraintEqualToAnchor:v27];
  v49[3] = v26;
  v24 = [v12 widthAnchor];
  v25 = [v44 safeAreaLayoutGuide];
  v23 = [v25 widthAnchor];
  v22 = [v24 constraintLessThanOrEqualToAnchor:v23];
  v49[4] = v22;
  v13 = [v12 topAnchor];
  v14 = [v5 bottomAnchor];
  v15 = [v13 constraintEqualToSystemSpacingBelowAnchor:v14 multiplier:1.0];
  v49[5] = v15;
  v16 = [v44 safeAreaLayoutGuide];
  v17 = [v16 bottomAnchor];
  v18 = [v12 bottomAnchor];
  v19 = [v17 constraintEqualToSystemSpacingBelowAnchor:v18 multiplier:2.0];
  v49[6] = v19;
  v20 = [NSArray arrayWithObjects:v49 count:7];
  [v44 addConstraints:v20];

  objc_destroyWeak(&v46);
  objc_destroyWeak(&location);
}

- (id)_loggingButtonTitleForLoggingEnabled:(BOOL)a3
{
  if (a3)
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
  v9 = [(CARAirPlayLoggingPanel *)self enableLoggingButton];
  v3 = [v9 tag];
  v4 = [(CARAirPlayLoggingPanel *)self settingProvider];
  if (objc_opt_respondsToSelector())
  {
    [v4 setAirPlayLoggingEnabled:v3 == 1];
  }

  v5 = v3 == 1;
  v6 = v3 != 1;
  v7 = v5;
  v8 = [(CARAirPlayLoggingPanel *)self _loggingButtonTitleForLoggingEnabled:v7];
  [v9 setTitle:v8 forState:0];
  [v9 setTag:v6];
}

- (CARAirPlayLoggingSettingProvider)settingProvider
{
  WeakRetained = objc_loadWeakRetained(&self->_settingProvider);

  return WeakRetained;
}

@end