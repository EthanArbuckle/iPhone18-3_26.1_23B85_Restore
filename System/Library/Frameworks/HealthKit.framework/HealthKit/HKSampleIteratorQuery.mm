@interface HKSampleIteratorQuery
+ (void)configureClientInterface:(id)interface;
- (HKSampleIteratorQuery)init;
- (HKSampleIteratorQuery)initWithQueryCursor:(id)cursor limit:(unint64_t)limit resultsHandler:(id)handler;
- (HKSampleIteratorQuery)initWithQueryDescriptors:(id)descriptors sortDescriptors:(id)sortDescriptors followingAnchor:(id)anchor upToAndIncludingAnchor:(id)includingAnchor distinctByKeyPaths:(id)paths limit:(unint64_t)limit resultsHandler:(id)handler;
- (void)client_deliverSampleObjects:(id)objects queryCursor:(id)cursor deliverResults:(BOOL)results query:(id)query;
- (void)queue_deliverError:(id)error;
- (void)queue_populateConfiguration:(id)configuration;
- (void)queue_queryDidDeactivate:(id)deactivate;
- (void)queue_validate;
@end

@implementation HKSampleIteratorQuery

- (HKSampleIteratorQuery)init
{
  v3 = MEMORY[0x1E695DF30];
  v4 = *MEMORY[0x1E695D940];
  v5 = NSStringFromSelector(a2);
  [v3 raise:v4 format:{@"The -%@ method is not available on %@", v5, objc_opt_class()}];

  return 0;
}

- (HKSampleIteratorQuery)initWithQueryDescriptors:(id)descriptors sortDescriptors:(id)sortDescriptors followingAnchor:(id)anchor upToAndIncludingAnchor:(id)includingAnchor distinctByKeyPaths:(id)paths limit:(unint64_t)limit resultsHandler:(id)handler
{
  descriptorsCopy = descriptors;
  sortDescriptorsCopy = sortDescriptors;
  anchorCopy = anchor;
  includingAnchorCopy = includingAnchor;
  pathsCopy = paths;
  handlerCopy = handler;
  v21 = handlerCopy;
  if (!descriptorsCopy)
  {
    [HKSampleIteratorQuery initWithQueryDescriptors:sortDescriptors:followingAnchor:upToAndIncludingAnchor:distinctByKeyPaths:limit:resultsHandler:];
    if (v21)
    {
      goto LABEL_3;
    }

LABEL_5:
    [HKSampleIteratorQuery initWithQueryDescriptors:sortDescriptors:followingAnchor:upToAndIncludingAnchor:distinctByKeyPaths:limit:resultsHandler:];
    goto LABEL_3;
  }

  if (!handlerCopy)
  {
    goto LABEL_5;
  }

LABEL_3:
  v22 = [[HKSampleIteratorQueryCursor alloc] initWithQueryDescriptors:descriptorsCopy sortDescriptors:sortDescriptorsCopy followingAnchor:anchorCopy upToAndIncludingAnchor:includingAnchorCopy distinctByKeyPaths:pathsCopy state:0];
  v23 = [(HKSampleIteratorQuery *)self initWithQueryCursor:v22 limit:limit resultsHandler:v21];

  return v23;
}

- (HKSampleIteratorQuery)initWithQueryCursor:(id)cursor limit:(unint64_t)limit resultsHandler:(id)handler
{
  cursorCopy = cursor;
  handlerCopy = handler;
  v10 = handlerCopy;
  if (cursorCopy)
  {
    if (handlerCopy)
    {
      goto LABEL_3;
    }
  }

  else
  {
    [HKSampleIteratorQuery initWithQueryCursor:limit:resultsHandler:];
    if (v10)
    {
      goto LABEL_3;
    }
  }

  [HKSampleIteratorQuery initWithQueryCursor:limit:resultsHandler:];
LABEL_3:
  v17.receiver = self;
  v17.super_class = HKSampleIteratorQuery;
  v11 = [(HKQuery *)&v17 _initWithObjectType:0 predicate:0];
  if (v11)
  {
    v12 = [cursorCopy copy];
    queryCursor = v11->_queryCursor;
    v11->_queryCursor = v12;

    v11->_limit = limit;
    v14 = [v10 copy];
    resultsHandler = v11->_resultsHandler;
    v11->_resultsHandler = v14;
  }

  return v11;
}

