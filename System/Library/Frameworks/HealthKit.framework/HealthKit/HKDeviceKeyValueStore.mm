@interface HKDeviceKeyValueStore
+ (id)clientInterface;
+ (id)serverInterface;
- (HKDeviceKeyValueStore)initWithProtectionCategory:(int64_t)category domain:(id)domain healthStore:(id)store;
- (HKDeviceKeyValueStoreDelegate)delegate;
- (void)clientRemote_deviceKeyValueStoreDidUpdateForStorageGroup:(id)group;
- (void)fetchEntriesForKey:(id)key completion:(id)completion;
- (void)mostRecentEntryForKey:(id)key completion:(id)completion;
- (void)setData:(id)data forKey:(id)key completion:(id)completion;
- (void)setDate:(id)date forKey:(id)key completion:(id)completion;
- (void)setDelegate:(id)delegate;
- (void)setNumber:(id)number forKey:(id)key completion:(id)completion;
- (void)setString:(id)string forKey:(id)key completion:(id)completion;
- (void)startObservingDeviceKeyValueStoreWithCompletion:(id)completion;
@end

@implementation HKDeviceKeyValueStore

- (HKDeviceKeyValueStore)initWithProtectionCategory:(int64_t)category domain:(id)domain healthStore:(id)store
{
  domainCopy = domain;
  storeCopy = store;
  v20.receiver = self;
  v20.super_class = HKDeviceKeyValueStore;
  v10 = [(HKDeviceKeyValueStore *)&v20 init];
  if (v10)
  {
    v11 = [HKTaskServerProxyProvider alloc];
    uUID = [MEMORY[0x1E696AFB0] UUID];
    v13 = [(HKTaskServerProxyProvider *)v11 initWithHealthStore:storeCopy taskIdentifier:@"HKDeviceKeyValueStoreServerIdentifier" exportedObject:v10 taskUUID:uUID];
    proxyProvider = v10->_proxyProvider;
    v10->_proxyProvider = v13;

    v15 = objc_alloc_init(HKDeviceKeyValueStoreTaskConfiguration);
    v16 = [domainCopy copy];
    [(HKDeviceKeyValueStoreTaskConfiguration *)v15 setDomain:v16];

    [(HKTaskServerProxyProvider *)v10->_proxyProvider setTaskConfiguration:v15];
    v10->_protectionCategory = category;
    v17 = [domainCopy copy];
    domain = v10->_domain;
    v10->_domain = v17;

    v10->_lock._os_unfair_lock_opaque = 0;
  }

  return v10;
}

- (void)fetchEntriesForKey:(id)key completion:(id)completion
{
  keyCopy = key;
  v7 = [(HKProxyProvider *)self->_proxyProvider clientQueueObjectHandlerWithCompletion:completion];
  proxyProvider = self->_proxyProvider;
  v13[0] = MEMORY[0x1E69E9820];
  v13[1] = 3221225472;
  v13[2] = __55__HKDeviceKeyValueStore_fetchEntriesForKey_completion___block_invoke;
  v13[3] = &unk_1E737BB80;
  v13[4] = self;
  v14 = keyCopy;
  v15 = v7;
  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 3221225472;
  v11[2] = __55__HKDeviceKeyValueStore_fetchEntriesForKey_completion___block_invoke_2;
  v11[3] = &unk_1E7376960;
  v12 = v15;
  v9 = v15;
  v10 = keyCopy;
  [(HKProxyProvider *)proxyProvider fetchProxyWithHandler:v13 errorHandler:v11];
}

- (void)mostRecentEntryForKey:(id)key completion:(id)completion
{
  keyCopy = key;
  v7 = [(HKProxyProvider *)self->_proxyProvider clientQueueObjectHandlerWithCompletion:completion];
  proxyProvider = self->_proxyProvider;
  v13[0] = MEMORY[0x1E69E9820];
  v13[1] = 3221225472;
  v13[2] = __58__HKDeviceKeyValueStore_mostRecentEntryForKey_completion___block_invoke;
  v13[3] = &unk_1E737BB80;
  v13[4] = self;
  v14 = keyCopy;
  v15 = v7;
  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 3221225472;
  v11[2] = __58__HKDeviceKeyValueStore_mostRecentEntryForKey_completion___block_invoke_2;
  v11[3] = &unk_1E7376960;
  v12 = v15;
  v9 = v15;
  v10 = keyCopy;
  [(HKProxyProvider *)proxyProvider fetchProxyWithHandler:v13 errorHandler:v11];
}

