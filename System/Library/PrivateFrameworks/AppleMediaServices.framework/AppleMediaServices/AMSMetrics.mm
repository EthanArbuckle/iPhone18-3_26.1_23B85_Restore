@interface AMSMetrics
+ (AMSBagKeySet)bagKeySet;
+ (BOOL)appAnalyticsAllowed;
+ (BOOL)diagnosticsSubmissionAllowed;
+ (BOOL)disableBackgroundMetrics;
+ (BOOL)recordAppAnalyticsForEvent:(id)a3 bugType:(id)a4;
+ (NSString)bagSubProfile;
+ (NSString)bagSubProfileVersion;
+ (OS_dispatch_queue)sharedTimerQueue;
+ (id)_createURLSessionPromiseWith:(id)a3;
+ (id)_defaultAccountClearingTopics;
+ (id)_makeMetricsEventAnomaliesDetector;
+ (id)_urlSessionPromiseWith:(id)a3;
+ (id)createBagForSubProfile;
+ (id)internalInstanceUsingBag:(id)a3;
+ (id)serverTimeFromDate:(id)a3;
+ (void)_configureAccountIdentifierForEvent:(id)a3 andActiveAccount:(id)a4;
+ (void)_detectAnomaliesForMetricsEvent:(id)a3;
+ (void)setDisableBackgroundMetrics:(BOOL)a3;
+ (void)setFlushTimerEnabled:(BOOL)a3;
- (AMSBagProtocol)bag;
- (AMSEngagement)engagement;
- (AMSMetrics)initWithContainerID:(id)a3 bag:(id)a4;
- (AMSMetrics)initWithContainerID:(id)a3 bag:(id)a4 flushTaskClass:(Class)a5;
- (AMSMetrics)initWithContainerId:(id)a3 bagContract:(id)a4;
- (AMSMetricsBagContract)bagContract;
- (BOOL)_scheduledFlushAllowedForStyle:(int64_t)a3;
- (double)_flushIntervalWithConfiguration:(id)a3 forEvents:(id)a4;
- (id)_cachedAccountClearingTopicsFromBag;
- (id)_determineFlushStrategyWithDataSource:(id)a3 topic:(id)a4 urlSession:(id)a5;
- (id)_enqueueFigaroEvents:(id)a3 scheduleDelayedFlush:(BOOL)a4;
- (id)_flushDataSource:(id)a3 topic:(id)a4;
- (id)_handleFlushIntervalWithStyle:(int64_t)a3;
- (id)_modifiedEvents:(id)a3;
- (id)_topicsRequiringAccountClearing;
- (id)enqueueAsyncEvents:(id)a3 scheduleDelayedFlush:(BOOL)a4;
- (id)flush;
- (id)flushEvents:(id)a3;
- (id)flushTopic:(id)a3;
- (id)promiseForEnqueueingEvents:(id)a3 options:(int64_t)a4;
- (int64_t)eventCount;
- (void)_applicationDidBecomeActive:(id)a3;
- (void)_beginFlushIntervalWithStyle:(int64_t)a3 events:(id)a4;
- (void)_clearAccountForEventIfNeeded:(id)a3;
- (void)_flushIntervalInvalidate;
- (void)_processOperationQueue;
- (void)cancel;
- (void)dealloc;
- (void)dropEvents;
- (void)enqueueEvent:(id)a3;
- (void)setBag:(id)a3;
- (void)setBagContract:(id)a3;
- (void)setEngagement:(id)a3;
- (void)setFlushTimerEnabled:(BOOL)a3;
@end

@implementation AMSMetrics

+ (AMSBagKeySet)bagKeySet
{
  v2 = objc_alloc_init(AMSBagKeySet);

  return v2;
}

- (void)dealloc
{
  v3 = [MEMORY[0x1E696AD88] defaultCenter];
  [v3 removeObserver:self name:@"UIApplicationDidBecomeActiveNotification" object:0];

  v4 = [MEMORY[0x1E696AD88] defaultCenter];
  [v4 removeObserver:self name:@"AMSFlushTimerEnabledNotificationName" object:0];

  v5.receiver = self;
  v5.super_class = AMSMetrics;
  [(AMSMetrics *)&v5 dealloc];
}

+ (NSString)bagSubProfile
{
  if (qword_1ED6E2E80 != -1)
  {
    dispatch_once(&qword_1ED6E2E80, &__block_literal_global_49_0);
  }

  v3 = qword_1ED6E2E88;

  return v3;
}

void __27__AMSMetrics_bagSubProfile__block_invoke()
{
  v0 = qword_1ED6E2E88;
  qword_1ED6E2E88 = @"AMSCore";
}

+ (NSString)bagSubProfileVersion
{
  if (qword_1ED6E2E90 != -1)
  {
    dispatch_once(&qword_1ED6E2E90, &__block_literal_global_54_0);
  }

  v3 = qword_1ED6E2E98;

  return v3;
}

void __34__AMSMetrics_bagSubProfileVersion__block_invoke()
{
  v0 = qword_1ED6E2E98;
  qword_1ED6E2E98 = @"1";
}

+ (BOOL)diagnosticsSubmissionAllowed
{
  v2 = [MEMORY[0x1E69ADFB8] sharedConnection];
  v3 = [v2 isDiagnosticSubmissionAllowed];

  return v3;
}

- (AMSEngagement)engagement
{
  os_unfair_lock_lock(&self->_engagementLock);
  engagement = self->_engagement;
  if (!engagement)
  {
    v4 = [AMSEngagement alloc];
    v5 = [(AMSMetrics *)self bag];
    v6 = [(AMSEngagement *)v4 initWithBag:v5];
    v7 = self->_engagement;
    self->_engagement = v6;

    engagement = self->_engagement;
  }

  v8 = engagement;
  os_unfair_lock_unlock(&self->_engagementLock);

  return v8;
}

+ (id)_makeMetricsEventAnomaliesDetector
{
  v2 = objc_alloc(MEMORY[0x1E695DF70]);
  v3 = objc_alloc_init(AMSExperimentDataAnomalyDetector);
  v4 = [v2 initWithObjects:{v3, 0}];

  v5 = objc_alloc_init(AMSDefaultsIdentifierHistoryProvider);
  v6 = [[AMSDeviceGeneratedIdentifierAnomalyDetector alloc] initWithIdentifierHistoryProvider:v5];
  if (v6)
  {
    [v4 addObject:v6];
  }

  v7 = [[AMSMetricsEventAnomaliesDetector alloc] initWithAnomalyDetectors:v4];

  return v7;
}

- (AMSBagProtocol)bag
{
  os_unfair_lock_lock_with_options();
  v3 = self->_bag;
  os_unfair_lock_unlock(&self->_bagLock);

  return v3;
}

+ (OS_dispatch_queue)sharedTimerQueue
{
  if (qword_1ED6E2EF0 != -1)
  {
    dispatch_once(&qword_1ED6E2EF0, &__block_literal_global_173_0);
  }

  v3 = qword_1ED6E2EF8;

  return v3;
}

void __30__AMSMetrics_sharedTimerQueue__block_invoke()
{
  v2 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
  v0 = dispatch_queue_create("com.apple.AppleMediaServices.metricsTimer", v2);
  v1 = qword_1ED6E2EF8;
  qword_1ED6E2EF8 = v0;
}

- (id)flush
{
  v3 = [(AMSMetrics *)self databaseSource];
  v4 = [(AMSMetrics *)self _flushDataSource:v3 topic:0];

  return v4;
}

- (void)_processOperationQueue
{
  v56 = *MEMORY[0x1E69E9840];
  v3 = +[AMSLogConfig sharedMetricsConfig];
  if (!v3)
  {
    v3 = +[AMSLogConfig sharedConfig];
  }

  v4 = [v3 OSLogObject];
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v5 = objc_opt_class();
    v6 = v5;
    v7 = AMSLogKey();
    v8 = [(AMSMetrics *)self containerId];
    *buf = 138543874;
    v51 = v5;
    v52 = 2114;
    v53 = v7;
    v54 = 2114;
    v55 = v8;
    _os_log_impl(&dword_192869000, v4, OS_LOG_TYPE_DEFAULT, "%{public}@: [%{public}@] Processing operation queue for container: %{public}@", buf, 0x20u);
  }

  os_unfair_lock_lock_with_options();
  if (self->_currentFlushOperation)
  {
    os_unfair_lock_unlock(&self->_enqueuedOperationsLock);
    return;
  }

  if (![(NSMutableArray *)self->_enqueuedOperations count])
  {
    os_unfair_lock_unlock(&self->_enqueuedOperationsLock);
    [(AMSMetrics *)self _beginFlushIntervalWithStyle:2 events:0];
    return;
  }

  if ([(AMSMetrics *)self flushingDisabled])
  {
    v9 = [(NSMutableArray *)self->_enqueuedOperations indexesOfObjectsPassingTest:&__block_literal_global_136];
    v10 = [(NSMutableArray *)self->_enqueuedOperations objectsAtIndexes:v9];
    [(NSMutableArray *)self->_enqueuedOperations removeObjectsAtIndexes:v9];
  }

  else
  {
    v10 = 0;
  }

  v11 = [(NSMutableArray *)self->_enqueuedOperations firstObject];
  if (v11)
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v12 = [(AMSMetrics *)self databaseSource];
      [v12 removeAllEvents];
    }

    v13 = [(NSMutableArray *)self->_enqueuedOperations indexOfObjectPassingTest:&__block_literal_global_139];
    enqueuedOperations = self->_enqueuedOperations;
    if (v13 != 0x7FFFFFFFFFFFFFFFLL)
    {
      [(NSMutableArray *)enqueuedOperations removeObjectsInRange:0];
      v15 = [(NSMutableArray *)self->_enqueuedOperations firstObject];
      [(NSMutableArray *)self->_enqueuedOperations removeObjectAtIndex:0];
      objc_storeStrong(&self->_currentFlushOperation, v15);
      goto LABEL_19;
    }

    [(NSMutableArray *)enqueuedOperations removeAllObjects];
  }

  v15 = 0;
