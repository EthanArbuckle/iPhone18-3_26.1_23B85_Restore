@interface AMSEngagement
+ (NSNotificationCenter)notificationCenter;
+ (NSString)bagSubProfile;
+ (NSString)bagSubProfileVersion;
+ (OS_dispatch_queue)_engagementQueue;
+ (OS_dispatch_queue)_notifyQueue;
+ (double)_enqueueTimeout;
+ (id)_connection;
+ (id)createBagForSubProfile;
+ (void)_recordLoggingEventWithBag:(id)bag enqueueData:(id)data eventType:(id)type userInfo:(id)info destinations:(id)destinations error:(id)error;
- (AMSEngagement)initWithBag:(id)bag;
- (id)_createCombinedLogKey;
- (id)_enqueue:(id)_enqueue;
- (id)_enqueueWithContext:(id)context;
- (id)_parseActions:(id)actions;
- (id)contentInfoForApp:(id)app cacheKey:(id)key version:(id)version;
- (id)enqueueData:(id)data to:(id)to;
- (id)enqueueEvent:(id)event;
- (id)enqueueMessageEvent:(id)event;
- (id)fetchMetricsIdentifiers;
- (id)manualSyncMetricsIdentifiers;
- (id)syncDestinations:(id)destinations;
- (id)syncMetricsIdentifiers;
- (id)syncWithRequest:(id)request;
- (id)treatmentStoreService;
- (void)_connectionErrorNotification;
- (void)_failAllRunningPromisesWithError:(id)error;
- (void)_handleServiceResponse:(id)response;
- (void)_manageRunningPromise:(id)promise;
- (void)_observeNotifications;
- (void)_pushEventReceived:(id)received;
- (void)_removeRunningPromise:(id)promise;
- (void)_scheduleSyncIfNeeded:(id)needed;
- (void)addCachePolicy:(int64_t)policy forPlacements:(id)placements serviceType:(id)type;
- (void)addObserver:(id)observer placement:(id)placement serviceType:(id)type;
- (void)addObserver:(id)observer placement:(id)placement serviceType:(id)type queue:(id)queue;
- (void)addObserver:(id)observer placements:(id)placements serviceType:(id)type;
- (void)addObserver:(id)observer placements:(id)placements serviceType:(id)type queue:(id)queue;
- (void)dealloc;
- (void)handleDialogResult:(id)result;
- (void)handlePushEvent:(id)event;
- (void)removeObserver:(id)observer placement:(id)placement serviceType:(id)type;
@end

@implementation AMSEngagement

+ (OS_dispatch_queue)_engagementQueue
{
  if (qword_1ED6E2920 != -1)
  {
    dispatch_once(&qword_1ED6E2920, &__block_literal_global_170);
  }

  v3 = qword_1ED6E2928;

  return v3;
}

+ (id)_connection
{
  _engagementQueue = [self _engagementQueue];
  v15 = 0;
  v16 = &v15;
  v17 = 0x3032000000;
  v18 = __Block_byref_object_copy__24;
  v19 = __Block_byref_object_dispose__24;
  v20 = 0;
  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 3221225472;
  v11[2] = __28__AMSEngagement__connection__block_invoke;
  v11[3] = &unk_1E73B73A0;
  v13 = &v15;
  selfCopy = self;
  v4 = _engagementQueue;
  v12 = v4;
  v5 = v11;
  v6 = v4;
  v7 = AMSLogKey();
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __AMSDispatchSync_block_invoke;
  block[3] = &unk_1E73B36D0;
  v22 = v7;
  v23 = v5;
  v8 = v7;
  dispatch_sync(v6, block);

  v9 = v16[5];
  _Block_object_dispose(&v15, 8);

  return v9;
}

void __33__AMSEngagement__engagementQueue__block_invoke()
{
  v2 = dispatch_get_global_queue(0, 0);
  v0 = dispatch_queue_create_with_target_V2("com.apple.AMSEngagement.engagementQueue", 0, v2);
  v1 = qword_1ED6E2928;
  qword_1ED6E2928 = v0;
}

void __28__AMSEngagement__connection__block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained(&_connection_connection);
  v3 = *(*(a1 + 40) + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = WeakRetained;

  v5 = *(*(*(a1 + 40) + 8) + 40);
  if (!v5)
  {
    v6 = [AMSEngagementConnection alloc];
    v7 = [*(a1 + 48) notificationCenter];
    v8 = [(AMSEngagementConnection *)v6 initWithNotificationCenter:v7];
    v9 = *(*(a1 + 40) + 8);
    v10 = *(v9 + 40);
    *(v9 + 40) = v8;

    [*(*(*(a1 + 40) + 8) + 40) setErrorHandler:&__block_literal_global_162_0];
    objc_storeWeak(&_connection_connection, *(*(*(a1 + 40) + 8) + 40));
    v5 = *(*(*(a1 + 40) + 8) + 40);
  }

  v18[0] = 0;
  v18[1] = v18;
  v18[2] = 0x3032000000;
  v18[3] = __Block_byref_object_copy__24;
  v18[4] = __Block_byref_object_dispose__24;
  v19 = v5;
  v11 = *(a1 + 32);
  v17[0] = MEMORY[0x1E69E9820];
  v17[1] = 3221225472;
  v17[2] = __28__AMSEngagement__connection__block_invoke_3;
  v17[3] = &unk_1E73B3880;
  v17[4] = v18;
  v12 = v17;
  v13 = v11;
  v14 = AMSLogKey();
  v15 = dispatch_time(0, 3000000000);
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __AMSDispatchAfter_block_invoke_0;
  block[3] = &unk_1E73B36D0;
  v21 = v14;
  v22 = v12;
  v16 = v14;
  dispatch_after(v15, v13, block);

  _Block_object_dispose(v18, 8);
}

+ (NSNotificationCenter)notificationCenter
{
  if (_MergedGlobals_104 != -1)
  {
    dispatch_once(&_MergedGlobals_104, &__block_literal_global_45);
  }

  v3 = qword_1ED6E2918;

  return v3;
}

uint64_t __35__AMSEngagement_notificationCenter__block_invoke()
{
  qword_1ED6E2918 = objc_alloc_init(MEMORY[0x1E696AD88]);

  return MEMORY[0x1EEE66BB8]();
}

- (void)_observeNotifications
{
  v3 = +[AMSEngagement notificationCenter];
  [v3 addObserver:self selector:sel__pushEventReceived_ name:0x1F0727A98 object:0];

  v4 = +[AMSEngagement notificationCenter];
  [v4 addObserver:self selector:sel__connectionErrorNotification name:0x1F0727A58 object:0];
}

+ (double)_enqueueTimeout
{
  v2 = +[AMSDefaults engagementExtendTimeouts];
  result = 600.0;
  if (!v2)
  {
    return 6.0;
  }

  return result;
}

void __29__AMSEngagement__notifyQueue__block_invoke()
{
  v2 = dispatch_get_global_queue(0, 0);
  v0 = dispatch_queue_create_with_target_V2("com.apple.AMSEngagement.notify", 0, v2);
  v1 = qword_1ED6E2938;
  qword_1ED6E2938 = v0;
}

+ (OS_dispatch_queue)_notifyQueue
{
  if (qword_1ED6E2930 != -1)
  {
    dispatch_once(&qword_1ED6E2930, &__block_literal_global_173);
  }

  v3 = qword_1ED6E2938;

  return v3;
}

- (void)dealloc
{
  v3 = +[AMSEngagement notificationCenter];
  [v3 removeObserver:self];

  v4.receiver = self;
  v4.super_class = AMSEngagement;
  [(AMSEngagement *)&v4 dealloc];
}

void __38__AMSEngagement_treatmentStoreService__block_invoke(uint64_t a1)
{
  v7 = 0;
  v8 = &v7;
  v9 = 0x3032000000;
  v10 = __Block_byref_object_copy__24;
  v11 = __Block_byref_object_dispose__24;
  v12 = [*(a1 + 32) connection];
  v2 = v8[5];
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = __38__AMSEngagement_treatmentStoreService__block_invoke_2;
  v4[3] = &unk_1E73B72E0;
  v3 = *(a1 + 40);
  v4[4] = *(a1 + 32);
  v6 = &v7;
  v5 = v3;
  [v2 treatmentStoreServiceWithReply:v4];

  _Block_object_dispose(&v7, 8);
}

void __38__AMSEngagement_treatmentStoreService__block_invoke_2(uint64_t a1, void *a2, void *a3)
{
  v10 = a2;
  v5 = a3;
  v6 = *(*(a1 + 48) + 8);
  v7 = *(v6 + 40);
  *(v6 + 40) = 0;

  if (v10)
  {
    [*(a1 + 40) finishWithResult:v10];
  }

  else
  {
    v8 = *(a1 + 40);
    if (v5)
    {
      [v8 finishWithError:v5];
    }

    else
    {
      v9 = AMSError(12, @"Engagement Failure", @"Treatment store service is unavailable", 0);
      [v8 finishWithError:v9];
    }
  }
}

- (id)treatmentStoreService
{
  if (+[AMSDevice deviceIsAudioAccessory])
  {
    v3 = AMSError(12, @"Unavailable", @"The treatment store is unavailable on this device.", 0);
    v4 = [AMSPromise promiseWithError:v3];
  }

  else
  {
    v5 = [[AMSMutablePromise alloc] initWithTimeout:5.0];
    [(AMSEngagement *)self _manageRunningPromise:v5];
    _engagementQueue = [objc_opt_class() _engagementQueue];
    v13[0] = MEMORY[0x1E69E9820];
    v13[1] = 3221225472;
    v13[2] = __38__AMSEngagement_treatmentStoreService__block_invoke;
    v13[3] = &unk_1E73B3DE0;
    v13[4] = self;
    v7 = v5;
    v14 = v7;
    v8 = v13;
    v9 = AMSLogKey();
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __AMSDispatchAsync_block_invoke_3;
    block[3] = &unk_1E73B36D0;
    v16 = v9;
    v17 = v8;
    v10 = v9;
    dispatch_async(_engagementQueue, block);

    v11 = v14;
    v4 = v7;
  }

  return v4;
}

void __28__AMSEngagement__connection__block_invoke_3(uint64_t a1)
{
  v1 = *(*(a1 + 32) + 8);
  v2 = *(v1 + 40);
  *(v1 + 40) = 0;
}

- (id)enqueueMessageEvent:(id)event
{
  eventCopy = event;
  v5 = objc_alloc_init(AMSMutablePromise);
  v6 = [(AMSEngagement *)self enqueueEvent:eventCopy];

  v14[0] = MEMORY[0x1E69E9820];
  v14[1] = 3221225472;
  v14[2] = __48__AMSEngagement_Messaging__enqueueMessageEvent___block_invoke;
  v14[3] = &unk_1E73B70E8;
  v14[4] = self;
  v7 = v5;
  v15 = v7;
  [v6 addSuccessBlock:v14];
  v12[0] = MEMORY[0x1E69E9820];
  v12[1] = 3221225472;
  v12[2] = __48__AMSEngagement_Messaging__enqueueMessageEvent___block_invoke_4;
  v12[3] = &unk_1E73B34B8;
  v8 = v7;
  v13 = v8;
  [v6 addErrorBlock:v12];
  v9 = v13;
  v10 = v8;

  return v8;
}

void __48__AMSEngagement_Messaging__enqueueMessageEvent___block_invoke(uint64_t a1, void *a2)
{
  v18 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = [[AMSEngagementMessageEventResponse alloc] initWithEnqueueResult:v3];

  v5 = [*(a1 + 32) cacheInfo];
  v6 = [v5 filterWithMessage:v4];

  if ([v6 count])
  {
    v7 = +[AMSLogConfig sharedEngagementConfig];
    if (!v7)
    {
      v7 = +[AMSLogConfig sharedConfig];
    }

    v8 = [v7 OSLogObject];
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      v9 = objc_opt_class();
      v10 = AMSLogKey();
      v12 = 138543874;
      v13 = v9;
      v14 = 2114;
      v15 = v10;
      v16 = 2114;
      v17 = v6;
      _os_log_impl(&dword_192869000, v8, OS_LOG_TYPE_DEFAULT, "%{public}@: [%{public}@] Blocked message identifiers: %{public}@", &v12, 0x20u);
    }

    v11 = [*(a1 + 32) connection];
    [v11 notifyBlockedMessages:v6];
  }

  [*(a1 + 40) finishWithResult:v4];
}

- (void)handleDialogResult:(id)result
{
  v11[1] = *MEMORY[0x1E69E9840];
  resultCopy = result;
  originalRequest = [resultCopy originalRequest];
  selectedActionIdentifier = [resultCopy selectedActionIdentifier];

  v6 = [originalRequest locateActionWithIdentifier:selectedActionIdentifier];

  metricsEvent = [v6 metricsEvent];

  if (metricsEvent)
  {
    v8 = [AMSMetrics internalInstanceUsingBag:0];
    metricsEvent2 = [v6 metricsEvent];
    v11[0] = metricsEvent2;
    v10 = [MEMORY[0x1E695DEC8] arrayWithObjects:v11 count:1];
    [v8 enqueueEvents:v10];
  }
}

- (AMSEngagement)initWithBag:(id)bag
{
  bagCopy = bag;
  v20.receiver = self;
  v20.super_class = AMSEngagement;
  v6 = [(AMSEngagement *)&v20 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_bag, bag);
    v8 = +[AMSEngagement _connection];
    connection = v7->_connection;
    v7->_connection = v8;

    weakToStrongObjectsMapTable = [MEMORY[0x1E696AD18] weakToStrongObjectsMapTable];
    observerInfo = v7->_observerInfo;
    v7->_observerInfo = weakToStrongObjectsMapTable;

    v12 = objc_alloc_init(MEMORY[0x1E695DFA8]);
    runningPromises = v7->_runningPromises;
    v7->_runningPromises = v12;

    v14 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    v15 = dispatch_queue_create("com.apple.AMSEngagement.callbackQueue", v14);
    callbackQueue = v7->_callbackQueue;
    v7->_callbackQueue = v15;

    v17 = objc_alloc_init(AMSEngagementMessageCache);
    cacheInfo = v7->_cacheInfo;
    v7->_cacheInfo = v17;

    [(AMSEngagement *)v7 _observeNotifications];
  }

  return v7;
}