- (void)client_deliverSampleObjects:(id)objects queryCursor:(id)cursor deliverResults:(BOOL)results query:(id)query
{
  objectsCopy = objects;
  cursorCopy = cursor;
  queryCopy = query;
  queue = [(HKQuery *)self queue];
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __86__HKSampleIteratorQuery_client_deliverSampleObjects_queryCursor_deliverResults_query___block_invoke;
  block[3] = &unk_1E737B920;
  block[4] = self;
  v18 = objectsCopy;
  resultsCopy = results;
  v19 = queryCopy;
  v20 = cursorCopy;
  v14 = cursorCopy;
  v15 = queryCopy;
  v16 = objectsCopy;
  dispatch_sync(queue, block);
}

void __86__HKSampleIteratorQuery_client_deliverSampleObjects_queryCursor_deliverResults_query___block_invoke(uint64_t a1)
{
  v2 = *(a1 + 40);
  v3 = *(*(a1 + 32) + 152);
  if (v3)
  {
    [v3 addObjectsFromArray:v2];
  }

  else
  {
    v4 = [v2 mutableCopy];
    v5 = *(a1 + 32);
    v6 = *(v5 + 152);
    *(v5 + 152) = v4;
  }

  if (*(a1 + 64) == 1)
  {
    v7 = _Block_copy(*(*(a1 + 32) + 176));
    if (*(a1 + 64) == 1)
    {
      v8 = *(*(a1 + 32) + 152);
      v9 = *(a1 + 32);
      v10 = *(v9 + 152);
      *(v9 + 152) = 0;

      v11 = *(a1 + 32);
      v12 = *(a1 + 48);
      v14[0] = MEMORY[0x1E69E9820];
      v14[1] = 3221225472;
      v14[2] = __86__HKSampleIteratorQuery_client_deliverSampleObjects_queryCursor_deliverResults_query___block_invoke_2;
      v14[3] = &unk_1E7378F90;
      v17 = v7;
      v14[4] = *(a1 + 32);
      v15 = v8;
      v16 = *(a1 + 56);
      v13 = v8;
      [v11 queue_dispatchToClientForUUID:v12 shouldDeactivate:1 block:v14];
    }
  }
}

+ (void)configureClientInterface:(id)interface
{
  interfaceCopy = interface;
  v6.receiver = self;
  v6.super_class = &OBJC_METACLASS___HKSampleIteratorQuery;
  objc_msgSendSuper2(&v6, sel_configureClientInterface_, interfaceCopy);
  v5 = [interfaceCopy hk_setArrayOfClass:objc_opt_class() forSelector:sel_client_deliverSampleObjects_queryCursor_deliverResults_query_ argumentIndex:0 ofReply:0];
}

- (void)queue_populateConfiguration:(id)configuration
{
  v5.receiver = self;
  v5.super_class = HKSampleIteratorQuery;
  configurationCopy = configuration;
  [(HKQuery *)&v5 queue_populateConfiguration:configurationCopy];
  [configurationCopy setQueryCursor:{self->_queryCursor, v5.receiver, v5.super_class}];
  [configurationCopy setLimit:self->_limit];
}

- (void)queue_queryDidDeactivate:(id)deactivate
{
  v5.receiver = self;
  v5.super_class = HKSampleIteratorQuery;
  [(HKQuery *)&v5 queue_queryDidDeactivate:deactivate];
  resultsHandler = self->_resultsHandler;
  self->_resultsHandler = 0;
}

