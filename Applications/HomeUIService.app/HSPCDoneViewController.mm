@interface HSPCDoneViewController
+ (id)viewControllerForCoordinator:(id)coordinator config:(id)config;
- (BOOL)shouldShowButtonLinkToHomeApp;
- (HSPCDoneViewController)initWithCoordinator:(id)coordinator config:(id)config;
- (id)commitConfiguration;
- (id)launchAdditionalSettings;
@end

@implementation HSPCDoneViewController

+ (id)viewControllerForCoordinator:(id)coordinator config:(id)config
{
  configCopy = config;
  coordinatorCopy = coordinator;
  if ([configCopy isSetupInitiatedByOtherMatterEcosystem])
  {
    v7 = HSPCMatterAccessoryDoneViewController;
  }

  else
  {
    v7 = objc_opt_class();
  }

  v8 = [[v7 alloc] initWithCoordinator:coordinatorCopy config:configCopy];

  return v8;
}

- (HSPCDoneViewController)initWithCoordinator:(id)coordinator config:(id)config
{
  coordinatorCopy = coordinator;
  configCopy = config;
  v9 = [HUHomeAccessoryTileView alloc];
  addedAccessoryItem = [configCopy addedAccessoryItem];
  v11 = [v9 initWithFrame:addedAccessoryItem item:1 iconOnlyTile:{CGRectZero.origin.x, CGRectZero.origin.y, CGRectZero.size.width, CGRectZero.size.height}];

  v48.receiver = self;
  v48.super_class = HSPCDoneViewController;
  v12 = [(HSPCFixedSizeCenterContentViewController *)&v48 initWithCenterContentView:v11];
  v13 = v12;
  if (v12)
  {
    v42 = v11;
    v43 = configCopy;
    objc_storeStrong(&v12->_config, config);
    objc_storeStrong(&v13->_coordinator, coordinator);
    activeTuple = [coordinatorCopy activeTuple];
    numberOfAccessoriesInSameCategory = [coordinatorCopy numberOfAccessoriesInSameCategory];
    v41 = activeTuple;
    accessoryCategoryOrPrimaryServiceType = [activeTuple accessoryCategoryOrPrimaryServiceType];
    v44 = coordinatorCopy;
    setupAccessoryDescription = [coordinatorCopy setupAccessoryDescription];
    setupAccessoryPayload = [setupAccessoryDescription setupAccessoryPayload];
    matterDeviceTypeID = [setupAccessoryPayload matterDeviceTypeID];
    v19 = HFLocalizedCategoryOrPrimaryServiceTypeString();
    config = [(HSPCDoneViewController *)v13 config];
    home = [config home];
    name = [home name];
    v23 = [NSString stringWithFormat:v19, numberOfAccessoriesInSameCategory, name];
    [(HSPCDoneViewController *)v13 setTitle:v23];

    coordinator = [(HSPCDoneViewController *)v13 coordinator];
    topAccessoryTuple = [coordinator topAccessoryTuple];
    accessory = [topAccessoryTuple accessory];

    config2 = [(HSPCDoneViewController *)v13 config];
    home2 = [config2 home];

    hf_walletKeyAccessories = [home2 hf_walletKeyAccessories];
    if ([hf_walletKeyAccessories containsObject:accessory])
    {
      hf_hasWalletKey = [home2 hf_hasWalletKey];
      v45[0] = _NSConcreteStackBlock;
      v45[1] = 3221225472;
      v45[2] = sub_100023270;
      v45[3] = &unk_1000C65A8;
      v46 = v13;
      v47 = accessory;
      v31 = [hf_hasWalletKey addSuccessBlock:v45];

      v32 = v46;
    }

    else
    {
      v32 = HFLogForCategory();
      if (os_log_type_enabled(v32, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138413058;
        v52 = v13;
        v53 = 2080;
        v54 = "[HSPCDoneViewController initWithCoordinator:config:]";
        v55 = 2112;
        v56 = hf_walletKeyAccessories;
        v57 = 2112;
        v58 = accessory;
        _os_log_impl(&_mh_execute_header, v32, OS_LOG_TYPE_DEFAULT, "(%@: %s) Hiding subtitle. walletKeyAccessories: %@, addedAccessory: %@", buf, 0x2Au);
      }
    }

    coordinatorCopy = v44;
    if ([v44 requiresDismissalConfirmation])
    {
      v33 = [(HSPCDoneViewController *)v13 addProminentButtonWithTitleKey:@"HUContinueTitle" target:v13 futureSelector:"commitConfiguration"];
    }

    else
    {
      if ([v44 launchReason] == 1)
      {
        v50[0] = &off_1000CD570;
        v49[0] = HFAnalyticsResumeSetupSelectedOptionKey;
        v49[1] = HFAnalyticsDataAccessoryCategoryTypeKey;
        category = [accessory category];
        categoryType = [category categoryType];
        v50[1] = categoryType;
        v36 = [NSDictionary dictionaryWithObjects:v50 forKeys:v49 count:2];

        [HFAnalytics sendEvent:29 withData:v36];
      }

      v37 = [(HSPCDoneViewController *)v13 addProminentDismissButtonWithTitleKey:@"HUDoneTitle"];
      if ([(HSPCDoneViewController *)v13 shouldShowButtonLinkToHomeApp])
      {
        v38 = [(HSPCDoneViewController *)v13 addOptionalButtonWithTitleKey:@"HUProximityCardSetupAccessoryDoneVCAdditionalSettingsButton" target:v13 futureSelector:"launchAdditionalSettings"];
      }
    }

    v11 = v42;
    configCopy = v43;
  }

  return v13;
}

- (id)commitConfiguration
{
  coordinator = [(HSPCDoneViewController *)self coordinator];
  v3 = [coordinator requiresDismissalConfirmation] ^ 1;

  v4 = [NSNumber numberWithUnsignedInteger:v3];
  v5 = [NAFuture futureWithResult:v4];

  return v5;
}

- (id)launchAdditionalSettings
{
  coordinator = [(HSPCDoneViewController *)self coordinator];
  topAccessoryTuple = [coordinator topAccessoryTuple];
  accessory = [topAccessoryTuple accessory];

  config = [(HSPCDoneViewController *)self config];
  home = [config home];

  v8 = [HFSetupPairingControllerUtilities urlComponentHomeSettingsForAccessory:accessory forHome:home];
  commitConfiguration = [(HSPCDoneViewController *)self commitConfiguration];
  v13[0] = _NSConcreteStackBlock;
  v13[1] = 3221225472;
  v13[2] = sub_100023558;
  v13[3] = &unk_1000C5658;
  v14 = v8;
  v10 = v8;
  v11 = [commitConfiguration addCompletionBlock:v13];

  return commitConfiguration;
}

- (BOOL)shouldShowButtonLinkToHomeApp
{
  v3 = +[HFHomeAppInstallController sharedInstance];
  status = [v3 status];

  if (status)
  {
    return 0;
  }

  coordinator = [(HSPCDoneViewController *)self coordinator];
  launchReason = [coordinator launchReason];

  if (launchReason == 1)
  {
    coordinator2 = [(HSPCDoneViewController *)self coordinator];
    allAccessories = [coordinator2 allAccessories];
    isHUISLaunchedByFirstParty = [allAccessories count] == 1;
  }

  else
  {
    coordinator2 = +[HSAccessoryPairingEventLogger sharedLogger];
    isHUISLaunchedByFirstParty = [coordinator2 isHUISLaunchedByFirstParty];
  }

  return isHUISLaunchedByFirstParty;
}

@end