@interface HSPCDiscoveredAccessoryPickerViewController
- (HSPCDiscoveredAccessoryPickerViewController)initWithCoordinator:(id)a3 config:(id)a4;
- (UIActivityIndicatorView)spinnerView;
- (id)onAccessoryNotListedButton;
- (void)_launchAirportUtility;
- (void)_launchAppStore;
- (void)_presentSoftwareUpdateAlertForAirportExpress;
- (void)configureNextViewController:(id)a3;
- (void)didSelectDiscoveredAccessory:(id)a3;
- (void)didUpdateNumberOfDiscoveredAccessories:(unint64_t)a3;
- (void)viewDidLoad;
@end

@implementation HSPCDiscoveredAccessoryPickerViewController

- (HSPCDiscoveredAccessoryPickerViewController)initWithCoordinator:(id)a3 config:(id)a4
{
  v7 = a3;
  v8 = a4;
  v9 = [HSDiscoveredAccessoryPickerViewController alloc];
  v10 = [v7 accessoryBrowser];
  v11 = [v7 entitlementContext];
  v12 = [v7 setupAccessoryDescription];
  v13 = [v7 matterDeviceSetupRequest];
  v14 = [(HSDiscoveredAccessoryPickerViewController *)v9 initWithAccessoryBrowsingManager:v10 entitlementContext:v11 setupAccessoryDescription:v12 matterDeviceSetupRequest:v13];

  v24.receiver = self;
  v24.super_class = HSPCDiscoveredAccessoryPickerViewController;
  v15 = [(HSPCDiscoveredAccessoryPickerViewController *)&v24 initWithContentView:0];
  v16 = v15;
  if (v15)
  {
    objc_storeStrong(&v15->_coordinator, a3);
    objc_storeStrong(&v16->_config, a4);
    if (([v8 isSetupInitiatedByOtherMatterEcosystem] & 1) != 0 || (objc_msgSend(v7, "home"), v17 = objc_claimAutoreleasedReturnValue(), v17, !v17))
    {
      v18 = HULocalizedString();
      [(HSPCDiscoveredAccessoryPickerViewController *)v16 setTitle:v18];
    }

    else
    {
      v18 = [v7 home];
      v19 = [v18 name];
      v20 = HULocalizedStringWithFormat();
      [(HSPCDiscoveredAccessoryPickerViewController *)v16 setTitle:v20, v19];
    }

    v21 = sub_100063A44(@"HSSetupCodeSubtitlePickAccessory");
    [(HSPCDiscoveredAccessoryPickerViewController *)v16 setSubtitle:v21];

    [(HSDiscoveredAccessoryPickerViewController *)v14 setDiscoveredAccessoryPickerViewControllerDelegate:v16];
    objc_storeStrong(&v16->_contentVC, v14);
    v22 = [(HSPCDiscoveredAccessoryPickerViewController *)v16 addProminentButtonWithTitleKey:@"HSDiscoveredAccessoryGridNotListedButton" target:v16 futureSelector:"onAccessoryNotListedButton"];
  }

  return v16;
}

- (id)onAccessoryNotListedButton
{
  v3 = [(HSPCDiscoveredAccessoryPickerViewController *)self coordinator];
  v4 = [v3 didReceiveDiscoveredAccessory:0 withPayload:0];
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_100030730;
  v7[3] = &unk_1000C5F60;
  v7[4] = self;
  v5 = [v4 flatMap:v7];

  return v5;
}

- (void)configureNextViewController:(id)a3
{
  v3 = a3;
  objc_opt_class();
  v6 = v3;
  if (objc_opt_isKindOfClass())
  {
    v4 = v6;
  }

  else
  {
    v4 = 0;
  }

  v5 = v4;

  [v5 setPage:0];
}