LABEL_19:
  os_unfair_lock_unlock(&self->_enqueuedOperationsLock);
  v16 = +[AMSMetrics sharedTimerQueue];
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __36__AMSMetrics__processOperationQueue__block_invoke_3;
  block[3] = &unk_1E73B3680;
  block[4] = self;
  dispatch_async(v16, block);

  if ([v10 count])
  {
    v40 = v11;
    v17 = +[AMSLogConfig sharedMetricsConfig];
    if (!v17)
    {
      v17 = +[AMSLogConfig sharedConfig];
    }

    v18 = [v17 OSLogObject];
    if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
    {
      v19 = objc_opt_class();
      v20 = AMSLogKey();
      *buf = 138543618;
      v51 = v19;
      v52 = 2114;
      v53 = v20;
      _os_log_impl(&dword_192869000, v18, OS_LOG_TYPE_DEFAULT, "%{public}@: [%{public}@] Flushing disabled", buf, 0x16u);
    }

    v21 = AMSError(11, @"Metrics Flush Failed", @"Flush disabled", 0);
    v44 = 0u;
    v45 = 0u;
    v46 = 0u;
    v47 = 0u;
    v22 = v10;
    v23 = v10;
    v24 = [v23 countByEnumeratingWithState:&v44 objects:v49 count:16];
    if (v24)
    {
      v25 = v24;
      v26 = *v45;
      do
      {
        for (i = 0; i != v25; ++i)
        {
          if (*v45 != v26)
          {
            objc_enumerationMutation(v23);
          }

          v28 = [*(*(&v44 + 1) + 8 * i) promise];
          [v28 finishWithError:v21];
        }

        v25 = [v23 countByEnumeratingWithState:&v44 objects:v49 count:16];
      }

      while (v25);
    }

    v10 = v22;
    v11 = v40;
  }

  if (v15)
  {
    v29 = +[AMSLogConfig sharedMetricsConfig];
    if (!v29)
    {
      v29 = +[AMSLogConfig sharedConfig];
    }

    v30 = [v29 OSLogObject];
    if (os_log_type_enabled(v30, OS_LOG_TYPE_DEFAULT))
    {
      v31 = objc_opt_class();
      v32 = v31;
      v33 = AMSLogKey();
      v34 = [(AMSMetrics *)self containerId];
      *buf = 138543874;
      v51 = v31;
      v52 = 2114;
      v53 = v33;
      v54 = 2114;
      v55 = v34;
      _os_log_impl(&dword_192869000, v30, OS_LOG_TYPE_DEFAULT, "%{public}@: [%{public}@] Flushing events for container: %{public}@", buf, 0x20u);
    }

    v35 = [v15 strategy];
    v36 = [v35 performFlush];

    v42[0] = MEMORY[0x1E69E9820];
    v42[1] = 3221225472;
    v42[2] = __36__AMSMetrics__processOperationQueue__block_invoke_146;
    v42[3] = &unk_1E73B3078;
    v42[4] = self;
    v37 = v15;
    v43 = v37;
    v38 = [v36 thenWithBlock:v42];
    v41[0] = MEMORY[0x1E69E9820];
    v41[1] = 3221225472;
    v41[2] = __36__AMSMetrics__processOperationQueue__block_invoke_150;
    v41[3] = &unk_1E73B3A88;
    v41[4] = self;
    [v38 addFinishBlock:v41];
    v39 = [v37 promise];
    [v39 finishWithPromise:v38];
  }
}

uint64_t __36__AMSMetrics__processOperationQueue__block_invoke_2(uint64_t a1, void *a2)
{
  v2 = a2;
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();

  return isKindOfClass & 1;
}

- (void)_flushIntervalInvalidate
{
  v3 = +[AMSMetrics sharedTimerQueue];
  dispatch_assert_queue_V2(v3);

  v4 = [(AMSMetrics *)self flushIntervalBlock];

  if (v4)
  {
    v5 = [(AMSMetrics *)self flushIntervalBlock];
    dispatch_block_cancel(v5);

    [(AMSMetrics *)self setFlushIntervalBlock:0];
  }
}

- (AMSMetrics)initWithContainerID:(id)a3 bag:(id)a4
{
  v6 = a4;
  v7 = a3;
  v8 = [(AMSMetrics *)self initWithContainerID:v7 bag:v6 flushTaskClass:objc_opt_class()];

  return v8;
}

- (AMSMetrics)initWithContainerID:(id)a3 bag:(id)a4 flushTaskClass:(Class)a5
{
  v9 = a3;
  v10 = a4;
  v28.receiver = self;
  v28.super_class = AMSMetrics;
  v11 = [(AMSMetrics *)&v28 init];
  v12 = v11;
  if (v11)
  {
    objc_storeStrong(&v11->_bag, a4);
    objc_storeStrong(&v12->_containerId, a3);
    v13 = [[AMSMetricsDatabaseDataSource alloc] initWithContainerIdentifier:v9];
    databaseSource = v12->_databaseSource;
    v12->_databaseSource = v13;

    v12->_destination = 0;
    v12->_engagementLock._os_unfair_lock_opaque = 0;
    atomic_store(0, &v12->_flushingDisabled);
    v12->_flushTimerEnabled = 1;
    *&v12->_maxEventsPerBatch = xmmword_193016960;
    v15 = objc_opt_new();
    enqueuedOperations = v12->_enqueuedOperations;
    v12->_enqueuedOperations = v15;

    *&v12->_enqueuedOperationsLock._os_unfair_lock_opaque = 0;
    v12->_flushTaskClass = a5;
    v12->_bagLock._os_unfair_lock_opaque = 0;
    v17 = [[AMSTreatmentStore alloc] initWithCachePolicy:0];
    treatmentStore = v12->_treatmentStore;
    v12->_treatmentStore = v17;

    v12->_includeMMeClientInfoAndDeviceHeaders = 0;
    v12->_metricsSigningFlavour = 0;
    v19 = +[AMSProcessInfo currentProcess];
    v20 = [v19 executableName];
    v21 = [v20 isEqualToString:@"StoreKitUIService"];

    v12->_monitorsLifecycleEvents = v21 ^ 1;
    v22 = dispatch_get_global_queue(9, 0);
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __53__AMSMetrics_initWithContainerID_bag_flushTaskClass___block_invoke;
    block[3] = &unk_1E73B3680;
    v27 = v10;
    dispatch_async(v22, block);

    v23 = [MEMORY[0x1E696AD88] defaultCenter];
    [v23 addObserver:v12 selector:sel__applicationDidBecomeActive_ name:@"UIApplicationDidBecomeActiveNotification" object:0];

    v24 = [MEMORY[0x1E696AD88] defaultCenter];
    [v24 addObserver:v12 selector:sel__flushTimerEnabledChanged name:@"AMSFlushTimerEnabledNotificationName" object:0];

    [(AMSMetrics *)v12 _beginFlushIntervalWithStyle:2 events:0];
  }

  return v12;
}

+ (id)internalInstanceUsingBag:(id)a3
{
  v3 = a3;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __39__AMSMetrics_internalInstanceUsingBag___block_invoke;
  block[3] = &unk_1E73B3680;
  v4 = v3;
  v8 = v4;
  if (_MergedGlobals_131 != -1)
  {
    dispatch_once(&_MergedGlobals_131, block);
  }

  v5 = qword_1ED6E2E78;

  if (v4)
  {
    [v5 setBag:v4];
  }

  return v5;
}

uint64_t __39__AMSMetrics_internalInstanceUsingBag___block_invoke(uint64_t a1)
{
  qword_1ED6E2E78 = [[AMSMetrics alloc] initWithContainerID:@"com.apple.AppleMediaServices" bag:*(a1 + 32)];

  return MEMORY[0x1EEE66BB8]();
}

+ (BOOL)appAnalyticsAllowed
{
  v2 = [MEMORY[0x1E69ADFB8] sharedConnection];
  v3 = [v2 isAppAnalyticsAllowed];

  return v3;
}

+ (BOOL)disableBackgroundMetrics
{
  v2 = [a1 internalInstanceUsingBag:0];
  v3 = [v2 flushingDisabled];

  return v3;
}

- (int64_t)eventCount
{
  v2 = [(AMSMetrics *)self databaseSource];
  v3 = [v2 eventCount];

  return v3;
}

- (void)setBag:(id)a3
{
  v6 = a3;
  os_unfair_lock_lock_with_options();
  if (self->_bag == v6)
  {
    os_unfair_lock_unlock(&self->_bagLock);
  }

  else
  {
    objc_storeStrong(&self->_bag, a3);
    os_unfair_lock_unlock(&self->_bagLock);
    v5 = [objc_opt_class() internalInstanceUsingBag:v6];
    [(AMSMetrics *)self _beginFlushIntervalWithStyle:2 events:0];
  }
}

+ (void)setDisableBackgroundMetrics:(BOOL)a3
{
  v3 = a3;
  v4 = [a1 internalInstanceUsingBag:0];
  [v4 setFlushingDisabled:v3];
}

