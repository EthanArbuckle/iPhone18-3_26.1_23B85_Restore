@interface HKUserAnnotatedMedicationQuery
+ (void)configureClientInterface:(id)interface;
- (HKUserAnnotatedMedicationQuery)initWithPredicate:(id)predicate limit:(unint64_t)limit batchHandler:(id)handler;
- (HKUserAnnotatedMedicationQuery)initWithPredicate:(id)predicate limit:(unint64_t)limit resultsHandler:(id)handler;
- (void)_enumerateUserAnnotatedMedicationsWithHandler:(id)handler handler:(id)a4;
- (void)client_deliverUserAnnotatedMedications:(id)medications queryUUID:(id)d;
- (void)queue_deliverError:(id)error;
- (void)queue_populateConfiguration:(id)configuration;
- (void)queue_queryDidDeactivate:(id)deactivate;
- (void)queue_validate;
@end

@implementation HKUserAnnotatedMedicationQuery

- (HKUserAnnotatedMedicationQuery)initWithPredicate:(id)predicate limit:(unint64_t)limit resultsHandler:(id)handler
{
  handlerCopy = handler;
  v12[0] = MEMORY[0x1E69E9820];
  v12[1] = 3221225472;
  v12[2] = __73__HKUserAnnotatedMedicationQuery_initWithPredicate_limit_resultsHandler___block_invoke;
  v12[3] = &unk_1E7378258;
  v13 = handlerCopy;
  v9 = handlerCopy;
  v10 = [(HKUserAnnotatedMedicationQuery *)self initWithPredicate:predicate limit:limit batchHandler:v12];

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

- (HKUserAnnotatedMedicationQuery)initWithPredicate:(id)predicate limit:(unint64_t)limit batchHandler:(id)handler
{
  handlerCopy = handler;
  predicateCopy = predicate;
  v10 = +[HKObjectType userAnnotatedMedicationType];
  v15.receiver = self;
  v15.super_class = HKUserAnnotatedMedicationQuery;
  v11 = [(HKQuery *)&v15 _initWithObjectType:v10 predicate:predicateCopy];

  if (v11)
  {
    v11->_limit = limit;
    v12 = [handlerCopy copy];
    batchHandler = v11->_batchHandler;
    v11->_batchHandler = v12;
  }

  return v11;
}

- (void)queue_populateConfiguration:(id)configuration
{
  v5.receiver = self;
  v5.super_class = HKUserAnnotatedMedicationQuery;
  configurationCopy = configuration;
  [(HKQuery *)&v5 queue_populateConfiguration:configurationCopy];
  [configurationCopy setLimit:{self->_limit, v5.receiver, v5.super_class}];
}

+ (void)configureClientInterface:(id)interface
{
  interfaceCopy = interface;
  v6.receiver = self;
  v6.super_class = &OBJC_METACLASS___HKUserAnnotatedMedicationQuery;
  objc_msgSendSuper2(&v6, sel_configureClientInterface_, interfaceCopy);
  v5 = [interfaceCopy hk_setArrayOfClass:objc_opt_class() forSelector:sel_client_deliverUserAnnotatedMedications_queryUUID_ argumentIndex:0 ofReply:0];
}

- (void)queue_deliverError:(id)error
{
  errorCopy = error;
  v10[0] = 0;
  v10[1] = v10;
  v10[2] = 0x3032000000;
  v10[3] = __Block_byref_object_copy__0;
  v10[4] = __Block_byref_object_dispose__0;
  v11 = _Block_copy(self->_batchHandler);
  clientQueue = [(HKQuery *)self clientQueue];
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __53__HKUserAnnotatedMedicationQuery_queue_deliverError___block_invoke;
  block[3] = &unk_1E7378280;
  v8 = errorCopy;
  v9 = v10;
  block[4] = self;
  v6 = errorCopy;
  dispatch_async(clientQueue, block);

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

- (void)queue_queryDidDeactivate:(id)deactivate
{
  v5.receiver = self;
  v5.super_class = HKUserAnnotatedMedicationQuery;
  [(HKQuery *)&v5 queue_queryDidDeactivate:deactivate];
  batchHandler = self->_batchHandler;
  self->_batchHandler = 0;
}

- (void)client_deliverUserAnnotatedMedications:(id)medications queryUUID:(id)d
{
  medicationsCopy = medications;
  dCopy = d;
  queue = [(HKQuery *)self queue];
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __83__HKUserAnnotatedMedicationQuery_client_deliverUserAnnotatedMedications_queryUUID___block_invoke;
  block[3] = &unk_1E7376640;
  block[4] = self;
  v12 = dCopy;
  v13 = medicationsCopy;
  v9 = medicationsCopy;
  v10 = dCopy;
  dispatch_async(queue, block);
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

- (void)_enumerateUserAnnotatedMedicationsWithHandler:(id)handler handler:(id)a4
{
  handlerCopy = handler;
  v7 = a4;
  v8 = [handlerCopy count];
  if (v8)
  {
    v9 = v8;
    deactivateCallCount = [(HKQuery *)self deactivateCallCount];
    v11[0] = MEMORY[0x1E69E9820];
    v11[1] = 3221225472;
    v11[2] = __88__HKUserAnnotatedMedicationQuery__enumerateUserAnnotatedMedicationsWithHandler_handler___block_invoke;
    v11[3] = &unk_1E73782A8;
    v11[4] = self;
    v13 = deactivateCallCount;
    v14 = v9;
    v12 = v7;
    [handlerCopy enumerateObjectsUsingBlock:v11];
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