@interface HKUserTrackedConceptQuery
+ (void)configureClientInterface:(id)a3;
- (HKUserTrackedConceptQuery)initWithUserTrackedConceptType:(id)a3 predicate:(id)a4 sortDescriptors:(id)a5 resultsHandler:(id)a6;
- (void)_enumerateUserTrackedConceptsWithHandler:(id)a3 handler:(id)a4;
- (void)client_deliverUserTrackedConcepts:(id)a3 queryUUID:(id)a4;
- (void)queue_deliverError:(id)a3;
- (void)queue_populateConfiguration:(id)a3;
- (void)queue_queryDidDeactivate:(id)a3;
- (void)queue_validate;
@end

@implementation HKUserTrackedConceptQuery

- (HKUserTrackedConceptQuery)initWithUserTrackedConceptType:(id)a3 predicate:(id)a4 sortDescriptors:(id)a5 resultsHandler:(id)a6
{
  v10 = a5;
  v11 = a6;
  v18.receiver = self;
  v18.super_class = HKUserTrackedConceptQuery;
  v12 = [(HKQuery *)&v18 _initWithObjectType:a3 predicate:a4];
  if (v12)
  {
    v13 = [v10 copy];
    sortDescriptors = v12->_sortDescriptors;
    v12->_sortDescriptors = v13;

    v15 = [v11 copy];
    handler = v12->_handler;
    v12->_handler = v15;
  }

  return v12;
}

- (void)client_deliverUserTrackedConcepts:(id)a3 queryUUID:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [(HKQuery *)self queue];
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __73__HKUserTrackedConceptQuery_client_deliverUserTrackedConcepts_queryUUID___block_invoke;
  block[3] = &unk_1E7376640;
  block[4] = self;
  v12 = v7;
  v13 = v6;
  v9 = v6;
  v10 = v7;
  dispatch_async(v8, block);
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

- (void)_enumerateUserTrackedConceptsWithHandler:(id)a3 handler:(id)a4
{
  v10 = a3;
  v6 = a4;
  if ([v10 count])
  {
    v7 = v6;
    v8 = self;
    v9 = v10;
  }

  else
  {
    v9 = MEMORY[0x1E695E0F0];
    v7 = v6;
    v8 = self;
  }

  (*(v6 + 2))(v7, v8, v9, 0);
}

- (void)queue_populateConfiguration:(id)a3
{
  v5.receiver = self;
  v5.super_class = HKUserTrackedConceptQuery;
  v4 = a3;
  [(HKQuery *)&v5 queue_populateConfiguration:v4];
  [v4 setSortDescriptors:{self->_sortDescriptors, v5.receiver, v5.super_class}];
}

+ (void)configureClientInterface:(id)a3
{
  v4 = a3;
  v6.receiver = a1;
  v6.super_class = &OBJC_METACLASS___HKUserTrackedConceptQuery;
  objc_msgSendSuper2(&v6, sel_configureClientInterface_, v4);
  v5 = [v4 hk_setArrayOfClass:objc_opt_class() forSelector:sel_client_deliverUserTrackedConcepts_queryUUID_ argumentIndex:0 ofReply:0];
}

- (void)queue_deliverError:(id)a3
{
  v4 = a3;
  v10[0] = 0;
  v10[1] = v10;
  v10[2] = 0x3032000000;
  v10[3] = __Block_byref_object_copy__48;
  v10[4] = __Block_byref_object_dispose__48;
  v11 = _Block_copy(self->_handler);
  v5 = [(HKQuery *)self clientQueue];
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __48__HKUserTrackedConceptQuery_queue_deliverError___block_invoke;
  block[3] = &unk_1E7378280;
  v8 = v4;
  v9 = v10;
  block[4] = self;
  v6 = v4;
  dispatch_async(v5, block);

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

- (void)queue_queryDidDeactivate:(id)a3
{
  v5.receiver = self;
  v5.super_class = HKUserTrackedConceptQuery;
  [(HKQuery *)&v5 queue_queryDidDeactivate:a3];
  handler = self->_handler;
  self->_handler = 0;
}

@end