- (void)setEngagement:(id)a3
{
  v4 = a3;
  os_unfair_lock_lock_with_options();
  engagement = self->_engagement;
  self->_engagement = v4;

  os_unfair_lock_unlock(&self->_engagementLock);
}

- (void)setFlushTimerEnabled:(BOOL)a3
{
  os_unfair_lock_lock_with_options();
  self->_flushTimerEnabled = a3;
  os_unfair_lock_unlock(&self->_flushModeLock);
  v5 = [MEMORY[0x1E696AD88] defaultCenter];
  [v5 postNotificationName:@"AMSFlushTimerEnabledNotificationName" object:0];
}

+ (void)setFlushTimerEnabled:(BOOL)a3
{
  atomic_store(a3, _global_flush_timer_enabled);
  v3 = [MEMORY[0x1E696AD88] defaultCenter];
  [v3 postNotificationName:@"AMSFlushTimerEnabledNotificationName" object:0];
}

- (void)cancel
{
  v21 = *MEMORY[0x1E69E9840];
  os_unfair_lock_lock_with_options();
  v3 = self->_currentFlushOperation;
  currentFlushOperation = self->_currentFlushOperation;
  self->_currentFlushOperation = 0;

  v5 = [(NSMutableArray *)self->_enqueuedOperations indexesOfObjectsPassingTest:&__block_literal_global_91];
  v6 = [(NSMutableArray *)self->_enqueuedOperations objectsAtIndexes:v5];
  [(NSMutableArray *)self->_enqueuedOperations removeObjectsAtIndexes:v5];
  os_unfair_lock_unlock(&self->_enqueuedOperationsLock);
  v7 = [(AMSMetricsFlushOperation *)v3 strategy];
  [v7 cancel];

  v18 = 0u;
  v19 = 0u;
  v16 = 0u;
  v17 = 0u;
  v8 = v6;
  v9 = [v8 countByEnumeratingWithState:&v16 objects:v20 count:16];
  if (v9)
  {
    v10 = v9;
    v11 = *v17;
    do
    {
      v12 = 0;
      do
      {
        if (*v17 != v11)
        {
          objc_enumerationMutation(v8);
        }

        v13 = [*(*(&v16 + 1) + 8 * v12) promise];
        [v13 cancel];

        ++v12;
      }

      while (v10 != v12);
      v10 = [v8 countByEnumeratingWithState:&v16 objects:v20 count:16];
    }

    while (v10);
  }

  [(AMSMetrics *)self _processOperationQueue];
  v14 = [(AMSMetrics *)self bag];
  v15 = [AMSMetrics internalInstanceUsingBag:v14];
  [v15 cancel];
}

uint64_t __20__AMSMetrics_cancel__block_invoke(uint64_t a1, void *a2)
{
  v2 = a2;
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();

  return isKindOfClass & 1;
}

- (void)dropEvents
{
  v13 = *MEMORY[0x1E69E9840];
  v3 = +[AMSLogConfig sharedMetricsConfig];
  if (!v3)
  {
    v3 = +[AMSLogConfig sharedConfig];
  }

  v4 = [v3 OSLogObject];
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v5 = objc_opt_class();
    v6 = AMSLogKey();
    v9 = 138543618;
    v10 = v5;
    v11 = 2114;
    v12 = v6;
    _os_log_impl(&dword_192869000, v4, OS_LOG_TYPE_DEFAULT, "%{public}@: [%{public}@] Requested to drop all events from database", &v9, 0x16u);
  }

  os_unfair_lock_lock_with_options();
  enqueuedOperations = self->_enqueuedOperations;
  v8 = +[AMSMetricsOperation dropEventsOperation];
  [(NSMutableArray *)enqueuedOperations addObject:v8];

  os_unfair_lock_unlock(&self->_enqueuedOperationsLock);
  [(AMSMetrics *)self _processOperationQueue];
}

- (void)enqueueEvent:(id)a3
{
  v8 = *MEMORY[0x1E69E9840];
  v7 = a3;
  v4 = MEMORY[0x1E695DEC8];
  v5 = a3;
  v6 = [v4 arrayWithObjects:&v7 count:1];

  [(AMSMetrics *)self enqueueEvents:v6, v7, v8];
}

- (id)promiseForEnqueueingEvents:(id)a3 options:(int64_t)a4
{
  v42 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = +[AMSLogConfig sharedMetricsConfig];
  if (!v5)
  {
    v5 = +[AMSLogConfig sharedConfig];
  }

  v6 = [v5 OSLogObject];
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    v7 = objc_opt_class();
    v8 = v7;
    v9 = AMSLogKey();
    v10 = [v4 count];
    v11 = [(AMSMetrics *)self containerId];
    *buf = 138544386;
    v33 = v7;
    v34 = 2114;
    v35 = v9;
    v36 = 2050;
    v37 = v10;
    v38 = 2114;
    v39 = v11;
    v40 = 2050;
    v41 = a4;
    _os_log_impl(&dword_192869000, v6, OS_LOG_TYPE_DEFAULT, "%{public}@: [%{public}@] Enqueueing %{public}ld events to container %{public}@ with options %{public}ld", buf, 0x34u);
  }

  v12 = objc_opt_new();
  v27 = 0u;
  v28 = 0u;
  v29 = 0u;
  v30 = 0u;
  obj = v4;
  v13 = [obj countByEnumeratingWithState:&v27 objects:v31 count:16];
  if (v13)
  {
    v14 = v13;
    v15 = *v28;
    do
    {
      for (i = 0; i != v14; ++i)
      {
        if (*v28 != v15)
        {
          objc_enumerationMutation(obj);
        }

        v17 = *(*(&v27 + 1) + 8 * i);
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          v18 = [v17 copy];
          [v18 setTopic:@"xp_amp_ams_error_log"];
          [v12 addObject:v18];
        }

        v19 = [v17 copy];
        if ((a4 & 1) == 0)
        {
          [(AMSMetrics *)self _clearAccountForEventIfNeeded:v19];
        }

        v20 = [MEMORY[0x1E6959A48] ams_sharedAccountStore];
        v21 = [v20 ams_activeiTunesAccount];
        [AMSMetrics _configureAccountIdentifierForEvent:v19 andActiveAccount:v21];
        [v12 addObject:v19];
      }

      v14 = [obj countByEnumeratingWithState:&v27 objects:v31 count:16];
    }

    while (v14);
  }

  v22 = [(AMSMetrics *)self enqueueAsyncEvents:v12 scheduleDelayedFlush:(a4 & 2) == 0];

  return v22;
}

- (id)enqueueAsyncEvents:(id)a3 scheduleDelayedFlush:(BOOL)a4
{
  v6 = a3;
  if ([v6 count])
  {
    v7 = [(AMSMetrics *)self _modifiedEvents:v6];
    v11[0] = MEMORY[0x1E69E9820];
    v11[1] = 3221225472;
    v11[2] = __54__AMSMetrics_enqueueAsyncEvents_scheduleDelayedFlush___block_invoke;
    v11[3] = &unk_1E73B31B8;
    v11[4] = self;
    v12 = a4;
    v8 = [v7 thenWithBlock:v11];
    v9 = [v8 binaryPromiseAdapter];
  }

  else
  {
    v9 = +[AMSBinaryPromise promiseWithSuccess];
  }

  return v9;
}

id __54__AMSMetrics_enqueueAsyncEvents_scheduleDelayedFlush___block_invoke(uint64_t a1, void *a2)
{
  v21 = *MEMORY[0x1E69E9840];
  v3 = a2;
  if (!+[AMSEphemeralDefaults suppressEngagement])
  {
    v4 = [*(a1 + 32) engagement];
    v16 = 0u;
    v17 = 0u;
    v18 = 0u;
    v19 = 0u;
    v5 = v3;
    v6 = [v5 countByEnumeratingWithState:&v16 objects:v20 count:16];
    if (v6)
    {
      v7 = v6;
      v8 = *v17;
      do
      {
        for (i = 0; i != v7; ++i)
        {
          if (*v17 != v8)
          {
            objc_enumerationMutation(v5);
          }

          v10 = *(*(&v16 + 1) + 8 * i);
          if (([v10 suppressEngagement] & 1) == 0)
          {
            v11 = [v10 underlyingDictionary];
            v12 = [v4 enqueueData:v11];
          }

          if (os_variant_has_internal_content())
          {
            [objc_opt_class() _detectAnomaliesForMetricsEvent:v10];
          }
        }

        v7 = [v5 countByEnumeratingWithState:&v16 objects:v20 count:16];
      }

      while (v7);
    }
  }

  v13 = [*(a1 + 32) _enqueueFigaroEvents:v3 scheduleDelayedFlush:{*(a1 + 40), v16}];
  v14 = [v13 promiseAdapter];

  return v14;
}

- (id)flushTopic:(id)a3
{
  v4 = a3;
  v5 = [(AMSMetrics *)self databaseSource];
  v6 = [(AMSMetrics *)self _flushDataSource:v5 topic:v4];

  return v6;
}

- (id)flushEvents:(id)a3
{
  v4 = a3;
  v5 = [[AMSMetricsMemoryDataSource alloc] initWithEvents:v4];

  v6 = [(AMSMetrics *)self _flushDataSource:v5 topic:0];

  return v6;
}

