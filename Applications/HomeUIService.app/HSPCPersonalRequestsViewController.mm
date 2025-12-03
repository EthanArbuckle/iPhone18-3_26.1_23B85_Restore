@interface HSPCPersonalRequestsViewController
- (HSPCPersonalRequestsViewController)initWithCoordinator:(id)coordinator config:(id)config;
- (id)_bulletImageWithSystemName:(id)name color:(id)color;
- (id)_enablePersonalRequests;
@end

@implementation HSPCPersonalRequestsViewController

- (HSPCPersonalRequestsViewController)initWithCoordinator:(id)coordinator config:(id)config
{
  coordinatorCopy = coordinator;
  configCopy = config;
  v8 = objc_alloc_init(UITableView);
  [v8 setSeparatorStyle:0];
  v9 = [[PRXScrollableContentView alloc] initWithCardStyle:0 scrollView:v8];
  v62.receiver = self;
  v62.super_class = HSPCPersonalRequestsViewController;
  v10 = [(HSPCPersonalRequestsViewController *)&v62 initWithContentView:v9];
  v11 = v10;
  if (v10)
  {
    [(HSPCPersonalRequestsViewController *)v10 setConfig:configCopy];
    [(HSPCPersonalRequestsViewController *)v11 setCoordinator:coordinatorCopy];
    config = [(HSPCPersonalRequestsViewController *)v11 config];
    delegate = [config delegate];
    config2 = [(HSPCPersonalRequestsViewController *)v11 config];
    v15 = [delegate stateMachineConfigurationGetLaunchReason:config2];

    home = [configCopy home];
    if ([home hf_atleastOneMediaAccessorySupportingJustSiri])
    {
      home2 = [configCopy home];
      if ([home2 siriPhraseOptions] == 2)
      {
        v61 = 1;
      }

      else
      {
        home3 = [configCopy home];
        v61 = [home3 siriPhraseOptions] == 3;
      }
    }

    else
    {
      v61 = 0;
    }

    v19 = HULocalizedString();
    [(HSPCPersonalRequestsViewController *)v11 setTitle:v19];

    v20 = HULocalizedString();
    v21 = [(HSPCPersonalRequestsViewController *)v11 addProminentButtonWithLocalizedTitle:v20 target:v11 futureSelector:"_enablePersonalRequests"];

    v22 = HULocalizedString();
    v23 = [(HSPCPersonalRequestsViewController *)v11 addOptionalButtonWithLocalizedTitle:v22 target:v11 futureSelector:"commitConfiguration"];

    v60 = coordinatorCopy;
    if (v15 == 3 && (-[HSPCPersonalRequestsViewController config](v11, "config"), v24 = objc_claimAutoreleasedReturnValue(), [v24 siriEnabledAccessories], v25 = objc_claimAutoreleasedReturnValue(), v26 = objc_msgSend(v25, "count"), v25, v24, v26 >= 2))
    {
      v27 = HULocalizedString();
    }

    else
    {
      addedAccessory = [configCopy addedAccessory];
      hf_userFriendlyLocalizedLowercaseDescription = [addedAccessory hf_userFriendlyLocalizedLowercaseDescription];
      v27 = HULocalizedStringWithFormat();
    }

    v58 = v27;
    [(HSPCPersonalRequestsViewController *)v11 setSubtitle:v27, hf_userFriendlyLocalizedLowercaseDescription];
    v29 = HULocalizedString();
    [(HSPCPersonalRequestsViewController *)v11 setBottomTrayTitle:v29];

    v30 = HUSiriLocalizedString();
    v31 = +[UIColor systemRedColor];
    v32 = [(HSPCPersonalRequestsViewController *)v11 _bulletImageWithSystemName:@"calendar" color:v31];
    v33 = +[UIColor systemRedColor];
    v34 = [PRXFeature featureWithTitle:v30 detailText:&stru_1000C89F8 icon:v32 tintColor:v33];
    v35 = [(HSPCPersonalRequestsViewController *)v11 addFeature:v34];

    v36 = HUSiriLocalizedString();
    v59 = v9;
    if (v61)
    {
      v37 = HUSiriLocalizedString();

      v36 = v37;
    }

    v38 = +[UIColor systemGreenColor];
    v39 = [(HSPCPersonalRequestsViewController *)v11 _bulletImageWithSystemName:@"message.fill" color:v38];
    v40 = +[UIColor systemGreenColor];
    v41 = [PRXFeature featureWithTitle:v36 detailText:&stru_1000C89F8 icon:v39 tintColor:v40];
    v42 = [(HSPCPersonalRequestsViewController *)v11 addFeature:v41];

    v43 = HUSiriLocalizedString();
    v44 = +[UIColor systemYellowColor];
    v45 = [(HSPCPersonalRequestsViewController *)v11 _bulletImageWithSystemName:@"list.bullet" color:v44];
    v46 = +[UIColor systemYellowColor];
    v47 = [PRXFeature featureWithTitle:v43 detailText:&stru_1000C89F8 icon:v45 tintColor:v46];
    v48 = [(HSPCPersonalRequestsViewController *)v11 addFeature:v47];

    v49 = HUSiriLocalizedString();
    if (v61)
    {
      v50 = HUSiriLocalizedString();

      v49 = v50;
    }

    v51 = +[UIColor systemIndigoColor];
    v52 = [(HSPCPersonalRequestsViewController *)v11 _bulletImageWithSystemName:@"heart.text.square.fill" color:v51];
    v53 = +[UIColor systemIndigoColor];
    v54 = [PRXFeature featureWithTitle:v49 detailText:&stru_1000C89F8 icon:v52 tintColor:v53];
    v55 = [(HSPCPersonalRequestsViewController *)v11 addFeature:v54];

    coordinatorCopy = v60;
    v9 = v59;
  }

  return v11;
}

