@interface BuddyWiFiController
+ (BOOL)isTrailingWithEnvironment:(id)a3;
- (BFFFlowItemDelegate)delegate;
- (BOOL)controllerNeedsToRun;
- (BuddyWiFiController)init;
- (void)_clearReturnToServiceTimer;
- (void)_confirmThenFlowItemDoneWithResetActivationMethod:(BOOL)a3;
- (void)_flowItemDoneWithResetActivationMethod:(BOOL)a3;
- (void)_nextTapped:(id)a3;
- (void)_resetWifiControllerTimeoutSpinner;
- (void)_showNavBarSpinner;
- (void)_startReturnToServiceTimer;
- (void)_updateActivationMethod;
- (void)activationConfigurationChanged:(BOOL)a3 isActivated:(BOOL)a4;
- (void)buddyViewControllerDidPressAlternateSetupButton:(id)a3;
- (void)controllerWasPopped;
- (void)navigationController:(id)a3 willShowViewController:(id)a4 operation:(int64_t)a5 animated:(BOOL)a6;
- (void)reachabilityChanged:(BOOL)a3;
- (void)setNavigationController:(id)a3;
- (void)startScanningIfNecessary;
- (void)stopScanning;
- (void)updateNextButton;
- (void)wifiNetworkJoinFinished:(id)a3;
- (void)wifiTimeoutFired:(id)a3;
@end

@implementation BuddyWiFiController

- (BOOL)controllerNeedsToRun
{
  v2 = [(BuddyWiFiController *)self networkProvider];
  v3 = [(BuddyNetworkProvider *)v2 connectedOverWiFiAndNetworkReachable];
  v6 = 0;
  v4 = 0;
  if ((v3 & 1) == 0)
  {
    v7 = [(BuddyWiFiController *)self networkProvider];
    v6 = 1;
    v4 = [(BuddyNetworkProvider *)v7 supportsWiFi];
  }

  v9 = v4 & 1;
  if (v6)
  {
  }

  return v9 & 1;
}

+ (BOOL)isTrailingWithEnvironment:(id)a3
{
  location[2] = a1;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  v3 = [location[0] proximitySetupController];
  v4 = [v3 hasAppliedSettings];

  objc_storeStrong(location, 0);
  return v4 & 1;
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
  v7 = self;
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
    [(WFNetworkListController *)v7->_wifiManager startScanning];
  }
}

- (void)stopScanning
{
  v7 = self;
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
  [(WFNetworkListController *)v7->_wifiManager stopScanning];
}

- (void)setNavigationController:(id)a3
{
  v7 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  WeakRetained = objc_loadWeakRetained(&v7->_navigationController);
  v4 = WeakRetained == 0;

  if (v4)
  {
    objc_storeWeak(&v7->_navigationController, location[0]);
    v5 = objc_loadWeakRetained(&v7->_navigationController);
    [v5 addDelegateObserver:v7];
  }

  objc_storeStrong(location, 0);
}

- (void)controllerWasPopped
{
  v2 = [(BuddyWiFiController *)self miscState:a2];
  [(BuddyMiscState *)v2 setUserSkippedWiFi:0];
}

- (void)navigationController:(id)a3 willShowViewController:(id)a4 operation:(int64_t)a5 animated:(BOOL)a6
{
  v25 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  v23 = 0;
  objc_storeStrong(&v23, a4);
  v22 = a5;
  v21 = a6;
  if (v23 == v25->_viewController || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
  {
    [(BuddyWiFiController *)v25 setWillPush:0];
    [(BuddyWiFiController *)v25 setPreventNextButtonCreation:0];
    [(BuddyWiFiController *)v25 updateNextButton];
    v10 = [(BuddyWiFiController *)v25 proximitySetupController];
    v11 = [(ProximitySetupController *)v10 hasConnection];

    if (v11)
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
      v14 = [(BuddyWiFiController *)v25 proximityAutomatedDeviceEnrollmentController];
      [(BuddyProximityAutomatedDeviceEnrollmentController *)v14 beginAdvertising];
    }

    [(WFNetworkListController *)v25->_wifiManager startScanning];
    if (v22 == 1)
    {
      [(BuddyWiFiController *)v25 _updateActivationMethod];
      v15 = [(BuddyWiFiController *)v25 enrollmentCoordinator];
      v16 = [(BuddyEnrollmentCoordinator *)v15 shouldDoReturnToService];

      if (v16)
      {
        [(BuddyWiFiController *)v25 _startReturnToServiceTimer];
      }
    }

    v20 = 0;
  }

  else
  {
    v9 = [(BuddyWiFiController *)v25 proximityAutomatedDeviceEnrollmentController];
    [(BuddyProximityAutomatedDeviceEnrollmentController *)v9 endAdvertising];

    v20 = 1;
  }

  objc_storeStrong(&v23, 0);
  objc_storeStrong(location, 0);
}

