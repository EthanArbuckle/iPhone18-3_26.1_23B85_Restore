@interface COSCreateAppleIDController
- (COSBuddyControllerDelegate)delegate;
- (id)localizedWaitScreenDescription;
- (void)appleIDAuthController:(id)a3 didSignInWithSuccess:(BOOL)a4 error:(id)a5;
- (void)setDelegate:(id)a3;
- (void)startCreation;
@end

@implementation COSCreateAppleIDController

- (void)setDelegate:(id)a3
{
  v4 = a3;
  v5 = pbb_accountsignin_log();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "setDelegate", buf, 2u);
  }

  v6 = [UIApp setupController];
  v7 = [v6 tinkerAuthenticationController];
  authController = self->_authController;
  self->_authController = v7;

  v9 = [v4 navigationController];
  [(COSAppleIDAuthController *)self->_authController setPresentingController:v9];

  [(COSAppleIDAuthController *)self->_authController setDelegate:self];
  v10 = [(COSAppleIDAuthController *)self->_authController proxiedDevice];

  if (v10)
  {
    [(COSCreateAppleIDController *)self startCreation];
  }

  else
  {
    v11 = +[UIApplication sharedApplication];
    v12 = [v11 bridgeController];
    v13[0] = _NSConcreteStackBlock;
    v13[1] = 3221225472;
    v13[2] = sub_1000296CC;
    v13[3] = &unk_100268958;
    v13[4] = self;
    [v12 requestProxiedDeviceForWatchWithCompletion:v13];
  }

  objc_storeWeak(&self->_delegate, v4);
}

- (void)startCreation
{
  v8 = [(COSAppleIDAuthController *)self->_authController baseAppContext];
  v3 = [(COSAppleIDAuthController *)self->_authController proxiedDevice];
  [v8 setProxiedDevice:v3];

  [v8 setNeedsNewAppleID:1];
  [v8 setForceInlinePresentation:1];
  [(COSAppleIDAuthController *)self->_authController startAccountActionWithContext:v8];
  v4 = [UIApp setupController];
  v5 = [v4 navigationController];
  v6 = [v5 viewControllers];
  stashedNavState = self->_stashedNavState;
  self->_stashedNavState = v6;
}

- (id)localizedWaitScreenDescription
{
  v2 = +[NSBundle mainBundle];
  v3 = [v2 localizedStringForKey:@"TINKER_WAITING_ON_DEVICE" value:&stru_10026E598 table:@"Localizable-tinker"];

  return v3;
}

- (void)appleIDAuthController:(id)a3 didSignInWithSuccess:(BOOL)a4 error:(id)a5
{
  v5 = a4;
  v7 = a5;
  if (v5)
  {
    [UIApp setNewTinkerAccountCreated:1];
    WeakRetained = objc_loadWeakRetained(&self->_delegate);
    [WeakRetained buddyControllerDone:self];
  }

  else
  {
    v9 = [UIApp setupController];
    v10 = [v9 navigationController];

    v11 = [v7 code];
    v12 = pbb_accountsignin_log();
    v13 = os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT);
    if (v11 == -7003)
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
      v27 = v10;
      v14 = v10;
      dispatch_async(&_dispatch_main_q, block);
    }

    else
    {
      if (v13)
      {
        *buf = 138412290;
        v33 = v7;
        _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEFAULT, "Failed Create: %@", buf, 0xCu);
      }

      v14 = [v7 localizedDescription];
      if (PBIsInternalInstall())
      {
        v15 = [v7 domain];
        v16 = +[NSNumber numberWithInteger:](NSNumber, "numberWithInteger:", [v7 code]);
        v17 = [v14 stringByAppendingFormat:@" [Domain: %@ Code: %@]", v15, v16];

        v14 = v17;
      }

      v18 = +[NSBundle mainBundle];
      v19 = [v18 localizedStringForKey:@"GUARDIAN_ACCOUNT_REPAIR_FAILED" value:&stru_10026E598 table:@"Localizable-tinker"];
      v20 = [UIAlertController alertControllerWithTitle:v19 message:v14 preferredStyle:1];

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
      v29 = v10;
      v30 = v20;
      v24 = v20;
      v25 = v10;
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