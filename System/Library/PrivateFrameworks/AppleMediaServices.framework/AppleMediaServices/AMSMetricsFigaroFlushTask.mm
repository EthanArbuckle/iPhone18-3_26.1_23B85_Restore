@interface AMSMetricsFigaroFlushTask
+ (BOOL)_shouldClearEventsDespiteError:(id)error result:(id)result;
- (AMSMetricsFigaroFlushTask)initWithDataSource:(id)source bag:(id)bag maxRequestCount:(unint64_t)count maxEventsPerBatch:(unint64_t)batch topic:(id)topic includeMMeClientInfoAndDeviceHeaders:(BOOL)headers metricsSigningFlavour:(unint64_t)flavour maxBatchSizeOverride:(id)self0 urlSession:(id)self1 postBatchBlock:(id)self2;
- (AMSMetricsFigaroFlushTask)initWithDataSource:(id)source bag:(id)bag maxRequestCount:(unint64_t)count maxEventsPerBatch:(unint64_t)batch topic:(id)topic includeMMeClientInfoAndDeviceHeaders:(BOOL)headers metricsSigningFlavour:(unint64_t)flavour urlSession:(id)self0;
- (BOOL)cancel;
- (id)_flushNextBatchWithRequestCount:(unint64_t)count flushedEventCount:(unint64_t)eventCount config:(id)config;
- (id)_mescalSignaturePromiseWithBodyData:(id)data;
- (id)_nextBatchWithConfig:(id)config topic:(id)topic;
- (id)_postBatch:(id)batch;
- (id)performFlush;
@end

@implementation AMSMetricsFigaroFlushTask

- (id)performFlush
{
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = __41__AMSMetricsFigaroFlushTask_performFlush__block_invoke;
  v4[3] = &unk_1E73B3588;
  v4[4] = self;
  v2 = [(AMSTask *)self performTaskWithPromiseBlock:v4];

  return v2;
}

id __41__AMSMetricsFigaroFlushTask_performFlush__block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) bag];
  v3 = [AMSMetricsFigaroBagConfguration configurationPromiseWithBag:v2];
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __41__AMSMetricsFigaroFlushTask_performFlush__block_invoke_2;
  v6[3] = &unk_1E73B9A78;
  v6[4] = *(a1 + 32);
  v4 = [v3 thenWithBlock:v6];

  return v4;
}

id __41__AMSMetricsFigaroFlushTask_performFlush__block_invoke_2(uint64_t a1, void *a2)
{
  v3 = a2;
  [v3 prepareForFlush];
  v4 = [*(a1 + 32) dataSource];
  v5 = AMSLogKey();
  v10 = 0;
  v6 = [v4 willStartBatchingWithLogKey:v5 error:&v10];
  v7 = v10;

  if (v6)
  {
    [*(a1 + 32) _flushNextBatchWithRequestCount:0 flushedEventCount:0 config:v3];
  }

  else
  {
    [AMSPromise promiseWithError:v7];
  }
  v8 = ;

  return v8;
}

- (AMSMetricsFigaroFlushTask)initWithDataSource:(id)source bag:(id)bag maxRequestCount:(unint64_t)count maxEventsPerBatch:(unint64_t)batch topic:(id)topic includeMMeClientInfoAndDeviceHeaders:(BOOL)headers metricsSigningFlavour:(unint64_t)flavour urlSession:(id)self0
{
  headersCopy = headers;
  sourceCopy = source;
  bagCopy = bag;
  topicCopy = topic;
  sessionCopy = session;
  objc_initWeak(&location, self);
  v22[0] = MEMORY[0x1E69E9820];
  v22[1] = 3221225472;
  v22[2] = __162__AMSMetricsFigaroFlushTask_initWithDataSource_bag_maxRequestCount_maxEventsPerBatch_topic_includeMMeClientInfoAndDeviceHeaders_metricsSigningFlavour_urlSession___block_invoke;
  v22[3] = &unk_1E73B9A50;
  objc_copyWeak(&v23, &location);
  v20 = [(AMSMetricsFigaroFlushTask *)self initWithDataSource:sourceCopy bag:bagCopy maxRequestCount:count maxEventsPerBatch:batch topic:topicCopy includeMMeClientInfoAndDeviceHeaders:headersCopy metricsSigningFlavour:flavour maxBatchSizeOverride:0 urlSession:sessionCopy postBatchBlock:v22];
  objc_destroyWeak(&v23);
  objc_destroyWeak(&location);

  return v20;
}

id __162__AMSMetricsFigaroFlushTask_initWithDataSource_bag_maxRequestCount_maxEventsPerBatch_topic_includeMMeClientInfoAndDeviceHeaders_metricsSigningFlavour_urlSession___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v5 = [WeakRetained _postBatch:v3];

  return v5;
}

