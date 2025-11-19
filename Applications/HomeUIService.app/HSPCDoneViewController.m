@interface HSPCDoneViewController
+ (id)viewControllerForCoordinator:(id)a3 config:(id)a4;
- (BOOL)shouldShowButtonLinkToHomeApp;
- (HSPCDoneViewController)initWithCoordinator:(id)a3 config:(id)a4;
- (id)commitConfiguration;
- (id)launchAdditionalSettings;
@end

@implementation HSPCDoneViewController

+ (id)viewControllerForCoordinator:(id)a3 config:(id)a4
{
  v5 = a4;
  v6 = a3;
  if ([v5 isSetupInitiatedByOtherMatterEcosystem])
  {
    v7 = HSPCMatterAccessoryDoneViewController;
  }

  else
  {
    v7 = objc_opt_class();
  }

  v8 = [[v7 alloc] initWithCoordinator:v6 config:v5];

  return v8;
}

- (HSPCDoneViewController)initWithCoordinator:(id)a3 config:(id)a4
{
  v7 = a3;
  v8 = a4;
  v9 = [HUHomeAccessoryTileView alloc];
  v10 = [v8 addedAccessoryItem];
  v11 = [v9 initWithFrame:v10 item:1 iconOnlyTile:{CGRectZero.origin.x, CGRectZero.origin.y, CGRectZero.size.width, CGRectZero.size.height}];

  v48.receiver = self;
  v48.super_class = HSPCDoneViewController;
  v12 = [(HSPCFixedSizeCenterContentViewController *)&v48 initWithCenterContentView:v11];
  v13 = v12;
  if (v12)
  {
    v42 = v11;
    v43 = v8;
    objc_storeStrong(&v12->_config, a4);
    objc_storeStrong(&v13->_coordinator, a3);
    v14 = [v7 activeTuple];
    v15 = [v7 numberOfAccessoriesInSameCategory];
    v41 = v14;
    v40 = [v14 accessoryCategoryOrPrimaryServiceType];
    v44 = v7;
    v16 = [v7 setupAccessoryDescription];
    v17 = [v16 setupAccessoryPayload];
    v18 = [v17 matterDeviceTypeID];
    v19 = HFLocalizedCategoryOrPrimaryServiceTypeString();
    v20 = [(HSPCDoneViewController *)v13 config];
    v21 = [v20 home];
    v22 = [v21 name];
    v23 = [NSString stringWithFormat:v19, v15, v22];
    [(HSPCDoneViewController *)v13 setTitle:v23];

    v24 = [(HSPCDoneViewController *)v13 coordinator];
    v25 = [v24 topAccessoryTuple];
    v26 = [v25 accessory];

    v27 = [(HSPCDoneViewController *)v13 config];
    v28 = [v27 home];

    v29 = [v28 hf_walletKeyAccessories];
    if ([v29 containsObject:v26])
    {
      v30 = [v28 hf_hasWalletKey];
      v45[0] = _NSConcreteStackBlock;
      v45[1] = 3221225472;
      v45[2] = sub_100023270;
      v45[3] = &unk_1000C65A8;
      v46 = v13;
      v47 = v26;
      v31 = [v30 addSuccessBlock:v45];

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
        v56 = v29;
        v57 = 2112;
        v58 = v26;
        _os_log_impl(&_mh_execute_header, v32, OS_LOG_TYPE_DEFAULT, "(%@: %s) Hiding subtitle. walletKeyAccessories: %@, addedAccessory: %@", buf, 0x2Au);
      }
    }

    v7 = v44;
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
        v34 = [v26 category];
        v35 = [v34 categoryType];
        v50[1] = v35;
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
    v8 = v43;
  }

  return v13;
}

- (id)commitConfiguration
{
  v2 = [(HSPCDoneViewController *)self coordinator];
  v3 = [v2 requiresDismissalConfirmation] ^ 1;

  v4 = [NSNumber numberWithUnsignedInteger:v3];
  v5 = [NAFuture futureWithResult:v4];

  return v5;
}

- (id)launchAdditionalSettings
{
  v3 = [(HSPCDoneViewController *)self coordinator];
  v4 = [v3 topAccessoryTuple];
  v5 = [v4 accessory];

  v6 = [(HSPCDoneViewController *)self config];
  v7 = [v6 home];

  v8 = [HFSetupPairingControllerUtilities urlComponentHomeSettingsForAccessory:v5 forHome:v7];
  v9 = [(HSPCDoneViewController *)self commitConfiguration];
  v13[0] = _NSConcreteStackBlock;
  v13[1] = 3221225472;
  v13[2] = sub_100023558;
  v13[3] = &unk_1000C5658;
  v14 = v8;
  v10 = v8;
  v11 = [v9 addCompletionBlock:v13];

  return v9;
}

- (BOOL)shouldShowButtonLinkToHomeApp
{
  v3 = +[HFHomeAppInstallController sharedInstance];
  v4 = [v3 status];

  if (v4)
  {
    return 0;
  }

  v6 = [(HSPCDoneViewController *)self coordinator];
  v7 = [v6 launchReason];

  if (v7 == 1)
  {
    v8 = [(HSPCDoneViewController *)self coordinator];
    v9 = [v8 allAccessories];
    v5 = [v9 count] == 1;
  }

  else
  {
    v8 = +[HSAccessoryPairingEventLogger sharedLogger];
    v5 = [v8 isHUISLaunchedByFirstParty];
  }

  return v5;
}

@end