- (id)contentInfoForApp:(id)app cacheKey:(id)key version:(id)version
{
  appCopy = app;
  keyCopy = key;
  versionCopy = version;
  v11 = [[AMSMutablePromise alloc] initWithTimeout:5.0];
  [(AMSEngagement *)self _manageRunningPromise:v11];
  _engagementQueue = [objc_opt_class() _engagementQueue];
  v23[0] = MEMORY[0x1E69E9820];
  v23[1] = 3221225472;
  v23[2] = __52__AMSEngagement_contentInfoForApp_cacheKey_version___block_invoke;
  v23[3] = &unk_1E73B7138;
  v23[4] = self;
  v24 = appCopy;
  v25 = keyCopy;
  v26 = versionCopy;
  v13 = v11;
  v27 = v13;
  v14 = v23;
  v15 = versionCopy;
  v16 = keyCopy;
  v17 = appCopy;
  v18 = AMSLogKey();
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __AMSDispatchAsync_block_invoke_3;
  block[3] = &unk_1E73B36D0;
  v29 = v18;
  v30 = v14;
  v19 = v18;
  dispatch_async(_engagementQueue, block);

  v20 = v27;
  v21 = v13;

  return v13;
}

void __52__AMSEngagement_contentInfoForApp_cacheKey_version___block_invoke(uint64_t a1)
{
  v9 = 0;
  v10 = &v9;
  v11 = 0x3032000000;
  v12 = __Block_byref_object_copy__24;
  v13 = __Block_byref_object_dispose__24;
  v14 = [*(a1 + 32) connection];
  v2 = v10[5];
  v3 = *(a1 + 40);
  v4 = *(a1 + 48);
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __52__AMSEngagement_contentInfoForApp_cacheKey_version___block_invoke_16;
  v6[3] = &unk_1E73B7110;
  v6[4] = *(a1 + 32);
  v8 = &v9;
  v5 = *(a1 + 56);
  v7 = *(a1 + 64);
  [v2 contentInfoForApp:v3 cacheKey:v4 version:v5 reply:v6];

  _Block_object_dispose(&v9, 8);
}

void __52__AMSEngagement_contentInfoForApp_cacheKey_version___block_invoke_16(uint64_t a1, void *a2, void *a3)
{
  v10 = a2;
  v5 = a3;
  v6 = *(*(a1 + 48) + 8);
  v7 = *(v6 + 40);
  *(v6 + 40) = 0;

  if (v10)
  {
    [*(a1 + 40) finishWithResult:v10];
  }

  else
  {
    v8 = *(a1 + 40);
    if (v5)
    {
      [v8 finishWithError:v5];
    }

    else
    {
      v9 = AMSError(12, @"Engagement Failure", @"Failed to get content info", 0);
      [v8 finishWithError:v9];
    }
  }
}

- (id)enqueueEvent:(id)event
{
  engagementData = [event engagementData];
  v5 = [(AMSEngagement *)self enqueueData:engagementData];

  return v5;
}

- (id)enqueueData:(id)data to:(id)to
{
  dataCopy = data;
  toCopy = to;
  if (!dataCopy || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
  {
    v8 = @"Invalid Engagement Data";
    v9 = 2;
    goto LABEL_6;
  }

  if (+[AMSEphemeralDefaults suppressEngagement])
  {
    v8 = @"Suppress Engagement";
    v9 = 11;
LABEL_6:
    v10 = AMSError(v9, v8, &stru_1F071BA78, 0);
    v11 = [AMSPromise promiseWithError:v10];

    goto LABEL_7;
  }

  v13 = [objc_alloc(MEMORY[0x1E695DF20]) initWithDictionary:dataCopy copyItems:1];

  v14 = objc_alloc_init(AMSMutablePromise);
  v15 = AMSLogKey();
  _engagementQueue = [objc_opt_class() _engagementQueue];
  v23[0] = MEMORY[0x1E69E9820];
  v23[1] = 3221225472;
  v23[2] = __32__AMSEngagement_enqueueData_to___block_invoke;
  v23[3] = &unk_1E73B7138;
  dataCopy = v13;
  v24 = dataCopy;
  selfCopy = self;
  v26 = toCopy;
  v17 = v14;
  v27 = v17;
  v28 = v15;
  v18 = v23;
  v19 = v15;
  v20 = AMSLogKey();
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __AMSDispatchAsync_block_invoke_3;
  block[3] = &unk_1E73B36D0;
  v30 = v20;
  v31 = v18;
  v21 = v20;
  dispatch_async(_engagementQueue, block);

  v22 = v28;
  v11 = v17;

LABEL_7:

  return v11;
}

void __32__AMSEngagement_enqueueData_to___block_invoke(uint64_t a1)
{
  v98 = *MEMORY[0x1E69E9840];
  v2 = AMSSetLogKey(0);
  v3 = [MEMORY[0x1E695DF00] now];
  v4 = [*(a1 + 32) objectForKeyedSubscript:@"eventType"];
  objc_opt_class();
  v5 = 0;
  if (objc_opt_isKindOfClass())
  {
    v5 = v4;
  }

  v6 = &stru_1F071BA78;
  if (v5)
  {
    v6 = v5;
  }

  v89 = v6;

  v7 = [*(a1 + 32) objectForKeyedSubscript:@"nativeHandling"];
  v8 = [v7 BOOLValue];

  v9 = +[AMSLogConfig sharedEngagementConfig];
  v10 = v9;
  if (!v9)
  {
    v10 = +[AMSLogConfig sharedConfig];
  }

  v11 = [v10 OSLogObject];
  v12 = os_signpost_enabled(v11);

  if (!v9)
  {
  }

  if (v12)
  {
    v13 = +[AMSLogConfig sharedEngagementConfig];
    v14 = v13;
    if (!v13)
    {
      v14 = +[AMSLogConfig sharedConfig];
    }

    v15 = [v14 OSLogObject];
    v16 = os_signpost_id_make_with_pointer(v15, *(a1 + 40));

    if (!v13)
    {
    }

    v17 = +[AMSLogConfig sharedEngagementConfig];
    v18 = v17;
    if (v17)
    {
      v19 = [v17 OSLogObject];
    }

    else
    {
      v20 = +[AMSLogConfig sharedConfig];
      v19 = [v20 OSLogObject];
    }

    if (v16 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v19))
    {
      *buf = 0;
      _os_signpost_emit_with_name_impl(&dword_192869000, v19, OS_SIGNPOST_INTERVAL_BEGIN, v16, "Engagement", "Enqueuing data", buf, 2u);
    }
  }

  else
  {
    v16 = 0;
  }

  if (_os_feature_enabled_impl())
  {
    v21 = 0;
  }

  else
  {
    v21 = +[AMSEngagementClientData loadFromDisk];
    [*(a1 + 40) _scheduleSyncIfNeeded:v21];
  }

  v22 = objc_alloc(MEMORY[0x1E695DF70]);
  v23 = [v21 destinationsForEvent:*(a1 + 32)];
  v24 = [v22 initWithArray:v23];

  v25 = *(a1 + 48);
  v92[0] = MEMORY[0x1E69E9820];
  v92[1] = 3221225472;
  v92[2] = __32__AMSEngagement_enqueueData_to___block_invoke_49;
  v92[3] = &unk_1E73B3A38;
  v26 = v24;
  v93 = v26;
  [v25 enumerateObjectsUsingBlock:v92];
  if ((v8 & 1) != 0 || (_os_feature_enabled_impl() & 1) != 0 || [v26 count])
  {
    if (_os_feature_enabled_impl())
    {
      v27 = +[AMSEngagementCache sharedInstance];
      v28 = [v27 cachedResponseForEvent:*(a1 + 32)];

      if (v28)
      {
LABEL_30:
        v29 = v21;
        v30 = v26;
        v31 = +[AMSLogConfig sharedEngagementConfig];
        if (!v31)
        {
          v31 = +[AMSLogConfig sharedConfig];
        }

        v32 = v3;
        v33 = [v31 OSLogObject];
        if (os_log_type_enabled(v33, OS_LOG_TYPE_DEFAULT))
        {
          v34 = objc_opt_class();
          v35 = AMSLogKey();
          [v32 timeIntervalSinceNow];
          *buf = 138544130;
          if (v36 < 0.0)
          {
            v36 = -v36;
          }

          *&buf[4] = v34;
          *&buf[12] = 2114;
          *&buf[14] = v35;
          *&buf[22] = 2048;
          v96 = v36;
          *v97 = 2114;
          *&v97[2] = v89;
          _os_log_impl(&dword_192869000, v33, OS_LOG_TYPE_DEFAULT, "%{public}@: [%{public}@] Returned cached response (%.3f), type: %{public}@", buf, 0x2Au);
        }

        v37 = objc_alloc_init(AMSEngagementEnqueueResult);
        [(AMSEngagementEnqueueResult *)v37 setData:v28];
        [*(a1 + 56) finishWithResult:v37];
        v38 = +[AMSLogConfig sharedEngagementConfig];
        v39 = v38;
        if (!v38)
        {
          v39 = +[AMSLogConfig sharedConfig];
        }

        v40 = [v39 OSLogObject];
        v41 = os_signpost_enabled(v40);

        if (!v38)
        {
        }

        if (!v41)
        {
          v3 = v32;
          v26 = v30;
          v21 = v29;
LABEL_64:

          goto LABEL_65;
        }

        v42 = +[AMSLogConfig sharedEngagementConfig];
        v43 = v42;
        if (v42)
        {
          v44 = [v42 OSLogObject];
        }

        else
        {
          v59 = +[AMSLogConfig sharedConfig];
          v44 = [v59 OSLogObject];
        }

        spida = v16;
        v60 = v16 - 1;
        if (v60 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v44))
        {
          *buf = 0;
          _os_signpost_emit_with_name_impl(&dword_192869000, v44, OS_SIGNPOST_EVENT, spida, "Engagement", "Returning cached response", buf, 2u);
        }

        v61 = +[AMSLogConfig sharedEngagementConfig];
        v62 = v61;
        v3 = v32;
        if (v61)
        {
          v53 = [v61 OSLogObject];
        }

        else
        {
          v63 = +[AMSLogConfig sharedConfig];
          v53 = [v63 OSLogObject];
        }

        v26 = v30;

        v21 = v29;
        if (v60 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(&v53->super))
        {
          *buf = 0;
          _os_signpost_emit_with_name_impl(&dword_192869000, &v53->super, OS_SIGNPOST_INTERVAL_END, spida, "Engagement", "Finished", buf, 2u);
        }

LABEL_63:

        goto LABEL_64;
      }
    }

    else
    {
      v28 = [v21 cachedResponseDataForEvent:*(a1 + 32)];
      if (v28)
      {
        goto LABEL_30;
      }
    }

    if (*(a1 + 64))
    {
      v37 = [MEMORY[0x1E696AEC0] stringWithFormat:@"(prev: %@)", *(a1 + 64)];
    }

    else
    {
      v37 = &stru_1F071BA78;
    }

    spid = v3;
    v45 = +[AMSLogConfig sharedEngagementConfig];
    if (!v45)
    {
      v45 = +[AMSLogConfig sharedConfig];
    }

    v46 = [v45 OSLogObject];
    if (os_log_type_enabled(v46, OS_LOG_TYPE_DEFAULT))
    {
      v47 = objc_opt_class();
      v48 = AMSLogKey();
      [*(a1 + 48) componentsJoinedByString:{@", "}];
      v86 = v28;
      v49 = v21;
      v50 = v26;
      v52 = v51 = v16;
      *buf = 138544386;
      *&buf[4] = v47;
      *&buf[12] = 2114;
      *&buf[14] = v48;
      *&buf[22] = 2114;
      v96 = *&v89;
      *v97 = 2114;
      *&v97[2] = v52;
      *&v97[10] = 2114;
      *&v97[12] = v37;
      _os_log_impl(&dword_192869000, v46, OS_LOG_TYPE_DEFAULT, "%{public}@: [%{public}@] Enqueueing event for type: %{public}@, dest: [%{public}@] %{public}@", buf, 0x34u);

      v16 = v51;
      v26 = v50;
      v21 = v49;
      v28 = v86;
    }

    v53 = objc_alloc_init(AMSEngagementEnqueueRequest);
    v54 = +[AMSProcessInfo currentProcess];
    [(AMSEngagementEnqueueRequest *)v53 setClientInfo:v54];

    [(AMSEngagementEnqueueRequest *)v53 setProcessIdentifier:getpid()];
    v94 = *(a1 + 32);
    v55 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v94 count:1];
    [(AMSEngagementEnqueueRequest *)v53 setEvents:v55];

    v56 = AMSLogKey();
    [(AMSEngagementEnqueueRequest *)v53 setLogKey:v56];

    +[AMSEngagement _enqueueTimeout];
    [(AMSEngagementEnqueueRequest *)v53 setTimeout:?];
    [(AMSEngagementEnqueueRequest *)v53 setDestinations:v26];
    v57 = objc_alloc_init(AMSEngagementEnqueueContext);
    v3 = spid;
    [(AMSEngagementEnqueueContext *)v57 setStart:spid];
    [(AMSEngagementEnqueueContext *)v57 setSignpostID:v16];
    [(AMSEngagementEnqueueContext *)v57 setRequest:v53];
    v58 = [*(a1 + 40) _enqueueWithContext:v57];
    [*(a1 + 56) finishWithPromise:v58];

    goto LABEL_63;
  }

  v64 = +[AMSLogConfig sharedEngagementConfig];
  if (!v64)
  {
    v64 = +[AMSLogConfig sharedConfig];
  }

  v65 = [v64 OSLogObject];
  if (os_log_type_enabled(v65, OS_LOG_TYPE_DEBUG))
  {
    v66 = objc_opt_class();
    AMSLogKey();
    v68 = v67 = v3;
    *buf = 138543618;
    *&buf[4] = v66;
    *&buf[12] = 2114;
    *&buf[14] = v68;
    _os_log_impl(&dword_192869000, v65, OS_LOG_TYPE_DEBUG, "%{public}@: [%{public}@] Not Native Handling and No destinations for event", buf, 0x16u);

    v3 = v67;
  }

  v69 = *(*(a1 + 40) + 8);
  v90[0] = MEMORY[0x1E69E9820];
  v90[1] = 3221225472;
  v90[2] = __32__AMSEngagement_enqueueData_to___block_invoke_53;
  v90[3] = &unk_1E73B3680;
  v91 = *(a1 + 56);
  v70 = v90;
  v71 = v69;
  v72 = AMSLogKey();
  *buf = MEMORY[0x1E69E9820];
  *&buf[8] = 3221225472;
  *&buf[16] = __AMSDispatchAsync_block_invoke_3;
  v96 = COERCE_DOUBLE(&unk_1E73B36D0);
  *v97 = v72;
  *&v97[8] = v70;
  v73 = v72;
  dispatch_async(v71, buf);

  v74 = +[AMSLogConfig sharedEngagementConfig];
  v75 = v74;
  if (!v74)
  {
    v75 = +[AMSLogConfig sharedConfig];
  }

  v76 = [v75 OSLogObject];
  v77 = os_signpost_enabled(v76);

  if (!v74)
  {
  }

  if (v77)
  {
    v78 = +[AMSLogConfig sharedEngagementConfig];
    v79 = v78;
    if (v78)
    {
      v80 = [v78 OSLogObject];
    }

    else
    {
      v81 = +[AMSLogConfig sharedConfig];
      v80 = [v81 OSLogObject];
    }

    if (v16 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v80))
    {
      *buf = 0;
      _os_signpost_emit_with_name_impl(&dword_192869000, v80, OS_SIGNPOST_EVENT, v16, "Engagement", "No destinations for event", buf, 2u);
    }

    v82 = +[AMSLogConfig sharedEngagementConfig];
    v83 = v82;
    if (v82)
    {
      v84 = [v82 OSLogObject];
    }

    else
    {
      v85 = +[AMSLogConfig sharedConfig];
      v84 = [v85 OSLogObject];
    }

    if (v16 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v84))
    {
      *buf = 0;
      _os_signpost_emit_with_name_impl(&dword_192869000, v84, OS_SIGNPOST_INTERVAL_END, v16, "Engagement", "Finished", buf, 2u);
    }
  }

  v28 = v91;