- (void)viewDidLoad
{
  v60.receiver = self;
  v60.super_class = HSPCDiscoveredAccessoryPickerViewController;
  [(HSPCDiscoveredAccessoryPickerViewController *)&v60 viewDidLoad];
  v3 = [(HSPCDiscoveredAccessoryPickerViewController *)self contentVC];
  [(HSPCDiscoveredAccessoryPickerViewController *)self addChildViewController:v3];

  v4 = [(HSPCDiscoveredAccessoryPickerViewController *)self contentView];
  v5 = [(HSPCDiscoveredAccessoryPickerViewController *)self contentVC];
  v6 = [v5 view];
  [v4 addSubview:v6];

  v7 = [(HSPCDiscoveredAccessoryPickerViewController *)self contentVC];
  [v7 didMoveToParentViewController:self];

  v57 = [[UIActivityIndicatorView alloc] initWithActivityIndicatorStyle:101];
  v8 = [(HSPCDiscoveredAccessoryPickerViewController *)self contentView];
  [v8 addSubview:v57];

  [v57 startAnimating];
  [(HSPCDiscoveredAccessoryPickerViewController *)self setSpinnerView:v57];
  v9 = [(HSPCDiscoveredAccessoryPickerViewController *)self contentView];
  v10 = [v9 mainContentGuide];

  v11 = [(HSPCDiscoveredAccessoryPickerViewController *)self contentVC];
  v12 = [v11 view];
  [v12 setTranslatesAutoresizingMaskIntoConstraints:0];

  v55 = [(HSPCDiscoveredAccessoryPickerViewController *)self contentVC];
  v53 = [v55 view];
  v51 = [v53 leftAnchor];
  v49 = [v10 leftAnchor];
  v47 = [v51 constraintEqualToAnchor:v49];
  v62[0] = v47;
  v45 = [(HSPCDiscoveredAccessoryPickerViewController *)self contentVC];
  v43 = [v45 view];
  v42 = [v43 topAnchor];
  v40 = [v10 topAnchor];
  v39 = [v42 constraintEqualToAnchor:v40];
  v62[1] = v39;
  v38 = [(HSPCDiscoveredAccessoryPickerViewController *)self contentVC];
  v37 = [v38 view];
  v13 = [v37 rightAnchor];
  v58 = v10;
  v14 = [v10 rightAnchor];
  v15 = [v13 constraintEqualToAnchor:v14];
  v62[2] = v15;
  v16 = [(HSPCDiscoveredAccessoryPickerViewController *)self contentVC];
  v17 = [v16 view];
  v18 = [v17 bottomAnchor];
  v19 = [v10 bottomAnchor];
  v20 = [v18 constraintEqualToAnchor:v19];
  v62[3] = v20;
  v21 = [NSArray arrayWithObjects:v62 count:4];
  [NSLayoutConstraint activateConstraints:v21];

  v22 = [(HSPCDiscoveredAccessoryPickerViewController *)self spinnerView];
  [v22 setTranslatesAutoresizingMaskIntoConstraints:0];

  v56 = [(HSPCDiscoveredAccessoryPickerViewController *)self spinnerView];
  v54 = [v56 centerXAnchor];
  v52 = [v58 centerXAnchor];
  v50 = [v54 constraintEqualToAnchor:v52];
  v61[0] = v50;
  v48 = [(HSPCDiscoveredAccessoryPickerViewController *)self spinnerView];
  v46 = [v48 centerYAnchor];
  v44 = [v58 centerYAnchor];
  v41 = [v46 constraintEqualToAnchor:v44];
  v61[1] = v41;
  v23 = [(HSPCDiscoveredAccessoryPickerViewController *)self spinnerView];
  v24 = [v23 topAnchor];
  v25 = [v58 topAnchor];
  v26 = [v24 constraintGreaterThanOrEqualToAnchor:v25];
  v61[2] = v26;
  v27 = [(HSPCDiscoveredAccessoryPickerViewController *)self spinnerView];
  v28 = [v27 bottomAnchor];
  v29 = [v58 bottomAnchor];
  v30 = [v28 constraintLessThanOrEqualToAnchor:v29];
  v61[3] = v30;
  v31 = [NSArray arrayWithObjects:v61 count:4];
  [NSLayoutConstraint activateConstraints:v31];

  objc_opt_class();
  v32 = [(HSPCDiscoveredAccessoryPickerViewController *)self contentVC];
  if (objc_opt_isKindOfClass())
  {
    v33 = v32;
  }

  else
  {
    v33 = 0;
  }

  v34 = v33;

  v35 = [v34 hu_preloadContent];

  v59[0] = _NSConcreteStackBlock;
  v59[1] = 3221225472;
  v59[2] = sub_100030E14;
  v59[3] = &unk_1000C6CA0;
  v59[4] = self;
  v36 = [v35 addCompletionBlock:v59];
}

