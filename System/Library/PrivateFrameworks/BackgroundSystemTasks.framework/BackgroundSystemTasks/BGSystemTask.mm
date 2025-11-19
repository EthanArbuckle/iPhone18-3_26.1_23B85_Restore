@interface BGSystemTask
+ (id)logger;
- (BGSystemTask)initWithIdentifier:(id)a3;
- (BGSystemTask)initWithIdentifier:(id)a3 queue:(id)a4 taskRequest:(id)a5;
- (BGSystemTaskDelegate)delegate;
- (BOOL)consumedResults:(id)a3 error:(id *)a4;
- (BOOL)deregisterThroughputTrackingFor:(id)a3 withEndTime:(id)a4 error:(id *)a5;
- (BOOL)producedCumulativeResults:(id)a3 error:(id *)a4;
- (BOOL)queue_reportBufferedTaskWorkloadProgress;
- (BOOL)queue_reportThroughputForPerformanceMetric:(id)a3 error:(id *)a4;
- (BOOL)registerThroughputTrackingFor:(id)a3 withStartTime:(id)a4 error:(id *)a5;
- (BOOL)reportCumulativeResultConsumptionWithError:(id *)a3;
- (BOOL)reportPendingThroughputMetrics;
- (BOOL)reportTaskWorkloadProgress:(unint64_t)a3 completed:(unint64_t)a4 category:(unint64_t)a5 subCategory:(id)a6 error:(id *)a7;
- (BOOL)resetResultsForIdentifier:(id)a3 error:(id *)a4;
- (BOOL)resultQueue_containsPendingConsumedResults;
- (BOOL)sendTaskWorkloadProgressToPPS:(unint64_t)a3 completed:(unint64_t)a4 category:(unint64_t)a5 subCategory:(id)a6;
- (BOOL)setTaskExpiredWithRetryAfter:(double)a3 error:(id *)a4;
- (id)delegate:(id *)a3;
- (void)clearLocked;
- (void)handleExpirationWithReason:(unint64_t)a3;
- (void)invokeExpirationHandlerWithReason:(unint64_t)a3;
- (void)prepareForRunning;
- (void)resultQueue_aggregateConsumedResult:(id)a3;
- (void)setExpirationHandler:(id)a3;
- (void)setExpirationHandlerWithReason:(id)a3;
- (void)setTaskCompleted;
@end

@implementation BGSystemTask

- (void)setTaskCompleted
{
  dispatch_assert_queue_not_V2(self->_queue);
  if (![(BGSystemTask *)self invalid])
  {
    [(BGSystemTask *)self reportCumulativeResultConsumptionWithError:0];
    [(BGSystemTask *)self reportPendingThroughputMetrics];
    queue = self->_queue;
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __32__BGSystemTask_setTaskCompleted__block_invoke;
    block[3] = &unk_1E7B24590;
    block[4] = self;
    dispatch_sync(queue, block);
  }
}

