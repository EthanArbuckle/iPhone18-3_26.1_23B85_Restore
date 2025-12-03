@interface CNReputationStore
- (CNReputationStore)init;
- (CNReputationStore)initWithCoreRecentsAdapter:(id)adapter contactsAdapter:(id)contactsAdapter logger:(id)logger schedulerProvider:(id)provider;
- (id)makeFutureForHandle:(id)handle;
- (id)reputationForHandle:(id)handle timeout:(double)timeout error:(id *)error;
@end

@implementation CNReputationStore

- (CNReputationStore)init
{
  v3 = objc_alloc_init(CNReputationCoreRecentsAdapter);
  v4 = objc_alloc_init(CNReputationContactsAdapter);
  v5 = objc_alloc_init(CNReputationLogger);
  defaultProvider = [MEMORY[0x1E6996820] defaultProvider];
  v7 = [(CNReputationStore *)self initWithCoreRecentsAdapter:v3 contactsAdapter:v4 logger:v5 schedulerProvider:defaultProvider];

  return v7;
}

- (CNReputationStore)initWithCoreRecentsAdapter:(id)adapter contactsAdapter:(id)contactsAdapter logger:(id)logger schedulerProvider:(id)provider
{
  adapterCopy = adapter;
  contactsAdapterCopy = contactsAdapter;
  loggerCopy = logger;
  providerCopy = provider;
  v19.receiver = self;
  v19.super_class = CNReputationStore;
  v15 = [(CNReputationStore *)&v19 init];
  v16 = v15;
  if (v15)
  {
    objc_storeStrong(&v15->_coreRecentsAdapter, adapter);
    objc_storeStrong(&v16->_contactsAdapter, contactsAdapter);
    objc_storeStrong(&v16->_logger, logger);
    objc_storeStrong(&v16->_schedulerProvider, provider);
    v17 = v16;
  }

  return v16;
}

- (id)reputationForHandle:(id)handle timeout:(double)timeout error:(id *)error
{
  handleCopy = handle;
  v9 = objc_alloc_init(MEMORY[0x1E6996838]);
  schedulerProvider = [(CNReputationStore *)self schedulerProvider];
  mainThreadScheduler = [schedulerProvider mainThreadScheduler];
  [mainThreadScheduler timestamp];
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

  logger = [(CNReputationStore *)self logger];
  [logger beginQueryForHandle:handleCopy];

  v18 = [(CNReputationStore *)self makeFutureForHandle:handleCopy];
  v29[0] = MEMORY[0x1E69E9820];
  v29[1] = 3221225472;
  v29[2] = __55__CNReputationStore_reputationForHandle_timeout_error___block_invoke_2;
  v29[3] = &unk_1E7414C50;
  v29[4] = self;
  v19 = handleCopy;
  v30 = v19;
  [v18 addSuccessBlock:v29];
  v23 = MEMORY[0x1E69E9820];
  v24 = 3221225472;
  v25 = __55__CNReputationStore_reputationForHandle_timeout_error___block_invoke_3;
  v26 = &unk_1E7414C78;
  selfCopy = self;
  v28 = v19;
  [v18 addFailureBlock:&v23];
  v20 = [v18 resultWithTimeout:error error:{timeout, v23, v24, v25, v26, selfCopy}];
  if (!v20 && [MEMORY[0x1E6996708] isTimeoutError:*error])
  {
    CNSetError(error, 1001, 0);
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

- (id)makeFutureForHandle:(id)handle
{
  handleCopy = handle;
  v5 = [CNReputationFutureBuilder alloc];
  coreRecentsAdapter = [(CNReputationStore *)self coreRecentsAdapter];
  contactsAdapter = [(CNReputationStore *)self contactsAdapter];
  logger = [(CNReputationStore *)self logger];
  v9 = [(CNReputationFutureBuilder *)v5 initWithHandle:handleCopy coreRecentsAdapter:coreRecentsAdapter contactsAdapter:contactsAdapter logger:logger];

  [handleCopy configureBuilder:v9];
  build = [(CNReputationFutureBuilder *)v9 build];

  return build;
}

@end