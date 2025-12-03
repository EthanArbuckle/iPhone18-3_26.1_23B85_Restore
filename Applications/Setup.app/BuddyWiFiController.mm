@interface BuddyWiFiController
+ (BOOL)isTrailingWithEnvironment:(id)environment;
- (BFFFlowItemDelegate)delegate;
- (BOOL)controllerNeedsToRun;
- (BuddyWiFiController)init;
- (void)_clearReturnToServiceTimer;
- (void)_confirmThenFlowItemDoneWithResetActivationMethod:(BOOL)method;
- (void)_flowItemDoneWithResetActivationMethod:(BOOL)method;
- (void)_nextTapped:(id)tapped;
- (void)_resetWifiControllerTimeoutSpinner;
- (void)_showNavBarSpinner;
- (void)_startReturnToServiceTimer;
- (void)_updateActivationMethod;
- (void)activationConfigurationChanged:(BOOL)changed isActivated:(BOOL)activated;
- (void)buddyViewControllerDidPressAlternateSetupButton:(id)button;
- (void)controllerWasPopped;
- (void)navigationController:(id)controller willShowViewController:(id)viewController operation:(int64_t)operation animated:(BOOL)animated;
- (void)reachabilityChanged:(BOOL)changed;
- (void)setNavigationController:(id)controller;
- (void)startScanningIfNecessary;
- (void)stopScanning;
- (void)updateNextButton;
- (void)wifiNetworkJoinFinished:(id)finished;
- (void)wifiTimeoutFired:(id)fired;
@end

@implementation BuddyWiFiController

- (BOOL)controllerNeedsToRun
{
  networkProvider = [(BuddyWiFiController *)self networkProvider];
  connectedOverWiFiAndNetworkReachable = [(BuddyNetworkProvider *)networkProvider connectedOverWiFiAndNetworkReachable];
  v6 = 0;
  supportsWiFi = 0;
  if ((connectedOverWiFiAndNetworkReachable & 1) == 0)
  {
    networkProvider2 = [(BuddyWiFiController *)self networkProvider];
    v6 = 1;
    supportsWiFi = [(BuddyNetworkProvider *)networkProvider2 supportsWiFi];
  }

  v9 = supportsWiFi & 1;
  if (v6)
  {
  }

  return v9 & 1;
}

+ (BOOL)isTrailingWithEnvironment:(id)environment
{
  location[2] = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, environment);
  proximitySetupController = [location[0] proximitySetupController];
  hasAppliedSettings = [proximitySetupController hasAppliedSettings];

  objc_storeStrong(location, 0);
  return hasAppliedSettings & 1;
}

- (BuddyWiFiController)init
{
  v17 = a2;
  location = 0;
  v16.receiver = self;
  v16.super_class = BuddyWiFiController;
  v2 = [(BuddyWiFiController *)&v16 init];
  location = v2;
  objc_storeStrong(&location, v2);
  if (v2)
  {
    v3 = +[BuddyActivationConfiguration currentConfiguration];
    [v3 addDelegate:location];

    v4 = objc_alloc_init(sub_100229FEC());
    v5 = *(location + 1);
    *(location + 1) = v4;

    [*(location + 1) setBuddyDelegate:location];
    [*(location + 1) setShowNetworkSettings:0];
    v6 = *(location + 1);
    v7 = +[BuddyActivationConfiguration currentConfiguration];
    [v6 setSupportsCellularActivation:{objc_msgSend(v7, "supportsCellularActivation") & 1}];

    v8 = +[NSNotificationCenter defaultCenter];
    v9 = location;
    v10 = sub_10022A100();
    [(NSNotificationCenter *)v8 addObserver:v9 selector:"wifiNetworkJoinFinished:" name:v10 object:0];

    v11 = objc_alloc(sub_10022A208());
    v12 = [v11 initWithViewController:*(location + 1)];
    v13 = *(location + 3);
    *(location + 3) = v12;
  }

  v14 = location;
  objc_storeStrong(&location, 0);
  return v14;
}

- (void)startScanningIfNecessary
{
  selfCopy = self;
  oslog[1] = a2;
  if ([(BuddyWiFiController *)self controllerNeedsToRun])
  {
    oslog[0] = _BYLoggingFacility();
    v5 = OS_LOG_TYPE_DEFAULT;
    if (os_log_type_enabled(oslog[0], OS_LOG_TYPE_DEFAULT))
    {
      v2 = oslog[0];
      v3 = v5;
      sub_10006AA68(v4);
      _os_log_impl(&_mh_execute_header, v2, v3, "Starting early Wi-Fi pane scan..", v4, 2u);
    }

    objc_storeStrong(oslog, 0);
    [(WFNetworkListController *)selfCopy->_wifiManager startScanning];
  }
}