- (void)setData:(id)data forKey:(id)key completion:(id)completion
{
  dataCopy = data;
  keyCopy = key;
  v10 = [(HKProxyProvider *)self->_proxyProvider clientQueueActionHandlerWithCompletion:completion];
  proxyProvider = self->_proxyProvider;
  v17[0] = MEMORY[0x1E69E9820];
  v17[1] = 3221225472;
  v17[2] = __51__HKDeviceKeyValueStore_setData_forKey_completion___block_invoke;
  v17[3] = &unk_1E737BBA8;
  v18 = dataCopy;
  v19 = keyCopy;
  selfCopy = self;
  v21 = v10;
  v15[0] = MEMORY[0x1E69E9820];
  v15[1] = 3221225472;
  v15[2] = __51__HKDeviceKeyValueStore_setData_forKey_completion___block_invoke_2;
  v15[3] = &unk_1E7376960;
  v16 = v21;
  v12 = v21;
  v13 = keyCopy;
  v14 = dataCopy;
  [(HKProxyProvider *)proxyProvider fetchProxyWithHandler:v17 errorHandler:v15];
}

- (void)setDate:(id)date forKey:(id)key completion:(id)completion
{
  dateCopy = date;
  keyCopy = key;
  v10 = [(HKProxyProvider *)self->_proxyProvider clientQueueActionHandlerWithCompletion:completion];
  proxyProvider = self->_proxyProvider;
  v17[0] = MEMORY[0x1E69E9820];
  v17[1] = 3221225472;
  v17[2] = __51__HKDeviceKeyValueStore_setDate_forKey_completion___block_invoke;
  v17[3] = &unk_1E737BBA8;
  v18 = dateCopy;
  v19 = keyCopy;
  selfCopy = self;
  v21 = v10;
  v15[0] = MEMORY[0x1E69E9820];
  v15[1] = 3221225472;
  v15[2] = __51__HKDeviceKeyValueStore_setDate_forKey_completion___block_invoke_2;
  v15[3] = &unk_1E7376960;
  v16 = v21;
  v12 = v21;
  v13 = keyCopy;
  v14 = dateCopy;
  [(HKProxyProvider *)proxyProvider fetchProxyWithHandler:v17 errorHandler:v15];
}

- (void)setNumber:(id)number forKey:(id)key completion:(id)completion
{
  numberCopy = number;
  keyCopy = key;
  v10 = [(HKProxyProvider *)self->_proxyProvider clientQueueActionHandlerWithCompletion:completion];
  proxyProvider = self->_proxyProvider;
  v17[0] = MEMORY[0x1E69E9820];
  v17[1] = 3221225472;
  v17[2] = __53__HKDeviceKeyValueStore_setNumber_forKey_completion___block_invoke;
  v17[3] = &unk_1E737BBA8;
  v18 = numberCopy;
  v19 = keyCopy;
  selfCopy = self;
  v21 = v10;
  v15[0] = MEMORY[0x1E69E9820];
  v15[1] = 3221225472;
  v15[2] = __53__HKDeviceKeyValueStore_setNumber_forKey_completion___block_invoke_2;
  v15[3] = &unk_1E7376960;
  v16 = v21;
  v12 = v21;
  v13 = keyCopy;
  v14 = numberCopy;
  [(HKProxyProvider *)proxyProvider fetchProxyWithHandler:v17 errorHandler:v15];
}

