@interface HKUserTrackedConceptQuery
+ (void)configureClientInterface:(id)interface;
- (HKUserTrackedConceptQuery)initWithUserTrackedConceptType:(id)type predicate:(id)predicate sortDescriptors:(id)descriptors resultsHandler:(id)handler;
- (void)_enumerateUserTrackedConceptsWithHandler:(id)handler handler:(id)a4;
- (void)client_deliverUserTrackedConcepts:(id)concepts queryUUID:(id)d;
- (void)queue_deliverError:(id)error;
- (void)queue_populateConfiguration:(id)configuration;
- (void)queue_queryDidDeactivate:(id)deactivate;
- (void)queue_validate;
@end

@implementation HKUserTrackedConceptQuery

- (HKUserTrackedConceptQuery)initWithUserTrackedConceptType:(id)type predicate:(id)predicate sortDescriptors:(id)descriptors resultsHandler:(id)handler
{
  descriptorsCopy = descriptors;
  handlerCopy = handler;
  v18.receiver = self;
  v18.super_class = HKUserTrackedConceptQuery;
  v12 = [(HKQuery *)&v18 _initWithObjectType:type predicate:predicate];
  if (v12)
  {
    v13 = [descriptorsCopy copy];
    sortDescriptors = v12->_sortDescriptors;
    v12->_sortDescriptors = v13;

    v15 = [handlerCopy copy];
    handler = v12->_handler;
    v12->_handler = v15;
  }

  return v12;
}

- (void)client_deliverUserTrackedConcepts:(id)concepts queryUUID:(id)d
{
  conceptsCopy = concepts;
  dCopy = d;
  queue = [(HKQuery *)self queue];
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __73__HKUserTrackedConceptQuery_client_deliverUserTrackedConcepts_queryUUID___block_invoke;
  block[3] = &unk_1E7376640;
  block[4] = self;
  v12 = dCopy;
  v13 = conceptsCopy;
  v9 = conceptsCopy;
  v10 = dCopy;
  dispatch_async(queue, block);
}

void __73__HKUserTrackedConceptQuery_client_deliverUserTrackedConcepts_queryUUID___block_invoke(uint64_t a1)
{
  v2 = _Block_copy(*(*(a1 + 32) + 160));
  if (v2)
  {
    v3 = *(a1 + 32);
    v4 = *(a1 + 40);
    v5[0] = MEMORY[0x1E69E9820];
    v5[1] = 3221225472;
    v5[2] = __73__HKUserTrackedConceptQuery_client_deliverUserTrackedConcepts_queryUUID___block_invoke_2;
    v5[3] = &unk_1E73766C8;
    v5[4] = v3;
    v6 = *(a1 + 48);
    v7 = v2;
    [v3 queue_dispatchToClientForUUID:v4 shouldDeactivate:1 block:v5];
  }
}

- (void)_enumerateUserTrackedConceptsWithHandler:(id)handler handler:(id)a4
{
  handlerCopy = handler;
  v6 = a4;
  if ([handlerCopy count])
  {
    v7 = v6;
    selfCopy2 = self;
    v9 = handlerCopy;
  }

  else
  {
    v9 = MEMORY[0x1E695E0F0];
    v7 = v6;
    selfCopy2 = self;
  }

  (*(v6 + 2))(v7, selfCopy2, v9, 0);
}

- (void)queue_populateConfiguration:(id)configuration
{
  v5.receiver = self;
  v5.super_class = HKUserTrackedConceptQuery;
  configurationCopy = configuration;
  [(HKQuery *)&v5 queue_populateConfiguration:configurationCopy];
  [configurationCopy setSortDescriptors:{self->_sortDescriptors, v5.receiver, v5.super_class}];
}

+ (void)configureClientInterface:(id)interface
{
  interfaceCopy = interface;
  v6.receiver = self;
  v6.super_class = &OBJC_METACLASS___HKUserTrackedConceptQuery;
  objc_msgSendSuper2(&v6, sel_configureClientInterface_, interfaceCopy);
  v5 = [interfaceCopy hk_setArrayOfClass:objc_opt_class() forSelector:sel_client_deliverUserTrackedConcepts_queryUUID_ argumentIndex:0 ofReply:0];
}

- (void)queue_deliverError:(id)error
{
  errorCopy = error;
  v10[0] = 0;
  v10[1] = v10;
  v10[2] = 0x3032000000;
  v10[3] = __Block_byref_object_copy__48;
  v10[4] = __Block_byref_object_dispose__48;
  v11 = _Block_copy(self->_handler);
  clientQueue = [(HKQuery *)self clientQueue];
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __48__HKUserTrackedConceptQuery_queue_deliverError___block_invoke;
  block[3] = &unk_1E7378280;
  v8 = errorCopy;
  v9 = v10;
  block[4] = self;
  v6 = errorCopy;
  dispatch_async(clientQueue, block);

  _Block_object_dispose(v10, 8);
}

- (void)queue_validate
{
  v3.receiver = self;
  v3.super_class = HKUserTrackedConceptQuery;
  [(HKQuery *)&v3 queue_validate];
  if (!self->_handler)
  {
    [MEMORY[0x1E695DF30] raise:@"HKQueryValidationFailureException" format:{@"%@ handler must not be nil", objc_opt_class()}];
  }
}

- (void)queue_queryDidDeactivate:(id)deactivate
{
  v5.receiver = self;
  v5.super_class = HKUserTrackedConceptQuery;
  [(HKQuery *)&v5 queue_queryDidDeactivate:deactivate];
  handler = self->_handler;
  self->_handler = 0;
}

@end