@interface CloudTabSyncCoordinator
- (BOOL)_canCloseCloudTabStoreDatabase;
- (BOOL)_isDataclassEnabledInOperationGroup:(id)group;
- (BOOL)_shouldContinueSyncOperationInOperationGroup:(id)group;
- (BOOL)_shouldDeleteDatabaseForError:(id)error;
- (CloudTabSyncCoordinator)initWithCloudRemoteStore:(id)store localStore:(id)localStore accountStore:(id)accountStore;
- (id)_changedRecordsForCloudTabDevice:(id)device;
- (id)_nextRecordBatchToSave;
- (id)_recordIDsFromUUIDStrings:(id)strings;
- (void)_beginFetchingTabsInOperationGroup:(id)group;
- (void)_continueDeletingCloseRequestsInOperationGroup:(id)group;
- (void)_continueDeletingDevicesInOperationGroup:(id)group;
- (void)_continueFetchingTabsInOperationGroup:(id)group;
- (void)_continueSavingCloseRequestInOperationGroup:(id)group;
- (void)_continueSavingTabsForCurrentDeviceInOperationGroup:(id)group;
- (void)_deleteCloseRequestRecordsFromCloudKitInOperationGroup:(id)group;
- (void)_deleteDatabaseAndRestartFetchInOperationGroup:(id)group;
- (void)_deleteNextDeviceRecordFromCloudKitInOperationGroup:(id)group;
- (void)_deleteObsoleteTabRecordsFromCloudKitInOperationGroup:(id)group;
- (void)_deleteTabsFromCloudKitForDeviceWithUUIDString:(id)string inOperationGroup:(id)group;
- (void)_didFetchModifiedRecord:(id)record inOperationGroup:(id)group;
- (void)_fetchChangesFromCloudKitCreatingCloudTabsZoneIfMissing:(BOOL)missing inOperationGroup:(id)group;
- (void)_finishedDeletingCloseRequestRecordsInOperationGroup:(id)group;
- (void)_finishedDeletingDeviceRecordsInOperationGroup:(id)group;
- (void)_finishedFetchingInOperationGroup:(id)group;
- (void)_finishedSavingCloseRequestInOperationGroup:(id)group;
- (void)_finishedSavingDeviceInOperationGroup:(id)group;
- (void)_getServerChangeTokenFromSQLiteStoreInOperationGroup:(id)group;
- (void)_getTabRecordIDsForDeviceWithUUIDString:(id)string inOperationGroup:(id)group completionHandler:(id)handler;
- (void)_handleSevereSQLiteErrorWhileFetching:(id)fetching inOperationGroup:(id)group;
- (void)_handleSevereSQLiteErrorWhileMergingExistingDevice:(id)device inOperationGroup:(id)group;
- (void)_loadDevicesAndTabsFromSQLiteStoreInOperationGroup:(id)group;
- (void)_mergeDeviceIntoDeviceFromSQLiteStoreIfNecessaryInOperationGroup:(id)group;
- (void)_removeDeletedRecordsFromSQLiteStoreInOperationGroup:(id)group;
- (void)_resumeFetchingQueue;
- (void)_resumeSavingQueue;
- (void)_retryFetchChangesFromCloudKitIfPossibleAfterCreatingCloudTabsZoneCompletedWithError:(id)error inOperationGroup:(id)group;
- (void)_saveCloseRequestToCloudKitInOperationGroup:(id)group;
- (void)_saveDeviceToCloudKitInOperationGroup:(id)group;
- (void)_saveModifiedRecordsToSQLiteStoreInOperationGroup:(id)group;
- (void)_setServerChangeTokenInSQLiteStoreInOperationGroup:(id)group;
- (void)_suspendFetchingQueue;
- (void)_suspendSavingQueue;
- (void)_updateSQLiteStoreFromCloudKitAfterDeletingCloseRequestRecordsInOperationGroup:(id)group;
- (void)_updateSQLiteStoreFromCloudKitAfterDeletingDeviceRecordsInOperationGroup:(id)group;
- (void)_updateSQLiteStoreFromCloudKitAfterSavingCloseRequestInOperationGroup:(id)group;
- (void)_updateSQLiteStoreFromCloudKitAfterSavingTabsInOperationGroup:(id)group;
- (void)_updateSQLiteStoreFromCloudKitInOperationGroup:(id)group withCompletionHandler:(id)handler;
- (void)cloudTabLocalStore:(id)store hadSevereError:(id)error;
- (void)cloudTabLocalStoreDidOpen:(id)open;
- (void)deleteCloudTabCloseRequestsWithUUIDStrings:(id)strings completionHandler:(id)handler;
- (void)deleteCloudTabsZoneWithCompletionHandler:(id)handler;
- (void)deleteDatabaseWithCompletionHandler:(id)handler;
- (void)deleteDevicesWithUUIDStrings:(id)strings completionHandler:(id)handler;
- (void)fetchDevicesWithCompletionHandler:(id)handler;
- (void)saveCloudTabCloseRequestWithDictionaryRepresentation:(id)representation closeRequestUUIDString:(id)string completionHandler:(id)handler;
- (void)saveTabsForCurrentDeviceWithDictionaryRepresentation:(id)representation deviceUUIDString:(id)string completionHandler:(id)handler;
- (void)tearDown;
- (void)userAccountChanged;
@end

@implementation CloudTabSyncCoordinator

- (void)_suspendFetchingQueue
{
  obj = self->_fetchingQueue;
  objc_sync_enter(obj);
  if (!self->_fetchingQueueSuspended)
  {
    self->_fetchingQueueSuspended = 1;
    dispatch_suspend(self->_fetchingQueue);
  }

  objc_sync_exit(obj);
}

- (BOOL)_canCloseCloudTabStoreDatabase
{
  if (self->_tabSaveState || self->_closeRequestSaveState || self->_deleteDeviceState || self->_deleteCloseRequestState || self->_fetchState)
  {
    return 0;
  }

  else
  {
    return ![(CloudTabSyncCoordinator *)self _isDeletingDatabase:v2];
  }
}

- (void)_resumeFetchingQueue
{
  obj = self->_fetchingQueue;
  objc_sync_enter(obj);
  if (self->_fetchingQueueSuspended)
  {
    self->_fetchingQueueSuspended = 0;
    dispatch_resume(self->_fetchingQueue);
  }

  objc_sync_exit(obj);
}

- (CloudTabSyncCoordinator)initWithCloudRemoteStore:(id)store localStore:(id)localStore accountStore:(id)accountStore
{
  storeCopy = store;
  localStoreCopy = localStore;
  accountStoreCopy = accountStore;
  v20.receiver = self;
  v20.super_class = CloudTabSyncCoordinator;
  v12 = [(CloudTabSyncCoordinator *)&v20 init];
  v13 = v12;
  if (v12)
  {
    v12->_needsDataclassEnabledCheck = 1;
    objc_storeStrong(&v12->_cloudRemoteStore, store);
    objc_storeStrong(&v13->_accountStore, accountStore);
    objc_storeStrong(&v13->_cloudTabStore, localStore);
    [(CloudTabLocalStore *)v13->_cloudTabStore setDelegate:v13];
    v13->_tabSaveState = 0;
    v13->_closeRequestSaveState = 0;
    v13->_deleteDeviceState = 0;
    v13->_deleteCloseRequestState = 0;
    v13->_fetchState = 0;
    v13->_fetchOperationType = 0;
    v14 = dispatch_queue_create("com.apple.Safari.CloudBookmarks.CloudBookmarkStore.tabSavingQueue", 0);
    savingQueue = v13->_savingQueue;
    v13->_savingQueue = v14;

    v16 = dispatch_queue_create("com.apple.Safari.CloudBookmarks.CloudBookmarkStore.tabFetchingQueue", 0);
    fetchingQueue = v13->_fetchingQueue;
    v13->_fetchingQueue = v16;

    v18 = v13;
  }

  return v13;
}

- (void)tearDown
{
  [(CloudTabSyncCoordinator *)self set_isBeingTornDown:1];
  [(CloudTabSyncCoordinator *)self _resumeSavingQueue];

  [(CloudTabSyncCoordinator *)self _resumeFetchingQueue];
}