- (void)setString:(id)string forKey:(id)key completion:(id)completion
{
  stringCopy = string;
  keyCopy = key;
  v10 = [(HKProxyProvider *)self->_proxyProvider clientQueueActionHandlerWithCompletion:completion];
  proxyProvider = self->_proxyProvider;
  v17[0] = MEMORY[0x1E69E9820];
  v17[1] = 3221225472;
  v17[2] = __53__HKDeviceKeyValueStore_setString_forKey_completion___block_invoke;
  v17[3] = &unk_1E737BBA8;
  v18 = stringCopy;
  v19 = keyCopy;
  selfCopy = self;
  v21 = v10;
  v15[0] = MEMORY[0x1E69E9820];
  v15[1] = 3221225472;
  v15[2] = __53__HKDeviceKeyValueStore_setString_forKey_completion___block_invoke_2;
  v15[3] = &unk_1E7376960;
  v16 = v21;
  v12 = v21;
  v13 = keyCopy;
  v14 = stringCopy;
  [(HKProxyProvider *)proxyProvider fetchProxyWithHandler:v17 errorHandler:v15];
}

- (void)startObservingDeviceKeyValueStoreWithCompletion:(id)completion
{
  v4 = [(HKProxyProvider *)self->_proxyProvider clientQueueActionHandlerWithCompletion:completion];
  proxyProvider = self->_proxyProvider;
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __73__HKDeviceKeyValueStore_startObservingDeviceKeyValueStoreWithCompletion___block_invoke;
  v9[3] = &unk_1E737BBD0;
  v10 = v4;
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __73__HKDeviceKeyValueStore_startObservingDeviceKeyValueStoreWithCompletion___block_invoke_2;
  v7[3] = &unk_1E7376960;
  v8 = v10;
  v6 = v10;
  [(HKProxyProvider *)proxyProvider fetchProxyWithHandler:v9 errorHandler:v7];
}

- (void)setDelegate:(id)delegate
{
  delegateCopy = delegate;
  os_unfair_lock_lock(&self->_lock);
  objc_storeWeak(&self->_delegate, delegateCopy);

  os_unfair_lock_unlock(&self->_lock);
}

- (HKDeviceKeyValueStoreDelegate)delegate
{
  os_unfair_lock_lock(&self->_lock);
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  os_unfair_lock_unlock(&self->_lock);

  return WeakRetained;
}

+ (id)serverInterface
{
  v2 = [MEMORY[0x1E696B0D0] interfaceWithProtocol:&unk_1F06F7178];
  v3 = MEMORY[0x1E695DFD8];
  v4 = objc_opt_class();
  v5 = [v3 setWithObjects:{v4, objc_opt_class(), 0}];
  [v2 setClasses:v5 forSelector:sel_remote_fetchEntriesForDomain_key_protectionCategory_completion_ argumentIndex:0 ofReply:1];
  [v2 setClasses:v5 forSelector:sel_remote_mostRecentEntryForDomain_key_protectionCategory_completion_ argumentIndex:0 ofReply:1];

  return v2;
}

+ (id)clientInterface
{
  v2 = [MEMORY[0x1E696B0D0] interfaceWithProtocol:&unk_1F06A1CC8];
  v3 = MEMORY[0x1E695DFD8];
  v4 = objc_opt_class();
  v5 = [v3 setWithObjects:{v4, objc_opt_class(), 0}];
  [v2 setClasses:v5 forSelector:sel_clientRemote_deviceKeyValueStoreDidUpdateForStorageGroup_ argumentIndex:0 ofReply:0];

  return v2;
}

- (void)clientRemote_deviceKeyValueStoreDidUpdateForStorageGroup:(id)group
{
  groupCopy = group;
  os_unfair_lock_lock(&self->_lock);
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  os_unfair_lock_unlock(&self->_lock);
  if (WeakRetained)
  {
    clientQueue = [(HKProxyProvider *)self->_proxyProvider clientQueue];
    v7[0] = MEMORY[0x1E69E9820];
    v7[1] = 3221225472;
    v7[2] = __82__HKDeviceKeyValueStore_clientRemote_deviceKeyValueStoreDidUpdateForStorageGroup___block_invoke;
    v7[3] = &unk_1E7378400;
    v8 = WeakRetained;
    v9 = groupCopy;
    dispatch_sync(clientQueue, v7);
  }
}

uint64_t __82__HKDeviceKeyValueStore_clientRemote_deviceKeyValueStoreDidUpdateForStorageGroup___block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  result = objc_opt_respondsToSelector();
  if (result)
  {
    v4 = *(a1 + 32);
    v5 = *(a1 + 40);

    return [v4 deviceKeyValueStoreDidUpdateForStorageGroup:v5];
  }

  return result;
}

@end