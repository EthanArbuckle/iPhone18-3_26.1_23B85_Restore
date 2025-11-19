@interface HKUserDomainConceptQuery
+ (void)configureClientInterface:(id)a3;
- (HKUserDomainConceptQuery)initWithPredicate:(id)a3 anchor:(id)a4 limit:(unint64_t)a5 sortDescriptors:(id)a6 batchHandler:(id)a7;
- (HKUserDomainConceptQuery)initWithPredicate:(id)a3 anchor:(id)a4 limit:(unint64_t)a5 sortDescriptors:(id)a6 resultsHandler:(id)a7;
- (void)_enumerateResultsWithHandler:(id)a3 handler:(id)a4;
- (void)client_deliverResults:(id)a3 queryUUID:(id)a4;
- (void)queue_deliverError:(id)a3;
- (void)queue_populateConfiguration:(id)a3;
- (void)queue_queryDidDeactivate:(id)a3;
- (void)queue_validate;
@end

@implementation HKUserDomainConceptQuery

- (HKUserDomainConceptQuery)initWithPredicate:(id)a3 anchor:(id)a4 limit:(unint64_t)a5 sortDescriptors:(id)a6 resultsHandler:(id)a7
{
  v12 = a7;
  v16[0] = MEMORY[0x1E69E9820];
  v16[1] = 3221225472;
  v16[2] = __90__HKUserDomainConceptQuery_initWithPredicate_anchor_limit_sortDescriptors_resultsHandler___block_invoke;
  v16[3] = &unk_1E737CF80;
  v17 = v12;
  v13 = v12;
  v14 = [(HKUserDomainConceptQuery *)self initWithPredicate:a3 anchor:a4 limit:a5 sortDescriptors:a6 batchHandler:v16];

  return v14;
}

uint64_t __90__HKUserDomainConceptQuery_initWithPredicate_anchor_limit_sortDescriptors_resultsHandler___block_invoke(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5 = *(a1 + 32);
  if (a3)
  {
    return [a2 _enumerateResultsWithHandler:a3 handler:v5];
  }

  else
  {
    return (*(v5 + 16))(*(a1 + 32), a2, 0, 0, 1, a5);
  }
}

- (HKUserDomainConceptQuery)initWithPredicate:(id)a3 anchor:(id)a4 limit:(unint64_t)a5 sortDescriptors:(id)a6 batchHandler:(id)a7
{
  v12 = a4;
  v13 = a6;
  v14 = a7;
  v23.receiver = self;
  v23.super_class = HKUserDomainConceptQuery;
  v15 = [(HKQuery *)&v23 _initWithObjectType:0 predicate:a3];
  if (v15)
  {
    v16 = [v12 copy];
    anchor = v15->_anchor;
    v15->_anchor = v16;

    v18 = [v13 copy];
    sortDescriptors = v15->_sortDescriptors;
    v15->_sortDescriptors = v18;

    v15->_limit = a5;
    v20 = [v14 copy];
    batchHandler = v15->_batchHandler;
    v15->_batchHandler = v20;
  }

  return v15;
}

- (void)queue_populateConfiguration:(id)a3
{
  v5.receiver = self;
  v5.super_class = HKUserDomainConceptQuery;
  v4 = a3;
  [(HKQuery *)&v5 queue_populateConfiguration:v4];
  [v4 setAnchor:{self->_anchor, v5.receiver, v5.super_class}];
  [v4 setSortDescriptors:self->_sortDescriptors];
  [v4 setLimit:self->_limit];
}

+ (void)configureClientInterface:(id)a3
{
  v4 = a3;
  v6.receiver = a1;
  v6.super_class = &OBJC_METACLASS___HKUserDomainConceptQuery;
  objc_msgSendSuper2(&v6, sel_configureClientInterface_, v4);
  v5 = [v4 hk_setArrayOfClass:objc_opt_class() forSelector:sel_client_deliverResults_queryUUID_ argumentIndex:0 ofReply:0];
}