- (void)deleteDatabaseWithCompletionHandler:(id)handler
{
  handlerCopy = handler;
  v5 = sub_100001B78();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "Deleting the iCloud Tabs database", buf, 2u);
  }

  ++self->_deletingDatabaseCount;
  cloudTabStore = self->_cloudTabStore;
  v8[0] = _NSConcreteStackBlock;
  v8[1] = 3221225472;
  v8[2] = sub_1000995B8;
  v8[3] = &unk_100131990;
  v8[4] = self;
  v9 = handlerCopy;
  v7 = handlerCopy;
  [(CloudTabLocalStore *)cloudTabStore deleteDatabaseWithCompletionHandler:v8];
}

- (void)userAccountChanged
{
  v3 = sub_100001B78();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *v4 = 0;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "User account changed for iCloud Tabs", v4, 2u);
  }

  self->_needsDataclassEnabledCheck = 1;
}

- (BOOL)_isDataclassEnabledInOperationGroup:(id)group
{
  groupCopy = group;
  if (!self->_needsDataclassEnabledCheck)
  {
LABEL_7:
    dataclassEnabled = self->_dataclassEnabled;
    goto LABEL_8;
  }

  self->_needsDataclassEnabledCheck = 0;
  safari_primaryAppleAccount = [(ACAccountStore *)self->_accountStore safari_primaryAppleAccount];
  if (safari_primaryAppleAccount)
  {
    v6 = safari_primaryAppleAccount;
    v7 = [safari_primaryAppleAccount isEnabledForDataclass:kAccountDataclassBookmarks];
    self->_dataclassEnabled = v7;
    if ((v7 & 1) == 0)
    {
      v8 = sub_100001B78();
      if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
      {
        v9 = v8;
        safari_logDescription = [groupCopy safari_logDescription];
        v16 = 138543362;
        v17 = safari_logDescription;
        _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "iCloud Tab syncing not available because Safari's dataclass isn't enabled with %{public}@", &v16, 0xCu);
      }
    }

    goto LABEL_7;
  }

  v13 = sub_100001B78();
  if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
  {
    v14 = v13;
    safari_logDescription2 = [groupCopy safari_logDescription];
    v16 = 138543362;
    v17 = safari_logDescription2;
    _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_DEFAULT, "iCloud Tab syncing not available because user is not signed in with %{public}@", &v16, 0xCu);
  }

  dataclassEnabled = 0;
  self->_dataclassEnabled = 0;
LABEL_8:

  return dataclassEnabled;
}

- (BOOL)_shouldContinueSyncOperationInOperationGroup:(id)group
{
  groupCopy = group;
  if ([(CloudTabSyncCoordinator *)self _isDeletingDatabase]|| ![(CloudTabSyncCoordinator *)self _isDataclassEnabledInOperationGroup:groupCopy])
  {
    LOBYTE(v5) = 0;
  }

  else
  {
    v5 = ![(CloudTabSyncCoordinator *)self _isBeingTornDown];
  }

  return v5;
}

- (BOOL)_shouldDeleteDatabaseForError:(id)error
{
  errorCopy = error;
  v5 = 0;
  if ([errorCopy safari_isInCloudKitErrorDomain])
  {
    code = [errorCopy code];
    if (code <= 0x23 && ((1 << code) & 0x40BDCDFFELL) == 0 && ((1 << code) & 0xBE0032000) == 0 && ((1 << code) & 0x14200000) != 0)
    {
      v5 = 1;
    }
  }

  return v5;
}

- (void)saveTabsForCurrentDeviceWithDictionaryRepresentation:(id)representation deviceUUIDString:(id)string completionHandler:(id)handler
{
  representationCopy = representation;
  stringCopy = string;
  handlerCopy = handler;
  savingQueue = self->_savingQueue;
  v15[0] = _NSConcreteStackBlock;
  v15[1] = 3221225472;
  v15[2] = sub_100099A84;
  v15[3] = &unk_100132EA8;
  v15[4] = self;
  v16 = representationCopy;
  v17 = stringCopy;
  v18 = handlerCopy;
  v12 = stringCopy;
  v13 = representationCopy;
  v14 = handlerCopy;
  dispatch_async(savingQueue, v15);
}

- (void)_suspendSavingQueue
{
  obj = self->_savingQueue;
  objc_sync_enter(obj);
  if (!self->_savingQueueSuspended)
  {
    self->_savingQueueSuspended = 1;
    dispatch_suspend(self->_savingQueue);
  }

  objc_sync_exit(obj);
}

- (void)_resumeSavingQueue
{
  obj = self->_savingQueue;
  objc_sync_enter(obj);
  if (self->_savingQueueSuspended)
  {
    self->_savingQueueSuspended = 0;
    dispatch_resume(self->_savingQueue);
  }

  objc_sync_exit(obj);
}

- (void)_continueSavingTabsForCurrentDeviceInOperationGroup:(id)group
{
  groupCopy = group;
  if (![(CloudTabSyncCoordinator *)self _shouldContinueSyncOperationInOperationGroup:groupCopy])
  {
    v6 = sub_100001B78();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      v7 = v6;
      safari_logDescription = [groupCopy safari_logDescription];
      v9 = 138543362;
      v10 = safari_logDescription;
      _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "Stopping save of tabs for current device with %{public}@", &v9, 0xCu);
    }

    self->_tabSaveState = 5;
LABEL_10:
    [(CloudTabSyncCoordinator *)self _finishedSavingDeviceInOperationGroup:groupCopy];
    goto LABEL_11;
  }

  tabSaveState = self->_tabSaveState;
  self->_tabSaveState = tabSaveState + 1;
  if (tabSaveState > 1)
  {
    if (tabSaveState == 2)
    {
      [(CloudTabSyncCoordinator *)self _deleteObsoleteTabRecordsFromCloudKitInOperationGroup:groupCopy];
      goto LABEL_11;
    }

    if (tabSaveState == 3)
    {
      [(CloudTabSyncCoordinator *)self _updateSQLiteStoreFromCloudKitAfterSavingTabsInOperationGroup:groupCopy];
      goto LABEL_11;
    }

    if (tabSaveState != 4)
    {
      goto LABEL_11;
    }

    goto LABEL_10;
  }

  if (tabSaveState)
  {
    if (tabSaveState == 1)
    {
      [(CloudTabSyncCoordinator *)self _saveDeviceToCloudKitInOperationGroup:groupCopy];
    }
  }

  else
  {
    [(CloudTabSyncCoordinator *)self _mergeDeviceIntoDeviceFromSQLiteStoreIfNecessaryInOperationGroup:groupCopy];
  }

LABEL_11:
}

- (void)_mergeDeviceIntoDeviceFromSQLiteStoreIfNecessaryInOperationGroup:(id)group
{
  groupCopy = group;
  objc_initWeak(&location, self);
  v5 = sub_100001B78();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    safari_logDescription = [groupCopy safari_logDescription];
    *buf = 138543362;
    v14 = safari_logDescription;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "Merging device with existing device in SQLite database, if necessary with %{public}@", buf, 0xCu);
  }

  fetchingQueue = self->_fetchingQueue;
  v9[0] = _NSConcreteStackBlock;
  v9[1] = 3221225472;
  v9[2] = sub_10009A180;
  v9[3] = &unk_100135748;
  v9[4] = self;
  v10 = groupCopy;
  v8 = groupCopy;
  objc_copyWeak(&v11, &location);
  dispatch_async(fetchingQueue, v9);
  objc_destroyWeak(&v11);

  objc_destroyWeak(&location);
}

- (void)_saveDeviceToCloudKitInOperationGroup:(id)group
{
  groupCopy = group;
  v5 = sub_100001B78();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v6 = v5;
    safari_logDescription = [groupCopy safari_logDescription];
    v12 = 138543362;
    v13 = safari_logDescription;
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "Saving device to CloudKit with %{public}@", &v12, 0xCu);
  }

  v8 = [(CloudTabSyncCoordinator *)self _changedRecordsForCloudTabDevice:self->_deviceToSave];
  recordsToSave = self->_recordsToSave;
  self->_recordsToSave = v8;

  ct_green_tea_logger_create_static();
  v10 = getCTGreenTeaOsLogHandle();
  v11 = v10;
  if (v10 && os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
  {
    LOWORD(v12) = 0;
    _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_INFO, "Transmitted Internet Records", &v12, 2u);
  }

  [(CloudTabSyncCoordinator *)self _saveNextRecordBatchCreatingCloudTabsZoneIfMissing:1 inOperationGroup:groupCopy];
}

