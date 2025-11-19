@interface HSProximityCardHostViewController
- (BOOL)_didPRXActuallyDismiss;
- (BOOL)isLaunchedToSetupASpecificAccessory;
- (HSProximityCardHostViewController)init;
- (id)_allHomesDescription:(id)a3;
- (id)viewControllerForCoordinator:(id)a3 step:(int64_t)a4;
- (unint64_t)coordinatorGetNumberOfProxCards:(id)a3;
- (unint64_t)supportedInterfaceOrientations;
- (void)_cleanup;
- (void)_initiateSetupFlow:(id)a3;
- (void)_presentProxCardFlowWithInitialViewController:(id)a3;
- (void)_refreshHomeGraphWithCompletion:(id)a3;
- (void)_updatePairingStatusIfNecessary:(id)a3 phase:(unint64_t)a4;
- (void)_willAppearInRemoteViewController;
- (void)configuratorDidFinish:(id)a3;
- (void)configuratorDidUpdateViewController:(id)a3;
- (void)configureWithContext:(id)a3 completion:(id)a4;
- (void)coordinator:(id)a3 updatedConfiguration:(id)a4;
- (void)coordinatorRequestedDismissal:(id)a3;
- (void)didInvalidateForRemoteAlert;
- (void)dismissViewControllerAnimated:(BOOL)a3 completion:(id)a4;
- (void)onSetupAccessoryDescription:(id)a3 matterDeviceSetupRequest:(id)a4;
- (void)pairingController:(id)a3 didTransitionToPhase:(unint64_t)a4 statusTitle:(id)a5 statusDescription:(id)a6;
- (void)pairingPopupDidCancel:(id)a3;
- (void)pairingPopupDidFinish:(id)a3;
- (void)proxCardFlowDidDismiss;
- (void)proxCardFlowWillPresent;
- (void)viewDidLoad;
@end

@implementation HSProximityCardHostViewController

- (BOOL)isLaunchedToSetupASpecificAccessory
{
  v2 = [(HSProximityCardHostViewController *)self setupAccessoryDescription];
  v3 = [v2 hf_isKeyedToASpecificAccessory];

  return v3;
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

- (void)_refreshHomeGraphWithCompletion:(id)a3
{
  v4 = a3;
  v5 = +[NSDate distantFuture];
  v6 = +[NSDate now];
  v7 = +[HFHomeKitDispatcher sharedDispatcher];
  v8 = [v7 homeManager];
  v12[0] = _NSConcreteStackBlock;
  v12[1] = 3221225472;
  v12[2] = sub_100050430;
  v12[3] = &unk_1000C7998;
  v13 = v6;
  v14 = self;
  v15 = v4;
  v9 = v4;
  v10 = v6;
  v11 = [v8 _refreshBeforeDate:v5 completionHandler:v12];
}

- (void)configureWithContext:(id)a3 completion:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = v7;
  if (v7)
  {
    (*(v7 + 2))(v7);
  }

  v9 = [(HSProximityCardHostViewController *)self _remoteViewControllerProxy];
  [v9 setAllowsAlertStacking:1];
  v10 = [v6 userInfo];
  [(HSProximityCardHostViewController *)self setLaunchReason:[HUHomeUIServiceLaunchUserInfo launchReasonFromUserInfo:v10]];
  v11 = +[HSAccessoryPairingEventLogger sharedLogger];
  [v11 logHUISLaunchWithReason:-[HSProximityCardHostViewController launchReason](self accessoryDescription:{"launchReason"), 0}];

  v12 = HFLogForCategory();
  if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315394;
    v22 = "[HSProximityCardHostViewController configureWithContext:completion:]";
    v23 = 2112;
    v24 = v10;
    _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEFAULT, "%s userInfo %@", buf, 0x16u);
  }

  if (![(HSProximityCardHostViewController *)self launchReason])
  {
    v13 = [[HMSetupAccessoryDescription alloc] initWithDictionaryRepresentation:v10];
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

    v15 = [[MTSDeviceSetupRequest alloc] initWithDictionaryRepresentation:v10];
    [(HSProximityCardHostViewController *)self onSetupAccessoryDescription:v13 matterDeviceSetupRequest:v15];

    goto LABEL_16;
  }

  if ([(HSProximityCardHostViewController *)self launchReason]== 1 || [(HSProximityCardHostViewController *)self launchReason]== 2 || [(HSProximityCardHostViewController *)self launchReason]== 3 || [(HSProximityCardHostViewController *)self launchReason]== 7 || [(HSProximityCardHostViewController *)self launchReason]== 4 || [(HSProximityCardHostViewController *)self launchReason]== 5 || [(HSProximityCardHostViewController *)self launchReason]== 6)
  {
    v13 = [v10 objectForKeyedSubscript:HUHomeUIServiceLaunchHomeUUIDString];
    v14 = [v13 copy];
    [(HSProximityCardHostViewController *)self setResumeSetupHomeUUIDString:v14];

    objc_initWeak(buf, self);
    v18[0] = _NSConcreteStackBlock;
    v18[1] = 3221225472;
    v18[2] = sub_100050BA4;
    v18[3] = &unk_1000C7A30;
    objc_copyWeak(&v20, buf);
    v19 = v10;
    [(HSProximityCardHostViewController *)self _refreshHomeGraphWithCompletion:v18];

    objc_destroyWeak(&v20);
    objc_destroyWeak(buf);
LABEL_16:
  }
}

