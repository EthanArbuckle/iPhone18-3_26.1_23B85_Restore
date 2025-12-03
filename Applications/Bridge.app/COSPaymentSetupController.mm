@interface COSPaymentSetupController
+ (BOOL)controllerNeedsToRunForBuddyControllerDelegate:(id)delegate;
+ (void)_markApplePayOfferingComplete;
+ (void)_updateGizmoForSuccess:(BOOL)success;
- (COSBuddyControllerDelegate)delegate;
- (COSPasscodeChangeComplexViewController)passcodeViewController;
- (COSPaymentSetupController)init;
- (COSSetupController)setupController;
- (PKPasscodeUpgradeFlowController)passcodeUpgradeFlowController;
- (PKPaymentSetupViewControllerDelegate)vcDelegate;
- (id)localizedWaitScreenDescription;
- (void)_endPasscodeUpgradeWithSuccess:(BOOL)success error:(id)error;
- (void)_invokePasscodeUpgradeCompletionWithSuccess:(BOOL)success error:(id)error;
- (void)dealloc;
- (void)didEstablishHold;
- (void)passcodeChangeComplexViewController:(id)controller didChangeVisibilityWithIsVisible:(BOOL)visible;
- (void)peerPaymentAddAssociatedAccountViewController:(id)controller didFinishWithSuccess:(BOOL)success updatedPeerPaymentAccount:(id)account;
- (void)peerPaymentAddAssociatedAccountViewControllerDidSkipSetup:(id)setup;
- (void)viewController:(id)controller requestPasscodeUpgradeForPasscodeUpgradeFlowController:(id)flowController completion:(id)completion;
- (void)viewControllerDidTerminateSetupFlow:(id)flow;
@end

@implementation COSPaymentSetupController

- (COSPaymentSetupController)init
{
  v5.receiver = self;
  v5.super_class = COSPaymentSetupController;
  v2 = [(COSPaymentSetupController *)&v5 init];
  if (v2)
  {
    setupController = [UIApp setupController];
    objc_storeWeak(&v2->_setupController, setupController);
  }

  return v2;
}

- (void)dealloc
{
  passcodeUpgradeCompletion = [(COSPaymentSetupController *)self passcodeUpgradeCompletion];

  if (passcodeUpgradeCompletion)
  {
    passcodeUpgradeCompletion = [(COSPaymentSetupController *)self passcodeUpgradeCompletion];
    [(COSPaymentSetupController *)self setPasscodeUpgradeCompletion:0];
  }

  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100088CE0;
  block[3] = &unk_10026A0F8;
  v7 = passcodeUpgradeCompletion;
  v8 = 0;
  v4 = passcodeUpgradeCompletion;
  dispatch_async(&_dispatch_main_q, block);

  v5.receiver = self;
  v5.super_class = COSPaymentSetupController;
  [(COSPaymentSetupController *)&v5 dealloc];
}

