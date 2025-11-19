@interface HKCurrentActivityCacheQuery
+ (void)configureClientInterface:(id)a3;
- (HKCurrentActivityCacheQuery)initWithStatisticsIntervalComponents:(id)a3 updateHandler:(id)a4;
- (void)client_deliverQueryResult:(id)a3 queryUUID:(id)a4;
- (void)queue_deliverError:(id)a3;
- (void)queue_populateConfiguration:(id)a3;
- (void)queue_queryDidDeactivate:(id)a3;
- (void)queue_validate;
@end

@implementation HKCurrentActivityCacheQuery

- (HKCurrentActivityCacheQuery)initWithStatisticsIntervalComponents:(id)a3 updateHandler:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = +[HKObjectType activityCacheType];
  v15.receiver = self;
  v15.super_class = HKCurrentActivityCacheQuery;
  v9 = [(HKQuery *)&v15 _initWithObjectType:v8 predicate:0];
  if (v9)
  {
    v10 = [v7 copy];
    updateHandler = v9->_updateHandler;
    v9->_updateHandler = v10;

    v12 = [v6 copy];
    statisticsIntervalComponents = v9->_statisticsIntervalComponents;
    v9->_statisticsIntervalComponents = v12;
  }

  return v9;
}

- (void)client_deliverQueryResult:(id)a3 queryUUID:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [(HKQuery *)self queue];
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __67__HKCurrentActivityCacheQuery_client_deliverQueryResult_queryUUID___block_invoke;
  block[3] = &unk_1E7376640;
  block[4] = self;
  v12 = v7;
  v13 = v6;
  v9 = v6;
  v10 = v7;
  dispatch_async(v8, block);
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

+ (void)configureClientInterface:(id)a3
{
  v4 = a3;
  v6.receiver = a1;
  v6.super_class = &OBJC_METACLASS___HKCurrentActivityCacheQuery;
  objc_msgSendSuper2(&v6, sel_configureClientInterface_, v4);
  v5 = [v4 hk_setArrayOfClass:objc_opt_class() forSelector:sel_client_deliverQueryResult_queryUUID_ argumentIndex:0 ofReply:0];
}

- (void)queue_populateConfiguration:(id)a3
{
  v5.receiver = self;
  v5.super_class = HKCurrentActivityCacheQuery;
  v4 = a3;
  [(HKQuery *)&v5 queue_populateConfiguration:v4];
  [v4 setStatisticsIntervalComponents:{self->_statisticsIntervalComponents, v5.receiver, v5.super_class}];
}

- (void)queue_queryDidDeactivate:(id)a3
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

- (void)queue_deliverError:(id)a3
{
  v4 = a3;
  v5 = _Block_copy(self->_updateHandler);
  if (v5)
  {
    v6 = [(HKQuery *)self clientQueue];
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __50__HKCurrentActivityCacheQuery_queue_deliverError___block_invoke;
    block[3] = &unk_1E7376618;
    v9 = v5;
    block[4] = self;
    v8 = v4;
    dispatch_async(v6, block);
  }
}

@end