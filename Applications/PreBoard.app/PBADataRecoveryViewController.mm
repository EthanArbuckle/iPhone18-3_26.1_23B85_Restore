@interface PBADataRecoveryViewController
- (PBADataRecoveryViewController)initWithContainingStackViewController:(id)a3;
- (id)_localizedRecoveryStringForHomeButtonType:(int64_t)a3;
- (void)_beginRecovery:(id)a3 fromViewController:(id)a4;
- (void)_evaluateDeviceBlockState;
- (void)_handleBlockedDevice;
- (void)_handleEdgeSwipe:(id)a3;
- (void)_handleUnblockedDevice;
- (void)_pushPasscodeView;
- (void)didReceiveMemoryWarning;
- (void)loadView;
- (void)passcodeEntryViewControllerCancelButtonPressed:(id)a3;
- (void)passcodeEntryViewControllerEntryCompleted:(id)a3 passcode:(id)a4;
- (void)viewDidLoad;
@end

@implementation PBADataRecoveryViewController

- (PBADataRecoveryViewController)initWithContainingStackViewController:(id)a3
{
  v5 = a3;
  v20.receiver = self;
  v20.super_class = PBADataRecoveryViewController;
  v6 = [(PBADataRecoveryViewController *)&v20 initWithNibName:0 bundle:0];
  v7 = v6;
  if (v6)
  {
    firstPasscode = v6->_firstPasscode;
    v6->_firstPasscode = 0;

    objc_storeStrong(&v7->_stackViewController, a3);
    v9 = +[PBAIdleSleepController sharedController];
    idleSleepController = v7->_idleSleepController;
    v7->_idleSleepController = v9;

    v11 = objc_alloc_init(SBFAuthenticationAssertionManager);
    assertionManager = v7->_assertionManager;
    v7->_assertionManager = v11;

    v13 = objc_alloc_init(PBAAuthenticationPolicy);
    authenticationPolicy = v7->_authenticationPolicy;
    v7->_authenticationPolicy = v13;

    v15 = [[SBFUserAuthenticationController alloc] initWithAssertionManager:v7->_assertionManager policy:v7->_authenticationPolicy];
    authenticationController = v7->_authenticationController;
    v7->_authenticationController = v15;

    v17 = [[SBFDeviceLockOutController alloc] initWithThermalController:0 authenticationController:v7->_authenticationController];
    deviceLockOutController = v7->_deviceLockOutController;
    v7->_deviceLockOutController = v17;
  }

  return v7;
}

- (void)loadView
{
  v3 = [[PBASimpleLockScreenView alloc] initWithFrame:CGRectZero.origin.x, CGRectZero.origin.y, CGRectZero.size.width, CGRectZero.size.height];
  [(PBADataRecoveryViewController *)self setView:v3];
}

- (void)viewDidLoad
{
  v8.receiver = self;
  v8.super_class = PBADataRecoveryViewController;
  [(PBADataRecoveryViewController *)&v8 viewDidLoad];
  v3 = SBFEffectiveHomeButtonType();
  v4 = [(PBADataRecoveryViewController *)self view];
  [v4 setAutoresizingMask:18];
  v5 = [(PBADataRecoveryViewController *)self _localizedRecoveryStringForHomeButtonType:v3];
  [v4 setPressToOpenText:v5];

  v6 = [[UITapGestureRecognizer alloc] initWithTarget:self action:"_homeButtonPressed:"];
  [v6 setAllowedTouchTypes:&__NSArray0__struct];
  [v6 setAllowedPressTypes:&off_10001D590];
  [v6 setNumberOfTapsRequired:1];
  [v6 setCancelsTouchesInView:0];
  [v4 addGestureRecognizer:v6];
  if (v3 == 2)
  {
    v7 = [[UIScreenEdgePanGestureRecognizer alloc] initWithTarget:self action:"_handleEdgeSwipe:" type:5 options:0];
    [v7 setEdges:4];
    [v4 addGestureRecognizer:v7];
  }

  [(PBADataRecoveryViewController *)self _evaluateDeviceBlockState];
}

- (void)didReceiveMemoryWarning
{
  v2.receiver = self;
  v2.super_class = PBADataRecoveryViewController;
  [(PBADataRecoveryViewController *)&v2 didReceiveMemoryWarning];
}

- (id)_localizedRecoveryStringForHomeButtonType:(int64_t)a3
{
  v4 = +[NSBundle mainBundle];
  v5 = v4;
  if (a3 == 2)
  {
    v6 = @"PREBOARD_SWIPE_FOR_RECOVERY";
  }

  else
  {
    v6 = @"PREBOARD_PRESS_FOR_RECOVERY";
  }

  v7 = [v4 localizedStringForKey:v6 value:&stru_10001CDA8 table:@"PreBoard"];

  return v7;
}

- (void)_handleEdgeSwipe:(id)a3
{
  if ([a3 state] == 3)
  {

    [(PBADataRecoveryViewController *)self _pushPasscodeView];
  }
}

