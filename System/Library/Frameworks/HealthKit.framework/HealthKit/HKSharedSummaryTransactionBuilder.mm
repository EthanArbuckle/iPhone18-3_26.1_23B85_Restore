@interface HKSharedSummaryTransactionBuilder
+ (id)serverInterface;
- (HKHealthStore)healthStore;
- (HKSharedSummaryTransactionBuilder)initWithHealthStore:(id)a3 transactionUUID:(id)a4;
- (id)exportedInterface;
- (id)isCommittedWithError:(id *)a3;
- (id)remoteInterface;
- (void)addMetadata:(id)a3 completion:(id)a4;
- (void)addSummaries:(id)a3 completion:(id)a4;
- (void)addedSummariesWithPackage:(id)a3 names:(id)a4 resultsHandler:(id)a5;
- (void)commitAsUrgent:(BOOL)a3 completion:(id)a4;
- (void)discardWithCompletion:(id)a3;
- (void)removeAllSummariesWithPackage:(id)a3 completion:(id)a4;
- (void)removeSummariesWithPackage:(id)a3 names:(id)a4 completion:(id)a5;
- (void)removeSummariesWithUUIDs:(id)a3 completion:(id)a4;
- (void)reuseAllSummariesWithPackage:(id)a3 completion:(id)a4;
- (void)reuseSummaries:(id)a3 completion:(id)a4;
- (void)reuseSummariesWithPackage:(id)a3 names:(id)a4 completion:(id)a5;
- (void)reuseSummariesWithUUIDs:(id)a3 completion:(id)a4;
@end

@implementation HKSharedSummaryTransactionBuilder

- (HKSharedSummaryTransactionBuilder)initWithHealthStore:(id)a3 transactionUUID:(id)a4
{
  v6 = a4;
  v7 = a3;
  v8 = [v7 profileIdentifier];
  v9 = [v8 type] == 2;

  v10 = [(HKSharedSummaryTransactionBuilder *)self initWithHealthStore:v7 transactionUUID:v6 allowCommitted:v9];
  return v10;
}

- (id)isCommittedWithError:(id *)a3
{
  v19 = 0;
  v20 = &v19;
  v21 = 0x2020000000;
  v22 = 0;
  v13 = 0;
  v14 = &v13;
  v15 = 0x3032000000;
  v16 = __Block_byref_object_copy__34;
  v17 = __Block_byref_object_dispose__34;
  v18 = 0;
  proxyProvider = self->_proxyProvider;
  v12[0] = MEMORY[0x1E69E9820];
  v12[1] = 3221225472;
  v12[2] = __58__HKSharedSummaryTransactionBuilder_isCommittedWithError___block_invoke;
  v12[3] = &unk_1E73809F0;
  v12[4] = &v19;
  v12[5] = &v13;
  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 3221225472;
  v11[2] = __58__HKSharedSummaryTransactionBuilder_isCommittedWithError___block_invoke_3;
  v11[3] = &unk_1E7378838;
  v11[4] = &v13;
  [(HKProxyProvider *)proxyProvider getSynchronousProxyWithHandler:v12 errorHandler:v11];
  v5 = v14[5];
  if (v5)
  {
    v6 = v5;
    v7 = v6;
    if (a3)
    {
      v8 = v6;
      *a3 = v7;
    }

    else
    {
      _HKLogDroppedError(v6);
    }

    v9 = 0;
  }

  else
  {
    v9 = [MEMORY[0x1E696AD98] numberWithBool:*(v20 + 24)];
  }

  _Block_object_dispose(&v13, 8);

  _Block_object_dispose(&v19, 8);

  return v9;
}

uint64_t __58__HKSharedSummaryTransactionBuilder_isCommittedWithError___block_invoke(uint64_t a1, void *a2)
{
  v3[0] = MEMORY[0x1E69E9820];
  v3[1] = 3221225472;
  v3[2] = __58__HKSharedSummaryTransactionBuilder_isCommittedWithError___block_invoke_2;
  v3[3] = &unk_1E73809C8;
  v4 = *(a1 + 32);
  return [a2 remote_getCommitStatusWithCompletion:v3];
}

