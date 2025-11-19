@interface CloudTabSyncArbiter
- (CloudTabSyncArbiter)initWithAccountStore:(id)a3;
- (CloudTabSyncArbiterDelegate)delegate;
- (id)_manateeErrorCode:(id)a3;
- (void)_deleteCloudTabsZoneWithCompletionHandler:(id)a3;
- (void)_determineCloudTabSyncCoordinatorWithCompletion:(id)a3;
- (void)_fetchDevices;
- (void)_handleManateeErrorIfNeeded:(id)a3 completionHandler:(id)a4;
- (void)_pcsIdentitiesChangedNotification:(id)a3;
- (void)_transitionCloudTabSyncCoordinatorToManateeState:(int64_t)a3 completion:(id)a4;
- (void)clearServerChangeTokenWithCompletionHandler:(id)a3;
- (void)dealloc;
- (void)deleteCloudTabCloseRequestsWithUUIDStrings:(id)a3 completionHandler:(id)a4;
- (void)deleteCloudTabsZoneWithCompletionHandler:(id)a3;
- (void)deleteDatabaseAndSyncDataForAccountChange;
- (void)deleteDatabaseWithCompletionHandler:(id)a3;
- (void)deleteDevicesWithUUIDStrings:(id)a3 completionHandler:(id)a4;
- (void)fetchDevicesWithCompletionHandler:(id)a3;
- (void)getCachedDevicesWithCompletionHandler:(id)a3;
- (void)getCloudTabRemoteStoreWithCompletionHandler:(id)a3;
- (void)saveCloudTabCloseRequestWithDictionaryRepresentation:(id)a3 closeRequestUUIDString:(id)a4 completionHandler:(id)a5;
- (void)saveTabsForCurrentDeviceWithDictionaryRepresentation:(id)a3 deviceUUIDString:(id)a4 completionHandler:(id)a5;
- (void)userAccountChanged;
@end

@implementation CloudTabSyncArbiter

- (void)_fetchDevices
{
  xpc_transaction_begin();
  v3[0] = _NSConcreteStackBlock;
  v3[1] = 3221225472;
  v3[2] = sub_100001C30;
  v3[3] = &unk_100134E88;
  v3[4] = self;
  [(CloudTabSyncArbiter *)self _determineCloudTabSyncCoordinatorWithCompletion:v3];
}

- (CloudTabSyncArbiter)initWithAccountStore:(id)a3
{
  v5 = a3;
  v32.receiver = self;
  v32.super_class = CloudTabSyncArbiter;
  v6 = [(CloudTabSyncArbiter *)&v32 init];
  if (v6)
  {
    objc_initWeak(&location, v6);
    v7 = objc_opt_class();
    v8 = NSStringFromClass(v7);
    v9 = [NSString stringWithFormat:@"com.apple.SafariBookmarksSyncAgent.%@.%p", v8, v6];
    v10 = dispatch_queue_create([v9 UTF8String], 0);
    queue = v6->_queue;
    v6->_queue = v10;

    objc_storeStrong(&v6->_accountStore, a3);
    if (qword_100154000 != -1)
    {
      sub_1000767A0();
    }

    v12 = qword_100153FF8;
    if (!v12)
    {
      v13 = sub_100001B78();
      if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
      {
        sub_1000767C8(v13);
      }

      v12 = +[WBSSQLiteDatabase inMemoryDatabaseURL];
    }

    v14 = v12;
    v15 = [CloudTabSQLiteStore alloc];
    v16 = +[CloudTabRemoteStore cloudTabsRecordZoneID];
    v17 = [(CloudTabSQLiteStore *)v15 initWithDatabaseURL:v14 cloudTabsRecordZoneID:v16];
    cloudTabLocalStore = v6->_cloudTabLocalStore;
    v6->_cloudTabLocalStore = v17;

    v19 = +[NSMutableArray array];
    completionHandlersForNextDeviceFetchRequest = v6->_completionHandlersForNextDeviceFetchRequest;
    v6->_completionHandlersForNextDeviceFetchRequest = v19;

    v21 = +[NSMutableArray array];
    syncCoordinatorDeterminationCompletionBlocks = v6->_syncCoordinatorDeterminationCompletionBlocks;
    v6->_syncCoordinatorDeterminationCompletionBlocks = v21;

    v23 = objc_alloc_init(AppleAccountInformationProvider);
    v24 = [WBSCloudKitContainerManateeObserver alloc];
    v25 = [v24 initWithContainerIdentifier:WBSCloudTabManateeContainerIdentifier appleAccountInformationProvider:v23];
    containerManateeObserver = v6->_containerManateeObserver;
    v6->_containerManateeObserver = v25;

    v29[0] = _NSConcreteStackBlock;
    v29[1] = 3221225472;
    v29[2] = sub_1000735F0;
    v29[3] = &unk_1001313E0;
    objc_copyWeak(&v30, &location);
    [(WBSCloudKitContainerManateeObserver *)v6->_containerManateeObserver setStateChangeObserver:v29];
    v27 = v6;
    objc_destroyWeak(&v30);

    objc_destroyWeak(&location);
  }

  return v6;
}

