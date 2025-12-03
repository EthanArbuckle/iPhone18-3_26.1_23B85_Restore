@interface HKCurrentActivityCacheQuery
+ (void)configureClientInterface:(id)interface;
- (HKCurrentActivityCacheQuery)initWithStatisticsIntervalComponents:(id)components updateHandler:(id)handler;
- (void)client_deliverQueryResult:(id)result queryUUID:(id)d;
- (void)queue_deliverError:(id)error;
- (void)queue_populateConfiguration:(id)configuration;
- (void)queue_queryDidDeactivate:(id)deactivate;
- (void)queue_validate;
@end

@implementation HKCurrentActivityCacheQuery

- (HKCurrentActivityCacheQuery)initWithStatisticsIntervalComponents:(id)components updateHandler:(id)handler
{
  componentsCopy = components;
  handlerCopy = handler;
  v8 = +[HKObjectType activityCacheType];
  v15.receiver = self;
  v15.super_class = HKCurrentActivityCacheQuery;
  v9 = [(HKQuery *)&v15 _initWithObjectType:v8 predicate:0];
  if (v9)
  {
    v10 = [handlerCopy copy];
    updateHandler = v9->_updateHandler;
    v9->_updateHandler = v10;

    v12 = [componentsCopy copy];
    statisticsIntervalComponents = v9->_statisticsIntervalComponents;
    v9->_statisticsIntervalComponents = v12;
  }

  return v9;
}

- (void)client_deliverQueryResult:(id)result queryUUID:(id)d
{
  resultCopy = result;
  dCopy = d;
  queue = [(HKQuery *)self queue];
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __67__HKCurrentActivityCacheQuery_client_deliverQueryResult_queryUUID___block_invoke;
  block[3] = &unk_1E7376640;
  block[4] = self;
  v12 = dCopy;
  v13 = resultCopy;
  v9 = resultCopy;
  v10 = dCopy;
  dispatch_async(queue, block);
}

void __67__HKCurrentActivityCacheQuery_client_deliverQueryResult_queryUUID___block_invoke(uint64_t a1)
{
  v2 = _Block_copy(*(*(a1 + 32) + 160));
  v3 = v2;
  if (v2)
  {
    v4 = *(a1 + 32);
    v5 = *(a1 + 40);
    v8[0] = MEMORY[0x1E69E9820];
    v8[1] = 3221225472;
    v8[2] = __67__HKCurrentActivityCacheQuery_client_deliverQueryResult_queryUUID___block_invoke_2;
    v8[3] = &unk_1E7376618;
    v6 = v2;
    v7 = *(a1 + 32);
    v10 = v6;
    v8[4] = v7;
    v9 = *(a1 + 48);
    [v4 queue_dispatchToClientForUUID:v5 shouldDeactivate:0 block:v8];
  }
}

+ (void)configureClientInterface:(id)interface
{
  interfaceCopy = interface;
  v6.receiver = self;
  v6.super_class = &OBJC_METACLASS___HKCurrentActivityCacheQuery;
  objc_msgSendSuper2(&v6, sel_configureClientInterface_, interfaceCopy);
  v5 = [interfaceCopy hk_setArrayOfClass:objc_opt_class() forSelector:sel_client_deliverQueryResult_queryUUID_ argumentIndex:0 ofReply:0];
}

- (void)queue_populateConfiguration:(id)configuration
{
  v5.receiver = self;
  v5.super_class = HKCurrentActivityCacheQuery;
  configurationCopy = configuration;
  [(HKQuery *)&v5 queue_populateConfiguration:configurationCopy];
  [configurationCopy setStatisticsIntervalComponents:{self->_statisticsIntervalComponents, v5.receiver, v5.super_class}];
}

- (void)queue_queryDidDeactivate:(id)deactivate
{
  updateHandler = self->_updateHandler;
  self->_updateHandler = 0;
  MEMORY[0x1EEE66BB8]();
}

- (void)queue_validate
{
  v3.receiver = self;
  v3.super_class = HKCurrentActivityCacheQuery;
  [(HKQuery *)&v3 queue_validate];
  if (!self->_updateHandler)
  {
    [MEMORY[0x1E695DF30] raise:@"HKQueryValidationFailureException" format:{@"%@ updateHandler must not be nil", objc_opt_class()}];
  }
}

- (void)queue_deliverError:(id)error
{
  errorCopy = error;
  v5 = _Block_copy(self->_updateHandler);
  if (v5)
  {
    clientQueue = [(HKQuery *)self clientQueue];
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __50__HKCurrentActivityCacheQuery_queue_deliverError___block_invoke;
    block[3] = &unk_1E7376618;
    v9 = v5;
    block[4] = self;
    v8 = errorCopy;
    dispatch_async(clientQueue, block);
  }
}

@end