@interface HKSampleQuery
+ (id)sortDescriptorsForMostRecentSamples;
+ (void)configureClientInterface:(id)interface;
- (BOOL)_prepareSamplesForDelivery:(id)delivery error:(id *)error;
- (HKSampleQuery)initWithQueryDescriptors:(NSArray *)queryDescriptors limit:(NSInteger)limit sortDescriptors:(NSArray *)sortDescriptors resultsHandler:(void *)resultsHandler;
- (HKSampleQuery)initWithSampleType:(HKSampleType *)sampleType predicate:(NSPredicate *)predicate limit:(NSUInteger)limit sortDescriptors:(NSArray *)sortDescriptors resultsHandler:(void *)resultsHandler;
- (void)client_deliverSamples:(id)samples clearPendingSamples:(BOOL)pendingSamples isFinalBatch:(BOOL)batch queryUUID:(id)d;
- (void)queue_deliverError:(id)error;
- (void)queue_populateConfiguration:(id)configuration;
- (void)queue_queryDidDeactivate:(id)deactivate;
- (void)queue_validate;
@end

@implementation HKSampleQuery

- (HKSampleQuery)initWithSampleType:(HKSampleType *)sampleType predicate:(NSPredicate *)predicate limit:(NSUInteger)limit sortDescriptors:(NSArray *)sortDescriptors resultsHandler:(void *)resultsHandler
{
  v21[1] = *MEMORY[0x1E69E9840];
  v12 = resultsHandler;
  v13 = sortDescriptors;
  v14 = predicate;
  v15 = sampleType;
  v16 = [[HKQueryDescriptor alloc] initWithSampleType:v15 predicate:v14];

  v21[0] = v16;
  v17 = [MEMORY[0x1E695DEC8] arrayWithObjects:v21 count:1];
  v18 = [(HKSampleQuery *)self initWithQueryDescriptors:v17 limit:limit sortDescriptors:v13 resultsHandler:v12];

  v19 = *MEMORY[0x1E69E9840];
  return v18;
}

- (HKSampleQuery)initWithQueryDescriptors:(NSArray *)queryDescriptors limit:(NSInteger)limit sortDescriptors:(NSArray *)sortDescriptors resultsHandler:(void *)resultsHandler
{
  v10 = sortDescriptors;
  v11 = resultsHandler;
  v18.receiver = self;
  v18.super_class = HKSampleQuery;
  v12 = [(HKQuery *)&v18 initWithQueryDescriptors:queryDescriptors];
  if (v12)
  {
    v13 = [(NSArray *)v10 copy];
    v14 = v12->_sortDescriptors;
    v12->_sortDescriptors = v13;

    v12->_limit = limit;
    v15 = _Block_copy(v11);
    resultHandler = v12->_resultHandler;
    v12->_resultHandler = v15;

    v12->_includeAutomaticTimeZones = 0;
  }

  return v12;
}

- (BOOL)_prepareSamplesForDelivery:(id)delivery error:(id *)error
{
  v18 = *MEMORY[0x1E69E9840];
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  deliveryCopy = delivery;
  v6 = [deliveryCopy countByEnumeratingWithState:&v13 objects:v17 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v14;
    while (2)
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v14 != v8)
        {
          objc_enumerationMutation(deliveryCopy);
        }

        if (![*(*(&v13 + 1) + 8 * i) prepareForDelivery:{error, v13}])
        {
          v10 = 0;
          goto LABEL_11;
        }
      }

      v7 = [deliveryCopy countByEnumeratingWithState:&v13 objects:v17 count:16];
      if (v7)
      {
        continue;
      }

      break;
    }
  }

  v10 = 1;
LABEL_11:

  v11 = *MEMORY[0x1E69E9840];
  return v10;
}

- (void)client_deliverSamples:(id)samples clearPendingSamples:(BOOL)pendingSamples isFinalBatch:(BOOL)batch queryUUID:(id)d
{
  samplesCopy = samples;
  dCopy = d;
  queue = [(HKQuery *)self queue];
  v15[0] = MEMORY[0x1E69E9820];
  v15[1] = 3221225472;
  v15[2] = __82__HKSampleQuery_client_deliverSamples_clearPendingSamples_isFinalBatch_queryUUID___block_invoke;
  v15[3] = &unk_1E7379FC0;
  v15[4] = self;
  v16 = dCopy;
  v17 = samplesCopy;
  pendingSamplesCopy = pendingSamples;
  batchCopy = batch;
  v13 = samplesCopy;
  v14 = dCopy;
  dispatch_async(queue, v15);
}

