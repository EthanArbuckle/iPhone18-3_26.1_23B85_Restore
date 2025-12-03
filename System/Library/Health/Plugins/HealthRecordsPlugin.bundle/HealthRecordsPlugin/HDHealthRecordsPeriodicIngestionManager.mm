@interface HDHealthRecordsPeriodicIngestionManager
- (HDHealthDaemon)healthDaemon;
- (HDHealthRecordsPeriodicIngestionManager)init;
- (HDHealthRecordsPeriodicIngestionManager)initWithHealthDaemon:(id)daemon;
- (id)logPrefix;
- (void)_ingestQueue_triggerBackgroundIngestionOnAllProfilesWithProfileManager:(id)manager completion:(id)completion;
- (void)performPeriodicActivity:(id)activity completion:(id)completion;
- (void)periodicActivity:(id)activity configureXPCActivityCriteria:(id)criteria;
- (void)profileDidBecomeReady:(id)ready;
@end

@implementation HDHealthRecordsPeriodicIngestionManager

- (HDHealthRecordsPeriodicIngestionManager)init
{
  v3 = NSStringFromSelector(a2);
  [NSException raise:NSInvalidArgumentException format:@"The -%@ method is not available on %@", v3, objc_opt_class()];

  return 0;
}

- (HDHealthRecordsPeriodicIngestionManager)initWithHealthDaemon:(id)daemon
{
  daemonCopy = daemon;
  v10.receiver = self;
  v10.super_class = HDHealthRecordsPeriodicIngestionManager;
  v5 = [(HDHealthRecordsPeriodicIngestionManager *)&v10 init];
  if (v5)
  {
    v6 = HKCreateSerialDispatchQueueWithQOSClass();
    ingestQueue = v5->_ingestQueue;
    v5->_ingestQueue = v6;

    objc_storeWeak(&v5->_healthDaemon, daemonCopy);
    primaryProfile = [daemonCopy primaryProfile];
    [primaryProfile registerProfileReadyObserver:v5 queue:0];
  }

  return v5;
}

- (void)profileDidBecomeReady:(id)ready
{
  readyCopy = ready;
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    sub_A4BD8(a2, self);
  }

  v5 = [HDPeriodicActivity alloc];
  v6 = [v5 initWithProfile:readyCopy name:@"com.apple.healthd.healthrecords.ingestion" interval:self delegate:HKLogHealthRecords loggingCategory:XPC_ACTIVITY_INTERVAL_7_DAYS];
  periodicActivity = self->_periodicActivity;
  self->_periodicActivity = v6;
}

- (void)_ingestQueue_triggerBackgroundIngestionOnAllProfilesWithProfileManager:(id)manager completion:(id)completion
{
  managerCopy = manager;
  completionCopy = completion;
  dispatch_assert_queue_V2(self->_ingestQueue);
  _HKInitializeLogging();
  v7 = HKLogHealthRecords;
  if (os_log_type_enabled(HKLogHealthRecords, OS_LOG_TYPE_DEBUG))
  {
    sub_A4C54(v7, self);
  }

  v8 = dispatch_group_create();
  v26 = objc_alloc_init(NSMutableArray);
  v34 = 0u;
  v35 = 0u;
  v36 = 0u;
  v37 = 0u;
  obj = [managerCopy allProfileIdentifiers];
  v9 = [obj countByEnumeratingWithState:&v34 objects:v42 count:16];
  if (v9)
  {
    v10 = v9;
    v11 = *v35;
    selfCopy = self;
    do
    {
      v12 = 0;
      do
      {
        if (*v35 != v11)
        {
          objc_enumerationMutation(obj);
        }

        v13 = [managerCopy profileForIdentifier:*(*(&v34 + 1) + 8 * v12)];
        healthRecordsExtension = [v13 healthRecordsExtension];
        ingestionManager = [healthRecordsExtension ingestionManager];

        if (ingestionManager)
        {
          _HKInitializeLogging();
          v16 = HKLogHealthRecords;
          if (os_log_type_enabled(HKLogHealthRecords, OS_LOG_TYPE_DEBUG))
          {
            v17 = v16;
            logPrefix = [(HDHealthRecordsPeriodicIngestionManager *)self logPrefix];
            *buf = 138543618;
            v39 = logPrefix;
            v40 = 2114;
            v41 = v13;
            _os_log_debug_impl(&dword_0, v17, OS_LOG_TYPE_DEBUG, "%{public}@ triggering background ingestion on profile %{public}@", buf, 0x16u);

            self = selfCopy;
          }

          dispatch_group_enter(v8);
          v30[0] = _NSConcreteStackBlock;
          v30[1] = 3221225472;
          v30[2] = sub_5E710;
          v30[3] = &unk_107050;
          v30[4] = self;
          v31 = v26;
          v32 = v13;
          v33 = v8;
          [ingestionManager performPeriodicIngestionWithCompletion:v30];
        }

        v12 = v12 + 1;
      }

      while (v10 != v12);
      v10 = [obj countByEnumeratingWithState:&v34 objects:v42 count:16];
    }

    while (v10);
  }

  _HKInitializeLogging();
  v19 = HKLogHealthRecords;
  if (os_log_type_enabled(HKLogHealthRecords, OS_LOG_TYPE_DEBUG))
  {
    sub_A4CE8(v19, self);
  }

  ingestQueue = self->_ingestQueue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_5E93C;
  block[3] = &unk_107190;
  block[4] = self;
  v28 = v26;
  v29 = completionCopy;
  v21 = completionCopy;
  v22 = v26;
  dispatch_group_notify(v8, ingestQueue, block);
}

