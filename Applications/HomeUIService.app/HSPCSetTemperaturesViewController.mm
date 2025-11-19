@interface HSPCSetTemperaturesViewController
- (HSPCSetTemperaturesViewController)initWithCoordinator:(id)a3 config:(id)a4;
- (UIViewController)temperaturePreferencesHostingController;
- (id)_hasOnboardedForAdaptiveTemperature;
- (void)preferredContentSizeDidChangeForChildContentContainer:(id)a3;
- (void)viewDidLoad;
@end

@implementation HSPCSetTemperaturesViewController

- (HSPCSetTemperaturesViewController)initWithCoordinator:(id)a3 config:(id)a4
{
  v7 = a3;
  v8 = a4;
  v12.receiver = self;
  v12.super_class = HSPCSetTemperaturesViewController;
  v9 = [(HSPCSetTemperaturesViewController *)&v12 initWithContentView:0];
  v10 = [v8 addedAccessory];
  [(HSPCSetTemperaturesViewController *)v9 setAddedAccessory:v10];

  if (v9)
  {
    objc_storeStrong(&v9->_config, a4);
    objc_storeStrong(&v9->_coordinator, a3);
  }

  return v9;
}

- (void)viewDidLoad
{
  v25.receiver = self;
  v25.super_class = HSPCSetTemperaturesViewController;
  [(HSPCSetTemperaturesViewController *)&v25 viewDidLoad];
  v3 = sub_100063A44(@"HSThermostatSetTemperatures_Title");
  [(HSPCSetTemperaturesViewController *)self setTitle:v3];

  v4 = sub_100063A44(@"HSThermostatSetTemperatures_Description");
  [(HSPCSetTemperaturesViewController *)self setSubtitle:v4];

  v5 = sub_100063A44(@"HSThermostatContinue");
  v6 = [(HSPCSetTemperaturesViewController *)self addProminentButtonWithTitleKey:v5 target:self futureSelector:"commitConfiguration"];

  v7 = [(HSPCSetTemperaturesViewController *)self temperaturePreferencesHostingController];
  v8 = [v7 view];

  [v8 setTranslatesAutoresizingMaskIntoConstraints:0];
  v9 = [(HSPCSetTemperaturesViewController *)self contentView];
  [v9 addSubview:v8];

  v10 = [(HSPCSetTemperaturesViewController *)self contentView];
  v11 = [v10 mainContentGuide];

  v24 = [v8 topAnchor];
  v23 = [v11 topAnchor];
  v22 = [v24 constraintEqualToAnchor:v23];
  v26[0] = v22;
  v21 = [v8 bottomAnchor];
  v20 = [v11 bottomAnchor];
  v12 = [v21 constraintEqualToAnchor:v20];
  v26[1] = v12;
  v13 = [v8 trailingAnchor];
  v14 = [v11 trailingAnchor];
  v15 = [v13 constraintEqualToAnchor:v14];
  v26[2] = v15;
  v16 = [v8 leadingAnchor];
  v17 = [v11 leadingAnchor];
  v18 = [v16 constraintEqualToAnchor:v17];
  v26[3] = v18;
  v19 = [NSArray arrayWithObjects:v26 count:4];
  [NSLayoutConstraint activateConstraints:v19];
}

- (void)preferredContentSizeDidChangeForChildContentContainer:(id)a3
{
  v3.receiver = self;
  v3.super_class = HSPCSetTemperaturesViewController;
  [(HSPCSetTemperaturesViewController *)&v3 preferredContentSizeDidChangeForChildContentContainer:a3];
}

- (id)_hasOnboardedForAdaptiveTemperature
{
  objc_initWeak(&location, self);
  v4[0] = _NSConcreteStackBlock;
  v4[1] = 3221225472;
  v4[2] = sub_1000228B0;
  v4[3] = &unk_1000C6580;
  objc_copyWeak(&v5, &location);
  v2 = [NAFuture futureWithBlock:v4];
  objc_destroyWeak(&v5);
  objc_destroyWeak(&location);

  return v2;
}

- (UIViewController)temperaturePreferencesHostingController
{
  v2 = self;
  v3 = HSPCSetTemperaturesViewController.temperaturePreferencesHostingController.getter();

  return v3;
}

@end