void __82__HKSampleQuery_client_deliverSamples_clearPendingSamples_isFinalBatch_queryUUID___block_invoke(uint64_t a1)
{
  v36 = *MEMORY[0x1E69E9840];
  v2 = _Block_copy(*(*(a1 + 32) + 192));
  if (v2)
  {
    if ([*(a1 + 32) hasQueryUUID:*(a1 + 40)])
    {
      v3 = *(a1 + 32);
      v4 = *(a1 + 48);
      v31 = 0;
      v5 = [v3 _prepareSamplesForDelivery:v4 error:&v31];
      v6 = v31;
      v7 = *(a1 + 32);
      if (v5)
      {
        v8 = v7[22];
        if (v8 && *(a1 + 56) != 1)
        {
          [v8 addObjectsFromArray:*(a1 + 48)];
        }

        else
        {
          v9 = [*(a1 + 48) mutableCopy];
          v10 = *(a1 + 32);
          v11 = *(v10 + 176);
          *(v10 + 176) = v9;
        }

        if (*(a1 + 57) != 1)
        {
          goto LABEL_14;
        }

        v19 = *(*(a1 + 32) + 176);
        v20 = *(a1 + 32);
        v21 = *(v20 + 176);
        *(v20 + 176) = 0;

        v22 = *(a1 + 32);
        v23 = *(a1 + 40);
        v25[0] = MEMORY[0x1E69E9820];
        v25[1] = 3221225472;
        v25[2] = __82__HKSampleQuery_client_deliverSamples_clearPendingSamples_isFinalBatch_queryUUID___block_invoke_2;
        v25[3] = &unk_1E7376618;
        v26 = v19;
        v27 = v2;
        v25[4] = *(a1 + 32);
        v18 = v19;
        [v22 queue_dispatchToClientForUUID:v23 shouldDeactivate:1 block:v25];
      }

      else
      {
        v15 = *(a1 + 40);
        v28[0] = MEMORY[0x1E69E9820];
        v28[1] = 3221225472;
        v28[2] = __82__HKSampleQuery_client_deliverSamples_clearPendingSamples_isFinalBatch_queryUUID___block_invoke_5;
        v28[3] = &unk_1E7376618;
        v16 = v2;
        v17 = *(a1 + 32);
        v30 = v16;
        v28[4] = v17;
        v29 = v6;
        [v7 queue_dispatchToClientForUUID:v15 shouldDeactivate:1 block:v28];

        v18 = v30;
      }

LABEL_14:
      goto LABEL_15;
    }

    _HKInitializeLogging();
    v12 = HKLogQuery;
    if (os_log_type_enabled(HKLogQuery, OS_LOG_TYPE_DEFAULT))
    {
      v13 = *(a1 + 32);
      v14 = *(a1 + 40);
      *buf = 138543618;
      v33 = v13;
      v34 = 2114;
      v35 = v14;
      _os_log_impl(&dword_19197B000, v12, OS_LOG_TYPE_DEFAULT, "%{public}@: Not delivering samples, invalid query UUID %{public}@", buf, 0x16u);
    }
  }

LABEL_15:

  v24 = *MEMORY[0x1E69E9840];
}

- (void)queue_populateConfiguration:(id)configuration
{
  v6.receiver = self;
  v6.super_class = HKSampleQuery;
  configurationCopy = configuration;
  [(HKQuery *)&v6 queue_populateConfiguration:configurationCopy];
  [configurationCopy setSortDescriptors:{self->_sortDescriptors, v6.receiver, v6.super_class}];
  [configurationCopy setLimit:self->_limit];
  [configurationCopy setIncludeAutomaticTimeZones:self->_includeAutomaticTimeZones];
  [configurationCopy setIncludeContributorInformation:self->_includeContributorInformation];
  queryDescriptors = [(HKQuery *)self queryDescriptors];
  [configurationCopy setQueryDescriptors:queryDescriptors];
}

