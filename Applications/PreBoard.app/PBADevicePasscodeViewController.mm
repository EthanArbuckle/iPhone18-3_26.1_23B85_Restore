@interface PBADevicePasscodeViewController
- (PBADevicePasscodeViewController)initWithContainingStackViewController:(id)a3 authenticationPolicy:(id)a4;
- (id)lockScreenActionTitleWithHomeButton:(BOOL)a3;
- (id)makeAuthenticationRequestWithPasscode:(id)a3;
- (void)_authenticateWithEmptyPasscode;
- (void)_configurePasscodeEntryViewController:(id)a3;
- (void)_evaluateDeviceBlockState;
- (void)_handleBlockedDevice;
- (void)_handleEdgeSwipe:(id)a3;
- (void)_handleUnblockedDevice;
- (void)_pushPasscodeEntryViewIfNeeded;
- (void)_resetStateAfterHandlingAuthenticationResult;
- (void)failedAuthHandler:(id)a3 error:(id)a4;
- (void)handlePasscodeEntryCancelledForViewController:(id)a3;
- (void)handlePasscodeEntrySuccessful:(id)a3;
- (void)handlePasscodeLockStatusChangeNotification:(id)a3;
- (void)invalidAuthHandler:(id)a3;
- (void)passcodeEntryViewControllerEntryCompleted:(id)a3 passcode:(id)a4;
- (void)registerForUnlockNotification;
- (void)viewDidLoad;
@end

@implementation PBADevicePasscodeViewController

- (PBADevicePasscodeViewController)initWithContainingStackViewController:(id)a3 authenticationPolicy:(id)a4
{
  v7 = a3;
  v8 = a4;
  v18.receiver = self;
  v18.super_class = PBADevicePasscodeViewController;
  v9 = [(PBADevicePasscodeViewController *)&v18 initWithNibName:0 bundle:0];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_stackViewController, a3);
    v11 = objc_alloc_init(SBFAuthenticationAssertionManager);
    assertionManager = v10->_assertionManager;
    v10->_assertionManager = v11;

    objc_storeStrong(&v10->_authenticationPolicy, a4);
    v13 = [[SBFUserAuthenticationController alloc] initWithAssertionManager:v10->_assertionManager policy:v10->_authenticationPolicy];
    authenticationController = v10->_authenticationController;
    v10->_authenticationController = v13;

    v15 = [[SBFDeviceLockOutController alloc] initWithThermalController:0 authenticationController:v10->_authenticationController];
    deviceLockController = v10->_deviceLockController;
    v10->_deviceLockController = v15;

    [(SBFUserAuthenticationController *)v10->_authenticationController revokeAuthenticationImmediatelyIfNecessaryForPublicReason:@"PreBoard"];
    v10->_attemptingUnlock = 0;
  }

  return v10;
}

- (void)viewDidLoad
{
  v24.receiver = self;
  v24.super_class = PBADevicePasscodeViewController;
  [(PBADevicePasscodeViewController *)&v24 viewDidLoad];
  v3 = SBFEffectiveHomeButtonType();
  v4 = [PBASimpleLockScreenView alloc];
  v5 = [(PBADevicePasscodeViewController *)self view];
  [v5 bounds];
  v6 = [(PBASimpleLockScreenView *)v4 initWithFrame:?];
  newLockScreenView = self->_newLockScreenView;
  self->_newLockScreenView = v6;

  [(PBASimpleLockScreenView *)self->_newLockScreenView setAutoresizingMask:18];
  v8 = self->_newLockScreenView;
  v9 = [(PBADevicePasscodeViewController *)self lockScreenIconSystemName];
  [(PBASimpleLockScreenView *)v8 setIconSystemName:v9];

  v10 = self->_newLockScreenView;
  v11 = [(PBADevicePasscodeViewController *)self lockScreenTitle];
  [(PBASimpleLockScreenView *)v10 setTitle:v11];

  v12 = self->_newLockScreenView;
  v13 = [(PBADevicePasscodeViewController *)self lockScreenMessage];
  [(PBASimpleLockScreenView *)v12 setMessage:v13];

  v14 = self->_newLockScreenView;
  v15 = [(PBADevicePasscodeViewController *)self lockScreenStackItems];
  [(PBASimpleLockScreenView *)v14 setStackItems:v15];

  v16 = self->_newLockScreenView;
  v17 = [(PBADevicePasscodeViewController *)self lockScreenActionTitleWithHomeButton:v3 != 2];
  [(PBASimpleLockScreenView *)v16 setPressToOpenText:v17];

  v18 = [(PBADevicePasscodeViewController *)self view];
  [v18 addSubview:self->_newLockScreenView];

  v19 = [[UITapGestureRecognizer alloc] initWithTarget:self action:"_homeButtonPressed:"];
  [v19 setAllowedTouchTypes:&__NSArray0__struct];
  [v19 setAllowedPressTypes:&off_10001D5A8];
  [v19 setNumberOfTapsRequired:1];
  [v19 setCancelsTouchesInView:0];
  v20 = [(PBADevicePasscodeViewController *)self view];
  [v20 addGestureRecognizer:v19];

  if (v3 == 2)
  {
    v21 = [[UIScreenEdgePanGestureRecognizer alloc] initWithTarget:self action:"_handleEdgeSwipe:" type:5 options:0];
    [v21 setEdges:4];
    v22 = [(PBADevicePasscodeViewController *)self view];
    [v22 addGestureRecognizer:v21];
  }

  [(PBADevicePasscodeViewController *)self registerForUnlockNotification];
  if ([(SBFLockOutStatusProvider *)self->_deviceLockController isBlocked])
  {
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_100008D48;
    block[3] = &unk_10001C628;
    block[4] = self;
    dispatch_async(&_dispatch_main_q, block);
  }
}