LABEL_65:
}

void __32__AMSEngagement_enqueueData_to___block_invoke_49(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = *(a1 + 32);
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __32__AMSEngagement_enqueueData_to___block_invoke_2;
  v8[3] = &unk_1E73B7160;
  v9 = v3;
  v5 = v3;
  v6 = [v4 indexOfObjectPassingTest:v8];
  if (v6 == 0x7FFFFFFFFFFFFFFFLL)
  {
    v7 = [[AMSEngagementDestination alloc] initWithIdentifier:v5];
    [(AMSEngagementDestination *)v7 setComponents:7];
    [*(a1 + 32) addObject:v7];
  }

  else
  {
    v7 = [*(a1 + 32) objectAtIndexedSubscript:v6];
    [(AMSEngagementDestination *)v7 setComponents:7];
  }
}

uint64_t __32__AMSEngagement_enqueueData_to___block_invoke_2(uint64_t a1, void *a2)
{
  v3 = [a2 identifier];
  v4 = [v3 isEqualToString:*(a1 + 32)];

  return v4;
}

void __32__AMSEngagement_enqueueData_to___block_invoke_53(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = objc_alloc_init(AMSEngagementEnqueueResult);
  [v1 finishWithResult:v2];
}

- (id)_enqueue:(id)_enqueue
{
  _enqueueCopy = _enqueue;
  v5 = objc_alloc_init(AMSMutablePromise);
  _engagementQueue = [objc_opt_class() _engagementQueue];
  v14[0] = MEMORY[0x1E69E9820];
  v14[1] = 3221225472;
  v14[2] = __26__AMSEngagement__enqueue___block_invoke;
  v14[3] = &unk_1E73B71B0;
  v15 = _enqueueCopy;
  v7 = v5;
  v16 = v7;
  selfCopy = self;
  v8 = v14;
  v9 = _enqueueCopy;
  v10 = AMSLogKey();
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __AMSDispatchAsync_block_invoke_3;
  block[3] = &unk_1E73B36D0;
  v19 = v10;
  v20 = v8;
  v11 = v10;
  dispatch_async(_engagementQueue, block);

  v12 = v7;
  return v7;
}

void __26__AMSEngagement__enqueue___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) events];
  v3 = [v2 firstObject];

  if (!v3)
  {
    v4 = *(a1 + 40);
    v5 = AMSError(2, @"No events to enqueue", &stru_1F071BA78, 0);
    v6 = [AMSPromise promiseWithError:v5];
    [v4 finishWithPromise:v6];
  }

  if ((_os_feature_enabled_impl() & 1) == 0)
  {
    v7 = [*(a1 + 32) destinations];
    v8 = +[AMSEngagementClientData loadFromDisk];
    v9 = [*(a1 + 32) destinations];
    v19 = MEMORY[0x1E69E9820];
    v20 = 3221225472;
    v21 = __26__AMSEngagement__enqueue___block_invoke_2;
    v22 = &unk_1E73B7188;
    v10 = v8;
    v23 = v10;
    v24 = v3;
    v11 = [v9 ams_filterUsingTest:&v19];

    if ([v11 count])
    {
      [*(a1 + 32) setDestinations:v11];
    }

    else
    {
      v12 = *(a1 + 40);
      v13 = AMSError(2, @"No events to enqueue", &stru_1F071BA78, 0);
      v14 = [AMSPromise promiseWithError:v13];
      [v12 finishWithPromise:v14];
    }
  }

  v15 = objc_alloc_init(AMSEngagementEnqueueContext);
  v16 = [MEMORY[0x1E695DF00] now];
  [(AMSEngagementEnqueueContext *)v15 setStart:v16];

  [(AMSEngagementEnqueueContext *)v15 setRequest:*(a1 + 32)];
  v17 = *(a1 + 40);
  v18 = [*(a1 + 48) _enqueueWithContext:v15];
  [v17 finishWithPromise:v18];
}

uint64_t __26__AMSEngagement__enqueue___block_invoke_2(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);
  v4 = [a2 identifier];
  v5 = [v3 destination:v4 allowsEvent:*(a1 + 40)];

  return v5;
}

- (id)_enqueueWithContext:(id)context
{
  v67 = *MEMORY[0x1E69E9840];
  contextCopy = context;
  if (![contextCopy signpostID])
  {
    v5 = +[AMSLogConfig sharedEngagementConfig];
    v6 = v5;
    if (!v5)
    {
      v6 = +[AMSLogConfig sharedConfig];
    }

    oSLogObject = [v6 OSLogObject];
    v8 = os_signpost_enabled(oSLogObject);

    if (!v5)
    {
    }

    if (v8)
    {
      v9 = +[AMSLogConfig sharedEngagementConfig];
      v10 = v9;
      if (!v9)
      {
        v10 = +[AMSLogConfig sharedConfig];
      }

      oSLogObject2 = [v10 OSLogObject];
      [contextCopy setSignpostID:{os_signpost_id_make_with_pointer(oSLogObject2, self)}];

      if (!v9)
      {
      }

      v12 = +[AMSLogConfig sharedEngagementConfig];
      v13 = v12;
      if (v12)
      {
        oSLogObject3 = [v12 OSLogObject];
      }

      else
      {
        v15 = +[AMSLogConfig sharedConfig];
        oSLogObject3 = [v15 OSLogObject];
      }

      signpostID = [contextCopy signpostID];
      if ((signpostID - 1) <= 0xFFFFFFFFFFFFFFFDLL)
      {
        v17 = signpostID;
        if (os_signpost_enabled(oSLogObject3))
        {
          *buf = 0;
          _os_signpost_emit_with_name_impl(&dword_192869000, oSLogObject3, OS_SIGNPOST_INTERVAL_BEGIN, v17, "Engagement", "Enqueuing request", buf, 2u);
        }
      }
    }
  }

  request = [contextCopy request];
  events = [request events];
  firstObject = [events firstObject];

  if (firstObject)
  {
    v21 = [firstObject objectForKeyedSubscript:@"eventType"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v22 = v21;
    }

    else
    {
      v22 = 0;
    }

    v25 = &stru_1F071BA78;
    if (v22)
    {
      v25 = v22;
    }

    v26 = v25;

    v27 = +[AMSLogConfig sharedEngagementConfig];
    v28 = v27;
    if (!v27)
    {
      v28 = +[AMSLogConfig sharedConfig];
    }

    oSLogObject4 = [v28 OSLogObject];
    v30 = os_signpost_enabled(oSLogObject4);

    if (!v27)
    {
    }

    if (v30)
    {
      v31 = +[AMSLogConfig sharedEngagementConfig];
      v32 = v31;
      if (v31)
      {
        oSLogObject5 = [v31 OSLogObject];
      }

      else
      {
        v34 = +[AMSLogConfig sharedConfig];
        oSLogObject5 = [v34 OSLogObject];
      }

      signpostID2 = [contextCopy signpostID];
      if (signpostID2 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(oSLogObject5))
      {
        request2 = [contextCopy request];
        destinations = [request2 destinations];
        v38 = [destinations componentsJoinedByString:{@", "}];
        *buf = 138543618;
        *&buf[4] = v26;
        *&buf[12] = 2114;
        *&buf[14] = v38;
        _os_signpost_emit_with_name_impl(&dword_192869000, oSLogObject5, OS_SIGNPOST_EVENT, signpostID2, "Engagement", "Enqueueing event for type: %{public}@, dest: [%{public}@]", buf, 0x16u);
      }
    }

    request3 = [contextCopy request];
    logKey = [request3 logKey];

    +[AMSEngagement _enqueueTimeout];
    v42 = [[AMSMutablePromise alloc] initWithTimeout:v41];
    [(AMSEngagement *)self _manageRunningPromise:v42];
    *buf = 0;
    *&buf[8] = buf;
    *&buf[16] = 0x3032000000;
    v64 = __Block_byref_object_copy__24;
    v65 = __Block_byref_object_dispose__24;
    connection = [(AMSEngagement *)self connection];
    v61[0] = 0;
    v61[1] = v61;
    v61[2] = 0x3032000000;
    v61[3] = __Block_byref_object_copy__24;
    v61[4] = __Block_byref_object_dispose__24;
    v62 = 0;
    v43 = *(*&buf[8] + 40);
    request4 = [contextCopy request];
    v55[0] = MEMORY[0x1E69E9820];
    v55[1] = 3221225472;
    v55[2] = __37__AMSEngagement__enqueueWithContext___block_invoke;
    v55[3] = &unk_1E73B71D8;
    v55[4] = self;
    v59 = buf;
    v45 = logKey;
    v56 = v45;
    v46 = contextCopy;
    v57 = v46;
    v60 = v61;
    v47 = v42;
    v58 = v47;
    [v43 enqueueWithRequest:request4 completion:v55];

    v50[0] = MEMORY[0x1E69E9820];
    v50[1] = 3221225472;
    v50[2] = __37__AMSEngagement__enqueueWithContext___block_invoke_77;
    v50[3] = &unk_1E73B7200;
    v50[4] = self;
    v51 = firstObject;
    v23 = v26;
    v52 = v23;
    v54 = v61;
    v53 = v46;
    [(AMSPromise *)v47 addErrorBlock:v50];
    v48 = v53;
    v24 = v47;

    _Block_object_dispose(v61, 8);
    _Block_object_dispose(buf, 8);
  }

  else
  {
    v23 = AMSError(2, @"No events to enqueue", &stru_1F071BA78, 0);
    v24 = [AMSPromise promiseWithError:v23];
  }

  return v24;
}

