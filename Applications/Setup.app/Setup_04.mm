uint64_t sub_100089660()
{
  result = _sl_dlopen();
  qword_1003A7000 = result;
  return result;
}

void sub_10008CF88(NSObject *a1, uint64_t a2, id obj)
{
  v17 = a1;
  *(&location + 1) = a2;
  *&location = 0;
  objc_storeStrong(&location, obj);
  oslog[1] = a1;
  if (location == 0)
  {
    oslog[0] = _BYLoggingFacility();
    v14 = OS_LOG_TYPE_DEFAULT;
    if (os_log_type_enabled(oslog[0], OS_LOG_TYPE_DEFAULT))
    {
      v4 = oslog[0];
      v5 = v14;
      sub_10006AA68(buf);
      _os_log_impl(&_mh_execute_header, v4, v5, "Renew credentials was successful!", buf, 2u);
    }

    objc_storeStrong(oslog, 0);
  }

  else
  {
    v12 = _BYLoggingFacility();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
    {
      v6 = DWORD2(location);
      v10 = 0;
      v8 = 0;
      if (_BYIsInternalInstall())
      {
        v7 = location;
      }

      else if (location)
      {
        v11 = [location domain];
        v10 = 1;
        v7 = +[NSString stringWithFormat:](NSString, "stringWithFormat:", @"<Error domain: %@, code %ld>", v11, [location code]);
        v9 = v7;
        v8 = 1;
      }

      else
      {
        v7 = 0;
      }

      sub_10008D1D4(v18, v6, v7);
      _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEFAULT, "Renew credentials failed (%d): %{public}@", v18, 0x12u);
      if (v8)
      {
      }

      if (v10)
      {
      }
    }

    objc_storeStrong(&v12, 0);
  }

  [(objc_class *)a1[4].isa startRestore:a1[5].isa];
  objc_storeStrong(&location, 0);
}

double sub_10008D1D4(uint64_t a1, int a2, uint64_t a3)
{
  *&result = 67109378;
  *a1 = 67109378;
  *(a1 + 4) = a2;
  *(a1 + 8) = 2114;
  *(a1 + 10) = a3;
  return result;
}

void sub_10008D304(uint64_t a1)
{
  v21 = a1;
  v20 = a1;
  [*(a1 + 32) setBackupItem:*(a1 + 40)];
  v2 = [*(a1 + 32) backupItem];
  v3 = [v2 snapshotID];

  v19 = v3;
  oslog = _BYLoggingFacility();
  v17 = OS_LOG_TYPE_DEFAULT;
  if (os_log_type_enabled(oslog, OS_LOG_TYPE_DEFAULT))
  {
    v4 = [*(a1 + 32) backupItem];
    v5 = [v4 backupUDID];
    sub_10007B2CC(buf, v5, v19);
    _os_log_impl(&_mh_execute_header, oslog, v17, "Starting iCloud Restore for backup UDID %@ and snapshot %ld...", buf, 0x16u);
  }

  objc_storeStrong(&oslog, 0);
  v6 = *(*(a1 + 32) + 104);
  v7 = [*(a1 + 32) backupItem];
  v8 = [v7 backupUDID];
  v9 = v19;
  v10 = [*(a1 + 32) _createRestoreOptions];
  v11 = _NSConcreteStackBlock;
  v12 = -1073741824;
  v13 = 0;
  v14 = sub_10008D560;
  v15 = &unk_10032B888;
  v16[0] = *(a1 + 32);
  v16[1] = v19;
  [v6 startRestoreForBackupUDID:v8 snapshotID:v9 options:v10 completion:&v11];

  objc_storeStrong(v16, 0);
}

void sub_10008D560(uint64_t a1, void *a2)
{
  location[1] = a1;
  location[0] = 0;
  objc_storeStrong(location, a2);
  v20[1] = a1;
  if (location[0])
  {
    oslog = _BYLoggingFacility();
    if (os_log_type_enabled(oslog, OS_LOG_TYPE_DEFAULT))
    {
      v9 = 0;
      v7 = 0;
      if (_BYIsInternalInstall())
      {
        v6 = location[0];
      }

      else if (location[0])
      {
        v10 = [location[0] domain];
        v9 = 1;
        v6 = +[NSString stringWithFormat:](NSString, "stringWithFormat:", @"<Error domain: %@, code %ld>", v10, [location[0] code]);
        v8 = v6;
        v7 = 1;
      }

      else
      {
        v6 = 0;
      }

      sub_100071CBC(v22, v6);
      _os_log_impl(&_mh_execute_header, oslog, OS_LOG_TYPE_DEFAULT, "Error starting restore: %{public}@", v22, 0xCu);
      if (v7)
      {
      }

      if (v9)
      {
      }
    }

    objc_storeStrong(&oslog, 0);
    [*(a1 + 32) _failedToStartRestoreForSnapshotID:*(a1 + 40) error:location[0]];
  }

  else
  {
    v20[0] = _BYLoggingFacility();
    v19 = OS_LOG_TYPE_DEFAULT;
    if (os_log_type_enabled(v20[0], OS_LOG_TYPE_DEFAULT))
    {
      v3 = v20[0];
      v4 = v19;
      sub_10006AA68(buf);
      _os_log_impl(&_mh_execute_header, v3, v4, "iCloud Restore started successfully", buf, 2u);
    }

    objc_storeStrong(v20, 0);
    v5 = &_dispatch_main_q;
    block = _NSConcreteStackBlock;
    v13 = -1073741824;
    v14 = 0;
    v15 = sub_10008D838;
    v16 = &unk_10032B0D0;
    v17 = *(a1 + 32);
    dispatch_sync(v5, &block);

    objc_storeStrong(&v17, 0);
  }

  objc_storeStrong(location, 0);
}

double sub_10008E19C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  *&result = 134218242;
  *a1 = 134218242;
  *(a1 + 4) = a2;
  *(a1 + 12) = 2112;
  *(a1 + 14) = a3;
  return result;
}

void sub_10008E1BC(NSObject *a1, void *a2)
{
  location[1] = a1;
  location[0] = 0;
  objc_storeStrong(location, a2);
  oslog[1] = a1;
  if (location[0])
  {
    oslog[0] = _BYLoggingFacility();
    v16 = OS_LOG_TYPE_ERROR;
    if (os_log_type_enabled(oslog[0], OS_LOG_TYPE_ERROR))
    {
      sub_100071CBC(buf, location[0]);
      _os_log_error_impl(&_mh_execute_header, oslog[0], v16, "Failed to start restore: %{public}@", buf, 0xCu);
    }

    objc_storeStrong(oslog, 0);
    v15 = 1;
  }

  else
  {
    v14 = _BYLoggingFacility();
    v13 = OS_LOG_TYPE_DEFAULT;
    if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
    {
      v3 = v14;
      v4 = v13;
      sub_10006AA68(v12);
      _os_log_impl(&_mh_execute_header, v3, v4, "iCloud Restore started successfully", v12, 2u);
    }

    objc_storeStrong(&v14, 0);
    v5 = &_dispatch_main_q;
    block = _NSConcreteStackBlock;
    v7 = -1073741824;
    v8 = 0;
    v9 = sub_10008E3CC;
    v10 = &unk_10032B0D0;
    v11 = a1[4].isa;
    dispatch_sync(v5, &block);

    objc_storeStrong(&v11, 0);
    v15 = 0;
  }

  objc_storeStrong(location, 0);
}

id sub_10008E410(id *a1)
{
  location[2] = a1;
  location[1] = a1;
  if ([a1[4] restoreState] != 3 && objc_msgSend(a1[5], "code") != 202)
  {
    [a1[4] setRestoreState:2];
    objc_initWeak(location, a1[4]);
    v2 = a1[5];
    v4 = _NSConcreteStackBlock;
    v5 = -1073741824;
    v6 = 0;
    v7 = sub_10008E574;
    v8 = &unk_10032AF58;
    objc_copyWeak(&v9, location);
    v10 = [BuddyRestoreHelpers alertForBackupError:v2 okButtonAction:&v4];
    [a1[4] _presentAlert:v10];
    objc_storeStrong(&v10, 0);
    objc_destroyWeak(&v9);
    objc_destroyWeak(location);
  }

  return [a1[4] releaseAssertions];
}

void sub_10008E574(id *a1)
{
  location[2] = a1;
  location[1] = a1;
  location[0] = objc_loadWeakRetained(a1 + 4);
  [location[0] popBackFromProgress];
  objc_storeStrong(location, 0);
}

double sub_10008FCD8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  *&result = 134218498;
  *a1 = 134218498;
  *(a1 + 4) = a2;
  *(a1 + 12) = 2112;
  *(a1 + 14) = a3;
  *(a1 + 22) = 2112;
  *(a1 + 24) = a4;
  return result;
}

double sub_10008FD00(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  *&result = 134218754;
  *a1 = 134218754;
  *(a1 + 4) = a2;
  *(a1 + 12) = 2112;
  *(a1 + 14) = a3;
  *(a1 + 22) = 2112;
  *(a1 + 24) = a4;
  *(a1 + 32) = 2112;
  *(a1 + 34) = a5;
  return result;
}

void sub_10008FF58(NSObject *a1)
{
  oslog[2] = a1;
  oslog[1] = a1;
  v2 = [(objc_class *)a1[4].isa backupDeviceController];
  [v2 retryBackup];

  v3 = [(objc_class *)a1[4].isa backupDeviceController];
  v4 = [v3 error];

  if (v4)
  {
    oslog[0] = _BYLoggingFacility();
    if (os_log_type_enabled(oslog[0], OS_LOG_TYPE_DEFAULT))
    {
      v5 = [(objc_class *)a1[4].isa backupDeviceController];
      v6 = [v5 error];
      sub_100071CBC(buf, v6);
      _os_log_impl(&_mh_execute_header, oslog[0], OS_LOG_TYPE_DEFAULT, "Failed to retry backup: %{public}@", buf, 0xCu);
    }

    objc_storeStrong(oslog, 0);
    isa = a1[4].isa;
    v8 = [(objc_class *)isa backupDeviceController];
    v9 = [v8 error];
    [(objc_class *)isa handleBackupFailed:v9];
  }
}

void sub_100090114(id *a1)
{
  location[2] = a1;
  location[1] = a1;
  location[0] = objc_loadWeakRetained(a1 + 4);
  [location[0] popBackFromProgress];
  objc_storeStrong(location, 0);
}

void sub_100090270(uint64_t a1)
{
  location[2] = a1;
  location[1] = a1;
  location[0] = _BYLoggingFacility();
  v72 = OS_LOG_TYPE_DEFAULT;
  if (os_log_type_enabled(location[0], OS_LOG_TYPE_DEFAULT))
  {
    sub_10006AE18(buf, *(a1 + 32));
    _os_log_impl(&_mh_execute_header, location[0], v72, "Displaying backup failed alert to user: %@", buf, 0xCu);
  }

  objc_storeStrong(location, 0);
  v71 = 0;
  v70 = 0;
  v2 = [*(a1 + 32) domain];
  v3 = 0;
  if ([v2 isEqualToString:@"MBErrorDomain"])
  {
    v3 = [*(a1 + 32) code] == 303;
  }

  if (v3)
  {
    objc_storeStrong(&v70, @"BACKUP_FAILED_ALERT_MESSAGE_QUOTA");
  }

  else
  {
    v4 = [*(a1 + 40) proximitySetupController];
    v71 = [v4 hasConnection] & 1;

    v5 = [*(a1 + 40) proximitySetupController];
    v69 = [v5 deviceClass];

    v6 = [BuddyLocalizationUtilities siblingDeviceSpecificLocalizedStringKeyForKey:@"BACKUP_FAILED_ALERT_MESSAGE" deviceClass:v69];
    v7 = v70;
    v70 = v6;

    if (v71)
    {
      v8 = SFLocalizableWAPIStringKeyForKey();
      v9 = v70;
      v70 = v8;
    }

    objc_storeStrong(&v69, 0);
  }

  v10 = +[NSBundle mainBundle];
  v11 = [(NSBundle *)v10 localizedStringForKey:v70 value:&stru_10032F900 table:@"RestoreFromBackup"];
  v12 = [*(a1 + 40) backupDeviceController];
  v13 = [v12 backingUpDeviceName];
  v68 = [NSString localizedStringWithFormat:v11, v13];

  v14 = +[NSBundle mainBundle];
  v15 = [(NSBundle *)v14 localizedStringForKey:@"BACKUP_FAILED_ALERT_TITLE" value:&stru_10032F900 table:@"RestoreFromBackup"];
  v67 = [UIAlertController alertControllerWithTitle:v15 message:v68 preferredStyle:1];

  objc_initWeak(&from, *(a1 + 40));
  v58 = _NSConcreteStackBlock;
  v59 = -1073741824;
  v60 = 0;
  v61 = sub_100090D08;
  v62 = &unk_10032B8D8;
  v63 = *(a1 + 40);
  objc_copyWeak(&v64, &from);
  v65 = objc_retainBlock(&v58);
  if (v71)
  {
    v16 = v67;
    v17 = +[NSBundle mainBundle];
    v18 = [(NSBundle *)v17 localizedStringForKey:@"TRY_AGAIN_ALERT" value:&stru_10032F900 table:@"RestoreFromBackup"];
    v52 = _NSConcreteStackBlock;
    v53 = -1073741824;
    v54 = 0;
    v55 = sub_100090F50;
    v56 = &unk_10032B598;
    v57 = *(a1 + 40);
    v19 = [UIAlertAction actionWithTitle:v18 style:0 handler:&v52];
    [v16 addAction:v19];

    v20 = v67;
    v21 = +[NSBundle mainBundle];
    v22 = [(NSBundle *)v21 localizedStringForKey:@"CHOOSE_A_DIFFERENT_BACKUP" value:&stru_10032F900 table:@"RestoreFromBackup"];
    v23 = [UIAlertAction actionWithTitle:v22 style:1 handler:v65];
    [v20 addAction:v23];

    objc_storeStrong(&v57, 0);
  }

  else
  {
    v24 = dispatch_get_global_queue(0, 0);
    block = _NSConcreteStackBlock;
    v47 = -1073741824;
    v48 = 0;
    v49 = sub_100090FA0;
    v50 = &unk_10032B0D0;
    v51 = *(a1 + 40);
    dispatch_async(v24, &block);

    v25 = [*(a1 + 40) pendingRestoreState];
    v45 = [v25 backupItem];

    v26 = +[NSBundle mainBundle];
    v27 = [(NSBundle *)v26 localizedStringForKey:@"USE_BACKUP_FROM" value:&stru_10032F900 table:@"RestoreFromBackup"];
    v28 = [v45 dateString];
    v44 = [NSString localizedStringWithFormat:v27, v28];

    v29 = v67;
    v30 = v44;
    v36 = _NSConcreteStackBlock;
    v37 = -1073741824;
    v38 = 0;
    v39 = sub_100091018;
    v40 = &unk_10032B900;
    v41 = *(a1 + 40);
    v42 = v45;
    objc_copyWeak(&v43, &from);
    v31 = [UIAlertAction actionWithTitle:v30 style:0 handler:&v36];
    [v29 addAction:v31];

    v32 = v67;
    v33 = +[NSBundle mainBundle];
    v34 = [(NSBundle *)v33 localizedStringForKey:@"OTHER_OPTIONS" value:&stru_10032F900 table:@"RestoreFromBackup"];
    v35 = [UIAlertAction actionWithTitle:v34 style:1 handler:v65];
    [v32 addAction:v35];

    objc_destroyWeak(&v43);
    objc_storeStrong(&v42, 0);
    objc_storeStrong(&v41, 0);
    objc_storeStrong(&v44, 0);
    objc_storeStrong(&v45, 0);
    objc_storeStrong(&v51, 0);
  }

  [*(a1 + 40) _presentAlert:v67];
  objc_storeStrong(&v65, 0);
  objc_destroyWeak(&v64);
  objc_storeStrong(&v63, 0);
  objc_destroyWeak(&from);
  objc_storeStrong(&v67, 0);
  objc_storeStrong(&v68, 0);
  objc_storeStrong(&v70, 0);
}

void sub_100090D08(id *a1, void *a2)
{
  location[1] = a1;
  location[0] = 0;
  objc_storeStrong(location, a2);
  v10[1] = a1;
  v3 = dispatch_get_global_queue(0, 0);
  block = _NSConcreteStackBlock;
  v5 = -1073741824;
  v6 = 0;
  v7 = sub_100090E14;
  v8 = &unk_10032B8B0;
  v9 = a1[4];
  objc_copyWeak(v10, a1 + 5);
  dispatch_async(v3, &block);

  objc_destroyWeak(v10);
  objc_storeStrong(&v9, 0);
  objc_storeStrong(location, 0);
}

void sub_100090E14(id *a1)
{
  v9[2] = a1;
  v9[1] = a1;
  v2 = [a1[4] proximitySetupController];
  [v2 setupFinished];

  v3 = &_dispatch_main_q;
  block = _NSConcreteStackBlock;
  v5 = -1073741824;
  v6 = 0;
  v7 = sub_100090F0C;
  v8 = &unk_10032AF58;
  objc_copyWeak(v9, a1 + 5);
  dispatch_async(v3, &block);

  objc_destroyWeak(v9);
}

void sub_100090F0C(id *a1)
{
  location[2] = a1;
  location[1] = a1;
  location[0] = objc_loadWeakRetained(a1 + 4);
  [location[0] popBackFromProgress];
  objc_storeStrong(location, 0);
}

void sub_100090F50(id *a1, void *a2)
{
  location[1] = a1;
  location[0] = 0;
  objc_storeStrong(location, a2);
  [a1[4] reattemptBackup];
  objc_storeStrong(location, 0);
}

void sub_100090FA0(uint64_t a1)
{
  v2 = [*(a1 + 32) proximitySetupController];
  [v2 setupFinished];

  v3 = [*(a1 + 32) backupDeviceController];
  [v3 reset];
}

void sub_100091018(uint64_t a1, void *a2)
{
  location[1] = a1;
  location[0] = 0;
  objc_storeStrong(location, a2);
  v12[1] = a1;
  if ([*(a1 + 32) takeAssertions])
  {
    v3 = [*(a1 + 32) pendingRestoreState];
    v4 = [*(a1 + 32) pendingRestoreState];
    v5 = [v4 backupItem];
    [v3 setAttemptedBackupItem:v5];

    [*(a1 + 32) setRestoreState:0];
    *(*(a1 + 32) + 8) = 0;
    [*(a1 + 32) updateProgressText];
    [*(a1 + 32) renewCredentialsThenStartRestore:*(a1 + 40)];
  }

  else
  {
    v6 = _NSConcreteStackBlock;
    v7 = -1073741824;
    v8 = 0;
    v9 = sub_1000911E8;
    v10 = &unk_10032AF58;
    objc_copyWeak(&v11, (a1 + 48));
    v12[0] = [BuddyRestoreHelpers alertForBackupError:0 okButtonAction:&v6];
    [*(a1 + 32) _presentAlert:v12[0]];
    objc_storeStrong(v12, 0);
    objc_destroyWeak(&v11);
  }

  objc_storeStrong(location, 0);
}

void sub_1000911E8(id *a1)
{
  location[2] = a1;
  location[1] = a1;
  location[0] = objc_loadWeakRetained(a1 + 4);
  [location[0] popBackFromProgress];
  objc_storeStrong(location, 0);
}

id sub_100091690(uint64_t a1)
{
  v18 = a1;
  v17 = a1;
  v2 = [*(a1 + 32) view];
  v3 = [v2 window];
  v4 = v3 != 0;

  v16 = v4;
  if (v4)
  {
    oslog = _BYLoggingFacility();
    v14 = OS_LOG_TYPE_DEFAULT;
    if (os_log_type_enabled(oslog, OS_LOG_TYPE_DEFAULT))
    {
      v5 = oslog;
      v6 = v14;
      sub_10006AA68(buf);
      _os_log_impl(&_mh_execute_header, v5, v6, "Backup Progress presenting alert .... ", buf, 2u);
    }

    objc_storeStrong(&oslog, 0);
    return [*(a1 + 32) presentViewController:*(a1 + 40) animated:1 completion:0];
  }

  else
  {
    v12 = _BYLoggingFacility();
    v11 = OS_LOG_TYPE_DEFAULT;
    if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
    {
      v8 = v12;
      v9 = v11;
      sub_10006AA68(v10);
      _os_log_impl(&_mh_execute_header, v8, v9, "Backup Progress saving alert post viewDidAppear .... ", v10, 2u);
    }

    objc_storeStrong(&v12, 0);
    return [*(a1 + 32) setAlert:*(a1 + 40)];
  }
}

void sub_100091E64(id *a1, void *a2)
{
  location[1] = a1;
  location[0] = 0;
  objc_storeStrong(location, a2);
  WeakRetained = objc_loadWeakRetained(a1 + 4);
  [WeakRetained popBackFromProgress];
  objc_storeStrong(&v4, 0);
  objc_storeStrong(location, 0);
}

void sub_100091ECC(id *a1, void *a2)
{
  location[1] = a1;
  location[0] = 0;
  objc_storeStrong(location, a2);
  v3[1] = a1;
  v3[0] = objc_loadWeakRetained(a1 + 4);
  [v3[0] takeAssertions];
  [v3[0] _attemptRestore];
  objc_storeStrong(v3, 0);
  objc_storeStrong(location, 0);
}

void sub_100091F3C(uint64_t a1)
{
  v125 = a1;
  v124 = a1;
  v123 = ([*(a1 + 32) hasAssertions] & 1) == 0;
  v122 = 1;
  v2 = [*(a1 + 32) pendingRestoreState];
  v3 = [v2 useLatestSnapshot];

  if (v3)
  {
    location = _BYLoggingFacility();
    v120 = OS_LOG_TYPE_DEFAULT;
    if (os_log_type_enabled(location, OS_LOG_TYPE_DEFAULT))
    {
      v4 = location;
      v5 = v120;
      sub_10006AA68(buf);
      _os_log_impl(&_mh_execute_header, v4, v5, "Searching for the latest snapshot...", buf, 2u);
    }

    objc_storeStrong(&location, 0);
    v6 = [*(a1 + 32) pendingRestoreState];
    v7 = [v6 backupItem];
    v118 = [v7 backupUUID];

    v8 = [*(a1 + 32) pendingRestoreState];
    v117 = [v8 snapshotDate];

    v116 = 0;
    v9 = *(a1 + 32);
    v115 = 0;
    v10 = [v9 latestSnapshotForBackupUUID:v118 lastSnapshotDate:v117 error:&v115];
    objc_storeStrong(&v116, v115);
    [*(a1 + 32) setBackupItem:v10];

    if (v116)
    {
      v114 = _BYLoggingFacility();
      v113 = OS_LOG_TYPE_ERROR;
      if (os_log_type_enabled(v114, OS_LOG_TYPE_ERROR))
      {
        v111 = 0;
        v109 = 0;
        if (_BYIsInternalInstall())
        {
          v11 = v116;
        }

        else if (v116)
        {
          v112 = [v116 domain];
          v111 = 1;
          v11 = +[NSString stringWithFormat:](NSString, "stringWithFormat:", @"<Error domain: %@, code %ld>", v112, [v116 code]);
          v110 = v11;
          v109 = 1;
        }

        else
        {
          v11 = 0;
        }

        sub_100071CBC(v128, v11);
        _os_log_error_impl(&_mh_execute_header, v114, v113, "Failed to find the latest snapshot: %{public}@", v128, 0xCu);
        if (v109)
        {
        }

        if (v111)
        {
        }
      }

      objc_storeStrong(&v114, 0);
      v123 = 1;
    }

    else
    {
      v12 = [*(a1 + 32) pendingRestoreState];
      v13 = [*(a1 + 32) backupItem];
      [v12 setBackupItem:v13 updateBackupMetadata:1 prefetchAccounts:0];
    }

    objc_storeStrong(&v116, 0);
    objc_storeStrong(&v117, 0);
    objc_storeStrong(&v118, 0);
  }

  else
  {
    v14 = [*(a1 + 32) backupDeviceController];
    v15 = [v14 backingUpDeviceUUID];
    v16 = [*(a1 + 32) backupItem];
    v17 = [v16 backup];
    v18 = [v17 backupUUID];

    if (v15 == v18)
    {
      v19 = [*(a1 + 32) backupDeviceController];
      v108 = [v19 error];

      if (v108)
      {
        v20 = [v108 domain];
        v21 = 0;
        if (v20 == @"BFFBackupDeviceErrorDomain")
        {
          v22 = v20;
          v23 = [v108 code];
          v20 = v22;
          v21 = v23 == -1;
        }

        if (v21)
        {
          oslog = _BYLoggingFacility();
          v106 = OS_LOG_TYPE_DEFAULT;
          if (os_log_type_enabled(oslog, OS_LOG_TYPE_DEFAULT))
          {
            v24 = oslog;
            v25 = v106;
            sub_10006AA68(v105);
            _os_log_impl(&_mh_execute_header, v24, v25, "Source device disconnected at/before pushing to the restore progress pane", v105, 2u);
          }

          objc_storeStrong(&oslog, 0);
          v26 = [*(a1 + 32) waitForBackupToComplete];
          [*(a1 + 32) setBackupItem:v26];

          v27 = *(a1 + 32);
          v28 = [v27 backupItem];
          [v27 _traceAnalyticsForGuideUserToBackup:0 foundBackup:v28 != 0 polledForBackup:1];

          v29 = [*(a1 + 32) backupItem];
          if (!v29)
          {
            v104 = _BYLoggingFacility();
            v103 = OS_LOG_TYPE_DEFAULT;
            if (os_log_type_enabled(v104, OS_LOG_TYPE_DEFAULT))
            {
              v30 = v104;
              v31 = v103;
              sub_10006AA68(v102);
              _os_log_impl(&_mh_execute_header, v30, v31, "No latest backup found; giving up!", v102, 2u);
            }

            objc_storeStrong(&v104, 0);
            [*(a1 + 32) handleBackupFailed:v108];
            v122 = 0;
            v123 = 1;
          }
        }

        else
        {
          v32 = *(a1 + 32);
          v33 = [v32 backupDeviceController];
          v34 = [v33 error];
          [v32 _traceAnalyticsForGuideUserToBackup:v34 foundBackup:0 polledForBackup:0];

          v35 = *(a1 + 32);
          v36 = [v35 backupDeviceController];
          v37 = [v36 error];
          [v35 handleBackupFailed:v37];

          v122 = 0;
          v123 = 1;
        }
      }

      else
      {
        v38 = [*(a1 + 32) backupDeviceController];
        v39 = [v38 backupFinished];

        if (v39)
        {
          v40 = [*(a1 + 32) backupItem];
          v41 = [v40 snapshot];
          v42 = [v41 date];
          v43 = (*(a1 + 32) + 16);
          v44 = *v43;
          *v43 = v42;

          v101 = _BYLoggingFacility();
          v100 = OS_LOG_TYPE_DEFAULT;
          if (os_log_type_enabled(v101, OS_LOG_TYPE_DEFAULT))
          {
            v45 = v101;
            v46 = v100;
            sub_10006AA68(v99);
            _os_log_impl(&_mh_execute_header, v45, v46, "Waiting 30 seconds for iCloud servers to ingest the new backup...", v99, 2u);
          }

          objc_storeStrong(&v101, 0);
          sleep(0x1Eu);
          v98 = _BYLoggingFacility();
          v97 = OS_LOG_TYPE_DEFAULT;
          if (os_log_type_enabled(v98, OS_LOG_TYPE_DEFAULT))
          {
            v47 = v98;
            v48 = v97;
            sub_10006AA68(v96);
            _os_log_impl(&_mh_execute_header, v47, v48, "Searching for latest snapshot for source device...", v96, 2u);
          }

          objc_storeStrong(&v98, 0);
          v95 = 0;
          v94 = 0;
          v93 = 0;
          do
          {
            v49 = *(a1 + 32);
            obj = v95;
            v50 = [v49 latestSnapshotForSourceDevice:&obj];
            objc_storeStrong(&v95, obj);
            v51 = v94;
            v94 = v50;

            if (v94)
            {
              break;
            }

            v91 = _BYLoggingFacility();
            v90 = OS_LOG_TYPE_DEFAULT;
            if (os_log_type_enabled(v91, OS_LOG_TYPE_DEFAULT))
            {
              v52 = v91;
              v53 = v90;
              v54 = _BYIsInternalInstall();
              v88 = 0;
              v86 = 0;
              if (v54)
              {
                v55 = v95;
              }

              else if (v95)
              {
                v89 = [v95 domain];
                v88 = 1;
                v55 = +[NSString stringWithFormat:](NSString, "stringWithFormat:", @"<Error domain: %@, code %ld>", v89, [v95 code]);
                v87 = v55;
                v86 = 1;
              }

              else
              {
                v55 = 0;
              }

              sub_100071CBC(v127, v55);
              _os_log_impl(&_mh_execute_header, v52, v53, "Unable to retrieve latest backup: %{public}@", v127, 0xCu);
              if (v86)
              {
              }

              if (v88)
              {
              }
            }

            objc_storeStrong(&v91, 0);
            v85 = _BYLoggingFacility();
            v84 = OS_LOG_TYPE_DEFAULT;
            if (os_log_type_enabled(v85, OS_LOG_TYPE_DEFAULT))
            {
              v56 = v85;
              v57 = v84;
              sub_10006AA68(v83);
              _os_log_impl(&_mh_execute_header, v56, v57, "Attempting to retry to get latest backup due to error...", v83, 2u);
            }

            objc_storeStrong(&v85, 0);
            ++v93;
            sleep(5u);
          }

          while (v93 < 3);
          [*(a1 + 32) _traceAnalyticsForGuideUserToBackup:0 foundBackup:v94 != 0 polledForBackup:0];
          if (v94)
          {
            v82 = _BYLoggingFacility();
            v81 = OS_LOG_TYPE_DEFAULT;
            if (os_log_type_enabled(v82, OS_LOG_TYPE_DEFAULT))
            {
              sub_10006AE18(v126, v94);
              _os_log_impl(&_mh_execute_header, v82, v81, "Found latest backup item: %@", v126, 0xCu);
            }

            objc_storeStrong(&v82, 0);
            v58 = [*(a1 + 32) pendingRestoreState];
            [v58 setBackupItem:v94 updateBackupMetadata:1 prefetchAccounts:0];

            [*(a1 + 32) setBackupItem:v94];
          }

          else
          {
            v123 = 1;
          }

          objc_storeStrong(&v94, 0);
          objc_storeStrong(&v95, 0);
        }
      }

      objc_storeStrong(&v108, 0);
    }
  }

  v59 = [*(a1 + 32) pendingRestoreState];
  v60 = [*(a1 + 32) pendingRestoreState];
  v61 = [v60 backupItem];
  [v59 setAttemptedBackupItem:v61];

  if (v123)
  {
    if (v122)
    {
      v67 = &_dispatch_main_q;
      v68 = _NSConcreteStackBlock;
      v69 = -1073741824;
      v70 = 0;
      v71 = sub_100092D18;
      v72 = &unk_10032AFA8;
      objc_copyWeak(&v74, (a1 + 40));
      v73 = *(a1 + 32);
      dispatch_async(v67, &v68);

      objc_storeStrong(&v73, 0);
      objc_destroyWeak(&v74);
    }
  }

  else
  {
    [*(a1 + 32) setRestoreState:0];
    v62 = &_dispatch_main_q;
    block = _NSConcreteStackBlock;
    v76 = -1073741824;
    v77 = 0;
    v78 = sub_100092CEC;
    v79 = &unk_10032B0D0;
    v80 = *(a1 + 32);
    dispatch_async(v62, &block);

    v63 = [*(a1 + 32) backupDeviceController];
    v64 = [v63 isBackingUp] ^ 1;

    if (v64)
    {
      v65 = *(a1 + 32);
      v66 = [v65 backupItem];
      [v65 renewCredentialsThenStartRestore:v66];
    }

    objc_storeStrong(&v80, 0);
  }
}

void sub_100092D18(id *a1)
{
  location[2] = a1;
  location[1] = a1;
  v2 = _NSConcreteStackBlock;
  v3 = -1073741824;
  v4 = 0;
  v5 = sub_100092E20;
  v6 = &unk_10032AF58;
  objc_copyWeak(&v7, a1 + 5);
  location[0] = [BuddyRestoreHelpers alertForBackupError:0 okButtonAction:&v2];
  [a1[4] _presentAlert:location[0]];
  objc_storeStrong(location, 0);
  objc_destroyWeak(&v7);
}

void sub_100092E20(id *a1)
{
  location[2] = a1;
  location[1] = a1;
  location[0] = objc_loadWeakRetained(a1 + 4);
  [location[0] popBackFromProgress];
  objc_storeStrong(location, 0);
}

void sub_100092F7C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, int a9, int a10, _Unwind_Exception *exception_object, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, id location)
{
  objc_destroyWeak(v18);
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_100092FB0(id *a1)
{
  location[2] = a1;
  location[1] = a1;
  location[0] = objc_loadWeakRetained(a1 + 4);
  [location[0] popBackFromProgress];
  objc_storeStrong(location, 0);
}

void sub_100093E04(uint64_t a1)
{
  location[2] = a1;
  location[1] = a1;
  objc_initWeak(location, *(a1 + 32));
  v2 = *(a1 + 40);
  v3 = _NSConcreteStackBlock;
  v4 = -1073741824;
  v5 = 0;
  v6 = sub_100093F2C;
  v7 = &unk_10032AF58;
  objc_copyWeak(&v8, location);
  v9 = [BuddyRestoreHelpers alertForBackupError:v2 okButtonAction:&v3];
  [*(a1 + 32) _presentAlert:v9];
  objc_storeStrong(&v9, 0);
  objc_destroyWeak(&v8);
  objc_destroyWeak(location);
}

void sub_100093EF8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, int a10, int a11, _Unwind_Exception *exception_object)
{
  objc_destroyWeak(v12);
  objc_destroyWeak((v13 - 56));
  _Unwind_Resume(a1);
}

void sub_100093F2C(id *a1)
{
  location[2] = a1;
  location[1] = a1;
  location[0] = objc_loadWeakRetained(a1 + 4);
  [location[0] popBackFromProgress];
  objc_storeStrong(location, 0);
}

id sub_100094054(uint64_t a1)
{
  [*(a1 + 32) setTimeRemainingEstimate:(60 * *(a1 + 40))];
  *(*(a1 + 32) + 120) = *(a1 + 48);
  return [*(a1 + 32) updateProgress];
}

id sub_1000941D8(uint64_t a1)
{
  [*(a1 + 32) setTimeRemainingEstimate:(60 * *(a1 + 40))];
  [*(a1 + 32) setRestorePercentComplete:*(a1 + 48)];
  return [*(a1 + 32) updateProgress];
}

void sub_1000944DC(id *a1)
{
  v10[2] = a1;
  v10[1] = a1;
  v2 = objc_alloc_init(BuddyDisplayMonitor);
  [a1[4] setDisplayMonitor:v2];

  v3 = [a1[4] displayMonitor];
  v4 = _NSConcreteStackBlock;
  v5 = -1073741824;
  v6 = 0;
  v7 = sub_1000945F8;
  v8 = &unk_10032B838;
  v9 = a1[4];
  v10[0] = a1[5];
  [v3 wakeDisplay:&v4];

  objc_storeStrong(v10, 0);
  objc_storeStrong(&v9, 0);
}

id sub_1000945F8(NSObject *a1)
{
  oslog[2] = a1;
  oslog[1] = a1;
  v2 = [(objc_class *)a1[4].isa lockdownModeProvider];
  v3 = [v2 hasStagedEnablement];

  if (v3)
  {
    oslog[0] = _BYLoggingFacility();
    v15 = OS_LOG_TYPE_DEFAULT;
    if (os_log_type_enabled(oslog[0], OS_LOG_TYPE_DEFAULT))
    {
      v4 = oslog[0];
      v5 = v15;
      sub_10006AA68(buf);
      _os_log_impl(&_mh_execute_header, v4, v5, "Enabling lockdown...", buf, 2u);
    }

    objc_storeStrong(oslog, 0);
    v6 = [(objc_class *)a1[4].isa lockdownModeProvider];
    v8 = _NSConcreteStackBlock;
    v9 = -1073741824;
    v10 = 0;
    v11 = sub_10009477C;
    v12 = &unk_10032B6F0;
    v13 = a1[5].isa;
    [v6 enableWithStrategy:1 completionHandler:&v8];

    objc_storeStrong(&v13, 0);
  }

  else
  {
    [(objc_class *)a1[5].isa rebootDevice:0];
  }

  return [(objc_class *)a1[4].isa releaseAssertions];
}

