@interface HSProximityCardHostViewController
- (BOOL)_didPRXActuallyDismiss;
- (BOOL)isLaunchedToSetupASpecificAccessory;
- (HSProximityCardHostViewController)init;
- (id)_allHomesDescription:(id)description;
- (id)viewControllerForCoordinator:(id)coordinator step:(int64_t)step;
- (unint64_t)coordinatorGetNumberOfProxCards:(id)cards;
- (unint64_t)supportedInterfaceOrientations;
- (void)_cleanup;
- (void)_initiateSetupFlow:(id)flow;
- (void)_presentProxCardFlowWithInitialViewController:(id)controller;
- (void)_refreshHomeGraphWithCompletion:(id)completion;
- (void)_updatePairingStatusIfNecessary:(id)necessary phase:(unint64_t)phase;
- (void)_willAppearInRemoteViewController;
- (void)configuratorDidFinish:(id)finish;
- (void)configuratorDidUpdateViewController:(id)controller;
- (void)configureWithContext:(id)context completion:(id)completion;
- (void)coordinator:(id)coordinator updatedConfiguration:(id)configuration;
- (void)coordinatorRequestedDismissal:(id)dismissal;
- (void)didInvalidateForRemoteAlert;
- (void)dismissViewControllerAnimated:(BOOL)animated completion:(id)completion;
- (void)onSetupAccessoryDescription:(id)description matterDeviceSetupRequest:(id)request;
- (void)pairingController:(id)controller didTransitionToPhase:(unint64_t)phase statusTitle:(id)title statusDescription:(id)description;
- (void)pairingPopupDidCancel:(id)cancel;
- (void)pairingPopupDidFinish:(id)finish;
- (void)proxCardFlowDidDismiss;
- (void)proxCardFlowWillPresent;
- (void)viewDidLoad;
@end

@implementation HSProximityCardHostViewController

- (BOOL)isLaunchedToSetupASpecificAccessory
{
  setupAccessoryDescription = [(HSProximityCardHostViewController *)self setupAccessoryDescription];
  hf_isKeyedToASpecificAccessory = [setupAccessoryDescription hf_isKeyedToASpecificAccessory];

  return hf_isKeyedToASpecificAccessory;
}

- (HSProximityCardHostViewController)init
{
  v9.receiver = self;
  v9.super_class = HSProximityCardHostViewController;
  v2 = [(HSProximityCardHostViewController *)&v9 init];
  if (v2)
  {
    v3 = objc_alloc_init(SFClient);
    sharingFrameworkClient = v2->_sharingFrameworkClient;
    v2->_sharingFrameworkClient = v3;

    v5 = v2->_sharingFrameworkClient;
    v7[0] = _NSConcreteStackBlock;
    v7[1] = 3221225472;
    v7[2] = sub_1000502A8;
    v7[3] = &unk_1000C77E0;
    v8 = v2;
    [(SFClient *)v5 startProxCardTransactionWithOptions:0 completion:v7];
  }

  return v2;
}

- (void)_refreshHomeGraphWithCompletion:(id)completion
{
  completionCopy = completion;
  v5 = +[NSDate distantFuture];
  v6 = +[NSDate now];
  v7 = +[HFHomeKitDispatcher sharedDispatcher];
  homeManager = [v7 homeManager];
  v12[0] = _NSConcreteStackBlock;
  v12[1] = 3221225472;
  v12[2] = sub_100050430;
  v12[3] = &unk_1000C7998;
  v13 = v6;
  selfCopy = self;
  v15 = completionCopy;
  v9 = completionCopy;
  v10 = v6;
  v11 = [homeManager _refreshBeforeDate:v5 completionHandler:v12];
}

