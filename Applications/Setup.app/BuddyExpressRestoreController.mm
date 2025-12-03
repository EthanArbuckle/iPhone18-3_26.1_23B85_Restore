@interface BuddyExpressRestoreController
- (BOOL)_ableToBackupBeforeRestore:(id)restore softwareUpdateRequired:(BOOL *)required;
- (BOOL)_isBackupFromProximityDevice:(id)device;
- (BOOL)controllerNeedsToRun;
- (BOOL)shouldTerminateProximityConnection;
- (id)dateForChosenBackup;
- (id)deviceNameForChosenBackup;
- (unint64_t)dataTransferMethod;
- (void)_presentNetworkWarning:(id)warning;
- (void)_suggestedBackupToRestore:(id)restore;
- (void)_validateBackupIsCompatible:(id)compatible completion:(id)completion;
- (void)continueTapped;
- (void)createBackupDataSource:(id)source;
- (void)createCloudDataSource:(id)source;
- (void)createDataProviderWithCustomization:(id)customization completion:(id)completion;
- (void)customizeTapped;
- (void)performExtendedInitializationWithCompletion:(id)completion;
- (void)viewWillAppear:(BOOL)appear;
@end

@implementation BuddyExpressRestoreController

- (void)viewWillAppear:(BOOL)appear
{
  selfCopy = self;
  v6 = a2;
  appearCopy = appear;
  v4.receiver = self;
  v4.super_class = BuddyExpressRestoreController;
  [(BuddyExpressRestoreController *)&v4 viewWillAppear:appear];
  buddyPreferences = [(BuddyExpressWelcomeController *)selfCopy buddyPreferences];
  [(BYPreferencesController *)buddyPreferences setObject:&__kCFBooleanFalse forKey:@"RestoreChoice"];
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
  selfCopy = self;
  v11[1] = a2;
  pendingRestoreState = [(BuddyExpressWelcomeController *)self pendingRestoreState];
  [(BuddyPendingRestoreState *)pendingRestoreState clearBackupItem];

  expressRestoreAnalytics = [(BuddyExpressRestoreController *)selfCopy expressRestoreAnalytics];
  [(BYAnalyticsExpressRestore *)expressRestoreAnalytics setRestoreChoice:3];

  if ([(BuddyExpressRestoreController *)selfCopy shouldTerminateProximityConnection])
  {
    v4 = dispatch_get_global_queue(0, 0);
    block = _NSConcreteStackBlock;
    v7 = -1073741824;
    v8 = 0;
    v9 = sub_10019289C;
    v10 = &unk_10032B0D0;
    v11[0] = selfCopy;
    dispatch_async(v4, &block);

    objc_storeStrong(v11, 0);
  }

  v5.receiver = selfCopy;
  v5.super_class = BuddyExpressRestoreController;
  [(BuddyExpressWelcomeController *)&v5 customizeTapped];
}

- (void)createDataProviderWithCustomization:(id)customization completion:(id)completion
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, customization);
  v13 = 0;
  objc_storeStrong(&v13, completion);
  v5 = selfCopy;
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

- (void)createBackupDataSource:(id)source
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, source);
  if ([(BuddyExpressRestoreController *)selfCopy isAbleToBackupBeforeRestore]|| (v3 = [(BuddyExpressRestoreController *)selfCopy backupItem], v4 = [(RestorableBackupItem *)v3 backupUDID], v5 = v4 == 0, v4, v3, v5))
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
    v12 = selfCopy;
    v13 = location[0];
    dispatch_async(v6, &v7);

    objc_storeStrong(&v13, 0);
    objc_storeStrong(&v12, 0);
    v14 = 0;
  }

  objc_storeStrong(location, 0);
}

- (void)createCloudDataSource:(id)source
{
  location[2] = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, source);
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
  snapshot = [(RestorableBackupItem *)v2 snapshot];
  date = [(MBSnapshot *)snapshot date];

  return date;
}

- (id)deviceNameForChosenBackup
{
  v2 = [(BuddyExpressRestoreController *)self backupItem:a2];
  snapshot = [(RestorableBackupItem *)v2 snapshot];
  deviceName = [(MBSnapshot *)snapshot deviceName];

  return deviceName;
}