- (void)_deleteObsoleteTabRecordsFromCloudKitInOperationGroup:(id)group
{
  groupCopy = group;
  objc_initWeak(&location, self);
  v5 = sub_100001B78();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    safari_logDescription = [groupCopy safari_logDescription];
    *buf = 138543362;
    v16 = safari_logDescription;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "Deleting obsolete tab records from CloudKit with %{public}@", buf, 0xCu);
  }

  if ([(NSArray *)self->_uuidStringsOfTabsToDelete count])
  {
    v7 = [(CloudTabSyncCoordinator *)self _recordIDsFromUUIDStrings:self->_uuidStringsOfTabsToDelete];
    cloudRemoteStore = self->_cloudRemoteStore;
    v11[0] = _NSConcreteStackBlock;
    v11[1] = 3221225472;
    v11[2] = sub_10009AE34;
    v11[3] = &unk_100135798;
    objc_copyWeak(&v13, &location);
    v12 = groupCopy;
    [(CloudTabRemoteStore *)cloudRemoteStore deleteCloudTabRecords:v7 inOperationGroup:v12 completionHandler:v11];

    objc_destroyWeak(&v13);
  }

  else
  {
    v9 = sub_100001B78();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      safari_logDescription2 = [groupCopy safari_logDescription];
      *buf = 138543362;
      v16 = safari_logDescription2;
      _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "No obsolete tab records need to be deleted from CloudKit with %{public}@", buf, 0xCu);
    }

    [(CloudTabSyncCoordinator *)self _continueSavingTabsForCurrentDeviceInOperationGroup:groupCopy];
  }

  objc_destroyWeak(&location);
}

- (void)_updateSQLiteStoreFromCloudKitAfterSavingTabsInOperationGroup:(id)group
{
  groupCopy = group;
  objc_initWeak(&location, self);
  v5 = sub_100001B78();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    safari_logDescription = [groupCopy safari_logDescription];
    *buf = 138543362;
    v13 = safari_logDescription;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "Updating SQLite store from CloudKit after saving tabs with %{public}@", buf, 0xCu);
  }

  v8[0] = _NSConcreteStackBlock;
  v8[1] = 3221225472;
  v8[2] = sub_10009B1A8;
  v8[3] = &unk_100135798;
  objc_copyWeak(&v10, &location);
  v7 = groupCopy;
  v9 = v7;
  [(CloudTabSyncCoordinator *)self _updateSQLiteStoreFromCloudKitInOperationGroup:v7 withCompletionHandler:v8];

  objc_destroyWeak(&v10);
  objc_destroyWeak(&location);
}

- (void)_finishedSavingDeviceInOperationGroup:(id)group
{
  groupCopy = group;
  v5 = sub_100001B78();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v6 = v5;
    safari_logDescription = [groupCopy safari_logDescription];
    *buf = 138543362;
    v18 = safari_logDescription;
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "Finished saving tabs for the current device to CloudKit with %{public}@", buf, 0xCu);
  }

  self->_tabSaveState = 0;
  deviceToSave = self->_deviceToSave;
  self->_deviceToSave = 0;

  recordsToSave = self->_recordsToSave;
  self->_recordsToSave = 0;

  unsavedRecordFromLastBatch = self->_unsavedRecordFromLastBatch;
  self->_unsavedRecordFromLastBatch = 0;

  uuidStringsOfTabsToDelete = self->_uuidStringsOfTabsToDelete;
  self->_uuidStringsOfTabsToDelete = 0;

  v16[0] = _NSConcreteStackBlock;
  v16[1] = 3221225472;
  v16[2] = sub_10009B570;
  v16[3] = &unk_100131408;
  v16[4] = self;
  v12 = objc_retainBlock(v16);
  if ([(CloudTabSyncCoordinator *)self _canCloseCloudTabStoreDatabase])
  {
    cloudTabStore = self->_cloudTabStore;
    v14[0] = _NSConcreteStackBlock;
    v14[1] = 3221225472;
    v14[2] = sub_10009B614;
    v14[3] = &unk_100131628;
    v15 = v12;
    [(CloudTabLocalStore *)cloudTabStore closeDatabaseWithCompletionHandler:v14];
  }

  else
  {
    (v12[2])(v12);
  }
}

- (id)_changedRecordsForCloudTabDevice:(id)device
{
  deviceCopy = device;
  v4 = +[NSMutableArray array];
  record = [deviceCopy record];
  safari_hasAtLeastOneChangedField = [record safari_hasAtLeastOneChangedField];

  if (safari_hasAtLeastOneChangedField)
  {
    record2 = [deviceCopy record];
    [v4 addObject:record2];
  }

  v20 = 0u;
  v21 = 0u;
  v18 = 0u;
  v19 = 0u;
  tabs = [deviceCopy tabs];
  v9 = [tabs countByEnumeratingWithState:&v18 objects:v22 count:16];
  if (v9)
  {
    v10 = v9;
    v11 = *v19;
    do
    {
      for (i = 0; i != v10; i = i + 1)
      {
        if (*v19 != v11)
        {
          objc_enumerationMutation(tabs);
        }

        record3 = [*(*(&v18 + 1) + 8 * i) record];
        v14 = record3;
        if ((safari_hasAtLeastOneChangedField & 1) != 0 || ([record3 changedKeys], v15 = objc_claimAutoreleasedReturnValue(), v16 = objc_msgSend(v15, "count"), v15, v16))
        {
          [v4 addObject:v14];
        }
      }

      v10 = [tabs countByEnumeratingWithState:&v18 objects:v22 count:16];
    }

    while (v10);
  }

  return v4;
}

- (id)_recordIDsFromUUIDStrings:(id)strings
{
  stringsCopy = strings;
  v4 = +[NSMutableArray array];
  v5 = +[CloudTabRemoteStore cloudTabsRecordZoneID];
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v6 = stringsCopy;
  v7 = [v6 countByEnumeratingWithState:&v15 objects:v19 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v16;
    do
    {
      for (i = 0; i != v8; i = i + 1)
      {
        if (*v16 != v9)
        {
          objc_enumerationMutation(v6);
        }

        v11 = *(*(&v15 + 1) + 8 * i);
        v12 = [CKRecordID alloc];
        v13 = [v12 initWithRecordName:v11 zoneID:{v5, v15}];
        [v4 addObject:v13];
      }

      v8 = [v6 countByEnumeratingWithState:&v15 objects:v19 count:16];
    }

    while (v8);
  }

  return v4;
}

- (id)_nextRecordBatchToSave
{
  v3 = +[NSMutableArray array];
  firstObject = [(NSMutableArray *)self->_recordsToSave firstObject];
  if (firstObject)
  {
    v5 = firstObject;
    v6 = 0;
    v7 = 100;
    while (1)
    {
      v6 += [v5 size];
      if (v6 >= 0x200000)
      {
        break;
      }

      [(NSMutableArray *)self->_recordsToSave removeObjectAtIndex:0];
      [v3 addObject:v5];
      if (!--v7)
      {
        break;
      }

      firstObject2 = [(NSMutableArray *)self->_recordsToSave firstObject];

      v5 = firstObject2;
      if (!firstObject2)
      {
        goto LABEL_6;
      }
    }

    v10 = v3;
  }

  else
  {
LABEL_6:
    v9 = v3;
  }

  return v3;
}

- (void)_handleSevereSQLiteErrorWhileMergingExistingDevice:(id)device inOperationGroup:(id)group
{
  v5[0] = _NSConcreteStackBlock;
  v5[1] = 3221225472;
  v5[2] = sub_10009BB4C;
  v5[3] = &unk_1001314F8;
  selfCopy = self;
  groupCopy = group;
  v4 = groupCopy;
  [(CloudTabSyncCoordinator *)selfCopy deleteDatabaseWithCompletionHandler:v5];
}

- (void)saveCloudTabCloseRequestWithDictionaryRepresentation:(id)representation closeRequestUUIDString:(id)string completionHandler:(id)handler
{
  representationCopy = representation;
  stringCopy = string;
  handlerCopy = handler;
  savingQueue = self->_savingQueue;
  v15[0] = _NSConcreteStackBlock;
  v15[1] = 3221225472;
  v15[2] = sub_10009BC54;
  v15[3] = &unk_100132EA8;
  v15[4] = self;
  v16 = representationCopy;
  v17 = stringCopy;
  v18 = handlerCopy;
  v12 = stringCopy;
  v13 = representationCopy;
  v14 = handlerCopy;
  dispatch_async(savingQueue, v15);
}

