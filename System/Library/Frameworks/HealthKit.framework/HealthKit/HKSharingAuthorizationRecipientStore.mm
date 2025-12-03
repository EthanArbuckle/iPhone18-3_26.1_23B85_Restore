@interface HKSharingAuthorizationRecipientStore
+ (id)clientInterface;
+ (id)serverInterface;
- (HKSharingAuthorizationRecipientStore)initWithHealthStore:(id)store sharingAuthorizations:(id)authorizations;
- (id)exportedInterface;
- (id)remoteInterface;
- (void)_registerRemoteObservers;
- (void)addObserver:(id)observer;
- (void)clientRemote_didAddRecipientIdentifier:(id)identifier sharingAuthorizations:(id)authorizations;
- (void)clientRemote_didRemoveRecipientIdentifier:(id)identifier sharingAuthorizations:(id)authorizations;
- (void)clientRemote_didRevokeRecipientIdentifier:(id)identifier;
- (void)fetchRecipientIdentifiersByAuthorizationWithCompletion:(id)completion;
- (void)removeObserver:(id)observer;
@end

@implementation HKSharingAuthorizationRecipientStore

- (HKSharingAuthorizationRecipientStore)initWithHealthStore:(id)store sharingAuthorizations:(id)authorizations
{
  storeCopy = store;
  authorizationsCopy = authorizations;
  v28.receiver = self;
  v28.super_class = HKSharingAuthorizationRecipientStore;
  v9 = [(HKSharingAuthorizationRecipientStore *)&v28 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_healthStore, store);
    v11 = [authorizationsCopy copy];
    sharingAuthorizations = v10->_sharingAuthorizations;
    v10->_sharingAuthorizations = v11;

    v13 = HKAuthorizationIdentifiersFromSharingAuthorizations(authorizationsCopy);
    authorizationIdentifiers = v10->_authorizationIdentifiers;
    v10->_authorizationIdentifiers = v13;

    v15 = [HKTaskServerProxyProvider alloc];
    healthStore = v10->_healthStore;
    uUID = [MEMORY[0x1E696AFB0] UUID];
    v18 = [(HKTaskServerProxyProvider *)v15 initWithHealthStore:healthStore taskIdentifier:@"HKSharingAuthorizationRecipientStoreServerIdentifier" exportedObject:v10 taskUUID:uUID];
    proxyProvider = v10->_proxyProvider;
    v10->_proxyProvider = v18;

    v20 = objc_alloc_init(HKSharingAuthorizationRecipientStoreTaskConfiguration);
    [(HKSharingAuthorizationRecipientStoreTaskConfiguration *)v20 setSharingAuthorizations:v10->_sharingAuthorizations];
    [(HKTaskServerProxyProvider *)v10->_proxyProvider setTaskConfiguration:v20];
    v21 = [HKObserverSet alloc];
    v22 = objc_opt_class();
    v23 = NSStringFromClass(v22);
    v24 = HKLogSharing();
    v25 = [(HKObserverSet *)v21 initWithName:v23 loggingCategory:v24];
    observers = v10->_observers;
    v10->_observers = v25;
  }

  return v10;
}

- (void)fetchRecipientIdentifiersByAuthorizationWithCompletion:(id)completion
{
  v4 = [(HKProxyProvider *)self->_proxyProvider clientQueueObjectHandlerWithCompletion:completion];
  proxyProvider = self->_proxyProvider;
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __95__HKSharingAuthorizationRecipientStore_fetchRecipientIdentifiersByAuthorizationWithCompletion___block_invoke;
  v9[3] = &unk_1E737A110;
  v10 = v4;
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __95__HKSharingAuthorizationRecipientStore_fetchRecipientIdentifiersByAuthorizationWithCompletion___block_invoke_2;
  v7[3] = &unk_1E7376820;
  v7[4] = self;
  v8 = v10;
  v6 = v10;
  [(HKProxyProvider *)proxyProvider fetchProxyWithHandler:v9 errorHandler:v7];
}

