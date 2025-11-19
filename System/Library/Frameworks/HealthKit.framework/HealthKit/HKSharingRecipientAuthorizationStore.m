@interface HKSharingRecipientAuthorizationStore
+ (id)clientInterface;
+ (id)serverInterface;
- (HKSharingRecipientAuthorizationStore)initWithHealthStore:(id)a3 recipientIdentifier:(id)a4;
- (id)exportedInterface;
- (id)remoteInterface;
- (void)_registerRemoteObservers;
- (void)addObserver:(id)a3;
- (void)addSharingAuthorizations:(id)a3 completion:(id)a4;
- (void)clientRemote_didAddSharingAuthorizations:(id)a3;
- (void)clientRemote_didRemoveSharingAuthorizations:(id)a3;
- (void)clientRemote_wasRevoked;
- (void)fetchSharingAuthorizationsMarkedForDeletionWithCompletion:(id)a3;
- (void)fetchSharingAuthorizationsWithCompletion:(id)a3;
- (void)removeObserver:(id)a3;
- (void)removeSharingAuthorizations:(id)a3 completion:(id)a4;
- (void)revokeWithCompletion:(id)a3;
@end

@implementation HKSharingRecipientAuthorizationStore

- (HKSharingRecipientAuthorizationStore)initWithHealthStore:(id)a3 recipientIdentifier:(id)a4
{
  v7 = a3;
  v8 = a4;
  v26.receiver = self;
  v26.super_class = HKSharingRecipientAuthorizationStore;
  v9 = [(HKSharingRecipientAuthorizationStore *)&v26 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_healthStore, a3);
    v11 = [v8 copy];
    recipientIdentifier = v10->_recipientIdentifier;
    v10->_recipientIdentifier = v11;

    v13 = [HKTaskServerProxyProvider alloc];
    healthStore = v10->_healthStore;
    v15 = [MEMORY[0x1E696AFB0] UUID];
    v16 = [(HKTaskServerProxyProvider *)v13 initWithHealthStore:healthStore taskIdentifier:@"HKSharingRecipientAuthorizationStoreServerIdentifier" exportedObject:v10 taskUUID:v15];
    proxyProvider = v10->_proxyProvider;
    v10->_proxyProvider = v16;

    v18 = objc_alloc_init(HKSharingRecipientAuthorizationStoreTaskConfiguration);
    [(HKSharingRecipientAuthorizationStoreTaskConfiguration *)v18 setRecipientIdentifier:v10->_recipientIdentifier];
    [(HKTaskServerProxyProvider *)v10->_proxyProvider setTaskConfiguration:v18];
    v19 = [HKObserverSet alloc];
    v20 = objc_opt_class();
    v21 = NSStringFromClass(v20);
    v22 = HKLogSharing();
    v23 = [(HKObserverSet *)v19 initWithName:v21 loggingCategory:v22];
    observers = v10->_observers;
    v10->_observers = v23;
  }

  return v10;
}

- (void)fetchSharingAuthorizationsWithCompletion:(id)a3
{
  v4 = [(HKProxyProvider *)self->_proxyProvider clientQueueObjectHandlerWithCompletion:a3];
  proxyProvider = self->_proxyProvider;
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __81__HKSharingRecipientAuthorizationStore_fetchSharingAuthorizationsWithCompletion___block_invoke;
  v9[3] = &unk_1E7381A80;
  v10 = v4;
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __81__HKSharingRecipientAuthorizationStore_fetchSharingAuthorizationsWithCompletion___block_invoke_2;
  v7[3] = &unk_1E7376820;
  v7[4] = self;
  v8 = v10;
  v6 = v10;
  [(HKProxyProvider *)proxyProvider fetchProxyWithHandler:v9 errorHandler:v7];
}

void __81__HKSharingRecipientAuthorizationStore_fetchSharingAuthorizationsWithCompletion___block_invoke_2(uint64_t a1, void *a2)
{
  v3 = a2;
  _HKInitializeLogging();
  v4 = HKLogSharing();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
  {
    __81__HKSharingRecipientAuthorizationStore_fetchSharingAuthorizationsWithCompletion___block_invoke_2_cold_1(a1);
  }

  (*(*(a1 + 40) + 16))();
}

- (void)fetchSharingAuthorizationsMarkedForDeletionWithCompletion:(id)a3
{
  v4 = [(HKProxyProvider *)self->_proxyProvider clientQueueObjectHandlerWithCompletion:a3];
  proxyProvider = self->_proxyProvider;
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __98__HKSharingRecipientAuthorizationStore_fetchSharingAuthorizationsMarkedForDeletionWithCompletion___block_invoke;
  v9[3] = &unk_1E7381A80;
  v10 = v4;
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __98__HKSharingRecipientAuthorizationStore_fetchSharingAuthorizationsMarkedForDeletionWithCompletion___block_invoke_2;
  v7[3] = &unk_1E7376820;
  v7[4] = self;
  v8 = v10;
  v6 = v10;
  [(HKProxyProvider *)proxyProvider fetchProxyWithHandler:v9 errorHandler:v7];
}

