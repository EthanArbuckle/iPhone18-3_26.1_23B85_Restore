@interface HSPCDetectedViewController
+ (id)viewControllerForCoordinator:(id)a3 config:(id)a4;
- (HSPCDetectedViewController)initWithCenterContentView:(id)a3;
- (HSPCDetectedViewController)initWithCoordinator:(id)a3 config:(id)a4;
- (NSString)prominentButtonLocalizedTitle;
- (id)commitConfiguration;
- (id)handleInstallationGuideURL;
- (id)iconDescriptor;
@end

@implementation HSPCDetectedViewController

+ (id)viewControllerForCoordinator:(id)a3 config:(id)a4
{
  v5 = a3;
  v6 = a4;
  v7 = [v5 activeTuple];
  v8 = [v7 accessoryCategoryOrPrimaryServiceType];
  v9 = [v8 isEqualToString:HMAccessoryCategoryTypeWiFiRouter];

  if (v9)
  {
    v10 = [[HSPCRouterDetectedViewController alloc] initWithCoordinator:v5 config:v6];
  }

  else
  {
    v11 = [v6 setupDescription];
    v12 = [v11 setupAccessoryPayload];

    if ([v12 isPaired])
    {
      v13 = HFLogForCategory();
      if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
      {
        sub_100077E98(v12, v13);
      }

      v14 = HSPCDetectedPairedAccessoryViewController;
    }

    else
    {
      v14 = objc_opt_class();
    }

    v10 = [[v14 alloc] initWithCoordinator:v5 config:v6];
  }

  return v10;
}

- (HSPCDetectedViewController)initWithCoordinator:(id)a3 config:(id)a4
{
  v7 = a3;
  v8 = a4;
  v64.receiver = self;
  v64.super_class = HSPCDetectedViewController;
  v9 = [(HSPCCenterIconViewController *)&v64 initWithCoordinator:v7 config:v8];
  if (!v9)
  {
    goto LABEL_24;
  }

  v10 = HFLogForCategory();
  v63 = v8;
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
  {
    v11 = NSStringFromSelector(a2);
    v12 = [v7 setupAccessoryDescription];
    v13 = [v12 setupAccessoryPayload];
    v14 = [v13 matterDeviceTypeID];
    v15 = [v7 setupAccessoryDescription];
    v16 = [v15 setupAccessoryPayload];
    v17 = [v7 setupAccessoryDescription];
    *buf = 138413314;
    v66 = v9;
    v67 = 2112;
    v68 = v11;
    v69 = 2112;
    v70 = v14;
    v71 = 2112;
    v72 = v16;
    v73 = 2112;
    v74 = v17;
    _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "%@:%@: matterDeviceTypeID: %@ setupAccessoryPayload: %@ setupAccessoryDescription: %@", buf, 0x34u);

    v8 = v63;
  }

  v18 = [v7 activeTuple];
  v19 = [v18 accessoryCategoryOrPrimaryServiceType];
  v20 = [v7 setupAccessoryDescription];
  v21 = [v20 setupAccessoryPayload];
  v22 = [v21 matterDeviceTypeID];
  v23 = HFLocalizedCategoryOrPrimaryServiceTypeString();

  v24 = [v7 activeTuple];
  v25 = [v24 titleForAccessoryWithDefaultValue:v23];
  [(HSPCDetectedViewController *)v9 setTitle:v25];

  v26 = [v8 addedAccessory];
  v9->_firstDetectedCard = v26 == 0;

  v27 = [[HSNetworkInterfaceManager alloc] initWithAlertHostViewController:v9];
  networkInterfaceManager = v9->_networkInterfaceManager;
  v9->_networkInterfaceManager = v27;

  if (v9->_firstDetectedCard && [v7 isUsingCHIPCommunicationProtocol])
  {
    if ([v8 isSetupInitiatedByOtherMatterEcosystem])
    {
      v29 = [v7 matterDeviceSetupRequest];
      v30 = [v29 ecosystemName];
      v31 = HULocalizedStringWithFormat();
      [(HSPCDetectedViewController *)v9 setBottomTrayTitle:v31, v30];
    }

    else
    {
      v29 = HULocalizedString();
      [(HSPCDetectedViewController *)v9 setBottomTrayTitle:v29];
    }
  }

  if (v9->_firstDetectedCard)
  {
    v32 = [(HSPCCenterIconViewController *)v9 config];
    v33 = [v32 isSetupInitiatedByOtherMatterEcosystem];

    if (!v33)
    {
      goto LABEL_15;
    }

    v34 = [(HSPCCenterIconViewController *)v9 coordinator];
    v35 = [v34 setupAccessoryDescription];
    v36 = [v35 hf_localizedLaunchingAppName];

    v37 = [(HSPCCenterIconViewController *)v9 coordinator];
    v38 = [v37 matterDeviceSetupRequest];
    v39 = [v38 ecosystemName];

    v40 = HULocalizedStringWithFormat();
    [(HSPCDetectedViewController *)v9 setSubtitle:v40, v36, v39];
  }

  else
  {
    v61 = [v7 activeTuple];
    v39 = [v61 accessoryCategoryOrPrimaryServiceType];
    v40 = [v7 setupAccessoryDescription];
    v41 = [v40 setupAccessoryPayload];
    v42 = [v41 matterDeviceTypeID];
    HFLocalizedCategoryOrPrimaryServiceTypeString();
    v43 = v62 = v23;
    v44 = [v7 topAccessoryTuple];
    v45 = [v44 titleForAccessory];
    v46 = [NSString stringWithFormat:v43, v45];
    [(HSPCDetectedViewController *)v9 setSubtitle:v46];

    v36 = v61;
    v23 = v62;

    v8 = v63;
  }