- (AMSMetricsFigaroFlushTask)initWithDataSource:(id)source bag:(id)bag maxRequestCount:(unint64_t)count maxEventsPerBatch:(unint64_t)batch topic:(id)topic includeMMeClientInfoAndDeviceHeaders:(BOOL)headers metricsSigningFlavour:(unint64_t)flavour maxBatchSizeOverride:(id)self0 urlSession:(id)self1 postBatchBlock:(id)self2
{
  sourceCopy = source;
  bagCopy = bag;
  topicCopy = topic;
  overrideCopy = override;
  sessionCopy = session;
  blockCopy = block;
  v34.receiver = self;
  v34.super_class = AMSMetricsFigaroFlushTask;
  v20 = [(AMSTask *)&v34 init];
  v21 = v20;
  if (v20)
  {
    objc_storeStrong(&v20->_dataSource, source);
    objc_storeStrong(&v21->_bag, bag);
    v21->_maxRequestCount = count;
    v21->_maxEventsPerBatch = batch;
    v22 = [topicCopy copy];
    topic = v21->_topic;
    v21->_topic = v22;

    v21->_includeMMeClientInfoAndDeviceHeaders = headers;
    v21->_metricsSigningFlavour = flavour;
    objc_storeStrong(&v21->_maxBatchSizeOverride, override);
    v24 = _Block_copy(blockCopy);
    postBatchBlock = v21->_postBatchBlock;
    v21->_postBatchBlock = v24;

    v26 = objc_alloc_init(AMSPrivateIdentifiersAutoDecoration);
    autoDecoration = v21->_autoDecoration;
    v21->_autoDecoration = v26;

    objc_storeStrong(&v21->_URLSession, session);
    v21->_currentCancellableDataTaskPromiseLock._os_unfair_lock_opaque = 0;
  }

  return v21;
}

- (BOOL)cancel
{
  v11 = *MEMORY[0x1E69E9840];
  v3 = +[AMSLogConfig sharedMetricsConfig];
  if (!v3)
  {
    v3 = +[AMSLogConfig sharedConfig];
  }

  oSLogObject = [v3 OSLogObject];
  if (os_log_type_enabled(oSLogObject, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138543362;
    v10 = objc_opt_class();
    v5 = v10;
    _os_log_impl(&dword_192869000, oSLogObject, OS_LOG_TYPE_DEFAULT, "%{public}@: Cancelling task", buf, 0xCu);
  }

  dataSource = [(AMSMetricsFigaroFlushTask *)self dataSource];
  [dataSource cancel];

  os_unfair_lock_lock_with_options();
  [(AMSPromise *)self->_currentCancellableDataTaskPromise cancel];
  v8.receiver = self;
  v8.super_class = AMSMetricsFigaroFlushTask;
  LOBYTE(dataSource) = [(AMSTask *)&v8 cancel];
  os_unfair_lock_unlock(&self->_currentCancellableDataTaskPromiseLock);
  return dataSource;
}

- (id)_flushNextBatchWithRequestCount:(unint64_t)count flushedEventCount:(unint64_t)eventCount config:(id)config
{
  configCopy = config;
  if (self->_maxRequestCount - 1 >= count)
  {
    v12 = [(AMSMetricsFigaroFlushTask *)self _nextBatchWithConfig:configCopy topic:self->_topic];
    v14[0] = MEMORY[0x1E69E9820];
    v14[1] = 3221225472;
    v14[2] = __86__AMSMetricsFigaroFlushTask__flushNextBatchWithRequestCount_flushedEventCount_config___block_invoke;
    v14[3] = &unk_1E73B9AC8;
    v14[4] = self;
    eventCountCopy = eventCount;
    countCopy = count;
    v15 = configCopy;
    v11 = [v12 continueWithBlock:v14];
  }

  else
  {
    dataSource = [(AMSMetricsFigaroFlushTask *)self dataSource];
    [dataSource didFinishBatching];

    v10 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:eventCount];
    v11 = [AMSPromise promiseWithResult:v10];
  }

  return v11;
}

id __86__AMSMetricsFigaroFlushTask__flushNextBatchWithRequestCount_flushedEventCount_config___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = a3;
  if (!a2)
  {
    v15 = [*(a1 + 32) dataSource];
    [v15 didFinishBatching];

    v16 = [AMSPromise promiseWithError:v5];
    goto LABEL_19;
  }

  v6 = [a2 value];
  v7 = v6;
  if (v6)
  {
    v8 = [v6 droppedEvents];
    v9 = [v8 count];

    if (v9)
    {
      v10 = [*(a1 + 32) dataSource];
      v11 = [v7 droppedEvents];
      v36 = 0;
      v12 = [v10 removeEvents:v11 error:&v36];
      v13 = v36;

      if ((v12 & 1) == 0)
      {
LABEL_11:
        v24 = [*(a1 + 32) dataSource];
        [v24 didFinishBatching];

        v25 = [AMSPromise promiseWithError:v13];
        goto LABEL_16;
      }

      v14 = v13;
    }

    else
    {
      v14 = 0;
    }

    v19 = [v7 skippedEvents];
    v20 = [v19 count];

    if (v20)
    {
      v21 = [*(a1 + 32) dataSource];
      v22 = [v7 skippedEvents];
      v35 = v14;
      v23 = [v21 skipEvents:v22 error:&v35];
      v13 = v35;

      if ((v23 & 1) == 0)
      {
        goto LABEL_11;
      }
    }

    else
    {
      v13 = v14;
    }

    v26 = [v7 events];
    v27 = [v26 count];

    v28 = *(a1 + 32);
    if (v27)
    {
      v29 = (*(v28[8] + 16))();
      v31[0] = MEMORY[0x1E69E9820];
      v31[1] = 3221225472;
      v31[2] = __86__AMSMetricsFigaroFlushTask__flushNextBatchWithRequestCount_flushedEventCount_config___block_invoke_2;
      v31[3] = &unk_1E73B9AA0;
      v31[4] = *(a1 + 32);
      v32 = v7;
      v34 = vextq_s8(*(a1 + 48), *(a1 + 48), 8uLL);
      v33 = *(a1 + 40);
      v16 = [v29 continueWithBlock:v31];

LABEL_17:
      goto LABEL_18;
    }

    v25 = [v28 _flushNextBatchWithRequestCount:*(a1 + 56) flushedEventCount:*(a1 + 48) config:*(a1 + 40)];
LABEL_16:
    v16 = v25;
    goto LABEL_17;
  }

  v17 = [*(a1 + 32) dataSource];
  [v17 didFinishBatching];

  v18 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:*(a1 + 48)];
  v16 = [AMSPromise promiseWithResult:v18];