- (void)handlePasscodeEntrySuccessful:(id)a3
{
  v4 = a3;
  v5 = [[PBAAppleLogoViewController alloc] initWithNibName:0 bundle:0];
  [(PBAStackViewController *)self->_stackViewController pushViewController:v5 animated:1 completion:v4];
}

- (void)registerForUnlockNotification
{
  v3 = +[NSNotificationCenter defaultCenter];
  [v3 addObserver:self selector:"handlePasscodeLockStatusChangeNotification:" name:SBFUserAuthenticationStateDidChangeNotification object:0];
}

- (void)handlePasscodeLockStatusChangeNotification:(id)a3
{
  v4 = a3;
  v5 = v4;
  if (!self->_attemptingUnlock)
  {
    v6 = v4;
    v4 = [(SBFUserAuthenticationController *)self->_authenticationController isAuthenticated];
    v5 = v6;
    if (v4)
    {
      v4 = [(PBADevicePasscodeViewController *)self handlePasscodeEntrySuccessful:&stru_10001C998];
      v5 = v6;
    }
  }

  _objc_release_x1(v4, v5);
}

- (void)_handleBlockedDevice
{
  if (!self->_blockOverlayController)
  {
    v3 = [[PBADeviceBlockOverlayViewController alloc] initWithBlockStatusProvider:self->_deviceLockController];
    [(PBADeviceBlockOverlayViewController *)v3 setDelegate:self];
    [(PBADeviceBlockOverlayViewController *)v3 setModalPresentationStyle:0];
    [(PBADeviceBlockOverlayViewController *)v3 setModalTransitionStyle:2];
    blockOverlayController = self->_blockOverlayController;
    self->_blockOverlayController = v3;
    v5 = v3;

    [(PBAStackViewController *)self->_stackViewController pushViewController:self->_blockOverlayController animated:1 completion:0];
  }
}

- (void)_handleUnblockedDevice
{
  blockOverlayController = self->_blockOverlayController;
  if (blockOverlayController)
  {
    [(PBAStackViewController *)self->_stackViewController removeViewController:blockOverlayController animated:1];
    [(PBADevicePasscodeViewController *)self _configurePasscodeEntryViewController:self->_passcodeEntryViewController];
    v4 = self->_blockOverlayController;
    self->_blockOverlayController = 0;
  }
}

- (void)_evaluateDeviceBlockState
{
  if ([(SBFLockOutStatusProvider *)self->_deviceLockController isBlocked])
  {

    [(PBADevicePasscodeViewController *)self _handleBlockedDevice];
  }

  else
  {

    [(PBADevicePasscodeViewController *)self _handleUnblockedDevice];
  }
}

- (void)_handleEdgeSwipe:(id)a3
{
  if ([a3 state] == 3)
  {

    [(PBADevicePasscodeViewController *)self _pushPasscodeEntryViewIfNeeded];
  }
}

- (void)_pushPasscodeEntryViewIfNeeded
{
  objc_initWeak(&location, self);
  v3[0] = _NSConcreteStackBlock;
  v3[1] = 3221225472;
  v3[2] = sub_10000925C;
  v3[3] = &unk_10001C9C0;
  objc_copyWeak(&v4, &location);
  [(PBADevicePasscodeViewController *)self confirmTransitionToPasscodeWithCompletion:v3];
  objc_destroyWeak(&v4);
  objc_destroyWeak(&location);
}