- (BOOL)controllerNeedsToRun
{
  selfCopy = self;
  v24 = a2;
  v23.receiver = self;
  v23.super_class = BuddyExpressRestoreController;
  if (![(BuddyExpressWelcomeController *)&v23 controllerNeedsToRun])
  {
    return 0;
  }

  v2 = +[ACAccountStore defaultStore];
  aa_primaryAppleAccount = [v2 aa_primaryAppleAccount];
  v4 = aa_primaryAppleAccount != 0;

  v22 = v4;
  miscState = [(BuddyExpressWelcomeController *)selfCopy miscState];
  migrationManager = [(BuddyMiscState *)miscState migrationManager];
  willMigrate = [(BuddyTargetDeviceMigrationManager *)migrationManager willMigrate];

  v21 = willMigrate & 1;
  proximitySetupController = [(BuddyExpressRestoreController *)selfCopy proximitySetupController];
  LOBYTE(migrationManager) = [(ProximitySetupController *)proximitySetupController skipExpressRestore];

  v20 = migrationManager & 1;
  if ((willMigrate & 1) == 0 && (v20 & 1) == 0 && v22)
  {
    return 1;
  }

  proximitySetupController2 = [(BuddyExpressRestoreController *)selfCopy proximitySetupController];
  hasConnection = [(ProximitySetupController *)proximitySetupController2 hasConnection];

  v19 = hasConnection & 1;
  if ((hasConnection & 1) != 0 && (v21 & 1) == 0 && [(BuddyExpressRestoreController *)selfCopy shouldTerminateProximityConnection])
  {
    v11 = dispatch_get_global_queue(0, 0);
    block = _NSConcreteStackBlock;
    v14 = -1073741824;
    v15 = 0;
    v16 = sub_1001931D8;
    v17 = &unk_10032B0D0;
    v18 = selfCopy;
    dispatch_async(v11, &block);

    objc_storeStrong(&v18, 0);
  }

  return 0;
}

- (void)performExtendedInitializationWithCompletion:(id)completion
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, completion);
  v3 = dispatch_get_global_queue(25, 0);
  block = _NSConcreteStackBlock;
  v5 = -1073741824;
  v6 = 0;
  v7 = sub_100193338;
  v8 = &unk_10032AFD0;
  v9 = selfCopy;
  v10 = location[0];
  dispatch_async(v3, &block);

  objc_storeStrong(&v10, 0);
  objc_storeStrong(&v9, 0);
  objc_storeStrong(location, 0);
}

- (void)_suggestedBackupToRestore:(id)restore
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, restore);
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
        domain = [v72 domain];
        v62 = 1;
        v6 = +[NSString stringWithFormat:](NSString, "stringWithFormat:", @"<Error domain: %@, code %ld>", domain, [v72 code]);
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
    proximitySetupController = [(BuddyExpressRestoreController *)selfCopy proximitySetupController];
    information = [(ProximitySetupController *)proximitySetupController information];
    obj = v72;
    v11 = [BuddyBackupUtilities suggestedBackupForProximity:information deviceClass:v55 withManager:v71 error:&obj];
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
      proximitySetupController2 = [(BuddyExpressRestoreController *)selfCopy proximitySetupController];
      information2 = [(ProximitySetupController *)proximitySetupController2 information];
      deviceName = [(SASProximityInformation *)information2 deviceName];
      v15 = v52;
      v52 = deviceName;
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
            domain2 = [v72 domain];
            v46 = 1;
            v16 = +[NSString stringWithFormat:](NSString, "stringWithFormat:", @"<Error domain: %@, code %ld>", domain2, [v72 code]);
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

      snapshot = [v54 snapshot];
      deviceName2 = [snapshot deviceName];
      v23 = v52;
      v52 = deviceName2;

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
      v26 = selfCopy;
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

- (void)_validateBackupIsCompatible:(id)compatible completion:(id)completion
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, compatible);
  v20 = 0;
  objc_storeStrong(&v20, completion);
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
        softwareUpdateCache = [(BuddyExpressRestoreController *)selfCopy softwareUpdateCache];
        v8 = _NSConcreteStackBlock;
        v9 = -1073741824;
        v10 = 0;
        v11 = sub_100194550;
        v12 = &unk_10032C5C8;
        v13 = selfCopy;
        v14 = location[0];
        v15 = v20;
        [(BYSoftwareUpdateCache *)softwareUpdateCache scanUsingCache:1 withCompletion:&v8];

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