- (void)configureWithContext:(id)context completion:(id)completion
{
  contextCopy = context;
  completionCopy = completion;
  v8 = completionCopy;
  if (completionCopy)
  {
    (*(completionCopy + 2))(completionCopy);
  }

  _remoteViewControllerProxy = [(HSProximityCardHostViewController *)self _remoteViewControllerProxy];
  [_remoteViewControllerProxy setAllowsAlertStacking:1];
  userInfo = [contextCopy userInfo];
  [(HSProximityCardHostViewController *)self setLaunchReason:[HUHomeUIServiceLaunchUserInfo launchReasonFromUserInfo:userInfo]];
  v11 = +[HSAccessoryPairingEventLogger sharedLogger];
  [v11 logHUISLaunchWithReason:-[HSProximityCardHostViewController launchReason](self accessoryDescription:{"launchReason"), 0}];

  v12 = HFLogForCategory();
  if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315394;
    v22 = "[HSProximityCardHostViewController configureWithContext:completion:]";
    v23 = 2112;
    v24 = userInfo;
    _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEFAULT, "%s userInfo %@", buf, 0x16u);
  }

  if (![(HSProximityCardHostViewController *)self launchReason])
  {
    v13 = [[HMSetupAccessoryDescription alloc] initWithDictionaryRepresentation:userInfo];
    if (!v13)
    {
      v16 = HFLogForCategory();
      if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
      {
        sub_10007ACD4();
      }

      v17 = [NSException exceptionWithName:NSInvalidArgumentException reason:@"Failed to initialize setup accessory description from SBSRemoteAlertConfigurationContext user info" userInfo:0];
      objc_exception_throw(v17);
    }

    v15 = [[MTSDeviceSetupRequest alloc] initWithDictionaryRepresentation:userInfo];
    [(HSProximityCardHostViewController *)self onSetupAccessoryDescription:v13 matterDeviceSetupRequest:v15];

    goto LABEL_16;
  }

  if ([(HSProximityCardHostViewController *)self launchReason]== 1 || [(HSProximityCardHostViewController *)self launchReason]== 2 || [(HSProximityCardHostViewController *)self launchReason]== 3 || [(HSProximityCardHostViewController *)self launchReason]== 7 || [(HSProximityCardHostViewController *)self launchReason]== 4 || [(HSProximityCardHostViewController *)self launchReason]== 5 || [(HSProximityCardHostViewController *)self launchReason]== 6)
  {
    v13 = [userInfo objectForKeyedSubscript:HUHomeUIServiceLaunchHomeUUIDString];
    v14 = [v13 copy];
    [(HSProximityCardHostViewController *)self setResumeSetupHomeUUIDString:v14];

    objc_initWeak(buf, self);
    v18[0] = _NSConcreteStackBlock;
    v18[1] = 3221225472;
    v18[2] = sub_100050BA4;
    v18[3] = &unk_1000C7A30;
    objc_copyWeak(&v20, buf);
    v19 = userInfo;
    [(HSProximityCardHostViewController *)self _refreshHomeGraphWithCompletion:v18];

    objc_destroyWeak(&v20);
    objc_destroyWeak(buf);
LABEL_16:
  }
}

- (unint64_t)supportedInterfaceOrientations
{
  traitCollection = [(HSProximityCardHostViewController *)self traitCollection];
  if ([traitCollection userInterfaceIdiom] == 1)
  {
    v3 = 30;
  }

  else
  {
    v3 = 2;
  }

  return v3;
}

- (void)viewDidLoad
{
  v8.receiver = self;
  v8.super_class = HSProximityCardHostViewController;
  [(HSProximityCardHostViewController *)&v8 viewDidLoad];
  v3 = +[UIColor hf_keyColor];
  v4 = +[UIApplication sharedApplication];
  keyWindow = [v4 keyWindow];
  [keyWindow setTintColor:v3];

  v6 = +[NSMutableArray array];
  [(HSProximityCardHostViewController *)self setConfigurators:v6];

  v7 = HFLogForCategory();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315138;
    v10 = "[HSProximityCardHostViewController viewDidLoad]";
    _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "%s", buf, 0xCu);
  }
}

- (void)proxCardFlowWillPresent
{
  v3 = HFLogForCategory();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    v5 = 136315138;
    v6 = "[HSProximityCardHostViewController proxCardFlowWillPresent]";
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "%s", &v5, 0xCu);
  }

  _remoteViewControllerProxy = [(HSProximityCardHostViewController *)self _remoteViewControllerProxy];
  [_remoteViewControllerProxy setStatusBarHidden:1 withDuration:0.0];
  [_remoteViewControllerProxy setIdleTimerDisabled:1 forReason:@"HMSetup"];
}

- (void)proxCardFlowDidDismiss
{
  v3 = HFLogForCategory();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    v4 = 136315138;
    v5 = "[HSProximityCardHostViewController proxCardFlowDidDismiss]";
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "%s", &v4, 0xCu);
  }

  if ([(HSProximityCardHostViewController *)self _didPRXActuallyDismiss])
  {
    [(HSProximityCardHostViewController *)self _cleanup];
  }
}

