@interface SUSUISoftwareUpdateAuthenticationViewController
- (BOOL)_createKeybagForPasscode:(id)passcode forInstallTonight:(BOOL)tonight;
- (BOOL)_shouldShowPasscodeView;
- (SUSUISoftwareUpdateAuthenticationViewController)initWithDescriptor:(id)descriptor forInstallTonight:(BOOL)tonight withInstallForecast:(id)forecast canDeferInstallation:(BOOL)installation;
- (SUSUISoftwareUpdateAuthenticationViewController)initWithRollbackDescriptor:(id)descriptor canDeferInstallation:(BOOL)installation;
- (SUSUISoftwareUpdateAuthenticationViewControllerDelegate)delegate;
- (unint64_t)supportedInterfaceOrientations;
- (void)_attemptUnlock:(id)unlock passcode:(id)passcode;
- (void)_authenticationFailure:(id)failure fromMesa:(BOOL)mesa;
- (void)_authenticationSuccess:(id)success fromMesa:(BOOL)mesa;
- (void)_dismissAndSendCompletionResponse:(BOOL)response;
- (void)_dismissSelf:(BOOL)self;
- (void)_dismissTermsAndConditionsIfNecessaryAnimated:(BOOL)animated withCompletion:(id)completion;
- (void)_passcodeLockViewPasscodeEntered:(id)entered viaMesa:(BOOL)mesa;
- (void)_presentTermsAndConditionsWithCompletion:(id)completion;
- (void)_setChildViewController:(id)controller;
- (void)_setVisible:(BOOL)visible animated:(BOOL)animated completion:(id)completion;
- (void)dealloc;
- (void)dismissEmergencyCallViewController:(id)controller;
- (void)emergencyCallViewController:(id)controller didExitWithError:(id)error;
- (void)loadView;
- (void)passcodeLockViewCancelButtonPressed:(id)pressed;
- (void)passcodeLockViewEmergencyCallButtonPressed:(id)pressed;
- (void)passcodeLockViewPasscodeDidChange:(id)change;
- (void)passcodeLockViewPasscodeEntered:(id)entered;
- (void)passcodeLockViewPasscodeEnteredViaMesa:(id)mesa;
- (void)viewDidAppear:(BOOL)appear;
- (void)viewDidDisappear:(BOOL)disappear;
- (void)viewWillAppear:(BOOL)appear;
@end

@implementation SUSUISoftwareUpdateAuthenticationViewController

- (SUSUISoftwareUpdateAuthenticationViewController)initWithDescriptor:(id)descriptor forInstallTonight:(BOOL)tonight withInstallForecast:(id)forecast canDeferInstallation:(BOOL)installation
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, descriptor);
  tonightCopy = tonight;
  v23 = 0;
  objc_storeStrong(&v23, forecast);
  installationCopy = installation;
  v6 = selfCopy;
  selfCopy = 0;
  v21.receiver = v6;
  v21.super_class = SUSUISoftwareUpdateAuthenticationViewController;
  v20 = [(SUSUISoftwareUpdateAuthenticationViewController *)&v21 init];
  selfCopy = v20;
  objc_storeStrong(&selfCopy, v20);
  if (v20)
  {
    selfCopy->_forInstallTonight = tonightCopy;
    selfCopy->_canDeferInstallation = installationCopy;
    objc_storeStrong(&selfCopy->_descriptor, location[0]);
    objc_storeStrong(&selfCopy->_rollbackDescriptor, 0);
    isSplatOnly = [location[0] isSplatOnly];
    selfCopy->_createInstallationKeybag = (isSplatOnly ^ 1) & 1;
    selfCopy->_showingPinController = 0;
    selfCopy->_doneWithPinController = 0;
    if (v23)
    {
      objc_storeStrong(&selfCopy->_installForecast, v23);
    }

    v8 = objc_alloc_init(SUSSoftwareUpdateTermsManager);
    termsManager = selfCopy->_termsManager;
    selfCopy->_termsManager = v8;

    v10 = dispatch_queue_create("com.apple.susui.authVC.susQueue", 0);
    clientQueue = selfCopy->_clientQueue;
    selfCopy->_clientQueue = v10;

    v12 = [SUManagerClient alloc];
    v13 = [v12 initWithDelegate:0 queue:selfCopy->_clientQueue clientType:0];
    suManagerClient = selfCopy->_suManagerClient;
    selfCopy->_suManagerClient = v13;
  }

  v16 = selfCopy;
  objc_storeStrong(&v23, 0);
  objc_storeStrong(location, 0);
  objc_storeStrong(&selfCopy, 0);
  return v16;
}

