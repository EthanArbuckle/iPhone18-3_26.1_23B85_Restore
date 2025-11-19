@interface AMSMetricsDatabaseDataSource
- (AMSMetricsDatabase)database;
- (AMSMetricsDatabaseDataSource)initWithContainerIdentifier:(id)a3;
- (BOOL)removeEvents:(id)a3 error:(id *)a4;
- (BOOL)skipEvents:(id)a3 error:(id *)a4;
- (BOOL)willStartBatchingWithLogKey:(id)a3 error:(id *)a4;
- (id)enqueueEvents:(id)a3;
- (int64_t)eventCount;
- (void)didFinishBatching;
- (void)enumerateSortedEventsForTopic:(id)a3 block:(id)a4;
- (void)removeAllEvents;
@end

@implementation AMSMetricsDatabaseDataSource

- (AMSMetricsDatabase)database
{
  v17 = *MEMORY[0x1E69E9840];
  v3 = [(AMSMetricsDatabaseDataSource *)self queue];
  dispatch_assert_queue_V2(v3);

  database = self->_database;
  if (!database)
  {
    v5 = [(AMSMetricsDatabaseDataSource *)self containerIdentifier];
    v6 = [AMSMetricsDatabase sharedDatabaseWithContainerId:v5];
    v7 = self->_database;
    self->_database = v6;

    database = self->_database;
    if (!database)
    {
      v8 = +[AMSLogConfig sharedMetricsConfig];
      if (!v8)
      {
        v8 = +[AMSLogConfig sharedConfig];
      }

      v9 = [v8 OSLogObject];
      if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
      {
        v10 = objc_opt_class();
        v11 = AMSLogKey();
        v13 = 138543618;
        v14 = v10;
        v15 = 2114;
        v16 = v11;
        _os_log_impl(&dword_192869000, v9, OS_LOG_TYPE_ERROR, "%{public}@: [%{public}@] Failed to initialize metrics database", &v13, 0x16u);
      }

      database = self->_database;
    }
  }

  return database;
}

- (AMSMetricsDatabaseDataSource)initWithContainerIdentifier:(id)a3
{
  v4 = a3;
  v15.receiver = self;
  v15.super_class = AMSMetricsDatabaseDataSource;
  v5 = [(AMSMetricsDatabaseDataSource *)&v15 init];
  if (v5)
  {
    v6 = [v4 copy];
    containerIdentifier = v5->_containerIdentifier;
    v5->_containerIdentifier = v6;

    v8 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    v9 = dispatch_queue_create("com.apple.AMSMetricsDatabaseDataSource", v8);
    queue = v5->_queue;
    v5->_queue = v9;

    v11 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    v12 = dispatch_queue_create("com.apple.AMSMetricsDatabaseDataSource.callbackQueue", v11);
    callbackQueue = v5->_callbackQueue;
    v5->_callbackQueue = v12;
  }

  return v5;
}

- (int64_t)eventCount
{
  v11 = 0;
  v12 = &v11;
  v13 = 0x2020000000;
  v14 = 0;
  v3 = [(AMSMetricsDatabaseDataSource *)self queue];
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __42__AMSMetricsDatabaseDataSource_eventCount__block_invoke;
  v10[3] = &unk_1E73B3EA8;
  v10[4] = self;
  v10[5] = &v11;
  v4 = v10;
  v5 = v3;
  v6 = AMSLogKey();
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __AMSDispatchSync_block_invoke_0;
  block[3] = &unk_1E73B36D0;
  v16 = v6;
  v17 = v4;
  v7 = v6;
  dispatch_sync(v5, block);

  v8 = v12[3];
  _Block_object_dispose(&v11, 8);
  return v8;
}

void __42__AMSMetricsDatabaseDataSource_eventCount__block_invoke(uint64_t a1)
{
  v17 = *MEMORY[0x1E69E9840];
  v2 = [*(a1 + 32) database];
  v10 = 0;
  v3 = [v2 countAllEventsWithLockKey:0 error:&v10];
  v4 = v10;
  *(*(*(a1 + 40) + 8) + 24) = v3;

  if (v4)
  {
    v5 = +[AMSLogConfig sharedMetricsConfig];
    if (!v5)
    {
      v5 = +[AMSLogConfig sharedConfig];
    }

    v6 = [v5 OSLogObject];
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      v7 = objc_opt_class();
      v8 = AMSLogKey();
      v9 = AMSLogableError(v4);
      *buf = 138543874;
      v12 = v7;
      v13 = 2114;
      v14 = v8;
      v15 = 2114;
      v16 = v9;
      _os_log_impl(&dword_192869000, v6, OS_LOG_TYPE_ERROR, "%{public}@: [%{public}@] Failed to count events. Error = %{public}@", buf, 0x20u);
    }
  }
}

