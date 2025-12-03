@interface HKActivitySummaryQuery
+ (void)configureClientInterface:(id)interface;
- (HKActivitySummaryQuery)initWithPredicate:(NSPredicate *)predicate resultsHandler:(void *)handler;
- (id)completionHandler;
- (void)client_deliverActivitySummaries:(id)summaries isFinalBatch:(BOOL)batch clearPendingBatches:(BOOL)batches queryUUID:(id)d;
- (void)queue_deliverError:(id)error;
- (void)queue_populateConfiguration:(id)configuration;
- (void)queue_queryDidDeactivate:(id)deactivate;
- (void)queue_validate;
- (void)setUpdateHandler:(void *)updateHandler;
@end

@implementation HKActivitySummaryQuery

- (HKActivitySummaryQuery)initWithPredicate:(NSPredicate *)predicate resultsHandler:(void *)handler
{
  v6 = handler;
  v7 = predicate;
  v8 = +[HKObjectType activitySummaryType];
  v14.receiver = self;
  v14.super_class = HKActivitySummaryQuery;
  v9 = [(HKQuery *)&v14 _initWithObjectType:v8 predicate:v7];

  if (v9)
  {
    v10 = [v6 copy];
    completionHandler = v9->_completionHandler;
    v9->_completionHandler = v10;

    v9->_initialHandlerCalled = 0;
    v12 = [_HKEntitlements entitlementsForCurrentTaskWithError:0];
    v9->_shouldIncludeActivitySummaryPrivateProperties = [v12 hasEntitlement:@"com.apple.private.healthkit"];

    v9->_shouldIncludeActivitySummaryStatistics = 0;
    v9->_orderByDateAscending = 1;
    v9->_limit = 0;
  }

  return v9;
}

- (void)setUpdateHandler:(void *)updateHandler
{
  v5 = updateHandler;
  [(HKQuery *)self _throwInvalidArgumentExceptionIfHasBeenExecuted:a2];
  queue = [(HKQuery *)self queue];
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __43__HKActivitySummaryQuery_setUpdateHandler___block_invoke;
  v8[3] = &unk_1E73765F0;
  v8[4] = self;
  v9 = v5;
  v7 = v5;
  dispatch_sync(queue, v8);
}

uint64_t __43__HKActivitySummaryQuery_setUpdateHandler___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 40) copy];
  v3 = *(a1 + 32);
  v4 = *(v3 + 184);
  *(v3 + 184) = v2;

  return MEMORY[0x1EEE66BB8]();
}

- (id)completionHandler
{
  v2 = _Block_copy(self->_completionHandler);

  return v2;
}

- (void)client_deliverActivitySummaries:(id)summaries isFinalBatch:(BOOL)batch clearPendingBatches:(BOOL)batches queryUUID:(id)d
{
  summariesCopy = summaries;
  dCopy = d;
  queue = [(HKQuery *)self queue];
  v15[0] = MEMORY[0x1E69E9820];
  v15[1] = 3221225472;
  v15[2] = __101__HKActivitySummaryQuery_client_deliverActivitySummaries_isFinalBatch_clearPendingBatches_queryUUID___block_invoke;
  v15[3] = &unk_1E7379FC0;
  batchesCopy = batches;
  v15[4] = self;
  v16 = summariesCopy;
  batchCopy = batch;
  v17 = dCopy;
  v13 = dCopy;
  v14 = summariesCopy;
  dispatch_async(queue, v15);
}

void __101__HKActivitySummaryQuery_client_deliverActivitySummaries_isFinalBatch_clearPendingBatches_queryUUID___block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = *(v2 + 152);
  v4 = _Block_copy(*(v2 + 184));
  v5 = _Block_copy(*(*(a1 + 32) + 160));
  v6 = [*(a1 + 32) queue_shouldDeactivateAfterInitialResults];
  v7 = *(*(a1 + 32) + 168);
  if (v7 && *(a1 + 56) != 1)
  {
    [v7 addObjectsFromArray:*(a1 + 40)];
  }

  else
  {
    v8 = [*(a1 + 40) mutableCopy];
    v9 = *(a1 + 32);
    v10 = *(v9 + 168);
    *(v9 + 168) = v8;
  }

  if (*(a1 + 57) == 1)
  {
    v11 = *(*(a1 + 32) + 168);
    v12 = *(a1 + 32);
    v13 = *(v12 + 168);
    *(v12 + 168) = 0;

    *(*(a1 + 32) + 152) = 1;
    v14 = *(a1 + 32);
    v15 = *(a1 + 48);
    v17[0] = MEMORY[0x1E69E9820];
    v17[1] = 3221225472;
    v17[2] = __101__HKActivitySummaryQuery_client_deliverActivitySummaries_isFinalBatch_clearPendingBatches_queryUUID___block_invoke_2;
    v17[3] = &unk_1E737E1A0;
    v21 = v3;
    v18 = v11;
    v19 = v4;
    v17[4] = *(a1 + 32);
    v20 = v5;
    v16 = v11;
    [v14 queue_dispatchToClientForUUID:v15 shouldDeactivate:v6 block:v17];
  }
}