+ (BOOL)recordAppAnalyticsForEvent:(id)a3 bugType:(id)a4
{
  v22 = *MEMORY[0x1E69E9840];
  v5 = a3;
  v6 = a4;
  v7 = [v5 dictionaryForPosting];
  if ([MEMORY[0x1E696ACB0] isValidJSONObject:v7])
  {
    v17 = 0;
    v8 = [MEMORY[0x1E696ACB0] dataWithJSONObject:v7 options:0 error:&v17];
    v9 = v17;
    if (v9)
    {
      v10 = +[AMSLogConfig sharedMetricsConfig];
      if (!v10)
      {
        v10 = +[AMSLogConfig sharedConfig];
      }

      v11 = [v10 OSLogObject];
      if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
      {
        v12 = objc_opt_class();
        *buf = 138543618;
        v19 = v12;
        v20 = 2114;
        v21 = v9;
        _os_log_impl(&dword_192869000, v11, OS_LOG_TYPE_ERROR, "%{public}@: Failed to generate JSON for OSA log submission. %{public}@", buf, 0x16u);
      }
    }

    if (v8)
    {
      v13 = [v5 topic];
      v16 = v8;
      v14 = v8;
      LOBYTE(v8) = OSAWriteLogForSubmission();
    }
  }

  else
  {
    LOBYTE(v8) = 0;
  }

  return v8;
}

+ (id)serverTimeFromDate:(id)a3
{
  [a3 timeIntervalSince1970];

  return [a1 serverTimeFromTimeInterval:?];
}

+ (id)createBagForSubProfile
{
  v2 = [objc_opt_class() bagSubProfile];
  v3 = [objc_opt_class() bagSubProfileVersion];
  v4 = [AMSBag bagForProfile:v2 profileVersion:v3];

  return v4;
}

+ (void)_configureAccountIdentifierForEvent:(id)a3 andActiveAccount:(id)a4
{
  v20 = a3;
  v5 = a4;
  if (([v20 isAccountIdentifierAutoDecorationEnabled] & 1) == 0)
  {
    [v20 setProperty:0 forBodyKey:@"enableAccountIdentifierAutoDecoration"];
    [v20 setEnableAccountIdentifierAutoDecoration:0];
    goto LABEL_19;
  }

  v6 = [v20 propertyForBodyKey:@"canonicalAccountIdentifierOverride"];
  if (v6)
  {
    [v20 setProperty:0 forBodyKey:@"canonicalAccountIdentifierOverride"];
    [v20 setCanonicalAccountIdentifierOverride:v6];
  }

  v7 = [v20 canonicalAccountIdentifierOverride];

  if (!v7)
  {
    v8 = [v20 account];
    if (v8 && ((v9 = v8, [v20 account], v10 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v10, "ams_accountFlagValueForAccountFlag:", AMSAccountFlagUnderThirteen), v11 = objc_claimAutoreleasedReturnValue(), v10, objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0) ? (v12 = 0) : (v12 = v11), v11, v13 = objc_msgSend(v12, "BOOLValue"), v12, v9, (v13 & 1) == 0))
    {
      v17 = [v20 account];
      v18 = [v17 ams_DSID];
      v19 = [v18 stringValue];
      [v20 setCanonicalAccountIdentifierOverride:v19];
    }

    else
    {
      v14 = [v5 ams_accountFlagValueForAccountFlag:AMSAccountFlagUnderThirteen];
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v15 = v14;
      }

      else
      {
        v15 = 0;
      }

      v16 = [v15 BOOLValue];
      if (v16)
      {
        goto LABEL_18;
      }

      v17 = [v5 ams_DSID];
      v18 = [v17 stringValue];
      [v20 setEnqueueTimeDefaultAccountIdentifier:v18];
    }
  }

LABEL_18:

LABEL_19:
}

+ (id)_defaultAccountClearingTopics
{
  if (qword_1ED6E2EA8 != -1)
  {
    dispatch_once(&qword_1ED6E2EA8, &__block_literal_global_60_0);
  }

  v3 = qword_1ED6E2EA0;

  return v3;
}

uint64_t __43__AMSMetrics__defaultAccountClearingTopics__block_invoke()
{
  qword_1ED6E2EA0 = [MEMORY[0x1E695DFD8] setWithArray:&unk_1F0779BF8];

  return MEMORY[0x1EEE66BB8]();
}

- (id)_cachedAccountClearingTopicsFromBag
{
  v20 = *MEMORY[0x1E69E9840];
  v3 = [(AMSMetrics *)self bag];
  if (!v3)
  {
    goto LABEL_11;
  }

  v4 = v3;
  v5 = [(AMSMetrics *)self bag];
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {

    goto LABEL_11;
  }

  v6 = v5;

  if (!v6)
  {
LABEL_11:
    v6 = +[AMSLogConfig sharedMetricsConfig];
    if (!v6)
    {
      v6 = +[AMSLogConfig sharedConfig];
    }

    v7 = [v6 OSLogObject];
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
    {
      v11 = objc_opt_class();
      v12 = AMSLogKey();
      v13 = [(AMSMetrics *)self bag];
      *v15 = 138543874;
      *&v15[4] = v11;
      v16 = 2114;
      v17 = v12;
      v18 = 2114;
      v19 = v13;
      _os_log_impl(&dword_192869000, v7, OS_LOG_TYPE_DEBUG, "%{public}@: [%{public}@] bag passed used is not of type AMSBag: %{public}@", v15, 0x20u);
    }

    goto LABEL_15;
  }

  v7 = [MEMORY[0x1E695DFD8] setWithObject:@"metrics"];
  *v15 = +[AMSBag uninitializedToken];
  if (objc_opt_respondsToSelector())
  {
    v8 = [v6 cachedValuesForKeys:v7 observationToken:v15 updateHandler:&__block_literal_global_108];
    [v6 removeObserverWithToken:*v15];
    v9 = [v8 objectForKeyedSubscript:@"metrics"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v10 = [v9 objectForKeyedSubscript:@"accountClearingTopics"];
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
LABEL_9:

        goto LABEL_16;
      }
    }

    v10 = 0;
    goto LABEL_9;
  }

LABEL_15:
  v10 = 0;
LABEL_16:

  return v10;
}

- (id)_topicsRequiringAccountClearing
{
  v2 = [(AMSMetrics *)self _cachedAccountClearingTopicsFromBag];
  if (v2)
  {
    [MEMORY[0x1E695DFD8] setWithArray:v2];
  }

  else
  {
    [objc_opt_class() _defaultAccountClearingTopics];
  }
  v3 = ;

  return v3;
}

- (void)_clearAccountForEventIfNeeded:(id)a3
{
  v17 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = [(AMSMetrics *)self _topicsRequiringAccountClearing];
  v6 = [v4 topic];
  if (v6 && [v5 containsObject:v6])
  {
    v7 = +[AMSLogConfig sharedMetricsConfig];
    if (!v7)
    {
      v7 = +[AMSLogConfig sharedConfig];
    }

    v8 = [v7 OSLogObject];
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
    {
      v9 = objc_opt_class();
      v10 = AMSLogKey();
      v11 = 138543874;
      v12 = v9;
      v13 = 2114;
      v14 = v10;
      v15 = 2114;
      v16 = v6;
      _os_log_impl(&dword_192869000, v8, OS_LOG_TYPE_DEBUG, "%{public}@: [%{public}@] Clearing account for event with topic: %{public}@", &v11, 0x20u);
    }

    [v4 setAccount:0];
  }
}

+ (void)_detectAnomaliesForMetricsEvent:(id)a3
{
  v4 = a3;
  if (qword_1ED6E2EB0 != -1)
  {
    dispatch_once(&qword_1ED6E2EB0, &__block_literal_global_114_0);
  }

  v5 = qword_1ED6E2EB8;
  v16[0] = MEMORY[0x1E69E9820];
  v16[1] = 3221225472;
  v16[2] = __46__AMSMetrics__detectAnomaliesForMetricsEvent___block_invoke_2;
  v16[3] = &__block_descriptor_40_e5_v8__0l;
  v16[4] = a1;
  if (qword_1ED6E2EC0 != -1)
  {
    dispatch_once(&qword_1ED6E2EC0, v16);
  }

  v6 = qword_1ED6E2EC8;
  if (qword_1ED6E2ED0 != -1)
  {
    dispatch_once(&qword_1ED6E2ED0, &__block_literal_global_121_0);
  }

  v7 = qword_1ED6E2ED8;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __46__AMSMetrics__detectAnomaliesForMetricsEvent___block_invoke_4;
  block[3] = &unk_1E73B92F0;
  v12 = v6;
  v13 = v4;
  v14 = v7;
  v15 = a1;
  v8 = v7;
  v9 = v4;
  v10 = v6;
  dispatch_async(v5, block);
}

void __46__AMSMetrics__detectAnomaliesForMetricsEvent___block_invoke()
{
  v2 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
  v0 = dispatch_queue_create("com.apple.AppleMediaServices.MetricsEventAnomaliesDetection", v2);
  v1 = qword_1ED6E2EB8;
  qword_1ED6E2EB8 = v0;
}

uint64_t __46__AMSMetrics__detectAnomaliesForMetricsEvent___block_invoke_2(uint64_t a1)
{
  qword_1ED6E2EC8 = [*(a1 + 32) _makeMetricsEventAnomaliesDetector];

  return MEMORY[0x1EEE66BB8]();
}

uint64_t __46__AMSMetrics__detectAnomaliesForMetricsEvent___block_invoke_3()
{
  qword_1ED6E2ED8 = objc_alloc_init(MEMORY[0x1E695DFA8]);

  return MEMORY[0x1EEE66BB8]();
}