- (void)stopScanning
{
  selfCopy = self;
  oslog[1] = a2;
  oslog[0] = _BYLoggingFacility();
  v5 = OS_LOG_TYPE_DEFAULT;
  if (os_log_type_enabled(oslog[0], OS_LOG_TYPE_DEFAULT))
  {
    v2 = oslog[0];
    v3 = v5;
    sub_10006AA68(v4);
    _os_log_impl(&_mh_execute_header, v2, v3, "Stopping Wi-Fi pane scan..", v4, 2u);
  }

  objc_storeStrong(oslog, 0);
  [(WFNetworkListController *)selfCopy->_wifiManager stopScanning];
}

- (void)setNavigationController:(id)controller
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, controller);
  WeakRetained = objc_loadWeakRetained(&selfCopy->_navigationController);
  v4 = WeakRetained == 0;

  if (v4)
  {
    objc_storeWeak(&selfCopy->_navigationController, location[0]);
    v5 = objc_loadWeakRetained(&selfCopy->_navigationController);
    [v5 addDelegateObserver:selfCopy];
  }

  objc_storeStrong(location, 0);
}

- (void)controllerWasPopped
{
  v2 = [(BuddyWiFiController *)self miscState:a2];
  [(BuddyMiscState *)v2 setUserSkippedWiFi:0];
}

- (void)navigationController:(id)controller willShowViewController:(id)viewController operation:(int64_t)operation animated:(BOOL)animated
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, controller);
  v23 = 0;
  objc_storeStrong(&v23, viewController);
  operationCopy = operation;
  animatedCopy = animated;
  if (v23 == selfCopy->_viewController || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
  {
    [(BuddyWiFiController *)selfCopy setWillPush:0];
    [(BuddyWiFiController *)selfCopy setPreventNextButtonCreation:0];
    [(BuddyWiFiController *)selfCopy updateNextButton];
    proximitySetupController = [(BuddyWiFiController *)selfCopy proximitySetupController];
    hasConnection = [(ProximitySetupController *)proximitySetupController hasConnection];

    if (hasConnection)
    {
      oslog = _BYLoggingFacility();
      v18 = OS_LOG_TYPE_DEFAULT;
      if (os_log_type_enabled(oslog, OS_LOG_TYPE_DEFAULT))
      {
        v12 = oslog;
        v13 = v18;
        sub_10006AA68(v17);
        _os_log_impl(&_mh_execute_header, v12, v13, "Skipping beginning advertising for device enrollment; we're already performing proximity setup", v17, 2u);
      }

      objc_storeStrong(&oslog, 0);
    }

    else
    {
      proximityAutomatedDeviceEnrollmentController = [(BuddyWiFiController *)selfCopy proximityAutomatedDeviceEnrollmentController];
      [(BuddyProximityAutomatedDeviceEnrollmentController *)proximityAutomatedDeviceEnrollmentController beginAdvertising];
    }

    [(WFNetworkListController *)selfCopy->_wifiManager startScanning];
    if (operationCopy == 1)
    {
      [(BuddyWiFiController *)selfCopy _updateActivationMethod];
      enrollmentCoordinator = [(BuddyWiFiController *)selfCopy enrollmentCoordinator];
      shouldDoReturnToService = [(BuddyEnrollmentCoordinator *)enrollmentCoordinator shouldDoReturnToService];

      if (shouldDoReturnToService)
      {
        [(BuddyWiFiController *)selfCopy _startReturnToServiceTimer];
      }
    }

    v20 = 0;
  }

  else
  {
    proximityAutomatedDeviceEnrollmentController2 = [(BuddyWiFiController *)selfCopy proximityAutomatedDeviceEnrollmentController];
    [(BuddyProximityAutomatedDeviceEnrollmentController *)proximityAutomatedDeviceEnrollmentController2 endAdvertising];

    v20 = 1;
  }

  objc_storeStrong(&v23, 0);
  objc_storeStrong(location, 0);
}