- (unint64_t)supportedInterfaceOrientations
{
  v2 = [(HSProximityCardHostViewController *)self traitCollection];
  if ([v2 userInterfaceIdiom] == 1)
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
  v5 = [v4 keyWindow];
  [v5 setTintColor:v3];

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

  v4 = [(HSProximityCardHostViewController *)self _remoteViewControllerProxy];
  [v4 setStatusBarHidden:1 withDuration:0.0];
  [v4 setIdleTimerDisabled:1 forReason:@"HMSetup"];
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
  v2 = [(HSProximityCardHostViewController *)self proxNavigationController];
  v3 = [v2 presentedViewController];

  if (v3)
  {
    v4 = [v3 modalPresentationStyle] != 0;
  }

  else
  {
    v4 = 1;
  }

  return v4;
}

- (void)coordinator:(id)a3 updatedConfiguration:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [(HSProximityCardHostViewController *)self coordinator];
  v9 = [v8 activeTuple];
  v10 = [v9 currentStep];

  v11 = HFLogForCategory();
  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
  {
    v12 = objc_opt_class();
    v13 = NSStringFromClass(v12);
    v14 = [HSSetupContentProvider stringForHSProxCardSetupUIStep:v10];
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

  v15 = [(HSProximityCardHostViewController *)self coordinator];
  v16 = v15 == v6;

  if (!v16)
  {
    NSLog(@"Not the same coordinator");
  }

  if (v10 == 8)
  {
    v17 = [(HSProximityCardHostViewController *)self coordinator];
    v18 = [v17 activeTuple];
    v19 = [(HSProximityCardHostViewController *)self coordinator];
    v20 = [v19 topAccessoryTuple];
    v21 = v18 == v20;

    if (!v21)
    {
      NSLog(@"Not configuring top accessory");
    }

    objc_initWeak(buf, self);
    v22 = [(HSProximityCardHostViewController *)self coordinator];
    v23 = [v22 nextViewController];
    v25[0] = _NSConcreteStackBlock;
    v25[1] = 3221225472;
    v25[2] = sub_100051A2C;
    v25[3] = &unk_1000C7A08;
    objc_copyWeak(&v26, buf);
    v24 = [v23 addSuccessBlock:v25];

    objc_destroyWeak(&v26);
    objc_destroyWeak(buf);
  }
}

- (void)coordinatorRequestedDismissal:(id)a3
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

- (id)viewControllerForCoordinator:(id)a3 step:(int64_t)a4
{
  if (a4 == 54)
  {
    v5 = [HSSetupNetworkRouterConfigurator alloc];
    v6 = [(HSProximityCardHostViewController *)self coordinator];
    v7 = [(HSSetupNetworkRouterConfigurator *)v5 initWithCoordinator:v6];

    [(HSSetupNetworkRouterConfigurator *)v7 setConfiguratorDelegate:self];
    v8 = [(HSProximityCardHostViewController *)self configurators];
    [v8 addObject:v7];

    v9 = [(HSSetupNetworkRouterConfigurator *)v7 currentViewController];
  }

  else
  {
    v9 = 0;
  }

  return v9;
}

