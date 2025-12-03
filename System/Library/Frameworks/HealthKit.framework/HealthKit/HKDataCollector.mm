@interface HKDataCollector
+ (id)serverInterface;
- (BOOL)_datumsInDateOrder:(id)order secondDatum:(id)datum;
- (BOOL)_validateDatums:(id)datums error:(id *)error;
- (HKDataCollector)initWithHealthStore:(id)store bundleIdentifier:(id)identifier quantityType:(id)type;
- (HKDataCollectorCollectionConfiguration)collectionConfiguration;
- (HKDataCollectorDelegate)delegate;
- (id)_prunedBatch:(id)batch maximumLength:(int64_t)length;
- (id)_queue_callToDelegateAndEnqueueForClientFlushRequest:(id)request;
- (id)unitTest_pendingBatches;
- (id)unitTest_unconfirmedBatches;
- (id)unitTest_unpersistedBatches;
- (void)_queue_batchDatums:(id)datums device:(id)device metadata:(id)metadata options:(unint64_t)options completion:(id)completion;
- (void)_queue_checkForFinish;
- (void)_queue_considerCompletingFlushRequests;
- (void)_queue_considerSendingBatches;
- (void)_queue_pruneOldDatums;
- (void)_queue_requestRegistration;
- (void)_queue_resetUnpersistedBatches;
- (void)_queue_sendBatch:(id)batch;
- (void)_queue_sendState:(id)state;
- (void)_queue_taskServer_insertBatch:(id)batch completion:(id)completion;
- (void)_queue_updateReconsiderationTimer;
- (void)_removeBatch:(id)batch;
- (void)_requestRegistration;
- (void)clientRemote_beginCollectionWithConfiguration:(id)configuration lastPersistedDatum:(id)datum registrationUUID:(id)d;
- (void)clientRemote_collectThroughDate:(id)date completion:(id)completion;
- (void)clientRemote_collectionConfigurationDidChange:(id)change;
- (void)clientRemote_finishedPersistenceForBatch:(id)batch error:(id)error;
- (void)clientRemote_receivedBatch:(id)batch error:(id)error;
- (void)clientRemote_synchronizeWithCompletion:(id)completion;
- (void)connectionInterrupted;
- (void)connectionInvalidated;
- (void)finishWithCompletion:(id)completion;
- (void)insertDatums:(id)datums device:(id)device metadata:(id)metadata options:(unint64_t)options completion:(id)completion;
- (void)resumeWithCompletion:(id)completion;
- (void)setDelegate:(id)delegate;
- (void)setState:(id)state;
- (void)unitTest_preSetStateHandler:(id)handler;
- (void)unitTest_setClientFlushRequestTimeoutOverride:(double)override;
- (void)unitTest_setConnectionInterruptedHandler:(id)handler;
- (void)unitTest_setMaxDatumAgeOverride:(double)override;
- (void)unitTest_setRegistrationCompleteHandler:(id)handler;
@end

@implementation HKDataCollector

- (HKDataCollector)initWithHealthStore:(id)store bundleIdentifier:(id)identifier quantityType:(id)type
{
  v51 = *MEMORY[0x1E69E9840];
  storeCopy = store;
  identifierCopy = identifier;
  typeCopy = type;
  v48.receiver = self;
  v48.super_class = HKDataCollector;
  v11 = [(HKDataCollector *)&v48 init];
  if (v11)
  {
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      [MEMORY[0x1E695DF30] raise:*MEMORY[0x1E695D940] format:{@"A valid %@ object is required.", objc_opt_class()}];
    }

    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      [MEMORY[0x1E695DF30] raise:*MEMORY[0x1E695D940] format:{@"A valid %@ object is required.", objc_opt_class()}];
    }

    v12 = HKCreateSerialDispatchQueue(v11, @"resource");
    queue = v11->_queue;
    v11->_queue = v12;

    v14 = [[HKRetryableOperation alloc] initWithQueue:v11->_queue retryCount:5];
    retryableOperation = v11->_retryableOperation;
    v11->_retryableOperation = v14;

    v11->_requiresRegistration = 1;
    v16 = objc_alloc_init(HKDataCollectorState);
    state = v11->_state;
    v11->_state = v16;

    v18 = [typeCopy copy];
    quantityType = v11->_quantityType;
    v11->_quantityType = v18;

    v20 = [identifierCopy copy];
    bundleIdentifier = v11->_bundleIdentifier;
    v11->_bundleIdentifier = v20;

    uUID = [MEMORY[0x1E696AFB0] UUID];
    identifier = v11->_identifier;
    v11->_identifier = uUID;

    v24 = [[HKDataCollectorTaskServerConfiguration alloc] initWithQuantityType:v11->_quantityType bundleIdentifier:v11->_bundleIdentifier canResumeFromLastDatum:0];
    v25 = [[HKTaskServerProxyProvider alloc] initWithHealthStore:storeCopy taskIdentifier:@"HKDataCollectorTaskServerIdentifier" exportedObject:v11 taskUUID:v11->_identifier];
    proxyProvider = v11->_proxyProvider;
    v11->_proxyProvider = v25;

    [(HKProxyProvider *)v11->_proxyProvider setShouldRetryOnInterruption:0];
    [(HKTaskServerProxyProvider *)v11->_proxyProvider setTaskConfiguration:v24];
    objc_initWeak(&location, v11);
    v45[0] = MEMORY[0x1E69E9820];
    v45[1] = 3221225472;
    v45[2] = __69__HKDataCollector_initWithHealthStore_bundleIdentifier_quantityType___block_invoke;
    v45[3] = &unk_1E7379140;
    objc_copyWeak(&v46, &location);
    [(HKProxyProvider *)v11->_proxyProvider setAutomaticProxyReconnectionHandler:v45];
    [(HKProxyProvider *)v11->_proxyProvider setShouldRetryOnInterruption:1];
    v27 = objc_alloc_init(MEMORY[0x1E695DF70]);
    pendingBatches = v11->_pendingBatches;
    v11->_pendingBatches = v27;

    v29 = objc_alloc_init(MEMORY[0x1E695DF90]);
    unpersistedBatchesByUUID = v11->_unpersistedBatchesByUUID;
    v11->_unpersistedBatchesByUUID = v29;

    v31 = objc_alloc_init(MEMORY[0x1E695DF90]);
    unconfirmedBatchesByUUID = v11->_unconfirmedBatchesByUUID;
    v11->_unconfirmedBatchesByUUID = v31;

    v33 = [[HKDataCollectorCollectionConfiguration alloc] initWithCollectionInterval:1 collectionLatency:600.0 collectionType:600.0];
    collectionConfiguration = v11->_collectionConfiguration;
    v11->_collectionConfiguration = v33;

    v35 = objc_alloc_init(MEMORY[0x1E695DF70]);
    flushRequests = v11->_flushRequests;
    v11->_flushRequests = v35;

    __asm { FMOV            V0.2D, #-1.0 }

    *&v11->_unitTest_maxDatumAgeOverride = _Q0;
    v11->_lastLogTime = CFAbsoluteTimeGetCurrent();
    _HKInitializeLogging();
    v42 = HKLogDataCollection;
    if (os_log_type_enabled(HKLogDataCollection, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138543362;
      v50 = v11;
      _os_log_impl(&dword_19197B000, v42, OS_LOG_TYPE_DEFAULT, "%{public}@: Initialized.", buf, 0xCu);
    }

    objc_destroyWeak(&v46);
    objc_destroyWeak(&location);
  }

  v43 = *MEMORY[0x1E69E9840];
  return v11;
}

void __69__HKDataCollector_initWithHealthStore_bundleIdentifier_quantityType___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained _requestRegistration];
}

- (HKDataCollectorCollectionConfiguration)collectionConfiguration
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x3032000000;
  v9 = __Block_byref_object_copy__37;
  v10 = __Block_byref_object_dispose__37;
  v11 = 0;
  queue = self->_queue;
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __42__HKDataCollector_collectionConfiguration__block_invoke;
  v5[3] = &unk_1E7378528;
  v5[4] = self;
  v5[5] = &v6;
  dispatch_sync(queue, v5);
  v3 = v7[5];
  _Block_object_dispose(&v6, 8);

  return v3;
}

- (void)resumeWithCompletion:(id)completion
{
  completionCopy = completion;
  queue = self->_queue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __40__HKDataCollector_resumeWithCompletion___block_invoke;
  block[3] = &unk_1E73810E0;
  block[4] = self;
  v9 = completionCopy;
  v10 = a2;
  v7 = completionCopy;
  dispatch_sync(queue, block);
}

void __40__HKDataCollector_resumeWithCompletion___block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  if (*(v2 + 170) == 1)
  {
    v3 = [*(v2 + 24) clientQueue];
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __40__HKDataCollector_resumeWithCompletion___block_invoke_2;
    block[3] = &unk_1E73789A0;
    v4 = *(a1 + 40);
    block[4] = *(a1 + 32);
    v17 = v4;
    v18 = *(a1 + 48);
    dispatch_async(v3, block);

    v5 = v17;
LABEL_5:

    return;
  }

  if (*(v2 + 169) == 1)
  {
    v6 = [*(v2 + 24) clientQueue];
    v13[0] = MEMORY[0x1E69E9820];
    v13[1] = 3221225472;
    v13[2] = __40__HKDataCollector_resumeWithCompletion___block_invoke_3;
    v13[3] = &unk_1E73789A0;
    v7 = *(a1 + 40);
    v13[4] = *(a1 + 32);
    v14 = v7;
    v15 = *(a1 + 48);
    dispatch_async(v6, v13);

    v5 = v14;
    goto LABEL_5;
  }

  *(v2 + 169) = 1;
  v8 = [[HKDataCollectorTaskServerConfiguration alloc] initWithQuantityType:*(*(a1 + 32) + 200) bundleIdentifier:*(*(a1 + 32) + 32) canResumeFromLastDatum:1];
  [*(*(a1 + 32) + 24) setTaskConfiguration:v8];

  v9 = [*(a1 + 40) copy];
  v10 = *(a1 + 32);
  v11 = *(v10 + 176);
  *(v10 + 176) = v9;

  v12 = *(a1 + 32);
  if (!v12[8])
  {

    [v12 _queue_requestRegistration];
  }
}

void __40__HKDataCollector_resumeWithCompletion___block_invoke_2(uint64_t a1)
{
  v2 = MEMORY[0x1E696ABC0];
  v5 = a1 + 32;
  v3 = *(a1 + 32);
  v4 = *(v5 + 8);
  v6 = objc_opt_class();
  v7 = *(a1 + 48);
  v8 = *(a1 + 32);
  v9 = objc_opt_class();
  v11 = NSStringFromClass(v9);
  v10 = [v2 hk_errorForInvalidArgument:@"@" class:v6 selector:v7 format:{@"This %@ has already been invalidated.", v11}];
  (*(v4 + 16))(v4, 0, v10);
}

void __40__HKDataCollector_resumeWithCompletion___block_invoke_3(uint64_t a1)
{
  v2 = MEMORY[0x1E696ABC0];
  v5 = a1 + 32;
  v3 = *(a1 + 32);
  v4 = *(v5 + 8);
  v6 = objc_opt_class();
  v7 = *(a1 + 48);
  v8 = *(a1 + 32);
  v9 = objc_opt_class();
  v12 = NSStringFromClass(v9);
  v10 = NSStringFromSelector(*(a1 + 48));
  v11 = [v2 hk_errorForInvalidArgument:@"@" class:v6 selector:v7 format:{@"%@ has already been resumed. %@ must be called only once, and before any calls to insertDatums:device:metadata:completion:", v12, v10}];
  (*(v4 + 16))(v4, 0, v11);
}