- (void)dealloc
{
  [(CloudKitSQLiteStore *)self->_cloudTabLocalStore closeDatabaseWithCompletionHandler:&stru_100134C80];
  v3.receiver = self;
  v3.super_class = CloudTabSyncArbiter;
  [(CloudTabSyncArbiter *)&v3 dealloc];
}

- (void)clearServerChangeTokenWithCompletionHandler:(id)a3
{
  v4 = a3;
  cloudTabLocalStore = self->_cloudTabLocalStore;
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_100073904;
  v7[3] = &unk_100134CA8;
  v8 = v4;
  v6 = v4;
  [(CloudKitSQLiteStore *)cloudTabLocalStore setServerChangeTokenData:0 completionHandler:v7];
}

- (void)_determineCloudTabSyncCoordinatorWithCompletion:(id)a3
{
  v4 = a3;
  v5 = v4;
  if (self->_syncCoordinator && !self->_manateeStateNeedsUpdate)
  {
    v4[2](v4);
  }

  else
  {
    syncCoordinatorDeterminationCompletionBlocks = self->_syncCoordinatorDeterminationCompletionBlocks;
    v7 = objc_retainBlock(v4);
    [(NSMutableArray *)syncCoordinatorDeterminationCompletionBlocks addObject:v7];

    if (!self->_determiningSyncCoordinator)
    {
      self->_determiningSyncCoordinator = 1;
      containerManateeObserver = self->_containerManateeObserver;
      v9[0] = _NSConcreteStackBlock;
      v9[1] = 3221225472;
      v9[2] = sub_100073A00;
      v9[3] = &unk_100131390;
      v9[4] = self;
      [(WBSCloudKitContainerManateeObserver *)containerManateeObserver determineAccountStateWithCompletion:v9];
    }
  }
}

- (void)_transitionCloudTabSyncCoordinatorToManateeState:(int64_t)a3 completion:(id)a4
{
  v6 = a4;
  v7 = v6;
  currentManateeState = self->_currentManateeState;
  self->_currentManateeState = a3;
  v9 = (a3 != 1) ^ (currentManateeState == 1);
  if (self->_syncCoordinator)
  {
    v10 = v9 == 0;
  }

  else
  {
    v10 = 1;
  }

  if (v10)
  {
    v19[0] = _NSConcreteStackBlock;
    v19[1] = 3221225472;
    v19[2] = sub_100073E20;
    v19[3] = &unk_100134CD0;
    v19[4] = self;
    v19[5] = a3;
    v11 = objc_retainBlock(v19);
    [(CloudKitSQLiteStore *)self->_cloudTabLocalStore openDatabaseIfNecessary];
    cloudTabLocalStore = self->_cloudTabLocalStore;
    v14[0] = _NSConcreteStackBlock;
    v14[1] = 3221225472;
    v14[2] = sub_100073F94;
    v14[3] = &unk_100134D98;
    v18 = a3 != 1;
    v14[4] = self;
    v15 = v11;
    v16 = v7;
    v17 = a3;
    v13 = v11;
    [(CloudTabSQLiteStore *)cloudTabLocalStore getUseManateeContainerForSyncingWithCompletionHandler:v14];
  }

  else
  {
    (*(v6 + 2))(v6);
  }
}

- (void)deleteDatabaseWithCompletionHandler:(id)a3
{
  v4 = a3;
  queue = self->_queue;
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_10007463C;
  v7[3] = &unk_100131990;
  v7[4] = self;
  v8 = v4;
  v6 = v4;
  dispatch_async(queue, v7);
}

- (void)_deleteCloudTabsZoneWithCompletionHandler:(id)a3
{
  v4[0] = _NSConcreteStackBlock;
  v4[1] = 3221225472;
  v4[2] = sub_100074814;
  v4[3] = &unk_100134DE8;
  v5 = self;
  v6 = a3;
  v3 = v6;
  [(CloudTabSyncArbiter *)v5 _determineCloudTabSyncCoordinatorWithCompletion:v4];
}

- (void)_pcsIdentitiesChangedNotification:(id)a3
{
  xpc_transaction_begin();
  queue = self->_queue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100074A58;
  block[3] = &unk_100131408;
  block[4] = self;
  dispatch_async(queue, block);
}

