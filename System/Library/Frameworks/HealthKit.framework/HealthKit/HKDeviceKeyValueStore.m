@interface HKDeviceKeyValueStore
+ (id)clientInterface;
+ (id)serverInterface;
- (HKDeviceKeyValueStore)initWithProtectionCategory:(int64_t)a3 domain:(id)a4 healthStore:(id)a5;
- (HKDeviceKeyValueStoreDelegate)delegate;
- (void)clientRemote_deviceKeyValueStoreDidUpdateForStorageGroup:(id)a3;
- (void)fetchEntriesForKey:(id)a3 completion:(id)a4;
- (void)mostRecentEntryForKey:(id)a3 completion:(id)a4;
- (void)setData:(id)a3 forKey:(id)a4 completion:(id)a5;
- (void)setDate:(id)a3 forKey:(id)a4 completion:(id)a5;
- (void)setDelegate:(id)a3;
- (void)setNumber:(id)a3 forKey:(id)a4 completion:(id)a5;
- (void)setString:(id)a3 forKey:(id)a4 completion:(id)a5;
- (void)startObservingDeviceKeyValueStoreWithCompletion:(id)a3;
@end

@implementation HKDeviceKeyValueStore

- (HKDeviceKeyValueStore)initWithProtectionCategory:(int64_t)a3 domain:(id)a4 healthStore:(id)a5
{
  v8 = a4;
  v9 = a5;
  v20.receiver = self;
  v20.super_class = HKDeviceKeyValueStore;
  v10 = [(HKDeviceKeyValueStore *)&v20 init];
  if (v10)
  {
    v11 = [HKTaskServerProxyProvider alloc];
    v12 = [MEMORY[0x1E696AFB0] UUID];
    v13 = [(HKTaskServerProxyProvider *)v11 initWithHealthStore:v9 taskIdentifier:@"HKDeviceKeyValueStoreServerIdentifier" exportedObject:v10 taskUUID:v12];
    proxyProvider = v10->_proxyProvider;
    v10->_proxyProvider = v13;

    v15 = objc_alloc_init(HKDeviceKeyValueStoreTaskConfiguration);
    v16 = [v8 copy];
    [(HKDeviceKeyValueStoreTaskConfiguration *)v15 setDomain:v16];

    [(HKTaskServerProxyProvider *)v10->_proxyProvider setTaskConfiguration:v15];
    v10->_protectionCategory = a3;
    v17 = [v8 copy];
    domain = v10->_domain;
    v10->_domain = v17;

    v10->_lock._os_unfair_lock_opaque = 0;
  }

  return v10;
}

- (void)fetchEntriesForKey:(id)a3 completion:(id)a4
{
  v6 = a3;
  v7 = [(HKProxyProvider *)self->_proxyProvider clientQueueObjectHandlerWithCompletion:a4];
  proxyProvider = self->_proxyProvider;
  v13[0] = MEMORY[0x1E69E9820];
  v13[1] = 3221225472;
  v13[2] = __55__HKDeviceKeyValueStore_fetchEntriesForKey_completion___block_invoke;
  v13[3] = &unk_1E737BB80;
  v13[4] = self;
  v14 = v6;
  v15 = v7;
  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 3221225472;
  v11[2] = __55__HKDeviceKeyValueStore_fetchEntriesForKey_completion___block_invoke_2;
  v11[3] = &unk_1E7376960;
  v12 = v15;
  v9 = v15;
  v10 = v6;
  [(HKProxyProvider *)proxyProvider fetchProxyWithHandler:v13 errorHandler:v11];
}

- (void)mostRecentEntryForKey:(id)a3 completion:(id)a4
{
  v6 = a3;
  v7 = [(HKProxyProvider *)self->_proxyProvider clientQueueObjectHandlerWithCompletion:a4];
  proxyProvider = self->_proxyProvider;
  v13[0] = MEMORY[0x1E69E9820];
  v13[1] = 3221225472;
  v13[2] = __58__HKDeviceKeyValueStore_mostRecentEntryForKey_completion___block_invoke;
  v13[3] = &unk_1E737BB80;
  v13[4] = self;
  v14 = v6;
  v15 = v7;
  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 3221225472;
  v11[2] = __58__HKDeviceKeyValueStore_mostRecentEntryForKey_completion___block_invoke_2;
  v11[3] = &unk_1E7376960;
  v12 = v15;
  v9 = v15;
  v10 = v6;
  [(HKProxyProvider *)proxyProvider fetchProxyWithHandler:v13 errorHandler:v11];
}