void __37__AMSEngagement__enqueueWithContext___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v69 = *MEMORY[0x1E69E9840];
  v5 = a2;
  v6 = a3;
  v7 = *(*(a1 + 64) + 8);
  v8 = *(v7 + 40);
  *(v7 + 40) = 0;

  v9 = AMSSetLogKey(*(a1 + 40));
  if (v6)
  {
    v10 = +[AMSLogConfig sharedEngagementConfig];
    if (!v10)
    {
      v10 = +[AMSLogConfig sharedConfig];
    }

    v11 = [v10 OSLogObject];
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      v12 = objc_opt_class();
      v13 = AMSLogKey();
      v14 = [*(a1 + 48) start];
      [v14 timeIntervalSinceNow];
      v16 = v15;

      *v60 = 138544130;
      v17 = -v16;
      if (v16 >= 0.0)
      {
        v17 = v16;
      }

      *&v60[4] = v12;
      v61 = 2114;
      v62 = v13;
      v63 = 2048;
      v64 = v17;
      v65 = 2114;
      v66 = v6;
      _os_log_impl(&dword_192869000, v11, OS_LOG_TYPE_ERROR, "%{public}@: [%{public}@] Enqueue finished with error (%.3f) %{public}@", v60, 0x2Au);
    }

    v18 = +[AMSLogConfig sharedEngagementConfig];
    v19 = v18;
    if (!v18)
    {
      v19 = +[AMSLogConfig sharedConfig];
    }

    v20 = [v19 OSLogObject];
    v21 = os_signpost_enabled(v20);

    if (!v18)
    {
    }

    if (v21)
    {
      v22 = +[AMSLogConfig sharedEngagementConfig];
      v23 = v22;
      if (v22)
      {
        v24 = [v22 OSLogObject];
      }

      else
      {
        v44 = +[AMSLogConfig sharedConfig];
        v24 = [v44 OSLogObject];
      }

      v45 = [*(a1 + 48) signpostID];
      if ((v45 - 1) <= 0xFFFFFFFFFFFFFFFDLL)
      {
        v46 = v45;
        if (os_signpost_enabled(v24))
        {
          *v60 = 138543362;
          *&v60[4] = v6;
          _os_signpost_emit_with_name_impl(&dword_192869000, v24, OS_SIGNPOST_EVENT, v46, "Engagement", "Enqueue finished with error %{public}@", v60, 0xCu);
        }
      }

      v47 = +[AMSLogConfig sharedEngagementConfig];
      v48 = v47;
      if (v47)
      {
        v49 = [v47 OSLogObject];
      }

      else
      {
        v50 = +[AMSLogConfig sharedConfig];
        v49 = [v50 OSLogObject];
      }

      v51 = [*(a1 + 48) signpostID];
      if ((v51 - 1) <= 0xFFFFFFFFFFFFFFFDLL)
      {
        v52 = v51;
        if (os_signpost_enabled(v49))
        {
          *v60 = 0;
          _os_signpost_emit_with_name_impl(&dword_192869000, v49, OS_SIGNPOST_INTERVAL_END, v52, "Engagement", "Error occured", v60, 2u);
        }
      }
    }

    v53 = [(__CFString *)v6 userInfo];
    v54 = *(*(a1 + 72) + 8);
    v55 = *(v54 + 40);
    *(v54 + 40) = v53;

    [*(a1 + 56) finishWithError:v6];
  }

  else
  {
    v25 = *(a1 + 32);
    v26 = [v5 actions];
    v27 = [v25 _parseActions:v26];

    [v5 setActions:v27];
    v28 = +[AMSLogConfig sharedEngagementConfig];
    if (!v28)
    {
      v28 = +[AMSLogConfig sharedConfig];
    }

    v29 = [v28 OSLogObject];
    if (os_log_type_enabled(v29, OS_LOG_TYPE_DEFAULT))
    {
      v30 = objc_opt_class();
      v31 = AMSLogKey();
      v32 = [*(a1 + 48) start];
      [v32 timeIntervalSinceNow];
      v34 = v33;

      if (v34 < 0.0)
      {
        v34 = -v34;
      }

      v35 = [v5 request];
      if (v35)
      {
        v36 = @"true";
      }

      else
      {
        v36 = @"false";
      }

      *v60 = 138544386;
      *&v60[4] = v30;
      v61 = 2114;
      v62 = v31;
      v63 = 2048;
      v64 = v34;
      v65 = 2114;
      v66 = v36;
      v67 = 2048;
      v68 = [v27 count];
      _os_log_impl(&dword_192869000, v29, OS_LOG_TYPE_DEFAULT, "%{public}@: [%{public}@] Enqueue finished (%.3f) request: %{public}@, actions: %ld", v60, 0x34u);
    }

    v37 = +[AMSLogConfig sharedEngagementConfig];
    v38 = v37;
    if (!v37)
    {
      v38 = +[AMSLogConfig sharedConfig];
    }

    v39 = [v38 OSLogObject];
    v40 = os_signpost_enabled(v39);

    if (!v37)
    {
    }

    if (v40)
    {
      v41 = +[AMSLogConfig sharedEngagementConfig];
      v42 = v41;
      if (v41)
      {
        v43 = [v41 OSLogObject];
      }

      else
      {
        v56 = +[AMSLogConfig sharedConfig];
        v43 = [v56 OSLogObject];
      }

      v57 = [*(a1 + 48) signpostID];
      if ((v57 - 1) <= 0xFFFFFFFFFFFFFFFDLL)
      {
        v58 = v57;
        if (os_signpost_enabled(v43))
        {
          v59 = [v27 count];
          *v60 = 134217984;
          *&v60[4] = v59;
          _os_signpost_emit_with_name_impl(&dword_192869000, v43, OS_SIGNPOST_INTERVAL_END, v58, "Engagement", "Finished (actions: %ld)", v60, 0xCu);
        }
      }
    }

    [*(a1 + 56) finishWithResult:v5];
  }
}

void __37__AMSEngagement__enqueueWithContext___block_invoke_77(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = objc_opt_class();
  v11 = [*(a1 + 32) bag];
  v5 = *(a1 + 40);
  v6 = *(a1 + 48);
  v7 = *(a1 + 56);
  v8 = *(*(*(a1 + 64) + 8) + 40);
  v9 = [v7 request];
  v10 = [v9 destinations];
  [v4 _recordLoggingEventWithBag:v11 enqueueData:v5 eventType:v6 userInfo:v8 destinations:v10 error:v3];
}

+ (void)_recordLoggingEventWithBag:(id)bag enqueueData:(id)data eventType:(id)type userInfo:(id)info destinations:(id)destinations error:(id)error
{
  v53[1] = *MEMORY[0x1E69E9840];
  bagCopy = bag;
  dataCopy = data;
  typeCopy = type;
  infoCopy = info;
  destinationsCopy = destinations;
  errorCopy = error;
  v19 = [destinationsCopy ams_filterUsingTest:&__block_literal_global_80];

  if (v19)
  {
    v46 = typeCopy;
    if (!bagCopy)
    {
      bagCopy = +[AMSEngagement createBagForSubProfile];
    }

    v44 = errorCopy;
    v20 = [[AMSMetricsLoggingEvent alloc] initWithSubsystem:@"Engagement" category:@"enqueue" error:errorCopy];
    v21 = [dataCopy objectForKeyedSubscript:@"placements"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v22 = v21;
    }

    else
    {
      v22 = 0;
    }

    v23 = [v22 ams_objectAtIndex:0];

    v43 = v23;
    v24 = [v23 objectForKeyedSubscript:@"placement"];
    objc_opt_class();
    v47 = 0;
    if (objc_opt_isKindOfClass())
    {
      v47 = v24;
    }

    v25 = [infoCopy objectForKeyedSubscript:@"destination"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v26 = v25;
    }

    else
    {
      v26 = 0;
    }

    v45 = infoCopy;

    if ([v26 length])
    {
      v27 = [[AMSEngagementDestination alloc] initWithIdentifier:v26];
      v53[0] = v27;
      v28 = [MEMORY[0x1E695DEC8] arrayWithObjects:v53 count:1];
    }

    else
    {
      v28 = destinationsCopy;
    }

    v29 = MEMORY[0x1E695DFD8];
    v30 = [v28 ams_mapWithTransform:&__block_literal_global_97];
    v31 = [v29 setWithArray:v30];

    v32 = +[AMSDefaults jsVersionMap];
    v51[0] = MEMORY[0x1E69E9820];
    v51[1] = 3221225472;
    v51[2] = __94__AMSEngagement__recordLoggingEventWithBag_enqueueData_eventType_userInfo_destinations_error___block_invoke_3;
    v51[3] = &unk_1E73B7268;
    v33 = v31;
    v52 = v33;
    v34 = [v32 ams_filterUsingTest:v51];

    v35 = [v45 objectForKeyedSubscript:@"breadcrumbs"];
    [(AMSMetricsLoggingEvent *)v20 setBreadcrumbs:v35];

    [(AMSMetricsLoggingEvent *)v20 setEventDestinations:v28];
    if ([v46 length])
    {
      v36 = v46;
    }

    else
    {
      v36 = 0;
    }

    [(AMSMetricsLoggingEvent *)v20 setEngagementEventType:v36];
    [(AMSMetricsLoggingEvent *)v20 setEventPlacement:v47];
    v37 = [dataCopy objectForKeyedSubscript:@"serviceType"];
    objc_opt_class();
    v38 = 0;
    if (objc_opt_isKindOfClass())
    {
      v38 = v37;
    }

    [(AMSMetricsLoggingEvent *)v20 setEventServiceType:v38];
    [(AMSMetricsLoggingEvent *)v20 setJsVersions:v34];
    v39 = [dataCopy objectForKeyedSubscript:@"requestUrl"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v40 = v39;
    }

    else
    {
      v40 = 0;
    }

    [(AMSMetricsLoggingEvent *)v20 setUrl:v40];
    v41 = [AMSMetricsLoggingEvent shouldSampleErrorsWithBag:bagCopy];
    v48[0] = MEMORY[0x1E69E9820];
    v48[1] = 3221225472;
    v48[2] = __94__AMSEngagement__recordLoggingEventWithBag_enqueueData_eventType_userInfo_destinations_error___block_invoke_4;
    v48[3] = &unk_1E73B3DE0;
    bagCopy = bagCopy;
    v49 = bagCopy;
    v50 = v20;
    v42 = v20;
    [v41 addSuccessBlock:v48];

    infoCopy = v45;
    typeCopy = v46;
    errorCopy = v44;
  }
}

void __94__AMSEngagement__recordLoggingEventWithBag_enqueueData_eventType_userInfo_destinations_error___block_invoke_4(uint64_t a1)
{
  v2 = dispatch_get_global_queue(0, 0);
  v3[0] = MEMORY[0x1E69E9820];
  v3[1] = 3221225472;
  v3[2] = __94__AMSEngagement__recordLoggingEventWithBag_enqueueData_eventType_userInfo_destinations_error___block_invoke_5;
  v3[3] = &unk_1E73B3DE0;
  v4 = *(a1 + 32);
  v5 = *(a1 + 40);
  dispatch_async(v2, v3);
}

void __94__AMSEngagement__recordLoggingEventWithBag_enqueueData_eventType_userInfo_destinations_error___block_invoke_5(uint64_t a1)
{
  v2 = [AMSMetrics internalInstanceUsingBag:*(a1 + 32)];
  [v2 enqueueEvent:*(a1 + 40)];
}

- (id)syncDestinations:(id)destinations
{
  destinationsCopy = destinations;
  v5 = objc_alloc_init(AMSEngagementSyncRequest);
  if ([destinationsCopy count])
  {
    v6 = destinationsCopy;
  }

  else
  {
    v6 = 0;
  }

  [(AMSEngagementSyncRequest *)v5 setApps:v6];

  [(AMSEngagementSyncRequest *)v5 setTimeout:300.0];
  v7 = AMSLogKey();
  [(AMSEngagementSyncRequest *)v5 setLogKey:v7];

  v8 = [(AMSEngagement *)self syncWithRequest:v5];

  return v8;
}

- (id)syncWithRequest:(id)request
{
  requestCopy = request;
  v5 = [[AMSMutablePromise alloc] initWithTimeout:300.0];
  [(AMSEngagement *)self _manageRunningPromise:v5];
  v6 = AMSLogKey();
  _engagementQueue = [objc_opt_class() _engagementQueue];
  v16[0] = MEMORY[0x1E69E9820];
  v16[1] = 3221225472;
  v16[2] = __33__AMSEngagement_syncWithRequest___block_invoke;
  v16[3] = &unk_1E73B72B8;
  v17 = v6;
  selfCopy = self;
  v19 = requestCopy;
  v20 = v5;
  v8 = v16;
  v9 = v5;
  v10 = requestCopy;
  v11 = v6;
  v12 = AMSLogKey();
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __AMSDispatchAsync_block_invoke_3;
  block[3] = &unk_1E73B36D0;
  v22 = v12;
  v23 = v8;
  v13 = v12;
  dispatch_async(_engagementQueue, block);

  binaryPromiseAdapter = [(AMSPromise *)v9 binaryPromiseAdapter];

  return binaryPromiseAdapter;
}

void __33__AMSEngagement_syncWithRequest___block_invoke(uint64_t a1)
{
  v34 = *MEMORY[0x1E69E9840];
  v2 = AMSSetLogKey(0);
  v3 = [MEMORY[0x1E695DF00] now];
  if (*(a1 + 32))
  {
    v4 = [MEMORY[0x1E696AEC0] stringWithFormat:@"(prev: %@)", *(a1 + 32)];
  }

  else
  {
    v4 = &stru_1F071BA78;
  }

  v5 = +[AMSLogConfig sharedEngagementConfig];
  if (!v5)
  {
    v5 = +[AMSLogConfig sharedConfig];
  }

  v6 = [v5 OSLogObject];
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    v7 = objc_opt_class();
    v8 = AMSLogKey();
    *buf = 138543874;
    *&buf[4] = v7;
    *&buf[12] = 2114;
    *&buf[14] = v8;
    *&buf[22] = 2114;
    v31 = v4;
    _os_log_impl(&dword_192869000, v6, OS_LOG_TYPE_DEFAULT, "%{public}@: [%{public}@] Starting sync. %{public}@", buf, 0x20u);
  }

  v9 = +[AMSLogConfig sharedEngagementConfig];
  v10 = v9;
  if (!v9)
  {
    v10 = +[AMSLogConfig sharedConfig];
  }

  v11 = [v10 OSLogObject];
  v12 = os_signpost_enabled(v11);

  if (!v9)
  {
  }

  if (v12)
  {
    v13 = +[AMSLogConfig sharedEngagementConfig];
    v14 = v13;
    if (!v13)
    {
      v14 = +[AMSLogConfig sharedConfig];
    }

    v15 = [v14 OSLogObject];
    v16 = os_signpost_id_make_with_pointer(v15, *(a1 + 40));

    if (!v13)
    {
    }

    v17 = +[AMSLogConfig sharedEngagementConfig];
    v18 = v17;
    if (v17)
    {
      v19 = [v17 OSLogObject];
    }

    else
    {
      v20 = +[AMSLogConfig sharedConfig];
      v19 = [v20 OSLogObject];
    }

    if (v16 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v19))
    {
      *buf = 0;
      _os_signpost_emit_with_name_impl(&dword_192869000, v19, OS_SIGNPOST_INTERVAL_BEGIN, v16, "Engagement", "Starting sync", buf, 2u);
    }
  }

  else
  {
    v16 = 0;
  }

  *buf = 0;
  *&buf[8] = buf;
  *&buf[16] = 0x3032000000;
  v31 = __Block_byref_object_copy__24;
  v32 = __Block_byref_object_dispose__24;
  v33 = [*(a1 + 40) connection];
  v21 = *(*&buf[8] + 40);
  v22 = *(a1 + 48);
  v24[0] = MEMORY[0x1E69E9820];
  v24[1] = 3221225472;
  v24[2] = __33__AMSEngagement_syncWithRequest___block_invoke_111;
  v24[3] = &unk_1E73B7290;
  v24[4] = *(a1 + 40);
  v28 = buf;
  v25 = v22;
  v23 = v3;
  v26 = v23;
  v29 = v16;
  v27 = *(a1 + 56);
  [v21 syncWithRequest:v25 completion:v24];

  _Block_object_dispose(buf, 8);
}