void __95__HKSharingAuthorizationRecipientStore_fetchRecipientIdentifiersByAuthorizationWithCompletion___block_invoke_2(uint64_t a1, void *a2)
{
  v3 = a2;
  _HKInitializeLogging();
  v4 = HKLogSharing();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
  {
    __95__HKSharingAuthorizationRecipientStore_fetchRecipientIdentifiersByAuthorizationWithCompletion___block_invoke_2_cold_1(a1);
  }

  (*(*(a1 + 40) + 16))();
}

- (void)addObserver:(id)observer
{
  proxyProvider = self->_proxyProvider;
  observers = self->_observers;
  observerCopy = observer;
  clientQueue = [(HKProxyProvider *)proxyProvider clientQueue];
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __52__HKSharingAuthorizationRecipientStore_addObserver___block_invoke;
  v8[3] = &unk_1E7376780;
  v8[4] = self;
  [(HKObserverSet *)observers registerObserver:observerCopy queue:clientQueue runIfFirstObserver:v8];
}

void __52__HKSharingAuthorizationRecipientStore_addObserver___block_invoke(uint64_t a1)
{
  objc_initWeak(&location, *(a1 + 32));
  v2 = MEMORY[0x1E69E9820];
  v3 = 3221225472;
  v4 = __52__HKSharingAuthorizationRecipientStore_addObserver___block_invoke_2;
  v5 = &unk_1E7379140;
  objc_copyWeak(&v6, &location);
  [*(*(a1 + 32) + 32) setAutomaticProxyReconnectionHandler:&v2];
  [*(a1 + 32) _registerRemoteObservers];
  objc_destroyWeak(&v6);
  objc_destroyWeak(&location);
}

void __52__HKSharingAuthorizationRecipientStore_addObserver___block_invoke_2(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained _registerRemoteObservers];
}

- (void)removeObserver:(id)observer
{
  observers = self->_observers;
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = __55__HKSharingAuthorizationRecipientStore_removeObserver___block_invoke;
  v4[3] = &unk_1E7376780;
  v4[4] = self;
  [(HKObserverSet *)observers unregisterObserver:observer runIfLastObserver:v4];
}

uint64_t __55__HKSharingAuthorizationRecipientStore_removeObserver___block_invoke(uint64_t a1)
{
  [*(*(a1 + 32) + 32) setAutomaticProxyReconnectionHandler:0];
  v2 = *(a1 + 32);
  v3 = *(v2 + 32);
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __55__HKSharingAuthorizationRecipientStore_removeObserver___block_invoke_3;
  v5[3] = &unk_1E7376898;
  v5[4] = v2;
  return [v3 fetchProxyWithHandler:&__block_literal_global_17 errorHandler:v5];
}

void __55__HKSharingAuthorizationRecipientStore_removeObserver___block_invoke_3(uint64_t a1, void *a2)
{
  v3 = a2;
  _HKInitializeLogging();
  v4 = HKLogSharing();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
  {
    __55__HKSharingAuthorizationRecipientStore_removeObserver___block_invoke_3_cold_1(a1);
  }
}

- (void)clientRemote_didAddRecipientIdentifier:(id)identifier sharingAuthorizations:(id)authorizations
{
  identifierCopy = identifier;
  authorizationsCopy = authorizations;
  observers = self->_observers;
  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 3221225472;
  v11[2] = __101__HKSharingAuthorizationRecipientStore_clientRemote_didAddRecipientIdentifier_sharingAuthorizations___block_invoke;
  v11[3] = &unk_1E737A158;
  v11[4] = self;
  v12 = identifierCopy;
  v13 = authorizationsCopy;
  v9 = authorizationsCopy;
  v10 = identifierCopy;
  [(HKObserverSet *)observers notifyObservers:v11];
}

- (void)clientRemote_didRemoveRecipientIdentifier:(id)identifier sharingAuthorizations:(id)authorizations
{
  identifierCopy = identifier;
  authorizationsCopy = authorizations;
  observers = self->_observers;
  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 3221225472;
  v11[2] = __104__HKSharingAuthorizationRecipientStore_clientRemote_didRemoveRecipientIdentifier_sharingAuthorizations___block_invoke;
  v11[3] = &unk_1E737A158;
  v11[4] = self;
  v12 = identifierCopy;
  v13 = authorizationsCopy;
  v9 = authorizationsCopy;
  v10 = identifierCopy;
  [(HKObserverSet *)observers notifyObservers:v11];
}