- (void)_flowItemDoneWithResetActivationMethod:(BOOL)method
{
  if (![(BuddyWiFiController *)self willPush])
  {
    if (method)
    {
      miscState = [(BuddyWiFiController *)self miscState];
      [(BuddyMiscState *)miscState setUserSelectedCellularActivation:0];

      miscState2 = [(BuddyWiFiController *)self miscState];
      [(BuddyMiscState *)miscState2 setUserSelectedTetheredActivation:0];
    }

    else
    {
      miscState2 = +[BuddyActivationConfiguration currentConfiguration];
      supportsCellularActivation = [(BuddyMiscState *)miscState2 supportsCellularActivation];
      miscState3 = [(BuddyWiFiController *)self miscState];
      [(BuddyMiscState *)miscState3 setUserSelectedCellularActivation:supportsCellularActivation & 1];
    }

    [(BuddyWiFiController *)self setWillPush:1];
    viewController = [(BuddyWiFiController *)self viewController];
    navigationController = [viewController navigationController];
    topViewController = [navigationController topViewController];
    viewController = self->_viewController;

    if (topViewController == viewController)
    {
      featureFlags = [(BuddyWiFiController *)self featureFlags];
      isMDMEnrollmentFlowControllerAdoptionEnabled = [(BuddyFeatureFlags *)featureFlags isMDMEnrollmentFlowControllerAdoptionEnabled];

      if (isMDMEnrollmentFlowControllerAdoptionEnabled)
      {
        enrollmentCoordinator = [(BuddyWiFiController *)self enrollmentCoordinator];
        [(BuddyEnrollmentCoordinator *)enrollmentCoordinator networkAcquired];
      }

      delegate = [(BuddyWiFiController *)self delegate];
      [(BFFFlowItemDelegate *)delegate flowItemDone:self];
    }

    [(BuddyWiFiController *)self stopScanning];
  }
}

- (void)_confirmThenFlowItemDoneWithResetActivationMethod:(BOOL)method
{
  selfCopy = self;
  v21 = a2;
  methodCopy = method;
  networkProvider = [(BuddyWiFiController *)self networkProvider];
  v4 = ![(BuddyNetworkProvider *)networkProvider networkReachable];

  if (v4)
  {
    location = +[BuddySkipWiFiAlertController alertController];
    v12 = _NSConcreteStackBlock;
    v13 = -1073741824;
    v14 = 0;
    v15 = sub_10022ABD4;
    v16 = &unk_10032B688;
    v17 = selfCopy;
    v18 = methodCopy;
    [location setSkipWiFi:&v12];
    v6 = _NSConcreteStackBlock;
    v7 = -1073741824;
    v8 = 0;
    v9 = sub_10022AC40;
    v10 = &unk_10032B0D0;
    v11 = selfCopy;
    [location setUseWiFi:&v6];
    viewController = [(BuddyWiFiController *)selfCopy viewController];
    [viewController presentViewController:location animated:1 completion:0];

    objc_storeStrong(&v11, 0);
    objc_storeStrong(&v17, 0);
    objc_storeStrong(&location, 0);
  }

  else
  {
    [(BuddyWiFiController *)selfCopy _flowItemDoneWithResetActivationMethod:methodCopy];
  }
}

- (void)_nextTapped:(id)tapped
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, tapped);
  networkProvider = [(BuddyWiFiController *)selfCopy networkProvider];
  v4 = 0;
  if (![(BuddyNetworkProvider *)networkProvider networkReachable])
  {
    v4 = selfCopy->_wifiTimeoutTimer != 0;
  }

  if (v4)
  {
    oslog = _BYLoggingFacility();
    v10 = OS_LOG_TYPE_DEFAULT;
    if (os_log_type_enabled(oslog, OS_LOG_TYPE_DEFAULT))
    {
      v5 = oslog;
      v6 = v10;
      sub_10006AA68(buf);
      _os_log_impl(&_mh_execute_header, v5, v6, "Waiting for Wi-Fi Network", buf, 2u);
    }

    objc_storeStrong(&oslog, 0);
    viewController = [(BuddyWiFiController *)selfCopy viewController];
    view = [viewController view];
    [view setUserInteractionEnabled:0];

    [(BuddyWiFiController *)selfCopy _showNavBarSpinner];
  }

  else
  {
    [(BuddyWiFiController *)selfCopy _confirmThenFlowItemDoneWithResetActivationMethod:1];
  }

  objc_storeStrong(location, 0);
}