- (SUSUISoftwareUpdateAuthenticationViewController)initWithRollbackDescriptor:(id)descriptor canDeferInstallation:(BOOL)installation
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, descriptor);
  installationCopy = installation;
  v4 = selfCopy;
  selfCopy = 0;
  v16.receiver = v4;
  v16.super_class = SUSUISoftwareUpdateAuthenticationViewController;
  v15 = [(SUSUISoftwareUpdateAuthenticationViewController *)&v16 init];
  selfCopy = v15;
  objc_storeStrong(&selfCopy, v15);
  if (v15)
  {
    selfCopy->_forInstallTonight = 0;
    objc_storeStrong(&selfCopy->_descriptor, 0);
    objc_storeStrong(&selfCopy->_installForecast, 0);
    selfCopy->_showingPinController = 0;
    selfCopy->_doneWithPinController = 0;
    objc_storeStrong(&selfCopy->_rollbackDescriptor, location[0]);
    selfCopy->_canDeferInstallation = installationCopy;
    selfCopy->_createInstallationKeybag = 0;
    v5 = objc_alloc_init(SUSSoftwareUpdateTermsManager);
    termsManager = selfCopy->_termsManager;
    selfCopy->_termsManager = v5;

    v7 = dispatch_queue_create("com.apple.susui.authVC.susQueue", 0);
    clientQueue = selfCopy->_clientQueue;
    selfCopy->_clientQueue = v7;

    v9 = [SUManagerClient alloc];
    v10 = [v9 initWithDelegate:0 queue:selfCopy->_clientQueue clientType:0];
    suManagerClient = selfCopy->_suManagerClient;
    selfCopy->_suManagerClient = v10;
  }

  v13 = selfCopy;
  objc_storeStrong(location, 0);
  objc_storeStrong(&selfCopy, 0);
  return v13;
}

- (void)dealloc
{
  selfCopy = self;
  v3 = a2;
  objc_storeWeak(&self->_delegate, 0);
  [(SUSUISoftwareUpdateAuthenticationViewController *)selfCopy _sendDeactivationResponseFailureIfNecessary];
  v2.receiver = selfCopy;
  v2.super_class = SUSUISoftwareUpdateAuthenticationViewController;
  [(SUSUISoftwareUpdateAuthenticationViewController *)&v2 dealloc];
}