- (void)queue_deliverError:(id)error
{
  errorCopy = error;
  v5 = _Block_copy(self->_resultHandler);
  if (v5)
  {
    clientQueue = [(HKQuery *)self clientQueue];
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __36__HKSampleQuery_queue_deliverError___block_invoke;
    block[3] = &unk_1E7376618;
    v9 = v5;
    block[4] = self;
    v8 = errorCopy;
    dispatch_async(clientQueue, block);
  }
}

- (void)queue_validate
{
  v29 = *MEMORY[0x1E69E9840];
  v27.receiver = self;
  v27.super_class = HKSampleQuery;
  [(HKQuery *)&v27 queue_validate];
  if (!self->_resultHandler)
  {
    [MEMORY[0x1E695DF30] raise:@"HKQueryValidationFailureException" format:{@"%@ resultsHandler cannot be nil", objc_opt_class()}];
  }

  queryDescriptors = [(HKQuery *)self queryDescriptors];
  v4 = [queryDescriptors count];

  if (!v4)
  {
    [MEMORY[0x1E695DF30] raise:@"HKQueryValidationFailureException" format:{@"%@ data type must be non-nil", objc_opt_class()}];
  }

  v5 = objc_alloc_init(MEMORY[0x1E695DFA8]);
  v23 = 0u;
  v24 = 0u;
  v25 = 0u;
  v26 = 0u;
  selfCopy = self;
  obj = [(HKQuery *)self queryDescriptors];
  v7 = [obj countByEnumeratingWithState:&v23 objects:v28 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v24;
    do
    {
      for (i = 0; i != v8; ++i)
      {
        if (*v24 != v9)
        {
          objc_enumerationMutation(obj);
        }

        v11 = *(*(&v23 + 1) + 8 * i);
        sampleType = [v11 sampleType];

        if (!sampleType)
        {
          [MEMORY[0x1E695DF30] raise:@"HKQueryValidationFailureException" format:{@"%@ data type must be non-nil", objc_opt_class()}];
        }

        sampleType2 = [v11 sampleType];
        objc_opt_class();
        isKindOfClass = objc_opt_isKindOfClass();

        if ((isKindOfClass & 1) == 0)
        {
          v15 = MEMORY[0x1E695DF30];
          v16 = objc_opt_class();
          [v15 raise:@"HKQueryValidationFailureException" format:{@"%@ data type must be of class %@", v16, objc_opt_class()}];
        }

        sampleType3 = [v11 sampleType];
        [v5 addObject:sampleType3];
      }

      v8 = [obj countByEnumeratingWithState:&v23 objects:v28 count:16];
    }

    while (v8);
  }

  v18 = [v5 count];
  queryDescriptors2 = [(HKQuery *)selfCopy queryDescriptors];
  v20 = [queryDescriptors2 count];

  if (v18 != v20)
  {
    [MEMORY[0x1E695DF30] raise:@"HKQueryValidationFailureException" format:{@"%@ cannot provide the same sample type in more than one HKQueryDescriptor", objc_opt_class()}];
  }

  v21 = *MEMORY[0x1E69E9840];
}

- (void)queue_queryDidDeactivate:(id)deactivate
{
  v5.receiver = self;
  v5.super_class = HKSampleQuery;
  [(HKQuery *)&v5 queue_queryDidDeactivate:deactivate];
  resultHandler = self->_resultHandler;
  self->_resultHandler = 0;
}

+ (void)configureClientInterface:(id)interface
{
  interfaceCopy = interface;
  v6.receiver = self;
  v6.super_class = &OBJC_METACLASS___HKSampleQuery;
  objc_msgSendSuper2(&v6, sel_configureClientInterface_, interfaceCopy);
  v5 = [interfaceCopy hk_setArrayOfClass:objc_opt_class() forSelector:sel_client_deliverSamples_clearPendingSamples_isFinalBatch_queryUUID_ argumentIndex:0 ofReply:0];
}

+ (id)sortDescriptorsForMostRecentSamples
{
  v7[2] = *MEMORY[0x1E69E9840];
  v2 = [MEMORY[0x1E696AEB0] sortDescriptorWithKey:@"endDate" ascending:0];
  v7[0] = v2;
  v3 = [MEMORY[0x1E696AEB0] sortDescriptorWithKey:@"HKObjectSortIdentifierDataID" ascending:0];
  v7[1] = v3;
  v4 = [MEMORY[0x1E695DEC8] arrayWithObjects:v7 count:2];

  v5 = *MEMORY[0x1E69E9840];

  return v4;
}

@end