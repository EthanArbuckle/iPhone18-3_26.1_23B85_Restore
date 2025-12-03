@interface HDClinicalIngestionManager
- (BOOL)_enableCHRNotificationsIfNeeded;
- (BOOL)_isCHRNotifcationsEnabled;
- (BOOL)_queue_shouldScheduleIngestion;
- (BOOL)_shouldFireNotifications;
- (HDClinicalIngestionManager)initWithProfileExtension:(id)extension;
- (HDProfile)profile;
- (id)_initWithProfileExtension:(id)extension;
- (int64_t)currentIngestionState;
- (void)_addIngestionTask:(id)task;
- (void)_notifyForNewHealthLabRecordsFromTask:(id)task countOfAllLabs:(unint64_t)labs countOfPinnedLabs:(unint64_t)pinnedLabs;
- (void)_notifyForNewHealthRecordsFromTask:(id)task;
- (void)_performExtractionWithReason:(id)reason completion:(id)completion;
- (void)_performMaintenanceIngestionWithReason:(id)reason completion:(id)completion;
- (void)_queue_didReceiveFHIRResourceSyncEntities;
- (void)_queue_performProtectedDataAvailableChecks;
- (void)_queue_setIngestionState:(int64_t)state;
- (void)_registerForProfileDidBecomeReady;
- (void)_resetIngestionScheduleBlock;
- (void)_scheduleExtractionWithReason:(id)reason;
- (void)_taskDidFinish:(id)finish;
- (void)_taskWillReallyBegin;
- (void)database:(id)database protectedDataDidBecomeAvailable:(BOOL)available;
- (void)dealloc;
- (void)didReceiveFHIRResourceSyncEntities;
- (void)didRecieveHealthRecordsQueryNotification:(id)notification;
- (void)performIngestionWithContext:(id)context accountIdentifiers:(id)identifiers completion:(id)completion;
- (void)performPeriodicIngestionWithCompletion:(id)completion;
- (void)profileDidBecomeReady:(id)ready;
- (void)scheduleIngestionWithReason:(id)reason;
@end

@implementation HDClinicalIngestionManager

- (int64_t)currentIngestionState
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x2020000000;
  v9 = 0;
  queue = self->_queue;
  v5[0] = _NSConcreteStackBlock;
  v5[1] = 3221225472;
  v5[2] = sub_1984;
  v5[3] = &unk_108540;
  v5[4] = self;
  v5[5] = &v6;
  dispatch_sync(queue, v5);
  v3 = v7[3];
  _Block_object_dispose(&v6, 8);
  return v3;
}

- (void)_queue_performProtectedDataAvailableChecks
{
  dispatch_assert_queue_V2(self->_queue);
  if (self->_scheduleExtractionOnProtectedDataBecomingAvailable)
  {
    *&self->_scheduleExtractionOnProtectedDataBecomingAvailable = 256;
    v3 = @"protected data available after extraction was requested";
  }

  else
  {
    if (self->_didCheckWhetherResourcesNeedExtraction)
    {
      return;
    }

    self->_didCheckWhetherResourcesNeedExtraction = 1;
    WeakRetained = objc_loadWeakRetained(&self->_profile);
    v5 = [HDClinicalAccountEntity accountsNeedExtractionForProfile:WeakRetained];

    if (!v5)
    {
      return;
    }

    v3 = @"unextracted resources present";
  }

  [(HDClinicalIngestionManager *)self _scheduleExtractionWithReason:v3];
}

- (void)dealloc
{
  v3 = +[NSNotificationCenter defaultCenter];
  [v3 removeObserver:self name:HDQueryServerDidReceiveQueryForHealthRecordsNotification object:0];

  WeakRetained = objc_loadWeakRetained(&self->_profile);
  database = [WeakRetained database];
  [database removeProtectedDataObserver:self];

  v6.receiver = self;
  v6.super_class = HDClinicalIngestionManager;
  [(HDClinicalIngestionManager *)&v6 dealloc];
}

