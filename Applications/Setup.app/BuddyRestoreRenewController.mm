@interface BuddyRestoreRenewController
- (BFFFlowItemDelegate)delegate;
- (id)viewController;
- (void)appleIDControllerFinished:(id)a3;
- (void)performExtendedInitializationWithCompletion:(id)a3;
@end

@implementation BuddyRestoreRenewController

- (void)performExtendedInitializationWithCompletion:(id)a3
{
  v4 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  if (location[0])
  {
    (*(location[0] + 2))(location[0], [(BuddyRestoreRenewController *)v4 forceReauthentication]);
  }

  objc_storeStrong(location, 0);
}

- (id)viewController
{
  v29 = self;
  v28[1] = a2;
  v2 = [(BuddyRestoreRenewController *)self signInController];

  if (v2)
  {
    v30 = [(BuddyRestoreRenewController *)v29 signInController];
  }

  else
  {
    v28[0] = objc_opt_new();
    location = [v28[0] aa_primaryAppleAccount];
    if (location)
    {
      v5 = [BuddyAppleIDController alloc];
      v6 = [(BuddyRestoreRenewController *)v29 passcodeCacheManager];
      v7 = [(BuddyRestoreRenewController *)v29 analyticsManager];
      v8 = [(BuddyRestoreRenewController *)v29 runState];
      v9 = +[BuddyFeatureFlags currentFlags];
      v10 = [(BuddyAppleIDController *)v5 initWithAccount:location passcodeCacheManager:v6 analyticsManager:v7 runState:v8 featureFlags:v9];
      [(BuddyRestoreRenewController *)v29 setAppleIDController:v10];

      v11 = [(BuddyRestoreRenewController *)v29 appleIDController];
      [(BuddyAppleIDController *)v11 setDelegate:v29];

      v12 = [(BuddyRestoreRenewController *)v29 delegate];
      v13 = [(BuddyRestoreRenewController *)v29 appleIDController];
      [(BuddyAppleIDController *)v13 setFlowItemDelegate:v12];

      v14 = [(BuddyRestoreRenewController *)v29 navigationController];
      v15 = [(BuddyRestoreRenewController *)v29 appleIDController];
      [(BuddyAppleIDController *)v15 setNavigationController:v14];

      v16 = [(BuddyRestoreRenewController *)v29 proximitySetupController];
      LOBYTE(v15) = [(ProximitySetupController *)v16 hasConnection];
      v17 = [(BuddyRestoreRenewController *)v29 appleIDController];
      [(BuddyAppleIDController *)v17 setHasProximityConnection:v15 & 1];

      v18 = [(BuddyRestoreRenewController *)v29 appleIDController];
      v19 = [location username];
      [(BuddyAppleIDController *)v18 setExistingAccountUsername:v19 accountType:1];

      v20 = [(BuddyRestoreRenewController *)v29 appleIDController];
      v21 = [(BuddyAppleIDController *)v20 upgradeAccountForRestoreAfterSoftwareUpdateSignInViewController];
      [(BuddyRestoreRenewController *)v29 setSignInController:v21];

      v30 = [(BuddyRestoreRenewController *)v29 signInController];
    }

    else
    {
      oslog = _BYLoggingFacility();
      v25 = OS_LOG_TYPE_DEFAULT;
      if (os_log_type_enabled(oslog, OS_LOG_TYPE_DEFAULT))
      {
        v3 = oslog;
        v4 = v25;
        sub_10006AA68(buf);
        _os_log_impl(&_mh_execute_header, v3, v4, "No primary account to use for post-software-update restore!", buf, 2u);
      }

      objc_storeStrong(&oslog, 0);
      v30 = 0;
    }

    objc_storeStrong(&location, 0);
    objc_storeStrong(v28, 0);
  }

  v22 = v30;

  return v22;
}

- (void)appleIDControllerFinished:(id)a3
{
  v7 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  v3 = location[0];
  v4 = [(BuddyRestoreRenewController *)v7 appleIDController];

  if (v3 == v4)
  {
    v5 = [(BuddyRestoreRenewController *)v7 delegate];
    [(BFFFlowItemDelegate *)v5 flowItemDone:v7];
  }

  objc_storeStrong(location, 0);
}

- (BFFFlowItemDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end