- (BGSystemTaskDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

- (BOOL)resultQueue_containsPendingConsumedResults
{
  dispatch_assert_queue_V2(self->_resultQueue);
  v3 = [(NSMutableDictionary *)self->_runningConsumedResults allKeys];
  v4 = [v3 count] != 0;

  return v4;
}

- (BOOL)reportPendingThroughputMetrics
{
  v24 = *MEMORY[0x1E69E9840];
  v17 = 0;
  v18 = &v17;
  v19 = 0x3032000000;
  v20 = __Block_byref_object_copy__2;
  v21 = __Block_byref_object_dispose__2;
  v22 = [MEMORY[0x1E695DF70] array];
  v3 = [(BGSystemTask *)self performanceMetricQueue];
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __46__BGSystemTask_reportPendingThroughputMetrics__block_invoke;
  block[3] = &unk_1E7B24680;
  block[4] = self;
  block[5] = &v17;
  dispatch_sync(v3, block);

  v14 = 0u;
  v15 = 0u;
  v12 = 0u;
  v13 = 0u;
  v4 = v18[5];
  v5 = [v4 countByEnumeratingWithState:&v12 objects:v23 count:16];
  if (v5)
  {
    v6 = *v13;
    do
    {
      for (i = 0; i != v5; ++i)
      {
        if (*v13 != v6)
        {
          objc_enumerationMutation(v4);
        }

        v8 = [(BGSystemTask *)self deregisterThroughputTrackingFor:*(*(&v12 + 1) + 8 * i) withEndTime:0 error:0, v12];
      }

      v9 = v8;
      v5 = [v4 countByEnumeratingWithState:&v12 objects:v23 count:16];
    }

    while (v5);
  }

  else
  {
    v9 = 1;
  }

  _Block_object_dispose(&v17, 8);
  v10 = *MEMORY[0x1E69E9840];
  return v9;
}

void __46__BGSystemTask_reportPendingThroughputMetrics__block_invoke(uint64_t a1)
{
  v28 = *MEMORY[0x1E69E9840];
  v22 = 0u;
  v23 = 0u;
  v24 = 0u;
  v25 = 0u;
  obj = [*(a1 + 32) throughputMetricsMap];
  v17 = [obj countByEnumeratingWithState:&v22 objects:v27 count:16];
  if (v17)
  {
    v16 = *v23;
    do
    {
      v2 = 0;
      do
      {
        if (*v23 != v16)
        {
          objc_enumerationMutation(obj);
        }

        v3 = *(*(&v22 + 1) + 8 * v2);
        v18 = 0u;
        v19 = 0u;
        v20 = 0u;
        v21 = 0u;
        v4 = [*(a1 + 32) throughputMetricsMap];
        v5 = [v4 objectForKeyedSubscript:v3];

        v6 = [v5 countByEnumeratingWithState:&v18 objects:v26 count:16];
        if (v6)
        {
          v7 = v6;
          v8 = *v19;
          do
          {
            v9 = 0;
            do
            {
              if (*v19 != v8)
              {
                objc_enumerationMutation(v5);
              }

              v10 = *(*(&v18 + 1) + 8 * v9);
              v11 = [*(a1 + 32) throughputMetricsMap];
              v12 = [v11 objectForKeyedSubscript:v3];
              v13 = [v12 objectForKeyedSubscript:v10];

              [*(*(*(a1 + 40) + 8) + 40) addObject:v13];
              ++v9;
            }

            while (v7 != v9);
            v7 = [v5 countByEnumeratingWithState:&v18 objects:v26 count:16];
          }

          while (v7);
        }

        ++v2;
      }

      while (v2 != v17);
      v17 = [obj countByEnumeratingWithState:&v22 objects:v27 count:16];
    }

    while (v17);
  }

  v14 = *MEMORY[0x1E69E9840];
}

uint64_t __32__BGSystemTask_setTaskCompleted__block_invoke(uint64_t a1)
{
  [*(a1 + 32) queue_reportBufferedTaskWorkloadProgress];
  v2 = *(a1 + 32);
  v3 = v2[15];
  if (v3)
  {
    (*(v3 + 16))(v2[15]);
    v2 = *(a1 + 32);
  }

  [v2 clearLocked];
  v4 = *(a1 + 32);

  return [v4 setState:4];
}

- (BOOL)queue_reportBufferedTaskWorkloadProgress
{
  v47 = *MEMORY[0x1E69E9840];
  dispatch_assert_queue_V2(self->_queue);
  v43 = 0u;
  v44 = 0u;
  v41 = 0u;
  v42 = 0u;
  v3 = [(BGSystemTask *)self taskProgressInfo];
  v31 = [v3 countByEnumeratingWithState:&v41 objects:v46 count:16];
  if (v31)
  {
    v4 = *v42;
    v33 = v3;
    v30 = *v42;
    do
    {
      v5 = 0;
      do
      {
        if (*v42 != v4)
        {
          objc_enumerationMutation(v3);
        }

        v32 = v5;
        v6 = *(*(&v41 + 1) + 8 * v5);
        v37 = 0u;
        v38 = 0u;
        v39 = 0u;
        v40 = 0u;
        v7 = [(BGSystemTask *)self taskProgressInfo];
        v8 = [v7 objectForKeyedSubscript:v6];

        obj = v8;
        v36 = [v8 countByEnumeratingWithState:&v37 objects:v45 count:16];
        if (v36)
        {
          v9 = *v38;
          v34 = *v38;
          while (2)
          {
            for (i = 0; i != v36; ++i)
            {
              if (*v38 != v9)
              {
                objc_enumerationMutation(obj);
              }

              v11 = *(*(&v37 + 1) + 8 * i);
              v12 = [(BGSystemTask *)self taskProgressInfo];
              v13 = [v12 objectForKeyedSubscript:v6];
              v14 = [v13 objectForKey:v11];
              v15 = [v14 objectAtIndexedSubscript:1];
              v16 = [v15 unsignedLongValue];

              if (![(BGSystemTask *)self shouldReportTaskWorkloadProgress:v16])
              {
                v17 = [(BGSystemTask *)self taskProgressInfo];
                v18 = [v17 objectForKeyedSubscript:v6];
                v19 = [v18 objectForKey:v11];
                v20 = [v19 objectAtIndexedSubscript:0];
                v21 = [v20 unsignedLongValue];

                v22 = v11 == @"default" ? 0 : v11;
                v23 = v22;
                v24 = [v6 unsignedLongValue];
                v25 = v21;
                v9 = v34;
                v26 = [(BGSystemTask *)self sendTaskWorkloadProgressToPPS:v25 completed:v16 category:v24 subCategory:v23];

                if (!v26)
                {

                  v27 = 0;
                  v3 = v33;
                  goto LABEL_23;
                }
              }
            }

            v36 = [obj countByEnumeratingWithState:&v37 objects:v45 count:16];
            if (v36)
            {
              continue;
            }

            break;
          }
        }

        v5 = v32 + 1;
        v3 = v33;
        v4 = v30;
      }

      while (v32 + 1 != v31);
      v27 = 1;
      v31 = [v33 countByEnumeratingWithState:&v41 objects:v46 count:16];
    }

    while (v31);
  }

  else
  {
    v27 = 1;
  }

LABEL_23:

  v28 = *MEMORY[0x1E69E9840];
  return v27;
}

- (void)clearLocked
{
  completionHandler = self->_completionHandler;
  self->_completionHandler = 0;

  expirationHandler = self->_expirationHandler;
  self->_expirationHandler = 0;

  expirationAckHandler = self->_expirationAckHandler;
  self->_expirationAckHandler = 0;

  expirationHandlerWithReason = self->_expirationHandlerWithReason;
  self->_expirationHandlerWithReason = 0;

  clientLedExpirationHandler = self->_clientLedExpirationHandler;
  self->_clientLedExpirationHandler = 0;
  self->_expirationReason = 0;

  self->_hasPropagatedExpiration = 0;
  transaction = self->_transaction;
  self->_transaction = 0;

  taskProgressInfo = self->_taskProgressInfo;
  self->_taskProgressInfo = 0;

  resultQueue = self->_resultQueue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __27__BGSystemTask_clearLocked__block_invoke;
  block[3] = &unk_1E7B24590;
  block[4] = self;
  dispatch_sync(resultQueue, block);
}

- (void)prepareForRunning
{
  [(NSString *)self->_identifier UTF8String];
  v3 = os_transaction_create();
  transaction = self->_transaction;
  self->_transaction = v3;

  [(BGSystemTask *)self setState:1];
}

- (BGSystemTask)initWithIdentifier:(id)a3
{
  v4 = MEMORY[0x1E696AEC0];
  v5 = a3;
  v6 = [v4 stringWithFormat:@"com.apple.BGSystemTask.%@", v5];
  v7 = [v6 cStringUsingEncoding:4];
  v8 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
  v9 = dispatch_queue_create(v7, v8);

  v10 = [(BGSystemTask *)self initWithIdentifier:v5 queue:v9];
  return v10;
}

- (BGSystemTask)initWithIdentifier:(id)a3 queue:(id)a4 taskRequest:(id)a5
{
  v9 = a3;
  v10 = a4;
  v11 = a5;
  v37.receiver = self;
  v37.super_class = BGSystemTask;
  v12 = [(BGSystemTask *)&v37 init];
  v13 = v12;
  if (v12)
  {
    objc_storeStrong(&v12->_identifier, a3);
    objc_storeStrong(&v13->_queue, a4);
    v14 = [v11 copy];
    taskRequest = v13->_taskRequest;
    v13->_taskRequest = v14;

    v16 = [MEMORY[0x1E695DF90] dictionary];
    runningConsumedResults = v13->_runningConsumedResults;
    v13->_runningConsumedResults = v16;

    v18 = [MEMORY[0x1E696AEC0] stringWithFormat:@"com.apple.BGSystemTask.resultQ.%@", v9];
    v19 = [v18 cStringUsingEncoding:4];
    v20 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    v21 = dispatch_queue_attr_make_with_qos_class(v20, QOS_CLASS_BACKGROUND, 0);
    v22 = dispatch_queue_create(v19, v21);
    resultQueue = v13->_resultQueue;
    v13->_resultQueue = v22;

    v24 = [MEMORY[0x1E696AEC0] stringWithFormat:@"com.apple.BGSystemTask.perfMetricQ.%@", v9];
    v25 = [v24 cStringUsingEncoding:4];
    v26 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    v27 = dispatch_queue_attr_make_with_qos_class(v26, QOS_CLASS_BACKGROUND, 0);
    v28 = dispatch_queue_create(v25, v27);
    performanceMetricQueue = v13->_performanceMetricQueue;
    v13->_performanceMetricQueue = v28;

    v30 = [MEMORY[0x1E695DF90] dictionary];
    taskProgressInfo = v13->_taskProgressInfo;
    v13->_taskProgressInfo = v30;

    v32 = [MEMORY[0x1E695DF90] dictionary];
    throughputMetricsMap = v13->_throughputMetricsMap;
    v13->_throughputMetricsMap = v32;

    v34 = [MEMORY[0x1E696AFB0] UUID];
    uuid = v13->_uuid;
    v13->_uuid = v34;
  }

  return v13;
}

+ (id)logger
{
  if (logger_onceToken_1 != -1)
  {
    +[BGSystemTask logger];
  }

  v3 = logger_log_1;

  return v3;
}

uint64_t __22__BGSystemTask_logger__block_invoke()
{
  logger_log_1 = os_log_create("com.apple.BackgroundSystemTasks", "BGSTFramework");

  return MEMORY[0x1EEE66BB8]();
}

- (id)delegate:(id *)a3
{
  v4 = [(BGSystemTask *)self delegate];
  v5 = v4;
  if (a3 && !v4)
  {
    *a3 = [MEMORY[0x1E696ABC0] errorWithDomain:@"BGSystemTaskSchedulerErrorDomain" code:1 userInfo:0];
  }

  return v5;
}

void __27__BGSystemTask_clearLocked__block_invoke(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = *(v1 + 64);
  *(v1 + 64) = 0;
}

- (BOOL)setTaskExpiredWithRetryAfter:(double)a3 error:(id *)a4
{
  dispatch_assert_queue_not_V2(self->_queue);
  if ([(BGSystemTask *)self invalid])
  {
    if (a4)
    {
      [MEMORY[0x1E696ABC0] errorWithDomain:@"BGSystemTaskSchedulerErrorDomain" code:4 userInfo:0];
      *a4 = v7 = 0;
    }

    else
    {
      v7 = 0;
    }
  }

  else
  {
    v18 = 0;
    v19 = &v18;
    v20 = 0x2020000000;
    v21 = 1;
    v12 = 0;
    v13 = &v12;
    v14 = 0x3032000000;
    v15 = __Block_byref_object_copy__2;
    v16 = __Block_byref_object_dispose__2;
    v17 = 0;
    v8 = [(BGSystemTask *)self reportCumulativeResultConsumptionWithError:a4];
    *(v19 + 24) = v8;
    if (v8)
    {
      [(BGSystemTask *)self reportPendingThroughputMetrics];
      queue = self->_queue;
      v11[0] = MEMORY[0x1E69E9820];
      v11[1] = 3221225472;
      v11[2] = __51__BGSystemTask_setTaskExpiredWithRetryAfter_error___block_invoke;
      v11[3] = &unk_1E7B245B8;
      *&v11[7] = a3;
      v11[4] = self;
      v11[5] = &v12;
      v11[6] = &v18;
      dispatch_sync(queue, v11);
      v7 = *(v19 + 24);
      if (a4 && (v19[3] & 1) == 0)
      {
        *a4 = v13[5];
        v7 = *(v19 + 24);
      }
    }

    else
    {
      v7 = 0;
    }

    _Block_object_dispose(&v12, 8);

    _Block_object_dispose(&v18, 8);
  }

  return v7 & 1;
}

void __51__BGSystemTask_setTaskExpiredWithRetryAfter_error___block_invoke(uint64_t a1)
{
  v16 = *MEMORY[0x1E69E9840];
  [*(a1 + 32) queue_reportBufferedTaskWorkloadProgress];
  v2 = round(*(a1 + 56));
  if (([*(a1 + 32) expiring] & 1) == 0 && v2 < 300.0)
  {
    v3 = +[BGSystemTask logger];
    if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
    {
      v14 = 134217984;
      v15 = 300;
      _os_log_impl(&dword_1B236A000, v3, OS_LOG_TYPE_DEFAULT, "setTaskExpiredWithRetryAfter: Proactive expirations must have a cool off of at least %lu seconds, clamping", &v14, 0xCu);
    }

    v2 = 300.0;
  }

  if ([*(a1 + 32) expiring] && v2 < 0.0)
  {
    v4 = +[BGSystemTask logger];
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      __51__BGSystemTask_setTaskExpiredWithRetryAfter_error___block_invoke_cold_1((a1 + 56), v4);
    }

    v5 = [MEMORY[0x1E696ABC0] errorWithDomain:@"BGSystemTaskSchedulerErrorDomain" code:4 userInfo:0];
    v6 = *(*(a1 + 40) + 8);
    v7 = *(v6 + 40);
    *(v6 + 40) = v5;

    *(*(*(a1 + 48) + 8) + 24) = 0;
  }

  else
  {
    if (v2 <= 64000000.0)
    {
      v8 = v2;
    }

    else
    {
      v8 = 64000000.0;
    }

    v9 = [*(a1 + 32) expiring];
    v10 = *(a1 + 32);
    if (v9 && (v11 = v10[16]) != 0)
    {
      (*(v11 + 16))(v10[16], v8);
    }

    else if (([v10 expiring] & 1) == 0)
    {
      v12 = *(*(a1 + 32) + 136);
      if (v12)
      {
        *(*(*(a1 + 48) + 8) + 24) = (*(v12 + 16))(v8);
      }
    }

    [*(a1 + 32) clearLocked];
    [*(a1 + 32) setState:3];
  }

  v13 = *MEMORY[0x1E69E9840];
}