void sub_10009477C(NSObject *a1, void *a2)
{
  location[1] = a1;
  location[0] = 0;
  objc_storeStrong(location, a2);
  oslog[1] = a1;
  if (location[0])
  {
    oslog[0] = _BYLoggingFacility();
    v8 = OS_LOG_TYPE_ERROR;
    if (os_log_type_enabled(oslog[0], OS_LOG_TYPE_ERROR))
    {
      sub_100071CBC(buf, location[0]);
      _os_log_error_impl(&_mh_execute_header, oslog[0], v8, "Failed to enable lockdown: %{public}@", buf, 0xCu);
    }

    objc_storeStrong(oslog, 0);
  }

  else
  {
    v7 = _BYLoggingFacility();
    v6 = OS_LOG_TYPE_DEFAULT;
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      v3 = v7;
      v4 = v6;
      sub_10006AA68(v5);
      _os_log_impl(&_mh_execute_header, v3, v4, "Lockdown enabled", v5, 2u);
    }

    objc_storeStrong(&v7, 0);
  }

  [(objc_class *)a1[4].isa rebootDevice:1];
  objc_storeStrong(location, 0);
}

void sub_100094C34(id *a1)
{
  location[2] = a1;
  location[1] = a1;
  location[0] = _BYLoggingFacility();
  v29 = OS_LOG_TYPE_DEFAULT;
  if (os_log_type_enabled(location[0], OS_LOG_TYPE_DEFAULT))
  {
    v2 = [a1[4] backupItem];
    v3 = [v2 backupUUID];
    sub_10006AE18(buf, v3);
    _os_log_impl(&_mh_execute_header, location[0], v29, "Attempting to retrieve latest snapshot again to retry restore (for backup UUID %@)...", buf, 0xCu);
  }

  objc_storeStrong(location, 0);
  v28 = 0;
  v4 = [a1[4] backupItem];
  v5 = [v4 backupUUID];
  v6 = *(a1[4] + 13);
  obj = 0;
  v7 = [BuddyBackupUtilities backupForUUID:v5 withManager:v6 error:&obj];
  objc_storeStrong(&v28, obj);
  v27 = v7;

  if (v28)
  {
    oslog = _BYLoggingFacility();
    v24 = OS_LOG_TYPE_DEFAULT;
    if (os_log_type_enabled(oslog, OS_LOG_TYPE_DEFAULT))
    {
      v22 = 0;
      v20 = 0;
      if (_BYIsInternalInstall())
      {
        v8 = v28;
      }

      else if (v28)
      {
        v23 = [v28 domain];
        v22 = 1;
        v8 = +[NSString stringWithFormat:](NSString, "stringWithFormat:", @"<Error domain: %@, code %ld>", v23, [v28 code]);
        v21 = v8;
        v20 = 1;
      }

      else
      {
        v8 = 0;
      }

      sub_100071CBC(v31, v8);
      _os_log_impl(&_mh_execute_header, oslog, v24, "Failed to get the list of backups: %{public}@", v31, 0xCu);
      if (v20)
      {
      }

      if (v22)
      {
      }
    }

    objc_storeStrong(&oslog, 0);
  }

  else
  {
    v19 = [BuddyBackupUtilities latestCommittedSnapshotFromBackup:v27 requireCompatible:1];
    v9 = &_dispatch_main_q;
    block = _NSConcreteStackBlock;
    v11 = -1073741824;
    v12 = 0;
    v13 = sub_100095068;
    v14 = &unk_10032B9A0;
    v15 = v19;
    v16 = v27;
    v17 = a1[4];
    v18 = a1[5];
    dispatch_async(v9, &block);

    objc_storeStrong(&v18, 0);
    objc_storeStrong(&v17, 0);
    objc_storeStrong(&v16, 0);
    objc_storeStrong(&v15, 0);
    objc_storeStrong(&v19, 0);
  }

  objc_storeStrong(&v27, 0);
  objc_storeStrong(&v28, 0);
}

void sub_100095068(uint64_t a1)
{
  location[2] = a1;
  location[1] = a1;
  if (*(a1 + 32))
  {
    location[0] = [RestorableBackupItem restorableBackupItemWithBackup:*(a1 + 40) snapshot:*(a1 + 32)];
    oslog = _BYLoggingFacility();
    v7 = OS_LOG_TYPE_DEFAULT;
    if (os_log_type_enabled(oslog, OS_LOG_TYPE_DEFAULT))
    {
      sub_10006AE18(buf, location[0]);
      _os_log_impl(&_mh_execute_header, oslog, v7, "Found latest backup item: %@", buf, 0xCu);
    }

    objc_storeStrong(&oslog, 0);
    [*(a1 + 48) renewCredentialsThenStartRestore:location[0]];
    objc_storeStrong(location, 0);
  }

  else
  {
    v6 = _BYLoggingFacility();
    v5 = OS_LOG_TYPE_DEFAULT;
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      v2 = v6;
      v3 = v5;
      sub_10006AA68(v4);
      _os_log_impl(&_mh_execute_header, v2, v3, "Failed to get the latest snapshot from a backup (no snapshot returned)", v4, 2u);
    }

    objc_storeStrong(&v6, 0);
    [*(a1 + 48) restoreFailedWithError:*(a1 + 56)];
  }
}

id sub_1000973E4()
{
  v9 = 0;
  v10 = &v9;
  v11 = 1342177280;
  v12 = 32;
  v8 = qword_1003A7008;
  v13 = qword_1003A7008;
  if (!qword_1003A7008)
  {
    v2.super.isa = _NSConcreteStackBlock;
    v3 = -1073741824;
    v4 = 0;
    v5 = sub_100098080;
    v6 = &unk_10032B070;
    v7 = &v9;
    sub_100098080(&v2);
  }

  v0 = v10[3];
  _Block_object_dispose(&v9, 8);

  return v0;
}

void sub_1000974F8(uint64_t a1, char a2, id obj)
{
  v16 = a1;
  v15 = a2;
  location = 0;
  objc_storeStrong(&location, obj);
  v13 = a1;
  v4 = &_dispatch_main_q;
  block = _NSConcreteStackBlock;
  v6 = -1073741824;
  v7 = 0;
  v8 = sub_10009761C;
  v9 = &unk_10032B9C8;
  v12 = v15 & 1;
  v10 = location;
  v11 = *(a1 + 32);
  dispatch_async(v4, &block);

  objc_storeStrong(&v11, 0);
  objc_storeStrong(&v10, 0);
  objc_storeStrong(&location, 0);
}

void sub_10009761C(uint64_t a1)
{
  oslog[2] = a1;
  oslog[1] = a1;
  oslog[0] = _BYLoggingFacility();
  if (os_log_type_enabled(oslog[0], OS_LOG_TYPE_DEFAULT))
  {
    sub_100097718(buf, *(a1 + 48) & 1, *(a1 + 32));
    _os_log_impl(&_mh_execute_header, oslog[0], OS_LOG_TYPE_DEFAULT, "iCloudQuota needs to run: %d, error: %@", buf, 0x12u);
  }

  objc_storeStrong(oslog, 0);
  if (*(a1 + 40))
  {
    (*(*(a1 + 40) + 16))();
  }
}

double sub_100097718(uint64_t a1, int a2, uint64_t a3)
{
  *&result = 67109378;
  *a1 = 67109378;
  *(a1 + 4) = a2;
  *(a1 + 8) = 2112;
  *(a1 + 10) = a3;
  return result;
}

id sub_1000978D0()
{
  v9 = 0;
  v10 = &v9;
  v11 = 1342177280;
  v12 = 32;
  v8 = qword_1003A7018;
  v13 = qword_1003A7018;
  if (!qword_1003A7018)
  {
    v2.super.isa = _NSConcreteStackBlock;
    v3 = -1073741824;
    v4 = 0;
    v5 = sub_100098434;
    v6 = &unk_10032B070;
    v7 = &v9;
    sub_100098434(&v2);
  }

  v0 = v10[3];
  _Block_object_dispose(&v9, 8);

  return v0;
}

void sub_100098080(NSAssertionHandler *a1)
{
  sub_1000981C4();
  *(*(a1[4].super.isa + 1) + 24) = objc_getClass("ICQUpgradeFlowManager");
  if (!*(*(a1[4].super.isa + 1) + 24))
  {
    a1 = +[NSAssertionHandler currentHandler];
    v2 = [NSString stringWithUTF8String:"Class getICQUpgradeFlowManagerClass(void)_block_invoke"];
    [(NSAssertionHandler *)a1 handleFailureInFunction:v2 file:@"BuddyiCloudQuotaController.m" lineNumber:29 description:@"Unable to find class %s", "ICQUpgradeFlowManager"];

    __break(1u);
  }

  qword_1003A7008 = *(*(a1[4].super.isa + 1) + 24);
}

void sub_1000981C4()
{
  if (!sub_1000982EC())
  {
    v0 = +[NSAssertionHandler currentHandler];
    v1 = [NSString stringWithUTF8String:"void *iCloudQuotaUILibrary(void)"];
    [(NSAssertionHandler *)v0 handleFailureInFunction:v1 file:@"BuddyiCloudQuotaController.m" lineNumber:28 description:@"%s", 0];

    __break(1u);
  }
}

uint64_t sub_1000982EC()
{
  if (!qword_1003A7010)
  {
    sub_1000983A0();
  }

  return qword_1003A7010;
}

uint64_t sub_1000983A0()
{
  result = _sl_dlopen();
  qword_1003A7010 = result;
  return result;
}

void sub_100098434(NSAssertionHandler *a1)
{
  sub_100098578();
  *(*(a1[4].super.isa + 1) + 24) = objc_getClass("ICQOfferManager");
  if (!*(*(a1[4].super.isa + 1) + 24))
  {
    a1 = +[NSAssertionHandler currentHandler];
    v2 = [NSString stringWithUTF8String:"Class getICQOfferManagerClass(void)_block_invoke"];
    [(NSAssertionHandler *)a1 handleFailureInFunction:v2 file:@"BuddyiCloudQuotaController.m" lineNumber:25 description:@"Unable to find class %s", "ICQOfferManager"];

    __break(1u);
  }

  qword_1003A7018 = *(*(a1[4].super.isa + 1) + 24);
}

void sub_100098578()
{
  if (!sub_1000986A0())
  {
    v0 = +[NSAssertionHandler currentHandler];
    v1 = [NSString stringWithUTF8String:"void *iCloudQuotaLibrary(void)"];
    [(NSAssertionHandler *)v0 handleFailureInFunction:v1 file:@"BuddyiCloudQuotaController.m" lineNumber:24 description:@"%s", 0];

    __break(1u);
  }
}

uint64_t sub_1000986A0()
{
  if (!qword_1003A7020)
  {
    sub_100098754();
  }

  return qword_1003A7020;
}

uint64_t sub_100098754()
{
  result = _sl_dlopen();
  qword_1003A7020 = result;
  return result;
}

void sub_10009AC0C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, int a9, int a10, _Unwind_Exception *exception_object, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, id location)
{
  objc_destroyWeak(v18);
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_10009AC2C(uint64_t a1, char a2)
{
  if (a2)
  {
    WeakRetained = objc_loadWeakRetained((a1 + 40));
    v4 = [*(a1 + 32) selectedChoice];
    [WeakRetained selectChoice:v4];
  }
}

void sub_10009CCCC(id *a1)
{
  location[2] = a1;
  location[1] = a1;
  location[0] = objc_loadWeakRetained(a1 + 4);
  if (location[0])
  {
    [location[0] _reverifyUserConfigurationState];
  }

  objc_storeStrong(location, 0);
}

void sub_10009CD60(void *a1, void *a2)
{
  location[1] = a1;
  location[0] = 0;
  objc_storeStrong(location, a2);
  (*(a1[4] + 16))();
  objc_storeStrong(location, 0);
}

id sub_10009DB20(NSObject *a1, char a2)
{
  v15 = a1;
  v14 = a2;
  oslog[1] = a1;
  if (a2)
  {
    oslog[0] = _BYLoggingFacility();
    v12 = OS_LOG_TYPE_DEFAULT;
    if (os_log_type_enabled(oslog[0], OS_LOG_TYPE_DEFAULT))
    {
      v3 = oslog[0];
      v4 = v12;
      sub_10006AA68(buf);
      _os_log_impl(&_mh_execute_header, v3, v4, "Timed out waiting for Wi-Fi!", buf, 2u);
    }

    objc_storeStrong(oslog, 0);
  }

  else
  {
    v10 = _BYLoggingFacility();
    v9 = OS_LOG_TYPE_DEFAULT;
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
    {
      v5 = v10;
      v6 = v9;
      sub_10006AA68(v8);
      _os_log_impl(&_mh_execute_header, v5, v6, "Wi-Fi Acquired!", v8, 2u);
    }

    objc_storeStrong(&v10, 0);
  }

  return [(objc_class *)a1[4].isa _startFlow];
}

void sub_10009DC40(uint64_t a1)
{
  v12 = a1;
  location[1] = a1;
  location[0] = [UIAlertController alertControllerWithTitle:*(v12 + 32) message:*(v12 + 40) preferredStyle:1];
  v2 = location[0];
  v3 = *(a1 + 48);
  v6 = _NSConcreteStackBlock;
  v7 = 3221225472;
  v8 = sub_10009DDB8;
  v9 = &unk_10032B598;
  v10 = *(a1 + 56);
  v4 = [UIAlertAction actionWithTitle:v3 style:0 handler:&v6];
  [v2 addAction:{v4, v6, v7, v8, v9}];

  v5 = [*(*(a1 + 64) + 16) topViewController];
  [v5 presentViewController:location[0] animated:1 completion:0];

  objc_storeStrong(&v10, 0);
  objc_storeStrong(location, 0);
}

void sub_10009DDB8(void *a1, void *a2)
{
  location[1] = a1;
  location[0] = 0;
  objc_storeStrong(location, a2);
  v3 = +[BYManagedAppleIDBootstrap sharedManager];
  [v3 switchToLoginWindowDueToError:a1[4] completion:0];

  objc_storeStrong(location, 0);
}

void sub_10009E56C(uint64_t a1, uint64_t a2)
{
  v3 = (a2 + 40);
  v2 = *(a2 + 40);
  *(a1 + 40) = 0;
  objc_storeStrong((a1 + 40), v2);

  objc_storeStrong(v3, 0);
}

double sub_10009E5BC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  *&result = 138412802;
  *a1 = 138412802;
  *(a1 + 4) = a2;
  *(a1 + 12) = 2112;
  *(a1 + 14) = a3;
  *(a1 + 22) = 2112;
  *(a1 + 24) = a4;
  return result;
}

void sub_10009E5E4(uint64_t a1, void *a2, void *a3)
{
  location[1] = a1;
  location[0] = 0;
  objc_storeStrong(location, a2);
  v14 = 0;
  objc_storeStrong(&v14, a3);
  v13[1] = a1;
  v5 = &_dispatch_main_q;
  block = _NSConcreteStackBlock;
  v7 = -1073741824;
  v8 = 0;
  v9 = sub_10009E750;
  v10 = &unk_10032BB10;
  v11 = v14;
  v12 = *(a1 + 32);
  v13[0] = location[0];
  dispatch_async(v5, &block);

  objc_storeStrong((*(*(a1 + 40) + 8) + 40), 0);
  objc_storeStrong(v13, 0);
  objc_storeStrong(&v12, 0);
  objc_storeStrong(&v11, 0);
  objc_storeStrong(&v14, 0);
  objc_storeStrong(location, 0);
}

void sub_10009E750(uint64_t a1)
{
  v12[2] = a1;
  v12[1] = a1;
  if (*(a1 + 32))
  {
    [*(a1 + 40) _stopSpinning];
    [*(a1 + 40) _retryFlowIfPossibleOrFailWithError:*(a1 + 32)];
  }

  else
  {
    v2 = +[BYManagedAppleIDBootstrap sharedManager];
    [v2 postUserSwitchContextHasBeenUsed];

    v12[0] = [*(a1 + 48) objectForKeyedSubscript:AKAuthenticationUsernameKey];
    location = [*(a1 + 48) objectForKeyedSubscript:AKAuthenticationPasswordKey];
    v3 = *(a1 + 40);
    v4 = [v3[1] passwordForCreating];
    v5 = _NSConcreteStackBlock;
    v6 = -1073741824;
    v7 = 0;
    v8 = sub_10009E904;
    v9 = &unk_10032BAE8;
    v10 = *(a1 + 40);
    [v3 createAndRecoverAccountWithUsername:v12[0] password:location rawPassword:v4 completion:&v5];

    objc_storeStrong(&v10, 0);
    objc_storeStrong(&location, 0);
    objc_storeStrong(v12, 0);
  }
}

void sub_10009E904(uint64_t a1, char a2, id obj)
{
  v16 = a1;
  v15 = a2;
  location = 0;
  objc_storeStrong(&location, obj);
  v13 = a1;
  v4 = &_dispatch_main_q;
  block = _NSConcreteStackBlock;
  v6 = -1073741824;
  v7 = 0;
  v8 = sub_10009EA28;
  v9 = &unk_10032BAC0;
  v10 = *(a1 + 32);
  v12 = v15 & 1;
  v11 = location;
  dispatch_async(v4, &block);

  objc_storeStrong(&v11, 0);
  objc_storeStrong(&v10, 0);
  objc_storeStrong(&location, 0);
}

id sub_10009EA28(uint64_t a1)
{
  [*(a1 + 32) _stopSpinning];
  if ((*(a1 + 48) & 1) == 0 || *(a1 + 40))
  {
    return [*(a1 + 32) _retryFlowIfPossibleOrFailWithError:*(a1 + 40)];
  }

  v2 = +[BYManagedAppleIDBootstrap sharedManager];
  [v2 markUserWithManagedCredentials];

  return [*(a1 + 32) controllerDone];
}

void sub_10009ED28(void *a1)
{
  location[2] = a1;
  location[1] = a1;
  v2 = [*(a1[4] + 16) topViewController];
  location[0] = [v2 navigationItem];

  [BFFViewControllerSpinnerManager startAnimatingSpinnerFor:*(a1[4] + 16) identifier:@"passwordchange"];
  v3 = +[NSBundle mainBundle];
  v4 = [(NSBundle *)v3 localizedStringForKey:@"MULTI_USER_LOADING_PASSWORD_CHANGE" value:&stru_10032F900 table:@"Localizable"];
  [location[0] setTitle:v4];

  v5 = [*(a1[4] + 16) topViewController];
  v6 = [v5 view];
  v7 = [v6 window];
  [v7 setUserInteractionEnabled:0];

  objc_storeStrong(location, 0);
}

void sub_10009F0B4(uint64_t a1, char a2, char a3, id obj)
{
  v17 = a1;
  v16 = a2;
  v15 = a3;
  location = 0;
  objc_storeStrong(&location, obj);
  v13[1] = a1;
  if (v15)
  {
    v13[0] = objc_opt_new();
    v12 = [v13[0] aa_primaryAppleAccount];
    if (*(a1 + 32))
    {
      [v12 _aa_setRawPassword:*(a1 + 32)];
    }

    v5 = *(a1 + 40);
    v6 = _NSConcreteStackBlock;
    v7 = -1073741824;
    v8 = 0;
    v9 = sub_10009F220;
    v10 = &unk_10032AEC8;
    v11 = *(a1 + 48);
    [v5 enableDataClassesForAccount:v12 completion:&v6];
    objc_storeStrong(&v11, 0);
    objc_storeStrong(&v12, 0);
    objc_storeStrong(v13, 0);
  }

  else if (*(a1 + 48))
  {
    (*(*(a1 + 48) + 16))();
  }

  objc_storeStrong(&location, 0);
}

void sub_10009F220(id *a1, char a2, id obj)
{
  v13 = a1;
  v12 = a2;
  location = 0;
  objc_storeStrong(&location, obj);
  v10[1] = a1;
  if (v12)
  {
    v4 = +[BYManagedAppleIDBootstrap sharedManager];
    v5 = _NSConcreteStackBlock;
    v6 = -1073741824;
    v7 = 0;
    v8 = sub_10009F34C;
    v9 = &unk_10032AEC8;
    v10[0] = a1[4];
    [v4 recoverEMCSWithCompletion:&v5];

    objc_storeStrong(v10, 0);
  }

  else if (a1[4])
  {
    (*(a1[4] + 2))();
  }

  objc_storeStrong(&location, 0);
}

void sub_10009F34C(NSObject *a1, char a2, id obj)
{
  v7 = a1;
  v6 = a2;
  location = 0;
  objc_storeStrong(&location, obj);
  oslog[1] = a1;
  if (location)
  {
    oslog[0] = _BYLoggingFacility();
    if (os_log_type_enabled(oslog[0], OS_LOG_TYPE_ERROR))
    {
      sub_100071CBC(buf, location);
      _os_log_error_impl(&_mh_execute_header, oslog[0], OS_LOG_TYPE_ERROR, "Failed to recover EMCS after password change. Ignoring error: %{public}@.", buf, 0xCu);
    }

    objc_storeStrong(oslog, 0);
  }

  if (a1[4].isa)
  {
    (*(a1[4].isa + 2))();
  }

  objc_storeStrong(&location, 0);
}

void sub_10009F8CC(id *a1)
{
  location[2] = a1;
  location[1] = a1;
  v2 = +[NSDate date];
  [a1[4] setStartTime:v2];

  objc_initWeak(location, a1[4]);
  v3 = _NSConcreteStackBlock;
  v4 = -1073741824;
  v5 = 0;
  v6 = sub_10009FA14;
  v7 = &unk_10032AF58;
  objc_copyWeak(&v8, location);
  v9 = objc_retainBlock(&v3);
  if ([a1[4] addWirelessNetworks])
  {
    [a1[4] waitForWirelessConnection:v9];
  }

  else
  {
    (*(v9 + 2))();
  }

  objc_storeStrong(&v9, 0);
  objc_destroyWeak(&v8);
  objc_destroyWeak(location);
}

void sub_10009FA14(id *a1)
{
  location[2] = a1;
  location[1] = a1;
  location[0] = objc_loadWeakRetained(a1 + 4);
  [location[0] endProximityIfApplicable];
  v1 = [location[0] startTime];
  [v1 timeIntervalSinceNow];
  v3 = -v2;

  v19 = v3;
  if (v3 >= 1.0)
  {
    v6 = &_dispatch_main_q;
    v7 = _NSConcreteStackBlock;
    v8 = -1073741824;
    v9 = 0;
    v10 = sub_10009FC74;
    v11 = &unk_10032B0D0;
    v12 = location[0];
    dispatch_async(v6, &v7);

    objc_storeStrong(&v12, 0);
  }

  else
  {
    v4 = dispatch_time(0, ((1.0 - v19) * 1000000000.0));
    v5 = &_dispatch_main_q;
    block = _NSConcreteStackBlock;
    v14 = -1073741824;
    v15 = 0;
    v16 = sub_10009FC1C;
    v17 = &unk_10032B0D0;
    v18 = location[0];
    dispatch_after(v4, v5, &block);

    objc_storeStrong(&v18, 0);
  }

  objc_storeStrong(location, 0);
}

void sub_10009FC1C(uint64_t a1)
{
  v2 = [*(a1 + 32) delegate];
  [v2 flowItemDone:*(a1 + 32)];
}

void sub_10009FC74(uint64_t a1)
{
  v2 = [*(a1 + 32) delegate];
  [v2 flowItemDone:*(a1 + 32)];
}

void sub_1000A012C(NSObject *a1, char a2)
{
  v15 = a1;
  v14 = a2;
  oslog[1] = a1;
  if (a2)
  {
    oslog[0] = _BYLoggingFacility();
    v12 = OS_LOG_TYPE_DEFAULT;
    if (os_log_type_enabled(oslog[0], OS_LOG_TYPE_DEFAULT))
    {
      v3 = oslog[0];
      v4 = v12;
      sub_10006AA68(buf);
      _os_log_impl(&_mh_execute_header, v3, v4, "Timed out waiting for device to connect to Wi-Fi", buf, 2u);
    }

    objc_storeStrong(oslog, 0);
  }

  else
  {
    v10 = _BYLoggingFacility();
    v9 = OS_LOG_TYPE_DEFAULT;
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
    {
      v5 = v10;
      v6 = v9;
      sub_10006AA68(v8);
      _os_log_impl(&_mh_execute_header, v5, v6, "Device connected to Wi-Fi!", v8, 2u);
    }

    objc_storeStrong(&v10, 0);
    v7 = [(objc_class *)a1[4].isa networkProvider];
    [v7 assumeNetworkReachabilityOverWiFi];
  }

  if (a1[5].isa)
  {
    (*(a1[5].isa + 2))();
  }
}

uint64_t sub_1000A0570(uint64_t a1, uint64_t a2)
{
  v37 = a1;
  v36 = a2;
  v35 = a1;
  v3 = [*(a1 + 32) proximitySetupController];
  v4 = [v3 hasAppliedSettings];

  v34 = v4 & 1;
  v5 = [*(a1 + 32) proximitySetupController];
  v6 = [v5 information];
  v7 = [v6 networks];
  v8 = [v7 count] != 0;

  v33 = v8;
  v9 = [*(a1 + 32) proximitySetupController];
  v10 = [v9 handshake];
  LOBYTE(v7) = [v10 hasPasscodeSet];

  v32 = v7 & 1;
  v11 = [*(a1 + 32) proximitySetupController];
  LOBYTE(v10) = [v11 hasValidatedPasscode];

  v31 = v10 & 1;
  if ((v7 & 1) == 0 || (v12 = 1, (v31 & 1) == 0))
  {
    v12 = (v32 & 1) == 0;
  }

  v30 = v12;
  v29 = 0;
  if (v36 == 1)
  {
    v29 = 1;
  }

  else if (v36 == 2)
  {
    v29 = 0;
    v30 = 1;
  }

  if (v29 & 1) != 0 && (v30)
  {
    v13 = [*(a1 + 32) prepareForDeviceMigrationBlock];
    v13[2](v13, 0);
  }

  v14 = [*(a1 + 32) networkProvider];
  v15 = [v14 connectedOverWiFiAndNetworkReachable] ^ 1;

  v28 = v15 & 1;
  v16 = 0;
  if (v34)
  {
    v16 = 0;
    if (v28)
    {
      v16 = 0;
      if (v33)
      {
        v16 = v30;
      }
    }
  }

  v27 = v16;
  if ((v16 & 1) == 0)
  {
    oslog = _BYLoggingFacility();
    v25 = OS_LOG_TYPE_DEFAULT;
    if (os_log_type_enabled(oslog, OS_LOG_TYPE_DEFAULT))
    {
      sub_1000A094C(buf, v34 & 1, v28 & 1, v33, v30 & 1);
      _os_log_impl(&_mh_execute_header, oslog, v25, "Proximity Applying Settings does not need to run (applied settings: %d, waiting for Wi-Fi: %d, has networks to add: %d, user is trusted: %d)", buf, 0x1Au);
    }

    objc_storeStrong(&oslog, 0);
    v17 = dispatch_get_global_queue(0, 0);
    block = _NSConcreteStackBlock;
    v20 = -1073741824;
    v21 = 0;
    v22 = sub_1000A0978;
    v23 = &unk_10032B0D0;
    v24 = *(a1 + 32);
    dispatch_async(v17, &block);

    objc_storeStrong(&v24, 0);
  }

  return (*(*(a1 + 40) + 16))();
}

double sub_1000A094C(uint64_t a1, int a2, int a3, int a4, int a5)
{
  result = 2.0542726e-289;
  *a1 = 67109888;
  *(a1 + 4) = a2;
  *(a1 + 8) = 1024;
  *(a1 + 10) = a3;
  *(a1 + 14) = 1024;
  *(a1 + 16) = a4;
  *(a1 + 20) = 1024;
  *(a1 + 22) = a5;
  return result;
}

void sub_1000A1034(uint64_t a1)
{
  v1 = [*(a1 + 32) _activationController];
  [v1 restart];
}

void sub_1000A17D4()
{
  if (!sub_1000B10A4())
  {
    v0 = +[NSAssertionHandler currentHandler];
    v1 = [NSString stringWithUTF8String:"void *WiFiKitUILibrary(void)"];
    [(NSAssertionHandler *)v0 handleFailureInFunction:v1 file:@"BuddyNavigationFlowController.m" lineNumber:113 description:@"%s", 0];

    __break(1u);
  }
}

void sub_1000A1E4C(id *a1)
{
  v9[2] = a1;
  v9[1] = a1;
  v2 = [a1[4] flowProducer];
  v3 = _NSConcreteStackBlock;
  v4 = -1073741824;
  v5 = 0;
  v6 = sub_1000A1F40;
  v7 = &unk_10032AFD0;
  v8 = a1[4];
  v9[0] = a1[5];
  [v2 prepareWithCompletion:&v3];

  objc_storeStrong(v9, 0);
  objc_storeStrong(&v8, 0);
}

void sub_1000A1F40(uint64_t a1)
{
  location[2] = a1;
  location[1] = a1;
  v2 = &_dispatch_main_q;
  dispatch_assert_queue_V2(v2);

  location[0] = _BYLoggingFacility();
  v25 = OS_LOG_TYPE_DEFAULT;
  if (os_log_type_enabled(location[0], OS_LOG_TYPE_DEFAULT))
  {
    v3 = location[0];
    v4 = v25;
    sub_10006AA68(buf);
    _os_log_impl(&_mh_execute_header, v3, v4, "Flow started preparation complete!", buf, 2u);
  }

  objc_storeStrong(location, 0);
  [*(a1 + 32) _resumeNavigationQueue];
  v5 = [*(a1 + 32) flowProducer];
  v23 = [v5 initialFlowItemClass];

  oslog = _BYLoggingFacility();
  v21 = OS_LOG_TYPE_DEFAULT;
  if (os_log_type_enabled(oslog, OS_LOG_TYPE_DEFAULT))
  {
    sub_10006AE18(v27, v23);
    _os_log_impl(&_mh_execute_header, oslog, v21, "Starting initial flow with %@...", v27, 0xCu);
  }

  objc_storeStrong(&oslog, 0);
  v20 = [*(a1 + 32) _createConditionalFlowItemForClass:v23];
  v6 = [*(a1 + 32) flowProducer];
  v19 = [v6 debutFlowItemClass];

  while (1)
  {
    v7 = 0;
    if (v23)
    {
      v7 = v20 == 0;
    }

    if (!v7)
    {
      break;
    }

    v8 = [*(a1 + 32) _createConditionalFlowItemForClass:v23];
    v9 = v20;
    v20 = v8;

    if (!v20)
    {
      if (v19 == v23)
      {
        v18 = [NSString stringWithFormat:@"debutAndInitialFlowItemCreationFailed.%@.%@", v23, v19];
        v17 = [NSString stringWithFormat:@"Debut flow item (%@) could not be created", v19];
        v16 = [NSException exceptionWithName:v17 reason:0 userInfo:0];
        v10 = [*(*(a1 + 32) + 152) diagnosticsThreadDecorator];
        [v10 addDiagnostics:v18 thenThrowException:v16];

        objc_storeStrong(&v16, 0);
        objc_storeStrong(&v17, 0);
        objc_storeStrong(&v18, 0);
      }

      v11 = [*(a1 + 32) flowProducer];
      v23 = [v11 potentialNextFlowItemClassFollowingFlowItemClass:v23];
    }
  }

  if (!v20)
  {
    v15 = [NSString stringWithFormat:@"noInitialFlowItem.%@.%@", v23, v19];
    v14 = [NSException exceptionWithName:@"No Initial Flow Item Found" reason:0 userInfo:0];
    v12 = [*(*(a1 + 32) + 152) diagnosticsThreadDecorator];
    [v12 addDiagnostics:v15 thenThrowException:v14];

    objc_storeStrong(&v14, 0);
    objc_storeStrong(&v15, 0);
  }

  if (v19)
  {
    [*(a1 + 32) _setupInitialFlowFromInitialFlowItem:v20 debutFlowItemClass:v19 completion:*(a1 + 40)];
  }

  else
  {
    [*(a1 + 32) _beginEventForNavigationDuration];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v13 = [*(a1 + 32) buddyControllers];
      [v13 addObject:v20];

      [v20 startFlowAnimated:0];
    }

    else
    {
      [*(a1 + 32) pushFlowItem:v20 animated:0];
    }

    if (*(a1 + 40))
    {
      (*(*(a1 + 40) + 16))();
    }
  }

  objc_storeStrong(&v20, 0);
}

void sub_1000A24B0(id *a1)
{
  v8[2] = a1;
  v8[1] = a1;
  v2 = &_dispatch_main_q;
  block = _NSConcreteStackBlock;
  v4 = -1073741824;
  v5 = 0;
  v6 = sub_1000A2588;
  v7 = &unk_10032B0D0;
  v8[0] = a1[4];
  dispatch_async(v2, &block);

  objc_storeStrong(v8, 0);
}

void sub_1000A2588(id *a1)
{
  v15[2] = a1;
  v15[1] = a1;
  [a1[4] setTapFreeSetUp:1];
  v2 = [a1[4] buddyControllers];
  v15[0] = [v2 lastObject];

  v3 = [a1[4] navigator];
  v14 = [v3 topViewController];

  v12 = 0;
  v4 = 0;
  if (v15[0])
  {
    v13 = [a1[4] _viewControllerForBuddyController:v15[0]];
    v12 = 1;
    v4 = v13 == v14;
  }

  if (v12)
  {
  }

  if (v4 && ([a1[4] _doesTapFreeSetUpAffectsClass:objc_opt_class()] & 1) != 0)
  {
    oslog = _BYLoggingFacility();
    v10 = OS_LOG_TYPE_DEFAULT;
    if (os_log_type_enabled(oslog, OS_LOG_TYPE_DEFAULT))
    {
      v5 = objc_opt_class();
      location = NSStringFromClass(v5);
      sub_10006AE18(buf, location);
      _os_log_impl(&_mh_execute_header, oslog, v10, "TFDEP: Forcing %@ to be done for tap free setup!", buf, 0xCu);

      objc_storeStrong(&location, 0);
    }

    objc_storeStrong(&oslog, 0);
    v6 = a1[4];
    v7 = v15[0];
    v8 = [v6 _flowForFlowItem:v15[0]];
    [v6 _flowItemDone:v7 flow:v8 nextItemClass:0 nextItem:0];
  }

  objc_storeStrong(&v14, 0);
  objc_storeStrong(v15, 0);
}

void sub_1000A289C(uint64_t a1)
{
  v11 = a1;
  v10 = a1;
  if ([*(a1 + 32) _shouldAutoProceedPostUserSpaceReboot] & 1)
  {
    v2 = &_dispatch_main_q;
    v3 = _NSConcreteStackBlock;
    v4 = -1073741824;
    v5 = 0;
    v6 = sub_1000A298C;
    v7 = &unk_10032B0D0;
    v8 = *(a1 + 32);
    dispatch_async(v2, &v3);

    objc_storeStrong(&v8, 0);
  }
}

void sub_1000A298C(NSObject *a1)
{
  oslog[2] = a1;
  oslog[1] = a1;
  oslog[0] = _BYLoggingFacility();
  v7 = OS_LOG_TYPE_DEFAULT;
  if (os_log_type_enabled(oslog[0], OS_LOG_TYPE_DEFAULT))
  {
    v2 = oslog[0];
    v3 = v7;
    sub_10006AA68(v6);
    _os_log_impl(&_mh_execute_header, v2, v3, "Proceeding past language/locale pane(s)...", v6, 2u);
  }

  objc_storeStrong(oslog, 0);
  isa = a1[4].isa;
  v5 = [(objc_class *)isa _flowItemFollowingClass:objc_opt_class()];
  [(objc_class *)isa pushFlowItem:v5 inFlow:0 animated:1];
}

void sub_1000A2B44(uint64_t a1)
{
  v11 = a1;
  v10 = a1;
  if ([*(a1 + 32) _shouldAutoProceedPostUserSpaceReboot] & 1)
  {
    v2 = &_dispatch_main_q;
    v3 = _NSConcreteStackBlock;
    v4 = -1073741824;
    v5 = 0;
    v6 = sub_1000A2C34;
    v7 = &unk_10032B0D0;
    v8 = *(a1 + 32);
    dispatch_async(v2, &v3);

    objc_storeStrong(&v8, 0);
  }
}

void sub_1000A2C34(NSObject *a1)
{
  oslog[2] = a1;
  oslog[1] = a1;
  oslog[0] = _BYLoggingFacility();
  v7 = OS_LOG_TYPE_DEFAULT;
  if (os_log_type_enabled(oslog[0], OS_LOG_TYPE_DEFAULT))
  {
    v2 = oslog[0];
    v3 = v7;
    sub_10006AA68(v6);
    _os_log_impl(&_mh_execute_header, v2, v3, "Proceeding past appearance pane...", v6, 2u);
  }

  objc_storeStrong(oslog, 0);
  isa = a1[4].isa;
  v5 = [(objc_class *)isa _flowItemFollowingClass:objc_opt_class()];
  [(objc_class *)isa pushFlowItem:v5 inFlow:0 animated:1];
}