void __33__AMSEngagement_syncWithRequest___block_invoke_111(uint64_t a1, void *a2, void *a3)
{
  v54 = *MEMORY[0x1E69E9840];
  v5 = a2;
  v6 = a3;
  v7 = *(*(a1 + 64) + 8);
  v8 = *(v7 + 40);
  *(v7 + 40) = 0;

  v9 = [*(a1 + 40) logKey];
  v10 = AMSSetLogKey(v9);

  if (v6)
  {
    v11 = +[AMSLogConfig sharedEngagementConfig];
    if (!v11)
    {
      v11 = +[AMSLogConfig sharedConfig];
    }

    v12 = [v11 OSLogObject];
    if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      v13 = objc_opt_class();
      v14 = AMSLogKey();
      [*(a1 + 48) timeIntervalSinceNow];
      *v47 = 138544130;
      if (v15 < 0.0)
      {
        v15 = -v15;
      }

      *&v47[4] = v13;
      v48 = 2114;
      v49 = v14;
      v50 = 2048;
      v51 = v15;
      v52 = 2114;
      v53 = v6;
      _os_log_impl(&dword_192869000, v12, OS_LOG_TYPE_ERROR, "%{public}@: [%{public}@] Sync finished with error (%.3f) %{public}@", v47, 0x2Au);
    }

    v16 = +[AMSLogConfig sharedEngagementConfig];
    v17 = v16;
    if (!v16)
    {
      v17 = +[AMSLogConfig sharedConfig];
    }

    v18 = [v17 OSLogObject];
    v19 = os_signpost_enabled(v18);

    if (!v16)
    {
    }

    if (v19)
    {
      v20 = +[AMSLogConfig sharedEngagementConfig];
      v21 = v20;
      if (v20)
      {
        v22 = [v20 OSLogObject];
      }

      else
      {
        v38 = +[AMSLogConfig sharedConfig];
        v22 = [v38 OSLogObject];
      }

      v39 = *(a1 + 72);
      if (v39 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v22))
      {
        *v47 = 138543362;
        *&v47[4] = v6;
        _os_signpost_emit_with_name_impl(&dword_192869000, v22, OS_SIGNPOST_EVENT, v39, "Engagement", "Sync finished with error %{public}@", v47, 0xCu);
      }

      v40 = +[AMSLogConfig sharedEngagementConfig];
      v41 = v40;
      if (v40)
      {
        v42 = [v40 OSLogObject];
      }

      else
      {
        v43 = +[AMSLogConfig sharedConfig];
        v42 = [v43 OSLogObject];
      }

      v44 = *(a1 + 72);
      if (v44 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v42))
      {
        *v47 = 0;
        _os_signpost_emit_with_name_impl(&dword_192869000, v42, OS_SIGNPOST_INTERVAL_END, v44, "Engagement", "Error occured", v47, 2u);
      }
    }

    [*(a1 + 56) finishWithError:v6];
  }

  else
  {
    v23 = *(a1 + 32);
    v24 = [v5 actions];
    v25 = [v23 _parseActions:v24];

    v26 = +[AMSLogConfig sharedEngagementConfig];
    if (!v26)
    {
      v26 = +[AMSLogConfig sharedConfig];
    }

    v27 = [v26 OSLogObject];
    if (os_log_type_enabled(v27, OS_LOG_TYPE_DEFAULT))
    {
      v28 = objc_opt_class();
      v29 = AMSLogKey();
      [*(a1 + 48) timeIntervalSinceNow];
      *v47 = 138543874;
      if (v30 < 0.0)
      {
        v30 = -v30;
      }

      *&v47[4] = v28;
      v48 = 2114;
      v49 = v29;
      v50 = 2048;
      v51 = v30;
      _os_log_impl(&dword_192869000, v27, OS_LOG_TYPE_DEFAULT, "%{public}@: [%{public}@] Sync finished (%.3f)", v47, 0x20u);
    }

    v31 = +[AMSLogConfig sharedEngagementConfig];
    v32 = v31;
    if (!v31)
    {
      v32 = +[AMSLogConfig sharedConfig];
    }

    v33 = [v32 OSLogObject];
    v34 = os_signpost_enabled(v33);

    if (!v31)
    {
    }

    if (v34)
    {
      v35 = +[AMSLogConfig sharedEngagementConfig];
      v36 = v35;
      if (v35)
      {
        v37 = [v35 OSLogObject];
      }

      else
      {
        v45 = +[AMSLogConfig sharedConfig];
        v37 = [v45 OSLogObject];
      }

      v46 = *(a1 + 72);
      if (v46 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v37))
      {
        *v47 = 0;
        _os_signpost_emit_with_name_impl(&dword_192869000, v37, OS_SIGNPOST_INTERVAL_END, v46, "Engagement", "Finished", v47, 2u);
      }
    }

    [*(a1 + 56) finishWithResult:MEMORY[0x1E695E118]];
  }
}

- (id)syncMetricsIdentifiers
{
  v3 = AMSLogKey();
  v4 = objc_alloc_init(AMSMutableBinaryPromise);
  _engagementQueue = [objc_opt_class() _engagementQueue];
  v14[0] = MEMORY[0x1E69E9820];
  v14[1] = 3221225472;
  v14[2] = __39__AMSEngagement_syncMetricsIdentifiers__block_invoke;
  v14[3] = &unk_1E73B71B0;
  v14[4] = self;
  v15 = v3;
  v6 = v4;
  v16 = v6;
  v7 = v14;
  v8 = v3;
  v9 = AMSLogKey();
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __AMSDispatchAsync_block_invoke_3;
  block[3] = &unk_1E73B36D0;
  v18 = v9;
  v19 = v7;
  v10 = v9;
  dispatch_async(_engagementQueue, block);

  v11 = v16;
  v12 = v6;

  return v6;
}

uint64_t __39__AMSEngagement_syncMetricsIdentifiers__block_invoke(uint64_t a1)
{
  v16 = *MEMORY[0x1E69E9840];
  v2 = AMSSetLogKey(0);
  v3 = +[AMSLogConfig sharedEngagementConfig];
  if (!v3)
  {
    v3 = +[AMSLogConfig sharedConfig];
  }

  v4 = [v3 OSLogObject];
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v5 = objc_opt_class();
    v6 = AMSLogKey();
    v7 = *(a1 + 40);
    v10 = 138543874;
    v11 = v5;
    v12 = 2114;
    v13 = v6;
    v14 = 2114;
    v15 = v7;
    _os_log_impl(&dword_192869000, v4, OS_LOG_TYPE_DEFAULT, "%{public}@: [%{public}@] Starting metrics identifier sync. %{public}@", &v10, 0x20u);
  }

  v8 = [*(a1 + 32) connection];
  [v8 syncMetricsIdentifiers];

  return [*(a1 + 48) finishWithSuccess];
}

- (id)fetchMetricsIdentifiers
{
  v3 = AMSLogKey();
  v4 = objc_alloc_init(AMSMutableBinaryPromise);
  _engagementQueue = [objc_opt_class() _engagementQueue];
  v14[0] = MEMORY[0x1E69E9820];
  v14[1] = 3221225472;
  v14[2] = __40__AMSEngagement_fetchMetricsIdentifiers__block_invoke;
  v14[3] = &unk_1E73B71B0;
  v14[4] = self;
  v15 = v3;
  v6 = v4;
  v16 = v6;
  v7 = v14;
  v8 = v3;
  v9 = AMSLogKey();
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __AMSDispatchAsync_block_invoke_3;
  block[3] = &unk_1E73B36D0;
  v18 = v9;
  v19 = v7;
  v10 = v9;
  dispatch_async(_engagementQueue, block);

  v11 = v16;
  v12 = v6;

  return v6;
}

uint64_t __40__AMSEngagement_fetchMetricsIdentifiers__block_invoke(uint64_t a1)
{
  v16 = *MEMORY[0x1E69E9840];
  v2 = AMSSetLogKey(0);
  v3 = +[AMSLogConfig sharedEngagementConfig];
  if (!v3)
  {
    v3 = +[AMSLogConfig sharedConfig];
  }

  v4 = [v3 OSLogObject];
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v5 = objc_opt_class();
    v6 = AMSLogKey();
    v7 = *(a1 + 40);
    v10 = 138543874;
    v11 = v5;
    v12 = 2114;
    v13 = v6;
    v14 = 2114;
    v15 = v7;
    _os_log_impl(&dword_192869000, v4, OS_LOG_TYPE_DEFAULT, "%{public}@: [%{public}@] Starting metrics identifier fetch. %{public}@", &v10, 0x20u);
  }

  v8 = [*(a1 + 32) connection];
  [v8 fetchMetricsIdentifiers];

  return [*(a1 + 48) finishWithSuccess];
}

- (id)manualSyncMetricsIdentifiers
{
  v3 = objc_alloc_init(AMSMutableBinaryPromise);
  if (os_variant_has_internal_content())
  {
    v4 = AMSLogKey();
    _engagementQueue = [objc_opt_class() _engagementQueue];
    v11[0] = MEMORY[0x1E69E9820];
    v11[1] = 3221225472;
    v11[2] = __45__AMSEngagement_manualSyncMetricsIdentifiers__block_invoke;
    v11[3] = &unk_1E73B71B0;
    v11[4] = self;
    v12 = v4;
    v13 = v3;
    v6 = v11;
    v7 = v4;
    v8 = AMSLogKey();
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __AMSDispatchAsync_block_invoke_3;
    block[3] = &unk_1E73B36D0;
    v15 = v8;
    v16 = v6;
    v9 = v8;
    dispatch_async(_engagementQueue, block);
  }

  else
  {
    [(AMSMutableBinaryPromise *)v3 finishWithSuccess];
  }

  return v3;
}

uint64_t __45__AMSEngagement_manualSyncMetricsIdentifiers__block_invoke(uint64_t a1)
{
  v16 = *MEMORY[0x1E69E9840];
  v2 = AMSSetLogKey(0);
  v3 = +[AMSLogConfig sharedEngagementConfig];
  if (!v3)
  {
    v3 = +[AMSLogConfig sharedConfig];
  }

  v4 = [v3 OSLogObject];
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v5 = objc_opt_class();
    v6 = AMSLogKey();
    v7 = *(a1 + 40);
    v10 = 138543874;
    v11 = v5;
    v12 = 2114;
    v13 = v6;
    v14 = 2114;
    v15 = v7;
    _os_log_impl(&dword_192869000, v4, OS_LOG_TYPE_DEFAULT, "%{public}@: [%{public}@] Starting metrics identifier manual sync. %{public}@", &v10, 0x20u);
  }

  v8 = [*(a1 + 32) connection];
  [v8 manualSyncMetricsIdentifiers];

  return [*(a1 + 48) finishWithSuccess];
}

- (id)_createCombinedLogKey
{
  v2 = AMSGenerateLogCorrelationKey();
  v3 = AMSLogKey();
  if (v3)
  {
    v4 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%@:%@", v3, v2];

    v2 = v4;
  }

  return v2;
}

- (void)addObserver:(id)observer placement:(id)placement serviceType:(id)type
{
  if (placement)
  {
    v8 = MEMORY[0x1E695DFD8];
    typeCopy = type;
    typeCopy2 = observer;
    observerCopy2 = [v8 setWithObject:placement];
    [AMSEngagement addObserver:"addObserver:placements:serviceType:" placements:typeCopy2 serviceType:?];
  }

  else
  {
    typeCopy2 = type;
    observerCopy2 = observer;
    [AMSEngagement addObserver:"addObserver:placements:serviceType:" placements:? serviceType:?];
  }
}

- (void)addObserver:(id)observer placements:(id)placements serviceType:(id)type
{
  typeCopy = type;
  placementsCopy = placements;
  observerCopy = observer;
  _notifyQueue = [objc_opt_class() _notifyQueue];
  [(AMSEngagement *)self addObserver:observerCopy placements:placementsCopy serviceType:typeCopy queue:_notifyQueue];
}

- (void)addObserver:(id)observer placement:(id)placement serviceType:(id)type queue:(id)queue
{
  if (placement)
  {
    v10 = MEMORY[0x1E695DFD8];
    queueCopy = queue;
    queueCopy2 = type;
    typeCopy2 = observer;
    observerCopy2 = [v10 setWithObject:placement];
    [AMSEngagement addObserver:"addObserver:placements:serviceType:queue:" placements:typeCopy2 serviceType:? queue:?];
  }

  else
  {
    queueCopy2 = queue;
    typeCopy2 = type;
    observerCopy2 = observer;
    [AMSEngagement addObserver:"addObserver:placements:serviceType:queue:" placements:? serviceType:? queue:?];
  }
}

- (void)addObserver:(id)observer placements:(id)placements serviceType:(id)type queue:(id)queue
{
  observerCopy = observer;
  placementsCopy = placements;
  typeCopy = type;
  queueCopy = queue;
  _engagementQueue = [objc_opt_class() _engagementQueue];
  v22[0] = MEMORY[0x1E69E9820];
  v22[1] = 3221225472;
  v22[2] = __58__AMSEngagement_addObserver_placements_serviceType_queue___block_invoke;
  v22[3] = &unk_1E73B7138;
  v22[4] = self;
  v23 = observerCopy;
  v24 = queueCopy;
  v25 = placementsCopy;
  v26 = typeCopy;
  v15 = v22;
  v16 = typeCopy;
  v17 = placementsCopy;
  v18 = queueCopy;
  v19 = observerCopy;
  v20 = AMSLogKey();
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __AMSDispatchSync_block_invoke;
  block[3] = &unk_1E73B36D0;
  v28 = v20;
  v29 = v15;
  v21 = v20;
  dispatch_sync(_engagementQueue, block);
}

