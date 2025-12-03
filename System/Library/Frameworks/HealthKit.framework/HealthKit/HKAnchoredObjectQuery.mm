@interface HKAnchoredObjectQuery
+ (void)configureClientInterface:(id)interface;
- (HKAnchoredObjectQuery)initWithQueryDescriptors:(NSArray *)queryDescriptors anchor:(HKQueryAnchor *)anchor limit:(NSInteger)limit resultsHandler:(void *)handler;
- (HKAnchoredObjectQuery)initWithType:(HKSampleType *)type predicate:(NSPredicate *)predicate anchor:(HKQueryAnchor *)anchor limit:(NSUInteger)limit resultsHandler:(void *)handler;
- (HKAnchoredObjectQuery)initWithType:(HKSampleType *)type predicate:(NSPredicate *)predicate anchor:(NSUInteger)anchor limit:(NSUInteger)limit completionHandler:(void *)handler;
- (void)client_deliverSampleObjects:(id)objects deletedObjects:(id)deletedObjects anchor:(id)anchor clearPendingSamples:(BOOL)samples deliverResults:(BOOL)results query:(id)query;
- (void)queue_deliverError:(id)error;
- (void)queue_populateConfiguration:(id)configuration;
- (void)queue_queryDidDeactivate:(id)deactivate;
- (void)queue_validate;
- (void)setUpdateHandler:(void *)updateHandler;
@end

@implementation HKAnchoredObjectQuery

- (HKAnchoredObjectQuery)initWithType:(HKSampleType *)type predicate:(NSPredicate *)predicate anchor:(NSUInteger)anchor limit:(NSUInteger)limit completionHandler:(void *)handler
{
  v12 = predicate;
  v13 = type;
  v14 = [handler copy];
  v15 = [HKQueryAnchor anchorFromValue:anchor];
  v19[0] = MEMORY[0x1E69E9820];
  v19[1] = 3221225472;
  v19[2] = __79__HKAnchoredObjectQuery_initWithType_predicate_anchor_limit_completionHandler___block_invoke;
  v19[3] = &unk_1E737DA78;
  v20 = v14;
  v16 = v14;
  v17 = [(HKAnchoredObjectQuery *)self initWithType:v13 predicate:v12 anchor:v15 limit:limit resultsHandler:v19];

  if (v17)
  {
    atomic_store(0, &v17->_includeDeletedObjects);
  }

  return v17;
}

void __79__HKAnchoredObjectQuery_initWithType_predicate_anchor_limit_completionHandler___block_invoke(uint64_t a1, void *a2, void *a3, uint64_t a4, void *a5, void *a6)
{
  v6 = *(a1 + 32);
  if (v6)
  {
    v10 = a6;
    v11 = a3;
    v12 = a2;
    (*(v6 + 16))(v6, v12, v11, [a5 _rowid], v10);
  }
}

- (HKAnchoredObjectQuery)initWithType:(HKSampleType *)type predicate:(NSPredicate *)predicate anchor:(HKQueryAnchor *)anchor limit:(NSUInteger)limit resultsHandler:(void *)handler
{
  v21[1] = *MEMORY[0x1E69E9840];
  v12 = handler;
  v13 = anchor;
  v14 = predicate;
  v15 = type;
  v16 = [[HKQueryDescriptor alloc] initWithSampleType:v15 predicate:v14];

  v21[0] = v16;
  v17 = [MEMORY[0x1E695DEC8] arrayWithObjects:v21 count:1];
  v18 = [(HKAnchoredObjectQuery *)self initWithQueryDescriptors:v17 anchor:v13 limit:limit resultsHandler:v12];

  v19 = *MEMORY[0x1E69E9840];
  return v18;
}

- (HKAnchoredObjectQuery)initWithQueryDescriptors:(NSArray *)queryDescriptors anchor:(HKQueryAnchor *)anchor limit:(NSInteger)limit resultsHandler:(void *)handler
{
  v11 = anchor;
  v12 = handler;
  v19.receiver = self;
  v19.super_class = HKAnchoredObjectQuery;
  v13 = [(HKQuery *)&v19 initWithQueryDescriptors:queryDescriptors];
  v14 = v13;
  if (v13)
  {
    objc_storeStrong(&v13->_anchor, anchor);
    v14->_limit = limit;
    v15 = [v12 copy];
    completionHandler = v14->_completionHandler;
    v14->_completionHandler = v15;

    v14->_initialHandlerCalled = 0;
    currentAnchor = v14->_currentAnchor;
    v14->_currentAnchor = 0;

    atomic_store(1u, &v14->_includeDeletedObjects);
  }

  return v14;
}

