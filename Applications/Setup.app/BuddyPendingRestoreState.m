@interface BuddyPendingRestoreState
- (BuddyPendingRestoreState)initWithExistingSettings:(id)a3 setupMethod:(id)a4;
- (void)clearBackupItem;
- (void)setAttemptedBackupItem:(id)a3;
- (void)setBackupItem:(id)a3 updateBackupMetadata:(BOOL)a4 prefetchAccounts:(BOOL)a5;
@end

@implementation BuddyPendingRestoreState

- (BuddyPendingRestoreState)initWithExistingSettings:(id)a3 setupMethod:(id)a4
{
  v12 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  obj = 0;
  objc_storeStrong(&obj, a4);
  v5 = v12;
  v12 = 0;
  v9.receiver = v5;
  v9.super_class = BuddyPendingRestoreState;
  v6 = [(BuddyPendingRestoreState *)&v9 init];
  v12 = v6;
  objc_storeStrong(&v12, v6);
  if (v6)
  {
    objc_storeStrong(v12 + 5, location[0]);
    objc_storeStrong(v12 + 6, obj);
  }

  v7 = v12;
  objc_storeStrong(&obj, 0);
  objc_storeStrong(location, 0);
  objc_storeStrong(&v12, 0);
  return v7;
}

- (void)setBackupItem:(id)a3 updateBackupMetadata:(BOOL)a4 prefetchAccounts:(BOOL)a5
{
  v33 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  v31 = a4;
  v30 = a5;
  oslog = _BYLoggingFacility();
  v28 = OS_LOG_TYPE_DEFAULT;
  if (os_log_type_enabled(oslog, OS_LOG_TYPE_DEFAULT))
  {
    v7 = [location[0] snapshot];
    v8 = [v7 systemVersion];
    sub_100071CBC(buf, v8);
    _os_log_impl(&_mh_execute_header, oslog, v28, "Set pending backup item from OS: %{public}@", buf, 0xCu);
  }

  objc_storeStrong(&oslog, 0);
  [v33 setBackupItem:location[0]];
  v9 = [v33 setupMethod];
  [v9 setDataTransferMethod:1];

  v10 = [location[0] snapshot];
  v11 = [v10 date];
  [v33 setSnapshotDate:v11];

  [v33 setUseLatestSnapshot:0];
  [v33 setForceSoftwareUpdateRestore:0];
  if (location[0])
  {
    if (v30)
    {
      v12 = [v33 backupItem];
      [v12 prefetchAccounts];
    }

    if (v31)
    {
      v13 = [location[0] backupUDID];
      v14 = 0;
      if (v13)
      {
        v15 = v13;
        v16 = [location[0] snapshotID];
        v13 = v15;
        v14 = v16 != 0;
      }

      if (v14)
      {
        v17 = dispatch_get_global_queue(25, 0);
        block = _NSConcreteStackBlock;
        v21 = -1073741824;
        v22 = 0;
        v23 = sub_1001C79DC;
        v24 = &unk_10032B838;
        v25 = v33;
        v26 = location[0];
        dispatch_async(v17, &block);

        objc_storeStrong(&v26, 0);
        objc_storeStrong(&v25, 0);
      }

      else
      {
        v19 = _BYLoggingFacility();
        if (os_log_type_enabled(v19, OS_LOG_TYPE_FAULT))
        {
          v18 = [location[0] backupUDID];
          sub_10007B2CC(v34, v18, [location[0] snapshotID]);
          _os_log_fault_impl(&_mh_execute_header, v19, OS_LOG_TYPE_FAULT, "Unable to fetch backup metadata for backup UDID %@ and snapshot ID %ld", v34, 0x16u);
        }

        objc_storeStrong(&v19, 0);
      }
    }

    v27 = 0;
  }

  else
  {
    v27 = 1;
  }

  objc_storeStrong(location, 0);
}

- (void)clearBackupItem
{
  v10 = self;
  oslog[1] = a2;
  oslog[0] = _BYLoggingFacility();
  v8 = OS_LOG_TYPE_DEFAULT;
  if (os_log_type_enabled(oslog[0], OS_LOG_TYPE_DEFAULT))
  {
    v2 = oslog[0];
    v3 = v8;
    sub_10006AA68(v7);
    _os_log_impl(&_mh_execute_header, v2, v3, "Clearing pending backup item...", v7, 2u);
  }

  objc_storeStrong(oslog, 0);
  [(BuddyPendingRestoreState *)v10 setBackupItem:0];
  [(BuddyPendingRestoreState *)v10 setSnapshotDate:0];
  [(BuddyPendingRestoreState *)v10 setUseLatestSnapshot:0];
  [(BuddyPendingRestoreState *)v10 setForceSoftwareUpdateRestore:0];
  [(BuddyPendingRestoreState *)v10 setAllowCellularNetwork:0];
  v4 = [(BuddyPendingRestoreState *)v10 setupMethod];
  v5 = [(BuddySetupMethod *)v4 dataTransferMethod];

  if (v5 == 1)
  {
    v6 = [(BuddyPendingRestoreState *)v10 setupMethod];
    [(BuddySetupMethod *)v6 setDataTransferMethod:0];
  }
}

- (void)setAttemptedBackupItem:(id)a3
{
  v4 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  objc_storeStrong(&v4->_attemptedBackupItem, location[0]);
  objc_storeStrong(location, 0);
}

@end