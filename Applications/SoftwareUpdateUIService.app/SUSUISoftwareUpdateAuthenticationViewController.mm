@interface SUSUISoftwareUpdateAuthenticationViewController
- (BOOL)_createKeybagForPasscode:(id)a3 forInstallTonight:(BOOL)a4;
- (BOOL)_shouldShowPasscodeView;
- (SUSUISoftwareUpdateAuthenticationViewController)initWithDescriptor:(id)a3 forInstallTonight:(BOOL)a4 withInstallForecast:(id)a5 canDeferInstallation:(BOOL)a6;
- (SUSUISoftwareUpdateAuthenticationViewController)initWithRollbackDescriptor:(id)a3 canDeferInstallation:(BOOL)a4;
- (SUSUISoftwareUpdateAuthenticationViewControllerDelegate)delegate;
- (unint64_t)supportedInterfaceOrientations;
- (void)_attemptUnlock:(id)a3 passcode:(id)a4;
- (void)_authenticationFailure:(id)a3 fromMesa:(BOOL)a4;
- (void)_authenticationSuccess:(id)a3 fromMesa:(BOOL)a4;
- (void)_dismissAndSendCompletionResponse:(BOOL)a3;
- (void)_dismissSelf:(BOOL)a3;
- (void)_dismissTermsAndConditionsIfNecessaryAnimated:(BOOL)a3 withCompletion:(id)a4;
- (void)_passcodeLockViewPasscodeEntered:(id)a3 viaMesa:(BOOL)a4;
- (void)_presentTermsAndConditionsWithCompletion:(id)a3;
- (void)_setChildViewController:(id)a3;
- (void)_setVisible:(BOOL)a3 animated:(BOOL)a4 completion:(id)a5;
- (void)dealloc;
- (void)dismissEmergencyCallViewController:(id)a3;
- (void)emergencyCallViewController:(id)a3 didExitWithError:(id)a4;
- (void)loadView;
- (void)passcodeLockViewCancelButtonPressed:(id)a3;
- (void)passcodeLockViewEmergencyCallButtonPressed:(id)a3;
- (void)passcodeLockViewPasscodeDidChange:(id)a3;
- (void)passcodeLockViewPasscodeEntered:(id)a3;
- (void)passcodeLockViewPasscodeEnteredViaMesa:(id)a3;
- (void)viewDidAppear:(BOOL)a3;
- (void)viewDidDisappear:(BOOL)a3;
- (void)viewWillAppear:(BOOL)a3;
@end

@implementation SUSUISoftwareUpdateAuthenticationViewController

- (SUSUISoftwareUpdateAuthenticationViewController)initWithDescriptor:(id)a3 forInstallTonight:(BOOL)a4 withInstallForecast:(id)a5 canDeferInstallation:(BOOL)a6
{
  v26 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  v24 = a4;
  v23 = 0;
  objc_storeStrong(&v23, a5);
  v22 = a6;
  v6 = v26;
  v26 = 0;
  v21.receiver = v6;
  v21.super_class = SUSUISoftwareUpdateAuthenticationViewController;
  v20 = [(SUSUISoftwareUpdateAuthenticationViewController *)&v21 init];
  v26 = v20;
  objc_storeStrong(&v26, v20);
  if (v20)
  {
    v26->_forInstallTonight = v24;
    v26->_canDeferInstallation = v22;
    objc_storeStrong(&v26->_descriptor, location[0]);
    objc_storeStrong(&v26->_rollbackDescriptor, 0);
    v7 = [location[0] isSplatOnly];
    v26->_createInstallationKeybag = (v7 ^ 1) & 1;
    v26->_showingPinController = 0;
    v26->_doneWithPinController = 0;
    if (v23)
    {
      objc_storeStrong(&v26->_installForecast, v23);
    }

    v8 = objc_alloc_init(SUSSoftwareUpdateTermsManager);
    termsManager = v26->_termsManager;
    v26->_termsManager = v8;

    v10 = dispatch_queue_create("com.apple.susui.authVC.susQueue", 0);
    clientQueue = v26->_clientQueue;
    v26->_clientQueue = v10;

    v12 = [SUManagerClient alloc];
    v13 = [v12 initWithDelegate:0 queue:v26->_clientQueue clientType:0];
    suManagerClient = v26->_suManagerClient;
    v26->_suManagerClient = v13;
  }

  v16 = v26;
  objc_storeStrong(&v23, 0);
  objc_storeStrong(location, 0);
  objc_storeStrong(&v26, 0);
  return v16;
}

