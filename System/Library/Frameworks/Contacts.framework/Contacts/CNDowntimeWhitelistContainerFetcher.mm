@interface CNDowntimeWhitelistContainerFetcher
+ (OS_os_log)os_log;
- (CNContainer)primaryiCloudContainer;
- (CNDowntimeWhitelistContainerFetcher)init;
- (CNDowntimeWhitelistContainerFetcher)initWithContactStore:(id)store accountStore:(id)accountStore notificationCenter:(id)center;
- (id)fetchPrimaryiCloudCardDAVAccountIdentifier;
- (id)fetchPrimaryiCloudCardDAVContainer;
- (void)beginObservingChangeNotifications;
- (void)dealloc;
- (void)fetchPrimaryiCloudCardDAVContainer;
@end

@implementation CNDowntimeWhitelistContainerFetcher

- (void)beginObservingChangeNotifications
{
  objc_initWeak(&location, self);
  notificationCenter = self->_notificationCenter;
  v4 = *MEMORY[0x1E6959968];
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __72__CNDowntimeWhitelistContainerFetcher_beginObservingChangeNotifications__block_invoke;
  v7[3] = &unk_1E7412DF8;
  objc_copyWeak(&v8, &location);
  v5 = [(NSNotificationCenter *)notificationCenter addObserverForName:v4 object:0 queue:0 usingBlock:v7];
  accountStoreDidChangeNotificationToken = self->_accountStoreDidChangeNotificationToken;
  self->_accountStoreDidChangeNotificationToken = v5;

  objc_destroyWeak(&v8);
  objc_destroyWeak(&location);
}

+ (OS_os_log)os_log
{
  if (os_log_cn_once_token_0_4 != -1)
  {
    +[CNDowntimeWhitelistContainerFetcher os_log];
  }

  v3 = os_log_cn_once_object_0_4;

  return v3;
}

uint64_t __45__CNDowntimeWhitelistContainerFetcher_os_log__block_invoke()
{
  v0 = os_log_create("com.apple.contacts", "whitelist");
  v1 = os_log_cn_once_object_0_4;
  os_log_cn_once_object_0_4 = v0;

  return MEMORY[0x1EEE66BB8](v0, v1);
}

- (CNDowntimeWhitelistContainerFetcher)init
{
  v3 = objc_alloc_init(CNContactStore);
  defaultStore = [MEMORY[0x1E6959A48] defaultStore];
  defaultCenter = [MEMORY[0x1E696AD88] defaultCenter];
  v6 = [(CNDowntimeWhitelistContainerFetcher *)self initWithContactStore:v3 accountStore:defaultStore notificationCenter:defaultCenter];

  return v6;
}

- (CNDowntimeWhitelistContainerFetcher)initWithContactStore:(id)store accountStore:(id)accountStore notificationCenter:(id)center
{
  storeCopy = store;
  accountStoreCopy = accountStore;
  centerCopy = center;
  v16.receiver = self;
  v16.super_class = CNDowntimeWhitelistContainerFetcher;
  v12 = [(CNDowntimeWhitelistContainerFetcher *)&v16 init];
  v13 = v12;
  if (v12)
  {
    objc_storeStrong(&v12->_contactStore, store);
    objc_storeStrong(&v13->_accountStore, accountStore);
    objc_storeStrong(&v13->_notificationCenter, center);
    [(CNDowntimeWhitelistContainerFetcher *)v13 beginObservingChangeNotifications];
    v14 = v13;
  }

  return v13;
}

void __72__CNDowntimeWhitelistContainerFetcher_beginObservingChangeNotifications__block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    v2 = [objc_opt_class() os_log];
    if (os_log_type_enabled(v2, OS_LOG_TYPE_INFO))
    {
      *buf = 0;
      _os_log_impl(&dword_1954A0000, v2, OS_LOG_TYPE_INFO, "will clear primary iCloud CardDAV container identifier", buf, 2u);
    }

    cn_runWithObjectLock();
  }
}

void __72__CNDowntimeWhitelistContainerFetcher_beginObservingChangeNotifications__block_invoke_5(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = *(v1 + 8);
  *(v1 + 8) = 0;
}

- (void)dealloc
{
  [(NSNotificationCenter *)self->_notificationCenter removeObserver:self->_accountStoreDidChangeNotificationToken];
  v3.receiver = self;
  v3.super_class = CNDowntimeWhitelistContainerFetcher;
  [(CNDowntimeWhitelistContainerFetcher *)&v3 dealloc];
}