- (void)handleExpirationWithReason:(unint64_t)a3
{
  if (!self->_hasPropagatedExpiration)
  {
    [(BGSystemTask *)self setState:2];
    self->_expirationReason = a3;
    if ([(BGSystemTask *)self hasValidExpirationHandler])
    {
      [(BGSystemTask *)self invokeExpirationHandlerWithReason:a3];
      expirationHandlerWithReason = self->_expirationHandlerWithReason;
      self->_expirationHandlerWithReason = 0;

      expirationHandler = self->_expirationHandler;
      self->_expirationHandler = 0;
    }
  }
}

- (void)invokeExpirationHandlerWithReason:(unint64_t)a3
{
  if ([(BGSystemTask *)self hasValidExpirationHandler])
  {
    expirationHandlerWithReason = self->_expirationHandlerWithReason;
    if (expirationHandlerWithReason)
    {
      expirationHandlerWithReason[2](expirationHandlerWithReason, a3);
    }

    else
    {
      (*(self->_expirationHandler + 2))();
    }

    self->_hasPropagatedExpiration = 1;
  }

  else
  {
    v6 = +[BGSystemTask logger];
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      [BGSystemTask invokeExpirationHandlerWithReason:v6];
    }
  }
}

- (BOOL)producedCumulativeResults:(id)a3 error:(id *)a4
{
  v6 = a3;
  v7 = [(BGSystemTask *)self delegate:a4];
  LOBYTE(a4) = [v7 systemTask:self producedResults:v6 error:a4];

  return a4;
}

- (BOOL)consumedResults:(id)a3 error:(id *)a4
{
  v6 = a3;
  v25 = 0;
  v26 = &v25;
  v27 = 0x2020000000;
  v28 = 1;
  v22 = 0;
  v23[0] = &v22;
  v23[1] = 0x3032000000;
  v23[2] = __Block_byref_object_copy__2;
  v23[3] = __Block_byref_object_dispose__2;
  v24 = 0;
  obj = 0;
  v7 = [(BGSystemTask *)self delegate:&obj];
  objc_storeStrong(&v24, obj);
  if (v7)
  {
    resultQueue = self->_resultQueue;
    v12 = MEMORY[0x1E69E9820];
    v13 = 3221225472;
    v14 = __38__BGSystemTask_consumedResults_error___block_invoke;
    v15 = &unk_1E7B24448;
    v16 = v6;
    v17 = v7;
    v18 = self;
    v19 = &v22;
    v20 = &v25;
    dispatch_sync(resultQueue, &v12);

    if (v26[3])
    {
      goto LABEL_9;
    }
  }

  else
  {
    *(v26 + 24) = 0;
  }

  v9 = [BGSystemTask logger:v12];
  if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
  {
    [BGSystemTask consumedResults:v6 error:v23];
  }

  if (a4)
  {
    *a4 = *(v23[0] + 40);
  }

LABEL_9:
  v10 = *(v26 + 24);

  _Block_object_dispose(&v22, 8);
  _Block_object_dispose(&v25, 8);

  return v10;
}