LABEL_18:
LABEL_19:

  return v16;
}

id __86__AMSMetricsFigaroFlushTask__flushNextBatchWithRequestCount_flushedEventCount_config___block_invoke_2(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  if (v6 && !+[AMSMetricsFigaroFlushTask _shouldClearEventsDespiteError:result:](AMSMetricsFigaroFlushTask, "_shouldClearEventsDespiteError:result:", v6, v5) || ([*(a1 + 32) dataSource], v7 = objc_claimAutoreleasedReturnValue(), objc_msgSend(*(a1 + 40), "events"), v8 = objc_claimAutoreleasedReturnValue(), v17 = v6, objc_msgSend(v7, "removeEvents:error:", v8, &v17), v9 = v17, v6, v8, v7, (v6 = v9) != 0))
  {
    v10 = [*(a1 + 32) dataSource];
    [v10 didFinishBatching];

    v11 = [AMSPromise promiseWithError:v6];
  }

  else
  {
    v12 = *(a1 + 56);
    v13 = *(a1 + 64);
    v14 = *(a1 + 32);
    v6 = [*(a1 + 40) events];
    v11 = [v14 _flushNextBatchWithRequestCount:v12 + 1 flushedEventCount:objc_msgSend(v6 config:{"count") + v13, *(a1 + 48)}];
  }

  v15 = v11;

  return v15;
}

- (id)_mescalSignaturePromiseWithBodyData:(id)data
{
  ams_SHA1 = [data ams_SHA1];
  if (ams_SHA1)
  {
    v5 = [(AMSMetricsFigaroFlushTask *)self bag];
    v6 = [AMSMescal signaturePromiseFromData:ams_SHA1 type:1 bag:v5];
    v7 = [v6 thenWithBlock:&__block_literal_global_95];
  }

  else
  {
    v5 = AMSError(304, @"Metrics Mescal Failed", @"Failed to generate digest", 0);
    v7 = [AMSPromise promiseWithError:v5];
  }

  return v7;
}

id __65__AMSMetricsFigaroFlushTask__mescalSignaturePromiseWithBodyData___block_invoke(uint64_t a1, void *a2)
{
  v10 = *MEMORY[0x1E69E9840];
  v2 = a2;
  v3 = +[AMSLogConfig sharedMetricsConfig];
  if (!v3)
  {
    v3 = +[AMSLogConfig sharedConfig];
  }

  v4 = [v3 OSLogObject];
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v8 = 138412290;
    v9 = v2;
    _os_log_impl(&dword_192869000, v4, OS_LOG_TYPE_DEFAULT, "Obtained signatureData: %@", &v8, 0xCu);
  }

  v5 = [v2 base64EncodedStringWithOptions:0];
  v6 = [AMSPromise promiseWithResult:v5];

  return v6;
}

uint64_t __41__AMSMetricsFigaroFlushTask__sortEvents___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v4 = a3;
  v5 = [a2 clientOnlyEventDate];
  v6 = [v4 clientOnlyEventDate];

  v7 = [v5 compare:v6];
  return v7;
}

