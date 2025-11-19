@interface ActivationController
- (ActivationController)init;
- (BOOL)controllerNeedsToRun;
- (BOOL)remoteUIController:(id)a3 shouldLoadRequest:(id)a4 redirectResponse:(id)a5;
- (BOOL)shouldSuppressExtendedInitializationActivityIndicator;
- (void)_activate;
- (void)_activateIfNecessary;
- (void)_activateWithPasscode:(id)a3 fromObjectModel:(id)a4;
- (void)_addAnalyticsEventWithSuccess:(BOOL)a3;
- (void)_attemptDismiss;
- (void)_checkActivationFailIfNotActivated:(BOOL)a3;
- (void)_checkActivationFailIfNotActivated:(BOOL)a3 isActivated:(BOOL)a4;
- (void)_checkBasebandStatusBeforeActivation;
- (void)_clearDisplayTimer;
- (void)_clearTicketAcceptedTimer;
- (void)_dismissRemoteUI;
- (void)_displayTimerTimeout;
- (void)_enterState:(int)a3;
- (void)_getSRPInitNonceRequestOptionsCompletion:(id)a3;
- (void)_handleActivationData:(id)a3 responseHeaders:(id)a4 baseURL:(id)a5;
- (void)_handleEscrowResponse:(id)a3;
- (void)_handleFailureWithError:(id)a3;
- (void)_handlePlanAddition:(id)a3;
- (void)_releaseOTAAssertion;
- (void)_removeViewControllersIncludingSelf:(BOOL)a3;
- (void)_restorePasteboard;
- (void)_sanitizeSystemTime;
- (void)_setHandlerForPasscode;
- (void)_startActivation;
- (void)_startActivationLockExpirationTimerForPage:(id)a3;
- (void)_stashPasteboard;
- (void)_stopActivationLockExpirationTimer;
- (void)_systemTimeUpdated;
- (void)_ticketAcceptedDidTimeout;
- (void)_tryActivateWithOptions:(id)a3 requestMutator:(id)a4;
- (void)_userAgreedToTCs:(BOOL)a3;
- (void)_writeAcknowledgment;
- (void)activationConfigurationChanged:(BOOL)a3 isActivated:(BOOL)a4;
- (void)agreeToRemoteUIDialog;
- (void)back:(id)a3;
- (void)dealloc;
- (void)didBecomeActive:(id)a3;
- (void)didResignActive:(id)a3;
- (void)loadView;
- (void)remoteUIController:(id)a3 didFinishLoadWithError:(id)a4 forRequest:(id)a5;
- (void)remoteUIController:(id)a3 didReceiveObjectModel:(id)a4 actionSignal:(unint64_t *)a5;
- (void)remoteUIController:(id)a3 didRemoveObjectModel:(id)a4;
- (void)remoteUIController:(id)a3 willPresentObjectModel:(id)a4 modally:(BOOL)a5;
- (void)restart;
- (void)startOver;
- (void)startRequest:(id)a3 completion:(id)a4;
- (void)startSpinningWithIdentifier:(id)a3;
- (void)stopSpinningForIdentifier:(id)a3;
- (void)tryAgainOnRemoteUIDialog;
- (void)viewDidAppear:(BOOL)a3;
- (void)viewWillAppear:(BOOL)a3;
- (void)viewWillDisappear:(BOOL)a3;
@end

@implementation ActivationController

- (BOOL)controllerNeedsToRun
{
  v10 = self;
  location[1] = a2;
  v2 = +[BYPreferencesController buddyPreferencesInternal];
  v3 = [v2 BOOLForKey:@"networkAlwaysSupportActivation"];

  if (v3)
  {
    v11 = 1;
  }

  else
  {
    location[0] = +[BuddyActivationConfiguration currentConfiguration];
    v8 = [location[0] isActivated] & 1;
    v6 = 0;
    v4 = 0;
    if (!v8)
    {
      v7 = [(ActivationController *)v10 miscState];
      v6 = 1;
      v4 = [(BuddyMiscState *)v7 userSelectedTetheredActivation];
    }

    if (v6)
    {
    }

    if (v4)
    {
      v11 = 0;
    }

    else
    {
      v11 = (v8 ^ 1) & 1;
    }

    objc_storeStrong(location, 0);
  }

  return v11 & 1;
}

- (void)_releaseOTAAssertion
{
  v7 = self;
  oslog[1] = a2;
  if (self->_otaAssertion)
  {
    oslog[0] = _BYLoggingFacility();
    v5 = OS_LOG_TYPE_DEFAULT;
    if (os_log_type_enabled(oslog[0], OS_LOG_TYPE_DEFAULT))
    {
      v2 = oslog[0];
      v3 = v5;
      sub_10006AA68(v4);
      _os_log_impl(&_mh_execute_header, v2, v3, "Buddy Activate: releasing OTA assertion", v4, 2u);
    }

    objc_storeStrong(oslog, 0);
    CFRelease(v7->_otaAssertion);
    v7->_otaAssertion = 0;
  }
}

- (void)restart
{
  self->_state = 0;
  v2 = [(ActivationController *)self navigationController];
  v3 = [v2 popToViewController:self animated:1];
}

- (void)_removeViewControllersIncludingSelf:(BOOL)a3
{
  v9 = self;
  v8 = a2;
  v7 = a3;
  v6 = objc_alloc_init(NSMutableArray);
  if (v7)
  {
    [v6 addObject:v9];
  }

  v3 = v6;
  v4 = [(RemoteUIController *)v9->_remoteUIController displayedPages];
  [v3 addObjectsFromArray:v4];

  v5 = [(ActivationController *)v9 delegate];
  [v5 removeViewControllersOnNextPush:v6];

  objc_storeStrong(&v9->_remoteUIController, 0);
  objc_storeStrong(&v6, 0);
}

- (void)_attemptDismiss
{
  v13 = self;
  oslog[1] = a2;
  oslog[0] = _BYLoggingFacility();
  v11 = OS_LOG_TYPE_DEFAULT;
  if (os_log_type_enabled(oslog[0], OS_LOG_TYPE_DEFAULT))
  {
    if (v13->_displayTimerElapsed)
    {
      v2 = @"YASE";
    }

    else
    {
      v2 = @"NERP";
    }

    sub_100097718(buf, v13->_state, v2);
    _os_log_impl(&_mh_execute_header, oslog[0], v11, "Buddy Activate: Attempt dismiss. State = %i, _displayTimerElapsed = %@", buf, 0x12u);
  }

  objc_storeStrong(oslog, 0);
  if (v13->_displayTimerElapsed)
  {
    if (v13->_state != 3 || v13->_activationControllerDismissed)
    {
      if (v13->_state == 5)
      {
        [(ActivationController *)v13 _addAnalyticsEventWithSuccess:0];
        v5 = [(ActivationController *)v13 navigationController];
        location = [v5 viewControllers];

        if ([location containsObject:v13])
        {
          v6 = [BuddyActivationError alloc];
          v7 = [(BuddyActivationError *)v6 initWithConnectionFailure:v13->_connectionFailed cellular:v13->_connectionOTA];
          v8 = [(ActivationController *)v13 activationState];
          [(BuddyActivationState *)v8 setError:v7];

          [(ActivationController *)v13 _removeViewControllersIncludingSelf:0];
          [(ActivationController *)v13 _releaseOTAAssertion];
          v9 = [(ActivationController *)v13 delegate];
          [v9 flowItemDone:v13];
        }

        objc_storeStrong(&location, 0);
      }
    }

    else
    {
      [(ActivationController *)v13 _stopActivationLockExpirationTimer];
      [(ActivationController *)v13 _clearDisplayTimer];
      [(ActivationController *)v13 _clearTicketAcceptedTimer];
      [(ActivationController *)v13 _releaseOTAAssertion];
      [(ActivationController *)v13 _writeAcknowledgment];
      [(ActivationController *)v13 _addAnalyticsEventWithSuccess:1];
      [(ActivationController *)v13 _removeViewControllersIncludingSelf:1];
      [(ActivationController *)v13 _restorePasteboard];
      v3 = [(ActivationController *)v13 delegate];
      [v3 flowItemDone:v13];

      v4 = [(ActivationController *)v13 enrollmentCoordinator];
      [(BuddyEnrollmentCoordinator *)v4 deviceActivated];

      v13->_activationControllerDismissed = 1;
    }
  }
}

- (void)_enterState:(int)a3
{
  v47 = self;
  v46 = a2;
  v45 = a3;
  self->_state = a3;
  if (v45)
  {
    switch(v45)
    {
      case 1:
        v41 = _BYLoggingFacility();
        v40 = OS_LOG_TYPE_DEFAULT;
        if (os_log_type_enabled(v41, OS_LOG_TYPE_DEFAULT))
        {
          v5 = v41;
          v6 = v40;
          sub_10006AA68(v39);
          _os_log_impl(&_mh_execute_header, v5, v6, "Buddy Activate: Enter state Activating", v39, 2u);
        }

        objc_storeStrong(&v41, 0);
        break;
      case 2:
        oslog = _BYLoggingFacility();
        v37 = OS_LOG_TYPE_DEFAULT;
        if (os_log_type_enabled(oslog, OS_LOG_TYPE_DEFAULT))
        {
          v7 = oslog;
          v8 = v37;
          sub_10006AA68(v36);
          _os_log_impl(&_mh_execute_header, v7, v8, "Buddy Activate: Enter state TryActivate", v36, 2u);
        }

        objc_storeStrong(&oslog, 0);
        break;
      case 3:
        v35 = _BYLoggingFacility();
        v34 = OS_LOG_TYPE_DEFAULT;
        if (os_log_type_enabled(v35, OS_LOG_TYPE_DEFAULT))
        {
          v9 = v35;
          v10 = v34;
          sub_10006AA68(v33);
          _os_log_impl(&_mh_execute_header, v9, v10, "Buddy Activate: Enter state Activated", v33, 2u);
        }

        objc_storeStrong(&v35, 0);
        break;
      case 4:
        v32 = _BYLoggingFacility();
        v31 = OS_LOG_TYPE_DEFAULT;
        if (os_log_type_enabled(v32, OS_LOG_TYPE_DEFAULT))
        {
          v11 = v32;
          v12 = v31;
          sub_10006AA68(v30);
          _os_log_impl(&_mh_execute_header, v11, v12, "Buddy Activate: Enter state NotSilentPreActivation", v30, 2u);
        }

        objc_storeStrong(&v32, 0);
        break;
      case 5:
        v29 = _BYLoggingFacility();
        v28 = OS_LOG_TYPE_DEFAULT;
        if (os_log_type_enabled(v29, OS_LOG_TYPE_DEFAULT))
        {
          v13 = v29;
          v14 = v28;
          sub_10006AA68(v27);
          _os_log_impl(&_mh_execute_header, v13, v14, "Buddy Activate: Enter state Failure", v27, 2u);
        }

        objc_storeStrong(&v29, 0);
        break;
      case 6:
        v26 = _BYLoggingFacility();
        v25 = OS_LOG_TYPE_DEFAULT;
        if (os_log_type_enabled(v26, OS_LOG_TYPE_DEFAULT))
        {
          v15 = v26;
          v16 = v25;
          sub_10006AA68(v24);
          _os_log_impl(&_mh_execute_header, v15, v16, "Buddy Activate: Enter state WaitingForSystemTimeUpdate", v24, 2u);
        }

        objc_storeStrong(&v26, 0);
        break;
      case 7:
        v23 = _BYLoggingFacility();
        v22 = OS_LOG_TYPE_DEFAULT;
        if (os_log_type_enabled(v23, OS_LOG_TYPE_DEFAULT))
        {
          v17 = v23;
          v18 = v22;
          sub_10006AA68(v21);
          _os_log_impl(&_mh_execute_header, v17, v18, "Buddy Activate: Enter state WaitingForBaseband", v21, 2u);
        }

        objc_storeStrong(&v23, 0);
        break;
    }
  }

  else
  {
    location = _BYLoggingFacility();
    v43 = OS_LOG_TYPE_DEFAULT;
    if (os_log_type_enabled(location, OS_LOG_TYPE_DEFAULT))
    {
      v3 = location;
      v4 = v43;
      sub_10006AA68(buf);
      _os_log_impl(&_mh_execute_header, v3, v4, "Buddy Activate: Enter state Idle", buf, 2u);
    }

    objc_storeStrong(&location, 0);
  }

  if (v45 == 1 || v45 == 7 || v45 == 6 || v45 == 2 || !v47->_displayTimerElapsed)
  {
    v19 = +[UIApplication sharedApplication];
    [(UIApplication *)v19 setIdleTimerDisabled:1];
  }

  else
  {
    v20 = +[UIApplication sharedApplication];
    [(UIApplication *)v20 setIdleTimerDisabled:0];
  }

  [(ActivationController *)v47 _attemptDismiss];
}