- (void)reachabilityChanged:(BOOL)changed
{
  if (changed)
  {
    if (self->_showingWifiTimeoutSpinner)
    {
      [(BuddyWiFiController *)self setPreventNextButtonCreation:1];
      [(BuddyWiFiController *)self _clearWifiTimeoutTimer];
      [(BuddyWiFiController *)self _resetWifiControllerTimeoutSpinner];
      [(BuddyWiFiController *)self _flowItemDone];
    }

    else
    {
      enrollmentCoordinator = [(BuddyWiFiController *)self enrollmentCoordinator];
      v4 = 1;
      if (![(BuddyEnrollmentCoordinator *)enrollmentCoordinator shouldDoReturnToService])
      {
        v4 = 0;
        if ((+[DMCMultiUserModeUtilities inSharediPadUserSession]& 1) != 0)
        {
          v4 = +[DMCMultiUserModeUtilities awaitUserConfigurationEnabled];
        }
      }

      if (v4)
      {
        [(BuddyWiFiController *)self _flowItemDone];
      }
    }

    [(BuddyWiFiController *)self _clearReturnToServiceTimer];
  }

  [(BuddyWiFiController *)self updateNextButton];
  viewController = [(BuddyWiFiController *)self viewController];
  navigationController = [viewController navigationController];
  topViewController = [navigationController topViewController];
  presentedViewController = [topViewController presentedViewController];
  v9 = presentedViewController == self->_badWifiAlert;

  networkProvider = [(BuddyWiFiController *)self networkProvider];
  v11 = 0;
  if ([(BuddyNetworkProvider *)networkProvider connectedOverWiFiAndNetworkReachable])
  {
    v11 = v9;
  }

  if (v11)
  {
    [(UIAlertController *)self->_badWifiAlert dismissViewControllerAnimated:1 completion:0];
    objc_storeStrong(&self->_badWifiAlert, 0);
  }
}

- (void)updateNextButton
{
  selfCopy = self;
  v8[1] = a2;
  v2 = dispatch_get_global_queue(0, 0);
  block = _NSConcreteStackBlock;
  v4 = -1073741824;
  v5 = 0;
  v6 = sub_10022B064;
  v7 = &unk_10032B0D0;
  v8[0] = selfCopy;
  dispatch_async(v2, &block);

  objc_storeStrong(v8, 0);
}

- (void)_showNavBarSpinner
{
  if (!self->_showingWifiTimeoutSpinner)
  {
    viewController = [(BuddyWiFiController *)self viewController];
    [BFFViewControllerSpinnerManager startAnimatingSpinnerFor:viewController identifier:@"WifiSpinner"];

    self->_showingWifiTimeoutSpinner = 1;
  }
}

- (void)_resetWifiControllerTimeoutSpinner
{
  if (self->_showingWifiTimeoutSpinner)
  {
    viewController = [(BuddyWiFiController *)self viewController];
    view = [viewController view];
    [view setUserInteractionEnabled:1];

    self->_showingWifiTimeoutSpinner = 0;
    [BFFViewControllerSpinnerManager stopAnimatingSpinnerFor:@"WifiSpinner"];
    [(BuddyWiFiController *)self updateNextButton];
  }
}

- (void)wifiNetworkJoinFinished:(id)finished
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, finished);
  userInfo = [location[0] userInfo];
  v4 = sub_10022B894();
  v22 = [userInfo objectForKey:v4];

  if (v22)
  {
    v18 = _BYLoggingFacility();
    if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
    {
      v16 = 0;
      v14 = 0;
      if (_BYIsInternalInstall())
      {
        v13 = v22;
      }

      else
      {
        domain = [v22 domain];
        v16 = 1;
        v13 = +[NSString stringWithFormat:](NSString, "stringWithFormat:", @"<Error domain: %@, code %ld>", domain, [v22 code]);
        v15 = v13;
        v14 = 1;
      }

      sub_100071CBC(v25, v13);
      _os_log_impl(&_mh_execute_header, v18, OS_LOG_TYPE_DEFAULT, "WiFi Join Failed: %{public}@", v25, 0xCu);
      if (v14)
      {
      }

      if (v16)
      {
      }
    }

    objc_storeStrong(&v18, 0);
    [(BuddyWiFiController *)selfCopy _clearWifiTimeoutTimer];
    [(BuddyWiFiController *)selfCopy _resetWifiControllerTimeoutSpinner];
  }

  else
  {
    networkProvider = [(BuddyWiFiController *)selfCopy networkProvider];
    networkReachable = [(BuddyNetworkProvider *)networkProvider networkReachable];

    if (networkReachable)
    {
      [(BuddyWiFiController *)selfCopy _flowItemDone];
    }

    else
    {
      oslog = _BYLoggingFacility();
      v20 = 2;
      if (os_log_type_enabled(oslog, OS_LOG_TYPE_DEBUG))
      {
        v7 = oslog;
        v8 = v20;
        sub_10006AA68(buf);
        _os_log_debug_impl(&_mh_execute_header, v7, v8, "WiFi network joined, waiting for reachability notification", buf, 2u);
      }

      objc_storeStrong(&oslog, 0);
      [(BuddyWiFiController *)selfCopy _clearWifiTimeoutTimer];
      v9 = [NSTimer scheduledTimerWithTimeInterval:selfCopy target:"wifiTimeoutFired:" selector:0 userInfo:0 repeats:20.0];
      wifiTimeoutTimer = selfCopy->_wifiTimeoutTimer;
      selfCopy->_wifiTimeoutTimer = v9;

      viewController = [(BuddyWiFiController *)selfCopy viewController];
      view = [viewController view];
      [view setUserInteractionEnabled:0];

      [(BuddyWiFiController *)selfCopy _showNavBarSpinner];
    }
  }

  objc_storeStrong(&v22, 0);
  objc_storeStrong(location, 0);
}

