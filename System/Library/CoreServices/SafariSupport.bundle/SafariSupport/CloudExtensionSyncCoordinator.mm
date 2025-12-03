@interface CloudExtensionSyncCoordinator
+ (id)_createOperationGroupWithName:(id)name;
- (BOOL)_canCloseCloudExtensionStoreDatabase;
- (BOOL)_isDataclassEnabled;
- (BOOL)_shouldContinueSyncOperation;
- (BOOL)_shouldDeleteDatabaseForError:(id)error;
- (CloudExtensionSyncCoordinator)initWithAccountStore:(id)store cloudExtensionStore:(id)extensionStore cloudExtensionSQLiteStore:(id)liteStore;
- (id)_changedRecordsForCloudExtensionDevice:(id)device;
- (id)_cloudExtensionDevicesDictionaryFromCloudExtensionDevices:(id)devices;
- (id)_cloudExtensionStatesDictionaryFromCloudExtensionDevices:(id)devices;
- (id)_nextRecordBatchToSave;
- (id)_recordIDsFromRecordNames:(id)names;
- (void)_beginFetchingExtensionStates;
- (void)_continueDeleting;
- (void)_continueFetchingExtensionStates;
- (void)_continueSavingExtensionStates;
- (void)_deleteDatabaseAndRestartFetch;
- (void)_deleteObsoleteExtensionStateRecordsFromCloudKit;
- (void)_deleteRecordsFromCloudKit;
- (void)_didFetchModifiedRecord:(id)record;
- (void)_fetchChangesFromCloudKitCreatingCloudExtensionsZoneIfMissing:(BOOL)missing;
- (void)_finishedDeletingRecords;
- (void)_finishedFetching;
- (void)_finishedSavingExtensionStates;
- (void)_getServerChangeTokenFromSQLiteStore;
- (void)_handleSevereSQLiteErrorWhileFetching:(id)fetching;
- (void)_handleSevereSQLiteErrorWhileMergingExistingDevice:(id)device;
- (void)_loadDevicesAndStatesFromSQLiteStore;
- (void)_mergeDeviceIntoDeviceFromSQLiteStoreIfNecessary;
- (void)_removeDeletedRecordsFromSQLiteStore;
- (void)_resumeFetchingQueue;
- (void)_resumeSavingQueue;
- (void)_retryFetchChangesFromCloudKitIfPossibleAfterCreatingCloudExtensionsZoneCompletedWithError:(id)error;
- (void)_saveCloudExtensionDevice:(id)device shouldUpdateExtensionStatesWhenSavingDevice:(BOOL)savingDevice completionHandler:(id)handler;
- (void)_saveDeviceToCloudKit;
- (void)_saveModifiedRecordsToSQLiteStore;
- (void)_setServerChangeTokenInSQLiteStore;
- (void)_suspendFetchingQueue;
- (void)_suspendSavingQueue;
- (void)_updateSQLiteStoreFromCloudKitAfterDeletingRecords;
- (void)_updateSQLiteStoreFromCloudKitAfterSavingExtensionState;
- (void)_updateSQLiteStoreFromCloudKitInOperationGroup:(id)group withCompletionHandler:(id)handler;
- (void)cloudExtensionSQLiteStoreStore:(id)store hadSevereError:(id)error;
- (void)deleteCloudExtensionDevicesWithUUIDStrings:(id)strings completionHandler:(id)handler;
- (void)deleteDatabaseWithCompletionHandler:(id)handler;
- (void)getCloudExtensionStatesWithCompletionHandler:(id)handler;
- (void)saveExtensionDeviceWithDictionaryRepresentation:(id)representation completionHandler:(id)handler;
- (void)saveExtensionStatesWithDictionaryRepresentation:(id)representation forDevice:(id)device completionHandler:(id)handler;
- (void)userAccountChanged;
@end

@implementation CloudExtensionSyncCoordinator

- (CloudExtensionSyncCoordinator)initWithAccountStore:(id)store cloudExtensionStore:(id)extensionStore cloudExtensionSQLiteStore:(id)liteStore
{
  storeCopy = store;
  extensionStoreCopy = extensionStore;
  liteStoreCopy = liteStore;
  v33.receiver = self;
  v33.super_class = CloudExtensionSyncCoordinator;
  v12 = [(CloudExtensionSyncCoordinator *)&v33 init];
  v13 = v12;
  if (v12)
  {
    objc_storeStrong(&v12->_accountStore, store);
    objc_storeStrong(&v13->_cloudExtensionStore, extensionStore);
    if (liteStoreCopy)
    {
      v14 = liteStoreCopy;
      cloudExtensionLocalStore = v13->_cloudExtensionLocalStore;
      v13->_cloudExtensionLocalStore = v14;
    }

    else
    {
      if (qword_100153E80 != -1)
      {
        sub_10002BCD4();
      }

      cloudExtensionLocalStore = qword_100153E78;
      if (!cloudExtensionLocalStore)
      {
        v16 = sub_1000D23FC();
        if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
        {
          sub_10002BCFC();
        }

        cloudExtensionLocalStore = +[WBSSQLiteDatabase inMemoryDatabaseURL];
      }

      v17 = [CloudExtensionSQLiteStore alloc];
      v18 = +[CloudExtensionStore cloudExtensionsRecordZoneID];
      v19 = [(CloudExtensionSQLiteStore *)v17 initWithDatabaseURL:cloudExtensionLocalStore cloudExtensionsRecordZoneID:v18];
      v20 = v13->_cloudExtensionLocalStore;
      v13->_cloudExtensionLocalStore = v19;
    }

    [(CloudExtensionSQLiteStore *)v13->_cloudExtensionLocalStore setDelegate:v13];
    v13->_needsDataclassEnabledCheck = 1;
    v13->_saveState = 0;
    v13->_deleteState = 0;
    v13->_fetchState = 0;
    v13->_fetchOperationType = 0;
    v21 = dispatch_queue_create("ccom.apple.Safari.CloudBookmarks.CloudExtensionSyncCoordinator.extensionStateSavingQueue", 0);
    savingQueue = v13->_savingQueue;
    v13->_savingQueue = v21;

    v23 = dispatch_queue_create("com.apple.Safari.CloudBookmarks.CloudExtensionSyncCoordinator.extensionStateFetchingQueue", 0);
    fetchingQueue = v13->_fetchingQueue;
    v13->_fetchingQueue = v23;

    v25 = [objc_opt_class() _createOperationGroupWithName:@"Cloud Extension State Saving"];
    saveExtensionStateOperationGroup = v13->_saveExtensionStateOperationGroup;
    v13->_saveExtensionStateOperationGroup = v25;

    v27 = [objc_opt_class() _createOperationGroupWithName:@"Cloud Extension Device Deleting"];
    deleteDevicesOperationGroup = v13->_deleteDevicesOperationGroup;
    v13->_deleteDevicesOperationGroup = v27;

    v29 = [objc_opt_class() _createOperationGroupWithName:@"Cloud Extension State Fetching"];
    fetchExtensionStatesOperationGroup = v13->_fetchExtensionStatesOperationGroup;
    v13->_fetchExtensionStatesOperationGroup = v29;

    v31 = v13;
  }

  return v13;
}