void __58__HKSharedSummaryTransactionBuilder_isCommittedWithError___block_invoke_2(uint64_t a1, void *a2, void *a3)
{
  v6 = a3;
  if (a2)
  {
    *(*(*(a1 + 32) + 8) + 24) = [a2 BOOLValue];
  }

  else
  {
    objc_storeStrong((*(*(a1 + 40) + 8) + 40), a3);
  }
}

- (void)addSummaries:(id)a3 completion:(id)a4
{
  v6 = a3;
  v7 = [(HKProxyProvider *)self->_proxyProvider clientQueueActionHandlerWithCompletion:a4];
  proxyProvider = self->_proxyProvider;
  v13[0] = MEMORY[0x1E69E9820];
  v13[1] = 3221225472;
  v13[2] = __61__HKSharedSummaryTransactionBuilder_addSummaries_completion___block_invoke;
  v13[3] = &unk_1E7380A18;
  v14 = v6;
  v15 = v7;
  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 3221225472;
  v11[2] = __61__HKSharedSummaryTransactionBuilder_addSummaries_completion___block_invoke_3;
  v11[3] = &unk_1E7376820;
  v11[4] = self;
  v12 = v15;
  v9 = v15;
  v10 = v6;
  [(HKProxyProvider *)proxyProvider fetchProxyWithHandler:v13 errorHandler:v11];
}

void __61__HKSharedSummaryTransactionBuilder_addSummaries_completion___block_invoke(uint64_t a1, void *a2)
{
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = __61__HKSharedSummaryTransactionBuilder_addSummaries_completion___block_invoke_2;
  v4[3] = &unk_1E7376910;
  v3 = *(a1 + 32);
  v5 = *(a1 + 40);
  [a2 remote_addSummaries:v3 completion:v4];
}

void __61__HKSharedSummaryTransactionBuilder_addSummaries_completion___block_invoke_3(uint64_t a1, void *a2)
{
  v3 = a2;
  _HKInitializeLogging();
  v4 = HKLogSharing();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
  {
    __61__HKSharedSummaryTransactionBuilder_addSummaries_completion___block_invoke_3_cold_1(a1);
  }

  (*(*(a1 + 40) + 16))();
}

- (void)reuseSummaries:(id)a3 completion:(id)a4
{
  proxyProvider = self->_proxyProvider;
  v7 = a3;
  v8 = [(HKProxyProvider *)proxyProvider clientQueueActionHandlerWithCompletion:a4];
  v9 = [v7 hk_map:&__block_literal_global_85];

  v10 = self->_proxyProvider;
  v15[0] = MEMORY[0x1E69E9820];
  v15[1] = 3221225472;
  v15[2] = __63__HKSharedSummaryTransactionBuilder_reuseSummaries_completion___block_invoke_2;
  v15[3] = &unk_1E7380A18;
  v16 = v9;
  v17 = v8;
  v13[0] = MEMORY[0x1E69E9820];
  v13[1] = 3221225472;
  v13[2] = __63__HKSharedSummaryTransactionBuilder_reuseSummaries_completion___block_invoke_4;
  v13[3] = &unk_1E7376820;
  v13[4] = self;
  v14 = v17;
  v11 = v17;
  v12 = v9;
  [(HKProxyProvider *)v10 fetchProxyWithHandler:v15 errorHandler:v13];
}

void __63__HKSharedSummaryTransactionBuilder_reuseSummaries_completion___block_invoke_2(uint64_t a1, void *a2)
{
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = __63__HKSharedSummaryTransactionBuilder_reuseSummaries_completion___block_invoke_3;
  v4[3] = &unk_1E7376910;
  v3 = *(a1 + 32);
  v5 = *(a1 + 40);
  [a2 remote_reuseSummariesWithUUIDs:v3 completion:v4];
}

