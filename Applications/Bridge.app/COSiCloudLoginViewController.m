@interface COSiCloudLoginViewController
- (BOOL)holdBeforeDisplaying;
- (COSiCloudLoginViewController)init;
- (id)detailString;
- (id)detailTextKeyForActivationLockEnabled:(BOOL)a3 findMyWatchSupported:(BOOL)a4 stockholmSupported:(BOOL)a5;
- (id)followUpActions;
- (id)localizedInformativeText;
- (id)localizedTitle;
- (id)localizedWaitScreenDescription;
- (id)titleString;
- (id)username;
- (void)_signInToAccountWithPassword:(id)a3;
- (void)_successfullySignedIn;
- (void)loggedInSuccessfullyWithBuddyControllerDoneBlock:(id)a3;
- (void)signInFailedWithError:(id)a3;
- (void)stockholmSupportedInGizmoRegion:(BOOL)a3;
- (void)tappedSkipButton:(id)a3;
- (void)updateAppleAccountProperties;
- (void)updatedAppleAccountPropertiesWithAuthenticated:(BOOL)a3 error:(id)a4;
@end

@implementation COSiCloudLoginViewController

- (COSiCloudLoginViewController)init
{
  v10.receiver = self;
  v10.super_class = COSiCloudLoginViewController;
  v2 = [(COSAppleIDLoginViewController *)&v10 init];
  if (v2)
  {
    v3 = +[COSiCloudAuthController iCloudAccountInAccountStore];
    account = v2->_account;
    v2->_account = v3;

    [(COSiCloudLoginViewController *)v2 stockholmSupportedInGizmoRegion:1];
    objc_initWeak(&location, v2);
    v7[0] = _NSConcreteStackBlock;
    v7[1] = 3221225472;
    v7[2] = sub_1000146EC;
    v7[3] = &unk_100268260;
    objc_copyWeak(&v8, &location);
    v5 = objc_retainBlock(v7);
    BPSStockholmSupportedInGizmoRegion();

    objc_destroyWeak(&v8);
    objc_destroyWeak(&location);
  }

  return v2;
}

- (id)username
{
  v2 = [(COSiCloudLoginViewController *)self account];
  v3 = [COSiCloudAuthController usernameForiCloudAccount:v2];

  return v3;
}

- (id)titleString
{
  v2 = +[NSBundle mainBundle];
  v3 = [v2 localizedStringForKey:@"APPLEID_TITLE" value:&stru_10026E598 table:@"Localizable"];

  return v3;
}

- (void)stockholmSupportedInGizmoRegion:(BOOL)a3
{
  v3 = a3;
  if (sub_10002D1FC())
  {
    v5 = +[COSFindMyController isDeviceLocatorEnabled];
  }

  else
  {
    v5 = 0;
  }

  v6 = [UIApp activeWatch];
  HasCapabilityForString = BPSDeviceHasCapabilityForString();

  v8 = [(COSiCloudLoginViewController *)self detailTextKeyForActivationLockEnabled:v5 findMyWatchSupported:HasCapabilityForString stockholmSupported:v3];
  detailTextKey = self->_detailTextKey;
  self->_detailTextKey = v8;

  self->_hasCheckedStockholm = 1;

  [(COSAppleIDLoginViewController *)self checkAndReleaseHold];
}

- (id)detailTextKeyForActivationLockEnabled:(BOOL)a3 findMyWatchSupported:(BOOL)a4 stockholmSupported:(BOOL)a5
{
  v6 = a4;
  v7 = a3;
  v8 = [NSMutableString stringWithString:@"APPLEID_WHY_SIGN_IN"];
  v9 = v8;
  if (v6)
  {
    [v8 appendFormat:@"_FIND_MY_VARIANT"];
  }

  else if (v7)
  {
    [v8 appendString:@"_ACTIVATION_LOCK_VARIANT"];
  }

  if (!a5)
  {
    [v9 appendString:@"_NO_APPLE_PAY"];
  }

  return v9;
}

- (id)detailString
{
  v3 = +[NSBundle mainBundle];
  v4 = [v3 localizedStringForKey:self->_detailTextKey value:&stru_10026E598 table:@"Localizable"];
  v5 = [(COSAppleIDLoginViewController *)self appendUsernameToDetailText:v4];

  return v5;
}

