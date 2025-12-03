@interface HKNotificationInstructionDiagnosticQuery
+ (void)configureClientInterface:(id)interface;
- (HKNotificationInstructionDiagnosticQuery)initWithResultsHandler:(id)handler;
- (void)_queue_deliverResultsForQueryUUID:(uint64_t)d;
- (void)client_deliverNotificationInstructions:(id)instructions clearPending:(BOOL)pending isFinalBatch:(BOOL)batch queryUUID:(id)d;
- (void)queue_deliverError:(id)error;
- (void)queue_queryDidDeactivate:(id)deactivate;
@end

@implementation HKNotificationInstructionDiagnosticQuery

- (HKNotificationInstructionDiagnosticQuery)initWithResultsHandler:(id)handler
{
  handlerCopy = handler;
  v9.receiver = self;
  v9.super_class = HKNotificationInstructionDiagnosticQuery;
  v5 = [(HKQuery *)&v9 _initWithObjectType:0 predicate:0];
  if (v5)
  {
    v6 = [handlerCopy copy];
    queue_resultsHandler = v5->_queue_resultsHandler;
    v5->_queue_resultsHandler = v6;
  }

  return v5;
}

- (void)client_deliverNotificationInstructions:(id)instructions clearPending:(BOOL)pending isFinalBatch:(BOOL)batch queryUUID:(id)d
{
  instructionsCopy = instructions;
  dCopy = d;
  queue = [(HKQuery *)self queue];
  v15[0] = MEMORY[0x1E69E9820];
  v15[1] = 3221225472;
  v15[2] = __119__HKNotificationInstructionDiagnosticQuery_client_deliverNotificationInstructions_clearPending_isFinalBatch_queryUUID___block_invoke;
  v15[3] = &unk_1E7379FC0;
  pendingCopy = pending;
  v15[4] = self;
  v16 = instructionsCopy;
  batchCopy = batch;
  v17 = dCopy;
  v13 = dCopy;
  v14 = instructionsCopy;
  dispatch_async(queue, v15);
}

void __119__HKNotificationInstructionDiagnosticQuery_client_deliverNotificationInstructions_clearPending_isFinalBatch_queryUUID___block_invoke(uint64_t a1)
{
  v2 = *(*(a1 + 32) + 160);
  if (v2 && *(a1 + 56) != 1)
  {
    [v2 addObjectsFromArray:*(a1 + 40)];
  }

  else
  {
    v3 = [*(a1 + 40) mutableCopy];
    v4 = *(a1 + 32);
    v5 = *(v4 + 160);
    *(v4 + 160) = v3;
  }

  if (*(a1 + 57) == 1)
  {
    v6 = *(a1 + 32);
    v7 = *(a1 + 48);

    [(HKNotificationInstructionDiagnosticQuery *)v6 _queue_deliverResultsForQueryUUID:v7];
  }
}

- (void)queue_deliverError:(id)error
{
  errorCopy = error;
  v5 = [self->_queue_resultsHandler copy];
  if (v5)
  {
    clientQueue = [(HKQuery *)self clientQueue];
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __63__HKNotificationInstructionDiagnosticQuery_queue_deliverError___block_invoke;
    block[3] = &unk_1E7376618;
    v9 = v5;
    block[4] = self;
    v8 = errorCopy;
    dispatch_async(clientQueue, block);
  }
}

- (void)queue_queryDidDeactivate:(id)deactivate
{
  v5.receiver = self;
  v5.super_class = HKNotificationInstructionDiagnosticQuery;
  [(HKQuery *)&v5 queue_queryDidDeactivate:deactivate];
  queue_resultsHandler = self->_queue_resultsHandler;
  self->_queue_resultsHandler = 0;
}

+ (void)configureClientInterface:(id)interface
{
  v5.receiver = self;
  v5.super_class = &OBJC_METACLASS___HKNotificationInstructionDiagnosticQuery;
  interfaceCopy = interface;
  objc_msgSendSuper2(&v5, sel_configureClientInterface_, interfaceCopy);
  v4 = [MEMORY[0x1E695DFD8] hk_typesForArrayOf:{objc_opt_class(), v5.receiver, v5.super_class}];
  [interfaceCopy setClasses:v4 forSelector:sel_client_deliverNotificationInstructions_clearPending_isFinalBatch_queryUUID_ argumentIndex:0 ofReply:0];
}

- (void)_queue_deliverResultsForQueryUUID:(uint64_t)d
{
  v3 = a2;
  if (d)
  {
    queue = [d queue];
    dispatch_assert_queue_V2(queue);

    v5 = [*(d + 160) copy];
    v6 = *(d + 160);
    *(d + 160) = 0;

    v7 = _Block_copy(*(d + 152));
    v8 = v7;
    if (v7)
    {
      v9[0] = MEMORY[0x1E69E9820];
      v9[1] = 3221225472;
      v9[2] = __78__HKNotificationInstructionDiagnosticQuery__queue_deliverResultsForQueryUUID___block_invoke;
      v9[3] = &unk_1E7376618;
      v11 = v7;
      v9[4] = d;
      v10 = v5;
      [d queue_dispatchToClientForUUID:v3 shouldDeactivate:1 block:v9];
    }
  }
}

@end