- (void)userAccountChanged
{
  v3 = sub_1000D23FC();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *v4 = 0;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "User account changed for extension syncing", v4, 2u);
  }

  self->_needsDataclassEnabledCheck = 1;
}

- (void)deleteDatabaseWithCompletionHandler:(id)handler
{
  handlerCopy = handler;
  v5 = sub_1000D23FC();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "Deleting the CloudExtensions database", buf, 2u);
  }

  cloudExtensionLocalStore = self->_cloudExtensionLocalStore;
  ++self->_deletingDatabaseCount;
  v8[0] = _NSConcreteStackBlock;
  v8[1] = 3221225472;
  v8[2] = sub_100026048;
  v8[3] = &unk_100131990;
  v8[4] = self;
  v9 = handlerCopy;
  v7 = handlerCopy;
  [(CloudKitSQLiteStore *)cloudExtensionLocalStore deleteDatabaseWithCompletionHandler:v8];
}

- (void)saveExtensionStatesWithDictionaryRepresentation:(id)representation forDevice:(id)device completionHandler:(id)handler
{
  representationCopy = representation;
  deviceCopy = device;
  handlerCopy = handler;
  savingQueue = self->_savingQueue;
  v15[0] = _NSConcreteStackBlock;
  v15[1] = 3221225472;
  v15[2] = sub_1000261D4;
  v15[3] = &unk_1001315B0;
  v16 = deviceCopy;
  v17 = representationCopy;
  selfCopy = self;
  v19 = handlerCopy;
  v12 = handlerCopy;
  v13 = representationCopy;
  v14 = deviceCopy;
  dispatch_async(savingQueue, v15);
}

- (void)saveExtensionDeviceWithDictionaryRepresentation:(id)representation completionHandler:(id)handler
{
  representationCopy = representation;
  handlerCopy = handler;
  savingQueue = self->_savingQueue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1000263E4;
  block[3] = &unk_100130E50;
  selfCopy = self;
  v14 = handlerCopy;
  v12 = representationCopy;
  v9 = handlerCopy;
  v10 = representationCopy;
  dispatch_async(savingQueue, block);
}

- (void)_saveCloudExtensionDevice:(id)device shouldUpdateExtensionStatesWhenSavingDevice:(BOOL)savingDevice completionHandler:(id)handler
{
  deviceCopy = device;
  handlerCopy = handler;
  [(CloudExtensionSyncCoordinator *)self _suspendSavingQueue];
  v12[0] = _NSConcreteStackBlock;
  v12[1] = 3221225472;
  v12[2] = sub_1000265C0;
  v12[3] = &unk_1001323F8;
  v12[4] = self;
  v13 = deviceCopy;
  savingDeviceCopy = savingDevice;
  v14 = handlerCopy;
  v10 = handlerCopy;
  v11 = deviceCopy;
  dispatch_async(&_dispatch_main_q, v12);
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

- (void)_continueSavingExtensionStates
{
  if (![(CloudExtensionSyncCoordinator *)self _shouldContinueSyncOperation])
  {
    v4 = sub_1000D23FC();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      *v5 = 0;
      _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "Stopping save of extension state for current device", v5, 2u);
    }

    self->_saveState = 5;
LABEL_10:
    [(CloudExtensionSyncCoordinator *)self _finishedSavingExtensionStates];
    return;
  }

  saveState = self->_saveState;
  self->_saveState = saveState + 1;
  if (saveState <= 1)
  {
    if (saveState)
    {
      if (saveState == 1)
      {

        [(CloudExtensionSyncCoordinator *)self _saveDeviceToCloudKit];
      }
    }

    else
    {

      [(CloudExtensionSyncCoordinator *)self _mergeDeviceIntoDeviceFromSQLiteStoreIfNecessary];
    }
  }

  else
  {
    switch(saveState)
    {
      case 2:

        [(CloudExtensionSyncCoordinator *)self _deleteObsoleteExtensionStateRecordsFromCloudKit];
        break;
      case 3:

        [(CloudExtensionSyncCoordinator *)self _updateSQLiteStoreFromCloudKitAfterSavingExtensionState];
        break;
      case 4:
        goto LABEL_10;
      default:
        return;
    }
  }
}

- (void)_mergeDeviceIntoDeviceFromSQLiteStoreIfNecessary
{
  v3 = sub_1000D23FC();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_INFO))
  {
    LOWORD(buf[0]) = 0;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_INFO, "Merging device with existing device in SQLite database, if necessary", buf, 2u);
  }

  objc_initWeak(buf, self);
  fetchingQueue = self->_fetchingQueue;
  v5[0] = _NSConcreteStackBlock;
  v5[1] = 3221225472;
  v5[2] = sub_10002694C;
  v5[3] = &unk_100132470;
  v5[4] = self;
  objc_copyWeak(&v6, buf);
  dispatch_async(fetchingQueue, v5);
  objc_destroyWeak(&v6);
  objc_destroyWeak(buf);
}