void __38__BGSystemTask_consumedResults_error___block_invoke(uint64_t a1)
{
  v20 = *MEMORY[0x1E69E9840];
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v2 = *(a1 + 32);
  v3 = [v2 countByEnumeratingWithState:&v15 objects:v19 count:16];
  if (v3)
  {
    v4 = v3;
    v5 = *v16;
    while (2)
    {
      for (i = 0; i != v4; ++i)
      {
        if (*v16 != v5)
        {
          objc_enumerationMutation(v2);
        }

        v7 = *(*(&v15 + 1) + 8 * i);
        v8 = *(a1 + 40);
        v9 = *(a1 + 48);
        v10 = [v7 identifier];
        LOBYTE(v8) = [v8 systemTask:v9 canConsumeResultOfIdentifier:v10];

        if ((v8 & 1) == 0)
        {
          v11 = [MEMORY[0x1E696ABC0] errorWithDomain:@"BGSystemTaskSchedulerErrorDomain" code:7 userInfo:0];
          v12 = *(*(a1 + 56) + 8);
          v13 = *(v12 + 40);
          *(v12 + 40) = v11;

          *(*(*(a1 + 64) + 8) + 24) = 0;
          goto LABEL_11;
        }

        [*(a1 + 48) resultQueue_aggregateConsumedResult:v7];
      }

      v4 = [v2 countByEnumeratingWithState:&v15 objects:v19 count:16];
      if (v4)
      {
        continue;
      }

      break;
    }
  }

LABEL_11:

  v14 = *MEMORY[0x1E69E9840];
}

- (BOOL)resetResultsForIdentifier:(id)a3 error:(id *)a4
{
  v6 = a3;
  v25 = 0;
  v26 = &v25;
  v27 = 0x2020000000;
  v28 = 1;
  v22 = 0;
  v23[0] = &v22;
  v23[1] = 0x3032000000;
  v23[2] = __Block_byref_object_copy__2;
  v23[3] = __Block_byref_object_dispose__2;
  v24 = 0;
  obj = 0;
  v7 = [(BGSystemTask *)self delegate:&obj];
  objc_storeStrong(&v24, obj);
  if (v7)
  {
    resultQueue = self->_resultQueue;
    v12 = MEMORY[0x1E69E9820];
    v13 = 3221225472;
    v14 = __48__BGSystemTask_resetResultsForIdentifier_error___block_invoke;
    v15 = &unk_1E7B245E0;
    v19 = &v25;
    v16 = v7;
    v17 = self;
    v18 = v6;
    v20 = &v22;
    dispatch_sync(resultQueue, &v12);

    if (v26[3])
    {
      goto LABEL_9;
    }
  }

  else
  {
    *(v26 + 24) = 0;
  }

  v9 = [BGSystemTask logger:v12];
  if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
  {
    [BGSystemTask resetResultsForIdentifier:v6 error:v23];
  }

  if (a4)
  {
    *a4 = *(v23[0] + 40);
  }

LABEL_9:
  v10 = *(v26 + 24);

  _Block_object_dispose(&v22, 8);
  _Block_object_dispose(&v25, 8);

  return v10;
}

void __48__BGSystemTask_resetResultsForIdentifier_error___block_invoke(void *a1)
{
  v2 = a1[4];
  v3 = a1[5];
  v4 = a1[6];
  v5 = *(a1[8] + 8);
  obj = *(v5 + 40);
  v6 = [v2 systemTask:v3 resetResultsForIdentifier:v4 error:&obj];
  objc_storeStrong((v5 + 40), obj);
  *(*(a1[7] + 8) + 24) = v6;
}

- (void)resultQueue_aggregateConsumedResult:(id)a3
{
  v13 = a3;
  dispatch_assert_queue_V2(self->_resultQueue);
  runningConsumedResults = self->_runningConsumedResults;
  v5 = [v13 identifier];
  v6 = [(NSMutableDictionary *)runningConsumedResults objectForKeyedSubscript:v5];

  if (v6)
  {
    v7 = [BGSystemTaskResult alloc];
    v8 = [v13 identifier];
    v9 = -[BGSystemTaskResult initWithIdentifier:consumptionCount:](v7, "initWithIdentifier:consumptionCount:", v8, [v13 count] + objc_msgSend(v6, "count"));

    v10 = v9;
  }

  else
  {
    v10 = v13;
  }

  v11 = self->_runningConsumedResults;
  v14 = v10;
  v12 = [v10 identifier];
  [(NSMutableDictionary *)v11 setObject:v14 forKeyedSubscript:v12];
}

- (BOOL)reportCumulativeResultConsumptionWithError:(id *)a3
{
  v19 = 0;
  v20 = &v19;
  v21 = 0x2020000000;
  v22 = 1;
  v16 = 0;
  v17[0] = &v16;
  v17[1] = 0x3032000000;
  v17[2] = __Block_byref_object_copy__2;
  v17[3] = __Block_byref_object_dispose__2;
  v18 = 0;
  obj = 0;
  v5 = [(BGSystemTask *)self delegate:&obj];
  objc_storeStrong(&v18, obj);
  resultQueue = self->_resultQueue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __59__BGSystemTask_reportCumulativeResultConsumptionWithError___block_invoke;
  block[3] = &unk_1E7B24608;
  block[4] = self;
  v13 = &v19;
  v7 = v5;
  v12 = v7;
  v14 = &v16;
  dispatch_sync(resultQueue, block);
  if ((v20[3] & 1) == 0)
  {
    v8 = +[BGSystemTask logger];
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      [(BGSystemTask *)self reportCumulativeResultConsumptionWithError:v17];
    }

    if (a3)
    {
      *a3 = *(v17[0] + 40);
    }
  }

  v9 = *(v20 + 24);

  _Block_object_dispose(&v16, 8);
  _Block_object_dispose(&v19, 8);
  return v9;
}

void __59__BGSystemTask_reportCumulativeResultConsumptionWithError___block_invoke(uint64_t *a1)
{
  if ([a1[4] resultQueue_containsPendingConsumedResults])
  {
    v3 = a1[4];
    v2 = a1[5];
    v4 = MEMORY[0x1E695DFD8];
    v5 = [*(v3 + 64) allValues];
    v6 = [v4 setWithArray:v5];
    v7 = *(a1[7] + 8);
    obj = *(v7 + 40);
    LOBYTE(v2) = [v2 systemTask:v3 consumedResults:v6 error:&obj];
    objc_storeStrong((v7 + 40), obj);
    *(*(a1[6] + 8) + 24) = v2;

    v8 = [MEMORY[0x1E695DF90] dictionary];
    v9 = a1[4];
    v10 = *(v9 + 64);
    *(v9 + 64) = v8;
  }
}

- (BOOL)reportTaskWorkloadProgress:(unint64_t)a3 completed:(unint64_t)a4 category:(unint64_t)a5 subCategory:(id)a6 error:(id *)a7
{
  v12 = a6;
  v31 = 0;
  v32 = &v31;
  v33 = 0x2020000000;
  v34 = 1;
  v25 = 0;
  v26 = &v25;
  v27 = 0x3032000000;
  v28 = __Block_byref_object_copy__2;
  v29 = __Block_byref_object_dispose__2;
  v30 = 0;
  queue = self->_queue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __80__BGSystemTask_reportTaskWorkloadProgress_completed_category_subCategory_error___block_invoke;
  block[3] = &unk_1E7B24630;
  v22 = a4;
  v23 = a3;
  v20 = &v25;
  v24 = a5;
  v14 = v12;
  v21 = &v31;
  v18 = v14;
  v19 = self;
  dispatch_sync(queue, block);
  v15 = *(v32 + 24);
  if (a7 && (v32[3] & 1) == 0)
  {
    *a7 = v26[5];
    v15 = *(v32 + 24);
  }

  _Block_object_dispose(&v25, 8);
  _Block_object_dispose(&v31, 8);

  return v15 & 1;
}