- (void)loadView
{
  selfCopy = self;
  v16 = a2;
  v12 = +[UIScreen mainScreen];
  [(UIScreen *)v12 bounds];
  *&v14 = v2;
  *(&v14 + 1) = v3;
  *&v15 = v4;
  *(&v15 + 1) = v5;

  if (selfCopy->_forInstallTonight)
  {
    v8 = [[SUSUIInstallTonightPasscodeEntryView alloc] initWithFrame:v14, v15];
    view = selfCopy->_view;
    selfCopy->_view = &v8->super;

    [(SUSUIPasscodeEntryView *)selfCopy->_view setInstallTonightForecast:selfCopy->_installForecast];
    [(SUSUIPasscodeEntryView *)selfCopy->_view setDescriptor:selfCopy->_descriptor];
  }

  else
  {
    v6 = [[SUSUIPasscodeEntryView alloc] initWithFrame:v14, v15];
    v7 = selfCopy->_view;
    selfCopy->_view = v6;
  }

  passcodeLockView = [(SUSUIPasscodeEntryView *)selfCopy->_view passcodeLockView];
  [(SBUIPasscodeLockView *)passcodeLockView setDelegate:selfCopy];
  v10 = +[UIDevice currentDevice];
  userInterfaceIdiom = [(UIDevice *)v10 userInterfaceIdiom];

  if (userInterfaceIdiom == 1)
  {
    [(SBUIPasscodeLockView *)passcodeLockView setShowsEmergencyCallButton:0];
  }

  else
  {
    [(SBUIPasscodeLockView *)passcodeLockView setShowsEmergencyCallButton:!selfCopy->_canDeferInstallation];
  }

  [(SBUIPasscodeLockView *)passcodeLockView setShowsCancelButton:selfCopy->_canDeferInstallation];
  [(SBUIPasscodeLockView *)passcodeLockView setBiometricAuthenticationAllowed:0];
  [(SUSUIPasscodeEntryView *)selfCopy->_view updateStatusText];
  [(SUSUISoftwareUpdateAuthenticationViewController *)selfCopy setView:selfCopy->_view];
  objc_storeStrong(&passcodeLockView, 0);
}

- (void)viewWillAppear:(BOOL)appear
{
  selfCopy = self;
  v5 = a2;
  appearCopy = appear;
  v3.receiver = self;
  v3.super_class = SUSUISoftwareUpdateAuthenticationViewController;
  [(SUSUISoftwareUpdateAuthenticationViewController *)&v3 viewWillAppear:appear];
  [(SUSUIPasscodeEntryView *)selfCopy->_view updateStatusText];
}

- (void)viewDidAppear:(BOOL)appear
{
  selfCopy = self;
  v5 = a2;
  appearCopy = appear;
  v3.receiver = self;
  v3.super_class = SUSUISoftwareUpdateAuthenticationViewController;
  [(SUSUISoftwareUpdateAuthenticationViewController *)&v3 viewDidAppear:appear];
  [(SUSUISoftwareUpdateAuthenticationViewController *)selfCopy _setVisible:1 animated:1 completion:0];
}

- (void)viewDidDisappear:(BOOL)disappear
{
  selfCopy = self;
  v9 = a2;
  disappearCopy = disappear;
  oslog = SUSUILogAuthenticationUI();
  type = OS_LOG_TYPE_DEFAULT;
  if (os_log_type_enabled(oslog, OS_LOG_TYPE_DEFAULT))
  {
    if (disappearCopy)
    {
      v3 = @"YES";
    }

    else
    {
      v3 = @"NO";
    }

    if (selfCopy->_showingTermsAndConditions)
    {
      v4 = @"YES";
    }

    else
    {
      v4 = @"NO";
    }

    sub_10000315C(v11, "[SUSUISoftwareUpdateAuthenticationViewController viewDidDisappear:]", v3, v4);
    _os_log_impl(&_mh_execute_header, oslog, type, "%s:%@, showingTermsAndConditions:%@", v11, 0x20u);
  }

  objc_storeStrong(&oslog, 0);
  v5.receiver = selfCopy;
  v5.super_class = SUSUISoftwareUpdateAuthenticationViewController;
  [(SUSUISoftwareUpdateAuthenticationViewController *)&v5 viewDidDisappear:disappearCopy];
  [(SUSUISoftwareUpdateAuthenticationViewController *)selfCopy _sendDeactivationResponseFailureIfNecessary];
}

- (unint64_t)supportedInterfaceOrientations
{
  v5 = +[UIDevice currentDevice];
  userInterfaceIdiom = [(UIDevice *)v5 userInterfaceIdiom];
  v3 = 30;
  if (userInterfaceIdiom != 1)
  {
    v3 = 2;
  }

  v6 = v3;

  return v6;
}

