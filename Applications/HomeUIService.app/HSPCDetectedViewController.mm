@interface HSPCDetectedViewController
+ (id)viewControllerForCoordinator:(id)coordinator config:(id)config;
- (HSPCDetectedViewController)initWithCenterContentView:(id)view;
- (HSPCDetectedViewController)initWithCoordinator:(id)coordinator config:(id)config;
- (NSString)prominentButtonLocalizedTitle;
- (id)commitConfiguration;
- (id)handleInstallationGuideURL;
- (id)iconDescriptor;
@end

@implementation HSPCDetectedViewController

+ (id)viewControllerForCoordinator:(id)coordinator config:(id)config
{
  coordinatorCopy = coordinator;
  configCopy = config;
  activeTuple = [coordinatorCopy activeTuple];
  accessoryCategoryOrPrimaryServiceType = [activeTuple accessoryCategoryOrPrimaryServiceType];
  v9 = [accessoryCategoryOrPrimaryServiceType isEqualToString:HMAccessoryCategoryTypeWiFiRouter];

  if (v9)
  {
    v10 = [[HSPCRouterDetectedViewController alloc] initWithCoordinator:coordinatorCopy config:configCopy];
  }

  else
  {
    setupDescription = [configCopy setupDescription];
    setupAccessoryPayload = [setupDescription setupAccessoryPayload];

    if ([setupAccessoryPayload isPaired])
    {
      v13 = HFLogForCategory();
      if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
      {
        sub_100077E98(setupAccessoryPayload, v13);
      }

      v14 = HSPCDetectedPairedAccessoryViewController;
    }

    else
    {
      v14 = objc_opt_class();
    }

    v10 = [[v14 alloc] initWithCoordinator:coordinatorCopy config:configCopy];
  }

  return v10;
}

- (HSPCDetectedViewController)initWithCoordinator:(id)coordinator config:(id)config
{
  coordinatorCopy = coordinator;
  configCopy = config;
  v64.receiver = self;
  v64.super_class = HSPCDetectedViewController;
  v9 = [(HSPCCenterIconViewController *)&v64 initWithCoordinator:coordinatorCopy config:configCopy];
  if (!v9)
  {
    goto LABEL_24;
  }

  v10 = HFLogForCategory();
  v63 = configCopy;
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
  {
    v11 = NSStringFromSelector(a2);
    setupAccessoryDescription = [coordinatorCopy setupAccessoryDescription];
    setupAccessoryPayload = [setupAccessoryDescription setupAccessoryPayload];
    matterDeviceTypeID = [setupAccessoryPayload matterDeviceTypeID];
    setupAccessoryDescription2 = [coordinatorCopy setupAccessoryDescription];
    setupAccessoryPayload2 = [setupAccessoryDescription2 setupAccessoryPayload];
    setupAccessoryDescription3 = [coordinatorCopy setupAccessoryDescription];
    *buf = 138413314;
    v66 = v9;
    v67 = 2112;
    v68 = v11;
    v69 = 2112;
    v70 = matterDeviceTypeID;
    v71 = 2112;
    v72 = setupAccessoryPayload2;
    v73 = 2112;
    v74 = setupAccessoryDescription3;
    _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "%@:%@: matterDeviceTypeID: %@ setupAccessoryPayload: %@ setupAccessoryDescription: %@", buf, 0x34u);

    configCopy = v63;
  }

  activeTuple = [coordinatorCopy activeTuple];
  accessoryCategoryOrPrimaryServiceType = [activeTuple accessoryCategoryOrPrimaryServiceType];
  setupAccessoryDescription4 = [coordinatorCopy setupAccessoryDescription];
  setupAccessoryPayload3 = [setupAccessoryDescription4 setupAccessoryPayload];
  matterDeviceTypeID2 = [setupAccessoryPayload3 matterDeviceTypeID];
  v23 = HFLocalizedCategoryOrPrimaryServiceTypeString();

  activeTuple2 = [coordinatorCopy activeTuple];
  v25 = [activeTuple2 titleForAccessoryWithDefaultValue:v23];
  [(HSPCDetectedViewController *)v9 setTitle:v25];

  addedAccessory = [configCopy addedAccessory];
  v9->_firstDetectedCard = addedAccessory == 0;

  v27 = [[HSNetworkInterfaceManager alloc] initWithAlertHostViewController:v9];
  networkInterfaceManager = v9->_networkInterfaceManager;
  v9->_networkInterfaceManager = v27;

  if (v9->_firstDetectedCard && [coordinatorCopy isUsingCHIPCommunicationProtocol])
  {
    if ([configCopy isSetupInitiatedByOtherMatterEcosystem])
    {
      matterDeviceSetupRequest = [coordinatorCopy matterDeviceSetupRequest];
      ecosystemName = [matterDeviceSetupRequest ecosystemName];
      v31 = HULocalizedStringWithFormat();
      [(HSPCDetectedViewController *)v9 setBottomTrayTitle:v31, ecosystemName];
    }

    else
    {
      matterDeviceSetupRequest = HULocalizedString();
      [(HSPCDetectedViewController *)v9 setBottomTrayTitle:matterDeviceSetupRequest];
    }
  }

  if (v9->_firstDetectedCard)
  {
    config = [(HSPCCenterIconViewController *)v9 config];
    isSetupInitiatedByOtherMatterEcosystem = [config isSetupInitiatedByOtherMatterEcosystem];

    if (!isSetupInitiatedByOtherMatterEcosystem)
    {
      goto LABEL_15;
    }

    coordinator = [(HSPCCenterIconViewController *)v9 coordinator];
    setupAccessoryDescription5 = [coordinator setupAccessoryDescription];
    hf_localizedLaunchingAppName = [setupAccessoryDescription5 hf_localizedLaunchingAppName];

    coordinator2 = [(HSPCCenterIconViewController *)v9 coordinator];
    matterDeviceSetupRequest2 = [coordinator2 matterDeviceSetupRequest];
    ecosystemName2 = [matterDeviceSetupRequest2 ecosystemName];

    setupAccessoryDescription6 = HULocalizedStringWithFormat();
    [(HSPCDetectedViewController *)v9 setSubtitle:setupAccessoryDescription6, hf_localizedLaunchingAppName, ecosystemName2];
  }

  else
  {
    activeTuple3 = [coordinatorCopy activeTuple];
    ecosystemName2 = [activeTuple3 accessoryCategoryOrPrimaryServiceType];
    setupAccessoryDescription6 = [coordinatorCopy setupAccessoryDescription];
    setupAccessoryPayload4 = [setupAccessoryDescription6 setupAccessoryPayload];
    matterDeviceTypeID3 = [setupAccessoryPayload4 matterDeviceTypeID];
    HFLocalizedCategoryOrPrimaryServiceTypeString();
    v43 = v62 = v23;
    topAccessoryTuple = [coordinatorCopy topAccessoryTuple];
    titleForAccessory = [topAccessoryTuple titleForAccessory];
    v46 = [NSString stringWithFormat:v43, titleForAccessory];
    [(HSPCDetectedViewController *)v9 setSubtitle:v46];

    hf_localizedLaunchingAppName = activeTuple3;
    v23 = v62;

    configCopy = v63;
  }

