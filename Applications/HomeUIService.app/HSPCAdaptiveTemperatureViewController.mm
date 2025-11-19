@interface HSPCAdaptiveTemperatureViewController
- (HSPCAdaptiveTemperatureViewController)initWithCoordinator:(id)a3 config:(id)a4;
- (UIViewController)featuresHostingViewController;
- (id)_enableAdaptiveTemperature;
- (id)_notNowTapped;
- (void)_hasOnboardedForAdaptiveTemperatureWithCompletion:(id)a3;
- (void)preferredContentSizeDidChangeForChildContentContainer:(id)a3;
- (void)viewDidLoad;
@end

@implementation HSPCAdaptiveTemperatureViewController

- (HSPCAdaptiveTemperatureViewController)initWithCoordinator:(id)a3 config:(id)a4
{
  v7 = a3;
  v8 = a4;
  v12.receiver = self;
  v12.super_class = HSPCAdaptiveTemperatureViewController;
  v9 = [(HSPCAdaptiveTemperatureViewController *)&v12 initWithContentView:0];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_config, a4);
    objc_storeStrong(&v10->_coordinator, a3);
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

  v9 = [(HSPCAdaptiveTemperatureViewController *)self featuresHostingViewController];
  v10 = [v9 view];

  [v10 setTranslatesAutoresizingMaskIntoConstraints:0];
  v11 = [(HSPCAdaptiveTemperatureViewController *)self contentView];
  [v11 addSubview:v10];

  v12 = [(HSPCAdaptiveTemperatureViewController *)self contentView];
  v13 = [v12 mainContentGuide];

  v26 = [v10 topAnchor];
  v25 = [v13 topAnchor];
  v24 = [v26 constraintEqualToAnchor:v25];
  v28[0] = v24;
  v23 = [v10 bottomAnchor];
  v22 = [v13 bottomAnchor];
  v14 = [v23 constraintEqualToAnchor:v22];
  v28[1] = v14;
  v15 = [v10 trailingAnchor];
  v16 = [v13 trailingAnchor];
  v17 = [v15 constraintEqualToAnchor:v16];
  v28[2] = v17;
  v18 = [v10 leadingAnchor];
  v19 = [v13 leadingAnchor];
  v20 = [v18 constraintEqualToAnchor:v19];
  v28[3] = v20;
  v21 = [NSArray arrayWithObjects:v28 count:4];
  [NSLayoutConstraint activateConstraints:v21];
}

- (void)preferredContentSizeDidChangeForChildContentContainer:(id)a3
{
  v3.receiver = self;
  v3.super_class = HSPCAdaptiveTemperatureViewController;
  [(HSPCAdaptiveTemperatureViewController *)&v3 preferredContentSizeDidChangeForChildContentContainer:a3];
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

- (void)_hasOnboardedForAdaptiveTemperatureWithCompletion:(id)a3
{
  v4 = a3;
  v5 = [(HSPCAdaptiveTemperatureViewController *)self config];
  v6 = [v5 addedAccessory];
  v7 = [v6 hf_setHasOnboardedForAdaptiveTemperature];
  v10[0] = _NSConcreteStackBlock;
  v10[1] = 3221225472;
  v10[2] = sub_100024414;
  v10[3] = &unk_1000C65F8;
  v10[4] = self;
  v11 = v4;
  v8 = v4;
  v9 = [v7 addCompletionBlock:v10];
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