void __80__BGSystemTask_reportTaskWorkloadProgress_completed_category_subCategory_error___block_invoke(uint64_t a1)
{
  v51 = *MEMORY[0x1E69E9840];
  if (*(a1 + 64) < 0x65uLL)
  {
    v6 = +[BGSystemTask logger];
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      v7 = *(a1 + 64);
      v8 = *(a1 + 72);
      v9 = *(a1 + 80);
      v10 = *(a1 + 32);
      *buf = 134218754;
      v42 = v7;
      v43 = 2048;
      v44 = v8;
      v45 = 2048;
      v46 = v9;
      v47 = 2112;
      v48 = v10;
      _os_log_impl(&dword_1B236A000, v6, OS_LOG_TYPE_DEFAULT, "Completed %lu [Target:%lu] for workload %lu, subcategory %@", buf, 0x2Au);
    }

    v11 = *(a1 + 32);
    if (!v11)
    {
      v11 = @"default";
    }

    v12 = v11;
    v13 = [*(a1 + 40) taskProgressInfo];
    v14 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:*(a1 + 80)];
    v15 = [v13 objectForKey:v14];

    if (!v15)
    {
      v16 = [MEMORY[0x1E695DF90] dictionary];
      v17 = [*(a1 + 40) taskProgressInfo];
      v18 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:*(a1 + 80)];
      [v17 setObject:v16 forKeyedSubscript:v18];
    }

    v19 = [*(a1 + 40) taskProgressInfo];
    v20 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:*(a1 + 80)];
    v21 = [v19 objectForKeyedSubscript:v20];
    v22 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:*(a1 + 72)];
    v23 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:{*(a1 + 64), v22}];
    v40[1] = v23;
    v24 = [MEMORY[0x1E695DEC8] arrayWithObjects:v40 count:2];
    [v21 setObject:v24 forKey:v12];

    if ([*(a1 + 40) shouldReportTaskWorkloadProgress:*(a1 + 64)])
    {
      *(*(*(a1 + 56) + 8) + 24) = [*(a1 + 40) sendTaskWorkloadProgressToPPS:*(a1 + 72) completed:*(a1 + 64) category:*(a1 + 80) subCategory:*(a1 + 32)];
    }

    if ((*(*(*(a1 + 56) + 8) + 24) & 1) == 0)
    {
      v25 = [MEMORY[0x1E696ABC0] errorWithDomain:@"BGSystemTaskSchedulerErrorDomain" code:3 userInfo:0];
      v26 = *(*(a1 + 48) + 8);
      v27 = *(v26 + 40);
      *(v26 + 40) = v25;

      v28 = +[BGSystemTask logger];
      if (os_log_type_enabled(v28, OS_LOG_TYPE_ERROR))
      {
        v35 = *(*(*(a1 + 48) + 8) + 40);
        v36 = *(a1 + 64);
        v37 = *(a1 + 72);
        v38 = *(a1 + 80);
        v39 = *(a1 + 32);
        *buf = 138413314;
        v42 = v35;
        v43 = 2048;
        v44 = v36;
        v45 = 2048;
        v46 = v37;
        v47 = 2048;
        v48 = v38;
        v49 = 2112;
        v50 = v39;
        _os_log_error_impl(&dword_1B236A000, v28, OS_LOG_TYPE_ERROR, "Error: %@ Completed %lu [Target:%lu] for workload %lu, subcategory %@", buf, 0x34u);
      }
    }
  }

  else
  {
    v2 = [MEMORY[0x1E696ABC0] errorWithDomain:@"BGSystemTaskSchedulerErrorDomain" code:4 userInfo:0];
    v3 = *(*(a1 + 48) + 8);
    v4 = *(v3 + 40);
    *(v3 + 40) = v2;

    v5 = +[BGSystemTask logger];
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      v30 = *(*(*(a1 + 48) + 8) + 40);
      v31 = *(a1 + 64);
      v32 = *(a1 + 72);
      v33 = *(a1 + 80);
      v34 = *(a1 + 32);
      *buf = 138413314;
      v42 = v30;
      v43 = 2048;
      v44 = v31;
      v45 = 2048;
      v46 = v32;
      v47 = 2048;
      v48 = v33;
      v49 = 2112;
      v50 = v34;
      _os_log_error_impl(&dword_1B236A000, v5, OS_LOG_TYPE_ERROR, "Error: %@ Completed %lu [Target:%lu] for workload %lu, subcategory %@", buf, 0x34u);
    }

    *(*(*(a1 + 56) + 8) + 24) = 0;
  }

  v29 = *MEMORY[0x1E69E9840];
}

- (BOOL)sendTaskWorkloadProgressToPPS:(unint64_t)a3 completed:(unint64_t)a4 category:(unint64_t)a5 subCategory:(id)a6
{
  v10 = a6;
  v15 = 0;
  v16 = &v15;
  v17 = 0x2020000000;
  v18 = 1;
  v11 = [MEMORY[0x1E699A4B8] sharedScheduler];
  v12 = [(BGSystemTask *)self identifier];
  v14[0] = MEMORY[0x1E69E9820];
  v14[1] = 3221225472;
  v14[2] = __77__BGSystemTask_sendTaskWorkloadProgressToPPS_completed_category_subCategory___block_invoke;
  v14[3] = &unk_1E7B24050;
  v14[4] = self;
  v14[5] = &v15;
  [v11 reportTaskWorkloadProgress:v12 target:a3 completed:a4 category:a5 subCategory:v10 completionHandler:v14];

  LOBYTE(a5) = *(v16 + 24);
  _Block_object_dispose(&v15, 8);

  return a5;
}

void __77__BGSystemTask_sendTaskWorkloadProgressToPPS_completed_category_subCategory___block_invoke(uint64_t a1, int a2)
{
  v9 = *MEMORY[0x1E69E9840];
  v3 = *(*(a1 + 40) + 8);
  if (a2)
  {
    *(v3 + 24) = 1;
    v4 = +[BGSystemTask logger];
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      v5 = [*(a1 + 32) identifier];
      v7 = 138412290;
      v8 = v5;
      _os_log_impl(&dword_1B236A000, v4, OS_LOG_TYPE_DEFAULT, "Successfully reported task workload progress for %@", &v7, 0xCu);
    }
  }

  else
  {
    *(v3 + 24) = 0;
    v4 = +[BGSystemTask logger];
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      __77__BGSystemTask_sendTaskWorkloadProgressToPPS_completed_category_subCategory___block_invoke_cold_1(a1, v4);
    }
  }

  v6 = *MEMORY[0x1E69E9840];
}

- (void)setExpirationHandler:(id)a3
{
  v17 = *MEMORY[0x1E69E9840];
  v4 = a3;
  dispatch_assert_queue_not_V2(self->_queue);
  if ([(BGSystemTask *)self expiring])
  {
    v5 = [(BGSystemTask *)self hasValidExpirationHandler];
    v6 = MEMORY[0x1B2747570](v4);
    expirationHandler = self->_expirationHandler;
    self->_expirationHandler = v6;

    if (!v5)
    {
      v8 = +[BGSystemTask logger];
      if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
      {
        v9 = [(BGSystemTask *)self identifier];
        *buf = 138543362;
        v16 = v9;
        _os_log_impl(&dword_1B236A000, v8, OS_LOG_TYPE_DEFAULT, "Invoking expirationHandler for %{public}@ immediately after being set due to a cached expiration request", buf, 0xCu);
      }

      queue = self->_queue;
      block[0] = MEMORY[0x1E69E9820];
      block[1] = 3221225472;
      block[2] = __37__BGSystemTask_setExpirationHandler___block_invoke;
      block[3] = &unk_1E7B24590;
      block[4] = self;
      dispatch_async(queue, block);
    }
  }

  else
  {
    v11 = MEMORY[0x1B2747570](v4);
    v12 = self->_expirationHandler;
    self->_expirationHandler = v11;
  }

  v13 = *MEMORY[0x1E69E9840];
}