void __63__HKSharedSummaryTransactionBuilder_reuseSummaries_completion___block_invoke_4(uint64_t a1, void *a2)
{
  v3 = a2;
  _HKInitializeLogging();
  v4 = HKLogSharing();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
  {
    __63__HKSharedSummaryTransactionBuilder_reuseSummaries_completion___block_invoke_4_cold_1(a1);
  }

  (*(*(a1 + 40) + 16))();
}

- (void)reuseSummariesWithUUIDs:(id)a3 completion:(id)a4
{
  v6 = a3;
  v7 = [(HKProxyProvider *)self->_proxyProvider clientQueueActionHandlerWithCompletion:a4];
  proxyProvider = self->_proxyProvider;
  v13[0] = MEMORY[0x1E69E9820];
  v13[1] = 3221225472;
  v13[2] = __72__HKSharedSummaryTransactionBuilder_reuseSummariesWithUUIDs_completion___block_invoke;
  v13[3] = &unk_1E7380A18;
  v14 = v6;
  v15 = v7;
  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 3221225472;
  v11[2] = __72__HKSharedSummaryTransactionBuilder_reuseSummariesWithUUIDs_completion___block_invoke_2;
  v11[3] = &unk_1E7376820;
  v11[4] = self;
  v12 = v15;
  v9 = v15;
  v10 = v6;
  [(HKProxyProvider *)proxyProvider fetchProxyWithHandler:v13 errorHandler:v11];
}

void __72__HKSharedSummaryTransactionBuilder_reuseSummariesWithUUIDs_completion___block_invoke_2(uint64_t a1, void *a2)
{
  v3 = a2;
  _HKInitializeLogging();
  v4 = HKLogSharing();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
  {
    __63__HKSharedSummaryTransactionBuilder_reuseSummaries_completion___block_invoke_4_cold_1(a1);
  }

  (*(*(a1 + 40) + 16))();
}

- (void)reuseSummariesWithPackage:(id)a3 names:(id)a4 completion:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = [(HKProxyProvider *)self->_proxyProvider clientQueueActionHandlerWithCompletion:a5];
  proxyProvider = self->_proxyProvider;
  v17[0] = MEMORY[0x1E69E9820];
  v17[1] = 3221225472;
  v17[2] = __80__HKSharedSummaryTransactionBuilder_reuseSummariesWithPackage_names_completion___block_invoke;
  v17[3] = &unk_1E7380A60;
  v18 = v8;
  v19 = v9;
  v20 = v10;
  v15[0] = MEMORY[0x1E69E9820];
  v15[1] = 3221225472;
  v15[2] = __80__HKSharedSummaryTransactionBuilder_reuseSummariesWithPackage_names_completion___block_invoke_2;
  v15[3] = &unk_1E7376820;
  v15[4] = self;
  v16 = v20;
  v12 = v20;
  v13 = v9;
  v14 = v8;
  [(HKProxyProvider *)proxyProvider fetchProxyWithHandler:v17 errorHandler:v15];
}

void __80__HKSharedSummaryTransactionBuilder_reuseSummariesWithPackage_names_completion___block_invoke_2(uint64_t a1, void *a2)
{
  v3 = a2;
  _HKInitializeLogging();
  v4 = HKLogSharing();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
  {
    __63__HKSharedSummaryTransactionBuilder_reuseSummaries_completion___block_invoke_4_cold_1(a1);
  }

  (*(*(a1 + 40) + 16))();
}

- (void)reuseAllSummariesWithPackage:(id)a3 completion:(id)a4
{
  v6 = a3;
  v7 = [(HKProxyProvider *)self->_proxyProvider clientQueueActionHandlerWithCompletion:a4];
  proxyProvider = self->_proxyProvider;
  v13[0] = MEMORY[0x1E69E9820];
  v13[1] = 3221225472;
  v13[2] = __77__HKSharedSummaryTransactionBuilder_reuseAllSummariesWithPackage_completion___block_invoke;
  v13[3] = &unk_1E7380A18;
  v14 = v6;
  v15 = v7;
  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 3221225472;
  v11[2] = __77__HKSharedSummaryTransactionBuilder_reuseAllSummariesWithPackage_completion___block_invoke_2;
  v11[3] = &unk_1E7376820;
  v11[4] = self;
  v12 = v15;
  v9 = v15;
  v10 = v6;
  [(HKProxyProvider *)proxyProvider fetchProxyWithHandler:v13 errorHandler:v11];
}

