@interface HKDatabaseValidation
- (HKDatabaseValidation)initWithHealthStore:(id)store;
- (void)clientRemote_processIntegrityErrorString:(id)string errorHandlerIdentifier:(id)identifier;
- (void)clientRemote_processValidationError:(id)error errorHandlerIdentifier:(id)identifier;
- (void)clientRemote_synchronizeWithCompletion:(id)completion success:(BOOL)success error:(id)error;
- (void)connectionInvalidated;
- (void)performIntegrityCheckOnDatabase:(int64_t)database identifier:(id)identifier errorHandler:(id)handler completion:(id)completion;
- (void)validateEntitiesWithIdentifier:(id)identifier errorHandler:(id)handler completion:(id)completion;
@end

@implementation HKDatabaseValidation

- (HKDatabaseValidation)initWithHealthStore:(id)store
{
  storeCopy = store;
  v18.receiver = self;
  v18.super_class = HKDatabaseValidation;
  v6 = [(HKDatabaseValidation *)&v18 init];
  if (v6)
  {
    uUID = [MEMORY[0x1E696AFB0] UUID];
    identifier = v6->_identifier;
    v6->_identifier = uUID;

    objc_storeStrong(&v6->_healthStore, store);
    v9 = [[HKTaskServerProxyProvider alloc] initWithHealthStore:v6->_healthStore taskIdentifier:@"HKDatabaseValidationTaskServerIdentifier" exportedObject:v6 taskUUID:v6->_identifier];
    proxyProvider = v6->_proxyProvider;
    v6->_proxyProvider = v9;

    [(HKProxyProvider *)v6->_proxyProvider setShouldRetryOnInterruption:0];
    v11 = HKCreateSerialDispatchQueue(v6, @"resource");
    queue = v6->_queue;
    v6->_queue = v11;

    v13 = objc_opt_new();
    integrityErrorHandlerDict = v6->_integrityErrorHandlerDict;
    v6->_integrityErrorHandlerDict = v13;

    v15 = objc_opt_new();
    validationErrorHandlerDict = v6->_validationErrorHandlerDict;
    v6->_validationErrorHandlerDict = v15;
  }

  return v6;
}

- (void)performIntegrityCheckOnDatabase:(int64_t)database identifier:(id)identifier errorHandler:(id)handler completion:(id)completion
{
  identifierCopy = identifier;
  completionCopy = completion;
  integrityErrorHandlerDict = self->_integrityErrorHandlerDict;
  v13 = _Block_copy(handler);
  [(NSMutableDictionary *)integrityErrorHandlerDict setObject:v13 forKey:identifierCopy];

  proxyProvider = self->_proxyProvider;
  v19[0] = MEMORY[0x1E69E9820];
  v19[1] = 3221225472;
  v19[2] = __91__HKDatabaseValidation_performIntegrityCheckOnDatabase_identifier_errorHandler_completion___block_invoke;
  v19[3] = &unk_1E737A7C8;
  databaseCopy = database;
  v19[4] = self;
  v20 = identifierCopy;
  v21 = completionCopy;
  v17[0] = MEMORY[0x1E69E9820];
  v17[1] = 3221225472;
  v17[2] = __91__HKDatabaseValidation_performIntegrityCheckOnDatabase_identifier_errorHandler_completion___block_invoke_3;
  v17[3] = &unk_1E7376820;
  v17[4] = self;
  v18 = v21;
  v15 = v21;
  v16 = identifierCopy;
  [(HKProxyProvider *)proxyProvider fetchProxyWithHandler:v19 errorHandler:v17];
}

void __91__HKDatabaseValidation_performIntegrityCheckOnDatabase_identifier_errorHandler_completion___block_invoke(uint64_t a1, void *a2)
{
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __91__HKDatabaseValidation_performIntegrityCheckOnDatabase_identifier_errorHandler_completion___block_invoke_2;
  v5[3] = &unk_1E73766A0;
  v5[4] = *(a1 + 32);
  v4 = *(a1 + 56);
  v6 = *(a1 + 48);
  [a2 remote_validateDatabase:v4 clientCompletionHandler:v5 errorHandlerIdentifier:*(a1 + 40)];
}

void __91__HKDatabaseValidation_performIntegrityCheckOnDatabase_identifier_errorHandler_completion___block_invoke_2(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = *(a1 + 32);
  v5 = *(v4 + 40);
  *(v4 + 40) = 0;
  v6 = a3;

  (*(*(a1 + 40) + 16))();
}

void __91__HKDatabaseValidation_performIntegrityCheckOnDatabase_identifier_errorHandler_completion___block_invoke_3(uint64_t a1, void *a2)
{
  v3 = a2;
  _HKInitializeLogging();
  if (os_log_type_enabled(HKLogDataCollection, OS_LOG_TYPE_ERROR))
  {
    __91__HKDatabaseValidation_performIntegrityCheckOnDatabase_identifier_errorHandler_completion___block_invoke_3_cold_1(a1);
  }

  (*(*(a1 + 40) + 16))();
}

