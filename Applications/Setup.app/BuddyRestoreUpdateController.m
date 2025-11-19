@interface BuddyRestoreUpdateController
- (BuddyRestoreUpdateController)init;
- (void)_prepareForSoftwareUpdateToBuild:(id)a3 completion:(id)a4;
- (void)performExtendedInitializationWithCompletion:(id)a3;
- (void)softwareUpdateController:(id)a3 didFailToInstallUpdateWithError:(id)a4;
- (void)softwareUpdateController:(id)a3 didStartInstallForUpdate:(id)a4;
- (void)softwareUpdateController:(id)a3 prepareToInstallUpdate:(id)a4 completion:(id)a5;
- (void)viewDidAppear:(BOOL)a3;
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

- (void)viewDidAppear:(BOOL)a3
{
  v14 = self;
  v13 = a2;
  v12 = a3;
  v11.receiver = self;
  v11.super_class = BuddyRestoreUpdateController;
  [(BuddySoftwareUpdateController *)&v11 viewDidAppear:a3];
  if (![(BuddyRestoreUpdateController *)v14 ableToRestoreWithUpdate])
  {
    v4 = _NSConcreteStackBlock;
    v5 = -1073741824;
    v6 = 0;
    v7 = sub_100101424;
    v8 = &unk_10032B0D0;
    v9 = v14;
    location = [BuddyRestoreHelpers alertForBackupError:0 okButtonAction:&v4];
    v3 = [(BuddyRestoreUpdateController *)v14 navigationController];
    [v3 presentViewController:location animated:1 completion:0];

    objc_storeStrong(&location, 0);
    objc_storeStrong(&v9, 0);
  }
}

- (void)_prepareForSoftwareUpdateToBuild:(id)a3 completion:(id)a4
{
  v60 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  v58 = 0;
  objc_storeStrong(&v58, a4);
  v57 = _BYLoggingFacility();
  v56 = OS_LOG_TYPE_DEFAULT;
  if (os_log_type_enabled(v57, OS_LOG_TYPE_DEFAULT))
  {
    sub_10006AE18(buf, location[0]);
    _os_log_impl(&_mh_execute_header, v57, v56, "Preparing to install update to build %@...", buf, 0xCu);
  }

  objc_storeStrong(&v57, 0);
  v5 = [(BuddyRestoreUpdateController *)v60 willPerformSoftwareUpdateBlock];

  if (v5)
  {
    v6 = [(BuddyRestoreUpdateController *)v60 willPerformSoftwareUpdateBlock];
    v6[2](v6);
  }

  v7 = [(BuddyRestoreUpdateController *)v60 backupDeviceController];
  v53 = 0;
  v51 = 0;
  v8 = 1;
  if (![(BFFBackupDeviceController *)v7 isBackingUp])
  {
    v54 = [(BuddyRestoreUpdateController *)v60 backupDeviceController];
    v53 = 1;
    v8 = 1;
    if (![(BFFBackupDeviceController *)v54 backupStateUnknown])
    {
      v52 = [(BuddyRestoreUpdateController *)v60 backupDeviceController];
      v51 = 1;
      v8 = [(BFFBackupDeviceController *)v52 backupFinished];
    }
  }

  if (v51)
  {
  }

  if (v53)
  {
  }

  v55 = v8 & 1;
  v9 = [BuddyRestoreState alloc];
  v10 = location[0];
  v11 = [(BuddyRestoreUpdateController *)v60 backupItem];
  v12 = [(RestorableBackupItem *)v11 backup];
  v13 = [(BuddyRestoreUpdateController *)v60 backupItem];
  v14 = [(RestorableBackupItem *)v13 snapshot];
  v15 = [(BuddyRestoreUpdateController *)v60 pendingRestoreState];
  v50 = [(BuddyRestoreState *)v9 initWithProductBuild:v10 backup:v12 snapshot:v14 useLatestSnapshot:v55 & 1 allowCellularNetwork:[(BuddyPendingRestoreState *)v15 allowCellularNetwork]];

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
  v19 = [(BuddyRestoreUpdateController *)v60 buddyPreferences];
  [v18 persistUsingPreferences:v19];

  v20 = [(BuddyRestoreUpdateController *)v60 chronicle];
  v21 = [(BuddyRestoreUpdateController *)v60 buddyPreferences];
  v22 = [(BuddyRestoreUpdateController *)v60 buddyPreferencesExcludedFromBackup];
  [(BYChronicle *)v20 persistBackedUpFeaturesInPreferences:v21 andNotBackedFeaturesInPreferences:v22 persistImmediately:0];

  +[BYPreferencesController persistEverything];
  v44 = [(BuddyRestoreUpdateController *)v60 buddyPreferences];
  v43 = [v44 preferences];
  memset(__b, 0, sizeof(__b));
  v23 = [v43 allKeys];
  v24 = [v23 countByEnumeratingWithState:__b objects:v61 count:16];
  if (v24)
  {
    v25 = *__b[2];
    do
    {
      for (i = 0; i < v24; ++i)
      {
        if (*__b[2] != v25)
        {
          objc_enumerationMutation(v23);
        }

        v42 = *(__b[1] + 8 * i);
        v27 = [(BuddyRestoreUpdateController *)v60 settingsManager];
        v28 = [v43 objectForKeyedSubscript:v42];
        v29 = [v44 domain];
        [(BFFSettingsManager *)v27 setObject:v28 forDomain:v29 key:v42];
      }

      v24 = [v23 countByEnumeratingWithState:__b objects:v61 count:16];
    }

    while (v24);
  }

  v30 = [(BuddyRestoreUpdateController *)v60 settingsManager];
  [(BFFSettingsManager *)v30 hideStashInSafeHavenAsProvisional:1];

  if ((os_variant_has_internal_ui() & 1) == 0)
  {
    goto LABEL_30;
  }

  v31 = [(BuddyRestoreUpdateController *)v60 buddyPreferences];
  v40 = [BuddyRestoreState loadFromPreferences:v31];

  v32 = [v40 backupUDID];
  v33 = 1;
  if (v32)
  {
    v34 = v32;
    v35 = [v40 snapshotID];
    v32 = v34;
    v33 = v35 == 0;
  }

  if (v33)
  {
    v39 = [UIAlertController alertControllerWithTitle:@"Unable to Restore Post-Update" message:@"File a Radar to Setup Assistant | iOS." preferredStyle:1];
    v36 = [UIAlertAction actionWithTitle:@"OK" style:0 handler:0];
    [v39 addAction:v36];

    v37 = [(BuddyRestoreUpdateController *)v60 navigationController];
    [v37 presentViewController:v39 animated:1 completion:v58];

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

  objc_storeStrong(&v43, 0);
  objc_storeStrong(&v44, 0);
  objc_storeStrong(&v50, 0);
  objc_storeStrong(&v58, 0);
  objc_storeStrong(location, 0);
}

- (void)performExtendedInitializationWithCompletion:(id)a3
{
  v30 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  v3 = [(BuddyRestoreUpdateController *)v30 pendingRestoreState];
  v4 = [(BuddyPendingRestoreState *)v3 forceSoftwareUpdateRestore];

  v28 = v4 & 1;
  if (v4)
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

  v7 = [(BuddyRestoreUpdateController *)v30 backupItem];
  v8 = 0;
  if ([(RestorableBackupItem *)v7 isCompatible])
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
    v9 = [(BuddyRestoreUpdateController *)v30 backupItem];
    v10 = [(BuddySoftwareUpdateController *)v30 update];
    v11 = [(SUDescriptor *)v10 productVersion];
    v12 = [(RestorableBackupItem *)v9 isCompatibleWithUpdateToSystemVersion:v11];
    [(BuddyRestoreUpdateController *)v30 setAbleToRestoreWithUpdate:v12 & 1];

    if (v28)
    {
      v13 = [(BuddySoftwareUpdateController *)v30 update];
      [(BuddyRestoreUpdateController *)v30 setAbleToRestoreWithUpdate:v13 != 0];
    }

    v14 = +[BYPreferencesController buddyPreferencesInternal];
    v15 = [v14 BOOLForKey:@"FakeSoftwareUpdate"];

    if (v15)
    {
      [(BuddyRestoreUpdateController *)v30 _prepareForSoftwareUpdateToBuild:@"1A1" completion:&stru_10032CDE8];
      v24 = 1;
    }

    else if ([(BuddySoftwareUpdateController *)v30 scannedForUpdate]&& [(BuddyRestoreUpdateController *)v30 ableToRestoreWithUpdate])
    {
      if (location[0])
      {
        (*(location[0] + 2))(location[0], 1);
      }

      v24 = 1;
    }

    else
    {
      v16 = v30;
      v17 = _NSConcreteStackBlock;
      v18 = -1073741824;
      v19 = 0;
      v20 = sub_1001020EC;
      v21 = &unk_10032CE10;
      v22 = v30;
      v23 = location[0];
      [(BuddySoftwareUpdateController *)v16 scanForUpdateCompletion:&v17];
      objc_storeStrong(&v23, 0);
      objc_storeStrong(&v22, 0);
      v24 = 0;
    }
  }

  objc_storeStrong(location, 0);
}