- (void)passcodeLockViewPasscodeDidChange:(id)change
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, change);
  delegate = [(SUSUISoftwareUpdateAuthenticationViewController *)selfCopy delegate];
  [(SUSUISoftwareUpdateAuthenticationViewControllerDelegate *)delegate viewControllerWantsIdleTimerReset:selfCopy];

  objc_storeStrong(location, 0);
}

- (void)passcodeLockViewPasscodeEntered:(id)entered
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, entered);
  [(SUSUISoftwareUpdateAuthenticationViewController *)selfCopy _passcodeLockViewPasscodeEntered:location[0] viaMesa:0];
  objc_storeStrong(location, 0);
}

- (void)passcodeLockViewPasscodeEnteredViaMesa:(id)mesa
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, mesa);
  [(SUSUISoftwareUpdateAuthenticationViewController *)selfCopy _passcodeLockViewPasscodeEntered:location[0] viaMesa:1];
  objc_storeStrong(location, 0);
}

- (void)passcodeLockViewCancelButtonPressed:(id)pressed
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, pressed);
  [(SUSUISoftwareUpdateAuthenticationViewController *)selfCopy _authenticationCancelled];
  objc_storeStrong(location, 0);
}

- (void)passcodeLockViewEmergencyCallButtonPressed:(id)pressed
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, pressed);
  v13 = SUSUILogAuthenticationUI();
  v12 = OS_LOG_TYPE_DEFAULT;
  if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
  {
    log = v13;
    type = v12;
    sub_100001BA4(v11);
    _os_log_impl(&_mh_execute_header, log, type, "Emergency call button hit", v11, 2u);
  }

  objc_storeStrong(&v13, 0);
  v5 = _NSConcreteStackBlock;
  v6 = -1073741824;
  v7 = 0;
  v8 = sub_100003548;
  v9 = &unk_1000185D0;
  v10 = selfCopy;
  [SUSUIRemoteEmergencyCallViewController requestEmergencyCallControllerWithCompletion:&v5];
  objc_storeStrong(&v10, 0);
  objc_storeStrong(location, 0);
}

- (void)dismissEmergencyCallViewController:(id)controller
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, controller);
  v9 = _NSConcreteStackBlock;
  v10 = -1073741824;
  v11 = 0;
  v12 = sub_100003958;
  v13 = &unk_1000185A8;
  v14 = selfCopy;
  v3 = _NSConcreteStackBlock;
  v4 = -1073741824;
  v5 = 0;
  v6 = sub_1000039C0;
  v7 = &unk_1000185F8;
  v8 = selfCopy;
  [UIView animateWithDuration:&v9 animations:0.4 completion:?];
  objc_storeStrong(&v8, 0);
  objc_storeStrong(&v14, 0);
  objc_storeStrong(location, 0);
}

- (void)emergencyCallViewController:(id)controller didExitWithError:(id)error
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, controller);
  v5 = 0;
  objc_storeStrong(&v5, error);
  [(SUSUISoftwareUpdateAuthenticationViewController *)selfCopy bs_removeChildViewController:selfCopy->_emergencyVC];
  objc_storeStrong(&selfCopy->_emergencyVC, 0);
  objc_storeStrong(&v5, 0);
  objc_storeStrong(location, 0);
}