- (SUSUISoftwareUpdateAuthenticationViewController)initWithRollbackDescriptor:(id)a3 canDeferInstallation:(BOOL)a4
{
  v19 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  v17 = a4;
  v4 = v19;
  v19 = 0;
  v16.receiver = v4;
  v16.super_class = SUSUISoftwareUpdateAuthenticationViewController;
  v15 = [(SUSUISoftwareUpdateAuthenticationViewController *)&v16 init];
  v19 = v15;
  objc_storeStrong(&v19, v15);
  if (v15)
  {
    v19->_forInstallTonight = 0;
    objc_storeStrong(&v19->_descriptor, 0);
    objc_storeStrong(&v19->_installForecast, 0);
    v19->_showingPinController = 0;
    v19->_doneWithPinController = 0;
    objc_storeStrong(&v19->_rollbackDescriptor, location[0]);
    v19->_canDeferInstallation = v17;
    v19->_createInstallationKeybag = 0;
    v5 = objc_alloc_init(SUSSoftwareUpdateTermsManager);
    termsManager = v19->_termsManager;
    v19->_termsManager = v5;

    v7 = dispatch_queue_create("com.apple.susui.authVC.susQueue", 0);
    clientQueue = v19->_clientQueue;
    v19->_clientQueue = v7;

    v9 = [SUManagerClient alloc];
    v10 = [v9 initWithDelegate:0 queue:v19->_clientQueue clientType:0];
    suManagerClient = v19->_suManagerClient;
    v19->_suManagerClient = v10;
  }

  v13 = v19;
  objc_storeStrong(location, 0);
  objc_storeStrong(&v19, 0);
  return v13;
}

- (void)dealloc
{
  v4 = self;
  v3 = a2;
  objc_storeWeak(&self->_delegate, 0);
  [(SUSUISoftwareUpdateAuthenticationViewController *)v4 _sendDeactivationResponseFailureIfNecessary];
  v2.receiver = v4;
  v2.super_class = SUSUISoftwareUpdateAuthenticationViewController;
  [(SUSUISoftwareUpdateAuthenticationViewController *)&v2 dealloc];
}

- (void)loadView
{
  v17 = self;
  v16 = a2;
  v12 = +[UIScreen mainScreen];
  [(UIScreen *)v12 bounds];
  *&v14 = v2;
  *(&v14 + 1) = v3;
  *&v15 = v4;
  *(&v15 + 1) = v5;

  if (v17->_forInstallTonight)
  {
    v8 = [[SUSUIInstallTonightPasscodeEntryView alloc] initWithFrame:v14, v15];
    view = v17->_view;
    v17->_view = &v8->super;

    [(SUSUIPasscodeEntryView *)v17->_view setInstallTonightForecast:v17->_installForecast];
    [(SUSUIPasscodeEntryView *)v17->_view setDescriptor:v17->_descriptor];
  }

  else
  {
    v6 = [[SUSUIPasscodeEntryView alloc] initWithFrame:v14, v15];
    v7 = v17->_view;
    v17->_view = v6;
  }

  v13 = [(SUSUIPasscodeEntryView *)v17->_view passcodeLockView];
  [(SBUIPasscodeLockView *)v13 setDelegate:v17];
  v10 = +[UIDevice currentDevice];
  v11 = [(UIDevice *)v10 userInterfaceIdiom];

  if (v11 == 1)
  {
    [(SBUIPasscodeLockView *)v13 setShowsEmergencyCallButton:0];
  }

  else
  {
    [(SBUIPasscodeLockView *)v13 setShowsEmergencyCallButton:!v17->_canDeferInstallation];
  }

  [(SBUIPasscodeLockView *)v13 setShowsCancelButton:v17->_canDeferInstallation];
  [(SBUIPasscodeLockView *)v13 setBiometricAuthenticationAllowed:0];
  [(SUSUIPasscodeEntryView *)v17->_view updateStatusText];
  [(SUSUISoftwareUpdateAuthenticationViewController *)v17 setView:v17->_view];
  objc_storeStrong(&v13, 0);
}