void sub_1000A2DEC(id *a1)
{
  v8[2] = a1;
  v8[1] = a1;
  v2 = &_dispatch_main_q;
  block = _NSConcreteStackBlock;
  v4 = -1073741824;
  v5 = 0;
  v6 = sub_1000A2EC4;
  v7 = &unk_10032B0D0;
  v8[0] = a1[4];
  dispatch_async(v2, &block);

  objc_storeStrong(v8, 0);
}

void sub_1000A2EC4(id *a1)
{
  v12[2] = a1;
  v12[1] = a1;
  v2 = [a1[4] buddyControllers];
  v12[0] = [v2 lastObject];

  if ([v12[0] isMemberOfClass:objc_opt_class()])
  {
    location = objc_alloc_init(NSMutableArray);
    memset(v9, 0, sizeof(v9));
    v3 = [a1[4] buddyControllers];
    v4 = [v3 countByEnumeratingWithState:v9 objects:v13 count:16];
    if (v4)
    {
      v5 = *v9[2];
      do
      {
        for (i = 0; i < v4; ++i)
        {
          if (*v9[2] != v5)
          {
            objc_enumerationMutation(v3);
          }

          v10 = *(v9[1] + 8 * i);
          if (([v10 isMemberOfClass:objc_opt_class()] & 1) == 0)
          {
            objc_opt_class();
            if ((objc_opt_isKindOfClass() & 1) == 0)
            {
              continue;
            }
          }

          v7 = location;
          v8 = [a1[4] _viewControllerForBuddyController:v10];
          [v7 addObject:v8];
        }

        v4 = [v3 countByEnumeratingWithState:v9 objects:v13 count:16];
      }

      while (v4);
    }

    [a1[4] setViewControllersToRemoveOnPush:location];
    [a1[4] flowItemDone:v12[0]];
    objc_storeStrong(&location, 0);
  }

  objc_storeStrong(v12, 0);
}

double sub_1000A4DC0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  *&result = 136315394;
  *a1 = 136315394;
  *(a1 + 4) = a2;
  *(a1 + 12) = 2048;
  *(a1 + 14) = a3;
  return result;
}

void sub_1000A52F0(NSObject *a1, char a2)
{
  v18 = a1;
  v17 = a2;
  oslog[1] = a1;
  if (*(*(a1[8].isa + 1) + 24))
  {
    oslog[0] = _BYLoggingFacility();
    v15 = OS_LOG_TYPE_ERROR;
    if (os_log_type_enabled(oslog[0], OS_LOG_TYPE_ERROR))
    {
      location = objc_opt_class();
      sub_100071CBC(buf, location);
      _os_log_error_impl(&_mh_execute_header, oslog[0], v15, "Extended init completion called more than once for %{public}@", buf, 0xCu);
      objc_storeStrong(&location, 0);
    }

    objc_storeStrong(oslog, 0);
  }

  else
  {
    *(*(a1[8].isa + 1) + 24) = 1;
    v3 = &_dispatch_main_q;
    block = _NSConcreteStackBlock;
    v5 = -1073741824;
    v6 = 0;
    v7 = sub_1000A5520;
    v8 = &unk_10032BBB0;
    v9 = a1[4].isa;
    v13 = v17 & 1;
    v10 = a1[5].isa;
    v11 = a1[6].isa;
    v12 = a1[7].isa;
    dispatch_async(v3, &block);

    objc_storeStrong(&v12, 0);
    objc_storeStrong(&v11, 0);
    objc_storeStrong(&v10, 0);
    objc_storeStrong(&v9, 0);
  }
}

void sub_1000A5520(uint64_t a1)
{
  v15[2] = a1;
  v15[1] = a1;
  v15[0] = +[NSDate date];
  oslog = _BYLoggingFacility();
  v13 = OS_LOG_TYPE_DEFAULT;
  if (os_log_type_enabled(oslog, OS_LOG_TYPE_DEFAULT))
  {
    location = objc_opt_class();
    sub_1000A57DC(buf, location, *(a1 + 64) & 1);
    _os_log_impl(&_mh_execute_header, oslog, v13, "Extended init for %{public}@ finished, shouldShow = %d", buf, 0x12u);
    objc_storeStrong(&location, 0);
  }

  objc_storeStrong(&oslog, 0);
  v11 = _BYLoggingFacility();
  v10 = OS_LOG_TYPE_DEBUG;
  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEBUG))
  {
    [v15[0] timeIntervalSinceDate:*(a1 + 40)];
    v3 = v2;
    v9 = objc_opt_class();
    sub_10008E19C(v18, v3, v9);
    _os_log_debug_impl(&_mh_execute_header, v11, v10, "Extended initialization took %fs for %@", v18, 0x16u);
    objc_storeStrong(&v9, 0);
  }

  objc_storeStrong(&v11, 0);
  v4 = [*(a1 + 48) analyticsManager];
  v16[0] = @"class";
  v5 = objc_opt_class();
  v6 = NSStringFromClass(v5);
  v17[0] = v6;
  v16[1] = @"duration";
  [v15[0] timeIntervalSinceDate:*(a1 + 40)];
  v7 = [NSNumber numberWithDouble:?];
  v17[1] = v7;
  v8 = [NSDictionary dictionaryWithObjects:v17 forKeys:v16 count:2];
  [v4 addEvent:@"com.apple.setupassistant.ios.extendedinitialization" withPayload:v8 persist:1];

  (*(*(a1 + 56) + 16))();
  objc_storeStrong(v15, 0);
}

double sub_1000A57DC(uint64_t a1, uint64_t a2, int a3)
{
  *&result = 138543618;
  *a1 = 138543618;
  *(a1 + 4) = a2;
  *(a1 + 12) = 1024;
  *(a1 + 14) = a3;
  return result;
}

id sub_1000A6210(uint64_t a1, char a2)
{
  if (*(a1 + 64))
  {
    (*(*(a1 + 64) + 16))();
  }

  if (a2)
  {
    v3 = [*(a1 + 32) buddyControllers];
    [v3 addObject:*(a1 + 40)];

    return [*(a1 + 40) startFlowAnimated:*(a1 + 72) & 1];
  }

  else if (*(a1 + 48))
  {
    return [*(a1 + 48) flowItemDone:*(a1 + 56)];
  }

  else
  {
    return [*(a1 + 32) flowItemDone:*(a1 + 56)];
  }
}

id sub_1000A62FC(uint64_t a1, char a2)
{
  if (*(a1 + 56))
  {
    (*(*(a1 + 56) + 16))();
  }

  if (a2)
  {
    return [*(a1 + 32) pushFlowItem:*(a1 + 40) inFlow:*(a1 + 48) withExtendedInitialization:0 animated:*(a1 + 64) & 1];
  }

  if (*(a1 + 48))
  {
    return [*(a1 + 48) flowItemDone:*(a1 + 40)];
  }

  return [*(a1 + 32) flowItemDone:*(a1 + 40)];
}

void sub_1000A63D8(uint64_t a1, void *a2)
{
  location[1] = a1;
  location[0] = 0;
  objc_storeStrong(location, a2);
  v6[1] = a1;
  v6[0] = objc_loadWeakRetained((a1 + 48));
  if (!v6[0])
  {
    v5 = 1;
    goto LABEL_12;
  }

  if (!location[0])
  {
    if (objc_opt_respondsToSelector())
    {
      v3 = [v6[0] buddyControllers];
      [v3 addObject:*(a1 + 32)];

      [*(a1 + 32) startFlowItem:*(a1 + 56) & 1];
      v5 = 1;
      goto LABEL_12;
    }

    oslog = _BYLoggingFacility();
    if (os_log_type_enabled(oslog, OS_LOG_TYPE_ERROR))
    {
      sub_100073058(buf, *(a1 + 32), *(a1 + 40));
      _os_log_error_impl(&_mh_execute_header, oslog, OS_LOG_TYPE_ERROR, "No view controller for BuddyController %{public}@ in flow %{public}@", buf, 0x16u);
    }

    objc_storeStrong(&oslog, 0);
    if (*(a1 + 40))
    {
      [*(a1 + 40) flowItemDone:*(a1 + 32)];
    }

    else
    {
      [v6[0] flowItemDone:*(a1 + 32)];
    }
  }

  v5 = 0;
LABEL_12:
  objc_storeStrong(v6, 0);
  if (!v5)
  {
    v5 = 0;
  }

  objc_storeStrong(location, 0);
}

void sub_1000A7498(void *a1)
{
  v2 = a1[4];
  v3 = [v2 navigator];
  v4 = [v3 navigationController];
  [v2 navigationController:v4 didShowViewController:a1[5] operation:1 animated:1];

  if (a1[6])
  {
    (*(a1[6] + 16))();
  }
}

uint64_t sub_1000A7544(uint64_t result)
{
  if (*(result + 40))
  {
    return (*(*(result + 40) + 16))(*(result + 40), *(result + 32));
  }

  return result;
}

uint64_t sub_1000A7588(uint64_t result)
{
  if (*(result + 40))
  {
    return (*(*(result + 40) + 16))(*(result + 40), *(result + 32));
  }

  return result;
}

void sub_1000A75CC(uint64_t a1, void *a2)
{
  location[1] = a1;
  location[0] = 0;
  objc_storeStrong(location, a2);
  oslog[1] = a1;
  oslog[0] = _BYLoggingFacility();
  v21 = OS_LOG_TYPE_DEBUG;
  if (os_log_type_enabled(oslog[0], OS_LOG_TYPE_DEBUG))
  {
    v3 = [*(a1 + 32) navigator];
    v4 = [v3 view];
    v5 = [v4 window];
    sub_1000A4DC0(buf, "[BuddyNavigationFlowController _presentViewControllerForBuddyController:animated:willPresentViewController:completion:]_block_invoke", v5);
    _os_log_debug_impl(&_mh_execute_header, oslog[0], v21, "%s setUserInteractionEnabled YES %p", buf, 0x16u);
  }

  objc_storeStrong(oslog, 0);
  v6 = [*(a1 + 32) navigator];
  v7 = [v6 view];
  v8 = [v7 window];
  [v8 setUserInteractionEnabled:1];

  if (*(*(*(a1 + 88) + 8) + 24))
  {
    v20 = 1;
  }

  else
  {
    *(*(*(a1 + 96) + 8) + 24) = 1;
    dispatch_semaphore_signal(*(a1 + 40));
    v19 = _BYLoggingFacility();
    v18 = OS_LOG_TYPE_DEFAULT;
    if (os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
    {
      v17 = objc_opt_class();
      v16 = objc_opt_class();
      sub_100073058(v25, v17, v16);
      _os_log_impl(&_mh_execute_header, v19, v18, "Hosted view controller creation for %{public}@ => %{public}@ finished", v25, 0x16u);
      objc_storeStrong(&v16, 0);
      objc_storeStrong(&v17, 0);
    }

    objc_storeStrong(&v19, 0);
    v15 = _BYLoggingFacility();
    v14 = OS_LOG_TYPE_DEBUG;
    if (os_log_type_enabled(v15, OS_LOG_TYPE_DEBUG))
    {
      v9 = +[NSDate date];
      [(NSDate *)v9 timeIntervalSinceDate:*(a1 + 56)];
      v11 = v10;
      v13 = objc_opt_class();
      sub_1000A79D4(v24, v11, v13);
      _os_log_debug_impl(&_mh_execute_header, v15, v14, "Hosted view controller creation took %fs for %{public}@", v24, 0x16u);

      objc_storeStrong(&v13, 0);
    }

    objc_storeStrong(&v15, 0);
    [BFFViewControllerSpinnerManager stopAnimatingSpinnerFor:@"BuddyNavigationFlowController"];
    if (location[0])
    {
      if (*(a1 + 72))
      {
        (*(*(a1 + 72) + 16))(*(a1 + 72));
      }

      if (*(a1 + 64))
      {
        [*(a1 + 32) setLastUIResponder:*(a1 + 64)];
        [*(a1 + 64) resignFirstResponder];
      }

      [*(a1 + 32) _hideBackButtonIfNecessaryOnFlowItem:*(a1 + 48) withViewController:{location[0], v13}];
      v12 = [*(a1 + 32) buddyControllers];
      [v12 addObject:*(a1 + 48)];
    }

    if (*(a1 + 80))
    {
      (*(*(a1 + 80) + 16))();
    }

    v20 = 0;
  }

  objc_storeStrong(location, 0);
}

double sub_1000A79D4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  *&result = 134218242;
  *a1 = 134218242;
  *(a1 + 4) = a2;
  *(a1 + 12) = 2114;
  *(a1 + 14) = a3;
  return result;
}

void sub_1000A79F4(NSObject *a1)
{
  oslog[2] = a1;
  oslog[1] = a1;
  isa = a1[4].isa;
  v3 = dispatch_time(0, 10000000000);
  if (dispatch_semaphore_wait(isa, v3))
  {
    oslog[0] = _BYLoggingFacility();
    v15 = OS_LOG_TYPE_DEFAULT;
    if (os_log_type_enabled(oslog[0], OS_LOG_TYPE_DEFAULT))
    {
      location = objc_opt_class();
      sub_100071CBC(buf, location);
      _os_log_impl(&_mh_execute_header, oslog[0], v15, "Hosted view controller creation timed out for %{public}@", buf, 0xCu);
      objc_storeStrong(&location, 0);
    }

    objc_storeStrong(oslog, 0);
    v4 = &_dispatch_main_q;
    block = _NSConcreteStackBlock;
    v6 = -1073741824;
    v7 = 0;
    v8 = sub_1000A7C24;
    v9 = &unk_10032BCF0;
    v13[1] = a1[9].isa;
    v10 = a1[6].isa;
    v13[2] = a1[10].isa;
    v11 = a1[5].isa;
    v13[0] = a1[8].isa;
    v12 = a1[7].isa;
    dispatch_async(v4, &block);

    objc_storeStrong(&v12, 0);
    objc_storeStrong(v13, 0);
    objc_storeStrong(&v11, 0);
    objc_storeStrong(&v10, 0);
  }
}

NSObject *sub_1000A7C24(NSObject *result)
{
  v1 = result;
  oslog[2] = result;
  oslog[1] = result;
  if ((*(*(result[8].isa + 1) + 24) & 1) == 0)
  {
    oslog[0] = _BYLoggingFacility();
    if (os_log_type_enabled(oslog[0], OS_LOG_TYPE_DEBUG))
    {
      v2 = [(objc_class *)v1[4].isa navigator];
      v3 = [v2 view];
      v4 = [v3 window];
      sub_1000A4DC0(buf, "[BuddyNavigationFlowController _presentViewControllerForBuddyController:animated:willPresentViewController:completion:]_block_invoke", v4);
      _os_log_debug_impl(&_mh_execute_header, oslog[0], OS_LOG_TYPE_DEBUG, "%s setUserInteractionEnabled YES %p", buf, 0x16u);
    }

    objc_storeStrong(oslog, 0);
    v5 = [(objc_class *)v1[4].isa navigator];
    v6 = [v5 view];
    v7 = [v6 window];
    [v7 setUserInteractionEnabled:1];

    [BFFViewControllerSpinnerManager stopAnimatingSpinnerFor:@"BuddyNavigationFlowController"];
    *(*(v1[9].isa + 1) + 24) = 1;
    result = [(objc_class *)v1[5].isa cancelHostedPresentation];
    if (v1[7].isa)
    {
      return (*(v1[7].isa + 2))();
    }
  }

  return result;
}

id sub_1000A9C6C()
{
  v9 = 0;
  v10 = &v9;
  v11 = 1342177280;
  v12 = 32;
  v8 = qword_1003A7030;
  v13 = qword_1003A7030;
  if (!qword_1003A7030)
  {
    v2.super.isa = _NSConcreteStackBlock;
    v3 = -1073741824;
    v4 = 0;
    v5 = sub_1000B11EC;
    v6 = &unk_10032B070;
    v7 = &v9;
    sub_1000B11EC(&v2);
  }

  v0 = v10[3];
  _Block_object_dispose(&v9, 8);

  return v0;
}

uint64_t sub_1000AB1BC(uint64_t a1, objc_class *a2)
{
  v15 = a1;
  aClass = a2;
  __b[9] = a1;
  memset(__b, 0, 0x40uLL);
  v3 = [*(a1 + 32) navigator];
  v4 = [v3 viewControllers];

  v5 = [v4 countByEnumeratingWithState:__b objects:v18 count:16];
  if (v5)
  {
    v6 = *__b[2];
    while (2)
    {
      for (i = 0; i < v5; ++i)
      {
        if (*__b[2] != v6)
        {
          objc_enumerationMutation(v4);
        }

        __b[8] = *(__b[1] + 8 * i);
        if (objc_opt_isKindOfClass())
        {
          oslog = _BYLoggingFacility();
          v11 = OS_LOG_TYPE_DEBUG;
          if (os_log_type_enabled(oslog, OS_LOG_TYPE_DEBUG))
          {
            location = NSStringFromClass(aClass);
            sub_10006AE18(buf, location);
            _os_log_debug_impl(&_mh_execute_header, oslog, v11, "%@ present", buf, 0xCu);

            objc_storeStrong(&location, 0);
          }

          objc_storeStrong(&oslog, 0);
          v16 = 1;
          v9 = 1;
          goto LABEL_13;
        }
      }

      v5 = [v4 countByEnumeratingWithState:__b objects:v18 count:16];
      if (v5)
      {
        continue;
      }

      break;
    }
  }

  v9 = 0;
LABEL_13:

  if (!v9)
  {
    v16 = 0;
  }

  return v16 & 1;
}

id sub_1000AB3F0(uint64_t a1)
{
  v1 = [*(a1 + 32) _popToBuddyControllerWithClass:*(a1 + 40) withOffset:*(a1 + 48) animated:{*(a1 + 56) & 1, a1, a1}];

  return v1;
}

void sub_1000AB444(uint64_t a1)
{
  v2 = [*(a1 + 32) proximitySetupController];
  [v2 beginAdvertisingProximitySetup];

  v3 = [*(a1 + 32) environment];
  v4 = [v3 miscState];
  [v4 setMigrationManager:0];
}

id sub_1000AB4DC(uint64_t a1, uint64_t a2)
{
  (*(*(a1 + 40) + 16))(*(a1 + 40), a2);
  v3 = [*(a1 + 32) _popToBuddyControllerWithClass:*(a1 + 48) withOffset:*(a1 + 56) animated:*(a1 + 64) & 1];

  return v3;
}

uint64_t sub_1000AB9D4(uint64_t a1)
{
  v14 = a1;
  v13 = a1;
  v12 = 0x7FFFFFFFFFFFFFFFLL;
  memset(__b, 0, sizeof(__b));
  v2 = [*(*(a1 + 32) + 136) allObjects];
  v3 = [v2 reverseObjectEnumerator];

  v4 = [v3 countByEnumeratingWithState:__b objects:v15 count:16];
  if (v4)
  {
    v5 = *__b[2];
LABEL_3:
    v6 = 0;
    while (1)
    {
      if (*__b[2] != v5)
      {
        objc_enumerationMutation(v3);
      }

      v11 = *(__b[1] + 8 * v6);
      v7 = [*(a1 + 32) navigator];
      v8 = [v7 viewControllers];
      v12 = [v8 indexOfObject:v11];

      if (v12 != 0x7FFFFFFFFFFFFFFFLL)
      {
        break;
      }

      if (++v6 >= v4)
      {
        v4 = [v3 countByEnumeratingWithState:__b objects:v15 count:16];
        if (v4)
        {
          goto LABEL_3;
        }

        break;
      }
    }
  }

  if (v12 == 0x7FFFFFFFFFFFFFFFLL)
  {
    return 0;
  }

  else
  {
    return v12 + 1;
  }
}

uint64_t sub_1000ABBCC(uint64_t a1)
{
  v12 = a1;
  v11 = a1;
  v10 = 0x7FFFFFFFFFFFFFFFLL;
  memset(__b, 0, sizeof(__b));
  v2 = [*(*(a1 + 32) + 128) allObjects];
  v3 = [v2 reverseObjectEnumerator];

  v4 = [v3 countByEnumeratingWithState:__b objects:v13 count:16];
  if (v4)
  {
    v5 = *__b[2];
LABEL_3:
    v6 = 0;
    while (1)
    {
      if (*__b[2] != v5)
      {
        objc_enumerationMutation(v3);
      }

      v9 = *(__b[1] + 8 * v6);
      v10 = [*(*(a1 + 32) + 112) indexOfObject:v9];
      if (v10 != 0x7FFFFFFFFFFFFFFFLL)
      {
        break;
      }

      if (++v6 >= v4)
      {
        v4 = [v3 countByEnumeratingWithState:__b objects:v13 count:16];
        if (v4)
        {
          goto LABEL_3;
        }

        break;
      }
    }
  }

  if (v10 == 0x7FFFFFFFFFFFFFFFLL)
  {
    return 0;
  }

  else
  {
    return v10 + 1;
  }
}

id sub_1000ABF90(uint64_t a1)
{
  v1 = [*(a1 + 32) navigator];
  v2 = [v1 viewControllers];
  v3 = [v2 indexOfFirstMatchingCondition:&stru_10032BDF8];

  return v3;
}

BOOL sub_1000AC014(id a1, UIViewController *a2)
{
  location[1] = a1;
  location[0] = 0;
  objc_storeStrong(location, a2);
  objc_opt_class();
  v2 = 0;
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    objc_opt_class();
    v2 = objc_opt_isKindOfClass() ^ 1;
  }

  objc_storeStrong(location, 0);
  return v2 & 1;
}

id sub_1000AC0AC(uint64_t a1)
{
  v1 = [*(a1 + 32) buddyControllers];
  v2 = [v1 indexOfFirstMatchingCondition:&stru_10032BE38];

  return v2;
}

BOOL sub_1000AC10C(id a1, id a2)
{
  location[1] = a1;
  location[0] = 0;
  objc_storeStrong(location, a2);
  objc_opt_class();
  v2 = 0;
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    objc_opt_class();
    v2 = 0;
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      objc_opt_class();
      v2 = objc_opt_isKindOfClass() ^ 1;
    }
  }

  objc_storeStrong(location, 0);
  return v2 & 1;
}

void sub_1000AC460(id a1, unint64_t a2, NSArray *a3, NSString *a4)
{
  v13 = a1;
  v12 = a2;
  location = 0;
  objc_storeStrong(&location, a3);
  v10 = 0;
  objc_storeStrong(&v10, a4);
  oslog[1] = a1;
  if (v12 == 0x7FFFFFFFFFFFFFFFLL)
  {
    oslog[0] = _BYLoggingFacility();
    v8 = OS_LOG_TYPE_ERROR;
    if (os_log_type_enabled(oslog[0], OS_LOG_TYPE_ERROR))
    {
      sub_10006AE18(buf, v10);
      _os_log_error_impl(&_mh_execute_header, oslog[0], v8, "%@ generated index should return an actual index", buf, 0xCu);
    }

    objc_storeStrong(oslog, 0);
  }

  v6 = v12;
  if (v6 > [location count])
  {
    v7 = _BYLoggingFacility();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      sub_10006AE18(v14, v10);
      _os_log_error_impl(&_mh_execute_header, v7, OS_LOG_TYPE_ERROR, "%@ insertion out of bounds", v14, 0xCu);
    }

    objc_storeStrong(&v7, 0);
  }

  objc_storeStrong(&v10, 0);
  objc_storeStrong(&location, 0);
}

void sub_1000AC630(NSObject *a1, char a2)
{
  v17 = a1;
  v16 = a2;
  oslog[1] = a1;
  [(objc_class *)a1[4].isa _stopDisablingInteractionForExtendedInitialization];
  if ((v16 & 1) == 0)
  {
    oslog[0] = _BYLoggingFacility();
    v14 = OS_LOG_TYPE_ERROR;
    if (os_log_type_enabled(oslog[0], OS_LOG_TYPE_ERROR))
    {
      v3 = objc_opt_class();
      location = NSStringFromClass(v3);
      sub_10006AE18(buf, location);
      _os_log_error_impl(&_mh_execute_header, oslog[0], v14, "%@ doesn't want to show, but showing anyway.", buf, 0xCu);

      objc_storeStrong(&location, 0);
    }

    objc_storeStrong(oslog, 0);
  }

  v12 = (*(a1[6].isa + 2))();
  v4 = [(objc_class *)a1[4].isa navigator];
  v5 = [v4 viewControllers];
  v11 = [v5 mutableCopy];

  (*(a1[7].isa + 2))();
  [v11 insertObject:a1[5].isa atIndex:v12];
  v6 = [(objc_class *)a1[4].isa navigator];
  [v6 setViewControllers:v11 animated:0];

  v10 = (*(a1[8].isa + 2))();
  isa = a1[7].isa;
  v8 = [(objc_class *)a1[4].isa buddyControllers];
  (*(isa + 2))(isa, v10, v8, @"buddyControllerInsertionIndexGenerator");

  v9 = [(objc_class *)a1[4].isa buddyControllers];
  [v9 insertObject:a1[5].isa atIndex:v10];

  if (a1[9].isa)
  {
    (*(a1[9].isa + 2))();
  }

  objc_storeStrong(&v11, 0);
}

void sub_1000ACC34(id *a1)
{
  location[2] = a1;
  location[1] = a1;
  v2 = [a1[4] navigator];
  v3 = [v2 viewControllers];
  location[0] = [v3 lastObject];

  v4 = a1[4];
  v5 = [v4 navigator];
  v6 = [v5 navigationController];
  [v4 navigationController:v6 willShowViewController:location[0] operation:2 animated:1];

  v7 = a1[4];
  v8 = [v7 navigator];
  v9 = [v8 navigationController];
  [v7 navigationController:v9 didShowViewController:location[0] operation:2 animated:1];

  objc_storeStrong(location, 0);
}

double sub_1000AF00C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, int a5)
{
  *&result = 138544130;
  *a1 = 138544130;
  *(a1 + 4) = a2;
  *(a1 + 12) = 2112;
  *(a1 + 14) = a3;
  *(a1 + 22) = 2048;
  *(a1 + 24) = a4;
  *(a1 + 32) = 1024;
  *(a1 + 34) = a5;
  return result;
}

double sub_1000AF044(uint64_t a1, uint64_t a2, uint64_t a3, int a4)
{
  *&result = 138543874;
  *a1 = 138543874;
  *(a1 + 4) = a2;
  *(a1 + 12) = 2048;
  *(a1 + 14) = a3;
  *(a1 + 22) = 1024;
  *(a1 + 24) = a4;
  return result;
}

double sub_1000AF070(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  *&result = 138412802;
  *a1 = 138412802;
  *(a1 + 4) = a2;
  *(a1 + 12) = 2114;
  *(a1 + 14) = a3;
  *(a1 + 22) = 2048;
  *(a1 + 24) = a4;
  return result;
}

BOOL sub_1000AF09C(id a1, BFFFlowItem *a2, unint64_t a3, BOOL *a4)
{
  location[1] = a1;
  location[0] = 0;
  objc_storeStrong(location, a2);
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();
  objc_storeStrong(location, 0);
  return isKindOfClass & 1;
}

id sub_1000B054C(id *a1, void *a2)
{
  location[1] = a1;
  location[0] = 0;
  objc_storeStrong(location, a2);
  v9 = a1;
  WeakRetained = objc_loadWeakRetained(a1 + 4);
  v4 = location[0];
  v5 = [WeakRetained environment];
  [WeakRetained _injectDependencies:v4 withEnvironment:v5];

  v6 = location[0];
  objc_storeStrong(&v8, 0);
  objc_storeStrong(location, 0);
  return v6;
}

uint64_t sub_1000B10A4()
{
  if (!qword_1003A7028)
  {
    sub_1000B1158();
  }

  return qword_1003A7028;
}

uint64_t sub_1000B1158()
{
  result = _sl_dlopen();
  qword_1003A7028 = result;
  return result;
}

void sub_1000B11EC(NSAssertionHandler *a1)
{
  sub_1000A17D4();
  *(*(a1[4].super.isa + 1) + 24) = objc_getClass("WFBuddyViewController");
  if (!*(*(a1[4].super.isa + 1) + 24))
  {
    a1 = +[NSAssertionHandler currentHandler];
    v2 = [NSString stringWithUTF8String:"Class getWFBuddyViewControllerClass(void)_block_invoke"];
    [(NSAssertionHandler *)a1 handleFailureInFunction:v2 file:@"BuddyNavigationFlowController.m" lineNumber:114 description:@"Unable to find class %s", "WFBuddyViewController"];

    __break(1u);
  }

  qword_1003A7030 = *(*(a1[4].super.isa + 1) + 24);
}

void sub_1000B1718(id *a1, void *a2)
{
  location[1] = a1;
  location[0] = 0;
  objc_storeStrong(location, a2);
  WeakRetained = objc_loadWeakRetained(a1 + 4);
  v4 = [WeakRetained skipWiFi];

  if (v4)
  {
    v5 = objc_loadWeakRetained(a1 + 4);
    v6 = [v5 skipWiFi];
    v6[2](v6);
  }

  objc_storeStrong(location, 0);
}

void sub_1000B17DC(id *a1, void *a2)
{
  location[1] = a1;
  location[0] = 0;
  objc_storeStrong(location, a2);
  WeakRetained = objc_loadWeakRetained(a1 + 4);
  v4 = [WeakRetained useWiFi];

  if (v4)
  {
    v5 = objc_loadWeakRetained(a1 + 4);
    v6 = [v5 useWiFi];
    v6[2](v6);
  }

  objc_storeStrong(location, 0);
}

uint64_t sub_1000B1A10(unsigned int a1)
{
  v4 = sub_1000B4308();
  if (!v4)
  {
    v1 = +[NSAssertionHandler currentHandler];
    v2 = [NSString stringWithUTF8String:"NSString *const BuddySUSUISoftwareUpdateStateToString(SUSUISoftwareUpdateState)"];
    [(NSAssertionHandler *)v1 handleFailureInFunction:v2 file:@"BuddySUSUISoftwareUpdateManager.m" lineNumber:23 description:@"%s", dlerror(), 0];

    __break(1u);
  }

  return v4(a1);
}

id sub_1000B1D14()
{
  v9 = 0;
  v10 = &v9;
  v11 = 1342177280;
  v12 = 32;
  v8 = qword_1003A7048;
  v13 = qword_1003A7048;
  if (!qword_1003A7048)
  {
    v2.super.isa = _NSConcreteStackBlock;
    v3 = -1073741824;
    v4 = 0;
    v5 = sub_1000B46E4;
    v6 = &unk_10032B070;
    v7 = &v9;
    sub_1000B46E4(&v2);
  }

  v0 = v10[3];
  _Block_object_dispose(&v9, 8);

  return v0;
}

double sub_1000B25DC(uint64_t a1, uint64_t a2)
{
  *&result = 136315138;
  *a1 = 136315138;
  *(a1 + 4) = a2;
  return result;
}

uint64_t sub_1000B4308()
{
  v9 = 0;
  v10 = &v9;
  v11 = 0x20000000;
  v12 = 32;
  v8 = qword_1003A7038;
  v13 = qword_1003A7038;
  if (!qword_1003A7038)
  {
    v2 = _NSConcreteStackBlock;
    v3 = -1073741824;
    v4 = 0;
    v5 = sub_1000B4404;
    v6 = &unk_10032B070;
    v7 = &v9;
    sub_1000B4404(&v2);
  }

  v0 = v10[3];
  _Block_object_dispose(&v9, 8);
  return v0;
}

