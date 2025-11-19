@interface HKNotificationInstructionDiagnosticQuery
+ (void)configureClientInterface:(id)a3;
- (HKNotificationInstructionDiagnosticQuery)initWithResultsHandler:(id)a3;
- (void)_queue_deliverResultsForQueryUUID:(uint64_t)a1;
- (void)client_deliverNotificationInstructions:(id)a3 clearPending:(BOOL)a4 isFinalBatch:(BOOL)a5 queryUUID:(id)a6;
- (void)queue_deliverError:(id)a3;
- (void)queue_queryDidDeactivate:(id)a3;
@end

@implementation HKNotificationInstructionDiagnosticQuery

- (HKNotificationInstructionDiagnosticQuery)initWithResultsHandler:(id)a3
{
  v4 = a3;
  v9.receiver = self;
  v9.super_class = HKNotificationInstructionDiagnosticQuery;
  v5 = [(HKQuery *)&v9 _initWithObjectType:0 predicate:0];
  if (v5)
  {
    v6 = [v4 copy];
    queue_resultsHandler = v5->_queue_resultsHandler;
    v5->_queue_resultsHandler = v6;
  }

  return v5;
}

- (void)client_deliverNotificationInstructions:(id)a3 clearPending:(BOOL)a4 isFinalBatch:(BOOL)a5 queryUUID:(id)a6
{
  v10 = a3;
  v11 = a6;
  v12 = [(HKQuery *)self queue];
  v15[0] = MEMORY[0x1E69E9820];
  v15[1] = 3221225472;
  v15[2] = __119__HKNotificationInstructionDiagnosticQuery_client_deliverNotificationInstructions_clearPending_isFinalBatch_queryUUID___block_invoke;
  v15[3] = &unk_1E7379FC0;
  v18 = a4;
  v15[4] = self;
  v16 = v10;
  v19 = a5;
  v17 = v11;
  v13 = v11;
  v14 = v10;
  dispatch_async(v12, v15);
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

- (void)queue_deliverError:(id)a3
{
  v4 = a3;
  v5 = [self->_queue_resultsHandler copy];
  if (v5)
  {
    v6 = [(HKQuery *)self clientQueue];
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __63__HKNotificationInstructionDiagnosticQuery_queue_deliverError___block_invoke;
    block[3] = &unk_1E7376618;
    v9 = v5;
    block[4] = self;
    v8 = v4;
    dispatch_async(v6, block);
  }
}

- (void)queue_queryDidDeactivate:(id)a3
{
  v5.receiver = self;
  v5.super_class = HKNotificationInstructionDiagnosticQuery;
  [(HKQuery *)&v5 queue_queryDidDeactivate:a3];
  queue_resultsHandler = self->_queue_resultsHandler;
  self->_queue_resultsHandler = 0;
}

+ (void)configureClientInterface:(id)a3
{
  v5.receiver = a1;
  v5.super_class = &OBJC_METACLASS___HKNotificationInstructionDiagnosticQuery;
  v3 = a3;
  objc_msgSendSuper2(&v5, sel_configureClientInterface_, v3);
  v4 = [MEMORY[0x1E695DFD8] hk_typesForArrayOf:{objc_opt_class(), v5.receiver, v5.super_class}];
  [v3 setClasses:v4 forSelector:sel_client_deliverNotificationInstructions_clearPending_isFinalBatch_queryUUID_ argumentIndex:0 ofReply:0];
}

- (void)_queue_deliverResultsForQueryUUID:(uint64_t)a1
{
  v3 = a2;
  if (a1)
  {
    v4 = [a1 queue];
    dispatch_assert_queue_V2(v4);

    v5 = [*(a1 + 160) copy];
    v6 = *(a1 + 160);
    *(a1 + 160) = 0;

    v7 = _Block_copy(*(a1 + 152));
    v8 = v7;
    if (v7)
    {
      v9[0] = MEMORY[0x1E69E9820];
      v9[1] = 3221225472;
      v9[2] = __78__HKNotificationInstructionDiagnosticQuery__queue_deliverResultsForQueryUUID___block_invoke;
      v9[3] = &unk_1E7376618;
      v11 = v7;
      v9[4] = a1;
      v10 = v5;
      [a1 queue_dispatchToClientForUUID:v3 shouldDeactivate:1 block:v9];
    }
  }
}

@end