- (void)_continueSavingCloseRequestInOperationGroup:(id)group
{
  groupCopy = group;
  if ([(CloudTabSyncCoordinator *)self _shouldContinueSyncOperationInOperationGroup:groupCopy])
  {
    closeRequestSaveState = self->_closeRequestSaveState + 1;
    self->_closeRequestSaveState = closeRequestSaveState;
  }

  else
  {
    v6 = sub_100001B78();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      v7 = v6;
      safari_logDescription = [groupCopy safari_logDescription];
      v11 = 138543362;
      v12 = safari_logDescription;
      _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "Stopping save of close requests with %{public}@", &v11, 0xCu);
    }

    self->_closeRequestSaveState = 3;
    v9 = [NSError errorWithDomain:WBSCloudTabsErrorDomain code:1 userInfo:0];
    saveCloseRequestError = self->_saveCloseRequestError;
    self->_saveCloseRequestError = v9;

    closeRequestSaveState = self->_closeRequestSaveState;
  }

  switch(closeRequestSaveState)
  {
    case 3:
      [(CloudTabSyncCoordinator *)self _finishedSavingCloseRequestInOperationGroup:groupCopy];
      break;
    case 2:
      [(CloudTabSyncCoordinator *)self _updateSQLiteStoreFromCloudKitAfterSavingCloseRequestInOperationGroup:groupCopy];
      break;
    case 1:
      [(CloudTabSyncCoordinator *)self _saveCloseRequestToCloudKitInOperationGroup:groupCopy];
      break;
  }
}

- (void)_saveCloseRequestToCloudKitInOperationGroup:(id)group
{
  groupCopy = group;
  v5 = sub_100001B78();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v6 = v5;
    safari_logDescription = [groupCopy safari_logDescription];
    *buf = 138543362;
    v17 = safari_logDescription;
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "Saving close request to CloudKit with %{public}@", buf, 0xCu);
  }

  objc_initWeak(buf, self);
  cloudRemoteStore = self->_cloudRemoteStore;
  record = [(CloudTabCloseRequest *)self->_closeRequestToSave record];
  v15 = record;
  v10 = [NSArray arrayWithObjects:&v15 count:1];
  v12[0] = _NSConcreteStackBlock;
  v12[1] = 3221225472;
  v12[2] = sub_10009C2F4;
  v12[3] = &unk_100135770;
  objc_copyWeak(&v14, buf);
  v11 = groupCopy;
  v13 = v11;
  [(CloudTabRemoteStore *)cloudRemoteStore saveCloudTabsRecordBatch:v10 createCloudTabsZoneIfMissing:0 inOperationGroup:v11 completionHandler:v12];

  objc_destroyWeak(&v14);
  objc_destroyWeak(buf);
}

- (void)_updateSQLiteStoreFromCloudKitAfterSavingCloseRequestInOperationGroup:(id)group
{
  groupCopy = group;
  v5 = sub_100001B78();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v6 = v5;
    safari_logDescription = [groupCopy safari_logDescription];
    *buf = 138543362;
    v13 = safari_logDescription;
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "Updating SQLite store from CloudKit after saving close request with %{public}@", buf, 0xCu);
  }

  objc_initWeak(buf, self);
  v9[0] = _NSConcreteStackBlock;
  v9[1] = 3221225472;
  v9[2] = sub_10009C66C;
  v9[3] = &unk_100135798;
  objc_copyWeak(&v11, buf);
  v8 = groupCopy;
  v10 = v8;
  [(CloudTabSyncCoordinator *)self _updateSQLiteStoreFromCloudKitInOperationGroup:v8 withCompletionHandler:v9];

  objc_destroyWeak(&v11);
  objc_destroyWeak(buf);
}

- (void)_finishedSavingCloseRequestInOperationGroup:(id)group
{
  groupCopy = group;
  v5 = sub_100001B78();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v6 = v5;
    safari_logDescription = [groupCopy safari_logDescription];
    *buf = 138543362;
    v15 = safari_logDescription;
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "Finished saving close request to CloudKit with %{public}@", buf, 0xCu);
  }

  self->_closeRequestSaveState = 0;
  closeRequestToSave = self->_closeRequestToSave;
  self->_closeRequestToSave = 0;

  v13[0] = _NSConcreteStackBlock;
  v13[1] = 3221225472;
  v13[2] = sub_10009CA10;
  v13[3] = &unk_100131408;
  v13[4] = self;
  v9 = objc_retainBlock(v13);
  if ([(CloudTabSyncCoordinator *)self _canCloseCloudTabStoreDatabase])
  {
    cloudTabStore = self->_cloudTabStore;
    v11[0] = _NSConcreteStackBlock;
    v11[1] = 3221225472;
    v11[2] = sub_10009CAB4;
    v11[3] = &unk_100131628;
    v12 = v9;
    [(CloudTabLocalStore *)cloudTabStore closeDatabaseWithCompletionHandler:v11];
  }

  else
  {
    (v9[2])(v9);
  }
}

- (void)fetchDevicesWithCompletionHandler:(id)handler
{
  handlerCopy = handler;
  fetchingQueue = self->_fetchingQueue;
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_10009CBE0;
  v7[3] = &unk_100131990;
  v7[4] = self;
  v8 = handlerCopy;
  v6 = handlerCopy;
  dispatch_async(fetchingQueue, v7);
}

- (void)_updateSQLiteStoreFromCloudKitInOperationGroup:(id)group withCompletionHandler:(id)handler
{
  groupCopy = group;
  handlerCopy = handler;
  fetchingQueue = self->_fetchingQueue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_10009CED0;
  block[3] = &unk_100130E50;
  v12 = groupCopy;
  v13 = handlerCopy;
  block[4] = self;
  v9 = groupCopy;
  v10 = handlerCopy;
  dispatch_async(fetchingQueue, block);
}

- (void)_beginFetchingTabsInOperationGroup:(id)group
{
  cloudTabStore = self->_cloudTabStore;
  groupCopy = group;
  [(CloudTabLocalStore *)cloudTabStore openDatabaseIfNecessary];
  [(CloudTabSyncCoordinator *)self _continueFetchingTabsInOperationGroup:groupCopy];
}

- (void)_continueFetchingTabsInOperationGroup:(id)group
{
  groupCopy = group;
  if (self->_fetchError || ![(CloudTabSyncCoordinator *)self _shouldContinueSyncOperationInOperationGroup:groupCopy])
  {
    v6 = sub_100001B78();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      v7 = v6;
      safari_logDescription = [groupCopy safari_logDescription];
      v11 = 138543362;
      v12 = safari_logDescription;
      _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "Stopping fetch of tabs with %{public}@", &v11, 0xCu);
    }

    fetchedDevices = self->_fetchedDevices;
    self->_fetchedDevices = 0;

    fetchedCloseRequests = self->_fetchedCloseRequests;
    self->_fetchedCloseRequests = 0;

    self->_fetchState = 7;
    goto LABEL_10;
  }

  fetchState = self->_fetchState;
  self->_fetchState = fetchState + 1;
  if (fetchState > 2)
  {
    if (fetchState <= 4)
    {
      if (fetchState == 3)
      {
        [(CloudTabSyncCoordinator *)self _saveModifiedRecordsToSQLiteStoreInOperationGroup:groupCopy];
      }

      else
      {
        [(CloudTabSyncCoordinator *)self _setServerChangeTokenInSQLiteStoreInOperationGroup:groupCopy];
      }

      goto LABEL_11;
    }

    if (fetchState == 5)
    {
      [(CloudTabSyncCoordinator *)self _loadDevicesAndTabsFromSQLiteStoreInOperationGroup:groupCopy];
      goto LABEL_11;
    }

    if (fetchState != 6)
    {
      goto LABEL_11;
    }

LABEL_10:
    [(CloudTabSyncCoordinator *)self _finishedFetchingInOperationGroup:groupCopy];
    goto LABEL_11;
  }

  if (fetchState)
  {
    if (fetchState == 1)
    {
      [(CloudTabSyncCoordinator *)self _fetchChangesFromCloudKitCreatingCloudTabsZoneIfMissing:1 inOperationGroup:groupCopy];
    }

    else if (fetchState == 2)
    {
      [(CloudTabSyncCoordinator *)self _removeDeletedRecordsFromSQLiteStoreInOperationGroup:groupCopy];
    }
  }

  else
  {
    [(CloudTabSyncCoordinator *)self _getServerChangeTokenFromSQLiteStoreInOperationGroup:groupCopy];
  }

LABEL_11:
}

