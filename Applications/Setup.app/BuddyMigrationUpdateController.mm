@interface BuddyMigrationUpdateController
- (BuddyMigrationUpdateController)init;
- (void)_prepareForSoftwareUpdateToBuild:(id)build completion:(id)completion;
- (void)performExtendedInitializationWithCompletion:(id)completion;
- (void)softwareUpdateController:(id)controller didFailToInstallUpdateWithError:(id)error;
- (void)softwareUpdateController:(id)controller didStartInstallForUpdate:(id)update;
- (void)softwareUpdateController:(id)controller prepareToInstallUpdate:(id)update completion:(id)completion;
- (void)viewDidAppear:(BOOL)appear;
@end

@implementation BuddyMigrationUpdateController

- (BuddyMigrationUpdateController)init
{
  v6 = a2;
  location = 0;
  v5.receiver = self;
  v5.super_class = BuddyMigrationUpdateController;
  v2 = [(BuddySoftwareUpdateController *)&v5 init];
  location = v2;
  objc_storeStrong(&location, v2);
  if (v2)
  {
    [location setSoftwareUpdateDelegate:location];
  }

  v3 = location;
  objc_storeStrong(&location, 0);
  return v3;
}

- (void)viewDidAppear:(BOOL)appear
{
  selfCopy = self;
  v13 = a2;
  appearCopy = appear;
  v11.receiver = self;
  v11.super_class = BuddyMigrationUpdateController;
  [(BuddySoftwareUpdateController *)&v11 viewDidAppear:appear];
  if (![(BuddyMigrationUpdateController *)selfCopy ableToMigrateWithUpdate])
  {
    v4 = _NSConcreteStackBlock;
    v5 = -1073741824;
    v6 = 0;
    v7 = sub_1000BE170;
    v8 = &unk_10032B0D0;
    v9 = selfCopy;
    location = [BuddyRestoreHelpers alertForBackupError:0 okButtonAction:&v4];
    navigationController = [(BuddyMigrationUpdateController *)selfCopy navigationController];
    [navigationController presentViewController:location animated:1 completion:0];

    objc_storeStrong(&location, 0);
    objc_storeStrong(&v9, 0);
  }
}

- (void)_prepareForSoftwareUpdateToBuild:(id)build completion:(id)completion
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, build);
  v34 = 0;
  objc_storeStrong(&v34, completion);
  v33 = _BYLoggingFacility();
  v32 = OS_LOG_TYPE_DEFAULT;
  if (os_log_type_enabled(v33, OS_LOG_TYPE_DEFAULT))
  {
    sub_10006AE18(buf, location[0]);
    _os_log_impl(&_mh_execute_header, v33, v32, "Preparing to install update to build %@...", buf, 0xCu);
  }

  objc_storeStrong(&v33, 0);
  willPerformSoftwareUpdateBlock = [(BuddyMigrationUpdateController *)selfCopy willPerformSoftwareUpdateBlock];

  if (willPerformSoftwareUpdateBlock)
  {
    willPerformSoftwareUpdateBlock2 = [(BuddyMigrationUpdateController *)selfCopy willPerformSoftwareUpdateBlock];
    willPerformSoftwareUpdateBlock2[2](willPerformSoftwareUpdateBlock2);
  }

  v7 = [BuddyMigrationState alloc];
  v31 = [(BuddyMigrationState *)v7 initWithProductBuild:location[0] intent:0];
  oslog = _BYLoggingFacility();
  v29 = OS_LOG_TYPE_DEFAULT;
  if (os_log_type_enabled(oslog, OS_LOG_TYPE_DEFAULT))
  {
    v8 = oslog;
    v9 = v29;
    sub_10006AA68(v28);
    _os_log_impl(&_mh_execute_header, v8, v9, "Persisting migration state to disk...", v28, 2u);
  }

  objc_storeStrong(&oslog, 0);
  v27 = _BYLoggingFacility();
  v26 = OS_LOG_TYPE_DEFAULT;
  if (os_log_type_enabled(v27, OS_LOG_TYPE_DEFAULT))
  {
    sub_10006AE18(v37, v31);
    _os_log_impl(&_mh_execute_header, v27, v26, "%@", v37, 0xCu);
  }

  objc_storeStrong(&v27, 0);
  v10 = v31;
  buddyPreferencesExcludedFromBackup = [(BuddyMigrationUpdateController *)selfCopy buddyPreferencesExcludedFromBackup];
  [v10 persistUsingPreferences:buddyPreferencesExcludedFromBackup];

  buddyPreferences = [(BuddyMigrationUpdateController *)selfCopy buddyPreferences];
  [(BYPreferencesController *)buddyPreferences persist];

  settingsManager = [(BuddyMigrationUpdateController *)selfCopy settingsManager];
  [(BFFSettingsManager *)settingsManager hideStashInSafeHavenAsProvisional:1];

  v25 = _BYLoggingFacility();
  v24 = OS_LOG_TYPE_DEFAULT;
  if (os_log_type_enabled(v25, OS_LOG_TYPE_DEFAULT))
  {
    v14 = v25;
    v15 = v24;
    sub_10006AA68(v23);
    _os_log_impl(&_mh_execute_header, v14, v15, "Suspending proximity connection...", v23, 2u);
  }

  objc_storeStrong(&v25, 0);
  proximitySetupController = [(BuddyMigrationUpdateController *)selfCopy proximitySetupController];
  v17 = _NSConcreteStackBlock;
  v18 = -1073741824;
  v19 = 0;
  v20 = sub_1000BE5A0;
  v21 = &unk_10032B120;
  v22 = v34;
  [(ProximitySetupController *)proximitySetupController suspendConnectionForSoftwareUpdate:&v17];

  objc_storeStrong(&v22, 0);
  objc_storeStrong(&v31, 0);
  objc_storeStrong(&v34, 0);
  objc_storeStrong(location, 0);
}