- (void)viewWillAppear:(BOOL)a3
{
  v6 = self;
  v5 = a2;
  v4 = a3;
  v3.receiver = self;
  v3.super_class = SUSUISoftwareUpdateAuthenticationViewController;
  [(SUSUISoftwareUpdateAuthenticationViewController *)&v3 viewWillAppear:a3];
  [(SUSUIPasscodeEntryView *)v6->_view updateStatusText];
}

- (void)viewDidAppear:(BOOL)a3
{
  v6 = self;
  v5 = a2;
  v4 = a3;
  v3.receiver = self;
  v3.super_class = SUSUISoftwareUpdateAuthenticationViewController;
  [(SUSUISoftwareUpdateAuthenticationViewController *)&v3 viewDidAppear:a3];
  [(SUSUISoftwareUpdateAuthenticationViewController *)v6 _setVisible:1 animated:1 completion:0];
}

- (void)viewDidDisappear:(BOOL)a3
{
  v10 = self;
  v9 = a2;
  v8 = a3;
  oslog = SUSUILogAuthenticationUI();
  type = OS_LOG_TYPE_DEFAULT;
  if (os_log_type_enabled(oslog, OS_LOG_TYPE_DEFAULT))
  {
    if (v8)
    {
      v3 = @"YES";
    }

    else
    {
      v3 = @"NO";
    }

    if (v10->_showingTermsAndConditions)
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
  v5.receiver = v10;
  v5.super_class = SUSUISoftwareUpdateAuthenticationViewController;
  [(SUSUISoftwareUpdateAuthenticationViewController *)&v5 viewDidDisappear:v8];
  [(SUSUISoftwareUpdateAuthenticationViewController *)v10 _sendDeactivationResponseFailureIfNecessary];
}

- (unint64_t)supportedInterfaceOrientations
{
  v5 = +[UIDevice currentDevice];
  v2 = [(UIDevice *)v5 userInterfaceIdiom];
  v3 = 30;
  if (v2 != 1)
  {
    v3 = 2;
  }

  v6 = v3;

  return v6;
}

- (void)passcodeLockViewPasscodeDidChange:(id)a3
{
  v5 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  v3 = [(SUSUISoftwareUpdateAuthenticationViewController *)v5 delegate];
  [(SUSUISoftwareUpdateAuthenticationViewControllerDelegate *)v3 viewControllerWantsIdleTimerReset:v5];

  objc_storeStrong(location, 0);
}

- (void)passcodeLockViewPasscodeEntered:(id)a3
{
  v4 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  [(SUSUISoftwareUpdateAuthenticationViewController *)v4 _passcodeLockViewPasscodeEntered:location[0] viaMesa:0];
  objc_storeStrong(location, 0);
}

- (void)passcodeLockViewPasscodeEnteredViaMesa:(id)a3
{
  v4 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  [(SUSUISoftwareUpdateAuthenticationViewController *)v4 _passcodeLockViewPasscodeEntered:location[0] viaMesa:1];
  objc_storeStrong(location, 0);
}

- (void)passcodeLockViewCancelButtonPressed:(id)a3
{
  v4 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  [(SUSUISoftwareUpdateAuthenticationViewController *)v4 _authenticationCancelled];
  objc_storeStrong(location, 0);
}

- (void)passcodeLockViewEmergencyCallButtonPressed:(id)a3
{
  v15 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
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
  v10 = v15;
  [SUSUIRemoteEmergencyCallViewController requestEmergencyCallControllerWithCompletion:&v5];
  objc_storeStrong(&v10, 0);
  objc_storeStrong(location, 0);
}

- (void)dismissEmergencyCallViewController:(id)a3
{
  v16 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  v9 = _NSConcreteStackBlock;
  v10 = -1073741824;
  v11 = 0;
  v12 = sub_100003958;
  v13 = &unk_1000185A8;
  v14 = v16;
  v3 = _NSConcreteStackBlock;
  v4 = -1073741824;
  v5 = 0;
  v6 = sub_1000039C0;
  v7 = &unk_1000185F8;
  v8 = v16;
  [UIView animateWithDuration:&v9 animations:0.4 completion:?];
  objc_storeStrong(&v8, 0);
  objc_storeStrong(&v14, 0);
  objc_storeStrong(location, 0);
}

- (void)emergencyCallViewController:(id)a3 didExitWithError:(id)a4
{
  v7 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  v5 = 0;
  objc_storeStrong(&v5, a4);
  [(SUSUISoftwareUpdateAuthenticationViewController *)v7 bs_removeChildViewController:v7->_emergencyVC];
  objc_storeStrong(&v7->_emergencyVC, 0);
  objc_storeStrong(&v5, 0);
  objc_storeStrong(location, 0);
}

- (void)_setVisible:(BOOL)a3 animated:(BOOL)a4 completion:(id)a5
{
  v19 = self;
  v18 = a2;
  v17 = a3;
  v16 = a4;
  location = 0;
  objc_storeStrong(&location, a5);
  if (v19->_showingTermsAndConditions)
  {
    if (v17)
    {
      if (location)
      {
        (*(location + 2))(location, 1);
      }
    }

    else
    {
      v5 = v19;
      v6 = _NSConcreteStackBlock;
      v7 = -1073741824;
      v8 = 0;
      v9 = sub_100003D2C;
      v10 = &unk_100018620;
      v11 = v19;
      v13 = v17;
      v14 = v16;
      v12 = location;
      [(SUSUISoftwareUpdateAuthenticationViewController *)v5 _dismissTermsAndConditionsIfNecessaryAnimated:1 withCompletion:&v6];
      objc_storeStrong(&v12, 0);
      objc_storeStrong(&v11, 0);
    }
  }

  else if (v17)
  {
    if ([(SUSUISoftwareUpdateAuthenticationViewController *)v19 _shouldShowPasscodeView])
    {
      [(SUSUIPasscodeEntryView *)v19->_view setPasscodeViewsToVisible:v17 animated:v16 completion:location];
    }

    else
    {
      [(SUSUISoftwareUpdateAuthenticationViewController *)v19 _presentTermsAndConditionsWithCompletion:location];
    }
  }

  else
  {
    [(SUSUIPasscodeEntryView *)v19->_view setPasscodeViewsToVisible:v17 animated:v16 completion:location];
    [(SUSUISoftwareUpdateAuthenticationViewController *)v19 _dismissTermsAndConditionsIfNecessaryAnimated:0 withCompletion:0];
  }

  objc_storeStrong(&location, 0);
}

- (void)_attemptUnlock:(id)a3 passcode:(id)a4
{
  v11 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  v9 = 0;
  objc_storeStrong(&v9, a4);
  v8 = [v9 length] != 0;
  v7 = +[SUSUIAuthenticationInterface sharedInstance];
  v6 = 0;
  v5 = [v7 attemptAuthentication:v9 outBlocked:&v6];
  if (v6)
  {
    [location[0] reset];
    [(SUSUISoftwareUpdateAuthenticationViewController *)v11 _dismissAndSendCompletionResponse:0];
  }

  else if (v5)
  {
    [location[0] reset];
    [(SUSUISoftwareUpdateAuthenticationViewController *)v11 _authenticationSuccess:v9 fromMesa:!v8];
  }

  else
  {
    [location[0] resetForFailedPasscode];
    [(SUSUISoftwareUpdateAuthenticationViewController *)v11 _authenticationFailure:v9 fromMesa:!v8];
  }

  v11->_attemptingUnlock = 0;
  objc_storeStrong(&v7, 0);
  objc_storeStrong(&v9, 0);
  objc_storeStrong(location, 0);
}

- (void)_passcodeLockViewPasscodeEntered:(id)a3 viaMesa:(BOOL)a4
{
  v21 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  v19 = a4;
  if (v21->_attemptingUnlock)
  {
    v18 = 1;
  }

  else
  {
    v21->_attemptingUnlock = 1;
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
    v15 = v19;
    v13 = location[0];
    v14 = v21;
    dispatch_after(when, queue, &v8);

    objc_storeStrong(&v14, 0);
    objc_storeStrong(&v13, 0);
    v18 = 0;
  }

  objc_storeStrong(location, 0);
}

- (void)_authenticationFailure:(id)a3 fromMesa:(BOOL)a4
{
  location[2] = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  v10 = a4;
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

- (void)_authenticationSuccess:(id)a3 fromMesa:(BOOL)a4
{
  v14 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  v12 = a4;
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
  passcode = v14->_passcode;
  v14->_passcode = v4;

  [(SUSUISoftwareUpdateAuthenticationViewController *)v14 _presentTermsAndConditionsWithCompletion:0];
  objc_storeStrong(location, 0);
}

- (BOOL)_shouldShowPasscodeView
{
  v3 = +[SUKeybagInterface sharedInstance];
  v4 = [(SUKeybagInterface *)v3 hasPasscodeSet];

  return v4;
}

- (void)_presentTermsAndConditionsWithCompletion:(id)a3
{
  v20 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  if (v20->_showingTermsAndConditions)
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
    termsAndConditionsController = v20->_termsAndConditionsController;
    v20->_termsAndConditionsController = v3;

    v8 = [(UIViewController *)v20->_termsAndConditionsController view];
    [(UIView *)v8 setAlpha:0.0];

    [(UIViewController *)v20->_termsAndConditionsController setModalPresentationStyle:0];
    v20->_showingTermsAndConditions = 1;
    v9 = +[UIDevice currentDevice];
    v10 = [(UIDevice *)v9 userInterfaceIdiom];

    if (v10 != 1)
    {
      v7 = [(SUSUISoftwareUpdateAuthenticationViewController *)v20 delegate];
      [(SUSUISoftwareUpdateAuthenticationViewControllerDelegate *)v7 viewController:v20 wantsStatusBarHidden:1 withDuration:0.4];
    }

    v6 = v20;
    v5 = v20->_termsAndConditionsController;
    v11 = _NSConcreteStackBlock;
    v12 = -1073741824;
    v13 = 0;
    v14 = sub_10000470C;
    v15 = &unk_100018698;
    v16 = v20;
    v17 = location[0];
    [(SUSUISoftwareUpdateAuthenticationViewController *)v6 presentViewController:v5 animated:0 completion:&v11];
    objc_storeStrong(&v17, 0);
    objc_storeStrong(&v16, 0);
    v18 = 0;
  }

  objc_storeStrong(location, 0);
}

- (void)_dismissTermsAndConditionsIfNecessaryAnimated:(BOOL)a3 withCompletion:(id)a4
{
  v10 = self;
  v9 = a2;
  v8 = a3;
  location = 0;
  objc_storeStrong(&location, a4);
  if (v10->_showingTermsAndConditions)
  {
    v10->_showingTermsAndConditions = 0;
    v5 = +[UIDevice currentDevice];
    v6 = [(UIDevice *)v5 userInterfaceIdiom];

    if (v6 != 1)
    {
      v4 = [(SUSUISoftwareUpdateAuthenticationViewController *)v10 delegate];
      [(SUSUISoftwareUpdateAuthenticationViewControllerDelegate *)v4 viewController:v10 wantsStatusBarHidden:0 withDuration:0.4];
    }

    [(UIViewController *)v10->_termsAndConditionsController dismissViewControllerAnimated:v8 completion:location];
  }

  else if (location)
  {
    (*(location + 2))();
  }

  objc_storeStrong(&location, 0);
}

- (void)_dismissAndSendCompletionResponse:(BOOL)a3
{
  v29 = self;
  v28 = a2;
  v27 = a3;
  if (!self->_responseSent)
  {
    v29->_responseSent = 1;
    location = SUSUILogAuthenticationUI();
    v25 = OS_LOG_TYPE_DEBUG;
    if (os_log_type_enabled(location, OS_LOG_TYPE_DEBUG))
    {
      if (v27)
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
    v24 = v27;
    if (v27)
    {
      if (v29->_createInstallationKeybag)
      {
        v13 = +[SUKeybagInterface sharedInstance];
        v14 = [(SUKeybagInterface *)v13 hasPasscodeSet];

        v23 = v14;
        if (v14)
        {
          v24 = [(SUSUISoftwareUpdateAuthenticationViewController *)v29 _createKeybagForPasscode:v29->_passcode forInstallTonight:v29->_forInstallTonight];
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

      v9 = [(SUSUISoftwareUpdateAuthenticationViewController *)v29 delegate];
      [(SUSUISoftwareUpdateAuthenticationViewControllerDelegate *)v9 viewControllerAuthenticatedWithResult:v24 & 1];

      v10 = [(SUSUISoftwareUpdateAuthenticationViewController *)v29 delegate];
      [(SUSUISoftwareUpdateAuthenticationViewControllerDelegate *)v10 viewControllerWantsDismissal:v29];
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
      v7 = [(SUSUISoftwareUpdateAuthenticationViewController *)v29 delegate];
      [(SUSUISoftwareUpdateAuthenticationViewControllerDelegate *)v7 viewControllerAuthenticatedWithResult:v24 & 1];

      v8 = [(SUSUISoftwareUpdateAuthenticationViewController *)v29 delegate];
      [(SUSUISoftwareUpdateAuthenticationViewControllerDelegate *)v8 viewControllerWantsDismissal:v29];
    }

    [(SUManagerClient *)v29->_suManagerClient invalidate];
    objc_storeStrong(&v29->_suManagerClient, 0);
  }
}

- (BOOL)_createKeybagForPasscode:(id)a3 forInstallTonight:(BOOL)a4
{
  v24 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  v22 = a4;
  objc_initWeak(&v21, v24->_suManagerClient);
  v16 = 0;
  v17 = &v16;
  v18 = 0x20000000;
  v19 = 32;
  v20 = 0;
  queue = v24->_clientQueue;
  v8 = _NSConcreteStackBlock;
  v9 = -1073741824;
  v10 = 0;
  v11 = sub_1000052DC;
  v12 = &unk_1000186C0;
  v13 = v24;
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

- (void)_dismissSelf:(BOOL)a3
{
  v17 = self;
  v16 = a2;
  v15 = a3;
  location = SUSUILogAuthenticationUI();
  v13 = OS_LOG_TYPE_DEFAULT;
  if (os_log_type_enabled(location, OS_LOG_TYPE_DEFAULT))
  {
    if (v15)
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
  v17->_doneWithPinController = 1;
  objc_initWeak(&from, v17);
  v4 = v17;
  v5 = _NSConcreteStackBlock;
  v6 = -1073741824;
  v7 = 0;
  v8 = sub_100005740;
  v9 = &unk_1000186E8;
  objc_copyWeak(&v10, &from);
  v11 = v15;
  [(SUSUISoftwareUpdateAuthenticationViewController *)v4 _setVisible:0 animated:1 completion:&v5];
  objc_destroyWeak(&v10);
  objc_destroyWeak(&from);
}

- (void)_setChildViewController:(id)a3
{
  v13 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  v7 = [(SUSUISoftwareUpdateAuthenticationViewController *)v13 view];
  [v7 bounds];
  *&v10 = v3;
  *(&v10 + 1) = v4;
  *&v11 = v5;
  *(&v11 + 1) = v6;

  v9 = [location[0] view];
  [v9 setFrame:{v10, v11}];
  [v9 setAutoresizingMask:18];
  [location[0] willMoveToParentViewController:v13];
  v8 = [(SUSUISoftwareUpdateAuthenticationViewController *)v13 view];
  [v8 addSubview:v9];

  [(SUSUISoftwareUpdateAuthenticationViewController *)v13 addChildViewController:location[0]];
  [location[0] didMoveToParentViewController:v13];
  objc_storeStrong(&v9, 0);
  objc_storeStrong(location, 0);
}

- (SUSUISoftwareUpdateAuthenticationViewControllerDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end