- (id)_bulletImageWithSystemName:(id)name color:(id)color
{
  colorCopy = color;
  nameCopy = name;
  v7 = +[UIColor systemWhiteColor];
  v8 = [UIImageSymbolConfiguration configurationWithPointSize:22.0];
  v9 = [UIImage hu_systemImageNamed:nameCopy withBackgroundColor:colorCopy symbolColor:v7 size:v8 cornerRadius:40.0 configuration:40.0, 10.0];

  return v9;
}

- (id)_enablePersonalRequests
{
  v3 = HFLogForCategory();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "Enabling personal requests", buf, 2u);
  }

  config = [(HSPCPersonalRequestsViewController *)self config];
  home = [config home];

  currentUser = [home currentUser];
  v7 = [currentUser assistantAccessControlForHome:home];
  v8 = [v7 mutableCopy];
  accessories = [v8 accessories];
  v10 = [NSMutableArray arrayWithArray:accessories];

  config2 = [(HSPCPersonalRequestsViewController *)self config];
  delegate = [config2 delegate];
  config3 = [(HSPCPersonalRequestsViewController *)self config];
  v14 = [delegate stateMachineConfigurationGetLaunchReason:config3];

  if (v14 == 3 && (-[HSPCPersonalRequestsViewController config](self, "config"), v15 = objc_claimAutoreleasedReturnValue(), [v15 siriEnabledAccessories], v16 = objc_claimAutoreleasedReturnValue(), v16, v15, v16))
  {
    config4 = [(HSPCPersonalRequestsViewController *)self config];
    siriEnabledAccessories = [config4 siriEnabledAccessories];
    [v10 na_safeAddObjectsFromArray:siriEnabledAccessories];
  }

  else
  {
    config4 = [(HSPCPersonalRequestsViewController *)self config];
    siriEnabledAccessories = [config4 addedAccessory];
    [v10 na_safeAddObject:siriEnabledAccessories];
  }

  [v8 setAccessories:v10];
  v19 = HFLogForCategory();
  if (os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v34 = v10;
    _os_log_impl(&_mh_execute_header, v19, OS_LOG_TYPE_DEFAULT, "Personal requests will be enabled for accessories: %@, ", buf, 0xCu);
  }

  v28[0] = _NSConcreteStackBlock;
  v28[1] = 3221225472;
  v28[2] = sub_100039630;
  v28[3] = &unk_1000C6990;
  v29 = currentUser;
  v30 = v8;
  v31 = home;
  v20 = home;
  v21 = v8;
  v22 = currentUser;
  v23 = [NAFuture futureWithBlock:v28];
  v32[0] = v23;
  commitConfiguration = [(HSPCPersonalRequestsViewController *)self commitConfiguration];
  v32[1] = commitConfiguration;
  v25 = [NSArray arrayWithObjects:v32 count:2];
  v26 = [NAFuture chainFutures:v25];

  return v26;
}

@end