- (void)insertDatums:(id)datums device:(id)device metadata:(id)metadata options:(unint64_t)options completion:(id)completion
{
  v45 = *MEMORY[0x1E69E9840];
  datumsCopy = datums;
  deviceCopy = device;
  metadataCopy = metadata;
  completionCopy = completion;
  if (completionCopy)
  {
    v17 = completionCopy;
  }

  else
  {
    v17 = &__block_literal_global_91;
  }

  v18 = [(HKProxyProvider *)self->_proxyProvider clientQueueActionHandlerWithCompletion:v17];

  if (options)
  {
    _HKInitializeLogging();
    v19 = HKLogDataCollection;
    if (os_log_type_enabled(HKLogDataCollection, OS_LOG_TYPE_DEFAULT))
    {
      quantityType = self->_quantityType;
      v21 = v19;
      identifier = [(HKObjectType *)quantityType identifier];
      *buf = 138543618;
      selfCopy2 = self;
      v43 = 2114;
      v44 = identifier;
      _os_log_impl(&dword_19197B000, v21, OS_LOG_TYPE_DEFAULT, "%{public}@: Transient data collection on type %{public}@", buf, 0x16u);
    }
  }

  if ([datumsCopy count])
  {
    v40 = 0;
    v23 = [(HKDataCollector *)self _validateDatums:datumsCopy error:&v40];
    v24 = v40;
    if (!v23)
    {
      (v18)[2](v18, 0, v24);
LABEL_20:

      goto LABEL_21;
    }

    if (deviceCopy)
    {
      goto LABEL_10;
    }

    if ([(HKObjectType *)self->_quantityType code]== 10)
    {
      deviceCopy = 0;
    }

    else
    {
      deviceCopy = +[HKDevice localDevice];
      if (deviceCopy)
      {
LABEL_10:
        objc_opt_class();
        if ((objc_opt_isKindOfClass() & 1) == 0)
        {
          v25 = MEMORY[0x1E695DF30];
          v32 = a2;
          v26 = *MEMORY[0x1E695D940];
          v27 = objc_opt_class();
          v28 = v26;
          a2 = v32;
          [v25 raise:v28 format:{@"A valid %@ object is required.", v27}];
        }
      }
    }

    queue = self->_queue;
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __67__HKDataCollector_insertDatums_device_metadata_options_completion___block_invoke_41;
    block[3] = &unk_1E7381108;
    block[4] = self;
    v37 = v18;
    v38 = a2;
    v34 = datumsCopy;
    deviceCopy = deviceCopy;
    v35 = deviceCopy;
    v36 = metadataCopy;
    optionsCopy = options;
    dispatch_sync(queue, block);

    goto LABEL_20;
  }

  _HKInitializeLogging();
  v29 = HKLogDataCollection;
  if (os_log_type_enabled(HKLogDataCollection, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138543618;
    selfCopy2 = self;
    v43 = 2112;
    v44 = deviceCopy;
    _os_log_impl(&dword_19197B000, v29, OS_LOG_TYPE_DEFAULT, "%{public}@: Ignoring empty batch with device: %@", buf, 0x16u);
  }

  v18[2](v18, 1, 0);
LABEL_21:

  v31 = *MEMORY[0x1E69E9840];
}

void __67__HKDataCollector_insertDatums_device_metadata_options_completion___block_invoke_41(uint64_t a1)
{
  v2 = *(a1 + 32);
  if (*(v2 + 170) == 1)
  {
    v3 = *(a1 + 64);
    v4 = MEMORY[0x1E696ABC0];
    v5 = objc_opt_class();
    v6 = *(a1 + 72);
    v7 = *(a1 + 32);
    v8 = objc_opt_class();
    v13 = NSStringFromClass(v8);
    v9 = [v4 hk_errorForInvalidArgument:@"@" class:v5 selector:v6 format:{@"This %@ has already been invalidated.", v13}];
    (*(v3 + 16))(v3, 0, v9);
  }

  else
  {
    if ((*(v2 + 169) & 1) == 0 && !*(v2 + 64))
    {
      [v2 _queue_requestRegistration];
      v2 = *(a1 + 32);
    }

    *(v2 + 169) = 1;
    v10 = *(a1 + 64);
    v11 = [*(a1 + 40) lastObject];
    [v11 setSaveCompletion:v10];

    [*(a1 + 32) _queue_batchDatums:*(a1 + 40) device:*(a1 + 48) metadata:*(a1 + 56) options:*(a1 + 80) completion:*(a1 + 64)];
    if (*(a1 + 80))
    {
      *(*(a1 + 32) + 120) = 1;
    }

    v12 = *(a1 + 32);

    [v12 _queue_considerSendingBatches];
  }
}

- (void)_queue_batchDatums:(id)datums device:(id)device metadata:(id)metadata options:(unint64_t)options completion:(id)completion
{
  v85 = *MEMORY[0x1E69E9840];
  datumsCopy = datums;
  deviceCopy = device;
  metadataCopy = metadata;
  completionCopy = completion;
  if (!self->_pendingBatches)
  {
    v17 = objc_alloc_init(MEMORY[0x1E695DF70]);
    pendingBatches = self->_pendingBatches;
    self->_pendingBatches = v17;
  }

  self->_totalDatumCount += [datumsCopy count];
  lastObject = [(NSMutableArray *)self->_pendingBatches lastObject];
  v71 = completionCopy;
  v72 = metadataCopy;
  v70 = lastObject;
  if (!lastObject)
  {
    goto LABEL_26;
  }

  v20 = lastObject;
  device = [lastObject device];
  if (device != deviceCopy)
  {
    device2 = [v20 device];
    if (!device2)
    {
      goto LABEL_25;
    }

    completionCopy = device2;
    device3 = [v20 device];
    if (![deviceCopy isEqual:device3])
    {
LABEL_24:

      goto LABEL_25;
    }
  }

  metadata = [v20 metadata];
  if (metadata == v72)
  {
    v28 = [v20 isTransient] ^ options;

    if (device == deviceCopy)
    {
      goto LABEL_14;
    }

    goto LABEL_13;
  }

  metadata2 = [v20 metadata];
  if (!metadata2)
  {

    goto LABEL_23;
  }

  v25 = v20;
  v26 = metadata2;
  v67 = deviceCopy;
  metadata3 = [v25 metadata];
  if (![v72 isEqual:metadata3])
  {

    deviceCopy = v67;
LABEL_23:
    if (device != deviceCopy)
    {
      goto LABEL_24;
    }

LABEL_25:

    completionCopy = v71;
    metadataCopy = v72;
    goto LABEL_26;
  }

  v28 = [v25 isTransient] ^ options;

  deviceCopy = v67;
  if (device == v67)
  {

    completionCopy = v71;
    metadataCopy = v72;
    v20 = v70;
    if ((v28 & 1) == 0)
    {
      goto LABEL_15;
    }

    goto LABEL_26;
  }

  v20 = v70;
LABEL_13:

LABEL_14:
  completionCopy = v71;
  metadataCopy = v72;
  if ((v28 & 1) == 0)
  {
LABEL_15:
    v29 = [v20 batchByAddingData:datumsCopy completion:completionCopy];
    [(NSMutableArray *)self->_pendingBatches removeLastObject];
    [(NSMutableArray *)self->_pendingBatches addObject:v29];
    Current = CFAbsoluteTimeGetCurrent();
    if (Current - self->_lastLogTime > 120.0)
    {
      _HKInitializeLogging();
      v31 = HKLogDataCollection;
      if (os_log_type_enabled(HKLogDataCollection, OS_LOG_TYPE_DEFAULT))
      {
        log = v31;
        batchUUID = [(_HKDataCollectorPendingBatch *)v29 batchUUID];
        v54 = HKDiagnosticStringFromUUID(batchUUID);
        data = [(_HKDataCollectorPendingBatch *)v29 data];
        v52 = [data count];
        data2 = [(_HKDataCollectorPendingBatch *)v29 data];
        firstObject = [data2 firstObject];
        dateInterval = [firstObject dateInterval];
        startDate = [dateInterval startDate];
        v53 = HKDiagnosticStringFromDate(startDate);
        data3 = [(_HKDataCollectorPendingBatch *)v29 data];
        [data3 lastObject];
        v34 = v65 = v29;
        dateInterval2 = [v34 dateInterval];
        [dateInterval2 endDate];
        v37 = v36 = datumsCopy;
        HKDiagnosticStringFromDate(v37);
        v38 = v68 = deviceCopy;
        *buf = 138544386;
        selfCopy2 = self;
        v75 = 2114;
        v76 = v54;
        v77 = 2048;
        v78 = v52;
        v79 = 2114;
        v80 = v53;
        v81 = 2114;
        v82 = v38;
        _os_log_impl(&dword_19197B000, log, OS_LOG_TYPE_DEFAULT, "%{public}@: Batch %{public}@: Now contains %ld datums from %{public}@ -> %{public}@.", buf, 0x34u);

        datumsCopy = v36;
        completionCopy = v71;

        v29 = v65;
        v20 = v70;

        metadataCopy = v72;
        deviceCopy = v68;
      }

      self->_lastLogTime = Current;
    }

    if (self->_totalDatumCount >= 5001)
    {
      [(HKDataCollector *)self _queue_pruneOldDatums];
    }

    goto LABEL_31;
  }

LABEL_26:
  v39 = [_HKDataCollectorPendingBatch alloc];
  uUID = [MEMORY[0x1E696AFB0] UUID];
  v29 = [(_HKDataCollectorPendingBatch *)v39 initWithIdentifier:uUID data:datumsCopy metadata:metadataCopy device:deviceCopy options:options completion:completionCopy];

  [(NSMutableArray *)self->_pendingBatches addObject:v29];
  if (self->_totalDatumCount >= 5001)
  {
    [(HKDataCollector *)self _queue_pruneOldDatums];
  }

  _HKInitializeLogging();
  v41 = HKLogDataCollection;
  if (os_log_type_enabled(HKLogDataCollection, OS_LOG_TYPE_DEFAULT))
  {
    loga = v41;
    batchUUID2 = [(_HKDataCollectorPendingBatch *)v29 batchUUID];
    v42 = HKDiagnosticStringFromUUID(batchUUID2);
    v43 = [datumsCopy count];
    firstObject2 = [datumsCopy firstObject];
    dateInterval3 = [firstObject2 dateInterval];
    startDate2 = [dateInterval3 startDate];
    HKDiagnosticStringFromDate(startDate2);
    v46 = v69 = deviceCopy;
    [datumsCopy lastObject];
    v47 = v66 = v29;
    dateInterval4 = [v47 dateInterval];
    endDate = [dateInterval4 endDate];
    HKDiagnosticStringFromDate(endDate);
    v50 = v64 = datumsCopy;
    *buf = 138544642;
    selfCopy2 = self;
    v75 = 2114;
    v76 = v42;
    v77 = 2048;
    v78 = v43;
    completionCopy = v71;
    v79 = 2114;
    v80 = v46;
    v81 = 2114;
    v82 = v50;
    v83 = 2112;
    v84 = v69;
    _os_log_impl(&dword_19197B000, loga, OS_LOG_TYPE_DEFAULT, "%{public}@: Batch %{public}@: Inserting %lu datums from %{public}@ -> %{public}@, device: %@", buf, 0x3Eu);

    metadataCopy = v72;
    v29 = v66;

    datumsCopy = v64;
    deviceCopy = v69;
  }

  v20 = v70;
LABEL_31:

  v51 = *MEMORY[0x1E69E9840];
}

- (void)finishWithCompletion:(id)completion
{
  completionCopy = completion;
  queue = self->_queue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __40__HKDataCollector_finishWithCompletion___block_invoke;
  block[3] = &unk_1E73810E0;
  block[4] = self;
  v9 = completionCopy;
  v10 = a2;
  v7 = completionCopy;
  dispatch_sync(queue, block);
}

void __40__HKDataCollector_finishWithCompletion___block_invoke(uint64_t a1)
{
  v32 = *MEMORY[0x1E69E9840];
  v2 = *(a1 + 32);
  if (*(v2 + 170) == 1)
  {
    v3 = [*(v2 + 24) clientQueue];
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __40__HKDataCollector_finishWithCompletion___block_invoke_2;
    block[3] = &unk_1E73789A0;
    v4 = *(a1 + 40);
    block[4] = *(a1 + 32);
    v24 = v4;
    v25 = *(a1 + 48);
    dispatch_async(v3, block);
  }

  else
  {
    *(v2 + 170) = 1;
    v5 = a1 + 32;
    objc_initWeak(&location, *(a1 + 32));
    aBlock[0] = MEMORY[0x1E69E9820];
    aBlock[1] = 3221225472;
    aBlock[2] = __40__HKDataCollector_finishWithCompletion___block_invoke_3;
    aBlock[3] = &unk_1E7381130;
    objc_copyWeak(&v21, &location);
    v20 = *(a1 + 40);
    v6 = _Block_copy(aBlock);
    v7 = [*(*v5 + 144) count];
    v8 = [*(*(a1 + 32) + 136) count];
    _HKInitializeLogging();
    v9 = HKLogDataCollection;
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      v10 = *(a1 + 32);
      v11 = [*(v10 + 152) count];
      *buf = 138543874;
      v27 = v10;
      v28 = 2048;
      v29 = v8 + v7;
      v30 = 2048;
      v31 = v11;
      _os_log_impl(&dword_19197B000, v9, OS_LOG_TYPE_DEFAULT, "%{public}@: Finishing data collection with %ld unsent batches and %ld unpersisted batches.", buf, 0x20u);
    }

    if ([*(*(a1 + 32) + 144) count] || objc_msgSend(*(*(a1 + 32) + 136), "count"))
    {
      v12 = [v6 copy];
      v13 = *(a1 + 32);
      v14 = *(v13 + 184);
      *(v13 + 184) = v12;

      [*(a1 + 32) _queue_considerSendingBatches];
    }

    else
    {
      v16 = [*(*(a1 + 32) + 24) clientQueue];
      v17[0] = MEMORY[0x1E69E9820];
      v17[1] = 3221225472;
      v17[2] = __40__HKDataCollector_finishWithCompletion___block_invoke_43;
      v17[3] = &unk_1E7376A98;
      v18 = v6;
      dispatch_async(v16, v17);
    }

    objc_destroyWeak(&v21);
    objc_destroyWeak(&location);
  }

  v15 = *MEMORY[0x1E69E9840];
}