- (void)setUpdateHandler:(void *)updateHandler
{
  v5 = updateHandler;
  if (self->_limit)
  {
    v6 = MEMORY[0x1E695DF30];
    v7 = *MEMORY[0x1E695D940];
    v8 = objc_opt_class();
    v9 = NSStringFromSelector(a2);
    [v6 raise:v7 format:{@"%@: %@ not callable when query has a limit", v8, v9}];
  }

  [(HKQuery *)self _throwInvalidArgumentExceptionIfHasBeenExecuted:a2];
  queue = [(HKQuery *)self queue];
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __42__HKAnchoredObjectQuery_setUpdateHandler___block_invoke;
  block[3] = &unk_1E73765F0;
  block[4] = self;
  v13 = v5;
  v11 = v5;
  dispatch_sync(queue, block);
}

uint64_t __42__HKAnchoredObjectQuery_setUpdateHandler___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 40) copy];
  v3 = *(a1 + 32);
  v4 = *(v3 + 200);
  *(v3 + 200) = v2;

  return MEMORY[0x1EEE66BB8]();
}

- (void)client_deliverSampleObjects:(id)objects deletedObjects:(id)deletedObjects anchor:(id)anchor clearPendingSamples:(BOOL)samples deliverResults:(BOOL)results query:(id)query
{
  objectsCopy = objects;
  deletedObjectsCopy = deletedObjects;
  anchorCopy = anchor;
  queryCopy = query;
  queue = [(HKQuery *)self queue];
  v23[0] = MEMORY[0x1E69E9820];
  v23[1] = 3221225472;
  v23[2] = __116__HKAnchoredObjectQuery_client_deliverSampleObjects_deletedObjects_anchor_clearPendingSamples_deliverResults_query___block_invoke;
  v23[3] = &unk_1E737DAC8;
  samplesCopy = samples;
  v23[4] = self;
  v24 = objectsCopy;
  resultsCopy = results;
  v25 = deletedObjectsCopy;
  v26 = anchorCopy;
  v27 = queryCopy;
  v19 = queryCopy;
  v20 = anchorCopy;
  v21 = deletedObjectsCopy;
  v22 = objectsCopy;
  dispatch_async(queue, v23);
}

void __116__HKAnchoredObjectQuery_client_deliverSampleObjects_deletedObjects_anchor_clearPendingSamples_deliverResults_query___block_invoke(uint64_t a1)
{
  if (*(a1 + 72))
  {
    v2 = *(a1 + 32);
    v3 = *(v2 + 168);
    *(v2 + 168) = 0;

    v4 = *(a1 + 32);
    v5 = *(v4 + 160);
    *(v4 + 160) = 0;
  }

  v6 = *(*(a1 + 32) + 160);
  if (v6)
  {
    [v6 addObjectsFromArray:*(a1 + 40)];
  }

  else
  {
    v7 = [*(a1 + 40) mutableCopy];
    v8 = *(a1 + 32);
    v9 = *(v8 + 160);
    *(v8 + 160) = v7;
  }

  v10 = *(*(a1 + 32) + 168);
  if (v10)
  {
    [v10 addObjectsFromArray:*(a1 + 48)];
  }

  else
  {
    v11 = [*(a1 + 48) mutableCopy];
    v12 = *(a1 + 32);
    v13 = *(v12 + 168);
    *(v12 + 168) = v11;
  }

  if (*(a1 + 73) == 1)
  {
    v14 = *(a1 + 32);
    v15 = *(v14 + 184);
    if (v15)
    {
      if ([v15 compare:*(a1 + 56)] != -1)
      {
        return;
      }

      v14 = *(a1 + 32);
    }

    v16 = *(v14 + 152);
    v17 = _Block_copy(*(v14 + 216));
    v18 = _Block_copy(*(*(a1 + 32) + 200));
    if (*(a1 + 73) == 1)
    {
      v19 = *(a1 + 32);
      if (v16)
      {
        v20 = 200;
      }

      else
      {
        v20 = 216;
      }

      if (*(v19 + v20))
      {
        v21 = *(v19 + 160);
        v22 = *(a1 + 32);
        v23 = *(v22 + 160);
        *(v22 + 160) = 0;

        v24 = *(*(a1 + 32) + 168);
        v25 = *(a1 + 32);
        v26 = *(v25 + 168);
        *(v25 + 168) = 0;

        *(*(a1 + 32) + 152) = 1;
        v27 = [*(a1 + 56) copy];
        v28 = *(a1 + 32);
        v29 = *(v28 + 184);
        *(v28 + 184) = v27;

        v30 = [*(a1 + 32) queue_shouldDeactivateAfterInitialResults];
        v31 = *(a1 + 32);
        v32 = *(a1 + 64);
        v36[0] = MEMORY[0x1E69E9820];
        v36[1] = 3221225472;
        v36[2] = __116__HKAnchoredObjectQuery_client_deliverSampleObjects_deletedObjects_anchor_clearPendingSamples_deliverResults_query___block_invoke_2;
        v36[3] = &unk_1E737DAA0;
        v42 = v16;
        v33 = v18;
        v36[4] = *(a1 + 32);
        v37 = v21;
        v40 = v33;
        v38 = v24;
        v39 = *(a1 + 56);
        v41 = v17;
        v34 = v24;
        v35 = v21;
        [v31 queue_dispatchToClientForUUID:v32 shouldDeactivate:v30 block:v36];
      }
    }
  }
}

