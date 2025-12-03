@interface HSPCSetTemperaturesViewController
- (HSPCSetTemperaturesViewController)initWithCoordinator:(id)coordinator config:(id)config;
- (UIViewController)temperaturePreferencesHostingController;
- (id)_hasOnboardedForAdaptiveTemperature;
- (void)preferredContentSizeDidChangeForChildContentContainer:(id)container;
- (void)viewDidLoad;
@end

@implementation HSPCSetTemperaturesViewController

- (HSPCSetTemperaturesViewController)initWithCoordinator:(id)coordinator config:(id)config
{
  coordinatorCopy = coordinator;
  configCopy = config;
  v12.receiver = self;
  v12.super_class = HSPCSetTemperaturesViewController;
  v9 = [(HSPCSetTemperaturesViewController *)&v12 initWithContentView:0];
  addedAccessory = [configCopy addedAccessory];
  [(HSPCSetTemperaturesViewController *)v9 setAddedAccessory:addedAccessory];

  if (v9)
  {
    objc_storeStrong(&v9->_config, config);
    objc_storeStrong(&v9->_coordinator, coordinator);
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

  temperaturePreferencesHostingController = [(HSPCSetTemperaturesViewController *)self temperaturePreferencesHostingController];
  view = [temperaturePreferencesHostingController view];

  [view setTranslatesAutoresizingMaskIntoConstraints:0];
  contentView = [(HSPCSetTemperaturesViewController *)self contentView];
  [contentView addSubview:view];

  contentView2 = [(HSPCSetTemperaturesViewController *)self contentView];
  mainContentGuide = [contentView2 mainContentGuide];

  topAnchor = [view topAnchor];
  topAnchor2 = [mainContentGuide topAnchor];
  v22 = [topAnchor constraintEqualToAnchor:topAnchor2];
  v26[0] = v22;
  bottomAnchor = [view bottomAnchor];
  bottomAnchor2 = [mainContentGuide bottomAnchor];
  v12 = [bottomAnchor constraintEqualToAnchor:bottomAnchor2];
  v26[1] = v12;
  trailingAnchor = [view trailingAnchor];
  trailingAnchor2 = [mainContentGuide trailingAnchor];
  v15 = [trailingAnchor constraintEqualToAnchor:trailingAnchor2];
  v26[2] = v15;
  leadingAnchor = [view leadingAnchor];
  leadingAnchor2 = [mainContentGuide leadingAnchor];
  v18 = [leadingAnchor constraintEqualToAnchor:leadingAnchor2];
  v26[3] = v18;
  v19 = [NSArray arrayWithObjects:v26 count:4];
  [NSLayoutConstraint activateConstraints:v19];
}

- (void)preferredContentSizeDidChangeForChildContentContainer:(id)container
{
  v3.receiver = self;
  v3.super_class = HSPCSetTemperaturesViewController;
  [(HSPCSetTemperaturesViewController *)&v3 preferredContentSizeDidChangeForChildContentContainer:container];
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
  selfCopy = self;
  v3 = HSPCSetTemperaturesViewController.temperaturePreferencesHostingController.getter();

  return v3;
}

@end