- (void)setExpirationHandlerWithReason:(id)a3
{
  v17 = *MEMORY[0x1E69E9840];
  v4 = a3;
  dispatch_assert_queue_not_V2(self->_queue);
  if ([(BGSystemTask *)self expiring])
  {
    v5 = [(BGSystemTask *)self hasValidExpirationHandler];
    v6 = MEMORY[0x1B2747570](v4);
    expirationHandlerWithReason = self->_expirationHandlerWithReason;
    self->_expirationHandlerWithReason = v6;

    if (!v5)
    {
      v8 = +[BGSystemTask logger];
      if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
      {
        v9 = [(BGSystemTask *)self identifier];
        *buf = 138543362;
        v16 = v9;
        _os_log_impl(&dword_1B236A000, v8, OS_LOG_TYPE_DEFAULT, "Invoking expirationHandlerWithReason for %{public}@ immediately after being set due to a cached expiration request", buf, 0xCu);
      }

      queue = self->_queue;
      block[0] = MEMORY[0x1E69E9820];
      block[1] = 3221225472;
      block[2] = __47__BGSystemTask_setExpirationHandlerWithReason___block_invoke;
      block[3] = &unk_1E7B24590;
      block[4] = self;
      dispatch_async(queue, block);
    }
  }

  else
  {
    v11 = MEMORY[0x1B2747570](v4);
    v12 = self->_expirationHandlerWithReason;
    self->_expirationHandlerWithReason = v11;
  }

  v13 = *MEMORY[0x1E69E9840];
}

uint64_t __47__BGSystemTask_setExpirationHandlerWithReason___block_invoke(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = [v1 expirationReason];

  return [v1 handleExpirationWithReason:v2];
}

- (BOOL)registerThroughputTrackingFor:(id)a3 withStartTime:(id)a4 error:(id *)a5
{
  v8 = a3;
  v9 = a4;
  v25 = 0;
  v26 = &v25;
  v27 = 0x2020000000;
  v28 = 1;
  v22 = 0;
  v23[0] = &v22;
  v23[1] = 0x3032000000;
  v23[2] = __Block_byref_object_copy__2;
  v23[3] = __Block_byref_object_dispose__2;
  v24 = 0;
  v10 = [(BGSystemTask *)self performanceMetricQueue];
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __66__BGSystemTask_registerThroughputTrackingFor_withStartTime_error___block_invoke;
  block[3] = &unk_1E7B24658;
  v11 = v8;
  v17 = v11;
  v20 = &v22;
  v21 = &v25;
  v12 = v9;
  v18 = v12;
  v19 = self;
  dispatch_sync(v10, block);

  if ((v26[3] & 1) == 0)
  {
    v13 = +[BGSystemTask logger];
    if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
    {
      [BGSystemTask registerThroughputTrackingFor:v23 withStartTime:? error:?];
    }

    if (a5)
    {
      *a5 = *(v23[0] + 40);
    }
  }

  v14 = *(v26 + 24);

  _Block_object_dispose(&v22, 8);
  _Block_object_dispose(&v25, 8);

  return v14;
}

void __66__BGSystemTask_registerThroughputTrackingFor_withStartTime_error___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) performanceMetricIdentifier];
  if (v2 && (v3 = v2, [*(a1 + 32) reportingUUID], v4 = objc_claimAutoreleasedReturnValue(), v4, v3, v4))
  {
    if (*(a1 + 40))
    {
      [*(a1 + 32) setStartTimestamp:?];
    }

    else
    {
      v8 = [MEMORY[0x1E695DF00] date];
      [*(a1 + 32) setStartTimestamp:v8];
    }

    v9 = [*(a1 + 48) throughputMetricsMap];
    v10 = [*(a1 + 32) performanceMetricIdentifier];
    v11 = [v9 objectForKey:v10];

    if (!v11)
    {
      v12 = [MEMORY[0x1E695DF90] dictionary];
      v13 = [*(a1 + 48) throughputMetricsMap];
      v14 = [*(a1 + 32) performanceMetricIdentifier];
      [v13 setObject:v12 forKeyedSubscript:v14];
    }

    v15 = [*(a1 + 32) taskName];

    if (!v15)
    {
      v16 = [*(a1 + 48) identifier];
      [*(a1 + 32) setTaskName:v16];
    }

    v17 = *(a1 + 32);
    v21 = [*(a1 + 48) throughputMetricsMap];
    v18 = [*(a1 + 32) performanceMetricIdentifier];
    v19 = [v21 objectForKeyedSubscript:v18];
    v20 = [*(a1 + 32) reportingUUID];
    [v19 setObject:v17 forKeyedSubscript:v20];
  }

  else
  {
    v5 = [MEMORY[0x1E696ABC0] errorWithDomain:@"BGSystemTaskSchedulerErrorDomain" code:4 userInfo:0];
    v6 = *(*(a1 + 56) + 8);
    v7 = *(v6 + 40);
    *(v6 + 40) = v5;

    *(*(*(a1 + 64) + 8) + 24) = 0;
  }
}

- (BOOL)deregisterThroughputTrackingFor:(id)a3 withEndTime:(id)a4 error:(id *)a5
{
  v8 = a3;
  v9 = a4;
  v25 = 0;
  v26 = &v25;
  v27 = 0x2020000000;
  v28 = 1;
  v22 = 0;
  v23[0] = &v22;
  v23[1] = 0x3032000000;
  v23[2] = __Block_byref_object_copy__2;
  v23[3] = __Block_byref_object_dispose__2;
  v24 = 0;
  v10 = [(BGSystemTask *)self performanceMetricQueue];
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __66__BGSystemTask_deregisterThroughputTrackingFor_withEndTime_error___block_invoke;
  block[3] = &unk_1E7B24658;
  v11 = v8;
  v20 = &v22;
  v21 = &v25;
  v17 = v11;
  v18 = self;
  v12 = v9;
  v19 = v12;
  dispatch_sync(v10, block);

  if ((v26[3] & 1) == 0)
  {
    v13 = +[BGSystemTask logger];
    if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
    {
      [BGSystemTask deregisterThroughputTrackingFor:v23 withEndTime:? error:?];
    }

    if (a5)
    {
      *a5 = *(v23[0] + 40);
    }
  }

  v14 = *(v26 + 24);

  _Block_object_dispose(&v22, 8);
  _Block_object_dispose(&v25, 8);

  return v14;
}