- (unint64_t)coordinatorGetNumberOfProxCards:(id)a3
{
  v3 = [(HSProximityCardHostViewController *)self proxNavigationController];
  v4 = [v3 viewControllers];
  v5 = [v4 count];

  return v5;
}

- (void)configuratorDidUpdateViewController:(id)a3
{
  v4 = a3;
  v5 = HFLogForCategory();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315138;
    v14 = "[HSProximityCardHostViewController configuratorDidUpdateViewController:]";
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "%s", buf, 0xCu);
  }

  v6 = [(HSProximityCardHostViewController *)self proxNavigationController];

  if (!v6)
  {
    NSLog(@"We must have a navigationController at this point");
  }

  v7 = [(HSProximityCardHostViewController *)self configurators];
  v8 = [v7 containsObject:v4];

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
  v11 = v4;
  v9 = v4;
  dispatch_async(&_dispatch_main_q, v10);

  objc_destroyWeak(&v12);
  objc_destroyWeak(buf);
}

- (void)configuratorDidFinish:(id)a3
{
  v4 = a3;
  v5 = HFLogForCategory();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315138;
    v16 = "[HSProximityCardHostViewController configuratorDidFinish:]";
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "%s", buf, 0xCu);
  }

  v6 = [(HSProximityCardHostViewController *)self proxNavigationController];
  v7 = v6 == 0;

  if (v7)
  {
    NSLog(@"We must have a navigationController at this point");
  }

  v8 = [(HSProximityCardHostViewController *)self configurators];
  v9 = [v8 containsObject:v4];

  if ((v9 & 1) == 0)
  {
    NSLog(@"Only my own configurators please");
  }

  objc_initWeak(buf, self);
  v10 = [(HSProximityCardHostViewController *)self coordinator];
  v11 = [v10 nextViewController];
  v13[0] = _NSConcreteStackBlock;
  v13[1] = 3221225472;
  v13[2] = sub_100052128;
  v13[3] = &unk_1000C7A08;
  objc_copyWeak(&v14, buf);
  v12 = [v11 addSuccessBlock:v13];

  objc_destroyWeak(&v14);
  objc_destroyWeak(buf);
}

- (id)_allHomesDescription:(id)a3
{
  if (a3)
  {
    v4 = [a3 na_map:&stru_1000C7A78];
  }

  else
  {
    v4 = &off_1000CE210;
  }

  return v4;
}

