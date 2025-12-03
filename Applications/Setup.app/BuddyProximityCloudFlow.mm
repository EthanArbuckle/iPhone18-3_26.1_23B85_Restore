@interface BuddyProximityCloudFlow
+ (id)allowedFlowItems;
- (BuddyProximityCloudFlow)initWithNavigationController:(id)controller flowDelegate:(id)delegate flowStarter:(id)starter dependencyInjector:(id)injector;
- (void)performExtendedInitializationWithCompletion:(id)completion;
@end

@implementation BuddyProximityCloudFlow

- (BuddyProximityCloudFlow)initWithNavigationController:(id)controller flowDelegate:(id)delegate flowStarter:(id)starter dependencyInjector:(id)injector
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, controller);
  v16 = 0;
  objc_storeStrong(&v16, delegate);
  v15 = 0;
  objc_storeStrong(&v15, starter);
  v14 = 0;
  objc_storeStrong(&v14, injector);
  v9 = selfCopy;
  selfCopy = 0;
  v13.receiver = v9;
  v13.super_class = BuddyProximityCloudFlow;
  selfCopy = [(BuddyProximityCloudFlow *)&v13 initWithNavigationController:location[0] flowDelegate:v16 flowStarter:v15 dependencyInjector:v14];
  objc_storeStrong(&selfCopy, selfCopy);
  if (selfCopy)
  {
    v19[0] = objc_opt_class();
    v19[1] = objc_opt_class();
    v10 = [NSArray arrayWithObjects:v19 count:2];
    [selfCopy setClassList:v10];
  }

  v11 = selfCopy;
  objc_storeStrong(&v14, 0);
  objc_storeStrong(&v15, 0);
  objc_storeStrong(&v16, 0);
  objc_storeStrong(location, 0);
  objc_storeStrong(&selfCopy, 0);
  return v11;
}

+ (id)allowedFlowItems
{
  v3[0] = objc_opt_class();
  v3[1] = objc_opt_class();
  return [NSArray arrayWithObjects:v3 count:2];
}

- (void)performExtendedInitializationWithCompletion:(id)completion
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, completion);
  managedConfiguration = [(BuddyProximityCloudFlow *)selfCopy managedConfiguration];
  v4 = [(MCProfileConnection *)managedConfiguration effectiveBoolValueForSetting:MCFeatureAccountModificationAllowed];

  if (v4 == 2)
  {
    v36 = _BYLoggingFacility();
    v35 = OS_LOG_TYPE_DEFAULT;
    if (os_log_type_enabled(v36, OS_LOG_TYPE_DEFAULT))
    {
      v5 = v36;
      v6 = v35;
      sub_10006AA68(buf);
      _os_log_impl(&_mh_execute_header, v5, v6, "Skipping proximity sign in, account modification is restricted", buf, 2u);
    }

    objc_storeStrong(&v36, 0);
    (*(location[0] + 2))(location[0], 0);
    v33 = 1;
  }

  else
  {
    networkProvider = [(BuddyProximityCloudFlow *)selfCopy networkProvider];
    v8 = ![(BuddyNetworkProvider *)networkProvider networkReachable];

    if (v8)
    {
      oslog = _BYLoggingFacility();
      v31 = OS_LOG_TYPE_DEFAULT;
      if (os_log_type_enabled(oslog, OS_LOG_TYPE_DEFAULT))
      {
        v9 = oslog;
        v10 = v31;
        sub_10006AA68(v30);
        _os_log_impl(&_mh_execute_header, v9, v10, "Skipping proximity sign in, network is not reachable", v30, 2u);
      }

      objc_storeStrong(&oslog, 0);
      (*(location[0] + 2))(location[0], 0);
      v33 = 1;
    }

    else
    {
      proximitySetupController = [(BuddyProximityCloudFlow *)selfCopy proximitySetupController];
      information = [(ProximitySetupController *)proximitySetupController information];
      appleID = [(SASProximityInformation *)information appleID];
      v14 = appleID != 0;

      v29 = v14;
      proximitySetupController2 = [(BuddyProximityCloudFlow *)selfCopy proximitySetupController];
      LOBYTE(information) = [(ProximitySetupController *)proximitySetupController2 hasConnection];

      v28 = information & 1;
      v16 = +[ACAccountStore defaultStore];
      aa_primaryAppleAccount = [v16 aa_primaryAppleAccount];
      LOBYTE(information) = aa_primaryAppleAccount != 0;

      v27 = information & 1;
      v18 = 0;
      if (v14)
      {
        v18 = 0;
        if (v28)
        {
          v18 = v27 ^ 1;
        }
      }

      v26 = v18 & 1;
      if (v18)
      {
        miscState = [(BuddyProximityCloudFlow *)selfCopy miscState];
        migrationManager = [(BuddyMiscState *)miscState migrationManager];

        if ([migrationManager requiresUpdateToMigrate] & 1) != 0 && (objc_msgSend(migrationManager, "willMigrate"))
        {
          v24 = _BYLoggingFacility();
          v23 = OS_LOG_TYPE_DEFAULT;
          if (os_log_type_enabled(v24, OS_LOG_TYPE_DEFAULT))
          {
            v20 = v24;
            v21 = v23;
            sub_10006AA68(v22);
            _os_log_impl(&_mh_execute_header, v20, v21, "Skipping proximity sign in, update required to migrate", v22, 2u);
          }

          objc_storeStrong(&v24, 0);
          v26 = 0;
        }

        objc_storeStrong(&migrationManager, 0);
      }

      (*(location[0] + 2))(location[0], v26 & 1);
      v33 = 0;
    }
  }

  objc_storeStrong(location, 0);
}

@end