void __40__HKDataCollector_finishWithCompletion___block_invoke_2(uint64_t a1)
{
  v2 = MEMORY[0x1E696ABC0];
  v5 = a1 + 32;
  v3 = *(a1 + 32);
  v4 = *(v5 + 8);
  v6 = objc_opt_class();
  v7 = *(a1 + 48);
  v8 = *(a1 + 32);
  v9 = objc_opt_class();
  v11 = NSStringFromClass(v9);
  v10 = [v2 hk_errorForInvalidArgument:@"@" class:v6 selector:v7 format:{@"This %@ has already been invalidated.", v11}];
  (*(v4 + 16))(v4, 0, v10);
}

void __40__HKDataCollector_finishWithCompletion___block_invoke_3(uint64_t a1, uint64_t a2, void *a3)
{
  v11 = *MEMORY[0x1E69E9840];
  v4 = a3;
  _HKInitializeLogging();
  v5 = HKLogDataCollection;
  if (os_log_type_enabled(HKLogDataCollection, OS_LOG_TYPE_DEFAULT))
  {
    v6 = v5;
    WeakRetained = objc_loadWeakRetained((a1 + 40));
    v9 = 138543362;
    v10 = WeakRetained;
    _os_log_impl(&dword_19197B000, v6, OS_LOG_TYPE_DEFAULT, "%{public}@: All data successfully flushed.", &v9, 0xCu);
  }

  (*(*(a1 + 32) + 16))();

  v8 = *MEMORY[0x1E69E9840];
}

- (void)_queue_considerSendingBatches
{
  v55 = *MEMORY[0x1E69E9840];
  dispatch_assert_queue_V2(self->_queue);
  if (![(NSMutableDictionary *)self->_unconfirmedBatchesByUUID count])
  {
    Current = CFAbsoluteTimeGetCurrent();
    [(HKDataCollectorCollectionConfiguration *)self->_collectionConfiguration collectionLatency];
    if (self->_unitTest_maxDatumAgeOverride >= 0.0)
    {
      unitTest_maxDatumAgeOverride = self->_unitTest_maxDatumAgeOverride;
    }

    v8 = Current - unitTest_maxDatumAgeOverride;
    v39 = 0u;
    v40 = 0u;
    v41 = 0u;
    v42 = 0u;
    v9 = self->_flushRequests;
    v10 = [(NSMutableArray *)v9 countByEnumeratingWithState:&v39 objects:v54 count:16];
    if (v10)
    {
      v11 = v10;
      v12 = *v40;
      do
      {
        for (i = 0; i != v11; ++i)
        {
          if (*v40 != v12)
          {
            objc_enumerationMutation(v9);
          }

          date = [*(*(&v39 + 1) + 8 * i) date];
          [date timeIntervalSinceReferenceDate];
          v16 = v15;

          if (v16 >= v8)
          {
            v8 = v16;
          }
        }

        v11 = [(NSMutableArray *)v9 countByEnumeratingWithState:&v39 objects:v54 count:16];
      }

      while (v11);
    }

    firstObject = [(NSMutableArray *)self->_pendingBatches firstObject];
    v5 = firstObject;
    if (firstObject)
    {
      data = [firstObject data];
      firstObject2 = [data firstObject];
      dateInterval = [firstObject2 dateInterval];
      startDate = [dateInterval startDate];

      if (self->_shouldFlushAll || ([startDate timeIntervalSinceReferenceDate], v22 < v8) || self->_totalDatumCount > 4999 || self->_invalidated)
      {
        _HKInitializeLogging();
        v23 = HKLogDataCollection;
        if (os_log_type_enabled(HKLogDataCollection, OS_LOG_TYPE_DEFAULT))
        {
          v24 = MEMORY[0x1E695DF00];
          v25 = v23;
          v26 = [v24 dateWithTimeIntervalSinceReferenceDate:v8];
          totalDatumCount = self->_totalDatumCount;
          *buf = 138544386;
          selfCopy2 = self;
          v46 = 2114;
          v47 = v5;
          v48 = 2112;
          v49 = startDate;
          v50 = 2112;
          v51 = v26;
          v52 = 2048;
          v53 = totalDatumCount;
          _os_log_impl(&dword_19197B000, v25, OS_LOG_TYPE_DEFAULT, "%{public}@: Sending batch %{public}@ (start date %@, latest start %@, datum count %ld)", buf, 0x34u);
        }

        if (!self->_registrationUUID)
        {
          [(HKDataCollector *)self _queue_requestRegistration];

          goto LABEL_35;
        }

        [(HKDataCollector *)self _queue_sendBatch:v5];
      }
    }

    else
    {
      [(HKDataCollector *)self _queue_checkForFinish];
      v37 = 0u;
      v38 = 0u;
      v35 = 0u;
      v36 = 0u;
      v28 = self->_flushRequests;
      v29 = [(NSMutableArray *)v28 countByEnumeratingWithState:&v35 objects:v43 count:16];
      if (v29)
      {
        v30 = v29;
        v31 = *v36;
        do
        {
          for (j = 0; j != v30; ++j)
          {
            if (*v36 != v31)
            {
              objc_enumerationMutation(v28);
            }

            completion = [*(*(&v35 + 1) + 8 * j) completion];
            completion[2](completion, 1, 0);
          }

          v30 = [(NSMutableArray *)v28 countByEnumeratingWithState:&v35 objects:v43 count:16];
        }

        while (v30);
      }

      [(NSMutableArray *)self->_flushRequests removeAllObjects];
      self->_shouldFlushAll = 0;
    }

    [(HKDataCollector *)self _queue_considerCompletingFlushRequests];
    [(HKDataCollector *)self _queue_updateReconsiderationTimer];
LABEL_35:

    goto LABEL_36;
  }

  _HKInitializeLogging();
  v3 = HKLogDataCollection;
  if (os_log_type_enabled(HKLogDataCollection, OS_LOG_TYPE_DEFAULT))
  {
    unconfirmedBatchesByUUID = self->_unconfirmedBatchesByUUID;
    v5 = v3;
    *buf = 138543618;
    selfCopy2 = self;
    v46 = 2048;
    v47 = [(NSMutableDictionary *)unconfirmedBatchesByUUID count];
    _os_log_impl(&dword_19197B000, v5, OS_LOG_TYPE_DEFAULT, "%{public}@: %lu unconfirmed batches; delaying next send.", buf, 0x16u);
    goto LABEL_35;
  }

LABEL_36:
  v34 = *MEMORY[0x1E69E9840];
}

- (void)_queue_considerCompletingFlushRequests
{
  v42 = *MEMORY[0x1E69E9840];
  dispatch_assert_queue_V2(self->_queue);
  firstObject = [(NSMutableArray *)self->_pendingBatches firstObject];
  v4 = firstObject;
  if (firstObject)
  {
    data = [firstObject data];
    firstObject2 = [data firstObject];
    dateInterval = [firstObject2 dateInterval];
    startDate = [dateInterval startDate];
  }

  else
  {
    startDate = [MEMORY[0x1E695DF00] distantFuture];
  }

  v38 = 0u;
  v39 = 0u;
  v36 = 0u;
  v37 = 0u;
  selfCopy = self;
  allValues = [(NSMutableDictionary *)self->_unconfirmedBatchesByUUID allValues];
  v10 = [allValues countByEnumeratingWithState:&v36 objects:v41 count:16];
  if (v10)
  {
    v11 = v10;
    v12 = *v37;
    do
    {
      for (i = 0; i != v11; ++i)
      {
        if (*v37 != v12)
        {
          objc_enumerationMutation(allValues);
        }

        data2 = [*(*(&v36 + 1) + 8 * i) data];
        firstObject3 = [data2 firstObject];
        dateInterval2 = [firstObject3 dateInterval];
        startDate2 = [dateInterval2 startDate];

        if ([startDate2 hk_isBeforeDate:startDate])
        {
          v18 = startDate2;

          startDate = v18;
        }
      }

      v11 = [allValues countByEnumeratingWithState:&v36 objects:v41 count:16];
    }

    while (v11);
  }

  v34 = 0u;
  v35 = 0u;
  v32 = 0u;
  v33 = 0u;
  v19 = selfCopy->_flushRequests;
  v20 = [(NSMutableArray *)v19 countByEnumeratingWithState:&v32 objects:v40 count:16];
  if (!v20)
  {
    v22 = v19;
    goto LABEL_27;
  }

  v21 = v20;
  v30 = v4;
  v22 = 0;
  v23 = *v33;
  do
  {
    for (j = 0; j != v21; ++j)
    {
      if (*v33 != v23)
      {
        objc_enumerationMutation(v19);
      }

      v25 = *(*(&v32 + 1) + 8 * j);
      date = [v25 date];
      v27 = [date hk_isBeforeDate:startDate];

      if (v27)
      {
        completion = [v25 completion];
        completion[2](completion, 1, 0);

        if (!v22)
        {
          v22 = objc_alloc_init(MEMORY[0x1E695DF70]);
        }

        [(NSMutableArray *)v22 addObject:v25];
      }
    }

    v21 = [(NSMutableArray *)v19 countByEnumeratingWithState:&v32 objects:v40 count:16];
  }

  while (v21);

  v4 = v30;
  if (v22)
  {
    [(NSMutableArray *)selfCopy->_flushRequests removeObjectsInArray:v22];
LABEL_27:
  }

  v29 = *MEMORY[0x1E69E9840];
}

- (void)_queue_requestRegistration
{
  v10 = *MEMORY[0x1E69E9840];
  dispatch_assert_queue_V2(self->_queue);
  if (self->_requiresRegistration)
  {
    self->_requiresRegistration = 0;
    _HKInitializeLogging();
    v3 = HKLogDataCollection;
    if (os_log_type_enabled(HKLogDataCollection, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138543362;
      selfCopy = self;
      _os_log_impl(&dword_19197B000, v3, OS_LOG_TYPE_DEFAULT, "%{public}@: Registering with healthd", buf, 0xCu);
    }

    retryableOperation = self->_retryableOperation;
    v7[0] = MEMORY[0x1E69E9820];
    v7[1] = 3221225472;
    v7[2] = __45__HKDataCollector__queue_requestRegistration__block_invoke;
    v7[3] = &unk_1E737FFC8;
    v7[4] = self;
    v6[0] = MEMORY[0x1E69E9820];
    v6[1] = 3221225472;
    v6[2] = __45__HKDataCollector__queue_requestRegistration__block_invoke_5;
    v6[3] = &unk_1E7376A00;
    v6[4] = self;
    [(HKRetryableOperation *)retryableOperation _queue_performRetryableOperation:v7 completion:v6];
  }

  v5 = *MEMORY[0x1E69E9840];
}

void __45__HKDataCollector__queue_requestRegistration__block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = *(*(a1 + 32) + 24);
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __45__HKDataCollector__queue_requestRegistration__block_invoke_2;
  v8[3] = &unk_1E7381158;
  v9 = v3;
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __45__HKDataCollector__queue_requestRegistration__block_invoke_4;
  v6[3] = &unk_1E7376960;
  v7 = v9;
  v5 = v9;
  [v4 fetchProxyWithHandler:v8 errorHandler:v6];
}

void __45__HKDataCollector__queue_requestRegistration__block_invoke_2(uint64_t a1, void *a2)
{
  v3[0] = MEMORY[0x1E69E9820];
  v3[1] = 3221225472;
  v3[2] = __45__HKDataCollector__queue_requestRegistration__block_invoke_3;
  v3[3] = &unk_1E7376910;
  v4 = *(a1 + 32);
  [a2 remote_registerWithCompletion:v3];
}

void __45__HKDataCollector__queue_requestRegistration__block_invoke_3(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = a3;
  [v4 hk_isHealthKitErrorWithCode:101];
  (*(*(a1 + 32) + 16))();
}