- (BOOL)shouldSuppressExtendedInitializationActivityIndicator
{
  v2 = [(ActivationController *)self navigationController];
  v3 = [v2 topViewController];
  v4 = v3 == self;

  return v4;
}

- (ActivationController)init
{
  v23 = a2;
  v3 = +[NSBundle mainBundle];
  v4 = [UIDevice modelSpecificLocalizedStringKeyForKey:@"ACTIVATION_TIME"];
  v5 = [(NSBundle *)v3 localizedStringForKey:v4 value:&stru_10032F900 table:@"Localizable"];
  location = 0;
  v22.receiver = self;
  v22.super_class = ActivationController;
  v6 = [(ActivationController *)&v22 initWithSpinnerText:v5];
  location = v6;
  objc_storeStrong(&location, v6);

  if (v6)
  {
    [UINavigationBar _setUseCustomBackButtonAction:1];
    v7 = [location navigationItem];
    [v7 setTitle:&stru_10032F900];

    v8 = [UIBarButtonItem alloc];
    v9 = +[NSBundle mainBundle];
    v10 = [(NSBundle *)v9 localizedStringForKey:@"BACK" value:&stru_10032F900 table:@"Localizable"];
    v11 = [v8 initWithTitle:v10 style:0 target:location action:"back:"];
    v12 = [location navigationItem];
    [v12 setBackBarButtonItem:v11];

    v13 = objc_opt_new();
    v14 = *(location + 3);
    *(location + 3) = v13;

    v15 = +[BuddyActivationConfiguration currentConfiguration];
    [v15 addDelegate:location];

    v16 = +[NSNotificationCenter defaultCenter];
    [(NSNotificationCenter *)v16 addObserver:location selector:"didBecomeActive:" name:UIApplicationDidBecomeActiveNotification object:0];

    v17 = +[NSNotificationCenter defaultCenter];
    [(NSNotificationCenter *)v17 addObserver:location selector:"didResignActive:" name:UIApplicationWillResignActiveNotification object:0];

    v18 = objc_alloc_init(SecureBackup);
    v19 = *(location + 6);
    *(location + 6) = v18;
  }

  v20 = location;
  objc_storeStrong(&location, 0);
  return v20;
}

- (void)dealloc
{
  v6 = self;
  v5 = a2;
  center = CFNotificationCenterGetDarwinNotifyCenter();
  CFNotificationCenterRemoveEveryObserver(center, v6);
  v2 = +[NSNotificationCenter defaultCenter];
  [(NSNotificationCenter *)v2 removeObserver:v6];

  [(ActivationController *)v6 _cleanup];
  [(RemoteUIController *)v6->_remoteUIController setDelegate:0];
  [(ActivationController *)v6 _clearDisplayTimer];
  [(ActivationController *)v6 _clearWaitingForBasebandTimer];
  v3.receiver = v6;
  v3.super_class = ActivationController;
  [(ActivationController *)&v3 dealloc];
}

- (void)loadView
{
  v7 = self;
  v6 = a2;
  v5.receiver = self;
  v5.super_class = ActivationController;
  [(ActivationController *)&v5 loadView];
  [(ActivationController *)v7 setActivityIndicatorHidden:1];
  v2 = [OBPrivacyLinkController linkWithBundleIdentifier:BYPrivacyActivationIdentifier];
  [(ActivationController *)v7 setPrivacyLinkController:v2];

  v3 = [(ActivationController *)v7 privacyLinkController];
  v4 = [v3 view];
  [v4 setUserInteractionEnabled:0];
}

- (void)back:(id)a3
{
  v11 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  v9 = [(ActivationController *)v11 navigationController];
  v3 = [v9 topViewController];
  objc_opt_class();
  v7 = 0;
  v4 = 0;
  if (objc_opt_isKindOfClass())
  {
    v8 = [(ActivationController *)v11 delegate];
    v7 = 1;
    v4 = objc_opt_respondsToSelector();
  }

  if (v7)
  {
  }

  if (v4)
  {
    v5 = [(ActivationController *)v11 delegate];
    [v5 presentWiFiPaneForFlowItem:v11];
  }

  else
  {
    v6 = [v9 popViewControllerAnimated:1];
  }

  objc_storeStrong(&v9, 0);
  objc_storeStrong(location, 0);
}

- (void)_addAnalyticsEventWithSuccess:(BOOL)a3
{
  v3 = [(ActivationController *)self analyticsManager];
  v13[0] = @"cellular";
  v4 = [NSNumber numberWithBool:self->_connectionOTA];
  v14[0] = v4;
  v13[1] = @"duration";
  [(NSDate *)self->_startedActivationDate timeIntervalSinceNow];
  v6 = [NSNumber numberWithDouble:-v5];
  v14[1] = v6;
  v13[2] = @"hasPresentedUI";
  v7 = [NSNumber numberWithBool:self->_hasPresentedRemoteUI];
  v14[2] = v7;
  v13[3] = @"bootstrap";
  v8 = [NSNumber numberWithBool:self->_usingBootstrap];
  v14[3] = v8;
  v13[4] = @"success";
  v9 = [NSNumber numberWithBool:a3];
  v14[4] = v9;
  v10 = [NSDictionary dictionaryWithObjects:v14 forKeys:v13 count:5];
  [(BYAnalyticsManager *)v3 addEvent:@"com.apple.setupassistant.ios.activation" withPayload:v10 persist:1];
}

- (void)_clearDisplayTimer
{
  v7 = self;
  oslog[1] = a2;
  oslog[0] = _BYLoggingFacility();
  v5 = 2;
  if (os_log_type_enabled(oslog[0], OS_LOG_TYPE_DEBUG))
  {
    v2 = oslog[0];
    v3 = v5;
    sub_10006AA68(v4);
    _os_log_debug_impl(&_mh_execute_header, v2, v3, "Buddy Activate: Clear Display Timer", v4, 2u);
  }

  objc_storeStrong(oslog, 0);
  [(NSTimer *)v7->_displayTimer invalidate];
  objc_storeStrong(&v7->_displayTimer, 0);
}

- (void)_checkActivationFailIfNotActivated:(BOOL)a3
{
  v13 = self;
  v12 = a2;
  v11 = a3;
  v3 = dispatch_get_global_queue(0, 0);
  v4 = _NSConcreteStackBlock;
  v5 = -1073741824;
  v6 = 0;
  v7 = sub_1000E63D0;
  v8 = &unk_10032B688;
  v9 = v13;
  v10 = v11;
  dispatch_async(v3, &v4);

  objc_storeStrong(&v9, 0);
}

- (void)_checkActivationFailIfNotActivated:(BOOL)a3 isActivated:(BOOL)a4
{
  v10 = self;
  v9 = a2;
  v8 = a3;
  v7 = a4;
  oslog = _BYLoggingFacility();
  if (os_log_type_enabled(oslog, OS_LOG_TYPE_DEFAULT))
  {
    sub_100075A38(buf, v10->_state, v7);
    _os_log_impl(&_mh_execute_header, oslog, OS_LOG_TYPE_DEFAULT, "Buddy Activate: Check Activation! State = %d Activated = %d", buf, 0xEu);
  }

  objc_storeStrong(&oslog, 0);
  if (v7)
  {
    [(ActivationController *)v10 _clearTicketAcceptedTimer];
    if (v10->_state == 2)
    {
      [(ActivationController *)v10 _enterState:3];
    }

    else
    {
      v4 = [(ActivationController *)v10 delegate];
      v5 = [v4 isFlowItemOnTop:v10];

      if (v5)
      {
        [(ActivationController *)v10 _enterState:3];
      }
    }
  }

  else if (v8)
  {
    [(ActivationController *)v10 _clearTicketAcceptedTimer];
    [(ActivationController *)v10 _enterState:5];
  }
}

- (void)startOver
{
  v7 = self;
  location[1] = a2;
  [(ActivationController *)self _cleanup];
  v7->_state = 0;
  location[0] = [(ActivationController *)v7 navigationController];
  v2 = [location[0] viewControllers];
  v4 = 0;
  v3 = 0;
  if ([v2 count] == 1)
  {
    v5 = [location[0] topViewController];
    v4 = 1;
    v3 = v5 == v7;
  }

  if (v4)
  {
  }

  if (v3)
  {
    [(ActivationController *)v7 _activateIfNecessary];
  }

  objc_storeStrong(location, 0);
}

- (void)_clearTicketAcceptedTimer
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
    _os_log_impl(&_mh_execute_header, v2, v3, "Buddy Activate: Clear ticket accepted timer", v4, 2u);
  }

  objc_storeStrong(oslog, 0);
  [(NSTimer *)v7->_ticketAcceptedTimer invalidate];
  objc_storeStrong(&v7->_ticketAcceptedTimer, 0);
}

- (void)_ticketAcceptedDidTimeout
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
    _os_log_impl(&_mh_execute_header, v2, v3, "Buddy Activate: Ticket accepted timer timed out", v4, 2u);
  }

  objc_storeStrong(oslog, 0);
  [(ActivationController *)v7 _clearTicketAcceptedTimer];
  [(ActivationController *)v7 _checkActivationFailIfNotActivated:1];
}

