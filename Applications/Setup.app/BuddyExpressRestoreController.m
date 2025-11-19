@interface BuddyExpressRestoreController
- (BOOL)_ableToBackupBeforeRestore:(id)a3 softwareUpdateRequired:(BOOL *)a4;
- (BOOL)_isBackupFromProximityDevice:(id)a3;
- (BOOL)controllerNeedsToRun;
- (BOOL)shouldTerminateProximityConnection;
- (id)dateForChosenBackup;
- (id)deviceNameForChosenBackup;
- (unint64_t)dataTransferMethod;
- (void)_presentNetworkWarning:(id)a3;
- (void)_suggestedBackupToRestore:(id)a3;
- (void)_validateBackupIsCompatible:(id)a3 completion:(id)a4;
- (void)continueTapped;
- (void)createBackupDataSource:(id)a3;
- (void)createCloudDataSource:(id)a3;
- (void)createDataProviderWithCustomization:(id)a3 completion:(id)a4;
- (void)customizeTapped;
- (void)performExtendedInitializationWithCompletion:(id)a3;
- (void)viewWillAppear:(BOOL)a3;
@end

@implementation BuddyExpressRestoreController

- (void)viewWillAppear:(BOOL)a3
{
  v7 = self;
  v6 = a2;
  v5 = a3;
  v4.receiver = self;
  v4.super_class = BuddyExpressRestoreController;
  [(BuddyExpressRestoreController *)&v4 viewWillAppear:a3];
  v3 = [(BuddyExpressWelcomeController *)v7 buddyPreferences];
  [(BYPreferencesController *)v3 setObject:&__kCFBooleanFalse forKey:@"RestoreChoice"];
}

- (void)continueTapped
{
  v8[2] = self;
  v8[1] = a2;
  v3 = _NSConcreteStackBlock;
  v4 = -1073741824;
  v5 = 0;
  v6 = sub_100192320;
  v7 = &unk_10032B2E0;
  v8[0] = self;
  [(BuddyExpressRestoreController *)self _presentNetworkWarning:&v3];
  objc_storeStrong(v8, 0);
}

- (void)customizeTapped
{
  v12 = self;
  v11[1] = a2;
  v2 = [(BuddyExpressWelcomeController *)self pendingRestoreState];
  [(BuddyPendingRestoreState *)v2 clearBackupItem];

  v3 = [(BuddyExpressRestoreController *)v12 expressRestoreAnalytics];
  [(BYAnalyticsExpressRestore *)v3 setRestoreChoice:3];

  if ([(BuddyExpressRestoreController *)v12 shouldTerminateProximityConnection])
  {
    v4 = dispatch_get_global_queue(0, 0);
    block = _NSConcreteStackBlock;
    v7 = -1073741824;
    v8 = 0;
    v9 = sub_10019289C;
    v10 = &unk_10032B0D0;
    v11[0] = v12;
    dispatch_async(v4, &block);

    objc_storeStrong(v11, 0);
  }

  v5.receiver = v12;
  v5.super_class = BuddyExpressRestoreController;
  [(BuddyExpressWelcomeController *)&v5 customizeTapped];
}

- (void)createDataProviderWithCustomization:(id)a3 completion:(id)a4
{
  v15 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  v13 = 0;
  objc_storeStrong(&v13, a4);
  v5 = v15;
  v7 = _NSConcreteStackBlock;
  v8 = -1073741824;
  v9 = 0;
  v10 = sub_100192A68;
  v11 = &unk_10032E150;
  v12 = v13;
  v6.receiver = v5;
  v6.super_class = BuddyExpressRestoreController;
  [(BuddyExpressWelcomeController *)&v6 createDataProviderWithCustomization:&stru_10032E128 completion:&v7];
  objc_storeStrong(&v12, 0);
  objc_storeStrong(&v13, 0);
  objc_storeStrong(location, 0);
}