void __45__HKDataCollector__queue_requestRegistration__block_invoke_5(uint64_t a1, int a2, void *a3)
{
  v25 = *MEMORY[0x1E69E9840];
  v5 = a3;
  if (a2)
  {
    _HKInitializeLogging();
    v6 = HKLogDataCollection;
    if (os_log_type_enabled(HKLogDataCollection, OS_LOG_TYPE_DEFAULT))
    {
      v7 = *(a1 + 32);
      *buf = 138543362;
      v24 = v7;
      _os_log_impl(&dword_19197B000, v6, OS_LOG_TYPE_DEFAULT, "%{public}@: Finished registration; awaiting registration complete.", buf, 0xCu);
    }

    [*(a1 + 32) _queue_sendState:*(*(a1 + 32) + 56)];
    [*(a1 + 32) _queue_considerSendingBatches];
  }

  else
  {
    v9 = *(a1 + 32);
    v8 = (a1 + 32);
    *(v9 + 168) = 1;
    _HKInitializeLogging();
    v10 = HKLogDataCollection;
    if (os_log_type_enabled(HKLogDataCollection, OS_LOG_TYPE_ERROR))
    {
      __45__HKDataCollector__queue_requestRegistration__block_invoke_5_cold_1(v8, v5, v10);
    }

    v11 = [*(*v8 + 136) copy];
    [*(*v8 + 136) removeAllObjects];
    v20 = 0u;
    v21 = 0u;
    v18 = 0u;
    v19 = 0u;
    v12 = v11;
    v13 = [v12 countByEnumeratingWithState:&v18 objects:v22 count:16];
    if (v13)
    {
      v14 = v13;
      v15 = *v19;
      do
      {
        v16 = 0;
        do
        {
          if (*v19 != v15)
          {
            objc_enumerationMutation(v12);
          }

          [*(*(&v18 + 1) + 8 * v16++) callCompletionsWithSuccess:0 error:{v5, v18}];
        }

        while (v14 != v16);
        v14 = [v12 countByEnumeratingWithState:&v18 objects:v22 count:16];
      }

      while (v14);
    }

    [*v8 _queue_checkForFinish];
  }

  v17 = *MEMORY[0x1E69E9840];
}

- (void)_requestRegistration
{
  queue = self->_queue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __39__HKDataCollector__requestRegistration__block_invoke;
  block[3] = &unk_1E7376780;
  block[4] = self;
  dispatch_sync(queue, block);
}

- (void)_queue_checkForFinish
{
  dispatch_assert_queue_V2(self->_queue);
  if (self->_invalidated)
  {
    finishCompletion = self->_finishCompletion;
    if (finishCompletion)
    {
      v4 = _Block_copy(finishCompletion);
      v5 = self->_finishCompletion;
      self->_finishCompletion = 0;

      clientQueue = [(HKProxyProvider *)self->_proxyProvider clientQueue];
      block[0] = MEMORY[0x1E69E9820];
      block[1] = 3221225472;
      block[2] = __40__HKDataCollector__queue_checkForFinish__block_invoke;
      block[3] = &unk_1E7376A98;
      v9 = v4;
      v7 = v4;
      dispatch_async(clientQueue, block);
    }
  }
}

- (void)_queue_sendBatch:(id)batch
{
  v36 = *MEMORY[0x1E69E9840];
  batchCopy = batch;
  dispatch_assert_queue_V2(self->_queue);
  unconfirmedBatchesByUUID = self->_unconfirmedBatchesByUUID;
  batchUUID = [batchCopy batchUUID];
  [(NSMutableDictionary *)unconfirmedBatchesByUUID setObject:batchCopy forKeyedSubscript:batchUUID];

  [(NSMutableArray *)self->_pendingBatches removeObject:batchCopy];
  data = [batchCopy data];
  self->_totalDatumCount -= [data count];

  self->_shouldFlushAll = 1;
  _HKInitializeLogging();
  v8 = HKLogDataCollection;
  if (os_log_type_enabled(HKLogDataCollection, OS_LOG_TYPE_DEFAULT))
  {
    log = v8;
    batchUUID2 = [batchCopy batchUUID];
    v19 = HKDiagnosticStringFromUUID(batchUUID2);
    data2 = [batchCopy data];
    v18 = [data2 count];
    data3 = [batchCopy data];
    firstObject = [data3 firstObject];
    dateInterval = [firstObject dateInterval];
    startDate = [dateInterval startDate];
    data4 = [batchCopy data];
    lastObject = [data4 lastObject];
    dateInterval2 = [lastObject dateInterval];
    endDate = [dateInterval2 endDate];
    *buf = 138544386;
    selfCopy = self;
    v28 = 2114;
    v29 = v19;
    v30 = 2048;
    v31 = v18;
    v32 = 2114;
    v33 = startDate;
    v34 = 2114;
    v35 = endDate;
    _os_log_impl(&dword_19197B000, log, OS_LOG_TYPE_DEFAULT, "%{public}@: Batch %{public}@: Sending %ld datums from %{public}@ to %{public}@", buf, 0x34u);
  }

  v24[0] = MEMORY[0x1E69E9820];
  v24[1] = 3221225472;
  v24[2] = __36__HKDataCollector__queue_sendBatch___block_invoke;
  v24[3] = &unk_1E7376848;
  v24[4] = self;
  v25 = batchCopy;
  v16 = batchCopy;
  [(HKDataCollector *)self _queue_taskServer_insertBatch:v16 completion:v24];

  v17 = *MEMORY[0x1E69E9840];
}

void __36__HKDataCollector__queue_sendBatch___block_invoke(uint64_t a1, int a2, void *a3)
{
  v22 = *MEMORY[0x1E69E9840];
  v5 = a3;
  v6 = v5;
  if (a2)
  {
    _HKInitializeLogging();
    v7 = HKLogDataCollection;
    if (os_log_type_enabled(HKLogDataCollection, OS_LOG_TYPE_INFO))
    {
      v9 = *(a1 + 32);
      v8 = *(a1 + 40);
      v10 = v7;
      v11 = [v8 batchUUID];
      v12 = HKDiagnosticStringFromUUID(v11);
      v18 = 138543618;
      v19 = v9;
      v20 = 2114;
      v21 = v12;
      _os_log_impl(&dword_19197B000, v10, OS_LOG_TYPE_INFO, "%{public}@: Batch %{public}@: successfully sent to daemon.", &v18, 0x16u);
    }
  }

  else if (([v5 hk_isXPCConnectionError] & 1) != 0 || objc_msgSend(v6, "hk_isHealthKitErrorWithCode:", 114))
  {
    _HKInitializeLogging();
    v13 = HKLogDataCollection;
    if (os_log_type_enabled(HKLogDataCollection, OS_LOG_TYPE_ERROR))
    {
      __36__HKDataCollector__queue_sendBatch___block_invoke_cold_2(a1, v13);
    }
  }

  else
  {
    _HKInitializeLogging();
    v14 = HKLogDataCollection;
    if (os_log_type_enabled(HKLogDataCollection, OS_LOG_TYPE_ERROR))
    {
      __36__HKDataCollector__queue_sendBatch___block_invoke_cold_1(a1, v14);
    }

    v15 = *(*(a1 + 32) + 144);
    v16 = [*(a1 + 40) batchUUID];
    [v15 removeObjectForKey:v16];

    [*(a1 + 40) callCompletionsWithSuccess:0 error:v6];
  }

  v17 = *MEMORY[0x1E69E9840];
}

- (void)_queue_updateReconsiderationTimer
{
  dispatch_assert_queue_V2(self->_queue);
  if ([(NSMutableArray *)self->_pendingBatches count]&& ![(NSMutableDictionary *)self->_unconfirmedBatchesByUUID count])
  {
    if (!self->_reconsiderationSource)
    {
      v3 = dispatch_source_create(MEMORY[0x1E69E9710], 0, 0, self->_queue);
      reconsiderationSource = self->_reconsiderationSource;
      self->_reconsiderationSource = v3;

      objc_initWeak(&location, self);
      v5 = self->_reconsiderationSource;
      v18 = MEMORY[0x1E69E9820];
      v19 = 3221225472;
      v20 = __52__HKDataCollector__queue_updateReconsiderationTimer__block_invoke;
      v21 = &unk_1E73782E8;
      objc_copyWeak(&v22, &location);
      dispatch_source_set_event_handler(v5, &v18);
      dispatch_resume(self->_reconsiderationSource);
      objc_destroyWeak(&v22);
      objc_destroyWeak(&location);
    }

    v6 = [(NSMutableArray *)self->_pendingBatches firstObject:v18];
    data = [v6 data];
    firstObject = [data firstObject];
    dateInterval = [firstObject dateInterval];
    startDate = [dateInterval startDate];
    [startDate timeIntervalSinceReferenceDate];
    v12 = v11;
    [(HKDataCollectorCollectionConfiguration *)self->_collectionConfiguration collectionLatency];
    v14 = v12 + v13;

    Current = CFAbsoluteTimeGetCurrent();
    v16 = self->_reconsiderationSource;
    v17 = dispatch_time(0, (fmax(v14 - Current, 0.25) * 1000000000.0));
    dispatch_source_set_timer(v16, v17, 0xFFFFFFFFFFFFFFFFLL, 0x5F5E100uLL);
  }
}

void __52__HKDataCollector__queue_updateReconsiderationTimer__block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained _queue_considerSendingBatches];
}

- (void)_queue_pruneOldDatums
{
  [(HKDataCollector *)self _queue_considerSendingBatches];
  v3 = 0;
  do
  {
    if (v3 >= [(NSMutableArray *)self->_pendingBatches count])
    {
      break;
    }

    v4 = [(NSMutableArray *)self->_pendingBatches objectAtIndexedSubscript:v3];
    v5 = self->_totalDatumCount - 5000;
    data = [v4 data];
    v7 = [data count];

    if (v7 <= v5)
    {
      [(HKDataCollector *)self _removeBatch:v4];
    }

    else
    {
      data2 = [v4 data];
      v9 = -[HKDataCollector _prunedBatch:maximumLength:](self, "_prunedBatch:maximumLength:", v4, [data2 count] - v5);

      if (v9)
      {
        [(NSMutableArray *)self->_pendingBatches replaceObjectAtIndex:v3 withObject:v9];
        data3 = [v4 data];
        v11 = [data3 count];
        data4 = [v9 data];
        self->_totalDatumCount += [data4 count] - v11;

        ++v3;
      }

      else
      {
        [(HKDataCollector *)self _removeBatch:v4];
      }
    }

    totalDatumCount = self->_totalDatumCount;
  }

  while (totalDatumCount > 5000);
}

- (void)_queue_resetUnpersistedBatches
{
  v24 = *MEMORY[0x1E69E9840];
  dispatch_assert_queue_V2(self->_queue);
  v20 = 0u;
  v21 = 0u;
  v18 = 0u;
  v19 = 0u;
  allValues = [(NSMutableDictionary *)self->_unpersistedBatchesByUUID allValues];
  v4 = [allValues countByEnumeratingWithState:&v18 objects:v23 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v19;
    do
    {
      v7 = 0;
      do
      {
        if (*v19 != v6)
        {
          objc_enumerationMutation(allValues);
        }

        [(NSMutableArray *)self->_pendingBatches addObject:*(*(&v18 + 1) + 8 * v7++)];
      }

      while (v5 != v7);
      v5 = [allValues countByEnumeratingWithState:&v18 objects:v23 count:16];
    }

    while (v5);
  }

  [(NSMutableDictionary *)self->_unpersistedBatchesByUUID removeAllObjects];
  v16 = 0u;
  v17 = 0u;
  v14 = 0u;
  v15 = 0u;
  allValues2 = [(NSMutableDictionary *)self->_unconfirmedBatchesByUUID allValues];
  v9 = [allValues2 countByEnumeratingWithState:&v14 objects:v22 count:16];
  if (v9)
  {
    v10 = v9;
    v11 = *v15;
    do
    {
      v12 = 0;
      do
      {
        if (*v15 != v11)
        {
          objc_enumerationMutation(allValues2);
        }

        [(NSMutableArray *)self->_pendingBatches addObject:*(*(&v14 + 1) + 8 * v12++)];
      }

      while (v10 != v12);
      v10 = [allValues2 countByEnumeratingWithState:&v14 objects:v22 count:16];
    }

    while (v10);
  }

  [(NSMutableDictionary *)self->_unconfirmedBatchesByUUID removeAllObjects];
  [(NSMutableArray *)self->_pendingBatches sortUsingComparator:&__block_literal_global_50_1];
  v13 = *MEMORY[0x1E69E9840];
}

uint64_t __49__HKDataCollector__queue_resetUnpersistedBatches__block_invoke(uint64_t a1, void *a2, void *a3)
{
  v4 = a3;
  v5 = [a2 data];
  v6 = [v5 firstObject];
  v7 = [v6 dateInterval];
  v8 = [v7 startDate];
  v9 = [v4 data];

  v10 = [v9 firstObject];
  v11 = [v10 dateInterval];
  v12 = [v11 startDate];
  v13 = [v8 compare:v12];

  return v13;
}

- (void)_removeBatch:(id)batch
{
  pendingBatches = self->_pendingBatches;
  batchCopy = batch;
  [(NSMutableArray *)pendingBatches removeObject:batchCopy];
  data = [batchCopy data];
  self->_totalDatumCount -= [data count];

  v7 = [MEMORY[0x1E696ABC0] hk_error:1300 format:{@"Reached datum buffer limit, pruning datums."}];
  [batchCopy callCompletionsWithSuccess:0 error:v7];
}