- (void)_saveDeviceToCloudKit
{
  v3 = sub_1000D23FC();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_INFO))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_INFO, "Saving device to CloudKit", buf, 2u);
  }

  v4 = [(CloudExtensionSyncCoordinator *)self _changedRecordsForCloudExtensionDevice:self->_deviceToSave];
  recordsToSave = self->_recordsToSave;
  self->_recordsToSave = v4;

  ct_green_tea_logger_create_static();
  v6 = getCTGreenTeaOsLogHandle();
  v7 = v6;
  if (v6 && os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
  {
    *v8 = 0;
    _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_INFO, "Transmitted Internet Records", v8, 2u);
  }

  [(CloudExtensionSyncCoordinator *)self _saveNextRecordBatchCreatingCloudExtensionsZoneIfMissing:1];
}

- (void)_deleteObsoleteExtensionStateRecordsFromCloudKit
{
  v3 = sub_1000D23FC();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_INFO))
  {
    LOWORD(buf[0]) = 0;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_INFO, "Deleting obsolete extension state records from CloudKit", buf, 2u);
  }

  if ([(NSArray *)self->_recordNamesOfStatesToDelete count])
  {
    objc_initWeak(buf, self);
    v4 = [(CloudExtensionSyncCoordinator *)self _recordIDsFromRecordNames:self->_recordNamesOfStatesToDelete];
    cloudExtensionStore = self->_cloudExtensionStore;
    saveExtensionStateOperationGroup = self->_saveExtensionStateOperationGroup;
    v8[0] = _NSConcreteStackBlock;
    v8[1] = 3221225472;
    v8[2] = sub_1000272DC;
    v8[3] = &unk_1001324C0;
    objc_copyWeak(&v9, buf);
    [(CloudExtensionStore *)cloudExtensionStore deleteCloudExtensionRecords:v4 inOperationGroup:saveExtensionStateOperationGroup completionHandler:v8];
    objc_destroyWeak(&v9);

    objc_destroyWeak(buf);
  }

  else
  {
    v7 = sub_1000D23FC();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
    {
      LOWORD(buf[0]) = 0;
      _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_INFO, "No obsolete extension state records need to be deleted from CloudKit", buf, 2u);
    }

    [(CloudExtensionSyncCoordinator *)self _continueSavingExtensionStates];
  }
}

- (void)_updateSQLiteStoreFromCloudKitAfterSavingExtensionState
{
  v3 = sub_1000D23FC();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_INFO))
  {
    LOWORD(buf[0]) = 0;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_INFO, "Updating SQLite store from CloudKit after saving extension state", buf, 2u);
  }

  objc_initWeak(buf, self);
  saveExtensionStateOperationGroup = self->_saveExtensionStateOperationGroup;
  v5[0] = _NSConcreteStackBlock;
  v5[1] = 3221225472;
  v5[2] = sub_100027548;
  v5[3] = &unk_1001324C0;
  objc_copyWeak(&v6, buf);
  [(CloudExtensionSyncCoordinator *)self _updateSQLiteStoreFromCloudKitInOperationGroup:saveExtensionStateOperationGroup withCompletionHandler:v5];
  objc_destroyWeak(&v6);
  objc_destroyWeak(buf);
}

- (void)_finishedSavingExtensionStates
{
  v3 = sub_1000D23FC();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "Finished saving extension states for the current device to CloudKit", buf, 2u);
  }

  self->_saveState = 0;
  deviceToSave = self->_deviceToSave;
  self->_deviceToSave = 0;

  recordsToSave = self->_recordsToSave;
  self->_recordsToSave = 0;

  unsavedRecordFromLastBatch = self->_unsavedRecordFromLastBatch;
  self->_unsavedRecordFromLastBatch = 0;

  recordNamesOfStatesToDelete = self->_recordNamesOfStatesToDelete;
  self->_recordNamesOfStatesToDelete = 0;

  v12[0] = _NSConcreteStackBlock;
  v12[1] = 3221225472;
  v12[2] = sub_100027820;
  v12[3] = &unk_100131408;
  v12[4] = self;
  v8 = objc_retainBlock(v12);
  if ([(CloudExtensionSyncCoordinator *)self _canCloseCloudExtensionStoreDatabase])
  {
    cloudExtensionLocalStore = self->_cloudExtensionLocalStore;
    v10[0] = _NSConcreteStackBlock;
    v10[1] = 3221225472;
    v10[2] = sub_1000278C4;
    v10[3] = &unk_100131628;
    v11 = v8;
    [(CloudKitSQLiteStore *)cloudExtensionLocalStore closeDatabaseWithCompletionHandler:v10];
  }

  else
  {
    (v8[2])(v8);
  }
}

- (id)_changedRecordsForCloudExtensionDevice:(id)device
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

  v19 = 0u;
  v20 = 0u;
  v17 = 0u;
  v18 = 0u;
  cloudExtensionStates = [deviceCopy cloudExtensionStates];
  v9 = [cloudExtensionStates countByEnumeratingWithState:&v17 objects:v21 count:16];
  if (v9)
  {
    v10 = v9;
    v11 = *v18;
    do
    {
      for (i = 0; i != v10; i = i + 1)
      {
        if (*v18 != v11)
        {
          objc_enumerationMutation(cloudExtensionStates);
        }

        record3 = [*(*(&v17 + 1) + 8 * i) record];
        changedKeys = [record3 changedKeys];
        v15 = [changedKeys count];

        if (v15)
        {
          [v4 addObject:record3];
        }
      }

      v10 = [cloudExtensionStates countByEnumeratingWithState:&v17 objects:v21 count:16];
    }

    while (v10);
  }

  return v4;
}