- (void)periodicActivity:(id)activity configureXPCActivityCriteria:(id)criteria
{
  activityCopy = activity;
  criteriaCopy = criteria;
  name = [activityCopy name];
  v9 = [name isEqualToString:@"com.apple.healthd.healthrecords.ingestion"];

  _HKInitializeLogging();
  v10 = HKLogHealthRecords;
  if (v9)
  {
    if (os_log_type_enabled(HKLogHealthRecords, OS_LOG_TYPE_DEFAULT))
    {
      v11 = v10;
      logPrefix = [(HDHealthRecordsPeriodicIngestionManager *)self logPrefix];
      name2 = [activityCopy name];
      v14 = 138543618;
      v15 = logPrefix;
      v16 = 2114;
      v17 = name2;
      _os_log_impl(&dword_0, v11, OS_LOG_TYPE_DEFAULT, "%{public}@ configuring periodic activity %{public}@", &v14, 0x16u);
    }

    xpc_dictionary_set_string(criteriaCopy, XPC_ACTIVITY_PRIORITY, XPC_ACTIVITY_PRIORITY_UTILITY);
    xpc_dictionary_set_BOOL(criteriaCopy, XPC_ACTIVITY_ALLOW_BATTERY, 1);
    xpc_dictionary_set_BOOL(criteriaCopy, XPC_ACTIVITY_REQUIRE_NETWORK_CONNECTIVITY, 1);
    xpc_dictionary_set_BOOL(criteriaCopy, XPC_ACTIVITY_REQUIRE_INEXPENSIVE_NETWORK_CONNECTIVITY, 1);
  }

  else if (os_log_type_enabled(HKLogHealthRecords, OS_LOG_TYPE_ERROR))
  {
    sub_A4E40(v10, self, activityCopy);
  }
}

- (void)performPeriodicActivity:(id)activity completion:(id)completion
{
  completionCopy = completion;
  name = [activity name];
  if ([name isEqualToString:@"com.apple.healthd.healthrecords.ingestion"])
  {
    WeakRetained = objc_loadWeakRetained(&self->_healthDaemon);
    primaryProfile = [WeakRetained primaryProfile];
    daemon = [primaryProfile daemon];
    profileManager = [daemon profileManager];

    if (profileManager)
    {
      ingestQueue = self->_ingestQueue;
      v15[0] = _NSConcreteStackBlock;
      v15[1] = 3221225472;
      v15[2] = sub_5EE3C;
      v15[3] = &unk_107168;
      v15[4] = self;
      v16 = name;
      v17 = profileManager;
      v18 = completionCopy;
      dispatch_async(ingestQueue, v15);
    }

    else
    {
      _HKInitializeLogging();
      v14 = HKLogHealthRecords;
      if (os_log_type_enabled(HKLogHealthRecords, OS_LOG_TYPE_FAULT))
      {
        sub_A4FA8(v14);
      }

      (*(completionCopy + 2))(completionCopy, 3, 0, 0.0);
    }
  }

  else
  {
    _HKInitializeLogging();
    v13 = HKLogHealthRecords;
    if (os_log_type_enabled(HKLogHealthRecords, OS_LOG_TYPE_ERROR))
    {
      sub_A4F00(v13);
    }

    (*(completionCopy + 2))(completionCopy, 1, 0, 0.0);
  }
}

- (id)logPrefix
{
  v2 = objc_opt_class();

  return NSStringFromClass(v2);
}

- (HDHealthDaemon)healthDaemon
{
  WeakRetained = objc_loadWeakRetained(&self->_healthDaemon);

  return WeakRetained;
}

@end