- (id)_nextBatchWithConfig:(id)config topic:(id)topic
{
  configCopy = config;
  topicCopy = topic;
  maxBatchSizeOverride = self->_maxBatchSizeOverride;
  if (maxBatchSizeOverride)
  {
    unsignedIntegerValue = [(NSNumber *)maxBatchSizeOverride unsignedIntegerValue];
  }

  else
  {
    unsignedIntegerValue = [configCopy maxBatchSize];
  }

  v37 = unsignedIntegerValue;
  v43 = objc_alloc_init(MEMORY[0x1E695DF70]);
  v42 = objc_alloc_init(MEMORY[0x1E695DF70]);
  v41 = +[AMSDefaults metricsCanaryIdentifier];
  v87[0] = 0;
  v87[1] = v87;
  v87[2] = 0x3032000000;
  v87[3] = __Block_byref_object_copy__44;
  v87[4] = __Block_byref_object_dispose__44;
  v88 = 0;
  v81 = 0;
  v82 = &v81;
  v83 = 0x3032000000;
  v84 = __Block_byref_object_copy__44;
  v85 = __Block_byref_object_dispose__44;
  v86 = 0;
  v79[0] = 0;
  v79[1] = v79;
  v79[2] = 0x3032000000;
  v79[3] = __Block_byref_object_copy__44;
  v79[4] = __Block_byref_object_dispose__44;
  v80 = 0;
  v75 = 0;
  v76 = &v75;
  v77 = 0x2020000000;
  v78 = 0;
  v40 = objc_opt_new();
  v9 = objc_opt_new();
  v10 = [AMSMetrics serverTimeFromDate:v9];
  v11 = (v82 + 5);
  v12 = v82[5];
  v60[0] = 0;
  v13 = [MEMORY[0x1E696ACB0] dataWithJSONObject:v10 options:4 error:v60];
  v14 = v60[0];
  v15 = v14;
  if (v13)
  {
    v16 = objc_opt_new();
    if (AMSMetricsFigaroFlushTaskAppendStringContentsToData(v16, @"{deliveryVersion:1.0,postTime:") && ([v16 appendData:v13], AMSMetricsFigaroFlushTaskAppendStringContentsToData(v16, @",events:[")))
    {
      v17 = v16;
    }

    else
    {
      v17 = 0;
    }
  }

  else
  {
    v18 = v14;
    v17 = 0;
    v12 = v15;
  }

  objc_storeStrong(v11, v12);
  if (v17)
  {
    v19 = [v17 length];
    v39 = configCopy;
    v76[3] = v19;
    v20 = [@"]}" lengthOfBytesUsingEncoding:4];
    v21 = [@" "];
    v22 = objc_opt_new();
    dataSource = [(AMSMetricsFigaroFlushTask *)self dataSource];
    v62[0] = MEMORY[0x1E69E9820];
    v62[1] = 3221225472;
    v62[2] = __56__AMSMetricsFigaroFlushTask__nextBatchWithConfig_topic___block_invoke;
    v62[3] = &unk_1E73B9B10;
    v69 = &v81;
    v24 = v39;
    v63 = v24;
    selfCopy = self;
    v36 = v43;
    v65 = v36;
    v25 = v42;
    v66 = v25;
    v70 = v87;
    v26 = v22;
    v71 = &v75;
    v72 = v20;
    v73 = v21;
    v74 = v37;
    v67 = v26;
    v68 = @",";
    [dataSource enumerateSortedEventsForTopic:topicCopy block:v62];

    [(AMSMetricsFigaroFlushTask *)self _sortEvents:v26];
    v38 = v21;
    v27 = objc_alloc_init(AMSMutablePromise);
    firstObject = [v26 firstObject];

    if (firstObject)
    {
      autoDecoration = self->_autoDecoration;
      firstObject2 = [v26 firstObject];
      v31 = [(AMSMetricsFigaroFlushTask *)self bag];
      completionHandlerAdapter = [(AMSPromise *)v27 completionHandlerAdapter];
      [(AMSPrivateIdentifiersAutoDecorationProtocol *)autoDecoration autoDecorationIdentifiersForEvent:firstObject2 bag:v31 completionHandler:completionHandlerAdapter];
    }

    else
    {
      [(AMSMutablePromise *)v27 finishWithResult:MEMORY[0x1E695E0F0]];
    }

    v60[0] = 0;
    v60[1] = v60;
    v60[2] = 0x3032000000;
    v60[3] = __Block_byref_object_copy__44;
    v60[4] = __Block_byref_object_dispose__44;
    v61 = 0;
    v45[0] = MEMORY[0x1E69E9820];
    v45[1] = 3221225472;
    v45[2] = __56__AMSMetricsFigaroFlushTask__nextBatchWithConfig_topic___block_invoke_94;
    v45[3] = &unk_1E73B9B80;
    v34 = v26;
    v46 = v34;
    v56 = v60;
    v57 = &v81;
    v47 = v24;
    selfCopy2 = self;
    v49 = v17;
    v50 = @",";
    v58 = v79;
    v59 = v38;
    v51 = v40;
    v52 = @"]}";
    v53 = v41;
    v54 = v36;
    v55 = v25;
    v33 = [(AMSMutablePromise *)v27 continueWithBlock:v45];

    _Block_object_dispose(v60, 8);
    configCopy = v39;
  }

  else
  {
    v33 = [AMSPromise promiseWithError:v82[5]];
  }

  _Block_object_dispose(&v75, 8);
  _Block_object_dispose(v79, 8);

  _Block_object_dispose(&v81, 8);
  _Block_object_dispose(v87, 8);

  return v33;
}