- (id)_prunedBatch:(id)batch maximumLength:(int64_t)length
{
  batchCopy = batch;
  data = [batchCopy data];
  data2 = [batchCopy data];
  v9 = [data subarrayWithRange:{objc_msgSend(data2, "count") + ~length, length + 1}];
  v10 = [v9 indexOfObjectPassingTest:&__block_literal_global_56];

  if (v10 == 0x7FFFFFFFFFFFFFFFLL)
  {
    _HKInitializeLogging();
    v11 = HKLogDataCollection;
    if (os_log_type_enabled(HKLogDataCollection, OS_LOG_TYPE_ERROR))
    {
      [(HKDataCollector *)self _prunedBatch:batchCopy maximumLength:v11];
    }

    goto LABEL_5;
  }

  data3 = [batchCopy data];
  v13 = [data3 count] - length + v10;

  data4 = [batchCopy data];
  v15 = [data4 count];

  if (v13 == v15)
  {
LABEL_5:
    v16 = 0;
    goto LABEL_12;
  }

  if (v13)
  {
    for (i = 0; i != v13; ++i)
    {
      data5 = [batchCopy data];
      v19 = [data5 objectAtIndexedSubscript:i];
      saveCompletion = [v19 saveCompletion];

      if (saveCompletion)
      {
        v21 = [MEMORY[0x1E696ABC0] hk_error:1300 format:{@"Reached datum buffer limit, pruning datums."}];
        data6 = [batchCopy data];
        v23 = [data6 objectAtIndexedSubscript:i];
        saveCompletion2 = [v23 saveCompletion];
        (saveCompletion2)[2](saveCompletion2, 0, v21);
      }
    }
  }

  data7 = [batchCopy data];
  data8 = [batchCopy data];
  v27 = [data7 subarrayWithRange:{v13, objc_msgSend(data8, "count") - v13}];

  v28 = [v27 hk_map:&__block_literal_global_60_0];
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 3221225472;
  aBlock[2] = __46__HKDataCollector__prunedBatch_maximumLength___block_invoke_2;
  aBlock[3] = &unk_1E7376A00;
  v37 = v28;
  v29 = v28;
  v30 = _Block_copy(aBlock);
  v31 = [_HKDataCollectorPendingBatch alloc];
  batchUUID = [batchCopy batchUUID];
  metadata = [batchCopy metadata];
  device = [batchCopy device];
  v16 = [(_HKDataCollectorPendingBatch *)v31 initWithIdentifier:batchUUID data:v27 metadata:metadata device:device options:0 completion:v30];

LABEL_12:

  return v16;
}

BOOL __46__HKDataCollector__prunedBatch_maximumLength___block_invoke(uint64_t a1, void *a2)
{
  v2 = [a2 saveCompletion];
  v3 = v2 != 0;

  return v3;
}

id __46__HKDataCollector__prunedBatch_maximumLength___block_invoke_57(uint64_t a1, void *a2)
{
  v2 = [a2 saveCompletion];
  v3 = _Block_copy(v2);

  return v3;
}

void __46__HKDataCollector__prunedBatch_maximumLength___block_invoke_2(uint64_t a1, uint64_t a2, void *a3)
{
  v16 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v5 = *(a1 + 32);
  v6 = [v5 countByEnumeratingWithState:&v11 objects:v15 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v12;
    do
    {
      v9 = 0;
      do
      {
        if (*v12 != v8)
        {
          objc_enumerationMutation(v5);
        }

        (*(*(*(&v11 + 1) + 8 * v9) + 16))(*(*(&v11 + 1) + 8 * v9));
        ++v9;
      }

      while (v7 != v9);
      v7 = [v5 countByEnumeratingWithState:&v11 objects:v15 count:16];
    }

    while (v7);
  }

  v10 = *MEMORY[0x1E69E9840];
}

- (void)setState:(id)state
{
  stateCopy = state;
  v5 = [stateCopy copy];
  state = self->_state;
  self->_state = v5;

  queue = self->_queue;
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __28__HKDataCollector_setState___block_invoke;
  v9[3] = &unk_1E7378400;
  v9[4] = self;
  v10 = stateCopy;
  v8 = stateCopy;
  dispatch_async(queue, v9);
}

- (void)_queue_sendState:(id)state
{
  stateCopy = state;
  dispatch_assert_queue_V2(self->_queue);
  retryableOperation = self->_retryableOperation;
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __36__HKDataCollector__queue_sendState___block_invoke;
  v7[3] = &unk_1E7376988;
  v7[4] = self;
  v8 = stateCopy;
  v6 = stateCopy;
  [(HKRetryableOperation *)retryableOperation _queue_performRetryableOperation:v7 completion:&__block_literal_global_62];
}

void __36__HKDataCollector__queue_sendState___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v5 = *(a1 + 32);
  v4 = *(a1 + 40);
  v6 = *(v5 + 24);
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __36__HKDataCollector__queue_sendState___block_invoke_2;
  v10[3] = &unk_1E73811E0;
  v10[4] = v5;
  v11 = v4;
  v12 = v3;
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __36__HKDataCollector__queue_sendState___block_invoke_4;
  v8[3] = &unk_1E7376960;
  v9 = v12;
  v7 = v12;
  [v6 fetchProxyWithHandler:v10 errorHandler:v8];
}

void __36__HKDataCollector__queue_sendState___block_invoke_2(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = *(*(a1 + 32) + 112);
  if (v4)
  {
    v5 = *(a1 + 40);
    (*(v4 + 16))();
  }

  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __36__HKDataCollector__queue_sendState___block_invoke_3;
  v7[3] = &unk_1E7376910;
  v6 = *(a1 + 40);
  v8 = *(a1 + 48);
  [v3 remote_setCollectionState:v6 completion:v7];
}

- (void)setDelegate:(id)delegate
{
  delegateCopy = delegate;
  queue = self->_queue;
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __31__HKDataCollector_setDelegate___block_invoke;
  v7[3] = &unk_1E7378400;
  v7[4] = self;
  v8 = delegateCopy;
  v6 = delegateCopy;
  dispatch_sync(queue, v7);
}

void *__31__HKDataCollector_setDelegate___block_invoke(uint64_t a1)
{
  objc_storeWeak((*(a1 + 32) + 208), *(a1 + 40));
  result = *(a1 + 32);
  if (!result[8])
  {

    return [result _queue_requestRegistration];
  }

  return result;
}

- (void)_queue_taskServer_insertBatch:(id)batch completion:(id)completion
{
  batchCopy = batch;
  completionCopy = completion;
  dispatch_assert_queue_V2(self->_queue);
  if (!self->_registrationUUID)
  {
    [HKDataCollector _queue_taskServer_insertBatch:a2 completion:self];
  }

  retryableOperation = self->_retryableOperation;
  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 3221225472;
  v11[2] = __60__HKDataCollector__queue_taskServer_insertBatch_completion___block_invoke;
  v11[3] = &unk_1E7376988;
  v11[4] = self;
  v12 = batchCopy;
  v10 = batchCopy;
  [(HKRetryableOperation *)retryableOperation _queue_performRetryableOperation:v11 completion:completionCopy];
}

void __60__HKDataCollector__queue_taskServer_insertBatch_completion___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = *(*(a1 + 32) + 24);
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __60__HKDataCollector__queue_taskServer_insertBatch_completion___block_invoke_2;
  v10[3] = &unk_1E73811E0;
  v5 = *(a1 + 40);
  v6 = *(a1 + 32);
  v11 = v5;
  v12 = v6;
  v13 = v3;
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __60__HKDataCollector__queue_taskServer_insertBatch_completion___block_invoke_4;
  v8[3] = &unk_1E7376960;
  v9 = v13;
  v7 = v13;
  [v4 fetchProxyWithHandler:v10 errorHandler:v8];
}

void __60__HKDataCollector__queue_taskServer_insertBatch_completion___block_invoke_2(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);
  v4 = a2;
  v5 = [v3 data];
  v6 = [*(a1 + 32) device];
  v7 = [*(a1 + 32) metadata];
  v8 = [*(a1 + 32) options];
  v9 = [*(a1 + 32) batchUUID];
  v10 = *(*(a1 + 40) + 64);
  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 3221225472;
  v11[2] = __60__HKDataCollector__queue_taskServer_insertBatch_completion___block_invoke_3;
  v11[3] = &unk_1E7376910;
  v12 = *(a1 + 48);
  [v4 remote_insertDatums:v5 device:v6 metadata:v7 options:v8 batchUUID:v9 registrationUUID:v10 completion:v11];
}

- (void)clientRemote_synchronizeWithCompletion:(id)completion
{
  completionCopy = completion;
  queue = self->_queue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __58__HKDataCollector_clientRemote_synchronizeWithCompletion___block_invoke;
  block[3] = &unk_1E7376A98;
  v8 = completionCopy;
  v6 = completionCopy;
  dispatch_sync(queue, block);
}

- (void)clientRemote_beginCollectionWithConfiguration:(id)configuration lastPersistedDatum:(id)datum registrationUUID:(id)d
{
  configurationCopy = configuration;
  datumCopy = datum;
  dCopy = d;
  queue = self->_queue;
  v15[0] = MEMORY[0x1E69E9820];
  v15[1] = 3221225472;
  v15[2] = __101__HKDataCollector_clientRemote_beginCollectionWithConfiguration_lastPersistedDatum_registrationUUID___block_invoke;
  v15[3] = &unk_1E737B738;
  v15[4] = self;
  v16 = configurationCopy;
  v17 = datumCopy;
  v18 = dCopy;
  v12 = dCopy;
  v13 = datumCopy;
  v14 = configurationCopy;
  dispatch_sync(queue, v15);
}

void __101__HKDataCollector_clientRemote_beginCollectionWithConfiguration_lastPersistedDatum_registrationUUID___block_invoke(id *a1)
{
  v77 = *MEMORY[0x1E69E9840];
  _HKInitializeLogging();
  v2 = HKLogDataCollection;
  if (os_log_type_enabled(HKLogDataCollection, OS_LOG_TYPE_DEFAULT))
  {
    v3 = a1[4];
    v4 = a1[5];
    v5 = a1[6];
    *buf = 138543874;
    v72 = v3;
    v73 = 2114;
    v74 = v4;
    v75 = 2114;
    v76 = v5;
    _os_log_impl(&dword_19197B000, v2, OS_LOG_TYPE_DEFAULT, "%{public}@: Beginning client-side data collection with configuration %{public}@, last datum %{public}@", buf, 0x20u);
  }

  v6 = [a1[7] copy];
  v7 = a1[4];
  v8 = v7[8];
  v7[8] = v6;

  v9 = [a1[5] copy];
  v10 = a1[4];
  v11 = v10[9];
  v10[9] = v9;

  v12 = _Block_copy(*(a1[4] + 22));
  v13 = a1[4];
  v14 = v13[22];
  v13[22] = 0;

  if (v12)
  {
    v15 = [*(a1[4] + 3) clientQueue];
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __101__HKDataCollector_clientRemote_beginCollectionWithConfiguration_lastPersistedDatum_registrationUUID___block_invoke_73;
    block[3] = &unk_1E7376AC0;
    v68 = v12;
    v67 = a1[6];
    dispatch_async(v15, block);
  }

  [a1[4] _queue_resetUnpersistedBatches];
  if (a1[6])
  {
    v52 = v12;
    v54 = objc_alloc_init(MEMORY[0x1E695DF70]);
    v16 = [a1[6] dateInterval];
    v17 = [v16 endDate];

    v64 = 0u;
    v65 = 0u;
    v62 = 0u;
    v63 = 0u;
    obj = *(a1[4] + 17);
    v18 = [obj countByEnumeratingWithState:&v62 objects:v70 count:16];
    if (v18)
    {
      v19 = v18;
      v55 = *v63;
      do
      {
        for (i = 0; i != v19; ++i)
        {
          v21 = a1;
          if (*v63 != v55)
          {
            objc_enumerationMutation(obj);
          }

          v22 = *(*(&v62 + 1) + 8 * i);
          v23 = [v22 data];
          v24 = [v23 firstObject];
          v25 = [v24 dateInterval];
          v26 = [v25 startDate];
          v27 = [v26 hk_isAfterOrEqualToDate:v17];

          if (v27)
          {
            [v54 addObject:v22];
          }

          else
          {
            v28 = [v22 data];
            v29 = [v28 lastObject];
            v30 = [v29 dateInterval];
            v31 = [v30 endDate];
            v32 = [v31 hk_isBeforeOrEqualToDate:v17];

            if (v32)
            {
              [v22 callCompletionsWithSuccess:1 error:0];
            }

            else
            {
              v33 = [v22 data];
              v60[0] = MEMORY[0x1E69E9820];
              v60[1] = 3221225472;
              v60[2] = __101__HKDataCollector_clientRemote_beginCollectionWithConfiguration_lastPersistedDatum_registrationUUID___block_invoke_2;
              v60[3] = &unk_1E7381208;
              v61 = v17;
              v34 = [v33 hk_filter:v60];

              v35 = [_HKDataCollectorPendingBatch alloc];
              v36 = [MEMORY[0x1E696AFB0] UUID];
              v37 = [v22 metadata];
              v38 = [v22 device];
              v39 = [v22 completions];
              v40 = [(_HKDataCollectorPendingBatch *)v35 initWithIdentifier:v36 data:v34 metadata:v37 device:v38 options:0 completions:v39];

              [v54 addObject:v40];
            }
          }

          a1 = v21;
        }

        v19 = [obj countByEnumeratingWithState:&v62 objects:v70 count:16];
      }

      while (v19);
    }

    objc_storeStrong(a1[4] + 17, v54);
    *(a1[4] + 6) = 0;
    v56 = 0u;
    v57 = 0u;
    v58 = 0u;
    v59 = 0u;
    v41 = *(a1[4] + 17);
    v42 = [v41 countByEnumeratingWithState:&v56 objects:v69 count:16];
    if (v42)
    {
      v43 = v42;
      v44 = *v57;
      do
      {
        for (j = 0; j != v43; ++j)
        {
          if (*v57 != v44)
          {
            objc_enumerationMutation(v41);
          }

          v46 = [*(*(&v56 + 1) + 8 * j) data];
          *(a1[4] + 6) += [v46 count];
        }

        v43 = [v41 countByEnumeratingWithState:&v56 objects:v69 count:16];
      }

      while (v43);
    }

    v12 = v52;
  }

  v47 = a1[4];
  if (v47[12])
  {
    v48 = _Block_copy(v47[12]);
    v49 = a1[4];
    v50 = v49[12];
    v49[12] = 0;

    (v48)[2](v48, a1[4]);
    v47 = a1[4];
  }

  [v47 _queue_considerSendingBatches];

  v51 = *MEMORY[0x1E69E9840];
}

