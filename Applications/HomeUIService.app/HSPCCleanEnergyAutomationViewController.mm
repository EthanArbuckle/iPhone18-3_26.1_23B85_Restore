@interface HSPCCleanEnergyAutomationViewController
- (HSPCCleanEnergyAutomationViewController)initWithCoordinator:(id)coordinator config:(id)config;
- (id)_enableCleanEnergyAutomation;
- (id)_notNowTapped;
- (void)_hasOnboardedForCleanEnergyAutomationWithCompletion:(id)completion;
@end

@implementation HSPCCleanEnergyAutomationViewController

- (HSPCCleanEnergyAutomationViewController)initWithCoordinator:(id)coordinator config:(id)config
{
  coordinatorCopy = coordinator;
  configCopy = config;
  v9 = [PRXImageView imageViewWithStyle:0];
  [v9 setContentMode:1];
  [v9 setTranslatesAutoresizingMaskIntoConstraints:0];
  [v9 setSemanticContentAttribute:3];
  v50.receiver = self;
  v50.super_class = HSPCCleanEnergyAutomationViewController;
  v10 = [(HSPCFixedSizeCenterContentViewController *)&v50 initWithCenterContentView:v9 size:120.0, 132.0];
  v11 = v10;
  if (v10)
  {
    v49 = coordinatorCopy;
    objc_storeStrong(&v10->_config, config);
    objc_storeStrong(&v11->_coordinator, coordinator);
    v12 = sub_100063A44(@"HSThermostatCleanEnergy_Title");
    [(HSPCCleanEnergyAutomationViewController *)v11 setTitle:v12];

    v13 = sub_100063A44(@"HSThermostatCleanEnergy_Caption");
    [(HSPCCleanEnergyAutomationViewController *)v11 setBottomTrayTitle:v13];

    v14 = HFLogForCategory();
    if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
    {
      home = [configCopy home];
      hf_hasUtilitySubscription = [home hf_hasUtilitySubscription];
      *buf = 136315394;
      v54 = "[HSPCCleanEnergyAutomationViewController initWithCoordinator:config:]";
      v55 = 1024;
      v56 = hf_hasUtilitySubscription;
      _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_DEFAULT, "(%s): Home has utility subscription: %{BOOL}d", buf, 0x12u);
    }

    home2 = [configCopy home];
    hf_hasUtilitySubscription2 = [home2 hf_hasUtilitySubscription];

    if (hf_hasUtilitySubscription2)
    {
      v19 = @"HSThermostatCleanEnergy_TOUDescription";
    }

    else
    {
      v19 = @"HSThermostatCleanEnergy_Description";
    }

    v20 = sub_100063A44(v19);
    [(HSPCCleanEnergyAutomationViewController *)v11 setSubtitle:v20];

    v21 = sub_100063A44(@"HSThermostatCleanEnergyButton");
    v22 = [(HSPCCleanEnergyAutomationViewController *)v11 addProminentButtonWithTitleKey:v21 target:v11 futureSelector:"commitConfiguration"];

    v23 = sub_100063A44(@"HSThermostatSetUpLater");
    v24 = [(HSPCCleanEnergyAutomationViewController *)v11 addOptionalButtonWithTitleKey:v23 target:v11 futureSelector:"_notNowTapped"];

    v48 = configCopy;
    v25 = +[UIColor systemGreenColor];
    v26 = [v25 colorWithAlphaComponent:0.5];
    v52[0] = v26;
    v27 = +[UIColor systemGreenColor];
    v52[1] = v27;
    v28 = [NSArray arrayWithObjects:v52 count:2];
    v47 = [UIImageSymbolConfiguration configurationWithPaletteColors:v28];

    v29 = objc_opt_new();
    boltImage = v11->_boltImage;
    v11->_boltImage = v29;

    v31 = [UIImage _systemImageNamed:@"bolt.and.sparkles.fill"];
    v32 = [v31 imageByApplyingSymbolConfiguration:v47];
    [(UIImageView *)v11->_boltImage setImage:v32];

    [(UIImageView *)v11->_boltImage setContentMode:1];
    [(UIImageView *)v11->_boltImage setSemanticContentAttribute:3];
    [(UIImageView *)v11->_boltImage setTranslatesAutoresizingMaskIntoConstraints:0];
    [v9 addSubview:v11->_boltImage];
    centerYAnchor = [(UIImageView *)v11->_boltImage centerYAnchor];
    centerYAnchor2 = [v9 centerYAnchor];
    v44 = [centerYAnchor constraintEqualToAnchor:centerYAnchor2];
    v51[0] = v44;
    centerXAnchor = [(UIImageView *)v11->_boltImage centerXAnchor];
    centerXAnchor2 = [v9 centerXAnchor];
    v33 = [centerXAnchor constraintEqualToAnchor:centerXAnchor2];
    v51[1] = v33;
    widthAnchor = [(UIImageView *)v11->_boltImage widthAnchor];
    widthAnchor2 = [v9 widthAnchor];
    v36 = [widthAnchor constraintEqualToAnchor:widthAnchor2 multiplier:1.0];
    v51[2] = v36;
    heightAnchor = [(UIImageView *)v11->_boltImage heightAnchor];
    heightAnchor2 = [v9 heightAnchor];
    v39 = [heightAnchor constraintEqualToAnchor:heightAnchor2 multiplier:0.85];
    v51[3] = v39;
    v40 = [NSArray arrayWithObjects:v51 count:4];
    [NSLayoutConstraint activateConstraints:v40];

    configCopy = v48;
    coordinatorCopy = v49;
  }

  return v11;
}

- (id)_notNowTapped
{
  v3 = HFLogForCategory();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315138;
    v9 = "[HSPCCleanEnergyAutomationViewController _notNowTapped]";
  }

  objc_initWeak(buf, self);
  v6[0] = _NSConcreteStackBlock;
  v6[1] = 3221225472;
  v6[2] = sub_10003ACBC;
  v6[3] = &unk_1000C6580;
  objc_copyWeak(&v7, buf);
  v4 = [NAFuture futureWithBlock:v6];
  objc_destroyWeak(&v7);
  objc_destroyWeak(buf);

  return v4;
}

- (id)_enableCleanEnergyAutomation
{
  v3 = HFLogForCategory();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315138;
    v9 = "[HSPCCleanEnergyAutomationViewController _enableCleanEnergyAutomation]";
  }

  objc_initWeak(buf, self);
  v6[0] = _NSConcreteStackBlock;
  v6[1] = 3221225472;
  v6[2] = sub_10003B040;
  v6[3] = &unk_1000C6580;
  objc_copyWeak(&v7, buf);
  v4 = [NAFuture futureWithBlock:v6];
  objc_destroyWeak(&v7);
  objc_destroyWeak(buf);

  return v4;
}

- (void)_hasOnboardedForCleanEnergyAutomationWithCompletion:(id)completion
{
  completionCopy = completion;
  config = [(HSPCCleanEnergyAutomationViewController *)self config];
  addedAccessory = [config addedAccessory];
  hf_setHasOnboardedForCleanEnergyAutomation = [addedAccessory hf_setHasOnboardedForCleanEnergyAutomation];
  v10[0] = _NSConcreteStackBlock;
  v10[1] = 3221225472;
  v10[2] = sub_10003B338;
  v10[3] = &unk_1000C65F8;
  v10[4] = self;
  v11 = completionCopy;
  v8 = completionCopy;
  v9 = [hf_setHasOnboardedForCleanEnergyAutomation addCompletionBlock:v10];
}

@end