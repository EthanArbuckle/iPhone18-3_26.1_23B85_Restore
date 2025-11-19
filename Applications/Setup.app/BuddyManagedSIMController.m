@interface BuddyManagedSIMController
- (BFFFlowItemDelegate)delegate;
- (BOOL)controllerNeedsToRun;
- (void)performExtendedInitializationWithCompletion:(id)a3;
@end

@implementation BuddyManagedSIMController

- (BOOL)controllerNeedsToRun
{
  v2 = [(BuddyManagedSIMController *)self runState];
  v3 = [(BYRunState *)v2 hasCompletedInitialRun];

  if (v3)
  {
    return BYIsRunningInStoreDemoMode() & 1;
  }

  v4 = [(BuddyManagedSIMController *)self managedConfiguration];
  v5 = [(MCProfileConnection *)v4 activationRecordIndicatesCloudConfigurationIsAvailable];
  v8 = 0;
  v6 = 1;
  if ((v5 & 1) == 0)
  {
    v9 = [(BuddyManagedSIMController *)self activationRecord];
    v8 = 1;
    v6 = [(BuddyActivationRecord *)v9 impliesDemod];
  }

  v11 = v6 & 1;
  if (v8)
  {
  }

  return v11;
}

- (void)performExtendedInitializationWithCompletion:(id)a3
{
  v26 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  v24 = 0;
  v22 = 0;
  v3 = 1;
  if ((BYIsRunningInStoreDemoMode() & 1) == 0)
  {
    v23 = [(BuddyManagedSIMController *)v26 activationRecord];
    v22 = 1;
    v3 = [v23 impliesDemod];
  }

  if (v22)
  {
  }

  if (v3)
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
  v9 = [(BuddyManagedSIMController *)v26 networkProvider];
  v10 = [NSNumber numberWithInt:![(BuddyNetworkProvider *)v9 connectedOverWiFiAndNetworkReachable]];
  v28[2] = v10;
  v11 = [NSDictionary dictionaryWithObjects:v28 forKeys:v27 count:3];
  v12 = [v4 flowWithOptions:v11];
  [(BuddyManagedSIMController *)v26 setSetupFlow:v12];

  v13 = [(BuddyManagedSIMController *)v26 setupFlow];
  LOBYTE(v5) = v13 == 0;

  if (v5)
  {
    (*(location[0] + 2))(location[0], 0);
    v21 = 1;
  }

  else
  {
    v14 = [(BuddyManagedSIMController *)v26 setupFlow];
    v15 = _NSConcreteStackBlock;
    v16 = -1073741824;
    v17 = 0;
    v18 = sub_10015F8CC;
    v19 = &unk_10032DB78;
    v20 = location[0];
    [(TSSIMSetupFlow *)v14 firstViewController:&v15];

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