LABEL_15:
  prominentButtonLocalizedTitle = [(HSPCDetectedViewController *)v9 prominentButtonLocalizedTitle];
  v48 = [(HSPCDetectedViewController *)v9 addProminentButtonWithLocalizedTitle:prominentButtonLocalizedTitle target:v9 futureSelector:"commitConfiguration"];

  if (v9->_firstDetectedCard)
  {
    setupDescription = [configCopy setupDescription];
    hf_installationGuideURL = [setupDescription hf_installationGuideURL];

    if (hf_installationGuideURL)
    {
      v51 = [(HSPCDetectedViewController *)v9 addOptionalButtonWithTitleKey:@"HUProximityCardSetupAccessoryDetectedVCInstallationGuideTitle" target:v9 futureSelector:"handleInstallationGuideURL"];
    }
  }

  if (v9->_firstDetectedCard)
  {
    setupDescription2 = [configCopy setupDescription];
    setupAccessoryPayload5 = [setupDescription2 setupAccessoryPayload];

    if (setupAccessoryPayload5)
    {
      v54 = [HFSetupAccessoryResult alloc];
      setupDescription3 = [configCopy setupDescription];
      setupAccessoryPayload6 = [setupDescription3 setupAccessoryPayload];
      v57 = [v54 initWithPayload:setupAccessoryPayload6 hasAddRequest:0];

      error = [v57 error];

      if (error)
      {
        error2 = [v57 error];
        [configCopy setPairingError:error2];
      }
    }
  }

LABEL_24:
  return v9;
}

- (HSPCDetectedViewController)initWithCenterContentView:(id)view
{
  v4.receiver = self;
  v4.super_class = HSPCDetectedViewController;
  return [(HSPCFixedSizeCenterContentViewController *)&v4 initWithCenterContentView:view];
}

- (id)handleInstallationGuideURL
{
  config = [(HSPCCenterIconViewController *)self config];
  setupDescription = [config setupDescription];
  hf_installationGuideURL = [setupDescription hf_installationGuideURL];
  [(HSPCDetectedViewController *)self openURL:hf_installationGuideURL];

  return [NAFuture futureWithResult:&off_1000CD408];
}