void *sub_1000B4404(uint64_t a1)
{
  v2 = sub_1000B4470();
  result = dlsym(v2, "SUSUISoftwareUpdateStateToString");
  *(*(*(a1 + 32) + 8) + 24) = result;
  qword_1003A7038 = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

uint64_t sub_1000B4470()
{
  v3 = sub_1000B459C();
  if (!v3)
  {
    v0 = +[NSAssertionHandler currentHandler];
    v1 = [NSString stringWithUTF8String:"void *SoftwareUpdateSettingsUILibrary(void)"];
    [(NSAssertionHandler *)v0 handleFailureInFunction:v1 file:@"BuddySUSUISoftwareUpdateManager.m" lineNumber:20 description:@"%s", 0];

    __break(1u);
  }

  return v3;
}

uint64_t sub_1000B459C()
{
  if (!qword_1003A7040)
  {
    sub_1000B4650();
  }

  return qword_1003A7040;
}

uint64_t sub_1000B4650()
{
  result = _sl_dlopen();
  qword_1003A7040 = result;
  return result;
}

void sub_1000B46E4(NSAssertionHandler *a1)
{
  sub_1000B4470();
  *(*(a1[4].super.isa + 1) + 24) = objc_getClass("SUSUISoftwareUpdateManager");
  if (!*(*(a1[4].super.isa + 1) + 24))
  {
    a1 = +[NSAssertionHandler currentHandler];
    v2 = [NSString stringWithUTF8String:"Class getSUSUISoftwareUpdateManagerClass(void)_block_invoke"];
    [(NSAssertionHandler *)a1 handleFailureInFunction:v2 file:@"BuddySUSUISoftwareUpdateManager.m" lineNumber:21 description:@"Unable to find class %s", "SUSUISoftwareUpdateManager"];

    __break(1u);
  }

  qword_1003A7048 = *(*(a1[4].super.isa + 1) + 24);
}

double sub_1000B5A64(uint64_t a1, uint64_t a2, uint64_t a3, int a4)
{
  *&result = 138412802;
  *a1 = 138412802;
  *(a1 + 4) = a2;
  *(a1 + 12) = 2112;
  *(a1 + 14) = a3;
  *(a1 + 22) = 1024;
  *(a1 + 24) = a4;
  return result;
}

uint64_t sub_1000B5F24(void *a1, void *a2, void *a3)
{
  location[1] = a1;
  location[0] = 0;
  objc_storeStrong(location, a2);
  v23 = 0;
  objc_storeStrong(&v23, a3);
  v5 = a1[4];
  v6 = [location[0] identifier];
  LOBYTE(v5) = [v5 containsObject:v6];

  v22 = v5 & 1;
  v7 = a1[4];
  v8 = [v23 identifier];
  v9 = [v7 containsObject:v8];

  if (v22 & 1) != 0 && (v9)
  {
    v10 = a1[5];
    v11 = [location[0] identifier];
    LOBYTE(v10) = [v10 containsObject:v11];

    v21 = v10 & 1;
    v12 = a1[5];
    v13 = [v23 identifier];
    v14 = [v12 containsObject:v13];

    if (v21 & 1) == 0 || (v14)
    {
      if ((v21 & 1) != 0 || (v14 & 1) == 0)
      {
        v15 = a1[4];
        v16 = [location[0] identifier];
        v17 = [v15 indexOfObject:v16];
        v18 = a1[4];
        v19 = [v23 identifier];
        v25 = v17 - [v18 indexOfObject:v19];
      }

      else
      {
        v25 = 1;
      }
    }

    else
    {
      v25 = -1;
    }
  }

  else if (v22 & 1) == 0 || (v9)
  {
    v25 = (v22 & 1) == 0 && (v9 & 1) != 0;
  }

  else
  {
    v25 = -1;
  }

  objc_storeStrong(&v23, 0);
  objc_storeStrong(location, 0);
  return v25;
}

id sub_1000B638C(id a1, UIKeyboardInputMode *a2)
{
  location[1] = a1;
  location[0] = 0;
  objc_storeStrong(location, a2);
  v2 = [location[0] displayName];
  objc_storeStrong(location, 0);

  return v2;
}

void sub_1000B63FC(id *a1, void *a2, void *a3, void *a4)
{
  location[1] = a1;
  location[0] = 0;
  objc_storeStrong(location, a2);
  v14[3] = a3;
  v14[2] = a4;
  v14[1] = a1;
  v14[0] = location[0];
  v13 = [v14[0] displayName];
  v12 = 0;
  if ([a1[4] countForObject:v13] > 1)
  {
    v7 = [v14[0] identifier];
    v8 = UIKeyboardLocalizedSWLayoutName();
    v9 = v12;
    v12 = v8;
  }

  v10 = [v14[0] identifierWithLayouts];
  v11 = [BuddyMultilingualLanguageData withLanguageMainDisplayText:v13 secondaryDisplayText:v12 identifier:v10 isDefault:1 editingOption:3];

  [a1[5] addObject:v11];
  objc_storeStrong(&v11, 0);
  objc_storeStrong(&v12, 0);
  objc_storeStrong(&v13, 0);
  objc_storeStrong(v14, 0);
  objc_storeStrong(location, 0);
}

id sub_1000B67D4(id a1, id a2)
{
  location[1] = a1;
  location[0] = 0;
  objc_storeStrong(location, a2);
  v2 = [location[0] identifierWithLayouts];
  objc_storeStrong(location, 0);

  return v2;
}

id sub_1000B6844(id a1, UIKeyboardInputMode *a2)
{
  location[1] = a1;
  location[0] = 0;
  objc_storeStrong(location, a2);
  v2 = [location[0] displayName];
  objc_storeStrong(location, 0);

  return v2;
}

void sub_1000B68B4(uint64_t a1, void *a2, void *a3, void *a4)
{
  location[1] = a1;
  location[0] = 0;
  objc_storeStrong(location, a2);
  v16[3] = a3;
  v16[2] = a4;
  v16[1] = a1;
  v16[0] = location[0];
  v15 = [v16[0] displayName];
  v14 = 0;
  if ([*(a1 + 32) countForObject:v15] > 1)
  {
    v7 = [v16[0] identifier];
    v8 = UIKeyboardLocalizedSWLayoutName();
    v9 = v14;
    v14 = v8;
  }

  v10 = [v16[0] identifierWithLayouts];
  v11 = *(a1 + 40);
  v12 = [v16[0] identifierWithLayouts];
  v13 = +[BuddyMultilingualLanguageData withLanguageMainDisplayText:secondaryDisplayText:identifier:isDefault:editingOption:](BuddyMultilingualLanguageData, "withLanguageMainDisplayText:secondaryDisplayText:identifier:isDefault:editingOption:", v15, v14, v10, [v11 containsObject:v12] & 1, 3);

  [*(a1 + 48) addObject:v13];
  objc_storeStrong(&v13, 0);
  objc_storeStrong(&v14, 0);
  objc_storeStrong(&v15, 0);
  objc_storeStrong(v16, 0);
  objc_storeStrong(location, 0);
}

id sub_1000B6F58(id a1, UIKeyboardInputMode *a2)
{
  location[1] = a1;
  location[0] = 0;
  objc_storeStrong(location, a2);
  v2 = [location[0] identifierWithLayouts];
  objc_storeStrong(location, 0);

  return v2;
}

id sub_1000B6FC8(id a1, id a2)
{
  location[1] = a1;
  location[0] = 0;
  objc_storeStrong(location, a2);
  v2 = [location[0] identifierWithLayouts];
  objc_storeStrong(location, 0);

  return v2;
}

id sub_1000B7038(id a1, UIKeyboardInputMode *a2)
{
  location[1] = a1;
  location[0] = 0;
  objc_storeStrong(location, a2);
  v2 = [location[0] displayName];
  objc_storeStrong(location, 0);

  return v2;
}

void sub_1000B7CF4(uint64_t a1, void *a2)
{
  location[1] = a1;
  location[0] = 0;
  objc_storeStrong(location, a2);
  [*(a1 + 64) eraseWithWindow:*(a1 + 32) navigationController:*(a1 + 40) proximitySetupController:*(a1 + 48) analyticsManager:*(a1 + 56)];
  objc_storeStrong(location, 0);
}

void sub_1000B7F18(id *a1)
{
  v14[2] = a1;
  v14[1] = a1;
  [a1[4] setupFinished];
  v2 = a1[5];
  v3 = [a1[6] topViewController];
  v4 = objc_opt_class();
  v5 = NSStringFromClass(v4);
  [_TtC5Setup23BuddyStartOverAnalytics addEraseEventWithAnalyticsManager:v2 paneIdentifier:v5];

  [a1[5] commitThenUpload];
  v14[0] = objc_alloc_init(DDRResetOptions);
  location = [[DDRResetRequest alloc] initWithMode:4 options:v14[0] reason:@"User-Requested Erase"];
  v6 = +[DDRResetService sharedInstance];
  v7 = _NSConcreteStackBlock;
  v8 = -1073741824;
  v9 = 0;
  v10 = sub_1000B80C4;
  v11 = &unk_10032B6F0;
  v12 = a1[7];
  [(DDRResetService *)v6 resetWithRequest:location completion:&v7];

  objc_storeStrong(&v12, 0);
  objc_storeStrong(&location, 0);
  objc_storeStrong(v14, 0);
}

void sub_1000B80C4(NSObject *a1, void *a2)
{
  location[1] = a1;
  location[0] = 0;
  objc_storeStrong(location, a2);
  oslog[1] = a1;
  if (location[0])
  {
    oslog[0] = _BYLoggingFacility();
    v13 = OS_LOG_TYPE_ERROR;
    if (os_log_type_enabled(oslog[0], OS_LOG_TYPE_ERROR))
    {
      v11 = 0;
      v9 = 0;
      if (_BYIsInternalInstall())
      {
        v3 = location[0];
      }

      else if (location[0])
      {
        v12 = [location[0] domain];
        v11 = 1;
        v3 = +[NSString stringWithFormat:](NSString, "stringWithFormat:", @"<Error domain: %@, code %ld>", v12, [location[0] code]);
        v10 = v3;
        v9 = 1;
      }

      else
      {
        v3 = 0;
      }

      sub_100071CBC(buf, v3);
      _os_log_error_impl(&_mh_execute_header, oslog[0], v13, "Reset failed: %{public}@", buf, 0xCu);
      if (v9)
      {
      }

      if (v11)
      {
      }
    }

    objc_storeStrong(oslog, 0);
    [(objc_class *)a1[4].isa setUserInteractionEnabled:1];
  }

  else
  {
    v8 = _BYLoggingFacility();
    v7 = OS_LOG_TYPE_DEFAULT;
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      v4 = v8;
      v5 = v7;
      sub_10006AA68(v6);
      _os_log_impl(&_mh_execute_header, v4, v5, "Reset was successful!", v6, 2u);
    }

    objc_storeStrong(&v8, 0);
  }

  objc_storeStrong(location, 0);
}

void sub_1000B847C(uint64_t a1)
{
  v2 = [(BuddyMigrationTargetErrorController *)[BuddyMigrationTargetLockscreenErrorController alloc] initWithError:*(a1 + 40), a1, a1];
  [*(a1 + 32) setErrorController:v2];

  v3 = [*(a1 + 32) navigationController];
  v4 = [*(a1 + 32) errorController];
  [v3 pushViewController:v4 animated:1];
}

void sub_1000B8C3C(uint64_t a1, void *a2, void *a3)
{
  location[1] = a1;
  location[0] = 0;
  objc_storeStrong(location, a2);
  v28 = 0;
  objc_storeStrong(&v28, a3);
  oslog[1] = a1;
  if (v28)
  {
    v5 = [v28 domain];
    v6 = 0;
    if ([v5 isEqualToString:SUErrorDomain])
    {
      v6 = [v28 code] == 62;
    }

    if (v6)
    {
      oslog[0] = _BYLoggingFacility();
      v26 = OS_LOG_TYPE_DEFAULT;
      if (os_log_type_enabled(oslog[0], OS_LOG_TYPE_DEFAULT))
      {
        v7 = oslog[0];
        v8 = v26;
        sub_10006AA68(buf);
        _os_log_impl(&_mh_execute_header, v7, v8, "No mandatory software update information available", buf, 2u);
      }

      objc_storeStrong(oslog, 0);
    }

    else
    {
      v24 = _BYLoggingFacility();
      v23 = OS_LOG_TYPE_DEFAULT;
      if (os_log_type_enabled(v24, OS_LOG_TYPE_DEFAULT))
      {
        sub_10006AE18(v30, v28);
        _os_log_impl(&_mh_execute_header, v24, v23, "Unable to get mandatory software update information: %@", v30, 0xCu);
      }

      objc_storeStrong(&v24, 0);
    }
  }

  else
  {
    v22 = [location[0] objectForKeyedSubscript:SUMandatoryUpdateFlagsKey];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v21 = [location[0] objectForKeyedSubscript:SUMandatoryUpdateFlagsKey];
      if (v21)
      {
        v20 = objc_alloc_init(NSNumberFormatter);
        v9 = [v20 numberFromString:v21];
        *(*(*(a1 + 40) + 8) + 24) = [v9 unsignedIntegerValue];

        objc_storeStrong(&v20, 0);
      }

      else
      {
        v19 = _BYLoggingFacility();
        v18 = OS_LOG_TYPE_DEFAULT;
        if (os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
        {
          v10 = v19;
          v11 = v18;
          sub_10006AA68(v17);
          _os_log_impl(&_mh_execute_header, v10, v11, "No mandatory software update information available (flags are nil)", v17, 2u);
        }

        objc_storeStrong(&v19, 0);
      }

      objc_storeStrong(&v21, 0);
    }

    else
    {
      v16 = _BYLoggingFacility();
      v15 = 16;
      if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
      {
        v12 = v16;
        v13 = v15;
        sub_10006AA68(v14);
        _os_log_error_impl(&_mh_execute_header, v12, v13, "Mandatory software update information is not a string", v14, 2u);
      }

      objc_storeStrong(&v16, 0);
    }

    objc_storeStrong(&v22, 0);
  }

  dispatch_semaphore_signal(*(a1 + 32));
  objc_storeStrong(&v28, 0);
  objc_storeStrong(location, 0);
}

void sub_1000B96F4(id *a1)
{
  location[2] = a1;
  location[1] = a1;
  location[0] = objc_loadWeakRetained(a1 + 4);
  [location[0] controllerDone];
  objc_storeStrong(location, 0);
}

void sub_1000B9C5C(void *a1, void *a2, void *a3, void *a4)
{
  location[1] = a1;
  location[0] = 0;
  objc_storeStrong(location, a2);
  v8 = 0;
  objc_storeStrong(&v8, a3);
  v7 = 0;
  objc_storeStrong(&v7, a4);
  (*(a1[4] + 16))();
  objc_storeStrong(&v7, 0);
  objc_storeStrong(&v8, 0);
  objc_storeStrong(location, 0);
}

void sub_1000BA030(id *a1)
{
  v32[2] = a1;
  v32[1] = a1;
  v26 = 0;
  v27 = &v26;
  v28 = 838860800;
  v29 = 48;
  v30 = sub_1000BA32C;
  v31 = sub_1000BA370;
  v32[0] = 0;
  v2 = [a1[4] termsQueue];
  block = _NSConcreteStackBlock;
  v21 = -1073741824;
  v22 = 0;
  v23 = sub_1000BA37C;
  v24 = &unk_10032C290;
  v25[1] = &v26;
  v25[0] = a1[4];
  dispatch_sync(v2, &block);

  if (v27[5])
  {
    if (a1[5])
    {
      v3 = &_dispatch_main_q;
      v14 = _NSConcreteStackBlock;
      v15 = -1073741824;
      v16 = 0;
      v17 = sub_1000BA3D4;
      v18 = &unk_10032C2B8;
      v19[0] = a1[5];
      v19[1] = &v26;
      dispatch_async(v3, &v14);

      objc_storeStrong(v19, 0);
    }

    v13 = 1;
  }

  else
  {
    v4 = [a1[4] termsRequestQueue];
    dispatch_suspend(v4);

    v5 = a1[4];
    v6 = _NSConcreteStackBlock;
    v7 = -1073741824;
    v8 = 0;
    v9 = sub_1000BA41C;
    v10 = &unk_10032C308;
    v11 = a1[4];
    v12 = a1[5];
    [v5 fetchTermsFromServer:&v6];
    objc_storeStrong(&v12, 0);
    objc_storeStrong(&v11, 0);
    v13 = 0;
  }

  objc_storeStrong(v25, 0);
  _Block_object_dispose(&v26, 8);
  objc_storeStrong(v32, 0);
}

void sub_1000BA32C(uint64_t a1, uint64_t a2)
{
  v3 = (a2 + 40);
  v2 = *(a2 + 40);
  *(a1 + 40) = 0;
  objc_storeStrong((a1 + 40), v2);

  objc_storeStrong(v3, 0);
}

void sub_1000BA37C(uint64_t a1)
{
  v2 = [*(a1 + 32) cachedTermsData];
  v3 = *(*(a1 + 40) + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;
}

void sub_1000BA41C(id *a1, void *a2, void *a3)
{
  location[1] = a1;
  location[0] = 0;
  objc_storeStrong(location, a2);
  v23 = 0;
  objc_storeStrong(&v23, a3);
  v22[1] = a1;
  if (location[0])
  {
    v5 = [a1[4] termsQueue];
    block = _NSConcreteStackBlock;
    v17 = -1073741824;
    v18 = 0;
    v19 = sub_1000BA65C;
    v20 = &unk_10032B838;
    v21 = a1[4];
    v22[0] = location[0];
    dispatch_sync(v5, &block);

    objc_storeStrong(v22, 0);
    objc_storeStrong(&v21, 0);
  }

  v6 = [a1[4] termsRequestQueue];
  dispatch_resume(v6);

  if (a1[5])
  {
    v7 = &_dispatch_main_q;
    v8 = _NSConcreteStackBlock;
    v9 = -1073741824;
    v10 = 0;
    v11 = sub_1000BA68C;
    v12 = &unk_10032C2E0;
    v15 = a1[5];
    v13 = location[0];
    v14 = v23;
    dispatch_async(v7, &v8);

    objc_storeStrong(&v14, 0);
    objc_storeStrong(&v13, 0);
    objc_storeStrong(&v15, 0);
  }

  objc_storeStrong(&v23, 0);
  objc_storeStrong(location, 0);
}

void sub_1000BAAB4(void *a1, void *a2, void *a3, void *a4)
{
  location[1] = a1;
  location[0] = 0;
  objc_storeStrong(location, a2);
  v17 = 0;
  objc_storeStrong(&v17, a3);
  v16 = 0;
  objc_storeStrong(&v16, a4);
  v15[1] = a1;
  v15[0] = v17;
  v14 = [v15[0] responseData];
  oslog = _BYLoggingFacility();
  if (os_log_type_enabled(oslog, OS_LOG_TYPE_DEFAULT))
  {
    v7 = [v14 length];
    v11 = 0;
    v9 = 0;
    if (_BYIsInternalInstall())
    {
      v8 = v16;
    }

    else if (v16)
    {
      v12 = [v16 domain];
      v11 = 1;
      v8 = +[NSString stringWithFormat:](NSString, "stringWithFormat:", @"<Error domain: %@, code %ld>", v12, [v16 code]);
      v10 = v8;
      v9 = 1;
    }

    else
    {
      v8 = 0;
    }

    sub_1000A79D4(buf, v7, v8);
    _os_log_impl(&_mh_execute_header, oslog, OS_LOG_TYPE_DEFAULT, "Terms request completed with data length %llu, error (non-nil does not imply failure) = %{public}@", buf, 0x16u);
    if (v9)
    {
    }

    if (v11)
    {
    }
  }

  objc_storeStrong(&oslog, 0);
  [v14 length];
  (*(a1[4] + 16))();
  objc_storeStrong(&v14, 0);
  objc_storeStrong(v15, 0);
  objc_storeStrong(&v16, 0);
  objc_storeStrong(&v17, 0);
  objc_storeStrong(location, 0);
}

double sub_1000BC3F0()
{
  v0 = BFFIsiPad();
  result = 57.0;
  if ((v0 & 1) == 0)
  {
    return 18.0;
  }

  return result;
}

uint64_t sub_1000BD2BC(uint64_t a1)
{
  result = [*(a1 + 32) waiting];
  if (result)
  {
    [*(a1 + 32) setPaneVisible:1];
    result = [*(a1 + 32) setExtendedInitializationCompletion:0];
    if (*(a1 + 40))
    {
      return (*(*(a1 + 40) + 16))();
    }
  }

  return result;
}

void sub_1000BD44C(id *a1, void *a2)
{
  location[1] = a1;
  location[0] = 0;
  objc_storeStrong(location, a2);
  v15[1] = a1;
  if (location[0])
  {
    v15[0] = _BYLoggingFacility();
    v14 = 16;
    if (os_log_type_enabled(v15[0], OS_LOG_TYPE_ERROR))
    {
      v3 = v15[0];
      v4 = v14;
      sub_10006AA68(buf);
      _os_log_error_impl(&_mh_execute_header, v3, v4, "Keychain transfer failed, not waiting for preflight!", buf, 2u);
    }

    objc_storeStrong(v15, 0);
    v5 = &_dispatch_main_q;
    block = _NSConcreteStackBlock;
    v7 = -1073741824;
    v8 = 0;
    v9 = sub_1000BD5E8;
    v10 = &unk_10032B838;
    v11 = a1[4];
    v12 = location[0];
    dispatch_async(v5, &block);

    objc_storeStrong(&v12, 0);
    objc_storeStrong(&v11, 0);
  }

  else
  {
    [a1[4] _waitForPreflight];
  }

  objc_storeStrong(location, 0);
}

void sub_1000BD708(id *a1, void *a2, void *a3)
{
  location[1] = a1;
  location[0] = 0;
  objc_storeStrong(location, a2);
  v14 = 0;
  objc_storeStrong(&v14, a3);
  v13[1] = a1;
  v5 = &_dispatch_main_q;
  block = _NSConcreteStackBlock;
  v7 = -1073741824;
  v8 = 0;
  v9 = sub_1000BD858;
  v10 = &unk_10032BB10;
  v11 = v14;
  v12 = a1[4];
  v13[0] = location[0];
  dispatch_async(v5, &block);

  objc_storeStrong(v13, 0);
  objc_storeStrong(&v12, 0);
  objc_storeStrong(&v11, 0);
  objc_storeStrong(&v14, 0);
  objc_storeStrong(location, 0);
}

id sub_1000BD858(uint64_t a1)
{
  if (*(a1 + 32))
  {
    return [*(a1 + 40) _showError:{*(a1 + 32), a1, a1}];
  }

  if ([*(a1 + 40) _ableToMigrateWithPreflightInformation:{*(a1 + 48), a1, a1}])
  {
    return [*(a1 + 40) _controllerDone];
  }

  return [*(a1 + 40) _showOutOfSpaceError];
}

void sub_1000BDCA8(uint64_t a1)
{
  v2 = [*(a1 + 32) delegate];
  [v2 flowItemDone:*(a1 + 32) nextItem:*(a1 + 40)];
}

void sub_1000BE170(uint64_t a1)
{
  v1 = [*(a1 + 32) navigationController];
  v2 = [v1 popViewControllerAnimated:1];
}

void sub_1000BE5A0(id *a1)
{
  v8[2] = a1;
  v8[1] = a1;
  if (a1[4])
  {
    v2 = &_dispatch_main_q;
    block = _NSConcreteStackBlock;
    v4 = -1073741824;
    v5 = 0;
    v6 = sub_1000BE680;
    v7 = &unk_10032B120;
    v8[0] = a1[4];
    dispatch_async(v2, &block);

    objc_storeStrong(v8, 0);
  }
}

void sub_1000BEB50(id a1)
{
  oslog[2] = a1;
  oslog[1] = a1;
  oslog[0] = _BYLoggingFacility();
  v6 = OS_LOG_TYPE_DEFAULT;
  if (os_log_type_enabled(oslog[0], OS_LOG_TYPE_DEFAULT))
  {
    v1 = oslog[0];
    v2 = v6;
    sub_10006AA68(buf);
    _os_log_impl(&_mh_execute_header, v1, v2, "Installing fake software update...", buf, 2u);
  }

  objc_storeStrong(oslog, 0);
  +[BYPreferencesController flushEverything];
  sleep(2u);
  location = [[FBSShutdownOptions alloc] initWithReason:@"Setup Assistant Software Update Restore Testing"];
  [location setRebootType:1];
  v3 = +[FBSSystemService sharedService];
  [v3 shutdownWithOptions:location];

  objc_storeStrong(&location, 0);
}

void sub_1000BEC64(NSObject *a1)
{
  oslog[2] = a1;
  oslog[1] = a1;
  oslog[0] = _BYLoggingFacility();
  v12 = OS_LOG_TYPE_DEFAULT;
  if (os_log_type_enabled(oslog[0], OS_LOG_TYPE_DEFAULT))
  {
    v2 = oslog[0];
    v3 = v12;
    sub_10006AA68(buf);
    _os_log_impl(&_mh_execute_header, v2, v3, "Will cancel in-progress software update download", buf, 2u);
  }

  objc_storeStrong(oslog, 0);
  location = [BYSUManagerClient createWithQueue:0 clientType:1];
  v4 = _NSConcreteStackBlock;
  v5 = -1073741824;
  v6 = 0;
  v7 = sub_1000BEDB8;
  v8 = &unk_10032AEC8;
  v9 = a1[4].isa;
  [location cancelDownload:&v4];
  objc_storeStrong(&v9, 0);
  objc_storeStrong(&location, 0);
}

void sub_1000BEDB8(NSObject *a1, char a2, id obj)
{
  v13 = a1;
  v12 = a2;
  location = 0;
  objc_storeStrong(&location, obj);
  oslog[1] = a1;
  oslog[0] = _BYLoggingFacility();
  if (os_log_type_enabled(oslog[0], OS_LOG_TYPE_DEFAULT))
  {
    v4 = v12 & 1;
    v8 = 0;
    v6 = 0;
    if (_BYIsInternalInstall())
    {
      v5 = location;
    }

    else if (location)
    {
      v9 = [location domain];
      v8 = 1;
      v5 = +[NSString stringWithFormat:](NSString, "stringWithFormat:", @"<Error domain: %@, code %ld>", v9, [location code]);
      v7 = v5;
      v6 = 1;
    }

    else
    {
      v5 = 0;
    }

    sub_100097718(buf, v4, v5);
    _os_log_impl(&_mh_execute_header, oslog[0], OS_LOG_TYPE_DEFAULT, "Did cancel in-progress software update download with result %d error %@", buf, 0x12u);
    if (v6)
    {
    }

    if (v8)
    {
    }
  }

  objc_storeStrong(oslog, 0);
  if (a1[4].isa)
  {
    (*(a1[4].isa + 2))();
  }

  objc_storeStrong(&location, 0);
}

void sub_1000BEF9C(NSObject *a1, void *a2)
{
  location[1] = a1;
  location[0] = 0;
  objc_storeStrong(location, a2);
  oslog[1] = a1;
  if (location[0])
  {
    isa = a1[5].isa;
    v4 = [location[0] productVersion];
    [(objc_class *)a1[4].isa setAbleToMigrateWithUpdate:[SASSystemInformation compareProductVersion:isa toProductVersion:v4]!= 1];
  }

  if (([(objc_class *)a1[4].isa ableToMigrateWithUpdate]& 1) == 0)
  {
    oslog[0] = _BYLoggingFacility();
    if (os_log_type_enabled(oslog[0], OS_LOG_TYPE_ERROR))
    {
      v5 = a1[5].isa;
      v6 = [(objc_class *)a1[4].isa update];
      sub_100078180(buf, v5, v6);
      _os_log_error_impl(&_mh_execute_header, oslog[0], OS_LOG_TYPE_ERROR, "Entered migration flow without a compatible update! %@ vs %@", buf, 0x16u);
    }

    objc_storeStrong(oslog, 0);
  }

  (*(a1[6].isa + 2))();
  objc_storeStrong(location, 0);
}

void sub_1000C0B6C(NSObject *a1, void *a2)
{
  location[1] = a1;
  location[0] = 0;
  objc_storeStrong(location, a2);
  oslog[1] = a1;
  if (([(objc_class *)a1[4].isa forceNetworkReachabilityOverWiFi]& 1) != 0)
  {
    oslog[0] = _BYLoggingFacility();
    v6 = OS_LOG_TYPE_DEFAULT;
    if (os_log_type_enabled(oslog[0], OS_LOG_TYPE_DEFAULT))
    {
      v3 = oslog[0];
      v4 = v6;
      sub_10006AA68(v5);
      _os_log_impl(&_mh_execute_header, v3, v4, "Network path changed; removing forced network reachability for Wi-Fi", v5, 2u);
    }

    objc_storeStrong(oslog, 0);
  }

  [(objc_class *)a1[4].isa setForceNetworkReachabilityOverWiFi:0];
  objc_storeStrong(location, 0);
}

id sub_1000C2154(NSObject *a1)
{
  oslog[2] = a1;
  oslog[1] = a1;
  oslog[0] = _BYLoggingFacility();
  v6 = OS_LOG_TYPE_DEFAULT;
  if (os_log_type_enabled(oslog[0], OS_LOG_TYPE_DEFAULT))
  {
    v2 = oslog[0];
    v3 = v6;
    sub_10006AA68(v5);
    _os_log_impl(&_mh_execute_header, v2, v3, "Forcing networking reachability over Wi-Fi...", v5, 2u);
  }

  objc_storeStrong(oslog, 0);
  return [(objc_class *)a1[4].isa setForceNetworkReachabilityOverWiFi:1];
}

void sub_1000C2BBC(void *a1)
{
  location[2] = a1;
  location[1] = a1;
  location[0] = objc_alloc_init(BYBuddyDaemonGeneralClient);
  v2 = a1[4];
  v3 = [location[0] fetchAuthenticationContextForBiometric];
  (*(v2 + 16))(v2, v3 != 0);

  objc_storeStrong(location, 0);
}

id sub_1000C38B8()
{
  v9 = 0;
  v10 = &v9;
  v11 = 1342177280;
  v12 = 32;
  v8 = qword_1003A7058;
  v13 = qword_1003A7058;
  if (!qword_1003A7058)
  {
    v2.super.isa = _NSConcreteStackBlock;
    v3 = -1073741824;
    v4 = 0;
    v5 = sub_1000C52FC;
    v6 = &unk_10032B070;
    v7 = &v9;
    sub_1000C52FC(&v2);
  }

  v0 = v10[3];
  _Block_object_dispose(&v9, 8);

  return v0;
}

id sub_1000C39CC()
{
  v9 = 0;
  v10 = &v9;
  v11 = 1342177280;
  v12 = 32;
  v8 = qword_1003A7068;
  v13 = qword_1003A7068;
  if (!qword_1003A7068)
  {
    v2.super.isa = _NSConcreteStackBlock;
    v3 = -1073741824;
    v4 = 0;
    v5 = sub_1000C56B0;
    v6 = &unk_10032B070;
    v7 = &v9;
    sub_1000C56B0(&v2);
  }

  v0 = v10[3];
  _Block_object_dispose(&v9, 8);

  return v0;
}

id sub_1000C449C()
{
  v9 = 0;
  v10 = &v9;
  v11 = 1342177280;
  v12 = 32;
  v8 = qword_1003A7078;
  v13 = qword_1003A7078;
  if (!qword_1003A7078)
  {
    v2.super.isa = _NSConcreteStackBlock;
    v3 = -1073741824;
    v4 = 0;
    v5 = sub_1000C5A64;
    v6 = &unk_10032B070;
    v7 = &v9;
    sub_1000C5A64(&v2);
  }

  v0 = v10[3];
  _Block_object_dispose(&v9, 8);

  return v0;
}

void sub_1000C4C5C(uint64_t a1, char a2, id obj)
{
  v6 = a1;
  v5 = a2;
  location = 0;
  objc_storeStrong(&location, obj);
  (*(*(a1 + 32) + 16))(*(a1 + 32));
  objc_storeStrong(&location, 0);
}

void sub_1000C52FC(NSAssertionHandler *a1)
{
  sub_1000C5440();
  *(*(a1[4].super.isa + 1) + 24) = objc_getClass("BiometricKitUI");
  if (!*(*(a1[4].super.isa + 1) + 24))
  {
    a1 = +[NSAssertionHandler currentHandler];
    v2 = [NSString stringWithUTF8String:"Class getBiometricKitUIClass(void)_block_invoke"];
    [(NSAssertionHandler *)a1 handleFailureInFunction:v2 file:@"BuddyMesaController.m" lineNumber:44 description:@"Unable to find class %s", "BiometricKitUI"];

    __break(1u);
  }

  qword_1003A7058 = *(*(a1[4].super.isa + 1) + 24);
}

void sub_1000C5440()
{
  if (!sub_1000C5568())
  {
    v0 = +[NSAssertionHandler currentHandler];
    v1 = [NSString stringWithUTF8String:"void *BiometricKitUILibrary(void)"];
    [(NSAssertionHandler *)v0 handleFailureInFunction:v1 file:@"BuddyMesaController.m" lineNumber:43 description:@"%s", 0];

    __break(1u);
  }
}

uint64_t sub_1000C5568()
{
  if (!qword_1003A7060)
  {
    sub_1000C561C();
  }

  return qword_1003A7060;
}

uint64_t sub_1000C561C()
{
  result = _sl_dlopen();
  qword_1003A7060 = result;
  return result;
}

void sub_1000C56B0(NSAssertionHandler *a1)
{
  sub_1000C57F4();
  *(*(a1[4].super.isa + 1) + 24) = objc_getClass("BiometricKit");
  if (!*(*(a1[4].super.isa + 1) + 24))
  {
    a1 = +[NSAssertionHandler currentHandler];
    v2 = [NSString stringWithUTF8String:"Class getBiometricKitClass(void)_block_invoke"];
    [(NSAssertionHandler *)a1 handleFailureInFunction:v2 file:@"BuddyMesaController.m" lineNumber:42 description:@"Unable to find class %s", "BiometricKit"];

    __break(1u);
  }

  qword_1003A7068 = *(*(a1[4].super.isa + 1) + 24);
}

void sub_1000C57F4()
{
  if (!sub_1000C591C())
  {
    v0 = +[NSAssertionHandler currentHandler];
    v1 = [NSString stringWithUTF8String:"void *BiometricKitLibrary(void)"];
    [(NSAssertionHandler *)v0 handleFailureInFunction:v1 file:@"BuddyMesaController.m" lineNumber:41 description:@"%s", 0];

    __break(1u);
  }
}

uint64_t sub_1000C591C()
{
  if (!qword_1003A7070)
  {
    sub_1000C59D0();
  }

  return qword_1003A7070;
}

uint64_t sub_1000C59D0()
{
  result = _sl_dlopen();
  qword_1003A7070 = result;
  return result;
}

void sub_1000C5A64(NSAssertionHandler *a1)
{
  sub_1000C5BA8();
  *(*(a1[4].super.isa + 1) + 24) = objc_getClass("PABSBiometricController");
  if (!*(*(a1[4].super.isa + 1) + 24))
  {
    a1 = +[NSAssertionHandler currentHandler];
    v2 = [NSString stringWithUTF8String:"Class getPABSBiometricControllerClass(void)_block_invoke"];
    [(NSAssertionHandler *)a1 handleFailureInFunction:v2 file:@"BuddyMesaController.m" lineNumber:46 description:@"Unable to find class %s", "PABSBiometricController"];

    __break(1u);
  }

  qword_1003A7078 = *(*(a1[4].super.isa + 1) + 24);
}

void sub_1000C5BA8()
{
  if (!sub_1000C5CD0())
  {
    v0 = +[NSAssertionHandler currentHandler];
    v1 = [NSString stringWithUTF8String:"void *PasscodeAndBiometricsSettingsLibrary(void)"];
    [(NSAssertionHandler *)v0 handleFailureInFunction:v1 file:@"BuddyMesaController.m" lineNumber:45 description:@"%s", 0];

    __break(1u);
  }
}

uint64_t sub_1000C5CD0()
{
  if (!qword_1003A7080)
  {
    sub_1000C5D84();
  }

  return qword_1003A7080;
}

uint64_t sub_1000C5D84()
{
  result = _sl_dlopen();
  qword_1003A7080 = result;
  return result;
}

void sub_1000C6084(id a1)
{
  oslog[2] = a1;
  oslog[1] = a1;
  oslog[0] = _BYLoggingFacility();
  v4 = OS_LOG_TYPE_DEFAULT;
  if (os_log_type_enabled(oslog[0], OS_LOG_TYPE_DEFAULT))
  {
    v1 = oslog[0];
    v2 = v4;
    sub_10006AA68(v3);
    _os_log_impl(&_mh_execute_header, v1, v2, "Proximity target client override connection invalidated!", v3, 2u);
  }

  objc_storeStrong(oslog, 0);
}

void sub_1000C6118(id a1)
{
  oslog[2] = a1;
  oslog[1] = a1;
  oslog[0] = _BYLoggingFacility();
  v4 = OS_LOG_TYPE_DEFAULT;
  if (os_log_type_enabled(oslog[0], OS_LOG_TYPE_DEFAULT))
  {
    v1 = oslog[0];
    v2 = v4;
    sub_10006AA68(v3);
    _os_log_impl(&_mh_execute_header, v1, v2, "Proximity target client override connection interruption!", v3, 2u);
  }

  objc_storeStrong(oslog, 0);
}

void sub_1000C6C10(uint64_t a1, uint64_t a2)
{
  v3 = (a2 + 40);
  v2 = *(a2 + 40);
  *(a1 + 40) = 0;
  objc_storeStrong((a1 + 40), v2);

  objc_storeStrong(v3, 0);
}

void sub_1000C6C60(id a1, NSError *a2)
{
  location[1] = a1;
  location[0] = 0;
  objc_storeStrong(location, a2);
  oslog[1] = a1;
  oslog[0] = _BYLoggingFacility();
  if (os_log_type_enabled(oslog[0], OS_LOG_TYPE_ERROR))
  {
    v6 = 0;
    v4 = 0;
    if (_BYIsInternalInstall())
    {
      v3 = location[0];
    }

    else if (location[0])
    {
      v7 = [location[0] domain];
      v6 = 1;
      v3 = +[NSString stringWithFormat:](NSString, "stringWithFormat:", @"<Error domain: %@, code %ld>", v7, [location[0] code]);
      v5 = v3;
      v4 = 1;
    }

    else
    {
      v3 = 0;
    }

    sub_100071CBC(buf, v3);
    _os_log_error_impl(&_mh_execute_header, oslog[0], OS_LOG_TYPE_ERROR, "Unable to begin device to device migration: %{public}@", buf, 0xCu);
    if (v4)
    {
    }

    if (v6)
    {
    }
  }

  objc_storeStrong(oslog, 0);
  objc_storeStrong(location, 0);
}

void sub_1000C6E10(void *a1, void *a2)
{
  location[1] = a1;
  location[0] = 0;
  objc_storeStrong(location, a2);
  objc_storeStrong((*(a1[4] + 8) + 40), location[0]);
  objc_storeStrong(location, 0);
}

void sub_1000C74B0(NSObject *a1)
{
  oslog[2] = a1;
  oslog[1] = a1;
  oslog[0] = _BYLoggingFacility();
  v12 = OS_LOG_TYPE_DEFAULT;
  if (os_log_type_enabled(oslog[0], OS_LOG_TYPE_DEFAULT))
  {
    v2 = oslog[0];
    v3 = v12;
    sub_10006AA68(buf);
    _os_log_impl(&_mh_execute_header, v2, v3, "Starting migration preflight...", buf, 2u);
  }

  objc_storeStrong(oslog, 0);
  v4 = [(objc_class *)a1[4].isa _targetDeviceTransferTask];
  v5 = _NSConcreteStackBlock;
  v6 = -1073741824;
  v7 = 0;
  v8 = sub_1000C75EC;
  v9 = &unk_10032C358;
  v10 = a1[4].isa;
  [v4 startPreflightWithCompletionHandler:&v5];

  objc_storeStrong(&v10, 0);
}

void sub_1000C75EC(NSObject *a1, void *a2, void *a3)
{
  location[1] = a1;
  location[0] = 0;
  objc_storeStrong(location, a2);
  v15 = 0;
  objc_storeStrong(&v15, a3);
  oslog[1] = a1;
  [(objc_class *)a1[4].isa setPreflightInformation:location[0]];
  [(objc_class *)a1[4].isa setPreflightError:v15];
  if (v15)
  {
    oslog[0] = _BYLoggingFacility();
    v13 = OS_LOG_TYPE_ERROR;
    if (os_log_type_enabled(oslog[0], OS_LOG_TYPE_ERROR))
    {
      v11 = 0;
      v9 = 0;
      if (_BYIsInternalInstall())
      {
        v5 = v15;
      }

      else if (v15)
      {
        v12 = [v15 domain];
        v11 = 1;
        v5 = +[NSString stringWithFormat:](NSString, "stringWithFormat:", @"<Error domain: %@, code %ld>", v12, [v15 code]);
        v10 = v5;
        v9 = 1;
      }

      else
      {
        v5 = 0;
      }

      sub_100071CBC(buf, v5);
      _os_log_error_impl(&_mh_execute_header, oslog[0], v13, "Migration preflight failed: %{public}@", buf, 0xCu);
      if (v9)
      {
      }

      if (v11)
      {
      }
    }

    objc_storeStrong(oslog, 0);
  }

  else
  {
    v8 = _BYLoggingFacility();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      sub_10006AE18(v17, location[0]);
      _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "Migration preflight completed: %@", v17, 0xCu);
    }

    objc_storeStrong(&v8, 0);
  }

  v6 = [(objc_class *)a1[4].isa preflightCompletionBlock];

  if (v6)
  {
    v7 = [(objc_class *)a1[4].isa preflightCompletionBlock];
    v7[2](v7, location[0], v15);

    [(objc_class *)a1[4].isa setPreflightCompletionBlock:0];
  }

  objc_storeStrong(&v15, 0);
  objc_storeStrong(location, 0);
}