- (void)_activateIfNecessary
{
  v18 = self;
  location[1] = a2;
  self->_displayTimerElapsed = 0;
  [(ActivationController *)v18 _clearDisplayTimer];
  if (+[BuddyActivationBasebandDeadController controllerNeedsToRun])
  {
    location[0] = objc_alloc_init(BuddyActivationBasebandDeadController);
    v2 = [(ActivationController *)v18 navigationController];
    [v2 pushViewController:location[0] animated:1];

    objc_storeStrong(location, 0);
  }

  else
  {
    v16 = _BYLoggingFacility();
    v15 = 2;
    if (os_log_type_enabled(v16, OS_LOG_TYPE_DEBUG))
    {
      v3 = v16;
      v4 = v15;
      sub_10006AA68(buf);
      _os_log_debug_impl(&_mh_execute_header, v3, v4, "Buddy Activate: Set Display Timer", buf, 2u);
    }

    objc_storeStrong(&v16, 0);
    v5 = [NSTimer scheduledTimerWithTimeInterval:v18 target:"_displayTimerTimeout" selector:0 userInfo:0 repeats:1.0];
    displayTimer = v18->_displayTimer;
    v18->_displayTimer = v5;

    if (v18->_state != 1 && v18->_state != 2 && v18->_state != 6 && v18->_state != 7)
    {
      v7 = dispatch_get_global_queue(0, 0);
      block = _NSConcreteStackBlock;
      v9 = -1073741824;
      v10 = 0;
      v11 = sub_1000E6BC4;
      v12 = &unk_10032B0D0;
      v13 = v18;
      dispatch_async(v7, &block);

      objc_storeStrong(&v13, 0);
    }
  }
}

- (void)viewWillAppear:(BOOL)a3
{
  v6 = self;
  v5 = a2;
  v4 = a3;
  v3.receiver = self;
  v3.super_class = ActivationController;
  [(ActivationController *)&v3 viewWillAppear:a3];
  v6->_activationControllerDismissed = 0;
  if (([(ActivationController *)v6 isMovingToParentViewController]& 1) == 0)
  {
    [(ActivationController *)v6 _stopActivationLockExpirationTimer];
  }
}

- (void)viewDidAppear:(BOOL)a3
{
  v6 = self;
  v5 = a2;
  v4 = a3;
  v3.receiver = self;
  v3.super_class = ActivationController;
  [(ActivationController *)&v3 viewDidAppear:a3];
  if ((v4 || ([(ActivationController *)v6 isMovingToParentViewController]& 1) != 0) && !v6->_appIsSuspended)
  {
    [(ActivationController *)v6 _activateIfNecessary];
  }
}

- (void)viewWillDisappear:(BOOL)a3
{
  v12 = self;
  v11 = a2;
  v10 = a3;
  if (([(ActivationController *)self isMovingFromParentViewController]& 1) != 0)
  {
    oslog = _BYLoggingFacility();
    v8 = OS_LOG_TYPE_DEFAULT;
    if (os_log_type_enabled(oslog, OS_LOG_TYPE_DEFAULT))
    {
      v3 = oslog;
      v4 = v8;
      sub_10006AA68(buf);
      _os_log_impl(&_mh_execute_header, v3, v4, "ActivationController Pop.", buf, 2u);
    }

    objc_storeStrong(&oslog, 0);
    [(ActivationController *)v12 _clearWaitingForBasebandTimer];
    [(ActivationController *)v12 _clearDisplayTimer];
    [(ActivationController *)v12 _cleanup];
    [(ActivationController *)v12 _releaseOTAAssertion];
    [(ActivationController *)v12 _enterState:0];
    objc_storeStrong(&v12->_engine, 0);
  }

  v5 = +[NSNotificationCenter defaultCenter];
  [(NSNotificationCenter *)v5 removeObserver:v12 name:@"BuddySystemTimeUpdateFinishedNotification" object:0];

  v6.receiver = v12;
  v6.super_class = ActivationController;
  [(ActivationController *)&v6 viewWillDisappear:v10];
}

- (void)didResignActive:(id)a3
{
  v4 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  v4->_appIsSuspended = 1;
  objc_storeStrong(location, 0);
}

- (void)didBecomeActive:(id)a3
{
  v9 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  v9->_appIsSuspended = 0;
  v6 = 0;
  v4 = 0;
  v3 = 0;
  if (!v9->_activationControllerDismissed)
  {
    v7 = [(ActivationController *)v9 navigationController];
    v6 = 1;
    v5 = [v7 topViewController];
    v4 = 1;
    v3 = v5 == v9;
  }

  if (v4)
  {
  }

  if (v6)
  {
  }

  if (v3)
  {
    [(ActivationController *)v9 _activateIfNecessary];
  }

  objc_storeStrong(location, 0);
}

- (void)_displayTimerTimeout
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
    _os_log_impl(&_mh_execute_header, v2, v3, "Buddy Activate: Display Timer Fired", v4, 2u);
  }

  objc_storeStrong(oslog, 0);
  [(ActivationController *)v7 _clearDisplayTimer];
  v7->_displayTimerElapsed = 1;
  [(ActivationController *)v7 _enterState:v7->_state];
}

- (void)startSpinningWithIdentifier:(id)a3
{
  v10 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  v3 = [(ActivationController *)v10 navigationController];
  v4 = [v3 topViewController];
  spinningViewController = v10->_spinningViewController;
  v10->_spinningViewController = v4;

  if (v10->_spinningViewController)
  {
    v6 = [(UIViewController *)v10->_spinningViewController view];
    v7 = [(UIView *)v6 window];
    [(UIWindow *)v7 setUserInteractionEnabled:0];

    [BFFViewControllerSpinnerManager startAnimatingSpinnerFor:v10->_spinningViewController identifier:location[0]];
  }

  else
  {
    oslog = _BYLoggingFacility();
    if (os_log_type_enabled(oslog, OS_LOG_TYPE_FAULT))
    {
      sub_10006AE18(buf, location[0]);
      _os_log_fault_impl(&_mh_execute_header, oslog, OS_LOG_TYPE_FAULT, "ActivationController: startSpinning has no viewController for %@", buf, 0xCu);
    }

    objc_storeStrong(&oslog, 0);
  }

  objc_storeStrong(location, 0);
}

- (void)stopSpinningForIdentifier:(id)a3
{
  v7 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  if (v7->_spinningViewController)
  {
    v3 = [(UIViewController *)v7->_spinningViewController view];
    v4 = [(UIView *)v3 window];
    [(UIWindow *)v4 setUserInteractionEnabled:1];

    [BFFViewControllerSpinnerManager stopAnimatingSpinnerFor:location[0]];
    objc_storeStrong(&v7->_spinningViewController, 0);
  }

  else
  {
    oslog = _BYLoggingFacility();
    if (os_log_type_enabled(oslog, OS_LOG_TYPE_DEFAULT))
    {
      sub_10006AE18(buf, location[0]);
      _os_log_impl(&_mh_execute_header, oslog, OS_LOG_TYPE_DEFAULT, "ActivationController: Unmatched stopSpinning for %@", buf, 0xCu);
    }

    objc_storeStrong(&oslog, 0);
  }

  objc_storeStrong(location, 0);
}

- (void)startRequest:(id)a3 completion:(id)a4
{
  v31 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  v29 = 0;
  objc_storeStrong(&v29, a4);
  v27 = 0;
  v25 = 0;
  v5 = 0;
  if (os_variant_allows_internal_security_policies())
  {
    v28 = [location[0] URL];
    v27 = 1;
    v26 = [v28 absoluteString];
    v25 = 1;
    v5 = [v26 hasSuffix:@"/deviceActivation"];
  }

  if (v25)
  {
  }

  if (v27)
  {
  }

  if (v5)
  {
    v6 = +[NSUserDefaults standardUserDefaults];
    v24 = [(NSUserDefaults *)v6 dictionaryForKey:@"CustomActivationHeaders"];

    memset(__b, 0, sizeof(__b));
    v7 = v24;
    v8 = [v7 countByEnumeratingWithState:__b objects:v32 count:16];
    if (v8)
    {
      v9 = *__b[2];
      do
      {
        for (i = 0; i < v8; ++i)
        {
          if (*__b[2] != v9)
          {
            objc_enumerationMutation(v7);
          }

          v23 = *(__b[1] + 8 * i);
          v11 = location[0];
          v12 = [v24 objectForKeyedSubscript:v23];
          [v11 setValue:v12 forHTTPHeaderField:v23];
        }

        v8 = [v7 countByEnumeratingWithState:__b objects:v32 count:16];
      }

      while (v8);
    }

    objc_storeStrong(&v24, 0);
  }

  v13 = *(v31 + 1);
  v14 = location[0];
  v15 = _NSConcreteStackBlock;
  v16 = -1073741824;
  v17 = 0;
  v18 = sub_1000E78D0;
  v19 = &unk_10032C9D8;
  v20 = v31;
  v21 = v29;
  [v13 makeRequest:v14 completion:&v15];
  objc_storeStrong(&v21, 0);
  objc_storeStrong(&v20, 0);
  objc_storeStrong(&v29, 0);
  objc_storeStrong(location, 0);
}

