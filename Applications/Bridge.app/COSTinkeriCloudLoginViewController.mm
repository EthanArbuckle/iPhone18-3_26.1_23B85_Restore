@interface COSTinkeriCloudLoginViewController
- (BOOL)holdBeforeDisplaying;
- (BOOL)holdWithWaitScreen;
- (COSBuddyControllerDelegate)delegate;
- (id)authenticationContext;
- (id)localizedWaitScreenDescription;
- (id)remoteUIStyle;
- (id)username;
- (id)viewController;
- (void)appleIDAuthController:(id)controller didSignInWithSuccess:(BOOL)success error:(id)error;
- (void)setDelegate:(id)delegate;
- (void)setupViewController;
- (void)willPresentModalNavigationController:(id)controller;
@end

@implementation COSTinkeriCloudLoginViewController

- (id)viewController
{
  v3 = pbb_accountsignin_log();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    v6 = 136315138;
    v7 = "[COSTinkeriCloudLoginViewController viewController]";
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "%s", &v6, 0xCu);
  }

  signInController = self->_signInController;
  if (!signInController)
  {
    [(COSTinkeriCloudLoginViewController *)self setupViewController];
    signInController = self->_signInController;
  }

  return signInController;
}

- (void)setupViewController
{
  v3 = pbb_accountsignin_log();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315138;
    v46 = "[COSTinkeriCloudLoginViewController setupViewController]";
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "%s", buf, 0xCu);
  }

  view = [(COSTinkeriCloudLoginViewController *)self view];
  [view setUserInteractionEnabled:0];

  v5 = objc_alloc_init(AAUISignInViewController);
  signInController = self->_signInController;
  self->_signInController = v5;

  [(AAUISignInViewController *)self->_signInController setAllowsAccountCreation:0];
  [(AAUISignInViewController *)self->_signInController setShowServiceIcons:0];
  setupController = [UIApp setupController];
  tinkerFamilyMember = [setupController tinkerFamilyMember];
  v9 = tinkerFamilyMember;
  if (!tinkerFamilyMember)
  {
    goto LABEL_10;
  }

  if ([tinkerFamilyMember isChildAccount])
  {
    appleID = [v9 appleID];

    if (appleID)
    {
      appleID2 = [v9 appleID];
      [(AAUISignInViewController *)self->_signInController setUsername:appleID2];

      [(AAUISignInViewController *)self->_signInController setCanEditUsername:0];
      v12 = +[NSBundle mainBundle];
      v13 = [v12 localizedStringForKey:@"TINKER_APPLE_ID_SIGNIN_U13_USERNAME_TITLE_%@" value:&stru_10026E598 table:@"Localizable-tinker"];
      tinkerUserName = [setupController tinkerUserName];
      v15 = [NSString stringWithFormat:v13, tinkerUserName];
      signInTitle = self->_signInTitle;
      self->_signInTitle = v15;

      v17 = +[NSBundle mainBundle];
      v18 = [v17 localizedStringForKey:@"TINKER_APPLE_ID_SIGNIN_U13_USERNAME_MESSAGE_%@_%@" value:&stru_10026E598 table:@"Localizable-tinker"];
      tinkerUserName2 = [setupController tinkerUserName];
      appleID3 = [v9 appleID];
      v21 = [NSString stringWithFormat:v18, tinkerUserName2, appleID3];
      signInMessage = self->_signInMessage;
      self->_signInMessage = v21;

      goto LABEL_12;
    }
  }

  if (([v9 isChildAccount] & 1) == 0 && (objc_msgSend(v9, "appleID"), v23 = objc_claimAutoreleasedReturnValue(), v23, v23))
  {
    appleID4 = [v9 appleID];
    [(AAUISignInViewController *)self->_signInController setUsername:appleID4];

    [(AAUISignInViewController *)self->_signInController setCanEditUsername:0];
    v25 = +[NSBundle mainBundle];
    v26 = [v25 localizedStringForKey:@"TINKER_APPLE_ID_SIGNIN_O13_USERNAME_TITLE_%@" value:&stru_10026E598 table:@"Localizable-tinker"];
    tinkerUserName3 = [setupController tinkerUserName];
    v28 = [NSString stringWithFormat:v26, tinkerUserName3];
    v29 = self->_signInTitle;
    self->_signInTitle = v28;

    v30 = +[NSBundle mainBundle];
    v17 = v30;
    v31 = @"TINKER_APPLE_ID_SIGNIN_O13_USERNAME_MESSAGE";
  }

  else
  {
LABEL_10:
    v32 = +[NSBundle mainBundle];
    v33 = [v32 localizedStringForKey:@"TINKER_APPLE_ID_SIGNIN_UNKNOWN_USER_TITLE" value:&stru_10026E598 table:@"Localizable-tinker"];
    v34 = self->_signInTitle;
    self->_signInTitle = v33;

    v30 = +[NSBundle mainBundle];
    v17 = v30;
    v31 = @"TINKER_APPLE_ID_SIGNIN_UNKNOWN_USER_MESSAGE";
  }

  v35 = [v30 localizedStringForKey:v31 value:&stru_10026E598 table:@"Localizable-tinker"];
  v18 = self->_signInMessage;
  self->_signInMessage = v35;