void __56__AMSMetricsFigaroFlushTask__nextBatchWithConfig_topic___block_invoke(uint64_t a1, void *a2, void *a3, void *a4, _BYTE *a5)
{
  v56 = *MEMORY[0x1E69E9840];
  v9 = a2;
  v10 = a3;
  v11 = a4;
  v12 = objc_autoreleasePoolPush();
  if (!v11)
  {
    v13 = [*(a1 + 32) modifierForEvent:v9];
    v14 = [v13 reportingURLForEvent:v9];
    if (([v13 shouldDropEvent:v9] & 1) != 0 || !objc_msgSend(v14, "length"))
    {
      if (![v14 length])
      {
        v47 = v14;
        v16 = +[AMSLogConfig sharedMetricsConfig];
        if (!v16)
        {
          v16 = +[AMSLogConfig sharedConfig];
        }

        v17 = [v16 OSLogObject];
        if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
        {
          v42 = objc_opt_class();
          v18 = AMSLogKey();
          v19 = [v9 topic];
          *buf = 138543874;
          v51 = v42;
          v52 = 2114;
          v53 = v18;
          v54 = 2114;
          v55 = v19;
          _os_log_impl(&dword_192869000, v17, OS_LOG_TYPE_ERROR, "%{public}@: [%{public}@] Dropping event with no reporting URL. Topic: %{public}@", buf, 0x20u);
        }

        v14 = v47;
      }

      v15 = *(a1 + 48);
      goto LABEL_14;
    }

    if ([v13 shouldSkipEvent:v9])
    {
      v15 = *(a1 + 56);
LABEL_14:
      [v15 addObject:v9];
LABEL_15:

      goto LABEL_16;
    }

    v20 = *(*(*(a1 + 88) + 8) + 40);
    v46 = v13;
    v48 = v14;
    if (v20)
    {
      v43 = [v20 isEqualToString:v10] ^ 1;
    }

    else
    {
      v43 = 0;
    }

    v40 = [*(a1 + 64) count] >= *(*(a1 + 40) + 88);
    v21 = MEMORY[0x1E696ACB0];
    v22 = [v9 dictionaryForPosting];
    v23 = *(*(a1 + 80) + 8);
    obj = *(v23 + 40);
    v24 = [v21 dataWithJSONObject:v22 options:0 error:&obj];
    objc_storeStrong((v23 + 40), obj);

    if (!v24)
    {
      v30 = +[AMSLogConfig sharedMetricsConfig];
      v14 = v48;
      if (!v30)
      {
        v30 = +[AMSLogConfig sharedConfig];
      }

      v31 = [v30 OSLogObject];
      if (os_log_type_enabled(v31, OS_LOG_TYPE_ERROR))
      {
        v32 = objc_opt_class();
        v45 = v32;
        v33 = AMSLogKey();
        v34 = *(*(*(a1 + 80) + 8) + 40);
        *buf = 138543874;
        v51 = v32;
        v52 = 2114;
        v53 = v33;
        v54 = 2114;
        v55 = v34;
        _os_log_impl(&dword_192869000, v31, OS_LOG_TYPE_ERROR, "%{public}@: [%{public}@] Failed to serialize metrics event to JSON. Error = %{public}@", buf, 0x20u);

        v14 = v48;
      }

      v35 = 0;
      v13 = v46;
      goto LABEL_36;
    }

    v25 = *(*(*(a1 + 96) + 8) + 24);
    v39 = v24;
    v14 = v48;
    if (([v24 length] + *(a1 + 104) + v25 - *(a1 + 112)) <= *(a1 + 120))
    {
      v13 = v46;
      if (((v40 | v43) & 1) == 0)
      {
        v35 = v39;
        *(*(*(a1 + 96) + 8) + 24) += [v39 length];
        *(*(*(a1 + 96) + 8) + 24) += [*(a1 + 72) length];
        objc_storeStrong((*(*(a1 + 88) + 8) + 40), a3);
        v36 = *(a1 + 64);
        v37 = [v46 preparedEventWithEvent:v9];
        [v36 addObject:v37];

        goto LABEL_36;
      }
    }

    else
    {
      v13 = v46;
      if (![*(a1 + 64) count])
      {
        v26 = +[AMSLogConfig sharedMetricsConfig];
        if (!v26)
        {
          v26 = +[AMSLogConfig sharedConfig];
        }

        v27 = [v26 OSLogObject];
        if (os_log_type_enabled(v27, OS_LOG_TYPE_ERROR))
        {
          v41 = v27;
          v28 = objc_opt_class();
          v38 = v28;
          v44 = AMSLogKey();
          v29 = [v9 dictionaryForPosting];
          *buf = 138543874;
          v51 = v28;
          v52 = 2114;
          v27 = v41;
          v53 = v44;
          v54 = 2112;
          v55 = v29;
          _os_log_impl(&dword_192869000, v41, OS_LOG_TYPE_ERROR, "%{public}@: [%{public}@] Encountered metrics event larger than maximum allowed batch size. It cannot be uploaded and will be dropped. Event dictionary: %@.", buf, 0x20u);

          v14 = v48;
        }

        [*(a1 + 48) addObject:v9];
      }
    }

    *a5 = 1;
    v35 = v39;
LABEL_36:

    goto LABEL_15;
  }

  objc_storeStrong((*(*(a1 + 80) + 8) + 40), a4);
  *a5 = 1;
LABEL_16:
  objc_autoreleasePoolPop(v12);
}

