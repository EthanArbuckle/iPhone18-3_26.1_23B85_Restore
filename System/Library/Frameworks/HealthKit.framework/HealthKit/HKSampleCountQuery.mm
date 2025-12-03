@interface HKSampleCountQuery
+ (void)configureClientInterface:(id)interface;
- (BOOL)queue_validate;
- (HKSampleCountQuery)initWithQueryDescriptors:(id)descriptors resultsHandler:(id)handler;
- (HKSampleCountQuery)initWithResultsHandler:(id)handler;
- (HKSampleCountQuery)initWithSampleType:(id)type predicate:(id)predicate resultsHandler:(id)handler;
- (HKSampleCountQuery)initWithSampleTypes:(id)types predicate:(id)predicate resultsHandler:(id)handler;
- (NSSet)sampleTypes;
- (void)client_deliverSampleCountDictionary:(id)dictionary forQuery:(id)query;
- (void)client_deliverSampleTypeCountDictionary:(id)dictionary forQuery:(id)query;
- (void)queue_deliverError:(id)error;
- (void)queue_populateConfiguration:(id)configuration;
- (void)queue_queryDidDeactivate:(id)deactivate;
- (void)queue_validate;
@end

@implementation HKSampleCountQuery

- (HKSampleCountQuery)initWithQueryDescriptors:(id)descriptors resultsHandler:(id)handler
{
  handlerCopy = handler;
  allObjects = [descriptors allObjects];
  v13.receiver = self;
  v13.super_class = HKSampleCountQuery;
  v8 = [(HKQuery *)&v13 initWithQueryDescriptors:allObjects];

  if (v8)
  {
    v9 = _Block_copy(handlerCopy);
    resultsHandler = v8->_resultsHandler;
    v8->_resultsHandler = v9;

    sampleTypeCountResultsHandler = v8->_sampleTypeCountResultsHandler;
    v8->_sampleTypeCountResultsHandler = 0;
  }

  return v8;
}

- (HKSampleCountQuery)initWithSampleTypes:(id)types predicate:(id)predicate resultsHandler:(id)handler
{
  predicateCopy = predicate;
  handlerCopy = handler;
  v19[0] = MEMORY[0x1E69E9820];
  v19[1] = 3221225472;
  v19[2] = __67__HKSampleCountQuery_initWithSampleTypes_predicate_resultsHandler___block_invoke;
  v19[3] = &unk_1E73847E8;
  v11 = predicateCopy;
  v20 = v11;
  v12 = [types hk_map:v19];
  if (handlerCopy)
  {
    v13 = v17;
    v17[0] = MEMORY[0x1E69E9820];
    v17[1] = 3221225472;
    v17[2] = __67__HKSampleCountQuery_initWithSampleTypes_predicate_resultsHandler___block_invoke_2;
    v17[3] = &unk_1E7385170;
    v5 = &v18;
    v18 = handlerCopy;
  }

  else
  {
    v13 = 0;
  }

  v14 = _Block_copy(v13);
  v15 = [(HKSampleCountQuery *)self initWithQueryDescriptors:v12 resultsHandler:v14];

  if (handlerCopy)
  {
  }

  return v15;
}

HKQueryDescriptor *__67__HKSampleCountQuery_initWithSampleTypes_predicate_resultsHandler___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [[HKQueryDescriptor alloc] initWithSampleType:v3 predicate:*(a1 + 32)];

  return v4;
}

void __67__HKSampleCountQuery_initWithSampleTypes_predicate_resultsHandler___block_invoke_2(uint64_t a1, void *a2, void *a3, void *a4)
{
  v25 = *MEMORY[0x1E69E9840];
  v7 = a2;
  v8 = a3;
  v9 = a4;
  if (v8)
  {
    v10 = [MEMORY[0x1E695DF90] dictionaryWithCapacity:{objc_msgSend(v8, "count")}];
  }

  else
  {
    v10 = 0;
  }

  v22 = 0u;
  v23 = 0u;
  v20 = 0u;
  v21 = 0u;
  v11 = v8;
  v12 = [v11 countByEnumeratingWithState:&v20 objects:v24 count:16];
  if (v12)
  {
    v13 = v12;
    v14 = *v21;
    do
    {
      for (i = 0; i != v13; ++i)
      {
        if (*v21 != v14)
        {
          objc_enumerationMutation(v11);
        }

        v16 = *(*(&v20 + 1) + 8 * i);
        v17 = [v11 objectForKeyedSubscript:{v16, v20}];
        v18 = [v16 sampleType];
        [v10 setObject:v17 forKeyedSubscript:v18];
      }

      v13 = [v11 countByEnumeratingWithState:&v20 objects:v24 count:16];
    }

    while (v13);
  }

  (*(*(a1 + 32) + 16))();
  v19 = *MEMORY[0x1E69E9840];
}