- (void)_setVisible:(BOOL)visible animated:(BOOL)animated completion:(id)completion
{
  selfCopy = self;
  v18 = a2;
  visibleCopy = visible;
  animatedCopy = animated;
  location = 0;
  objc_storeStrong(&location, completion);
  if (selfCopy->_showingTermsAndConditions)
  {
    if (visibleCopy)
    {
      if (location)
      {
        (*(location + 2))(location, 1);
      }
    }

    else
    {
      v5 = selfCopy;
      v6 = _NSConcreteStackBlock;
      v7 = -1073741824;
      v8 = 0;
      v9 = sub_100003D2C;
      v10 = &unk_100018620;
      v11 = selfCopy;
      v13 = visibleCopy;
      v14 = animatedCopy;
      v12 = location;
      [(SUSUISoftwareUpdateAuthenticationViewController *)v5 _dismissTermsAndConditionsIfNecessaryAnimated:1 withCompletion:&v6];
      objc_storeStrong(&v12, 0);
      objc_storeStrong(&v11, 0);
    }
  }

  else if (visibleCopy)
  {
    if ([(SUSUISoftwareUpdateAuthenticationViewController *)selfCopy _shouldShowPasscodeView])
    {
      [(SUSUIPasscodeEntryView *)selfCopy->_view setPasscodeViewsToVisible:visibleCopy animated:animatedCopy completion:location];
    }

    else
    {
      [(SUSUISoftwareUpdateAuthenticationViewController *)selfCopy _presentTermsAndConditionsWithCompletion:location];
    }
  }

  else
  {
    [(SUSUIPasscodeEntryView *)selfCopy->_view setPasscodeViewsToVisible:visibleCopy animated:animatedCopy completion:location];
    [(SUSUISoftwareUpdateAuthenticationViewController *)selfCopy _dismissTermsAndConditionsIfNecessaryAnimated:0 withCompletion:0];
  }

  objc_storeStrong(&location, 0);
}

- (void)_attemptUnlock:(id)unlock passcode:(id)passcode
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, unlock);
  v9 = 0;
  objc_storeStrong(&v9, passcode);
  v8 = [v9 length] != 0;
  v7 = +[SUSUIAuthenticationInterface sharedInstance];
  v6 = 0;
  v5 = [v7 attemptAuthentication:v9 outBlocked:&v6];
  if (v6)
  {
    [location[0] reset];
    [(SUSUISoftwareUpdateAuthenticationViewController *)selfCopy _dismissAndSendCompletionResponse:0];
  }

  else if (v5)
  {
    [location[0] reset];
    [(SUSUISoftwareUpdateAuthenticationViewController *)selfCopy _authenticationSuccess:v9 fromMesa:!v8];
  }

  else
  {
    [location[0] resetForFailedPasscode];
    [(SUSUISoftwareUpdateAuthenticationViewController *)selfCopy _authenticationFailure:v9 fromMesa:!v8];
  }

  selfCopy->_attemptingUnlock = 0;
  objc_storeStrong(&v7, 0);
  objc_storeStrong(&v9, 0);
  objc_storeStrong(location, 0);
}

- (void)_passcodeLockViewPasscodeEntered:(id)entered viaMesa:(BOOL)mesa
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, entered);
  mesaCopy = mesa;
  if (selfCopy->_attemptingUnlock)
  {
    v18 = 1;
  }

  else
  {
    selfCopy->_attemptingUnlock = 1;
    v17 = 0x3FC999999999999ALL;
    v16 = dispatch_time(0, (0.2 * 1000000000.0));
    when = v16;
    v4 = &_dispatch_main_q;
    queue = &_dispatch_main_q;
    v8 = _NSConcreteStackBlock;
    v9 = -1073741824;
    v10 = 0;
    v11 = sub_1000040C0;
    v12 = &unk_100018648;
    v15 = mesaCopy;
    v13 = location[0];
    v14 = selfCopy;
    dispatch_after(when, queue, &v8);

    objc_storeStrong(&v14, 0);
    objc_storeStrong(&v13, 0);
    v18 = 0;
  }

  objc_storeStrong(location, 0);
}

- (void)_authenticationFailure:(id)failure fromMesa:(BOOL)mesa
{
  location[2] = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, failure);
  mesaCopy = mesa;
  v9 = SUSUILogAuthenticationUI();
  v8 = OS_LOG_TYPE_DEFAULT;
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
  {
    log = v9;
    type = v8;
    sub_100001BA4(v7);
    _os_log_impl(&_mh_execute_header, log, type, "Failed passcode auth attempt.", v7, 2u);
  }

  objc_storeStrong(&v9, 0);
  objc_storeStrong(location, 0);
}