- (void)createBackupDataSource:(id)a3
{
  v16 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  if ([(BuddyExpressRestoreController *)v16 isAbleToBackupBeforeRestore]|| (v3 = [(BuddyExpressRestoreController *)v16 backupItem], v4 = [(RestorableBackupItem *)v3 backupUDID], v5 = v4 == 0, v4, v3, v5))
  {
    (*(location[0] + 2))(location[0], 0);
    v14 = 1;
  }

  else
  {
    v6 = dispatch_get_global_queue(25, 0);
    v7 = _NSConcreteStackBlock;
    v8 = -1073741824;
    v9 = 0;
    v10 = sub_100192C64;
    v11 = &unk_10032AFD0;
    v12 = v16;
    v13 = location[0];
    dispatch_async(v6, &v7);

    objc_storeStrong(&v13, 0);
    objc_storeStrong(&v12, 0);
    v14 = 0;
  }

  objc_storeStrong(location, 0);
}

- (void)createCloudDataSource:(id)a3
{
  location[2] = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  (*(location[0] + 2))(location[0], 0);
  objc_storeStrong(location, 0);
}

- (unint64_t)dataTransferMethod
{
  if ([(BuddyExpressRestoreController *)self isAbleToBackupBeforeRestore])
  {
    return 2;
  }

  else
  {
    return 1;
  }
}

- (id)dateForChosenBackup
{
  v2 = [(BuddyExpressRestoreController *)self backupItem:a2];
  v3 = [(RestorableBackupItem *)v2 snapshot];
  v4 = [(MBSnapshot *)v3 date];

  return v4;
}

- (id)deviceNameForChosenBackup
{
  v2 = [(BuddyExpressRestoreController *)self backupItem:a2];
  v3 = [(RestorableBackupItem *)v2 snapshot];
  v4 = [(MBSnapshot *)v3 deviceName];

  return v4;
}

- (BOOL)controllerNeedsToRun
{
  v25 = self;
  v24 = a2;
  v23.receiver = self;
  v23.super_class = BuddyExpressRestoreController;
  if (![(BuddyExpressWelcomeController *)&v23 controllerNeedsToRun])
  {
    return 0;
  }

  v2 = +[ACAccountStore defaultStore];
  v3 = [v2 aa_primaryAppleAccount];
  v4 = v3 != 0;

  v22 = v4;
  v5 = [(BuddyExpressWelcomeController *)v25 miscState];
  v6 = [(BuddyMiscState *)v5 migrationManager];
  v7 = [(BuddyTargetDeviceMigrationManager *)v6 willMigrate];

  v21 = v7 & 1;
  v8 = [(BuddyExpressRestoreController *)v25 proximitySetupController];
  LOBYTE(v6) = [(ProximitySetupController *)v8 skipExpressRestore];

  v20 = v6 & 1;
  if ((v7 & 1) == 0 && (v20 & 1) == 0 && v22)
  {
    return 1;
  }

  v9 = [(BuddyExpressRestoreController *)v25 proximitySetupController];
  v10 = [(ProximitySetupController *)v9 hasConnection];

  v19 = v10 & 1;
  if ((v10 & 1) != 0 && (v21 & 1) == 0 && [(BuddyExpressRestoreController *)v25 shouldTerminateProximityConnection])
  {
    v11 = dispatch_get_global_queue(0, 0);
    block = _NSConcreteStackBlock;
    v14 = -1073741824;
    v15 = 0;
    v16 = sub_1001931D8;
    v17 = &unk_10032B0D0;
    v18 = v25;
    dispatch_async(v11, &block);

    objc_storeStrong(&v18, 0);
  }

  return 0;
}

- (void)performExtendedInitializationWithCompletion:(id)a3
{
  v12 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  v3 = dispatch_get_global_queue(25, 0);
  block = _NSConcreteStackBlock;
  v5 = -1073741824;
  v6 = 0;
  v7 = sub_100193338;
  v8 = &unk_10032AFD0;
  v9 = v12;
  v10 = location[0];
  dispatch_async(v3, &block);

  objc_storeStrong(&v10, 0);
  objc_storeStrong(&v9, 0);
  objc_storeStrong(location, 0);
}