- (id)_initWithProfileExtension:(id)extension
{
  extensionCopy = extension;
  v23.receiver = self;
  v23.super_class = HDClinicalIngestionManager;
  v5 = [(HDClinicalIngestionManager *)&v23 init];
  v6 = v5;
  if (v5)
  {
    objc_storeWeak(&v5->_profileExtension, extensionCopy);
    profile = [extensionCopy profile];
    objc_storeWeak(&v6->_profile, profile);

    v8 = [HDKeyValueDomain alloc];
    v9 = HDHRSNotificationKeyValueDomainIdentifier;
    WeakRetained = objc_loadWeakRetained(&v6->_profile);
    v11 = [v8 initWithCategory:0 domainName:v9 profile:WeakRetained];
    keyValueDomain = v6->_keyValueDomain;
    v6->_keyValueDomain = v11;

    v13 = HKCreateSerialDispatchQueue();
    queue = v6->_queue;
    v6->_queue = v13;

    v6->_ingestionState = 1;
    v15 = [HKObserverSet alloc];
    v16 = [v15 initWithName:@"ingestion-state-change-observer" loggingCategory:HKLogHealthRecords];
    ingestionStateObserverSet = v6->_ingestionStateObserverSet;
    v6->_ingestionStateObserverSet = v16;

    v18 = objc_alloc_init(NSOperationQueue);
    [(NSOperationQueue *)v18 setQualityOfService:17];
    [(NSOperationQueue *)v18 setMaxConcurrentOperationCount:1];
    ingestionOperationQueue = v6->_ingestionOperationQueue;
    v6->_ingestionOperationQueue = v18;
    v20 = v18;

    v21 = +[NSNotificationCenter defaultCenter];
    [v21 addObserver:v6 selector:"didRecieveHealthRecordsQueryNotification:" name:HDQueryServerDidReceiveQueryForHealthRecordsNotification object:0];
  }

  return v6;
}

- (void)_registerForProfileDidBecomeReady
{
  WeakRetained = objc_loadWeakRetained(&self->_profile);
  [WeakRetained registerProfileReadyObserver:self queue:0];
}

- (HDClinicalIngestionManager)initWithProfileExtension:(id)extension
{
  v3 = [(HDClinicalIngestionManager *)self _initWithProfileExtension:extension];
  v4 = v3;
  if (v3)
  {
    [(HDClinicalIngestionManager *)v3 _registerForProfileDidBecomeReady];
  }

  return v4;
}

- (void)profileDidBecomeReady:(id)ready
{
  WeakRetained = objc_loadWeakRetained(&self->_profile);
  database = [WeakRetained database];
  [database addProtectedDataObserver:self queue:self->_queue];

  v6 = objc_loadWeakRetained(&self->_profile);
  database2 = [v6 database];
  isProtectedDataAvailable = [database2 isProtectedDataAvailable];

  if (isProtectedDataAvailable)
  {
    queue = self->_queue;
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_780E0;
    block[3] = &unk_107A88;
    block[4] = self;
    dispatch_async(queue, block);
  }
}

- (void)performIngestionWithContext:(id)context accountIdentifiers:(id)identifiers completion:(id)completion
{
  completionCopy = completion;
  identifiersCopy = identifiers;
  v10 = [context copy];
  v11 = [HDClinicalIngestionTask alloc];
  WeakRetained = objc_loadWeakRetained(&self->_profileExtension);
  v15[0] = _NSConcreteStackBlock;
  v15[1] = 3221225472;
  v15[2] = sub_781F4;
  v15[3] = &unk_108568;
  v16 = completionCopy;
  v13 = completionCopy;
  v14 = [(HDClinicalIngestionTask *)v11 initWithContext:v10 extension:WeakRetained accountIdentifiers:identifiersCopy completion:v15];

  [(HDClinicalIngestionManager *)self _addIngestionTask:v14];
}

- (void)didReceiveFHIRResourceSyncEntities
{
  v3 = objc_retainBlock(self->_unitTesting_didCallDidReceiveFHIRResourceSyncEntities);
  v4 = v3;
  if (v3)
  {
    (*(v3 + 2))(v3);
  }

  queue = self->_queue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_782C0;
  block[3] = &unk_107A88;
  block[4] = self;
  dispatch_async(queue, block);
}

- (void)_addIngestionTask:(id)task
{
  taskCopy = task;
  v12[0] = _NSConcreteStackBlock;
  v12[1] = 3221225472;
  v12[2] = sub_784A8;
  v12[3] = &unk_108590;
  v12[4] = self;
  [taskCopy setWillBeginFetchingAndExtracting:v12];
  v11[0] = _NSConcreteStackBlock;
  v11[1] = 3221225472;
  v11[2] = sub_784B0;
  v11[3] = &unk_108590;
  v11[4] = self;
  [taskCopy setDidFinishFetchingAndExtracting:v11];
  _HKInitializeLogging();
  v5 = HKLogHealthRecords;
  if (os_log_type_enabled(HKLogHealthRecords, OS_LOG_TYPE_DEFAULT))
  {
    v6 = v5;
    v7 = objc_opt_class();
    v8 = NSStringFromClass(v7);
    *buf = 138543618;
    v14 = v8;
    v15 = 2114;
    v16 = taskCopy;
    _os_log_impl(&dword_0, v6, OS_LOG_TYPE_DEFAULT, "%{public}@ Adding ingestion task %{public}@", buf, 0x16u);
  }

  [(NSOperationQueue *)self->_ingestionOperationQueue addOperation:taskCopy];
  queue = self->_queue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_784BC;
  block[3] = &unk_107A88;
  block[4] = self;
  dispatch_async(queue, block);
}