- (id)_recordIDsFromRecordNames:(id)names
{
  namesCopy = names;
  v4 = +[NSMutableArray array];
  v5 = +[CloudExtensionStore cloudExtensionsRecordZoneID];
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v6 = namesCopy;
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

- (void)_handleSevereSQLiteErrorWhileMergingExistingDevice:(id)device
{
  v3[0] = _NSConcreteStackBlock;
  v3[1] = 3221225472;
  v3[2] = sub_100027DCC;
  v3[3] = &unk_100131408;
  v3[4] = self;
  [(CloudExtensionSyncCoordinator *)self deleteDatabaseWithCompletionHandler:v3];
}

- (void)getCloudExtensionStatesWithCompletionHandler:(id)handler
{
  handlerCopy = handler;
  fetchingQueue = self->_fetchingQueue;
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_100027E78;
  v7[3] = &unk_100131990;
  v7[4] = self;
  v8 = handlerCopy;
  v6 = handlerCopy;
  dispatch_async(fetchingQueue, v7);
}

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

- (void)_updateSQLiteStoreFromCloudKitInOperationGroup:(id)group withCompletionHandler:(id)handler
{
  groupCopy = group;
  handlerCopy = handler;
  fetchingQueue = self->_fetchingQueue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100028154;
  block[3] = &unk_100131A20;
  block[4] = self;
  v12 = groupCopy;
  v13 = handlerCopy;
  v9 = handlerCopy;
  v10 = groupCopy;
  dispatch_async(fetchingQueue, block);
}

- (void)_beginFetchingExtensionStates
{
  [(CloudKitSQLiteStore *)self->_cloudExtensionLocalStore openDatabaseIfNecessary];

  [(CloudExtensionSyncCoordinator *)self _continueFetchingExtensionStates];
}

- (void)_continueFetchingExtensionStates
{
  if (self->_fetchError || ![(CloudExtensionSyncCoordinator *)self _shouldContinueSyncOperation])
  {
    v4 = sub_1000D23FC();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      *v6 = 0;
      _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "Stopping fetch of extension states", v6, 2u);
    }

    fetchedDevices = self->_fetchedDevices;
    self->_fetchedDevices = 0;

    self->_fetchState = 7;
    goto LABEL_12;
  }

  fetchState = self->_fetchState;
  self->_fetchState = fetchState + 1;
  if (fetchState <= 2)
  {
    if (fetchState)
    {
      if (fetchState == 1)
      {

        [(CloudExtensionSyncCoordinator *)self _fetchChangesFromCloudKitCreatingCloudExtensionsZoneIfMissing:1];
      }

      else if (fetchState == 2)
      {

        [(CloudExtensionSyncCoordinator *)self _removeDeletedRecordsFromSQLiteStore];
      }
    }

    else
    {

      [(CloudExtensionSyncCoordinator *)self _getServerChangeTokenFromSQLiteStore];
    }
  }

  else
  {
    if (fetchState <= 4)
    {
      if (fetchState == 3)
      {

        [(CloudExtensionSyncCoordinator *)self _saveModifiedRecordsToSQLiteStore];
      }

      else
      {

        [(CloudExtensionSyncCoordinator *)self _setServerChangeTokenInSQLiteStore];
      }

      return;
    }

    if (fetchState != 5)
    {
      if (fetchState != 6)
      {
        return;
      }

LABEL_12:
      [(CloudExtensionSyncCoordinator *)self _finishedFetching];
      return;
    }

    [(CloudExtensionSyncCoordinator *)self _loadDevicesAndStatesFromSQLiteStore];
  }
}

- (void)_deleteDatabaseAndRestartFetch
{
  v3 = sub_1000D23FC();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    LOWORD(buf[0]) = 0;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "Deleting database and restarting fetch", buf, 2u);
  }

  objc_initWeak(buf, self);
  v4[0] = _NSConcreteStackBlock;
  v4[1] = 3221225472;
  v4[2] = sub_100028560;
  v4[3] = &unk_1001324E8;
  objc_copyWeak(&v5, buf);
  [(CloudExtensionSyncCoordinator *)self deleteDatabaseWithCompletionHandler:v4];
  objc_destroyWeak(&v5);
  objc_destroyWeak(buf);
}

- (void)_getServerChangeTokenFromSQLiteStore
{
  v3 = sub_1000D23FC();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_INFO))
  {
    LOWORD(buf[0]) = 0;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_INFO, "Reading server change token from SQLite", buf, 2u);
  }

  [(CloudExtensionSyncCoordinator *)self set_cloudExtensionStoreError:0];
  objc_initWeak(buf, self);
  cloudExtensionLocalStore = self->_cloudExtensionLocalStore;
  v5[0] = _NSConcreteStackBlock;
  v5[1] = 3221225472;
  v5[2] = sub_100028720;
  v5[3] = &unk_100132510;
  objc_copyWeak(&v6, buf);
  [(CloudKitSQLiteStore *)cloudExtensionLocalStore getServerChangeTokenDataWithCompletionHandler:v5];
  objc_destroyWeak(&v6);
  objc_destroyWeak(buf);
}

- (void)_fetchChangesFromCloudKitCreatingCloudExtensionsZoneIfMissing:(BOOL)missing
{
  objc_initWeak(&location, self);
  v5 = sub_1000D23FC();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_INFO, "Fetching changes from CloudKit", buf, 2u);
  }

  v6 = +[NSMutableArray array];
  modifiedDevices = self->_modifiedDevices;
  self->_modifiedDevices = v6;

  v8 = +[NSMutableArray array];
  modifiedStates = self->_modifiedStates;
  self->_modifiedStates = v8;

  v10 = +[NSMutableArray array];
  namesOfDeletedRecords = self->_namesOfDeletedRecords;
  self->_namesOfDeletedRecords = v10;

  cloudExtensionStore = self->_cloudExtensionStore;
  serverChangeToken = self->_serverChangeToken;
  currentFetchOperationGroup = self->_currentFetchOperationGroup;
  v19[0] = _NSConcreteStackBlock;
  v19[1] = 3221225472;
  v19[2] = sub_100028D5C;
  v19[3] = &unk_100132538;
  v19[4] = self;
  v18[0] = _NSConcreteStackBlock;
  v18[1] = 3221225472;
  v18[2] = sub_100028E04;
  v18[3] = &unk_100132560;
  v18[4] = self;
  v15[0] = _NSConcreteStackBlock;
  v15[1] = 3221225472;
  v15[2] = sub_100028EF8;
  v15[3] = &unk_1001325B0;
  missingCopy = missing;
  v15[4] = self;
  objc_copyWeak(&v16, &location);
  [(CloudExtensionStore *)cloudExtensionStore fetchCloudExtensionsRecordChangesSinceServerChangeToken:serverChangeToken inOperationGroup:currentFetchOperationGroup recordChangedBlock:v19 recordWithIDWasDeletedBlock:v18 completionHandler:v15];
  objc_destroyWeak(&v16);
  objc_destroyWeak(&location);
}