void sub_1000C79C0(uint64_t a1)
{
  v2 = [*(a1 + 32) preflightInformation];
  v7 = 0;
  v3 = 1;
  if (!v2)
  {
    v8 = [*(a1 + 32) preflightError];
    v7 = 1;
    v3 = v8 != 0;
  }

  if (v7)
  {
  }

  if (v3)
  {
    v4 = *(a1 + 40);
    v5 = [*(a1 + 32) preflightInformation];
    v6 = [*(a1 + 32) preflightError];
    (*(v4 + 16))(v4, v5, v6);
  }

  else
  {
    [*(a1 + 32) setPreflightCompletionBlock:*(a1 + 40)];
  }
}

void sub_1000C7BD0(NSObject *a1)
{
  oslog[2] = a1;
  oslog[1] = a1;
  oslog[0] = _BYLoggingFacility();
  v13 = OS_LOG_TYPE_DEFAULT;
  if (os_log_type_enabled(oslog[0], OS_LOG_TYPE_DEFAULT))
  {
    v2 = oslog[0];
    v3 = v13;
    sub_10006AA68(buf);
    _os_log_impl(&_mh_execute_header, v2, v3, "Starting transfer of keychain data...", buf, 2u);
  }

  objc_storeStrong(oslog, 0);
  [(objc_class *)a1[4].isa setHasTransferredData:1];
  v4 = [(objc_class *)a1[4].isa _targetDeviceTransferTask];
  v5 = _NSConcreteStackBlock;
  v6 = -1073741824;
  v7 = 0;
  v8 = sub_1000C7D3C;
  v9 = &unk_10032C498;
  v10 = a1[4].isa;
  v11 = a1[5].isa;
  [v4 startKeychainDataTransferWithCompletionHandler:&v5];

  objc_storeStrong(&v11, 0);
  objc_storeStrong(&v10, 0);
}

void sub_1000C7D3C(NSObject *a1, void *a2, void *a3)
{
  location[1] = a1;
  location[0] = 0;
  objc_storeStrong(location, a2);
  v18 = 0;
  objc_storeStrong(&v18, a3);
  oslog[1] = a1;
  [(objc_class *)a1[4].isa setKeychainInfo:location[0]];
  [(objc_class *)a1[4].isa setKeychainError:v18];
  if (v18)
  {
    oslog[0] = _BYLoggingFacility();
    v16 = OS_LOG_TYPE_ERROR;
    if (os_log_type_enabled(oslog[0], OS_LOG_TYPE_ERROR))
    {
      v14 = 0;
      v12 = 0;
      if (_BYIsInternalInstall())
      {
        v5 = v18;
      }

      else if (v18)
      {
        v15 = [v18 domain];
        v14 = 1;
        v5 = +[NSString stringWithFormat:](NSString, "stringWithFormat:", @"<Error domain: %@, code %ld>", v15, [v18 code]);
        v13 = v5;
        v12 = 1;
      }

      else
      {
        v5 = 0;
      }

      sub_100071CBC(buf, v5);
      _os_log_error_impl(&_mh_execute_header, oslog[0], v16, "Keychain data transfer failed: %{public}@", buf, 0xCu);
      if (v12)
      {
      }

      if (v14)
      {
      }
    }

    objc_storeStrong(oslog, 0);
  }

  else
  {
    v11 = _BYLoggingFacility();
    v10 = OS_LOG_TYPE_DEFAULT;
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
    {
      v6 = v11;
      v7 = v10;
      sub_10006AA68(v9);
      _os_log_impl(&_mh_execute_header, v6, v7, "Keychain data transferred completed", v9, 2u);
    }

    objc_storeStrong(&v11, 0);
  }

  if (a1[5].isa)
  {
    (*(a1[5].isa + 2))();
  }

  v8 = [(objc_class *)a1[4].isa keychainDataTransferCompletionQueue];
  dispatch_resume(v8);

  objc_storeStrong(&v18, 0);
  objc_storeStrong(location, 0);
}

void sub_1000C80EC(uint64_t a1)
{
  v17[2] = a1;
  v17[1] = a1;
  v11 = 0;
  v12 = &v11;
  v13 = 838860800;
  v14 = 48;
  v15 = sub_1000C8254;
  v16 = sub_1000C8298;
  v17[0] = 0;
  v2 = [*(a1 + 32) migrationQueue];
  v5 = _NSConcreteStackBlock;
  v6 = -1073741824;
  v7 = 0;
  v8 = sub_1000C82A4;
  v9 = &unk_10032C290;
  v10[1] = &v11;
  v10[0] = *(a1 + 32);
  dispatch_sync(v2, &v5);

  (*(*(a1 + 40) + 16))(*(a1 + 40), v12[5], v3, v4);
  objc_storeStrong(v10, 0);
  _Block_object_dispose(&v11, 8);
  objc_storeStrong(v17, 0);
}

void sub_1000C8254(uint64_t a1, uint64_t a2)
{
  v3 = (a2 + 40);
  v2 = *(a2 + 40);
  *(a1 + 40) = 0;
  objc_storeStrong((a1 + 40), v2);

  objc_storeStrong(v3, 0);
}

void sub_1000C82A4(uint64_t a1)
{
  v2 = [*(a1 + 32) keychainError];
  v3 = *(*(a1 + 40) + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;
}

void sub_1000C83C4(NSObject *a1)
{
  oslog[2] = a1;
  oslog[1] = a1;
  oslog[0] = _BYLoggingFacility();
  v13 = OS_LOG_TYPE_DEFAULT;
  if (os_log_type_enabled(oslog[0], OS_LOG_TYPE_DEFAULT))
  {
    v2 = oslog[0];
    v3 = v13;
    sub_10006AA68(buf);
    _os_log_impl(&_mh_execute_header, v2, v3, "Starting import of keychain data...", buf, 2u);
  }

  objc_storeStrong(oslog, 0);
  [(objc_class *)a1[4].isa setHasTransferredData:1];
  v4 = [(objc_class *)a1[4].isa _targetDeviceTransferTask];
  v5 = [(objc_class *)a1[4].isa keychainInfo];
  v6 = _NSConcreteStackBlock;
  v7 = -1073741824;
  v8 = 0;
  v9 = sub_1000C8530;
  v10 = &unk_10032B6F0;
  v11 = a1[4].isa;
  [v4 startKeychainDataImportWithKeychainInfo:v5 completionHandler:&v6];

  objc_storeStrong(&v11, 0);
}

void sub_1000C8530(NSObject *a1, void *a2)
{
  location[1] = a1;
  location[0] = 0;
  objc_storeStrong(location, a2);
  oslog[1] = a1;
  [(objc_class *)a1[4].isa setKeychainError:location[0]];
  [(objc_class *)a1[4].isa setHasImportedKeychain:1];
  if (location[0])
  {
    oslog[0] = _BYLoggingFacility();
    v15 = OS_LOG_TYPE_ERROR;
    if (os_log_type_enabled(oslog[0], OS_LOG_TYPE_ERROR))
    {
      v13 = 0;
      v11 = 0;
      if (_BYIsInternalInstall())
      {
        v3 = location[0];
      }

      else if (location[0])
      {
        v14 = [location[0] domain];
        v13 = 1;
        v3 = +[NSString stringWithFormat:](NSString, "stringWithFormat:", @"<Error domain: %@, code %ld>", v14, [location[0] code]);
        v12 = v3;
        v11 = 1;
      }

      else
      {
        v3 = 0;
      }

      sub_100071CBC(buf, v3);
      _os_log_error_impl(&_mh_execute_header, oslog[0], v15, "Keychain data import failed: %{public}@", buf, 0xCu);
      if (v11)
      {
      }

      if (v13)
      {
      }
    }

    objc_storeStrong(oslog, 0);
  }

  else
  {
    v10 = _BYLoggingFacility();
    v9 = OS_LOG_TYPE_DEFAULT;
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
    {
      v4 = v10;
      v5 = v9;
      sub_10006AA68(v8);
      _os_log_impl(&_mh_execute_header, v4, v5, "Keychain data import completed", v8, 2u);
    }

    objc_storeStrong(&v10, 0);
  }

  v6 = [(objc_class *)a1[4].isa keychainDataImportCompletionBlock];

  if (v6)
  {
    v7 = [(objc_class *)a1[4].isa keychainDataImportCompletionBlock];
    v7[2](v7, location[0]);

    [(objc_class *)a1[4].isa setKeychainDataImportCompletionBlock:0];
  }

  objc_storeStrong(location, 0);
}

void sub_1000C88E0(uint64_t a1)
{
  if ([*(a1 + 32) hasImportedKeychain])
  {
    v2 = *(a1 + 40);
    v3 = [*(a1 + 32) keychainError];
    (*(v2 + 16))(v2, v3);
  }

  else
  {
    [*(a1 + 32) setKeychainDataImportCompletionBlock:*(a1 + 40)];
  }
}

void sub_1000C8A5C(uint64_t a1, void *a2)
{
  location[1] = a1;
  location[0] = 0;
  objc_storeStrong(location, a2);
  if (location[0])
  {
    (*(*(a1 + 40) + 16))();
  }

  else
  {
    [*(a1 + 32) waitForKeychainDataImport:*(a1 + 40)];
  }

  objc_storeStrong(location, 0);
}

void sub_1000C8BBC(NSObject *a1)
{
  oslog[2] = a1;
  oslog[1] = a1;
  oslog[0] = _BYLoggingFacility();
  v7 = OS_LOG_TYPE_DEFAULT;
  if (os_log_type_enabled(oslog[0], OS_LOG_TYPE_DEFAULT))
  {
    v2 = oslog[0];
    v3 = v7;
    sub_10006AA68(v6);
    _os_log_impl(&_mh_execute_header, v2, v3, "Starting migration data transfer...", v6, 2u);
  }

  objc_storeStrong(oslog, 0);
  [(objc_class *)a1[4].isa setHasTransferredData:1];
  v4 = [(objc_class *)a1[4].isa _targetDeviceTransferTask];
  v5 = [(objc_class *)a1[4].isa preflightInformation];
  [v4 startDataTransferWithPreflightInfo:v5 completionHandler:&stru_10032C4E0];
}

void sub_1000C8CB8(id a1, NSError *a2)
{
  location[1] = a1;
  location[0] = 0;
  objc_storeStrong(location, a2);
  oslog[1] = a1;
  if (location[0])
  {
    oslog[0] = _BYLoggingFacility();
    v13 = OS_LOG_TYPE_ERROR;
    if (os_log_type_enabled(oslog[0], OS_LOG_TYPE_ERROR))
    {
      v11 = 0;
      v9 = 0;
      if (_BYIsInternalInstall())
      {
        v3 = location[0];
      }

      else if (location[0])
      {
        v12 = [location[0] domain];
        v11 = 1;
        v3 = +[NSString stringWithFormat:](NSString, "stringWithFormat:", @"<Error domain: %@, code %ld>", v12, [location[0] code]);
        v10 = v3;
        v9 = 1;
      }

      else
      {
        v3 = 0;
      }

      sub_100071CBC(buf, v3);
      _os_log_error_impl(&_mh_execute_header, oslog[0], v13, "Migration data transfer failed: %{public}@", buf, 0xCu);
      if (v9)
      {
      }

      if (v11)
      {
      }
    }

    objc_storeStrong(oslog, 0);
  }

  else
  {
    v8 = _BYLoggingFacility();
    v7 = OS_LOG_TYPE_DEFAULT;
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      v4 = v8;
      v5 = v7;
      sub_10006AA68(v6);
      _os_log_impl(&_mh_execute_header, v4, v5, "Migration data transfer completed", v6, 2u);
    }

    objc_storeStrong(&v8, 0);
  }

  objc_storeStrong(location, 0);
}

void sub_1000C92A4(uint64_t a1)
{
  v8 = NSLocalizedDescriptionKey;
  v9 = @"Buddy migration manager already canceled";
  v2 = [NSDictionary dictionaryWithObjects:&v9 forKeys:&v8 count:1];
  v3 = [NSError errorWithDomain:@"MBErrorDomain" code:202 userInfo:v2];
  [*(a1 + 32) setPreflightError:v3];

  [*(a1 + 32) setPreflightInformation:0];
  v4 = [*(a1 + 32) preflightCompletionBlock];

  if (v4)
  {
    v5 = [*(a1 + 32) preflightCompletionBlock];
    v6 = [*(a1 + 32) preflightInformation];
    v7 = [*(a1 + 32) preflightError];
    v5[2](v5, v6, v7);

    [*(a1 + 32) setPreflightCompletionBlock:0];
  }
}

void sub_1000CA014(id *a1)
{
  v9[2] = a1;
  v9[1] = a1;
  v2 = objc_alloc_init(BuddyDisplayMonitor);
  [a1[4] setDisplayMonitor:v2];

  v3 = [a1[4] displayMonitor];
  v4 = _NSConcreteStackBlock;
  v5 = -1073741824;
  v6 = 0;
  v7 = sub_1000CA110;
  v8 = &unk_10032B0D0;
  v9[0] = a1[4];
  [v3 wakeDisplay:&v4];

  objc_storeStrong(v9, 0);
}

void sub_1000CA3D0(NSObject *a1, void *a2)
{
  location[1] = a1;
  location[0] = 0;
  objc_storeStrong(location, a2);
  oslog[1] = a1;
  if (location[0])
  {
    oslog[0] = _BYLoggingFacility();
    v8 = OS_LOG_TYPE_ERROR;
    if (os_log_type_enabled(oslog[0], OS_LOG_TYPE_ERROR))
    {
      sub_100071CBC(buf, location[0]);
      _os_log_error_impl(&_mh_execute_header, oslog[0], v8, "Failed to enable lockdown: %{public}@", buf, 0xCu);
    }

    objc_storeStrong(oslog, 0);
  }

  else
  {
    v7 = _BYLoggingFacility();
    v6 = OS_LOG_TYPE_DEFAULT;
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      v3 = v7;
      v4 = v6;
      sub_10006AA68(v5);
      _os_log_impl(&_mh_execute_header, v3, v4, "Lockdown enabled", v5, 2u);
    }

    objc_storeStrong(&v7, 0);
  }

  [(objc_class *)a1[4].isa rebootDevice:1];
  objc_storeStrong(location, 0);
}

void sub_1000CCF10(uint64_t a1)
{
  v1 = [*(a1 + 32) tableView];
  v2 = [NSIndexSet indexSetWithIndex:0];
  [v1 reloadSections:v2 withRowAnimation:0];
}

void sub_1000CDD98(id *a1)
{
  location[2] = a1;
  location[1] = a1;
  location[0] = 0;
  v2 = *(a1[4] + 1);
  if (*(a1[4] + 32))
  {
    v3 = 0;
  }

  else
  {
    v3 = 3;
  }

  obj = location[0];
  v4 = [BuddyBackupUtilities getBackupListWithFiltering:0 manager:v2 retries:v3 error:&obj];
  objc_storeStrong(location, obj);
  v32 = v4;
  *(a1[4] + 32) = 1;
  if (v32)
  {
    oslog = _BYLoggingFacility();
    v29 = OS_LOG_TYPE_DEFAULT;
    if (os_log_type_enabled(oslog, OS_LOG_TYPE_DEFAULT))
    {
      sub_100082D54(buf, [v32 count]);
      _os_log_impl(&_mh_execute_header, oslog, v29, "Backups list has %u backups", buf, 8u);
    }

    objc_storeStrong(&oslog, 0);
  }

  else
  {
    v28 = _BYLoggingFacility();
    v27 = OS_LOG_TYPE_DEFAULT;
    if (os_log_type_enabled(v28, OS_LOG_TYPE_DEFAULT))
    {
      sub_10006AE18(v35, location[0]);
      _os_log_impl(&_mh_execute_header, v28, v27, "Error getting backup list: %@", v35, 0xCu);
    }

    objc_storeStrong(&v28, 0);
  }

  v5 = [a1[4] filteredRestorableItemsFromBackupList:v32];
  v6 = v32;
  v32 = v5;

  if (![v32 count])
  {
    v26 = _BYLoggingFacility();
    v25 = OS_LOG_TYPE_DEFAULT;
    if (os_log_type_enabled(v26, OS_LOG_TYPE_DEFAULT))
    {
      v7 = v26;
      v8 = v25;
      sub_10006AA68(v24);
      _os_log_impl(&_mh_execute_header, v7, v8, "No backups are committed and ready to restore", v24, 2u);
    }

    objc_storeStrong(&v26, 0);
  }

  v9 = v32;
  v10 = [NSSortDescriptor sortDescriptorWithKey:@"snapshot.date" ascending:0];
  v34 = v10;
  v11 = [NSArray arrayWithObjects:&v34 count:1];
  v12 = [v9 sortedArrayUsingDescriptors:v11];
  v13 = v32;
  v32 = v12;

  v14 = &_dispatch_main_q;
  v15 = _NSConcreteStackBlock;
  v16 = -1073741824;
  v17 = 0;
  v18 = sub_1000CE1DC;
  v19 = &unk_10032C550;
  v20 = a1[4];
  v21 = v32;
  v22 = location[0];
  v23[0] = a1[5];
  v23[1] = a1[6];
  v23[2] = a1[7];
  dispatch_async(v14, &v15);

  objc_storeStrong(v23, 0);
  objc_storeStrong(&v22, 0);
  objc_storeStrong(&v21, 0);
  objc_storeStrong(&v20, 0);
  objc_storeStrong(&v32, 0);
  objc_storeStrong(location, 0);
}

void sub_1000CE1DC(id *a1)
{
  v30 = a1;
  v29 = a1;
  v28 = 0;
  v27 = 0;
  v2 = _BYSignpostSubsystem();
  v3 = _BYSignpostCreate();
  v26 = v4;
  v25 = v3;

  log = _BYSignpostSubsystem();
  v23 = 1;
  v22 = v25;
  if (v25 && v22 != -1 && os_signpost_enabled(log))
  {
    v5 = log;
    v6 = v23;
    v7 = v22;
    sub_10006AA68(buf);
    _os_signpost_emit_with_name_impl(&_mh_execute_header, v5, v6, v7, "BackupListSoftwareUpdateScan", " enableTelemetry=YES ", buf, 2u);
  }

  objc_storeStrong(&log, 0);
  oslog = _BYSignpostSubsystem();
  v19 = OS_LOG_TYPE_DEFAULT;
  if (os_log_type_enabled(oslog, OS_LOG_TYPE_DEFAULT))
  {
    sub_100077E48(v31, v25);
    _os_log_impl(&_mh_execute_header, oslog, v19, "BEGIN [%lld]: BackupListSoftwareUpdateScan  enableTelemetry=YES ", v31, 0xCu);
  }

  objc_storeStrong(&oslog, 0);
  v27 = v25;
  v28 = v26;
  v8 = a1[4];
  v9 = a1[5];
  v10 = _NSConcreteStackBlock;
  v11 = -1073741824;
  v12 = 0;
  v13 = sub_1000CE4A4;
  v14 = &unk_10032C528;
  v18[1] = v25;
  v18[2] = v26;
  v15 = a1[4];
  v16 = a1[5];
  v17 = a1[6];
  v18[0] = a1[7];
  v18[3] = a1[8];
  v18[4] = a1[9];
  [v8 scanForUpdateIfNecessaryForBackupList:v9 withCompletion:&v10];
  objc_storeStrong(v18, 0);
  objc_storeStrong(&v17, 0);
  objc_storeStrong(&v16, 0);
  objc_storeStrong(&v15, 0);
}

id sub_1000CE4A4(uint64_t a1, char a2)
{
  v25 = a1;
  v24 = a2 & 1;
  v23 = a1;
  v22 = _BYSignpostGetNanoseconds() / 1000000000.0;
  log = _BYSignpostSubsystem();
  v20 = 2;
  v19 = *(a1 + 64);
  if (v19 && v19 != -1 && os_signpost_enabled(log))
  {
    v3 = log;
    v4 = v20;
    v5 = v19;
    sub_10006AA68(buf);
    _os_signpost_emit_with_name_impl(&_mh_execute_header, v3, v4, v5, "BackupListSoftwareUpdateScan", "", buf, 2u);
  }

  objc_storeStrong(&log, 0);
  oslog = _BYSignpostSubsystem();
  v16 = OS_LOG_TYPE_DEFAULT;
  if (os_log_type_enabled(oslog, OS_LOG_TYPE_DEFAULT))
  {
    sub_1000CE794(v27, *(a1 + 64), *&v22);
    _os_log_impl(&_mh_execute_header, oslog, v16, "END [%lld] %fs: BackupListSoftwareUpdateScan ", v27, 0x16u);
  }

  objc_storeStrong(&oslog, 0);
  result = [*(a1 + 32) setBackupList:*(a1 + 40) forceReload:v24 & 1 withError:*(a1 + 48)];
  if (*(a1 + 56))
  {
    v15 = _BYSignpostGetNanoseconds() / 1000000000.0;
    v14 = _BYSignpostSubsystem();
    v13 = 2;
    v12 = *(a1 + 80);
    if (v12 && v12 != -1 && os_signpost_enabled(v14))
    {
      v7 = v14;
      v8 = v13;
      v9 = v12;
      sub_10006AA68(v11);
      _os_signpost_emit_with_name_impl(&_mh_execute_header, v7, v8, v9, "BackupListLoadBackups", "", v11, 2u);
    }

    objc_storeStrong(&v14, 0);
    v10 = _BYSignpostSubsystem();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
    {
      sub_1000CE794(v26, *(a1 + 80), *&v15);
      _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "END [%lld] %fs: BackupListLoadBackups ", v26, 0x16u);
    }

    objc_storeStrong(&v10, 0);
    return (*(*(a1 + 56) + 16))();
  }

  return result;
}

double sub_1000CE794(uint64_t a1, uint64_t a2, uint64_t a3)
{
  *&result = 134218240;
  *a1 = 134218240;
  *(a1 + 4) = a2;
  *(a1 + 12) = 2048;
  *(a1 + 14) = a3;
  return result;
}

void sub_1000CE880(id *a1, void *a2)
{
  location[1] = a1;
  location[0] = 0;
  objc_storeStrong(location, a2);
  [a1[4] setRefreshTimerToDuration:20.0];
  objc_storeStrong(location, 0);
}

void sub_1000CED84(uint64_t a1, void *a2, void *a3, void *a4, void *a5)
{
  location[1] = a1;
  location[0] = 0;
  objc_storeStrong(location, a2);
  v22 = 0;
  objc_storeStrong(&v22, a3);
  v21 = 0;
  objc_storeStrong(&v21, a4);
  v20 = 0;
  objc_storeStrong(&v20, a5);
  v19[1] = a1;
  v9 = [*(a1 + 32) betaEnrollmentStateManager];
  v10 = *(a1 + 40);
  v11 = [v21 productVersion];
  v12 = _NSConcreteStackBlock;
  v13 = -1073741824;
  v14 = 0;
  v15 = sub_1000CEF48;
  v16 = &unk_10032BC78;
  v17 = *(a1 + 32);
  v18 = v21;
  v19[0] = *(a1 + 48);
  [v9 loadSeedEnrollmentStateForRestorables:v10 incompatibleWithUpdateVersion:v11 completion:&v12];

  objc_storeStrong(v19, 0);
  objc_storeStrong(&v18, 0);
  objc_storeStrong(&v17, 0);
  objc_storeStrong(&v20, 0);
  objc_storeStrong(&v21, 0);
  objc_storeStrong(&v22, 0);
  objc_storeStrong(location, 0);
}

void sub_1000CEF48(id *a1)
{
  v10[2] = a1;
  v10[1] = a1;
  v2 = &_dispatch_main_q;
  block = _NSConcreteStackBlock;
  v4 = -1073741824;
  v5 = 0;
  v6 = sub_1000CF068;
  v7 = &unk_10032BC78;
  v8 = a1[4];
  v9 = a1[5];
  v10[0] = a1[6];
  dispatch_async(v2, &block);

  objc_storeStrong(v10, 0);
  objc_storeStrong(&v9, 0);
  objc_storeStrong(&v8, 0);
}

id sub_1000CF068(uint64_t a1)
{
  oslog[2] = a1;
  oslog[1] = a1;
  *(*(a1 + 32) + 80) = 1;
  oslog[0] = _BYLoggingFacility();
  if (os_log_type_enabled(oslog[0], OS_LOG_TYPE_DEFAULT))
  {
    sub_10006AE18(buf, *(a1 + 40));
    _os_log_impl(&_mh_execute_header, oslog[0], OS_LOG_TYPE_DEFAULT, "Restore list scan found software update: %@", buf, 0xCu);
  }

  objc_storeStrong(oslog, 0);
  v2 = *(a1 + 32);
  v3 = [*(a1 + 40) productVersion];
  [v2 setAvailableUpdateVersion:v3];

  result = [*(a1 + 32) setScanningForUpdate:0];
  if (*(a1 + 48))
  {
    return (*(*(a1 + 48) + 16))(*(a1 + 48), *(a1 + 40) != 0);
  }

  return result;
}

BOOL sub_1000CFB58(id a1, UIViewController *a2, unint64_t a3, BOOL *a4)
{
  location[1] = a1;
  location[0] = 0;
  objc_storeStrong(location, a2);
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();
  objc_storeStrong(location, 0);
  return isKindOfClass & 1;
}

uint64_t sub_1000D04F4(uint64_t result)
{
  if (*(result + 32))
  {
    return (*(*(result + 32) + 16))();
  }

  return result;
}

void sub_1000D053C(void *a1, void *a2)
{
  location[1] = a1;
  location[0] = 0;
  objc_storeStrong(location, a2);
  (*(a1[4] + 16))();
  objc_storeStrong(location, 0);
}

void sub_1000D0598(void *a1, void *a2)
{
  location[1] = a1;
  location[0] = 0;
  objc_storeStrong(location, a2);
  (*(a1[4] + 16))();
  objc_storeStrong(location, 0);
}

void sub_1000D05F4(void *a1, void *a2)
{
  location[1] = a1;
  location[0] = 0;
  objc_storeStrong(location, a2);
  (*(a1[4] + 16))();
  objc_storeStrong(location, 0);
}

void sub_1000D0650(void *a1, void *a2)
{
  location[1] = a1;
  location[0] = 0;
  objc_storeStrong(location, a2);
  (*(a1[4] + 16))();
  objc_storeStrong(location, 0);
}

void sub_1000D2138(uint64_t a1, char a2)
{
  v15 = a1;
  v14 = a2;
  v13 = a1;
  v3 = *(a1 + 32);
  v4 = *(a1 + 40);
  v5 = _NSConcreteStackBlock;
  v6 = -1073741824;
  v7 = 0;
  v8 = sub_1000D2234;
  v9 = &unk_10032C680;
  v12 = a2 & 1;
  v10 = *(a1 + 32);
  v11 = *(a1 + 40);
  [v3 _presentNetworkWarningForRestorable:v4 completion:&v5];
  objc_storeStrong(&v11, 0);
  objc_storeStrong(&v10, 0);
}

void sub_1000D2234(uint64_t a1, char a2)
{
  v9 = a1;
  v8 = a2;
  oslog[1] = a1;
  if (*(a1 + 48))
  {
    objc_storeStrong((*(a1 + 32) + 96), *(a1 + 40));
    oslog[0] = _BYLoggingFacility();
    if (os_log_type_enabled(oslog[0], OS_LOG_TYPE_DEFAULT))
    {
      sub_100077E48(buf, *(*(a1 + 32) + 96));
      _os_log_impl(&_mh_execute_header, oslog[0], OS_LOG_TYPE_DEFAULT, "Selected snapshot: %p", buf, 0xCu);
    }

    objc_storeStrong(oslog, 0);
    v3 = [*(a1 + 32) pendingRestoreState];
    [v3 setBackupItem:*(*(a1 + 32) + 96) updateBackupMetadata:1 prefetchAccounts:1];

    v4 = v8;
    v5 = [*(a1 + 32) pendingRestoreState];
    [v5 setAllowCellularNetwork:v4 & 1];

    v6 = [*(a1 + 32) delegate];
    [v6 flowItemDone:*(a1 + 32)];
  }
}

id sub_1000D2654()
{
  v9 = 0;
  v10 = &v9;
  v11 = 1342177280;
  v12 = 32;
  v8 = qword_1003A7098;
  v13 = qword_1003A7098;
  if (!qword_1003A7098)
  {
    v2.super.isa = _NSConcreteStackBlock;
    v3 = -1073741824;
    v4 = 0;
    v5 = sub_1000D3C78;
    v6 = &unk_10032B070;
    v7 = &v9;
    sub_1000D3C78(&v2);
  }

  v0 = v10[3];
  _Block_object_dispose(&v9, 8);

  return v0;
}

void sub_1000D2768(uint64_t a1, void *a2)
{
  location[1] = a1;
  location[0] = 0;
  objc_storeStrong(location, a2);
  oslog[1] = a1;
  if (*(a1 + 40))
  {
    oslog[0] = _BYLoggingFacility();
    v11 = OS_LOG_TYPE_DEFAULT;
    if (os_log_type_enabled(oslog[0], OS_LOG_TYPE_DEFAULT))
    {
      v3 = oslog[0];
      v4 = v11;
      sub_10006AA68(buf);
      _os_log_impl(&_mh_execute_header, v3, v4, "Disable iCloud Restore debug logging", buf, 2u);
    }

    objc_storeStrong(oslog, 0);
    [*(a1 + 32) resetAll];
  }

  else
  {
    v9 = _BYLoggingFacility();
    v8 = OS_LOG_TYPE_DEFAULT;
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      v5 = v9;
      v6 = v8;
      sub_10006AA68(v7);
      _os_log_impl(&_mh_execute_header, v5, v6, "Enable iCloud Restore debug logging", v7, 2u);
    }

    objc_storeStrong(&v9, 0);
    [*(a1 + 32) setEnabledLevel:4];
    [*(a1 + 32) setPersistedLevel:4];
  }

  objc_storeStrong(location, 0);
}

void sub_1000D3224(uint64_t a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, int a9, __int16 a10, char a11, char a12)
{
  *(v13 + 56) = a1;
  *(v13 + 52) = a2;
  if (a12)
  {
    objc_destroyWeak(v12);
  }

  objc_destroyWeak((v14 - 128));
  _Unwind_Resume(*(v13 + 56));
}

void sub_1000D3244(uint64_t a1, int a2)
{
  *(v3 + 56) = a1;
  *(v3 + 52) = a2;
  objc_destroyWeak(v2);
  JUMPOUT(0x1000D3254);
}

void sub_1000D3264(id *a1, void *a2)
{
  location[1] = a1;
  location[0] = 0;
  objc_storeStrong(location, a2);
  v3[1] = a1;
  v3[0] = objc_loadWeakRetained(a1 + 4);
  if (v3[0])
  {
    [v3[0] setListState:0];
    [v3[0] updateBackupListCompletion:0];
  }

  objc_storeStrong(v3, 0);
  objc_storeStrong(location, 0);
}

void sub_1000D3300(id *a1, void *a2)
{
  location[1] = a1;
  location[0] = 0;
  objc_storeStrong(location, a2);
  v3[1] = a1;
  v3[0] = objc_loadWeakRetained(a1 + 4);
  if (v3[0])
  {
    [v3[0] setupWithAlternateChoice:@"setUpAsNew"];
  }

  objc_storeStrong(v3, 0);
  objc_storeStrong(location, 0);
}

void sub_1000D3398(id *a1, void *a2)
{
  location[1] = a1;
  location[0] = 0;
  objc_storeStrong(location, a2);
  v5[1] = a1;
  v5[0] = objc_loadWeakRetained(a1 + 5);
  if (v5[0])
  {
    v3 = [a1[4] navigationController];
    v4 = [v3 popViewControllerAnimated:1];
  }

  objc_storeStrong(v5, 0);
  objc_storeStrong(location, 0);
}

void sub_1000D3C78(NSAssertionHandler *a1)
{
  sub_1000D3DBC();
  *(*(a1[4].super.isa + 1) + 24) = objc_getClass("OSLogPreferencesSubsystem");
  if (!*(*(a1[4].super.isa + 1) + 24))
  {
    a1 = +[NSAssertionHandler currentHandler];
    v2 = [NSString stringWithUTF8String:"Class getOSLogPreferencesSubsystemClass(void)_block_invoke"];
    [(NSAssertionHandler *)a1 handleFailureInFunction:v2 file:@"RestoreFromBackupController.m" lineNumber:57 description:@"Unable to find class %s", "OSLogPreferencesSubsystem"];

    __break(1u);
  }

  qword_1003A7098 = *(*(a1[4].super.isa + 1) + 24);
}

void sub_1000D3DBC()
{
  if (!sub_1000D3EE4())
  {
    v0 = +[NSAssertionHandler currentHandler];
    v1 = [NSString stringWithUTF8String:"void *LoggingSupportLibrary(void)"];
    [(NSAssertionHandler *)v0 handleFailureInFunction:v1 file:@"RestoreFromBackupController.m" lineNumber:56 description:@"%s", 0];

    __break(1u);
  }
}

uint64_t sub_1000D3EE4()
{
  if (!qword_1003A70A0)
  {
    sub_1000D3F98();
  }

  return qword_1003A70A0;
}

uint64_t sub_1000D3F98()
{
  result = _sl_dlopen();
  qword_1003A70A0 = result;
  return result;
}

void sub_1000D5874(id *a1, void *a2)
{
  location[1] = a1;
  location[0] = 0;
  objc_storeStrong(location, a2);
  [a1[4] setShowLocalizedNames:0];
  objc_storeStrong(location, 0);
}

void sub_1000D58C8(id *a1, void *a2)
{
  location[1] = a1;
  location[0] = 0;
  objc_storeStrong(location, a2);
  [a1[4] setShowLocalizedNames:1];
  objc_storeStrong(location, 0);
}

void sub_1000D6C4C(id *a1)
{
  location[2] = a1;
  location[1] = a1;
  v2 = +[BYLocationController sharedBuddyLocationController];
  location[0] = [v2 recommendedLocaleAnalyticsEvent];

  v3 = [a1[4] localeComposite];
  v4 = [v3 dataSource];
  v5 = [v4 numberOfRecommendedLocales];

  v6 = [a1[4] localeComposite];
  v7 = [v6 dataSource];
  LOBYTE(v4) = [v7 hasRecommendedLocaleFromLanguage];

  if (v4)
  {
    if (v5 == 1)
    {
      [location[0] setSource:4];
    }

    else
    {
      [location[0] setSource:5];
    }
  }

  [location[0] setUserSawRecommendedLocale:v5 != 0];
  [location[0] setUserVisitedLocalePane:1];
  objc_storeStrong(location, 0);
}

void sub_1000D6FF0(id a1, UIViewControllerTransitionCoordinatorContext *a2)
{
  location[1] = a1;
  location[0] = 0;
  objc_storeStrong(location, a2);
  objc_storeStrong(location, 0);
}

void sub_1000D7038(uint64_t a1, void *a2)
{
  location[1] = a1;
  location[0] = 0;
  objc_storeStrong(location, a2);
  v3 = [*(a1 + 32) buddyLocaleTableView];
  [v3 scrollToRowAtIndexPath:*(a1 + 40) atScrollPosition:3 animated:1];

  v4 = [*(a1 + 32) buddyLocaleTableView];
  [v4 reloadData];

  objc_storeStrong(location, 0);
}

void sub_1000D8384(id *a1, void *a2)
{
  location[1] = a1;
  location[0] = 0;
  objc_storeStrong(location, a2);
  v16[1] = a1;
  v3 = [a1[4] safetyAndHandlingViewControllerProvider];
  v16[0] = [v3 makeViewController];

  v15 = [[UINavigationController alloc] initWithRootViewController:v16[0]];
  v4 = [a1[4] navigationController];
  [v4 presentViewController:v15 animated:1 completion:0];

  v9 = _NSConcreteStackBlock;
  v10 = 3221225472;
  v11 = sub_1000D8568;
  v12 = &unk_10032C778;
  v13 = v15;
  v14 = [UIAction actionWithHandler:&v9];
  v5 = [UIBarButtonItem alloc];
  v6 = [v5 initWithBarButtonSystemItem:24 primaryAction:v14];
  v7 = [v16[0] navigationItem];
  [v7 setRightBarButtonItem:v6];

  objc_storeStrong(&v8, 0);
  objc_storeStrong(&v14, 0);
  objc_storeStrong(&v13, 0);
  objc_storeStrong(&v15, 0);
  objc_storeStrong(v16, 0);
  objc_storeStrong(location, 0);
}

