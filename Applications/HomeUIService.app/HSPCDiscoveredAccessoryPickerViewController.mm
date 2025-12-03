@interface HSPCDiscoveredAccessoryPickerViewController
- (HSPCDiscoveredAccessoryPickerViewController)initWithCoordinator:(id)coordinator config:(id)config;
- (UIActivityIndicatorView)spinnerView;
- (id)onAccessoryNotListedButton;
- (void)_launchAirportUtility;
- (void)_launchAppStore;
- (void)_presentSoftwareUpdateAlertForAirportExpress;
- (void)configureNextViewController:(id)controller;
- (void)didSelectDiscoveredAccessory:(id)accessory;
- (void)didUpdateNumberOfDiscoveredAccessories:(unint64_t)accessories;
- (void)viewDidLoad;
@end

@implementation HSPCDiscoveredAccessoryPickerViewController

- (HSPCDiscoveredAccessoryPickerViewController)initWithCoordinator:(id)coordinator config:(id)config
{
  coordinatorCopy = coordinator;
  configCopy = config;
  v9 = [HSDiscoveredAccessoryPickerViewController alloc];
  accessoryBrowser = [coordinatorCopy accessoryBrowser];
  entitlementContext = [coordinatorCopy entitlementContext];
  setupAccessoryDescription = [coordinatorCopy setupAccessoryDescription];
  matterDeviceSetupRequest = [coordinatorCopy matterDeviceSetupRequest];
  v14 = [(HSDiscoveredAccessoryPickerViewController *)v9 initWithAccessoryBrowsingManager:accessoryBrowser entitlementContext:entitlementContext setupAccessoryDescription:setupAccessoryDescription matterDeviceSetupRequest:matterDeviceSetupRequest];

  v24.receiver = self;
  v24.super_class = HSPCDiscoveredAccessoryPickerViewController;
  v15 = [(HSPCDiscoveredAccessoryPickerViewController *)&v24 initWithContentView:0];
  v16 = v15;
  if (v15)
  {
    objc_storeStrong(&v15->_coordinator, coordinator);
    objc_storeStrong(&v16->_config, config);
    if (([configCopy isSetupInitiatedByOtherMatterEcosystem] & 1) != 0 || (objc_msgSend(coordinatorCopy, "home"), v17 = objc_claimAutoreleasedReturnValue(), v17, !v17))
    {
      home = HULocalizedString();
      [(HSPCDiscoveredAccessoryPickerViewController *)v16 setTitle:home];
    }

    else
    {
      home = [coordinatorCopy home];
      name = [home name];
      v20 = HULocalizedStringWithFormat();
      [(HSPCDiscoveredAccessoryPickerViewController *)v16 setTitle:v20, name];
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
  coordinator = [(HSPCDiscoveredAccessoryPickerViewController *)self coordinator];
  v4 = [coordinator didReceiveDiscoveredAccessory:0 withPayload:0];
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_100030730;
  v7[3] = &unk_1000C5F60;
  v7[4] = self;
  v5 = [v4 flatMap:v7];

  return v5;
}

- (void)configureNextViewController:(id)controller
{
  controllerCopy = controller;
  objc_opt_class();
  v6 = controllerCopy;
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
  contentVC = [(HSPCDiscoveredAccessoryPickerViewController *)self contentVC];
  [(HSPCDiscoveredAccessoryPickerViewController *)self addChildViewController:contentVC];

  contentView = [(HSPCDiscoveredAccessoryPickerViewController *)self contentView];
  contentVC2 = [(HSPCDiscoveredAccessoryPickerViewController *)self contentVC];
  view = [contentVC2 view];
  [contentView addSubview:view];

  contentVC3 = [(HSPCDiscoveredAccessoryPickerViewController *)self contentVC];
  [contentVC3 didMoveToParentViewController:self];

  v57 = [[UIActivityIndicatorView alloc] initWithActivityIndicatorStyle:101];
  contentView2 = [(HSPCDiscoveredAccessoryPickerViewController *)self contentView];
  [contentView2 addSubview:v57];

  [v57 startAnimating];
  [(HSPCDiscoveredAccessoryPickerViewController *)self setSpinnerView:v57];
  contentView3 = [(HSPCDiscoveredAccessoryPickerViewController *)self contentView];
  mainContentGuide = [contentView3 mainContentGuide];

  contentVC4 = [(HSPCDiscoveredAccessoryPickerViewController *)self contentVC];
  view2 = [contentVC4 view];
  [view2 setTranslatesAutoresizingMaskIntoConstraints:0];

  contentVC5 = [(HSPCDiscoveredAccessoryPickerViewController *)self contentVC];
  view3 = [contentVC5 view];
  leftAnchor = [view3 leftAnchor];
  leftAnchor2 = [mainContentGuide leftAnchor];
  v47 = [leftAnchor constraintEqualToAnchor:leftAnchor2];
  v62[0] = v47;
  contentVC6 = [(HSPCDiscoveredAccessoryPickerViewController *)self contentVC];
  view4 = [contentVC6 view];
  topAnchor = [view4 topAnchor];
  topAnchor2 = [mainContentGuide topAnchor];
  v39 = [topAnchor constraintEqualToAnchor:topAnchor2];
  v62[1] = v39;
  contentVC7 = [(HSPCDiscoveredAccessoryPickerViewController *)self contentVC];
  view5 = [contentVC7 view];
  rightAnchor = [view5 rightAnchor];
  v58 = mainContentGuide;
  rightAnchor2 = [mainContentGuide rightAnchor];
  v15 = [rightAnchor constraintEqualToAnchor:rightAnchor2];
  v62[2] = v15;
  contentVC8 = [(HSPCDiscoveredAccessoryPickerViewController *)self contentVC];
  view6 = [contentVC8 view];
  bottomAnchor = [view6 bottomAnchor];
  bottomAnchor2 = [mainContentGuide bottomAnchor];
  v20 = [bottomAnchor constraintEqualToAnchor:bottomAnchor2];
  v62[3] = v20;
  v21 = [NSArray arrayWithObjects:v62 count:4];
  [NSLayoutConstraint activateConstraints:v21];

  spinnerView = [(HSPCDiscoveredAccessoryPickerViewController *)self spinnerView];
  [spinnerView setTranslatesAutoresizingMaskIntoConstraints:0];

  spinnerView2 = [(HSPCDiscoveredAccessoryPickerViewController *)self spinnerView];
  centerXAnchor = [spinnerView2 centerXAnchor];
  centerXAnchor2 = [v58 centerXAnchor];
  v50 = [centerXAnchor constraintEqualToAnchor:centerXAnchor2];
  v61[0] = v50;
  spinnerView3 = [(HSPCDiscoveredAccessoryPickerViewController *)self spinnerView];
  centerYAnchor = [spinnerView3 centerYAnchor];
  centerYAnchor2 = [v58 centerYAnchor];
  v41 = [centerYAnchor constraintEqualToAnchor:centerYAnchor2];
  v61[1] = v41;
  spinnerView4 = [(HSPCDiscoveredAccessoryPickerViewController *)self spinnerView];
  topAnchor3 = [spinnerView4 topAnchor];
  topAnchor4 = [v58 topAnchor];
  v26 = [topAnchor3 constraintGreaterThanOrEqualToAnchor:topAnchor4];
  v61[2] = v26;
  spinnerView5 = [(HSPCDiscoveredAccessoryPickerViewController *)self spinnerView];
  bottomAnchor3 = [spinnerView5 bottomAnchor];
  bottomAnchor4 = [v58 bottomAnchor];
  v30 = [bottomAnchor3 constraintLessThanOrEqualToAnchor:bottomAnchor4];
  v61[3] = v30;
  v31 = [NSArray arrayWithObjects:v61 count:4];
  [NSLayoutConstraint activateConstraints:v31];

  objc_opt_class();
  contentVC9 = [(HSPCDiscoveredAccessoryPickerViewController *)self contentVC];
  if (objc_opt_isKindOfClass())
  {
    v33 = contentVC9;
  }

  else
  {
    v33 = 0;
  }

  v34 = v33;

  hu_preloadContent = [v34 hu_preloadContent];

  v59[0] = _NSConcreteStackBlock;
  v59[1] = 3221225472;
  v59[2] = sub_100030E14;
  v59[3] = &unk_1000C6CA0;
  v59[4] = self;
  v36 = [hu_preloadContent addCompletionBlock:v59];
}

- (void)didSelectDiscoveredAccessory:(id)accessory
{
  accessoryCopy = accessory;
  if (![(HSPCDiscoveredAccessoryPickerViewController *)self shouldIgnoreFutureAccessorySelection])
  {
    [(HSPCDiscoveredAccessoryPickerViewController *)self setShouldIgnoreFutureAccessorySelection:1];
    v5 = HFLogForCategory();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v35 = accessoryCopy;
      _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "didSelectDiscoveredAccessory, discoveredAccessory %@", buf, 0xCu);
    }

    sharingDevice = [accessoryCopy sharingDevice];

    if (sharingDevice)
    {
      coordinator = [(HSPCDiscoveredAccessoryPickerViewController *)self coordinator];
      v31[0] = _NSConcreteStackBlock;
      v31[1] = 3221225472;
      v31[2] = sub_100031240;
      v31[3] = &unk_1000C5F38;
      v32 = accessoryCopy;
      selfCopy = self;
      v8 = [NAFuture futureWithBlock:v31];
      [coordinator dismissProxCardFlowAfterExecuting:v8];

      goto LABEL_18;
    }

    if ([accessoryCopy requiresSoftwareUpdate])
    {
      accessory = [accessoryCopy accessory];
      category = [accessory category];
      categoryType = [category categoryType];
      v12 = [categoryType isEqualToString:HMAccessoryCategoryTypeAirPort];

      if (v12)
      {
        [(HSPCDiscoveredAccessoryPickerViewController *)self _presentSoftwareUpdateAlertForAirportExpress];
        goto LABEL_18;
      }
    }

    accessory2 = [accessoryCopy accessory];
    category2 = [accessory2 category];
    categoryType2 = [category2 categoryType];
    v16 = [categoryType2 isEqualToString:HMAccessoryCategoryTypeWiFiRouter];

    coordinator2 = [(HSPCDiscoveredAccessoryPickerViewController *)self coordinator];
    setupAccessoryDescription = [coordinator2 setupAccessoryDescription];

    if (v16)
    {
      [setupAccessoryDescription hf_updateWithDiscoveredAccessory:accessoryCopy];
      navigationController = [(HSPCDiscoveredAccessoryPickerViewController *)self navigationController];
      v20 = [[HSPCSetupNetworkRouterAppPunchoutViewController alloc] initWithPopupDelegate:0 setupAccessoryDescription:setupAccessoryDescription];
      [navigationController pushViewController:v20 animated:1];
    }

    else
    {
      coordinator3 = [(HSPCDiscoveredAccessoryPickerViewController *)self coordinator];
      setupAccessoryPayload = [setupAccessoryDescription setupAccessoryPayload];
      v23 = [coordinator3 shouldShowCustomCommissioningProxCardWithPayload:setupAccessoryPayload];

      if (!v23)
      {
        coordinator4 = [(HSPCDiscoveredAccessoryPickerViewController *)self coordinator];
        v28 = [coordinator4 didReceiveDiscoveredAccessory:accessoryCopy withPayload:0];
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

      [setupAccessoryDescription hf_updateWithDiscoveredAccessory:accessoryCopy];
      navigationController2 = [(HSPCDiscoveredAccessoryPickerViewController *)self navigationController];
      v26 = [[HSPCThirdPartyAppPunchoutViewController alloc] initWithSetupAccessoryDescription:setupAccessoryDescription];
      [navigationController2 pushViewController:v26 animated:1];

      navigationController = [(HSPCDiscoveredAccessoryPickerViewController *)self coordinator];
      [navigationController setDidShowCustomCommissioningFlowAlertIfNecessary:1];
    }

LABEL_17:
  }

LABEL_18:
}

- (void)didUpdateNumberOfDiscoveredAccessories:(unint64_t)accessories
{
  spinnerView = [(HSPCDiscoveredAccessoryPickerViewController *)self spinnerView];
  v5 = spinnerView;
  if (accessories)
  {
    [spinnerView stopAnimating];
  }

  else
  {
    [spinnerView startAnimating];
  }
}

- (void)_presentSoftwareUpdateAlertForAirportExpress
{
  v3 = [LSApplicationProxy applicationProxyForIdentifier:@"com.apple.airport.mobileairportutility"];
  appState = [v3 appState];
  isInstalled = [appState isInstalled];

  if (isInstalled)
  {
    v6 = @"HSTroubleshootingTipOpenAirPortUtilityTitle";
  }

  else
  {
    v6 = @"HSTroubleshootingTipInstallAirPortUtilityTitle";
  }

  if (isInstalled)
  {
    v7 = @"HSTroubleshootingTipOpenAirPortUtilityDescription";
  }

  else
  {
    v7 = @"HSTroubleshootingTipInstallAirPortUtilityDescription";
  }

  if (isInstalled)
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
  if (isInstalled)
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