- (void)_flowItemDoneWithResetActivationMethod:(BOOL)a3
{
  if (![(BuddyWiFiController *)self willPush])
  {
    if (a3)
    {
      v3 = [(BuddyWiFiController *)self miscState];
      [(BuddyMiscState *)v3 setUserSelectedCellularActivation:0];

      v4 = [(BuddyWiFiController *)self miscState];
      [(BuddyMiscState *)v4 setUserSelectedTetheredActivation:0];
    }

    else
    {
      v4 = +[BuddyActivationConfiguration currentConfiguration];
      v5 = [(BuddyMiscState *)v4 supportsCellularActivation];
      v6 = [(BuddyWiFiController *)self miscState];
      [(BuddyMiscState *)v6 setUserSelectedCellularActivation:v5 & 1];
    }

    [(BuddyWiFiController *)self setWillPush:1];
    v7 = [(BuddyWiFiController *)self viewController];
    v8 = [v7 navigationController];
    v9 = [v8 topViewController];
    viewController = self->_viewController;

    if (v9 == viewController)
    {
      v11 = [(BuddyWiFiController *)self featureFlags];
      v12 = [(BuddyFeatureFlags *)v11 isMDMEnrollmentFlowControllerAdoptionEnabled];

      if (v12)
      {
        v13 = [(BuddyWiFiController *)self enrollmentCoordinator];
        [(BuddyEnrollmentCoordinator *)v13 networkAcquired];
      }

      v14 = [(BuddyWiFiController *)self delegate];
      [(BFFFlowItemDelegate *)v14 flowItemDone:self];
    }

    [(BuddyWiFiController *)self stopScanning];
  }
}

- (void)_confirmThenFlowItemDoneWithResetActivationMethod:(BOOL)a3
{
  v22 = self;
  v21 = a2;
  v20 = a3;
  v3 = [(BuddyWiFiController *)self networkProvider];
  v4 = ![(BuddyNetworkProvider *)v3 networkReachable];

  if (v4)
  {
    location = +[BuddySkipWiFiAlertController alertController];
    v12 = _NSConcreteStackBlock;
    v13 = -1073741824;
    v14 = 0;
    v15 = sub_10022ABD4;
    v16 = &unk_10032B688;
    v17 = v22;
    v18 = v20;
    [location setSkipWiFi:&v12];
    v6 = _NSConcreteStackBlock;
    v7 = -1073741824;
    v8 = 0;
    v9 = sub_10022AC40;
    v10 = &unk_10032B0D0;
    v11 = v22;
    [location setUseWiFi:&v6];
    v5 = [(BuddyWiFiController *)v22 viewController];
    [v5 presentViewController:location animated:1 completion:0];

    objc_storeStrong(&v11, 0);
    objc_storeStrong(&v17, 0);
    objc_storeStrong(&location, 0);
  }

  else
  {
    [(BuddyWiFiController *)v22 _flowItemDoneWithResetActivationMethod:v20];
  }
}

- (void)_nextTapped:(id)a3
{
  v13 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  v3 = [(BuddyWiFiController *)v13 networkProvider];
  v4 = 0;
  if (![(BuddyNetworkProvider *)v3 networkReachable])
  {
    v4 = v13->_wifiTimeoutTimer != 0;
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
    v7 = [(BuddyWiFiController *)v13 viewController];
    v8 = [v7 view];
    [v8 setUserInteractionEnabled:0];

    [(BuddyWiFiController *)v13 _showNavBarSpinner];
  }

  else
  {
    [(BuddyWiFiController *)v13 _confirmThenFlowItemDoneWithResetActivationMethod:1];
  }

  objc_storeStrong(location, 0);
}