- (void)passcodeEntryViewControllerEntryCompleted:(id)a3 passcode:(id)a4
{
  v6 = a3;
  authenticationController = self->_authenticationController;
  v8 = a4;
  v9 = [(SBFUserAuthenticationController *)authenticationController createGracePeriodAssertionWithReason:@"com.apple.PreBoard.UnlockAttempt"];
  transientAssertion = self->_transientAssertion;
  self->_transientAssertion = v9;

  [(SBFAuthenticationAssertion *)self->_transientAssertion activate];
  v11 = [[NSString alloc] initWithData:v8 encoding:4];

  v12 = [(PBADevicePasscodeViewController *)self makeAuthenticationRequestWithPasscode:v11];
  self->_attemptingUnlock = 1;
  v13 = self->_authenticationController;
  v23[0] = _NSConcreteStackBlock;
  v23[1] = 3221225472;
  v23[2] = sub_1000095B0;
  v23[3] = &unk_10001C9E8;
  v23[4] = self;
  v24 = v12;
  v25 = v6;
  v20[0] = _NSConcreteStackBlock;
  v20[1] = 3221225472;
  v20[2] = sub_1000095FC;
  v20[3] = &unk_10001C8A8;
  v20[4] = self;
  v21 = v24;
  v22 = v25;
  v17[0] = _NSConcreteStackBlock;
  v17[1] = 3221225472;
  v17[2] = sub_10000964C;
  v17[3] = &unk_10001C9E8;
  v17[4] = self;
  v18 = v21;
  v19 = v22;
  v14 = v22;
  v15 = v21;
  v16 = [SBFUserAuthenticationResponder responderWithSuccessHandler:v23 failureHandler:v20 invalidHandler:v17];
  [(SBFUserAuthenticationController *)v13 processAuthenticationRequest:v15 responder:v16];
}

- (void)_authenticateWithEmptyPasscode
{
  v3 = [(PBADevicePasscodeViewController *)self makeAuthenticationRequestWithPasscode:&stru_10001CDA8];
  [(PBADevicePasscodeViewController *)self successfulAuthHandler:v3];
}

- (void)_configurePasscodeEntryViewController:(id)a3
{
  v6 = a3;
  v4 = [(PBADevicePasscodeViewController *)self passcodeEntryScreenTitle];
  v5 = [(PBADevicePasscodeViewController *)self passcodeEntryScreenSubtitle];
  if (v4 | v5)
  {
    [v6 setTitleText:v4 subtitleText:v5 animated:0];
  }
}

- (void)_resetStateAfterHandlingAuthenticationResult
{
  self->_attemptingUnlock = 0;
  [(SBFAuthenticationAssertion *)self->_transientAssertion invalidate];
  transientAssertion = self->_transientAssertion;
  self->_transientAssertion = 0;
}

- (void)handlePasscodeEntryCancelledForViewController:(id)a3
{
  passcodeEntryViewController = self->_passcodeEntryViewController;
  self->_passcodeEntryViewController = 0;
  v5 = a3;

  [(PBAStackViewController *)self->_stackViewController removeViewController:v5 animated:1];
}

- (id)makeAuthenticationRequestWithPasscode:(id)a3
{
  v3 = a3;
  v4 = [[SBFAuthenticationRequest alloc] initForPasscode:v3 source:0 skipSEKeepUserDataOperation:1 handler:0];

  return v4;
}

- (void)failedAuthHandler:(id)a3 error:(id)a4
{
  v5 = sub_10000A054();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *v6 = 0;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "PreBoard result", v6, 2u);
  }

  if ([(SBFLockOutStatusProvider *)self->_deviceLockController isBlocked])
  {
    [(PBADevicePasscodeViewController *)self _handleBlockedDevice];
  }
}

- (void)invalidAuthHandler:(id)a3
{
  v4 = sub_10000A054();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    *v5 = 0;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "PreBoard result", v5, 2u);
  }

  if ([(SBFLockOutStatusProvider *)self->_deviceLockController isBlocked])
  {
    [(PBADevicePasscodeViewController *)self _handleBlockedDevice];
  }
}

- (id)lockScreenActionTitleWithHomeButton:(BOOL)a3
{
  v3 = a3;
  v4 = +[NSBundle mainBundle];
  v5 = v4;
  if (v3)
  {
    v6 = @"PREBOARD_PRESS_FOR_UPGRADE";
  }

  else
  {
    v6 = @"PREBOARD_SWIPE_FOR_UPGRADE";
  }

  v7 = [v4 localizedStringForKey:v6 value:&stru_10001CDA8 table:@"PreBoard"];

  return v7;
}

@end