void __58__AMSEngagement_addObserver_placements_serviceType_queue___block_invoke(uint64_t a1)
{
  v28 = *MEMORY[0x1E69E9840];
  v2 = [*(a1 + 32) connection];
  [v2 beginObservingMessages];

  v3 = [*(a1 + 32) observerInfo];
  v4 = [v3 objectForKey:*(a1 + 40)];

  if (v4)
  {
    [(AMSEngagementObserverInfo *)v4 setDispatchQueue:*(a1 + 48)];
  }

  else
  {
    v4 = [[AMSEngagementObserverInfo alloc] initWithQueue:*(a1 + 48)];
    v5 = +[AMSLogConfig sharedEngagementConfig];
    if (!v5)
    {
      v5 = +[AMSLogConfig sharedConfig];
    }

    v6 = [v5 OSLogObject];
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      v7 = objc_opt_class();
      v8 = AMSLogKey();
      v9 = *(a1 + 40);
      v22 = 138543874;
      v23 = v7;
      v24 = 2114;
      v25 = v8;
      v26 = 2114;
      v27 = v9;
      _os_log_impl(&dword_192869000, v6, OS_LOG_TYPE_DEFAULT, "%{public}@: [%{public}@] Adding %{public}@ as an observer", &v22, 0x20u);
    }

    v10 = [*(a1 + 32) observerInfo];
    [v10 setObject:v4 forKey:*(a1 + 40)];
  }

  if (*(a1 + 56))
  {
    [(AMSEngagementObserverInfo *)v4 addPlacements:?];
  }

  v11 = *(a1 + 64);
  if (!*(a1 + 64))
  {
    v12 = +[AMSLogConfig sharedEngagementConfig];
    if (!v12)
    {
      v12 = +[AMSLogConfig sharedConfig];
    }

    v13 = [v12 OSLogObject];
    if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
    {
      v14 = objc_opt_class();
      v15 = AMSLogKey();
      v22 = 138543618;
      v23 = v14;
      v24 = 2114;
      v25 = v15;
      _os_log_impl(&dword_192869000, v13, OS_LOG_TYPE_DEFAULT, "%{public}@: [%{public}@] Warning: nil serviceType passed, falling back to bundle ID last component", &v22, 0x16u);
    }

    v16 = MEMORY[0x1E695DFF8];
    v17 = +[AMSProcessInfo currentProcess];
    v18 = [v17 bundleIdentifier];
    v19 = [v16 URLWithString:v18];

    v20 = [v19 pathExtension];
    v21 = [v20 lowercaseString];

    v11 = v21;
  }

  if ([v11 length])
  {
    [(AMSEngagementObserverInfo *)v4 addServiceType:v11];
  }
}

- (void)removeObserver:(id)observer placement:(id)placement serviceType:(id)type
{
  observerCopy = observer;
  placementCopy = placement;
  typeCopy = type;
  _engagementQueue = [objc_opt_class() _engagementQueue];
  v18[0] = MEMORY[0x1E69E9820];
  v18[1] = 3221225472;
  v18[2] = __54__AMSEngagement_removeObserver_placement_serviceType___block_invoke;
  v18[3] = &unk_1E73B72B8;
  v18[4] = self;
  v19 = observerCopy;
  v20 = placementCopy;
  v21 = typeCopy;
  v12 = v18;
  v13 = typeCopy;
  v14 = placementCopy;
  v15 = observerCopy;
  v16 = AMSLogKey();
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __AMSDispatchSync_block_invoke;
  block[3] = &unk_1E73B36D0;
  v23 = v16;
  v24 = v12;
  v17 = v16;
  dispatch_sync(_engagementQueue, block);
}

void __54__AMSEngagement_removeObserver_placement_serviceType___block_invoke(uint64_t a1)
{
  v21 = *MEMORY[0x1E69E9840];
  v2 = [*(a1 + 32) observerInfo];
  v3 = [v2 count];

  if (v3)
  {
    v4 = [*(a1 + 32) observerInfo];
    v5 = [v4 objectForKey:*(a1 + 40)];

    if (!v5)
    {
      goto LABEL_21;
    }

    if (*(a1 + 48))
    {
      [v5 removePlacement:?];
    }

    if (*(a1 + 56))
    {
      [v5 removeServiceType:?];
    }

    v6 = [v5 placements];
    if ([v6 count])
    {
      if (!*(a1 + 48))
      {
        v7 = *(a1 + 56);

        if (!v7)
        {
          goto LABEL_15;
        }

LABEL_21:

        return;
      }
    }

    else
    {
      v8 = [v5 serviceTypes];
      if (![v8 count])
      {

LABEL_15:
        v9 = +[AMSLogConfig sharedEngagementConfig];
        if (!v9)
        {
          v9 = +[AMSLogConfig sharedConfig];
        }

        v10 = [v9 OSLogObject];
        if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
        {
          v11 = objc_opt_class();
          v12 = AMSLogKey();
          v13 = *(a1 + 40);
          v15 = 138543874;
          v16 = v11;
          v17 = 2114;
          v18 = v12;
          v19 = 2114;
          v20 = v13;
          _os_log_impl(&dword_192869000, v10, OS_LOG_TYPE_DEFAULT, "%{public}@: [%{public}@] Removing %{public}@ as an observer", &v15, 0x20u);
        }

        v6 = [*(a1 + 32) observerInfo];
        [v6 removeObjectForKey:*(a1 + 40)];
        goto LABEL_20;
      }

      if (!*(a1 + 48))
      {
        v14 = *(a1 + 56);

        if (v14)
        {
          goto LABEL_21;
        }

        goto LABEL_15;
      }
    }

LABEL_20:

    goto LABEL_21;
  }
}

- (void)addCachePolicy:(int64_t)policy forPlacements:(id)placements serviceType:(id)type
{
  v21 = *MEMORY[0x1E69E9840];
  placementsCopy = placements;
  typeCopy = type;
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v10 = [placementsCopy countByEnumeratingWithState:&v16 objects:v20 count:16];
  if (v10)
  {
    v11 = v10;
    v12 = *v17;
    do
    {
      v13 = 0;
      do
      {
        if (*v17 != v12)
        {
          objc_enumerationMutation(placementsCopy);
        }

        v14 = *(*(&v16 + 1) + 8 * v13);
        cacheInfo = [(AMSEngagement *)self cacheInfo];
        [cacheInfo addWithCachePolicy:policy placement:v14 serviceType:typeCopy];

        ++v13;
      }

      while (v11 != v13);
      v11 = [placementsCopy countByEnumeratingWithState:&v16 objects:v20 count:16];
    }

    while (v11);
  }
}

- (void)_manageRunningPromise:(id)promise
{
  promiseCopy = promise;
  _engagementQueue = [objc_opt_class() _engagementQueue];
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __39__AMSEngagement__manageRunningPromise___block_invoke;
  v10[3] = &unk_1E73B3DE0;
  v10[4] = self;
  v11 = promiseCopy;
  v6 = v10;
  v7 = promiseCopy;
  v8 = AMSLogKey();
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __AMSDispatchAsync_block_invoke_3;
  block[3] = &unk_1E73B36D0;
  v13 = v8;
  v14 = v6;
  v9 = v8;
  dispatch_async(_engagementQueue, block);
}

void __39__AMSEngagement__manageRunningPromise___block_invoke(uint64_t a1)
{
  objc_initWeak(&location, *(a1 + 32));
  objc_initWeak(&from, *(a1 + 40));
  v2 = *(a1 + 40);
  v4 = MEMORY[0x1E69E9820];
  v5 = 3221225472;
  v6 = __39__AMSEngagement__manageRunningPromise___block_invoke_2;
  v7 = &unk_1E73B7308;
  objc_copyWeak(&v8, &location);
  objc_copyWeak(&v9, &from);
  [v2 addFinishBlock:&v4];
  v3 = [*(a1 + 32) runningPromises];
  [v3 addObject:*(a1 + 40)];

  objc_destroyWeak(&v9);
  objc_destroyWeak(&v8);
  objc_destroyWeak(&from);
  objc_destroyWeak(&location);
}

void __39__AMSEngagement__manageRunningPromise___block_invoke_2(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v2 = objc_loadWeakRetained((a1 + 40));
  [WeakRetained _removeRunningPromise:v2];
}

- (void)_removeRunningPromise:(id)promise
{
  promiseCopy = promise;
  _engagementQueue = [objc_opt_class() _engagementQueue];
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __39__AMSEngagement__removeRunningPromise___block_invoke;
  v10[3] = &unk_1E73B3DE0;
  v10[4] = self;
  v11 = promiseCopy;
  v6 = v10;
  v7 = promiseCopy;
  v8 = AMSLogKey();
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __AMSDispatchAsync_block_invoke_3;
  block[3] = &unk_1E73B36D0;
  v13 = v8;
  v14 = v6;
  v9 = v8;
  dispatch_async(_engagementQueue, block);
}

void __39__AMSEngagement__removeRunningPromise___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) runningPromises];
  v3 = [v2 containsObject:*(a1 + 40)];

  if (v3)
  {
    v4 = [*(a1 + 32) runningPromises];
    [v4 removeObject:*(a1 + 40)];
  }
}

- (void)_failAllRunningPromisesWithError:(id)error
{
  errorCopy = error;
  _engagementQueue = [objc_opt_class() _engagementQueue];
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __50__AMSEngagement__failAllRunningPromisesWithError___block_invoke;
  v10[3] = &unk_1E73B3DE0;
  v10[4] = self;
  v11 = errorCopy;
  v6 = v10;
  v7 = errorCopy;
  v8 = AMSLogKey();
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __AMSDispatchAsync_block_invoke_3;
  block[3] = &unk_1E73B36D0;
  v13 = v8;
  v14 = v6;
  v9 = v8;
  dispatch_async(_engagementQueue, block);
}

void __50__AMSEngagement__failAllRunningPromisesWithError___block_invoke(uint64_t a1)
{
  v21 = *MEMORY[0x1E69E9840];
  v2 = +[AMSLogConfig sharedEngagementConfig];
  if (!v2)
  {
    v2 = +[AMSLogConfig sharedConfig];
  }

  v3 = [v2 OSLogObject];
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    v4 = objc_opt_class();
    v5 = [*(a1 + 32) runningPromises];
    *buf = 138543618;
    *&buf[4] = v4;
    *&buf[12] = 2048;
    *&buf[14] = [v5 count];
    _os_log_impl(&dword_192869000, v3, OS_LOG_TYPE_DEFAULT, "%{public}@: Failing %ld connections", buf, 0x16u);
  }

  v6 = [*(a1 + 32) runningPromises];
  v7 = [v6 copy];

  v8 = *(*(a1 + 32) + 8);
  v14[0] = MEMORY[0x1E69E9820];
  v14[1] = 3221225472;
  v14[2] = __50__AMSEngagement__failAllRunningPromisesWithError___block_invoke_135;
  v14[3] = &unk_1E73B3DE0;
  v15 = v7;
  v16 = *(a1 + 40);
  v9 = v14;
  v10 = v8;
  v11 = v7;
  v12 = AMSLogKey();
  *buf = MEMORY[0x1E69E9820];
  *&buf[8] = 3221225472;
  *&buf[16] = __AMSDispatchAsync_block_invoke_3;
  v18 = &unk_1E73B36D0;
  v19 = v12;
  v20 = v9;
  v13 = v12;
  dispatch_async(v10, buf);
}

void __50__AMSEngagement__failAllRunningPromisesWithError___block_invoke_135(uint64_t a1)
{
  v12 = *MEMORY[0x1E69E9840];
  v7 = 0u;
  v8 = 0u;
  v9 = 0u;
  v10 = 0u;
  v2 = *(a1 + 32);
  v3 = [v2 countByEnumeratingWithState:&v7 objects:v11 count:16];
  if (v3)
  {
    v4 = v3;
    v5 = *v8;
    do
    {
      v6 = 0;
      do
      {
        if (*v8 != v5)
        {
          objc_enumerationMutation(v2);
        }

        [*(*(&v7 + 1) + 8 * v6++) finishWithError:{*(a1 + 40), v7}];
      }

      while (v4 != v6);
      v4 = [v2 countByEnumeratingWithState:&v7 objects:v11 count:16];
    }

    while (v4);
  }
}

- (id)_parseActions:(id)actions
{
  v18 = *MEMORY[0x1E69E9840];
  actionsCopy = actions;
  v4 = objc_alloc_init(MEMORY[0x1E695DF70]);
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v5 = actionsCopy;
  v6 = [v5 countByEnumeratingWithState:&v13 objects:v17 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v14;
    do
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v14 != v8)
        {
          objc_enumerationMutation(v5);
        }

        v10 = *(*(&v13 + 1) + 8 * i);
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          v11 = v10;

          if (v11)
          {
            [v4 addObject:{v11, v13}];
          }
        }

        else
        {

          v11 = 0;
        }
      }

      v7 = [v5 countByEnumeratingWithState:&v13 objects:v17 count:16];
    }

    while (v7);
  }

  return v4;
}