+ (BOOL)controllerNeedsToRunForBuddyControllerDelegate:(id)delegate
{
  delegateCopy = delegate;
  v4 = objc_alloc_init(ACAccountStore);
  aa_primaryAppleAccount = [v4 aa_primaryAppleAccount];
  setupController = [UIApp setupController];
  appleIDSignInModel = [setupController appleIDSignInModel];
  hasSignedInToiCloud = [appleIDSignInModel hasSignedInToiCloud];

  hasAddedPasscode = [delegateCopy hasAddedPasscode];
  bridgeController = [UIApp bridgeController];
  isTinkerPairing = [bridgeController isTinkerPairing];

  if (isTinkerPairing && (hasSignedInToiCloud & 1) == 0)
  {
    v12 = pbb_bridge_log();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEFAULT, "(child-apple-pay) assuming addedAccountToWatch", buf, 2u);
    }

    hasSignedInToiCloud = 1;
  }

  if (((aa_primaryAppleAccount != 0) & hasAddedPasscode & hasSignedInToiCloud) == 0)
  {
    v23 = pbb_bridge_log();
    if (os_log_type_enabled(v23, OS_LOG_TYPE_DEFAULT))
    {
      v24 = [NSNumber numberWithBool:aa_primaryAppleAccount != 0];
      v25 = [NSNumber numberWithBool:hasSignedInToiCloud];
      v26 = [NSNumber numberWithBool:hasAddedPasscode];
      *buf = 138412802;
      v32 = v24;
      v33 = 2112;
      v34 = v25;
      v35 = 2112;
      v36 = v26;
      _os_log_impl(&_mh_execute_header, v23, OS_LOG_TYPE_DEFAULT, "Skipping Apple Pay (iPhone iCloud enabled %@, Watch iCloud enabled %@, Passcode Set: %@)", buf, 0x20u);
    }

    goto LABEL_17;
  }

  v30 = 0;
  v13 = [COSPaymentSetupAssistantController passkitFlowNeedsToRun:&v30];
  v14 = v13;
  if (v30)
  {
    v15 = 0;
  }

  else
  {
    v15 = v13;
  }

  v16 = pbb_bridge_log();
  if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
  {
    v28 = [NSNumber numberWithBool:v14];
    [NSNumber numberWithUnsignedInteger:v30];
    v17 = v29 = v4;
    v18 = [NSNumber numberWithBool:v15];
    v19 = [NSNumber numberWithBool:1];
    v20 = [NSNumber numberWithBool:1];
    v21 = [NSNumber numberWithBool:1];
    *buf = 138413570;
    v32 = v28;
    v33 = 2112;
    v34 = v17;
    v35 = 2112;
    v36 = v18;
    v37 = 2112;
    v38 = v19;
    v39 = 2112;
    v40 = v20;
    v41 = 2112;
    v42 = v21;
    _os_log_impl(&_mh_execute_header, v16, OS_LOG_TYPE_DEFAULT, "Apple Pay elligibility: (NeedsToRun: %@) (requirements: %@) (willShowController: %@) -- (iPhone iCloud enabled %@, Watch iCloud enabled %@, Passcode Set: %@)", buf, 0x3Eu);

    v4 = v29;
  }

  if (!v15)
  {
LABEL_17:
    [objc_opt_class() _markApplePayOfferingComplete];
    v22 = 0;
    goto LABEL_18;
  }

  v22 = 1;
LABEL_18:

  return v22;
}

- (void)didEstablishHold
{
  objc_initWeak(&location, self);
  if (PBLogPerformanceMetrics())
  {
    v3 = +[PBBridgeResponsePerformanceMonitor shareMonitor];
    holdActivityIdentifier = [(COSPaymentSetupController *)self holdActivityIdentifier];
    [v3 beginMacroActivity:holdActivityIdentifier beginTime:CFAbsoluteTimeGetCurrent()];
  }

  v19[0] = _NSConcreteStackBlock;
  v19[1] = 3221225472;
  v19[2] = sub_100089408;
  v19[3] = &unk_10026A148;
  v19[4] = self;
  objc_copyWeak(&v20, &location);
  v5 = objc_retainBlock(v19);
  WeakRetained = objc_loadWeakRetained(&self->_setupController);
  paymentExpressSetupManager = [WeakRetained paymentExpressSetupManager];

  if (paymentExpressSetupManager && (v8 = objc_loadWeakRetained(&self->_setupController), v9 = [v8 expressMode], v8, v9))
  {
    v10 = pbb_setupflow_log();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "Configuring provisioning context for express setup", buf, 2u);
    }

    v14[0] = _NSConcreteStackBlock;
    v14[1] = 3221225472;
    v14[2] = sub_10008968C;
    v14[3] = &unk_100268A38;
    v15 = paymentExpressSetupManager;
    selfCopy = self;
    v17 = v5;
    [v15 configureExpressSetupProvisioningContextWithCompletion:v14];
  }

  else
  {
    v11 = pbb_setupflow_log();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "Configuring payment setup controller for standard setup", buf, 2u);
    }

    v12 = [[COSPaymentSetupAssistantController alloc] initWithDelegate:self];
    pkSetupAssistant = self->_pkSetupAssistant;
    self->_pkSetupAssistant = v12;

    [(PKPaymentSetupAssistantController *)self->_pkSetupAssistant setupAssistantViewControllerWithCompletion:v5];
  }

  objc_destroyWeak(&v20);
  objc_destroyWeak(&location);
}