- (void)queue_deliverError:(id)a3
{
  v4 = a3;
  v10[0] = 0;
  v10[1] = v10;
  v10[2] = 0x3032000000;
  v10[3] = __Block_byref_object_copy__17;
  v10[4] = __Block_byref_object_dispose__17;
  v11 = _Block_copy(self->_batchHandler);
  v5 = [(HKQuery *)self clientQueue];
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __47__HKUserDomainConceptQuery_queue_deliverError___block_invoke;
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
  v3.super_class = HKUserDomainConceptQuery;
  [(HKQuery *)&v3 queue_validate];
  if (!self->_batchHandler)
  {
    [MEMORY[0x1E695DF30] raise:@"HKQueryValidationFailureException" format:{@"%@ handler must not be nil", objc_opt_class()}];
  }
}

- (void)queue_queryDidDeactivate:(id)a3
{
  v5.receiver = self;
  v5.super_class = HKUserDomainConceptQuery;
  [(HKQuery *)&v5 queue_queryDidDeactivate:a3];
  batchHandler = self->_batchHandler;
  self->_batchHandler = 0;
}

- (void)client_deliverResults:(id)a3 queryUUID:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [(HKQuery *)self queue];
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __60__HKUserDomainConceptQuery_client_deliverResults_queryUUID___block_invoke;
  block[3] = &unk_1E7376640;
  block[4] = self;
  v12 = v7;
  v13 = v6;
  v9 = v6;
  v10 = v7;
  dispatch_async(v8, block);
}

void __60__HKUserDomainConceptQuery_client_deliverResults_queryUUID___block_invoke(uint64_t a1)
{
  v2 = _Block_copy(*(*(a1 + 32) + 176));
  v3 = v2;
  if (v2)
  {
    v4 = *(a1 + 32);
    v5 = *(a1 + 40);
    v8[0] = MEMORY[0x1E69E9820];
    v8[1] = 3221225472;
    v8[2] = __60__HKUserDomainConceptQuery_client_deliverResults_queryUUID___block_invoke_2;
    v8[3] = &unk_1E7376618;
    v6 = v2;
    v7 = *(a1 + 32);
    v10 = v6;
    v8[4] = v7;
    v9 = *(a1 + 48);
    [v4 queue_dispatchToClientForUUID:v5 shouldDeactivate:1 block:v8];
  }
}

- (void)_enumerateResultsWithHandler:(id)a3 handler:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [v6 count];
  if (v8)
  {
    v9 = v8;
    v10 = [(HKQuery *)self deactivateCallCount];
    v11[0] = MEMORY[0x1E69E9820];
    v11[1] = 3221225472;
    v11[2] = __65__HKUserDomainConceptQuery__enumerateResultsWithHandler_handler___block_invoke;
    v11[3] = &unk_1E737CFA8;
    v11[4] = self;
    v13 = v10;
    v14 = v9;
    v12 = v7;
    [v6 enumerateObjectsUsingBlock:v11];
  }

  else
  {
    (*(v7 + 2))(v7, self, 0, 0, 1, 0);
  }
}

void __65__HKUserDomainConceptQuery__enumerateResultsWithHandler_handler___block_invoke(uint64_t a1, void *a2, uint64_t a3, _BYTE *a4)
{
  v14 = a2;
  v7 = objc_autoreleasePoolPush();
  if ([*(a1 + 32) deactivateCallCount] <= *(a1 + 48))
  {
    v8 = *(a1 + 56) - 1 == a3;
    v11 = a1 + 32;
    v9 = *(a1 + 32);
    v10 = *(v11 + 8);
    v12 = [v14 userConcept];
    v13 = [v14 anchor];
    (*(v10 + 16))(v10, v9, v12, v13, v8, 0);
  }

  else
  {
    *a4 = 1;
  }

  objc_autoreleasePoolPop(v7);
}

@end