void __77__HKSharedSummaryTransactionBuilder_reuseAllSummariesWithPackage_completion___block_invoke_2(uint64_t a1, void *a2)
{
  v3 = a2;
  _HKInitializeLogging();
  v4 = HKLogSharing();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
  {
    __63__HKSharedSummaryTransactionBuilder_reuseSummaries_completion___block_invoke_4_cold_1(a1);
  }

  (*(*(a1 + 40) + 16))();
}

- (void)addMetadata:(id)a3 completion:(id)a4
{
  v6 = a3;
  v7 = [(HKProxyProvider *)self->_proxyProvider clientQueueActionHandlerWithCompletion:a4];
  proxyProvider = self->_proxyProvider;
  v13[0] = MEMORY[0x1E69E9820];
  v13[1] = 3221225472;
  v13[2] = __60__HKSharedSummaryTransactionBuilder_addMetadata_completion___block_invoke;
  v13[3] = &unk_1E7380A18;
  v14 = v6;
  v15 = v7;
  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 3221225472;
  v11[2] = __60__HKSharedSummaryTransactionBuilder_addMetadata_completion___block_invoke_2;
  v11[3] = &unk_1E7376820;
  v11[4] = self;
  v12 = v15;
  v9 = v15;
  v10 = v6;
  [(HKProxyProvider *)proxyProvider fetchProxyWithHandler:v13 errorHandler:v11];
}

void __60__HKSharedSummaryTransactionBuilder_addMetadata_completion___block_invoke_2(uint64_t a1, void *a2)
{
  v3 = a2;
  _HKInitializeLogging();
  v4 = HKLogSharing();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
  {
    __60__HKSharedSummaryTransactionBuilder_addMetadata_completion___block_invoke_2_cold_1(a1);
  }

  (*(*(a1 + 40) + 16))();
}

- (void)removeSummariesWithUUIDs:(id)a3 completion:(id)a4
{
  v6 = a3;
  v7 = [(HKProxyProvider *)self->_proxyProvider clientQueueActionHandlerWithCompletion:a4];
  proxyProvider = self->_proxyProvider;
  v13[0] = MEMORY[0x1E69E9820];
  v13[1] = 3221225472;
  v13[2] = __73__HKSharedSummaryTransactionBuilder_removeSummariesWithUUIDs_completion___block_invoke;
  v13[3] = &unk_1E7380A18;
  v14 = v6;
  v15 = v7;
  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 3221225472;
  v11[2] = __73__HKSharedSummaryTransactionBuilder_removeSummariesWithUUIDs_completion___block_invoke_3;
  v11[3] = &unk_1E7376820;
  v11[4] = self;
  v12 = v15;
  v9 = v15;
  v10 = v6;
  [(HKProxyProvider *)proxyProvider fetchProxyWithHandler:v13 errorHandler:v11];
}

void __73__HKSharedSummaryTransactionBuilder_removeSummariesWithUUIDs_completion___block_invoke(uint64_t a1, void *a2)
{
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = __73__HKSharedSummaryTransactionBuilder_removeSummariesWithUUIDs_completion___block_invoke_2;
  v4[3] = &unk_1E7376910;
  v3 = *(a1 + 32);
  v5 = *(a1 + 40);
  [a2 remote_removeSummariesWithUUIDs:v3 completion:v4];
}

void __73__HKSharedSummaryTransactionBuilder_removeSummariesWithUUIDs_completion___block_invoke_3(uint64_t a1, void *a2)
{
  v3 = a2;
  _HKInitializeLogging();
  v4 = HKLogSharing();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
  {
    __73__HKSharedSummaryTransactionBuilder_removeSummariesWithUUIDs_completion___block_invoke_3_cold_1(a1);
  }

  (*(*(a1 + 40) + 16))();
}