- (HKSampleCountQuery)initWithSampleType:(id)type predicate:(id)predicate resultsHandler:(id)handler
{
  v8 = MEMORY[0x1E695DFD8];
  handlerCopy = handler;
  predicateCopy = predicate;
  v11 = [v8 setWithObject:type];
  v12 = [(HKSampleCountQuery *)self initWithSampleTypes:v11 predicate:predicateCopy resultsHandler:handlerCopy];

  return v12;
}

- (NSSet)sampleTypes
{
  v20 = *MEMORY[0x1E69E9840];
  v3 = objc_alloc(MEMORY[0x1E695DFA8]);
  queryDescriptors = [(HKQuery *)self queryDescriptors];
  v5 = [v3 initWithCapacity:{objc_msgSend(queryDescriptors, "count")}];

  v17 = 0u;
  v18 = 0u;
  v15 = 0u;
  v16 = 0u;
  queryDescriptors2 = [(HKQuery *)self queryDescriptors];
  v7 = [queryDescriptors2 countByEnumeratingWithState:&v15 objects:v19 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v16;
    do
    {
      for (i = 0; i != v8; ++i)
      {
        if (*v16 != v9)
        {
          objc_enumerationMutation(queryDescriptors2);
        }

        sampleType = [*(*(&v15 + 1) + 8 * i) sampleType];
        [v5 addObject:sampleType];
      }

      v8 = [queryDescriptors2 countByEnumeratingWithState:&v15 objects:v19 count:16];
    }

    while (v8);
  }

  v12 = [v5 copy];
  v13 = *MEMORY[0x1E69E9840];

  return v12;
}

- (HKSampleCountQuery)initWithResultsHandler:(id)handler
{
  handlerCopy = handler;
  if (!handlerCopy)
  {
    [(HKSampleCountQuery *)a2 initWithResultsHandler:?];
  }

  v12.receiver = self;
  v12.super_class = HKSampleCountQuery;
  v6 = [(HKQuery *)&v12 _initWithObjectType:0 predicate:0];
  v7 = v6;
  if (v6)
  {
    resultsHandler = v6->_resultsHandler;
    v6->_resultsHandler = 0;

    v9 = _Block_copy(handlerCopy);
    sampleTypeCountResultsHandler = v7->_sampleTypeCountResultsHandler;
    v7->_sampleTypeCountResultsHandler = v9;
  }

  return v7;
}

- (void)client_deliverSampleCountDictionary:(id)dictionary forQuery:(id)query
{
  dictionaryCopy = dictionary;
  queryCopy = query;
  queue = [(HKQuery *)self queue];
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __67__HKSampleCountQuery_client_deliverSampleCountDictionary_forQuery___block_invoke;
  block[3] = &unk_1E7376640;
  block[4] = self;
  v12 = queryCopy;
  v13 = dictionaryCopy;
  v9 = dictionaryCopy;
  v10 = queryCopy;
  dispatch_async(queue, block);
}

void __67__HKSampleCountQuery_client_deliverSampleCountDictionary_forQuery___block_invoke(uint64_t a1)
{
  v2 = _Block_copy(*(*(a1 + 32) + 152));
  v3 = v2;
  if (v2)
  {
    v4 = *(a1 + 32);
    v5 = *(a1 + 40);
    v8[0] = MEMORY[0x1E69E9820];
    v8[1] = 3221225472;
    v8[2] = __67__HKSampleCountQuery_client_deliverSampleCountDictionary_forQuery___block_invoke_2;
    v8[3] = &unk_1E7376618;
    v6 = v2;
    v7 = *(a1 + 32);
    v10 = v6;
    v8[4] = v7;
    v9 = *(a1 + 48);
    [v4 queue_dispatchToClientForUUID:v5 shouldDeactivate:1 block:v8];
  }
}