- (void)_handleActivationData:(id)a3 responseHeaders:(id)a4 baseURL:(id)a5
{
  v79 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  v77 = 0;
  objc_storeStrong(&v77, a4);
  v76 = 0;
  objc_storeStrong(&v76, a5);
  *&v75[1] = [v77 objectForKeyedSubscript:@"Content-Type"];
  v75[0] = 0;
  v7 = [NSString alloc];
  v74 = [v7 initWithData:location[0] encoding:4];
  if (*&v75[1])
  {
    v75[0] = [*&v75[1] containsString:@"application/x-buddyml"] & 1;
  }

  else
  {
    v72 = [v74 rangeOfString:@"<xmlui"];
    v73 = v8;
    *v75 = v72 != 0x7FFFFFFFFFFFFFFFLL;
  }

  v71 = _BYLoggingFacility();
  v70 = OS_LOG_TYPE_DEFAULT;
  if (os_log_type_enabled(v71, OS_LOG_TYPE_DEFAULT))
  {
    sub_1000E84A8(buf, v79->_state, [location[0] length], *&v75[1]);
    _os_log_impl(&_mh_execute_header, v71, v70, "Buddy Activate: connectionDidFinishLoading state = %d response size = %ld, contentType = %@\n", buf, 0x1Cu);
  }

  objc_storeStrong(&v71, 0);
  v9 = +[NSUserDefaults standardUserDefaults];
  v10 = [(NSUserDefaults *)v9 BOOLForKey:@"LogFullActivationResponse"];

  if (v10)
  {
    v69 = _BYLoggingFacility();
    v68 = OS_LOG_TYPE_DEFAULT;
    if (os_log_type_enabled(v69, OS_LOG_TYPE_DEFAULT))
    {
      sub_10006AE18(v81, v74);
      _os_log_impl(&_mh_execute_header, v69, v68, "Buddy Activate: Got Response: %@\n", v81, 0xCu);
    }

    objc_storeStrong(&v69, 0);
  }

  if (v75[0])
  {
    v79->_nonSilentActivation = 1;
    v67 = _BYLoggingFacility();
    v66 = OS_LOG_TYPE_DEFAULT;
    if (os_log_type_enabled(v67, OS_LOG_TYPE_DEFAULT))
    {
      v11 = v67;
      v12 = v66;
      sub_10006AA68(v65);
      _os_log_impl(&_mh_execute_header, v11, v12, "Buddy Activate: Render xmlui\n", v65, 2u);
    }

    objc_storeStrong(&v67, 0);
    [(ActivationController *)v79 _enterState:4];
    [(RUIPage *)v79->_loadingPage setLoading:0];
    objc_storeStrong(&v79->_loadingPage, 0);
    if (!v79->_remoteUIController)
    {
      v13 = objc_alloc_init(RemoteUIController);
      remoteUIController = v79->_remoteUIController;
      v79->_remoteUIController = v13;

      v15 = v79->_remoteUIController;
      v16 = [(ActivationController *)v79 navigationController];
      [(RemoteUIController *)v15 setNavigationController:v16];

      [(RemoteUIController *)v79->_remoteUIController setDelegate:?];
      v17 = v79->_remoteUIController;
      v18 = +[RUIStyle setupAssistantStyle];
      [(RemoteUIController *)v17 setStyle:v18];

      objc_initWeak(&from, v79);
      v19 = v79->_remoteUIController;
      v58 = _NSConcreteStackBlock;
      v59 = -1073741824;
      v60 = 0;
      v61 = sub_1000E84D4;
      v62 = &unk_10032CA00;
      objc_copyWeak(&v63, &from);
      [(RemoteUIController *)v19 setHandlerForElementName:@"agree" handler:&v58];
      v20 = v79->_remoteUIController;
      v52 = _NSConcreteStackBlock;
      v53 = -1073741824;
      v54 = 0;
      v55 = sub_1000E8580;
      v56 = &unk_10032CA00;
      objc_copyWeak(&v57, &from);
      [(RemoteUIController *)v20 setHandlerForElementName:@"disagree" handler:&v52];
      v21 = v79->_remoteUIController;
      v46 = _NSConcreteStackBlock;
      v47 = -1073741824;
      v48 = 0;
      v49 = sub_1000E862C;
      v50 = &unk_10032CA00;
      objc_copyWeak(&v51, &from);
      [(RemoteUIController *)v21 setHandlerForElementName:@"tryAgain" handler:&v46];
      [(ActivationController *)v79 _setHandlerForPasscode];
      objc_destroyWeak(&v51);
      objc_destroyWeak(&v57);
      objc_destroyWeak(&v63);
      objc_destroyWeak(&from);
    }

    v22 = v79->_remoteUIController;
    v23 = [(BuddyActivationEngine *)v79->_engine sessionConfiguration];
    [(RemoteUIController *)v22 setSessionConfiguration:v23];

    [(RemoteUIController *)v79->_remoteUIController loadData:location[0] baseURL:v76];
  }

  else
  {
    oslog = _BYLoggingFacility();
    v44 = OS_LOG_TYPE_DEFAULT;
    if (os_log_type_enabled(oslog, OS_LOG_TYPE_DEFAULT))
    {
      sub_100082D54(v80, v79->_state);
      _os_log_impl(&_mh_execute_header, oslog, v44, "Buddy Activate: Non xmlui response! State = %d\n", v80, 8u);
    }

    objc_storeStrong(&oslog, 0);
    if (v79->_state == 1 || v79->_state == 4)
    {
      [(ActivationController *)v79 _enterState:2];
      if (!v77)
      {
        v43 = _BYLoggingFacility();
        v42 = OS_LOG_TYPE_DEFAULT;
        if (os_log_type_enabled(v43, OS_LOG_TYPE_DEFAULT))
        {
          v24 = v43;
          v25 = v42;
          sub_10006AA68(v41);
          _os_log_impl(&_mh_execute_header, v24, v25, "No headers in activation response!", v41, 2u);
        }

        objc_storeStrong(&v43, 0);
      }

      v26 = dispatch_get_global_queue(25, 0);
      block = _NSConcreteStackBlock;
      v33 = -1073741824;
      v34 = 0;
      v35 = sub_1000E86D8;
      v36 = &unk_10032B9A0;
      v37 = v77;
      v38 = location[0];
      v39 = v79;
      v40 = v74;
      dispatch_async(v26, &block);

      objc_storeStrong(&v40, 0);
      objc_storeStrong(&v39, 0);
      objc_storeStrong(&v38, 0);
      objc_storeStrong(&v37, 0);
    }

    else
    {
      v31 = _BYLoggingFacility();
      v30 = OS_LOG_TYPE_DEFAULT;
      if (os_log_type_enabled(v31, OS_LOG_TYPE_DEFAULT))
      {
        v27 = v31;
        v28 = v30;
        sub_10006AA68(v29);
        _os_log_impl(&_mh_execute_header, v27, v28, "Buddy Activate: Warning: Unhandled state in connection response.\n", v29, 2u);
      }

      objc_storeStrong(&v31, 0);
    }

    [(RUIPage *)v79->_loadingPage setLoading:0];
    objc_storeStrong(&v79->_loadingPage, 0);
  }

  [(ActivationController *)v79 _cleanup];
  objc_storeStrong(&v74, 0);
  objc_storeStrong(&v75[1], 0);
  objc_storeStrong(&v76, 0);
  objc_storeStrong(&v77, 0);
  objc_storeStrong(location, 0);
}

- (void)_handleFailureWithError:(id)a3
{
  v11 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  oslog = _BYLoggingFacility();
  if (os_log_type_enabled(oslog, OS_LOG_TYPE_DEFAULT))
  {
    state = v11->_state;
    v7 = 0;
    v5 = 0;
    if (_BYIsInternalInstall())
    {
      v4 = location[0];
    }

    else if (location[0])
    {
      v8 = [location[0] domain];
      v7 = 1;
      v4 = +[NSString stringWithFormat:](NSString, "stringWithFormat:", @"<Error domain: %@, code %ld>", v8, [location[0] code]);
      v6 = v4;
      v5 = 1;
    }

    else
    {
      v4 = 0;
    }

    sub_10008D1D4(buf, state, v4);
    _os_log_impl(&_mh_execute_header, oslog, OS_LOG_TYPE_DEFAULT, "Buddy Activate: connection failed, state = %d, error = '%{public}@'", buf, 0x12u);
    if (v5)
    {
    }

    if (v7)
    {
    }
  }

  objc_storeStrong(&oslog, 0);
  if (v11->_state != 3)
  {
    v11->_connectionFailed = 1;
    [(ActivationController *)v11 _enterState:5];
  }

  [(RUIPage *)v11->_loadingPage setLoading:0];
  objc_storeStrong(&v11->_loadingPage, 0);
  [(ActivationController *)v11 _cleanup];
  objc_storeStrong(location, 0);
}

- (void)_getSRPInitNonceRequestOptionsCompletion:(id)a3
{
  v32 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  v30 = [(SecureBackup *)v32->_secureBackup srpInitNonce];
  v29 = [v30 base64EncodedStringWithOptions:0];
  v28 = objc_alloc_init(FMDDeviceIdentityFactory);
  v27 = +[NSMutableDictionary dictionary];
  if (v29)
  {
    [v27 setObject:v29 forKeyedSubscript:@"nonce"];
  }

  v26 = 0;
  v25 = 0;
  v3 = _BYSignpostSubsystem();
  v4 = _BYSignpostCreate();
  v24 = v5;
  v23 = v4;

  log = _BYSignpostSubsystem();
  v21 = 1;
  v20 = v23;
  if (v23 && v20 != -1 && os_signpost_enabled(log))
  {
    v6 = log;
    v7 = v21;
    v8 = v20;
    sub_10006AA68(buf);
    _os_signpost_emit_with_name_impl(&_mh_execute_header, v6, v7, v8, "ActivationFindMyIdentity", "", buf, 2u);
  }

  objc_storeStrong(&log, 0);
  oslog = _BYSignpostSubsystem();
  v17 = OS_LOG_TYPE_DEFAULT;
  if (os_log_type_enabled(oslog, OS_LOG_TYPE_DEFAULT))
  {
    sub_100077E48(v33, v23);
    _os_log_impl(&_mh_execute_header, oslog, v17, "BEGIN [%lld]: ActivationFindMyIdentity ", v33, 0xCu);
  }

  objc_storeStrong(&oslog, 0);
  v25 = v23;
  v26 = v24;
  v9 = v28;
  v10 = v27;
  v11 = _NSConcreteStackBlock;
  v12 = -1073741824;
  v13 = 0;
  v14 = sub_1000E93A8;
  v15 = &unk_10032CA28;
  v16[1] = v23;
  v16[2] = v24;
  v16[0] = location[0];
  [v9 identityForPasscodeActivationUnlockWithContext:v10 completion:&v11];
  objc_storeStrong(v16, 0);
  objc_storeStrong(&v27, 0);
  objc_storeStrong(&v28, 0);
  objc_storeStrong(&v29, 0);
  objc_storeStrong(&v30, 0);
  objc_storeStrong(location, 0);
}

- (void)_tryActivateWithOptions:(id)a3 requestMutator:(id)a4
{
  v26 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  v24 = 0;
  objc_storeStrong(&v24, a4);
  v5 = +[BYPreferencesController buddyPreferencesInternal];
  v6 = [v5 BOOLForKey:@"ForceActivationFailure"];

  if (v6)
  {
    v7 = &_dispatch_main_q;
    block = _NSConcreteStackBlock;
    v19 = -1073741824;
    v20 = 0;
    v21 = sub_1000E9950;
    v22 = &unk_10032B0D0;
    v23 = v26;
    dispatch_async(v7, &block);

    v17 = 1;
    objc_storeStrong(&v23, 0);
  }

  else
  {
    if (v26->_engine)
    {
      engine = v26->_engine;
      v9 = location[0];
      v10 = v24;
      v11 = _NSConcreteStackBlock;
      v12 = -1073741824;
      v13 = 0;
      v14 = sub_1000E9980;
      v15 = &unk_10032CA50;
      v16 = v26;
      [(BuddyActivationEngine *)engine tryActivateWithOptions:v9 requestMutator:v10 completion:&v11];
      objc_storeStrong(&v16, 0);
    }

    v17 = 0;
  }

  objc_storeStrong(&v24, 0);
  objc_storeStrong(location, 0);
}