- (void)_authenticationSuccess:(id)success fromMesa:(BOOL)mesa
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, success);
  mesaCopy = mesa;
  v11 = SUSUILogAuthenticationUI();
  v10 = OS_LOG_TYPE_DEFAULT;
  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
  {
    log = v11;
    type = v10;
    sub_100001BA4(v9);
    _os_log_impl(&_mh_execute_header, log, type, "Successful passcode auth attempt; presenting terms and conditions if necessary.", v9, 2u);
  }

  objc_storeStrong(&v11, 0);
  v4 = [location[0] copy];
  passcode = selfCopy->_passcode;
  selfCopy->_passcode = v4;

  [(SUSUISoftwareUpdateAuthenticationViewController *)selfCopy _presentTermsAndConditionsWithCompletion:0];
  objc_storeStrong(location, 0);
}

- (BOOL)_shouldShowPasscodeView
{
  v3 = +[SUKeybagInterface sharedInstance];
  hasPasscodeSet = [(SUKeybagInterface *)v3 hasPasscodeSet];

  return hasPasscodeSet;
}

- (void)_presentTermsAndConditionsWithCompletion:(id)completion
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, completion);
  if (selfCopy->_showingTermsAndConditions)
  {
    if (location[0])
    {
      (*(location[0] + 2))(location[0], 1);
    }

    v18 = 1;
  }

  else
  {
    v3 = [[UIViewController alloc] initWithNibName:0 bundle:?];
    termsAndConditionsController = selfCopy->_termsAndConditionsController;
    selfCopy->_termsAndConditionsController = v3;

    view = [(UIViewController *)selfCopy->_termsAndConditionsController view];
    [(UIView *)view setAlpha:0.0];

    [(UIViewController *)selfCopy->_termsAndConditionsController setModalPresentationStyle:0];
    selfCopy->_showingTermsAndConditions = 1;
    v9 = +[UIDevice currentDevice];
    userInterfaceIdiom = [(UIDevice *)v9 userInterfaceIdiom];

    if (userInterfaceIdiom != 1)
    {
      delegate = [(SUSUISoftwareUpdateAuthenticationViewController *)selfCopy delegate];
      [(SUSUISoftwareUpdateAuthenticationViewControllerDelegate *)delegate viewController:selfCopy wantsStatusBarHidden:1 withDuration:0.4];
    }

    v6 = selfCopy;
    v5 = selfCopy->_termsAndConditionsController;
    v11 = _NSConcreteStackBlock;
    v12 = -1073741824;
    v13 = 0;
    v14 = sub_10000470C;
    v15 = &unk_100018698;
    v16 = selfCopy;
    v17 = location[0];
    [(SUSUISoftwareUpdateAuthenticationViewController *)v6 presentViewController:v5 animated:0 completion:&v11];
    objc_storeStrong(&v17, 0);
    objc_storeStrong(&v16, 0);
    v18 = 0;
  }

  objc_storeStrong(location, 0);
}

- (void)_dismissTermsAndConditionsIfNecessaryAnimated:(BOOL)animated withCompletion:(id)completion
{
  selfCopy = self;
  v9 = a2;
  animatedCopy = animated;
  location = 0;
  objc_storeStrong(&location, completion);
  if (selfCopy->_showingTermsAndConditions)
  {
    selfCopy->_showingTermsAndConditions = 0;
    v5 = +[UIDevice currentDevice];
    userInterfaceIdiom = [(UIDevice *)v5 userInterfaceIdiom];

    if (userInterfaceIdiom != 1)
    {
      delegate = [(SUSUISoftwareUpdateAuthenticationViewController *)selfCopy delegate];
      [(SUSUISoftwareUpdateAuthenticationViewControllerDelegate *)delegate viewController:selfCopy wantsStatusBarHidden:0 withDuration:0.4];
    }

    [(UIViewController *)selfCopy->_termsAndConditionsController dismissViewControllerAnimated:animatedCopy completion:location];
  }

  else if (location)
  {
    (*(location + 2))();
  }

  objc_storeStrong(&location, 0);
}