- (BOOL)_didPRXActuallyDismiss
{
  proxNavigationController = [(HSProximityCardHostViewController *)self proxNavigationController];
  presentedViewController = [proxNavigationController presentedViewController];

  if (presentedViewController)
  {
    v4 = [presentedViewController modalPresentationStyle] != 0;
  }

  else
  {
    v4 = 1;
  }

  return v4;
}

- (void)coordinator:(id)coordinator updatedConfiguration:(id)configuration
{
  coordinatorCopy = coordinator;
  configurationCopy = configuration;
  coordinator = [(HSProximityCardHostViewController *)self coordinator];
  activeTuple = [coordinator activeTuple];
  currentStep = [activeTuple currentStep];

  v11 = HFLogForCategory();
  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
  {
    v12 = objc_opt_class();
    v13 = NSStringFromClass(v12);
    v14 = [HSSetupContentProvider stringForHSProxCardSetupUIStep:currentStep];
    *buf = 138413058;
    v28 = v13;
    v29 = 1024;
    v30 = 329;
    v31 = 2080;
    v32 = "[HSProximityCardHostViewController coordinator:updatedConfiguration:]";
    v33 = 2112;
    v34 = v14;
    _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "%@ %d %s: %@", buf, 0x26u);
  }

  coordinator2 = [(HSProximityCardHostViewController *)self coordinator];
  v16 = coordinator2 == coordinatorCopy;

  if (!v16)
  {
    NSLog(@"Not the same coordinator");
  }

  if (currentStep == 8)
  {
    coordinator3 = [(HSProximityCardHostViewController *)self coordinator];
    activeTuple2 = [coordinator3 activeTuple];
    coordinator4 = [(HSProximityCardHostViewController *)self coordinator];
    topAccessoryTuple = [coordinator4 topAccessoryTuple];
    v21 = activeTuple2 == topAccessoryTuple;

    if (!v21)
    {
      NSLog(@"Not configuring top accessory");
    }

    objc_initWeak(buf, self);
    coordinator5 = [(HSProximityCardHostViewController *)self coordinator];
    nextViewController = [coordinator5 nextViewController];
    v25[0] = _NSConcreteStackBlock;
    v25[1] = 3221225472;
    v25[2] = sub_100051A2C;
    v25[3] = &unk_1000C7A08;
    objc_copyWeak(&v26, buf);
    v24 = [nextViewController addSuccessBlock:v25];

    objc_destroyWeak(&v26);
    objc_destroyWeak(buf);
  }
}

- (void)coordinatorRequestedDismissal:(id)dismissal
{
  v4 = HFLogForCategory();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v5 = 136315138;
    v6 = "[HSProximityCardHostViewController coordinatorRequestedDismissal:]";
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "%s", &v5, 0xCu);
  }

  [(HSProximityCardHostViewController *)self dismissViewControllerAnimated:1 completion:0];
}

- (id)viewControllerForCoordinator:(id)coordinator step:(int64_t)step
{
  if (step == 54)
  {
    v5 = [HSSetupNetworkRouterConfigurator alloc];
    coordinator = [(HSProximityCardHostViewController *)self coordinator];
    v7 = [(HSSetupNetworkRouterConfigurator *)v5 initWithCoordinator:coordinator];

    [(HSSetupNetworkRouterConfigurator *)v7 setConfiguratorDelegate:self];
    configurators = [(HSProximityCardHostViewController *)self configurators];
    [configurators addObject:v7];

    currentViewController = [(HSSetupNetworkRouterConfigurator *)v7 currentViewController];
  }

  else
  {
    currentViewController = 0;
  }

  return currentViewController;
}

- (unint64_t)coordinatorGetNumberOfProxCards:(id)cards
{
  proxNavigationController = [(HSProximityCardHostViewController *)self proxNavigationController];
  viewControllers = [proxNavigationController viewControllers];
  v5 = [viewControllers count];

  return v5;
}

