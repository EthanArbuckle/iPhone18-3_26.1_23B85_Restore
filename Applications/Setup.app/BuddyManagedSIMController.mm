@interface BuddyManagedSIMController
- (BFFFlowItemDelegate)delegate;
- (BOOL)controllerNeedsToRun;
- (void)performExtendedInitializationWithCompletion:(id)completion;
@end

@implementation BuddyManagedSIMController

- (BOOL)controllerNeedsToRun
{
  runState = [(BuddyManagedSIMController *)self runState];
  hasCompletedInitialRun = [(BYRunState *)runState hasCompletedInitialRun];

  if (hasCompletedInitialRun)
  {
    return BYIsRunningInStoreDemoMode() & 1;
  }

  managedConfiguration = [(BuddyManagedSIMController *)self managedConfiguration];
  activationRecordIndicatesCloudConfigurationIsAvailable = [(MCProfileConnection *)managedConfiguration activationRecordIndicatesCloudConfigurationIsAvailable];
  v8 = 0;
  impliesDemod = 1;
  if ((activationRecordIndicatesCloudConfigurationIsAvailable & 1) == 0)
  {
    activationRecord = [(BuddyManagedSIMController *)self activationRecord];
    v8 = 1;
    impliesDemod = [(BuddyActivationRecord *)activationRecord impliesDemod];
  }

  v11 = impliesDemod & 1;
  if (v8)
  {
  }

  return v11;
}

- (void)performExtendedInitializationWithCompletion:(id)completion
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, completion);
  v24 = 0;
  v22 = 0;
  impliesDemod = 1;
  if ((BYIsRunningInStoreDemoMode() & 1) == 0)
  {
    activationRecord = [(BuddyManagedSIMController *)selfCopy activationRecord];
    v22 = 1;
    impliesDemod = [activationRecord impliesDemod];
  }

  if (v22)
  {
  }

  if (impliesDemod)
  {
    v24 = 1;
  }

  v4 = sub_10015F4A0();
  v5 = sub_10015F5B4();
  v27[0] = v5;
  v28[0] = &off_10033D298;
  v6 = sub_10015F6BC();
  v27[1] = v6;
  v7 = [NSNumber numberWithBool:v24 & 1];
  v28[1] = v7;
  v8 = sub_10015F7C4();
  v27[2] = v8;
  networkProvider = [(BuddyManagedSIMController *)selfCopy networkProvider];
  v10 = [NSNumber numberWithInt:![(BuddyNetworkProvider *)networkProvider connectedOverWiFiAndNetworkReachable]];
  v28[2] = v10;
  v11 = [NSDictionary dictionaryWithObjects:v28 forKeys:v27 count:3];
  v12 = [v4 flowWithOptions:v11];
  [(BuddyManagedSIMController *)selfCopy setSetupFlow:v12];

  setupFlow = [(BuddyManagedSIMController *)selfCopy setupFlow];
  LOBYTE(v5) = setupFlow == 0;

  if (v5)
  {
    (*(location[0] + 2))(location[0], 0);
    v21 = 1;
  }

  else
  {
    setupFlow2 = [(BuddyManagedSIMController *)selfCopy setupFlow];
    v15 = _NSConcreteStackBlock;
    v16 = -1073741824;
    v17 = 0;
    v18 = sub_10015F8CC;
    v19 = &unk_10032DB78;
    v20 = location[0];
    [(TSSIMSetupFlow *)setupFlow2 firstViewController:&v15];

    objc_storeStrong(&v20, 0);
    v21 = 0;
  }

  objc_storeStrong(location, 0);
}

- (BFFFlowItemDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end