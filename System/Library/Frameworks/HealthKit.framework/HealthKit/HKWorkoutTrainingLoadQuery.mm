@interface HKWorkoutTrainingLoadQuery
+ (void)configureClientInterface:(id)interface;
- (HKWorkoutTrainingLoadQuery)initWithPredicate:(id)predicate options:(int64_t)options completionHandler:(id)handler;
- (void)client_deliverTrainingLoadResults:(id)results forQuery:(id)query;
- (void)queue_deliverError:(id)error;
- (void)queue_populateConfiguration:(id)configuration;
- (void)queue_queryDidDeactivate:(id)deactivate;
- (void)queue_validate;
@end

@implementation HKWorkoutTrainingLoadQuery

- (HKWorkoutTrainingLoadQuery)initWithPredicate:(id)predicate options:(int64_t)options completionHandler:(id)handler
{
  handlerCopy = handler;
  v14.receiver = self;
  v14.super_class = HKWorkoutTrainingLoadQuery;
  v9 = [(HKQuery *)&v14 _initWithObjectType:0 predicate:predicate];
  v10 = v9;
  if (v9)
  {
    v9->_options = options;
    v11 = [handlerCopy copy];
    completionHandler = v10->_completionHandler;
    v10->_completionHandler = v11;
  }

  return v10;
}

+ (void)configureClientInterface:(id)interface
{
  interfaceCopy = interface;
  v6.receiver = self;
  v6.super_class = &OBJC_METACLASS___HKWorkoutTrainingLoadQuery;
  objc_msgSendSuper2(&v6, sel_configureClientInterface_, interfaceCopy);
  v5 = [interfaceCopy hk_setArrayOfClass:objc_opt_class() forSelector:sel_client_deliverTrainingLoadResults_forQuery_ argumentIndex:0 ofReply:0];
}

- (void)queue_populateConfiguration:(id)configuration
{
  v5.receiver = self;
  v5.super_class = HKWorkoutTrainingLoadQuery;
  configurationCopy = configuration;
  [(HKQuery *)&v5 queue_populateConfiguration:configurationCopy];
  [configurationCopy setOptions:{self->_options, v5.receiver, v5.super_class}];
}

- (void)queue_queryDidDeactivate:(id)deactivate
{
  v5.receiver = self;
  v5.super_class = HKWorkoutTrainingLoadQuery;
  [(HKQuery *)&v5 queue_queryDidDeactivate:deactivate];
  completionHandler = self->_completionHandler;
  self->_completionHandler = 0;
}

- (void)queue_validate
{
  v2.receiver = self;
  v2.super_class = HKWorkoutTrainingLoadQuery;
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
    block[2] = __49__HKWorkoutTrainingLoadQuery_queue_deliverError___block_invoke;
    block[3] = &unk_1E7376618;
    v9 = v5;
    block[4] = self;
    v8 = errorCopy;
    dispatch_async(clientQueue, block);
  }
}

- (void)client_deliverTrainingLoadResults:(id)results forQuery:(id)query
{
  resultsCopy = results;
  queryCopy = query;
  queue = [(HKQuery *)self queue];
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __73__HKWorkoutTrainingLoadQuery_client_deliverTrainingLoadResults_forQuery___block_invoke;
  block[3] = &unk_1E7376640;
  block[4] = self;
  v12 = queryCopy;
  v13 = resultsCopy;
  v9 = resultsCopy;
  v10 = queryCopy;
  dispatch_async(queue, block);
}

void __73__HKWorkoutTrainingLoadQuery_client_deliverTrainingLoadResults_forQuery___block_invoke(uint64_t a1)
{
  v2 = _Block_copy(*(*(a1 + 32) + 160));
  v3 = v2;
  if (v2)
  {
    v4 = *(a1 + 32);
    v5 = *(a1 + 40);
    v8[0] = MEMORY[0x1E69E9820];
    v8[1] = 3221225472;
    v8[2] = __73__HKWorkoutTrainingLoadQuery_client_deliverTrainingLoadResults_forQuery___block_invoke_2;
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