- (void)_taskWillReallyBegin
{
  queue = self->_queue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_78574;
  block[3] = &unk_107A88;
  block[4] = self;
  dispatch_async(queue, block);
}

- (void)_taskDidFinish:(id)finish
{
  finishCopy = finish;
  hasNewRecords = [finishCopy hasNewRecords];
  countOfAllRecords = [finishCopy countOfAllRecords];
  countOfAllLabs = [finishCopy countOfAllLabs];
  countOfPinnedLabs = [finishCopy countOfPinnedLabs];
  v9 = [finishCopy description];
  v10 = v9;
  v11 = @"<no task>";
  if (v9)
  {
    v11 = v9;
  }

  v12 = v11;

  v13 = +[_HKBehavior sharedBehavior];
  showSensitiveLogItems = [v13 showSensitiveLogItems];

  _HKInitializeLogging();
  v15 = HKLogHealthRecords;
  v16 = os_log_type_enabled(HKLogHealthRecords, OS_LOG_TYPE_DEFAULT);
  if (showSensitiveLogItems)
  {
    if (v16)
    {
      v17 = v15;
      v18 = objc_opt_class();
      v19 = NSStringFromClass(v18);
      *buf = 138544642;
      v36 = v19;
      v37 = 2114;
      v38 = finishCopy;
      v39 = 2048;
      v40 = countOfAllRecords;
      v41 = 2048;
      v42 = countOfAllLabs;
      v43 = 2048;
      v44 = countOfPinnedLabs;
      v45 = 1024;
      v46 = hasNewRecords;
      v20 = "%{public}@ Finished ingestion task %{public}@, count of records: %lu, labs: %lu, pinned labs: %lu, should notify: %d";
      v21 = v17;
      v22 = 58;
LABEL_8:
      _os_log_impl(&dword_0, v21, OS_LOG_TYPE_DEFAULT, v20, buf, v22);
    }
  }

  else if (v16)
  {
    v17 = v15;
    v23 = objc_opt_class();
    v19 = NSStringFromClass(v23);
    *buf = 138543874;
    v36 = v19;
    v37 = 2114;
    v38 = finishCopy;
    v39 = 1024;
    LODWORD(v40) = hasNewRecords;
    v20 = "%{public}@ Finished ingestion task %{public}@, should notify: %d";
    v21 = v17;
    v22 = 28;
    goto LABEL_8;
  }

  v24 = [HDDaemonTransaction transactionWithOwner:finishCopy activityName:@"Cleanup"];
  queue = self->_queue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_78840;
  block[3] = &unk_1085B8;
  v34 = hasNewRecords;
  block[4] = self;
  v29 = v12;
  v32 = countOfAllRecords;
  v33 = countOfAllLabs;
  v30 = v24;
  v31 = countOfPinnedLabs;
  v26 = v24;
  v27 = v12;
  dispatch_async(queue, block);
}

- (void)_queue_setIngestionState:(int64_t)state
{
  dispatch_assert_queue_V2(self->_queue);
  if (self->_ingestionState != state)
  {
    ingestionStateObserverSet = self->_ingestionStateObserverSet;
    v6[0] = _NSConcreteStackBlock;
    v6[1] = 3221225472;
    v6[2] = sub_78980;
    v6[3] = &unk_1085E0;
    v6[4] = self;
    v6[5] = state;
    [(HKObserverSet *)ingestionStateObserverSet notifyObservers:v6];
    self->_ingestionState = state;
  }
}

- (void)database:(id)database protectedDataDidBecomeAvailable:(BOOL)available
{
  availableCopy = available;
  dispatch_assert_queue_V2(self->_queue);
  if (availableCopy)
  {

    [(HDClinicalIngestionManager *)self _queue_performProtectedDataAvailableChecks];
  }
}