- (void)_suggestedBackupToRestore:(id)a3
{
  v74 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  v72 = 0;
  v71 = objc_alloc_init(MBManager);
  v70 = _BYLoggingFacility();
  v69 = OS_LOG_TYPE_DEFAULT;
  if (os_log_type_enabled(v70, OS_LOG_TYPE_DEFAULT))
  {
    v3 = v70;
    v4 = v69;
    sub_10006AA68(buf);
    _os_log_impl(&_mh_execute_header, v3, v4, "Fetching backup list...", buf, 2u);
  }

  objc_storeStrong(&v70, 0);
  v66 = v72;
  v5 = [BuddyBackupUtilities getBackupListWithFiltering:0 manager:v71 retries:3 error:&v66];
  objc_storeStrong(&v72, v66);
  v67 = v5;
  if (v72)
  {
    v65 = _BYLoggingFacility();
    v64 = OS_LOG_TYPE_ERROR;
    if (os_log_type_enabled(v65, OS_LOG_TYPE_ERROR))
    {
      v62 = 0;
      v60 = 0;
      if (_BYIsInternalInstall())
      {
        v6 = v72;
      }

      else if (v72)
      {
        v63 = [v72 domain];
        v62 = 1;
        v6 = +[NSString stringWithFormat:](NSString, "stringWithFormat:", @"<Error domain: %@, code %ld>", v63, [v72 code]);
        v61 = v6;
        v60 = 1;
      }

      else
      {
        v6 = 0;
      }

      sub_100071CBC(v78, v6);
      _os_log_error_impl(&_mh_execute_header, v65, v64, "Failed to get backups: %{public}@", v78, 0xCu);
      if (v60)
      {
      }

      if (v62)
      {
      }
    }

    objc_storeStrong(&v65, 0);
    if (location[0])
    {
      (*(location[0] + 2))(location[0], 0, 0);
    }

    v59 = 1;
  }

  else
  {
    oslog = _BYLoggingFacility();
    v57 = OS_LOG_TYPE_DEFAULT;
    if (os_log_type_enabled(oslog, OS_LOG_TYPE_DEFAULT))
    {
      v7 = oslog;
      v8 = v57;
      sub_10006AA68(v56);
      _os_log_impl(&_mh_execute_header, v7, v8, "Searching for backup from source device...", v56, 2u);
    }

    objc_storeStrong(&oslog, 0);
    v55 = MGCopyAnswer();
    v9 = [(BuddyExpressRestoreController *)v74 proximitySetupController];
    v10 = [(ProximitySetupController *)v9 information];
    obj = v72;
    v11 = [BuddyBackupUtilities suggestedBackupForProximity:v10 deviceClass:v55 withManager:v71 error:&obj];
    objc_storeStrong(&v72, obj);
    v54 = v11;

    v52 = 0;
    if (v54)
    {
      v51 = _BYLoggingFacility();
      v50 = OS_LOG_TYPE_DEFAULT;
      if (os_log_type_enabled(v51, OS_LOG_TYPE_DEFAULT))
      {
        sub_10006AE18(v77, v54);
        _os_log_impl(&_mh_execute_header, v51, v50, "Found backup from source device: %@", v77, 0xCu);
      }

      objc_storeStrong(&v51, 0);
      v12 = [(BuddyExpressRestoreController *)v74 proximitySetupController];
      v13 = [(ProximitySetupController *)v12 information];
      v14 = [(SASProximityInformation *)v13 deviceName];
      v15 = v52;
      v52 = v14;
    }

    else
    {
      if (v72)
      {
        v49 = _BYLoggingFacility();
        v48 = OS_LOG_TYPE_ERROR;
        if (os_log_type_enabled(v49, OS_LOG_TYPE_ERROR))
        {
          v46 = 0;
          v44 = 0;
          if (_BYIsInternalInstall())
          {
            v16 = v72;
          }

          else if (v72)
          {
            v47 = [v72 domain];
            v46 = 1;
            v16 = +[NSString stringWithFormat:](NSString, "stringWithFormat:", @"<Error domain: %@, code %ld>", v47, [v72 code]);
            v45 = v16;
            v44 = 1;
          }

          else
          {
            v16 = 0;
          }

          sub_100071CBC(v76, v16);
          _os_log_error_impl(&_mh_execute_header, v49, v48, "Failed to find backup from proximity: %{public}@", v76, 0xCu);
          if (v44)
          {
          }

          if (v46)
          {
          }
        }

        objc_storeStrong(&v49, 0);
      }

      v43 = _BYLoggingFacility();
      v42 = OS_LOG_TYPE_DEFAULT;
      if (os_log_type_enabled(v43, OS_LOG_TYPE_DEFAULT))
      {
        v17 = v43;
        v18 = v42;
        sub_10006AA68(v41);
        _os_log_impl(&_mh_execute_header, v17, v18, "Searching for latest backup for current device...", v41, 2u);
      }

      objc_storeStrong(&v43, 0);
      v19 = [BuddyBackupUtilities suggestedBackupForCurrentDeviceWithBackups:v67];
      v20 = v54;
      v54 = v19;

      v21 = [v54 snapshot];
      v22 = [v21 deviceName];
      v23 = v52;
      v52 = v22;

      if (v54)
      {
        v40 = _BYLoggingFacility();
        v39 = OS_LOG_TYPE_DEFAULT;
        if (os_log_type_enabled(v40, OS_LOG_TYPE_DEFAULT))
        {
          sub_10006AE18(v75, v54);
          _os_log_impl(&_mh_execute_header, v40, v39, "Found backup: %@", v75, 0xCu);
        }

        objc_storeStrong(&v40, 0);
      }

      else
      {
        v38 = _BYLoggingFacility();
        v37 = OS_LOG_TYPE_DEFAULT;
        if (os_log_type_enabled(v38, OS_LOG_TYPE_DEFAULT))
        {
          v24 = v38;
          v25 = v37;
          sub_10006AA68(v36);
          _os_log_impl(&_mh_execute_header, v24, v25, "No appropriate backups found", v36, 2u);
        }

        objc_storeStrong(&v38, 0);
      }
    }

    if (v54)
    {
      v26 = v74;
      v27 = v54;
      v28 = _NSConcreteStackBlock;
      v29 = -1073741824;
      v30 = 0;
      v31 = sub_100194234;
      v32 = &unk_10032E1A0;
      v35 = location[0];
      v33 = v54;
      v34 = v52;
      [(BuddyExpressRestoreController *)v26 _validateBackupIsCompatible:v27 completion:&v28];
      objc_storeStrong(&v34, 0);
      objc_storeStrong(&v33, 0);
      objc_storeStrong(&v35, 0);
      v59 = 0;
    }

    else
    {
      if (location[0])
      {
        (*(location[0] + 2))(location[0], 0, 0);
      }

      v59 = 1;
    }

    objc_storeStrong(&v52, 0);
    objc_storeStrong(&v54, 0);
    objc_storeStrong(&v55, 0);
  }

  objc_storeStrong(&v67, 0);
  objc_storeStrong(&v71, 0);
  objc_storeStrong(&v72, 0);
  objc_storeStrong(location, 0);
}