- (void)didSelectDiscoveredAccessory:(id)a3
{
  v4 = a3;
  if (![(HSPCDiscoveredAccessoryPickerViewController *)self shouldIgnoreFutureAccessorySelection])
  {
    [(HSPCDiscoveredAccessoryPickerViewController *)self setShouldIgnoreFutureAccessorySelection:1];
    v5 = HFLogForCategory();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v35 = v4;
      _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "didSelectDiscoveredAccessory, discoveredAccessory %@", buf, 0xCu);
    }

    v6 = [v4 sharingDevice];

    if (v6)
    {
      v7 = [(HSPCDiscoveredAccessoryPickerViewController *)self coordinator];
      v31[0] = _NSConcreteStackBlock;
      v31[1] = 3221225472;
      v31[2] = sub_100031240;
      v31[3] = &unk_1000C5F38;
      v32 = v4;
      v33 = self;
      v8 = [NAFuture futureWithBlock:v31];
      [v7 dismissProxCardFlowAfterExecuting:v8];

      goto LABEL_18;
    }

    if ([v4 requiresSoftwareUpdate])
    {
      v9 = [v4 accessory];
      v10 = [v9 category];
      v11 = [v10 categoryType];
      v12 = [v11 isEqualToString:HMAccessoryCategoryTypeAirPort];

      if (v12)
      {
        [(HSPCDiscoveredAccessoryPickerViewController *)self _presentSoftwareUpdateAlertForAirportExpress];
        goto LABEL_18;
      }
    }

    v13 = [v4 accessory];
    v14 = [v13 category];
    v15 = [v14 categoryType];
    v16 = [v15 isEqualToString:HMAccessoryCategoryTypeWiFiRouter];

    v17 = [(HSPCDiscoveredAccessoryPickerViewController *)self coordinator];
    v18 = [v17 setupAccessoryDescription];

    if (v16)
    {
      [v18 hf_updateWithDiscoveredAccessory:v4];
      v19 = [(HSPCDiscoveredAccessoryPickerViewController *)self navigationController];
      v20 = [[HSPCSetupNetworkRouterAppPunchoutViewController alloc] initWithPopupDelegate:0 setupAccessoryDescription:v18];
      [v19 pushViewController:v20 animated:1];
    }

    else
    {
      v21 = [(HSPCDiscoveredAccessoryPickerViewController *)self coordinator];
      v22 = [v18 setupAccessoryPayload];
      v23 = [v21 shouldShowCustomCommissioningProxCardWithPayload:v22];

      if (!v23)
      {
        v27 = [(HSPCDiscoveredAccessoryPickerViewController *)self coordinator];
        v28 = [v27 didReceiveDiscoveredAccessory:v4 withPayload:0];
        v30[0] = _NSConcreteStackBlock;
        v30[1] = 3221225472;
        v30[2] = sub_100031480;
        v30[3] = &unk_1000C6CA0;
        v30[4] = self;
        v29 = [v28 addCompletionBlock:v30];

        goto LABEL_17;
      }

      v24 = HFLogForCategory();
      if (os_log_type_enabled(v24, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&_mh_execute_header, v24, OS_LOG_TYPE_DEFAULT, "discoveredAccessory matterDeviceTypeID == MTRDeviceTypeIDTypeRoboticVacuumCleanerID. requiresMatterCustomCommissioningFlow: true", buf, 2u);
      }

      [v18 hf_updateWithDiscoveredAccessory:v4];
      v25 = [(HSPCDiscoveredAccessoryPickerViewController *)self navigationController];
      v26 = [[HSPCThirdPartyAppPunchoutViewController alloc] initWithSetupAccessoryDescription:v18];
      [v25 pushViewController:v26 animated:1];

      v19 = [(HSPCDiscoveredAccessoryPickerViewController *)self coordinator];
      [v19 setDidShowCustomCommissioningFlowAlertIfNecessary:1];
    }

