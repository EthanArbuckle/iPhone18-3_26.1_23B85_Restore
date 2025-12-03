@interface HKDiagnosticStore
+ (id)taskIdentifier;
- (HKDiagnosticStore)initWithHealthStore:(id)store;
- (id)fetchSQLPragma:(int64_t)pragma error:(id *)error;
- (void)fetchDiagnosticsForKeys:(id)keys completion:(id)completion;
- (void)fetchPragma:(int64_t)pragma completion:(id)completion;
- (void)fetchURLForAnalyticsFileWithName:(id)name completion:(id)completion;
@end

@implementation HKDiagnosticStore

- (HKDiagnosticStore)initWithHealthStore:(id)store
{
  storeCopy = store;
  v12.receiver = self;
  v12.super_class = HKDiagnosticStore;
  v5 = [(HKDiagnosticStore *)&v12 init];
  if (v5)
  {
    v6 = [HKTaskServerProxyProvider alloc];
    taskIdentifier = [objc_opt_class() taskIdentifier];
    uUID = [MEMORY[0x1E696AFB0] UUID];
    v9 = [(HKTaskServerProxyProvider *)v6 initWithHealthStore:storeCopy taskIdentifier:taskIdentifier exportedObject:v5 taskUUID:uUID];
    proxyProvider = v5->_proxyProvider;
    v5->_proxyProvider = v9;

    [(HKProxyProvider *)v5->_proxyProvider setShouldRetryOnInterruption:0];
  }

  return v5;
}

+ (id)taskIdentifier
{
  v2 = objc_opt_class();

  return NSStringFromClass(v2);
}

- (void)fetchDiagnosticsForKeys:(id)keys completion:(id)completion
{
  keysCopy = keys;
  v7 = [(HKProxyProvider *)self->_proxyProvider clientQueueObjectHandlerWithCompletion:completion];
  proxyProvider = self->_proxyProvider;
  v13[0] = MEMORY[0x1E69E9820];
  v13[1] = 3221225472;
  v13[2] = __56__HKDiagnosticStore_fetchDiagnosticsForKeys_completion___block_invoke;
  v13[3] = &unk_1E7384CC0;
  v14 = keysCopy;
  v15 = v7;
  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 3221225472;
  v11[2] = __56__HKDiagnosticStore_fetchDiagnosticsForKeys_completion___block_invoke_2;
  v11[3] = &unk_1E7376960;
  v12 = v15;
  v9 = v15;
  v10 = keysCopy;
  [(HKProxyProvider *)proxyProvider fetchProxyWithHandler:v13 errorHandler:v11];
}

- (void)fetchURLForAnalyticsFileWithName:(id)name completion:(id)completion
{
  nameCopy = name;
  v7 = [(HKProxyProvider *)self->_proxyProvider clientQueueObjectHandlerWithCompletion:completion];
  proxyProvider = self->_proxyProvider;
  v13[0] = MEMORY[0x1E69E9820];
  v13[1] = 3221225472;
  v13[2] = __65__HKDiagnosticStore_fetchURLForAnalyticsFileWithName_completion___block_invoke;
  v13[3] = &unk_1E7384CC0;
  v14 = nameCopy;
  v15 = v7;
  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 3221225472;
  v11[2] = __65__HKDiagnosticStore_fetchURLForAnalyticsFileWithName_completion___block_invoke_2;
  v11[3] = &unk_1E7376960;
  v12 = v15;
  v9 = v15;
  v10 = nameCopy;
  [(HKProxyProvider *)proxyProvider fetchProxyWithHandler:v13 errorHandler:v11];
}

- (id)fetchSQLPragma:(int64_t)pragma error:(id *)error
{
  v19 = 0;
  v20 = &v19;
  v21 = 0x3032000000;
  v22 = __Block_byref_object_copy__55;
  v23 = __Block_byref_object_dispose__55;
  v24 = 0;
  v13 = 0;
  v14 = &v13;
  v15 = 0x3032000000;
  v16 = __Block_byref_object_copy__55;
  v17 = __Block_byref_object_dispose__55;
  v18 = 0;
  proxyProvider = self->_proxyProvider;
  v12[0] = MEMORY[0x1E69E9820];
  v12[1] = 3221225472;
  v12[2] = __42__HKDiagnosticStore_fetchSQLPragma_error___block_invoke;
  v12[3] = &unk_1E7384CE8;
  v12[5] = &v13;
  v12[6] = pragma;
  v12[4] = &v19;
  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 3221225472;
  v11[2] = __42__HKDiagnosticStore_fetchSQLPragma_error___block_invoke_3;
  v11[3] = &unk_1E7378838;
  v11[4] = &v13;
  [(HKProxyProvider *)proxyProvider getSynchronousProxyWithHandler:v12 errorHandler:v11];
  v6 = v14[5];
  v7 = v6;
  if (v6)
  {
    if (error)
    {
      v8 = v6;
      *error = v7;
    }

    else
    {
      _HKLogDroppedError(v6);
    }
  }

  v9 = v20[5];
  _Block_object_dispose(&v13, 8);

  _Block_object_dispose(&v19, 8);

  return v9;
}

uint64_t __42__HKDiagnosticStore_fetchSQLPragma_error___block_invoke(uint64_t a1, void *a2)
{
  v2 = *(a1 + 48);
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = __42__HKDiagnosticStore_fetchSQLPragma_error___block_invoke_2;
  v4[3] = &unk_1E7380C98;
  v5 = *(a1 + 32);
  return [a2 remote_fetchSQLPragma:v2 completion:v4];
}

void __42__HKDiagnosticStore_fetchSQLPragma_error___block_invoke_2(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = *(*(a1 + 32) + 8);
  v8 = *(v7 + 40);
  *(v7 + 40) = v5;
  v11 = v5;

  v9 = *(*(a1 + 40) + 8);
  v10 = *(v9 + 40);
  *(v9 + 40) = v6;
}

- (void)fetchPragma:(int64_t)pragma completion:(id)completion
{
  v6 = [(HKProxyProvider *)self->_proxyProvider clientQueueObjectHandlerWithCompletion:completion];
  proxyProvider = self->_proxyProvider;
  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 3221225472;
  v11[2] = __44__HKDiagnosticStore_fetchPragma_completion___block_invoke;
  v11[3] = &unk_1E7384D10;
  pragmaCopy = pragma;
  v12 = v6;
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __44__HKDiagnosticStore_fetchPragma_completion___block_invoke_2;
  v9[3] = &unk_1E7376960;
  v10 = v12;
  v8 = v12;
  [(HKProxyProvider *)proxyProvider fetchProxyWithHandler:v11 errorHandler:v9];
}

@end