void __66__BGSystemTask_deregisterThroughputTrackingFor_withEndTime_error___block_invoke(uint64_t a1)
{
  v38 = *MEMORY[0x1E69E9840];
  v2 = (a1 + 32);
  v3 = [*(a1 + 32) performanceMetricIdentifier];
  if (!v3 || (v4 = v3, [*v2 reportingUUID], v5 = objc_claimAutoreleasedReturnValue(), v5, v4, !v5))
  {
    v6 = [MEMORY[0x1E696ABC0] errorWithDomain:@"BGSystemTaskSchedulerErrorDomain" code:4 userInfo:0];
    v7 = *(*(a1 + 56) + 8);
    v8 = *(v7 + 40);
    *(v7 + 40) = v6;

    *(*(*(a1 + 64) + 8) + 24) = 0;
  }

  v9 = [*(a1 + 40) throughputMetricsMap];
  v10 = [*(a1 + 32) performanceMetricIdentifier];
  v11 = [v9 objectForKey:v10];

  if (v11 && ([*v2 reportingUUID], v12 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v11, "objectForKey:", v12), v13 = objc_claimAutoreleasedReturnValue(), v13, v12, v13))
  {
    if (*(a1 + 48))
    {
      [*v2 setEndTimestamp:?];
    }

    else
    {
      v19 = [MEMORY[0x1E695DF00] date];
      [*v2 setEndTimestamp:v19];
    }

    v35 = 0u;
    v36 = 0u;
    v33 = 0u;
    v34 = 0u;
    v20 = v11;
    v21 = [v20 countByEnumeratingWithState:&v33 objects:v37 count:16];
    if (v21)
    {
      v22 = v21;
      v23 = *v34;
      while (2)
      {
        v24 = 0;
        do
        {
          if (*v34 != v23)
          {
            objc_enumerationMutation(v20);
          }

          v25 = [v20 objectForKeyedSubscript:*(*(&v33 + 1) + 8 * v24)];
          if (!v25)
          {

            goto LABEL_11;
          }

          v26 = v25;
          v27 = [v25 endTimestamp];

          if (!v27)
          {
            v28 = 0;
            goto LABEL_25;
          }

          ++v24;
        }

        while (v22 != v24);
        v22 = [v20 countByEnumeratingWithState:&v33 objects:v37 count:16];
        if (v22)
        {
          continue;
        }

        break;
      }
    }

    v28 = 1;
LABEL_25:

    if (v28 && (*(*(*(a1 + 64) + 8) + 24) & 1) != 0)
    {
      v29 = *(a1 + 40);
      v30 = [*(a1 + 32) performanceMetricIdentifier];
      v31 = *(*(a1 + 56) + 8);
      obj = *(v31 + 40);
      LOBYTE(v29) = [v29 queue_reportThroughputForPerformanceMetric:v30 error:&obj];
      objc_storeStrong((v31 + 40), obj);
      *(*(*(a1 + 64) + 8) + 24) = v29;
    }
  }

  else
  {
    v14 = +[BGSystemTask logger];
    if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
    {
      __66__BGSystemTask_deregisterThroughputTrackingFor_withEndTime_error___block_invoke_cold_1(v2, v14);
    }

    v15 = [MEMORY[0x1E696ABC0] errorWithDomain:@"BGSystemTaskSchedulerErrorDomain" code:4 userInfo:0];
    v16 = *(*(a1 + 56) + 8);
    v17 = *(v16 + 40);
    *(v16 + 40) = v15;

    *(*(*(a1 + 64) + 8) + 24) = 0;
  }

LABEL_11:

  v18 = *MEMORY[0x1E69E9840];
}

- (BOOL)queue_reportThroughputForPerformanceMetric:(id)a3 error:(id *)a4
{
  v89 = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = [(BGSystemTask *)self performanceMetricQueue];
  dispatch_assert_queue_V2(v7);

  v8 = 0x1E7B23000uLL;
  v9 = +[BGSystemTask logger];
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v81 = v6;
    _os_log_impl(&dword_1B236A000, v9, OS_LOG_TYPE_DEFAULT, "Reporting throughput metrics for %@", buf, 0xCu);
  }

  v64 = self;
  v10 = [(BGSystemTask *)self throughputMetricsMap];
  v11 = [v10 objectForKeyedSubscript:v6];

  v78 = 0u;
  v79 = 0u;
  v76 = 0u;
  v77 = 0u;
  v12 = v11;
  v68 = [v12 countByEnumeratingWithState:&v76 objects:v88 count:16];
  if (v68)
  {
    v65 = v6;
    v66 = a4;
    v13 = 0;
    v14 = 0;
    v15 = 0;
    v69 = 0;
    v72 = 0;
    v16 = 0;
    v17 = 0;
    v67 = *v77;
    while (2)
    {
      v18 = 0;
      v19 = v13;
      v20 = v15;
      v21 = v17;
      do
      {
        v73 = v20;
        v74 = v19;
        if (*v77 != v67)
        {
          objc_enumerationMutation(v12);
        }

        v22 = *(*(&v76 + 1) + 8 * v18);
        v23 = [v12 objectForKeyedSubscript:v22];
        v71 = [v23 itemCount] + v16;

        v24 = [v12 objectForKeyedSubscript:v22];
        v25 = [v24 startTimestamp];
        v26 = [v12 objectForKeyedSubscript:v22];
        v27 = [v26 endTimestamp];
        v28 = [v25 compare:v27];

        if (v28 != -1)
        {
          v45 = +[BGSystemTask logger];
          v6 = v65;
          a4 = v66;
          v44 = v72;
          if (os_log_type_enabled(v45, OS_LOG_TYPE_ERROR))
          {
            v60 = [v12 objectForKeyedSubscript:v22];
            v61 = [v60 endTimestamp];
            v62 = [v12 objectForKeyedSubscript:v22];
            v63 = [v62 startTimestamp];
            *buf = 138413058;
            v81 = v61;
            v82 = 2112;
            v83 = v63;
            v84 = 2112;
            v85 = v65;
            v86 = 2112;
            v87 = v22;
            _os_log_error_impl(&dword_1B236A000, v45, OS_LOG_TYPE_ERROR, "reportThroughputForPerformanceMetric: EndDate:%@ < StartDate:%@ for %@:%@", buf, 0x2Au);

            v44 = v72;
            a4 = v66;
          }

          v42 = [MEMORY[0x1E696ABC0] errorWithDomain:@"BGSystemTaskSchedulerErrorDomain" code:4 userInfo:0];
          v43 = 0;
          goto LABEL_21;
        }

        v29 = v72;
        if (!v72 || ([v12 objectForKeyedSubscript:v22], v30 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v30, "startTimestamp"), v31 = objc_claimAutoreleasedReturnValue(), v31, v30, v31 < v72))
        {
          v32 = [v12 objectForKeyedSubscript:v22];
          v33 = [v32 startTimestamp];

          v29 = v33;
        }

        v72 = v29;
        if (!v69 || ([v12 objectForKeyedSubscript:v22], v34 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v34, "endTimestamp"), v35 = objc_claimAutoreleasedReturnValue(), v35, v34, v35 > v69))
        {
          v36 = [v12 objectForKeyedSubscript:v22];
          v37 = [v36 endTimestamp];

          v69 = v37;
        }

        v16 = v71;
        v38 = [v12 objectForKeyedSubscript:v22];
        v17 = [v38 taskName];

        v39 = [v12 objectForKeyedSubscript:v22];
        v15 = [v39 qos];

        v40 = [v12 objectForKeyedSubscript:v22];
        v14 = [v40 category];

        v41 = [v12 objectForKeyedSubscript:v22];
        v13 = [v41 expectedMetricValue];

        ++v18;
        v19 = v13;
        v20 = v15;
        v21 = v17;
      }

      while (v68 != v18);
      v68 = [v12 countByEnumeratingWithState:&v76 objects:v88 count:16];
      if (v68)
      {
        continue;
      }

      break;
    }

    v42 = 0;
    v43 = 1;
    v73 = v15;
    v74 = v13;
    v21 = v17;
    v6 = v65;
    a4 = v66;
    v44 = v29;