- (void)removeSummariesWithPackage:(id)a3 names:(id)a4 completion:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = [(HKProxyProvider *)self->_proxyProvider clientQueueActionHandlerWithCompletion:a5];
  proxyProvider = self->_proxyProvider;
  v17[0] = MEMORY[0x1E69E9820];
  v17[1] = 3221225472;
  v17[2] = __81__HKSharedSummaryTransactionBuilder_removeSummariesWithPackage_names_completion___block_invoke;
  v17[3] = &unk_1E7380A60;
  v18 = v8;
  v19 = v9;
  v20 = v10;
  v15[0] = MEMORY[0x1E69E9820];
  v15[1] = 3221225472;
  v15[2] = __81__HKSharedSummaryTransactionBuilder_removeSummariesWithPackage_names_completion___block_invoke_3;
  v15[3] = &unk_1E7376820;
  v15[4] = self;
  v16 = v20;
  v12 = v20;
  v13 = v9;
  v14 = v8;
  [(HKProxyProvider *)proxyProvider fetchProxyWithHandler:v17 errorHandler:v15];
}

void __81__HKSharedSummaryTransactionBuilder_removeSummariesWithPackage_names_completion___block_invoke(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);
  v4 = *(a1 + 40);
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __81__HKSharedSummaryTransactionBuilder_removeSummariesWithPackage_names_completion___block_invoke_2;
  v5[3] = &unk_1E7376910;
  v6 = *(a1 + 48);
  [a2 remote_removeSummariesWithPackage:v3 names:v4 completion:v5];
}

void __81__HKSharedSummaryTransactionBuilder_removeSummariesWithPackage_names_completion___block_invoke_3(uint64_t a1, void *a2)
{
  v3 = a2;
  _HKInitializeLogging();
  v4 = HKLogSharing();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
  {
    __73__HKSharedSummaryTransactionBuilder_removeSummariesWithUUIDs_completion___block_invoke_3_cold_1(a1);
  }

  (*(*(a1 + 40) + 16))();
}

- (void)removeAllSummariesWithPackage:(id)a3 completion:(id)a4
{
  v6 = a3;
  v7 = [(HKProxyProvider *)self->_proxyProvider clientQueueActionHandlerWithCompletion:a4];
  proxyProvider = self->_proxyProvider;
  v13[0] = MEMORY[0x1E69E9820];
  v13[1] = 3221225472;
  v13[2] = __78__HKSharedSummaryTransactionBuilder_removeAllSummariesWithPackage_completion___block_invoke;
  v13[3] = &unk_1E7380A18;
  v14 = v6;
  v15 = v7;
  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 3221225472;
  v11[2] = __78__HKSharedSummaryTransactionBuilder_removeAllSummariesWithPackage_completion___block_invoke_3;
  v11[3] = &unk_1E7376820;
  v11[4] = self;
  v12 = v15;
  v9 = v15;
  v10 = v6;
  [(HKProxyProvider *)proxyProvider fetchProxyWithHandler:v13 errorHandler:v11];
}

void __78__HKSharedSummaryTransactionBuilder_removeAllSummariesWithPackage_completion___block_invoke(uint64_t a1, void *a2)
{
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = __78__HKSharedSummaryTransactionBuilder_removeAllSummariesWithPackage_completion___block_invoke_2;
  v4[3] = &unk_1E7376910;
  v3 = *(a1 + 32);
  v5 = *(a1 + 40);
  [a2 remote_removeAllSummariesWithPackage:v3 completion:v4];
}

void __78__HKSharedSummaryTransactionBuilder_removeAllSummariesWithPackage_completion___block_invoke_3(uint64_t a1, void *a2)
{
  v3 = a2;
  _HKInitializeLogging();
  v4 = HKLogSharing();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
  {
    __73__HKSharedSummaryTransactionBuilder_removeSummariesWithUUIDs_completion___block_invoke_3_cold_1(a1);
  }

  (*(*(a1 + 40) + 16))();
}