void __98__HKSharingRecipientAuthorizationStore_fetchSharingAuthorizationsMarkedForDeletionWithCompletion___block_invoke_2(uint64_t a1, void *a2)
{
  v3 = a2;
  _HKInitializeLogging();
  v4 = HKLogSharing();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
  {
    __98__HKSharingRecipientAuthorizationStore_fetchSharingAuthorizationsMarkedForDeletionWithCompletion___block_invoke_2_cold_1(a1);
  }

  (*(*(a1 + 40) + 16))();
}

- (void)addSharingAuthorizations:(id)a3 completion:(id)a4
{
  v6 = a3;
  v7 = [(HKProxyProvider *)self->_proxyProvider clientQueueActionHandlerWithCompletion:a4];
  proxyProvider = self->_proxyProvider;
  v13[0] = MEMORY[0x1E69E9820];
  v13[1] = 3221225472;
  v13[2] = __76__HKSharingRecipientAuthorizationStore_addSharingAuthorizations_completion___block_invoke;
  v13[3] = &unk_1E7381AA8;
  v14 = v6;
  v15 = v7;
  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 3221225472;
  v11[2] = __76__HKSharingRecipientAuthorizationStore_addSharingAuthorizations_completion___block_invoke_2;
  v11[3] = &unk_1E7376820;
  v11[4] = self;
  v12 = v15;
  v9 = v15;
  v10 = v6;
  [(HKProxyProvider *)proxyProvider fetchProxyWithHandler:v13 errorHandler:v11];
}

void __76__HKSharingRecipientAuthorizationStore_addSharingAuthorizations_completion___block_invoke_2(uint64_t a1, void *a2)
{
  v3 = a2;
  _HKInitializeLogging();
  v4 = HKLogSharing();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
  {
    __76__HKSharingRecipientAuthorizationStore_addSharingAuthorizations_completion___block_invoke_2_cold_1(a1);
  }

  (*(*(a1 + 40) + 16))();
}

- (void)removeSharingAuthorizations:(id)a3 completion:(id)a4
{
  v6 = a3;
  v7 = [(HKProxyProvider *)self->_proxyProvider clientQueueActionHandlerWithCompletion:a4];
  proxyProvider = self->_proxyProvider;
  v13[0] = MEMORY[0x1E69E9820];
  v13[1] = 3221225472;
  v13[2] = __79__HKSharingRecipientAuthorizationStore_removeSharingAuthorizations_completion___block_invoke;
  v13[3] = &unk_1E7381AA8;
  v14 = v6;
  v15 = v7;
  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 3221225472;
  v11[2] = __79__HKSharingRecipientAuthorizationStore_removeSharingAuthorizations_completion___block_invoke_2;
  v11[3] = &unk_1E7376820;
  v11[4] = self;
  v12 = v15;
  v9 = v15;
  v10 = v6;
  [(HKProxyProvider *)proxyProvider fetchProxyWithHandler:v13 errorHandler:v11];
}

void __79__HKSharingRecipientAuthorizationStore_removeSharingAuthorizations_completion___block_invoke_2(uint64_t a1, void *a2)
{
  v3 = a2;
  _HKInitializeLogging();
  v4 = HKLogSharing();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
  {
    __79__HKSharingRecipientAuthorizationStore_removeSharingAuthorizations_completion___block_invoke_2_cold_1(a1);
  }

  (*(*(a1 + 40) + 16))();
}

- (void)revokeWithCompletion:(id)a3
{
  v4 = [(HKProxyProvider *)self->_proxyProvider clientQueueActionHandlerWithCompletion:a3];
  proxyProvider = self->_proxyProvider;
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __61__HKSharingRecipientAuthorizationStore_revokeWithCompletion___block_invoke;
  v9[3] = &unk_1E7381A80;
  v10 = v4;
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __61__HKSharingRecipientAuthorizationStore_revokeWithCompletion___block_invoke_2;
  v7[3] = &unk_1E7376820;
  v7[4] = self;
  v8 = v10;
  v6 = v10;
  [(HKProxyProvider *)proxyProvider fetchProxyWithHandler:v9 errorHandler:v7];
}