- (void)configuratorDidUpdateViewController:(id)controller
{
  controllerCopy = controller;
  v5 = HFLogForCategory();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315138;
    v14 = "[HSProximityCardHostViewController configuratorDidUpdateViewController:]";
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "%s", buf, 0xCu);
  }

  proxNavigationController = [(HSProximityCardHostViewController *)self proxNavigationController];

  if (!proxNavigationController)
  {
    NSLog(@"We must have a navigationController at this point");
  }

  configurators = [(HSProximityCardHostViewController *)self configurators];
  v8 = [configurators containsObject:controllerCopy];

  if ((v8 & 1) == 0)
  {
    NSLog(@"Only my own configurators please");
  }

  objc_initWeak(buf, self);
  v10[0] = _NSConcreteStackBlock;
  v10[1] = 3221225472;
  v10[2] = sub_100051EC0;
  v10[3] = &unk_1000C7A58;
  objc_copyWeak(&v12, buf);
  v11 = controllerCopy;
  v9 = controllerCopy;
  dispatch_async(&_dispatch_main_q, v10);

  objc_destroyWeak(&v12);
  objc_destroyWeak(buf);
}

- (void)configuratorDidFinish:(id)finish
{
  finishCopy = finish;
  v5 = HFLogForCategory();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315138;
    v16 = "[HSProximityCardHostViewController configuratorDidFinish:]";
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "%s", buf, 0xCu);
  }

  proxNavigationController = [(HSProximityCardHostViewController *)self proxNavigationController];
  v7 = proxNavigationController == 0;

  if (v7)
  {
    NSLog(@"We must have a navigationController at this point");
  }

  configurators = [(HSProximityCardHostViewController *)self configurators];
  v9 = [configurators containsObject:finishCopy];

  if ((v9 & 1) == 0)
  {
    NSLog(@"Only my own configurators please");
  }

  objc_initWeak(buf, self);
  coordinator = [(HSProximityCardHostViewController *)self coordinator];
  nextViewController = [coordinator nextViewController];
  v13[0] = _NSConcreteStackBlock;
  v13[1] = 3221225472;
  v13[2] = sub_100052128;
  v13[3] = &unk_1000C7A08;
  objc_copyWeak(&v14, buf);
  v12 = [nextViewController addSuccessBlock:v13];

  objc_destroyWeak(&v14);
  objc_destroyWeak(buf);
}

- (id)_allHomesDescription:(id)description
{
  if (description)
  {
    v4 = [description na_map:&stru_1000C7A78];
  }

  else
  {
    v4 = &off_1000CE210;
  }

  return v4;
}

- (void)onSetupAccessoryDescription:(id)description matterDeviceSetupRequest:(id)request
{
  descriptionCopy = description;
  requestCopy = request;
  resumeSetupHomeUUIDString = [(HSProximityCardHostViewController *)self resumeSetupHomeUUIDString];

  if (resumeSetupHomeUUIDString)
  {
    homeUUID = HFLogForCategory();
    if (os_log_type_enabled(homeUUID, OS_LOG_TYPE_ERROR))
    {
      sub_10007ADDC(self);
    }
  }

  else
  {
    setupAccessoryDescription = [(HSProximityCardHostViewController *)self setupAccessoryDescription];

    v11 = setupAccessoryDescription == 0;
    v12 = HFLogForCategory();
    homeUUID = v12;
    if (v11)
    {
      if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138412546;
        v25 = descriptionCopy;
        v26 = 2112;
        v27 = requestCopy;
        _os_log_impl(&_mh_execute_header, homeUUID, OS_LOG_TYPE_DEFAULT, "HomeUIService launched with accessoryDescription: %@ matterDeviceSetupRequest: %@", buf, 0x16u);
      }

      homeUUID = [descriptionCopy homeUUID];
      v13 = [[HSEntitlementContext alloc] initWithSetupAccessoryDescription:descriptionCopy];
      entitlementContext = self->_entitlementContext;
      self->_entitlementContext = v13;

      v15 = HFLogForCategory();
      if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
      {
        entitlementContext = [(HSProximityCardHostViewController *)self entitlementContext];
        *buf = 138412290;
        v25 = entitlementContext;
        _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_DEFAULT, "Entitlement Context: %@", buf, 0xCu);
      }

      [(HSProximityCardHostViewController *)self setSetupAccessoryDescription:descriptionCopy];
      [(HSProximityCardHostViewController *)self setMatterDeviceSetupRequest:requestCopy];
      v17 = +[HSAccessoryPairingEventLogger sharedLogger];
      launchReason = [(HSProximityCardHostViewController *)self launchReason];
      setupAccessoryDescription2 = [(HSProximityCardHostViewController *)self setupAccessoryDescription];
      [v17 logHUISLaunchWithReason:launchReason accessoryDescription:setupAccessoryDescription2];

      v20 = +[HSAccessoryPairingEventLogger sharedLogger];
      [v20 logLaunchedToSetupASpecificAccessory:{-[HSProximityCardHostViewController isLaunchedToSetupASpecificAccessory](self, "isLaunchedToSetupASpecificAccessory")}];

      if (!requestCopy || homeUUID)
      {
        objc_initWeak(buf, self);
        v21[0] = _NSConcreteStackBlock;
        v21[1] = 3221225472;
        v21[2] = sub_100052690;
        v21[3] = &unk_1000C7A30;
        objc_copyWeak(&v23, buf);
        homeUUID = homeUUID;
        v22 = homeUUID;
        [(HSProximityCardHostViewController *)self _refreshHomeGraphWithCompletion:v21];

        objc_destroyWeak(&v23);
        objc_destroyWeak(buf);
      }

      else
      {
        [(HSProximityCardHostViewController *)self _initiateSetupFlow:0];
      }
    }

    else if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      sub_10007AE78(self);
    }
  }
}