- (void)setData:(id)a3 forKey:(id)a4 completion:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = [(HKProxyProvider *)self->_proxyProvider clientQueueActionHandlerWithCompletion:a5];
  proxyProvider = self->_proxyProvider;
  v17[0] = MEMORY[0x1E69E9820];
  v17[1] = 3221225472;
  v17[2] = __51__HKDeviceKeyValueStore_setData_forKey_completion___block_invoke;
  v17[3] = &unk_1E737BBA8;
  v18 = v8;
  v19 = v9;
  v20 = self;
  v21 = v10;
  v15[0] = MEMORY[0x1E69E9820];
  v15[1] = 3221225472;
  v15[2] = __51__HKDeviceKeyValueStore_setData_forKey_completion___block_invoke_2;
  v15[3] = &unk_1E7376960;
  v16 = v21;
  v12 = v21;
  v13 = v9;
  v14 = v8;
  [(HKProxyProvider *)proxyProvider fetchProxyWithHandler:v17 errorHandler:v15];
}

- (void)setDate:(id)a3 forKey:(id)a4 completion:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = [(HKProxyProvider *)self->_proxyProvider clientQueueActionHandlerWithCompletion:a5];
  proxyProvider = self->_proxyProvider;
  v17[0] = MEMORY[0x1E69E9820];
  v17[1] = 3221225472;
  v17[2] = __51__HKDeviceKeyValueStore_setDate_forKey_completion___block_invoke;
  v17[3] = &unk_1E737BBA8;
  v18 = v8;
  v19 = v9;
  v20 = self;
  v21 = v10;
  v15[0] = MEMORY[0x1E69E9820];
  v15[1] = 3221225472;
  v15[2] = __51__HKDeviceKeyValueStore_setDate_forKey_completion___block_invoke_2;
  v15[3] = &unk_1E7376960;
  v16 = v21;
  v12 = v21;
  v13 = v9;
  v14 = v8;
  [(HKProxyProvider *)proxyProvider fetchProxyWithHandler:v17 errorHandler:v15];
}

- (void)setNumber:(id)a3 forKey:(id)a4 completion:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = [(HKProxyProvider *)self->_proxyProvider clientQueueActionHandlerWithCompletion:a5];
  proxyProvider = self->_proxyProvider;
  v17[0] = MEMORY[0x1E69E9820];
  v17[1] = 3221225472;
  v17[2] = __53__HKDeviceKeyValueStore_setNumber_forKey_completion___block_invoke;
  v17[3] = &unk_1E737BBA8;
  v18 = v8;
  v19 = v9;
  v20 = self;
  v21 = v10;
  v15[0] = MEMORY[0x1E69E9820];
  v15[1] = 3221225472;
  v15[2] = __53__HKDeviceKeyValueStore_setNumber_forKey_completion___block_invoke_2;
  v15[3] = &unk_1E7376960;
  v16 = v21;
  v12 = v21;
  v13 = v9;
  v14 = v8;
  [(HKProxyProvider *)proxyProvider fetchProxyWithHandler:v17 errorHandler:v15];
}

- (void)setString:(id)a3 forKey:(id)a4 completion:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = [(HKProxyProvider *)self->_proxyProvider clientQueueActionHandlerWithCompletion:a5];
  proxyProvider = self->_proxyProvider;
  v17[0] = MEMORY[0x1E69E9820];
  v17[1] = 3221225472;
  v17[2] = __53__HKDeviceKeyValueStore_setString_forKey_completion___block_invoke;
  v17[3] = &unk_1E737BBA8;
  v18 = v8;
  v19 = v9;
  v20 = self;
  v21 = v10;
  v15[0] = MEMORY[0x1E69E9820];
  v15[1] = 3221225472;
  v15[2] = __53__HKDeviceKeyValueStore_setString_forKey_completion___block_invoke_2;
  v15[3] = &unk_1E7376960;
  v16 = v21;
  v12 = v21;
  v13 = v9;
  v14 = v8;
  [(HKProxyProvider *)proxyProvider fetchProxyWithHandler:v17 errorHandler:v15];
}

- (void)startObservingDeviceKeyValueStoreWithCompletion:(id)a3
{
  v4 = [(HKProxyProvider *)self->_proxyProvider clientQueueActionHandlerWithCompletion:a3];
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

- (void)setDelegate:(id)a3
{
  v4 = a3;
  os_unfair_lock_lock(&self->_lock);
  objc_storeWeak(&self->_delegate, v4);

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

- (void)clientRemote_deviceKeyValueStoreDidUpdateForStorageGroup:(id)a3
{
  v4 = a3;
  os_unfair_lock_lock(&self->_lock);
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  os_unfair_lock_unlock(&self->_lock);
  if (WeakRetained)
  {
    v6 = [(HKProxyProvider *)self->_proxyProvider clientQueue];
    v7[0] = MEMORY[0x1E69E9820];
    v7[1] = 3221225472;
    v7[2] = __82__HKDeviceKeyValueStore_clientRemote_deviceKeyValueStoreDidUpdateForStorageGroup___block_invoke;
    v7[3] = &unk_1E7378400;
    v8 = WeakRetained;
    v9 = v4;
    dispatch_sync(v6, v7);
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