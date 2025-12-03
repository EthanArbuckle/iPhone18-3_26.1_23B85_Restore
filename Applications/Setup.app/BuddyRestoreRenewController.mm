@interface BuddyRestoreRenewController
- (BFFFlowItemDelegate)delegate;
- (id)viewController;
- (void)appleIDControllerFinished:(id)finished;
- (void)performExtendedInitializationWithCompletion:(id)completion;
@end

@implementation BuddyRestoreRenewController

- (void)performExtendedInitializationWithCompletion:(id)completion
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, completion);
  if (location[0])
  {
    (*(location[0] + 2))(location[0], [(BuddyRestoreRenewController *)selfCopy forceReauthentication]);
  }

  objc_storeStrong(location, 0);
}

- (id)viewController
{
  selfCopy = self;
  v28[1] = a2;
  signInController = [(BuddyRestoreRenewController *)self signInController];

  if (signInController)
  {
    signInController2 = [(BuddyRestoreRenewController *)selfCopy signInController];
  }

  else
  {
    v28[0] = objc_opt_new();
    location = [v28[0] aa_primaryAppleAccount];
    if (location)
    {
      v5 = [BuddyAppleIDController alloc];
      passcodeCacheManager = [(BuddyRestoreRenewController *)selfCopy passcodeCacheManager];
      analyticsManager = [(BuddyRestoreRenewController *)selfCopy analyticsManager];
      runState = [(BuddyRestoreRenewController *)selfCopy runState];
      v9 = +[BuddyFeatureFlags currentFlags];
      v10 = [(BuddyAppleIDController *)v5 initWithAccount:location passcodeCacheManager:passcodeCacheManager analyticsManager:analyticsManager runState:runState featureFlags:v9];
      [(BuddyRestoreRenewController *)selfCopy setAppleIDController:v10];

      appleIDController = [(BuddyRestoreRenewController *)selfCopy appleIDController];
      [(BuddyAppleIDController *)appleIDController setDelegate:selfCopy];

      delegate = [(BuddyRestoreRenewController *)selfCopy delegate];
      appleIDController2 = [(BuddyRestoreRenewController *)selfCopy appleIDController];
      [(BuddyAppleIDController *)appleIDController2 setFlowItemDelegate:delegate];

      navigationController = [(BuddyRestoreRenewController *)selfCopy navigationController];
      appleIDController3 = [(BuddyRestoreRenewController *)selfCopy appleIDController];
      [(BuddyAppleIDController *)appleIDController3 setNavigationController:navigationController];

      proximitySetupController = [(BuddyRestoreRenewController *)selfCopy proximitySetupController];
      LOBYTE(appleIDController3) = [(ProximitySetupController *)proximitySetupController hasConnection];
      appleIDController4 = [(BuddyRestoreRenewController *)selfCopy appleIDController];
      [(BuddyAppleIDController *)appleIDController4 setHasProximityConnection:appleIDController3 & 1];

      appleIDController5 = [(BuddyRestoreRenewController *)selfCopy appleIDController];
      username = [location username];
      [(BuddyAppleIDController *)appleIDController5 setExistingAccountUsername:username accountType:1];

      appleIDController6 = [(BuddyRestoreRenewController *)selfCopy appleIDController];
      upgradeAccountForRestoreAfterSoftwareUpdateSignInViewController = [(BuddyAppleIDController *)appleIDController6 upgradeAccountForRestoreAfterSoftwareUpdateSignInViewController];
      [(BuddyRestoreRenewController *)selfCopy setSignInController:upgradeAccountForRestoreAfterSoftwareUpdateSignInViewController];

      signInController2 = [(BuddyRestoreRenewController *)selfCopy signInController];
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
      signInController2 = 0;
    }

    objc_storeStrong(&location, 0);
    objc_storeStrong(v28, 0);
  }

  v22 = signInController2;

  return v22;
}

- (void)appleIDControllerFinished:(id)finished
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, finished);
  v3 = location[0];
  appleIDController = [(BuddyRestoreRenewController *)selfCopy appleIDController];

  if (v3 == appleIDController)
  {
    delegate = [(BuddyRestoreRenewController *)selfCopy delegate];
    [(BFFFlowItemDelegate *)delegate flowItemDone:selfCopy];
  }

  objc_storeStrong(location, 0);
}

- (BFFFlowItemDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end