- (void)_validateBackupIsCompatible:(id)a3 completion:(id)a4
{
  v22 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  v20 = 0;
  objc_storeStrong(&v20, a4);
  if (v20)
  {
    if (location[0])
    {
      if ([location[0] isCompatible])
      {
        (*(v20 + 2))(v20, 1);
        v19 = 1;
      }

      else
      {
        oslog = _BYLoggingFacility();
        v17 = OS_LOG_TYPE_DEFAULT;
        if (os_log_type_enabled(oslog, OS_LOG_TYPE_DEFAULT))
        {
          v5 = oslog;
          v6 = v17;
          sub_10006AA68(buf);
          _os_log_impl(&_mh_execute_header, v5, v6, "Backup is not compatible, checking to see if a Software Update is available...", buf, 2u);
        }

        objc_storeStrong(&oslog, 0);
        v7 = [(BuddyExpressRestoreController *)v22 softwareUpdateCache];
        v8 = _NSConcreteStackBlock;
        v9 = -1073741824;
        v10 = 0;
        v11 = sub_100194550;
        v12 = &unk_10032C5C8;
        v13 = v22;
        v14 = location[0];
        v15 = v20;
        [(BYSoftwareUpdateCache *)v7 scanUsingCache:1 withCompletion:&v8];

        objc_storeStrong(&v15, 0);
        objc_storeStrong(&v14, 0);
        objc_storeStrong(&v13, 0);
        v19 = 0;
      }
    }

    else
    {
      (*(v20 + 2))(v20, 0);
      v19 = 1;
    }
  }

  else
  {
    v19 = 1;
  }

  objc_storeStrong(&v20, 0);
  objc_storeStrong(location, 0);
}