- (void)_retryFetchChangesFromCloudKitIfPossibleAfterCreatingCloudExtensionsZoneCompletedWithError:(id)error
{
  errorCopy = error;
  v6 = sub_1000D23FC();
  v7 = v6;
  if (errorCopy)
  {
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      sub_10002C2A0(v7, errorCopy);
    }

    objc_storeStrong(&self->_fetchError, error);
    objc_initWeak(location, self);
    v8[0] = _NSConcreteStackBlock;
    v8[1] = 3221225472;
    v8[2] = sub_1000293EC;
    v8[3] = &unk_1001324E8;
    objc_copyWeak(&v9, location);
    [(CloudExtensionSyncCoordinator *)self deleteDatabaseWithCompletionHandler:v8];
    objc_destroyWeak(&v9);
    objc_destroyWeak(location);
  }

  else
  {
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      LOWORD(location[0]) = 0;
      _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "Fetching changes from CloudKit again after creating CloudExtensions zone", location, 2u);
    }

    [(CloudExtensionSyncCoordinator *)self _fetchChangesFromCloudKitCreatingCloudExtensionsZoneIfMissing:0];
  }
}

- (void)_removeDeletedRecordsFromSQLiteStore
{
  v3 = [(NSMutableArray *)self->_namesOfDeletedRecords count];
  v4 = sub_1000D23FC();
  v5 = os_log_type_enabled(v4, OS_LOG_TYPE_INFO);
  if (v3)
  {
    if (v5)
    {
      namesOfDeletedRecords = self->_namesOfDeletedRecords;
      v7 = v4;
      *buf = 134217984;
      v13 = [(NSMutableArray *)namesOfDeletedRecords count];
      _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_INFO, "Removing %lu deleted records from SQLite", buf, 0xCu);
    }

    [(CloudExtensionSyncCoordinator *)self set_cloudExtensionStoreError:0];
    objc_initWeak(buf, self);
    cloudExtensionLocalStore = self->_cloudExtensionLocalStore;
    v9 = self->_namesOfDeletedRecords;
    v10[0] = _NSConcreteStackBlock;
    v10[1] = 3221225472;
    v10[2] = sub_1000295F4;
    v10[3] = &unk_1001325D8;
    objc_copyWeak(&v11, buf);
    [(CloudExtensionSQLiteStore *)cloudExtensionLocalStore deleteRecordsWithPrimaryKeys:v9 completionHandler:v10];
    objc_destroyWeak(&v11);
    objc_destroyWeak(buf);
  }

  else
  {
    if (v5)
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_INFO, "No records to delete from SQLite", buf, 2u);
    }

    [(CloudExtensionSyncCoordinator *)self _continueFetchingExtensionStates];
  }
}

- (void)_saveModifiedRecordsToSQLiteStore
{
  if ([(NSMutableArray *)self->_modifiedDevices count]|| [(NSMutableArray *)self->_modifiedStates count])
  {
    v3 = sub_1000D23FC();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_INFO))
    {
      modifiedDevices = self->_modifiedDevices;
      v5 = v3;
      v6 = [(NSMutableArray *)modifiedDevices count];
      v7 = [(NSMutableArray *)self->_modifiedStates count];
      *buf = 134218240;
      v15 = v6;
      v16 = 2048;
      v17 = v7;
      _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_INFO, "Saving %lu device records and %lu extension state records to SQLite", buf, 0x16u);
    }

    [(CloudExtensionSyncCoordinator *)self set_cloudExtensionStoreError:0];
    objc_initWeak(buf, self);
    cloudExtensionLocalStore = self->_cloudExtensionLocalStore;
    v10 = self->_modifiedDevices;
    modifiedStates = self->_modifiedStates;
    v12[0] = _NSConcreteStackBlock;
    v12[1] = 3221225472;
    v12[2] = sub_100029944;
    v12[3] = &unk_1001325D8;
    objc_copyWeak(&v13, buf);
    [(CloudExtensionSQLiteStore *)cloudExtensionLocalStore saveCloudExtensionDevices:v10 extensionStates:modifiedStates completionHandler:v12];
    objc_destroyWeak(&v13);
    objc_destroyWeak(buf);
  }

  else
  {
    v11 = sub_1000D23FC();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_INFO))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_INFO, "No modified devices or extension states to save to SQLite", buf, 2u);
    }

    [(CloudExtensionSyncCoordinator *)self _continueFetchingExtensionStates];
  }
}

- (void)_setServerChangeTokenInSQLiteStore
{
  v3 = sub_1000D23FC();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_INFO))
  {
    LOWORD(buf) = 0;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_INFO, "Saving server change token to SQLite", &buf, 2u);
  }

  serverChangeToken = self->_serverChangeToken;
  if (serverChangeToken)
  {
    v12 = 0;
    v5 = [NSKeyedArchiver archivedDataWithRootObject:serverChangeToken requiringSecureCoding:1 error:&v12];
    v6 = v12;
    if (v6)
    {
      v7 = sub_1000D22B4();
      if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
      {
        sub_10002C4D0(v7, v6);
      }
    }
  }

  else
  {
    v5 = 0;
  }

  [(CloudExtensionSyncCoordinator *)self set_cloudExtensionStoreError:0];
  objc_initWeak(&buf, self);
  cloudExtensionLocalStore = self->_cloudExtensionLocalStore;
  v9[0] = _NSConcreteStackBlock;
  v9[1] = 3221225472;
  v9[2] = sub_100029C7C;
  v9[3] = &unk_1001325D8;
  objc_copyWeak(&v10, &buf);
  [(CloudKitSQLiteStore *)cloudExtensionLocalStore setServerChangeTokenData:v5 completionHandler:v9];
  objc_destroyWeak(&v10);
  objc_destroyWeak(&buf);
}