- (void)onSetupAccessoryDescription:(id)a3 matterDeviceSetupRequest:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [(HSProximityCardHostViewController *)self resumeSetupHomeUUIDString];

  if (v8)
  {
    v9 = HFLogForCategory();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      sub_10007ADDC(self);
    }
  }

  else
  {
    v10 = [(HSProximityCardHostViewController *)self setupAccessoryDescription];

    v11 = v10 == 0;
    v12 = HFLogForCategory();
    v9 = v12;
    if (v11)
    {
      if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138412546;
        v25 = v6;
        v26 = 2112;
        v27 = v7;
        _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "HomeUIService launched with accessoryDescription: %@ matterDeviceSetupRequest: %@", buf, 0x16u);
      }

      v9 = [v6 homeUUID];
      v13 = [[HSEntitlementContext alloc] initWithSetupAccessoryDescription:v6];
      entitlementContext = self->_entitlementContext;
      self->_entitlementContext = v13;

      v15 = HFLogForCategory();
      if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
      {
        v16 = [(HSProximityCardHostViewController *)self entitlementContext];
        *buf = 138412290;
        v25 = v16;
        _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_DEFAULT, "Entitlement Context: %@", buf, 0xCu);
      }

      [(HSProximityCardHostViewController *)self setSetupAccessoryDescription:v6];
      [(HSProximityCardHostViewController *)self setMatterDeviceSetupRequest:v7];
      v17 = +[HSAccessoryPairingEventLogger sharedLogger];
      v18 = [(HSProximityCardHostViewController *)self launchReason];
      v19 = [(HSProximityCardHostViewController *)self setupAccessoryDescription];
      [v17 logHUISLaunchWithReason:v18 accessoryDescription:v19];

      v20 = +[HSAccessoryPairingEventLogger sharedLogger];
      [v20 logLaunchedToSetupASpecificAccessory:{-[HSProximityCardHostViewController isLaunchedToSetupASpecificAccessory](self, "isLaunchedToSetupASpecificAccessory")}];

      if (!v7 || v9)
      {
        objc_initWeak(buf, self);
        v21[0] = _NSConcreteStackBlock;
        v21[1] = 3221225472;
        v21[2] = sub_100052690;
        v21[3] = &unk_1000C7A30;
        objc_copyWeak(&v23, buf);
        v9 = v9;
        v22 = v9;
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

- (void)_initiateSetupFlow:(id)a3
{
  v4 = a3;
  v5 = [(HSProximityCardHostViewController *)self setupAccessoryDescription];
  v6 = [(HSProximityCardHostViewController *)self matterDeviceSetupRequest];
  if ([(HSProximityCardHostViewController *)self isLaunchedToSetupASpecificAccessory])
  {
    v7 = [HFDiscoveredAccessory alloc];
    v8 = [v5 accessoryUUID];
    v9 = [v5 accessoryName];
    v10 = [v5 category];
    v11 = [v7 initWithAccessoryUUID:v8 accessoryName:v9 accessoryCategory:v10];
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
    v15 = [v4 uuid];
    *buf = 138413826;
    v28 = v14;
    v29 = 2112;
    v30 = v4;
    v31 = 2112;
    v32 = v15;
    v33 = 2112;
    v34 = v5;
    v35 = 2112;
    v36 = v6;
    v37 = 1024;
    v38 = [(HSProximityCardHostViewController *)self isLaunchedToSetupASpecificAccessory];
    v39 = 2112;
    v40 = v11;
    _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEFAULT, "Launching %@ with home %@ home.uuid %@ accessoryDescription %@ matterDeviceSetupRequest %@ isLaunchedToSetupASpecificAccessory %d discoveredAccessory %@", buf, 0x44u);
  }

  v16 = [HSProxCardCoordinator alloc];
  v17 = [(HSProximityCardHostViewController *)self isLaunchedToSetupASpecificAccessory];
  v18 = [(HSProximityCardHostViewController *)self entitlementContext];
  v19 = [(HSProxCardCoordinator *)v16 initWithHome:v4 accessoryDescription:v5 matterDeviceSetupRequest:v6 setupSpecificAccessory:v17 entitlementContext:v18 discoveredAccessory:v11 delegate:self];
  [(HSProximityCardHostViewController *)self setCoordinator:v19];

  objc_initWeak(buf, self);
  v20 = [(HSProximityCardHostViewController *)self coordinator];
  v21 = [v20 nextViewController];
  v24[0] = _NSConcreteStackBlock;
  v24[1] = 3221225472;
  v24[2] = sub_100052B98;
  v24[3] = &unk_1000C7AA0;
  objc_copyWeak(&v26, buf);
  v22 = v5;
  v25 = v22;
  v23 = [v21 addSuccessBlock:v24];

  objc_destroyWeak(&v26);
  objc_destroyWeak(buf);
}