void __61__HKSharingRecipientAuthorizationStore_revokeWithCompletion___block_invoke_2(uint64_t a1, void *a2)
{
  v3 = a2;
  _HKInitializeLogging();
  v4 = HKLogSharing();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
  {
    __61__HKSharingRecipientAuthorizationStore_revokeWithCompletion___block_invoke_2_cold_1(a1);
  }

  (*(*(a1 + 40) + 16))();
}

- (void)addObserver:(id)a3
{
  proxyProvider = self->_proxyProvider;
  observers = self->_observers;
  v6 = a3;
  v7 = [(HKProxyProvider *)proxyProvider clientQueue];
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __52__HKSharingRecipientAuthorizationStore_addObserver___block_invoke;
  v8[3] = &unk_1E7376780;
  v8[4] = self;
  [(HKObserverSet *)observers registerObserver:v6 queue:v7 runIfFirstObserver:v8];
}

void __52__HKSharingRecipientAuthorizationStore_addObserver___block_invoke(uint64_t a1)
{
  objc_initWeak(&location, *(a1 + 32));
  v2 = MEMORY[0x1E69E9820];
  v3 = 3221225472;
  v4 = __52__HKSharingRecipientAuthorizationStore_addObserver___block_invoke_2;
  v5 = &unk_1E7379140;
  objc_copyWeak(&v6, &location);
  [*(*(a1 + 32) + 24) setAutomaticProxyReconnectionHandler:&v2];
  [*(a1 + 32) _registerRemoteObservers];
  objc_destroyWeak(&v6);
  objc_destroyWeak(&location);
}

void __52__HKSharingRecipientAuthorizationStore_addObserver___block_invoke_2(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained _registerRemoteObservers];
}

- (void)removeObserver:(id)a3
{
  observers = self->_observers;
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = __55__HKSharingRecipientAuthorizationStore_removeObserver___block_invoke;
  v4[3] = &unk_1E7376780;
  v4[4] = self;
  [(HKObserverSet *)observers unregisterObserver:a3 runIfLastObserver:v4];
}

uint64_t __55__HKSharingRecipientAuthorizationStore_removeObserver___block_invoke(uint64_t a1)
{
  [*(*(a1 + 32) + 24) setAutomaticProxyReconnectionHandler:0];
  v2 = *(a1 + 32);
  v3 = *(v2 + 24);
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __55__HKSharingRecipientAuthorizationStore_removeObserver___block_invoke_3;
  v5[3] = &unk_1E7376898;
  v5[4] = v2;
  return [v3 fetchProxyWithHandler:&__block_literal_global_99 errorHandler:v5];
}

void __55__HKSharingRecipientAuthorizationStore_removeObserver___block_invoke_3(uint64_t a1, void *a2)
{
  v3 = a2;
  _HKInitializeLogging();
  v4 = HKLogSharing();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
  {
    __55__HKSharingRecipientAuthorizationStore_removeObserver___block_invoke_3_cold_1(a1);
  }
}

+ (id)clientInterface
{
  v2 = [MEMORY[0x1E696B0D0] interfaceWithProtocol:&unk_1F06F82B8];
  v3 = [v2 hk_setArrayOfClass:objc_opt_class() forSelector:sel_clientRemote_didAddSharingAuthorizations_ argumentIndex:0 ofReply:0];
  v4 = [v2 hk_setArrayOfClass:objc_opt_class() forSelector:sel_clientRemote_didRemoveSharingAuthorizations_ argumentIndex:0 ofReply:0];

  return v2;
}