- (BOOL)_ableToBackupBeforeRestore:(id)a3 softwareUpdateRequired:(BOOL *)a4
{
  v85 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  v83 = a4;
  v5 = +[BYPreferencesController buddyPreferencesInternal];
  v6 = [v5 BOOLForKey:@"AlwaysAttemptBackupAndRestore"];

  if (v6)
  {
    v86 = 1;
    v82 = 1;
  }

  else
  {
    v7 = [(BuddyExpressRestoreController *)v85 proximitySetupController];
    v8 = [(ProximitySetupController *)v7 hasConnection];

    if (v8)
    {
      if ([(BuddyExpressRestoreController *)v85 _isBackupFromProximityDevice:location[0]])
      {
        v13 = [(BuddyExpressRestoreController *)v85 proximitySetupController];
        v14 = [(ProximitySetupController *)v13 information];
        v15 = [(SASProximityInformation *)v14 isRestoring];

        if (v15)
        {
          v75 = _BYLoggingFacility();
          v74 = OS_LOG_TYPE_DEFAULT;
          if (os_log_type_enabled(v75, OS_LOG_TYPE_DEFAULT))
          {
            v16 = v75;
            v17 = v74;
            sub_10006AA68(v73);
            _os_log_impl(&_mh_execute_header, v16, v17, "Not offering Guide User to Backup as source device is restoring", v73, 2u);
          }

          objc_storeStrong(&v75, 0);
          v86 = 0;
          v82 = 1;
        }

        else
        {
          v18 = [(BuddyExpressRestoreController *)v85 proximitySetupController];
          v19 = [(ProximitySetupController *)v18 information];
          v20 = [(SASProximityInformation *)v19 isBackupEnabled]^ 1;

          if (v20)
          {
            v72 = _BYLoggingFacility();
            v71 = OS_LOG_TYPE_DEFAULT;
            if (os_log_type_enabled(v72, OS_LOG_TYPE_DEFAULT))
            {
              v21 = v72;
              v22 = v71;
              sub_10006AA68(v70);
              _os_log_impl(&_mh_execute_header, v21, v22, "Not offering Guide User to Backup as source device has backup disabled", v70, 2u);
            }

            objc_storeStrong(&v72, 0);
            v86 = 0;
            v82 = 1;
          }

          else
          {
            v23 = [(BuddyExpressRestoreController *)v85 proximitySetupController];
            v24 = [(ProximitySetupController *)v23 information];
            v69 = [(SASProximityInformation *)v24 connectedToWiFi];

            v25 = [(BuddyExpressRestoreController *)v85 proximitySetupController];
            v26 = [(ProximitySetupController *)v25 information];
            v68 = [(SASProximityInformation *)v26 supportsCellularBackup];

            v27 = [(BuddyExpressRestoreController *)v85 proximitySetupController];
            v28 = [(ProximitySetupController *)v27 information];
            v67 = [(SASProximityInformation *)v28 hasInexpensiveCellularNetwork];

            v29 = 0;
            if (v69)
            {
              v29 = [v69 BOOLValue];
            }

            v66 = v29 & 1;
            if ((v29 & 1) == 0)
            {
              v30 = [v68 BOOLValue];
              v31 = 0;
              if (v30)
              {
                v31 = [v67 BOOLValue];
              }

              v66 = v31 & 1;
            }

            if (v66)
            {
              v62 = +[NSCalendar currentCalendar];
              v61 = objc_alloc_init(NSDateComponents);
              v60 = +[NSDate date];
              [v61 setMonth:-1];
              v34 = [location[0] snapshot];
              v35 = [v34 date];
              v36 = [v62 dateByAddingComponents:v61 toDate:v60 options:0];
              v37 = [v35 compare:v36] == 1;

              v59 = v37;
              if (v37)
              {
                v40 = [(BuddyExpressRestoreController *)v85 proximitySetupController];
                v41 = [(ProximitySetupController *)v40 information];
                v56 = [(SASProximityInformation *)v41 productVersion];

                v42 = +[UIDevice currentDevice];
                v55 = [(UIDevice *)v42 systemVersion];

                if ([BuddyBackupUtilities canRestoreBackupMadeOnVersion:v56 toSystemVersion:v55 toSystemVersionFetchedFromCurrentSystemVersion:1])
                {
                  goto LABEL_46;
                }

                v43 = [(BuddyExpressRestoreController *)v85 softwareUpdateCache];
                v54 = [(BYSoftwareUpdateCache *)v43 latestUpdate];

                if (v54)
                {
                  v46 = [v54 productVersion];
                  v47 = ![BuddyBackupUtilities canRestoreBackupMadeOnVersion:v56 toSystemVersion:v46 toSystemVersionFetchedFromCurrentSystemVersion:0];

                  if (v47)
                  {
                    v50 = _BYLoggingFacility();
                    if (os_log_type_enabled(v50, OS_LOG_TYPE_DEFAULT))
                    {
                      v48 = [v54 productVersion];
                      sub_100078180(v87, v56, v48);
                      _os_log_impl(&_mh_execute_header, v50, OS_LOG_TYPE_DEFAULT, "Not offering Guide User to Backup as source device is on a newer version of iOS that this device cannot update to (%@ vs %@)", v87, 0x16u);
                    }

                    objc_storeStrong(&v50, 0);
                    v86 = 0;
                    v82 = 1;
                  }

                  else
                  {
                    if (v83)
                    {
                      *v83 = 1;
                    }

                    v82 = 0;
                  }
                }

                else
                {
                  v53 = _BYLoggingFacility();
                  v52 = OS_LOG_TYPE_DEFAULT;
                  if (os_log_type_enabled(v53, OS_LOG_TYPE_DEFAULT))
                  {
                    v44 = v53;
                    v45 = v52;
                    sub_10006AA68(v51);
                    _os_log_impl(&_mh_execute_header, v44, v45, "Not offering Guide User to Backup as source device is on a newer version of iOS that this device cannot update to (no update found)", v51, 2u);
                  }

                  objc_storeStrong(&v53, 0);
                  v86 = 0;
                  v82 = 1;
                }

                objc_storeStrong(&v54, 0);
                if (!v82)
                {
LABEL_46:
                  v86 = 1;
                  v82 = 1;
                }

                objc_storeStrong(&v55, 0);
                objc_storeStrong(&v56, 0);
              }

              else
              {
                v58 = _BYLoggingFacility();
                v57 = OS_LOG_TYPE_DEFAULT;
                if (os_log_type_enabled(v58, OS_LOG_TYPE_DEFAULT))
                {
                  v38 = [location[0] snapshot];
                  v39 = [v38 date];
                  sub_10006AE18(v88, v39);
                  _os_log_impl(&_mh_execute_header, v58, v57, "Not offering Guide User to Backup as backup is not new enough (created on %@)", v88, 0xCu);
                }

                objc_storeStrong(&v58, 0);
                v86 = 0;
                v82 = 1;
              }

              objc_storeStrong(&v60, 0);
              objc_storeStrong(&v61, 0);
              objc_storeStrong(&v62, 0);
            }

            else
            {
              oslog = _BYLoggingFacility();
              v64 = OS_LOG_TYPE_DEFAULT;
              if (os_log_type_enabled(oslog, OS_LOG_TYPE_DEFAULT))
              {
                v32 = oslog;
                v33 = v64;
                sub_10006AA68(v63);
                _os_log_impl(&_mh_execute_header, v32, v33, "Not offering Guide User to Backup as source device is not connected to Wi-Fi or an inexpensive cellular network", v63, 2u);
              }

              objc_storeStrong(&oslog, 0);
              v86 = 0;
              v82 = 1;
            }

            objc_storeStrong(&v67, 0);
            objc_storeStrong(&v68, 0);
            objc_storeStrong(&v69, 0);
          }
        }
      }

      else
      {
        v78 = _BYLoggingFacility();
        v77 = OS_LOG_TYPE_DEFAULT;
        if (os_log_type_enabled(v78, OS_LOG_TYPE_DEFAULT))
        {
          v11 = v78;
          v12 = v77;
          sub_10006AA68(v76);
          _os_log_impl(&_mh_execute_header, v11, v12, "Not offering Guide User to Backup as chosen backup is not for source device", v76, 2u);
        }

        objc_storeStrong(&v78, 0);
        v86 = 0;
        v82 = 1;
      }
    }

    else
    {
      v81 = _BYLoggingFacility();
      v80 = OS_LOG_TYPE_DEFAULT;
      if (os_log_type_enabled(v81, OS_LOG_TYPE_DEFAULT))
      {
        v9 = v81;
        v10 = v80;
        sub_10006AA68(buf);
        _os_log_impl(&_mh_execute_header, v9, v10, "Not offering Guide User to Backup as no connection to source device", buf, 2u);
      }

      objc_storeStrong(&v81, 0);
      v86 = 0;
      v82 = 1;
    }
  }

  objc_storeStrong(location, 0);
  return v86 & 1;
}