uint64_t __101__HKDataCollector_clientRemote_beginCollectionWithConfiguration_lastPersistedDatum_registrationUUID___block_invoke_2(uint64_t a1, void *a2)
{
  v3 = [a2 dateInterval];
  v4 = [v3 startDate];
  v5 = [v4 hk_isAfterOrEqualToDate:*(a1 + 32)];

  return v5;
}

- (void)clientRemote_collectionConfigurationDidChange:(id)change
{
  changeCopy = change;
  v11 = 0;
  v12 = &v11;
  v13 = 0x3032000000;
  v14 = __Block_byref_object_copy__37;
  v15 = __Block_byref_object_dispose__37;
  v16 = 0;
  queue = self->_queue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __65__HKDataCollector_clientRemote_collectionConfigurationDidChange___block_invoke;
  block[3] = &unk_1E737B490;
  block[4] = self;
  v6 = changeCopy;
  v9 = v6;
  v10 = &v11;
  dispatch_sync(queue, block);
  if (v12[5])
  {
    delegate = [(HKDataCollector *)self delegate];
    if (objc_opt_respondsToSelector())
    {
      [delegate dataCollector:self didUpdateCollectionConfiguration:v12[5]];
    }
  }

  _Block_object_dispose(&v11, 8);
}

uint64_t __65__HKDataCollector_clientRemote_collectionConfigurationDidChange___block_invoke(uint64_t a1)
{
  v17 = *MEMORY[0x1E69E9840];
  if (([*(*(a1 + 32) + 72) isEqual:*(a1 + 40)] & 1) == 0)
  {
    _HKInitializeLogging();
    v2 = HKLogDataCollection;
    if (os_log_type_enabled(HKLogDataCollection, OS_LOG_TYPE_DEFAULT))
    {
      v3 = *(a1 + 32);
      v4 = *(a1 + 40);
      v13 = 138543618;
      v14 = v3;
      v15 = 2114;
      v16 = v4;
      _os_log_impl(&dword_19197B000, v2, OS_LOG_TYPE_DEFAULT, "%{public}@: Received updated configuration: %{public}@", &v13, 0x16u);
    }

    v5 = [*(a1 + 40) copy];
    v6 = *(*(a1 + 48) + 8);
    v7 = *(v6 + 40);
    *(v6 + 40) = v5;
  }

  v8 = [*(a1 + 40) copy];
  v9 = *(a1 + 32);
  v10 = *(v9 + 72);
  *(v9 + 72) = v8;

  result = [*(a1 + 32) _queue_considerSendingBatches];
  v12 = *MEMORY[0x1E69E9840];
  return result;
}

- (void)clientRemote_receivedBatch:(id)batch error:(id)error
{
  batchCopy = batch;
  errorCopy = error;
  queue = self->_queue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __52__HKDataCollector_clientRemote_receivedBatch_error___block_invoke;
  block[3] = &unk_1E7376640;
  block[4] = self;
  v12 = batchCopy;
  v13 = errorCopy;
  v9 = errorCopy;
  v10 = batchCopy;
  dispatch_sync(queue, block);
}

void __52__HKDataCollector_clientRemote_receivedBatch_error___block_invoke(uint64_t a1)
{
  v26 = *MEMORY[0x1E69E9840];
  v2 = [*(*(a1 + 32) + 144) objectForKeyedSubscript:*(a1 + 40)];
  [*(*(a1 + 32) + 144) removeObjectForKey:*(a1 + 40)];
  if (!v2)
  {
    v3 = [*(*(a1 + 32) + 152) objectForKeyedSubscript:*(a1 + 40)];

    _HKInitializeLogging();
    v4 = HKLogDataCollection;
    v5 = os_log_type_enabled(HKLogDataCollection, OS_LOG_TYPE_DEFAULT);
    if (v3)
    {
      if (!v5)
      {
        goto LABEL_8;
      }

      v6 = *(a1 + 32);
      v7 = v4;
      v8 = [0 batchUUID];
      v9 = HKDiagnosticStringFromUUID(v8);
      *v24 = 138543618;
      *&v24[4] = v6;
      *&v24[12] = 2114;
      *&v24[14] = v9;
      v10 = "%{public}@: Duplicate receipt confirmation of batch %{public}@, ignoring.";
    }

    else
    {
      if (!v5)
      {
        goto LABEL_8;
      }

      v11 = *(a1 + 32);
      v7 = v4;
      v8 = [0 batchUUID];
      v9 = HKDiagnosticStringFromUUID(v8);
      *v24 = 138543618;
      *&v24[4] = v11;
      *&v24[12] = 2114;
      *&v24[14] = v9;
      v10 = "%{public}@: Received receipt confirmation for unknown batch %{public}@, ignoring.";
    }

    _os_log_impl(&dword_19197B000, v7, OS_LOG_TYPE_DEFAULT, v10, v24, 0x16u);
  }

LABEL_8:
  v12 = *(a1 + 48);
  _HKInitializeLogging();
  v13 = HKLogDataCollection;
  if (v12)
  {
    if (os_log_type_enabled(HKLogDataCollection, OS_LOG_TYPE_ERROR))
    {
      v20 = *(a1 + 32);
      v19 = *(a1 + 40);
      v21 = v13;
      v22 = HKDiagnosticStringFromUUID(v19);
      v23 = *(a1 + 48);
      *v24 = 138543874;
      *&v24[4] = v20;
      *&v24[12] = 2114;
      *&v24[14] = v22;
      *&v24[22] = 2114;
      v25 = v23;
      _os_log_error_impl(&dword_19197B000, v21, OS_LOG_TYPE_ERROR, "%{public}@: Batch %{public}@: Fatal error sending batch, failing send: %{public}@", v24, 0x20u);
    }

    [v2 callCompletionsWithSuccess:0 error:{*(a1 + 48), *v24, *&v24[16]}];
  }

  else
  {
    if (os_log_type_enabled(HKLogDataCollection, OS_LOG_TYPE_DEFAULT))
    {
      v14 = *(a1 + 32);
      v15 = v13;
      v16 = [v2 batchUUID];
      v17 = HKDiagnosticStringFromUUID(v16);
      *v24 = 138543618;
      *&v24[4] = v14;
      *&v24[12] = 2114;
      *&v24[14] = v17;
      _os_log_impl(&dword_19197B000, v15, OS_LOG_TYPE_DEFAULT, "%{public}@: Batch %{public}@: confirmed receipt.", v24, 0x16u);
    }

    [*(*(a1 + 32) + 152) setObject:v2 forKeyedSubscript:{*(a1 + 40), *v24, *&v24[8]}];
    [*(a1 + 32) _queue_considerCompletingFlushRequests];
  }

  [*(a1 + 32) _queue_considerSendingBatches];

  v18 = *MEMORY[0x1E69E9840];
}

- (void)clientRemote_finishedPersistenceForBatch:(id)batch error:(id)error
{
  batchCopy = batch;
  errorCopy = error;
  queue = self->_queue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __66__HKDataCollector_clientRemote_finishedPersistenceForBatch_error___block_invoke;
  block[3] = &unk_1E7376640;
  block[4] = self;
  v12 = batchCopy;
  v13 = errorCopy;
  v9 = errorCopy;
  v10 = batchCopy;
  dispatch_sync(queue, block);
}

void __66__HKDataCollector_clientRemote_finishedPersistenceForBatch_error___block_invoke(void *a1)
{
  v20 = *MEMORY[0x1E69E9840];
  v2 = [*(a1[4] + 152) objectForKeyedSubscript:a1[5]];
  if (v2)
  {
    [*(a1[4] + 152) removeObjectForKey:a1[5]];
    if (a1[6])
    {
      _HKInitializeLogging();
      v3 = HKLogDataCollection;
      if (os_log_type_enabled(HKLogDataCollection, OS_LOG_TYPE_ERROR))
      {
        v10 = a1[4];
        v9 = a1[5];
        v11 = v3;
        v12 = HKDiagnosticStringFromUUID(v9);
        v13 = a1[6];
        v14 = 138543874;
        v15 = v10;
        v16 = 2114;
        v17 = v12;
        v18 = 2114;
        v19 = v13;
        _os_log_error_impl(&dword_19197B000, v11, OS_LOG_TYPE_ERROR, "%{public}@: Batch %{public}@: Persistence failed: %{public}@.", &v14, 0x20u);
      }

      v4 = a1[6];
    }

    else
    {
      v4 = 0;
    }

    [v2 callCompletionsWithSuccess:v4 == 0 error:?];
  }

  else
  {
    _HKInitializeLogging();
    v5 = HKLogDataCollection;
    if (os_log_type_enabled(HKLogDataCollection, OS_LOG_TYPE_DEFAULT))
    {
      v6 = a1[4];
      v7 = a1[5];
      v14 = 138543618;
      v15 = v6;
      v16 = 2114;
      v17 = v7;
      _os_log_impl(&dword_19197B000, v5, OS_LOG_TYPE_DEFAULT, "%{public}@: Daemon reported persistence finished for batch %{public}@, but no record of that batch exists.", &v14, 0x16u);
    }
  }

  v8 = *MEMORY[0x1E69E9840];
}

- (void)clientRemote_collectThroughDate:(id)date completion:(id)completion
{
  dateCopy = date;
  completionCopy = completion;
  queue = self->_queue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __62__HKDataCollector_clientRemote_collectThroughDate_completion___block_invoke;
  block[3] = &unk_1E73766C8;
  block[4] = self;
  v12 = dateCopy;
  v13 = completionCopy;
  v9 = completionCopy;
  v10 = dateCopy;
  dispatch_sync(queue, block);
}

void __62__HKDataCollector_clientRemote_collectThroughDate_completion___block_invoke(uint64_t a1)
{
  v23 = *MEMORY[0x1E69E9840];
  _HKInitializeLogging();
  v2 = HKLogDataCollection;
  if (os_log_type_enabled(HKLogDataCollection, OS_LOG_TYPE_DEFAULT))
  {
    v3 = *(a1 + 32);
    v4 = *(a1 + 40);
    *buf = 138543618;
    *&buf[4] = v3;
    *&buf[12] = 2114;
    *&buf[14] = v4;
    _os_log_impl(&dword_19197B000, v2, OS_LOG_TYPE_DEFAULT, "%{public}@: Received flush request through %{public}@", buf, 0x16u);
  }

  *buf = 0;
  *&buf[8] = buf;
  *&buf[16] = 0x3032000000;
  v20 = __Block_byref_object_copy__37;
  v21 = __Block_byref_object_dispose__37;
  v22 = 0;
  v5 = [_HKDataCollectorFlushRequest alloc];
  v11 = MEMORY[0x1E69E9820];
  v12 = 3221225472;
  v13 = __62__HKDataCollector_clientRemote_collectThroughDate_completion___block_invoke_78;
  v14 = &unk_1E7381230;
  v6 = *(a1 + 40);
  v15 = *(a1 + 32);
  v16 = v6;
  v18 = buf;
  v17 = *(a1 + 48);
  v7 = [(_HKDataCollectorFlushRequest *)v5 initWithDate:v16 completion:&v11];
  v8 = [*(a1 + 32) _queue_callToDelegateAndEnqueueForClientFlushRequest:{v7, v11, v12, v13, v14, v15}];
  v9 = *(*&buf[8] + 40);
  *(*&buf[8] + 40) = v8;

  _Block_object_dispose(buf, 8);
  v10 = *MEMORY[0x1E69E9840];
}