- (void)_deleteDatabaseAndRestartFetchInOperationGroup:(id)group
{
  groupCopy = group;
  v5 = sub_100001B78();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v6 = v5;
    safari_logDescription = [groupCopy safari_logDescription];
    *buf = 138543362;
    v13 = safari_logDescription;
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "Deleting database and restarting fetch with %{public}@", buf, 0xCu);
  }

  objc_initWeak(buf, self);
  v9[0] = _NSConcreteStackBlock;
  v9[1] = 3221225472;
  v9[2] = sub_10009D3C0;
  v9[3] = &unk_100132420;
  objc_copyWeak(&v11, buf);
  v8 = groupCopy;
  v10 = v8;
  [(CloudTabSyncCoordinator *)self deleteDatabaseWithCompletionHandler:v9];

  objc_destroyWeak(&v11);
  objc_destroyWeak(buf);
}

- (void)_getServerChangeTokenFromSQLiteStoreInOperationGroup:(id)group
{
  groupCopy = group;
  v5 = sub_100001B78();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v6 = v5;
    safari_logDescription = [groupCopy safari_logDescription];
    *buf = 138543362;
    v14 = safari_logDescription;
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "Reading server change token from SQLite with %{public}@", buf, 0xCu);
  }

  [(CloudTabSyncCoordinator *)self set_cloudTabStoreError:0];
  objc_initWeak(buf, self);
  cloudTabStore = self->_cloudTabStore;
  v10[0] = _NSConcreteStackBlock;
  v10[1] = 3221225472;
  v10[2] = sub_10009D62C;
  v10[3] = &unk_1001357C0;
  objc_copyWeak(&v12, buf);
  v9 = groupCopy;
  v11 = v9;
  [(CloudTabLocalStore *)cloudTabStore getServerChangeTokenDataWithCompletionHandler:v10];

  objc_destroyWeak(&v12);
  objc_destroyWeak(buf);
}

- (void)_fetchChangesFromCloudKitCreatingCloudTabsZoneIfMissing:(BOOL)missing inOperationGroup:(id)group
{
  groupCopy = group;
  objc_initWeak(&location, self);
  v7 = sub_100001B78();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    safari_logDescription = [groupCopy safari_logDescription];
    *buf = 138543362;
    v30 = safari_logDescription;
    _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "Fetching changes from CloudKit with %{public}@", buf, 0xCu);
  }

  v9 = +[NSMutableArray array];
  modifiedDevices = self->_modifiedDevices;
  self->_modifiedDevices = v9;

  v11 = +[NSMutableArray array];
  modifiedTabs = self->_modifiedTabs;
  self->_modifiedTabs = v11;

  v13 = +[NSMutableArray array];
  modifiedCloseRequests = self->_modifiedCloseRequests;
  self->_modifiedCloseRequests = v13;

  v15 = +[NSMutableArray array];
  namesOfDeletedRecords = self->_namesOfDeletedRecords;
  self->_namesOfDeletedRecords = v15;

  cloudRemoteStore = self->_cloudRemoteStore;
  serverChangeToken = self->_serverChangeToken;
  v26[0] = _NSConcreteStackBlock;
  v26[1] = 3221225472;
  v26[2] = sub_10009DE08;
  v26[3] = &unk_100134AC8;
  v26[4] = self;
  v27 = groupCopy;
  v25[0] = _NSConcreteStackBlock;
  v25[1] = 3221225472;
  v25[2] = sub_10009DEC8;
  v25[3] = &unk_100132560;
  v25[4] = self;
  v20[0] = _NSConcreteStackBlock;
  v20[1] = 3221225472;
  v20[2] = sub_10009DFBC;
  v20[3] = &unk_100135810;
  v19 = v27;
  missingCopy = missing;
  v21 = v19;
  selfCopy = self;
  objc_copyWeak(&v23, &location);
  [(CloudTabRemoteStore *)cloudRemoteStore fetchCloudTabsRecordChangesSinceServerChangeToken:serverChangeToken inOperationGroup:v19 recordChangedBlock:v26 recordWithIDWasDeletedBlock:v25 completionHandler:v20];
  objc_destroyWeak(&v23);

  objc_destroyWeak(&location);
}

- (void)_retryFetchChangesFromCloudKitIfPossibleAfterCreatingCloudTabsZoneCompletedWithError:(id)error inOperationGroup:(id)group
{
  errorCopy = error;
  groupCopy = group;
  objc_initWeak(&location, self);
  if (errorCopy)
  {
    v9 = sub_100001B78();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      [errorCopy safari_privacyPreservingDescription];
      objc_claimAutoreleasedReturnValue();
      [groupCopy safari_logDescription];
      objc_claimAutoreleasedReturnValue();
      sub_1000A37C8();
    }

    objc_storeStrong(&self->_fetchError, error);
    v12[0] = _NSConcreteStackBlock;
    v12[1] = 3221225472;
    v12[2] = sub_10009E6B8;
    v12[3] = &unk_100132420;
    objc_copyWeak(&v14, &location);
    v13 = groupCopy;
    [(CloudTabSyncCoordinator *)self deleteDatabaseWithCompletionHandler:v12];

    objc_destroyWeak(&v14);
  }

  else
  {
    v10 = sub_100001B78();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
    {
      safari_logDescription = [groupCopy safari_logDescription];
      *buf = 138543362;
      v17 = safari_logDescription;
      _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "Fetching changes from CloudKit again after creating CloudTabs zone with %{public}@", buf, 0xCu);
    }

    [(CloudTabSyncCoordinator *)self _fetchChangesFromCloudKitCreatingCloudTabsZoneIfMissing:0 inOperationGroup:groupCopy];
  }

  objc_destroyWeak(&location);
}

- (void)_removeDeletedRecordsFromSQLiteStoreInOperationGroup:(id)group
{
  groupCopy = group;
  objc_initWeak(&location, self);
  if ([(NSMutableArray *)self->_namesOfDeletedRecords count])
  {
    v5 = sub_100001B78();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      v6 = [(NSMutableArray *)self->_namesOfDeletedRecords count];
      safari_logDescription = [groupCopy safari_logDescription];
      *buf = 134218242;
      v17 = v6;
      v18 = 2114;
      v19 = safari_logDescription;
      _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "Removing %lu deleted records from SQLite with %{public}@", buf, 0x16u);
    }

    [(CloudTabSyncCoordinator *)self set_cloudTabStoreError:0];
    cloudTabStore = self->_cloudTabStore;
    namesOfDeletedRecords = self->_namesOfDeletedRecords;
    v12[0] = _NSConcreteStackBlock;
    v12[1] = 3221225472;
    v12[2] = sub_10009E960;
    v12[3] = &unk_100135838;
    objc_copyWeak(&v14, &location);
    v13 = groupCopy;
    [(CloudTabLocalStore *)cloudTabStore deleteRecordsWithPrimaryKeys:namesOfDeletedRecords completionHandler:v12];

    objc_destroyWeak(&v14);
  }

  else
  {
    v10 = sub_100001B78();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
    {
      safari_logDescription2 = [groupCopy safari_logDescription];
      *buf = 138543362;
      v17 = safari_logDescription2;
      _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "No records to delete from SQLite with %{public}@", buf, 0xCu);
    }

    [(CloudTabSyncCoordinator *)self _continueFetchingTabsInOperationGroup:groupCopy];
  }

  objc_destroyWeak(&location);
}

- (void)_saveModifiedRecordsToSQLiteStoreInOperationGroup:(id)group
{
  groupCopy = group;
  objc_initWeak(&location, self);
  if ([(NSMutableArray *)self->_modifiedDevices count]|| [(NSMutableArray *)self->_modifiedTabs count]|| [(NSMutableArray *)self->_modifiedCloseRequests count])
  {
    v5 = sub_100001B78();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      v6 = [(NSMutableArray *)self->_modifiedDevices count];
      v7 = [(NSMutableArray *)self->_modifiedTabs count];
      v8 = [(NSMutableArray *)self->_modifiedCloseRequests count];
      safari_logDescription = [groupCopy safari_logDescription];
      *buf = 134218754;
      v21 = v6;
      v22 = 2048;
      v23 = v7;
      v24 = 2048;
      v25 = v8;
      v26 = 2114;
      v27 = safari_logDescription;
      _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "Saving %zu device records, %zu tab records, and %zu close requests to SQLite with %{public}@", buf, 0x2Au);
    }

    [(CloudTabSyncCoordinator *)self set_cloudTabStoreError:0];
    cloudTabStore = self->_cloudTabStore;
    modifiedDevices = self->_modifiedDevices;
    modifiedTabs = self->_modifiedTabs;
    modifiedCloseRequests = self->_modifiedCloseRequests;
    v16[0] = _NSConcreteStackBlock;
    v16[1] = 3221225472;
    v16[2] = sub_10009EDEC;
    v16[3] = &unk_100135838;
    objc_copyWeak(&v18, &location);
    v17 = groupCopy;
    [(CloudTabLocalStore *)cloudTabStore saveCloudTabDevices:modifiedDevices tabs:modifiedTabs closeRequests:modifiedCloseRequests completionHandler:v16];

    objc_destroyWeak(&v18);
  }

  else
  {
    v14 = sub_100001B78();
    if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
    {
      safari_logDescription2 = [groupCopy safari_logDescription];
      *buf = 138543362;
      v21 = safari_logDescription2;
      _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_DEFAULT, "No modified devices, tab records, or close requests to save to SQLite with %{public}@", buf, 0xCu);
    }

    [(CloudTabSyncCoordinator *)self _continueFetchingTabsInOperationGroup:groupCopy];
  }

  objc_destroyWeak(&location);
}