- (void)viewControllerDidTerminateSetupFlow:(id)flow
{
  [objc_opt_class() _markApplePayOfferingComplete];
  delegate = [(COSPaymentSetupController *)self delegate];
  [delegate buddyControllerDone:self];
}

- (void)viewController:(id)controller requestPasscodeUpgradeForPasscodeUpgradeFlowController:(id)flowController completion:(id)completion
{
  controllerCopy = controller;
  flowControllerCopy = flowController;
  completionCopy = completion;
  objc_initWeak(&location, self);
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1000898A8;
  block[3] = &unk_10026A198;
  objc_copyWeak(&v18, &location);
  v15 = controllerCopy;
  v16 = flowControllerCopy;
  v17 = completionCopy;
  v11 = completionCopy;
  v12 = flowControllerCopy;
  v13 = controllerCopy;
  dispatch_async(&_dispatch_main_q, block);

  objc_destroyWeak(&v18);
  objc_destroyWeak(&location);
}

- (void)peerPaymentAddAssociatedAccountViewController:(id)controller didFinishWithSuccess:(BOOL)success updatedPeerPaymentAccount:(id)account
{
  successCopy = success;
  controllerCopy = controller;
  v8 = pbb_bridge_log();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    v9 = 136446466;
    v10 = "[COSPaymentSetupController peerPaymentAddAssociatedAccountViewController:didFinishWithSuccess:updatedPeerPaymentAccount:]";
    v11 = 1024;
    v12 = successCopy;
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "COSPaymentSetupController: %{public}s with success %d", &v9, 0x12u);
  }

  [(COSPaymentSetupController *)self viewControllerDidTerminateSetupFlow:controllerCopy];
}

- (void)peerPaymentAddAssociatedAccountViewControllerDidSkipSetup:(id)setup
{
  setupCopy = setup;
  v5 = pbb_bridge_log();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v6 = 136446210;
    v7 = "[COSPaymentSetupController peerPaymentAddAssociatedAccountViewControllerDidSkipSetup:]";
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "COSPaymentSetupController: %{public}s", &v6, 0xCu);
  }

  [(COSPaymentSetupController *)self viewControllerDidTerminateSetupFlow:setupCopy];
}

- (void)passcodeChangeComplexViewController:(id)controller didChangeVisibilityWithIsVisible:(BOOL)visible
{
  visibleCopy = visible;
  controllerCopy = controller;
  v7 = pbb_setupflow_log();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    v8 = @"NO";
    if (visibleCopy)
    {
      v8 = @"YES";
    }

    v12 = 138412546;
    v13 = controllerCopy;
    v14 = 2112;
    v15 = v8;
    _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "passcodeChangeComplexViewController: %@ did change visibility with isVisible: %@", &v12, 0x16u);
  }

  passcodeUpgradeFlowController = [(COSPaymentSetupController *)self passcodeUpgradeFlowController];
  v10 = passcodeUpgradeFlowController;
  if (passcodeUpgradeFlowController)
  {
    if (visibleCopy)
    {
      [passcodeUpgradeFlowController beginShowingViewController];
    }

    else
    {
      [passcodeUpgradeFlowController endedShowingViewController];
    }
  }

  else
  {
    v11 = pbb_setupflow_log();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
    {
      LOWORD(v12) = 0;
      _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "Expected to have a passcode upgrade flow controller, but instead found nil.", &v12, 2u);
    }
  }
}