- (id)enqueueEvents:(id)a3
{
  v4 = a3;
  v5 = objc_alloc_init(AMSMutableBinaryPromise);
  v6 = [(AMSMetricsDatabaseDataSource *)self queue];
  v15[0] = MEMORY[0x1E69E9820];
  v15[1] = 3221225472;
  v15[2] = __46__AMSMetricsDatabaseDataSource_enqueueEvents___block_invoke;
  v15[3] = &unk_1E73B71B0;
  v16 = v4;
  v17 = self;
  v7 = v5;
  v18 = v7;
  v8 = v15;
  v9 = v4;
  v10 = AMSLogKey();
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __AMSDispatchAsync_block_invoke_5;
  block[3] = &unk_1E73B36D0;
  v20 = v10;
  v21 = v8;
  v11 = v10;
  dispatch_async(v6, block);

  v12 = v18;
  v13 = v7;

  return v7;
}

void __46__AMSMetricsDatabaseDataSource_enqueueEvents___block_invoke(uint64_t a1)
{
  if ([*(a1 + 32) count])
  {
    v2 = [AMSMetricsMemoryDataSource batchesFromEvents:*(a1 + 32)];
    v3 = [*(a1 + 40) database];
    v16 = 0;
    v4 = [v3 insertEvents:v2 error:&v16];
    v5 = v16;
  }

  else
  {
    v5 = 0;
    v4 = 1;
  }

  v6 = [*(a1 + 40) callbackQueue];
  v12[0] = MEMORY[0x1E69E9820];
  v12[1] = 3221225472;
  v12[2] = __46__AMSMetricsDatabaseDataSource_enqueueEvents___block_invoke_2;
  v12[3] = &unk_1E73B9818;
  v15 = v4;
  v7 = *(a1 + 48);
  v12[4] = *(a1 + 40);
  v13 = v5;
  v14 = v7;
  v8 = v12;
  v9 = v5;
  v10 = AMSLogKey();
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __AMSDispatchAsync_block_invoke_5;
  block[3] = &unk_1E73B36D0;
  v18 = v10;
  v19 = v8;
  v11 = v10;
  dispatch_async(v6, block);
}

uint64_t __46__AMSMetricsDatabaseDataSource_enqueueEvents___block_invoke_2(uint64_t a1)
{
  v15 = *MEMORY[0x1E69E9840];
  if (*(a1 + 56))
  {
    v2 = *(a1 + 48);

    return [v2 finishWithSuccess];
  }

  else
  {
    v4 = +[AMSLogConfig sharedMetricsConfig];
    if (!v4)
    {
      v4 = +[AMSLogConfig sharedConfig];
    }

    v5 = [v4 OSLogObject];
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      v6 = objc_opt_class();
      v7 = AMSLogKey();
      v8 = AMSLogableError(*(a1 + 40));
      v9 = 138543874;
      v10 = v6;
      v11 = 2114;
      v12 = v7;
      v13 = 2114;
      v14 = v8;
      _os_log_impl(&dword_192869000, v5, OS_LOG_TYPE_ERROR, "%{public}@: [%{public}@] Failed to insert events. Error = %{public}@", &v9, 0x20u);
    }

    return [*(a1 + 48) finishWithError:*(a1 + 40)];
  }
}

- (void)removeAllEvents
{
  v3 = [(AMSMetricsDatabaseDataSource *)self queue];
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __47__AMSMetricsDatabaseDataSource_removeAllEvents__block_invoke;
  v7[3] = &unk_1E73B3680;
  v7[4] = self;
  v4 = v7;
  v5 = AMSLogKey();
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __AMSDispatchAsync_block_invoke_5;
  block[3] = &unk_1E73B36D0;
  v9 = v5;
  v10 = v4;
  v6 = v5;
  dispatch_async(v3, block);
}

void __47__AMSMetricsDatabaseDataSource_removeAllEvents__block_invoke(uint64_t a1)
{
  v16 = *MEMORY[0x1E69E9840];
  v1 = [*(a1 + 32) database];
  v9 = 0;
  v2 = [v1 dropAllEventsWithLockKey:0 error:&v9];
  v3 = v9;

  if ((v2 & 1) == 0)
  {
    v4 = +[AMSLogConfig sharedMetricsConfig];
    if (!v4)
    {
      v4 = +[AMSLogConfig sharedConfig];
    }

    v5 = [v4 OSLogObject];
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      v6 = objc_opt_class();
      v7 = AMSLogKey();
      v8 = AMSLogableError(v3);
      *buf = 138543874;
      v11 = v6;
      v12 = 2114;
      v13 = v7;
      v14 = 2114;
      v15 = v8;
      _os_log_impl(&dword_192869000, v5, OS_LOG_TYPE_ERROR, "%{public}@: [%{public}@] Failed to drop events. Error = %{public}@", buf, 0x20u);
    }
  }
}

