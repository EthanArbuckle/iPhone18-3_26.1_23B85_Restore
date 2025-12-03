@interface PBADevicePasscodeViewController
- (PBADevicePasscodeViewController)initWithContainingStackViewController:(id)controller authenticationPolicy:(id)policy;
- (id)lockScreenActionTitleWithHomeButton:(BOOL)button;
- (id)makeAuthenticationRequestWithPasscode:(id)passcode;
- (void)_authenticateWithEmptyPasscode;
- (void)_configurePasscodeEntryViewController:(id)controller;
- (void)_evaluateDeviceBlockState;
- (void)_handleBlockedDevice;
- (void)_handleEdgeSwipe:(id)swipe;
- (void)_handleUnblockedDevice;
- (void)_pushPasscodeEntryViewIfNeeded;
- (void)_resetStateAfterHandlingAuthenticationResult;
- (void)failedAuthHandler:(id)handler error:(id)error;
- (void)handlePasscodeEntryCancelledForViewController:(id)controller;
- (void)handlePasscodeEntrySuccessful:(id)successful;
- (void)handlePasscodeLockStatusChangeNotification:(id)notification;
- (void)invalidAuthHandler:(id)handler;
- (void)passcodeEntryViewControllerEntryCompleted:(id)completed passcode:(id)passcode;
- (void)registerForUnlockNotification;
- (void)viewDidLoad;
@end

@implementation PBADevicePasscodeViewController