- (CNContainer)primaryiCloudContainer
{
  v2 = cn_objectResultWithObjectLock();

  return v2;
}

id __61__CNDowntimeWhitelistContainerFetcher_primaryiCloudContainer__block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = v2[1];
  if (!v3)
  {
    v4 = [v2 fetchPrimaryiCloudCardDAVContainer];
    v5 = *(a1 + 32);
    v6 = *(v5 + 8);
    *(v5 + 8) = v4;

    v3 = *(*(a1 + 32) + 8);
  }

  return v3;
}

- (id)fetchPrimaryiCloudCardDAVContainer
{
  v20 = *MEMORY[0x1E69E9840];
  os_log = [objc_opt_class() os_log];
  if (os_log_type_enabled(os_log, OS_LOG_TYPE_INFO))
  {
    *buf = 0;
    _os_log_impl(&dword_1954A0000, os_log, OS_LOG_TYPE_INFO, "will fetch primary iCloud CardDAV container", buf, 2u);
  }

  fetchPrimaryiCloudCardDAVAccountIdentifier = [(CNDowntimeWhitelistContainerFetcher *)self fetchPrimaryiCloudCardDAVAccountIdentifier];
  v5 = [CNContainer predicateForContainersInAccountWithExternalIdentifier:fetchPrimaryiCloudCardDAVAccountIdentifier];
  contactStore = [(CNDowntimeWhitelistContainerFetcher *)self contactStore];
  v15 = 0;
  v7 = [contactStore containersMatchingPredicate:v5 error:&v15];
  v8 = v15;

  LOBYTE(contactStore) = (*(*MEMORY[0x1E6996530] + 16))();
  os_log2 = [objc_opt_class() os_log];
  v10 = os_log2;
  if (contactStore)
  {
    if (os_log_type_enabled(os_log2, OS_LOG_TYPE_ERROR))
    {
      [(CNDowntimeWhitelistContainerFetcher *)fetchPrimaryiCloudCardDAVAccountIdentifier fetchPrimaryiCloudCardDAVContainer];
    }

    firstObject2 = 0;
  }

  else
  {
    if (os_log_type_enabled(os_log2, OS_LOG_TYPE_INFO))
    {
      firstObject = [v7 firstObject];
      identifier = [firstObject identifier];
      *buf = 138543618;
      v17 = identifier;
      v18 = 2114;
      v19 = fetchPrimaryiCloudCardDAVAccountIdentifier;
      _os_log_impl(&dword_1954A0000, v10, OS_LOG_TYPE_INFO, "found primary CardDAV container with identifier %{public}@ for primary CardDAV account with identifier %{public}@", buf, 0x16u);
    }

    firstObject2 = [v7 firstObject];
  }

  return firstObject2;
}

- (id)fetchPrimaryiCloudCardDAVAccountIdentifier
{
  v11 = *MEMORY[0x1E69E9840];
  accountStore = [(CNDowntimeWhitelistContainerFetcher *)self accountStore];
  aa_primaryAppleAccount = [accountStore aa_primaryAppleAccount];
  childCardDAVAccountIdentifier = [aa_primaryAppleAccount childCardDAVAccountIdentifier];

  LOBYTE(accountStore) = (*(*MEMORY[0x1E6996568] + 16))();
  os_log = [objc_opt_class() os_log];
  v6 = os_log;
  if (accountStore)
  {
    if (os_log_type_enabled(os_log, OS_LOG_TYPE_ERROR))
    {
      [(CNDowntimeWhitelistContainerFetcher *)v6 fetchPrimaryiCloudCardDAVAccountIdentifier];
    }

    v7 = &stru_1F094DAB0;
  }

  else
  {
    if (os_log_type_enabled(os_log, OS_LOG_TYPE_INFO))
    {
      v9 = 138543362;
      v10 = childCardDAVAccountIdentifier;
      _os_log_impl(&dword_1954A0000, v6, OS_LOG_TYPE_INFO, "found primary CardDAV account identifier %{public}@", &v9, 0xCu);
    }

    v7 = childCardDAVAccountIdentifier;
  }

  return v7;
}

- (void)fetchPrimaryiCloudCardDAVContainer
{
  v7 = *MEMORY[0x1E69E9840];
  v3 = 138543618;
  selfCopy = self;
  v5 = 2114;
  v6 = a2;
  _os_log_error_impl(&dword_1954A0000, log, OS_LOG_TYPE_ERROR, "error fetching primary CardDAV container for account with identifier %{public}@: %{public}@", &v3, 0x16u);
}

@end