- (void)_pushPasscodeView
{
  v5 = [[PBAPasscodeEntryViewController alloc] initWithNibName:0 bundle:0];
  [(PBAPasscodeEntryViewController *)v5 setDelegate:self];
  v3 = +[NSBundle mainBundle];
  v4 = [v3 localizedStringForKey:@"PREBOARD_RECOVERY_ENTER_PASSCODE" value:&stru_10001CDA8 table:@"PreBoard"];
  [(PBAPasscodeEntryViewController *)v5 setTitleText:v4 subtitleText:0 animated:0];

  [(PBAStackViewController *)self->_stackViewController pushViewController:v5 animated:1 completion:0];
}

- (void)_beginRecovery:(id)a3 fromViewController:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [[PBADataRecoveryProgressViewController alloc] initWithNibName:0 bundle:0];
  v9 = +[NSBundle mainBundle];
  v10 = [v9 localizedStringForKey:@"PREBOARD_RECOVERY_IN_PROGRESS" value:&stru_10001CDA8 table:@"PreBoard"];
  [(PBADataRecoveryProgressViewController *)v8 setStatusText:v10];

  dataRecoveryEngine = self->_dataRecoveryEngine;
  v21[0] = _NSConcreteStackBlock;
  v21[1] = 3221225472;
  v21[2] = sub_1000070A0;
  v21[3] = &unk_10001C830;
  v22 = v8;
  v14 = _NSConcreteStackBlock;
  v15 = 3221225472;
  v16 = sub_100007148;
  v17 = &unk_10001C8A8;
  v18 = self;
  v19 = v6;
  v20 = v22;
  v12 = v22;
  v13 = v6;
  [(PBADataRecoveryEngine *)dataRecoveryEngine performDataRecoveryWithPasscode:v13 progressHandler:v21 completion:&v14];
  [(PBAStackViewController *)self->_stackViewController replaceViewController:v7 withViewController:v12 animated:1, v14, v15, v16, v17, v18];
}

- (void)_handleBlockedDevice
{
  if (!self->_blockOverlayController)
  {
    v3 = [[PBADeviceBlockOverlayViewController alloc] initWithBlockStatusProvider:self->_deviceLockOutController];
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
    v4 = self->_blockOverlayController;
    self->_blockOverlayController = 0;
  }
}

- (void)_evaluateDeviceBlockState
{
  [(SBFUserAuthenticationController *)self->_authenticationController _noteDeviceLockStateMayHaveChangedForExternalReasons];
  if ([(SBFDeviceLockOutController *)self->_deviceLockOutController isBlocked])
  {

    [(PBADataRecoveryViewController *)self _handleBlockedDevice];
  }

  else
  {

    [(PBADataRecoveryViewController *)self _handleUnblockedDevice];
  }
}

- (void)passcodeEntryViewControllerEntryCompleted:(id)a3 passcode:(id)a4
{
  v21 = a3;
  v6 = a4;
  v7 = v6;
  if (self->_firstPasscode)
  {
    if ([v6 isEqualToData:?])
    {
      [v21 resetPasscodeEntryFieldForFailure:0];
      v8 = [(NSData *)self->_firstPasscode copy];
      firstPasscode = self->_firstPasscode;
      self->_firstPasscode = 0;

      [(PBADataRecoveryViewController *)self _beginRecovery:v8 fromViewController:v21];
      goto LABEL_7;
    }

    v16 = self->_firstPasscode;
    self->_firstPasscode = 0;

    v17 = +[NSBundle mainBundle];
    v18 = [v17 localizedStringForKey:@"PREBOARD_RECOVERY_ENTER_PASSCODE" value:&stru_10001CDA8 table:@"PreBoard"];
    v19 = +[NSBundle mainBundle];
    v20 = [v19 localizedStringForKey:@"PREBOARD_RECOVERY_SUBTITLE_MISMATCH" value:&stru_10001CDA8 table:@"PreBoard"];
    [v21 setTitleText:v18 subtitleText:v20 animated:1];

    v14 = v21;
    v15 = 1;
  }

  else
  {
    v10 = [v6 copy];
    v11 = self->_firstPasscode;
    self->_firstPasscode = v10;

    v12 = +[NSBundle mainBundle];
    v13 = [v12 localizedStringForKey:@"PREBOARD_RECOVERY_CONFIRM_PASSCODE" value:&stru_10001CDA8 table:@"PreBoard"];
    [v21 setTitleText:v13 subtitleText:0 animated:1];

    v14 = v21;
    v15 = 0;
  }

  [v14 resetPasscodeEntryFieldForFailure:v15];
LABEL_7:
}

- (void)passcodeEntryViewControllerCancelButtonPressed:(id)a3
{
  firstPasscode = self->_firstPasscode;
  self->_firstPasscode = 0;
  v5 = a3;

  [(PBAStackViewController *)self->_stackViewController removeViewController:v5 animated:1];
}

@end