- (void)didFinishBatching
{
  v3 = [(AMSMetricsDatabaseDataSource *)self queue];
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __49__AMSMetricsDatabaseDataSource_didFinishBatching__block_invoke;
  v7[3] = &unk_1E73B3680;
  v7[4] = self;
  v4 = v7;
  v5 = AMSLogKey();
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __AMSDispatchAsync_block_invoke_5;
  block[3] = &unk_1E73B36D0;
  v9 = v5;
  v10 = v4;
  v6 = v5;
  dispatch_async(v3, block);
}

uint64_t __49__AMSMetricsDatabaseDataSource_didFinishBatching__block_invoke(uint64_t a1)
{
  v20 = *MEMORY[0x1E69E9840];
  v2 = [*(a1 + 32) currentLockKey];

  if (v2)
  {
    v3 = [*(a1 + 32) database];
    v4 = [*(a1 + 32) currentLockKey];
    v13 = 0;
    v5 = [v3 unlockAllEventsWithKey:v4 error:&v13];
    v6 = v13;

    if ((v5 & 1) == 0)
    {
      v7 = +[AMSLogConfig sharedMetricsConfig];
      if (!v7)
      {
        v7 = +[AMSLogConfig sharedConfig];
      }

      v8 = [v7 OSLogObject];
      if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
      {
        v9 = objc_opt_class();
        v10 = v9;
        v11 = AMSLogKey();
        *buf = 138543874;
        v15 = v9;
        v16 = 2114;
        v17 = v11;
        v18 = 2114;
        v19 = v6;
        _os_log_impl(&dword_192869000, v8, OS_LOG_TYPE_ERROR, "%{public}@: [%{public}@] Error unlocking event. Error = %{public}@", buf, 0x20u);
      }
    }
  }

  return [*(a1 + 32) setCurrentLockKey:0];
}

- (void)enumerateSortedEventsForTopic:(id)a3 block:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [(AMSMetricsDatabaseDataSource *)self queue];
  v14[0] = MEMORY[0x1E69E9820];
  v14[1] = 3221225472;
  v14[2] = __68__AMSMetricsDatabaseDataSource_enumerateSortedEventsForTopic_block___block_invoke;
  v14[3] = &unk_1E73B5230;
  v14[4] = self;
  v15 = v6;
  v16 = v7;
  v9 = v14;
  v10 = v7;
  v11 = v6;
  v12 = AMSLogKey();
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __AMSDispatchSync_block_invoke_0;
  block[3] = &unk_1E73B36D0;
  v18 = v12;
  v19 = v9;
  v13 = v12;
  dispatch_sync(v8, block);
}

void __68__AMSMetricsDatabaseDataSource_enumerateSortedEventsForTopic_block___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) database];
  v3 = *(a1 + 40);
  v4 = [*(a1 + 32) currentLockKey];
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __68__AMSMetricsDatabaseDataSource_enumerateSortedEventsForTopic_block___block_invoke_2;
  v5[3] = &unk_1E73B9840;
  v6 = *(a1 + 48);
  [v2 enumerateEventsWithTopic:v3 lockKey:v4 objectBlock:v5];
}

- (BOOL)removeEvents:(id)a3 error:(id *)a4
{
  v6 = a3;
  v23 = 0;
  v24 = &v23;
  v25 = 0x3032000000;
  v26 = __Block_byref_object_copy__42;
  v27 = __Block_byref_object_dispose__42;
  v28 = 0;
  v19 = 0;
  v20 = &v19;
  v21 = 0x2020000000;
  v22 = 1;
  v7 = [(AMSMetricsDatabaseDataSource *)self queue];
  v15[0] = MEMORY[0x1E69E9820];
  v15[1] = 3221225472;
  v15[2] = __51__AMSMetricsDatabaseDataSource_removeEvents_error___block_invoke;
  v15[3] = &unk_1E73B9868;
  v17 = &v19;
  v15[4] = self;
  v8 = v6;
  v16 = v8;
  v18 = &v23;
  v9 = v15;
  v10 = v7;
  v11 = AMSLogKey();
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __AMSDispatchSync_block_invoke_0;
  block[3] = &unk_1E73B36D0;
  v30 = v11;
  v31 = v9;
  v12 = v11;
  dispatch_sync(v10, block);

  v13 = *(v20 + 24);
  if (a4 && (v20[3] & 1) == 0)
  {
    *a4 = v24[5];
  }

  _Block_object_dispose(&v19, 8);
  _Block_object_dispose(&v23, 8);

  return v13;
}

