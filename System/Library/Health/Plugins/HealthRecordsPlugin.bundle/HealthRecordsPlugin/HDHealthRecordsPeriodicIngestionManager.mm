@interface HDHealthRecordsPeriodicIngestionManager
- (HDHealthDaemon)healthDaemon;
- (HDHealthRecordsPeriodicIngestionManager)init;
- (HDHealthRecordsPeriodicIngestionManager)initWithHealthDaemon:(id)a3;
- (id)logPrefix;
- (void)_ingestQueue_triggerBackgroundIngestionOnAllProfilesWithProfileManager:(id)a3 completion:(id)a4;
- (void)performPeriodicActivity:(id)a3 completion:(id)a4;
- (void)periodicActivity:(id)a3 configureXPCActivityCriteria:(id)a4;
- (void)profileDidBecomeReady:(id)a3;
@end

@implementation HDHealthRecordsPeriodicIngestionManager

- (HDHealthRecordsPeriodicIngestionManager)init
{
  v3 = NSStringFromSelector(a2);
  [NSException raise:NSInvalidArgumentException format:@"The -%@ method is not available on %@", v3, objc_opt_class()];

  return 0;
}

- (HDHealthRecordsPeriodicIngestionManager)initWithHealthDaemon:(id)a3
{
  v4 = a3;
  v10.receiver = self;
  v10.super_class = HDHealthRecordsPeriodicIngestionManager;
  v5 = [(HDHealthRecordsPeriodicIngestionManager *)&v10 init];
  if (v5)
  {
    v6 = HKCreateSerialDispatchQueueWithQOSClass();
    ingestQueue = v5->_ingestQueue;
    v5->_ingestQueue = v6;

    objc_storeWeak(&v5->_healthDaemon, v4);
    v8 = [v4 primaryProfile];
    [v8 registerProfileReadyObserver:v5 queue:0];
  }

  return v5;
}

- (void)profileDidBecomeReady:(id)a3
{
  v8 = a3;
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    sub_A4BD8(a2, self);
  }

  v5 = [HDPeriodicActivity alloc];
  v6 = [v5 initWithProfile:v8 name:@"com.apple.healthd.healthrecords.ingestion" interval:self delegate:HKLogHealthRecords loggingCategory:XPC_ACTIVITY_INTERVAL_7_DAYS];
  periodicActivity = self->_periodicActivity;
  self->_periodicActivity = v6;
}

- (void)_ingestQueue_triggerBackgroundIngestionOnAllProfilesWithProfileManager:(id)a3 completion:(id)a4
{
  v6 = a3;
  v23 = a4;
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
  obj = [v6 allProfileIdentifiers];
  v9 = [obj countByEnumeratingWithState:&v34 objects:v42 count:16];
  if (v9)
  {
    v10 = v9;
    v11 = *v35;
    v24 = self;
    do
    {
      v12 = 0;
      do
      {
        if (*v35 != v11)
        {
          objc_enumerationMutation(obj);
        }

        v13 = [v6 profileForIdentifier:*(*(&v34 + 1) + 8 * v12)];
        v14 = [v13 healthRecordsExtension];
        v15 = [v14 ingestionManager];

        if (v15)
        {
          _HKInitializeLogging();
          v16 = HKLogHealthRecords;
          if (os_log_type_enabled(HKLogHealthRecords, OS_LOG_TYPE_DEBUG))
          {
            v17 = v16;
            v18 = [(HDHealthRecordsPeriodicIngestionManager *)self logPrefix];
            *buf = 138543618;
            v39 = v18;
            v40 = 2114;
            v41 = v13;
            _os_log_debug_impl(&dword_0, v17, OS_LOG_TYPE_DEBUG, "%{public}@ triggering background ingestion on profile %{public}@", buf, 0x16u);

            self = v24;
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
          [v15 performPeriodicIngestionWithCompletion:v30];
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
  v29 = v23;
  v21 = v23;
  v22 = v26;
  dispatch_group_notify(v8, ingestQueue, block);
}

- (void)periodicActivity:(id)a3 configureXPCActivityCriteria:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [v6 name];
  v9 = [v8 isEqualToString:@"com.apple.healthd.healthrecords.ingestion"];

  _HKInitializeLogging();
  v10 = HKLogHealthRecords;
  if (v9)
  {
    if (os_log_type_enabled(HKLogHealthRecords, OS_LOG_TYPE_DEFAULT))
    {
      v11 = v10;
      v12 = [(HDHealthRecordsPeriodicIngestionManager *)self logPrefix];
      v13 = [v6 name];
      v14 = 138543618;
      v15 = v12;
      v16 = 2114;
      v17 = v13;
      _os_log_impl(&dword_0, v11, OS_LOG_TYPE_DEFAULT, "%{public}@ configuring periodic activity %{public}@", &v14, 0x16u);
    }

    xpc_dictionary_set_string(v7, XPC_ACTIVITY_PRIORITY, XPC_ACTIVITY_PRIORITY_UTILITY);
    xpc_dictionary_set_BOOL(v7, XPC_ACTIVITY_ALLOW_BATTERY, 1);
    xpc_dictionary_set_BOOL(v7, XPC_ACTIVITY_REQUIRE_NETWORK_CONNECTIVITY, 1);
    xpc_dictionary_set_BOOL(v7, XPC_ACTIVITY_REQUIRE_INEXPENSIVE_NETWORK_CONNECTIVITY, 1);
  }

  else if (os_log_type_enabled(HKLogHealthRecords, OS_LOG_TYPE_ERROR))
  {
    sub_A4E40(v10, self, v6);
  }
}

- (void)performPeriodicActivity:(id)a3 completion:(id)a4
{
  v6 = a4;
  v7 = [a3 name];
  if ([v7 isEqualToString:@"com.apple.healthd.healthrecords.ingestion"])
  {
    WeakRetained = objc_loadWeakRetained(&self->_healthDaemon);
    v9 = [WeakRetained primaryProfile];
    v10 = [v9 daemon];
    v11 = [v10 profileManager];

    if (v11)
    {
      ingestQueue = self->_ingestQueue;
      v15[0] = _NSConcreteStackBlock;
      v15[1] = 3221225472;
      v15[2] = sub_5EE3C;
      v15[3] = &unk_107168;
      v15[4] = self;
      v16 = v7;
      v17 = v11;
      v18 = v6;
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

      (*(v6 + 2))(v6, 3, 0, 0.0);
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

    (*(v6 + 2))(v6, 1, 0, 0.0);
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