- (void)performExtendedInitializationWithCompletion:(id)completion
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, completion);
  miscState = [(BuddyMigrationUpdateController *)selfCopy miscState];
  migrationManager = [(BuddyMiscState *)miscState migrationManager];
  forceUpdateToMigrate = [(BuddyTargetDeviceMigrationManager *)migrationManager forceUpdateToMigrate];

  v41 = forceUpdateToMigrate & 1;
  if (forceUpdateToMigrate)
  {
    v40 = _BYLoggingFacility();
    v39 = OS_LOG_TYPE_DEFAULT;
    if (os_log_type_enabled(v40, OS_LOG_TYPE_DEFAULT))
    {
      v6 = v40;
      v7 = v39;
      sub_10006AA68(buf);
      _os_log_impl(&_mh_execute_header, v6, v7, "Forcing software update for migration...", buf, 2u);
    }

    objc_storeStrong(&v40, 0);
    v8 = +[BYPreferencesController buddyPreferencesInternal];
    [v8 setObject:&__kCFBooleanFalse forKey:@"RequireSoftwareUpdateForMigration"];
  }

  miscState2 = [(BuddyMigrationUpdateController *)selfCopy miscState];
  migrationManager2 = [(BuddyMiscState *)miscState2 migrationManager];
  requiresUpdateToMigrate = [(BuddyTargetDeviceMigrationManager *)migrationManager2 requiresUpdateToMigrate];

  v37 = requiresUpdateToMigrate & 1;
  if (requiresUpdateToMigrate & 1) != 0 || (v41)
  {
    proximitySetupController = [(BuddyMigrationUpdateController *)selfCopy proximitySetupController];
    productVersion = [(ProximitySetupController *)proximitySetupController productVersion];

    update = [(BuddySoftwareUpdateController *)selfCopy update];
    productVersion2 = [(SUDescriptor *)update productVersion];
    v15 = [SASSystemInformation compareProductVersion:productVersion toProductVersion:productVersion2]!= 1;
    [(BuddyMigrationUpdateController *)selfCopy setAbleToMigrateWithUpdate:v15];

    if (v41)
    {
      update2 = [(BuddySoftwareUpdateController *)selfCopy update];
      [(BuddyMigrationUpdateController *)selfCopy setAbleToMigrateWithUpdate:update2 != 0];
    }

    v17 = +[BYPreferencesController buddyPreferencesInternal];
    v18 = [v17 BOOLForKey:@"FakeSoftwareUpdate"];

    if (v18)
    {
      [(BuddyMigrationUpdateController *)selfCopy _prepareForSoftwareUpdateToBuild:@"1A1" completion:&stru_10032C378];
      v36 = 1;
    }

    else
    {
      v28 = _NSConcreteStackBlock;
      v29 = -1073741824;
      v30 = 0;
      v31 = sub_1000BEC64;
      v32 = &unk_10032B120;
      v33 = location[0];
      v34 = objc_retainBlock(&v28);
      if ([(BuddySoftwareUpdateController *)selfCopy scannedForUpdate]&& [(BuddyMigrationUpdateController *)selfCopy ableToMigrateWithUpdate])
      {
        (*(v34 + 2))();
        v36 = 1;
      }

      else
      {
        v19 = selfCopy;
        v20 = _NSConcreteStackBlock;
        v21 = -1073741824;
        v22 = 0;
        v23 = sub_1000BEF9C;
        v24 = &unk_10032C3A0;
        v25 = selfCopy;
        v26 = productVersion;
        v27 = v34;
        [(BuddySoftwareUpdateController *)v19 scanForUpdateCompletion:&v20];
        objc_storeStrong(&v27, 0);
        objc_storeStrong(&v26, 0);
        objc_storeStrong(&v25, 0);
        v36 = 0;
      }

      objc_storeStrong(&v34, 0);
      objc_storeStrong(&v33, 0);
    }

    objc_storeStrong(&productVersion, 0);
  }

  else
  {
    if (location[0])
    {
      (*(location[0] + 2))(location[0], 0);
    }

    v36 = 1;
  }

  objc_storeStrong(location, 0);
}