- (void)tappedSkipButton:(id)a3
{
  v4 = a3;
  v5 = pbb_accountsignin_log();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412546;
    v10 = self;
    v11 = 2080;
    v12 = "[COSiCloudLoginViewController tappedSkipButton:]";
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "%@ %s", buf, 0x16u);
  }

  [PBBridgeCAReporter recordSigninEventPair:2];
  [(COSiCloudLoginViewController *)self addFollowUpForPageWithCompletion:&stru_1002682A0];
  v6 = [UIApp setupController];
  v7 = [v6 pairingReportManager];

  [v7 addPairingTimeEventToPairingReportPlist:24 withValue:&__kCFBooleanTrue withError:0];
  v8.receiver = self;
  v8.super_class = COSiCloudLoginViewController;
  [(COSAppleIDLoginViewController *)&v8 tappedSkipButton:v4];
}

- (void)loggedInSuccessfullyWithBuddyControllerDoneBlock:(id)a3
{
  v4 = a3;
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_100014D98;
  v7[3] = &unk_1002682C8;
  v7[4] = self;
  [(COSiCloudLoginViewController *)self removeFollowupForPageWithCompletion:v7];
  [PBBridgeCAReporter recordSigninEventPair:1];
  v5 = [UIApp setupController];
  v6 = [v5 appleIDSignInModel];
  [v6 setHasSignedInToiCloud:1];

  [(COSAppleIDLoginViewController *)self saveiTunesStoreAccountToPairedDeviceIfForSameAppleID];
  if (sub_10002D1FC() && +[COSFindMyController isDeviceLocatorEnabled])
  {
    +[COSFindMyController recordShowingActivationLockDetailsForPairingDevice];
  }

  if (v4)
  {
    v4[2](v4);
  }
}

- (void)signInFailedWithError:(id)a3
{
  v4 = a3;
  v5 = [v4 domain];
  if (![v5 isEqualToString:@"com.apple.appleaccount"])
  {

    goto LABEL_5;
  }

  v6 = [v4 code];

  if (v6 != -6)
  {
LABEL_5:
    v9.receiver = self;
    v9.super_class = COSiCloudLoginViewController;
    [(COSAppleIDLoginViewController *)&v9 signInFailedWithError:v4];
    goto LABEL_6;
  }

  v7 = [UIApp setupController];
  v8 = [v7 appleIDSignInModel];
  [v8 setHasCombinedIDSSignInFailed:1];

  v10[0] = _NSConcreteStackBlock;
  v10[1] = 3221225472;
  v10[2] = sub_100014F60;
  v10[3] = &unk_1002682F0;
  v10[4] = self;
  [(COSiCloudLoginViewController *)self loggedInSuccessfullyWithBuddyControllerDoneBlock:v10];

LABEL_6:
}

- (id)localizedWaitScreenDescription
{
  v2 = +[UIApplication sharedApplication];
  v3 = [v2 isActivated];
  v4 = +[NSBundle mainBundle];
  v5 = v4;
  if (v3)
  {
    v6 = @"APPLEID_ACCOUNT_HOLD_DESCRIPTION";
  }

  else
  {
    v6 = @"ACTIVATION_TIME";
  }

  v7 = [v4 localizedStringForKey:v6 value:&stru_10026E598 table:@"Localizable"];

  return v7;
}

- (id)localizedTitle
{
  v2 = +[NSBundle mainBundle];
  v3 = [v2 localizedStringForKey:@"APPLEID_FOLLOWUP_TITLE" value:&stru_10026E598 table:@"Localizable"];

  return v3;
}

- (id)localizedInformativeText
{
  v2 = +[NSBundle mainBundle];
  v3 = [v2 localizedStringForKey:@"APPLEID_FOLLOWUP_DESCRIPTION" value:&stru_10026E598 table:@"Localizable"];

  return v3;
}