- (void)_initiateSetupFlow:(id)flow
{
  flowCopy = flow;
  setupAccessoryDescription = [(HSProximityCardHostViewController *)self setupAccessoryDescription];
  matterDeviceSetupRequest = [(HSProximityCardHostViewController *)self matterDeviceSetupRequest];
  if ([(HSProximityCardHostViewController *)self isLaunchedToSetupASpecificAccessory])
  {
    v7 = [HFDiscoveredAccessory alloc];
    accessoryUUID = [setupAccessoryDescription accessoryUUID];
    accessoryName = [setupAccessoryDescription accessoryName];
    category = [setupAccessoryDescription category];
    v11 = [v7 initWithAccessoryUUID:accessoryUUID accessoryName:accessoryName accessoryCategory:category];
  }

  else
  {
    v11 = 0;
  }

  v12 = HFLogForCategory();
  if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
  {
    v13 = objc_opt_class();
    v14 = NSStringFromClass(v13);
    uuid = [flowCopy uuid];
    *buf = 138413826;
    v28 = v14;
    v29 = 2112;
    v30 = flowCopy;
    v31 = 2112;
    v32 = uuid;
    v33 = 2112;
    v34 = setupAccessoryDescription;
    v35 = 2112;
    v36 = matterDeviceSetupRequest;
    v37 = 1024;
    isLaunchedToSetupASpecificAccessory = [(HSProximityCardHostViewController *)self isLaunchedToSetupASpecificAccessory];
    v39 = 2112;
    v40 = v11;
    _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEFAULT, "Launching %@ with home %@ home.uuid %@ accessoryDescription %@ matterDeviceSetupRequest %@ isLaunchedToSetupASpecificAccessory %d discoveredAccessory %@", buf, 0x44u);
  }

  v16 = [HSProxCardCoordinator alloc];
  isLaunchedToSetupASpecificAccessory2 = [(HSProximityCardHostViewController *)self isLaunchedToSetupASpecificAccessory];
  entitlementContext = [(HSProximityCardHostViewController *)self entitlementContext];
  v19 = [(HSProxCardCoordinator *)v16 initWithHome:flowCopy accessoryDescription:setupAccessoryDescription matterDeviceSetupRequest:matterDeviceSetupRequest setupSpecificAccessory:isLaunchedToSetupASpecificAccessory2 entitlementContext:entitlementContext discoveredAccessory:v11 delegate:self];
  [(HSProximityCardHostViewController *)self setCoordinator:v19];

  objc_initWeak(buf, self);
  coordinator = [(HSProximityCardHostViewController *)self coordinator];
  nextViewController = [coordinator nextViewController];
  v24[0] = _NSConcreteStackBlock;
  v24[1] = 3221225472;
  v24[2] = sub_100052B98;
  v24[3] = &unk_1000C7AA0;
  objc_copyWeak(&v26, buf);
  v22 = setupAccessoryDescription;
  v25 = v22;
  v23 = [nextViewController addSuccessBlock:v24];

  objc_destroyWeak(&v26);
  objc_destroyWeak(buf);
}

