@interface HSPCAdaptiveTemperatureViewController
- (HSPCAdaptiveTemperatureViewController)initWithCoordinator:(id)coordinator config:(id)config;
- (UIViewController)featuresHostingViewController;
- (id)_enableAdaptiveTemperature;
- (id)_notNowTapped;
- (void)_hasOnboardedForAdaptiveTemperatureWithCompletion:(id)completion;
- (void)preferredContentSizeDidChangeForChildContentContainer:(id)container;
- (void)viewDidLoad;
@end

@implementation HSPCAdaptiveTemperatureViewController

- (HSPCAdaptiveTemperatureViewController)initWithCoordinator:(id)coordinator config:(id)config
{
  coordinatorCopy = coordinator;
  configCopy = config;
  v12.receiver = self;
  v12.super_class = HSPCAdaptiveTemperatureViewController;
  v9 = [(HSPCAdaptiveTemperatureViewController *)&v12 initWithContentView:0];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_config, config);
    objc_storeStrong(&v10->_coordinator, coordinator);
  }

  return v10;
}

- (void)viewDidLoad
{
  v27.receiver = self;
  v27.super_class = HSPCAdaptiveTemperatureViewController;
  [(HSPCAdaptiveTemperatureViewController *)&v27 viewDidLoad];
  v3 = sub_100063A44(@"HSThermostatAdaptiveTemperature_Title");
  [(HSPCAdaptiveTemperatureViewController *)self setTitle:v3];

  v4 = sub_100063A44(@"HSThermostatAdaptiveTemperature_Description");
  [(HSPCAdaptiveTemperatureViewController *)self setSubtitle:v4];

  v5 = sub_100063A44(@"HSThermostatContinue");
  v6 = [(HSPCAdaptiveTemperatureViewController *)self addProminentButtonWithTitleKey:v5 target:self futureSelector:"commitConfiguration"];

  v7 = sub_100063A44(@"HSThermostatSetUpLater");
  v8 = [(HSPCAdaptiveTemperatureViewController *)self addOptionalButtonWithTitleKey:v7 target:self futureSelector:"_notNowTapped"];

  featuresHostingViewController = [(HSPCAdaptiveTemperatureViewController *)self featuresHostingViewController];
  view = [featuresHostingViewController view];

  [view setTranslatesAutoresizingMaskIntoConstraints:0];
  contentView = [(HSPCAdaptiveTemperatureViewController *)self contentView];
  [contentView addSubview:view];

  contentView2 = [(HSPCAdaptiveTemperatureViewController *)self contentView];
  mainContentGuide = [contentView2 mainContentGuide];

  topAnchor = [view topAnchor];
  topAnchor2 = [mainContentGuide topAnchor];
  v24 = [topAnchor constraintEqualToAnchor:topAnchor2];
  v28[0] = v24;
  bottomAnchor = [view bottomAnchor];
  bottomAnchor2 = [mainContentGuide bottomAnchor];
  v14 = [bottomAnchor constraintEqualToAnchor:bottomAnchor2];
  v28[1] = v14;
  trailingAnchor = [view trailingAnchor];
  trailingAnchor2 = [mainContentGuide trailingAnchor];
  v17 = [trailingAnchor constraintEqualToAnchor:trailingAnchor2];
  v28[2] = v17;
  leadingAnchor = [view leadingAnchor];
  leadingAnchor2 = [mainContentGuide leadingAnchor];
  v20 = [leadingAnchor constraintEqualToAnchor:leadingAnchor2];
  v28[3] = v20;
  v21 = [NSArray arrayWithObjects:v28 count:4];
  [NSLayoutConstraint activateConstraints:v21];
}

- (void)preferredContentSizeDidChangeForChildContentContainer:(id)container
{
  v3.receiver = self;
  v3.super_class = HSPCAdaptiveTemperatureViewController;
  [(HSPCAdaptiveTemperatureViewController *)&v3 preferredContentSizeDidChangeForChildContentContainer:container];
}

- (id)_notNowTapped
{
  v3 = HFLogForCategory();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315138;
    v9 = "[HSPCAdaptiveTemperatureViewController _notNowTapped]";
  }

  objc_initWeak(buf, self);
  v6[0] = _NSConcreteStackBlock;
  v6[1] = 3221225472;
  v6[2] = sub_100023C9C;
  v6[3] = &unk_1000C6580;
  objc_copyWeak(&v7, buf);
  v4 = [NAFuture futureWithBlock:v6];
  objc_destroyWeak(&v7);
  objc_destroyWeak(buf);

  return v4;
}

- (id)_enableAdaptiveTemperature
{
  v3 = HFLogForCategory();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315138;
    v9 = "[HSPCAdaptiveTemperatureViewController _enableAdaptiveTemperature]";
  }

  objc_initWeak(buf, self);
  v6[0] = _NSConcreteStackBlock;
  v6[1] = 3221225472;
  v6[2] = sub_100024078;
  v6[3] = &unk_1000C6580;
  objc_copyWeak(&v7, buf);
  v4 = [NAFuture futureWithBlock:v6];
  objc_destroyWeak(&v7);
  objc_destroyWeak(buf);

  return v4;
}

- (void)_hasOnboardedForAdaptiveTemperatureWithCompletion:(id)completion
{
  completionCopy = completion;
  config = [(HSPCAdaptiveTemperatureViewController *)self config];
  addedAccessory = [config addedAccessory];
  hf_setHasOnboardedForAdaptiveTemperature = [addedAccessory hf_setHasOnboardedForAdaptiveTemperature];
  v10[0] = _NSConcreteStackBlock;
  v10[1] = 3221225472;
  v10[2] = sub_100024414;
  v10[3] = &unk_1000C65F8;
  v10[4] = self;
  v11 = completionCopy;
  v8 = completionCopy;
  v9 = [hf_setHasOnboardedForAdaptiveTemperature addCompletionBlock:v10];
}

- (UIViewController)featuresHostingViewController
{
  v2 = type metadata accessor for UIHostingControllerSizingOptions();
  v3 = *(*(v2 - 8) + 64);
  __chkstk_darwin(v2 - 8);
  v4 = objc_allocWithZone(sub_1000694A0(&qword_1000E6648, &qword_100093278));
  v5 = UIHostingController.init(rootView:)();
  static UIHostingControllerSizingOptions.intrinsicContentSize.getter();
  dispatch thunk of UIHostingController.sizingOptions.setter();

  return v5;
}

@end