- (void)softwareUpdateController:(id)a3 prepareToInstallUpdate:(id)a4 completion:(id)a5
{
  v12 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  v10 = 0;
  objc_storeStrong(&v10, a4);
  v9 = 0;
  objc_storeStrong(&v9, a5);
  v7 = v12;
  v8 = [v10 productBuildVersion];
  [(BuddyRestoreUpdateController *)v7 _prepareForSoftwareUpdateToBuild:v8 completion:v9];

  objc_storeStrong(&v9, 0);
  objc_storeStrong(&v10, 0);
  objc_storeStrong(location, 0);
}

- (void)softwareUpdateController:(id)a3 didStartInstallForUpdate:(id)a4
{
  v20 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  v18 = 0;
  objc_storeStrong(&v18, a4);
  v5 = [(BuddyRestoreUpdateController *)v20 buddyPreferences];
  LOBYTE(a4) = ![BuddyRestoreState hasStateFromPreferences:v5];

  if (a4)
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
    v8 = v20;
    v9 = [v18 productBuildVersion];
    [(BuddyRestoreUpdateController *)v8 _prepareForSoftwareUpdateToBuild:v9 completion:0];
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

- (void)softwareUpdateController:(id)a3 didFailToInstallUpdateWithError:(id)a4
{
  v14 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  v12 = 0;
  objc_storeStrong(&v12, a4);
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
      v10 = [v12 domain];
      v9 = 1;
      v5 = +[NSString stringWithFormat:](NSString, "stringWithFormat:", @"<Error domain: %@, code %ld>", v10, [v12 code]);
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
  v6 = [(BuddyRestoreUpdateController *)v14 buddyPreferences];
  [BuddyRestoreState removeFromPreferences:v6];

  objc_storeStrong(&v12, 0);
  objc_storeStrong(location, 0);
}

@end