LABEL_15:
  v47 = [(HSPCDetectedViewController *)v9 prominentButtonLocalizedTitle];
  v48 = [(HSPCDetectedViewController *)v9 addProminentButtonWithLocalizedTitle:v47 target:v9 futureSelector:"commitConfiguration"];

  if (v9->_firstDetectedCard)
  {
    v49 = [v8 setupDescription];
    v50 = [v49 hf_installationGuideURL];

    if (v50)
    {
      v51 = [(HSPCDetectedViewController *)v9 addOptionalButtonWithTitleKey:@"HUProximityCardSetupAccessoryDetectedVCInstallationGuideTitle" target:v9 futureSelector:"handleInstallationGuideURL"];
    }
  }

  if (v9->_firstDetectedCard)
  {
    v52 = [v8 setupDescription];
    v53 = [v52 setupAccessoryPayload];

    if (v53)
    {
      v54 = [HFSetupAccessoryResult alloc];
      v55 = [v8 setupDescription];
      v56 = [v55 setupAccessoryPayload];
      v57 = [v54 initWithPayload:v56 hasAddRequest:0];

      v58 = [v57 error];

      if (v58)
      {
        v59 = [v57 error];
        [v8 setPairingError:v59];
      }
    }
  }

LABEL_24:
  return v9;
}

- (HSPCDetectedViewController)initWithCenterContentView:(id)a3
{
  v4.receiver = self;
  v4.super_class = HSPCDetectedViewController;
  return [(HSPCFixedSizeCenterContentViewController *)&v4 initWithCenterContentView:a3];
}

- (id)handleInstallationGuideURL
{
  v3 = [(HSPCCenterIconViewController *)self config];
  v4 = [v3 setupDescription];
  v5 = [v4 hf_installationGuideURL];
  [(HSPCDetectedViewController *)self openURL:v5];

  return [NAFuture futureWithResult:&off_1000CD408];
}

- (id)iconDescriptor
{
  v3 = [(HSPCCenterIconViewController *)self coordinator];
  v4 = [v3 setupAccessoryDescription];
  v5 = [v4 setupAccessoryPayload];
  v6 = [v5 matterDeviceTypeID];

  if (!v6 || ![v6 integerValue])
  {
    v7 = [(HSPCCenterIconViewController *)self coordinator];
    v8 = [v7 discoveredAccessory];
    v9 = [v8 accessory];
    v10 = [v9 matterDeviceTypeID];

    v6 = v10;
  }

  v11 = [(HSPCCenterIconViewController *)self coordinator];
  v12 = [v11 activeTuple];
  v13 = [v12 accessoryCategoryOrPrimaryServiceType];
  v14 = [HFAccessoryType matterDeviceType:v6];
  v15 = [HFServiceIconFactory iconDescriptorForAccessoryCategoryOrServiceType:v13 matterDeviceType:v14];

  v16 = [(HSPCCenterIconViewController *)self coordinator];
  v17 = [v16 activeTuple];
  v18 = [v17 accessory];
  v19 = [HFServiceIconFactory overrideIconDescriptorForMultiServiceAccessory:v18 iconDescriptor:v15];

  return v19;
}

- (NSString)prominentButtonLocalizedTitle
{
  v3 = HULocalizedString();
  v4 = [(HSPCCenterIconViewController *)self config];
  v5 = [v4 isSetupInitiatedByOtherMatterEcosystem];

  if (v5)
  {
    v6 = [(HSPCCenterIconViewController *)self coordinator];
    v7 = [v6 matterDeviceSetupRequest];
    v8 = [v7 ecosystemName];

    v13 = v8;
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
  v3 = [(HSPCCenterIconViewController *)self coordinator];
  v4 = [v3 matterDeviceSetupRequest];
  v5 = [v4 setupPayload];
  v6 = [v5 manualEntryCode];

  v7 = [(HSPCCenterIconViewController *)self coordinator];
  v8 = [v7 matterDeviceSetupRequest];
  v9 = [v8 setupPayload];
  v10 = [v9 qrCodeString:0];

  if ([v6 length])
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
    v13 = [(HSPCCenterIconViewController *)self coordinator];
    v14 = [v13 didReceiveSetupCode:v6 withPayload:0 fromViewController:self];

    v12 = v14;
  }

  v15 = [(HSPCCenterIconViewController *)self config];
  v16 = [v15 isSetupInitiatedByOtherMatterEcosystem];

  if (v16)
  {
    v17 = [(HSPCCenterIconViewController *)self coordinator];
    v18 = [v17 matterDeviceSetupRequest];
    v19 = [v18 topology];

    v20 = HFLogForCategory();
    if (os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT))
    {
      v21 = [v19 homes];
      *buf = 136315394;
      v29 = "[HSPCDetectedViewController commitConfiguration]";
      v30 = 2112;
      v31 = v21;
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