LABEL_21:
    v46 = v69;
    v8 = 0x1E7B23000;
  }

  else
  {
    v73 = 0;
    v74 = 0;
    v14 = 0;
    v46 = 0;
    v44 = 0;
    v71 = 0;
    v21 = 0;
    v42 = 0;
    v43 = 1;
  }

  if (v12 && v44 && v46 && [v46 compare:v44] == 1)
  {
    if (v43)
    {
      v47 = [MEMORY[0x1E699A4B8] sharedScheduler];
      v70 = v46;
      v48 = [objc_alloc(MEMORY[0x1E696AB80]) initWithStartDate:v44 endDate:v46];
      [v48 duration];
      v75 = v42;
      v49 = [v47 reportThroughputMetricsForIdentifier:v6 taskName:v21 itemCount:v71 totalDuration:v73 qos:v14 workloadCategory:v74 expectedValue:&v75 error:?];
      v50 = v75;

      v51 = [(BGSystemTask *)v64 throughputMetricsMap];
      [v51 removeObjectForKey:v6];

      if (v49)
      {
        v52 = +[BGSystemTask logger];
        if (os_log_type_enabled(v52, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 138412290;
          v81 = v6;
          _os_log_impl(&dword_1B236A000, v52, OS_LOG_TYPE_DEFAULT, "reportThroughputForPerformanceMetric: Reported throughput metrics successfully for %@", buf, 0xCu);
        }

        v53 = 1;
        v46 = v70;
        goto LABEL_40;
      }

      v46 = v70;
      v8 = 0x1E7B23000;
    }

    else
    {
      v50 = v42;
    }
  }

  else
  {
    v50 = [MEMORY[0x1E696ABC0] errorWithDomain:@"BGSystemTaskSchedulerErrorDomain" code:4 userInfo:0];

    v54 = [*(v8 + 3816) logger];
    if (os_log_type_enabled(v54, OS_LOG_TYPE_ERROR))
    {
      v59 = [(BGSystemTask *)v64 identifier];
      *buf = 138413058;
      v81 = v46;
      v82 = 2112;
      v83 = v44;
      v84 = 2112;
      v85 = v6;
      v86 = 2112;
      v87 = v59;
      _os_log_error_impl(&dword_1B236A000, v54, OS_LOG_TYPE_ERROR, "reportThroughputForPerformanceMetric: EndDate:%@ < StartDate:%@ for %@:%@", buf, 0x2Au);
    }
  }

  v55 = [*(v8 + 3816) logger];
  if (os_log_type_enabled(v55, OS_LOG_TYPE_ERROR))
  {
    [BGSystemTask queue_reportThroughputForPerformanceMetric:v6 error:v55];
  }

  if (a4)
  {
    v56 = v50;
    v53 = 0;
    *a4 = v50;
  }

  else
  {
    v53 = 0;
  }

LABEL_40:

  v57 = *MEMORY[0x1E69E9840];
  return v53;
}

void __51__BGSystemTask_setTaskExpiredWithRetryAfter_error___block_invoke_cold_1(uint64_t *a1, NSObject *a2)
{
  v6 = *MEMORY[0x1E69E9840];
  v2 = *a1;
  v4 = 134217984;
  v5 = v2;
  _os_log_error_impl(&dword_1B236A000, a2, OS_LOG_TYPE_ERROR, "setTaskExpiredWithRetryAfter: Invalid value for seconds: %lf", &v4, 0xCu);
  v3 = *MEMORY[0x1E69E9840];
}

- (void)consumedResults:(uint64_t)a1 error:(uint64_t)a2 .cold.1(uint64_t a1, uint64_t a2)
{
  v9 = *MEMORY[0x1E69E9840];
  v2 = *(*a2 + 40);
  OUTLINED_FUNCTION_3_1();
  OUTLINED_FUNCTION_0_1();
  _os_log_error_impl(v3, v4, v5, v6, v7, 0x20u);
  v8 = *MEMORY[0x1E69E9840];
}

- (void)resetResultsForIdentifier:(uint64_t)a1 error:(uint64_t)a2 .cold.1(uint64_t a1, uint64_t a2)
{
  v9 = *MEMORY[0x1E69E9840];
  v2 = *(*a2 + 40);
  OUTLINED_FUNCTION_3_1();
  OUTLINED_FUNCTION_0_1();
  _os_log_error_impl(v3, v4, v5, v6, v7, 0x20u);
  v8 = *MEMORY[0x1E69E9840];
}

- (void)reportCumulativeResultConsumptionWithError:(uint64_t)a1 .cold.1(uint64_t a1, uint64_t a2)
{
  OUTLINED_FUNCTION_2_0(a1, a2, *MEMORY[0x1E69E9840]);
  OUTLINED_FUNCTION_1_0();
  OUTLINED_FUNCTION_0_1();
  _os_log_error_impl(v2, v3, v4, v5, v6, 0x16u);
  v7 = *MEMORY[0x1E69E9840];
}

void __77__BGSystemTask_sendTaskWorkloadProgressToPPS_completed_category_subCategory___block_invoke_cold_1(uint64_t a1, NSObject *a2)
{
  v7 = *MEMORY[0x1E69E9840];
  v3 = [*(a1 + 32) identifier];
  v5 = 138543362;
  v6 = v3;
  _os_log_error_impl(&dword_1B236A000, a2, OS_LOG_TYPE_ERROR, "reportTaskWorkloadProgress: failed for %{public}@", &v5, 0xCu);

  v4 = *MEMORY[0x1E69E9840];
}

- (void)registerThroughputTrackingFor:(uint64_t)a1 withStartTime:(uint64_t)a2 error:.cold.1(uint64_t a1, uint64_t a2)
{
  OUTLINED_FUNCTION_2_0(a1, a2, *MEMORY[0x1E69E9840]);
  OUTLINED_FUNCTION_1_0();
  OUTLINED_FUNCTION_0_1();
  _os_log_error_impl(v2, v3, v4, v5, v6, 0x16u);
  v7 = *MEMORY[0x1E69E9840];
}

- (void)deregisterThroughputTrackingFor:(uint64_t)a1 withEndTime:(uint64_t)a2 error:.cold.1(uint64_t a1, uint64_t a2)
{
  OUTLINED_FUNCTION_2_0(a1, a2, *MEMORY[0x1E69E9840]);
  OUTLINED_FUNCTION_1_0();
  OUTLINED_FUNCTION_0_1();
  _os_log_error_impl(v2, v3, v4, v5, v6, 0x16u);
  v7 = *MEMORY[0x1E69E9840];
}

void __66__BGSystemTask_deregisterThroughputTrackingFor_withEndTime_error___block_invoke_cold_1(id *a1, NSObject *a2)
{
  v11 = *MEMORY[0x1E69E9840];
  v4 = [*a1 performanceMetricIdentifier];
  v5 = [*a1 reportingUUID];
  v7 = 138412546;
  v8 = v4;
  v9 = 2112;
  v10 = v5;
  _os_log_error_impl(&dword_1B236A000, a2, OS_LOG_TYPE_ERROR, "deregisterThroughputTrackingFor: %@:%@ hasn't been registered for throughput tracking. Use registerThroughputTrackingFor to register", &v7, 0x16u);

  v6 = *MEMORY[0x1E69E9840];
}

- (void)queue_reportThroughputForPerformanceMetric:(uint64_t)a1 error:(NSObject *)a2 .cold.1(uint64_t a1, NSObject *a2)
{
  v5 = *MEMORY[0x1E69E9840];
  v3 = 138412290;
  v4 = a1;
  _os_log_error_impl(&dword_1B236A000, a2, OS_LOG_TYPE_ERROR, "reportThroughputForPerformanceMetric: Failed to report throughput metrics successfully for %@", &v3, 0xCu);
  v2 = *MEMORY[0x1E69E9840];
}

@end