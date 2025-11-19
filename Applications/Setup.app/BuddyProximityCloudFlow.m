@interface BuddyProximityCloudFlow
+ (id)allowedFlowItems;
- (BuddyProximityCloudFlow)initWithNavigationController:(id)a3 flowDelegate:(id)a4 flowStarter:(id)a5 dependencyInjector:(id)a6;
- (void)performExtendedInitializationWithCompletion:(id)a3;
@end

@implementation BuddyProximityCloudFlow

- (BuddyProximityCloudFlow)initWithNavigationController:(id)a3 flowDelegate:(id)a4 flowStarter:(id)a5 dependencyInjector:(id)a6
{
  v18 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  v16 = 0;
  objc_storeStrong(&v16, a4);
  v15 = 0;
  objc_storeStrong(&v15, a5);
  v14 = 0;
  objc_storeStrong(&v14, a6);
  v9 = v18;
  v18 = 0;
  v13.receiver = v9;
  v13.super_class = BuddyProximityCloudFlow;
  v18 = [(BuddyProximityCloudFlow *)&v13 initWithNavigationController:location[0] flowDelegate:v16 flowStarter:v15 dependencyInjector:v14];
  objc_storeStrong(&v18, v18);
  if (v18)
  {
    v19[0] = objc_opt_class();
    v19[1] = objc_opt_class();
    v10 = [NSArray arrayWithObjects:v19 count:2];
    [v18 setClassList:v10];
  }

  v11 = v18;
  objc_storeStrong(&v14, 0);
  objc_storeStrong(&v15, 0);
  objc_storeStrong(&v16, 0);
  objc_storeStrong(location, 0);
  objc_storeStrong(&v18, 0);
  return v11;
}

+ (id)allowedFlowItems
{
  v3[0] = objc_opt_class();
  v3[1] = objc_opt_class();
  return [NSArray arrayWithObjects:v3 count:2];
}

- (void)performExtendedInitializationWithCompletion:(id)a3
{
  v38 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  v3 = [(BuddyProximityCloudFlow *)v38 managedConfiguration];
  v4 = [(MCProfileConnection *)v3 effectiveBoolValueForSetting:MCFeatureAccountModificationAllowed];

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
    v7 = [(BuddyProximityCloudFlow *)v38 networkProvider];
    v8 = ![(BuddyNetworkProvider *)v7 networkReachable];

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
      v11 = [(BuddyProximityCloudFlow *)v38 proximitySetupController];
      v12 = [(ProximitySetupController *)v11 information];
      v13 = [(SASProximityInformation *)v12 appleID];
      v14 = v13 != 0;

      v29 = v14;
      v15 = [(BuddyProximityCloudFlow *)v38 proximitySetupController];
      LOBYTE(v12) = [(ProximitySetupController *)v15 hasConnection];

      v28 = v12 & 1;
      v16 = +[ACAccountStore defaultStore];
      v17 = [v16 aa_primaryAppleAccount];
      LOBYTE(v12) = v17 != 0;

      v27 = v12 & 1;
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
        v19 = [(BuddyProximityCloudFlow *)v38 miscState];
        v25 = [(BuddyMiscState *)v19 migrationManager];

        if ([v25 requiresUpdateToMigrate] & 1) != 0 && (objc_msgSend(v25, "willMigrate"))
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

        objc_storeStrong(&v25, 0);
      }

      (*(location[0] + 2))(location[0], v26 & 1);
      v33 = 0;
    }
  }

  objc_storeStrong(location, 0);
}

@end