- (void)_presentProxCardFlowWithInitialViewController:(id)a3
{
  v4 = a3;
  v5 = v4;
  if (v4)
  {
    if ([v4 conformsToProtocol:&OBJC_PROTOCOL___PRXCardContentProviding])
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

- (void)pairingController:(id)a3 didTransitionToPhase:(unint64_t)a4 statusTitle:(id)a5 statusDescription:(id)a6
{
  v9 = a3;
  [(HSProximityCardHostViewController *)self _updatePairingStatusIfNecessary:a6 phase:a4];
  v10 = [v9 context];

  v11 = [v10 setupAccessoryDescription];

  if (a4 <= 6)
  {
    if (a4 != 2)
    {
      if (a4 != 6)
      {
        goto LABEL_18;
      }

      v12 = [v11 category];
      v13 = [v12 categoryType];
      v14 = [v13 isEqualToString:HMAccessoryCategoryTypeWiFiRouter];

      if (!v14)
      {
        goto LABEL_18;
      }

      v15 = [[HSPCSetupNetworkRouterAppPunchoutViewController alloc] initWithPopupDelegate:self setupAccessoryDescription:v11];
      if (!v15)
      {
        goto LABEL_18;
      }

      goto LABEL_16;
    }

    v17 = [(HSProximityCardHostViewController *)self coordinator];
    v18 = [(HSProximityCardHostViewController *)self setupAccessoryDescription];
    v19 = [v18 setupAccessoryPayload];
    v20 = [v17 shouldShowCustomCommissioningProxCardWithPayload:v19];

    if (!v20)
    {
      goto LABEL_18;
    }

    v15 = [[HSPCThirdPartyAppPunchoutViewController alloc] initWithSetupAccessoryDescription:v11];
    v21 = [(HSProximityCardHostViewController *)self coordinator];
    [v21 setDidShowCustomCommissioningFlowAlertIfNecessary:1];
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
    v16 = v15;
    dispatch_async(&_dispatch_main_q, block);

    objc_destroyWeak(&v28);
    objc_destroyWeak(&location);
    goto LABEL_17;
  }

  if (a4 == 7)
  {
    v22 = [v11 category];
    v23 = [v22 categoryType];
    v24 = [v23 isEqualToString:HMAccessoryCategoryTypeWiFiRouter];

    if (!v24)
    {
      goto LABEL_18;
    }

    v25 = [HSPCRouterReplaceViewController alloc];
    v21 = [(HSProximityCardHostViewController *)self coordinator];
    v15 = [(HSPCRouterReplaceViewController *)v25 initWithCoordinator:v21];
    goto LABEL_15;
  }

  if (a4 == 10 && [(HSProximityCardHostViewController *)self isLaunchedToSetupASpecificAccessory])
  {
    v16 = [(HSProximityCardHostViewController *)self coordinator];
    [(HSPCSetupNetworkRouterAppPunchoutViewController *)v16 dismissProxCardFlowAfterExecuting:0];
LABEL_17:
  }

LABEL_18:
}

- (void)_updatePairingStatusIfNecessary:(id)a3 phase:(unint64_t)a4
{
  v6 = a3;
  v7 = HFLogForCategory();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    v17 = 136315394;
    v18 = "[HSProximityCardHostViewController _updatePairingStatusIfNecessary:phase:]";
    v19 = 2112;
    v20 = v6;
    _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "%s %@", &v17, 0x16u);
  }

  if ([v6 length])
  {
    v8 = [(HSProximityCardHostViewController *)self coordinator];
    v9 = [v8 activeTuple];
    v10 = [v9 currentStep];

    if (v10 == 8)
    {
      v11 = [v8 activeTuple];
      v12 = [v8 topAccessoryTuple];

      if (v11 != v12)
      {
        NSLog(@"Not configuring top accessory");
      }

      objc_opt_class();
      v13 = [(HSProximityCardHostViewController *)self proxNavigationController];
      v14 = [v13 topViewController];
      if (objc_opt_isKindOfClass())
      {
        v15 = v14;
      }

      else
      {
        v15 = 0;
      }

      v16 = v15;

      [v16 updatePairingStatus:v6 phase:a4];
    }
  }
}

- (void)pairingPopupDidFinish:(id)a3
{
  v4 = a3;
  v5 = [v4 setupAccessoryDescription];
  v6 = HFLogForCategory();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    v11 = 138412802;
    v12 = self;
    v13 = 2112;
    v14 = v4;
    v15 = 2048;
    v16 = [v4 popupType];
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "[%@ pairingPopupDidFinish:%@ pairingPopup.popupType %lu]", &v11, 0x20u);
  }

  v7 = [v5 category];
  v8 = [v7 categoryType];
  v9 = [v8 isEqualToString:HMAccessoryCategoryTypeWiFiRouter];

  if ((v9 & 1) == 0)
  {
    NSLog(@"Only Routers are handled");
  }

  if ([v4 popupType] == 2)
  {
    v10 = [(HSProximityCardHostViewController *)self coordinator];
    [v10 dismissProxCardFlowAfterExecuting:0];
  }

  else
  {
    v10 = HFLogForCategory();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      sub_10007B028(self, v4);
    }
  }
}