- (id)_manateeErrorCode:(id)a3
{
  v3 = a3;
  v4 = v3;
  if (v3)
  {
    if ([v3 safari_isCloudKitErrorWithCode:110])
    {
      v5 = &off_10013C4A0;
    }

    else if ([v4 safari_isCloudKitErrorWithCode:112])
    {
      v5 = &off_10013C4B8;
    }

    else if ([v4 safari_isCloudKitInternalErrorWithCode:5004])
    {
      v5 = &off_10013C4D0;
    }

    else if ([v4 safari_isCloudKitErrorWithCode:111])
    {
      v5 = &off_10013C4E8;
    }

    else
    {
      v5 = 0;
    }
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (void)_handleManateeErrorIfNeeded:(id)a3 completionHandler:(id)a4
{
  v6 = a4;
  v7 = [(CloudTabSyncArbiter *)self _manateeErrorCode:a3];
  v8 = v7;
  if (v7)
  {
    queue = self->_queue;
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_100074D50;
    block[3] = &unk_100131A20;
    v11 = v7;
    v12 = self;
    v13 = v6;
    dispatch_async(queue, block);
  }

  else
  {
    v6[2](v6);
  }
}

- (void)saveTabsForCurrentDeviceWithDictionaryRepresentation:(id)a3 deviceUUIDString:(id)a4 completionHandler:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  queue = self->_queue;
  v15[0] = _NSConcreteStackBlock;
  v15[1] = 3221225472;
  v15[2] = sub_1000750A8;
  v15[3] = &unk_100131650;
  v15[4] = self;
  v16 = v8;
  v17 = v9;
  v18 = v10;
  v12 = v10;
  v13 = v9;
  v14 = v8;
  dispatch_async(queue, v15);
}

- (void)saveCloudTabCloseRequestWithDictionaryRepresentation:(id)a3 closeRequestUUIDString:(id)a4 completionHandler:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  queue = self->_queue;
  v15[0] = _NSConcreteStackBlock;
  v15[1] = 3221225472;
  v15[2] = sub_1000753CC;
  v15[3] = &unk_100131650;
  v15[4] = self;
  v16 = v8;
  v17 = v9;
  v18 = v10;
  v12 = v10;
  v13 = v9;
  v14 = v8;
  dispatch_async(queue, v15);
}

- (void)deleteDevicesWithUUIDStrings:(id)a3 completionHandler:(id)a4
{
  v6 = a3;
  v7 = a4;
  queue = self->_queue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1000756D0;
  block[3] = &unk_100131A20;
  block[4] = self;
  v12 = v6;
  v13 = v7;
  v9 = v7;
  v10 = v6;
  dispatch_async(queue, block);
}

- (void)deleteCloudTabCloseRequestsWithUUIDStrings:(id)a3 completionHandler:(id)a4
{
  v6 = a3;
  v7 = a4;
  queue = self->_queue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100075998;
  block[3] = &unk_100131A20;
  block[4] = self;
  v12 = v6;
  v13 = v7;
  v9 = v7;
  v10 = v6;
  dispatch_async(queue, block);
}

- (void)fetchDevicesWithCompletionHandler:(id)a3
{
  v4 = a3;
  queue = self->_queue;
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_100075C34;
  v7[3] = &unk_100131990;
  v7[4] = self;
  v8 = v4;
  v6 = v4;
  dispatch_async(queue, v7);
}

- (void)deleteCloudTabsZoneWithCompletionHandler:(id)a3
{
  v4 = a3;
  queue = self->_queue;
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_100075D84;
  v7[3] = &unk_100131990;
  v7[4] = self;
  v8 = v4;
  v6 = v4;
  dispatch_async(queue, v7);
}

- (void)userAccountChanged
{
  queue = self->_queue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100075E04;
  block[3] = &unk_100131408;
  block[4] = self;
  dispatch_async(queue, block);
}

- (void)deleteDatabaseAndSyncDataForAccountChange
{
  queue = self->_queue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100075F24;
  block[3] = &unk_100131408;
  block[4] = self;
  dispatch_async(queue, block);
}

- (void)getCloudTabRemoteStoreWithCompletionHandler:(id)a3
{
  v4 = a3;
  queue = self->_queue;
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_100076094;
  v7[3] = &unk_100131990;
  v7[4] = self;
  v8 = v4;
  v6 = v4;
  dispatch_async(queue, v7);
}

- (void)getCachedDevicesWithCompletionHandler:(id)a3
{
  v4 = a3;
  queue = self->_queue;
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_100076214;
  v7[3] = &unk_100131990;
  v7[4] = self;
  v8 = v4;
  v6 = v4;
  dispatch_async(queue, v7);
}

- (CloudTabSyncArbiterDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end