+ (id)serverInterface
{
  v2 = [MEMORY[0x1E696B0D0] interfaceWithProtocol:&unk_1F06F8318];
  v3 = [v2 hk_setArrayOfClass:objc_opt_class() forSelector:sel_remote_fetchSharingAuthorizationsWithCompletion_ argumentIndex:0 ofReply:1];
  v4 = [v2 hk_setArrayOfClass:objc_opt_class() forSelector:sel_remote_addSharingAuthorizations_completion_ argumentIndex:0 ofReply:0];
  v5 = [v2 hk_setArrayOfClass:objc_opt_class() forSelector:sel_remote_removeSharingAuthorizations_completion_ argumentIndex:0 ofReply:0];

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

- (void)clientRemote_didAddSharingAuthorizations:(id)a3
{
  v4 = a3;
  observers = self->_observers;
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __81__HKSharingRecipientAuthorizationStore_clientRemote_didAddSharingAuthorizations___block_invoke;
  v7[3] = &unk_1E7381AF0;
  v7[4] = self;
  v8 = v4;
  v6 = v4;
  [(HKObserverSet *)observers notifyObservers:v7];
}

- (void)clientRemote_didRemoveSharingAuthorizations:(id)a3
{
  v4 = a3;
  observers = self->_observers;
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __84__HKSharingRecipientAuthorizationStore_clientRemote_didRemoveSharingAuthorizations___block_invoke;
  v7[3] = &unk_1E7381AF0;
  v7[4] = self;
  v8 = v4;
  v6 = v4;
  [(HKObserverSet *)observers notifyObservers:v7];
}

- (void)clientRemote_wasRevoked
{
  observers = self->_observers;
  v3[0] = MEMORY[0x1E69E9820];
  v3[1] = 3221225472;
  v3[2] = __63__HKSharingRecipientAuthorizationStore_clientRemote_wasRevoked__block_invoke;
  v3[3] = &unk_1E7381B18;
  v3[4] = self;
  [(HKObserverSet *)observers notifyObservers:v3];
}

- (void)_registerRemoteObservers
{
  proxyProvider = self->_proxyProvider;
  v3[0] = MEMORY[0x1E69E9820];
  v3[1] = 3221225472;
  v3[2] = __64__HKSharingRecipientAuthorizationStore__registerRemoteObservers__block_invoke_2;
  v3[3] = &unk_1E7376898;
  v3[4] = self;
  [(HKProxyProvider *)proxyProvider fetchProxyWithHandler:&__block_literal_global_83 errorHandler:v3];
}

void __64__HKSharingRecipientAuthorizationStore__registerRemoteObservers__block_invoke_2(uint64_t a1, void *a2)
{
  v3 = a2;
  _HKInitializeLogging();
  v4 = HKLogSharing();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
  {
    __64__HKSharingRecipientAuthorizationStore__registerRemoteObservers__block_invoke_2_cold_1(a1);
  }
}

void __81__HKSharingRecipientAuthorizationStore_fetchSharingAuthorizationsWithCompletion___block_invoke_2_cold_1(uint64_t a1)
{
  OUTLINED_FUNCTION_3(a1, *MEMORY[0x1E69E9840]);
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_1(&dword_19197B000, v1, v2, "[summary-sharing] %{public}@: Error fetching sharing authorizations %{public}@");
  v3 = *MEMORY[0x1E69E9840];
}

void __98__HKSharingRecipientAuthorizationStore_fetchSharingAuthorizationsMarkedForDeletionWithCompletion___block_invoke_2_cold_1(uint64_t a1)
{
  OUTLINED_FUNCTION_3(a1, *MEMORY[0x1E69E9840]);
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_1(&dword_19197B000, v1, v2, "[summary-sharing] %{public}@: Error fetching sharing authorizations marked for deletion %{public}@");
  v3 = *MEMORY[0x1E69E9840];
}

void __76__HKSharingRecipientAuthorizationStore_addSharingAuthorizations_completion___block_invoke_2_cold_1(uint64_t a1)
{
  OUTLINED_FUNCTION_3(a1, *MEMORY[0x1E69E9840]);
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_1(&dword_19197B000, v1, v2, "%{public}@: Error adding sharing authorizations %{public}@");
  v3 = *MEMORY[0x1E69E9840];
}

void __79__HKSharingRecipientAuthorizationStore_removeSharingAuthorizations_completion___block_invoke_2_cold_1(uint64_t a1)
{
  OUTLINED_FUNCTION_3(a1, *MEMORY[0x1E69E9840]);
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_1(&dword_19197B000, v1, v2, "%{public}@: Error removing sharing authorizations %{public}@");
  v3 = *MEMORY[0x1E69E9840];
}

void __61__HKSharingRecipientAuthorizationStore_revokeWithCompletion___block_invoke_2_cold_1(uint64_t a1)
{
  OUTLINED_FUNCTION_3(a1, *MEMORY[0x1E69E9840]);
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_1(&dword_19197B000, v1, v2, "%{public}@: Error revoking sharing authorizations %{public}@");
  v3 = *MEMORY[0x1E69E9840];
}

void __55__HKSharingRecipientAuthorizationStore_removeObserver___block_invoke_3_cold_1(uint64_t a1)
{
  OUTLINED_FUNCTION_3(a1, *MEMORY[0x1E69E9840]);
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_1(&dword_19197B000, v1, v2, "[summary-sharing] %{public}@: Error unregistering observers %{public}@");
  v3 = *MEMORY[0x1E69E9840];
}

void __64__HKSharingRecipientAuthorizationStore__registerRemoteObservers__block_invoke_2_cold_1(uint64_t a1)
{
  OUTLINED_FUNCTION_3(a1, *MEMORY[0x1E69E9840]);
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_1(&dword_19197B000, v1, v2, "[summary-sharing] %{public}@: Error registering observers %{public}@");
  v3 = *MEMORY[0x1E69E9840];
}

@end