- (void)wifiTimeoutFired:(id)fired
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, fired);
  [(BuddyWiFiController *)selfCopy _clearWifiTimeoutTimer];
  showingWifiTimeoutSpinner = selfCopy->_showingWifiTimeoutSpinner;
  [(BuddyWiFiController *)selfCopy _resetWifiControllerTimeoutSpinner];
  viewController = [(BuddyWiFiController *)selfCopy viewController];
  navigationController = [viewController navigationController];
  topViewController = [navigationController topViewController];
  viewController = selfCopy->_viewController;
  v51 = 0;
  v49 = 0;
  v47 = 0;
  v7 = 1;
  if (topViewController == viewController)
  {
    viewController2 = [(BuddyWiFiController *)selfCopy viewController];
    v51 = 1;
    navigationController2 = [viewController2 navigationController];
    v49 = 1;
    presentedViewController = [navigationController2 presentedViewController];
    v47 = 1;
    v7 = presentedViewController != 0;
  }

  if (v47)
  {
  }

  if (v49)
  {
  }

  if (v51)
  {
  }

  if (v7)
  {
    v46 = 1;
  }

  else
  {
    networkProvider = [(BuddyWiFiController *)selfCopy networkProvider];
    connectedOverWiFiAndNetworkReachable = [(BuddyNetworkProvider *)networkProvider connectedOverWiFiAndNetworkReachable];

    if (connectedOverWiFiAndNetworkReachable)
    {
      v46 = 1;
    }

    else
    {
      v10 = +[BuddyActivationConfiguration currentConfiguration];
      v11 = 0;
      if (!v10)
      {
        v11 = !showingWifiTimeoutSpinner;
      }

      if (v11)
      {
        v46 = 1;
      }

      else
      {
        out_token = 0;
        state64 = 0;
        if (!notify_register_check("com.apple.springboard.remoteSheetActive", &out_token))
        {
          notify_get_state(out_token, &state64);
        }

        if (state64 == 1)
        {
          v46 = 1;
        }

        else
        {
          [(BuddyWiFiController *)selfCopy updateNextButton];
          oslog = _BYLoggingFacility();
          v42 = OS_LOG_TYPE_DEFAULT;
          if (os_log_type_enabled(oslog, OS_LOG_TYPE_DEFAULT))
          {
            v12 = oslog;
            v13 = v42;
            sub_10006AA68(buf);
            _os_log_impl(&_mh_execute_header, v12, v13, "Showing WiFi Timeout Alert", buf, 2u);
          }

          objc_storeStrong(&oslog, 0);
          v14 = +[NSBundle mainBundle];
          v15 = [(NSBundle *)v14 localizedStringForKey:@"NO_NETWORK_CONNECTION_TITLE" value:&stru_10032F900 table:@"Localizable"];
          v16 = +[NSBundle mainBundle];
          v17 = SFLocalizableWAPIStringKeyForKey();
          v18 = [(NSBundle *)v16 localizedStringForKey:v17 value:&stru_10032F900 table:@"Localizable"];
          v19 = [UIAlertController alertControllerWithTitle:v15 message:v18 preferredStyle:1];
          badWifiAlert = selfCopy->_badWifiAlert;
          selfCopy->_badWifiAlert = v19;

          v21 = selfCopy->_badWifiAlert;
          v22 = +[NSBundle mainBundle];
          v23 = [(NSBundle *)v22 localizedStringForKey:@"NO_NETWORK_CONNECTION_SETTINGS" value:&stru_10032F900 table:@"Localizable"];
          v35 = _NSConcreteStackBlock;
          v36 = -1073741824;
          v37 = 0;
          v38 = sub_10022C00C;
          v39 = &unk_10032B598;
          v40 = selfCopy;
          v24 = [UIAlertAction actionWithTitle:v23 style:1 handler:&v35];
          [(UIAlertController *)v21 addAction:v24];

          v25 = selfCopy->_badWifiAlert;
          v26 = +[NSBundle mainBundle];
          v27 = [(NSBundle *)v26 localizedStringForKey:@"OK" value:&stru_10032F900 table:@"Localizable"];
          v30 = _NSConcreteStackBlock;
          v31 = 3221225472;
          v32 = sub_10022C098;
          v33 = &unk_10032B598;
          v34 = selfCopy;
          v28 = [UIAlertAction actionWithTitle:v27 style:0 handler:&v30];
          [(UIAlertController *)v25 addAction:v28, v30, v31, v32, v33];

          viewController3 = [(BuddyWiFiController *)selfCopy viewController];
          [viewController3 presentViewController:selfCopy->_badWifiAlert animated:1 completion:0];

          objc_storeStrong(&v34, 0);
          objc_storeStrong(&v40, 0);
          v46 = 0;
        }
      }
    }
  }

  objc_storeStrong(location, 0);
}