id __56__AMSMetricsFigaroFlushTask__nextBatchWithConfig_topic___block_invoke_94(uint64_t a1, void *a2)
{
  v48 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v35[0] = MEMORY[0x1E69E9820];
  v35[1] = 3221225472;
  v35[2] = __56__AMSMetricsFigaroFlushTask__nextBatchWithConfig_topic___block_invoke_2;
  v35[3] = &unk_1E73B9B38;
  v4 = *(a1 + 32);
  v36 = *(a1 + 40);
  v5 = v3;
  v37 = v5;
  v40 = *(a1 + 112);
  v34 = *(a1 + 48);
  v6 = *(&v34 + 1);
  v7 = *(a1 + 64);
  v41 = *(a1 + 128);
  v8 = *(a1 + 72);
  *&v9 = v7;
  *(&v9 + 1) = v8;
  v38 = v34;
  v39 = v9;
  [v4 enumerateObjectsUsingBlock:v35];
  if ([*(a1 + 72) count])
  {
    [*(a1 + 56) setLength:{objc_msgSend(*(a1 + 56), "length") - *(a1 + 136)}];
  }

  if ((AMSMetricsFigaroFlushTaskAppendStringContentsToData(*(a1 + 56), *(a1 + 80)) & 1) == 0)
  {
    v10 = AMSError(3, @"Unable to append final characters to events JSON", 0, 0);
    v11 = *(*(a1 + 120) + 8);
    v12 = *(v11 + 40);
    *(v11 + 40) = v10;
  }

  if (*(*(*(a1 + 120) + 8) + 40))
  {
    v13 = +[AMSLogConfig sharedMetricsConfig];
    if (!v13)
    {
      v13 = +[AMSLogConfig sharedConfig];
    }

    v14 = [v13 OSLogObject];
    if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
    {
      v15 = objc_opt_class();
      v16 = v15;
      v17 = AMSLogKey();
      v18 = *(*(*(a1 + 120) + 8) + 40);
      *buf = 138543874;
      v43 = v15;
      v44 = 2114;
      v45 = v17;
      v46 = 2114;
      v47 = v18;
      _os_log_impl(&dword_192869000, v14, OS_LOG_TYPE_ERROR, "%{public}@: [%{public}@] Failed to fetch next batch. Error = %{public}@", buf, 0x20u);
    }

    v19 = [AMSPromise promiseWithError:*(*(*(a1 + 120) + 8) + 40)];
  }

  else
  {
    v20 = [*(a1 + 72) ams_firstObjectPassingTest:&__block_literal_global_106_0];

    v21 = [*(a1 + 72) lastObject];
    v22 = [v21 account];
    v23 = [v21 isAnonymous];
    v24 = *(a1 + 88);
    if (v24)
    {
      v25 = v24;
    }

    else
    {
      v26 = [v21 canaryIdentifier];
      v27 = v26;
      v28 = &stru_1F071BA78;
      if (v26)
      {
        v28 = v26;
      }

      v25 = v28;
    }

    if ([*(a1 + 72) count] || objc_msgSend(*(a1 + 96), "count") || objc_msgSend(*(a1 + 104), "count"))
    {
      v29 = v20 != 0;
      v30 = objc_alloc_init(AMSMetricsBatch);
      [(AMSMetricsBatch *)v30 setAccount:v22];
      [(AMSMetricsBatch *)v30 setAnonymous:v23];
      [(AMSMetricsBatch *)v30 setCanaryIdentifier:v25];
      [(AMSMetricsBatch *)v30 setDisableLoadURLMetrics:v29];
      [(AMSMetricsBatch *)v30 setDroppedEvents:*(a1 + 96)];
      [(AMSMetricsBatch *)v30 setEvents:*(a1 + 72)];
      [(AMSMetricsBatch *)v30 setSerializedEventsData:*(a1 + 56)];
      [(AMSMetricsBatch *)v30 setSkippedEvents:*(a1 + 104)];
      if (*(*(*(a1 + 128) + 8) + 40))
      {
        v31 = [MEMORY[0x1E695DFF8] URLWithString:?];
        [(AMSMetricsBatch *)v30 setReportURL:v31];
      }
    }

    else
    {
      v30 = 0;
    }

    v32 = [[AMSOptional alloc] initWithValue:v30];
    v19 = [AMSPromise promiseWithResult:v32];
  }

  return v19;
}

