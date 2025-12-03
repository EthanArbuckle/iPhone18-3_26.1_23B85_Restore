@interface BuddyPendingRestoreState
- (BuddyPendingRestoreState)initWithExistingSettings:(id)settings setupMethod:(id)method;
- (void)clearBackupItem;
- (void)setAttemptedBackupItem:(id)item;
- (void)setBackupItem:(id)item updateBackupMetadata:(BOOL)metadata prefetchAccounts:(BOOL)accounts;
@end

@implementation BuddyPendingRestoreState

- (BuddyPendingRestoreState)initWithExistingSettings:(id)settings setupMethod:(id)method
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, settings);
  obj = 0;
  objc_storeStrong(&obj, method);
  v5 = selfCopy;
  selfCopy = 0;
  v9.receiver = v5;
  v9.super_class = BuddyPendingRestoreState;
  v6 = [(BuddyPendingRestoreState *)&v9 init];
  selfCopy = v6;
  objc_storeStrong(&selfCopy, v6);
  if (v6)
  {
    objc_storeStrong(selfCopy + 5, location[0]);
    objc_storeStrong(selfCopy + 6, obj);
  }

  v7 = selfCopy;
  objc_storeStrong(&obj, 0);
  objc_storeStrong(location, 0);
  objc_storeStrong(&selfCopy, 0);
  return v7;
}

- (void)setBackupItem:(id)item updateBackupMetadata:(BOOL)metadata prefetchAccounts:(BOOL)accounts
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, item);
  metadataCopy = metadata;
  accountsCopy = accounts;
  oslog = _BYLoggingFacility();
  v28 = OS_LOG_TYPE_DEFAULT;
  if (os_log_type_enabled(oslog, OS_LOG_TYPE_DEFAULT))
  {
    snapshot = [location[0] snapshot];
    systemVersion = [snapshot systemVersion];
    sub_100071CBC(buf, systemVersion);
    _os_log_impl(&_mh_execute_header, oslog, v28, "Set pending backup item from OS: %{public}@", buf, 0xCu);
  }

  objc_storeStrong(&oslog, 0);
  [selfCopy setBackupItem:location[0]];
  setupMethod = [selfCopy setupMethod];
  [setupMethod setDataTransferMethod:1];

  snapshot2 = [location[0] snapshot];
  date = [snapshot2 date];
  [selfCopy setSnapshotDate:date];

  [selfCopy setUseLatestSnapshot:0];
  [selfCopy setForceSoftwareUpdateRestore:0];
  if (location[0])
  {
    if (accountsCopy)
    {
      backupItem = [selfCopy backupItem];
      [backupItem prefetchAccounts];
    }

    if (metadataCopy)
    {
      backupUDID = [location[0] backupUDID];
      v14 = 0;
      if (backupUDID)
      {
        v15 = backupUDID;
        snapshotID = [location[0] snapshotID];
        backupUDID = v15;
        v14 = snapshotID != 0;
      }

      if (v14)
      {
        v17 = dispatch_get_global_queue(25, 0);
        block = _NSConcreteStackBlock;
        v21 = -1073741824;
        v22 = 0;
        v23 = sub_1001C79DC;
        v24 = &unk_10032B838;
        v25 = selfCopy;
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
          backupUDID2 = [location[0] backupUDID];
          sub_10007B2CC(v34, backupUDID2, [location[0] snapshotID]);
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
  selfCopy = self;
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
  [(BuddyPendingRestoreState *)selfCopy setBackupItem:0];
  [(BuddyPendingRestoreState *)selfCopy setSnapshotDate:0];
  [(BuddyPendingRestoreState *)selfCopy setUseLatestSnapshot:0];
  [(BuddyPendingRestoreState *)selfCopy setForceSoftwareUpdateRestore:0];
  [(BuddyPendingRestoreState *)selfCopy setAllowCellularNetwork:0];
  setupMethod = [(BuddyPendingRestoreState *)selfCopy setupMethod];
  dataTransferMethod = [(BuddySetupMethod *)setupMethod dataTransferMethod];

  if (dataTransferMethod == 1)
  {
    setupMethod2 = [(BuddyPendingRestoreState *)selfCopy setupMethod];
    [(BuddySetupMethod *)setupMethod2 setDataTransferMethod:0];
  }
}

- (void)setAttemptedBackupItem:(id)item
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, item);
  objc_storeStrong(&selfCopy->_attemptedBackupItem, location[0]);
  objc_storeStrong(location, 0);
}

@end