- (void)queue_validate
{
  v21 = *MEMORY[0x1E69E9840];
  v19.receiver = self;
  v19.super_class = HKSampleIteratorQuery;
  [(HKQuery *)&v19 queue_validate];
  v17 = 0u;
  v18 = 0u;
  v15 = 0u;
  v16 = 0u;
  queryDescriptors = [(HKSampleIteratorQueryCursor *)self->_queryCursor queryDescriptors];
  v4 = [queryDescriptors countByEnumeratingWithState:&v15 objects:v20 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v16;
    do
    {
      for (i = 0; i != v5; ++i)
      {
        if (*v16 != v6)
        {
          objc_enumerationMutation(queryDescriptors);
        }

        v8 = *(*(&v15 + 1) + 8 * i);
        sampleType = [v8 sampleType];

        if (!sampleType)
        {
          [MEMORY[0x1E695DF30] raise:@"HKQueryValidationFailureException" format:{@"%@ data type must be non-nil", objc_opt_class()}];
        }

        sampleType2 = [v8 sampleType];
        objc_opt_class();
        isKindOfClass = objc_opt_isKindOfClass();

        if ((isKindOfClass & 1) == 0)
        {
          v12 = MEMORY[0x1E695DF30];
          v13 = objc_opt_class();
          [v12 raise:@"HKQueryValidationFailureException" format:{@"%@ data type must be of class %@", v13, objc_opt_class()}];
        }
      }

      v5 = [queryDescriptors countByEnumeratingWithState:&v15 objects:v20 count:16];
    }

    while (v5);
  }

  if (!self->_resultsHandler)
  {
    [MEMORY[0x1E695DF30] raise:@"HKQueryValidationFailureException" format:{@"%@ completionHandler cannot be nil", objc_opt_class()}];
  }

  v14 = *MEMORY[0x1E69E9840];
}

- (void)queue_deliverError:(id)error
{
  errorCopy = error;
  v5 = _Block_copy(self->_resultsHandler);
  if (v5)
  {
    clientQueue = [(HKQuery *)self clientQueue];
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __44__HKSampleIteratorQuery_queue_deliverError___block_invoke;
    block[3] = &unk_1E7376618;
    v9 = v5;
    block[4] = self;
    v8 = errorCopy;
    dispatch_async(clientQueue, block);
  }
}

- (void)initWithQueryDescriptors:sortDescriptors:followingAnchor:upToAndIncludingAnchor:distinctByKeyPaths:limit:resultsHandler:.cold.1()
{
  OUTLINED_FUNCTION_0_0();
  v1 = [MEMORY[0x1E696AAA8] currentHandler];
  OUTLINED_FUNCTION_1_0();
  [v0 handleFailureInMethod:@"queryDescriptors" object:? file:? lineNumber:? description:?];
}

- (void)initWithQueryDescriptors:sortDescriptors:followingAnchor:upToAndIncludingAnchor:distinctByKeyPaths:limit:resultsHandler:.cold.2()
{
  OUTLINED_FUNCTION_0_0();
  v1 = [MEMORY[0x1E696AAA8] currentHandler];
  OUTLINED_FUNCTION_1_0();
  [v0 handleFailureInMethod:@"resultsHandler" object:? file:? lineNumber:? description:?];
}

- (void)initWithQueryCursor:limit:resultsHandler:.cold.1()
{
  OUTLINED_FUNCTION_0_0();
  v1 = [MEMORY[0x1E696AAA8] currentHandler];
  OUTLINED_FUNCTION_1_0();
  [v0 handleFailureInMethod:@"queryCursor" object:? file:? lineNumber:? description:?];
}

- (void)initWithQueryCursor:limit:resultsHandler:.cold.2()
{
  OUTLINED_FUNCTION_0_0();
  v1 = [MEMORY[0x1E696AAA8] currentHandler];
  OUTLINED_FUNCTION_1_0();
  [v0 handleFailureInMethod:@"resultsHandler" object:? file:? lineNumber:? description:?];
}

@end