- (BOOL)_isBackupFromProximityDevice:(id)a3
{
  v11 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  v3 = [(BuddyExpressRestoreController *)v11 proximitySetupController];
  v4 = [(ProximitySetupController *)v3 information];
  v9 = [(SASProximityInformation *)v4 backupUUID];

  v5 = [location[0] backup];
  v6 = [v5 backupUUID];
  v7 = [v6 isEqualToString:v9];

  objc_storeStrong(&v9, 0);
  objc_storeStrong(location, 0);
  return v7 & 1;
}

- (void)_presentNetworkWarning:(id)a3
{
  v22 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  v3 = [(BuddyExpressRestoreController *)v22 networkProvider];
  v4 = [(BuddyExpressRestoreController *)v22 backupItem];
  v5 = [(RestorableBackupItem *)v4 snapshot];
  v20 = [BuddyRestoreNetworkAlertController alertControllerForNetworkConnectionWithProvider:v3 estimatedRestoreSize:[(MBSnapshot *)v5 estimatedRestoreSize]];

  if (v20)
  {
    v13 = _NSConcreteStackBlock;
    v14 = -1073741824;
    v15 = 0;
    v16 = sub_1001956C0;
    v17 = &unk_10032B120;
    v18 = location[0];
    [v20 setRestoreOverCellular:&v13];
    v12 = [(BuddyExpressRestoreController *)v22 showModalWiFiSettingsBlock];
    v7 = _NSConcreteStackBlock;
    v8 = 3221225472;
    v9 = sub_1001956F8;
    v10 = &unk_10032B120;
    v11 = v12;
    [v20 setPresentWiFiSettings:&v7];
    v6 = [(BuddyExpressRestoreController *)v22 navigationController:v7];
    [v6 presentViewController:v20 animated:1 completion:0];

    objc_storeStrong(&v11, 0);
    objc_storeStrong(&v12, 0);
    objc_storeStrong(&v18, 0);
    v19 = 0;
  }

  else
  {
    (*(location[0] + 2))(location[0], 0);
    v19 = 1;
  }

  objc_storeStrong(&v20, 0);
  objc_storeStrong(location, 0);
}

- (BOOL)shouldTerminateProximityConnection
{
  v2 = [(BuddyExpressRestoreController *)self proximitySetupController];
  v3 = ![(ProximitySetupController *)v2 hasConnection];

  if (v3)
  {
    return 0;
  }

  v4 = [(BuddyExpressRestoreController *)self proximitySetupController];
  v5 = [(ProximitySetupController *)v4 information];
  v6 = [(SASProximityInformation *)v5 appleID];
  v7 = v6 != 0;

  v19 = v7;
  v8 = [(BuddyExpressRestoreController *)self proximitySetupController];
  v9 = [(ProximitySetupController *)v8 information];
  v10 = [(SASProximityInformation *)v9 hasTransferrableTelephonyPlan];
  v11 = [v10 BOOLValue];

  v18 = v11 & 1;
  v12 = [(BuddyExpressRestoreController *)self proximitySetupController];
  v13 = [(ProximitySetupController *)v12 information];
  v14 = [(SASProximityInformation *)v13 supportsDeviceToDeviceMigration];
  v15 = [v14 BOOLValue];

  v16 = 0;
  if (!v19)
  {
    v16 = 0;
    if ((v18 & 1) == 0)
    {
      return !(v15 & 1);
    }
  }

  return v16;
}

@end