void __46__AMSMetrics__detectAnomaliesForMetricsEvent___block_invoke_4(uint64_t a1)
{
  v32 = *MEMORY[0x1E69E9840];
  [*(a1 + 32) detectAnomaliesForMetricsEvent:*(a1 + 40)];
  v21 = 0u;
  v22 = 0u;
  v23 = 0u;
  obj = v24 = 0u;
  v2 = [obj countByEnumeratingWithState:&v21 objects:v31 count:16];
  if (v2)
  {
    v4 = v2;
    v5 = *v22;
    v6 = off_1E73B1000;
    *&v3 = 138543874;
    v19 = v3;
    while (2)
    {
      for (i = 0; i != v4; ++i)
      {
        if (*v22 != v5)
        {
          objc_enumerationMutation(obj);
        }

        v8 = *(*(&v21 + 1) + 8 * i);
        v9 = [(__objc2_class *)v6[54] isRunningUnitTests];
        v10 = +[AMSLogConfig sharedConfig];
        v11 = v10;
        if (v9)
        {
          if (!v10)
          {
            v11 = +[AMSLogConfig sharedConfig];
          }

          v12 = [v11 OSLogObject];
          if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
          {
            v13 = objc_opt_class();
            v14 = AMSLogKey();
            *buf = v19;
            v26 = v13;
            v6 = off_1E73B1000;
            v27 = 2114;
            v28 = v14;
            v29 = 2114;
            v30 = v8;
            _os_log_impl(&dword_192869000, v12, OS_LOG_TYPE_ERROR, "%{public}@ [%{public}@] Metrics event anomaly detected: %{public}@", buf, 0x20u);
          }

          v11 = [MEMORY[0x1E696AD88] defaultCenter];
          v15 = +[AMSLogConfig sharedConfig];
          [v11 postNotificationName:@"com.apple.AppleMediaServicesTests.FaultLogged" object:v15 userInfo:0];
        }

        else
        {
          if (!v10)
          {
            v11 = +[AMSLogConfig sharedConfig];
          }

          v15 = [v11 OSLogObject];
          if (os_log_type_enabled(v15, OS_LOG_TYPE_FAULT))
          {
            v16 = objc_opt_class();
            v17 = AMSLogKey();
            *buf = v19;
            v26 = v16;
            v6 = off_1E73B1000;
            v27 = 2114;
            v28 = v17;
            v29 = 2114;
            v30 = v8;
            _os_log_impl(&dword_192869000, v15, OS_LOG_TYPE_FAULT, "%{public}@ [%{public}@] Metrics event anomaly detected: %{public}@", buf, 0x20u);
          }
        }

        v18 = [v8 identifier];
        if (([*(a1 + 48) containsObject:v18] & 1) == 0)
        {
          [*(a1 + 48) addObject:v18];
          [v8 report];

          goto LABEL_21;
        }
      }

      v4 = [obj countByEnumeratingWithState:&v21 objects:v31 count:16];
      if (v4)
      {
        continue;
      }

      break;
    }
  }

LABEL_21:
}

+ (id)_createURLSessionPromiseWith:(id)a3
{
  v3 = MEMORY[0x1E695AC80];
  v4 = a3;
  v5 = +[AMSProcessInfo currentProcess];
  v6 = [v3 ams_configurationWithClientInfo:v5 bag:v4];

  v7 = [v6 thenWithBlock:&__block_literal_global_130];

  return v7;
}

id __43__AMSMetrics__createURLSessionPromiseWith___block_invoke(uint64_t a1, void *a2)
{
  v2 = a2;
  [v2 setURLCache:0];
  [v2 setRequestCachePolicy:1];
  v3 = [[AMSURLSession alloc] initWithConfiguration:v2 delegate:0 delegateQueue:0];

  v4 = [AMSPromise promiseWithResult:v3];

  return v4;
}

+ (id)_urlSessionPromiseWith:(id)a3
{
  v4 = a3;
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __37__AMSMetrics__urlSessionPromiseWith___block_invoke;
  v10[3] = &unk_1E73B40A8;
  v11 = v4;
  v12 = a1;
  v5 = qword_1ED6E2EE0;
  v6 = v4;
  if (v5 != -1)
  {
    dispatch_once(&qword_1ED6E2EE0, v10);
  }

  v7 = qword_1ED6E2EE8;
  v8 = qword_1ED6E2EE8;

  return v7;
}

uint64_t __37__AMSMetrics__urlSessionPromiseWith___block_invoke(uint64_t a1)
{
  qword_1ED6E2EE8 = [*(a1 + 40) _createURLSessionPromiseWith:*(a1 + 32)];

  return MEMORY[0x1EEE66BB8]();
}

- (id)_determineFlushStrategyWithDataSource:(id)a3 topic:(id)a4 urlSession:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  if ([(AMSMetrics *)self destination])
  {
    v11 = 0;
  }

  else
  {
    v12 = [(objc_class *)self->_flushTaskClass alloc];
    v13 = [(AMSMetrics *)self bag];
    v11 = [(objc_class *)v12 initWithDataSource:v8 bag:v13 maxRequestCount:[(AMSMetrics *)self maxRequestCount] maxEventsPerBatch:[(AMSMetrics *)self maxEventsPerBatch] topic:v9 includeMMeClientInfoAndDeviceHeaders:[(AMSMetrics *)self includeMMeClientInfoAndDeviceHeaders] metricsSigningFlavour:[(AMSMetrics *)self metricsSigningFlavour] urlSession:v10];
  }

  return v11;
}

- (id)_enqueueFigaroEvents:(id)a3 scheduleDelayedFlush:(BOOL)a4
{
  v4 = a4;
  v60 = *MEMORY[0x1E69E9840];
  v6 = a3;
  if (![v6 count])
  {
    v34 = +[AMSBinaryPromise promiseWithSuccess];
    goto LABEL_35;
  }

  v36 = v4;
  v7 = objc_alloc_init(MEMORY[0x1E695DF70]);
  v44 = 0u;
  v45 = 0u;
  v46 = 0u;
  v47 = 0u;
  v37 = v6;
  v8 = v6;
  v9 = [v8 countByEnumeratingWithState:&v44 objects:v59 count:16];
  if (!v9)
  {
    goto LABEL_31;
  }

  v10 = v9;
  v11 = *v45;
  v39 = self;
  v40 = *v45;
  v38 = v8;
  do
  {
    v12 = 0;
    v41 = v10;
    do
    {
      if (*v45 != v11)
      {
        objc_enumerationMutation(v8);
      }

      v13 = *(*(&v44 + 1) + 8 * v12);
      if (([v13 engagementEvent] & 1) == 0)
      {
        v58 = @"engagementMetrics";
        v14 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v58 count:1];
        [v13 removePropertiesForKeys:v14];

        v15 = [v13 diagnosticsSubmissionBugType];
        if (([v13 checkDiagnosticsAndUsageSetting] & 1) == 0 && !v15)
        {
LABEL_10:
          v16 = +[AMSLogConfig sharedMetricsConfig];
          if (!v16)
          {
            v16 = +[AMSLogConfig sharedConfig];
          }

          v17 = [v16 OSLogObject];
          if (os_log_type_enabled(v17, OS_LOG_TYPE_DEBUG))
          {
            v43 = v15;
            v18 = v7;
            v19 = objc_opt_class();
            v42 = v19;
            v20 = AMSLogKey();
            v21 = [(AMSMetrics *)self containerId];
            v22 = [v13 topic];
            v23 = [v13 clientEventID];
            *buf = 138544386;
            v49 = v19;
            v7 = v18;
            v15 = v43;
            v50 = 2114;
            v51 = v20;
            v52 = 2114;
            v53 = v21;
            v54 = 2114;
            v55 = v22;
            v56 = 2114;
            v57 = v23;
            _os_log_impl(&dword_192869000, v17, OS_LOG_TYPE_DEBUG, "%{public}@: [%{public}@] Enqueueing event (%{public}@) topic: %{public}@ id: %{public}@", buf, 0x34u);

            v8 = v38;
            self = v39;

            v11 = v40;
            v10 = v41;
          }

          [v7 addObject:v13];
          goto LABEL_28;
        }

        if (+[AMSMetrics diagnosticsSubmissionAllowed])
        {
          if (!v15 || [AMSMetrics recordAppAnalyticsForEvent:v13 bugType:v15])
          {
            goto LABEL_10;
          }

          v24 = +[AMSLogConfig sharedMetricsConfig];
          if (!v24)
          {
            v24 = +[AMSLogConfig sharedConfig];
          }

          v25 = [v24 OSLogObject];
          if (os_log_type_enabled(v25, OS_LOG_TYPE_ERROR))
          {
            v26 = objc_opt_class();
            v27 = AMSLogKey();
            v28 = [v13 topic];
            *buf = 138543874;
            v49 = v26;
            v10 = v41;
            v50 = 2114;
            v51 = v27;
            v52 = 2114;
            v53 = v28;
            v29 = v25;
            v30 = OS_LOG_TYPE_ERROR;
            v31 = "%{public}@: [%{public}@] Dropping event due to failed recording of event flagged for appAnalytics recording. Topic: %{public}@";
            goto LABEL_26;
          }
        }

        else
        {
          v24 = +[AMSLogConfig sharedMetricsConfig];
          if (!v24)
          {
            v24 = +[AMSLogConfig sharedConfig];
          }

          v25 = [v24 OSLogObject];
          if (os_log_type_enabled(v25, OS_LOG_TYPE_DEFAULT))
          {
            v32 = objc_opt_class();
            v27 = AMSLogKey();
            v28 = [v13 topic];
            *buf = 138543874;
            v49 = v32;
            v10 = v41;
            v50 = 2114;
            v51 = v27;
            v52 = 2114;
            v53 = v28;
            v29 = v25;
            v30 = OS_LOG_TYPE_DEFAULT;
            v31 = "%{public}@: [%{public}@] Dropping event due to D&U. Topic: %{public}@";
LABEL_26:
            _os_log_impl(&dword_192869000, v29, v30, v31, buf, 0x20u);

            v11 = v40;
          }
        }

LABEL_28:
      }

      ++v12;
    }

    while (v10 != v12);
    v10 = [v8 countByEnumeratingWithState:&v44 objects:v59 count:16];
  }

  while (v10);
