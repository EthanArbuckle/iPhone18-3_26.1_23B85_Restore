@interface CNContainerCache
+ (id)os_log;
- (ACAccountStore)accountStore;
- (CNContactStore)contactStore;
- (CNContainer)primaryiCloudContainer;
- (CNContainerCache)initWithContactStore:(id)store;
- (id)accountForContainer:(id)container;
- (id)cnAccountForContainer:(id)container;
- (id)onWorkQueue_findPrimaryiCloudContainer;
- (void)accountStoreDidChange;
- (void)contactStoreDidChange;
- (void)dealloc;
- (void)onWorkQueue_findPrimaryiCloudContainer;
@end

@implementation CNContainerCache

+ (id)os_log
{
  if (os_log_cn_once_token_0_23 != -1)
  {
    +[CNContainerCache os_log];
  }

  v3 = os_log_cn_once_object_0_23;

  return v3;
}

uint64_t __26__CNContainerCache_os_log__block_invoke()
{
  v0 = os_log_create("com.apple.contacts", "CNContainerCache");
  v1 = os_log_cn_once_object_0_23;
  os_log_cn_once_object_0_23 = v0;

  return MEMORY[0x1EEE66BB8](v0, v1);
}

- (CNContainerCache)initWithContactStore:(id)store
{
  storeCopy = store;
  v16.receiver = self;
  v16.super_class = CNContainerCache;
  v5 = [(CNContainerCache *)&v16 init];
  v6 = v5;
  if (v5)
  {
    objc_storeWeak(&v5->_contactStore, storeCopy);
    accountStore = v6->_accountStore;
    v6->_accountStore = 0;

    v8 = objc_alloc_init(MEMORY[0x1E6996660]);
    cachedAccounts = v6->_cachedAccounts;
    v6->_cachedAccounts = v8;

    v10 = dispatch_queue_create("com.apple.Contacts.CNContainerCache", 0);
    workQueue = v6->_workQueue;
    v6->_workQueue = v10;

    defaultCenter = [MEMORY[0x1E696AD88] defaultCenter];
    [defaultCenter addObserver:v6 selector:sel_accountStoreDidChange name:*MEMORY[0x1E6959968] object:0];

    defaultCenter2 = [MEMORY[0x1E696AD88] defaultCenter];
    [defaultCenter2 addObserver:v6 selector:sel_contactStoreDidChange name:@"CNContactStoreDidChangeNotification" object:0];

    v14 = v6;
  }

  return v6;
}

- (void)accountStoreDidChange
{
  workQueue = [(CNContainerCache *)self workQueue];
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __41__CNContainerCache_accountStoreDidChange__block_invoke;
  block[3] = &unk_1E7412A88;
  block[4] = self;
  dispatch_async(workQueue, block);
}

- (void)contactStoreDidChange
{
  workQueue = [(CNContainerCache *)self workQueue];
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __41__CNContainerCache_contactStoreDidChange__block_invoke;
  block[3] = &unk_1E7412A88;
  block[4] = self;
  dispatch_async(workQueue, block);
}

- (void)dealloc
{
  defaultCenter = [MEMORY[0x1E696AD88] defaultCenter];
  [defaultCenter removeObserver:self];

  v4.receiver = self;
  v4.super_class = CNContainerCache;
  [(CNContainerCache *)&v4 dealloc];
}

- (ACAccountStore)accountStore
{
  accountStore = self->_accountStore;
  if (!accountStore)
  {
    defaultStore = [MEMORY[0x1E6959A48] defaultStore];
    v5 = self->_accountStore;
    self->_accountStore = defaultStore;

    accountStore = self->_accountStore;
  }

  return accountStore;
}

- (CNContainer)primaryiCloudContainer
{
  v7 = 0;
  v8 = &v7;
  v9 = 0x3032000000;
  v10 = __Block_byref_object_copy__34;
  v11 = __Block_byref_object_dispose__34;
  v12 = 0;
  workQueue = [(CNContainerCache *)self workQueue];
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __42__CNContainerCache_primaryiCloudContainer__block_invoke;
  v6[3] = &unk_1E7416EB0;
  v6[4] = self;
  v6[5] = &v7;
  dispatch_sync(workQueue, v6);

  v4 = v8[5];
  _Block_object_dispose(&v7, 8);

  return v4;
}

void __42__CNContainerCache_primaryiCloudContainer__block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = v2[1];
  if (!v3)
  {
    v4 = [v2 onWorkQueue_findPrimaryiCloudContainer];
    v5 = *(a1 + 32);
    v6 = *(v5 + 8);
    *(v5 + 8) = v4;

    v3 = *(*(a1 + 32) + 8);
  }

  v7 = (*(*(a1 + 40) + 8) + 40);

  objc_storeStrong(v7, v3);
}

