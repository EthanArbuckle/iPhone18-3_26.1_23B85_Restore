@interface _HKCurrentActivitySummaryQuery
+ (void)configureClientInterface:(id)interface;
- (_HKCurrentActivitySummaryQuery)initWithUpdateHandler:(id)handler;
- (void)_setCollectionIntervals:(id)intervals;
- (void)client_deliverActivitySummaries:(id)summaries queryUUID:(id)d;
- (void)queue_deliverError:(id)error;
- (void)queue_populateConfiguration:(id)configuration;
- (void)queue_queryDidDeactivate:(id)deactivate;
- (void)queue_validate;
@end

@implementation _HKCurrentActivitySummaryQuery

- (_HKCurrentActivitySummaryQuery)initWithUpdateHandler:(id)handler
{
  handlerCopy = handler;
  v5 = +[HKObjectType activitySummaryType];
  v10.receiver = self;
  v10.super_class = _HKCurrentActivitySummaryQuery;
  v6 = [(HKQuery *)&v10 _initWithObjectType:v5 predicate:0];

  if (v6)
  {
    v7 = [handlerCopy copy];
    updateHandler = v6->_updateHandler;
    v6->_updateHandler = v7;
  }

  return v6;
}

- (void)client_deliverActivitySummaries:(id)summaries queryUUID:(id)d
{
  summariesCopy = summaries;
  dCopy = d;
  queue = [(HKQuery *)self queue];
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __76___HKCurrentActivitySummaryQuery_client_deliverActivitySummaries_queryUUID___block_invoke;
  block[3] = &unk_1E7376640;
  block[4] = self;
  v12 = summariesCopy;
  v13 = dCopy;
  v9 = dCopy;
  v10 = summariesCopy;
  dispatch_async(queue, block);
}

+ (void)configureClientInterface:(id)interface
{
  interfaceCopy = interface;
  v6.receiver = self;
  v6.super_class = &OBJC_METACLASS____HKCurrentActivitySummaryQuery;
  objc_msgSendSuper2(&v6, sel_configureClientInterface_, interfaceCopy);
  v5 = [interfaceCopy hk_setArrayOfClass:objc_opt_class() forSelector:sel_client_deliverActivitySummaries_queryUUID_ argumentIndex:0 ofReply:0];
}

- (void)queue_populateConfiguration:(id)configuration
{
  v5.receiver = self;
  v5.super_class = _HKCurrentActivitySummaryQuery;
  configurationCopy = configuration;
  [(HKQuery *)&v5 queue_populateConfiguration:configurationCopy];
  [configurationCopy setCollectionIntervals:{self->_collectionIntervals, v5.receiver, v5.super_class}];
}

- (void)queue_queryDidDeactivate:(id)deactivate
{
  v5.receiver = self;
  v5.super_class = _HKCurrentActivitySummaryQuery;
  [(HKQuery *)&v5 queue_queryDidDeactivate:deactivate];
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

- (void)queue_deliverError:(id)error
{
  errorCopy = error;
  v5 = _Block_copy(self->_updateHandler);
  if (v5)
  {
    clientQueue = [(HKQuery *)self clientQueue];
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __53___HKCurrentActivitySummaryQuery_queue_deliverError___block_invoke;
    block[3] = &unk_1E7376618;
    v9 = v5;
    block[4] = self;
    v8 = errorCopy;
    dispatch_async(clientQueue, block);
  }
}

- (void)_setCollectionIntervals:(id)intervals
{
  intervalsCopy = intervals;
  [(HKQuery *)self _throwInvalidArgumentExceptionIfHasBeenExecuted:sel__setCollectionIntervals_];
  v5 = [intervalsCopy copy];

  collectionIntervals = self->_collectionIntervals;
  self->_collectionIntervals = v5;
}

@end