- (void)_dismissAndSendCompletionResponse:(BOOL)response
{
  selfCopy = self;
  v28 = a2;
  responseCopy = response;
  if (!self->_responseSent)
  {
    selfCopy->_responseSent = 1;
    location = SUSUILogAuthenticationUI();
    v25 = OS_LOG_TYPE_DEBUG;
    if (os_log_type_enabled(location, OS_LOG_TYPE_DEBUG))
    {
      if (responseCopy)
      {
        v3 = @"YES";
      }

      else
      {
        v3 = @"NO";
      }

      sub_1000050EC(v33, v3);
      _os_log_debug_impl(&_mh_execute_header, location, v25, "_dismissAndSendCompletionResponse: possibleSuccess=%@", v33, 0xCu);
    }

    objc_storeStrong(&location, 0);
    v24 = responseCopy;
    if (responseCopy)
    {
      if (selfCopy->_createInstallationKeybag)
      {
        v13 = +[SUKeybagInterface sharedInstance];
        hasPasscodeSet = [(SUKeybagInterface *)v13 hasPasscodeSet];

        v23 = hasPasscodeSet;
        if (hasPasscodeSet)
        {
          v24 = [(SUSUISoftwareUpdateAuthenticationViewController *)selfCopy _createKeybagForPasscode:selfCopy->_passcode forInstallTonight:selfCopy->_forInstallTonight];
          v22 = SUSUILogAuthenticationUI();
          v21 = OS_LOG_TYPE_DEFAULT;
          if (os_log_type_enabled(v22, OS_LOG_TYPE_DEFAULT))
          {
            if (v24)
            {
              v4 = @"YES";
            }

            else
            {
              v4 = @"NO";
            }

            sub_1000050EC(v32, v4);
            _os_log_impl(&_mh_execute_header, v22, v21, "Authenticated with result [keybag created?]: %@", v32, 0xCu);
          }

          objc_storeStrong(&v22, 0);
        }

        else
        {
          v20 = SUSUILogAuthenticationUI();
          v19 = OS_LOG_TYPE_DEFAULT;
          if (os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT))
          {
            if (v24)
            {
              v5 = @"YES";
            }

            else
            {
              v5 = @"NO";
            }

            sub_1000050EC(v31, v5);
            _os_log_impl(&_mh_execute_header, v20, v19, "Authenticated with result [keybag not required]: %@", v31, 0xCu);
          }

          objc_storeStrong(&v20, 0);
        }
      }

      else
      {
        v18 = SUSUILogAuthenticationUI();
        v17 = OS_LOG_TYPE_DEFAULT;
        if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
        {
          v11 = v18;
          v12 = v17;
          sub_100001BA4(v16);
          _os_log_impl(&_mh_execute_header, v11, v12, "Not creating installation keybag due to _createInstallationKeybag == NO", v16, 2u);
        }

        objc_storeStrong(&v18, 0);
      }

      delegate = [(SUSUISoftwareUpdateAuthenticationViewController *)selfCopy delegate];
      [(SUSUISoftwareUpdateAuthenticationViewControllerDelegate *)delegate viewControllerAuthenticatedWithResult:v24 & 1];

      delegate2 = [(SUSUISoftwareUpdateAuthenticationViewController *)selfCopy delegate];
      [(SUSUISoftwareUpdateAuthenticationViewControllerDelegate *)delegate2 viewControllerWantsDismissal:selfCopy];
    }

    else
    {
      oslog = SUSUILogAuthenticationUI();
      if (os_log_type_enabled(oslog, OS_LOG_TYPE_DEFAULT))
      {
        if (v24)
        {
          v6 = @"YES";
        }

        else
        {
          v6 = @"NO";
        }

        sub_1000050EC(v30, v6);
        _os_log_impl(&_mh_execute_header, oslog, OS_LOG_TYPE_DEFAULT, "Authenticated with result [no passcode set]: %@", v30, 0xCu);
      }

      objc_storeStrong(&oslog, 0);
      delegate3 = [(SUSUISoftwareUpdateAuthenticationViewController *)selfCopy delegate];
      [(SUSUISoftwareUpdateAuthenticationViewControllerDelegate *)delegate3 viewControllerAuthenticatedWithResult:v24 & 1];

      delegate4 = [(SUSUISoftwareUpdateAuthenticationViewController *)selfCopy delegate];
      [(SUSUISoftwareUpdateAuthenticationViewControllerDelegate *)delegate4 viewControllerWantsDismissal:selfCopy];
    }

    [(SUManagerClient *)selfCopy->_suManagerClient invalidate];
    objc_storeStrong(&selfCopy->_suManagerClient, 0);
  }
}