- (BOOL)_ableToBackupBeforeRestore:(id)restore softwareUpdateRequired:(BOOL *)required
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, restore);
  requiredCopy = required;
  v5 = +[BYPreferencesController buddyPreferencesInternal];
  v6 = [v5 BOOLForKey:@"AlwaysAttemptBackupAndRestore"];

  if (v6)
  {
    v86 = 1;
    v82 = 1;
  }

  else
  {
    proximitySetupController = [(BuddyExpressRestoreController *)selfCopy proximitySetupController];
    hasConnection = [(ProximitySetupController *)proximitySetupController hasConnection];

    if (hasConnection)
    {
      if ([(BuddyExpressRestoreController *)selfCopy _isBackupFromProximityDevice:location[0]])
      {
        proximitySetupController2 = [(BuddyExpressRestoreController *)selfCopy proximitySetupController];
        information = [(ProximitySetupController *)proximitySetupController2 information];
        isRestoring = [(SASProximityInformation *)information isRestoring];

        if (isRestoring)
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
          proximitySetupController3 = [(BuddyExpressRestoreController *)selfCopy proximitySetupController];
          information2 = [(ProximitySetupController *)proximitySetupController3 information];
          v20 = [(SASProximityInformation *)information2 isBackupEnabled]^ 1;

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
            proximitySetupController4 = [(BuddyExpressRestoreController *)selfCopy proximitySetupController];
            information3 = [(ProximitySetupController *)proximitySetupController4 information];
            connectedToWiFi = [(SASProximityInformation *)information3 connectedToWiFi];

            proximitySetupController5 = [(BuddyExpressRestoreController *)selfCopy proximitySetupController];
            information4 = [(ProximitySetupController *)proximitySetupController5 information];
            supportsCellularBackup = [(SASProximityInformation *)information4 supportsCellularBackup];

            proximitySetupController6 = [(BuddyExpressRestoreController *)selfCopy proximitySetupController];
            information5 = [(ProximitySetupController *)proximitySetupController6 information];
            hasInexpensiveCellularNetwork = [(SASProximityInformation *)information5 hasInexpensiveCellularNetwork];

            bOOLValue = 0;
            if (connectedToWiFi)
            {
              bOOLValue = [connectedToWiFi BOOLValue];
            }

            v66 = bOOLValue & 1;
            if ((bOOLValue & 1) == 0)
            {
              bOOLValue2 = [supportsCellularBackup BOOLValue];
              bOOLValue3 = 0;
              if (bOOLValue2)
              {
                bOOLValue3 = [hasInexpensiveCellularNetwork BOOLValue];
              }

              v66 = bOOLValue3 & 1;
            }

            if (v66)
            {
              v62 = +[NSCalendar currentCalendar];
              v61 = objc_alloc_init(NSDateComponents);
              v60 = +[NSDate date];
              [v61 setMonth:-1];
              snapshot = [location[0] snapshot];
              date = [snapshot date];
              v36 = [v62 dateByAddingComponents:v61 toDate:v60 options:0];
              v37 = [date compare:v36] == 1;

              v59 = v37;
              if (v37)
              {
                proximitySetupController7 = [(BuddyExpressRestoreController *)selfCopy proximitySetupController];
                information6 = [(ProximitySetupController *)proximitySetupController7 information];
                productVersion = [(SASProximityInformation *)information6 productVersion];

                v42 = +[UIDevice currentDevice];
                systemVersion = [(UIDevice *)v42 systemVersion];

                if ([BuddyBackupUtilities canRestoreBackupMadeOnVersion:productVersion toSystemVersion:systemVersion toSystemVersionFetchedFromCurrentSystemVersion:1])
                {
                  goto LABEL_46;
                }

                softwareUpdateCache = [(BuddyExpressRestoreController *)selfCopy softwareUpdateCache];
                latestUpdate = [(BYSoftwareUpdateCache *)softwareUpdateCache latestUpdate];

                if (latestUpdate)
                {
                  productVersion2 = [latestUpdate productVersion];
                  v47 = ![BuddyBackupUtilities canRestoreBackupMadeOnVersion:productVersion toSystemVersion:productVersion2 toSystemVersionFetchedFromCurrentSystemVersion:0];

                  if (v47)
                  {
                    v50 = _BYLoggingFacility();
                    if (os_log_type_enabled(v50, OS_LOG_TYPE_DEFAULT))
                    {
                      productVersion3 = [latestUpdate productVersion];
                      sub_100078180(v87, productVersion, productVersion3);
                      _os_log_impl(&_mh_execute_header, v50, OS_LOG_TYPE_DEFAULT, "Not offering Guide User to Backup as source device is on a newer version of iOS that this device cannot update to (%@ vs %@)", v87, 0x16u);
                    }

                    objc_storeStrong(&v50, 0);
                    v86 = 0;
                    v82 = 1;
                  }

                  else
                  {
                    if (requiredCopy)
                    {
                      *requiredCopy = 1;
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

                objc_storeStrong(&latestUpdate, 0);
                if (!v82)
                {
LABEL_46:
                  v86 = 1;
                  v82 = 1;
                }

                objc_storeStrong(&systemVersion, 0);
                objc_storeStrong(&productVersion, 0);
              }

              else
              {
                v58 = _BYLoggingFacility();
                v57 = OS_LOG_TYPE_DEFAULT;
                if (os_log_type_enabled(v58, OS_LOG_TYPE_DEFAULT))
                {
                  snapshot2 = [location[0] snapshot];
                  date2 = [snapshot2 date];
                  sub_10006AE18(v88, date2);
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

            objc_storeStrong(&hasInexpensiveCellularNetwork, 0);
            objc_storeStrong(&supportsCellularBackup, 0);
            objc_storeStrong(&connectedToWiFi, 0);
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

- (BOOL)_isBackupFromProximityDevice:(id)device
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, device);
  proximitySetupController = [(BuddyExpressRestoreController *)selfCopy proximitySetupController];
  information = [(ProximitySetupController *)proximitySetupController information];
  backupUUID = [(SASProximityInformation *)information backupUUID];

  backup = [location[0] backup];
  backupUUID2 = [backup backupUUID];
  v7 = [backupUUID2 isEqualToString:backupUUID];

  objc_storeStrong(&backupUUID, 0);
  objc_storeStrong(location, 0);
  return v7 & 1;
}

- (void)_presentNetworkWarning:(id)warning
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, warning);
  networkProvider = [(BuddyExpressRestoreController *)selfCopy networkProvider];
  backupItem = [(BuddyExpressRestoreController *)selfCopy backupItem];
  snapshot = [(RestorableBackupItem *)backupItem snapshot];
  v20 = [BuddyRestoreNetworkAlertController alertControllerForNetworkConnectionWithProvider:networkProvider estimatedRestoreSize:[(MBSnapshot *)snapshot estimatedRestoreSize]];

  if (v20)
  {
    v13 = _NSConcreteStackBlock;
    v14 = -1073741824;
    v15 = 0;
    v16 = sub_1001956C0;
    v17 = &unk_10032B120;
    v18 = location[0];
    [v20 setRestoreOverCellular:&v13];
    showModalWiFiSettingsBlock = [(BuddyExpressRestoreController *)selfCopy showModalWiFiSettingsBlock];
    v7 = _NSConcreteStackBlock;
    v8 = 3221225472;
    v9 = sub_1001956F8;
    v10 = &unk_10032B120;
    v11 = showModalWiFiSettingsBlock;
    [v20 setPresentWiFiSettings:&v7];
    v6 = [(BuddyExpressRestoreController *)selfCopy navigationController:v7];
    [v6 presentViewController:v20 animated:1 completion:0];

    objc_storeStrong(&v11, 0);
    objc_storeStrong(&showModalWiFiSettingsBlock, 0);
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
  proximitySetupController = [(BuddyExpressRestoreController *)self proximitySetupController];
  v3 = ![(ProximitySetupController *)proximitySetupController hasConnection];

  if (v3)
  {
    return 0;
  }

  proximitySetupController2 = [(BuddyExpressRestoreController *)self proximitySetupController];
  information = [(ProximitySetupController *)proximitySetupController2 information];
  appleID = [(SASProximityInformation *)information appleID];
  v7 = appleID != 0;

  v19 = v7;
  proximitySetupController3 = [(BuddyExpressRestoreController *)self proximitySetupController];
  information2 = [(ProximitySetupController *)proximitySetupController3 information];
  hasTransferrableTelephonyPlan = [(SASProximityInformation *)information2 hasTransferrableTelephonyPlan];
  bOOLValue = [hasTransferrableTelephonyPlan BOOLValue];

  v18 = bOOLValue & 1;
  proximitySetupController4 = [(BuddyExpressRestoreController *)self proximitySetupController];
  information3 = [(ProximitySetupController *)proximitySetupController4 information];
  supportsDeviceToDeviceMigration = [(SASProximityInformation *)information3 supportsDeviceToDeviceMigration];
  bOOLValue2 = [supportsDeviceToDeviceMigration BOOLValue];

  v16 = 0;
  if (!v19)
  {
    v16 = 0;
    if ((v18 & 1) == 0)
    {
      return !(bOOLValue2 & 1);
    }
  }

  return v16;
}

@end