- (void)_loadDevicesAndStatesFromSQLiteStore
{
  fetchOperationType = self->_fetchOperationType;
  v4 = sub_1000D23FC();
  v5 = os_log_type_enabled(v4, OS_LOG_TYPE_INFO);
  if (fetchOperationType == 2)
  {
    if (v5)
    {
      LOWORD(buf[0]) = 0;
      _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_INFO, "Skipping loading devices and extension states from SQLite", buf, 2u);
    }

    [(CloudExtensionSyncCoordinator *)self _continueFetchingExtensionStates];
  }

  else
  {
    if (v5)
    {
      LOWORD(buf[0]) = 0;
      _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_INFO, "Loading devices and extension states from SQLite", buf, 2u);
    }

    [(CloudExtensionSyncCoordinator *)self set_cloudExtensionStoreError:0];
    objc_initWeak(buf, self);
    cloudExtensionLocalStore = self->_cloudExtensionLocalStore;
    v7[0] = _NSConcreteStackBlock;
    v7[1] = 3221225472;
    v7[2] = sub_100029F70;
    v7[3] = &unk_100132628;
    objc_copyWeak(&v8, buf);
    [(CloudExtensionSQLiteStore *)cloudExtensionLocalStore loadCloudExtensionDataWithCompletionHandler:v7];
    objc_destroyWeak(&v8);
    objc_destroyWeak(buf);
  }
}

- (void)_finishedFetching
{
  v3 = sub_1000D23FC();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "Finished fetching extension data from CloudKit", buf, 2u);
  }

  self->_fetchState = 0;
  self->_isRefetchingAfterDeletingDatabase = 0;
  serverChangeToken = self->_serverChangeToken;
  self->_serverChangeToken = 0;

  modifiedDevices = self->_modifiedDevices;
  self->_modifiedDevices = 0;

  modifiedStates = self->_modifiedStates;
  self->_modifiedStates = 0;

  namesOfDeletedRecords = self->_namesOfDeletedRecords;
  self->_namesOfDeletedRecords = 0;

  v8 = self->_fetchError;
  fetchError = self->_fetchError;
  self->_fetchError = 0;

  v15[0] = _NSConcreteStackBlock;
  v15[1] = 3221225472;
  v15[2] = sub_10002A2B0;
  v15[3] = &unk_1001314F8;
  v15[4] = self;
  v10 = v8;
  v16 = v10;
  v11 = objc_retainBlock(v15);
  if ([(CloudExtensionSyncCoordinator *)self _canCloseCloudExtensionStoreDatabase])
  {
    cloudExtensionLocalStore = self->_cloudExtensionLocalStore;
    v13[0] = _NSConcreteStackBlock;
    v13[1] = 3221225472;
    v13[2] = sub_10002A404;
    v13[3] = &unk_100131628;
    v14 = v11;
    [(CloudKitSQLiteStore *)cloudExtensionLocalStore closeDatabaseWithCompletionHandler:v13];
  }

  else
  {
    (v11[2])(v11);
  }
}

- (void)_didFetchModifiedRecord:(id)record
{
  recordCopy = record;
  if ([recordCopy safari_isCloudExtensionDeviceRecord])
  {
    v5 = [CloudExtensionDevice cloudExtensionDeviceWithCKRecord:recordCopy];
    if (!v5)
    {
      v8 = sub_1000D23FC();
      if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
      {
        sub_10002C7CC();
      }

      goto LABEL_14;
    }

    modifiedDevices = self->_modifiedDevices;
LABEL_7:
    [(NSMutableArray *)modifiedDevices addObject:v5];
LABEL_14:

    goto LABEL_15;
  }

  if ([recordCopy safari_isCloudExtensionStateRecord])
  {
    v5 = [CloudExtensionState cloudExtensionStateWithCKRecord:recordCopy];
    if (!v5)
    {
      v9 = sub_1000D23FC();
      if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
      {
        sub_10002C790();
      }

      goto LABEL_14;
    }

    modifiedDevices = self->_modifiedStates;
    goto LABEL_7;
  }

  v7 = sub_1000D23FC();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
  {
    sub_10002C700(v7);
  }

LABEL_15:
}

- (void)_handleSevereSQLiteErrorWhileFetching:(id)fetching
{
  fetchingCopy = fetching;
  if (self->_isRefetchingAfterDeletingDatabase)
  {
    objc_storeStrong(&self->_fetchError, fetching);
    [(CloudExtensionSyncCoordinator *)self _continueFetchingExtensionStates];
  }

  else
  {
    [(CloudExtensionSyncCoordinator *)self _deleteDatabaseAndRestartFetch];
  }
}

- (void)deleteCloudExtensionDevicesWithUUIDStrings:(id)strings completionHandler:(id)handler
{
  stringsCopy = strings;
  handlerCopy = handler;
  v8 = sub_1000D23FC();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "Deleting extension devices from CloudKit", buf, 2u);
  }

  if ([stringsCopy count])
  {
    savingQueue = self->_savingQueue;
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_10002A768;
    block[3] = &unk_100131A20;
    block[4] = self;
    v12 = stringsCopy;
    v13 = handlerCopy;
    dispatch_async(savingQueue, block);
  }

  else
  {
    v10 = sub_1000D23FC();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_INFO, "No extension devices to delete", buf, 2u);
    }

    (*(handlerCopy + 2))(handlerCopy, 0);
  }
}