- (void)_startReturnToServiceTimer
{
  selfCopy = self;
  location[1] = a2;
  location[0] = _BYLoggingFacility();
  v11 = OS_LOG_TYPE_DEFAULT;
  if (os_log_type_enabled(location[0], OS_LOG_TYPE_DEFAULT))
  {
    v2 = location[0];
    v3 = v11;
    sub_10006AA68(buf);
    _os_log_impl(&_mh_execute_header, v2, v3, "Return to Service: Waiting 30 seconds for any network...", buf, 2u);
  }

  objc_storeStrong(location, 0);
  v4 = _NSConcreteStackBlock;
  v5 = 3221225472;
  v6 = sub_10022C23C;
  v7 = &unk_10032CAC0;
  v8 = selfCopy;
  v9 = [NSTimer scheduledTimerWithTimeInterval:0 repeats:&v4 block:30.0];
  [(BuddyWiFiController *)selfCopy setRtsTimeoutTimer:v9, v4, v5, v6, v7];
  objc_storeStrong(&v9, 0);
  objc_storeStrong(&v8, 0);
}

- (void)_clearReturnToServiceTimer
{
  rtsTimeoutTimer = [(BuddyWiFiController *)self rtsTimeoutTimer];
  [(NSTimer *)rtsTimeoutTimer invalidate];

  [(BuddyWiFiController *)self setRtsTimeoutTimer:0];
}

- (void)_updateActivationMethod
{
  v2 = +[BuddyActivationConfiguration currentConfiguration];
  supportsCellularActivation = [v2 supportsCellularActivation];

  [(WFBuddyViewController *)self->_viewController setSupportsCellularActivation:supportsCellularActivation & 1];
}

- (void)buddyViewControllerDidPressAlternateSetupButton:(id)button
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, button);
  v3 = [(WFBuddyViewController *)selfCopy->_viewController supportsCellularActivation]^ 1;
  miscState = [(BuddyWiFiController *)selfCopy miscState];
  [(BuddyMiscState *)miscState setUserSelectedTetheredActivation:v3 & 1];

  [(BuddyWiFiController *)selfCopy _confirmThenFlowItemDoneWithResetActivationMethod:0];
  objc_storeStrong(location, 0);
}

- (void)activationConfigurationChanged:(BOOL)changed isActivated:(BOOL)activated
{
  selfCopy = self;
  v13 = a2;
  changedCopy = changed;
  activatedCopy = activated;
  v4 = &_dispatch_main_q;
  v5 = _NSConcreteStackBlock;
  v6 = -1073741824;
  v7 = 0;
  v8 = sub_10022C5F4;
  v9 = &unk_10032B0D0;
  v10 = selfCopy;
  dispatch_async(v4, &v5);

  objc_storeStrong(&v10, 0);
}

- (BFFFlowItemDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end