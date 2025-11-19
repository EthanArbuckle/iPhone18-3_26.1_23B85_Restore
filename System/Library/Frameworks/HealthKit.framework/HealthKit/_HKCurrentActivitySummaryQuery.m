@interface _HKCurrentActivitySummaryQuery
+ (void)configureClientInterface:(id)a3;
- (_HKCurrentActivitySummaryQuery)initWithUpdateHandler:(id)a3;
- (void)_setCollectionIntervals:(id)a3;
- (void)client_deliverActivitySummaries:(id)a3 queryUUID:(id)a4;
- (void)queue_deliverError:(id)a3;
- (void)queue_populateConfiguration:(id)a3;
- (void)queue_queryDidDeactivate:(id)a3;
- (void)queue_validate;
@end

@implementation _HKCurrentActivitySummaryQuery

- (_HKCurrentActivitySummaryQuery)initWithUpdateHandler:(id)a3
{
  v4 = a3;
  v5 = +[HKObjectType activitySummaryType];
  v10.receiver = self;
  v10.super_class = _HKCurrentActivitySummaryQuery;
  v6 = [(HKQuery *)&v10 _initWithObjectType:v5 predicate:0];

  if (v6)
  {
    v7 = [v4 copy];
    updateHandler = v6->_updateHandler;
    v6->_updateHandler = v7;
  }

  return v6;
}

- (void)client_deliverActivitySummaries:(id)a3 queryUUID:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [(HKQuery *)self queue];
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __76___HKCurrentActivitySummaryQuery_client_deliverActivitySummaries_queryUUID___block_invoke;
  block[3] = &unk_1E7376640;
  block[4] = self;
  v12 = v6;
  v13 = v7;
  v9 = v7;
  v10 = v6;
  dispatch_async(v8, block);
}

+ (void)configureClientInterface:(id)a3
{
  v4 = a3;
  v6.receiver = a1;
  v6.super_class = &OBJC_METACLASS____HKCurrentActivitySummaryQuery;
  objc_msgSendSuper2(&v6, sel_configureClientInterface_, v4);
  v5 = [v4 hk_setArrayOfClass:objc_opt_class() forSelector:sel_client_deliverActivitySummaries_queryUUID_ argumentIndex:0 ofReply:0];
}

- (void)queue_populateConfiguration:(id)a3
{
  v5.receiver = self;
  v5.super_class = _HKCurrentActivitySummaryQuery;
  v4 = a3;
  [(HKQuery *)&v5 queue_populateConfiguration:v4];
  [v4 setCollectionIntervals:{self->_collectionIntervals, v5.receiver, v5.super_class}];
}

- (void)queue_queryDidDeactivate:(id)a3
{
  v5.receiver = self;
  v5.super_class = _HKCurrentActivitySummaryQuery;
  [(HKQuery *)&v5 queue_queryDidDeactivate:a3];
  updateHandler = self->_updateHandler;
  self->_updateHandler = 0;
}

- (void)queue_validate
{
  v3.receiver = self;
  v3.super_class = _HKCurrentActivitySummaryQuery;
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
    block[2] = __53___HKCurrentActivitySummaryQuery_queue_deliverError___block_invoke;
    block[3] = &unk_1E7376618;
    v9 = v5;
    block[4] = self;
    v8 = v4;
    dispatch_async(v6, block);
  }
}

- (void)_setCollectionIntervals:(id)a3
{
  v4 = a3;
  [(HKQuery *)self _throwInvalidArgumentExceptionIfHasBeenExecuted:sel__setCollectionIntervals_];
  v5 = [v4 copy];

  collectionIntervals = self->_collectionIntervals;
  self->_collectionIntervals = v5;
}

@end