LABEL_17:
  }

LABEL_18:
}

- (void)didUpdateNumberOfDiscoveredAccessories:(unint64_t)a3
{
  v4 = [(HSPCDiscoveredAccessoryPickerViewController *)self spinnerView];
  v5 = v4;
  if (a3)
  {
    [v4 stopAnimating];
  }

  else
  {
    [v4 startAnimating];
  }
}

- (void)_presentSoftwareUpdateAlertForAirportExpress
{
  v3 = [LSApplicationProxy applicationProxyForIdentifier:@"com.apple.airport.mobileairportutility"];
  v4 = [v3 appState];
  v5 = [v4 isInstalled];

  if (v5)
  {
    v6 = @"HSTroubleshootingTipOpenAirPortUtilityTitle";
  }

  else
  {
    v6 = @"HSTroubleshootingTipInstallAirPortUtilityTitle";
  }

  if (v5)
  {
    v7 = @"HSTroubleshootingTipOpenAirPortUtilityDescription";
  }

  else
  {
    v7 = @"HSTroubleshootingTipInstallAirPortUtilityDescription";
  }

  if (v5)
  {
    v8 = @"HSTroubleshootingTipOpenAirPortUtilityAction";
  }

  else
  {
    v8 = @"HSTroubleshootingTipInstallAirPortUtilityAction";
  }

  v9 = sub_100063A44(v6);
  v10 = sub_100063A44(v7);
  v11 = sub_100063A44(v8);
  v12 = [UIAlertController alertControllerWithTitle:v9 message:v10 preferredStyle:1];
  if (v5)
  {
    v13 = v20;
    v20[0] = _NSConcreteStackBlock;
    v20[1] = 3221225472;
    v14 = sub_100031758;
  }

  else
  {
    v13 = &v18;
    v18 = _NSConcreteStackBlock;
    v19 = 3221225472;
    v14 = sub_100031760;
  }

  v13[2] = v14;
  v13[3] = &unk_1000C5DE0;
  v13[4] = self;
  v15 = [UIAlertAction actionWithTitle:v11 style:0 handler:v18, v19];
  [v12 addAction:v15];

  v16 = HULocalizedString();
  v17 = [UIAlertAction actionWithTitle:v16 style:1 handler:&stru_1000C6CE0];
  [v12 addAction:v17];

  [(HSPCDiscoveredAccessoryPickerViewController *)self presentViewController:v12 animated:1 completion:0];
}

- (void)_launchAirportUtility
{
  v2 = +[LSApplicationWorkspace defaultWorkspace];
  [v2 openApplicationWithBundleID:@"com.apple.airport.mobileairportutility"];
}

- (void)_launchAppStore
{
  v2 = +[AMSLookup bagSubProfile];
  v3 = +[AMSLookup bagSubProfileVersion];
  v4 = [AMSBag bagForProfile:v2 profileVersion:v3];

  v5 = [AMSLookup alloc];
  v6 = [v5 initWithBag:v4 caller:HFHomeDomain keyProfile:AMSLookupKeyProfileLockup];
  v9 = @"com.apple.airport.mobileairportutility";
  v7 = [NSArray arrayWithObjects:&v9 count:1];
  v8 = [v6 performLookupWithBundleIdentifiers:v7 itemIdentifiers:0];

  [v8 addFinishBlock:&stru_1000C6D20];
}

- (UIActivityIndicatorView)spinnerView
{
  WeakRetained = objc_loadWeakRetained(&self->_spinnerView);

  return WeakRetained;
}

@end