- (void)_endPasscodeUpgradeWithSuccess:(BOOL)success error:(id)error
{
  errorCopy = error;
  objc_initWeak(&location, self);
  v8[0] = _NSConcreteStackBlock;
  v8[1] = 3221225472;
  v8[2] = sub_100089EF0;
  v8[3] = &unk_100268380;
  objc_copyWeak(&v10, &location);
  successCopy = success;
  v9 = errorCopy;
  v7 = errorCopy;
  dispatch_async(&_dispatch_main_q, v8);

  objc_destroyWeak(&v10);
  objc_destroyWeak(&location);
}

- (void)_invokePasscodeUpgradeCompletionWithSuccess:(BOOL)success error:(id)error
{
  successCopy = success;
  errorCopy = error;
  passcodeUpgradeCompletion = [(COSPaymentSetupController *)self passcodeUpgradeCompletion];

  if (passcodeUpgradeCompletion)
  {
    passcodeUpgradeCompletion2 = [(COSPaymentSetupController *)self passcodeUpgradeCompletion];
    (passcodeUpgradeCompletion2)[2](passcodeUpgradeCompletion2, successCopy, errorCopy);

    [(COSPaymentSetupController *)self setPasscodeUpgradeCompletion:0];
  }
}

+ (void)_updateGizmoForSuccess:(BOOL)success
{
  successCopy = success;
  bridgeController = [UIApp bridgeController];
  v5 = bridgeController;
  if (successCopy)
  {
    [bridgeController tellGizmoToPushControllerType:20];
  }

  else
  {
    [bridgeController tellGizmoToPopToControllerType:20];
  }
}

- (id)localizedWaitScreenDescription
{
  if (sub_100009A74())
  {
    localizedCapitalizedString = +[NSBundle mainBundle];
    v3 = [localizedCapitalizedString localizedStringForKey:@"APPLE_PAY_WAITING_DESCRIPTION" value:&stru_10026E598 table:@"Localizable"];
  }

  else
  {
    setupController = [UIApp setupController];
    tinkerUserName = [setupController tinkerUserName];
    localizedCapitalizedString = [tinkerUserName localizedCapitalizedString];

    v6 = +[NSBundle mainBundle];
    if (localizedCapitalizedString)
    {
      v7 = [v6 localizedStringForKey:@"APPLEID_ACCOUNT_HOLD_DESCRIPTION_TINKER_USER_%@" value:&stru_10026E598 table:@"Localizable-tinker"];
      v3 = [NSString stringWithFormat:v7, localizedCapitalizedString];
    }

    else
    {
      v3 = [v6 localizedStringForKey:@"APPLEID_ACCOUNT_HOLD_DESCRIPTION" value:&stru_10026E598 table:@"Localizable"];
    }
  }

  return v3;
}

+ (void)_markApplePayOfferingComplete
{
  setupController = [UIApp setupController];
  [setupController updateActivelyPairingWatchBuddyStage:8];
}

- (COSBuddyControllerDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

- (COSSetupController)setupController
{
  WeakRetained = objc_loadWeakRetained(&self->_setupController);

  return WeakRetained;
}

- (PKPaymentSetupViewControllerDelegate)vcDelegate
{
  WeakRetained = objc_loadWeakRetained(&self->_vcDelegate);

  return WeakRetained;
}

- (PKPasscodeUpgradeFlowController)passcodeUpgradeFlowController
{
  WeakRetained = objc_loadWeakRetained(&self->_passcodeUpgradeFlowController);

  return WeakRetained;
}

- (COSPasscodeChangeComplexViewController)passcodeViewController
{
  WeakRetained = objc_loadWeakRetained(&self->_passcodeViewController);

  return WeakRetained;
}

@end