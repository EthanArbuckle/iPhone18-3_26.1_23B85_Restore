@interface HKUserAnnotatedMedicationQuery
+ (void)configureClientInterface:(id)a3;
- (HKUserAnnotatedMedicationQuery)initWithPredicate:(id)a3 limit:(unint64_t)a4 batchHandler:(id)a5;
- (HKUserAnnotatedMedicationQuery)initWithPredicate:(id)a3 limit:(unint64_t)a4 resultsHandler:(id)a5;
- (void)_enumerateUserAnnotatedMedicationsWithHandler:(id)a3 handler:(id)a4;
- (void)client_deliverUserAnnotatedMedications:(id)a3 queryUUID:(id)a4;
- (void)queue_deliverError:(id)a3;
- (void)queue_populateConfiguration:(id)a3;
- (void)queue_queryDidDeactivate:(id)a3;
- (void)queue_validate;
@end

@implementation HKUserAnnotatedMedicationQuery

- (HKUserAnnotatedMedicationQuery)initWithPredicate:(id)a3 limit:(unint64_t)a4 resultsHandler:(id)a5
{
  v8 = a5;
  v12[0] = MEMORY[0x1E69E9820];
  v12[1] = 3221225472;
  v12[2] = __73__HKUserAnnotatedMedicationQuery_initWithPredicate_limit_resultsHandler___block_invoke;
  v12[3] = &unk_1E7378258;
  v13 = v8;
  v9 = v8;
  v10 = [(HKUserAnnotatedMedicationQuery *)self initWithPredicate:a3 limit:a4 batchHandler:v12];

  return v10;
}

uint64_t __73__HKUserAnnotatedMedicationQuery_initWithPredicate_limit_resultsHandler___block_invoke(uint64_t a1, void *a2, uint64_t a3)
{
  v3 = *(a1 + 32);
  if (a3)
  {
    return [a2 _enumerateUserAnnotatedMedicationsWithHandler:a3 handler:v3];
  }

  else
  {
    return (*(v3 + 16))(*(a1 + 32), a2, 0, 1);
  }
}

- (HKUserAnnotatedMedicationQuery)initWithPredicate:(id)a3 limit:(unint64_t)a4 batchHandler:(id)a5
{
  v8 = a5;
  v9 = a3;
  v10 = +[HKObjectType userAnnotatedMedicationType];
  v15.receiver = self;
  v15.super_class = HKUserAnnotatedMedicationQuery;
  v11 = [(HKQuery *)&v15 _initWithObjectType:v10 predicate:v9];

  if (v11)
  {
    v11->_limit = a4;
    v12 = [v8 copy];
    batchHandler = v11->_batchHandler;
    v11->_batchHandler = v12;
  }

  return v11;
}

- (void)queue_populateConfiguration:(id)a3
{
  v5.receiver = self;
  v5.super_class = HKUserAnnotatedMedicationQuery;
  v4 = a3;
  [(HKQuery *)&v5 queue_populateConfiguration:v4];
  [v4 setLimit:{self->_limit, v5.receiver, v5.super_class}];
}

+ (void)configureClientInterface:(id)a3
{
  v4 = a3;
  v6.receiver = a1;
  v6.super_class = &OBJC_METACLASS___HKUserAnnotatedMedicationQuery;
  objc_msgSendSuper2(&v6, sel_configureClientInterface_, v4);
  v5 = [v4 hk_setArrayOfClass:objc_opt_class() forSelector:sel_client_deliverUserAnnotatedMedications_queryUUID_ argumentIndex:0 ofReply:0];
}

- (void)queue_deliverError:(id)a3
{
  v4 = a3;
  v10[0] = 0;
  v10[1] = v10;
  v10[2] = 0x3032000000;
  v10[3] = __Block_byref_object_copy__0;
  v10[4] = __Block_byref_object_dispose__0;
  v11 = _Block_copy(self->_batchHandler);
  v5 = [(HKQuery *)self clientQueue];
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __53__HKUserAnnotatedMedicationQuery_queue_deliverError___block_invoke;
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
  v3.super_class = HKUserAnnotatedMedicationQuery;
  [(HKQuery *)&v3 queue_validate];
  if (!self->_batchHandler)
  {
    [MEMORY[0x1E695DF30] raise:@"HKQueryValidationFailureException" format:{@"%@ handler must not be nil", objc_opt_class()}];
  }
}

- (void)queue_queryDidDeactivate:(id)a3
{
  v5.receiver = self;
  v5.super_class = HKUserAnnotatedMedicationQuery;
  [(HKQuery *)&v5 queue_queryDidDeactivate:a3];
  batchHandler = self->_batchHandler;
  self->_batchHandler = 0;
}

- (void)client_deliverUserAnnotatedMedications:(id)a3 queryUUID:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [(HKQuery *)self queue];
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __83__HKUserAnnotatedMedicationQuery_client_deliverUserAnnotatedMedications_queryUUID___block_invoke;
  block[3] = &unk_1E7376640;
  block[4] = self;
  v12 = v7;
  v13 = v6;
  v9 = v6;
  v10 = v7;
  dispatch_async(v8, block);
}

void __83__HKUserAnnotatedMedicationQuery_client_deliverUserAnnotatedMedications_queryUUID___block_invoke(uint64_t a1)
{
  v2 = _Block_copy(*(*(a1 + 32) + 160));
  v3 = v2;
  if (v2)
  {
    v4 = *(a1 + 32);
    v5 = *(a1 + 40);
    v8[0] = MEMORY[0x1E69E9820];
    v8[1] = 3221225472;
    v8[2] = __83__HKUserAnnotatedMedicationQuery_client_deliverUserAnnotatedMedications_queryUUID___block_invoke_2;
    v8[3] = &unk_1E7376618;
    v6 = v2;
    v7 = *(a1 + 32);
    v10 = v6;
    v8[4] = v7;
    v9 = *(a1 + 48);
    [v4 queue_dispatchToClientForUUID:v5 shouldDeactivate:1 block:v8];
  }
}

- (void)_enumerateUserAnnotatedMedicationsWithHandler:(id)a3 handler:(id)a4
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
    v11[2] = __88__HKUserAnnotatedMedicationQuery__enumerateUserAnnotatedMedicationsWithHandler_handler___block_invoke;
    v11[3] = &unk_1E73782A8;
    v11[4] = self;
    v13 = v10;
    v14 = v9;
    v12 = v7;
    [v6 enumerateObjectsUsingBlock:v11];
  }

  else
  {
    (*(v7 + 2))(v7, self, 0, 1, 0);
  }
}

void __88__HKUserAnnotatedMedicationQuery__enumerateUserAnnotatedMedicationsWithHandler_handler___block_invoke(uint64_t a1, void *a2, uint64_t a3, _BYTE *a4)
{
  v10 = a2;
  v7 = objc_autoreleasePoolPush();
  if ([*(a1 + 32) deactivateCallCount] <= *(a1 + 48))
  {
    v8 = *(a1 + 56) - 1 == a3;
    v9 = *(a1 + 32);
    (*(*(a1 + 40) + 16))();
  }

  else
  {
    *a4 = 1;
  }

  objc_autoreleasePoolPop(v7);
}

@end