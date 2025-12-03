@interface COSCreateAppleIDController
- (COSBuddyControllerDelegate)delegate;
- (id)localizedWaitScreenDescription;
- (void)appleIDAuthController:(id)controller didSignInWithSuccess:(BOOL)success error:(id)error;
- (void)setDelegate:(id)delegate;
- (void)startCreation;
@end

@implementation COSCreateAppleIDController

- (void)setDelegate:(id)delegate
{
  delegateCopy = delegate;
  v5 = pbb_accountsignin_log();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "setDelegate", buf, 2u);
  }

  setupController = [UIApp setupController];
  tinkerAuthenticationController = [setupController tinkerAuthenticationController];
  authController = self->_authController;
  self->_authController = tinkerAuthenticationController;

  navigationController = [delegateCopy navigationController];
  [(COSAppleIDAuthController *)self->_authController setPresentingController:navigationController];

  [(COSAppleIDAuthController *)self->_authController setDelegate:self];
  proxiedDevice = [(COSAppleIDAuthController *)self->_authController proxiedDevice];

  if (proxiedDevice)
  {
    [(COSCreateAppleIDController *)self startCreation];
  }

  else
  {
    v11 = +[UIApplication sharedApplication];
    bridgeController = [v11 bridgeController];
    v13[0] = _NSConcreteStackBlock;
    v13[1] = 3221225472;
    v13[2] = sub_1000296CC;
    v13[3] = &unk_100268958;
    v13[4] = self;
    [bridgeController requestProxiedDeviceForWatchWithCompletion:v13];
  }

  objc_storeWeak(&self->_delegate, delegateCopy);
}

- (void)startCreation
{
  baseAppContext = [(COSAppleIDAuthController *)self->_authController baseAppContext];
  proxiedDevice = [(COSAppleIDAuthController *)self->_authController proxiedDevice];
  [baseAppContext setProxiedDevice:proxiedDevice];

  [baseAppContext setNeedsNewAppleID:1];
  [baseAppContext setForceInlinePresentation:1];
  [(COSAppleIDAuthController *)self->_authController startAccountActionWithContext:baseAppContext];
  setupController = [UIApp setupController];
  navigationController = [setupController navigationController];
  viewControllers = [navigationController viewControllers];
  stashedNavState = self->_stashedNavState;
  self->_stashedNavState = viewControllers;
}

- (id)localizedWaitScreenDescription
{
  v2 = +[NSBundle mainBundle];
  v3 = [v2 localizedStringForKey:@"TINKER_WAITING_ON_DEVICE" value:&stru_10026E598 table:@"Localizable-tinker"];

  return v3;
}

- (void)appleIDAuthController:(id)controller didSignInWithSuccess:(BOOL)success error:(id)error
{
  successCopy = success;
  errorCopy = error;
  if (successCopy)
  {
    [UIApp setNewTinkerAccountCreated:1];
    WeakRetained = objc_loadWeakRetained(&self->_delegate);
    [WeakRetained buddyControllerDone:self];
  }

  else
  {
    setupController = [UIApp setupController];
    navigationController = [setupController navigationController];

    code = [errorCopy code];
    v12 = pbb_accountsignin_log();
    v13 = os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT);
    if (code == -7003)
    {
      if (v13)
      {
        *buf = 0;
        _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEFAULT, "User canceled create", buf, 2u);
      }

      block[0] = _NSConcreteStackBlock;
      block[1] = 3221225472;
      block[2] = sub_100029C8C;
      block[3] = &unk_100268358;
      block[4] = self;
      v27 = navigationController;
      localizedDescription = navigationController;
      dispatch_async(&_dispatch_main_q, block);
    }

    else
    {
      if (v13)
      {
        *buf = 138412290;
        v33 = errorCopy;
        _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEFAULT, "Failed Create: %@", buf, 0xCu);
      }

      localizedDescription = [errorCopy localizedDescription];
      if (PBIsInternalInstall())
      {
        domain = [errorCopy domain];
        v16 = +[NSNumber numberWithInteger:](NSNumber, "numberWithInteger:", [errorCopy code]);
        v17 = [localizedDescription stringByAppendingFormat:@" [Domain: %@ Code: %@]", domain, v16];

        localizedDescription = v17;
      }

      v18 = +[NSBundle mainBundle];
      v19 = [v18 localizedStringForKey:@"GUARDIAN_ACCOUNT_REPAIR_FAILED" value:&stru_10026E598 table:@"Localizable-tinker"];
      v20 = [UIAlertController alertControllerWithTitle:v19 message:localizedDescription preferredStyle:1];

      v21 = +[NSBundle mainBundle];
      v22 = [v21 localizedStringForKey:@"OK" value:&stru_10026E598 table:@"Localizable"];
      v31[0] = _NSConcreteStackBlock;
      v31[1] = 3221225472;
      v31[2] = sub_100029C64;
      v31[3] = &unk_100268580;
      v31[4] = self;
      v23 = [UIAlertAction actionWithTitle:v22 style:0 handler:v31];
      [v20 addAction:v23];

      v28[0] = _NSConcreteStackBlock;
      v28[1] = 3221225472;
      v28[2] = sub_100029C78;
      v28[3] = &unk_100268358;
      v29 = navigationController;
      v30 = v20;
      v24 = v20;
      v25 = navigationController;
      dispatch_async(&_dispatch_main_q, v28);
    }
  }
}

- (COSBuddyControllerDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end