- (void)_presentProxCardFlowWithInitialViewController:(id)controller
{
  controllerCopy = controller;
  v5 = controllerCopy;
  if (controllerCopy)
  {
    if ([controllerCopy conformsToProtocol:&OBJC_PROTOCOL___PRXCardContentProviding])
    {
      v6 = v5;
    }

    else
    {
      v6 = 0;
    }

    v7 = v6;
    if (v7)
    {
      v8 = +[PRXFlowConfiguration defaultConfiguration];
      v9 = [(HSProximityCardHostViewController *)self presentProxCardFlowWithDelegate:self initialViewController:v7 configuration:v8];
      [(HSProximityCardHostViewController *)self setProxNavigationController:v9];
    }

    else
    {
      v11 = HFLogForCategory();
      if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
      {
        sub_10007AF28();
      }

      NSLog(@"Attempted to present a vc that is not PRXCardContentProviding %s", "[HSProximityCardHostViewController _presentProxCardFlowWithInitialViewController:]");
    }
  }

  else
  {
    v10 = HFLogForCategory();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      sub_10007AFA8();
    }

    NSLog(@"Attempted to present ProxCardFlow with nil initial view controller %s", "[HSProximityCardHostViewController _presentProxCardFlowWithInitialViewController:]");
  }
}

- (void)pairingController:(id)controller didTransitionToPhase:(unint64_t)phase statusTitle:(id)title statusDescription:(id)description
{
  controllerCopy = controller;
  [(HSProximityCardHostViewController *)self _updatePairingStatusIfNecessary:description phase:phase];
  context = [controllerCopy context];

  setupAccessoryDescription = [context setupAccessoryDescription];

  if (phase <= 6)
  {
    if (phase != 2)
    {
      if (phase != 6)
      {
        goto LABEL_18;
      }

      category = [setupAccessoryDescription category];
      categoryType = [category categoryType];
      v14 = [categoryType isEqualToString:HMAccessoryCategoryTypeWiFiRouter];

      if (!v14)
      {
        goto LABEL_18;
      }

      v15 = [[HSPCSetupNetworkRouterAppPunchoutViewController alloc] initWithPopupDelegate:self setupAccessoryDescription:setupAccessoryDescription];
      if (!v15)
      {
        goto LABEL_18;
      }

      goto LABEL_16;
    }

    coordinator = [(HSProximityCardHostViewController *)self coordinator];
    setupAccessoryDescription2 = [(HSProximityCardHostViewController *)self setupAccessoryDescription];
    setupAccessoryPayload = [setupAccessoryDescription2 setupAccessoryPayload];
    v20 = [coordinator shouldShowCustomCommissioningProxCardWithPayload:setupAccessoryPayload];

    if (!v20)
    {
      goto LABEL_18;
    }

    v15 = [[HSPCThirdPartyAppPunchoutViewController alloc] initWithSetupAccessoryDescription:setupAccessoryDescription];
    coordinator2 = [(HSProximityCardHostViewController *)self coordinator];
    [coordinator2 setDidShowCustomCommissioningFlowAlertIfNecessary:1];
LABEL_15:

    if (!v15)
    {
      goto LABEL_18;
    }

LABEL_16:
    objc_initWeak(&location, self);
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_100053268;
    block[3] = &unk_1000C7A58;
    objc_copyWeak(&v28, &location);
    v27 = v15;
    coordinator3 = v15;
    dispatch_async(&_dispatch_main_q, block);

    objc_destroyWeak(&v28);
    objc_destroyWeak(&location);
    goto LABEL_17;
  }

  if (phase == 7)
  {
    category2 = [setupAccessoryDescription category];
    categoryType2 = [category2 categoryType];
    v24 = [categoryType2 isEqualToString:HMAccessoryCategoryTypeWiFiRouter];

    if (!v24)
    {
      goto LABEL_18;
    }

    v25 = [HSPCRouterReplaceViewController alloc];
    coordinator2 = [(HSProximityCardHostViewController *)self coordinator];
    v15 = [(HSPCRouterReplaceViewController *)v25 initWithCoordinator:coordinator2];
    goto LABEL_15;
  }

  if (phase == 10 && [(HSProximityCardHostViewController *)self isLaunchedToSetupASpecificAccessory])
  {
    coordinator3 = [(HSProximityCardHostViewController *)self coordinator];
    [(HSPCSetupNetworkRouterAppPunchoutViewController *)coordinator3 dismissProxCardFlowAfterExecuting:0];
LABEL_17:
  }

LABEL_18:
}