void sub_1000D8568(id *a1, void *a2)
{
  location[1] = a1;
  location[0] = 0;
  objc_storeStrong(location, a2);
  [a1[4] dismissViewControllerAnimated:1 completion:0];
  objc_storeStrong(location, 0);
}

void sub_1000D97D0(id *a1, void *a2)
{
  location[1] = a1;
  location[0] = 0;
  objc_storeStrong(location, a2);
  [a1[4] setShowLocalizedNames:0];
  objc_storeStrong(location, 0);
}

void sub_1000D9824(id *a1, void *a2)
{
  location[1] = a1;
  location[0] = 0;
  objc_storeStrong(location, a2);
  [a1[4] setShowLocalizedNames:1];
  objc_storeStrong(location, 0);
}

id sub_1000DAA94()
{
  v9 = 0;
  v10 = &v9;
  v11 = 1342177280;
  v12 = 32;
  v8 = qword_1003A70B0;
  v13 = qword_1003A70B0;
  if (!qword_1003A70B0)
  {
    v2.super.isa = _NSConcreteStackBlock;
    v3 = -1073741824;
    v4 = 0;
    v5 = sub_1000DB2A8;
    v6 = &unk_10032B070;
    v7 = &v9;
    sub_1000DB2A8(&v2);
  }

  v0 = v10[3];
  _Block_object_dispose(&v9, 8);

  return v0;
}

void sub_1000DB2A8(NSAssertionHandler *a1)
{
  sub_1000DB3EC();
  *(*(a1[4].super.isa + 1) + 24) = objc_getClass("MKSetup");
  if (!*(*(a1[4].super.isa + 1) + 24))
  {
    a1 = +[NSAssertionHandler currentHandler];
    v2 = [NSString stringWithUTF8String:"Class getMKSetupClass(void)_block_invoke"];
    [(NSAssertionHandler *)a1 handleFailureInFunction:v2 file:@"BuddyMoveFromAndroidController.m" lineNumber:41 description:@"Unable to find class %s", "MKSetup"];

    __break(1u);
  }

  qword_1003A70B0 = *(*(a1[4].super.isa + 1) + 24);
}

void sub_1000DB3EC()
{
  if (!sub_1000DB514())
  {
    v0 = +[NSAssertionHandler currentHandler];
    v1 = [NSString stringWithUTF8String:"void *MigrationKitLibrary(void)"];
    [(NSAssertionHandler *)v0 handleFailureInFunction:v1 file:@"BuddyMoveFromAndroidController.m" lineNumber:40 description:@"%s", 0];

    __break(1u);
  }
}

uint64_t sub_1000DB514()
{
  if (!qword_1003A70B8)
  {
    sub_1000DB5C8();
  }

  return qword_1003A70B8;
}

uint64_t sub_1000DB5C8()
{
  result = _sl_dlopen();
  qword_1003A70B8 = result;
  return result;
}

void sub_1000DC488(uint64_t a1)
{
  v2 = [*(a1 + 32) expressSetupDataProvider];
  [v2 revertExpressSettings];

  v3 = [*(a1 + 32) expressSettingsCache];
  [v3 resetHandlers];
}

void sub_1000DC654(id *a1)
{
  v9[2] = a1;
  v9[1] = a1;
  v2 = [a1[4] expressSetupDataProvider];
  [v2 applyExpressSettings];

  v3 = &_dispatch_main_q;
  block = _NSConcreteStackBlock;
  v5 = -1073741824;
  v6 = 0;
  v7 = sub_1000DC750;
  v8 = &unk_10032B0D0;
  v9[0] = a1[4];
  dispatch_async(v3, &block);

  objc_storeStrong(v9, 0);
}

id sub_1000DC750(uint64_t a1)
{
  v2 = [*(a1 + 32) miscState];
  [v2 setUserChoseExpress:1];

  return [*(a1 + 32) finishFlowItemWithDidApplyExpressSettings:1 didCustomize:0];
}

id sub_1000DC97C(uint64_t a1)
{
  v2 = [*(a1 + 32) expressSettingsCache];
  [v2 resetHandlers];

  return [*(a1 + 32) finishFlowItemWithDidApplyExpressSettings:0 didCustomize:1];
}

void sub_1000DCACC(uint64_t a1)
{
  v11[2] = a1;
  v11[1] = a1;
  v2 = *(a1 + 32);
  v3 = [v2 expressSetupDataProvider];
  [v2 _recordAnalyticsEventForDataProvider:v3 presented:1 customized:*(a1 + 40) & 1];

  v4 = [*(a1 + 32) expressSetupDataProvider];
  [v4 _verifyAppliedSettings:*(a1 + 41) & 1];

  v5 = &_dispatch_main_q;
  block = _NSConcreteStackBlock;
  v7 = -1073741824;
  v8 = 0;
  v9 = sub_1000DCC0C;
  v10 = &unk_10032B0D0;
  v11[0] = *(a1 + 32);
  dispatch_async(v5, &block);

  objc_storeStrong(v11, 0);
}

void sub_1000DCC0C(uint64_t a1)
{
  v2 = [*(a1 + 32) view];
  v3 = [v2 window];
  [v3 setUserInteractionEnabled:1];

  v4 = objc_opt_class();
  v5 = NSStringFromClass(v4);
  [BFFViewControllerSpinnerManager stopAnimatingSpinnerFor:v5];

  v6 = [*(a1 + 32) delegate];
  [v6 flowItemDone:*(a1 + 32)];
}

void sub_1000DD1F4(id *a1)
{
  v10[2] = a1;
  v10[1] = a1;
  v2 = a1[4];
  v3 = _NSConcreteStackBlock;
  v4 = -1073741824;
  v5 = 0;
  v6 = sub_1000DD2F8;
  v7 = &unk_10032BC78;
  v8 = a1[5];
  v9 = a1[4];
  v10[0] = a1[6];
  [v2 prepare:&v3];
  objc_storeStrong(v10, 0);
  objc_storeStrong(&v9, 0);
  objc_storeStrong(&v8, 0);
}

uint64_t sub_1000DD2F8(uint64_t a1)
{
  v2 = [*(a1 + 32) expressSettingsCache];
  v3 = [*(a1 + 40) expressSetupFeatures];
  [v2 registerExpressSettings:v3];

  return (*(*(a1 + 48) + 16))();
}

void sub_1000DD4FC(uint64_t a1)
{
  location[2] = a1;
  location[1] = a1;
  v2 = [*(a1 + 32) existingSettings];
  location[0] = [v2 backupMetadata];

  if (location[0])
  {
    v3 = [BYExpressSetupBackupSource alloc];
    v4 = [*(a1 + 32) pendingRestoreState];
    v5 = [v4 backupItem];
    v6 = [(BYExpressSetupBackupSource *)v3 initWithBackupItem:v5 backupMetadata:location[0]];

    (*(*(a1 + 40) + 16))();
    objc_storeStrong(&v6, 0);
  }

  else
  {
    (*(*(a1 + 40) + 16))();
  }

  objc_storeStrong(location, 0);
}

id sub_1000DD810()
{
  v9 = 0;
  v10 = &v9;
  v11 = 1342177280;
  v12 = 32;
  v8 = qword_1003A70C0;
  v13 = qword_1003A70C0;
  if (!qword_1003A70C0)
  {
    v2.super.isa = _NSConcreteStackBlock;
    v3 = -1073741824;
    v4 = 0;
    v5 = sub_1000E497C;
    v6 = &unk_10032B070;
    v7 = &v9;
    sub_1000E497C(&v2);
  }

  v0 = v10[3];
  _Block_object_dispose(&v9, 8);

  return v0;
}

void sub_1000DD924(NSObject *a1, void *a2)
{
  location[1] = a1;
  location[0] = 0;
  objc_storeStrong(location, a2);
  oslog[1] = a1;
  if (!location[0])
  {
    oslog[0] = _BYLoggingFacility();
    v6 = 16;
    if (os_log_type_enabled(oslog[0], OS_LOG_TYPE_ERROR))
    {
      v3 = oslog[0];
      v4 = v6;
      sub_10006AA68(v5);
      _os_log_error_impl(&_mh_execute_header, v3, v4, "Failed to create wallet provisioning context", v5, 2u);
    }

    objc_storeStrong(oslog, 0);
  }

  if (a1[4].isa)
  {
    (*(a1[4].isa + 2))();
  }

  objc_storeStrong(location, 0);
}

void sub_1000DDAF0(void *a1, void *a2, void *a3)
{
  location[1] = a1;
  location[0] = 0;
  objc_storeStrong(location, a2);
  v8 = 0;
  objc_storeStrong(&v8, a3);
  v7[1] = a1;
  if (location[0])
  {
    v5 = [BYExpressSetupCloudSource alloc];
    v7[0] = [(BYExpressSetupCloudSource *)v5 initWithSettings:location[0]];
    (*(a1[4] + 16))();
    objc_storeStrong(v7, 0);
  }

  else
  {
    oslog = _BYLoggingFacility();
    if (os_log_type_enabled(oslog, OS_LOG_TYPE_ERROR))
    {
      sub_100071CBC(buf, v8);
      _os_log_error_impl(&_mh_execute_header, oslog, OS_LOG_TYPE_ERROR, "Failed to fetch cloud settings for express: %{public}@", buf, 0xCu);
    }

    objc_storeStrong(&oslog, 0);
    (*(a1[4] + 16))();
  }

  objc_storeStrong(&v8, 0);
  objc_storeStrong(location, 0);
}

void sub_1000DE48C(uint64_t a1, void *a2)
{
  location[1] = a1;
  location[0] = 0;
  objc_storeStrong(location, a2);
  v12 = a1;
  [*(a1 + 32) setBackupDataSource:location[0]];
  v11 = _BYSignpostGetNanoseconds() / 1000000000.0;
  log = _BYSignpostSubsystem();
  v9 = 2;
  v8 = *(a1 + 48);
  if (v8 && v8 != -1 && os_signpost_enabled(log))
  {
    v3 = log;
    v4 = v9;
    v5 = v8;
    sub_10006AA68(buf);
    _os_signpost_emit_with_name_impl(&_mh_execute_header, v3, v4, v5, "ExpressSetupBackupDataSource", "", buf, 2u);
  }

  objc_storeStrong(&log, 0);
  oslog = _BYSignpostSubsystem();
  if (os_log_type_enabled(oslog, OS_LOG_TYPE_DEFAULT))
  {
    sub_1000CE794(v14, *(a1 + 48), *&v11);
    _os_log_impl(&_mh_execute_header, oslog, OS_LOG_TYPE_DEFAULT, "END [%lld] %fs: ExpressSetupBackupDataSource ", v14, 0x16u);
  }

  objc_storeStrong(&oslog, 0);
  dispatch_group_leave(*(a1 + 40));
  objc_storeStrong(location, 0);
}

void sub_1000DE644(uint64_t a1, void *a2)
{
  location[1] = a1;
  location[0] = 0;
  objc_storeStrong(location, a2);
  v12 = a1;
  [*(a1 + 32) setCloudDataSource:location[0]];
  v11 = _BYSignpostGetNanoseconds() / 1000000000.0;
  log = _BYSignpostSubsystem();
  v9 = 2;
  v8 = *(a1 + 48);
  if (v8 && v8 != -1 && os_signpost_enabled(log))
  {
    v3 = log;
    v4 = v9;
    v5 = v8;
    sub_10006AA68(buf);
    _os_signpost_emit_with_name_impl(&_mh_execute_header, v3, v4, v5, "ExpressSetupCloudDataSource", "", buf, 2u);
  }

  objc_storeStrong(&log, 0);
  oslog = _BYSignpostSubsystem();
  if (os_log_type_enabled(oslog, OS_LOG_TYPE_DEFAULT))
  {
    sub_1000CE794(v14, *(a1 + 48), *&v11);
    _os_log_impl(&_mh_execute_header, oslog, OS_LOG_TYPE_DEFAULT, "END [%lld] %fs: ExpressSetupCloudDataSource ", v14, 0x16u);
  }

  objc_storeStrong(&oslog, 0);
  dispatch_group_leave(*(a1 + 40));
  objc_storeStrong(location, 0);
}

void sub_1000DE7FC(uint64_t a1)
{
  v28 = a1;
  v27 = a1;
  v26 = 0;
  v25 = 0;
  v2 = _BYSignpostSubsystem();
  v3 = _BYSignpostCreate();
  v24 = v4;
  v23 = v3;

  log = _BYSignpostSubsystem();
  v21 = 1;
  v20 = v23;
  if (v23 && v20 != -1 && os_signpost_enabled(log))
  {
    v5 = log;
    v6 = v21;
    v7 = v20;
    sub_10006AA68(&buf);
    _os_signpost_emit_with_name_impl(&_mh_execute_header, v5, v6, v7, "ExpressSetupWalletDataSource", "", &buf, 2u);
  }

  objc_storeStrong(&log, 0);
  oslog = _BYSignpostSubsystem();
  v17 = OS_LOG_TYPE_DEFAULT;
  if (os_log_type_enabled(oslog, OS_LOG_TYPE_DEFAULT))
  {
    sub_100077E48(v29, v23);
    _os_log_impl(&_mh_execute_header, oslog, v17, "BEGIN [%lld]: ExpressSetupWalletDataSource ", v29, 0xCu);
  }

  objc_storeStrong(&oslog, 0);
  v25 = v23;
  v26 = v24;
  v8 = *(a1 + 32);
  v9 = *(a1 + 40);
  v10 = _NSConcreteStackBlock;
  v11 = -1073741824;
  v12 = 0;
  v13 = sub_1000DEA6C;
  v14 = &unk_10032C880;
  v15 = *(a1 + 40);
  v16[1] = v25;
  v16[2] = v26;
  v16[0] = *(a1 + 48);
  [v8 createWalletProvisionalContextUsingDataProvider:v9 completion:&v10];
  objc_storeStrong(v16, 0);
  objc_storeStrong(&v15, 0);
}

void sub_1000DEA6C(uint64_t a1, void *a2)
{
  location[1] = a1;
  location[0] = 0;
  objc_storeStrong(location, a2);
  v12 = a1;
  [*(a1 + 32) setWalletProvisioningContext:location[0]];
  v11 = _BYSignpostGetNanoseconds() / 1000000000.0;
  log = _BYSignpostSubsystem();
  v9 = 2;
  v8 = *(a1 + 48);
  if (v8 && v8 != -1 && os_signpost_enabled(log))
  {
    v3 = log;
    v4 = v9;
    v5 = v8;
    sub_10006AA68(buf);
    _os_signpost_emit_with_name_impl(&_mh_execute_header, v3, v4, v5, "ExpressSetupWalletDataSource", "", buf, 2u);
  }

  objc_storeStrong(&log, 0);
  oslog = _BYSignpostSubsystem();
  if (os_log_type_enabled(oslog, OS_LOG_TYPE_DEFAULT))
  {
    sub_1000CE794(v14, *(a1 + 48), *&v11);
    _os_log_impl(&_mh_execute_header, oslog, OS_LOG_TYPE_DEFAULT, "END [%lld] %fs: ExpressSetupWalletDataSource ", v14, 0x16u);
  }

  objc_storeStrong(&oslog, 0);
  if (*(a1 + 40))
  {
    (*(*(a1 + 40) + 16))();
  }

  objc_storeStrong(location, 0);
}

uint64_t sub_1000E0BC8(void *a1, void *a2, void *a3)
{
  location[1] = a1;
  location[0] = 0;
  objc_storeStrong(location, a2);
  v6 = 0;
  objc_storeStrong(&v6, a3);
  LOBYTE(a3) = [objc_opt_class() _isSettingsFeature:{objc_msgSend(location[0], "unsignedIntegerValue", a1)}];
  objc_storeStrong(&v6, 0);
  objc_storeStrong(location, 0);
  return a3 & 1;
}

BOOL sub_1000E0C58(void *a1, void *a2, void *a3)
{
  location[1] = a1;
  location[0] = 0;
  objc_storeStrong(location, a2);
  v10 = 0;
  objc_storeStrong(&v10, a3);
  v5 = [objc_opt_class() _localizedNameForFeature:{objc_msgSend(location[0], "unsignedIntegerValue", a1)}];
  v6 = [v5 length];
  v7 = [objc_opt_class() _localizedNameForFeature:{objc_msgSend(v10, "unsignedIntegerValue")}];
  v8 = v6 > [v7 length];

  objc_storeStrong(&v10, 0);
  objc_storeStrong(location, 0);
  return v8;
}

void sub_1000E34AC(uint64_t a1, uint64_t a2)
{
  v3 = (a2 + 40);
  v2 = *(a2 + 40);
  *(a1 + 40) = 0;
  objc_storeStrong((a1 + 40), v2);

  objc_storeStrong(v3, 0);
}

void sub_1000E34FC(uint64_t a1, void *a2)
{
  location[1] = a1;
  location[0] = 0;
  objc_storeStrong(location, a2);
  v3 = &_dispatch_main_q;
  dispatch_assert_queue_V2(v3);

  objc_storeStrong((*(*(a1 + 40) + 8) + 40), location[0]);
  v4 = [sub_1000DD810() sharedInstance];
  v5 = [location[0] resolvedDataSource];
  v6 = [v5 walletMetadata];
  [v4 setBackupMetadata:v6];

  dispatch_group_leave(*(a1 + 32));
  objc_storeStrong(location, 0);
}

void sub_1000E35F0(id *a1, void *a2, void *a3)
{
  location[1] = a1;
  location[0] = 0;
  objc_storeStrong(location, a2);
  v13 = 0;
  objc_storeStrong(&v13, a3);
  v12[2] = a1;
  v5 = &_dispatch_main_q;
  block = _NSConcreteStackBlock;
  v7 = -1073741824;
  v8 = 0;
  v9 = sub_1000E3728;
  v10 = &unk_10032C920;
  v12[1] = a1[5];
  v11 = location[0];
  v12[0] = a1[4];
  dispatch_async(v5, &block);

  objc_storeStrong(v12, 0);
  objc_storeStrong(&v11, 0);
  objc_storeStrong(&v13, 0);
  objc_storeStrong(location, 0);
}

void sub_1000E3774(NSObject *a1)
{
  oslog[2] = a1;
  oslog[1] = a1;
  oslog[0] = _BYLoggingFacility();
  v28 = OS_LOG_TYPE_DEFAULT;
  if (os_log_type_enabled(oslog[0], OS_LOG_TYPE_DEFAULT))
  {
    sub_100071CBC(buf, *(*(a1[6].isa + 1) + 40));
    _os_log_impl(&_mh_execute_header, oslog[0], v28, "Using express setup data provider: %{public}@", buf, 0xCu);
  }

  objc_storeStrong(oslog, 0);
  v2 = [*(*(a1[6].isa + 1) + 40) expressSetupFeatures];
  v3 = [v2 count];

  if (v3 > 2)
  {
    [(objc_class *)a1[4].isa setExpressSetupDataProvider:*(*(a1[6].isa + 1) + 40)];
    v7 = [(objc_class *)a1[4].isa expressSetupDataProvider];
    v8 = [v7 cloudDataSource];
    v9 = [v8 expressSettings];
    v10 = [(objc_class *)a1[4].isa existingSettings];
    [v10 setExpressSettings:v9];

    v11 = objc_opt_class();
    v12 = [(objc_class *)a1[4].isa expressSetupDataProvider];
    v13 = [v12 expressSetupFeatures];
    v14 = [v11 _privacyIdentifiersForFeatures:v13];
    [(objc_class *)a1[4].isa setPrivacyIdentifiers:v14];

    isa = a1[4].isa;
    v16 = [*(*(a1[6].isa + 1) + 40) expressSetupFeatures];
    [(objc_class *)isa prepareStateForExpressFeatures:v16 withDataSource:*(*(a1[6].isa + 1) + 40)];

    v17 = &_dispatch_main_q;
    v18 = _NSConcreteStackBlock;
    v19 = -1073741824;
    v20 = 0;
    v21 = sub_1000E3B70;
    v22 = &unk_10032C970;
    v23 = a1[4].isa;
    v24[1] = a1[6].isa;
    v24[2] = a1[7].isa;
    v24[0] = a1[5].isa;
    dispatch_async(v17, &v18);

    objc_storeStrong(v24, 0);
    objc_storeStrong(&v23, 0);
  }

  else
  {
    v27 = _BYLoggingFacility();
    v26 = OS_LOG_TYPE_DEFAULT;
    if (os_log_type_enabled(v27, OS_LOG_TYPE_DEFAULT))
    {
      v4 = v27;
      v5 = v26;
      sub_10006AA68(v25);
      _os_log_impl(&_mh_execute_header, v4, v5, "Skipping Express Setup pane because we need more than two features to list", v25, 2u);
    }

    objc_storeStrong(&v27, 0);
    [(objc_class *)a1[4].isa _recordAnalyticsEventForDataProvider:*(*(a1[6].isa + 1) + 40) presented:0 customized:0];
    v6 = [(objc_class *)a1[4].isa paneFeatureAnalyticsManager];
    [v6 setExpressDataSource:0 features:0];

    if (a1[5].isa)
    {
      (*(a1[5].isa + 2))();
    }
  }
}

void sub_1000E3B70(uint64_t a1)
{
  v2 = [*(a1 + 32) paneFeatureAnalyticsManager];
  v3 = [*(*(*(a1 + 48) + 8) + 40) resolvedDataSource];
  v4 = [*(*(*(a1 + 48) + 8) + 40) expressSetupFeatures];
  [v2 setExpressDataSource:v3 features:v4];

  v5 = [*(a1 + 32) headerView];
  [v5 setIcon:*(*(*(a1 + 56) + 8) + 40) accessibilityLabel:0];

  if (*(a1 + 40))
  {
    (*(*(a1 + 40) + 16))();
  }
}

void sub_1000E497C(NSAssertionHandler *a1)
{
  sub_1000E4AC0();
  *(*(a1[4].super.isa + 1) + 24) = objc_getClass("PKPassLibrary");
  if (!*(*(a1[4].super.isa + 1) + 24))
  {
    a1 = +[NSAssertionHandler currentHandler];
    v2 = [NSString stringWithUTF8String:"Class getPKPassLibraryClass(void)_block_invoke"];
    [(NSAssertionHandler *)a1 handleFailureInFunction:v2 file:@"BuddyExpressWelcomeController.m" lineNumber:66 description:@"Unable to find class %s", "PKPassLibrary"];

    __break(1u);
  }

  qword_1003A70C0 = *(*(a1[4].super.isa + 1) + 24);
}

void sub_1000E4AC0()
{
  if (!sub_1000E4BE8())
  {
    v0 = +[NSAssertionHandler currentHandler];
    v1 = [NSString stringWithUTF8String:"void *PassKitCoreLibrary(void)"];
    [(NSAssertionHandler *)v0 handleFailureInFunction:v1 file:@"BuddyExpressWelcomeController.m" lineNumber:65 description:@"%s", 0];

    __break(1u);
  }
}

uint64_t sub_1000E4BE8()
{
  if (!qword_1003A70C8)
  {
    sub_1000E4C9C();
  }

  return qword_1003A70C8;
}

uint64_t sub_1000E4C9C()
{
  result = _sl_dlopen();
  qword_1003A70C8 = result;
  return result;
}

void sub_1000E63D0(uint64_t a1)
{
  v15 = a1;
  v14 = a1;
  v2 = +[BuddyActivationConfiguration currentConfiguration];
  v3 = [v2 isActivated];

  v13 = v3 & 1;
  v4 = &_dispatch_main_q;
  v5 = _NSConcreteStackBlock;
  v6 = -1073741824;
  v7 = 0;
  v8 = sub_1000E64F8;
  v9 = &unk_10032C7B8;
  v10 = *(a1 + 32);
  v11 = *(a1 + 40) & 1;
  v12 = v3 & 1;
  dispatch_async(v4, &v5);

  objc_storeStrong(&v10, 0);
}

void sub_1000E6BC4(uint64_t a1)
{
  v14 = a1;
  v13 = a1;
  v2 = +[BuddyActivationConfiguration currentConfiguration];
  v3 = [v2 isActivated];

  v12 = v3 & 1;
  v4 = &_dispatch_main_q;
  v5 = _NSConcreteStackBlock;
  v6 = -1073741824;
  v7 = 0;
  v8 = sub_1000E6CE0;
  v9 = &unk_10032B688;
  v11 = v3 & 1;
  v10 = *(a1 + 32);
  dispatch_async(v4, &v5);

  objc_storeStrong(&v10, 0);
}

id *sub_1000E6CE0(id *result)
{
  if ((result[5] & 1) == 0)
  {
    return [result[4] _activate];
  }

  *(result[4] + 24) = 3;
  return result;
}

void sub_1000E78D0(uint64_t a1, void *a2, void *a3, void *a4, void *a5)
{
  location[1] = a1;
  location[0] = 0;
  objc_storeStrong(location, a2);
  v11 = 0;
  objc_storeStrong(&v11, a3);
  v10 = 0;
  objc_storeStrong(&v10, a4);
  v9 = 0;
  objc_storeStrong(&v9, a5);
  if (v9)
  {
    [*(a1 + 32) _handleFailureWithError:{v9, a1}];
  }

  else if (location[0])
  {
    [*(a1 + 32) _handleActivationData:location[0] responseHeaders:v11 baseURL:{v10, a1}];
  }

  if (*(a1 + 40))
  {
    (*(*(a1 + 40) + 16))();
  }

  objc_storeStrong(&v9, 0);
  objc_storeStrong(&v10, 0);
  objc_storeStrong(&v11, 0);
  objc_storeStrong(location, 0);
}

double sub_1000E84A8(uint64_t a1, int a2, uint64_t a3, uint64_t a4)
{
  *&result = 67109634;
  *a1 = 67109634;
  *(a1 + 4) = a2;
  *(a1 + 8) = 2048;
  *(a1 + 10) = a3;
  *(a1 + 18) = 2112;
  *(a1 + 20) = a4;
  return result;
}

void sub_1000E84D4(id *a1, void *a2, void *a3, void *a4)
{
  location[1] = a1;
  location[0] = 0;
  objc_storeStrong(location, a2);
  v9 = 0;
  objc_storeStrong(&v9, a3);
  v8 = 0;
  objc_storeStrong(&v8, a4);
  WeakRetained = objc_loadWeakRetained(a1 + 4);
  [WeakRetained agreeToRemoteUIDialog];

  objc_storeStrong(&v8, 0);
  objc_storeStrong(&v9, 0);
  objc_storeStrong(location, 0);
}

void sub_1000E8580(id *a1, void *a2, void *a3, void *a4)
{
  location[1] = a1;
  location[0] = 0;
  objc_storeStrong(location, a2);
  v9 = 0;
  objc_storeStrong(&v9, a3);
  v8 = 0;
  objc_storeStrong(&v8, a4);
  WeakRetained = objc_loadWeakRetained(a1 + 4);
  [WeakRetained disagreeToRemoteUIDialog];

  objc_storeStrong(&v8, 0);
  objc_storeStrong(&v9, 0);
  objc_storeStrong(location, 0);
}

void sub_1000E862C(id *a1, void *a2, void *a3, void *a4)
{
  location[1] = a1;
  location[0] = 0;
  objc_storeStrong(location, a2);
  v9 = 0;
  objc_storeStrong(&v9, a3);
  v8 = 0;
  objc_storeStrong(&v8, a4);
  WeakRetained = objc_loadWeakRetained(a1 + 4);
  [WeakRetained tryAgainOnRemoteUIDialog];

  objc_storeStrong(&v8, 0);
  objc_storeStrong(&v9, 0);
  objc_storeStrong(location, 0);
}

void sub_1000E86D8(uint64_t a1)
{
  v51[2] = a1;
  v51[1] = a1;
  v2 = *(a1 + 32);
  v49 = 0;
  if (v2)
  {
    v55 = kMAOptionsActivationResponseHeaders;
    v56 = *(a1 + 32);
    v3 = [NSDictionary dictionaryWithObjects:&v56 forKeys:&v55 count:1];
    v50 = v3;
    v49 = 1;
  }

  else
  {
    v3 = 0;
  }

  v51[0] = v3;
  if (v49)
  {
  }

  location = 0;
  v47 = 0uLL;
  v4 = _BYSignpostSubsystem();
  v5 = _BYSignpostCreate();
  *(&v46 + 1) = v6;
  *&v46 = v5;

  log = _BYSignpostSubsystem();
  v44 = 1;
  v43 = v46;
  if (v46 && v43 != -1 && os_signpost_enabled(log))
  {
    v7 = log;
    v8 = v44;
    v9 = v43;
    sub_10006AA68(buf);
    _os_signpost_emit_with_name_impl(&_mh_execute_header, v7, v8, v9, "ActivationActivate", "", buf, 2u);
  }

  objc_storeStrong(&log, 0);
  oslog = _BYSignpostSubsystem();
  v40 = OS_LOG_TYPE_DEFAULT;
  if (os_log_type_enabled(oslog, OS_LOG_TYPE_DEFAULT))
  {
    sub_100077E48(v54, v46);
    _os_log_impl(&_mh_execute_header, oslog, v40, "BEGIN [%lld]: ActivationActivate ", v54, 0xCu);
  }

  objc_storeStrong(&oslog, 0);
  v47 = v46;
  obj = location;
  v10 = MAEActivateDeviceWithError();
  objc_storeStrong(&location, obj);
  v39 = v10;
  v37 = _BYSignpostGetNanoseconds() / 1000000000.0;
  v36 = _BYSignpostSubsystem();
  v35 = 2;
  v34 = v47;
  if (v47 && v34 != -1 && os_signpost_enabled(v36))
  {
    v11 = v36;
    v12 = v35;
    v13 = v34;
    sub_10006AA68(v33);
    _os_signpost_emit_with_name_impl(&_mh_execute_header, v11, v12, v13, "ActivationActivate", "", v33, 2u);
  }

  objc_storeStrong(&v36, 0);
  v32 = _BYSignpostSubsystem();
  v31 = OS_LOG_TYPE_DEFAULT;
  if (os_log_type_enabled(v32, OS_LOG_TYPE_DEFAULT))
  {
    sub_1000CE794(v53, v47, *&v37);
    _os_log_impl(&_mh_execute_header, v32, v31, "END [%lld] %fs: ActivationActivate ", v53, 0x16u);
  }

  objc_storeStrong(&v32, 0);
  v30 = _BYLoggingFacility();
  v29 = OS_LOG_TYPE_DEFAULT;
  if (os_log_type_enabled(v30, OS_LOG_TYPE_DEFAULT))
  {
    v14 = v39 & 1;
    v27 = 0;
    v25 = 0;
    if (_BYIsInternalInstall())
    {
      v15 = location;
    }

    else if (location)
    {
      v28 = [location domain];
      v27 = 1;
      v15 = +[NSString stringWithFormat:](NSString, "stringWithFormat:", @"<Error domain: %@, code %ld>", v28, [location code]);
      v26 = v15;
      v25 = 1;
    }

    else
    {
      v15 = 0;
    }

    sub_10008D1D4(v52, v14, v15);
    _os_log_impl(&_mh_execute_header, v30, v29, "Buddy Activate: ticketAccepted = %d, error = %{public}@", v52, 0x12u);
    if (v25)
    {
    }

    if (v27)
    {
    }
  }

  objc_storeStrong(&v30, 0);
  v16 = &_dispatch_main_q;
  block = _NSConcreteStackBlock;
  v18 = -1073741824;
  v19 = 0;
  v20 = sub_1000E8C7C;
  v21 = &unk_10032BAC0;
  v24 = v39 & 1;
  v22 = *(a1 + 48);
  v23 = *(a1 + 56);
  dispatch_async(v16, &block);

  objc_storeStrong(&v23, 0);
  objc_storeStrong(&v22, 0);
  objc_storeStrong(&location, 0);
  objc_storeStrong(v51, 0);
}

void sub_1000E8C7C(uint64_t a1)
{
  oslog[2] = a1;
  oslog[1] = a1;
  if (*(a1 + 48))
  {
    [*(a1 + 32) _clearTicketAcceptedTimer];
    oslog[0] = _BYLoggingFacility();
    v9 = OS_LOG_TYPE_DEFAULT;
    if (os_log_type_enabled(oslog[0], OS_LOG_TYPE_DEFAULT))
    {
      v2 = oslog[0];
      v3 = v9;
      sub_10006AA68(buf);
      _os_log_impl(&_mh_execute_header, v2, v3, "Buddy Activate: Scheduling ticket accepted timer...", buf, 2u);
    }

    objc_storeStrong(oslog, 0);
    v4 = [NSTimer scheduledTimerWithTimeInterval:*(a1 + 32) target:"_ticketAcceptedDidTimeout" selector:0 userInfo:0 repeats:20.0];
    v5 = (*(a1 + 32) + 120);
    v6 = *v5;
    *v5 = v4;
  }

  else
  {
    v7 = _BYLoggingFacility();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      sub_10006AE18(v11, *(a1 + 40));
      _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "Buddy Activate: Failed with response body: %@", v11, 0xCu);
    }

    objc_storeStrong(&v7, 0);
    [*(a1 + 32) _enterState:5];
  }
}

void sub_1000E93A8(void *a1, void *a2, void *a3)
{
  location[1] = a1;
  location[0] = 0;
  objc_storeStrong(location, a2);
  v25 = 0;
  objc_storeStrong(&v25, a3);
  v24 = a1;
  v23 = _BYSignpostGetNanoseconds() / 1000000000.0;
  log = _BYSignpostSubsystem();
  v21 = 2;
  v20 = a1[5];
  if (v20 && v20 != -1 && os_signpost_enabled(log))
  {
    v5 = log;
    v6 = v21;
    v7 = v20;
    sub_10006AA68(buf);
    _os_signpost_emit_with_name_impl(&_mh_execute_header, v5, v6, v7, "ActivationFindMyIdentity", "", buf, 2u);
  }

  objc_storeStrong(&log, 0);
  oslog = _BYSignpostSubsystem();
  v17 = OS_LOG_TYPE_DEFAULT;
  if (os_log_type_enabled(oslog, OS_LOG_TYPE_DEFAULT))
  {
    sub_1000CE794(v30, a1[5], *&v23);
    _os_log_impl(&_mh_execute_header, oslog, v17, "END [%lld] %fs: ActivationFindMyIdentity ", v30, 0x16u);
  }

  objc_storeStrong(&oslog, 0);
  v16 = 0;
  if (!v25 && location[0])
  {
    v27 = kMAOptionsActivationLockInfo;
    v28 = location[0];
    v9 = [NSDictionary dictionaryWithObjects:&v28 forKeys:&v27 count:1];
    v10 = v16;
    v16 = v9;
  }

  else
  {
    v15 = _BYLoggingFacility();
    if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
    {
      v13 = 0;
      v11 = 0;
      if (_BYIsInternalInstall())
      {
        v8 = v25;
      }

      else if (v25)
      {
        v14 = [v25 domain];
        v13 = 1;
        v8 = +[NSString stringWithFormat:](NSString, "stringWithFormat:", @"<Error domain: %@, code %ld>", v14, [v25 code]);
        v12 = v8;
        v11 = 1;
      }

      else
      {
        v8 = 0;
      }

      sub_100071CBC(v29, v8);
      _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_DEFAULT, "Buddy Activate: Error generating FMiP identity: %{public}@", v29, 0xCu);
      if (v11)
      {
      }

      if (v13)
      {
      }
    }

    objc_storeStrong(&v15, 0);
  }

  if (a1[4])
  {
    (*(a1[4] + 16))();
  }

  objc_storeStrong(&v16, 0);
  objc_storeStrong(&v25, 0);
  objc_storeStrong(location, 0);
}

void sub_1000E9980(id *a1, void *a2, void *a3, void *a4, void *a5)
{
  location[1] = a1;
  location[0] = 0;
  objc_storeStrong(location, a2);
  v11 = 0;
  objc_storeStrong(&v11, a3);
  v10 = 0;
  objc_storeStrong(&v10, a4);
  v9 = 0;
  objc_storeStrong(&v9, a5);
  if (v9)
  {
    [a1[4] _handleFailureWithError:{v9, a1}];
  }

  else if (location[0])
  {
    [a1[4] _handleActivationData:location[0] responseHeaders:v11 baseURL:{v10, a1}];
  }

  objc_storeStrong(&v9, 0);
  objc_storeStrong(&v10, 0);
  objc_storeStrong(&v11, 0);
  objc_storeStrong(location, 0);
}

void sub_1000EA320(id *a1, void *a2)
{
  location[1] = a1;
  location[0] = 0;
  objc_storeStrong(location, a2);
  [a1[4] _tryActivateWithOptions:location[0] requestMutator:0];
  objc_storeStrong(location, 0);
}