void __56__AMSMetricsFigaroFlushTask__nextBatchWithConfig_topic___block_invoke_2(uint64_t a1, void *a2, uint64_t a3, _BYTE *a4)
{
  v37 = *MEMORY[0x1E69E9840];
  v7 = a2;
  v8 = objc_autoreleasePoolPush();
  v9 = [*(a1 + 32) modifierForEvent:v7];
  v10 = [v9 reportingURLForEvent:v7];
  v11 = [AMSAutoDecorationPrivateIdentifiers autoDecorationDictionaryForEvent:v7 privateIdentifiers:*(a1 + 40)];
  v12 = *(*(*(a1 + 80) + 8) + 40);
  if (!a3 || (!v12 ? (v13 = v11 == 0) : (v13 = 1), v13)) && (v12 ? (v14 = v11 == 0) : (v14 = 1), v14 || ([v12 isEqual:v11]))
  {
    v15 = [v7 dictionaryForPosting];
    v16 = [v15 mutableCopy];

    if (v11)
    {
      [v16 addEntriesFromDictionary:v11];
      objc_storeStrong((*(*(a1 + 80) + 8) + 40), v11);
    }

    v17 = *(*(a1 + 88) + 8);
    obj = *(v17 + 40);
    v18 = [MEMORY[0x1E696ACB0] dataWithJSONObject:v16 options:0 error:&obj];
    objc_storeStrong((v17 + 40), obj);
    if (v18)
    {
      [*(a1 + 56) appendData:v18];
      if (AMSMetricsFigaroFlushTaskAppendStringContentsToData(*(a1 + 56), *(a1 + 64)))
      {
        objc_storeStrong((*(*(a1 + 96) + 8) + 40), v10);
        v19 = *(a1 + 72);
        v20 = [v9 preparedEventWithEvent:v7];
        [v19 addObject:v20];
      }

      else
      {
        *a4 = 1;
        v26 = AMSError(3, @"Unable to append separator string to events JSON", 0, 0);
        v27 = *(*(a1 + 88) + 8);
        v20 = *(v27 + 40);
        *(v27 + 40) = v26;
      }
    }

    else
    {
      v20 = +[AMSLogConfig sharedMetricsConfig];
      if (!v20)
      {
        v20 = +[AMSLogConfig sharedConfig];
      }

      v21 = [v20 OSLogObject];
      if (os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
      {
        log = v21;
        v22 = objc_opt_class();
        v29 = v22;
        v23 = AMSLogKey();
        v24 = *(*(*(a1 + 88) + 8) + 40);
        *buf = 138543874;
        v32 = v22;
        v21 = log;
        v33 = 2114;
        v34 = v23;
        v25 = v23;
        v35 = 2114;
        v36 = v24;
        _os_log_impl(&dword_192869000, log, OS_LOG_TYPE_ERROR, "%{public}@: [%{public}@] Failed to serialize metrics event to JSON. Error = %{public}@", buf, 0x20u);
      }
    }
  }

  else
  {
    *a4 = 1;
  }

  objc_autoreleasePoolPop(v8);
}

uint64_t __56__AMSMetricsFigaroFlushTask__nextBatchWithConfig_topic___block_invoke_103(uint64_t a1, void *a2)
{
  v2 = [a2 eventType];
  v3 = [v2 isEqualToString:@"loadUrl"];

  return v3;
}

- (id)_postBatch:(id)batch
{
  v27 = *MEMORY[0x1E69E9840];
  batchCopy = batch;
  v5 = +[AMSLogConfig sharedMetricsConfig];
  if (!v5)
  {
    v5 = +[AMSLogConfig sharedConfig];
  }

  oSLogObject = [v5 OSLogObject];
  if (os_log_type_enabled(oSLogObject, OS_LOG_TYPE_DEFAULT))
  {
    v7 = objc_opt_class();
    v8 = AMSLogKey();
    *buf = 138543874;
    v22 = v7;
    v23 = 2114;
    v24 = v8;
    v25 = 1024;
    anonymous = [batchCopy anonymous];
    _os_log_impl(&dword_192869000, oSLogObject, OS_LOG_TYPE_DEFAULT, "%{public}@: [%{public}@] Posting batch. (anon:%d)", buf, 0x1Cu);
  }

  serializedEventsData = [batchCopy serializedEventsData];
  if (serializedEventsData)
  {
    v10 = [AMSData compressedGzippedDataWithData:serializedEventsData];
    if (v10)
    {
      if ([(AMSMetricsFigaroFlushTask *)self metricsSigningFlavour])
      {
        v11 = +[AMSOptional optionalWithNil];
        v12 = [AMSPromise promiseWithResult:v11];
      }

      else
      {
        v11 = [(AMSMetricsFigaroFlushTask *)self _mescalSignaturePromiseWithBodyData:serializedEventsData];
        v20[0] = MEMORY[0x1E69E9820];
        v20[1] = 3221225472;
        v20[2] = __40__AMSMetricsFigaroFlushTask__postBatch___block_invoke;
        v20[3] = &unk_1E73B9430;
        v20[4] = self;
        v12 = [v11 continueWithBlock:v20];
      }

      v14 = v12;

      v16[0] = MEMORY[0x1E69E9820];
      v16[1] = 3221225472;
      v16[2] = __40__AMSMetricsFigaroFlushTask__postBatch___block_invoke_128;
      v16[3] = &unk_1E73B9BA8;
      v16[4] = self;
      v17 = batchCopy;
      v18 = serializedEventsData;
      v19 = v10;
      v13 = [v14 continueWithBlock:v16];
    }

    else
    {
      v14 = AMSError(3, @"Unable to Gzip body", @"Unable to Gzip the metrics flush body", 0);
      v13 = [AMSPromise promiseWithError:v14];
    }
  }

  else
  {
    v10 = AMSError(3, @"No Metrics Body", @"Unable to post nil metrics body", 0);
    v13 = [AMSPromise promiseWithError:v10];
  }

  return v13;
}

id __40__AMSMetricsFigaroFlushTask__postBatch___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v21 = *MEMORY[0x1E69E9840];
  v4 = a2;
  v5 = a3;
  v6 = +[AMSLogConfig sharedMetricsConfig];
  v7 = v6;
  if (v4)
  {
    if (!v6)
    {
      v7 = +[AMSLogConfig sharedConfig];
    }

    v8 = [v7 OSLogObject];
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      LOWORD(v15) = 0;
      _os_log_impl(&dword_192869000, v8, OS_LOG_TYPE_DEFAULT, "Returning Mescal signature", &v15, 2u);
    }

    v9 = [AMSOptional optionalWithValue:v4];
    v10 = [AMSPromise promiseWithResult:v9];
  }

  else
  {
    if (!v6)
    {
      v7 = +[AMSLogConfig sharedConfig];
    }

    v11 = [v7 OSLogObject];
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      v12 = objc_opt_class();
      v13 = AMSLogKey();
      v15 = 138543874;
      v16 = v12;
      v17 = 2114;
      v18 = v13;
      v19 = 2114;
      v20 = v5;
      _os_log_impl(&dword_192869000, v11, OS_LOG_TYPE_ERROR, "%{public}@: [%{public}@] Failed to generate mescal signature. Error = %{public}@", &v15, 0x20u);
    }

    v10 = [AMSPromise promiseWithError:v5];
  }

  return v10;
}

