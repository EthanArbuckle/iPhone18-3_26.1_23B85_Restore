@interface COSTinkerFamilyCirclePostcheckViewController
- (COSBuddyControllerDelegate)delegate;
- (id)localizedWaitScreenDescription;
- (void)didEstablishHold;
- (void)presentAlertAndFallbackToSignInForError:(id)error;
- (void)setDelegate:(id)delegate;
- (void)startPostCheck;
@end

@implementation COSTinkerFamilyCirclePostcheckViewController

- (id)localizedWaitScreenDescription
{
  v2 = +[NSBundle mainBundle];
  v3 = [v2 localizedStringForKey:@"FAMILY_CIRCLE_REPAIR_HOLD_DESCRIPTION" value:&stru_10026E598 table:@"SetupFlowLocalizable-tinker"];

  return v3;
}

- (void)didEstablishHold
{
  if (sub_100009A74())
  {
    if (_os_feature_enabled_impl())
    {
      block[0] = _NSConcreteStackBlock;
      block[1] = 3221225472;
      block[2] = sub_1000CBBC8;
      block[3] = &unk_1002682F0;
      block[4] = self;
      dispatch_async(&_dispatch_main_q, block);
    }
  }
}

- (void)setDelegate:(id)delegate
{
  objc_storeWeak(&self->_delegate, delegate);
  if (!sub_100009A74() || (_os_feature_enabled_impl() & 1) == 0)
  {
    setupController = [UIApp setupController];
    tinkerAuthenticationController = [setupController tinkerAuthenticationController];
    authController = self->_authController;
    self->_authController = tinkerAuthenticationController;

    v7 = self->_authController;
    v8[0] = _NSConcreteStackBlock;
    v8[1] = 3221225472;
    v8[2] = sub_1000CBD8C;
    v8[3] = &unk_1002684A8;
    v8[4] = self;
    [(COSAppleIDAuthController *)v7 reauthFamilyCircleByExistingAuthenticationResultsWithCompletion:v8];
  }
}

- (void)presentAlertAndFallbackToSignInForError:(id)error
{
  errorCopy = error;
  localizedDescription = [errorCopy localizedDescription];
  if (errorCopy && PBIsInternalInstall())
  {
    code = [errorCopy code];
    localizedDescription2 = [errorCopy localizedDescription];
    v8 = [NSString stringWithFormat:@"Error %li: %@", code, localizedDescription2];

    localizedDescription = v8;
  }

  v9 = +[NSBundle mainBundle];
  v10 = [v9 localizedStringForKey:@"FAILED_TO_UPDATE_FAMILY_MEMBERS" value:&stru_10026E598 table:@"Localizable-tinker"];
  v11 = [UIAlertController alertControllerWithTitle:v10 message:localizedDescription preferredStyle:1];

  v12 = +[NSBundle mainBundle];
  v13 = [v12 localizedStringForKey:@"OK" value:&stru_10026E598 table:@"Localizable"];
  v17[0] = _NSConcreteStackBlock;
  v17[1] = 3221225472;
  v17[2] = sub_1000CC058;
  v17[3] = &unk_100268580;
  v17[4] = self;
  v14 = [UIAlertAction actionWithTitle:v13 style:0 handler:v17];
  [v11 addAction:v14];

  setupController = [UIApp setupController];
  navigationController = [setupController navigationController];

  [navigationController presentViewController:v11 animated:1 completion:0];
}

- (void)startPostCheck
{
  setupController = [UIApp setupController];
  tinkerSignInId = [setupController tinkerSignInId];

  v5 = objc_alloc_init(FAFetchFamilyCircleRequest);
  [v5 setCachePolicy:2];
  v6 = pbb_accountsignin_log();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "FAFetchFamilyCircleRequest start", buf, 2u);
  }

  v8[0] = _NSConcreteStackBlock;
  v8[1] = 3221225472;
  v8[2] = sub_1000CC18C;
  v8[3] = &unk_10026B350;
  v8[4] = self;
  v9 = tinkerSignInId;
  v7 = tinkerSignInId;
  [v5 startRequestWithCompletionHandler:v8];
}

- (COSBuddyControllerDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end