- (void)_updatePairingStatusIfNecessary:(id)necessary phase:(unint64_t)phase
{
  necessaryCopy = necessary;
  v7 = HFLogForCategory();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    v17 = 136315394;
    v18 = "[HSProximityCardHostViewController _updatePairingStatusIfNecessary:phase:]";
    v19 = 2112;
    v20 = necessaryCopy;
    _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "%s %@", &v17, 0x16u);
  }

  if ([necessaryCopy length])
  {
    coordinator = [(HSProximityCardHostViewController *)self coordinator];
    activeTuple = [coordinator activeTuple];
    currentStep = [activeTuple currentStep];

    if (currentStep == 8)
    {
      activeTuple2 = [coordinator activeTuple];
      topAccessoryTuple = [coordinator topAccessoryTuple];

      if (activeTuple2 != topAccessoryTuple)
      {
        NSLog(@"Not configuring top accessory");
      }

      objc_opt_class();
      proxNavigationController = [(HSProximityCardHostViewController *)self proxNavigationController];
      topViewController = [proxNavigationController topViewController];
      if (objc_opt_isKindOfClass())
      {
        v15 = topViewController;
      }

      else
      {
        v15 = 0;
      }

      v16 = v15;

      [v16 updatePairingStatus:necessaryCopy phase:phase];
    }
  }
}

- (void)pairingPopupDidFinish:(id)finish
{
  finishCopy = finish;
  setupAccessoryDescription = [finishCopy setupAccessoryDescription];
  v6 = HFLogForCategory();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    v11 = 138412802;
    selfCopy = self;
    v13 = 2112;
    v14 = finishCopy;
    v15 = 2048;
    popupType = [finishCopy popupType];
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "[%@ pairingPopupDidFinish:%@ pairingPopup.popupType %lu]", &v11, 0x20u);
  }

  category = [setupAccessoryDescription category];
  categoryType = [category categoryType];
  v9 = [categoryType isEqualToString:HMAccessoryCategoryTypeWiFiRouter];

  if ((v9 & 1) == 0)
  {
    NSLog(@"Only Routers are handled");
  }

  if ([finishCopy popupType] == 2)
  {
    coordinator = [(HSProximityCardHostViewController *)self coordinator];
    [coordinator dismissProxCardFlowAfterExecuting:0];
  }

  else
  {
    coordinator = HFLogForCategory();
    if (os_log_type_enabled(coordinator, OS_LOG_TYPE_ERROR))
    {
      sub_10007B028(self, finishCopy);
    }
  }
}

- (void)pairingPopupDidCancel:(id)cancel
{
  cancelCopy = cancel;
  setupAccessoryDescription = [cancelCopy setupAccessoryDescription];
  v6 = HFLogForCategory();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    v11 = 138412802;
    selfCopy = self;
    v13 = 2112;
    v14 = cancelCopy;
    v15 = 2048;
    popupType = [cancelCopy popupType];
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "[%@ pairingPopupDidFinish:%@ pairingPopup.popupType %lu]", &v11, 0x20u);
  }

  category = [setupAccessoryDescription category];
  categoryType = [category categoryType];
  v9 = [categoryType isEqualToString:HMAccessoryCategoryTypeWiFiRouter];

  if ((v9 & 1) == 0)
  {
    NSLog(@"Only Routers are handled");
  }

  if ([cancelCopy popupType] == 2)
  {
    coordinator = [(HSProximityCardHostViewController *)self coordinator];
    [coordinator dismissProxCardFlowAfterExecuting:0];
  }

  else
  {
    coordinator = HFLogForCategory();
    if (os_log_type_enabled(coordinator, OS_LOG_TYPE_ERROR))
    {
      sub_10007B028(self, cancelCopy);
    }
  }
}

- (void)_willAppearInRemoteViewController
{
  v2 = HFLogForCategory();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v3 = 136315138;
    v4 = "[HSProximityCardHostViewController _willAppearInRemoteViewController]";
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "%s", &v3, 0xCu);
  }
}

- (void)didInvalidateForRemoteAlert
{
  v3 = HFLogForCategory();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    v4 = 136315138;
    v5 = "[HSProximityCardHostViewController didInvalidateForRemoteAlert]";
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "%s", &v4, 0xCu);
  }

  [(HSProximityCardHostViewController *)self _cleanup];
}