id __40__AMSMetricsFigaroFlushTask__postBatch___block_invoke_128(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [AMSURLRequestEncoder alloc];
  v5 = [*(a1 + 32) bag];
  v6 = [(AMSURLRequestEncoder *)v4 initWithBag:v5];

  if ([*(a1 + 40) anonymous])
  {
    [(AMSURLRequestEncoder *)v6 setAccount:0];
  }

  else
  {
    v7 = [*(a1 + 40) account];
    [(AMSURLRequestEncoder *)v6 setAccount:v7];
  }

  [(AMSURLRequestEncoder *)v6 setUrlKnownToBeTrusted:1];
  v8 = AMSLogKey();
  [(AMSURLRequestEncoder *)v6 setLogUUID:v8];

  -[AMSURLRequestEncoder setAlwaysIncludeMMeClientInfoAndDeviceHeaders:](v6, "setAlwaysIncludeMMeClientInfoAndDeviceHeaders:", [*(a1 + 32) includeMMeClientInfoAndDeviceHeaders]);
  [(AMSURLRequestEncoder *)v6 setIncludeClientVersions:0];
  v9 = [AMSURLRequest alloc];
  v10 = [*(a1 + 40) reportURL];
  v11 = [(AMSURLRequest *)v9 initWithURL:v10];

  [(AMSURLRequest *)v11 setNetworkServiceType:3];
  [(AMSURLRequest *)v11 setCachePolicy:1];
  [(AMSURLRequest *)v11 setTimeoutInterval:10.0];
  [(AMSURLRequest *)v11 setHTTPMethod:@"POST"];
  if ([*(a1 + 32) metricsSigningFlavour] == 1)
  {
    [(AMSURLRequest *)v11 setHTTPBody:*(a1 + 48)];
  }

  v12 = [(AMSURLRequestEncoder *)v6 requestByEncodingRequest:v11 parameters:0];
  v16[0] = MEMORY[0x1E69E9820];
  v16[1] = 3221225472;
  v16[2] = __40__AMSMetricsFigaroFlushTask__postBatch___block_invoke_2;
  v16[3] = &unk_1E73B58F8;
  v17 = *(a1 + 40);
  v18 = *(a1 + 56);
  v19 = v3;
  v20 = *(a1 + 32);
  v13 = v3;
  v14 = [v12 thenWithBlock:v16];

  return v14;
}

id __40__AMSMetricsFigaroFlushTask__postBatch___block_invoke_2(id *a1, void *a2)
{
  v3 = a2;
  v4 = [a1[4] disableLoadURLMetrics];
  v5 = [v3 properties];
  [v5 setDisableLoadURLMetrics:v4];

  [v3 setHTTPBody:a1[5]];
  [v3 setValue:@"gzip" forHTTPHeaderField:@"Content-Encoding"];
  [v3 setValue:@"application/json; charset=utf-8" forHTTPHeaderField:@"Content-Type"];
  v6 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%ld", objc_msgSend(a1[5], "length")];
  [v3 setValue:v6 forHTTPHeaderField:@"Content-Length"];

  v7 = [a1[6] value];
  [v3 setValue:v7 forHTTPHeaderField:@"X-Apple-ActionSignature"];

  v8 = [a1[4] canaryIdentifier];
  [v3 setValue:v8 forHTTPHeaderField:@"X-Apple-Canary-Id"];

  if ([a1[4] anonymous])
  {
    [v3 setValue:0 forHTTPHeaderField:@"Cookie"];
  }

  os_unfair_lock_lock_with_options();
  if ([a1[7] isCancelled])
  {
    v9 = AMSError(6, @"Flush Figaro Task Failed", @"Cancelled", 0);
    v10 = [AMSPromise promiseWithError:v9];
  }

  else
  {
    v11 = [a1[7] URLSession];
    v12 = [v11 dataTaskPromiseWithRequest:v3];

    v13 = a1[7];
    v10 = v12;
    v9 = v13[6];
    v13[6] = v10;
  }

  os_unfair_lock_unlock(a1[7] + 14);

  return v10;
}

+ (BOOL)_shouldClearEventsDespiteError:(id)error result:(id)result
{
  errorCopy = error;
  resultCopy = result;
  v7 = resultCopy;
  if (resultCopy)
  {
    responseStatusCode = [resultCopy responseStatusCode];
LABEL_5:
    v14 = (responseStatusCode - 200) < 0x64 || (responseStatusCode - 400) < 0x64;
    goto LABEL_11;
  }

  userInfo = [errorCopy userInfo];
  v10 = [userInfo objectForKeyedSubscript:@"AMSStatusCode"];

  if (v10)
  {
    userInfo2 = [errorCopy userInfo];
    v12 = [userInfo2 objectForKeyedSubscript:@"AMSStatusCode"];
    responseStatusCode = [v12 integerValue];

    goto LABEL_5;
  }

  domain = [errorCopy domain];
  v17 = [domain isEqualToString:@"AMSErrorDomain"];

  if (v17)
  {
    v18 = [errorCopy code] == 3;
  }

  else
  {
    domain2 = [errorCopy domain];
    v20 = [domain2 isEqualToString:*MEMORY[0x1E696A978]];

    if (!v20)
    {
      v14 = 0;
      goto LABEL_11;
    }

    v18 = [errorCopy code] == -1102;
  }

  v14 = v18;
LABEL_11:

  return v14;
}

@end