LABEL_31:

  v33 = [(AMSMetrics *)self databaseSource];
  v34 = [v33 enqueueEvents:v7];

  if (v36)
  {
    [(AMSMetrics *)self _beginFlushIntervalWithStyle:1 events:v7];
  }

  v6 = v37;
LABEL_35:

  return v34;
}

- (id)_flushDataSource:(id)a3 topic:(id)a4
{
  v32 = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = a4;
  v8 = +[AMSLogConfig sharedMetricsConfig];
  v9 = v8;
  if (v7)
  {
    if (!v8)
    {
      v9 = +[AMSLogConfig sharedConfig];
    }

    v10 = [v9 OSLogObject];
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
    {
      v11 = objc_opt_class();
      v12 = AMSLogKey();
      *buf = 138543874;
      v27 = v11;
      v28 = 2114;
      v29 = v12;
      v30 = 2114;
      v31 = v7;
      v13 = "%{public}@: [%{public}@] Requested to flush topic %{public}@";
      v14 = v10;
      v15 = 32;
LABEL_10:
      _os_log_impl(&dword_192869000, v14, OS_LOG_TYPE_DEFAULT, v13, buf, v15);
    }
  }

  else
  {
    if (!v8)
    {
      v9 = +[AMSLogConfig sharedConfig];
    }

    v10 = [v9 OSLogObject];
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
    {
      v16 = objc_opt_class();
      v12 = AMSLogKey();
      *buf = 138543618;
      v27 = v16;
      v28 = 2114;
      v29 = v12;
      v13 = "%{public}@: [%{public}@] Requested to flush all topics";
      v14 = v10;
      v15 = 22;
      goto LABEL_10;
    }
  }

  v17 = [(AMSMetrics *)self bag];
  v18 = [AMSMetrics _urlSessionPromiseWith:v17];

  v23[0] = MEMORY[0x1E69E9820];
  v23[1] = 3221225472;
  v23[2] = __37__AMSMetrics__flushDataSource_topic___block_invoke;
  v23[3] = &unk_1E73B9318;
  v23[4] = self;
  v24 = v6;
  v25 = v7;
  v19 = v7;
  v20 = v6;
  v21 = [v18 thenWithBlock:v23];

  return v21;
}

id __37__AMSMetrics__flushDataSource_topic___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = objc_opt_new();
  v5 = [*(a1 + 32) _determineFlushStrategyWithDataSource:*(a1 + 40) topic:*(a1 + 48) urlSession:v3];

  os_unfair_lock_lock_with_options();
  v6 = *(*(a1 + 32) + 8);
  v7 = [AMSMetricsOperation flushOperationWithStrategy:v5 promise:v4];
  [v6 addObject:v7];

  os_unfair_lock_unlock((*(a1 + 32) + 24));
  [*(a1 + 32) _processOperationQueue];

  return v4;
}

uint64_t __36__AMSMetrics__processOperationQueue__block_invoke(uint64_t a1, void *a2)
{
  v2 = a2;
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();

  return isKindOfClass & 1;
}

id __36__AMSMetrics__processOperationQueue__block_invoke_146(uint64_t a1, void *a2)
{
  v3 = a2;
  if (+[AMSMetrics flushTimerEnabled])
  {
    goto LABEL_5;
  }

  v4 = [*(a1 + 32) bag];
  v5 = [AMSMetrics internalInstanceUsingBag:v4];

  if (v5 == *(a1 + 32) || ([*(a1 + 40) strategy], v6 = objc_claimAutoreleasedReturnValue(), v7 = objc_msgSend(v6, "isCancelled"), v6, v7))
  {

LABEL_5:
    v8 = [AMSPromise promiseWithResult:v3];
    goto LABEL_6;
  }

  v10 = [v5 flush];
  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 3221225472;
  v11[2] = __36__AMSMetrics__processOperationQueue__block_invoke_2_147;
  v11[3] = &unk_1E73B3190;
  v11[4] = *(a1 + 32);
  v12 = v3;
  v8 = [v10 continueWithBlock:v11];

LABEL_6:

  return v8;
}

id __36__AMSMetrics__processOperationQueue__block_invoke_2_147(uint64_t a1, uint64_t a2, void *a3)
{
  v18 = *MEMORY[0x1E69E9840];
  v5 = a3;
  if (!a2)
  {
    v6 = +[AMSLogConfig sharedMetricsConfig];
    if (!v6)
    {
      v6 = +[AMSLogConfig sharedConfig];
    }

    v7 = [v6 OSLogObject];
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      v8 = objc_opt_class();
      v9 = AMSLogKey();
      v12 = 138543874;
      v13 = v8;
      v14 = 2114;
      v15 = v9;
      v16 = 2114;
      v17 = v5;
      _os_log_impl(&dword_192869000, v7, OS_LOG_TYPE_ERROR, "%{public}@: [%{public}@] Failed to flush internal metrics. Error: %{public}@", &v12, 0x20u);
    }
  }

  v10 = [AMSPromise promiseWithResult:*(a1 + 40)];

  return v10;
}

void __36__AMSMetrics__processOperationQueue__block_invoke_150(uint64_t a1, void *a2, void *a3)
{
  v28 = *MEMORY[0x1E69E9840];
  v5 = a2;
  v6 = a3;
  v7 = +[AMSLogConfig sharedMetricsConfig];
  v8 = v7;
  if (v6)
  {
    if (!v7)
    {
      v8 = +[AMSLogConfig sharedConfig];
    }

    v9 = [v8 OSLogObject];
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      v10 = objc_opt_class();
      v11 = v10;
      v12 = AMSLogKey();
      v20 = 138544130;
      v21 = v10;
      v22 = 2114;
      v23 = v12;
      v24 = 2112;
      v25 = v5;
      v26 = 2114;
      v27 = v6;
      v13 = "%{public}@: [%{public}@] Flush failed. count: %@ error: %{public}@";
      v14 = v9;
      v15 = OS_LOG_TYPE_ERROR;
      v16 = 42;
LABEL_10:
      _os_log_impl(&dword_192869000, v14, v15, v13, &v20, v16);
    }
  }

  else
  {
    if (!v7)
    {
      v8 = +[AMSLogConfig sharedConfig];
    }

    v9 = [v8 OSLogObject];
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      v17 = objc_opt_class();
      v11 = v17;
      v12 = AMSLogKey();
      v20 = 138543874;
      v21 = v17;
      v22 = 2114;
      v23 = v12;
      v24 = 2112;
      v25 = v5;
      v13 = "%{public}@: [%{public}@] Successfully flushed %@ events";
      v14 = v9;
      v15 = OS_LOG_TYPE_DEFAULT;
      v16 = 32;
      goto LABEL_10;
    }
  }

  os_unfair_lock_lock_with_options();
  v18 = *(a1 + 32);
  v19 = *(v18 + 16);
  *(v18 + 16) = 0;

  os_unfair_lock_unlock((*(a1 + 32) + 24));
  [*(a1 + 32) _processOperationQueue];
}

- (void)_beginFlushIntervalWithStyle:(int64_t)a3 events:(id)a4
{
  v22 = *MEMORY[0x1E69E9840];
  v6 = a4;
  if ([(AMSMetrics *)self _scheduledFlushAllowedForStyle:a3])
  {
    v7 = [(AMSMetrics *)self bag];
    v8 = [AMSMetricsFigaroBagConfguration configurationPromiseWithBag:v7];
    v13[0] = MEMORY[0x1E69E9820];
    v13[1] = 3221225472;
    v13[2] = __50__AMSMetrics__beginFlushIntervalWithStyle_events___block_invoke;
    v13[3] = &unk_1E73B9390;
    v13[4] = self;
    v15 = a3;
    v14 = v6;
    [v8 addFinishBlock:v13];
  }

  else
  {
    v9 = +[AMSLogConfig sharedMetricsConfig];
    if (!v9)
    {
      v9 = +[AMSLogConfig sharedConfig];
    }

    v10 = [v9 OSLogObject];
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
    {
      v11 = objc_opt_class();
      v12 = [(AMSMetrics *)self containerId];
      *buf = 138543874;
      v17 = v11;
      v18 = 2114;
      v19 = v12;
      v20 = 2050;
      v21 = a3;
      _os_log_impl(&dword_192869000, v10, OS_LOG_TYPE_DEFAULT, "%{public}@: [%{public}@] Cannot schedule flush with style %{public}ld because the style is currently not allowed.", buf, 0x20u);
    }
  }
}