- (PBADevicePasscodeViewController)initWithContainingStackViewController:(id)controller authenticationPolicy:(id)policy
{
  controllerCopy = controller;
  policyCopy = policy;
  v18.receiver = self;
  v18.super_class = PBADevicePasscodeViewController;
  v9 = [(PBADevicePasscodeViewController *)&v18 initWithNibName:0 bundle:0];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_stackViewController, controller);
    v11 = objc_alloc_init(SBFAuthenticationAssertionManager);
    assertionManager = v10->_assertionManager;
    v10->_assertionManager = v11;

    objc_storeStrong(&v10->_authenticationPolicy, policy);
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
  view = [(PBADevicePasscodeViewController *)self view];
  [view bounds];
  v6 = [(PBASimpleLockScreenView *)v4 initWithFrame:?];
  newLockScreenView = self->_newLockScreenView;
  self->_newLockScreenView = v6;

  [(PBASimpleLockScreenView *)self->_newLockScreenView setAutoresizingMask:18];
  v8 = self->_newLockScreenView;
  lockScreenIconSystemName = [(PBADevicePasscodeViewController *)self lockScreenIconSystemName];
  [(PBASimpleLockScreenView *)v8 setIconSystemName:lockScreenIconSystemName];

  v10 = self->_newLockScreenView;
  lockScreenTitle = [(PBADevicePasscodeViewController *)self lockScreenTitle];
  [(PBASimpleLockScreenView *)v10 setTitle:lockScreenTitle];

  v12 = self->_newLockScreenView;
  lockScreenMessage = [(PBADevicePasscodeViewController *)self lockScreenMessage];
  [(PBASimpleLockScreenView *)v12 setMessage:lockScreenMessage];

  v14 = self->_newLockScreenView;
  lockScreenStackItems = [(PBADevicePasscodeViewController *)self lockScreenStackItems];
  [(PBASimpleLockScreenView *)v14 setStackItems:lockScreenStackItems];

  v16 = self->_newLockScreenView;
  v17 = [(PBADevicePasscodeViewController *)self lockScreenActionTitleWithHomeButton:v3 != 2];
  [(PBASimpleLockScreenView *)v16 setPressToOpenText:v17];

  view2 = [(PBADevicePasscodeViewController *)self view];
  [view2 addSubview:self->_newLockScreenView];

  v19 = [[UITapGestureRecognizer alloc] initWithTarget:self action:"_homeButtonPressed:"];
  [v19 setAllowedTouchTypes:&__NSArray0__struct];
  [v19 setAllowedPressTypes:&off_10001D5A8];
  [v19 setNumberOfTapsRequired:1];
  [v19 setCancelsTouchesInView:0];
  view3 = [(PBADevicePasscodeViewController *)self view];
  [view3 addGestureRecognizer:v19];

  if (v3 == 2)
  {
    v21 = [[UIScreenEdgePanGestureRecognizer alloc] initWithTarget:self action:"_handleEdgeSwipe:" type:5 options:0];
    [v21 setEdges:4];
    view4 = [(PBADevicePasscodeViewController *)self view];
    [view4 addGestureRecognizer:v21];
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

- (void)handlePasscodeEntrySuccessful:(id)successful
{
  successfulCopy = successful;
  v5 = [[PBAAppleLogoViewController alloc] initWithNibName:0 bundle:0];
  [(PBAStackViewController *)self->_stackViewController pushViewController:v5 animated:1 completion:successfulCopy];
}

- (void)registerForUnlockNotification
{
  v3 = +[NSNotificationCenter defaultCenter];
  [v3 addObserver:self selector:"handlePasscodeLockStatusChangeNotification:" name:SBFUserAuthenticationStateDidChangeNotification object:0];
}

- (void)handlePasscodeLockStatusChangeNotification:(id)notification
{
  notificationCopy = notification;
  v5 = notificationCopy;
  if (!self->_attemptingUnlock)
  {
    v6 = notificationCopy;
    notificationCopy = [(SBFUserAuthenticationController *)self->_authenticationController isAuthenticated];
    v5 = v6;
    if (notificationCopy)
    {
      notificationCopy = [(PBADevicePasscodeViewController *)self handlePasscodeEntrySuccessful:&stru_10001C998];
      v5 = v6;
    }
  }

  _objc_release_x1(notificationCopy, v5);
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

- (void)_handleEdgeSwipe:(id)swipe
{
  if ([swipe state] == 3)
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

- (void)passcodeEntryViewControllerEntryCompleted:(id)completed passcode:(id)passcode
{
  completedCopy = completed;
  authenticationController = self->_authenticationController;
  passcodeCopy = passcode;
  v9 = [(SBFUserAuthenticationController *)authenticationController createGracePeriodAssertionWithReason:@"com.apple.PreBoard.UnlockAttempt"];
  transientAssertion = self->_transientAssertion;
  self->_transientAssertion = v9;

  [(SBFAuthenticationAssertion *)self->_transientAssertion activate];
  v11 = [[NSString alloc] initWithData:passcodeCopy encoding:4];

  v12 = [(PBADevicePasscodeViewController *)self makeAuthenticationRequestWithPasscode:v11];
  self->_attemptingUnlock = 1;
  v13 = self->_authenticationController;
  v23[0] = _NSConcreteStackBlock;
  v23[1] = 3221225472;
  v23[2] = sub_1000095B0;
  v23[3] = &unk_10001C9E8;
  v23[4] = self;
  v24 = v12;
  v25 = completedCopy;
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

- (void)_configurePasscodeEntryViewController:(id)controller
{
  controllerCopy = controller;
  passcodeEntryScreenTitle = [(PBADevicePasscodeViewController *)self passcodeEntryScreenTitle];
  passcodeEntryScreenSubtitle = [(PBADevicePasscodeViewController *)self passcodeEntryScreenSubtitle];
  if (passcodeEntryScreenTitle | passcodeEntryScreenSubtitle)
  {
    [controllerCopy setTitleText:passcodeEntryScreenTitle subtitleText:passcodeEntryScreenSubtitle animated:0];
  }
}

- (void)_resetStateAfterHandlingAuthenticationResult
{
  self->_attemptingUnlock = 0;
  [(SBFAuthenticationAssertion *)self->_transientAssertion invalidate];
  transientAssertion = self->_transientAssertion;
  self->_transientAssertion = 0;
}

- (void)handlePasscodeEntryCancelledForViewController:(id)controller
{
  passcodeEntryViewController = self->_passcodeEntryViewController;
  self->_passcodeEntryViewController = 0;
  controllerCopy = controller;

  [(PBAStackViewController *)self->_stackViewController removeViewController:controllerCopy animated:1];
}

- (id)makeAuthenticationRequestWithPasscode:(id)passcode
{
  passcodeCopy = passcode;
  v4 = [[SBFAuthenticationRequest alloc] initForPasscode:passcodeCopy source:0 skipSEKeepUserDataOperation:1 handler:0];

  return v4;
}

- (void)failedAuthHandler:(id)handler error:(id)error
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

- (void)invalidAuthHandler:(id)handler
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

- (id)lockScreenActionTitleWithHomeButton:(BOOL)button
{
  buttonCopy = button;
  v4 = +[NSBundle mainBundle];
  v5 = v4;
  if (buttonCopy)
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