- (void)validateEntitiesWithIdentifier:(id)identifier errorHandler:(id)handler completion:(id)completion
{
  identifierCopy = identifier;
  completionCopy = completion;
  validationErrorHandlerDict = self->_validationErrorHandlerDict;
  v11 = _Block_copy(handler);
  [(NSMutableDictionary *)validationErrorHandlerDict setObject:v11 forKey:identifierCopy];

  proxyProvider = self->_proxyProvider;
  v17[0] = MEMORY[0x1E69E9820];
  v17[1] = 3221225472;
  v17[2] = __79__HKDatabaseValidation_validateEntitiesWithIdentifier_errorHandler_completion___block_invoke;
  v17[3] = &unk_1E737A7F0;
  v17[4] = self;
  v18 = identifierCopy;
  v19 = completionCopy;
  v15[0] = MEMORY[0x1E69E9820];
  v15[1] = 3221225472;
  v15[2] = __79__HKDatabaseValidation_validateEntitiesWithIdentifier_errorHandler_completion___block_invoke_3;
  v15[3] = &unk_1E7376820;
  v15[4] = self;
  v16 = v19;
  v13 = v19;
  v14 = identifierCopy;
  [(HKProxyProvider *)proxyProvider fetchProxyWithHandler:v17 errorHandler:v15];
}

void __79__HKDatabaseValidation_validateEntitiesWithIdentifier_errorHandler_completion___block_invoke(uint64_t a1, void *a2)
{
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = __79__HKDatabaseValidation_validateEntitiesWithIdentifier_errorHandler_completion___block_invoke_2;
  v4[3] = &unk_1E73766A0;
  v4[4] = *(a1 + 32);
  v5 = *(a1 + 48);
  [a2 remote_validateEntitiesWithClientCompletionHandler:v4 errorHandlerIdentifier:*(a1 + 40)];
}

void __79__HKDatabaseValidation_validateEntitiesWithIdentifier_errorHandler_completion___block_invoke_2(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = *(a1 + 32);
  v5 = *(v4 + 48);
  *(v4 + 48) = 0;
  v6 = a3;

  (*(*(a1 + 40) + 16))();
}

void __79__HKDatabaseValidation_validateEntitiesWithIdentifier_errorHandler_completion___block_invoke_3(uint64_t a1, void *a2)
{
  v3 = a2;
  _HKInitializeLogging();
  if (os_log_type_enabled(HKLogDataCollection, OS_LOG_TYPE_ERROR))
  {
    __91__HKDatabaseValidation_performIntegrityCheckOnDatabase_identifier_errorHandler_completion___block_invoke_3_cold_1(a1);
  }

  (*(*(a1 + 40) + 16))();
}

- (void)connectionInvalidated
{
  v7 = *MEMORY[0x1E69E9840];
  _HKInitializeLogging();
  v3 = HKLogDatabase;
  if (os_log_type_enabled(HKLogDatabase, OS_LOG_TYPE_DEFAULT))
  {
    v5 = 138543362;
    selfCopy = self;
    _os_log_impl(&dword_19197B000, v3, OS_LOG_TYPE_DEFAULT, "%{public}@: Connection invalidated", &v5, 0xCu);
  }

  v4 = *MEMORY[0x1E69E9840];
}

- (void)clientRemote_processIntegrityErrorString:(id)string errorHandlerIdentifier:(id)identifier
{
  stringCopy = string;
  v7 = [(NSMutableDictionary *)self->_integrityErrorHandlerDict valueForKey:identifier];
  queue = self->_queue;
  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 3221225472;
  v11[2] = __88__HKDatabaseValidation_clientRemote_processIntegrityErrorString_errorHandlerIdentifier___block_invoke;
  v11[3] = &unk_1E7376AC0;
  v12 = stringCopy;
  v13 = v7;
  v9 = stringCopy;
  v10 = v7;
  dispatch_sync(queue, v11);
}

uint64_t __88__HKDatabaseValidation_clientRemote_processIntegrityErrorString_errorHandlerIdentifier___block_invoke(uint64_t a1)
{
  result = *(a1 + 40);
  if (result)
  {
    return (*(result + 16))(result, *(a1 + 32));
  }

  return result;
}

- (void)clientRemote_processValidationError:(id)error errorHandlerIdentifier:(id)identifier
{
  errorCopy = error;
  v7 = [(NSMutableDictionary *)self->_validationErrorHandlerDict valueForKey:identifier];
  queue = self->_queue;
  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 3221225472;
  v11[2] = __83__HKDatabaseValidation_clientRemote_processValidationError_errorHandlerIdentifier___block_invoke;
  v11[3] = &unk_1E7376AC0;
  v12 = errorCopy;
  v13 = v7;
  v9 = errorCopy;
  v10 = v7;
  dispatch_sync(queue, v11);
}

uint64_t __83__HKDatabaseValidation_clientRemote_processValidationError_errorHandlerIdentifier___block_invoke(uint64_t a1)
{
  result = *(a1 + 40);
  if (result)
  {
    return (*(result + 16))(result, *(a1 + 32));
  }

  return result;
}

- (void)clientRemote_synchronizeWithCompletion:(id)completion success:(BOOL)success error:(id)error
{
  completionCopy = completion;
  errorCopy = error;
  queue = self->_queue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __77__HKDatabaseValidation_clientRemote_synchronizeWithCompletion_success_error___block_invoke;
  block[3] = &unk_1E7376678;
  successCopy = success;
  v14 = errorCopy;
  v15 = completionCopy;
  v11 = errorCopy;
  v12 = completionCopy;
  dispatch_sync(queue, block);
}

void __91__HKDatabaseValidation_performIntegrityCheckOnDatabase_identifier_errorHandler_completion___block_invoke_3_cold_1(uint64_t a1)
{
  v5 = *MEMORY[0x1E69E9840];
  v1 = *(a1 + 32);
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_1(&dword_19197B000, v2, v3, "%{public}@: Failed to restart task server after connection interruption: %{public}@");
  v4 = *MEMORY[0x1E69E9840];
}

@end