- (void)reachabilityChanged:(BOOL)a3
{
  if (a3)
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
      v3 = [(BuddyWiFiController *)self enrollmentCoordinator];
      v4 = 1;
      if (![(BuddyEnrollmentCoordinator *)v3 shouldDoReturnToService])
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
  v5 = [(BuddyWiFiController *)self viewController];
  v6 = [v5 navigationController];
  v7 = [v6 topViewController];
  v8 = [v7 presentedViewController];
  v9 = v8 == self->_badWifiAlert;

  v10 = [(BuddyWiFiController *)self networkProvider];
  v11 = 0;
  if ([(BuddyNetworkProvider *)v10 connectedOverWiFiAndNetworkReachable])
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
  v9 = self;
  v8[1] = a2;
  v2 = dispatch_get_global_queue(0, 0);
  block = _NSConcreteStackBlock;
  v4 = -1073741824;
  v5 = 0;
  v6 = sub_10022B064;
  v7 = &unk_10032B0D0;
  v8[0] = v9;
  dispatch_async(v2, &block);

  objc_storeStrong(v8, 0);
}

- (void)_showNavBarSpinner
{
  if (!self->_showingWifiTimeoutSpinner)
  {
    v2 = [(BuddyWiFiController *)self viewController];
    [BFFViewControllerSpinnerManager startAnimatingSpinnerFor:v2 identifier:@"WifiSpinner"];

    self->_showingWifiTimeoutSpinner = 1;
  }
}

- (void)_resetWifiControllerTimeoutSpinner
{
  if (self->_showingWifiTimeoutSpinner)
  {
    v2 = [(BuddyWiFiController *)self viewController];
    v3 = [v2 view];
    [v3 setUserInteractionEnabled:1];

    self->_showingWifiTimeoutSpinner = 0;
    [BFFViewControllerSpinnerManager stopAnimatingSpinnerFor:@"WifiSpinner"];
    [(BuddyWiFiController *)self updateNextButton];
  }
}

- (void)wifiNetworkJoinFinished:(id)a3
{
  v24 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  v3 = [location[0] userInfo];
  v4 = sub_10022B894();
  v22 = [v3 objectForKey:v4];

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
        v17 = [v22 domain];
        v16 = 1;
        v13 = +[NSString stringWithFormat:](NSString, "stringWithFormat:", @"<Error domain: %@, code %ld>", v17, [v22 code]);
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
    [(BuddyWiFiController *)v24 _clearWifiTimeoutTimer];
    [(BuddyWiFiController *)v24 _resetWifiControllerTimeoutSpinner];
  }

  else
  {
    v5 = [(BuddyWiFiController *)v24 networkProvider];
    v6 = [(BuddyNetworkProvider *)v5 networkReachable];

    if (v6)
    {
      [(BuddyWiFiController *)v24 _flowItemDone];
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
      [(BuddyWiFiController *)v24 _clearWifiTimeoutTimer];
      v9 = [NSTimer scheduledTimerWithTimeInterval:v24 target:"wifiTimeoutFired:" selector:0 userInfo:0 repeats:20.0];
      wifiTimeoutTimer = v24->_wifiTimeoutTimer;
      v24->_wifiTimeoutTimer = v9;

      v11 = [(BuddyWiFiController *)v24 viewController];
      v12 = [v11 view];
      [v12 setUserInteractionEnabled:0];

      [(BuddyWiFiController *)v24 _showNavBarSpinner];
    }
  }

  objc_storeStrong(&v22, 0);
  objc_storeStrong(location, 0);
}