- (void)_startActivation
{
  v58 = self;
  v57 = a2;
  objc_storeStrong(&self->_escrowSessionKey, 0);
  objc_storeStrong(&v58->_srpInitResponse, 0);
  objc_storeStrong(&v58->_accountDSID, 0);
  v58->_hasPresentedRemoteUI = 0;
  v2 = +[NSDate date];
  startedActivationDate = v58->_startedActivationDate;
  v58->_startedActivationDate = v2;

  [(ActivationController *)v58 _enterState:1];
  v58->_cdmaSelectionActivation = 0;
  v58->_connectionFailed = 0;
  v4 = [(ActivationController *)v58 activationState];
  [(BuddyActivationState *)v4 setError:0];

  v5 = +[BuddyActivationConfiguration currentConfiguration];
  v54 = 0;
  v52 = 0;
  v6 = 0;
  if ([v5 supportsCellularActivation])
  {
    v55 = [(ActivationController *)v58 networkProvider];
    v54 = 1;
    v6 = 1;
    if ([(BuddyNetworkProvider *)v55 networkReachable])
    {
      v53 = [(ActivationController *)v58 networkProvider];
      v52 = 1;
      v6 = ![(BuddyNetworkProvider *)v53 connectedOverWiFi];
    }
  }

  if (v52)
  {
  }

  if (v54)
  {
  }

  v56 = v6 & 1;
  v51 = 0;
  location = 0;
  v49 = 0;
  v48 = CFPreferencesCopyAppValue(@"ActivationURL", @"com.apple.purplebuddy");
  if (v48)
  {
    v7 = CFGetTypeID(v48);
    if (v7 == CFStringGetTypeID())
    {
      v8 = [NSURL URLWithString:v48];
      v9 = v51;
      v51 = v8;
    }

    CFRelease(v48);
  }

  v47 = CFPreferencesCopyAppValue(@"ActivationSessionURL", @"com.apple.purplebuddy");
  if (v47)
  {
    v10 = CFGetTypeID(v47);
    if (v10 == CFStringGetTypeID())
    {
      v11 = [NSURL URLWithString:v47];
      v12 = location;
      location = v11;
    }

    CFRelease(v47);
  }

  cf = CFPreferencesCopyAppValue(@"ActivationAllowAnyHTTPSCertificate", @"com.apple.purplebuddy");
  if (cf)
  {
    v13 = CFGetTypeID(cf);
    if (v13 == CFStringGetTypeID())
    {
      v49 = [cf BOOLValue] & 1;
    }

    else
    {
      v14 = CFGetTypeID(cf);
      if (v14 == CFBooleanGetTypeID())
      {
        v49 = cf == kCFBooleanTrue;
      }
    }

    CFRelease(cf);
  }

  oslog = _BYLoggingFacility();
  v44 = OS_LOG_TYPE_DEFAULT;
  if (os_log_type_enabled(oslog, OS_LOG_TYPE_DEFAULT))
  {
    sub_10006AE18(buf, v51);
    _os_log_impl(&_mh_execute_header, oslog, v44, "Buddy Activate: Got activation URL override: %@", buf, 0xCu);
  }

  objc_storeStrong(&oslog, 0);
  v43 = _BYLoggingFacility();
  v42 = OS_LOG_TYPE_DEFAULT;
  if (os_log_type_enabled(v43, OS_LOG_TYPE_DEFAULT))
  {
    sub_10006AE18(v60, location);
    _os_log_impl(&_mh_execute_header, v43, v42, "Buddy Activate: Got session URL override: %@", v60, 0xCu);
  }

  objc_storeStrong(&v43, 0);
  v41 = _BYLoggingFacility();
  v40 = OS_LOG_TYPE_DEFAULT;
  if (os_log_type_enabled(v41, OS_LOG_TYPE_DEFAULT))
  {
    sub_100082D54(v59, v49 & 1);
    _os_log_impl(&_mh_execute_header, v41, v40, "Buddy Activate: Allow any HTTPS certificate = %d", v59, 8u);
  }

  objc_storeStrong(&v41, 0);
  [(BuddyActivationEngine *)v58->_engine cancel];
  if (v56)
  {
    v39 = _BYLoggingFacility();
    v38 = OS_LOG_TYPE_DEFAULT;
    if (os_log_type_enabled(v39, OS_LOG_TYPE_DEFAULT))
    {
      v15 = v39;
      v16 = v38;
      sub_10006AA68(v37);
      _os_log_impl(&_mh_execute_header, v15, v16, "Creating Activation Connection OTA.", v37, 2u);
    }

    objc_storeStrong(&v39, 0);
    v58->_connectionOTA = 1;
    v17 = +[BuddyActivationConfiguration currentConfiguration];
    v18 = [v17 cellularActivationMethod];

    if (v18)
    {
      if (v18 == 1)
      {
        v58->_usingBootstrap = 1;
LABEL_37:
        v19 = [BuddyActivationEngine cellularActivationEngineWithOverrideActivationURL:v51 sessionURL:location usingBootstrap:v58->_usingBootstrap];
        engine = v58->_engine;
        v58->_engine = v19;

        if (!v58->_otaAssertion)
        {
          memset(__b, 0, sizeof(__b));
          v35 = _CTServerConnectionCreate();
          if (v35)
          {
            v34[1] = _CTServerConnectionOTAActivationAssertionCreate();
            CFRelease(v35);
          }
        }

        goto LABEL_44;
      }

      if (v18 != 2)
      {
        goto LABEL_37;
      }
    }

    v58->_usingBootstrap = 0;
    goto LABEL_37;
  }

  v34[0] = _BYLoggingFacility();
  v33 = OS_LOG_TYPE_DEFAULT;
  if (os_log_type_enabled(v34[0], OS_LOG_TYPE_DEFAULT))
  {
    v21 = v34[0];
    v22 = v33;
    sub_10006AA68(v32);
    _os_log_impl(&_mh_execute_header, v21, v22, "Creating Activation Connection WiFi.", v32, 2u);
  }

  objc_storeStrong(v34, 0);
  v58->_connectionOTA = 0;
  v58->_usingBootstrap = 0;
  v23 = [BuddyActivationEngine wifiActivationEngineWithOverrideActivationURL:v51 sessionURL:location];
  v24 = v58->_engine;
  v58->_engine = v23;

LABEL_44:
  [(BuddyActivationEngine *)v58->_engine setAllowAnyHTTPSCertificate:v49 & 1];
  v25 = v58;
  v26 = _NSConcreteStackBlock;
  v27 = -1073741824;
  v28 = 0;
  v29 = sub_1000EA320;
  v30 = &unk_10032CA78;
  v31 = v58;
  [(ActivationController *)v25 _getSRPInitNonceRequestOptionsCompletion:&v26];
  objc_storeStrong(&v31, 0);
  objc_storeStrong(&location, 0);
  objc_storeStrong(&v51, 0);
}

- (void)_checkBasebandStatusBeforeActivation
{
  v33 = self;
  v32 = a2;
  v31 = 0;
  v30 = 0;
  cf = MGCopyAnswer();
  if (cf)
  {
    v2 = CFGetTypeID(cf);
    if (v2 == CFStringGetTypeID())
    {
      v3 = [cf isEqualToString:kCTPostponementStatusNotReady];
      v4 = 1;
      if ((v3 & 1) == 0)
      {
        v4 = [cf isEqualToString:@"BBNotReady"];
      }

      v31 = v4 & 1;
      v30 = [cf length] != 0;
      oslog = _BYLoggingFacility();
      v27 = OS_LOG_TYPE_DEFAULT;
      if (os_log_type_enabled(oslog, OS_LOG_TYPE_DEFAULT))
      {
        sub_1000EA778(buf, cf, v31 & 1);
        _os_log_impl(&_mh_execute_header, oslog, v27, "Buddy Activate: _checkBasebandStatusBeforeActivation = %@, notReady = %d", buf, 0x12u);
      }

      objc_storeStrong(&oslog, 0);
    }

    CFRelease(cf);
  }

  if ((v31 & 1) == 0 && v30)
  {
    [(ActivationController *)v33 _startActivation];
  }

  else if ((++v33->_waitingForBasebandFailureCount * 2.0) <= 120.0)
  {
    if (v30)
    {
      v20 = _BYLoggingFacility();
      v19 = OS_LOG_TYPE_DEFAULT;
      if (os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT))
      {
        v9 = v20;
        v10 = v19;
        sub_10006AA68(v18);
        _os_log_impl(&_mh_execute_header, v9, v10, "Buddy Activate: BasebandStatus = NotReady. Waiting for Baseband.", v18, 2u);
      }

      objc_storeStrong(&v20, 0);
    }

    else
    {
      v17 = _BYLoggingFacility();
      v16 = OS_LOG_TYPE_DEFAULT;
      if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
      {
        v11 = v17;
        v12 = v16;
        sub_10006AA68(v15);
        _os_log_impl(&_mh_execute_header, v11, v12, "Buddy Activate: Unable to read BasebandStatus. Waiting for Baseband.", v15, 2u);
      }

      objc_storeStrong(&v17, 0);
    }

    [(ActivationController *)v33 _enterState:7];
    v13 = [NSTimer scheduledTimerWithTimeInterval:v33 target:"_waitingForBasebandTimeout" selector:0 userInfo:0 repeats:2.0];
    waitingForBasebandTimer = v33->_waitingForBasebandTimer;
    v33->_waitingForBasebandTimer = v13;
  }

  else
  {
    if (v30)
    {
      v26 = _BYLoggingFacility();
      v25 = OS_LOG_TYPE_DEFAULT;
      if (os_log_type_enabled(v26, OS_LOG_TYPE_DEFAULT))
      {
        v5 = v26;
        v6 = v25;
        sub_10006AA68(v24);
        _os_log_impl(&_mh_execute_header, v5, v6, "Buddy Activate: BasebandStatus = NotReady. Too many failures.", v24, 2u);
      }

      objc_storeStrong(&v26, 0);
    }

    else
    {
      v23 = _BYLoggingFacility();
      v22 = OS_LOG_TYPE_DEFAULT;
      if (os_log_type_enabled(v23, OS_LOG_TYPE_DEFAULT))
      {
        v7 = v23;
        v8 = v22;
        sub_10006AA68(v21);
        _os_log_impl(&_mh_execute_header, v7, v8, "Buddy Activate: Unable to read BasebandStatus. Too many failures.", v21, 2u);
      }

      objc_storeStrong(&v23, 0);
    }

    [(ActivationController *)v33 _enterState:5];
  }
}

- (void)_sanitizeSystemTime
{
  v11[2] = self;
  v11[1] = a2;
  v11[0] = objc_alloc_init(NSDateFormatter);
  [v11[0] setDateFormat:@"MMM d yyyy"];
  v2 = [NSString stringWithCString:"Oct 22 2025" encoding:1];
  location = [v11[0] dateFromString:v2];

  oslog = _BYLoggingFacility();
  v8 = OS_LOG_TYPE_DEFAULT;
  if (os_log_type_enabled(oslog, OS_LOG_TYPE_DEFAULT))
  {
    sub_10006AE18(buf, location);
    _os_log_impl(&_mh_execute_header, oslog, v8, "Setting Device to default date: %@", buf, 0xCu);
  }

  objc_storeStrong(&oslog, 0);
  [location timeIntervalSince1970];
  v7 = v3;
  v6 = rint(v3);
  memset(&v5, 0, sizeof(v5));
  v5.tv_sec = v6;
  v5.tv_usec = 0;
  settimeofday(&v5, 0);
  DarwinNotifyCenter = CFNotificationCenterGetDarwinNotifyCenter();
  CFNotificationCenterPostNotification(DarwinNotifyCenter, @"SignificantTimeChangeNotification", 0, 0, 1u);
  objc_storeStrong(&location, 0);
  objc_storeStrong(v11, 0);
}

- (void)_systemTimeUpdated
{
  v10 = self;
  oslog[1] = a2;
  v2 = +[NSNotificationCenter defaultCenter];
  [(NSNotificationCenter *)v2 removeObserver:v10 name:@"BuddySystemTimeUpdateFinishedNotification" object:0];

  v3 = [(ActivationController *)v10 systemTimeUpdateManager];
  v4 = [(BuddySystemTimeUpdateManager *)v3 status];

  if (v4 == 3)
  {
    oslog[0] = _BYLoggingFacility();
    v8 = OS_LOG_TYPE_DEFAULT;
    if (os_log_type_enabled(oslog[0], OS_LOG_TYPE_DEFAULT))
    {
      v5 = oslog[0];
      v6 = v8;
      sub_10006AA68(v7);
      _os_log_impl(&_mh_execute_header, v5, v6, "Device Time Update failed.", v7, 2u);
    }

    objc_storeStrong(oslog, 0);
    [(ActivationController *)v10 _sanitizeSystemTime];
  }

  [(ActivationController *)v10 _checkBasebandStatusBeforeActivation];
}

