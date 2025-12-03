@interface HKSharedSummaryTransactionQuery
+ (void)configureClientInterface:(id)interface;
- (HKSharedSummaryTransactionQuery)initWithCommittedTransactions:(BOOL)transactions handler:(id)handler;
- (void)client_deliverTransactions:(id)transactions query:(id)query;
- (void)queue_deliverError:(id)error;
- (void)queue_populateConfiguration:(id)configuration;
- (void)queue_queryDidDeactivate:(id)deactivate;
- (void)setUpdateHandler:(id)handler;
@end

@implementation HKSharedSummaryTransactionQuery

- (HKSharedSummaryTransactionQuery)initWithCommittedTransactions:(BOOL)transactions handler:(id)handler
{
  handlerCopy = handler;
  v11.receiver = self;
  v11.super_class = HKSharedSummaryTransactionQuery;
  v7 = [(HKQuery *)&v11 _initWithObjectType:0 predicate:0];
  if (v7)
  {
    v8 = [handlerCopy copy];
    initialHandler = v7->_initialHandler;
    v7->_initialHandler = v8;

    v7->_committedTransactions = transactions;
  }

  return v7;
}

- (void)setUpdateHandler:(id)handler
{
  handlerCopy = handler;
  if (!self->_committedTransactions)
  {
    [MEMORY[0x1E695DF30] raise:*MEMORY[0x1E695D940] format:{@"%@ does not support updates for non-committed transactions", objc_opt_class()}];
  }

  [(HKQuery *)self _throwInvalidArgumentExceptionIfHasBeenExecuted:a2];
  queue = [(HKQuery *)self queue];
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __52__HKSharedSummaryTransactionQuery_setUpdateHandler___block_invoke;
  block[3] = &unk_1E73765F0;
  block[4] = self;
  v9 = handlerCopy;
  v7 = handlerCopy;
  dispatch_sync(queue, block);
}

uint64_t __52__HKSharedSummaryTransactionQuery_setUpdateHandler___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 40) copy];
  v3 = *(a1 + 32);
  v4 = *(v3 + 168);
  *(v3 + 168) = v2;

  return MEMORY[0x1EEE66BB8]();
}

+ (void)configureClientInterface:(id)interface
{
  interfaceCopy = interface;
  v6.receiver = self;
  v6.super_class = &OBJC_METACLASS___HKSharedSummaryTransactionQuery;
  objc_msgSendSuper2(&v6, sel_configureClientInterface_, interfaceCopy);
  v5 = [interfaceCopy hk_setArrayOfClass:objc_opt_class() forSelector:sel_client_deliverTransactions_query_ argumentIndex:0 ofReply:0];
}

- (void)queue_queryDidDeactivate:(id)deactivate
{
  v6.receiver = self;
  v6.super_class = HKSharedSummaryTransactionQuery;
  [(HKQuery *)&v6 queue_queryDidDeactivate:deactivate];
  initialHandler = self->_initialHandler;
  self->_initialHandler = 0;

  updateHandler = self->_updateHandler;
  self->_updateHandler = 0;
}

- (void)queue_populateConfiguration:(id)configuration
{
  v5.receiver = self;
  v5.super_class = HKSharedSummaryTransactionQuery;
  configurationCopy = configuration;
  [(HKQuery *)&v5 queue_populateConfiguration:configurationCopy];
  [configurationCopy setCommittedTransactions:{self->_committedTransactions, v5.receiver, v5.super_class}];
}

- (void)client_deliverTransactions:(id)transactions query:(id)query
{
  transactionsCopy = transactions;
  queryCopy = query;
  queue = [(HKQuery *)self queue];
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __68__HKSharedSummaryTransactionQuery_client_deliverTransactions_query___block_invoke;
  block[3] = &unk_1E7376640;
  block[4] = self;
  v12 = queryCopy;
  v13 = transactionsCopy;
  v9 = transactionsCopy;
  v10 = queryCopy;
  dispatch_sync(queue, block);
}

void __68__HKSharedSummaryTransactionQuery_client_deliverTransactions_query___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) queue_shouldDeactivateAfterInitialResults];
  v3 = *(a1 + 32);
  if (*(v3 + 160))
  {
    v4 = &OBJC_IVAR___HKSharedSummaryTransactionQuery__updateHandler;
  }

  else
  {
    v4 = &OBJC_IVAR___HKSharedSummaryTransactionQuery__initialHandler;
  }

  v5 = _Block_copy(*(v3 + *v4));
  v6 = v5;
  if (v5)
  {
    *(*(a1 + 32) + 160) = 1;
    v7 = *(a1 + 32);
    v8 = *(a1 + 40);
    v11[0] = MEMORY[0x1E69E9820];
    v11[1] = 3221225472;
    v11[2] = __68__HKSharedSummaryTransactionQuery_client_deliverTransactions_query___block_invoke_2;
    v11[3] = &unk_1E7376618;
    v9 = v5;
    v10 = *(a1 + 32);
    v13 = v9;
    v11[4] = v10;
    v12 = *(a1 + 48);
    [v7 queue_dispatchToClientForUUID:v8 shouldDeactivate:v2 block:v11];
  }
}

- (void)queue_deliverError:(id)error
{
  errorCopy = error;
  if (self->_initialHandlerCalled)
  {
    v5 = &OBJC_IVAR___HKSharedSummaryTransactionQuery__updateHandler;
  }

  else
  {
    v5 = &OBJC_IVAR___HKSharedSummaryTransactionQuery__initialHandler;
  }

  v6 = _Block_copy(*(&self->super.super.isa + *v5));
  if (v6)
  {
    clientQueue = [(HKQuery *)self clientQueue];
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __54__HKSharedSummaryTransactionQuery_queue_deliverError___block_invoke;
    block[3] = &unk_1E7376618;
    v10 = v6;
    block[4] = self;
    v9 = errorCopy;
    dispatch_async(clientQueue, block);
  }
}

@end