- (void)_continueDeleting
{
  if ([(CloudExtensionSyncCoordinator *)self _shouldContinueSyncOperation])
  {
    deleteState = self->_deleteState + 1;
    self->_deleteState = deleteState;
  }

  else
  {
    v4 = sub_1000D23FC();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      *v7 = 0;
      _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "Stopping deletion of extension device records", v7, 2u);
    }

    self->_deleteState = 3;
    v5 = [NSError errorWithDomain:WBSCloudTabsErrorDomain code:1 userInfo:0];
    deleteExtensionDevicesError = self->_deleteExtensionDevicesError;
    self->_deleteExtensionDevicesError = v5;

    deleteState = self->_deleteState;
  }

  switch(deleteState)
  {
    case 3:
      [(CloudExtensionSyncCoordinator *)self _finishedDeletingRecords];
      break;
    case 2:
      [(CloudExtensionSyncCoordinator *)self _updateSQLiteStoreFromCloudKitAfterDeletingRecords];
      break;
    case 1:
      [(CloudExtensionSyncCoordinator *)self _deleteRecordsFromCloudKit];
      break;
  }
}

- (void)_deleteRecordsFromCloudKit
{
  v3 = sub_1000D23FC();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_INFO))
  {
    LOWORD(buf[0]) = 0;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_INFO, "Deleting extension device records from CloudKit", buf, 2u);
  }

  objc_initWeak(buf, self);
  cloudExtensionStore = self->_cloudExtensionStore;
  recordIDsToDelete = self->_recordIDsToDelete;
  deleteDevicesOperationGroup = self->_deleteDevicesOperationGroup;
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_10002AAA4;
  v7[3] = &unk_1001324C0;
  objc_copyWeak(&v8, buf);
  [(CloudExtensionStore *)cloudExtensionStore deleteCloudExtensionRecords:recordIDsToDelete inOperationGroup:deleteDevicesOperationGroup completionHandler:v7];
  objc_destroyWeak(&v8);
  objc_destroyWeak(buf);
}

- (void)_updateSQLiteStoreFromCloudKitAfterDeletingRecords
{
  v3 = sub_1000D23FC();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_INFO))
  {
    LOWORD(buf[0]) = 0;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_INFO, "Updating SQLite store from CloudKit after deleting extension device records", buf, 2u);
  }

  objc_initWeak(buf, self);
  deleteDevicesOperationGroup = self->_deleteDevicesOperationGroup;
  v5[0] = _NSConcreteStackBlock;
  v5[1] = 3221225472;
  v5[2] = sub_10002AD20;
  v5[3] = &unk_1001324C0;
  objc_copyWeak(&v6, buf);
  [(CloudExtensionSyncCoordinator *)self _updateSQLiteStoreFromCloudKitInOperationGroup:deleteDevicesOperationGroup withCompletionHandler:v5];
  objc_destroyWeak(&v6);
  objc_destroyWeak(buf);
}

- (void)_finishedDeletingRecords
{
  v3 = sub_1000D23FC();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "Finished deleting extension device records from CloudKit", buf, 2u);
  }

  self->_deleteState = 0;
  recordIDsToDelete = self->_recordIDsToDelete;
  self->_recordIDsToDelete = 0;

  v9[0] = _NSConcreteStackBlock;
  v9[1] = 3221225472;
  v9[2] = sub_10002AFD4;
  v9[3] = &unk_100131408;
  v9[4] = self;
  v5 = objc_retainBlock(v9);
  if ([(CloudExtensionSyncCoordinator *)self _canCloseCloudExtensionStoreDatabase])
  {
    cloudExtensionLocalStore = self->_cloudExtensionLocalStore;
    v7[0] = _NSConcreteStackBlock;
    v7[1] = 3221225472;
    v7[2] = sub_10002B078;
    v7[3] = &unk_100131628;
    v8 = v5;
    [(CloudKitSQLiteStore *)cloudExtensionLocalStore closeDatabaseWithCompletionHandler:v7];
  }

  else
  {
    (v5[2])(v5);
  }
}

- (void)cloudExtensionSQLiteStoreStore:(id)store hadSevereError:(id)error
{
  errorCopy = error;
  v6 = sub_1000D23FC();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
  {
    sub_10002C918(v6);
  }

  [(CloudExtensionSyncCoordinator *)self set_cloudExtensionStoreError:errorCopy];
}

+ (id)_createOperationGroupWithName:(id)name
{
  nameCopy = name;
  v4 = objc_alloc_init(CKOperationGroup);
  [v4 setName:nameCopy];

  [v4 setExpectedSendSize:1];
  [v4 setExpectedReceiveSize:1];
  v5 = objc_alloc_init(CKOperationConfiguration);
  [v5 setQualityOfService:17];
  [v4 setDefaultConfiguration:v5];

  return v4;
}

- (BOOL)_isDataclassEnabled
{
  if (!self->_needsDataclassEnabledCheck)
  {
    return self->_dataclassEnabled;
  }

  self->_needsDataclassEnabledCheck = 0;
  safari_primaryAppleAccount = [(ACAccountStore *)self->_accountStore safari_primaryAppleAccount];
  if (safari_primaryAppleAccount)
  {
    v4 = safari_primaryAppleAccount;
    v5 = [safari_primaryAppleAccount isEnabledForDataclass:kAccountDataclassBookmarks];
    self->_dataclassEnabled = v5;
    if ((v5 & 1) == 0)
    {
      v6 = sub_1000D23FC();
      if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
      {
        *v10 = 0;
        _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "Extension syncing not available because Safari's dataclass isn't enabled", v10, 2u);
      }
    }

    return self->_dataclassEnabled;
  }

  v9 = sub_1000D23FC();
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "Extension syncing not available because user is not signed in", buf, 2u);
  }

  v7 = 0;
  self->_dataclassEnabled = 0;
  return v7;
}

- (BOOL)_shouldContinueSyncOperation
{
  if ([(CloudExtensionSyncCoordinator *)self _isDeletingDatabase])
  {
    return 0;
  }

  return [(CloudExtensionSyncCoordinator *)self _isDataclassEnabled];
}