- (void)dismissViewControllerAnimated:(BOOL)animated completion:(id)completion
{
  animatedCopy = animated;
  completionCopy = completion;
  v7 = HFLogForCategory();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    LODWORD(buf) = 67109120;
    HIDWORD(buf) = animatedCopy;
    _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "dismissViewControllerAnimated: %d requesting invalidation from host", &buf, 8u);
  }

  objc_initWeak(&buf, self);
  v12[0] = _NSConcreteStackBlock;
  v12[1] = 3221225472;
  v12[2] = sub_100053AD8;
  v12[3] = &unk_1000C7AC8;
  objc_copyWeak(&v14, &buf);
  v8 = completionCopy;
  v13 = v8;
  v9 = objc_retainBlock(v12);
  v10 = v9;
  if (animatedCopy)
  {
    v11.receiver = self;
    v11.super_class = HSProximityCardHostViewController;
    [(HSProximityCardHostViewController *)&v11 dismissViewControllerAnimated:1 completion:v9];
  }

  else
  {
    (v9[2])(v9);
  }

  objc_destroyWeak(&v14);
  objc_destroyWeak(&buf);
}

- (void)_cleanup
{
  if ([(HSProximityCardHostViewController *)self isCleaningUp])
  {
    v3 = HFLogForCategory();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136315138;
      v26 = "[HSProximityCardHostViewController _cleanup]";
      _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "%s: already cleaning up, returning early", buf, 0xCu);
    }
  }

  else
  {
    [(HSProximityCardHostViewController *)self setIsCleaningUp:1];
    v24[0] = _NSConcreteStackBlock;
    v24[1] = 3221225472;
    v24[2] = sub_100053F1C;
    v24[3] = &unk_1000C5970;
    v24[4] = self;
    v3 = objc_retainBlock(v24);
    resumeSetupHomeUUIDString = [(HSProximityCardHostViewController *)self resumeSetupHomeUUIDString];

    if (resumeSetupHomeUUIDString)
    {
      (*(v3 + 16))(v3);
    }

    else
    {
      coordinator = [(HSProximityCardHostViewController *)self coordinator];
      pairingFuture = [coordinator pairingFuture];
      pairingController = [pairingFuture pairingController];

      completedInfo = [pairingController completedInfo];
      coordinator2 = [(HSProximityCardHostViewController *)self coordinator];
      topAccessoryTuple = [coordinator2 topAccessoryTuple];
      configuration = [topAccessoryTuple configuration];
      pairingError = [configuration pairingError];

      setupAccessoryDescription = [(HSProximityCardHostViewController *)self setupAccessoryDescription];
      if ([setupAccessoryDescription isSetupInitiatedByOtherMatterEcosystem])
      {
      }

      else
      {
        pairedAccessories = [pairingController pairedAccessories];
        v15 = [pairedAccessories count];

        if (!v15 && !pairingError && !completedInfo)
        {
          v16 = HFLogForCategory();
          if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 136315138;
            v26 = "[HSProximityCardHostViewController _cleanup]";
            _os_log_impl(&_mh_execute_header, v16, OS_LOG_TYPE_DEFAULT, "%s: determined this is an early cancellation by the user, setting error HMFErrorCodeOperationCancelled", buf, 0xCu);
          }

          pairingError = [NSError hmfErrorWithCode:12];
        }
      }

      v17 = HFLogForCategory();
      if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
      {
        setupAccessoryDescription2 = [(HSProximityCardHostViewController *)self setupAccessoryDescription];
        *buf = 136315906;
        v26 = "[HSProximityCardHostViewController _cleanup]";
        v27 = 2112;
        v28 = completedInfo;
        v29 = 2112;
        v30 = pairingError;
        v31 = 2112;
        v32 = setupAccessoryDescription2;
        _os_log_impl(&_mh_execute_header, v17, OS_LOG_TYPE_DEFAULT, "%s: Finishing accessory setup with info %@, error %@ for setupAccessoryDescription %@", buf, 0x2Au);
      }

      v22[0] = _NSConcreteStackBlock;
      v22[1] = 3221225472;
      v22[2] = sub_100053FD0;
      v22[3] = &unk_1000C71D8;
      v22[4] = self;
      v23 = v3;
      v19 = objc_retainBlock(v22);
      v20 = objc_alloc_init(HMAccessorySetupManager);
      v21 = v20;
      if (pairingError)
      {
        [v20 failAccessorySetupWithError:pairingError completionHandler:v19];
      }

      else if (completedInfo)
      {
        [v20 finishAccessorySetupWithSetupCompletedInfo:completedInfo completionHandler:v19];
      }

      else
      {
        [v20 finishAccessorySetupWithCompletionHandler:v19];
      }
    }
  }
}

@end