- (void)pairingPopupDidCancel:(id)a3
{
  v4 = a3;
  v5 = [v4 setupAccessoryDescription];
  v6 = HFLogForCategory();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    v11 = 138412802;
    v12 = self;
    v13 = 2112;
    v14 = v4;
    v15 = 2048;
    v16 = [v4 popupType];
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "[%@ pairingPopupDidFinish:%@ pairingPopup.popupType %lu]", &v11, 0x20u);
  }

  v7 = [v5 category];
  v8 = [v7 categoryType];
  v9 = [v8 isEqualToString:HMAccessoryCategoryTypeWiFiRouter];

  if ((v9 & 1) == 0)
  {
    NSLog(@"Only Routers are handled");
  }

  if ([v4 popupType] == 2)
  {
    v10 = [(HSProximityCardHostViewController *)self coordinator];
    [v10 dismissProxCardFlowAfterExecuting:0];
  }

  else
  {
    v10 = HFLogForCategory();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      sub_10007B028(self, v4);
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

- (void)dismissViewControllerAnimated:(BOOL)a3 completion:(id)a4
{
  v4 = a3;
  v6 = a4;
  v7 = HFLogForCategory();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    LODWORD(buf) = 67109120;
    HIDWORD(buf) = v4;
    _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "dismissViewControllerAnimated: %d requesting invalidation from host", &buf, 8u);
  }

  objc_initWeak(&buf, self);
  v12[0] = _NSConcreteStackBlock;
  v12[1] = 3221225472;
  v12[2] = sub_100053AD8;
  v12[3] = &unk_1000C7AC8;
  objc_copyWeak(&v14, &buf);
  v8 = v6;
  v13 = v8;
  v9 = objc_retainBlock(v12);
  v10 = v9;
  if (v4)
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
    v4 = [(HSProximityCardHostViewController *)self resumeSetupHomeUUIDString];

    if (v4)
    {
      (*(v3 + 16))(v3);
    }

    else
    {
      v5 = [(HSProximityCardHostViewController *)self coordinator];
      v6 = [v5 pairingFuture];
      v7 = [v6 pairingController];

      v8 = [v7 completedInfo];
      v9 = [(HSProximityCardHostViewController *)self coordinator];
      v10 = [v9 topAccessoryTuple];
      v11 = [v10 configuration];
      v12 = [v11 pairingError];

      v13 = [(HSProximityCardHostViewController *)self setupAccessoryDescription];
      if ([v13 isSetupInitiatedByOtherMatterEcosystem])
      {
      }

      else
      {
        v14 = [v7 pairedAccessories];
        v15 = [v14 count];

        if (!v15 && !v12 && !v8)
        {
          v16 = HFLogForCategory();
          if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 136315138;
            v26 = "[HSProximityCardHostViewController _cleanup]";
            _os_log_impl(&_mh_execute_header, v16, OS_LOG_TYPE_DEFAULT, "%s: determined this is an early cancellation by the user, setting error HMFErrorCodeOperationCancelled", buf, 0xCu);
          }

          v12 = [NSError hmfErrorWithCode:12];
        }
      }

      v17 = HFLogForCategory();
      if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
      {
        v18 = [(HSProximityCardHostViewController *)self setupAccessoryDescription];
        *buf = 136315906;
        v26 = "[HSProximityCardHostViewController _cleanup]";
        v27 = 2112;
        v28 = v8;
        v29 = 2112;
        v30 = v12;
        v31 = 2112;
        v32 = v18;
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
      if (v12)
      {
        [v20 failAccessorySetupWithError:v12 completionHandler:v19];
      }

      else if (v8)
      {
        [v20 finishAccessorySetupWithSetupCompletedInfo:v8 completionHandler:v19];
      }

      else
      {
        [v20 finishAccessorySetupWithCompletionHandler:v19];
      }
    }
  }
}

@end