void __62__HKDataCollector_clientRemote_collectThroughDate_completion___block_invoke_78(uint64_t a1, char a2)
{
  v5 = *(a1 + 32);
  v4 = *(a1 + 40);
  v6 = *(v5 + 24);
  v16[0] = MEMORY[0x1E69E9820];
  v16[1] = 3221225472;
  v16[2] = __62__HKDataCollector_clientRemote_collectThroughDate_completion___block_invoke_2;
  v16[3] = &unk_1E7381258;
  v16[4] = v5;
  v17 = v4;
  v10 = *(a1 + 48);
  v7 = v10;
  v18 = v10;
  v12[0] = MEMORY[0x1E69E9820];
  v12[1] = 3221225472;
  v12[2] = __62__HKDataCollector_clientRemote_collectThroughDate_completion___block_invoke_79;
  v12[3] = &unk_1E7381280;
  v8 = *(a1 + 40);
  v12[4] = *(a1 + 32);
  v13 = v8;
  v11 = *(a1 + 48);
  v9 = v11;
  v14 = v11;
  v15 = a2;
  [v6 fetchProxyWithHandler:v16 errorHandler:v12];
}

void __62__HKDataCollector_clientRemote_collectThroughDate_completion___block_invoke_2(uint64_t a1, void *a2)
{
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __62__HKDataCollector_clientRemote_collectThroughDate_completion___block_invoke_3;
  v7[3] = &unk_1E7381230;
  v4 = *(a1 + 40);
  v7[4] = *(a1 + 32);
  v8 = v4;
  v6 = *(a1 + 48);
  v5 = v6;
  v9 = v6;
  [a2 remote_synchronizeWithCompletion:v7];
}

void __62__HKDataCollector_clientRemote_collectThroughDate_completion___block_invoke_3(void *a1, uint64_t a2, void *a3)
{
  v16 = *MEMORY[0x1E69E9840];
  v4 = a3;
  _HKInitializeLogging();
  v5 = HKLogDataCollection;
  if (os_log_type_enabled(HKLogDataCollection, OS_LOG_TYPE_DEFAULT))
  {
    v6 = a1[4];
    v7 = a1[5];
    v12 = 138543618;
    v13 = v6;
    v14 = 2114;
    v15 = v7;
    _os_log_impl(&dword_19197B000, v5, OS_LOG_TYPE_DEFAULT, "%{public}@: Flush request through %{public}@ complete.", &v12, 0x16u);
  }

  v8 = *(*(a1[7] + 8) + 40);
  if (v8)
  {
    dispatch_source_cancel(v8);
    v9 = *(a1[7] + 8);
    v10 = *(v9 + 40);
    *(v9 + 40) = 0;
  }

  (*(a1[6] + 16))();

  v11 = *MEMORY[0x1E69E9840];
}

void __62__HKDataCollector_clientRemote_collectThroughDate_completion___block_invoke_79(uint64_t a1, void *a2)
{
  v16 = *MEMORY[0x1E69E9840];
  v3 = a2;
  _HKInitializeLogging();
  v4 = HKLogDataCollection;
  if (os_log_type_enabled(HKLogDataCollection, OS_LOG_TYPE_DEFAULT))
  {
    v5 = *(a1 + 32);
    v6 = *(a1 + 40);
    v12 = 138543618;
    v13 = v5;
    v14 = 2114;
    v15 = v6;
    _os_log_impl(&dword_19197B000, v4, OS_LOG_TYPE_DEFAULT, "%{public}@: Flush request through %{public}@ complete but synchronization failed; reporting completion anyway.", &v12, 0x16u);
  }

  v7 = *(*(*(a1 + 56) + 8) + 40);
  if (v7)
  {
    dispatch_source_cancel(v7);
    v8 = *(*(a1 + 56) + 8);
    v9 = *(v8 + 40);
    *(v8 + 40) = 0;
  }

  v10 = *(a1 + 64);
  (*(*(a1 + 48) + 16))();

  v11 = *MEMORY[0x1E69E9840];
}

- (id)_queue_callToDelegateAndEnqueueForClientFlushRequest:(id)request
{
  requestCopy = request;
  dispatch_assert_queue_V2(self->_queue);
  unitTest_clientFlushRequestTimeoutOverride = self->_unitTest_clientFlushRequestTimeoutOverride;
  if (unitTest_clientFlushRequestTimeoutOverride >= 0.0)
  {
    v6 = (unitTest_clientFlushRequestTimeoutOverride * 1000000000.0);
  }

  else
  {
    v6 = 1000000000;
  }

  v31[0] = 0;
  v31[1] = v31;
  v31[2] = 0x2020000000;
  v32 = 0;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 3221225472;
  aBlock[2] = __72__HKDataCollector__queue_callToDelegateAndEnqueueForClientFlushRequest___block_invoke;
  aBlock[3] = &unk_1E73812A8;
  aBlock[4] = self;
  v30 = v31;
  v7 = requestCopy;
  v29 = v7;
  v8 = _Block_copy(aBlock);
  delegate = [(HKDataCollector *)self delegate];
  if (objc_opt_respondsToSelector())
  {
    v24[0] = MEMORY[0x1E69E9820];
    v24[1] = 3221225472;
    v24[2] = __72__HKDataCollector__queue_callToDelegateAndEnqueueForClientFlushRequest___block_invoke_3;
    v24[3] = &unk_1E7376710;
    v10 = v25;
    v25[0] = delegate;
    v25[1] = self;
    v26 = v7;
    v27 = v8;
    v11 = _Block_copy(v24);

    v12 = v26;
LABEL_8:

    v13 = dispatch_source_create(MEMORY[0x1E69E9710], 0, 0, self->_queue);
    v14 = dispatch_time(0, v6);
    dispatch_source_set_timer(v13, v14, 0xFFFFFFFFFFFFFFFFLL, 0);
    clientQueue = [(HKProxyProvider *)self->_proxyProvider clientQueue];
    dispatch_async(clientQueue, v11);

    handler[0] = MEMORY[0x1E69E9820];
    handler[1] = 3221225472;
    handler[2] = __72__HKDataCollector__queue_callToDelegateAndEnqueueForClientFlushRequest___block_invoke_5;
    handler[3] = &unk_1E7378280;
    v19 = v31;
    handler[4] = self;
    v18 = v7;
    dispatch_source_set_event_handler(v13, handler);
    dispatch_resume(v13);

    goto LABEL_10;
  }

  if (objc_opt_respondsToSelector())
  {
    v20[0] = MEMORY[0x1E69E9820];
    v20[1] = 3221225472;
    v20[2] = __72__HKDataCollector__queue_callToDelegateAndEnqueueForClientFlushRequest___block_invoke_4;
    v20[3] = &unk_1E73766C8;
    v10 = &v21;
    v21 = delegate;
    v22 = v7;
    v23 = v8;
    v11 = _Block_copy(v20);

    v12 = v22;
    goto LABEL_8;
  }

  [(NSMutableArray *)self->_flushRequests addObject:v7];
  [(HKDataCollector *)self _queue_considerSendingBatches];
  v13 = 0;
LABEL_10:

  _Block_object_dispose(v31, 8);

  return v13;
}

void __72__HKDataCollector__queue_callToDelegateAndEnqueueForClientFlushRequest___block_invoke(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = *(v1 + 8);
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __72__HKDataCollector__queue_callToDelegateAndEnqueueForClientFlushRequest___block_invoke_2;
  block[3] = &unk_1E7378280;
  block[4] = v1;
  v4 = *(a1 + 40);
  v3 = v4;
  v6 = v4;
  dispatch_async(v2, block);
}

uint64_t __72__HKDataCollector__queue_callToDelegateAndEnqueueForClientFlushRequest___block_invoke_2(void *a1)
{
  *(*(a1[6] + 8) + 24) = 1;
  [*(a1[4] + 128) addObject:a1[5]];
  v2 = a1[4];

  return [v2 _queue_considerSendingBatches];
}

void __72__HKDataCollector__queue_callToDelegateAndEnqueueForClientFlushRequest___block_invoke_3(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = *(a1 + 40);
  v4 = [*(a1 + 48) date];
  [v2 dataCollector:v3 didRequestCollectionThroughDate:v4 completion:*(a1 + 56)];
}

void __72__HKDataCollector__queue_callToDelegateAndEnqueueForClientFlushRequest___block_invoke_4(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = [*(a1 + 40) date];
  [v2 dataCollectorDidRequestCollectionThroughDate:v3 completion:*(a1 + 48)];
}

uint64_t __72__HKDataCollector__queue_callToDelegateAndEnqueueForClientFlushRequest___block_invoke_5(uint64_t result)
{
  v12 = *MEMORY[0x1E69E9840];
  if ((*(*(*(result + 48) + 8) + 24) & 1) == 0)
  {
    v1 = result;
    _HKInitializeLogging();
    v2 = HKLogDataCollection;
    if (os_log_type_enabled(HKLogDataCollection, OS_LOG_TYPE_DEFAULT))
    {
      v4 = *(v1 + 32);
      v3 = *(v1 + 40);
      v5 = v2;
      v6 = [v3 date];
      v8 = 138543618;
      v9 = v4;
      v10 = 2114;
      v11 = v6;
      _os_log_impl(&dword_19197B000, v5, OS_LOG_TYPE_DEFAULT, "%{public}@: Failed to get data flushed through %{public}@ from client in a timely fashion. Continuing to flush data to healthd.", &v8, 0x16u);
    }

    [*(*(v1 + 32) + 128) addObject:*(v1 + 40)];
    result = [*(v1 + 32) _queue_considerSendingBatches];
  }

  v7 = *MEMORY[0x1E69E9840];
  return result;
}

+ (id)serverInterface
{
  v2 = [MEMORY[0x1E696B0D0] interfaceWithProtocol:&unk_1F06F80D8];
  v3 = MEMORY[0x1E695DFD8];
  v4 = objc_opt_class();
  v5 = [v3 setWithObjects:{v4, objc_opt_class(), 0}];
  [v2 setClasses:v5 forSelector:sel_remote_insertDatums_device_metadata_options_batchUUID_registrationUUID_completion_ argumentIndex:0 ofReply:0];
  hk_secureCodingClasses = [MEMORY[0x1E695DF20] hk_secureCodingClasses];
  [v2 setClasses:hk_secureCodingClasses forSelector:sel_remote_insertDatums_device_metadata_options_batchUUID_registrationUUID_completion_ argumentIndex:2 ofReply:0];

  return v2;
}

- (void)connectionInvalidated
{
  v7 = *MEMORY[0x1E69E9840];
  _HKInitializeLogging();
  v3 = HKLogDataCollection;
  if (os_log_type_enabled(HKLogDataCollection, OS_LOG_TYPE_DEFAULT))
  {
    v5 = 138543362;
    selfCopy = self;
    _os_log_impl(&dword_19197B000, v3, OS_LOG_TYPE_DEFAULT, "%{public}@: Connection invalidated", &v5, 0xCu);
  }

  [(HKDataCollector *)self connectionInterrupted];
  v4 = *MEMORY[0x1E69E9840];
}

- (void)connectionInterrupted
{
  queue = self->_queue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __40__HKDataCollector_connectionInterrupted__block_invoke;
  block[3] = &unk_1E7376780;
  block[4] = self;
  dispatch_sync(queue, block);
  unitTest_connectionInterruptedHandler = self->_unitTest_connectionInterruptedHandler;
  if (unitTest_connectionInterruptedHandler)
  {
    v5 = _Block_copy(unitTest_connectionInterruptedHandler);
    v5[2](v5, self);
  }
}

uint64_t __40__HKDataCollector_connectionInterrupted__block_invoke(uint64_t a1)
{
  *(*(a1 + 32) + 168) = 1;
  v2 = *(a1 + 32);
  v3 = *(v2 + 64);
  *(v2 + 64) = 0;

  *(*(a1 + 32) + 120) = 0;
  [*(*(a1 + 32) + 128) removeAllObjects];
  [*(a1 + 32) _queue_resetUnpersistedBatches];
  v4 = *(a1 + 32);

  return [v4 _queue_updateReconsiderationTimer];
}