- (void)softwareUpdateController:(id)controller prepareToInstallUpdate:(id)update completion:(id)completion
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, controller);
  v10 = 0;
  objc_storeStrong(&v10, update);
  v9 = 0;
  objc_storeStrong(&v9, completion);
  v7 = selfCopy;
  productBuildVersion = [v10 productBuildVersion];
  [(BuddyMigrationUpdateController *)v7 _prepareForSoftwareUpdateToBuild:productBuildVersion completion:v9];

  objc_storeStrong(&v9, 0);
  objc_storeStrong(&v10, 0);
  objc_storeStrong(location, 0);
}

- (void)softwareUpdateController:(id)controller didStartInstallForUpdate:(id)update
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, controller);
  v18 = 0;
  objc_storeStrong(&v18, update);
  buddyPreferencesExcludedFromBackup = [(BuddyMigrationUpdateController *)selfCopy buddyPreferencesExcludedFromBackup];
  LOBYTE(update) = ![BuddyMigrationState hasStateFromPreferences:buddyPreferencesExcludedFromBackup];

  if (update)
  {
    oslog = _BYLoggingFacility();
    v16 = OS_LOG_TYPE_DEFAULT;
    if (os_log_type_enabled(oslog, OS_LOG_TYPE_DEFAULT))
    {
      v6 = oslog;
      v7 = v16;
      sub_10006AA68(buf);
      _os_log_impl(&_mh_execute_header, v6, v7, "Software update for migration did begin!", buf, 2u);
    }

    objc_storeStrong(&oslog, 0);
    v8 = selfCopy;
    productBuildVersion = [v18 productBuildVersion];
    [(BuddyMigrationUpdateController *)v8 _prepareForSoftwareUpdateToBuild:productBuildVersion completion:0];
  }

  else
  {
    v14 = _BYLoggingFacility();
    v13 = 16;
    if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
    {
      v10 = v14;
      v11 = v13;
      sub_10006AA68(v12);
      _os_log_error_impl(&_mh_execute_header, v10, v11, "Software update for migration did begin with migration state on disk!", v12, 2u);
    }

    objc_storeStrong(&v14, 0);
  }

  objc_storeStrong(&v18, 0);
  objc_storeStrong(location, 0);
}

- (void)softwareUpdateController:(id)controller didFailToInstallUpdateWithError:(id)error
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, controller);
  v12 = 0;
  objc_storeStrong(&v12, error);
  oslog = _BYLoggingFacility();
  if (os_log_type_enabled(oslog, OS_LOG_TYPE_ERROR))
  {
    v9 = 0;
    v7 = 0;
    if (_BYIsInternalInstall())
    {
      v5 = v12;
    }

    else if (v12)
    {
      domain = [v12 domain];
      v9 = 1;
      v5 = +[NSString stringWithFormat:](NSString, "stringWithFormat:", @"<Error domain: %@, code %ld>", domain, [v12 code]);
      v8 = v5;
      v7 = 1;
    }

    else
    {
      v5 = 0;
    }

    sub_100071CBC(buf, v5);
    _os_log_error_impl(&_mh_execute_header, oslog, OS_LOG_TYPE_ERROR, "Software update failed, cancelling iCloud Restore launch: %{public}@", buf, 0xCu);
    if (v7)
    {
    }

    if (v9)
    {
    }
  }

  objc_storeStrong(&oslog, 0);
  buddyPreferencesExcludedFromBackup = [(BuddyMigrationUpdateController *)selfCopy buddyPreferencesExcludedFromBackup];
  [BuddyMigrationState removeFromPreferences:buddyPreferencesExcludedFromBackup];

  objc_storeStrong(&v12, 0);
  objc_storeStrong(location, 0);
}

@end