- (BOOL)_createKeybagForPasscode:(id)passcode forInstallTonight:(BOOL)tonight
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, passcode);
  tonightCopy = tonight;
  objc_initWeak(&v21, selfCopy->_suManagerClient);
  v16 = 0;
  v17 = &v16;
  v18 = 0x20000000;
  v19 = 32;
  v20 = 0;
  queue = selfCopy->_clientQueue;
  v8 = _NSConcreteStackBlock;
  v9 = -1073741824;
  v10 = 0;
  v11 = sub_1000052DC;
  v12 = &unk_1000186C0;
  v13 = selfCopy;
  v14[0] = location[0];
  v14[1] = &v16;
  objc_copyWeak(&v15, &v21);
  dispatch_sync(queue, &v8);
  v7 = *(v17 + 24);
  objc_destroyWeak(&v15);
  objc_storeStrong(v14, 0);
  objc_storeStrong(&v13, 0);
  _Block_object_dispose(&v16, 8);
  objc_destroyWeak(&v21);
  objc_storeStrong(location, 0);
  return v7 & 1;
}

- (void)_dismissSelf:(BOOL)self
{
  selfCopy = self;
  v16 = a2;
  selfCopy2 = self;
  location = SUSUILogAuthenticationUI();
  v13 = OS_LOG_TYPE_DEFAULT;
  if (os_log_type_enabled(location, OS_LOG_TYPE_DEFAULT))
  {
    if (selfCopy2)
    {
      v3 = @"YES";
    }

    else
    {
      v3 = @"NO";
    }

    sub_1000050EC(v18, v3);
    _os_log_impl(&_mh_execute_header, location, v13, "Requesting dismissal for self with succes: %@", v18, 0xCu);
  }

  objc_storeStrong(&location, 0);
  selfCopy->_doneWithPinController = 1;
  objc_initWeak(&from, selfCopy);
  v4 = selfCopy;
  v5 = _NSConcreteStackBlock;
  v6 = -1073741824;
  v7 = 0;
  v8 = sub_100005740;
  v9 = &unk_1000186E8;
  objc_copyWeak(&v10, &from);
  v11 = selfCopy2;
  [(SUSUISoftwareUpdateAuthenticationViewController *)v4 _setVisible:0 animated:1 completion:&v5];
  objc_destroyWeak(&v10);
  objc_destroyWeak(&from);
}

- (void)_setChildViewController:(id)controller
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, controller);
  view = [(SUSUISoftwareUpdateAuthenticationViewController *)selfCopy view];
  [view bounds];
  *&v10 = v3;
  *(&v10 + 1) = v4;
  *&v11 = v5;
  *(&v11 + 1) = v6;

  view2 = [location[0] view];
  [view2 setFrame:{v10, v11}];
  [view2 setAutoresizingMask:18];
  [location[0] willMoveToParentViewController:selfCopy];
  view3 = [(SUSUISoftwareUpdateAuthenticationViewController *)selfCopy view];
  [view3 addSubview:view2];

  [(SUSUISoftwareUpdateAuthenticationViewController *)selfCopy addChildViewController:location[0]];
  [location[0] didMoveToParentViewController:selfCopy];
  objc_storeStrong(&view2, 0);
  objc_storeStrong(location, 0);
}

- (SUSUISoftwareUpdateAuthenticationViewControllerDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end