- (void)_activate
{
  v7 = self;
  location[1] = a2;
  location[0] = +[NSDate date];
  v7->_waitingForBasebandFailureCount = 0;
  [location[0] timeIntervalSince1970];
  if (v2 < 315532800.0)
  {
    v3 = [(ActivationController *)v7 systemTimeUpdateManager];
    v4 = [(BuddySystemTimeUpdateManager *)v3 status];

    if (v4 == 1)
    {
      [(ActivationController *)v7 _enterState:6];
      v5 = +[NSNotificationCenter defaultCenter];
      [(NSNotificationCenter *)v5 addObserver:v7 selector:"_systemTimeUpdated" name:@"BuddySystemTimeUpdateFinishedNotification" object:0];
    }

    else
    {
      [(ActivationController *)v7 _sanitizeSystemTime];
    }
  }

  if (v7->_state != 6)
  {
    [(ActivationController *)v7 _checkBasebandStatusBeforeActivation];
  }

  objc_storeStrong(location, 0);
}

- (void)_dismissRemoteUI
{
  v3 = self;
  oslog[1] = a2;
  oslog[0] = _BYLoggingFacility();
  if (os_log_type_enabled(oslog[0], OS_LOG_TYPE_DEFAULT))
  {
    sub_100082D54(buf, v3->_state);
    _os_log_impl(&_mh_execute_header, oslog[0], OS_LOG_TYPE_DEFAULT, "Buddy Activate: Dismiss RemoteUI, state = %d", buf, 8u);
  }

  objc_storeStrong(oslog, 0);
  [(ActivationController *)v3 _enterState:5];
}

- (void)_writeAcknowledgment
{
  v2 = dispatch_get_global_queue(0, 0);
  dispatch_async(v2, &stru_10032CA98);
}

- (void)_startActivationLockExpirationTimerForPage:(id)a3
{
  v22 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  v20 = _BYLoggingFacility();
  v19 = OS_LOG_TYPE_DEFAULT;
  if (os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT))
  {
    v3 = v20;
    v4 = v19;
    sub_10006AA68(buf);
    _os_log_impl(&_mh_execute_header, v3, v4, "Starting Activation Lock Expiration timer", buf, 2u);
  }

  objc_storeStrong(&v20, 0);
  if (v22->_activationLockTimer)
  {
    oslog = _BYLoggingFacility();
    v16 = OS_LOG_TYPE_DEFAULT;
    if (os_log_type_enabled(oslog, OS_LOG_TYPE_DEFAULT))
    {
      v5 = oslog;
      v6 = v16;
      sub_10006AA68(v15);
      _os_log_impl(&_mh_execute_header, v5, v6, "Buddy Activate: Pushing a second Activation lock page?", v15, 2u);
    }

    objc_storeStrong(&oslog, 0);
    [(NSTimer *)v22->_activationLockTimer invalidate];
  }

  objc_storeStrong(&v22->_activationLockPage, location[0]);
  v9 = _NSConcreteStackBlock;
  v10 = -1073741824;
  v11 = 0;
  v12 = sub_1000EB08C;
  v13 = &unk_10032CAC0;
  v14 = v22;
  v7 = [NSTimer scheduledTimerWithTimeInterval:0 repeats:&v9 block:3600.0];
  activationLockTimer = v22->_activationLockTimer;
  v22->_activationLockTimer = v7;

  objc_storeStrong(&v14, 0);
  objc_storeStrong(location, 0);
}

- (void)_stopActivationLockExpirationTimer
{
  v7 = self;
  oslog[1] = a2;
  if (self->_activationLockTimer)
  {
    oslog[0] = _BYLoggingFacility();
    v5 = OS_LOG_TYPE_DEFAULT;
    if (os_log_type_enabled(oslog[0], OS_LOG_TYPE_DEFAULT))
    {
      v2 = oslog[0];
      v3 = v5;
      sub_10006AA68(v4);
      _os_log_impl(&_mh_execute_header, v2, v3, "Stopping Activation Lock Expiration timer", v4, 2u);
    }

    objc_storeStrong(oslog, 0);
    objc_storeStrong(&v7->_activationLockPage, 0);
    [(NSTimer *)v7->_activationLockTimer invalidate];
    objc_storeStrong(&v7->_activationLockTimer, 0);
  }
}

- (void)agreeToRemoteUIDialog
{
  v23 = self;
  v22[1] = a2;
  [(ActivationController *)self _cleanup];
  v2 = [(NSMutableArray *)v23->_objectModels lastObject];
  v3 = [v2 clientInfo];
  v22[0] = [v3 objectForKey:@"agreeDialogTitle"];

  v4 = [(NSMutableArray *)v23->_objectModels lastObject];
  v5 = [v4 clientInfo];
  v21 = [v5 objectForKey:@"agreeDialogText"];

  v6 = [(NSMutableArray *)v23->_objectModels lastObject];
  v7 = [v6 clientInfo];
  v20 = [v7 objectForKey:@"agreeDialogOK"];

  v8 = [(NSMutableArray *)v23->_objectModels lastObject];
  v9 = [v8 clientInfo];
  v19 = [v9 objectForKey:@"agreeDialogCancel"];

  if (v21 && v20 && v19)
  {
    location = [UIAlertController alertControllerWithTitle:v22[0] message:v21 preferredStyle:1];
    v10 = [UIAlertAction actionWithTitle:v19 style:1 handler:0];
    [location addAction:v10];

    v11 = location;
    v13 = _NSConcreteStackBlock;
    v14 = 3221225472;
    v15 = sub_1000EB668;
    v16 = &unk_10032B598;
    v17 = v23;
    v12 = [UIAlertAction actionWithTitle:v20 style:0 handler:&v13];
    [v11 addAction:{v12, v13, v14, v15, v16}];

    [(ActivationController *)v23 presentViewController:location animated:1 completion:0];
    objc_storeStrong(&v17, 0);
    objc_storeStrong(&location, 0);
  }

  else
  {
    [(ActivationController *)v23 _userAgreedToTCs:1];
  }

  objc_storeStrong(&v19, 0);
  objc_storeStrong(&v20, 0);
  objc_storeStrong(&v21, 0);
  objc_storeStrong(v22, 0);
}

- (void)tryAgainOnRemoteUIDialog
{
  [(ActivationController *)self _cleanup];
  self->_state = 0;
  v2 = [(ActivationController *)self navigationController];
  v3 = [v2 popToViewController:self animated:1];
}

- (void)_stashPasteboard
{
  v2 = +[UIPasteboard generalPasteboard];
  v3 = [(UIPasteboard *)v2 strings];
  previousPasteboard = self->_previousPasteboard;
  self->_previousPasteboard = v3;

  v5 = +[UIPasteboard generalPasteboard];
  [(UIPasteboard *)v5 setStrings:0];
}

- (void)_restorePasteboard
{
  v6 = 0;
  v4 = 0;
  v2 = 0;
  if (self->_previousPasteboard)
  {
    v7 = +[UIPasteboard generalPasteboard];
    v6 = 1;
    v5 = [(UIPasteboard *)v7 strings];
    v4 = 1;
    v2 = [(NSArray *)v5 count]== 0;
  }

  if (v4)
  {
  }

  if (v6)
  {
  }

  if (v2)
  {
    v3 = +[UIPasteboard generalPasteboard];
    [(UIPasteboard *)v3 setStrings:self->_previousPasteboard];

    objc_storeStrong(&self->_previousPasteboard, 0);
  }
}

- (void)activationConfigurationChanged:(BOOL)a3 isActivated:(BOOL)a4
{
  v20 = self;
  v19 = a2;
  v18 = a3;
  v17 = a4;
  if (a3)
  {
    location = _BYLoggingFacility();
    v15 = OS_LOG_TYPE_DEFAULT;
    if (os_log_type_enabled(location, OS_LOG_TYPE_DEFAULT))
    {
      v4 = location;
      v5 = v15;
      sub_10006AA68(buf);
      _os_log_impl(&_mh_execute_header, v4, v5, "Buddy Activate: Activation State Changed!", buf, 2u);
    }

    objc_storeStrong(&location, 0);
    v6 = &_dispatch_main_q;
    v7 = _NSConcreteStackBlock;
    v8 = -1073741824;
    v9 = 0;
    v10 = sub_1000EBAD0;
    v11 = &unk_10032B688;
    v12 = v20;
    v13 = v17;
    dispatch_async(v6, &v7);

    objc_storeStrong(&v12, 0);
  }
}

- (BOOL)remoteUIController:(id)a3 shouldLoadRequest:(id)a4 redirectResponse:(id)a5
{
  v33 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  v31 = 0;
  objc_storeStrong(&v31, a4);
  v30 = 0;
  objc_storeStrong(&v30, a5);
  if (v33->_state == 3)
  {
    v34 = 0;
    v29 = 1;
  }

  else
  {
    [(ActivationController *)v33 _cleanup];
    [(RUIPage *)v33->_loadingPage setLoading:0];
    v7 = [(NSMutableArray *)v33->_objectModels lastObject];
    v8 = [v7 visiblePage];
    loadingPage = v33->_loadingPage;
    v33->_loadingPage = v8;

    [(RUIPage *)v33->_loadingPage setLoading:1];
    v10 = [(NSMutableArray *)v33->_objectModels lastObject];
    v11 = [v10 clientInfo];
    v28 = [v11 objectForKeyedSubscript:@"elementIdForiCloudAppleId"];

    if (![v28 length])
    {
      objc_storeStrong(&v28, @"login");
    }

    v12 = [(NSMutableArray *)v33->_objectModels lastObject];
    v27 = [v12 rowForFormField:v28];

    if (v27)
    {
      v26 = objc_alloc_init(NSMutableDictionary);
      [v27 populatePostbackDictionary:v26];
      v25 = [v26 objectForKeyedSubscript:v28];
      if (v25)
      {
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          v13 = [(ActivationController *)v33 miscState];
          [(BuddyMiscState *)v13 setICloudAppleIdFromActivation:v25];
        }
      }

      objc_storeStrong(&v25, 0);
      objc_storeStrong(&v26, 0);
    }

    v24 = 0;
    v14 = [v31 HTTPMethod];
    v15 = [v14 lowercaseString];
    v16 = [v15 isEqualToString:@"post"];

    if (v16)
    {
      v17 = [(NSMutableArray *)v33->_objectModels lastObject];
      v18 = [v17 postbackData];
      v19 = v24;
      v24 = v18;
    }

    if (v24)
    {
      [v31 setHTTPBody:v24];
      [v31 setHTTPMethod:@"POST"];
      [v31 setValue:@"application/x-plist" forHTTPHeaderField:@"Content-Type"];
    }

    oslog = _BYLoggingFacility();
    v22 = OS_LOG_TYPE_DEFAULT;
    if (os_log_type_enabled(oslog, OS_LOG_TYPE_DEFAULT))
    {
      v21 = [v31 URL];
      sub_10006AE18(buf, v21);
      _os_log_impl(&_mh_execute_header, oslog, v22, "Buddy Activate: RemoteUI hand off of request for URL %@", buf, 0xCu);

      objc_storeStrong(&v21, 0);
    }

    objc_storeStrong(&oslog, 0);
    [(ActivationController *)v33 startRequest:v31 completion:0];
    v34 = 0;
    v29 = 1;
    objc_storeStrong(&v24, 0);
    objc_storeStrong(&v27, 0);
    objc_storeStrong(&v28, 0);
  }

  objc_storeStrong(&v30, 0);
  objc_storeStrong(&v31, 0);
  objc_storeStrong(location, 0);
  return v34 & 1;
}