LABEL_12:

  setupController2 = [UIApp setupController];
  tinkerAuthenticationController = [setupController2 tinkerAuthenticationController];
  authController = self->_authController;
  self->_authController = tinkerAuthenticationController;

  [(COSAppleIDAuthController *)self->_authController setDelegate:self];
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  navigationController = [WeakRetained navigationController];
  [(COSAppleIDAuthController *)self->_authController setPresentingController:navigationController];

  [(AAUISignInViewController *)self->_signInController setDelegate:self->_authController];
  proxiedDevice = [(COSAppleIDAuthController *)self->_authController proxiedDevice];

  if (!proxiedDevice)
  {
    v42 = +[UIApplication sharedApplication];
    bridgeController = [v42 bridgeController];
    v44[0] = _NSConcreteStackBlock;
    v44[1] = 3221225472;
    v44[2] = sub_1000F71DC;
    v44[3] = &unk_100268958;
    v44[4] = self;
    [bridgeController requestProxiedDeviceForWatchWithCompletion:v44];
  }
}

- (id)authenticationContext
{
  baseAppContext = [(COSAppleIDAuthController *)self->_authController baseAppContext];
  [baseAppContext setAuthenticationType:2];
  proxiedDevice = [(COSAppleIDAuthController *)self->_authController proxiedDevice];
  [baseAppContext setProxiedDevice:proxiedDevice];

  username = [(COSTinkeriCloudLoginViewController *)self username];
  [baseAppContext setUsername:username];

  [baseAppContext setTitle:self->_signInTitle];
  [baseAppContext setReason:self->_signInMessage];
  v6 = pbb_accountsignin_log();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    *v8 = 0;
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "Returning custom authentication context", v8, 2u);
  }

  return baseAppContext;
}

- (id)username
{
  setupController = [UIApp setupController];
  tinkerFamilyMember = [setupController tinkerFamilyMember];
  appleID = [tinkerFamilyMember appleID];

  return appleID;
}

- (void)appleIDAuthController:(id)controller didSignInWithSuccess:(BOOL)success error:(id)error
{
  successCopy = success;
  errorCopy = error;
  setupController = [UIApp setupController];
  pairingReportManager = [setupController pairingReportManager];

  if (successCopy)
  {
    signInController = self->_signInController;
    self->_signInController = 0;

    WeakRetained = objc_loadWeakRetained(&self->_delegate);
    [WeakRetained buddyControllerDone:self];
  }

  else
  {
    v12 = pbb_setupflow_log();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
    {
      v16 = 138412290;
      v17 = errorCopy;
      _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEFAULT, "Tinker sign in failed with error: %@", &v16, 0xCu);
    }

    if ([errorCopy code])
    {
      v13 = +[NSNumber numberWithInteger:](NSNumber, "numberWithInteger:", [errorCopy code]);
      [pairingReportManager addPairingTimeEventToPairingReportPlist:65 withValue:v13 withError:0];
    }

    domain = [errorCopy domain];

    if (domain)
    {
      domain2 = [errorCopy domain];
      [pairingReportManager addPairingTimeEventStringToPairingReportPlist:66 withValue:domain2 withError:0];
    }
  }
}

- (id)remoteUIStyle
{
  v2 = objc_opt_new();

  return v2;
}

- (void)willPresentModalNavigationController:(id)controller
{
  navigationBar = [controller navigationBar];
  BPSApplyStyleToNavBar();
}

- (BOOL)holdBeforeDisplaying
{
  v3 = pbb_accountsignin_log();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "COSTinkeriCloudLoginViewController - holdBeforeDisplaying", buf, 2u);
  }

  [(COSTinkeriCloudLoginViewController *)self setupViewController];
  proxiedDevice = [(COSAppleIDAuthController *)self->_authController proxiedDevice];

  v5 = pbb_accountsignin_log();
  v6 = os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT);
  if (proxiedDevice)
  {
    if (v6)
    {
      v11 = 0;
      v7 = "COSTinkeriCloudLoginViewController - holdBeforeDisplaying - NO";
      v8 = &v11;
LABEL_8:
      _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, v7, v8, 2u);
    }
  }

  else if (v6)
  {
    v10 = 0;
    v7 = "COSTinkeriCloudLoginViewController - holdBeforeDisplaying - YES";
    v8 = &v10;
    goto LABEL_8;
  }

  return proxiedDevice == 0;
}

- (BOOL)holdWithWaitScreen
{
  v2 = pbb_accountsignin_log();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    *v4 = 0;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "holdWithWaitScreen", v4, 2u);
  }

  return 0;
}

- (void)setDelegate:(id)delegate
{
  delegateCopy = delegate;
  v5 = pbb_accountsignin_log();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *v6 = 0;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "setDelegate", v6, 2u);
  }

  objc_storeWeak(&self->_delegate, delegateCopy);
}

- (id)localizedWaitScreenDescription
{
  v2 = +[NSBundle mainBundle];
  v3 = [v2 localizedStringForKey:@"TINKER_WAITING_ON_DEVICE" value:&stru_10026E598 table:@"Localizable-tinker"];

  return v3;
}

- (COSBuddyControllerDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end