- (void)commitAsUrgent:(BOOL)a3 completion:(id)a4
{
  v4 = a3;
  v25 = *MEMORY[0x1E69E9840];
  v6 = [(HKProxyProvider *)self->_proxyProvider clientQueueObjectHandlerWithCompletion:a4];
  _HKInitializeLogging();
  v7 = HKLogSharing();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    v8 = [(NSUUID *)self->_transactionUUID UUIDString];
    v9 = v8;
    v10 = @"NO";
    *buf = 138543874;
    v20 = self;
    v21 = 2114;
    if (v4)
    {
      v10 = @"YES";
    }

    v22 = v8;
    v23 = 2114;
    v24 = v10;
    _os_log_impl(&dword_19197B000, v7, OS_LOG_TYPE_DEFAULT, "[summary-sharing] %{public}@: Commiting transaction %{public}@ urgent: %{public}@", buf, 0x20u);
  }

  proxyProvider = self->_proxyProvider;
  v16[0] = MEMORY[0x1E69E9820];
  v16[1] = 3221225472;
  v16[2] = __63__HKSharedSummaryTransactionBuilder_commitAsUrgent_completion___block_invoke;
  v16[3] = &unk_1E7380A88;
  v18 = v4;
  v17 = v6;
  v14[0] = MEMORY[0x1E69E9820];
  v14[1] = 3221225472;
  v14[2] = __63__HKSharedSummaryTransactionBuilder_commitAsUrgent_completion___block_invoke_2;
  v14[3] = &unk_1E7376820;
  v14[4] = self;
  v15 = v17;
  v12 = v17;
  [(HKProxyProvider *)proxyProvider fetchProxyWithHandler:v16 errorHandler:v14];

  v13 = *MEMORY[0x1E69E9840];
}

void __63__HKSharedSummaryTransactionBuilder_commitAsUrgent_completion___block_invoke_2(uint64_t a1, void *a2)
{
  v3 = a2;
  _HKInitializeLogging();
  v4 = HKLogSharing();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
  {
    __63__HKSharedSummaryTransactionBuilder_commitAsUrgent_completion___block_invoke_2_cold_1(a1);
  }

  (*(*(a1 + 40) + 16))();
}

- (void)discardWithCompletion:(id)a3
{
  v18 = *MEMORY[0x1E69E9840];
  v4 = [(HKProxyProvider *)self->_proxyProvider clientQueueActionHandlerWithCompletion:a3];
  _HKInitializeLogging();
  v5 = HKLogSharing();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v6 = [(NSUUID *)self->_transactionUUID UUIDString];
    *buf = 138543618;
    v15 = self;
    v16 = 2114;
    v17 = v6;
    _os_log_impl(&dword_19197B000, v5, OS_LOG_TYPE_DEFAULT, "[summary-sharing] %{public}@: Discarding transaction %{public}@", buf, 0x16u);
  }

  proxyProvider = self->_proxyProvider;
  v12[0] = MEMORY[0x1E69E9820];
  v12[1] = 3221225472;
  v12[2] = __59__HKSharedSummaryTransactionBuilder_discardWithCompletion___block_invoke;
  v12[3] = &unk_1E7380AB0;
  v13 = v4;
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __59__HKSharedSummaryTransactionBuilder_discardWithCompletion___block_invoke_3;
  v10[3] = &unk_1E7376820;
  v10[4] = self;
  v11 = v13;
  v8 = v13;
  [(HKProxyProvider *)proxyProvider fetchProxyWithHandler:v12 errorHandler:v10];

  v9 = *MEMORY[0x1E69E9840];
}

void __59__HKSharedSummaryTransactionBuilder_discardWithCompletion___block_invoke(uint64_t a1, void *a2)
{
  v3[0] = MEMORY[0x1E69E9820];
  v3[1] = 3221225472;
  v3[2] = __59__HKSharedSummaryTransactionBuilder_discardWithCompletion___block_invoke_2;
  v3[3] = &unk_1E7376910;
  v4 = *(a1 + 32);
  [a2 remote_discardWithCompletion:v3];
}