- (void)_setServerChangeTokenInSQLiteStoreInOperationGroup:(id)group
{
  groupCopy = group;
  objc_initWeak(&location, self);
  v5 = sub_100001B78();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    safari_logDescription = [groupCopy safari_logDescription];
    *buf = 138543362;
    v19 = safari_logDescription;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "Saving server change token to SQLite with %{public}@", buf, 0xCu);
  }

  serverChangeToken = self->_serverChangeToken;
  if (serverChangeToken)
  {
    v16 = 0;
    v8 = [NSKeyedArchiver archivedDataWithRootObject:serverChangeToken requiringSecureCoding:1 error:&v16];
    v9 = v16;
    if (v9)
    {
      v10 = sub_1000D22B4();
      if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
      {
        [v9 safari_privacyPreservingDescription];
        objc_claimAutoreleasedReturnValue();
        [groupCopy safari_logDescription];
        objc_claimAutoreleasedReturnValue();
        sub_1000A3A08();
      }
    }
  }

  else
  {
    v8 = 0;
  }

  [(CloudTabSyncCoordinator *)self set_cloudTabStoreError:0];
  cloudTabStore = self->_cloudTabStore;
  v13[0] = _NSConcreteStackBlock;
  v13[1] = 3221225472;
  v13[2] = sub_10009F284;
  v13[3] = &unk_100135838;
  objc_copyWeak(&v15, &location);
  v12 = groupCopy;
  v14 = v12;
  [(CloudTabLocalStore *)cloudTabStore setServerChangeTokenData:v8 completionHandler:v13];

  objc_destroyWeak(&v15);
  objc_destroyWeak(&location);
}

- (void)_loadDevicesAndTabsFromSQLiteStoreInOperationGroup:(id)group
{
  groupCopy = group;
  objc_initWeak(&location, self);
  if (self->_fetchOperationType == 2)
  {
    v5 = sub_100001B78();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      safari_logDescription = [groupCopy safari_logDescription];
      *buf = 138543362;
      v15 = safari_logDescription;
      _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "Skipping loading devices, tabs, and close requests from SQLite with %{public}@", buf, 0xCu);
    }

    [(CloudTabSyncCoordinator *)self _continueFetchingTabsInOperationGroup:groupCopy];
  }

  else
  {
    v7 = sub_100001B78();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      safari_logDescription2 = [groupCopy safari_logDescription];
      *buf = 138543362;
      v15 = safari_logDescription2;
      _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "Loading devices, tabs, and close requests from SQLite with %{public}@", buf, 0xCu);
    }

    [(CloudTabSyncCoordinator *)self set_cloudTabStoreError:0];
    cloudTabStore = self->_cloudTabStore;
    v10[0] = _NSConcreteStackBlock;
    v10[1] = 3221225472;
    v10[2] = sub_10009F6D0;
    v10[3] = &unk_100135888;
    objc_copyWeak(&v12, &location);
    v11 = groupCopy;
    [(CloudTabLocalStore *)cloudTabStore loadCloudTabDataWithCompletionHandler:v10];

    objc_destroyWeak(&v12);
  }

  objc_destroyWeak(&location);
}

- (void)_finishedFetchingInOperationGroup:(id)group
{
  groupCopy = group;
  v5 = sub_100001B78();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v6 = v5;
    safari_logDescription = [groupCopy safari_logDescription];
    *buf = 138543362;
    v23 = safari_logDescription;
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "Finished fetching iCloud Tab data from CloudKit with %{public}@", buf, 0xCu);
  }

  self->_fetchState = 0;
  self->_isRefetchingAfterDeletingDatabase = 0;
  serverChangeToken = self->_serverChangeToken;
  self->_serverChangeToken = 0;

  modifiedDevices = self->_modifiedDevices;
  self->_modifiedDevices = 0;

  modifiedTabs = self->_modifiedTabs;
  self->_modifiedTabs = 0;

  modifiedCloseRequests = self->_modifiedCloseRequests;
  self->_modifiedCloseRequests = 0;

  namesOfDeletedRecords = self->_namesOfDeletedRecords;
  self->_namesOfDeletedRecords = 0;

  v13 = self->_fetchError;
  fetchError = self->_fetchError;
  self->_fetchError = 0;

  v20[0] = _NSConcreteStackBlock;
  v20[1] = 3221225472;
  v20[2] = sub_10009FB30;
  v20[3] = &unk_1001314F8;
  v20[4] = self;
  v15 = v13;
  v21 = v15;
  v16 = objc_retainBlock(v20);
  if ([(CloudTabSyncCoordinator *)self _canCloseCloudTabStoreDatabase])
  {
    cloudTabStore = self->_cloudTabStore;
    v18[0] = _NSConcreteStackBlock;
    v18[1] = 3221225472;
    v18[2] = sub_10009FC50;
    v18[3] = &unk_100131628;
    v19 = v16;
    [(CloudTabLocalStore *)cloudTabStore closeDatabaseWithCompletionHandler:v18];
  }

  else
  {
    (v16[2])(v16);
  }
}

- (void)_didFetchModifiedRecord:(id)record inOperationGroup:(id)group
{
  recordCopy = record;
  groupCopy = group;
  if ([recordCopy safari_isCloudTabDeviceRecord])
  {
    v8 = [CloudTabDevice cloudTabDeviceWithCKRecord:recordCopy isManateeContainer:[(CloudTabRemoteStore *)self->_cloudRemoteStore usesManateeContainer]];
    if (!v8)
    {
      v10 = sub_100001B78();
      if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
      {
        sub_1000A3E20(v10);
      }

      goto LABEL_19;
    }

    modifiedDevices = self->_modifiedDevices;
LABEL_10:
    [(NSMutableArray *)modifiedDevices addObject:v8];
LABEL_19:

    goto LABEL_20;
  }

  if ([recordCopy safari_isCloudTabRecord])
  {
    v8 = [CloudTab cloudTabWithCKRecord:recordCopy isManateeContainer:[(CloudTabRemoteStore *)self->_cloudRemoteStore usesManateeContainer]];
    if (!v8)
    {
      v12 = sub_100001B78();
      if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
      {
        sub_1000A3D88(v12);
      }

      goto LABEL_19;
    }

    modifiedDevices = self->_modifiedTabs;
    goto LABEL_10;
  }

  if ([recordCopy safari_isCloudTabCloseRequestRecord])
  {
    v8 = [CloudTabCloseRequest cloudTabCloseRequestWithCKRecord:recordCopy];
    if (!v8)
    {
      v13 = sub_100001B78();
      if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
      {
        sub_1000A3CF0(v13);
      }

      goto LABEL_19;
    }

    modifiedDevices = self->_modifiedCloseRequests;
    goto LABEL_10;
  }

  v11 = sub_100001B78();
  if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
  {
    sub_1000A3C48();
  }

LABEL_20:
}

- (void)_handleSevereSQLiteErrorWhileFetching:(id)fetching inOperationGroup:(id)group
{
  fetchingCopy = fetching;
  if (self->_isRefetchingAfterDeletingDatabase)
  {
    objc_storeStrong(&self->_fetchError, fetching);
    [(CloudTabSyncCoordinator *)self _continueFetchingTabsInOperationGroup:group];
  }

  else
  {
    [(CloudTabSyncCoordinator *)self _deleteDatabaseAndRestartFetchInOperationGroup:group];
  }
}