- (void)_pushEventReceived:(id)received
{
  v24 = *MEMORY[0x1E69E9840];
  object = [received object];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = object;
  }

  else
  {
    v5 = 0;
  }

  v6 = +[AMSLogConfig sharedEngagementConfig];
  v7 = v6;
  if (v5)
  {
    if (!v6)
    {
      v7 = +[AMSLogConfig sharedConfig];
    }

    oSLogObject = [v7 OSLogObject];
    if (os_log_type_enabled(oSLogObject, OS_LOG_TYPE_DEBUG))
    {
      v9 = objc_opt_class();
      v10 = AMSLogKey();
      *buf = 138543618;
      *&buf[4] = v9;
      *&buf[12] = 2114;
      *&buf[14] = v10;
      _os_log_impl(&dword_192869000, oSLogObject, OS_LOG_TYPE_DEBUG, "%{public}@: [%{public}@] Received push event", buf, 0x16u);
    }

    _engagementQueue = [objc_opt_class() _engagementQueue];
    v18[0] = MEMORY[0x1E69E9820];
    v18[1] = 3221225472;
    v18[2] = __36__AMSEngagement__pushEventReceived___block_invoke;
    v18[3] = &unk_1E73B3DE0;
    v18[4] = self;
    v19 = v5;
    v12 = v18;
    v13 = AMSLogKey();
    *buf = MEMORY[0x1E69E9820];
    *&buf[8] = 3221225472;
    *&buf[16] = __AMSDispatchAsync_block_invoke_3;
    v21 = &unk_1E73B36D0;
    v22 = v13;
    v23 = v12;
    v14 = v13;
    dispatch_async(_engagementQueue, buf);
  }

  else
  {
    if (!v6)
    {
      v7 = +[AMSLogConfig sharedConfig];
    }

    oSLogObject2 = [v7 OSLogObject];
    if (os_log_type_enabled(oSLogObject2, OS_LOG_TYPE_ERROR))
    {
      v16 = objc_opt_class();
      v17 = AMSLogKey();
      *buf = 138543618;
      *&buf[4] = v16;
      *&buf[12] = 2114;
      *&buf[14] = v17;
      _os_log_impl(&dword_192869000, oSLogObject2, OS_LOG_TYPE_ERROR, "%{public}@: [%{public}@] Rejecting received push event with no object", buf, 0x16u);
    }
  }
}

- (void)handlePushEvent:(id)event
{
  v46 = *MEMORY[0x1E69E9840];
  eventCopy = event;
  _engagementQueue = [objc_opt_class() _engagementQueue];
  dispatch_assert_queue_V2(_engagementQueue);

  actions = [eventCopy actions];
  v7 = [actions count];

  v8 = 0x1E73B0000uLL;
  v9 = +[AMSLogConfig sharedEngagementConfig];
  actions3 = v9;
  if (v7)
  {
    if (!v9)
    {
      actions3 = +[AMSLogConfig sharedConfig];
    }

    oSLogObject = [actions3 OSLogObject];
    if (os_log_type_enabled(oSLogObject, OS_LOG_TYPE_DEBUG))
    {
      v12 = objc_opt_class();
      v13 = AMSLogKey();
      actions2 = [eventCopy actions];
      *buf = 138543874;
      v41 = v12;
      v8 = 0x1E73B0000uLL;
      v42 = 2114;
      v43 = v13;
      v44 = 2048;
      v45 = [actions2 count];
      _os_log_impl(&dword_192869000, oSLogObject, OS_LOG_TYPE_DEBUG, "%{public}@: [%{public}@] Processing %lu push event", buf, 0x20u);
    }

    v37 = 0u;
    v38 = 0u;
    v35 = 0u;
    v36 = 0u;
    actions3 = [eventCopy actions];
    v15 = [actions3 countByEnumeratingWithState:&v35 objects:v39 count:16];
    if (v15)
    {
      v16 = v15;
      v33 = eventCopy;
      v17 = *v36;
      v18 = 0x1E73B0000uLL;
      do
      {
        v19 = 0;
        v34 = v16;
        do
        {
          if (*v36 != v17)
          {
            objc_enumerationMutation(actions3);
          }

          v20 = [objc_alloc(*(v18 + 3184)) initWithJSObject:*(*(&v35 + 1) + 8 * v19)];
          if (v20)
          {
            [(AMSEngagement *)self _handleServiceResponse:v20];
          }

          else
          {
            sharedEngagementConfig = [*(v8 + 3552) sharedEngagementConfig];
            if (!sharedEngagementConfig)
            {
              sharedEngagementConfig = [*(v8 + 3552) sharedConfig];
            }

            oSLogObject2 = [sharedEngagementConfig OSLogObject];
            if (os_log_type_enabled(oSLogObject2, OS_LOG_TYPE_ERROR))
            {
              v23 = v18;
              v24 = v17;
              selfCopy = self;
              v26 = actions3;
              v27 = objc_opt_class();
              v28 = AMSLogKey();
              *buf = 138543618;
              v41 = v27;
              actions3 = v26;
              self = selfCopy;
              v17 = v24;
              v18 = v23;
              v16 = v34;
              v42 = 2114;
              v43 = v28;
              _os_log_impl(&dword_192869000, oSLogObject2, OS_LOG_TYPE_ERROR, "%{public}@: [%{public}@] Unable to get service response from push event action", buf, 0x16u);

              v8 = 0x1E73B0000;
            }
          }

          ++v19;
        }

        while (v16 != v19);
        v16 = [actions3 countByEnumeratingWithState:&v35 objects:v39 count:16];
      }

      while (v16);
      eventCopy = v33;
    }
  }

  else
  {
    if (!v9)
    {
      actions3 = +[AMSLogConfig sharedConfig];
    }

    oSLogObject3 = [actions3 OSLogObject];
    if (os_log_type_enabled(oSLogObject3, OS_LOG_TYPE_DEBUG))
    {
      v30 = objc_opt_class();
      AMSLogKey();
      v32 = v31 = eventCopy;
      *buf = 138543618;
      v41 = v30;
      v42 = 2114;
      v43 = v32;
      _os_log_impl(&dword_192869000, oSLogObject3, OS_LOG_TYPE_DEBUG, "%{public}@: [%{public}@] Push event contains no actions to push", buf, 0x16u);

      eventCopy = v31;
    }
  }
}

- (void)_handleServiceResponse:(id)response
{
  v130 = *MEMORY[0x1E69E9840];
  responseCopy = response;
  selfCopy = self;
  _engagementQueue = [objc_opt_class() _engagementQueue];
  dispatch_assert_queue_V2(_engagementQueue);

  serviceType = [responseCopy serviceType];
  v6 = +[AMSLogConfig sharedEngagementConfig];
  if (!v6)
  {
    v6 = +[AMSLogConfig sharedConfig];
  }

  oSLogObject = [v6 OSLogObject];
  v90 = responseCopy;
  if (os_log_type_enabled(oSLogObject, OS_LOG_TYPE_DEBUG))
  {
    v8 = objc_opt_class();
    v9 = AMSLogKey();
    *buf = 138543618;
    *&buf[4] = v8;
    responseCopy = v90;
    *&buf[12] = 2114;
    *&buf[14] = v9;
    _os_log_impl(&dword_192869000, oSLogObject, OS_LOG_TYPE_DEBUG, "%{public}@: [%{public}@] Sending service response to observers", buf, 0x16u);
  }

  v122 = 0u;
  v123 = 0u;
  v120 = 0u;
  v121 = 0u;
  observerInfo = [(AMSEngagement *)self observerInfo];
  keyEnumerator = [observerInfo keyEnumerator];

  v12 = [keyEnumerator countByEnumeratingWithState:&v120 objects:v129 count:16];
  if (v12)
  {
    v13 = v12;
    v14 = *v121;
    v84 = *v121;
    v85 = keyEnumerator;
    do
    {
      v15 = 0;
      v86 = v13;
      do
      {
        if (*v121 != v14)
        {
          objc_enumerationMutation(keyEnumerator);
        }

        v16 = *(*(&v120 + 1) + 8 * v15);
        observerInfo2 = [(AMSEngagement *)selfCopy observerInfo];
        v93 = v16;
        v18 = [observerInfo2 objectForKey:v16];

        placements = [v18 placements];
        if (placements)
        {
          v20 = 0;
        }

        else
        {
          serviceTypes = [v18 serviceTypes];
          v20 = serviceTypes == 0;
        }

        serviceTypes2 = [v18 serviceTypes];
        v23 = [serviceTypes2 containsObject:serviceType];

        if (v20 || v23)
        {
          engagementRequest = [responseCopy engagementRequest];
          if (engagementRequest)
          {
            v25 = engagementRequest;
            v26 = objc_opt_respondsToSelector();

            if (v26)
            {
              dispatchQueue = [v18 dispatchQueue];
              v118[0] = MEMORY[0x1E69E9820];
              v118[1] = 3221225472;
              v118[2] = __40__AMSEngagement__handleServiceResponse___block_invoke;
              v118[3] = &unk_1E73B71B0;
              v118[4] = selfCopy;
              v118[5] = v93;
              v119 = responseCopy;
              v28 = v118;
              v29 = AMSLogKey();
              *buf = MEMORY[0x1E69E9820];
              *&buf[8] = 3221225472;
              *&buf[16] = __AMSDispatchAsync_block_invoke_3;
              v126 = &unk_1E73B36D0;
              *v127 = v29;
              *&v127[8] = v28;
              v30 = v29;
              dispatch_async(dispatchQueue, buf);
            }
          }

          fullScreenMessageRequest = [responseCopy fullScreenMessageRequest];
          if (fullScreenMessageRequest)
          {
            v32 = fullScreenMessageRequest;
            v33 = objc_opt_respondsToSelector();

            if (v33)
            {
              dispatchQueue2 = [v18 dispatchQueue];
              v116[0] = MEMORY[0x1E69E9820];
              v116[1] = 3221225472;
              v116[2] = __40__AMSEngagement__handleServiceResponse___block_invoke_2;
              v116[3] = &unk_1E73B71B0;
              v116[4] = selfCopy;
              v116[5] = v93;
              v117 = responseCopy;
              v35 = v116;
              v36 = AMSLogKey();
              *buf = MEMORY[0x1E69E9820];
              *&buf[8] = 3221225472;
              *&buf[16] = __AMSDispatchAsync_block_invoke_3;
              v126 = &unk_1E73B36D0;
              *v127 = v36;
              *&v127[8] = v35;
              v37 = v36;
              dispatch_async(dispatchQueue2, buf);
            }
          }

          placements2 = [responseCopy placements];

          if (placements2)
          {
            placements3 = [v18 placements];
            v40 = [placements3 count];

            if (v40)
            {
              placements4 = [v18 placements];
              [placements4 objectEnumerator];
            }

            else
            {
              placements4 = [responseCopy placements];
              [placements4 keyEnumerator];
            }
            v42 = ;

            if (v42)
            {
              v89 = v18;
              v87 = v42;
              v88 = v15;
              v114 = 0u;
              v115 = 0u;
              v112 = 0u;
              v113 = 0u;
              obj = v42;
              v43 = [obj countByEnumeratingWithState:&v112 objects:v128 count:16];
              if (!v43)
              {
                goto LABEL_61;
              }

              v44 = v43;
              v94 = *v113;
              while (1)
              {
                for (i = 0; i != v44; ++i)
                {
                  if (*v113 != v94)
                  {
                    objc_enumerationMutation(obj);
                  }

                  v46 = *(*(&v112 + 1) + 8 * i);
                  placements5 = [responseCopy placements];
                  v48 = [placements5 objectForKeyedSubscript:v46];

                  if (v48)
                  {
                    if ([v48 presentationAction] == 1)
                    {
                      makeDialogRequest = [v48 makeDialogRequest];
                    }

                    else
                    {
                      makeDialogRequest = 0;
                    }

                    cacheInfo = [(AMSEngagement *)selfCopy cacheInfo];
                    serviceType2 = [responseCopy serviceType];
                    v52 = [cacheInfo isBlockedWithMessageRequest:v48 placement:v46 serviceType:serviceType2];

                    v53 = +[AMSLogConfig sharedEngagementConfig];
                    if (!v53)
                    {
                      v53 = +[AMSLogConfig sharedConfig];
                    }

                    oSLogObject2 = [v53 OSLogObject];
                    if (os_log_type_enabled(oSLogObject2, OS_LOG_TYPE_INFO))
                    {
                      v55 = objc_opt_class();
                      v56 = AMSLogKey();
                      *buf = 138544386;
                      *&buf[4] = v55;
                      responseCopy = v90;
                      *&buf[12] = 2114;
                      *&buf[14] = v56;
                      *&buf[22] = 2048;
                      v126 = v52;
                      *v127 = 2114;
                      *&v127[2] = v46;
                      *&v127[10] = 2114;
                      *&v127[12] = serviceType;
                      _os_log_impl(&dword_192869000, oSLogObject2, OS_LOG_TYPE_INFO, "%{public}@: [%{public}@] Cache Lookup %ld for placement %{public}@ serviceType %{public}@", buf, 0x34u);
                    }

                    if (v52)
                    {
                      messageIdentifier = [v48 messageIdentifier];

                      if (messageIdentifier)
                      {
                        v58 = +[AMSLogConfig sharedEngagementConfig];
                        if (!v58)
                        {
                          v58 = +[AMSLogConfig sharedConfig];
                        }

                        oSLogObject3 = [v58 OSLogObject];
                        if (os_log_type_enabled(oSLogObject3, OS_LOG_TYPE_DEFAULT))
                        {
                          v60 = objc_opt_class();
                          v61 = AMSLogKey();
                          messageIdentifier2 = [v48 messageIdentifier];
                          *buf = 138544386;
                          *&buf[4] = v60;
                          *&buf[12] = 2114;
                          *&buf[14] = v61;
                          *&buf[22] = 2114;
                          v126 = messageIdentifier2;
                          *v127 = 2114;
                          *&v127[2] = v46;
                          *&v127[10] = 2114;
                          *&v127[12] = serviceType;
                          _os_log_impl(&dword_192869000, oSLogObject3, OS_LOG_TYPE_DEFAULT, "%{public}@: [%{public}@] Notifying message blocked with identifier %{public}@ for placement %{public}@ serviceType %{public}@", buf, 0x34u);
                        }

                        connection = [(AMSEngagement *)selfCopy connection];
                        messageIdentifier3 = [v48 messageIdentifier];
                        v124 = messageIdentifier3;
                        v65 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v124 count:1];
                        [connection notifyBlockedMessages:v65];

                        responseCopy = v90;
                      }

LABEL_58:

                      goto LABEL_59;
                    }

                    engagementRequest2 = [v48 engagementRequest];
                    if (engagementRequest2)
                    {

                      goto LABEL_50;
                    }

                    if (objc_opt_respondsToSelector())
                    {
                      dispatchQueue3 = [v89 dispatchQueue];
                      v106[0] = MEMORY[0x1E69E9820];
                      v106[1] = 3221225472;
                      v106[2] = __40__AMSEngagement__handleServiceResponse___block_invoke_150;
                      v106[3] = &unk_1E73B7350;
                      v106[4] = selfCopy;
                      v106[5] = v46;
                      v107 = serviceType;
                      v108 = v93;
                      v109 = makeDialogRequest;
                      v110 = v48;
                      v111 = responseCopy;
                      v68 = v106;
                      v69 = AMSLogKey();
                      *buf = MEMORY[0x1E69E9820];
                      *&buf[8] = 3221225472;
                      *&buf[16] = __AMSDispatchAsync_block_invoke_3;
                      v126 = &unk_1E73B36D0;
                      *v127 = v69;
                      *&v127[8] = v68;
                      v70 = v69;
                      dispatch_async(dispatchQueue3, buf);

                      v71 = v107;
                      goto LABEL_54;
                    }

LABEL_50:
                    engagementRequest3 = [v48 engagementRequest];
                    if (engagementRequest3)
                    {
                    }

                    else if (objc_opt_respondsToSelector())
                    {
                      dispatchQueue4 = [v89 dispatchQueue];
                      v101[0] = MEMORY[0x1E69E9820];
                      v101[1] = 3221225472;
                      v101[2] = __40__AMSEngagement__handleServiceResponse___block_invoke_153;
                      v101[3] = &unk_1E73B7378;
                      v101[4] = selfCopy;
                      v101[5] = v46;
                      v102 = serviceType;
                      v103 = v93;
                      v104 = makeDialogRequest;
                      v105 = responseCopy;
                      v74 = v101;
                      v75 = AMSLogKey();
                      *buf = MEMORY[0x1E69E9820];
                      *&buf[8] = 3221225472;
                      *&buf[16] = __AMSDispatchAsync_block_invoke_3;
                      v126 = &unk_1E73B36D0;
                      *v127 = v75;
                      *&v127[8] = v74;
                      v76 = v75;
                      dispatch_async(dispatchQueue4, buf);

                      v71 = v102;
LABEL_54:
                    }

                    engagementRequest4 = [v48 engagementRequest];
                    if (engagementRequest4)
                    {
                      v78 = engagementRequest4;
                      v79 = objc_opt_respondsToSelector();

                      if (v79)
                      {
                        dispatchQueue5 = [v89 dispatchQueue];
                        v96[0] = MEMORY[0x1E69E9820];
                        v96[1] = 3221225472;
                        v96[2] = __40__AMSEngagement__handleServiceResponse___block_invoke_156;
                        v96[3] = &unk_1E73B7378;
                        v96[4] = selfCopy;
                        v96[5] = v46;
                        v97 = serviceType;
                        v98 = v93;
                        v99 = v48;
                        v100 = responseCopy;
                        v81 = v96;
                        v82 = AMSLogKey();
                        *buf = MEMORY[0x1E69E9820];
                        *&buf[8] = 3221225472;
                        *&buf[16] = __AMSDispatchAsync_block_invoke_3;
                        v126 = &unk_1E73B36D0;
                        *v127 = v82;
                        *&v127[8] = v81;
                        v83 = v82;
                        dispatch_async(dispatchQueue5, buf);
                      }
                    }

                    goto LABEL_58;
                  }

LABEL_59:
                }

                v44 = [obj countByEnumeratingWithState:&v112 objects:v128 count:16];
                if (!v44)
                {
LABEL_61:

                  keyEnumerator = v85;
                  v13 = v86;
                  v14 = v84;
                  v42 = v87;
                  v15 = v88;
                  v18 = v89;
                  break;
                }
              }
            }
          }
        }

        ++v15;
      }

      while (v15 != v13);
      v13 = [keyEnumerator countByEnumeratingWithState:&v120 objects:v129 count:16];
    }

    while (v13);
  }
}

