@interface BuddyRestoreUpdateController
- (BuddyRestoreUpdateController)init;
- (void)_prepareForSoftwareUpdateToBuild:(id)build completion:(id)completion;
- (void)performExtendedInitializationWithCompletion:(id)completion;
- (void)softwareUpdateController:(id)controller didFailToInstallUpdateWithError:(id)error;
- (void)softwareUpdateController:(id)controller didStartInstallForUpdate:(id)update;
- (void)softwareUpdateController:(id)controller prepareToInstallUpdate:(id)update completion:(id)completion;
- (void)viewDidAppear:(BOOL)appear;
@end

@implementation BuddyRestoreUpdateController

- (BuddyRestoreUpdateController)init
{
  v6 = a2;
  location = 0;
  v5.receiver = self;
  v5.super_class = BuddyRestoreUpdateController;
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
  v11.super_class = BuddyRestoreUpdateController;
  [(BuddySoftwareUpdateController *)&v11 viewDidAppear:appear];
  if (![(BuddyRestoreUpdateController *)selfCopy ableToRestoreWithUpdate])
  {
    v4 = _NSConcreteStackBlock;
    v5 = -1073741824;
    v6 = 0;
    v7 = sub_100101424;
    v8 = &unk_10032B0D0;
    v9 = selfCopy;
    location = [BuddyRestoreHelpers alertForBackupError:0 okButtonAction:&v4];
    navigationController = [(BuddyRestoreUpdateController *)selfCopy navigationController];
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
  v58 = 0;
  objc_storeStrong(&v58, completion);
  v57 = _BYLoggingFacility();
  v56 = OS_LOG_TYPE_DEFAULT;
  if (os_log_type_enabled(v57, OS_LOG_TYPE_DEFAULT))
  {
    sub_10006AE18(buf, location[0]);
    _os_log_impl(&_mh_execute_header, v57, v56, "Preparing to install update to build %@...", buf, 0xCu);
  }

  objc_storeStrong(&v57, 0);
  willPerformSoftwareUpdateBlock = [(BuddyRestoreUpdateController *)selfCopy willPerformSoftwareUpdateBlock];

  if (willPerformSoftwareUpdateBlock)
  {
    willPerformSoftwareUpdateBlock2 = [(BuddyRestoreUpdateController *)selfCopy willPerformSoftwareUpdateBlock];
    willPerformSoftwareUpdateBlock2[2](willPerformSoftwareUpdateBlock2);
  }

  backupDeviceController = [(BuddyRestoreUpdateController *)selfCopy backupDeviceController];
  v53 = 0;
  v51 = 0;
  backupFinished = 1;
  if (![(BFFBackupDeviceController *)backupDeviceController isBackingUp])
  {
    backupDeviceController2 = [(BuddyRestoreUpdateController *)selfCopy backupDeviceController];
    v53 = 1;
    backupFinished = 1;
    if (![(BFFBackupDeviceController *)backupDeviceController2 backupStateUnknown])
    {
      backupDeviceController3 = [(BuddyRestoreUpdateController *)selfCopy backupDeviceController];
      v51 = 1;
      backupFinished = [(BFFBackupDeviceController *)backupDeviceController3 backupFinished];
    }
  }

  if (v51)
  {
  }

  if (v53)
  {
  }

  v55 = backupFinished & 1;
  v9 = [BuddyRestoreState alloc];
  v10 = location[0];
  backupItem = [(BuddyRestoreUpdateController *)selfCopy backupItem];
  backup = [(RestorableBackupItem *)backupItem backup];
  backupItem2 = [(BuddyRestoreUpdateController *)selfCopy backupItem];
  snapshot = [(RestorableBackupItem *)backupItem2 snapshot];
  pendingRestoreState = [(BuddyRestoreUpdateController *)selfCopy pendingRestoreState];
  v50 = [(BuddyRestoreState *)v9 initWithProductBuild:v10 backup:backup snapshot:snapshot useLatestSnapshot:v55 & 1 allowCellularNetwork:[(BuddyPendingRestoreState *)pendingRestoreState allowCellularNetwork]];

  v49 = _BYLoggingFacility();
  v48 = OS_LOG_TYPE_DEFAULT;
  if (os_log_type_enabled(v49, OS_LOG_TYPE_DEFAULT))
  {
    v16 = v49;
    v17 = v48;
    sub_10006AA68(v47);
    _os_log_impl(&_mh_execute_header, v16, v17, "Persisting restore state to disk...", v47, 2u);
  }

  objc_storeStrong(&v49, 0);
  oslog = _BYLoggingFacility();
  v45 = OS_LOG_TYPE_DEFAULT;
  if (os_log_type_enabled(oslog, OS_LOG_TYPE_DEFAULT))
  {
    sub_10006AE18(v62, v50);
    _os_log_impl(&_mh_execute_header, oslog, v45, "%@", v62, 0xCu);
  }

  objc_storeStrong(&oslog, 0);
  v18 = v50;
  buddyPreferences = [(BuddyRestoreUpdateController *)selfCopy buddyPreferences];
  [v18 persistUsingPreferences:buddyPreferences];

  chronicle = [(BuddyRestoreUpdateController *)selfCopy chronicle];
  buddyPreferences2 = [(BuddyRestoreUpdateController *)selfCopy buddyPreferences];
  buddyPreferencesExcludedFromBackup = [(BuddyRestoreUpdateController *)selfCopy buddyPreferencesExcludedFromBackup];
  [(BYChronicle *)chronicle persistBackedUpFeaturesInPreferences:buddyPreferences2 andNotBackedFeaturesInPreferences:buddyPreferencesExcludedFromBackup persistImmediately:0];

  +[BYPreferencesController persistEverything];
  buddyPreferences3 = [(BuddyRestoreUpdateController *)selfCopy buddyPreferences];
  preferences = [buddyPreferences3 preferences];
  memset(__b, 0, sizeof(__b));
  allKeys = [preferences allKeys];
  v24 = [allKeys countByEnumeratingWithState:__b objects:v61 count:16];
  if (v24)
  {
    v25 = *__b[2];
    do
    {
      for (i = 0; i < v24; ++i)
      {
        if (*__b[2] != v25)
        {
          objc_enumerationMutation(allKeys);
        }

        v42 = *(__b[1] + 8 * i);
        settingsManager = [(BuddyRestoreUpdateController *)selfCopy settingsManager];
        v28 = [preferences objectForKeyedSubscript:v42];
        domain = [buddyPreferences3 domain];
        [(BFFSettingsManager *)settingsManager setObject:v28 forDomain:domain key:v42];
      }

      v24 = [allKeys countByEnumeratingWithState:__b objects:v61 count:16];
    }

    while (v24);
  }

  settingsManager2 = [(BuddyRestoreUpdateController *)selfCopy settingsManager];
  [(BFFSettingsManager *)settingsManager2 hideStashInSafeHavenAsProvisional:1];

  if ((os_variant_has_internal_ui() & 1) == 0)
  {
    goto LABEL_30;
  }

  buddyPreferences4 = [(BuddyRestoreUpdateController *)selfCopy buddyPreferences];
  v40 = [BuddyRestoreState loadFromPreferences:buddyPreferences4];

  backupUDID = [v40 backupUDID];
  v33 = 1;
  if (backupUDID)
  {
    v34 = backupUDID;
    snapshotID = [v40 snapshotID];
    backupUDID = v34;
    v33 = snapshotID == 0;
  }

  if (v33)
  {
    v39 = [UIAlertController alertControllerWithTitle:@"Unable to Restore Post-Update" message:@"File a Radar to Setup Assistant | iOS." preferredStyle:1];
    v36 = [UIAlertAction actionWithTitle:@"OK" style:0 handler:0];
    [v39 addAction:v36];

    navigationController = [(BuddyRestoreUpdateController *)selfCopy navigationController];
    [navigationController presentViewController:v39 animated:1 completion:v58];

    v38 = 1;
    objc_storeStrong(&v39, 0);
  }

  else
  {
    v38 = 0;
  }

  objc_storeStrong(&v40, 0);
  if (!v38)
  {
LABEL_30:
    if (v58)
    {
      (*(v58 + 2))();
    }
  }

  objc_storeStrong(&preferences, 0);
  objc_storeStrong(&buddyPreferences3, 0);
  objc_storeStrong(&v50, 0);
  objc_storeStrong(&v58, 0);
  objc_storeStrong(location, 0);
}

- (void)performExtendedInitializationWithCompletion:(id)completion
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, completion);
  pendingRestoreState = [(BuddyRestoreUpdateController *)selfCopy pendingRestoreState];
  forceSoftwareUpdateRestore = [(BuddyPendingRestoreState *)pendingRestoreState forceSoftwareUpdateRestore];

  v28 = forceSoftwareUpdateRestore & 1;
  if (forceSoftwareUpdateRestore)
  {
    oslog = _BYLoggingFacility();
    v26 = OS_LOG_TYPE_DEFAULT;
    if (os_log_type_enabled(oslog, OS_LOG_TYPE_DEFAULT))
    {
      v5 = oslog;
      v6 = v26;
      sub_10006AA68(buf);
      _os_log_impl(&_mh_execute_header, v5, v6, "Forcing software update for restore...", buf, 2u);
    }

    objc_storeStrong(&oslog, 0);
  }

  backupItem = [(BuddyRestoreUpdateController *)selfCopy backupItem];
  v8 = 0;
  if ([(RestorableBackupItem *)backupItem isCompatible])
  {
    v8 = v28 ^ 1;
  }

  if (v8)
  {
    if (location[0])
    {
      (*(location[0] + 2))(location[0], 0);
    }

    v24 = 1;
  }

  else
  {
    backupItem2 = [(BuddyRestoreUpdateController *)selfCopy backupItem];
    update = [(BuddySoftwareUpdateController *)selfCopy update];
    productVersion = [(SUDescriptor *)update productVersion];
    v12 = [(RestorableBackupItem *)backupItem2 isCompatibleWithUpdateToSystemVersion:productVersion];
    [(BuddyRestoreUpdateController *)selfCopy setAbleToRestoreWithUpdate:v12 & 1];

    if (v28)
    {
      update2 = [(BuddySoftwareUpdateController *)selfCopy update];
      [(BuddyRestoreUpdateController *)selfCopy setAbleToRestoreWithUpdate:update2 != 0];
    }

    v14 = +[BYPreferencesController buddyPreferencesInternal];
    v15 = [v14 BOOLForKey:@"FakeSoftwareUpdate"];

    if (v15)
    {
      [(BuddyRestoreUpdateController *)selfCopy _prepareForSoftwareUpdateToBuild:@"1A1" completion:&stru_10032CDE8];
      v24 = 1;
    }

    else if ([(BuddySoftwareUpdateController *)selfCopy scannedForUpdate]&& [(BuddyRestoreUpdateController *)selfCopy ableToRestoreWithUpdate])
    {
      if (location[0])
      {
        (*(location[0] + 2))(location[0], 1);
      }

      v24 = 1;
    }

    else
    {
      v16 = selfCopy;
      v17 = _NSConcreteStackBlock;
      v18 = -1073741824;
      v19 = 0;
      v20 = sub_1001020EC;
      v21 = &unk_10032CE10;
      v22 = selfCopy;
      v23 = location[0];
      [(BuddySoftwareUpdateController *)v16 scanForUpdateCompletion:&v17];
      objc_storeStrong(&v23, 0);
      objc_storeStrong(&v22, 0);
      v24 = 0;
    }
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
  [(BuddyRestoreUpdateController *)v7 _prepareForSoftwareUpdateToBuild:productBuildVersion completion:v9];

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
  buddyPreferences = [(BuddyRestoreUpdateController *)selfCopy buddyPreferences];
  LOBYTE(update) = ![BuddyRestoreState hasStateFromPreferences:buddyPreferences];

  if (update)
  {
    oslog = _BYLoggingFacility();
    v16 = OS_LOG_TYPE_DEFAULT;
    if (os_log_type_enabled(oslog, OS_LOG_TYPE_DEFAULT))
    {
      v6 = oslog;
      v7 = v16;
      sub_10006AA68(buf);
      _os_log_impl(&_mh_execute_header, v6, v7, "Software update for restore did begin!", buf, 2u);
    }

    objc_storeStrong(&oslog, 0);
    v8 = selfCopy;
    productBuildVersion = [v18 productBuildVersion];
    [(BuddyRestoreUpdateController *)v8 _prepareForSoftwareUpdateToBuild:productBuildVersion completion:0];
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
      _os_log_error_impl(&_mh_execute_header, v10, v11, "Software update for restore did begin with restore state on disk!", v12, 2u);
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
  buddyPreferences = [(BuddyRestoreUpdateController *)selfCopy buddyPreferences];
  [BuddyRestoreState removeFromPreferences:buddyPreferences];

  objc_storeStrong(&v12, 0);
  objc_storeStrong(location, 0);
}

@end