void __59__HKSharedSummaryTransactionBuilder_discardWithCompletion___block_invoke_3(uint64_t a1, void *a2)
{
  v3 = a2;
  _HKInitializeLogging();
  v4 = HKLogSharing();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
  {
    __59__HKSharedSummaryTransactionBuilder_discardWithCompletion___block_invoke_3_cold_1(a1);
  }

  (*(*(a1 + 40) + 16))();
}

- (void)addedSummariesWithPackage:(id)a3 names:(id)a4 resultsHandler:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v22[0] = MEMORY[0x1E69E9820];
  v22[1] = 3221225472;
  v22[2] = __84__HKSharedSummaryTransactionBuilder_addedSummariesWithPackage_names_resultsHandler___block_invoke;
  v22[3] = &unk_1E7380B00;
  v22[4] = self;
  v23 = v10;
  v11 = [v22 copy];
  proxyProvider = self->_proxyProvider;
  v18[0] = MEMORY[0x1E69E9820];
  v18[1] = 3221225472;
  v18[2] = __84__HKSharedSummaryTransactionBuilder_addedSummariesWithPackage_names_resultsHandler___block_invoke_3;
  v18[3] = &unk_1E7380A60;
  v19 = v8;
  v20 = v9;
  v21 = v11;
  v16[0] = MEMORY[0x1E69E9820];
  v16[1] = 3221225472;
  v16[2] = __84__HKSharedSummaryTransactionBuilder_addedSummariesWithPackage_names_resultsHandler___block_invoke_4;
  v16[3] = &unk_1E7376820;
  v16[4] = self;
  v17 = v21;
  v13 = v21;
  v14 = v9;
  v15 = v8;
  [(HKProxyProvider *)proxyProvider fetchProxyWithHandler:v18 errorHandler:v16];
}

void __84__HKSharedSummaryTransactionBuilder_addedSummariesWithPackage_names_resultsHandler___block_invoke(uint64_t a1, void *a2, char a3, void *a4)
{
  v7 = a2;
  v8 = a4;
  v19[0] = 0;
  v19[1] = v19;
  v19[2] = 0x3032000000;
  v19[3] = __Block_byref_object_copy__34;
  v19[4] = __Block_byref_object_dispose__34;
  v20 = *(a1 + 32);
  v9 = [*(*(a1 + 32) + 8) clientQueue];
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __84__HKSharedSummaryTransactionBuilder_addedSummariesWithPackage_names_resultsHandler___block_invoke_2;
  block[3] = &unk_1E7380AD8;
  v10 = *(a1 + 40);
  v18 = a3;
  v14 = v7;
  v15 = v8;
  v16 = v10;
  v17 = v19;
  v11 = v8;
  v12 = v7;
  dispatch_async(v9, block);

  _Block_object_dispose(v19, 8);
}

void __84__HKSharedSummaryTransactionBuilder_addedSummariesWithPackage_names_resultsHandler___block_invoke_2(uint64_t a1)
{
  v2 = *(a1 + 64);
  v3 = *(a1 + 32);
  v4 = *(a1 + 40);
  (*(*(a1 + 48) + 16))();
  v5 = *(*(a1 + 56) + 8);
  v6 = *(v5 + 40);
  *(v5 + 40) = 0;
}

void __84__HKSharedSummaryTransactionBuilder_addedSummariesWithPackage_names_resultsHandler___block_invoke_4(uint64_t a1, void *a2)
{
  v3 = a2;
  _HKInitializeLogging();
  v4 = HKLogSharing();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
  {
    __84__HKSharedSummaryTransactionBuilder_addedSummariesWithPackage_names_resultsHandler___block_invoke_4_cold_1(a1);
  }

  (*(*(a1 + 40) + 16))();
}