- (id)onWorkQueue_findPrimaryiCloudContainer
{
  v3 = [CNContainer predicateForContainersIncludingDisabled:0];
  contactStore = [(CNContainerCache *)self contactStore];
  v11 = 0;
  v5 = [contactStore containersMatchingPredicate:v3 error:&v11];
  v6 = v11;

  if (v6)
  {
    os_log = [objc_opt_class() os_log];
    if (os_log_type_enabled(os_log, OS_LOG_TYPE_ERROR))
    {
      [(CNContainerCache *)v6 onWorkQueue_findPrimaryiCloudContainer];
    }

    v8 = 0;
  }

  else
  {
    os_log = [v5 _cn_filter:&__block_literal_global_15_0];
    v10[0] = MEMORY[0x1E69E9820];
    v10[1] = 3221225472;
    v10[2] = __58__CNContainerCache_onWorkQueue_findPrimaryiCloudContainer__block_invoke_2;
    v10[3] = &unk_1E7417650;
    v10[4] = self;
    v8 = [os_log _cn_firstObjectPassingTest:v10];
  }

  return v8;
}

uint64_t __58__CNContainerCache_onWorkQueue_findPrimaryiCloudContainer__block_invoke_2(uint64_t a1, uint64_t a2)
{
  v2 = [*(a1 + 32) accountForContainer:a2];
  v3 = [v2 _cn_isPrimaryAccount];
  v4 = [v2 accountType];
  v5 = [v4 identifier];
  v6 = [v5 isEqualToString:*MEMORY[0x1E69597F8]];

  return v3 & v6;
}

- (id)accountForContainer:(id)container
{
  containerCopy = container;
  if (containerCopy)
  {
    cachedAccounts = [(CNContainerCache *)self cachedAccounts];
    identifier = [containerCopy identifier];
    v13[0] = MEMORY[0x1E69E9820];
    v13[1] = 3221225472;
    v13[2] = __40__CNContainerCache_accountForContainer___block_invoke;
    v13[3] = &unk_1E7417678;
    v13[4] = self;
    v14 = containerCopy;
    v7 = [cachedAccounts objectForKey:identifier onCacheMiss:v13];

    v11 = (*(*MEMORY[0x1E6996590] + 16))(*MEMORY[0x1E6996590], v7, v8, v9, v10);
  }

  else
  {
    v11 = 0;
  }

  return v11;
}

id __40__CNContainerCache_accountForContainer___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) cnAccountForContainer:*(a1 + 40)];
  v3 = [*(a1 + 32) accountStore];
  v4 = [v2 externalIdentifierString];
  v5 = [v3 accountWithIdentifier:v4];

  if (v5)
  {
    v6 = [v5 displayAccount];

    v7 = (*(*MEMORY[0x1E6996588] + 16))();
  }

  else
  {
    v8 = [objc_opt_class() os_log];
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      __40__CNContainerCache_accountForContainer___block_invoke_cold_1(v8);
    }

    v7 = [MEMORY[0x1E695DFB0] null];
  }

  return v7;
}

- (id)cnAccountForContainer:(id)container
{
  identifier = [container identifier];
  v5 = [CNAccount predicateForAccountForContainerWithIdentifier:identifier];

  contactStore = [(CNContainerCache *)self contactStore];
  v12 = 0;
  v7 = [contactStore accountsMatchingPredicate:v5 error:&v12];
  v8 = v12;

  if (v8)
  {
    os_log = [objc_opt_class() os_log];
    if (os_log_type_enabled(os_log, OS_LOG_TYPE_ERROR))
    {
      [(CNContainerCache *)v8 cnAccountForContainer:os_log];
    }

    firstObject = 0;
  }

  else
  {
    firstObject = [v7 firstObject];
  }

  return firstObject;
}

- (CNContactStore)contactStore
{
  WeakRetained = objc_loadWeakRetained(&self->_contactStore);

  return WeakRetained;
}

- (void)onWorkQueue_findPrimaryiCloudContainer
{
  v4 = *MEMORY[0x1E69E9840];
  v2 = 138543362;
  selfCopy = self;
  _os_log_error_impl(&dword_1954A0000, a2, OS_LOG_TYPE_ERROR, "Error when fetching CNContainers: %{public}@", &v2, 0xCu);
}

- (void)cnAccountForContainer:(uint64_t)a1 .cold.1(uint64_t a1, NSObject *a2)
{
  v4 = *MEMORY[0x1E69E9840];
  v2 = 138543362;
  v3 = a1;
  _os_log_error_impl(&dword_1954A0000, a2, OS_LOG_TYPE_ERROR, "Error when fetching CNAccounts: %{public}@", &v2, 0xCu);
}

@end