- (id)iconDescriptor
{
  coordinator = [(HSPCCenterIconViewController *)self coordinator];
  setupAccessoryDescription = [coordinator setupAccessoryDescription];
  setupAccessoryPayload = [setupAccessoryDescription setupAccessoryPayload];
  matterDeviceTypeID = [setupAccessoryPayload matterDeviceTypeID];

  if (!matterDeviceTypeID || ![matterDeviceTypeID integerValue])
  {
    coordinator2 = [(HSPCCenterIconViewController *)self coordinator];
    discoveredAccessory = [coordinator2 discoveredAccessory];
    accessory = [discoveredAccessory accessory];
    matterDeviceTypeID2 = [accessory matterDeviceTypeID];

    matterDeviceTypeID = matterDeviceTypeID2;
  }

  coordinator3 = [(HSPCCenterIconViewController *)self coordinator];
  activeTuple = [coordinator3 activeTuple];
  accessoryCategoryOrPrimaryServiceType = [activeTuple accessoryCategoryOrPrimaryServiceType];
  v14 = [HFAccessoryType matterDeviceType:matterDeviceTypeID];
  v15 = [HFServiceIconFactory iconDescriptorForAccessoryCategoryOrServiceType:accessoryCategoryOrPrimaryServiceType matterDeviceType:v14];

  coordinator4 = [(HSPCCenterIconViewController *)self coordinator];
  activeTuple2 = [coordinator4 activeTuple];
  accessory2 = [activeTuple2 accessory];
  v19 = [HFServiceIconFactory overrideIconDescriptorForMultiServiceAccessory:accessory2 iconDescriptor:v15];

  return v19;
}

- (NSString)prominentButtonLocalizedTitle
{
  v3 = HULocalizedString();
  config = [(HSPCCenterIconViewController *)self config];
  isSetupInitiatedByOtherMatterEcosystem = [config isSetupInitiatedByOtherMatterEcosystem];

  if (isSetupInitiatedByOtherMatterEcosystem)
  {
    coordinator = [(HSPCCenterIconViewController *)self coordinator];
    matterDeviceSetupRequest = [coordinator matterDeviceSetupRequest];
    ecosystemName = [matterDeviceSetupRequest ecosystemName];

    v13 = ecosystemName;
    v9 = HULocalizedStringWithFormat();

    v3 = v9;
  }

  if ([(HSPCDetectedViewController *)self isFirstDetectedCard])
  {
    v10 = v3;
  }

  else
  {
    v10 = HULocalizedString();
  }

  v11 = v10;

  return v11;
}

- (id)commitConfiguration
{
  coordinator = [(HSPCCenterIconViewController *)self coordinator];
  matterDeviceSetupRequest = [coordinator matterDeviceSetupRequest];
  setupPayload = [matterDeviceSetupRequest setupPayload];
  manualEntryCode = [setupPayload manualEntryCode];

  coordinator2 = [(HSPCCenterIconViewController *)self coordinator];
  matterDeviceSetupRequest2 = [coordinator2 matterDeviceSetupRequest];
  setupPayload2 = [matterDeviceSetupRequest2 setupPayload];
  v10 = [setupPayload2 qrCodeString:0];

  if ([manualEntryCode length])
  {
    v11 = [v10 length] == 0;
  }

  else
  {
    v11 = 0;
  }

  v12 = +[NAFuture futureWithNoResult];
  if (v11)
  {
    coordinator3 = [(HSPCCenterIconViewController *)self coordinator];
    v14 = [coordinator3 didReceiveSetupCode:manualEntryCode withPayload:0 fromViewController:self];

    v12 = v14;
  }

  config = [(HSPCCenterIconViewController *)self config];
  isSetupInitiatedByOtherMatterEcosystem = [config isSetupInitiatedByOtherMatterEcosystem];

  if (isSetupInitiatedByOtherMatterEcosystem)
  {
    coordinator4 = [(HSPCCenterIconViewController *)self coordinator];
    matterDeviceSetupRequest3 = [coordinator4 matterDeviceSetupRequest];
    topology = [matterDeviceSetupRequest3 topology];

    v20 = HFLogForCategory();
    if (os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT))
    {
      homes = [topology homes];
      *buf = 136315394;
      v29 = "[HSPCDetectedViewController commitConfiguration]";
      v30 = 2112;
      v31 = homes;
      _os_log_impl(&_mh_execute_header, v20, OS_LOG_TYPE_DEFAULT, "%s topology homes %@", buf, 0x16u);
    }
  }

  v27[0] = _NSConcreteStackBlock;
  v27[1] = 3221225472;
  v27[2] = sub_10001656C;
  v27[3] = &unk_1000C5F60;
  v27[4] = self;
  v22 = [v12 flatMap:v27];
  v23 = [v22 flatMap:&stru_1000C5FA0];
  v26[0] = _NSConcreteStackBlock;
  v26[1] = 3221225472;
  v26[2] = sub_1000166B0;
  v26[3] = &unk_1000C5998;
  v26[4] = self;
  v24 = [v23 recover:v26];

  return v24;
}

@end