- (void)scheduleIngestionWithReason:(id)reason
{
  v10 = _NSConcreteStackBlock;
  v11 = 3221225472;
  v12 = sub_78B54;
  v13 = &unk_108608;
  selfCopy = self;
  reasonCopy = reason;
  v15 = reasonCopy;
  v5 = [HDMaintenanceOperation maintenanceOperationWithName:reasonCopy asynchronousBlock:&v10];
  _HKInitializeLogging();
  v6 = HKLogHealthRecords;
  if (os_log_type_enabled(HKLogHealthRecords, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v17 = reasonCopy;
    _os_log_impl(&dword_0, v6, OS_LOG_TYPE_DEFAULT, "Scheduling ingestion on maintenance coordinator with reason: %@", buf, 0xCu);
  }

  WeakRetained = objc_loadWeakRetained(&self->_profile);
  daemon = [WeakRetained daemon];
  maintenanceWorkCoordinator = [daemon maintenanceWorkCoordinator];
  [maintenanceWorkCoordinator enqueueMaintenanceOperation:v5];
}

- (void)didRecieveHealthRecordsQueryNotification:(id)notification
{
  queue = self->_queue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_78BD8;
  block[3] = &unk_107A88;
  block[4] = self;
  dispatch_async(queue, block);
}

- (BOOL)_queue_shouldScheduleIngestion
{
  dispatch_assert_queue_V2(self->_queue);
  ingestionSchedulingBlockedUntil = self->_ingestionSchedulingBlockedUntil;
  v4 = +[NSDate date];
  LOBYTE(ingestionSchedulingBlockedUntil) = [(NSDate *)ingestionSchedulingBlockedUntil hk_isAfterDate:v4];

  return ingestionSchedulingBlockedUntil ^ 1;
}

- (void)_resetIngestionScheduleBlock
{
  dispatch_assert_queue_not_V2(self->_queue);
  queue = self->_queue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_78D64;
  block[3] = &unk_107A88;
  block[4] = self;
  dispatch_sync(queue, block);
}

- (void)performPeriodicIngestionWithCompletion:(id)completion
{
  completionCopy = completion;
  v5 = [[HDClinicalIngestionTaskContext alloc] initWithOptions:1 reason:@"periodic ingestion"];
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_78E40;
  v7[3] = &unk_106960;
  v8 = completionCopy;
  v6 = completionCopy;
  [(HDClinicalIngestionManager *)self performIngestionWithContext:v5 accountIdentifiers:0 completion:v7];
}

- (void)_performMaintenanceIngestionWithReason:(id)reason completion:(id)completion
{
  reasonCopy = reason;
  completionCopy = completion;
  v8 = [[HDClinicalIngestionTaskContext alloc] initWithOptions:0 reason:reasonCopy];
  v11[0] = _NSConcreteStackBlock;
  v11[1] = 3221225472;
  v11[2] = sub_78FA8;
  v11[3] = &unk_108630;
  v12 = reasonCopy;
  v13 = completionCopy;
  v9 = completionCopy;
  v10 = reasonCopy;
  [(HDClinicalIngestionManager *)self performIngestionWithContext:v8 accountIdentifiers:0 completion:v11];
}

- (void)_performExtractionWithReason:(id)reason completion:(id)completion
{
  reasonCopy = reason;
  completionCopy = completion;
  v8 = [[HDClinicalIngestionTaskContext alloc] initWithOptions:6 reason:reasonCopy];
  v11[0] = _NSConcreteStackBlock;
  v11[1] = 3221225472;
  v11[2] = sub_79110;
  v11[3] = &unk_108630;
  v12 = reasonCopy;
  v13 = completionCopy;
  v9 = completionCopy;
  v10 = reasonCopy;
  [(HDClinicalIngestionManager *)self performIngestionWithContext:v8 accountIdentifiers:0 completion:v11];
}

- (void)_scheduleExtractionWithReason:(id)reason
{
  reasonCopy = reason;
  v5 = reasonCopy;
  if (!self->_unitTesting_preventExtractionScheduling)
  {
    v10 = _NSConcreteStackBlock;
    v11 = 3221225472;
    v12 = sub_792E4;
    v13 = &unk_108608;
    selfCopy = self;
    v15 = reasonCopy;
    v6 = [HDMaintenanceOperation maintenanceOperationWithName:v15 asynchronousBlock:&v10];
    _HKInitializeLogging();
    if (os_log_type_enabled(HKLogHealthRecords, OS_LOG_TYPE_DEBUG))
    {
      sub_A6BF8();
    }

    WeakRetained = objc_loadWeakRetained(&self->_profile);
    daemon = [WeakRetained daemon];
    maintenanceWorkCoordinator = [daemon maintenanceWorkCoordinator];
    [maintenanceWorkCoordinator enqueueMaintenanceOperation:v6];
  }
}

- (void)_queue_didReceiveFHIRResourceSyncEntities
{
  dispatch_assert_queue_V2(self->_queue);
  WeakRetained = objc_loadWeakRetained(&self->_profile);
  daemon = [WeakRetained daemon];
  contentProtectionManager = [daemon contentProtectionManager];
  isProtectedDataAvailable = [contentProtectionManager isProtectedDataAvailable];

  if (isProtectedDataAvailable)
  {

    [(HDClinicalIngestionManager *)self _scheduleExtractionWithReason:@"sync entities inserted"];
  }

  else
  {
    self->_scheduleExtractionOnProtectedDataBecomingAvailable = 1;
  }
}

- (BOOL)_enableCHRNotificationsIfNeeded
{
  if (![(HDClinicalIngestionManager *)self _isCHRNotifcationsEnabled])
  {
    return 1;
  }

  keyValueDomain = self->_keyValueDomain;
  v7 = 0;
  v4 = [(HDKeyValueDomain *)keyValueDomain setNumber:&__kCFBooleanTrue forKey:HDHRSNotificationKeyValueDomainKey error:&v7];
  v5 = v7;
  if ((v4 & 1) == 0)
  {
    _HKInitializeLogging();
    if (os_log_type_enabled(HKLogHealthRecords, OS_LOG_TYPE_ERROR))
    {
      sub_A6CA8();
    }
  }

  return v4;
}

- (BOOL)_isCHRNotifcationsEnabled
{
  keyValueDomain = self->_keyValueDomain;
  v7 = 0;
  v3 = [(HDKeyValueDomain *)keyValueDomain numberForKey:HDHRSNotificationKeyValueDomainKey error:&v7];
  v4 = v7;
  if (!v3)
  {
    _HKInitializeLogging();
    if (v4)
    {
      if (os_log_type_enabled(HKLogHealthRecords, OS_LOG_TYPE_ERROR))
      {
        sub_A6D4C();
      }

      v3 = 0;
    }

    else
    {
      if (os_log_type_enabled(HKLogHealthRecords, OS_LOG_TYPE_DEBUG))
      {
        sub_A6DF0();
      }

      v3 = &off_1103A8;
    }
  }

  bOOLValue = [v3 BOOLValue];

  return bOOLValue;
}

- (BOOL)_shouldFireNotifications
{
  WeakRetained = objc_loadWeakRetained(&self->_profile);
  daemon = [WeakRetained daemon];
  primaryProfile = [daemon primaryProfile];
  notificationManager = [primaryProfile notificationManager];

  if (!notificationManager)
  {
    _HKInitializeLogging();
    v17 = HKLogHealthRecords;
    if (os_log_type_enabled(HKLogHealthRecords, OS_LOG_TYPE_FAULT))
    {
      sub_A6E94(v17);
    }

    goto LABEL_12;
  }

  v7 = objc_loadWeakRetained(&self->_profile);
  daemon2 = [v7 daemon];
  behavior = [daemon2 behavior];
  healthAppHiddenOrNotInstalled = [behavior healthAppHiddenOrNotInstalled];

  if (healthAppHiddenOrNotInstalled)
  {
    _HKInitializeLogging();
    v11 = HKLogHealthRecords;
    if (os_log_type_enabled(HKLogHealthRecords, OS_LOG_TYPE_INFO))
    {
      v12 = v11;
      logDescription = [(HDClinicalIngestionManager *)self logDescription];
      v21 = 138543362;
      v22 = logDescription;
      v14 = "%{public}@: not posting notification for new health records, app is hidden or deleted";
      v15 = v12;
      v16 = 12;
LABEL_11:
      _os_log_impl(&dword_0, v15, OS_LOG_TYPE_INFO, v14, &v21, v16);

      goto LABEL_12;
    }

    goto LABEL_12;
  }

  if (![(HDClinicalIngestionManager *)self _isCHRNotifcationsEnabled])
  {
    _HKInitializeLogging();
    v19 = HKLogHealthRecords;
    if (os_log_type_enabled(HKLogHealthRecords, OS_LOG_TYPE_INFO))
    {
      v12 = v19;
      logDescription = [(HDClinicalIngestionManager *)self logDescription];
      v21 = 138543618;
      v22 = logDescription;
      v23 = 2114;
      v24 = HDHRSNotificationKeyValueDomainKey;
      v14 = "%{public}@: not posting notification for new health records, %{public}@ is OFF";
      v15 = v12;
      v16 = 22;
      goto LABEL_11;
    }

LABEL_12:
    v18 = 0;
    goto LABEL_13;
  }

  v18 = 1;
LABEL_13:

  return v18;
}

- (void)_notifyForNewHealthRecordsFromTask:(id)task
{
  taskCopy = task;
  if ([(HDClinicalIngestionManager *)self _shouldFireNotifications])
  {
    WeakRetained = objc_loadWeakRetained(&self->_profile);
    daemon = [WeakRetained daemon];
    primaryProfile = [daemon primaryProfile];
    notificationManager = [primaryProfile notificationManager];

    v9 = [NSString localizedUserNotificationStringForKey:@"HEALTH_RECORDS_NOTIF_TITLE" arguments:0];
    v10 = [NSString localizedUserNotificationStringForKey:@"HEALTH_RECORDS_NOTIF_BODY_NEW_DATA" arguments:0];
    _HKInitializeLogging();
    v11 = HKLogHealthRecords;
    if (os_log_type_enabled(HKLogHealthRecords, OS_LOG_TYPE_DEFAULT))
    {
      v12 = v11;
      logDescription = [(HDClinicalIngestionManager *)self logDescription];
      *buf = 138543618;
      v18 = logDescription;
      v19 = 2114;
      v20 = taskCopy;
      _os_log_impl(&dword_0, v12, OS_LOG_TYPE_DEFAULT, "%{public}@: posting new health records notification for task %{public}@", buf, 0x16u);
    }

    v14 = kHKNotificationsHealthRecordsIdentifier;
    v15[0] = _NSConcreteStackBlock;
    v15[1] = 3221225472;
    v15[2] = sub_79AEC;
    v15[3] = &unk_107078;
    v15[4] = self;
    v16 = taskCopy;
    [notificationManager postNotificationWithTitle:v9 body:v10 categoryIdentifier:v14 subtitle:0 domain:3 accessoryImageName:0 header:0 completion:v15];
  }
}

- (void)_notifyForNewHealthLabRecordsFromTask:(id)task countOfAllLabs:(unint64_t)labs countOfPinnedLabs:(unint64_t)pinnedLabs
{
  taskCopy = task;
  _shouldFireNotifications = [(HDClinicalIngestionManager *)self _shouldFireNotifications];
  if (pinnedLabs && _shouldFireNotifications)
  {
    WeakRetained = objc_loadWeakRetained(&self->_profile);
    daemon = [WeakRetained daemon];
    primaryProfile = [daemon primaryProfile];
    notificationManager = [primaryProfile notificationManager];

    v13 = [NSString localizedUserNotificationStringForKey:@"HEALTH_RECORDS_NOTIF_LABS_TITLE" arguments:0];
    v14 = HKHealthKitFrameworkBundle();
    v15 = [v14 localizedStringForKey:@"HEALTH_RECORDS_NOTIF_LABS_BODY_NEW_DATA_PINNED" value:&stru_1090E8 table:@"Localizable-Clinical-Health-Records"];
    pinnedLabs = [NSString localizedStringWithFormat:v15, pinnedLabs];

    _HKInitializeLogging();
    v17 = HKLogHealthRecords;
    if (os_log_type_enabled(HKLogHealthRecords, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138543362;
      v23 = taskCopy;
      _os_log_impl(&dword_0, v17, OS_LOG_TYPE_DEFAULT, "Posting new health lab records notification for task %{public}@", buf, 0xCu);
    }

    v18 = kHKNotificationsHealthRecordsIdentifier;
    v19 = [NSURL URLWithString:@"x-apple-health://ViewHealthRecordsCategoryRoom/2"];
    v20[0] = _NSConcreteStackBlock;
    v20[1] = 3221225472;
    v20[2] = sub_79DA0;
    v20[3] = &unk_1078C8;
    v21 = taskCopy;
    [notificationManager postNotificationWithTitle:v13 body:pinnedLabs categoryIdentifier:v18 subtitle:0 domain:3 url:v19 accessoryImageName:0 header:0 completion:v20];
  }
}

- (HDProfile)profile
{
  WeakRetained = objc_loadWeakRetained(&self->_profile);

  return WeakRetained;
}

@end