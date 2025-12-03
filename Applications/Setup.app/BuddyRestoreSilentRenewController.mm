@interface BuddyRestoreSilentRenewController
- (BuddyRestoreSilentRenewController)init;
- (void)loadView;
- (void)performExtendedInitializationWithCompletion:(id)completion;
- (void)viewDidAppear:(BOOL)appear;
@end

@implementation BuddyRestoreSilentRenewController

- (BuddyRestoreSilentRenewController)init
{
  v3 = [NSBundle mainBundle:a2];
  v4 = [(NSBundle *)v3 localizedStringForKey:@"UPGRADING_ICLOUD_WORDY" value:&stru_10032F900 table:@"Localizable"];
  location = [(BuddyRestoreSilentRenewController *)self initWithSpinnerText:v4];
  v5 = location;

  objc_storeStrong(&location, 0);
  return v5;
}

- (void)loadView
{
  selfCopy = self;
  v4 = a2;
  v3.receiver = self;
  v3.super_class = BuddyRestoreSilentRenewController;
  [(BuddyRestoreSilentRenewController *)&v3 loadView];
  navigationItem = [(BuddyRestoreSilentRenewController *)selfCopy navigationItem];
  [navigationItem setHidesBackButton:1];
}

- (void)viewDidAppear:(BOOL)appear
{
  selfCopy = self;
  v5 = a2;
  appearCopy = appear;
  v3.receiver = self;
  v3.super_class = BuddyRestoreSilentRenewController;
  [(BuddyRestoreSilentRenewController *)&v3 viewDidAppear:appear];
}

- (void)performExtendedInitializationWithCompletion:(id)completion
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, completion);
  v3 = +[BYSecurityInterface sharedInterface];
  v4 = [v3 isHSA2EnabledForPrimaryAccount] ^ 1;

  if (v4)
  {
    v32 = _BYLoggingFacility();
    v31 = OS_LOG_TYPE_DEFAULT;
    if (os_log_type_enabled(v32, OS_LOG_TYPE_DEFAULT))
    {
      v5 = v32;
      v6 = v31;
      sub_10006AA68(buf);
      _os_log_impl(&_mh_execute_header, v5, v6, "Unable to perform silent renew; account is not HSA2", buf, 2u);
    }

    objc_storeStrong(&v32, 0);
    if (location[0])
    {
      (*(location[0] + 2))(location[0], 0);
    }

    v29 = 1;
  }

  else
  {
    v7 = +[ACAccountStore defaultStore];
    aa_primaryAppleAccount = [v7 aa_primaryAppleAccount];

    if (aa_primaryAppleAccount)
    {
      if (location[0])
      {
        (*(location[0] + 2))(location[0], 1);
        v24 = _BYLoggingFacility();
        v23 = OS_LOG_TYPE_DEFAULT;
        if (os_log_type_enabled(v24, OS_LOG_TYPE_DEFAULT))
        {
          v10 = v24;
          v11 = v23;
          sub_10006AA68(v22);
          _os_log_impl(&_mh_execute_header, v10, v11, "Renewing account credentials prior to restore...", v22, 2u);
        }

        objc_storeStrong(&v24, 0);
        v12 = +[ACAccountStore defaultStore];
        aa_primaryAppleAccount2 = [v12 aa_primaryAppleAccount];

        v35[0] = kACRenewCredentialsShouldAvoidUIKey;
        v36[0] = &__kCFBooleanTrue;
        v35[1] = kACRenewCredentialsShouldForceKey;
        v36[1] = &__kCFBooleanTrue;
        v20 = [NSDictionary dictionaryWithObjects:v36 forKeys:v35 count:2];
        v13 = +[ACAccountStore defaultStore];
        v14 = _NSConcreteStackBlock;
        v15 = -1073741824;
        v16 = 0;
        v17 = sub_1001B8BE8;
        v18 = &unk_10032E548;
        v19 = selfCopy;
        [v13 renewCredentialsForAccount:aa_primaryAppleAccount2 options:v20 completion:&v14];

        objc_storeStrong(&v19, 0);
        objc_storeStrong(&v20, 0);
        objc_storeStrong(&aa_primaryAppleAccount2, 0);
      }

      v29 = 0;
    }

    else
    {
      oslog = _BYLoggingFacility();
      v26 = OS_LOG_TYPE_DEFAULT;
      if (os_log_type_enabled(oslog, OS_LOG_TYPE_DEFAULT))
      {
        v8 = oslog;
        v9 = v26;
        sub_10006AA68(v25);
        _os_log_impl(&_mh_execute_header, v8, v9, "Unable to perform silent renew; no primary account!", v25, 2u);
      }

      objc_storeStrong(&oslog, 0);
      if (location[0])
      {
        (*(location[0] + 2))(location[0], 0);
      }

      v29 = 1;
    }

    objc_storeStrong(&aa_primaryAppleAccount, 0);
  }

  objc_storeStrong(location, 0);
}

@end