- (BOOL)_validateDatums:(id)datums error:(id *)error
{
  v47 = *MEMORY[0x1E69E9840];
  v42 = 0u;
  v43 = 0u;
  v44 = 0u;
  v45 = 0u;
  datumsCopy = datums;
  v7 = [datumsCopy countByEnumeratingWithState:&v42 objects:v46 count:16];
  if (v7)
  {
    v8 = v7;
    errorCopy = error;
    v9 = 0;
    v10 = *v43;
    while (2)
    {
      v11 = 0;
      v12 = v9;
      do
      {
        if (*v43 != v10)
        {
          objc_enumerationMutation(datumsCopy);
        }

        v13 = *(*(&v42 + 1) + 8 * v11);
        if (v12 && ![(HKDataCollector *)self _datumsInDateOrder:v12 secondDatum:*(*(&v42 + 1) + 8 * v11)])
        {
          [MEMORY[0x1E696ABC0] hk_assignError:errorCopy code:3 format:{@"Datums must be in date order. Incorrect date ranges for datums: (%@), (%@)", v12, v13}];
          v27 = 0;
          goto LABEL_27;
        }

        v9 = v13;

        objc_opt_class();
        if ((objc_opt_isKindOfClass() & 1) == 0)
        {
          [MEMORY[0x1E696ABC0] hk_assignError:errorCopy code:3 format:{@"A valid %@ object is required.", objc_opt_class(), v40}];
          goto LABEL_25;
        }

        quantityType = self->_quantityType;
        quantity = [v9 quantity];
        _unit = [quantity _unit];
        LOBYTE(quantityType) = [(HKQuantityType *)quantityType isCompatibleWithUnit:_unit];

        if ((quantityType & 1) == 0)
        {
          [MEMORY[0x1E696ABC0] hk_assignError:errorCopy code:3 format:{@"Quantity (%@) does not have a unit compatible with data stream quantity type %@", v9, self->_quantityType}];
          goto LABEL_25;
        }

        if ([(HKSampleType *)self->_quantityType isMaximumDurationRestricted])
        {
          dateInterval = [v9 dateInterval];
          [dateInterval duration];
          v19 = v18;
          [(HKSampleType *)self->_quantityType maximumAllowedDuration];
          v21 = v20;

          if (v19 > v21)
          {
            v28 = MEMORY[0x1E696ABC0];
            dateInterval2 = [v9 dateInterval];
            startDate = [dateInterval2 startDate];
            dateInterval3 = [v9 dateInterval];
            endDate = [dateInterval3 endDate];
            v33 = self->_quantityType;
            [(HKSampleType *)v33 maximumAllowedDuration];
            [v28 hk_assignError:errorCopy code:3 format:{@"Duration between startDate (%@) and endDate (%@) is above the maximum allowed duration for this sample type. Maximum duration for type %@ is %f", startDate, endDate, v33, v34}];
            goto LABEL_24;
          }
        }

        if ([(HKSampleType *)self->_quantityType isMinimumDurationRestricted])
        {
          dateInterval4 = [v9 dateInterval];
          [dateInterval4 duration];
          v24 = v23;
          [(HKSampleType *)self->_quantityType minimumAllowedDuration];
          v26 = v25;

          if (v24 < v26)
          {
            v35 = MEMORY[0x1E696ABC0];
            dateInterval2 = [v9 dateInterval];
            startDate = [dateInterval2 startDate];
            dateInterval3 = [v9 dateInterval];
            endDate = [dateInterval3 endDate];
            v36 = self->_quantityType;
            [(HKSampleType *)v36 minimumAllowedDuration];
            [v35 hk_assignError:errorCopy code:3 format:{@"Duration between startDate (%@) and endDate (%@) is below the minimum allowed duration for this sample type. Minimum duration for type %@ is %f", startDate, endDate, v36, v37}];
LABEL_24:

LABEL_25:
            v27 = 0;
            goto LABEL_26;
          }
        }

        ++v11;
        v12 = v9;
      }

      while (v8 != v11);
      v8 = [datumsCopy countByEnumeratingWithState:&v42 objects:v46 count:16];
      if (v8)
      {
        continue;
      }

      break;
    }

    v27 = 1;
LABEL_26:
    v12 = v9;
LABEL_27:
  }

  else
  {
    v27 = 1;
  }

  v38 = *MEMORY[0x1E69E9840];
  return v27;
}

- (BOOL)_datumsInDateOrder:(id)order secondDatum:(id)datum
{
  datumCopy = datum;
  orderCopy = order;
  dateInterval = [orderCopy dateInterval];
  startDate = [dateInterval startDate];

  dateInterval2 = [orderCopy dateInterval];

  endDate = [dateInterval2 endDate];

  dateInterval3 = [datumCopy dateInterval];
  startDate2 = [dateInterval3 startDate];

  dateInterval4 = [datumCopy dateInterval];

  endDate2 = [dateInterval4 endDate];

  if ([startDate hk_isAfterDate:startDate2] & 1) != 0 || (objc_msgSend(endDate, "hk_isAfterDate:", endDate2))
  {
    LOBYTE(v15) = 0;
  }

  else
  {
    v15 = [endDate hk_isAfterDate:startDate2] ^ 1;
  }

  return v15;
}

- (void)unitTest_setMaxDatumAgeOverride:(double)override
{
  queue = self->_queue;
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = __51__HKDataCollector_unitTest_setMaxDatumAgeOverride___block_invoke;
  v4[3] = &unk_1E7378630;
  v4[4] = self;
  *&v4[5] = override;
  dispatch_sync(queue, v4);
}

double __51__HKDataCollector_unitTest_setMaxDatumAgeOverride___block_invoke(uint64_t a1)
{
  result = *(a1 + 40);
  *(*(a1 + 32) + 80) = result;
  return result;
}

- (void)unitTest_setClientFlushRequestTimeoutOverride:(double)override
{
  queue = self->_queue;
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = __65__HKDataCollector_unitTest_setClientFlushRequestTimeoutOverride___block_invoke;
  v4[3] = &unk_1E7378630;
  v4[4] = self;
  *&v4[5] = override;
  dispatch_sync(queue, v4);
}

double __65__HKDataCollector_unitTest_setClientFlushRequestTimeoutOverride___block_invoke(uint64_t a1)
{
  result = *(a1 + 40);
  *(*(a1 + 32) + 88) = result;
  return result;
}

- (void)unitTest_setRegistrationCompleteHandler:(id)handler
{
  handlerCopy = handler;
  queue = self->_queue;
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __59__HKDataCollector_unitTest_setRegistrationCompleteHandler___block_invoke;
  v7[3] = &unk_1E73765F0;
  v7[4] = self;
  v8 = handlerCopy;
  v6 = handlerCopy;
  dispatch_sync(queue, v7);
}

uint64_t __59__HKDataCollector_unitTest_setRegistrationCompleteHandler___block_invoke(uint64_t a1)
{
  v3 = *(a1 + 32);
  v2 = *(a1 + 40);
  if (*(v3 + 64))
  {
    v4 = v2[2];

    return v4();
  }

  else
  {
    v6 = [v2 copy];
    v7 = *(a1 + 32);
    v8 = *(v7 + 96);
    *(v7 + 96) = v6;

    return MEMORY[0x1EEE66BB8](v6, v8);
  }
}

- (void)unitTest_setConnectionInterruptedHandler:(id)handler
{
  v4 = [handler copy];
  unitTest_connectionInterruptedHandler = self->_unitTest_connectionInterruptedHandler;
  self->_unitTest_connectionInterruptedHandler = v4;

  MEMORY[0x1EEE66BB8](v4, unitTest_connectionInterruptedHandler);
}

- (void)unitTest_preSetStateHandler:(id)handler
{
  v4 = [handler copy];
  unitTest_preSetStateHandler = self->_unitTest_preSetStateHandler;
  self->_unitTest_preSetStateHandler = v4;

  MEMORY[0x1EEE66BB8](v4, unitTest_preSetStateHandler);
}

- (id)unitTest_pendingBatches
{
  v7 = 0;
  v8 = &v7;
  v9 = 0x3032000000;
  v10 = __Block_byref_object_copy__37;
  v11 = __Block_byref_object_dispose__37;
  v12 = 0;
  queue = self->_queue;
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __42__HKDataCollector_unitTest_pendingBatches__block_invoke;
  v6[3] = &unk_1E7378528;
  v6[4] = self;
  v6[5] = &v7;
  dispatch_sync(queue, v6);
  v3 = v8[5];
  if (!v3)
  {
    v3 = MEMORY[0x1E695E0F0];
  }

  v4 = v3;
  _Block_object_dispose(&v7, 8);

  return v4;
}

uint64_t __42__HKDataCollector_unitTest_pendingBatches__block_invoke(uint64_t a1)
{
  v2 = [*(*(a1 + 32) + 136) copy];
  v3 = *(*(a1 + 40) + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;

  return MEMORY[0x1EEE66BB8](v2, v4);
}

- (id)unitTest_unconfirmedBatches
{
  v7 = 0;
  v8 = &v7;
  v9 = 0x3032000000;
  v10 = __Block_byref_object_copy__37;
  v11 = __Block_byref_object_dispose__37;
  v12 = 0;
  queue = self->_queue;
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __46__HKDataCollector_unitTest_unconfirmedBatches__block_invoke;
  v6[3] = &unk_1E7378528;
  v6[4] = self;
  v6[5] = &v7;
  dispatch_sync(queue, v6);
  v3 = v8[5];
  if (!v3)
  {
    v3 = MEMORY[0x1E695E0F0];
  }

  v4 = v3;
  _Block_object_dispose(&v7, 8);

  return v4;
}

uint64_t __46__HKDataCollector_unitTest_unconfirmedBatches__block_invoke(uint64_t a1)
{
  v2 = [*(*(a1 + 32) + 144) allValues];
  v3 = *(*(a1 + 40) + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;

  return MEMORY[0x1EEE66BB8](v2, v4);
}

- (id)unitTest_unpersistedBatches
{
  v7 = 0;
  v8 = &v7;
  v9 = 0x3032000000;
  v10 = __Block_byref_object_copy__37;
  v11 = __Block_byref_object_dispose__37;
  v12 = 0;
  queue = self->_queue;
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __46__HKDataCollector_unitTest_unpersistedBatches__block_invoke;
  v6[3] = &unk_1E7378528;
  v6[4] = self;
  v6[5] = &v7;
  dispatch_sync(queue, v6);
  v3 = v8[5];
  if (!v3)
  {
    v3 = MEMORY[0x1E695E0F0];
  }

  v4 = v3;
  _Block_object_dispose(&v7, 8);

  return v4;
}

uint64_t __46__HKDataCollector_unitTest_unpersistedBatches__block_invoke(uint64_t a1)
{
  v2 = [*(*(a1 + 32) + 152) allValues];
  v3 = *(*(a1 + 40) + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;

  return MEMORY[0x1EEE66BB8](v2, v4);
}

- (HKDataCollectorDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

void __45__HKDataCollector__queue_requestRegistration__block_invoke_5_cold_1(void *a1, uint64_t a2, NSObject *a3)
{
  *v4 = 138543618;
  *&v4[4] = *a1;
  *&v4[12] = 2114;
  *&v4[14] = a2;
  OUTLINED_FUNCTION_1(&dword_19197B000, a2, a3, "%{public}@: Failed to initiate registration: %{public}@", *v4, *&v4[8], *&v4[16], *MEMORY[0x1E69E9840]);
  v3 = *MEMORY[0x1E69E9840];
}

void __36__HKDataCollector__queue_sendBatch___block_invoke_cold_1(uint64_t a1, void *a2)
{
  v15 = *MEMORY[0x1E69E9840];
  v3 = *(a1 + 32);
  v2 = *(a1 + 40);
  v4 = a2;
  v5 = [v2 batchUUID];
  v6 = HKDiagnosticStringFromUUID(v5);
  OUTLINED_FUNCTION_0_20();
  OUTLINED_FUNCTION_2_7(&dword_19197B000, v7, v8, "%{public}@: Batch %{public}@: Unexpected fatal error sending batch; dropping: %{public}@", v9, v10, v11, v12, v14);

  v13 = *MEMORY[0x1E69E9840];
}

void __36__HKDataCollector__queue_sendBatch___block_invoke_cold_2(uint64_t a1, void *a2)
{
  v15 = *MEMORY[0x1E69E9840];
  v3 = *(a1 + 32);
  v2 = *(a1 + 40);
  v4 = a2;
  v5 = [v2 batchUUID];
  v6 = HKDiagnosticStringFromUUID(v5);
  OUTLINED_FUNCTION_0_20();
  OUTLINED_FUNCTION_2_7(&dword_19197B000, v7, v8, "%{public}@: Batch %{public}@: Connection error sending batch, will retry: %{public}@", v9, v10, v11, v12, v14);

  v13 = *MEMORY[0x1E69E9840];
}

- (void)_prunedBatch:(NSObject *)a3 maximumLength:.cold.1(uint64_t a1, uint64_t a2, NSObject *a3)
{
  *v4 = 138543618;
  *&v4[4] = a1;
  *&v4[12] = 2114;
  *&v4[14] = a2;
  OUTLINED_FUNCTION_1(&dword_19197B000, a2, a3, "%{public}@: Error: Failed to find a completion block in batch to be pruned: %{public}@.", *v4, *&v4[8], *&v4[16], *MEMORY[0x1E69E9840]);
  v3 = *MEMORY[0x1E69E9840];
}

- (void)_queue_taskServer_insertBatch:(uint64_t)a1 completion:(uint64_t)a2 .cold.1(uint64_t a1, uint64_t a2)
{
  v4 = [MEMORY[0x1E696AAA8] currentHandler];
  [v4 handleFailureInMethod:a1 object:a2 file:@"HKDataCollector.m" lineNumber:776 description:{@"Invalid parameter not satisfying: %@", @"_registrationUUID"}];
}

@end