- (void)clientRemote_didRevokeRecipientIdentifier:(id)identifier
{
  identifierCopy = identifier;
  observers = self->_observers;
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __82__HKSharingAuthorizationRecipientStore_clientRemote_didRevokeRecipientIdentifier___block_invoke;
  v7[3] = &unk_1E737A180;
  v7[4] = self;
  v8 = identifierCopy;
  v6 = identifierCopy;
  [(HKObserverSet *)observers notifyObservers:v7];
}

- (void)_registerRemoteObservers
{
  proxyProvider = self->_proxyProvider;
  v3[0] = MEMORY[0x1E69E9820];
  v3[1] = 3221225472;
  v3[2] = __64__HKSharingAuthorizationRecipientStore__registerRemoteObservers__block_invoke_2;
  v3[3] = &unk_1E7376898;
  v3[4] = self;
  [(HKProxyProvider *)proxyProvider fetchProxyWithHandler:&__block_literal_global_16 errorHandler:v3];
}

void __64__HKSharingAuthorizationRecipientStore__registerRemoteObservers__block_invoke_2(uint64_t a1, void *a2)
{
  v3 = a2;
  _HKInitializeLogging();
  v4 = HKLogSharing();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
  {
    __64__HKSharingAuthorizationRecipientStore__registerRemoteObservers__block_invoke_2_cold_1(a1);
  }
}

+ (id)clientInterface
{
  v2 = [MEMORY[0x1E696B0D0] interfaceWithProtocol:&unk_1F06F6D58];
  v3 = [v2 hk_setArrayOfClass:objc_opt_class() forSelector:sel_clientRemote_didAddRecipientIdentifier_sharingAuthorizations_ argumentIndex:1 ofReply:0];
  v4 = [v2 hk_setArrayOfClass:objc_opt_class() forSelector:sel_clientRemote_didRemoveRecipientIdentifier_sharingAuthorizations_ argumentIndex:1 ofReply:0];

  return v2;
}

+ (id)serverInterface
{
  v2 = [MEMORY[0x1E696B0D0] interfaceWithProtocol:&unk_1F06F6DB8];
  v3 = MEMORY[0x1E695DFD8];
  v4 = objc_opt_class();
  v5 = objc_opt_class();
  v6 = objc_opt_class();
  v7 = [v3 setWithObjects:{v4, v5, v6, objc_opt_class(), 0}];
  [v2 setClasses:v7 forSelector:sel_remote_fetchRecipientIdentifiersWithCompletion_ argumentIndex:0 ofReply:1];

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

void __95__HKSharingAuthorizationRecipientStore_fetchRecipientIdentifiersByAuthorizationWithCompletion___block_invoke_2_cold_1(uint64_t a1)
{
  v5 = *MEMORY[0x1E69E9840];
  v1 = *(a1 + 32);
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_1(&dword_19197B000, v2, v3, "[summary-sharing] %{public}@: Error fetching recipient identifiers %{public}@");
  v4 = *MEMORY[0x1E69E9840];
}

void __55__HKSharingAuthorizationRecipientStore_removeObserver___block_invoke_3_cold_1(uint64_t a1)
{
  v5 = *MEMORY[0x1E69E9840];
  v1 = *(a1 + 32);
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_1(&dword_19197B000, v2, v3, "[summary-sharing] %{public}@: Error unregistering observers %{public}@");
  v4 = *MEMORY[0x1E69E9840];
}

void __64__HKSharingAuthorizationRecipientStore__registerRemoteObservers__block_invoke_2_cold_1(uint64_t a1)
{
  v5 = *MEMORY[0x1E69E9840];
  v1 = *(a1 + 32);
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_1(&dword_19197B000, v2, v3, "[summary-sharing] %{public}@: Error registering observers %{public}@");
  v4 = *MEMORY[0x1E69E9840];
}

@end