- (void)client_deliverSampleTypeCountDictionary:(id)dictionary forQuery:(id)query
{
  dictionaryCopy = dictionary;
  queryCopy = query;
  queue = [(HKQuery *)self queue];
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __71__HKSampleCountQuery_client_deliverSampleTypeCountDictionary_forQuery___block_invoke;
  block[3] = &unk_1E7376640;
  block[4] = self;
  v12 = queryCopy;
  v13 = dictionaryCopy;
  v9 = dictionaryCopy;
  v10 = queryCopy;
  dispatch_async(queue, block);
}

void __71__HKSampleCountQuery_client_deliverSampleTypeCountDictionary_forQuery___block_invoke(uint64_t a1)
{
  v2 = _Block_copy(*(*(a1 + 32) + 160));
  v3 = v2;
  if (v2)
  {
    v4 = *(a1 + 32);
    v5 = *(a1 + 40);
    v8[0] = MEMORY[0x1E69E9820];
    v8[1] = 3221225472;
    v8[2] = __71__HKSampleCountQuery_client_deliverSampleTypeCountDictionary_forQuery___block_invoke_2;
    v8[3] = &unk_1E7376618;
    v6 = v2;
    v7 = *(a1 + 32);
    v10 = v6;
    v8[4] = v7;
    v9 = *(a1 + 48);
    [v4 queue_dispatchToClientForUUID:v5 shouldDeactivate:1 block:v8];
  }
}

+ (void)configureClientInterface:(id)interface
{
  v12.receiver = self;
  v12.super_class = &OBJC_METACLASS___HKSampleCountQuery;
  interfaceCopy = interface;
  objc_msgSendSuper2(&v12, sel_configureClientInterface_, interfaceCopy);
  v4 = MEMORY[0x1E695DFD8];
  v5 = objc_opt_class();
  v6 = objc_opt_class();
  v7 = [v4 setWithObjects:{v5, v6, objc_opt_class(), 0}];
  [interfaceCopy setClasses:v7 forSelector:sel_client_deliverSampleCountDictionary_forQuery_ argumentIndex:0 ofReply:0];
  v8 = MEMORY[0x1E695DFD8];
  v9 = objc_opt_class();
  v10 = objc_opt_class();
  v11 = [v8 setWithObjects:{v9, v10, objc_opt_class(), 0}];
  [interfaceCopy setClasses:v11 forSelector:sel_client_deliverSampleTypeCountDictionary_forQuery_ argumentIndex:0 ofReply:0];
}

- (void)queue_deliverError:(id)error
{
  errorCopy = error;
  resultsHandler = self->_resultsHandler;
  if (resultsHandler)
  {
    v6 = _Block_copy(resultsHandler);
    clientQueue = [(HKQuery *)self clientQueue];
    v17[0] = MEMORY[0x1E69E9820];
    v17[1] = 3221225472;
    v17[2] = __41__HKSampleCountQuery_queue_deliverError___block_invoke;
    v17[3] = &unk_1E7376618;
    v8 = &v19;
    v19 = v6;
    v17[4] = self;
    v9 = &v18;
    v18 = errorCopy;
    v10 = v6;
    v11 = v17;
LABEL_5:
    dispatch_async(clientQueue, v11);

    goto LABEL_6;
  }

  sampleTypeCountResultsHandler = self->_sampleTypeCountResultsHandler;
  if (sampleTypeCountResultsHandler)
  {
    v13 = _Block_copy(sampleTypeCountResultsHandler);
    clientQueue = [(HKQuery *)self clientQueue];
    v14[0] = MEMORY[0x1E69E9820];
    v14[1] = 3221225472;
    v14[2] = __41__HKSampleCountQuery_queue_deliverError___block_invoke_2;
    v14[3] = &unk_1E7376618;
    v8 = &v16;
    v16 = v13;
    v14[4] = self;
    v9 = &v15;
    v15 = errorCopy;
    v10 = v13;
    v11 = v14;
    goto LABEL_5;
  }

LABEL_6:
}