- (BOOL)_canCloseCloudExtensionStoreDatabase
{
  if (self->_saveState || self->_fetchState)
  {
    return 0;
  }

  else
  {
    return ![(CloudExtensionSyncCoordinator *)self _isDeletingDatabase:v2];
  }
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

- (id)_cloudExtensionStatesDictionaryFromCloudExtensionDevices:(id)devices
{
  devicesCopy = devices;
  if (devicesCopy)
  {
    v4 = +[NSMutableDictionary dictionary];
    v56 = 0u;
    v57 = 0u;
    v58 = 0u;
    v59 = 0u;
    v33 = devicesCopy;
    obj = devicesCopy;
    v36 = [obj countByEnumeratingWithState:&v56 objects:v67 count:16];
    if (v36)
    {
      v35 = *v57;
      v45 = WBSDefaultProfileIdentifier;
      v44 = WBSSafariExtensionStateEnabledKey;
      v43 = WBSSafariExtensionStateEnabledByUserGestureKey;
      v42 = WBSSafariExtensionStateLastEnabledModificationDate;
      v50 = WBSSafariExtensionStateDeviceUUIDString;
      v41 = WBSSafariExtensionStateProfilesKey;
      v39 = v4;
      do
      {
        v5 = 0;
        do
        {
          if (*v57 != v35)
          {
            objc_enumerationMutation(obj);
          }

          v37 = v5;
          v6 = *(*(&v56 + 1) + 8 * v5);
          deviceUUIDString = [v6 deviceUUIDString];
          v52 = 0u;
          v53 = 0u;
          v54 = 0u;
          v55 = 0u;
          cloudExtensionStates = [v6 cloudExtensionStates];
          v47 = [cloudExtensionStates countByEnumeratingWithState:&v52 objects:v66 count:16];
          if (v47)
          {
            v46 = *v53;
            do
            {
              v7 = 0;
              do
              {
                if (*v53 != v46)
                {
                  objc_enumerationMutation(cloudExtensionStates);
                }

                v8 = *(*(&v52 + 1) + 8 * v7);
                dictionaryRepresentation = [v8 dictionaryRepresentation];
                if (dictionaryRepresentation)
                {
                  composedIdentifier = [v8 composedIdentifier];
                  v10 = [v4 objectForKeyedSubscript:?];
                  profileIdentifier = [v8 profileIdentifier];
                  v12 = profileIdentifier;
                  v13 = v45;
                  if (profileIdentifier)
                  {
                    v13 = profileIdentifier;
                  }

                  v14 = v13;

                  v15 = [dictionaryRepresentation mutableCopy];
                  v48 = v14;
                  v62 = v14;
                  v60[0] = v44;
                  v16 = +[NSNumber numberWithBool:](NSNumber, "numberWithBool:", [v8 isEnabled]);
                  v61[0] = v16;
                  v60[1] = v43;
                  v17 = +[NSNumber numberWithBool:](NSNumber, "numberWithBool:", [v8 wasEnabledByUserGesture]);
                  v61[1] = v17;
                  v60[2] = v42;
                  lastModifiedDate = [v8 lastModifiedDate];
                  v61[2] = lastModifiedDate;
                  v19 = [NSDictionary dictionaryWithObjects:v61 forKeys:v60 count:3];
                  v63 = v19;
                  v20 = [NSDictionary dictionaryWithObjects:&v63 forKeys:&v62 count:1];

                  if (qword_100153E70 != -1)
                  {
                    sub_10002C9A8();
                  }

                  [v15 removeObjectsForKeys:qword_100153E68];
                  if (v10)
                  {
                    v21 = [v10 count];
                    if (v21 < 1)
                    {
LABEL_22:
                      [v15 setObject:v20 forKeyedSubscript:v41];
                      [v10 addObject:v15];
                    }

                    else
                    {
                      v22 = v21;
                      v23 = 0;
                      while (1)
                      {
                        v24 = [v10 objectAtIndexedSubscript:v23];
                        v25 = [v24 objectForKeyedSubscript:v50];
                        v26 = [v25 isEqual:deviceUUIDString];

                        if (v26)
                        {
                          break;
                        }

                        if (v22 == ++v23)
                        {
                          goto LABEL_22;
                        }
                      }

                      v38 = [v24 mutableCopy];
                      v29 = [v24 objectForKeyedSubscript:v41];
                      v30 = [v29 mutableCopy];

                      [v30 addEntriesFromDictionary:v20];
                      [v38 setObject:v30 forKeyedSubscript:v41];
                      v31 = [v38 copy];
                      [v10 setObject:v31 atIndexedSubscript:v23];
                    }

                    v4 = v39;
                    v28 = composedIdentifier;
                  }

                  else
                  {
                    [v15 setObject:v20 forKeyedSubscript:v41];
                    v10 = [NSMutableArray arrayWithObject:v15];
                    v28 = composedIdentifier;
                    [v4 setObject:v10 forKeyedSubscript:composedIdentifier];
                  }
                }

                else
                {
                  v27 = sub_1000D23FC();
                  if (os_log_type_enabled(v27, OS_LOG_TYPE_ERROR))
                  {
                    *buf = 138477827;
                    v65 = v8;
                    _os_log_error_impl(&_mh_execute_header, v27, OS_LOG_TYPE_ERROR, "Could not create extension state dictionary when getting extension states from CloudExtensionState %{private}@", buf, 0xCu);
                  }
                }

                v7 = v7 + 1;
              }

              while (v7 != v47);
              v47 = [cloudExtensionStates countByEnumeratingWithState:&v52 objects:v66 count:16];
            }

            while (v47);
          }

          v5 = v37 + 1;
        }

        while ((v37 + 1) != v36);
        v36 = [obj countByEnumeratingWithState:&v56 objects:v67 count:16];
      }

      while (v36);
    }

    devicesCopy = v33;
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (id)_cloudExtensionDevicesDictionaryFromCloudExtensionDevices:(id)devices
{
  if (devices)
  {
    v4 = [devices safari_mapObjectsUsingBlock:&stru_100132688];
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

@end