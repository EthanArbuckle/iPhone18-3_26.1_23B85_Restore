@interface HSPCCleanEnergyAutomationViewController
- (HSPCCleanEnergyAutomationViewController)initWithCoordinator:(id)a3 config:(id)a4;
- (id)_enableCleanEnergyAutomation;
- (id)_notNowTapped;
- (void)_hasOnboardedForCleanEnergyAutomationWithCompletion:(id)a3;
@end

@implementation HSPCCleanEnergyAutomationViewController

- (HSPCCleanEnergyAutomationViewController)initWithCoordinator:(id)a3 config:(id)a4
{
  v7 = a3;
  v8 = a4;
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
    v49 = v7;
    objc_storeStrong(&v10->_config, a4);
    objc_storeStrong(&v11->_coordinator, a3);
    v12 = sub_100063A44(@"HSThermostatCleanEnergy_Title");
    [(HSPCCleanEnergyAutomationViewController *)v11 setTitle:v12];

    v13 = sub_100063A44(@"HSThermostatCleanEnergy_Caption");
    [(HSPCCleanEnergyAutomationViewController *)v11 setBottomTrayTitle:v13];

    v14 = HFLogForCategory();
    if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
    {
      v15 = [v8 home];
      v16 = [v15 hf_hasUtilitySubscription];
      *buf = 136315394;
      v54 = "[HSPCCleanEnergyAutomationViewController initWithCoordinator:config:]";
      v55 = 1024;
      v56 = v16;
      _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_DEFAULT, "(%s): Home has utility subscription: %{BOOL}d", buf, 0x12u);
    }

    v17 = [v8 home];
    v18 = [v17 hf_hasUtilitySubscription];

    if (v18)
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

    v48 = v8;
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
    v46 = [(UIImageView *)v11->_boltImage centerYAnchor];
    v45 = [v9 centerYAnchor];
    v44 = [v46 constraintEqualToAnchor:v45];
    v51[0] = v44;
    v43 = [(UIImageView *)v11->_boltImage centerXAnchor];
    v42 = [v9 centerXAnchor];
    v33 = [v43 constraintEqualToAnchor:v42];
    v51[1] = v33;
    v34 = [(UIImageView *)v11->_boltImage widthAnchor];
    v35 = [v9 widthAnchor];
    v36 = [v34 constraintEqualToAnchor:v35 multiplier:1.0];
    v51[2] = v36;
    v37 = [(UIImageView *)v11->_boltImage heightAnchor];
    v38 = [v9 heightAnchor];
    v39 = [v37 constraintEqualToAnchor:v38 multiplier:0.85];
    v51[3] = v39;
    v40 = [NSArray arrayWithObjects:v51 count:4];
    [NSLayoutConstraint activateConstraints:v40];

    v8 = v48;
    v7 = v49;
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

- (void)_hasOnboardedForCleanEnergyAutomationWithCompletion:(id)a3
{
  v4 = a3;
  v5 = [(HSPCCleanEnergyAutomationViewController *)self config];
  v6 = [v5 addedAccessory];
  v7 = [v6 hf_setHasOnboardedForCleanEnergyAutomation];
  v10[0] = _NSConcreteStackBlock;
  v10[1] = 3221225472;
  v10[2] = sub_10003B338;
  v10[3] = &unk_1000C65F8;
  v10[4] = self;
  v11 = v4;
  v8 = v4;
  v9 = [v7 addCompletionBlock:v10];
}

@end