void __50__AMSMetrics__beginFlushIntervalWithStyle_events___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v24 = *MEMORY[0x1E69E9840];
  v5 = a2;
  v6 = a3;
  if (v5)
  {
    v7 = +[AMSMetrics sharedTimerQueue];
    v14[0] = MEMORY[0x1E69E9820];
    v14[1] = 3221225472;
    v14[2] = __50__AMSMetrics__beginFlushIntervalWithStyle_events___block_invoke_153;
    v14[3] = &unk_1E73B92F0;
    v8 = *(a1 + 48);
    v14[4] = *(a1 + 32);
    v17 = v8;
    v15 = v5;
    v16 = *(a1 + 40);
    dispatch_async(v7, v14);
  }

  else
  {
    v9 = +[AMSLogConfig sharedMetricsConfig];
    if (!v9)
    {
      v9 = +[AMSLogConfig sharedConfig];
    }

    v10 = [v9 OSLogObject];
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      v11 = objc_opt_class();
      v12 = [*(a1 + 32) containerId];
      v13 = AMSLogableError(v6);
      *buf = 138543874;
      v19 = v11;
      v20 = 2114;
      v21 = v12;
      v22 = 2114;
      v23 = v13;
      _os_log_impl(&dword_192869000, v10, OS_LOG_TYPE_ERROR, "%{public}@: [%{public}@] Not scheduling flush because we failed to get Figaro bag configuration: %{public}@", buf, 0x20u);
    }
  }
}

void __50__AMSMetrics__beginFlushIntervalWithStyle_events___block_invoke_153(uint64_t a1)
{
  v39 = *MEMORY[0x1E69E9840];
  if (([*(a1 + 32) _scheduledFlushAllowedForStyle:*(a1 + 56)] & 1) == 0)
  {
    v3 = +[AMSLogConfig sharedMetricsConfig];
    if (!v3)
    {
      v3 = +[AMSLogConfig sharedConfig];
    }

    v4 = [v3 OSLogObject];
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      v8 = objc_opt_class();
      v9 = [*(a1 + 32) containerId];
      v10 = *(a1 + 56);
      *buf = 138543874;
      *&buf[4] = v8;
      *&buf[12] = 2114;
      *&buf[14] = v9;
      *&buf[22] = 2050;
      v37 = v10;
      _os_log_impl(&dword_192869000, v4, OS_LOG_TYPE_DEFAULT, "%{public}@: [%{public}@] Cannot schedule flush with style %{public}ld because the style is currently not allowed.", buf, 0x20u);
    }

    goto LABEL_12;
  }

  v2 = *(a1 + 32);
  if (v2[16])
  {
    v3 = +[AMSLogConfig sharedMetricsConfig];
    if (!v3)
    {
      v3 = +[AMSLogConfig sharedConfig];
    }

    v4 = [v3 OSLogObject];
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      v5 = objc_opt_class();
      v6 = [*(a1 + 32) containerId];
      v7 = *(a1 + 56);
      *buf = 138543874;
      *&buf[4] = v5;
      *&buf[12] = 2114;
      *&buf[14] = v6;
      *&buf[22] = 2050;
      v37 = v7;
      _os_log_impl(&dword_192869000, v4, OS_LOG_TYPE_DEFAULT, "%{public}@: [%{public}@] Cannot schedule flush with style %{public}ld because one has already been scheduled and is pending.", buf, 0x20u);
    }

LABEL_12:

    return;
  }

  [v2 _flushIntervalWithConfiguration:*(a1 + 40) forEvents:*(a1 + 48)];
  v12 = v11;
  v13 = v11 != 0.0;
  v14 = +[AMSLogConfig sharedMetricsConfig];
  v3 = v14;
  if (!v13)
  {
    if (!v14)
    {
      v3 = +[AMSLogConfig sharedConfig];
    }

    v4 = [v3 OSLogObject];
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      v28 = objc_opt_class();
      v29 = [*(a1 + 32) containerId];
      v30 = *(a1 + 56);
      *buf = 138543874;
      *&buf[4] = v28;
      *&buf[12] = 2114;
      *&buf[14] = v29;
      *&buf[22] = 2050;
      v37 = v30;
      _os_log_impl(&dword_192869000, v4, OS_LOG_TYPE_DEFAULT, "%{public}@: [%{public}@] Cannot schedule flush with style %{public}ld (no flush interval available)", buf, 0x20u);
    }

    goto LABEL_12;
  }

  if (!v14)
  {
    v3 = +[AMSLogConfig sharedConfig];
  }

  v15 = [v3 OSLogObject];
  if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
  {
    v16 = objc_opt_class();
    v17 = [*(a1 + 32) containerId];
    v18 = *(a1 + 56);
    v19 = v12;
    *buf = 138544130;
    *&buf[4] = v16;
    *&buf[12] = 2114;
    *&buf[14] = v17;
    *&buf[22] = 2050;
    v37 = v18;
    LOWORD(v38) = 2050;
    *(&v38 + 2) = v19;
    _os_log_impl(&dword_192869000, v15, OS_LOG_TYPE_DEFAULT, "%{public}@: [%{public}@] Flush scheduled. (style: %{public}ld, time: %{public}.3f)", buf, 0x2Au);
  }

  objc_initWeak(&location, *(a1 + 32));
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __50__AMSMetrics__beginFlushIntervalWithStyle_events___block_invoke_154;
  block[3] = &unk_1E73B9368;
  objc_copyWeak(v34, &location);
  v34[1] = *(a1 + 56);
  v20 = dispatch_block_create(DISPATCH_BLOCK_ENFORCE_QOS_CLASS, block);
  v21 = *(*(a1 + 32) + 128);
  *(*(a1 + 32) + 128) = v20;

  v22 = +[AMSMetrics sharedTimerQueue];
  v23 = *(*(a1 + 32) + 128);
  v24 = v22;
  v25 = v23;
  v26 = AMSLogKey();
  if (v12 * 1000000000.0 <= 9.22337204e18)
  {
    v27 = dispatch_time(0, (v12 * 1000000000.0));
  }

  else
  {
    v27 = -1;
  }

  *buf = MEMORY[0x1E69E9820];
  *&buf[8] = 3221225472;
  *&buf[16] = __AMSDispatchAfter_block_invoke_2;
  v37 = &unk_1E73B36D0;
  *&v38 = v26;
  *(&v38 + 1) = v25;
  v31 = v26;
  v32 = v25;
  dispatch_after(v27, v24, buf);

  objc_destroyWeak(v34);
  objc_destroyWeak(&location);
}

void __50__AMSMetrics__beginFlushIntervalWithStyle_events___block_invoke_154(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v3 = WeakRetained;
  if (WeakRetained)
  {
    v4 = [WeakRetained _handleFlushIntervalWithStyle:*(a1 + 40)];
    v5[0] = MEMORY[0x1E69E9820];
    v5[1] = 3221225472;
    v5[2] = __50__AMSMetrics__beginFlushIntervalWithStyle_events___block_invoke_2;
    v5[3] = &unk_1E73B9340;
    objc_copyWeak(&v6, (a1 + 32));
    [v4 addFinishBlock:v5];

    objc_destroyWeak(&v6);
  }
}

void __50__AMSMetrics__beginFlushIntervalWithStyle_events___block_invoke_2(uint64_t a1)
{
  v2 = +[AMSMetrics sharedTimerQueue];
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __50__AMSMetrics__beginFlushIntervalWithStyle_events___block_invoke_3;
  block[3] = &unk_1E73B4418;
  objc_copyWeak(&v4, (a1 + 32));
  dispatch_async(v2, block);

  objc_destroyWeak(&v4);
}

void __50__AMSMetrics__beginFlushIntervalWithStyle_events___block_invoke_3(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    v2 = WeakRetained[16];
    WeakRetained[16] = 0;
    v3 = WeakRetained;

    WeakRetained = v3;
  }
}

- (double)_flushIntervalWithConfiguration:(id)a3 forEvents:(id)a4
{
  v24 = *MEMORY[0x1E69E9840];
  v5 = a3;
  v6 = a4;
  v19 = 0u;
  v20 = 0u;
  v21 = 0u;
  v22 = 0u;
  v7 = [v6 countByEnumeratingWithState:&v19 objects:v23 count:16];
  if (!v7)
  {
    goto LABEL_17;
  }

  v8 = v7;
  v9 = *v20;
  v10 = 0.0;
  do
  {
    for (i = 0; i != v8; ++i)
    {
      if (*v20 != v9)
      {
        objc_enumerationMutation(v6);
      }

      v12 = [v5 modifierForEvent:*(*(&v19 + 1) + 8 * i)];
      [v12 flushInterval];
      if ((v10 > v13 || v10 == 0.0) && v13 > 0.0)
      {
        v10 = v13;
      }
    }

    v8 = [v6 countByEnumeratingWithState:&v19 objects:v23 count:16];
  }

  while (v8);
  if (v10 == 0.0)
  {
LABEL_17:
    v16 = [v5 modifierForEvent:0];
    [v16 flushInterval];
    v10 = v17;
  }

  return v10;
}

- (id)_handleFlushIntervalWithStyle:(int64_t)a3
{
  v5 = +[AMSMetrics sharedTimerQueue];
  dispatch_assert_queue_V2(v5);

  v6 = AMSSetLogKey(0);
  objc_initWeak(&location, self);
  v7 = objc_opt_new();
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 3221225472;
  aBlock[2] = __44__AMSMetrics__handleFlushIntervalWithStyle___block_invoke;
  aBlock[3] = &unk_1E73B93E0;
  objc_copyWeak(v26, &location);
  v26[1] = a3;
  aBlock[4] = self;
  v8 = v7;
  v25 = v8;
  v9 = _Block_copy(aBlock);
  v10 = NSClassFromString(&cfstr_Uiapplication.isa);
  NSSelectorFromString(&cfstr_Sharedapplicat.isa);
  if (objc_opt_respondsToSelector())
  {
    v11 = MEMORY[0x1E69E96A0];
    v12 = MEMORY[0x1E69E96A0];
    v20[0] = MEMORY[0x1E69E9820];
    v20[1] = 3221225472;
    v20[2] = __44__AMSMetrics__handleFlushIntervalWithStyle___block_invoke_2;
    v20[3] = &unk_1E73B9408;
    v20[4] = self;
    v22 = v10;
    v23 = a3;
    v21 = v9;
    v13 = v20;
    v14 = v11;
    v15 = AMSLogKey();
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __AMSDispatchAsync_block_invoke_4;
    block[3] = &unk_1E73B36D0;
    v29 = v15;
    v30 = v13;
    v16 = v15;
    v17 = MEMORY[0x1E69E96A0];
    dispatch_async(MEMORY[0x1E69E96A0], block);
  }

  else
  {
    v9[2](v9);
  }

  v18 = v8;

  objc_destroyWeak(v26);
  objc_destroyWeak(&location);

  return v18;
}