void __51__AMSMetricsDatabaseDataSource_removeEvents_error___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) database];
  v3 = *(a1 + 40);
  v4 = *(*(a1 + 56) + 8);
  obj = *(v4 + 40);
  v5 = [v2 dropEvents:v3 error:&obj];
  objc_storeStrong((v4 + 40), obj);
  *(*(*(a1 + 48) + 8) + 24) = v5;
}

- (BOOL)skipEvents:(id)a3 error:(id *)a4
{
  v6 = a3;
  v23 = 0;
  v24 = &v23;
  v25 = 0x3032000000;
  v26 = __Block_byref_object_copy__42;
  v27 = __Block_byref_object_dispose__42;
  v28 = 0;
  v19 = 0;
  v20 = &v19;
  v21 = 0x2020000000;
  v22 = 1;
  v7 = [(AMSMetricsDatabaseDataSource *)self queue];
  v15[0] = MEMORY[0x1E69E9820];
  v15[1] = 3221225472;
  v15[2] = __49__AMSMetricsDatabaseDataSource_skipEvents_error___block_invoke;
  v15[3] = &unk_1E73B9868;
  v17 = &v19;
  v15[4] = self;
  v8 = v6;
  v16 = v8;
  v18 = &v23;
  v9 = v15;
  v10 = v7;
  v11 = AMSLogKey();
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __AMSDispatchSync_block_invoke_0;
  block[3] = &unk_1E73B36D0;
  v30 = v11;
  v31 = v9;
  v12 = v11;
  dispatch_sync(v10, block);

  v13 = *(v20 + 24);
  if (a4 && (v20[3] & 1) == 0)
  {
    *a4 = v24[5];
  }

  _Block_object_dispose(&v19, 8);
  _Block_object_dispose(&v23, 8);

  return v13;
}

void __49__AMSMetricsDatabaseDataSource_skipEvents_error___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) database];
  v3 = *(a1 + 40);
  v4 = *(*(a1 + 56) + 8);
  obj = *(v4 + 40);
  v5 = [v2 unlockEvents:v3 error:&obj];
  objc_storeStrong((v4 + 40), obj);
  *(*(*(a1 + 48) + 8) + 24) = v5;
}

- (BOOL)willStartBatchingWithLogKey:(id)a3 error:(id *)a4
{
  v6 = a3;
  v19 = 0;
  v20 = &v19;
  v21 = 0x3032000000;
  v22 = __Block_byref_object_copy__42;
  v23 = __Block_byref_object_dispose__42;
  v24 = 0;
  v15 = 0;
  v16 = &v15;
  v17 = 0x2020000000;
  v18 = 1;
  v7 = [(AMSMetricsDatabaseDataSource *)self queue];
  v14[0] = MEMORY[0x1E69E9820];
  v14[1] = 3221225472;
  v14[2] = __66__AMSMetricsDatabaseDataSource_willStartBatchingWithLogKey_error___block_invoke;
  v14[3] = &unk_1E73B9890;
  v14[4] = self;
  v14[5] = &v19;
  v14[6] = &v15;
  v8 = v14;
  v9 = v7;
  v10 = AMSLogKey();
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __AMSDispatchSync_block_invoke_0;
  block[3] = &unk_1E73B36D0;
  v26 = v10;
  v27 = v8;
  v11 = v10;
  dispatch_sync(v9, block);

  v12 = *(v16 + 24);
  if (a4 && (v16[3] & 1) == 0)
  {
    *a4 = v20[5];
  }

  _Block_object_dispose(&v15, 8);
  _Block_object_dispose(&v19, 8);

  return v12;
}

void __66__AMSMetricsDatabaseDataSource_willStartBatchingWithLogKey_error___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) database];
  v3 = *(*(a1 + 40) + 8);
  obj = *(v3 + 40);
  v4 = [v2 lockAllEventsWithError:&obj];
  objc_storeStrong((v3 + 40), obj);

  [*(a1 + 32) setCurrentLockKey:v4];
  *(*(*(a1 + 48) + 8) + 24) = v4 != 0;
}

@end