uint64_t __101__HKActivitySummaryQuery_client_deliverActivitySummaries_isFinalBatch_clearPendingBatches_queryUUID___block_invoke_2(uint64_t result)
{
  if (*(result + 64) == 1)
  {
    v1 = *(result + 48);
    if (!v1)
    {
      return result;
    }

    return (*(v1 + 16))(v1, *(result + 32), *(result + 40), 0);
  }

  v1 = *(result + 56);
  if (v1)
  {
    return (*(v1 + 16))(v1, *(result + 32), *(result + 40), 0);
  }

  return result;
}

+ (void)configureClientInterface:(id)interface
{
  interfaceCopy = interface;
  v6.receiver = self;
  v6.super_class = &OBJC_METACLASS___HKActivitySummaryQuery;
  objc_msgSendSuper2(&v6, sel_configureClientInterface_, interfaceCopy);
  v5 = [interfaceCopy hk_setArrayOfClass:objc_opt_class() forSelector:sel_client_deliverActivitySummaries_isFinalBatch_clearPendingBatches_queryUUID_ argumentIndex:0 ofReply:0];
}

- (void)queue_populateConfiguration:(id)configuration
{
  v5.receiver = self;
  v5.super_class = HKActivitySummaryQuery;
  configurationCopy = configuration;
  [(HKQuery *)&v5 queue_populateConfiguration:configurationCopy];
  [configurationCopy setShouldIncludeActivitySummaryPrivateProperties:{-[HKActivitySummaryQuery shouldIncludeActivitySummaryPrivateProperties](self, "shouldIncludeActivitySummaryPrivateProperties", v5.receiver, v5.super_class)}];
  [configurationCopy setShouldIncludeActivitySummaryStatistics:{-[HKActivitySummaryQuery shouldIncludeActivitySummaryStatistics](self, "shouldIncludeActivitySummaryStatistics")}];
  [configurationCopy setOrderByDateAscending:{-[HKActivitySummaryQuery orderByDateAscending](self, "orderByDateAscending")}];
  [configurationCopy setLimit:{-[HKActivitySummaryQuery limit](self, "limit")}];
}

- (void)queue_queryDidDeactivate:(id)deactivate
{
  v6.receiver = self;
  v6.super_class = HKActivitySummaryQuery;
  [(HKQuery *)&v6 queue_queryDidDeactivate:deactivate];
  completionHandler = self->_completionHandler;
  self->_completionHandler = 0;

  updateHandler = self->_updateHandler;
  self->_updateHandler = 0;
}

- (void)queue_validate
{
  v3.receiver = self;
  v3.super_class = HKActivitySummaryQuery;
  [(HKQuery *)&v3 queue_validate];
  if (!self->_completionHandler)
  {
    [MEMORY[0x1E695DF30] raise:@"HKQueryValidationFailureException" format:{@"%@ completionHandler cannot be nil", objc_opt_class()}];
  }
}

- (void)queue_deliverError:(id)error
{
  errorCopy = error;
  v5 = _Block_copy(self->_updateHandler);
  v6 = _Block_copy(self->_completionHandler);
  if (HKProgramSDKAtLeast())
  {
    initialHandlerCalled = self->_initialHandlerCalled;
    self->_initialHandlerCalled = 1;
    clientQueue = [(HKQuery *)self clientQueue];
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __45__HKActivitySummaryQuery_queue_deliverError___block_invoke;
    block[3] = &unk_1E737E1A0;
    v19 = initialHandlerCalled;
    v9 = &v17;
    v17 = v5;
    block[4] = self;
    v10 = &v16;
    v16 = errorCopy;
    v18 = v6;
    dispatch_async(clientQueue, block);

    clientQueue2 = v18;
LABEL_5:

    goto LABEL_6;
  }

  if (v6)
  {
    clientQueue2 = [(HKQuery *)self clientQueue];
    v12[0] = MEMORY[0x1E69E9820];
    v12[1] = 3221225472;
    v12[2] = __45__HKActivitySummaryQuery_queue_deliverError___block_invoke_2;
    v12[3] = &unk_1E7376618;
    v9 = &v14;
    v14 = v6;
    v12[4] = self;
    v10 = &v13;
    v13 = errorCopy;
    dispatch_async(clientQueue2, v12);
    goto LABEL_5;
  }

LABEL_6:
}

uint64_t __45__HKActivitySummaryQuery_queue_deliverError___block_invoke(uint64_t result)
{
  if (*(result + 64) == 1)
  {
    v1 = *(result + 48);
    if (!v1)
    {
      return result;
    }

    return (*(v1 + 16))(v1, *(result + 32), 0, *(result + 40));
  }

  v1 = *(result + 56);
  if (v1)
  {
    return (*(v1 + 16))(v1, *(result + 32), 0, *(result + 40));
  }

  return result;
}

@end