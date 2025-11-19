@interface CNReputationStore
- (CNReputationStore)init;
- (CNReputationStore)initWithCoreRecentsAdapter:(id)a3 contactsAdapter:(id)a4 logger:(id)a5 schedulerProvider:(id)a6;
- (id)makeFutureForHandle:(id)a3;
- (id)reputationForHandle:(id)a3 timeout:(double)a4 error:(id *)a5;
@end

@implementation CNReputationStore

- (CNReputationStore)init
{
  v3 = objc_alloc_init(CNReputationCoreRecentsAdapter);
  v4 = objc_alloc_init(CNReputationContactsAdapter);
  v5 = objc_alloc_init(CNReputationLogger);
  v6 = [MEMORY[0x1E6996820] defaultProvider];
  v7 = [(CNReputationStore *)self initWithCoreRecentsAdapter:v3 contactsAdapter:v4 logger:v5 schedulerProvider:v6];

  return v7;
}

- (CNReputationStore)initWithCoreRecentsAdapter:(id)a3 contactsAdapter:(id)a4 logger:(id)a5 schedulerProvider:(id)a6
{
  v11 = a3;
  v12 = a4;
  v13 = a5;
  v14 = a6;
  v19.receiver = self;
  v19.super_class = CNReputationStore;
  v15 = [(CNReputationStore *)&v19 init];
  v16 = v15;
  if (v15)
  {
    objc_storeStrong(&v15->_coreRecentsAdapter, a3);
    objc_storeStrong(&v16->_contactsAdapter, a4);
    objc_storeStrong(&v16->_logger, a5);
    objc_storeStrong(&v16->_schedulerProvider, a6);
    v17 = v16;
  }

  return v16;
}

- (id)reputationForHandle:(id)a3 timeout:(double)a4 error:(id *)a5
{
  v8 = a3;
  v9 = objc_alloc_init(MEMORY[0x1E6996838]);
  v10 = [(CNReputationStore *)self schedulerProvider];
  v11 = [v10 mainThreadScheduler];
  [v11 timestamp];
  v13 = v12;

  v31[0] = MEMORY[0x1E69E9820];
  v31[1] = 3221225472;
  v31[2] = __55__CNReputationStore_reputationForHandle_timeout_error___block_invoke;
  v31[3] = &unk_1E7414C28;
  v31[4] = self;
  v31[5] = v13;
  v14 = [v31 copy];
  v15 = objc_opt_self();
  v16 = _Block_copy(v15);
  [v9 push:v16];

  v17 = [(CNReputationStore *)self logger];
  [v17 beginQueryForHandle:v8];

  v18 = [(CNReputationStore *)self makeFutureForHandle:v8];
  v29[0] = MEMORY[0x1E69E9820];
  v29[1] = 3221225472;
  v29[2] = __55__CNReputationStore_reputationForHandle_timeout_error___block_invoke_2;
  v29[3] = &unk_1E7414C50;
  v29[4] = self;
  v19 = v8;
  v30 = v19;
  [v18 addSuccessBlock:v29];
  v23 = MEMORY[0x1E69E9820];
  v24 = 3221225472;
  v25 = __55__CNReputationStore_reputationForHandle_timeout_error___block_invoke_3;
  v26 = &unk_1E7414C78;
  v27 = self;
  v28 = v19;
  [v18 addFailureBlock:&v23];
  v20 = [v18 resultWithTimeout:a5 error:{a4, v23, v24, v25, v26, v27}];
  if (!v20 && [MEMORY[0x1E6996708] isTimeoutError:*a5])
  {
    CNSetError(a5, 1001, 0);
  }

  [v9 popAllWithHandler:&__block_literal_global_70];
  v21 = objc_opt_self();

  return v20;
}

void __55__CNReputationStore_reputationForHandle_timeout_error___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) schedulerProvider];
  v3 = [v2 mainThreadScheduler];
  [v3 timestamp];
  v5 = v4;

  v6 = [*(a1 + 32) logger];
  [v6 timeToResolve:v5 - *(a1 + 40)];
}

void __55__CNReputationStore_reputationForHandle_timeout_error___block_invoke_2(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);
  v4 = a2;
  v5 = [v3 logger];
  [v5 queryForHandle:*(a1 + 40) didFinishWithReputation:v4];
}

void __55__CNReputationStore_reputationForHandle_timeout_error___block_invoke_3(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);
  v4 = a2;
  v5 = [v3 logger];
  [v5 queryForHandle:*(a1 + 40) didFailWithError:v4];
}

- (id)makeFutureForHandle:(id)a3
{
  v4 = a3;
  v5 = [CNReputationFutureBuilder alloc];
  v6 = [(CNReputationStore *)self coreRecentsAdapter];
  v7 = [(CNReputationStore *)self contactsAdapter];
  v8 = [(CNReputationStore *)self logger];
  v9 = [(CNReputationFutureBuilder *)v5 initWithHandle:v4 coreRecentsAdapter:v6 contactsAdapter:v7 logger:v8];

  [v4 configureBuilder:v9];
  v10 = [(CNReputationFutureBuilder *)v9 build];

  return v10;
}

@end