void __44__AMSMetrics__handleFlushIntervalWithStyle___block_invoke(uint64_t a1)
{
  v29 = *MEMORY[0x1E69E9840];
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  v3 = [WeakRetained _scheduledFlushAllowedForStyle:*(a1 + 56)];
  v4 = +[AMSLogConfig sharedMetricsConfig];
  v5 = v4;
  if (v3)
  {
    if (!v4)
    {
      v5 = +[AMSLogConfig sharedConfig];
    }

    v6 = [v5 OSLogObject];
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      v7 = objc_opt_class();
      v8 = v7;
      v9 = AMSLogKey();
      v10 = [*(a1 + 32) containerId];
      v11 = *(a1 + 56);
      *buf = 138544130;
      v22 = v7;
      v23 = 2114;
      v24 = v9;
      v25 = 2114;
      v26 = v10;
      v27 = 2050;
      v28 = v11;
      _os_log_impl(&dword_192869000, v6, OS_LOG_TYPE_DEFAULT, "%{public}@: [%{public}@] Scheduled flush fired for container %{public}@ with flush style %{public}ld", buf, 0x2Au);
    }

    v5 = [WeakRetained flush];
    v18[0] = MEMORY[0x1E69E9820];
    v18[1] = 3221225472;
    v18[2] = __44__AMSMetrics__handleFlushIntervalWithStyle___block_invoke_158;
    v18[3] = &unk_1E73B93B8;
    objc_copyWeak(&v20, (a1 + 48));
    v19 = *(a1 + 40);
    [v5 addFinishBlock:v18];

    objc_destroyWeak(&v20);
  }

  else
  {
    if (!v4)
    {
      v5 = +[AMSLogConfig sharedConfig];
    }

    v12 = [v5 OSLogObject];
    if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
    {
      v13 = objc_opt_class();
      v14 = v13;
      v15 = AMSLogKey();
      v16 = [*(a1 + 32) containerId];
      v17 = *(a1 + 56);
      *buf = 138544130;
      v22 = v13;
      v23 = 2114;
      v24 = v15;
      v25 = 2114;
      v26 = v16;
      v27 = 2050;
      v28 = v17;
      _os_log_impl(&dword_192869000, v12, OS_LOG_TYPE_DEFAULT, "%{public}@: [%{public}@] Skipping scheduled flush for container %{public}@ because flush style %{public}ld is not currently allowed", buf, 0x2Au);
    }
  }
}

void __44__AMSMetrics__handleFlushIntervalWithStyle___block_invoke_158(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = a3;
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  [WeakRetained _beginFlushIntervalWithStyle:2 events:0];
  [*(a1 + 32) finishWithSuccess:a2 != 0 error:v5];
}

void __44__AMSMetrics__handleFlushIntervalWithStyle___block_invoke_2(uint64_t a1)
{
  v21 = *MEMORY[0x1E69E9840];
  if ([*(a1 + 32) monitorsLifecycleEvents] && (objc_msgSend(*(a1 + 48), "sharedApplication"), (v2 = objc_claimAutoreleasedReturnValue()) != 0) && (v3 = v2, objc_msgSend(*(a1 + 48), "sharedApplication"), v4 = objc_claimAutoreleasedReturnValue(), v5 = objc_msgSend(v4, "applicationState"), v4, v3, v5))
  {
    v6 = +[AMSLogConfig sharedMetricsConfig];
    if (!v6)
    {
      v6 = +[AMSLogConfig sharedConfig];
    }

    v7 = [v6 OSLogObject];
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      v8 = objc_opt_class();
      v9 = v8;
      v10 = AMSLogKey();
      v11 = [*(a1 + 32) containerId];
      v12 = *(a1 + 56);
      *v18 = 138544130;
      *&v18[4] = v8;
      *&v18[12] = 2114;
      *&v18[14] = v10;
      *&v18[22] = 2112;
      v19 = v11;
      LOWORD(v20) = 2050;
      *(&v20 + 2) = v12;
      _os_log_impl(&dword_192869000, v7, OS_LOG_TYPE_DEFAULT, "%{public}@: [%{public}@] Scheduled flush for container %@{public}@ with flush style %{public}ld unable to run while app is inactive, it will be run when app becomes active again.", v18, 0x2Au);
    }

    [*(a1 + 32) setFlushOnDidBecomeActiveBlock:*(a1 + 40)];
  }

  else
  {
    v13 = +[AMSMetrics sharedTimerQueue];
    v14 = *(a1 + 40);
    v15 = AMSLogKey();
    *v18 = MEMORY[0x1E69E9820];
    *&v18[8] = 3221225472;
    *&v18[16] = __AMSDispatchAsync_block_invoke_4;
    v19 = &unk_1E73B36D0;
    *&v20 = v15;
    *(&v20 + 1) = v14;
    v16 = v15;
    v17 = v14;
    dispatch_async(v13, v18);
  }
}

- (id)_modifiedEvents:(id)a3
{
  v4 = a3;
  v5 = [(AMSMetrics *)self treatmentStore];
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __30__AMSMetrics__modifiedEvents___block_invoke;
  v10[3] = &unk_1E73B9458;
  v11 = v5;
  v6 = v5;
  v7 = [v4 ams_mapWithTransform:v10];

  v8 = [AMSPromise promiseWithAll:v7];

  return v8;
}

id __30__AMSMetrics__modifiedEvents___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = *(a1 + 32);
  v5 = [v3 topic];
  v6 = [v4 encodeExperimentDataForTopic:v5];
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __30__AMSMetrics__modifiedEvents___block_invoke_2;
  v10[3] = &unk_1E73B9430;
  v11 = v3;
  v7 = v3;
  v8 = [v6 continueWithBlock:v10];

  return v8;
}

id __30__AMSMetrics__modifiedEvents___block_invoke_2(uint64_t a1, void *a2)
{
  v3 = a2;
  if ([v3 length])
  {
    v4 = [*(a1 + 32) copy];
    [v4 setProperty:v3 forBodyKey:@"ab2_data"];
    v5 = [AMSPromise promiseWithResult:v4];
  }

  else
  {
    v5 = [AMSPromise promiseWithResult:*(a1 + 32)];
  }

  return v5;
}

- (BOOL)_scheduledFlushAllowedForStyle:(int64_t)a3
{
  os_unfair_lock_lock_with_options();
  if (!self->_flushTimerEnabled || !+[AMSMetrics flushTimerEnabled])
  {
    goto LABEL_7;
  }

  switch(a3)
  {
    case 0:
      LOBYTE(v5) = 1;
      break;
    case 1:
      LOBYTE(v5) = +[AMSMetrics flushDelayEnabled];
      break;
    case 2:
      v5 = !+[AMSMetrics flushDelayEnabled];
      break;
    default:
LABEL_7:
      LOBYTE(v5) = 0;
      break;
  }

  os_unfair_lock_unlock(&self->_flushModeLock);
  return v5;
}

- (AMSMetrics)initWithContainerId:(id)a3 bagContract:(id)a4
{
  v6 = a4;
  v7 = a3;
  v8 = [[AMSContractBagShim alloc] initWithBagContract:v6];

  v9 = [(AMSMetrics *)self initWithContainerID:v7 bag:v8];
  return v9;
}

- (AMSMetricsBagContract)bagContract
{
  v3 = [AMSDeprecatedBagContract alloc];
  v4 = [(AMSMetrics *)self bag];
  v5 = [(AMSDeprecatedBagContract *)v3 initWithBag:v4];

  return v5;
}

- (void)setBagContract:(id)a3
{
  v4 = a3;
  v5 = [[AMSContractBagShim alloc] initWithBagContract:v4];

  [(AMSMetrics *)self setBag:v5];
}

- (void)_applicationDidBecomeActive:(id)a3
{
  v14 = *MEMORY[0x1E69E9840];
  v4 = [(AMSMetrics *)self flushOnDidBecomeActiveBlock];
  if (v4)
  {
    v5 = +[AMSLogConfig sharedMetricsConfig];
    if (!v5)
    {
      v5 = +[AMSLogConfig sharedConfig];
    }

    v6 = [v5 OSLogObject];
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      v7 = objc_opt_class();
      v8 = v7;
      v9 = AMSLogKey();
      v10 = 138543618;
      v11 = v7;
      v12 = 2114;
      v13 = v9;
      _os_log_impl(&dword_192869000, v6, OS_LOG_TYPE_DEFAULT, "%{public}@: [%{public}@] Running deferred flush after app became active", &v10, 0x16u);
    }

    [(AMSMetrics *)self setFlushOnDidBecomeActiveBlock:0];
    v4[2](v4);
  }
}

@end