- (void)deleteDevicesWithUUIDStrings:(id)strings completionHandler:(id)handler
{
  stringsCopy = strings;
  handlerCopy = handler;
  v8 = [(CloudRemoteStore *)self->_cloudRemoteStore createOperationGroupWithName:@"Cloud Tab Devices Deleting" qualityOfService:-1 xpcActivity:0];
  v9 = sub_100001B78();
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
  {
    v10 = v9;
    safari_logDescription = [v8 safari_logDescription];
    *buf = 138543362;
    v21 = safari_logDescription;
    _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "Deleting devices from CloudKit with %{public}@", buf, 0xCu);
  }

  if ([stringsCopy count])
  {
    savingQueue = self->_savingQueue;
    v16[0] = _NSConcreteStackBlock;
    v16[1] = 3221225472;
    v16[2] = sub_1000A0128;
    v16[3] = &unk_100132EA8;
    v16[4] = self;
    v19 = handlerCopy;
    v17 = stringsCopy;
    v18 = v8;
    dispatch_async(savingQueue, v16);
  }

  else
  {
    v13 = sub_100001B78();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
    {
      v14 = v13;
      safari_logDescription2 = [v8 safari_logDescription];
      *buf = 138543362;
      v21 = safari_logDescription2;
      _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_DEFAULT, "No devices to delete with %{public}@", buf, 0xCu);
    }

    (*(handlerCopy + 2))(handlerCopy, 0);
  }
}

- (void)_continueDeletingDevicesInOperationGroup:(id)group
{
  groupCopy = group;
  if ([(CloudTabSyncCoordinator *)self _shouldContinueSyncOperationInOperationGroup:groupCopy])
  {
    deleteDeviceState = self->_deleteDeviceState + 1;
    self->_deleteDeviceState = deleteDeviceState;
  }

  else
  {
    v6 = sub_100001B78();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      v7 = v6;
      safari_logDescription = [groupCopy safari_logDescription];
      v11 = 138543362;
      v12 = safari_logDescription;
      _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "Stopping deletion of device records with %{public}@", &v11, 0xCu);
    }

    self->_deleteDeviceState = 3;
    v9 = [NSError errorWithDomain:WBSCloudTabsErrorDomain code:1 userInfo:0];
    deleteDeviceError = self->_deleteDeviceError;
    self->_deleteDeviceError = v9;

    deleteDeviceState = self->_deleteDeviceState;
  }

  switch(deleteDeviceState)
  {
    case 3:
      [(CloudTabSyncCoordinator *)self _finishedDeletingDeviceRecordsInOperationGroup:groupCopy];
      break;
    case 2:
      [(CloudTabSyncCoordinator *)self _updateSQLiteStoreFromCloudKitAfterDeletingDeviceRecordsInOperationGroup:groupCopy];
      break;
    case 1:
      [(CloudTabSyncCoordinator *)self _deleteNextDeviceRecordFromCloudKitInOperationGroup:groupCopy];
      break;
  }
}

- (void)_deleteNextDeviceRecordFromCloudKitInOperationGroup:(id)group
{
  groupCopy = group;
  objc_initWeak(&location, self);
  indexOfDeviceBeingDeleted = self->_indexOfDeviceBeingDeleted;
  if (indexOfDeviceBeingDeleted == [(NSArray *)self->_deviceUUIDStringsToDelete count])
  {
    v6 = sub_100001B78();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      safari_logDescription = [groupCopy safari_logDescription];
      *buf = 138543362;
      v23 = safari_logDescription;
      _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "Finished deleting device records from CloudKit with %{public}@", buf, 0xCu);
    }

    [(CloudTabSyncCoordinator *)self _continueDeletingDevicesInOperationGroup:groupCopy];
  }

  else
  {
    v8 = sub_100001B78();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      safari_logDescription2 = [groupCopy safari_logDescription];
      *buf = 138543362;
      v23 = safari_logDescription2;
      _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "Deleting next device record from CloudKit with %{public}@", buf, 0xCu);
    }

    deviceUUIDStringsToDelete = self->_deviceUUIDStringsToDelete;
    ++self->_indexOfDeviceBeingDeleted;
    v11 = [(NSArray *)deviceUUIDStringsToDelete objectAtIndexedSubscript:?];
    v21 = v11;
    v12 = [NSArray arrayWithObjects:&v21 count:1];
    v13 = [(CloudTabSyncCoordinator *)self _recordIDsFromUUIDStrings:v12];

    cloudRemoteStore = self->_cloudRemoteStore;
    v16[0] = _NSConcreteStackBlock;
    v16[1] = 3221225472;
    v16[2] = sub_1000A06CC;
    v16[3] = &unk_1001349B8;
    objc_copyWeak(&v19, &location);
    v17 = groupCopy;
    v15 = v11;
    v18 = v15;
    [(CloudTabRemoteStore *)cloudRemoteStore deleteCloudTabRecords:v13 inOperationGroup:v17 completionHandler:v16];

    objc_destroyWeak(&v19);
  }

  objc_destroyWeak(&location);
}

- (void)_getTabRecordIDsForDeviceWithUUIDString:(id)string inOperationGroup:(id)group completionHandler:(id)handler
{
  stringCopy = string;
  groupCopy = group;
  handlerCopy = handler;
  objc_initWeak(&location, self);
  [(CloudTabSyncCoordinator *)self set_cloudTabStoreError:0];
  cloudTabStore = self->_cloudTabStore;
  v14[0] = _NSConcreteStackBlock;
  v14[1] = 3221225472;
  v14[2] = sub_1000A0A50;
  v14[3] = &unk_100135900;
  objc_copyWeak(&v17, &location);
  v12 = groupCopy;
  v15 = v12;
  v13 = handlerCopy;
  v16 = v13;
  [(CloudTabLocalStore *)cloudTabStore loadCloudTabDeviceWithUUIDString:stringCopy completionHandler:v14];

  objc_destroyWeak(&v17);
  objc_destroyWeak(&location);
}

- (void)_deleteTabsFromCloudKitForDeviceWithUUIDString:(id)string inOperationGroup:(id)group
{
  stringCopy = string;
  groupCopy = group;
  objc_initWeak(&location, self);
  v9[0] = _NSConcreteStackBlock;
  v9[1] = 3221225472;
  v9[2] = sub_1000A0E14;
  v9[3] = &unk_100135928;
  objc_copyWeak(&v11, &location);
  v8 = groupCopy;
  v10 = v8;
  [(CloudTabSyncCoordinator *)self _getTabRecordIDsForDeviceWithUUIDString:stringCopy inOperationGroup:v8 completionHandler:v9];

  objc_destroyWeak(&v11);
  objc_destroyWeak(&location);
}

- (void)_updateSQLiteStoreFromCloudKitAfterDeletingDeviceRecordsInOperationGroup:(id)group
{
  groupCopy = group;
  objc_initWeak(&location, self);
  v5 = sub_100001B78();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    safari_logDescription = [groupCopy safari_logDescription];
    *buf = 138543362;
    v13 = safari_logDescription;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "Updating SQLite store from CloudKit after deleting device records with %{public}@", buf, 0xCu);
  }

  v8[0] = _NSConcreteStackBlock;
  v8[1] = 3221225472;
  v8[2] = sub_1000A1450;
  v8[3] = &unk_100135798;
  objc_copyWeak(&v10, &location);
  v7 = groupCopy;
  v9 = v7;
  [(CloudTabSyncCoordinator *)self _updateSQLiteStoreFromCloudKitInOperationGroup:v7 withCompletionHandler:v8];

  objc_destroyWeak(&v10);
  objc_destroyWeak(&location);
}

- (void)_finishedDeletingDeviceRecordsInOperationGroup:(id)group
{
  groupCopy = group;
  v5 = sub_100001B78();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v6 = v5;
    safari_logDescription = [groupCopy safari_logDescription];
    *buf = 138543362;
    v15 = safari_logDescription;
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "Finished deleting device records from CloudKit with %{public}@", buf, 0xCu);
  }

  self->_deleteDeviceState = 0;
  deviceUUIDStringsToDelete = self->_deviceUUIDStringsToDelete;
  self->_deviceUUIDStringsToDelete = 0;

  self->_indexOfDeviceBeingDeleted = 0;
  v13[0] = _NSConcreteStackBlock;
  v13[1] = 3221225472;
  v13[2] = sub_1000A17F8;
  v13[3] = &unk_100131408;
  v13[4] = self;
  v9 = objc_retainBlock(v13);
  if ([(CloudTabSyncCoordinator *)self _canCloseCloudTabStoreDatabase])
  {
    cloudTabStore = self->_cloudTabStore;
    v11[0] = _NSConcreteStackBlock;
    v11[1] = 3221225472;
    v11[2] = sub_1000A189C;
    v11[3] = &unk_100131628;
    v12 = v9;
    [(CloudTabLocalStore *)cloudTabStore closeDatabaseWithCompletionHandler:v11];
  }

  else
  {
    (v9[2])(v9);
  }
}

