@interface HKWorkoutTrainingLoadCollectionQuery
+ (void)configureClientInterface:(id)interface;
- (HKWorkoutTrainingLoadCollectionQuery)initWithPredicate:(id)predicate options:(int64_t)options anchorDate:(id)date intervalComponents:(id)components completionHandler:(id)handler;
- (void)client_deliverTrainingLoadCollection:(id)collection forQuery:(id)query;
- (void)queue_deliverError:(id)error;
- (void)queue_populateConfiguration:(id)configuration;
- (void)queue_queryDidDeactivate:(id)deactivate;
- (void)queue_validate;
@end

@implementation HKWorkoutTrainingLoadCollectionQuery

- (HKWorkoutTrainingLoadCollectionQuery)initWithPredicate:(id)predicate options:(int64_t)options anchorDate:(id)date intervalComponents:(id)components completionHandler:(id)handler
{
  dateCopy = date;
  componentsCopy = components;
  handlerCopy = handler;
  v24.receiver = self;
  v24.super_class = HKWorkoutTrainingLoadCollectionQuery;
  v15 = [(HKQuery *)&v24 _initWithObjectType:0 predicate:predicate];
  v16 = v15;
  if (v15)
  {
    v15->_options = options;
    v17 = [dateCopy copy];
    anchorDate = v16->_anchorDate;
    v16->_anchorDate = v17;

    v19 = [componentsCopy copy];
    intervalComponents = v16->_intervalComponents;
    v16->_intervalComponents = v19;

    v21 = [handlerCopy copy];
    completionHandler = v16->_completionHandler;
    v16->_completionHandler = v21;
  }

  return v16;
}

+ (void)configureClientInterface:(id)interface
{
  interfaceCopy = interface;
  v6.receiver = self;
  v6.super_class = &OBJC_METACLASS___HKWorkoutTrainingLoadCollectionQuery;
  objc_msgSendSuper2(&v6, sel_configureClientInterface_, interfaceCopy);
  v5 = [interfaceCopy hk_setArrayOfClass:objc_opt_class() forSelector:sel_client_deliverTrainingLoadCollection_forQuery_ argumentIndex:0 ofReply:0];
}

- (void)queue_populateConfiguration:(id)configuration
{
  v5.receiver = self;
  v5.super_class = HKWorkoutTrainingLoadCollectionQuery;
  configurationCopy = configuration;
  [(HKQuery *)&v5 queue_populateConfiguration:configurationCopy];
  [configurationCopy setOptions:{self->_options, v5.receiver, v5.super_class}];
  [configurationCopy setAnchorDate:self->_anchorDate];
  [configurationCopy setIntervalComponents:self->_intervalComponents];
}

- (void)queue_queryDidDeactivate:(id)deactivate
{
  v5.receiver = self;
  v5.super_class = HKWorkoutTrainingLoadCollectionQuery;
  [(HKQuery *)&v5 queue_queryDidDeactivate:deactivate];
  completionHandler = self->_completionHandler;
  self->_completionHandler = 0;
}

- (void)queue_validate
{
  v2.receiver = self;
  v2.super_class = HKWorkoutTrainingLoadCollectionQuery;
  [(HKQuery *)&v2 queue_validate];
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
    block[2] = __59__HKWorkoutTrainingLoadCollectionQuery_queue_deliverError___block_invoke;
    block[3] = &unk_1E7376618;
    v9 = v5;
    block[4] = self;
    v8 = errorCopy;
    dispatch_async(clientQueue, block);
  }
}

- (void)client_deliverTrainingLoadCollection:(id)collection forQuery:(id)query
{
  collectionCopy = collection;
  queryCopy = query;
  queue = [(HKQuery *)self queue];
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __86__HKWorkoutTrainingLoadCollectionQuery_client_deliverTrainingLoadCollection_forQuery___block_invoke;
  block[3] = &unk_1E7376640;
  block[4] = self;
  v12 = queryCopy;
  v13 = collectionCopy;
  v9 = collectionCopy;
  v10 = queryCopy;
  dispatch_async(queue, block);
}

void __86__HKWorkoutTrainingLoadCollectionQuery_client_deliverTrainingLoadCollection_forQuery___block_invoke(uint64_t a1)
{
  v2 = _Block_copy(*(*(a1 + 32) + 176));
  v3 = v2;
  if (v2)
  {
    v4 = *(a1 + 32);
    v5 = *(a1 + 40);
    v8[0] = MEMORY[0x1E69E9820];
    v8[1] = 3221225472;
    v8[2] = __86__HKWorkoutTrainingLoadCollectionQuery_client_deliverTrainingLoadCollection_forQuery___block_invoke_2;
    v8[3] = &unk_1E7376618;
    v6 = v2;
    v7 = *(a1 + 32);
    v10 = v6;
    v8[4] = v7;
    v9 = *(a1 + 48);
    [v4 queue_dispatchToClientForUUID:v5 shouldDeactivate:1 block:v8];
  }
}

@end