double sub_1000EA778(uint64_t a1, uint64_t a2, int a3)
{
  *&result = 138412546;
  *a1 = 138412546;
  *(a1 + 4) = a2;
  *(a1 + 12) = 1024;
  *(a1 + 14) = a3;
  return result;
}

void sub_1000EAD90(id a1)
{
  v8 = a1;
  v7 = a1;
  if (lockdown_connect())
  {
    oslog = _BYLoggingFacility();
    v4 = OS_LOG_TYPE_DEFAULT;
    if (os_log_type_enabled(oslog, OS_LOG_TYPE_DEFAULT))
    {
      v1 = oslog;
      v2 = v4;
      sub_10006AA68(v3);
      _os_log_impl(&_mh_execute_header, v1, v2, "Buddy Activate: Writing ActivationStateAcknowledged key.", v3, 2u);
    }

    objc_storeStrong(&oslog, 0);
    lockdown_set_value();
    lockdown_disconnect();
  }
}

void sub_1000EB08C(NSObject *a1, void *a2)
{
  location[1] = a1;
  location[0] = 0;
  objc_storeStrong(location, a2);
  oslog[1] = a1;
  oslog[0] = _BYLoggingFacility();
  v10 = OS_LOG_TYPE_DEFAULT;
  if (os_log_type_enabled(oslog[0], OS_LOG_TYPE_DEFAULT))
  {
    v3 = oslog[0];
    v4 = v10;
    sub_10006AA68(buf);
    _os_log_impl(&_mh_execute_header, v3, v4, "Activation Lock Expiration Timer fired", buf, 2u);
  }

  objc_storeStrong(oslog, 0);
  v5 = [(objc_class *)a1[4].isa navigationController];
  v8 = [v5 topViewController];

  if (v8 == *(a1[4].isa + 22))
  {
    v6 = [(objc_class *)a1[4].isa navigationController];
    v7 = [v6 popToViewController:a1[4].isa animated:1];
  }

  [(objc_class *)a1[4].isa _stopActivationLockExpirationTimer];
  objc_storeStrong(&v8, 0);
  objc_storeStrong(location, 0);
}

void sub_1000EB668(id *a1, void *a2)
{
  location[1] = a1;
  location[0] = 0;
  objc_storeStrong(location, a2);
  [a1[4] _userAgreedToTCs:1];
  objc_storeStrong(location, 0);
}

void sub_1000ED5F8(uint64_t a1, void *a2, void *a3)
{
  location[1] = a1;
  location[0] = 0;
  objc_storeStrong(location, a2);
  v28 = 0;
  objc_storeStrong(&v28, a3);
  v27 = a1;
  v26 = _BYSignpostGetNanoseconds() / 1000000000.0;
  log = _BYSignpostSubsystem();
  v24 = 2;
  v23 = *(a1 + 64);
  if (v23 && v23 != -1 && os_signpost_enabled(log))
  {
    v5 = log;
    v6 = v24;
    v7 = v23;
    sub_10006AA68(buf);
    _os_signpost_emit_with_name_impl(&_mh_execute_header, v5, v6, v7, "ActivationFindMyIdentity", "", buf, 2u);
  }

  objc_storeStrong(&log, 0);
  oslog = _BYSignpostSubsystem();
  v20 = OS_LOG_TYPE_DEFAULT;
  if (os_log_type_enabled(oslog, OS_LOG_TYPE_DEFAULT))
  {
    sub_1000CE794(v30, *(a1 + 64), *&v26);
    _os_log_impl(&_mh_execute_header, oslog, v20, "END [%lld] %fs: ActivationFindMyIdentity ", v30, 0x16u);
  }

  objc_storeStrong(&oslog, 0);
  v8 = &_dispatch_main_q;
  v9 = _NSConcreteStackBlock;
  v10 = -1073741824;
  v11 = 0;
  v12 = sub_1000ED914;
  v13 = &unk_10032CB10;
  v14 = location[0];
  v15 = v28;
  v16 = *(a1 + 32);
  v17 = *(a1 + 40);
  v18 = *(a1 + 48);
  v19 = *(a1 + 56);
  dispatch_async(v8, &v9);

  objc_storeStrong(&v19, 0);
  objc_storeStrong(&v18, 0);
  objc_storeStrong(&v17, 0);
  objc_storeStrong(&v16, 0);
  objc_storeStrong(&v15, 0);
  objc_storeStrong(&v14, 0);
  objc_storeStrong(&v28, 0);
  objc_storeStrong(location, 0);
}

void sub_1000ED914(uint64_t a1)
{
  location[2] = a1;
  location[1] = a1;
  if (![*(a1 + 32) length] || *(a1 + 40))
  {
    oslog = _BYLoggingFacility();
    if (os_log_type_enabled(oslog, OS_LOG_TYPE_DEFAULT))
    {
      v10 = 0;
      v8 = 0;
      if (_BYIsInternalInstall())
      {
        v7 = *(a1 + 40);
      }

      else if (*(a1 + 40))
      {
        v11 = [*(a1 + 40) domain];
        v10 = 1;
        v7 = +[NSString stringWithFormat:](NSString, "stringWithFormat:", @"<Error domain: %@, code %ld>", v11, [*(a1 + 40) code]);
        v9 = v7;
        v8 = 1;
      }

      else
      {
        v7 = 0;
      }

      sub_100071CBC(v26, v7);
      _os_log_impl(&_mh_execute_header, oslog, OS_LOG_TYPE_DEFAULT, "Buddy Activate: Failed to get identity recovery blob, error: %{public}@", v26, 0xCu);
      if (v8)
      {
      }

      if (v10)
      {
      }
    }

    objc_storeStrong(&oslog, 0);
    [*(a1 + 64) stopSpinningForIdentifier:*(a1 + 72)];
    [*(a1 + 64) _enterState:5];
  }

  else
  {
    location[0] = _BYLoggingFacility();
    v24 = OS_LOG_TYPE_DEFAULT;
    if (os_log_type_enabled(location[0], OS_LOG_TYPE_DEFAULT))
    {
      v2 = location[0];
      v3 = v24;
      sub_10006AA68(buf);
      _os_log_impl(&_mh_execute_header, v2, v3, "Buddy Activate: Posting activation with identity recovery blob", buf, 2u);
    }

    objc_storeStrong(location, 0);
    v22 = objc_opt_new();
    v4 = [*(a1 + 48) serverInfo];

    if (v4)
    {
      v5 = [*(a1 + 48) serverInfo];
      [v22 setObject:v5 forKeyedSubscript:@"serverInfo"];
    }

    v21 = [NSMutableURLRequest requestWithURL:*(a1 + 56)];
    [v21 setHTTPMethod:@"POST"];
    [v21 setValue:@"application/x-plist" forHTTPHeaderField:@"Content-Type"];
    [v22 setObject:*(a1 + 32) forKeyedSubscript:@"ActivationLockRecoveryInfo"];
    v20 = [NSPropertyListSerialization dataWithPropertyList:v22 format:100 options:0 error:0];
    [v21 setHTTPBody:v20];
    v6 = *(a1 + 64);
    v13 = _NSConcreteStackBlock;
    v14 = -1073741824;
    v15 = 0;
    v16 = sub_1000EDD18;
    v17 = &unk_10032CAE8;
    v18 = *(a1 + 64);
    v19 = *(a1 + 72);
    [v6 startRequest:v21 completion:&v13];
    objc_storeStrong(&v19, 0);
    objc_storeStrong(&v18, 0);
    objc_storeStrong(&v20, 0);
    objc_storeStrong(&v21, 0);
    objc_storeStrong(&v22, 0);
  }
}

void sub_1000EDD18(uint64_t a1, void *a2, void *a3, void *a4, void *a5)
{
  location[1] = a1;
  location[0] = 0;
  objc_storeStrong(location, a2);
  v11 = 0;
  objc_storeStrong(&v11, a3);
  v10 = 0;
  objc_storeStrong(&v10, a4);
  v9 = 0;
  objc_storeStrong(&v9, a5);
  [*(a1 + 32) stopSpinningForIdentifier:{*(a1 + 40), a1}];
  objc_storeStrong(&v9, 0);
  objc_storeStrong(&v10, 0);
  objc_storeStrong(&v11, 0);
  objc_storeStrong(location, 0);
}

void sub_1000EDEA4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, int a9, int a10, _Unwind_Exception *exception_object)
{
  objc_destroyWeak(v11);
  objc_destroyWeak((v12 - 40));
  _Unwind_Resume(a1);
}

BOOL sub_1000EDEC4(id a1, RUIElement *a2)
{
  location[1] = a1;
  location[0] = 0;
  objc_storeStrong(location, a2);
  v9[1] = a1;
  v3 = [location[0] pageElement];
  v4 = [v3 page];
  v5 = [v4 attributes];
  v9[0] = [v5 objectForKeyedSubscript:@"name"];

  if (([v9[0] isEqualToString:@"FMIPLockPasscode"] & 1) == 0)
  {
    goto LABEL_6;
  }

  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    v6 = [location[0] identifier];
    v7 = [v6 isEqualToString:@"next"];

    if (v7)
    {
      v11 = 1;
      goto LABEL_7;
    }

LABEL_6:
    v11 = 0;
    goto LABEL_7;
  }

  v11 = 1;
LABEL_7:
  objc_storeStrong(v9, 0);
  objc_storeStrong(location, 0);
  return v11 & 1;
}

void sub_1000EE048(id *a1, void *a2, void *a3, void *a4)
{
  location[1] = a1;
  location[0] = 0;
  objc_storeStrong(location, a2);
  v24 = 0;
  objc_storeStrong(&v24, a3);
  v23 = 0;
  objc_storeStrong(&v23, a4);
  v22[1] = a1;
  v22[0] = objc_loadWeakRetained(a1 + 4);
  if (v22[0])
  {
    v21 = 0;
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v20 = v24;
      v7 = [v20 passcodeField];
      v8 = [v7 stringValue];
      v9 = v21;
      v21 = v8;

      objc_storeStrong(&v20, 0);
    }

    else
    {
      v19 = [location[0] subElementWithID:@"passcode"];
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v10 = [v19 tableCell];
        v11 = [v10 editableTextField];
        v12 = [v11 text];
        v13 = v21;
        v21 = v12;
      }

      else
      {
        oslog = _BYLoggingFacility();
        v17 = OS_LOG_TYPE_DEFAULT;
        if (os_log_type_enabled(oslog, OS_LOG_TYPE_DEFAULT))
        {
          v14 = oslog;
          v15 = v17;
          sub_10006AA68(v16);
          _os_log_impl(&_mh_execute_header, v14, v15, "Unable to find passcode on FMIP passcode lock pane!", v16, 2u);
        }

        objc_storeStrong(&oslog, 0);
      }

      objc_storeStrong(&v19, 0);
    }

    if (v21)
    {
      [v22[0] _activateWithPasscode:v21 fromObjectModel:location[0]];
    }

    else
    {
      [v22[0] _enterState:5];
    }

    objc_storeStrong(&v21, 0);
  }

  objc_storeStrong(v22, 0);
  objc_storeStrong(&v23, 0);
  objc_storeStrong(&v24, 0);
  objc_storeStrong(location, 0);
}

void sub_1000EFC84(id *a1, void *a2, void *a3)
{
  location[1] = a1;
  location[0] = 0;
  objc_storeStrong(location, a2);
  v40 = 0;
  objc_storeStrong(&v40, a3);
  v39 = a1;
  v5 = [v40 domain];
  v6 = 0;
  if ([v5 isEqualToString:AKAppleIDAuthenticationErrorDomain])
  {
    v6 = [v40 code] == -7003;
  }

  v38 = v6;
  v37 = v40 == 0;
  v36 = _BYLoggingFacility();
  v35 = OS_LOG_TYPE_DEFAULT;
  if (os_log_type_enabled(v36, OS_LOG_TYPE_DEFAULT))
  {
    v33 = 0;
    v31 = 0;
    if (_BYIsInternalInstall())
    {
      v7 = v40;
    }

    else if (v40)
    {
      v34 = [v40 domain];
      v33 = 1;
      v7 = +[NSString stringWithFormat:](NSString, "stringWithFormat:", @"<Error domain: %@, code %ld>", v34, [v40 code]);
      v32 = v7;
      v31 = 1;
    }

    else
    {
      v7 = 0;
    }

    sub_10008D1D4(buf, v37, v7);
    _os_log_impl(&_mh_execute_header, v36, v35, "Auth finished with success %i error %{public}@", buf, 0x12u);
    if (v31)
    {
    }

    if (v33)
    {
    }
  }

  objc_storeStrong(&v36, 0);
  v30 = v40;
  if (v38)
  {
    oslog = _BYLoggingFacility();
    v28 = OS_LOG_TYPE_DEFAULT;
    if (os_log_type_enabled(oslog, OS_LOG_TYPE_DEFAULT))
    {
      v8 = oslog;
      v9 = v28;
      sub_10006AA68(v27);
      _os_log_impl(&_mh_execute_header, v8, v9, "AuthManager: Auth canceled", v27, 2u);
    }

    objc_storeStrong(&oslog, 0);
  }

  else if (v40)
  {
    v26 = _BYLoggingFacility();
    v25 = OS_LOG_TYPE_DEFAULT;
    if (os_log_type_enabled(v26, OS_LOG_TYPE_DEFAULT))
    {
      v23 = 0;
      v21 = 0;
      if (_BYIsInternalInstall())
      {
        v10 = v40;
      }

      else if (v40)
      {
        v24 = [v40 domain];
        v23 = 1;
        v10 = +[NSString stringWithFormat:](NSString, "stringWithFormat:", @"<Error domain: %@, code %ld>", v24, [v40 code]);
        v22 = v10;
        v21 = 1;
      }

      else
      {
        v10 = 0;
      }

      sub_100071CBC(v42, v10);
      _os_log_impl(&_mh_execute_header, v26, v25, "Authenticate failed with error: %{public}@", v42, 0xCu);
      if (v21)
      {
      }

      if (v23)
      {
      }
    }

    objc_storeStrong(&v26, 0);
  }

  v11 = &_dispatch_main_q;
  block = _NSConcreteStackBlock;
  v13 = -1073741824;
  v14 = 0;
  v15 = sub_1000F0198;
  v16 = &unk_10032CBA0;
  v17 = a1[4];
  v20 = a1[5];
  v18 = location[0];
  v19 = v30;
  dispatch_async(v11, &block);

  objc_storeStrong(&v19, 0);
  objc_storeStrong(&v18, 0);
  objc_storeStrong(&v20, 0);
  objc_storeStrong(&v17, 0);
  objc_storeStrong(&v30, 0);
  objc_storeStrong(&v40, 0);
  objc_storeStrong(location, 0);
}

void sub_1000F0198(NSObject *a1)
{
  oslog[2] = a1;
  oslog[1] = a1;
  [(objc_class *)a1[4].isa setEnabled:1];
  oslog[0] = _BYLoggingFacility();
  v5 = OS_LOG_TYPE_DEFAULT;
  if (os_log_type_enabled(oslog[0], OS_LOG_TYPE_DEFAULT))
  {
    v2 = oslog[0];
    v3 = v5;
    sub_10006AA68(v4);
    _os_log_impl(&_mh_execute_header, v2, v3, "AuthManager completion", v4, 2u);
  }

  objc_storeStrong(oslog, 0);
  if (a1[7].isa)
  {
    (*(a1[7].isa + 2))();
  }
}

void sub_1000F078C(NSObject *a1, void *a2, id obj)
{
  v17 = a1;
  v16 = a2;
  location = 0;
  objc_storeStrong(&location, obj);
  oslog[1] = a1;
  oslog[0] = _BYLoggingFacility();
  v13 = OS_LOG_TYPE_DEFAULT;
  if (os_log_type_enabled(oslog[0], OS_LOG_TYPE_DEFAULT))
  {
    if (v16 == 2)
    {
      v4 = @"YES";
    }

    else
    {
      v4 = @"NO";
    }

    sub_100071CBC(buf, v4);
    _os_log_impl(&_mh_execute_header, oslog[0], v13, "Account is federated auth account: %{public}@", buf, 0xCu);
  }

  objc_storeStrong(oslog, 0);
  v5 = &_dispatch_main_q;
  block = _NSConcreteStackBlock;
  v7 = -1073741824;
  v8 = 0;
  v9 = sub_1000F0968;
  v10 = &unk_10032CBF0;
  v12[0] = a1[4].isa;
  v12[1] = v16;
  v11 = location;
  dispatch_async(v5, &block);

  objc_storeStrong(&v11, 0);
  objc_storeStrong(v12, 0);
  objc_storeStrong(&location, 0);
}

void sub_1000F0F20(uint64_t a1)
{
  if ([*(a1 + 32) isFilled])
  {
    v2 = +[UIColor labelColor];
    v3 = [(UIColor *)v2 CGColor];
    v4 = [*(a1 + 32) layer];
    [v4 setBackgroundColor:v3];

    v5 = [*(a1 + 32) layer];
    [v5 setBorderColor:0];
  }

  else
  {
    v6 = [*(a1 + 32) layer];
    [v6 setBackgroundColor:0];

    v7 = +[UIColor tertiaryLabelColor];
    v8 = [(UIColor *)v7 CGColor];
    v9 = [*(a1 + 32) layer];
    [v9 setBorderColor:v8];
  }
}

void sub_1000F192C(NSObject *a1)
{
  oslog[2] = a1;
  oslog[1] = a1;
  oslog[0] = _BYLoggingFacility();
  v6 = 2;
  if (os_log_type_enabled(oslog[0], OS_LOG_TYPE_DEBUG))
  {
    v2 = oslog[0];
    v3 = v6;
    sub_10006AA68(v5);
    _os_log_debug_impl(&_mh_execute_header, v2, v3, "Add keyboard language view controller did complete dismiss", v5, 2u);
  }

  objc_storeStrong(oslog, 0);
  v4 = [(objc_class *)a1[4].isa completion];
  v4[2](v4);
}

id sub_1000F248C()
{
  v4 = sub_1000F38B4();
  if (!v4)
  {
    v0 = +[NSAssertionHandler currentHandler];
    v1 = [NSString stringWithUTF8String:"NSString *getTSUserInfoFlowTypeKey(void)"];
    [(NSAssertionHandler *)v0 handleFailureInFunction:v1 file:@"BuddyCloudSIMController.m" lineNumber:29 description:@"%s", dlerror()];

    __break(1u);
  }

  v2 = *v4;

  return v2;
}

id sub_1000F2594()
{
  v4 = sub_1000F3C90();
  if (!v4)
  {
    v0 = +[NSAssertionHandler currentHandler];
    v1 = [NSString stringWithUTF8String:"NSString *getTSUserInfoProximitySetupStateKey(void)"];
    [(NSAssertionHandler *)v0 handleFailureInFunction:v1 file:@"BuddyCloudSIMController.m" lineNumber:30 description:@"%s", dlerror()];

    __break(1u);
  }

  v2 = *v4;

  return v2;
}

id sub_1000F269C()
{
  v4 = sub_1000F3DF8();
  if (!v4)
  {
    v0 = +[NSAssertionHandler currentHandler];
    v1 = [NSString stringWithUTF8String:"NSString *getTSUserInfoMessageSessionKey(void)"];
    [(NSAssertionHandler *)v0 handleFailureInFunction:v1 file:@"BuddyCloudSIMController.m" lineNumber:31 description:@"%s", dlerror()];

    __break(1u);
  }

  v2 = *v4;

  return v2;
}

id sub_1000F27A4()
{
  v4 = sub_1000F3F60();
  if (!v4)
  {
    v0 = +[NSAssertionHandler currentHandler];
    v1 = [NSString stringWithUTF8String:"NSString *getTSUserInfoSourceOSVersionKey(void)"];
    [(NSAssertionHandler *)v0 handleFailureInFunction:v1 file:@"BuddyCloudSIMController.m" lineNumber:33 description:@"%s", dlerror()];

    __break(1u);
  }

  v2 = *v4;

  return v2;
}

id sub_1000F28AC()
{
  v4 = sub_1000F40C8();
  if (!v4)
  {
    v0 = +[NSAssertionHandler currentHandler];
    v1 = [NSString stringWithUTF8String:"NSString *getTSUserInfoHasTransferablePlanKey(void)"];
    [(NSAssertionHandler *)v0 handleFailureInFunction:v1 file:@"BuddyCloudSIMController.m" lineNumber:32 description:@"%s", dlerror()];

    __break(1u);
  }

  v2 = *v4;

  return v2;
}

id sub_1000F29B4()
{
  v9 = 0;
  v10 = &v9;
  v11 = 1342177280;
  v12 = 32;
  v8 = qword_1003A7100;
  v13 = qword_1003A7100;
  if (!qword_1003A7100)
  {
    v2.super.isa = _NSConcreteStackBlock;
    v3 = -1073741824;
    v4 = 0;
    v5 = sub_1000F4230;
    v6 = &unk_10032B070;
    v7 = &v9;
    sub_1000F4230(&v2);
  }

  v0 = v10[3];
  _Block_object_dispose(&v9, 8);

  return v0;
}

void sub_1000F2AC8(NSObject *a1, void *a2)
{
  location[1] = a1;
  location[0] = 0;
  objc_storeStrong(location, a2);
  oslog[1] = a1;
  if (location[0])
  {
    if (a1[5].isa)
    {
      (*(a1[5].isa + 2))(a1[5].isa, location[0] != 0);
    }
  }

  else
  {
    oslog[0] = _BYLoggingFacility();
    v6 = OS_LOG_TYPE_DEFAULT;
    if (os_log_type_enabled(oslog[0], OS_LOG_TYPE_DEFAULT))
    {
      v3 = oslog[0];
      v4 = v6;
      sub_10006AA68(v5);
      _os_log_impl(&_mh_execute_header, v3, v4, "TSSIMSetupFlow did not return a ViewController", v5, 2u);
    }

    objc_storeStrong(oslog, 0);
    [(objc_class *)a1[4].isa _endProximityIfApplicable];
    (*(a1[5].isa + 2))();
  }

  objc_storeStrong(location, 0);
}

void sub_1000F30E4(uint64_t a1)
{
  v2 = [*(a1 + 32) miscState];
  v3 = [v2 migrationManager];
  v4 = [v3 willMigrate];

  if ((v4 & 1) == 0)
  {
    v5 = [*(a1 + 32) proximitySetupController];
    [v5 setupFinished];
  }
}

uint64_t sub_1000F38B4()
{
  v9 = 0;
  v10 = &v9;
  v11 = 0x20000000;
  v12 = 32;
  v8 = qword_1003A70D0;
  v13 = qword_1003A70D0;
  if (!qword_1003A70D0)
  {
    v2 = _NSConcreteStackBlock;
    v3 = -1073741824;
    v4 = 0;
    v5 = sub_1000F39B0;
    v6 = &unk_10032B070;
    v7 = &v9;
    sub_1000F39B0(&v2);
  }

  v0 = v10[3];
  _Block_object_dispose(&v9, 8);
  return v0;
}