- (void)_handleEscrowResponse:(id)a3
{
  v41 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v39 = location[0];
    v38 = [[NSData alloc] initWithBase64EncodedString:v39 options:1];
    if (v38)
    {
      v37 = 0;
      obj = 0;
      v3 = [NSJSONSerialization JSONObjectWithData:v38 options:0 error:&obj];
      objc_storeStrong(&v37, obj);
      v36 = v3;
      if (v37 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
      {
        v22 = _BYLoggingFacility();
        v21 = OS_LOG_TYPE_DEFAULT;
        if (os_log_type_enabled(v22, OS_LOG_TYPE_DEFAULT))
        {
          v6 = objc_opt_class();
          v20 = v6;
          v18 = 0;
          v16 = 0;
          if (_BYIsInternalInstall())
          {
            v7 = v37;
          }

          else if (v37)
          {
            v19 = [v37 domain];
            v18 = 1;
            v7 = +[NSString stringWithFormat:](NSString, "stringWithFormat:", @"<Error domain: %@, code %ld>", v19, [v37 code]);
            v17 = v7;
            v16 = 1;
          }

          else
          {
            v7 = 0;
          }

          sub_100073058(v43, v6, v7);
          _os_log_impl(&_mh_execute_header, v22, v21, "Buddy Activate: Failed to json-decode esecrowResponse. json type = %{public}@, error = %{public}@", v43, 0x16u);
          if (v16)
          {
          }

          if (v18)
          {
          }

          objc_storeStrong(&v20, 0);
        }

        objc_storeStrong(&v22, 0);
      }

      else
      {
        v34 = [v36 objectForKeyedSubscript:@"escrowSessionKey"];
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          objc_storeStrong(&v41->_escrowSessionKey, v34);
        }

        else
        {
          oslog = _BYLoggingFacility();
          v32 = OS_LOG_TYPE_DEFAULT;
          if (os_log_type_enabled(oslog, OS_LOG_TYPE_DEFAULT))
          {
            v31 = objc_opt_class();
            sub_100071CBC(buf, v31);
            _os_log_impl(&_mh_execute_header, oslog, v32, "Buddy Activate: Escrow session key was not a string, it was a %{public}@", buf, 0xCu);
            objc_storeStrong(&v31, 0);
          }

          objc_storeStrong(&oslog, 0);
        }

        v30 = [v36 objectForKeyedSubscript:@"responseBlob"];
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          v4 = [[NSData alloc] initWithBase64EncodedString:v30 options:0];
          srpInitResponse = v41->_srpInitResponse;
          v41->_srpInitResponse = v4;
        }

        else
        {
          v29 = _BYLoggingFacility();
          v28 = OS_LOG_TYPE_DEFAULT;
          if (os_log_type_enabled(v29, OS_LOG_TYPE_DEFAULT))
          {
            v27 = objc_opt_class();
            sub_100071CBC(v45, v27);
            _os_log_impl(&_mh_execute_header, v29, v28, "Buddy Activate: SRP Init Response was not a string, it was a %{public}@", v45, 0xCu);
            objc_storeStrong(&v27, 0);
          }

          objc_storeStrong(&v29, 0);
        }

        v26 = [v36 objectForKeyedSubscript:@"uniqueId"];
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          objc_storeStrong(&v41->_accountDSID, v26);
        }

        else
        {
          v25 = _BYLoggingFacility();
          v24 = OS_LOG_TYPE_DEFAULT;
          if (os_log_type_enabled(v25, OS_LOG_TYPE_DEFAULT))
          {
            v23 = objc_opt_class();
            sub_100071CBC(v44, v23);
            _os_log_impl(&_mh_execute_header, v25, v24, "Buddy Activate: UniqueID was not a string, it was a %{public}@", v44, 0xCu);
            objc_storeStrong(&v23, 0);
          }

          objc_storeStrong(&v25, 0);
        }

        objc_storeStrong(&v26, 0);
        objc_storeStrong(&v30, 0);
        objc_storeStrong(&v34, 0);
      }

      objc_storeStrong(&v36, 0);
      objc_storeStrong(&v37, 0);
    }

    else
    {
      v15 = _BYLoggingFacility();
      v14 = OS_LOG_TYPE_DEFAULT;
      if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
      {
        v8 = v15;
        v9 = v14;
        sub_10006AA68(v13);
        _os_log_impl(&_mh_execute_header, v8, v9, "Buddy Activate: Could not base64-decode escrowResponse", v13, 2u);
      }

      objc_storeStrong(&v15, 0);
    }

    objc_storeStrong(&v38, 0);
    objc_storeStrong(&v39, 0);
  }

  else
  {
    v12 = _BYLoggingFacility();
    v11 = OS_LOG_TYPE_DEFAULT;
    if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
    {
      v10 = objc_opt_class();
      sub_100071CBC(v42, v10);
      _os_log_impl(&_mh_execute_header, v12, v11, "Buddy Activate: Escrow response has wrong type, expecting string, got %{public}@", v42, 0xCu);
      objc_storeStrong(&v10, 0);
    }

    objc_storeStrong(&v12, 0);
  }

  objc_storeStrong(location, 0);
}

- (void)_handlePlanAddition:(id)a3
{
  v25 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  v23 = [location[0] objectForKeyedSubscript:@"eid"];
  v22 = [location[0] objectForKeyedSubscript:@"iccid"];
  v21 = [location[0] objectForKeyedSubscript:@"phoneNumber"];
  if (v23 && v22 && v21)
  {
    v3 = [CTCellularPlanProvisioningOnDeviceActivationRequest alloc];
    v18 = [location[0] objectForKeyedSubscript:@"sourceIccid"];
    v4 = [location[0] objectForKeyedSubscript:@"UnusableIccid"];
    v15 = [location[0] objectForKeyedSubscript:@"mcc"];
    v17 = [location[0] objectForKeyedSubscript:@"mnc"];
    v16 = [location[0] objectForKeyedSubscript:@"gid1"];
    v5 = [location[0] objectForKeyedSubscript:@"gid2"];
    v6 = [location[0] objectForKeyedSubscript:@"smdpAddress"];
    v7 = [location[0] objectForKeyedSubscript:@"useDS"];
    v8 = [v7 BOOLValue];
    v9 = [location[0] objectForKeyedSubscript:@"isESim"];
    v10 = v5;
    LOBYTE(v14) = v8 & 1;
    BYTE1(v14) = [v9 BOOLValue] & 1;
    v11 = [v3 initWithDetails:v23 installIccid:v22 sourceIccid:v18 unusableIccid:v4 phoneNumber:v21 mcc:v15 mnc:v17 gid1:v16 gid2:v5 smdp:v6 useDS:v14 esim:@"ODA" flowType:?];
    v12 = [(ActivationController *)v25 miscState];
    [(BuddyMiscState *)v12 setActivationPlanRequest:v11];

    v19 = [location[0] objectForKeyedSubscript:@"success"];
    if ([v19 BOOLValue])
    {
      v13 = [(ActivationController *)v25 miscState];
      [(BuddyMiscState *)v13 setSkipActivationForActivationPlanRequest:0];
    }

    else
    {
      v13 = [(ActivationController *)v25 miscState];
      [(BuddyMiscState *)v13 setSkipActivationForActivationPlanRequest:1];
    }

    objc_storeStrong(&v19, 0);
    v20 = 0;
  }

  else
  {
    v20 = 1;
  }

  objc_storeStrong(&v21, 0);
  objc_storeStrong(&v22, 0);
  objc_storeStrong(&v23, 0);
  objc_storeStrong(location, 0);
}

- (void)remoteUIController:(id)a3 didReceiveObjectModel:(id)a4 actionSignal:(unint64_t *)a5
{
  v46 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  v44 = 0;
  objc_storeStrong(&v44, a4);
  v43 = a5;
  v42 = [v44 clientInfo];
  v7 = [v42 objectForKeyedSubscript:@"carrierSelection"];
  LOBYTE(a4) = [v7 BOOLValue];

  if (a4)
  {
    v46->_cdmaSelectionActivation = 1;
    oslog = _BYLoggingFacility();
    v40 = OS_LOG_TYPE_DEFAULT;
    if (os_log_type_enabled(oslog, OS_LOG_TYPE_DEFAULT))
    {
      v8 = oslog;
      v9 = v40;
      sub_10006AA68(buf);
      _os_log_impl(&_mh_execute_header, v8, v9, "Buddy Activate: carrierSelection.", buf, 2u);
    }

    objc_storeStrong(&oslog, 0);
  }

  v37 = 0;
  v10 = 0;
  if (v43)
  {
    v38 = [(RemoteUIController *)v46->_remoteUIController displayedPages];
    v37 = 1;
    v10 = [v38 count] == 0;
  }

  if (v37)
  {
  }

  if (v10)
  {
    if (*v43 == 3)
    {
      v36 = _BYLoggingFacility();
      v35 = OS_LOG_TYPE_DEFAULT;
      if (os_log_type_enabled(v36, OS_LOG_TYPE_DEFAULT))
      {
        v11 = v36;
        v12 = v35;
        sub_10006AA68(v34);
        _os_log_impl(&_mh_execute_header, v11, v12, "Activation: Server bug, got a replace with no pages", v34, 2u);
      }

      objc_storeStrong(&v36, 0);
      *v43 = 2;
    }

    if (*v43 == 4)
    {
      v33 = _BYLoggingFacility();
      v32 = OS_LOG_TYPE_DEFAULT;
      if (os_log_type_enabled(v33, OS_LOG_TYPE_DEFAULT))
      {
        v13 = v33;
        v14 = v32;
        sub_10006AA68(v31);
        _os_log_impl(&_mh_execute_header, v13, v14, "Activation: Server bug, got a pop with no pages", v31, 2u);
      }

      objc_storeStrong(&v33, 0);
      *v43 = 0;
    }
  }

  if (v43 && *v43 == 1)
  {
    [(ActivationController *)v46 _dismissRemoteUI];
  }

  v15 = v44;
  v16 = [v42 objectForKey:@"agreeURL"];
  v17 = [v15 absoluteURLWithString:v16];
  v18 = v17;
  v29 = 0;
  if (v17)
  {
    v19 = v17;
  }

  else
  {
    v19 = [(ActivationController *)v46 agreeURL];
    v30 = v19;
    v29 = 1;
  }

  [(ActivationController *)v46 setAgreeURL:v19];
  if (v29)
  {
  }

  v20 = v44;
  v21 = [v42 objectForKey:@"disagreeURL"];
  v22 = [v20 absoluteURLWithString:v21];
  v23 = v22;
  v27 = 0;
  if (v22)
  {
    v24 = v22;
  }

  else
  {
    v24 = [(ActivationController *)v46 disagreeURL];
    v28 = v24;
    v27 = 1;
  }

  [(ActivationController *)v46 setDisagreeURL:v24];
  if (v27)
  {
  }

  v25 = v46;
  v26 = [v42 objectForKeyedSubscript:@"escrowResponse"];
  [(ActivationController *)v25 _handleEscrowResponse:v26];

  [(ActivationController *)v46 _handlePlanAddition:v42];
  [(RUIPage *)v46->_loadingPage setLoading:0];
  objc_storeStrong(&v46->_loadingPage, 0);
  objc_storeStrong(&v42, 0);
  objc_storeStrong(&v44, 0);
  objc_storeStrong(location, 0);
}