- (void)queue_populateConfiguration:(id)configuration
{
  v6.receiver = self;
  v6.super_class = HKSampleCountQuery;
  configurationCopy = configuration;
  [(HKQuery *)&v6 queue_populateConfiguration:configurationCopy];
  v5 = [(HKQuery *)self queryDescriptors:v6.receiver];
  [configurationCopy setQueryDescriptors:v5];
}

- (void)queue_validate
{
  v26 = *MEMORY[0x1E69E9840];
  v24.receiver = self;
  v24.super_class = HKSampleCountQuery;
  [(HKQuery *)&v24 queue_validate];
  sampleTypeCountResultsHandler = self->_sampleTypeCountResultsHandler;
  if (self->_resultsHandler)
  {
    if (!sampleTypeCountResultsHandler)
    {
      goto LABEL_3;
    }
  }

  else if (sampleTypeCountResultsHandler)
  {
LABEL_6:
    if (self->_sampleTypeCountResultsHandler)
    {
      goto LABEL_7;
    }

    [MEMORY[0x1E695DF30] raise:@"HKQueryValidationFailureException" format:{@"%@ completionHandler cannot be nil", objc_opt_class()}];
    if (!self->_resultsHandler)
    {
      goto LABEL_7;
    }

    goto LABEL_3;
  }

  if ([(HKSampleCountQuery *)self queue_validate])
  {
    goto LABEL_6;
  }

LABEL_3:
  queryDescriptors = [(HKQuery *)self queryDescriptors];
  v6 = [queryDescriptors count];

  if (!v6)
  {
    [MEMORY[0x1E695DF30] raise:@"HKQueryValidationFailureException" format:{@"%@ sample query description cannot be empty", objc_opt_class()}];
  }

LABEL_7:
  v22 = 0u;
  v23 = 0u;
  v20 = 0u;
  v21 = 0u;
  obj = [(HKQuery *)self queryDescriptors];
  v7 = [obj countByEnumeratingWithState:&v20 objects:v25 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v21;
    v10 = *MEMORY[0x1E695D940];
    do
    {
      v11 = 0;
      do
      {
        if (*v21 != v9)
        {
          objc_enumerationMutation(obj);
        }

        v12 = *(*(&v20 + 1) + 8 * v11);
        objc_opt_class();
        if ((objc_opt_isKindOfClass() & 1) == 0)
        {
          v13 = MEMORY[0x1E695DF30];
          v14 = objc_opt_class();
          [v13 raise:v10 format:{@"%@ sample query description must be of class %@", v14, objc_opt_class()}];
        }

        sampleType = [v12 sampleType];
        objc_opt_class();
        if ((objc_opt_isKindOfClass() & 1) == 0)
        {
          v16 = MEMORY[0x1E695DF30];
          v17 = objc_opt_class();
          [v16 raise:v10 format:{@"%@ sample type must be of class %@", v17, objc_opt_class()}];
        }

        ++v11;
      }

      while (v8 != v11);
      v8 = [obj countByEnumeratingWithState:&v20 objects:v25 count:16];
    }

    while (v8);
  }

  v18 = *MEMORY[0x1E69E9840];
}

- (void)queue_queryDidDeactivate:(id)deactivate
{
  v5.receiver = self;
  v5.super_class = HKSampleCountQuery;
  [(HKQuery *)&v5 queue_queryDidDeactivate:deactivate];
  resultsHandler = self->_resultsHandler;
  self->_resultsHandler = 0;
}

- (void)initWithResultsHandler:(uint64_t)a1 .cold.1(uint64_t a1, uint64_t a2)
{
  v4 = [MEMORY[0x1E696AAA8] currentHandler];
  [v4 handleFailureInMethod:a1 object:a2 file:@"HKSampleCountQuery.m" lineNumber:74 description:{@"Invalid parameter not satisfying: %@", @"resultsHandler != nil"}];
}

- (BOOL)queue_validate
{
  currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
  [currentHandler handleFailureInMethod:a2 object:self file:@"HKSampleCountQuery.m" lineNumber:159 description:{@"%@ cannot have two completion handlers", objc_opt_class()}];

  return *a3 == 0;
}

@end