void *sub_1000F39B0(uint64_t a1)
{
  v2 = sub_1000F3A1C();
  result = dlsym(v2, "TSUserInfoFlowTypeKey");
  *(*(*(a1 + 32) + 8) + 24) = result;
  qword_1003A70D0 = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

uint64_t sub_1000F3A1C()
{
  v3 = sub_1000F3B48();
  if (!v3)
  {
    v0 = +[NSAssertionHandler currentHandler];
    v1 = [NSString stringWithUTF8String:"void *SIMSetupSupportLibrary(void)"];
    [(NSAssertionHandler *)v0 handleFailureInFunction:v1 file:@"BuddyCloudSIMController.m" lineNumber:27 description:@"%s", 0];

    __break(1u);
  }

  return v3;
}

uint64_t sub_1000F3B48()
{
  if (!qword_1003A70D8)
  {
    sub_1000F3BFC();
  }

  return qword_1003A70D8;
}

uint64_t sub_1000F3BFC()
{
  result = _sl_dlopen();
  qword_1003A70D8 = result;
  return result;
}

uint64_t sub_1000F3C90()
{
  v9 = 0;
  v10 = &v9;
  v11 = 0x20000000;
  v12 = 32;
  v8 = qword_1003A70E0;
  v13 = qword_1003A70E0;
  if (!qword_1003A70E0)
  {
    v2 = _NSConcreteStackBlock;
    v3 = -1073741824;
    v4 = 0;
    v5 = sub_1000F3D8C;
    v6 = &unk_10032B070;
    v7 = &v9;
    sub_1000F3D8C(&v2);
  }

  v0 = v10[3];
  _Block_object_dispose(&v9, 8);
  return v0;
}

void *sub_1000F3D8C(uint64_t a1)
{
  v2 = sub_1000F3A1C();
  result = dlsym(v2, "TSUserInfoProximitySetupStateKey");
  *(*(*(a1 + 32) + 8) + 24) = result;
  qword_1003A70E0 = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

uint64_t sub_1000F3DF8()
{
  v9 = 0;
  v10 = &v9;
  v11 = 0x20000000;
  v12 = 32;
  v8 = qword_1003A70E8;
  v13 = qword_1003A70E8;
  if (!qword_1003A70E8)
  {
    v2 = _NSConcreteStackBlock;
    v3 = -1073741824;
    v4 = 0;
    v5 = sub_1000F3EF4;
    v6 = &unk_10032B070;
    v7 = &v9;
    sub_1000F3EF4(&v2);
  }

  v0 = v10[3];
  _Block_object_dispose(&v9, 8);
  return v0;
}

void *sub_1000F3EF4(uint64_t a1)
{
  v2 = sub_1000F3A1C();
  result = dlsym(v2, "TSUserInfoMessageSessionKey");
  *(*(*(a1 + 32) + 8) + 24) = result;
  qword_1003A70E8 = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

uint64_t sub_1000F3F60()
{
  v9 = 0;
  v10 = &v9;
  v11 = 0x20000000;
  v12 = 32;
  v8 = qword_1003A70F0;
  v13 = qword_1003A70F0;
  if (!qword_1003A70F0)
  {
    v2 = _NSConcreteStackBlock;
    v3 = -1073741824;
    v4 = 0;
    v5 = sub_1000F405C;
    v6 = &unk_10032B070;
    v7 = &v9;
    sub_1000F405C(&v2);
  }

  v0 = v10[3];
  _Block_object_dispose(&v9, 8);
  return v0;
}

void *sub_1000F405C(uint64_t a1)
{
  v2 = sub_1000F3A1C();
  result = dlsym(v2, "TSUserInfoSourceOSVersionKey");
  *(*(*(a1 + 32) + 8) + 24) = result;
  qword_1003A70F0 = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

uint64_t sub_1000F40C8()
{
  v9 = 0;
  v10 = &v9;
  v11 = 0x20000000;
  v12 = 32;
  v8 = qword_1003A70F8;
  v13 = qword_1003A70F8;
  if (!qword_1003A70F8)
  {
    v2 = _NSConcreteStackBlock;
    v3 = -1073741824;
    v4 = 0;
    v5 = sub_1000F41C4;
    v6 = &unk_10032B070;
    v7 = &v9;
    sub_1000F41C4(&v2);
  }

  v0 = v10[3];
  _Block_object_dispose(&v9, 8);
  return v0;
}

void *sub_1000F41C4(uint64_t a1)
{
  v2 = sub_1000F3A1C();
  result = dlsym(v2, "TSUserInfoHasTransferablePlanKey");
  *(*(*(a1 + 32) + 8) + 24) = result;
  qword_1003A70F8 = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void sub_1000F4230(NSAssertionHandler *a1)
{
  sub_1000F3A1C();
  *(*(a1[4].super.isa + 1) + 24) = objc_getClass("TSSIMSetupFlow");
  if (!*(*(a1[4].super.isa + 1) + 24))
  {
    a1 = +[NSAssertionHandler currentHandler];
    v2 = [NSString stringWithUTF8String:"Class getTSSIMSetupFlowClass(void)_block_invoke"];
    [(NSAssertionHandler *)a1 handleFailureInFunction:v2 file:@"BuddyCloudSIMController.m" lineNumber:28 description:@"Unable to find class %s", "TSSIMSetupFlow"];

    __break(1u);
  }

  qword_1003A7100 = *(*(a1[4].super.isa + 1) + 24);
}

void sub_1000F58A8(id a1, NSArray *a2, NSError *a3)
{
  location[1] = a1;
  location[0] = 0;
  objc_storeStrong(location, a2);
  v10 = 0;
  objc_storeStrong(&v10, a3);
  oslog[1] = a1;
  if (v10)
  {
    oslog[0] = _BYLoggingFacility();
    v8 = 16;
    if (os_log_type_enabled(oslog[0], OS_LOG_TYPE_ERROR))
    {
      v5 = oslog[0];
      v6 = v8;
      sub_10006AA68(v7);
      _os_log_error_impl(&_mh_execute_header, v5, v6, "Failed to register for store account additions for suspend task", v7, 2u);
    }

    objc_storeStrong(oslog, 0);
  }

  objc_storeStrong(&v10, 0);
  objc_storeStrong(location, 0);
}

void sub_1000F6850(uint64_t a1)
{
  v2 = [*(a1 + 32) launchURL];
  *(*(*(a1 + 40) + 8) + 24) = v2 != 0;

  v3 = [*(a1 + 32) message];
  *(*(*(a1 + 48) + 8) + 24) = v3 != 0;
}

void sub_1000F7420(id *a1)
{
  location[2] = a1;
  location[1] = a1;
  location[0] = objc_loadWeakRetained(a1 + 4);
  v1 = [location[0] delegate];
  [v1 flowItemDone:location[0]];

  objc_storeStrong(location, 0);
}

void sub_1000F76F8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, int a9, int a10, _Unwind_Exception *exception_object, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, id location)
{
  objc_destroyWeak(v19);
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

id sub_1000F7718()
{
  v9 = 0;
  v10 = &v9;
  v11 = 1342177280;
  v12 = 32;
  v8 = qword_1003A7108;
  v13 = qword_1003A7108;
  if (!qword_1003A7108)
  {
    v2.super.isa = _NSConcreteStackBlock;
    v3 = -1073741824;
    v4 = 0;
    v5 = sub_1000F79A4;
    v6 = &unk_10032B070;
    v7 = &v9;
    sub_1000F79A4(&v2);
  }

  v0 = v10[3];
  _Block_object_dispose(&v9, 8);

  return v0;
}

void sub_1000F782C(uint64_t a1)
{
  location[2] = a1;
  location[1] = a1;
  location[0] = objc_loadWeakRetained((a1 + 48));
  if (location[0])
  {
    (*(*(a1 + 40) + 16))();
  }

  objc_storeStrong(location, 0);
}

void sub_1000F79A4(NSAssertionHandler *a1)
{
  sub_1000F7AE8();
  *(*(a1[4].super.isa + 1) + 24) = objc_getClass("CAMCameraButtonBuddyViewController");
  if (!*(*(a1[4].super.isa + 1) + 24))
  {
    a1 = +[NSAssertionHandler currentHandler];
    v2 = [NSString stringWithUTF8String:"Class getCAMCameraButtonBuddyViewControllerClass(void)_block_invoke"];
    [(NSAssertionHandler *)a1 handleFailureInFunction:v2 file:@"BuddyCameraButtonViewControllerWrapper.m" lineNumber:17 description:@"Unable to find class %s", "CAMCameraButtonBuddyViewController"];

    __break(1u);
  }

  qword_1003A7108 = *(*(a1[4].super.isa + 1) + 24);
}

void sub_1000F7AE8()
{
  if (!sub_1000F7C10())
  {
    v0 = +[NSAssertionHandler currentHandler];
    v1 = [NSString stringWithUTF8String:"void *CameraUILibrary(void)"];
    [(NSAssertionHandler *)v0 handleFailureInFunction:v1 file:@"BuddyCameraButtonViewControllerWrapper.m" lineNumber:16 description:@"%s", 0];

    __break(1u);
  }
}

uint64_t sub_1000F7C10()
{
  if (!qword_1003A7110)
  {
    sub_1000F7CC4();
  }

  return qword_1003A7110;
}

uint64_t sub_1000F7CC4()
{
  result = _sl_dlopen();
  qword_1003A7110 = result;
  return result;
}

void sub_1000F8F98(NSObject *a1, void *a2, void *a3, void *a4)
{
  location[1] = a1;
  location[0] = 0;
  objc_storeStrong(location, a2);
  v15 = 0;
  objc_storeStrong(&v15, a3);
  v14 = 0;
  objc_storeStrong(&v14, a4);
  oslog[1] = a1;
  if (v14)
  {
    oslog[0] = _BYLoggingFacility();
    v12 = OS_LOG_TYPE_ERROR;
    if (os_log_type_enabled(oslog[0], OS_LOG_TYPE_ERROR))
    {
      sub_100071CBC(buf, v14);
      _os_log_error_impl(&_mh_execute_header, oslog[0], v12, "CloudKit migration failed: %{public}@", buf, 0xCu);
    }

    objc_storeStrong(oslog, 0);
    BRSetMigrationStatusForDSID();
  }

  else
  {
    v11 = _BYLoggingFacility();
    v10 = OS_LOG_TYPE_DEFAULT;
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
    {
      v7 = v11;
      v8 = v10;
      sub_10006AA68(v9);
      _os_log_impl(&_mh_execute_header, v7, v8, "CloudKit migration started!", v9, 2u);
    }

    objc_storeStrong(&v11, 0);
    BRSetMigrationStatusForDSID();
  }

  objc_storeStrong(&v14, 0);
  objc_storeStrong(&v15, 0);
  objc_storeStrong(location, 0);
}

void sub_1000F93F0(NSObject *a1, void *a2, void *a3, void *a4)
{
  location[1] = a1;
  location[0] = 0;
  objc_storeStrong(location, a2);
  v22 = 0;
  objc_storeStrong(&v22, a3);
  v21 = 0;
  objc_storeStrong(&v21, a4);
  oslog[1] = a1;
  if (v21)
  {
    oslog[0] = _BYLoggingFacility();
    v19 = OS_LOG_TYPE_ERROR;
    if (os_log_type_enabled(oslog[0], OS_LOG_TYPE_ERROR))
    {
      v17 = 0;
      v15 = 0;
      if (_BYIsInternalInstall())
      {
        v7 = v21;
      }

      else if (v21)
      {
        v18 = [v21 domain];
        v17 = 1;
        v7 = +[NSString stringWithFormat:](NSString, "stringWithFormat:", @"<Error domain: %@, code %ld>", v18, [v21 code]);
        v16 = v7;
        v15 = 1;
      }

      else
      {
        v7 = 0;
      }

      sub_100071CBC(buf, v7);
      _os_log_error_impl(&_mh_execute_header, oslog[0], v19, "Failed to get CloudKit migration state: %{public}@", buf, 0xCu);
      if (v15)
      {
      }

      if (v17)
      {
      }
    }

    objc_storeStrong(oslog, 0);
    if (a1[4].isa)
    {
      (*(a1[4].isa + 2))();
    }

    v14 = 1;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v13 = v22;
      v12 = [v13 name];
      v11 = [v12 isEqualToString:AACloudKitMigrationStateNone] & 1;
      v10 = _BYLoggingFacility();
      v9 = OS_LOG_TYPE_DEFAULT;
      if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
      {
        sub_10006AE18(v25, v12);
        _os_log_impl(&_mh_execute_header, v10, v9, "Received migration state: %@", v25, 0xCu);
      }

      objc_storeStrong(&v10, 0);
      if (a1[4].isa)
      {
        (*(a1[4].isa + 2))();
      }

      objc_storeStrong(&v12, 0);
      objc_storeStrong(&v13, 0);
    }

    else
    {
      v8 = _BYLoggingFacility();
      if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
      {
        sub_10006AE18(v24, v22);
        _os_log_error_impl(&_mh_execute_header, v8, OS_LOG_TYPE_ERROR, "Received unexpected response type: %@", v24, 0xCu);
      }

      objc_storeStrong(&v8, 0);
      if (a1[4].isa)
      {
        (*(a1[4].isa + 2))();
      }
    }

    v14 = 0;
  }

  objc_storeStrong(&v21, 0);
  objc_storeStrong(&v22, 0);
  objc_storeStrong(location, 0);
}

void sub_1000FA948(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, int a10, int a11, _Unwind_Exception *exception_object, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, id location)
{
  objc_destroyWeak(v20);
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_1000FA968(uint64_t a1, void *a2)
{
  location[1] = a1;
  location[0] = 0;
  objc_storeStrong(location, a2);
  if (*(a1 + 40))
  {
    (*(*(a1 + 40) + 16))();
  }

  WeakRetained = objc_loadWeakRetained((a1 + 48));
  v4 = [WeakRetained choiceController];
  [v4 choiceConfirmed:*(a1 + 32)];

  objc_storeStrong(location, 0);
}

void sub_1000FAB80(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, int a10, int a11, _Unwind_Exception *exception_object, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, id location)
{
  objc_destroyWeak(v20);
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_1000FABA0(uint64_t a1, void *a2)
{
  location[1] = a1;
  location[0] = 0;
  objc_storeStrong(location, a2);
  if (*(a1 + 40))
  {
    (*(*(a1 + 40) + 16))();
  }

  WeakRetained = objc_loadWeakRetained((a1 + 48));
  v4 = [WeakRetained choiceController];
  [v4 choiceCancelled:*(a1 + 32)];

  objc_storeStrong(location, 0);
}

void sub_1000FBE64(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained learnMoreButtonTapped:{0, a1, a1}];
}

void sub_1000FE830(uint64_t a1, char a2, id obj)
{
  v7 = a1;
  v6 = a2;
  location = 0;
  objc_storeStrong(&location, obj);
  if (v6)
  {
    [*(a1 + 32) setViewControllerToPresent:{location, a1}];
    v4 = [*(a1 + 32) enrollmentCoordinator];
    [v4 setCurrentFlowItem:*(a1 + 32)];
  }

  (*(*(a1 + 40) + 16))();
  objc_storeStrong(&location, 0);
}

uint64_t sub_1000FF9E8(id *a1, void *a2)
{
  location[1] = a1;
  location[0] = 0;
  objc_storeStrong(location, a2);
  v3 = [a1[4] containsObject:location[0]] ^ 1;
  objc_storeStrong(location, 0);
  return v3 & 1;
}

void sub_1000FFD68(id *a1, void *a2)
{
  location[1] = a1;
  location[0] = 0;
  objc_storeStrong(location, a2);
  v9[1] = a1;
  v9[0] = objc_loadWeakRetained(a1 + 4);
  v3 = [v9[0] dataSource];
  v4 = [v9[0] tableView];
  [v3 tableView:v4 appendItem:location[0] inSection:0];

  v5 = [v9[0] dataSource];
  v6 = [v9[0] tableView];
  v7 = [v9[0] dataSelectorController];
  v8 = [v7 dataStore];
  [v5 tableView:v6 allowAdditionalDataSelection:{objc_msgSend(v8, "count") != 0}];

  [v9[0] dismissViewControllerAnimated:1 completion:0];
  objc_storeStrong(v9, 0);
  objc_storeStrong(location, 0);
}

void sub_100101424(uint64_t a1)
{
  v2 = [*(a1 + 32) delegate];
  v3 = [v2 popToBuddyControllerWithClass:objc_opt_class() animated:1];

  if (!v3)
  {
    v4 = [*(a1 + 32) delegate];
    v5 = [v4 popToBuddyControllerWithClass:objc_opt_class() animated:1];
  }
}

void sub_100101FD8(id a1)
{
  oslog[2] = a1;
  oslog[1] = a1;
  oslog[0] = _BYLoggingFacility();
  v6 = OS_LOG_TYPE_DEFAULT;
  if (os_log_type_enabled(oslog[0], OS_LOG_TYPE_DEFAULT))
  {
    v1 = oslog[0];
    v2 = v6;
    sub_10006AA68(buf);
    _os_log_impl(&_mh_execute_header, v1, v2, "Installing fake software update...", buf, 2u);
  }

  objc_storeStrong(oslog, 0);
  +[BYPreferencesController flushEverything];
  sleep(2u);
  location = [[FBSShutdownOptions alloc] initWithReason:@"Setup Assistant Software Update Restore Testing"];
  [location setRebootType:1];
  v3 = +[FBSSystemService sharedService];
  [v3 shutdownWithOptions:location];

  objc_storeStrong(&location, 0);
}

void sub_1001020EC(NSObject *a1, void *a2)
{
  location[1] = a1;
  location[0] = 0;
  objc_storeStrong(location, a2);
  oslog[1] = a1;
  v3 = [(objc_class *)a1[4].isa backupItem];
  v4 = [(objc_class *)a1[4].isa update];
  v5 = [v4 productVersion];
  -[objc_class setAbleToRestoreWithUpdate:](a1[4].isa, "setAbleToRestoreWithUpdate:", [v3 isCompatibleWithUpdateToSystemVersion:v5] & 1);

  if (([(objc_class *)a1[4].isa ableToRestoreWithUpdate]& 1) == 0)
  {
    oslog[0] = _BYLoggingFacility();
    if (os_log_type_enabled(oslog[0], OS_LOG_TYPE_ERROR))
    {
      v6 = [(objc_class *)a1[4].isa backupItem];
      v7 = [(objc_class *)a1[4].isa update];
      sub_100078180(buf, v6, v7);
      _os_log_error_impl(&_mh_execute_header, oslog[0], OS_LOG_TYPE_ERROR, "Entered restore flow without a compatible update! backupItem: %@, update: %@", buf, 0x16u);
    }

    objc_storeStrong(oslog, 0);
  }

  if (a1[5].isa)
  {
    (*(a1[5].isa + 2))();
  }

  objc_storeStrong(location, 0);
}

id sub_100102EB0()
{
  v9 = 0;
  v10 = &v9;
  v11 = 1342177280;
  v12 = 32;
  v8 = qword_1003A7118;
  v13 = qword_1003A7118;
  if (!qword_1003A7118)
  {
    v2.super.isa = _NSConcreteStackBlock;
    v3 = -1073741824;
    v4 = 0;
    v5 = sub_100104814;
    v6 = &unk_10032B070;
    v7 = &v9;
    sub_100104814(&v2);
  }

  v0 = v10[3];
  _Block_object_dispose(&v9, 8);

  return v0;
}

void sub_100103670(id *a1, char a2)
{
  v9 = a1;
  v8 = a2;
  v7[1] = a1;
  v2 = _NSConcreteStackBlock;
  v3 = -1073741824;
  v4 = 0;
  v5 = sub_100103730;
  v6 = &unk_10032B0D0;
  v7[0] = a1[4];
  [UIView animateWithDuration:&v2 animations:0.5];
  objc_storeStrong(v7, 0);
}

void sub_100103730(uint64_t a1)
{
  v2 = [*(a1 + 32) headerView];
  [v2 setAlpha:1.0];

  v3 = [*(a1 + 32) contentView];
  [v3 setAlpha:1.0];
}

void sub_1001038A4(uint64_t a1)
{
  v2 = [*(a1 + 32) headerView];
  [v2 setAlpha:0.0];

  v3 = [*(a1 + 32) contentView];
  [v3 setAlpha:0.0];
}

void sub_100103FE0(uint64_t a1)
{
  v1 = [*(a1 + 32) headerView];
  [v1 setAlpha:0.0];
}

void sub_100104034(uint64_t a1, char a2)
{
  v10 = a1;
  v9 = a2;
  v8[1] = a1;
  [*(a1 + 32) _setText:*(a1 + 40)];
  v3 = _NSConcreteStackBlock;
  v4 = -1073741824;
  v5 = 0;
  v6 = sub_10010410C;
  v7 = &unk_10032B0D0;
  v8[0] = *(a1 + 32);
  [UIView animateWithDuration:&v3 animations:0.5];
  objc_storeStrong(v8, 0);
}

id sub_10010410C(uint64_t a1)
{
  v2 = [*(a1 + 32) headerView];
  [v2 setAlpha:1.0];

  return [*(a1 + 32) _updateImageViewPadding];
}

void sub_100104814(NSAssertionHandler *a1)
{
  sub_100104958();
  *(*(a1[4].super.isa + 1) + 24) = objc_getClass("ATConnection");
  if (!*(*(a1[4].super.isa + 1) + 24))
  {
    a1 = +[NSAssertionHandler currentHandler];
    v2 = [NSString stringWithUTF8String:"Class getATConnectionClass(void)_block_invoke"];
    [(NSAssertionHandler *)a1 handleFailureInFunction:v2 file:@"RestoreFromComputerController.m" lineNumber:27 description:@"Unable to find class %s", "ATConnection"];

    __break(1u);
  }

  qword_1003A7118 = *(*(a1[4].super.isa + 1) + 24);
}

void sub_100104958()
{
  if (!sub_100104A80())
  {
    v0 = +[NSAssertionHandler currentHandler];
    v1 = [NSString stringWithUTF8String:"void *AirTrafficLibrary(void)"];
    [(NSAssertionHandler *)v0 handleFailureInFunction:v1 file:@"RestoreFromComputerController.m" lineNumber:26 description:@"%s", 0];

    __break(1u);
  }
}

uint64_t sub_100104A80()
{
  if (!qword_1003A7120)
  {
    sub_100104B34();
  }

  return qword_1003A7120;
}

uint64_t sub_100104B34()
{
  result = _sl_dlopen();
  qword_1003A7120 = result;
  return result;
}

id sub_100104C78()
{
  v9 = 0;
  v10 = &v9;
  v11 = 1342177280;
  v12 = 32;
  v8 = qword_1003A7128;
  v13 = qword_1003A7128;
  if (!qword_1003A7128)
  {
    v2.super.isa = _NSConcreteStackBlock;
    v3 = -1073741824;
    v4 = 0;
    v5 = sub_100106C20;
    v6 = &unk_10032B070;
    v7 = &v9;
    sub_100106C20(&v2);
  }

  v0 = v10[3];
  _Block_object_dispose(&v9, 8);

  return v0;
}

void sub_100104E9C(uint64_t a1)
{
  v36 = a1;
  v35 = a1;
  v30 = 0;
  v31 = &v30;
  v32 = 0x20000000;
  v33 = 32;
  v34 = [*(a1 + 32) _assistantShouldBeShownInSetupAssistant];
  v29 = objc_retainBlock(&stru_10032CE68);
  v28 = objc_retainBlock(&stru_10032CE88);
  v21 = _NSConcreteStackBlock;
  v22 = -1073741824;
  v23 = 0;
  v24 = sub_100105284;
  v25 = &unk_10032CEB0;
  v26 = *(a1 + 32);
  v27 = objc_retainBlock(&v21);
  if ((*(v29 + 2))() & 1) == 0 && ((*(v28 + 2))() & 1) != 0 && ((*(v27 + 2))())
  {
    oslog = _BYLoggingFacility();
    v19 = OS_LOG_TYPE_DEFAULT;
    if (os_log_type_enabled(oslog, OS_LOG_TYPE_DEFAULT))
    {
      v2 = oslog;
      v3 = v19;
      sub_10006AA68(buf);
      _os_log_impl(&_mh_execute_header, v2, v3, "Will show Siri for intelligence voice selection", buf, 2u);
    }

    objc_storeStrong(&oslog, 0);
    *(v31 + 24) = 1;
  }

  v10 = _NSConcreteStackBlock;
  v11 = -1073741824;
  v12 = 0;
  v13 = sub_100105344;
  v14 = &unk_10032CED8;
  v16[1] = &v30;
  v15 = *(a1 + 32);
  v16[0] = *(a1 + 40);
  location = objc_retainBlock(&v10);
  if (v31[3])
  {
    (*(location + 2))();
  }

  else
  {
    v4 = _NSConcreteStackBlock;
    v5 = -1073741824;
    v6 = 0;
    v7 = sub_1001053C4;
    v8 = &unk_10032CF00;
    v9[1] = &v30;
    v9[0] = location;
    [BYSiriUtilities requiresAcknowledgementForDataSharing:&v4];
    objc_storeStrong(v9, 0);
  }

  objc_storeStrong(&location, 0);
  objc_storeStrong(v16, 0);
  objc_storeStrong(&v15, 0);
  objc_storeStrong(&v27, 0);
  objc_storeStrong(&v26, 0);
  objc_storeStrong(&v28, 0);
  objc_storeStrong(&v29, 0);
  _Block_object_dispose(&v30, 8);
}

uint64_t sub_100105284(uint64_t a1)
{
  v2 = [*(a1 + 32) _chronicle];
  v3 = [v2 entryForFeature:4];
  v4 = v3 != 0;

  v5 = [*(a1 + 32) intelligenceProvider];
  v6 = [v5 didUpsellAppleIntelligence];

  v7 = 0;
  if (!v4)
  {
    v7 = v6 & 1;
  }

  return v7 & 1;
}

id *sub_100105344(id *result)
{
  v1 = result;
  if (*(*(result[6] + 1) + 24))
  {
    result = [result[4] setDidOfferVoiceTrigger:{objc_msgSend(result[4], "_assistantShouldRunForPHSUpgrade", result, result) & 1}];
  }

  if (v1[5])
  {
    return (*(v1[5] + 2))();
  }

  return result;
}

uint64_t sub_1001053C4(NSObject *a1, char a2)
{
  v10 = a1;
  v9 = a2;
  oslog[1] = a1;
  if (a2)
  {
    oslog[0] = _BYLoggingFacility();
    v7 = OS_LOG_TYPE_DEFAULT;
    if (os_log_type_enabled(oslog[0], OS_LOG_TYPE_DEFAULT))
    {
      v3 = oslog[0];
      v4 = v7;
      sub_10006AA68(v6);
      _os_log_impl(&_mh_execute_header, v3, v4, "Will show Siri for data sharing acknowledgement", v6, 2u);
    }

    objc_storeStrong(oslog, 0);
  }

  *(*(a1[5].isa + 1) + 24) = v9 & 1;
  return (*(a1[4].isa + 2))();
}

id sub_1001055A0()
{
  v9 = 0;
  v10 = &v9;
  v11 = 1342177280;
  v12 = 32;
  v8 = qword_1003A7138;
  v13 = qword_1003A7138;
  if (!qword_1003A7138)
  {
    v2.super.isa = _NSConcreteStackBlock;
    v3 = -1073741824;
    v4 = 0;
    v5 = sub_100106FD4;
    v6 = &unk_10032B070;
    v7 = &v9;
    sub_100106FD4(&v2);
  }

  v0 = v10[3];
  _Block_object_dispose(&v9, 8);

  return v0;
}

id sub_10010624C()
{
  v9 = 0;
  v10 = &v9;
  v11 = 1342177280;
  v12 = 32;
  v8 = qword_1003A7148;
  v13 = qword_1003A7148;
  if (!qword_1003A7148)
  {
    v2.super.isa = _NSConcreteStackBlock;
    v3 = -1073741824;
    v4 = 0;
    v5 = sub_100107388;
    v6 = &unk_10032B070;
    v7 = &v9;
    sub_100107388(&v2);
  }

  v0 = v10[3];
  _Block_object_dispose(&v9, 8);

  return v0;
}

void sub_100106C20(NSAssertionHandler *a1)
{
  sub_100106D64();
  *(*(a1[4].super.isa + 1) + 24) = objc_getClass("AFPreferences");
  if (!*(*(a1[4].super.isa + 1) + 24))
  {
    a1 = +[NSAssertionHandler currentHandler];
    v2 = [NSString stringWithUTF8String:"Class getAFPreferencesClass(void)_block_invoke"];
    [(NSAssertionHandler *)a1 handleFailureInFunction:v2 file:@"AssistantOptInController.m" lineNumber:43 description:@"Unable to find class %s", "AFPreferences"];

    __break(1u);
  }

  qword_1003A7128 = *(*(a1[4].super.isa + 1) + 24);
}

void sub_100106D64()
{
  if (!sub_100106E8C())
  {
    v0 = +[NSAssertionHandler currentHandler];
    v1 = [NSString stringWithUTF8String:"void *AssistantServicesLibrary(void)"];
    [(NSAssertionHandler *)v0 handleFailureInFunction:v1 file:@"AssistantOptInController.m" lineNumber:42 description:@"%s", 0];

    __break(1u);
  }
}

uint64_t sub_100106E8C()
{
  if (!qword_1003A7130)
  {
    sub_100106F40();
  }

  return qword_1003A7130;
}

uint64_t sub_100106F40()
{
  result = _sl_dlopen();
  qword_1003A7130 = result;
  return result;
}

void sub_100106FD4(NSAssertionHandler *a1)
{
  sub_100107118();
  *(*(a1[4].super.isa + 1) + 24) = objc_getClass("VTUIEnrollTrainingViewController");
  if (!*(*(a1[4].super.isa + 1) + 24))
  {
    a1 = +[NSAssertionHandler currentHandler];
    v2 = [NSString stringWithUTF8String:"Class getVTUIEnrollTrainingViewControllerClass(void)_block_invoke"];
    [(NSAssertionHandler *)a1 handleFailureInFunction:v2 file:@"AssistantOptInController.m" lineNumber:52 description:@"Unable to find class %s", "VTUIEnrollTrainingViewController"];

    __break(1u);
  }

  qword_1003A7138 = *(*(a1[4].super.isa + 1) + 24);
}

void sub_100107118()
{
  if (!sub_100107240())
  {
    v0 = +[NSAssertionHandler currentHandler];
    v1 = [NSString stringWithUTF8String:"void *VoiceTriggerUILibrary(void)"];
    [(NSAssertionHandler *)v0 handleFailureInFunction:v1 file:@"AssistantOptInController.m" lineNumber:51 description:@"%s", 0];

    __break(1u);
  }
}

uint64_t sub_100107240()
{
  if (!qword_1003A7140)
  {
    sub_1001072F4();
  }

  return qword_1003A7140;
}

uint64_t sub_1001072F4()
{
  result = _sl_dlopen();
  qword_1003A7140 = result;
  return result;
}

void sub_100107388(NSAssertionHandler *a1)
{
  sub_1001074CC();
  *(*(a1[4].super.isa + 1) + 24) = objc_getClass("VTPreferences");
  if (!*(*(a1[4].super.isa + 1) + 24))
  {
    a1 = +[NSAssertionHandler currentHandler];
    v2 = [NSString stringWithUTF8String:"Class getVTPreferencesClass(void)_block_invoke"];
    [(NSAssertionHandler *)a1 handleFailureInFunction:v2 file:@"AssistantOptInController.m" lineNumber:60 description:@"Unable to find class %s", "VTPreferences"];

    __break(1u);
  }

  qword_1003A7148 = *(*(a1[4].super.isa + 1) + 24);
}

void sub_1001074CC()
{
  if (!sub_1001075F4())
  {
    v0 = +[NSAssertionHandler currentHandler];
    v1 = [NSString stringWithUTF8String:"void *VoiceTriggerLibrary(void)"];
    [(NSAssertionHandler *)v0 handleFailureInFunction:v1 file:@"AssistantOptInController.m" lineNumber:59 description:@"%s", 0];

    __break(1u);
  }
}

uint64_t sub_1001075F4()
{
  if (!qword_1003A7150)
  {
    sub_1001076A8();
  }

  return qword_1003A7150;
}

uint64_t sub_1001076A8()
{
  result = _sl_dlopen();
  qword_1003A7150 = result;
  return result;
}

void sub_100107E34(NSObject *a1, void *a2, void *a3)
{
  location[1] = a1;
  location[0] = 0;
  objc_storeStrong(location, a2);
  v10 = 0;
  objc_storeStrong(&v10, a3);
  oslog[1] = a1;
  if (v10)
  {
    oslog[0] = _BYLoggingFacility();
    if (os_log_type_enabled(oslog[0], OS_LOG_TYPE_DEFAULT))
    {
      v5 = [v10 localizedDescription];
      sub_10006AE18(buf, v5);
      _os_log_impl(&_mh_execute_header, oslog[0], OS_LOG_TYPE_DEFAULT, "Error fetching device properties: %@", buf, 0xCu);
    }

    objc_storeStrong(oslog, 0);
  }

  if (a1[4].isa)
  {
    isa = a1[4].isa;
    v7 = [location[0] valuesByPropertyKey];
    v8 = [v7 objectForKeyedSubscript:DMFDeviceSkippedSetupPanesKey];
    (*(isa + 2))(isa, v8);
  }

  objc_storeStrong(&v10, 0);
  objc_storeStrong(location, 0);
}

void sub_100109198(uint64_t a1, uint64_t a2)
{
  v3 = (a2 + 40);
  v2 = *(a2 + 40);
  *(a1 + 40) = 0;
  objc_storeStrong((a1 + 40), v2);

  objc_storeStrong(v3, 0);
}

void sub_1001091E8(uint64_t a1)
{
  v2 = [*(a1 + 32) appleIDMap];
  v3 = *(*(a1 + 40) + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;

  v5 = [*(a1 + 32) activeAppleID];
  v6 = *(*(a1 + 48) + 8);
  v7 = *(v6 + 40);
  *(v6 + 40) = v5;
}

void sub_100109268(uint64_t a1)
{
  v31[2] = a1;
  v31[1] = a1;
  v26[0] = 0;
  v26[1] = v26;
  v27 = 838860800;
  v28 = 48;
  v29 = sub_100109198;
  v30 = sub_1001091DC;
  v31[0] = 0;
  block = _NSConcreteStackBlock;
  v20 = -1073741824;
  v21 = 0;
  v22 = sub_10010956C;
  v23 = &unk_10032CFC0;
  v24[0] = *(a1 + 32);
  v24[1] = v26;
  location = dispatch_block_create(DISPATCH_BLOCK_ASSIGN_CURRENT, &block);
  v2 = dispatch_get_global_queue(25, 0);
  dispatch_async(v2, location);

  v3 = location;
  v4 = dispatch_time(0, 30000000000);
  dispatch_block_wait(v3, v4);
  v12 = 0;
  v13 = &v12;
  v14 = 838860800;
  v15 = 48;
  v16 = sub_100109198;
  v17 = sub_1001091DC;
  v18 = 0;
  v5 = [*(a1 + 32) accountsQueue];
  v6 = _NSConcreteStackBlock;
  v7 = -1073741824;
  v8 = 0;
  v9 = sub_100109844;
  v10 = &unk_10032CFE8;
  v11[1] = *(a1 + 48);
  v11[0] = *(a1 + 32);
  v11[2] = *(a1 + 56);
  v11[3] = &v12;
  v11[4] = v26;
  dispatch_sync(v5, &v6);

  if (*(a1 + 40))
  {
    (*(*(a1 + 40) + 16))(*(a1 + 40), *(*(*(a1 + 48) + 8) + 40), *(*(*(a1 + 56) + 8) + 40), v13[5]);
  }

  objc_storeStrong(v11, 0);
  _Block_object_dispose(&v12, 8);
  objc_storeStrong(&v18, 0);
  objc_storeStrong(&location, 0);
  objc_storeStrong(v24, 0);
  _Block_object_dispose(v26, 8);
  objc_storeStrong(v31, 0);
}

void sub_10010956C(id *a1)
{
  location[2] = a1;
  location[1] = a1;
  location[0] = _BYLoggingFacility();
  v25 = OS_LOG_TYPE_DEFAULT;
  if (os_log_type_enabled(location[0], OS_LOG_TYPE_DEFAULT))
  {
    v2 = location[0];
    v3 = v25;
    sub_10006AA68(buf);
    _os_log_impl(&_mh_execute_header, v2, v3, "Fetching Apple ID's from backup...", buf, 2u);
  }

  objc_storeStrong(location, 0);
  v23 = 0;
  v22 = 0;
  v21 = 0;
  v20 = objc_alloc_init(MBManager);
  v4 = [a1[4] backupUDID];
  v5 = [a1[4] snapshotID];
  obj = 0;
  v18 = 0;
  v6 = [v20 getAppleIDsMapForBackupUDID:v4 snapshotID:v5 activeAppleID:&obj error:&v18];
  objc_storeStrong(&v23, obj);
  objc_storeStrong(&v21, v18);
  v7 = v22;
  v22 = v6;

  v8 = [a1[4] accountsQueue];
  block = _NSConcreteStackBlock;
  v10 = -1073741824;
  v11 = 0;
  v12 = sub_1001097E8;
  v13 = &unk_10032CF98;
  v14 = a1[4];
  v15 = v22;
  v16 = v23;
  v17[1] = a1[5];
  v17[0] = v21;
  dispatch_sync(v8, &block);

  objc_storeStrong(v17, 0);
  objc_storeStrong(&v16, 0);
  objc_storeStrong(&v15, 0);
  objc_storeStrong(&v14, 0);
  objc_storeStrong(&v20, 0);
  objc_storeStrong(&v21, 0);
  objc_storeStrong(&v22, 0);
  objc_storeStrong(&v23, 0);
}

void sub_1001097E8(uint64_t a1)
{
  [*(a1 + 32) setAppleIDMap:{*(a1 + 40), a1, a1}];
  [*(a1 + 32) setActiveAppleID:*(a1 + 48)];
  objc_storeStrong((*(*(a1 + 64) + 8) + 40), *(a1 + 56));
}

void sub_100109844(uint64_t a1)
{
  v2 = [*(a1 + 32) appleIDMap];
  v3 = *(*(a1 + 40) + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;

  v5 = [*(a1 + 32) activeAppleID];
  v6 = *(*(a1 + 48) + 8);
  v7 = *(v6 + 40);
  *(v6 + 40) = v5;

  objc_storeStrong((*(*(a1 + 56) + 8) + 40), *(*(*(a1 + 64) + 8) + 40));
}

void sub_10010D1A4(id a1)
{
  v1 = objc_alloc_init(BuddyNavigationPit);
  v2 = qword_1003A7160;
  qword_1003A7160 = v1;
}

double sub_10010DD40(uint64_t a1, uint64_t a2, uint64_t a3)
{
  *&result = 138412546;
  *a1 = 138412546;
  *(a1 + 4) = a2;
  *(a1 + 12) = 2114;
  *(a1 + 14) = a3;
  return result;
}

void sub_10010EF68(uint64_t a1)
{
  v12 = a1;
  v11 = a1;
  v2 = [*(a1 + 32) skippedByCloudConfiguration];
  v9 = 0;
  v7 = 0;
  v3 = 0;
  if ((v2 & 1) == 0)
  {
    v10 = [*(a1 + 32) navigationController];
    v9 = 1;
    v8 = [v10 topViewController];
    v7 = 1;
    v3 = v8 == *(a1 + 32);
  }

  if (v7)
  {
  }

  if (v9)
  {
  }

  if (v3)
  {
    oslog = _BYLoggingFacility();
    v5 = OS_LOG_TYPE_DEFAULT;
    if (os_log_type_enabled(oslog, OS_LOG_TYPE_DEFAULT))
    {
      location = objc_opt_class();
      sub_10006AE18(buf, location);
      _os_log_impl(&_mh_execute_header, oslog, v5, "Advancing from %@ due to cloud configuration...", buf, 0xCu);
      objc_storeStrong(&location, 0);
    }

    objc_storeStrong(&oslog, 0);
    [*(a1 + 32) setSkippedByCloudConfiguration:1];
    [*(a1 + 32) _stopAdvertisingAndFinishFlow];
  }
}

uint64_t sub_10010F308(uint64_t result)
{
  v1 = result;
  v12 = result;
  v11 = result;
  if (*(result + 40))
  {
    v10 = [*(result + 32) _canPerformProximitySetup] & 1;
    v2 = +[UIApplication sharedApplication];
    v3 = [(UIApplication *)v2 applicationState]== UIApplicationStateActive;

    v9 = v3;
    if ((v10 & 1) != 0 && v9)
    {
      [*(v1 + 32) beginAdvertisingForProximitySetup];
    }

    else
    {
      oslog = _BYLoggingFacility();
      v7 = OS_LOG_TYPE_DEFAULT;
      if (os_log_type_enabled(oslog, OS_LOG_TYPE_DEFAULT))
      {
        v4 = oslog;
        v5 = v7;
        sub_10006AA68(v6);
        _os_log_impl(&_mh_execute_header, v4, v5, "Application running in background, defer advertising for proximity", v6, 2u);
      }

      objc_storeStrong(&oslog, 0);
    }

    return (*(*(v1 + 40) + 16))();
  }

  return result;
}

void sub_1001101F8(void *a1, void *a2)
{
  location[1] = a1;
  location[0] = 0;
  objc_storeStrong(location, a2);
  if (a1[4])
  {
    (*(a1[4] + 16))();
  }

  objc_storeStrong(location, 0);
}

void sub_100110528(id *a1, void *a2)
{
  location[1] = a1;
  location[0] = 0;
  objc_storeStrong(location, a2);
  v10[1] = a1;
  v3 = &_dispatch_main_q;
  block = _NSConcreteStackBlock;
  v5 = -1073741824;
  v6 = 0;
  v7 = sub_100110638;
  v8 = &unk_10032B838;
  v9 = location[0];
  v10[0] = a1[4];
  dispatch_async(v3, &block);

  objc_storeStrong(v10, 0);
  objc_storeStrong(&v9, 0);
  objc_storeStrong(location, 0);
}

void sub_100110638(NSObject *a1)
{
  oslog[2] = a1;
  oslog[1] = a1;
  if (a1[4].isa)
  {
    oslog[0] = _BYLoggingFacility();
    v17 = OS_LOG_TYPE_ERROR;
    if (os_log_type_enabled(oslog[0], OS_LOG_TYPE_ERROR))
    {
      v15 = 0;
      v13 = 0;
      if (_BYIsInternalInstall())
      {
        isa = a1[4].isa;
      }

      else if (a1[4].isa)
      {
        v16 = [(objc_class *)a1[4].isa domain];
        v15 = 1;
        isa = [NSString stringWithFormat:@"<Error domain: %@, code %ld>", v16, [(objc_class *)a1[4].isa code]];
        v14 = isa;
        v13 = 1;
      }

      else
      {
        isa = 0;
      }

      sub_100071CBC(buf, isa);
      _os_log_error_impl(&_mh_execute_header, oslog[0], v17, "Configure MDM failed with error: %{public}@", buf, 0xCu);
      if (v13)
      {
      }

      if (v15)
      {
      }
    }

    objc_storeStrong(oslog, 0);
    v3 = [(objc_class *)a1[5].isa enrollmentCoordinator];
    [v3 returnToServiceFlowCompleted];

    [(objc_class *)a1[5].isa _presentTryAgainAlert];
  }

  else
  {
    v12 = _BYLoggingFacility();
    v11 = OS_LOG_TYPE_DEFAULT;
    if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
    {
      v4 = v12;
      v5 = v11;
      sub_10006AA68(v10);
      _os_log_impl(&_mh_execute_header, v4, v5, "Configure MDM succeed!", v10, 2u);
    }

    objc_storeStrong(&v12, 0);
    v6 = +[BuddyCloudConfigManager sharedManager];
    v7 = [(objc_class *)a1[5].isa managedConfiguration];
    v8 = [v7 cloudConfigurationDetails];
    [v6 setCloudConfigurationDetails:v8];

    v9 = [(objc_class *)a1[5].isa delegate];
    [v9 flowItemDone:a1[5].isa];
  }
}

void sub_100110908(id *a1, void *a2, void *a3)
{
  location[1] = a1;
  location[0] = 0;
  objc_storeStrong(location, a2);
  v14 = 0;
  objc_storeStrong(&v14, a3);
  v13[1] = a1;
  v5 = &_dispatch_main_q;
  block = _NSConcreteStackBlock;
  v7 = -1073741824;
  v8 = 0;
  v9 = sub_100110A60;
  v10 = &unk_10032BB10;
  v11 = location[0];
  v12 = v14;
  v13[0] = a1[4];
  dispatch_async(v5, &block);

  objc_storeStrong(v13, 0);
  objc_storeStrong(&v12, 0);
  objc_storeStrong(&v11, 0);
  objc_storeStrong(&v14, 0);
  objc_storeStrong(location, 0);
}

void sub_100110A60(uint64_t a1)
{
  oslog[2] = a1;
  oslog[1] = a1;
  if (*(a1 + 32))
  {
    oslog[0] = _BYLoggingFacility();
    v17 = OS_LOG_TYPE_ERROR;
    if (os_log_type_enabled(oslog[0], OS_LOG_TYPE_ERROR))
    {
      v15 = 0;
      v13 = 0;
      if (_BYIsInternalInstall())
      {
        v2 = *(a1 + 32);
      }

      else if (*(a1 + 32))
      {
        v16 = [*(a1 + 32) domain];
        v15 = 1;
        v2 = +[NSString stringWithFormat:](NSString, "stringWithFormat:", @"<Error domain: %@, code %ld>", v16, [*(a1 + 32) code]);
        v14 = v2;
        v13 = 1;
      }

      else
      {
        v2 = 0;
      }

      sub_100071CBC(buf, v2);
      _os_log_error_impl(&_mh_execute_header, oslog[0], v17, "Could not retrieve cloud configuration: %{public}@", buf, 0xCu);
      if (v13)
      {
      }

      if (v15)
      {
      }
    }

    objc_storeStrong(oslog, 0);
    v12 = _BYLoggingFacility();
    v11 = OS_LOG_TYPE_DEFAULT;
    if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
    {
      sub_10006AE18(v20, *(a1 + 40));
      _os_log_impl(&_mh_execute_header, v12, v11, "Detail: %@", v20, 0xCu);
    }

    objc_storeStrong(&v12, 0);
    [*(a1 + 48) _presentTryAgainAlert];
  }

  else
  {
    v10 = _BYLoggingFacility();
    v9 = OS_LOG_TYPE_DEFAULT;
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
    {
      v3 = v10;
      v4 = v9;
      sub_10006AA68(v8);
      _os_log_impl(&_mh_execute_header, v3, v4, "Successfully fetched cloud configuration!", v8, 2u);
    }

    objc_storeStrong(&v10, 0);
    v7 = _BYLoggingFacility();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
    {
      sub_10006AE18(v19, *(a1 + 40));
      _os_log_debug_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEBUG, "Details: %@", v19, 0xCu);
    }

    objc_storeStrong(&v7, 0);
    v5 = +[BuddyCloudConfigManager sharedManager];
    [v5 setCloudConfigurationDetails:*(a1 + 40)];

    v6 = [*(a1 + 48) delegate];
    [v6 flowItemDone:*(a1 + 48)];
  }
}

void sub_1001111AC(id *a1, void *a2)
{
  location[1] = a1;
  location[0] = 0;
  objc_storeStrong(location, a2);
  v3 = [a1[4] featureFlags];
  v4 = [v3 isMDMEnrollmentFlowControllerAdoptionEnabled] ^ 1;

  if (v4)
  {
    [a1[4] _fetchCloudConfig];
  }

  else
  {
    v5 = [a1[4] enrollmentCoordinator];
    [v5 startEnrollmentFlow];
  }

  objc_storeStrong(location, 0);
}

void sub_100111258(id *a1, void *a2)
{
  location[1] = a1;
  location[0] = 0;
  objc_storeStrong(location, a2);
  v3 = [a1[4] navigationController];
  v4 = [v3 popViewControllerAnimated:1];

  objc_storeStrong(location, 0);
}

id sub_100111A70(id *a1, void *a2, void *a3, void *a4)
{
  location[1] = a1;
  location[0] = 0;
  objc_storeStrong(location, a2);
  v38 = 0;
  objc_storeStrong(&v38, a3);
  v37 = 0;
  objc_storeStrong(&v37, a4);
  v36[1] = a1;
  v36[0] = v38;
  v35 = [location[0] dequeueReusableCellWithIdentifier:v37];
  if (!v35)
  {
    v7 = [UITableViewCell alloc];
    v35 = [v7 initWithStyle:0 reuseIdentifier:v37];
  }

  v8 = +[BFFStyle sharedStyle];
  [v8 applyThemeToTableCell:v35];

  v9 = [v35 textLabel];
  [v9 setLineBreakMode:0];

  v10 = [v35 textLabel];
  [v10 setNumberOfLines:0];

  v11 = +[UIColor systemBlueColor];
  v12 = [v35 imageView];
  [v12 setTintColor:v11];

  v34 = 0;
  v13 = [v36[0] symbolName];

  if (v13)
  {
    v14 = [v36[0] symbolConfiguration];

    v15 = [v36[0] symbolName];
    if (v14)
    {
      v16 = [v36[0] symbolConfiguration];
      v17 = [UIImage _systemImageNamed:v15 withConfiguration:v16];
      v18 = v34;
      v34 = v17;
    }

    else
    {
      v19 = [UIImage _systemImageNamed:v15];
      v20 = v34;
      v34 = v19;
    }
  }

  else if ([a1[4] _useCompactMode])
  {
    v21 = [v36[0] icon];
    v22 = sub_100111E80();
    v24 = [v21 imageByPreparingThumbnailOfSize:{v22, v23, *&v22, *&v23}];
    v25 = v34;
    v34 = v24;
  }

  else
  {
    v26 = [v36[0] icon];
    v27 = v34;
    v34 = v26;
  }

  v28 = [v35 imageView];
  [v28 setImage:v34];

  v29 = [v35 textLabel];
  v30 = [v38 title];
  [v29 setText:v30];

  v31 = +[UIColor secondarySystemBackgroundColor];
  [v35 setBackgroundColor:v31];

  v32 = v35;
  objc_storeStrong(&v34, 0);
  objc_storeStrong(&v35, 0);
  objc_storeStrong(v36, 0);
  objc_storeStrong(&v37, 0);
  objc_storeStrong(&v38, 0);
  objc_storeStrong(location, 0);
  return v32;
}