- (void)_activateWithPasscode:(id)a3 fromObjectModel:(id)a4
{
  v59 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  v57 = 0;
  objc_storeStrong(&v57, a4);
  v5 = v57;
  v6 = [v57 clientInfo];
  v7 = [v6 objectForKeyedSubscript:@"activationURL"];
  v56 = [v5 absoluteURLWithString:v7];

  v55 = _BYLoggingFacility();
  v54 = OS_LOG_TYPE_DEFAULT;
  if (os_log_type_enabled(v55, OS_LOG_TYPE_DEFAULT))
  {
    sub_10006AE18(buf, v56);
    _os_log_impl(&_mh_execute_header, v55, v54, "Buddy Activate: Got URL for Activation Lock endpoint: %@", buf, 0xCu);
  }

  objc_storeStrong(&v55, 0);
  if (v59->_escrowSessionKey && v59->_srpInitResponse && v59->_accountDSID && v56)
  {
    v50 = _BYLoggingFacility();
    v49 = OS_LOG_TYPE_DEFAULT;
    if (os_log_type_enabled(v50, OS_LOG_TYPE_DEFAULT))
    {
      v10 = v50;
      v11 = v49;
      sub_10006AA68(v48);
      _os_log_impl(&_mh_execute_header, v10, v11, "Buddy Activate: Activating with passcode", v48, 2u);
    }

    objc_storeStrong(&v50, 0);
    [(SecureBackup *)v59->_secureBackup srpRecoveryUpdateDSID:v59->_accountDSID recoveryPassphrase:location[0]];
    v47 = [(SecureBackup *)v59->_secureBackup srpRecoveryBlobFromSRPInitResponse:v59->_srpInitResponse];
    v46 = [v47 base64EncodedStringWithOptions:0];
    v12 = objc_alloc_init(SecureBackup);
    secureBackup = v59->_secureBackup;
    v59->_secureBackup = v12;

    v45 = [(SecureBackup *)v59->_secureBackup srpInitNonce];
    v44 = [v45 base64EncodedStringWithOptions:0];
    v43 = objc_alloc_init(FMDDeviceIdentityFactory);
    v42 = +[NSMutableDictionary dictionary];
    if (v44)
    {
      [v42 setObject:v44 forKeyedSubscript:@"nonce"];
    }

    if (v46)
    {
      [v42 setObject:v46 forKeyedSubscript:@"blob"];
    }

    [v42 setObject:v59->_escrowSessionKey forKeyedSubscript:@"escrowSessionKey"];
    v41 = @"passcodeActivation";
    [(ActivationController *)v59 startSpinningWithIdentifier:v41];
    v40 = 0;
    v39 = 0;
    v14 = _BYSignpostSubsystem();
    v15 = _BYSignpostCreate();
    v38 = v16;
    v37 = v15;

    log = _BYSignpostSubsystem();
    v35 = 1;
    v34 = v37;
    if (v37 && v34 != -1 && os_signpost_enabled(log))
    {
      v17 = log;
      v18 = v35;
      v19 = v34;
      sub_10006AA68(v33);
      _os_signpost_emit_with_name_impl(&_mh_execute_header, v17, v18, v19, "ActivationFindMyIdentity", "", v33, 2u);
    }

    objc_storeStrong(&log, 0);
    oslog = _BYSignpostSubsystem();
    v31 = OS_LOG_TYPE_DEFAULT;
    if (os_log_type_enabled(oslog, OS_LOG_TYPE_DEFAULT))
    {
      sub_100077E48(v60, v37);
      _os_log_impl(&_mh_execute_header, oslog, v31, "BEGIN [%lld]: ActivationFindMyIdentity ", v60, 0xCu);
    }

    objc_storeStrong(&oslog, 0);
    v39 = v37;
    v40 = v38;
    v20 = v43;
    v21 = v42;
    v22 = _NSConcreteStackBlock;
    v23 = -1073741824;
    v24 = 0;
    v25 = sub_1000ED5F8;
    v26 = &unk_10032CB38;
    v30[1] = v37;
    v30[2] = v38;
    v27 = v57;
    v28 = v56;
    v29 = v59;
    v30[0] = v41;
    [v20 identityForPasscodeActivationUnlockWithContext:v21 completion:&v22];
    objc_storeStrong(v30, 0);
    objc_storeStrong(&v29, 0);
    objc_storeStrong(&v28, 0);
    objc_storeStrong(&v27, 0);
    objc_storeStrong(&v41, 0);
    objc_storeStrong(&v42, 0);
    objc_storeStrong(&v43, 0);
    objc_storeStrong(&v44, 0);
    objc_storeStrong(&v45, 0);
    objc_storeStrong(&v46, 0);
    objc_storeStrong(&v47, 0);
  }

  else
  {
    v53 = _BYLoggingFacility();
    v52 = OS_LOG_TYPE_DEFAULT;
    if (os_log_type_enabled(v53, OS_LOG_TYPE_DEFAULT))
    {
      v8 = v53;
      v9 = v52;
      sub_10006AA68(v51);
      _os_log_impl(&_mh_execute_header, v8, v9, "Buddy Activate: Missing required data for passcode activation", v51, 2u);
    }

    objc_storeStrong(&v53, 0);
    [(ActivationController *)v59 _enterState:5];
  }

  objc_storeStrong(&v56, 0);
  objc_storeStrong(&v57, 0);
  objc_storeStrong(location, 0);
}

- (void)_setHandlerForPasscode
{
  v11 = self;
  location[1] = a2;
  objc_initWeak(location, self);
  remoteUIController = v11->_remoteUIController;
  v4 = _NSConcreteStackBlock;
  v5 = -1073741824;
  v6 = 0;
  v7 = sub_1000EE048;
  v8 = &unk_10032CA00;
  objc_copyWeak(&v9, location);
  v3 = [(RemoteUIController *)remoteUIController setHandlerForElementsMatching:&stru_10032CB78 handler:&v4];
  objc_destroyWeak(&v9);
  objc_destroyWeak(location);
}

- (void)remoteUIController:(id)a3 willPresentObjectModel:(id)a4 modally:(BOOL)a5
{
  v15 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  v13 = 0;
  objc_storeStrong(&v13, a4);
  v12 = a5;
  v15->_hasPresentedRemoteUI = 1;
  [(NSMutableArray *)v15->_objectModels addObject:v13];
  v7 = [v13 defaultPages];
  v11 = [v7 firstObject];

  v8 = [v11 attributes];
  v9 = [v8 objectForKeyedSubscript:@"name"];
  v10 = [v9 isEqualToString:@"FMIPLockChallenge"];

  if (v10)
  {
    [(ActivationController *)v15 _startActivationLockExpirationTimerForPage:v11];
    [(ActivationController *)v15 _stashPasteboard];
  }

  objc_storeStrong(&v11, 0);
  objc_storeStrong(&v13, 0);
  objc_storeStrong(location, 0);
}

- (void)remoteUIController:(id)a3 didRemoveObjectModel:(id)a4
{
  v12 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  v10 = 0;
  objc_storeStrong(&v10, a4);
  v5 = [v10 defaultPages];
  v6 = [v5 firstObject];
  activationLockPage = v12->_activationLockPage;

  if (v6 == activationLockPage)
  {
    [(ActivationController *)v12 _stopActivationLockExpirationTimer];
    [(ActivationController *)v12 _restorePasteboard];
  }

  v9 = [(NSMutableArray *)v12->_objectModels indexOfObject:v10];
  if (v9 == 0x7FFFFFFFFFFFFFFFLL)
  {
    oslog = _BYLoggingFacility();
    if (os_log_type_enabled(oslog, OS_LOG_TYPE_DEFAULT))
    {
      sub_10006AE18(buf, v10);
      _os_log_impl(&_mh_execute_header, oslog, OS_LOG_TYPE_DEFAULT, "Buddy Activate: RUI removed an object model that is not on our stack: %@", buf, 0xCu);
    }

    objc_storeStrong(&oslog, 0);
  }

  else
  {
    [(NSMutableArray *)v12->_objectModels removeObjectAtIndex:v9];
  }

  objc_storeStrong(&v10, 0);
  objc_storeStrong(location, 0);
}

- (void)remoteUIController:(id)a3 didFinishLoadWithError:(id)a4 forRequest:(id)a5
{
  v16 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  v14 = 0;
  objc_storeStrong(&v14, a4);
  v13 = 0;
  objc_storeStrong(&v13, a5);
  if (v14)
  {
    oslog = _BYLoggingFacility();
    if (os_log_type_enabled(oslog, OS_LOG_TYPE_DEFAULT))
    {
      v10 = 0;
      v8 = 0;
      if (_BYIsInternalInstall())
      {
        v7 = v14;
      }

      else if (v14)
      {
        v11 = [v14 domain];
        v10 = 1;
        v7 = +[NSString stringWithFormat:](NSString, "stringWithFormat:", @"<Error domain: %@, code %ld>", v11, [v14 code]);
        v9 = v7;
        v8 = 1;
      }

      else
      {
        v7 = 0;
      }

      sub_100071CBC(buf, v7);
      _os_log_impl(&_mh_execute_header, oslog, OS_LOG_TYPE_DEFAULT, "Buddy Activate: RUILoader didFailWithError: %{public}@", buf, 0xCu);
      if (v8)
      {
      }

      if (v10)
      {
      }
    }

    objc_storeStrong(&oslog, 0);
    [(ActivationController *)v16 _enterState:5];
  }

  objc_storeStrong(&v13, 0);
  objc_storeStrong(&v14, 0);
  objc_storeStrong(location, 0);
}

- (void)_userAgreedToTCs:(BOOL)a3
{
  v13 = self;
  v12 = a2;
  v11 = a3;
  v8 = 0;
  v6 = 0;
  if (a3)
  {
    v3 = [(ActivationController *)v13 agreeURL];
    v9 = v3;
    v8 = 1;
  }

  else
  {
    v3 = [(ActivationController *)v13 disagreeURL];
    v7 = v3;
    v6 = 1;
  }

  v10 = v3;
  if (v6)
  {
  }

  if (v8)
  {
  }

  location = [[NSMutableURLRequest alloc] initWithURL:v10 cachePolicy:1 timeoutInterval:30.0];
  oslog = _BYLoggingFacility();
  if (os_log_type_enabled(oslog, OS_LOG_TYPE_DEFAULT))
  {
    sub_100097718(buf, v11, v10);
    _os_log_impl(&_mh_execute_header, oslog, OS_LOG_TYPE_DEFAULT, "Buddy Activate: T&C request %d for URL %@", buf, 0x12u);
  }

  objc_storeStrong(&oslog, 0);
  [(ActivationController *)v13 startRequest:location completion:0];
  objc_storeStrong(&location, 0);
  objc_storeStrong(&v10, 0);
}

@end