+ (id)serverInterface
{
  v2 = [MEMORY[0x1E696B0D0] interfaceWithProtocol:&unk_1F06F7FB8];
  v3 = MEMORY[0x1E695DFD8];
  v4 = objc_opt_class();
  v5 = [v3 setWithObjects:{v4, objc_opt_class(), 0}];
  [v2 setClasses:v5 forSelector:sel_remote_addSummaries_completion_ argumentIndex:0 ofReply:0];
  [v2 setClasses:v5 forSelector:sel_remote_addedSummariesWithPackage_names_resultsHandler_ argumentIndex:0 ofReply:1];
  v6 = MEMORY[0x1E695DFD8];
  v7 = objc_opt_class();
  v8 = [v6 setWithObjects:{v7, objc_opt_class(), 0}];
  [v2 setClasses:v8 forSelector:sel_remote_reuseSummariesWithUUIDs_completion_ argumentIndex:0 ofReply:0];
  [v2 setClasses:v8 forSelector:sel_remote_removeSummariesWithUUIDs_completion_ argumentIndex:0 ofReply:0];

  return v2;
}

- (id)exportedInterface
{
  v2 = objc_opt_class();

  return [v2 clientInterface];
}

- (id)remoteInterface
{
  v2 = objc_opt_class();

  return [v2 serverInterface];
}

- (HKHealthStore)healthStore
{
  WeakRetained = objc_loadWeakRetained(&self->_healthStore);

  return WeakRetained;
}

void __61__HKSharedSummaryTransactionBuilder_addSummaries_completion___block_invoke_3_cold_1(uint64_t a1)
{
  OUTLINED_FUNCTION_3(a1, *MEMORY[0x1E69E9840]);
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_1(&dword_19197B000, v1, v2, "[summary-sharing] %{public}@: Error adding summaries to transaction %{public}@");
  v3 = *MEMORY[0x1E69E9840];
}

void __63__HKSharedSummaryTransactionBuilder_reuseSummaries_completion___block_invoke_4_cold_1(uint64_t a1)
{
  OUTLINED_FUNCTION_3(a1, *MEMORY[0x1E69E9840]);
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_1(&dword_19197B000, v1, v2, "[summary-sharing] %{public}@: Error reusing summaries in transaction %{public}@");
  v3 = *MEMORY[0x1E69E9840];
}

void __60__HKSharedSummaryTransactionBuilder_addMetadata_completion___block_invoke_2_cold_1(uint64_t a1)
{
  OUTLINED_FUNCTION_3(a1, *MEMORY[0x1E69E9840]);
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_1(&dword_19197B000, v1, v2, "[summary-sharing] %{public}@: Error adding metadata to transaction %{public}@");
  v3 = *MEMORY[0x1E69E9840];
}

void __73__HKSharedSummaryTransactionBuilder_removeSummariesWithUUIDs_completion___block_invoke_3_cold_1(uint64_t a1)
{
  OUTLINED_FUNCTION_3(a1, *MEMORY[0x1E69E9840]);
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_1(&dword_19197B000, v1, v2, "[summary-sharing] %{public}@: Error removing summaries from transaction %{public}@");
  v3 = *MEMORY[0x1E69E9840];
}

void __63__HKSharedSummaryTransactionBuilder_commitAsUrgent_completion___block_invoke_2_cold_1(uint64_t a1)
{
  OUTLINED_FUNCTION_3(a1, *MEMORY[0x1E69E9840]);
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_1(&dword_19197B000, v1, v2, "[summary-sharing] %{public}@: Error committing transaction %{public}@");
  v3 = *MEMORY[0x1E69E9840];
}

void __59__HKSharedSummaryTransactionBuilder_discardWithCompletion___block_invoke_3_cold_1(uint64_t a1)
{
  OUTLINED_FUNCTION_3(a1, *MEMORY[0x1E69E9840]);
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_1(&dword_19197B000, v1, v2, "[summary-sharing] %{public}@: Error discarding transaction %{public}@");
  v3 = *MEMORY[0x1E69E9840];
}

void __84__HKSharedSummaryTransactionBuilder_addedSummariesWithPackage_names_resultsHandler___block_invoke_4_cold_1(uint64_t a1)
{
  OUTLINED_FUNCTION_3(a1, *MEMORY[0x1E69E9840]);
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_1(&dword_19197B000, v1, v2, "[summary-sharing] %{public}@: Error retrieving added summaries %{public}@");
  v3 = *MEMORY[0x1E69E9840];
}

@end