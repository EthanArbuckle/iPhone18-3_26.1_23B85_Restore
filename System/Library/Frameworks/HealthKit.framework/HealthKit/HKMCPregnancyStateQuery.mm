@interface HKMCPregnancyStateQuery
+ (void)configureClientInterface:(id)interface;
- (HKMCPregnancyStateQuery)initWithIsRunningForMaintenance:(BOOL)maintenance updateHandler:(id)handler;
- (void)client_deliverPregnancyModel:(id)model queryUUID:(id)d;
- (void)queue_deliverError:(id)error;
- (void)queue_populateConfiguration:(id)configuration;
- (void)queue_queryDidDeactivate:(id)deactivate;
- (void)queue_validate;
@end

@implementation HKMCPregnancyStateQuery

- (HKMCPregnancyStateQuery)initWithIsRunningForMaintenance:(BOOL)maintenance updateHandler:(id)handler
{
  handlerCopy = handler;
  v11.receiver = self;
  v11.super_class = HKMCPregnancyStateQuery;
  v7 = [(HKQuery *)&v11 _initWithObjectType:0 predicate:0];
  if (v7)
  {
    v8 = [handlerCopy copy];
    updateHandler = v7->_updateHandler;
    v7->_updateHandler = v8;

    v7->_isRunningForMaintenance = maintenance;
  }

  return v7;
}

- (void)queue_populateConfiguration:(id)configuration
{
  v19 = *MEMORY[0x1E69E9840];
  v12.receiver = self;
  v12.super_class = HKMCPregnancyStateQuery;
  configurationCopy = configuration;
  [(HKQuery *)&v12 queue_populateConfiguration:configurationCopy];
  [configurationCopy setIsRunningForMaintenance:{self->_isRunningForMaintenance, v12.receiver, v12.super_class}];

  _HKInitializeLogging();
  v5 = HKLogMenstrualCycles;
  if (os_log_type_enabled(HKLogMenstrualCycles, OS_LOG_TYPE_DEFAULT))
  {
    v6 = v5;
    v7 = objc_opt_class();
    v8 = v7;
    debugIdentifier = [(HKQuery *)self debugIdentifier];
    v10 = [MEMORY[0x1E696AD98] numberWithBool:self->_isRunningForMaintenance];
    *buf = 138543874;
    v14 = v7;
    v15 = 2114;
    v16 = debugIdentifier;
    v17 = 2114;
    v18 = v10;
    _os_log_impl(&dword_19197B000, v6, OS_LOG_TYPE_DEFAULT, "[%{public}@:%{public}@] Configured to run as maintenance: %{public}@", buf, 0x20u);
  }

  v11 = *MEMORY[0x1E69E9840];
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
    block[2] = __46__HKMCPregnancyStateQuery_queue_deliverError___block_invoke;
    block[3] = &unk_1E7376618;
    v9 = v5;
    block[4] = self;
    v8 = errorCopy;
    dispatch_async(clientQueue, block);
  }
}

- (void)queue_validate
{
  v3.receiver = self;
  v3.super_class = HKMCPregnancyStateQuery;
  [(HKQuery *)&v3 queue_validate];
  if (!self->_updateHandler)
  {
    [MEMORY[0x1E695DF30] raise:@"HKQueryValidationFailureException" format:{@"%@ updateHandler must not be nil", objc_opt_class()}];
  }
}

- (void)queue_queryDidDeactivate:(id)deactivate
{
  updateHandler = self->_updateHandler;
  self->_updateHandler = 0;
  MEMORY[0x1EEE66BB8]();
}

+ (void)configureClientInterface:(id)interface
{
  v10.receiver = self;
  v10.super_class = &OBJC_METACLASS___HKMCPregnancyStateQuery;
  interfaceCopy = interface;
  objc_msgSendSuper2(&v10, sel_configureClientInterface_, interfaceCopy);
  v4 = MEMORY[0x1E695DFD8];
  v5 = objc_opt_class();
  v6 = objc_opt_class();
  v7 = objc_opt_class();
  v8 = objc_opt_class();
  v9 = [v4 setWithObjects:{v5, v6, v7, v8, objc_opt_class(), 0}];
  [interfaceCopy setClasses:v9 forSelector:sel_client_deliverPregnancyModel_queryUUID_ argumentIndex:0 ofReply:0];
}

- (void)client_deliverPregnancyModel:(id)model queryUUID:(id)d
{
  modelCopy = model;
  dCopy = d;
  queue = [(HKQuery *)self queue];
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __66__HKMCPregnancyStateQuery_client_deliverPregnancyModel_queryUUID___block_invoke;
  block[3] = &unk_1E7376640;
  block[4] = self;
  v12 = dCopy;
  v13 = modelCopy;
  v9 = modelCopy;
  v10 = dCopy;
  dispatch_async(queue, block);
}

void __66__HKMCPregnancyStateQuery_client_deliverPregnancyModel_queryUUID___block_invoke(uint64_t a1)
{
  v2 = _Block_copy(*(*(a1 + 32) + 152));
  if (v2)
  {
    v3 = *(a1 + 32);
    v4 = *(a1 + 40);
    v5[0] = MEMORY[0x1E69E9820];
    v5[1] = 3221225472;
    v5[2] = __66__HKMCPregnancyStateQuery_client_deliverPregnancyModel_queryUUID___block_invoke_2;
    v5[3] = &unk_1E73766C8;
    v5[4] = v3;
    v6 = *(a1 + 48);
    v7 = v2;
    [v3 queue_dispatchToClientForUUID:v4 shouldDeactivate:0 block:v5];
  }
}

uint64_t __66__HKMCPregnancyStateQuery_client_deliverPregnancyModel_queryUUID___block_invoke_2(void *a1)
{
  v14 = *MEMORY[0x1E69E9840];
  if (HKShowSensitiveLogItems())
  {
    _HKInitializeLogging();
    v2 = HKLogMenstrualCycles;
    if (os_log_type_enabled(HKLogMenstrualCycles, OS_LOG_TYPE_DEFAULT))
    {
      v3 = a1[4];
      v4 = v2;
      v5 = objc_opt_class();
      v6 = a1[5];
      v10 = 138543618;
      v11 = v5;
      v12 = 2112;
      v13 = v6;
      v7 = v5;
      _os_log_impl(&dword_19197B000, v4, OS_LOG_TYPE_DEFAULT, "[%{public}@] Delivering updated pregnancy model: %@", &v10, 0x16u);
    }
  }

  result = (*(a1[6] + 16))(a1[6], a1[4], a1[5], 0);
  v9 = *MEMORY[0x1E69E9840];
  return result;
}

@end