- (void)wifiTimeoutFired:(id)a3
{
  v55 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  [(BuddyWiFiController *)v55 _clearWifiTimeoutTimer];
  showingWifiTimeoutSpinner = v55->_showingWifiTimeoutSpinner;
  [(BuddyWiFiController *)v55 _resetWifiControllerTimeoutSpinner];
  v3 = [(BuddyWiFiController *)v55 viewController];
  v4 = [v3 navigationController];
  v5 = [v4 topViewController];
  viewController = v55->_viewController;
  v51 = 0;
  v49 = 0;
  v47 = 0;
  v7 = 1;
  if (v5 == viewController)
  {
    v52 = [(BuddyWiFiController *)v55 viewController];
    v51 = 1;
    v50 = [v52 navigationController];
    v49 = 1;
    v48 = [v50 presentedViewController];
    v47 = 1;
    v7 = v48 != 0;
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
    v8 = [(BuddyWiFiController *)v55 networkProvider];
    v9 = [(BuddyNetworkProvider *)v8 connectedOverWiFiAndNetworkReachable];

    if (v9)
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
          [(BuddyWiFiController *)v55 updateNextButton];
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
          badWifiAlert = v55->_badWifiAlert;
          v55->_badWifiAlert = v19;

          v21 = v55->_badWifiAlert;
          v22 = +[NSBundle mainBundle];
          v23 = [(NSBundle *)v22 localizedStringForKey:@"NO_NETWORK_CONNECTION_SETTINGS" value:&stru_10032F900 table:@"Localizable"];
          v35 = _NSConcreteStackBlock;
          v36 = -1073741824;
          v37 = 0;
          v38 = sub_10022C00C;
          v39 = &unk_10032B598;
          v40 = v55;
          v24 = [UIAlertAction actionWithTitle:v23 style:1 handler:&v35];
          [(UIAlertController *)v21 addAction:v24];

          v25 = v55->_badWifiAlert;
          v26 = +[NSBundle mainBundle];
          v27 = [(NSBundle *)v26 localizedStringForKey:@"OK" value:&stru_10032F900 table:@"Localizable"];
          v30 = _NSConcreteStackBlock;
          v31 = 3221225472;
          v32 = sub_10022C098;
          v33 = &unk_10032B598;
          v34 = v55;
          v28 = [UIAlertAction actionWithTitle:v27 style:0 handler:&v30];
          [(UIAlertController *)v25 addAction:v28, v30, v31, v32, v33];

          v29 = [(BuddyWiFiController *)v55 viewController];
          [v29 presentViewController:v55->_badWifiAlert animated:1 completion:0];

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
  v13 = self;
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
  v8 = v13;
  v9 = [NSTimer scheduledTimerWithTimeInterval:0 repeats:&v4 block:30.0];
  [(BuddyWiFiController *)v13 setRtsTimeoutTimer:v9, v4, v5, v6, v7];
  objc_storeStrong(&v9, 0);
  objc_storeStrong(&v8, 0);
}

- (void)_clearReturnToServiceTimer
{
  v2 = [(BuddyWiFiController *)self rtsTimeoutTimer];
  [(NSTimer *)v2 invalidate];

  [(BuddyWiFiController *)self setRtsTimeoutTimer:0];
}

- (void)_updateActivationMethod
{
  v2 = +[BuddyActivationConfiguration currentConfiguration];
  v3 = [v2 supportsCellularActivation];

  [(WFBuddyViewController *)self->_viewController setSupportsCellularActivation:v3 & 1];
}

- (void)buddyViewControllerDidPressAlternateSetupButton:(id)a3
{
  v6 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  v3 = [(WFBuddyViewController *)v6->_viewController supportsCellularActivation]^ 1;
  v4 = [(BuddyWiFiController *)v6 miscState];
  [(BuddyMiscState *)v4 setUserSelectedTetheredActivation:v3 & 1];

  [(BuddyWiFiController *)v6 _confirmThenFlowItemDoneWithResetActivationMethod:0];
  objc_storeStrong(location, 0);
}

- (void)activationConfigurationChanged:(BOOL)a3 isActivated:(BOOL)a4
{
  v14 = self;
  v13 = a2;
  v12 = a3;
  v11 = a4;
  v4 = &_dispatch_main_q;
  v5 = _NSConcreteStackBlock;
  v6 = -1073741824;
  v7 = 0;
  v8 = sub_10022C5F4;
  v9 = &unk_10032B0D0;
  v10 = v14;
  dispatch_async(v4, &v5);

  objc_storeStrong(&v10, 0);
}

- (BFFFlowItemDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end