void __40__AMSEngagement__handleServiceResponse___block_invoke(uint64_t a1)
{
  v13 = *MEMORY[0x1E69E9840];
  v2 = +[AMSLogConfig sharedEngagementConfig];
  if (!v2)
  {
    v2 = +[AMSLogConfig sharedConfig];
  }

  v3 = [v2 OSLogObject];
  if (os_log_type_enabled(v3, OS_LOG_TYPE_INFO))
  {
    v4 = objc_opt_class();
    v5 = AMSLogKey();
    v9 = 138543618;
    v10 = v4;
    v11 = 2114;
    v12 = v5;
    _os_log_impl(&dword_192869000, v3, OS_LOG_TYPE_INFO, "%{public}@: [%{public}@] Pushing engagement request", &v9, 0x16u);
  }

  v7 = *(a1 + 32);
  v6 = *(a1 + 40);
  v8 = [*(a1 + 48) engagementRequest];
  [v6 engagement:v7 handleEngagementRequest:v8 completion:&__block_literal_global_143];
}

void __40__AMSEngagement__handleServiceResponse___block_invoke_2(uint64_t a1)
{
  v15 = *MEMORY[0x1E69E9840];
  v2 = +[AMSLogConfig sharedEngagementConfig];
  if (!v2)
  {
    v2 = +[AMSLogConfig sharedConfig];
  }

  v3 = [v2 OSLogObject];
  if (os_log_type_enabled(v3, OS_LOG_TYPE_INFO))
  {
    v4 = objc_opt_class();
    v5 = AMSLogKey();
    *buf = 138543618;
    v12 = v4;
    v13 = 2114;
    v14 = v5;
    _os_log_impl(&dword_192869000, v3, OS_LOG_TYPE_INFO, "%{public}@: [%{public}@] Pushing full screen message request", buf, 0x16u);
  }

  v7 = *(a1 + 32);
  v6 = *(a1 + 40);
  v8 = [*(a1 + 48) fullScreenMessageRequest];
  v9 = [v8 makeDialogRequest];
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __40__AMSEngagement__handleServiceResponse___block_invoke_146;
  v10[3] = &unk_1E73B3D40;
  v10[4] = *(a1 + 32);
  [v6 engagement:v7 handleDialogRequest:v9 completion:v10];
}

void __40__AMSEngagement__handleServiceResponse___block_invoke_150(uint64_t a1)
{
  v22 = *MEMORY[0x1E69E9840];
  v2 = +[AMSLogConfig sharedEngagementConfig];
  if (!v2)
  {
    v2 = +[AMSLogConfig sharedConfig];
  }

  v3 = [v2 OSLogObject];
  if (os_log_type_enabled(v3, OS_LOG_TYPE_INFO))
  {
    v4 = objc_opt_class();
    v5 = AMSLogKey();
    v6 = *(a1 + 40);
    v7 = *(a1 + 48);
    v14 = 138544130;
    v15 = v4;
    v16 = 2114;
    v17 = v5;
    v18 = 2114;
    v19 = v6;
    v20 = 2114;
    v21 = v7;
    _os_log_impl(&dword_192869000, v3, OS_LOG_TYPE_INFO, "%{public}@: [%{public}@] Pushing dialog request for placement %{public}@ serviceType %{public}@", &v14, 0x2Au);
  }

  v8 = *(a1 + 32);
  v9 = *(a1 + 56);
  v10 = *(a1 + 64);
  v11 = [*(a1 + 72) presentationAction];
  v12 = *(a1 + 40);
  v13 = [*(a1 + 80) serviceType];
  [v9 engagement:v8 didUpdateRequest:v10 presentationAction:v11 placement:v12 serviceType:v13];
}

void __40__AMSEngagement__handleServiceResponse___block_invoke_153(uint64_t a1)
{
  v21 = *MEMORY[0x1E69E9840];
  v2 = +[AMSLogConfig sharedEngagementConfig];
  if (!v2)
  {
    v2 = +[AMSLogConfig sharedConfig];
  }

  v3 = [v2 OSLogObject];
  if (os_log_type_enabled(v3, OS_LOG_TYPE_INFO))
  {
    v4 = objc_opt_class();
    v5 = AMSLogKey();
    v6 = *(a1 + 40);
    v7 = *(a1 + 48);
    v13 = 138544130;
    v14 = v4;
    v15 = 2114;
    v16 = v5;
    v17 = 2114;
    v18 = v6;
    v19 = 2114;
    v20 = v7;
    _os_log_impl(&dword_192869000, v3, OS_LOG_TYPE_INFO, "%{public}@: [%{public}@] Pushing dialog request for placement %{public}@ serviceType %{public}@", &v13, 0x2Au);
  }

  v8 = *(a1 + 56);
  v9 = *(a1 + 64);
  v10 = *(a1 + 32);
  v11 = *(a1 + 40);
  v12 = [*(a1 + 72) serviceType];
  [v8 engagement:v10 didUpdateRequest:v9 placement:v11 serviceType:v12];
}

void __40__AMSEngagement__handleServiceResponse___block_invoke_156(uint64_t a1)
{
  v21 = *MEMORY[0x1E69E9840];
  v2 = +[AMSLogConfig sharedEngagementConfig];
  if (!v2)
  {
    v2 = +[AMSLogConfig sharedConfig];
  }

  v3 = [v2 OSLogObject];
  if (os_log_type_enabled(v3, OS_LOG_TYPE_INFO))
  {
    v4 = objc_opt_class();
    v5 = AMSLogKey();
    v6 = *(a1 + 40);
    v7 = *(a1 + 48);
    v13 = 138544130;
    v14 = v4;
    v15 = 2114;
    v16 = v5;
    v17 = 2114;
    v18 = v6;
    v19 = 2114;
    v20 = v7;
    _os_log_impl(&dword_192869000, v3, OS_LOG_TYPE_INFO, "%{public}@: [%{public}@] Pushing engagement request for placement %{public}@ serviceType %{public}@", &v13, 0x2Au);
  }

  v8 = *(a1 + 32);
  v9 = *(a1 + 56);
  v10 = [*(a1 + 64) engagementRequest];
  v11 = *(a1 + 40);
  v12 = [*(a1 + 72) serviceType];
  [v9 engagement:v8 didUpdateEngagementRequest:v10 placement:v11 serviceType:v12 completion:&__block_literal_global_159];
}

void __28__AMSEngagement__connection__block_invoke_2()
{
  v0 = +[AMSEngagement notificationCenter];
  [v0 postNotificationName:0x1F0727A58 object:0];
}

- (void)_connectionErrorNotification
{
  v3 = AMSError(12, @"Engagement Connection Failed", @"The connection encountered an error", 0);
  [(AMSEngagement *)self _failAllRunningPromisesWithError:v3];
}

- (void)_scheduleSyncIfNeeded:(id)needed
{
  neededCopy = needed;
  v5 = +[AMSDevice buildVersion];
  v6 = [neededCopy destinationsNeedingSyncSinceBuild:v5];

  if ([v6 count])
  {
    allObjects = [v6 allObjects];
  }

  else
  {
    allObjects = 0;
  }

  lastSyncedBuild = [neededCopy lastSyncedBuild];
  v9 = +[AMSDevice buildVersion];
  if ([lastSyncedBuild isEqualToString:v9])
  {
    v10 = [v6 count];

    if (!v10)
    {
      goto LABEL_11;
    }
  }

  else
  {
  }

  lastSyncedBuild2 = [neededCopy lastSyncedBuild];
  v12 = +[AMSDevice buildVersion];
  v13 = [lastSyncedBuild2 isEqualToString:v12];

  if ((v13 & 1) == 0)
  {

    allObjects = 0;
  }

  v14 = +[AMSEngagement _engagementQueue];
  v18[0] = MEMORY[0x1E69E9820];
  v18[1] = 3221225472;
  v18[2] = __39__AMSEngagement__scheduleSyncIfNeeded___block_invoke;
  v18[3] = &unk_1E73B3DE0;
  v18[4] = self;
  allObjects = allObjects;
  v19 = allObjects;
  v15 = v18;
  v16 = AMSLogKey();
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __AMSDispatchAsync_block_invoke_3;
  block[3] = &unk_1E73B36D0;
  v21 = v16;
  v22 = v15;
  v17 = v16;
  dispatch_async(v14, block);

LABEL_11:
}

id *__39__AMSEngagement__scheduleSyncIfNeeded___block_invoke(id *result)
{
  v10 = *MEMORY[0x1E69E9840];
  if ((__hasAttemptedInitialSync & 1) == 0)
  {
    v1 = result;
    __hasAttemptedInitialSync = 1;
    v2 = +[AMSLogConfig sharedEngagementConfig];
    if (!v2)
    {
      v2 = +[AMSLogConfig sharedConfig];
    }

    v3 = [v2 OSLogObject];
    if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
    {
      v4 = objc_opt_class();
      v5 = AMSLogKey();
      v6 = 138543618;
      v7 = v4;
      v8 = 2114;
      v9 = v5;
      _os_log_impl(&dword_192869000, v3, OS_LOG_TYPE_DEFAULT, "%{public}@: [%{public}@] Scheduling initial sync", &v6, 0x16u);
    }

    return [v1[4] syncDestinations:v1[5]];
  }

  return result;
}

+ (NSString)bagSubProfile
{
  if (qword_1ED6E2940 != -1)
  {
    dispatch_once(&qword_1ED6E2940, &__block_literal_global_176);
  }

  v3 = qword_1ED6E2948;

  return v3;
}

void __30__AMSEngagement_bagSubProfile__block_invoke()
{
  v0 = qword_1ED6E2948;
  qword_1ED6E2948 = @"AMSCore";
}

+ (NSString)bagSubProfileVersion
{
  if (qword_1ED6E2950 != -1)
  {
    dispatch_once(&qword_1ED6E2950, &__block_literal_global_181);
  }

  v3 = qword_1ED6E2958;

  return v3;
}

void __37__AMSEngagement_bagSubProfileVersion__block_invoke()
{
  v0 = qword_1ED6E2958;
  qword_1ED6E2958 = @"1";
}

+ (id)createBagForSubProfile
{
  bagSubProfile = [objc_opt_class() bagSubProfile];
  bagSubProfileVersion = [objc_opt_class() bagSubProfileVersion];
  v4 = [AMSBag bagForProfile:bagSubProfile profileVersion:bagSubProfileVersion];

  return v4;
}

@end