uint64_t __116__HKAnchoredObjectQuery_client_deliverSampleObjects_deletedObjects_anchor_clearPendingSamples_deliverResults_query___block_invoke_2(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = *(a1 + 40);
  v3 = *(a1 + 48);
  v4 = *(a1 + 56);
  v5 = 72;
  if (*(a1 + 80))
  {
    v5 = 64;
  }

  return (*(*(a1 + v5) + 16))();
}

+ (void)configureClientInterface:(id)interface
{
  interfaceCopy = interface;
  v7.receiver = self;
  v7.super_class = &OBJC_METACLASS___HKAnchoredObjectQuery;
  objc_msgSendSuper2(&v7, sel_configureClientInterface_, interfaceCopy);
  v5 = [interfaceCopy hk_setArrayOfClass:objc_opt_class() forSelector:sel_client_deliverSampleObjects_deletedObjects_anchor_clearPendingSamples_deliverResults_query_ argumentIndex:0 ofReply:0];
  v6 = [interfaceCopy hk_setArrayOfClass:objc_opt_class() forSelector:sel_client_deliverSampleObjects_deletedObjects_anchor_clearPendingSamples_deliverResults_query_ argumentIndex:1 ofReply:0];
}

- (void)queue_populateConfiguration:(id)configuration
{
  v8.receiver = self;
  v8.super_class = HKAnchoredObjectQuery;
  configurationCopy = configuration;
  [(HKQuery *)&v8 queue_populateConfiguration:configurationCopy];
  currentAnchor = self->_currentAnchor;
  if (!currentAnchor)
  {
    currentAnchor = self->_anchor;
  }

  [configurationCopy setAnchor:{currentAnchor, v8.receiver, v8.super_class}];
  [configurationCopy setLimit:self->_limit];
  [configurationCopy setCollectionInterval:self->_collectionInterval];
  v6 = atomic_load(&self->_includeDeletedObjects);
  [configurationCopy setIncludeDeletedObjects:v6 & 1];
  [configurationCopy setIncludeAutomaticTimeZones:self->_includeAutomaticTimeZones];
  [configurationCopy setIncludeContributorInformation:self->_includeContributorInformation];
  queryDescriptors = [(HKQuery *)self queryDescriptors];
  [configurationCopy setQueryDescriptors:queryDescriptors];
}

- (void)queue_queryDidDeactivate:(id)deactivate
{
  v6.receiver = self;
  v6.super_class = HKAnchoredObjectQuery;
  [(HKQuery *)&v6 queue_queryDidDeactivate:deactivate];
  completionHandler = self->_completionHandler;
  self->_completionHandler = 0;

  updateHandler = self->_updateHandler;
  self->_updateHandler = 0;

  self->_initialHandlerCalled = 0;
}

- (void)queue_validate
{
  v29 = *MEMORY[0x1E69E9840];
  v27.receiver = self;
  v27.super_class = HKAnchoredObjectQuery;
  [(HKQuery *)&v27 queue_validate];
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

  if (!selfCopy->_completionHandler)
  {
    [MEMORY[0x1E695DF30] raise:@"HKQueryValidationFailureException" format:{@"%@ completionHandler cannot be nil", objc_opt_class()}];
  }

  if (selfCopy->_updateHandler && selfCopy->_includeAutomaticTimeZones)
  {
    [MEMORY[0x1E695DF30] raise:@"HKQueryValidationFailureException" format:{@"%@.includeAutomaticTimeZones is incompatible with a non-nil updateHandler", objc_opt_class()}];
  }

  v21 = *MEMORY[0x1E69E9840];
}

- (void)queue_deliverError:(id)error
{
  errorCopy = error;
  v5 = _Block_copy(self->_completionHandler);
  if (v5)
  {
    clientQueue = [(HKQuery *)self clientQueue];
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __44__HKAnchoredObjectQuery_queue_deliverError___block_invoke;
    block[3] = &unk_1E7376618;
    v9 = v5;
    block[4] = self;
    v8 = errorCopy;
    dispatch_async(clientQueue, block);
  }
}

@end