- (void)deleteCloudTabCloseRequestsWithUUIDStrings:(id)strings completionHandler:(id)handler
{
  stringsCopy = strings;
  handlerCopy = handler;
  v8 = [(CloudRemoteStore *)self->_cloudRemoteStore createOperationGroupWithName:@"Cloud Tab Close Requests Deleting" qualityOfService:-1 xpcActivity:0];
  v9 = sub_100001B78();
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
  {
    v10 = v9;
    safari_logDescription = [v8 safari_logDescription];
    *buf = 138543362;
    v21 = safari_logDescription;
    _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "Deleting close requests from CloudKit with %{public}@", buf, 0xCu);
  }

  if ([stringsCopy count])
  {
    savingQueue = self->_savingQueue;
    v16[0] = _NSConcreteStackBlock;
    v16[1] = 3221225472;
    v16[2] = sub_1000A1B50;
    v16[3] = &unk_100132EA8;
    v16[4] = self;
    v19 = handlerCopy;
    v17 = stringsCopy;
    v18 = v8;
    dispatch_async(savingQueue, v16);
  }

  else
  {
    v13 = sub_100001B78();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
    {
      v14 = v13;
      safari_logDescription2 = [v8 safari_logDescription];
      *buf = 138543362;
      v21 = safari_logDescription2;
      _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_DEFAULT, "No close requests to delete with %{public}@", buf, 0xCu);
    }

    (*(handlerCopy + 2))(handlerCopy, 0);
  }
}

- (void)_continueDeletingCloseRequestsInOperationGroup:(id)group
{
  groupCopy = group;
  if ([(CloudTabSyncCoordinator *)self _shouldContinueSyncOperationInOperationGroup:groupCopy])
  {
    deleteCloseRequestState = self->_deleteCloseRequestState + 1;
    self->_deleteCloseRequestState = deleteCloseRequestState;
  }

  else
  {
    v6 = sub_100001B78();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      v7 = v6;
      safari_logDescription = [groupCopy safari_logDescription];
      v11 = 138543362;
      v12 = safari_logDescription;
      _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "Stopping deletion of close request records with %{public}@", &v11, 0xCu);
    }

    self->_deleteCloseRequestState = 3;
    v9 = [NSError errorWithDomain:WBSCloudTabsErrorDomain code:1 userInfo:0];
    deleteCloseRequestError = self->_deleteCloseRequestError;
    self->_deleteCloseRequestError = v9;

    deleteCloseRequestState = self->_deleteCloseRequestState;
  }

  switch(deleteCloseRequestState)
  {
    case 3:
      [(CloudTabSyncCoordinator *)self _finishedDeletingCloseRequestRecordsInOperationGroup:groupCopy];
      break;
    case 2:
      [(CloudTabSyncCoordinator *)self _updateSQLiteStoreFromCloudKitAfterDeletingCloseRequestRecordsInOperationGroup:groupCopy];
      break;
    case 1:
      [(CloudTabSyncCoordinator *)self _deleteCloseRequestRecordsFromCloudKitInOperationGroup:groupCopy];
      break;
  }
}

- (void)_deleteCloseRequestRecordsFromCloudKitInOperationGroup:(id)group
{
  groupCopy = group;
  objc_initWeak(&location, self);
  v5 = sub_100001B78();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    safari_logDescription = [groupCopy safari_logDescription];
    *buf = 138543362;
    v15 = safari_logDescription;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "Deleting close request records from CloudKit with %{public}@", buf, 0xCu);
  }

  cloudRemoteStore = self->_cloudRemoteStore;
  recordIDsOfCloseRequestsToDelete = self->_recordIDsOfCloseRequestsToDelete;
  v10[0] = _NSConcreteStackBlock;
  v10[1] = 3221225472;
  v10[2] = sub_1000A1FF0;
  v10[3] = &unk_100135798;
  objc_copyWeak(&v12, &location);
  v9 = groupCopy;
  v11 = v9;
  [(CloudTabRemoteStore *)cloudRemoteStore deleteCloudTabRecords:recordIDsOfCloseRequestsToDelete inOperationGroup:v9 completionHandler:v10];

  objc_destroyWeak(&v12);
  objc_destroyWeak(&location);
}

- (void)_updateSQLiteStoreFromCloudKitAfterDeletingCloseRequestRecordsInOperationGroup:(id)group
{
  groupCopy = group;
  objc_initWeak(&location, self);
  v5 = sub_100001B78();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    safari_logDescription = [groupCopy safari_logDescription];
    *buf = 138543362;
    v13 = safari_logDescription;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "Updating SQLite store from CloudKit after deleting close request records with %{public}@", buf, 0xCu);
  }

  v8[0] = _NSConcreteStackBlock;
  v8[1] = 3221225472;
  v8[2] = sub_1000A2374;
  v8[3] = &unk_100135798;
  objc_copyWeak(&v10, &location);
  v7 = groupCopy;
  v9 = v7;
  [(CloudTabSyncCoordinator *)self _updateSQLiteStoreFromCloudKitInOperationGroup:v7 withCompletionHandler:v8];

  objc_destroyWeak(&v10);
  objc_destroyWeak(&location);
}

- (void)_finishedDeletingCloseRequestRecordsInOperationGroup:(id)group
{
  groupCopy = group;
  v5 = sub_100001B78();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v6 = v5;
    safari_logDescription = [groupCopy safari_logDescription];
    *buf = 138543362;
    v15 = safari_logDescription;
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "Finished deleting close request records from CloudKit with %{public}@", buf, 0xCu);
  }

  self->_deleteCloseRequestState = 0;
  recordIDsOfCloseRequestsToDelete = self->_recordIDsOfCloseRequestsToDelete;
  self->_recordIDsOfCloseRequestsToDelete = 0;

  v13[0] = _NSConcreteStackBlock;
  v13[1] = 3221225472;
  v13[2] = sub_1000A2718;
  v13[3] = &unk_100131408;
  v13[4] = self;
  v9 = objc_retainBlock(v13);
  if ([(CloudTabSyncCoordinator *)self _canCloseCloudTabStoreDatabase])
  {
    cloudTabStore = self->_cloudTabStore;
    v11[0] = _NSConcreteStackBlock;
    v11[1] = 3221225472;
    v11[2] = sub_1000A27BC;
    v11[3] = &unk_100131628;
    v12 = v9;
    [(CloudTabLocalStore *)cloudTabStore closeDatabaseWithCompletionHandler:v11];
  }

  else
  {
    (v9[2])(v9);
  }
}

- (void)deleteCloudTabsZoneWithCompletionHandler:(id)handler
{
  handlerCopy = handler;
  objc_initWeak(&location, self);
  v5 = [(CloudRemoteStore *)self->_cloudRemoteStore createOperationGroupWithName:@"Cloud Tab Zone Deleting" qualityOfService:-1 xpcActivity:0];
  v6 = sub_100001B78();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    safari_logDescription = [v5 safari_logDescription];
    *buf = 138543362;
    v17 = safari_logDescription;
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "Sync coordinator received a message to delete the CloudTabs zone with %{public}@", buf, 0xCu);
  }

  savingQueue = self->_savingQueue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1000A2A10;
  block[3] = &unk_100135978;
  v12 = v5;
  v13 = handlerCopy;
  block[4] = self;
  v9 = v5;
  v10 = handlerCopy;
  objc_copyWeak(&v14, &location);
  dispatch_async(savingQueue, block);
  objc_destroyWeak(&v14);

  objc_destroyWeak(&location);
}

- (void)cloudTabLocalStore:(id)store hadSevereError:(id)error
{
  errorCopy = error;
  v6 = sub_100001B78();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
  {
    sub_1000A435C(v6);
  }

  [(CloudTabSyncCoordinator *)self set_cloudTabStoreError:errorCopy];
}

- (void)cloudTabLocalStoreDidOpen:(id)open
{
  cloudTabStore = self->_cloudTabStore;
  usesManateeContainer = [(CloudTabRemoteStore *)self->_cloudRemoteStore usesManateeContainer];

  [(CloudTabLocalStore *)cloudTabStore setUseManateeContainerForSyncing:usesManateeContainer completionHandler:&stru_1001359B8];
}

@end