- (id)followUpActions
{
  v2 = +[NSBundle mainBundle];
  v3 = [v2 localizedStringForKey:@"SIGNIN_APPLE_ID" value:&stru_10026E598 table:@"Localizable"];
  v7 = v3;
  v4 = [NSURL URLWithString:@"bridge:FOLLOWUP=com.apple.Bridge.AppleID-FollowUp"];
  v8 = v4;
  v5 = [NSDictionary dictionaryWithObjects:&v8 forKeys:&v7 count:1];

  return v5;
}

- (void)_signInToAccountWithPassword:(id)a3
{
  v8 = _NSConcreteStackBlock;
  v9 = 3221225472;
  v10 = sub_1000152E8;
  v11 = &unk_100268358;
  v12 = self;
  v13 = a3;
  v4 = v13;
  v5 = objc_retainBlock(&v8);
  v6 = [v5 copy];
  primeBuysOnWatchCompletion = self->_primeBuysOnWatchCompletion;
  self->_primeBuysOnWatchCompletion = v6;
}

- (void)_successfullySignedIn
{
  primeBuysOnWatchCompletion = self->_primeBuysOnWatchCompletion;
  if (primeBuysOnWatchCompletion)
  {
    primeBuysOnWatchCompletion[2](primeBuysOnWatchCompletion, a2);
    v4 = self->_primeBuysOnWatchCompletion;
    self->_primeBuysOnWatchCompletion = 0;
  }
}

- (BOOL)holdBeforeDisplaying
{
  v10.receiver = self;
  v10.super_class = COSiCloudLoginViewController;
  v3 = [(COSAppleIDLoginViewController *)&v10 holdBeforeDisplaying];
  v4 = [objc_opt_class() appleIDServiceState];
  v5 = [v4 silentSignInSuccessful];

  if ((v5 & 1) == 0)
  {
    v6 = pbb_accountsignin_log();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      v7 = objc_opt_class();
      v8 = NSStringFromClass(v7);
      *buf = 138412290;
      v12 = v8;
      _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "Holding (%@) for Apple ID bag refresh", buf, 0xCu);
    }

    [(COSiCloudLoginViewController *)self updateAppleAccountProperties];
  }

  return v3;
}

- (void)updateAppleAccountProperties
{
  objc_initWeak(&location, self);
  v3 = [(COSiCloudLoginViewController *)self account];
  v4 = pbb_accountsignin_log();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v5 = objc_opt_class();
    v6 = NSStringFromClass(v5);
    *buf = 138412546;
    v12 = v6;
    v13 = 2112;
    v14 = v3;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "[%@] Updating properties for account: (%@)", buf, 0x16u);
  }

  v7 = [(COSAppleIDLoginViewController *)self accountStore];
  v8[0] = _NSConcreteStackBlock;
  v8[1] = 3221225472;
  v8[2] = sub_1000157CC;
  v8[3] = &unk_1002683A8;
  objc_copyWeak(&v9, &location);
  [v7 aa_updatePropertiesForAppleAccount:v3 completion:v8];

  objc_destroyWeak(&v9);
  objc_destroyWeak(&location);
}

- (void)updatedAppleAccountPropertiesWithAuthenticated:(BOOL)a3 error:(id)a4
{
  v4 = a3;
  v6 = a4;
  v7 = [(COSiCloudLoginViewController *)self account];
  v8 = pbb_accountsignin_log();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    v9 = objc_opt_class();
    v10 = NSStringFromClass(v9);
    *buf = 138413058;
    v15 = v10;
    v16 = 2112;
    v17 = v7;
    v18 = 1024;
    v19 = v4;
    v20 = 2112;
    v21 = v6;
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "[%@] Updated account properties for account: (%@); authenticated: (%d); error: (%@)", buf, 0x26u);
  }

  if (!v6)
  {
    v11 = [(COSAppleIDLoginViewController *)self accountStore];
    v12[0] = _NSConcreteStackBlock;
    v12[1] = 3221225472;
    v12[2] = sub_100015A84;
    v12[3] = &unk_1002682C8;
    v13 = v7;
    [v11 saveVerifiedAccount:v13 withCompletionHandler:v12];
  }

  self->_hasUpdatedAppleAccountProperties = 1;
  [(COSAppleIDLoginViewController *)self checkAndReleaseHold];
}

@end