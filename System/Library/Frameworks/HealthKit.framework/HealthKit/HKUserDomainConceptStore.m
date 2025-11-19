@interface HKUserDomainConceptStore
+ (id)clientInterface;
+ (id)serverInterface;
- (BOOL)_synchronouslyObserveUserDomainConceptChanges:(id *)a3;
- (HKUserDomainConceptStore)init;
- (HKUserDomainConceptStore)initWithHealthStore:(id)a3;
- (HKUserDomainConceptStoreDelegate)delegate;
- (id)exportedInterface;
- (id)remoteInterface;
- (void)_clientQueue_notifyForChangesToUserDomainConcepts:(id)a3 changeType:(int64_t)a4;
- (void)_createAndStoreUserDomainConceptBackedByOntologyConceptWithIdentifier:(id)a3 supplementaryProperties:(id)a4 userDomainConceptTypeIdentifier:(id)a5 completion:(id)a6;
- (void)_handleAutomaticProxyReconnection;
- (void)_observeUserDomainConceptChanges:(BOOL)a3 completion:(id)a4;
- (void)_storeUserDomainConcepts:(id)a3 method:(int64_t)a4 completion:(id)a5;
- (void)client_notifyForChangesToUserDomainConcepts:(id)a3 changeType:(int64_t)a4;
- (void)deleteUserDomainConcept:(id)a3 completion:(id)a4;
- (void)deleteUserDomainConcepts:(id)a3 completion:(id)a4;
- (void)saveOrUpdateUserDomainConcept:(id)a3 completion:(id)a4;
- (void)setDelegate:(id)a3;
- (void)setDelegate:(id)a3 completion:(id)a4;
@end

@implementation HKUserDomainConceptStore

- (HKUserDomainConceptStore)init
{
  v3 = MEMORY[0x1E695DF30];
  v4 = *MEMORY[0x1E695D940];
  v5 = NSStringFromSelector(a2);
  [v3 raise:v4 format:{@"The -%@ method is not available on %@", v5, objc_opt_class()}];

  return 0;
}

- (HKUserDomainConceptStore)initWithHealthStore:(id)a3
{
  v4 = a3;
  v17.receiver = self;
  v17.super_class = HKUserDomainConceptStore;
  v5 = [(HKUserDomainConceptStore *)&v17 init];
  if (v5)
  {
    v6 = [MEMORY[0x1E696AFB0] UUID];
    identifier = v5->_identifier;
    v5->_identifier = v6;

    v8 = [[HKTaskServerProxyProvider alloc] initWithHealthStore:v4 taskIdentifier:@"HKUserDomainConceptStoreServerIdentifier" exportedObject:v5 taskUUID:v5->_identifier];
    proxyProvider = v5->_proxyProvider;
    v5->_proxyProvider = v8;

    objc_initWeak(&location, v5);
    v11 = MEMORY[0x1E69E9820];
    v12 = 3221225472;
    v13 = __48__HKUserDomainConceptStore_initWithHealthStore___block_invoke;
    v14 = &unk_1E7379140;
    objc_copyWeak(&v15, &location);
    [(HKProxyProvider *)v5->_proxyProvider setAutomaticProxyReconnectionHandler:&v11];
    [(HKProxyProvider *)v5->_proxyProvider setShouldRetryOnInterruption:1, v11, v12, v13, v14];
    v5->_lock._os_unfair_lock_opaque = 0;
    objc_destroyWeak(&v15);
    objc_destroyWeak(&location);
  }

  return v5;
}

void __48__HKUserDomainConceptStore_initWithHealthStore___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained _handleAutomaticProxyReconnection];
}

- (void)saveOrUpdateUserDomainConcept:(id)a3 completion:(id)a4
{
  v12 = *MEMORY[0x1E69E9840];
  v11 = a3;
  v6 = MEMORY[0x1E695DEC8];
  v7 = a4;
  v8 = a3;
  v9 = [v6 arrayWithObjects:&v11 count:1];

  [(HKUserDomainConceptStore *)self saveOrUpdateUserDomainConcepts:v9 completion:v7, v11, v12];
  v10 = *MEMORY[0x1E69E9840];
}

- (void)deleteUserDomainConcept:(id)a3 completion:(id)a4
{
  v12 = *MEMORY[0x1E69E9840];
  v11 = a3;
  v6 = MEMORY[0x1E695DEC8];
  v7 = a4;
  v8 = a3;
  v9 = [v6 arrayWithObjects:&v11 count:1];

  [(HKUserDomainConceptStore *)self _storeUserDomainConcepts:v9 method:3 completion:v7, v11, v12];
  v10 = *MEMORY[0x1E69E9840];
}

- (void)deleteUserDomainConcepts:(id)a3 completion:(id)a4
{
  v14 = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = a4;
  _HKInitializeLogging();
  v8 = HKLogHealthOntology();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    v10 = 138543618;
    v11 = self;
    v12 = 2114;
    v13 = v6;
    _os_log_impl(&dword_19197B000, v8, OS_LOG_TYPE_DEFAULT, "%{public}@: deleteUserDomainConcepts: %{public}@", &v10, 0x16u);
  }

  [(HKUserDomainConceptStore *)self _storeUserDomainConcepts:v6 method:3 completion:v7];
  v9 = *MEMORY[0x1E69E9840];
}

- (void)setDelegate:(id)a3
{
  v4 = a3;
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __40__HKUserDomainConceptStore_setDelegate___block_invoke;
  v6[3] = &unk_1E7376A00;
  v7 = v4;
  v5 = v4;
  [(HKUserDomainConceptStore *)self setDelegate:v5 completion:v6];
}

void __40__HKUserDomainConceptStore_setDelegate___block_invoke(uint64_t a1, char a2, void *a3)
{
  v16 = *MEMORY[0x1E69E9840];
  v5 = a3;
  if ((a2 & 1) == 0)
  {
    _HKInitializeLogging();
    v6 = HKLogHealthOntology();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      v7 = objc_opt_class();
      v8 = HKStringFromBool(*(a1 + 32) != 0);
      v10 = 138543874;
      v11 = v7;
      v12 = 2112;
      v13 = v8;
      v14 = 2112;
      v15 = v5;
      _os_log_impl(&dword_19197B000, v6, OS_LOG_TYPE_DEFAULT, "%{public}@: Error changing shouldObserve to '%@': %@", &v10, 0x20u);
    }
  }

  v9 = *MEMORY[0x1E69E9840];
}

- (HKUserDomainConceptStoreDelegate)delegate
{
  os_unfair_lock_lock(&self->_lock);
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  os_unfair_lock_unlock(&self->_lock);

  return WeakRetained;
}

- (void)setDelegate:(id)a3 completion:(id)a4
{
  v6 = a4;
  obj = a3;
  os_unfair_lock_lock(&self->_lock);
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  v8 = (obj == 0) ^ (WeakRetained != 0);

  v9 = objc_storeWeak(&self->_delegate, obj);
  v10 = v9;
  os_unfair_lock_unlock(&self->_lock);
  if (v8)
  {
    v6[2](v6, 1, 0);
  }

  else
  {
    [(HKUserDomainConceptStore *)self _observeUserDomainConceptChanges:obj != 0 completion:v6];
  }
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

- (void)client_notifyForChangesToUserDomainConcepts:(id)a3 changeType:(int64_t)a4
{
  v6 = a3;
  v7 = [(HKProxyProvider *)self->_proxyProvider clientQueue];
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __83__HKUserDomainConceptStore_client_notifyForChangesToUserDomainConcepts_changeType___block_invoke;
  block[3] = &unk_1E73767D0;
  block[4] = self;
  v10 = v6;
  v11 = a4;
  v8 = v6;
  dispatch_sync(v7, block);
}

+ (id)serverInterface
{
  v2 = [MEMORY[0x1E696B0D0] interfaceWithProtocol:&unk_1F06F7058];
  v3 = [v2 hk_setArrayOfClass:objc_opt_class() forSelector:sel_remote_storeUserDomainConcepts_method_completion_ argumentIndex:0 ofReply:0];
  v4 = [v2 hk_setArrayOfClass:objc_opt_class() forSelector:sel_remote_createAndStoreUserDomainConceptWithConceptIdentifier_additionalProperties_userDomainConceptTypeIdentifier_completion_ argumentIndex:1 ofReply:0];

  return v2;
}

+ (id)clientInterface
{
  v2 = [MEMORY[0x1E696B0D0] interfaceWithProtocol:&unk_1F069D4D8];
  v3 = [v2 hk_setArrayOfClass:objc_opt_class() forSelector:sel_client_notifyForChangesToUserDomainConcepts_changeType_ argumentIndex:0 ofReply:0];

  return v2;
}

- (void)_handleAutomaticProxyReconnection
{
  v8 = *MEMORY[0x1E69E9840];
  v4 = 138543618;
  v5 = a1;
  v6 = 2114;
  v7 = a2;
  _os_log_error_impl(&dword_19197B000, log, OS_LOG_TYPE_ERROR, "[%{public}@] Failed to resume observation on server reconnection: %{public}@", &v4, 0x16u);
  v3 = *MEMORY[0x1E69E9840];
}

- (void)_storeUserDomainConcepts:(id)a3 method:(int64_t)a4 completion:(id)a5
{
  v8 = a3;
  v9 = [(HKProxyProvider *)self->_proxyProvider clientQueueActionHandlerWithCompletion:a5];
  proxyProvider = self->_proxyProvider;
  v15[0] = MEMORY[0x1E69E9820];
  v15[1] = 3221225472;
  v15[2] = __71__HKUserDomainConceptStore__storeUserDomainConcepts_method_completion___block_invoke;
  v15[3] = &unk_1E737ADA8;
  v15[4] = self;
  v16 = v8;
  v18 = a4;
  v17 = v9;
  v13[0] = MEMORY[0x1E69E9820];
  v13[1] = 3221225472;
  v13[2] = __71__HKUserDomainConceptStore__storeUserDomainConcepts_method_completion___block_invoke_78;
  v13[3] = &unk_1E7376960;
  v14 = v17;
  v11 = v17;
  v12 = v8;
  [(HKProxyProvider *)proxyProvider fetchProxyWithHandler:v15 errorHandler:v13];
}

void __71__HKUserDomainConceptStore__storeUserDomainConcepts_method_completion___block_invoke(uint64_t a1, void *a2)
{
  v17 = *MEMORY[0x1E69E9840];
  v3 = a2;
  _HKInitializeLogging();
  v4 = HKLogHealthOntology();
  v5 = os_log_type_enabled(v4, OS_LOG_TYPE_INFO);

  if (v5)
  {
    v6 = HKLogHealthOntology();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
    {
      v7 = *(a1 + 32);
      v8 = [*(a1 + 40) count];
      v9 = HKStringFromUserDomainConceptStoreMethod(*(a1 + 56));
      v11 = 138543874;
      v12 = v7;
      v13 = 2048;
      v14 = v8;
      v15 = 2112;
      v16 = v9;
      _os_log_impl(&dword_19197B000, v6, OS_LOG_TYPE_INFO, "%{public}@: Store %ld concepts with method '%@'", &v11, 0x20u);
    }
  }

  [v3 remote_storeUserDomainConcepts:*(a1 + 40) method:*(a1 + 56) completion:*(a1 + 48)];

  v10 = *MEMORY[0x1E69E9840];
}

- (void)_observeUserDomainConceptChanges:(BOOL)a3 completion:(id)a4
{
  v6 = [(HKProxyProvider *)self->_proxyProvider clientQueueActionHandlerWithCompletion:a4];
  proxyProvider = self->_proxyProvider;
  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 3221225472;
  v11[2] = __72__HKUserDomainConceptStore__observeUserDomainConceptChanges_completion___block_invoke;
  v11[3] = &unk_1E737ADD0;
  v13 = a3;
  v12 = v6;
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __72__HKUserDomainConceptStore__observeUserDomainConceptChanges_completion___block_invoke_2;
  v9[3] = &unk_1E7376960;
  v10 = v12;
  v8 = v12;
  [(HKProxyProvider *)proxyProvider fetchProxyWithHandler:v11 errorHandler:v9];
}

- (BOOL)_synchronouslyObserveUserDomainConceptChanges:(id *)a3
{
  v18 = 0;
  v19 = &v18;
  v20 = 0x2020000000;
  v21 = 0;
  v12 = 0;
  v13 = &v12;
  v14 = 0x3032000000;
  v15 = __Block_byref_object_copy__11;
  v16 = __Block_byref_object_dispose__11;
  v17 = 0;
  proxyProvider = self->_proxyProvider;
  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 3221225472;
  v11[2] = __74__HKUserDomainConceptStore__synchronouslyObserveUserDomainConceptChanges___block_invoke;
  v11[3] = &unk_1E737ADF8;
  v11[4] = &v18;
  v11[5] = &v12;
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __74__HKUserDomainConceptStore__synchronouslyObserveUserDomainConceptChanges___block_invoke_3;
  v10[3] = &unk_1E7378838;
  v10[4] = &v12;
  [(HKProxyProvider *)proxyProvider getSynchronousProxyWithHandler:v11 errorHandler:v10];
  v5 = v13[5];
  v6 = v5;
  if (v5)
  {
    if (a3)
    {
      v7 = v5;
      *a3 = v6;
    }

    else
    {
      _HKLogDroppedError(v5);
    }
  }

  v8 = *(v19 + 24);
  _Block_object_dispose(&v12, 8);

  _Block_object_dispose(&v18, 8);
  return v8;
}

uint64_t __74__HKUserDomainConceptStore__synchronouslyObserveUserDomainConceptChanges___block_invoke(uint64_t a1, void *a2)
{
  v3[0] = MEMORY[0x1E69E9820];
  v3[1] = 3221225472;
  v3[2] = __74__HKUserDomainConceptStore__synchronouslyObserveUserDomainConceptChanges___block_invoke_2;
  v3[3] = &unk_1E7378D28;
  v4 = *(a1 + 32);
  return [a2 remote_observeUserDomainConceptChanges:1 completion:v3];
}

- (void)_clientQueue_notifyForChangesToUserDomainConcepts:(id)a3 changeType:(int64_t)a4
{
  v21 = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = [(HKProxyProvider *)self->_proxyProvider clientQueue];
  dispatch_assert_queue_V2(v7);

  v8 = [(HKUserDomainConceptStore *)self delegate];
  _HKInitializeLogging();
  v9 = HKLogHealthOntology();
  v10 = os_log_type_enabled(v9, OS_LOG_TYPE_INFO);

  if (v10)
  {
    v11 = HKLogHealthOntology();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_INFO))
    {
      v12 = [v6 count];
      v13 = HKStringFromUserDomainConceptStoreChangeType(a4);
      v15 = 138543874;
      v16 = self;
      v17 = 2048;
      v18 = v12;
      v19 = 2112;
      v20 = v13;
      _os_log_impl(&dword_19197B000, v11, OS_LOG_TYPE_INFO, "%{public}@: Received %ld changes of type %@", &v15, 0x20u);
    }
  }

  switch(a4)
  {
    case 3:
      [v8 userDomainConceptStore:self didDeleteUserDomainConcepts:v6];
      break;
    case 2:
      [v8 userDomainConceptStore:self didUpdateUserDomainConcepts:v6];
      break;
    case 1:
      [v8 userDomainConceptStore:self didAddUserDomainConcepts:v6];
      break;
  }

  v14 = *MEMORY[0x1E69E9840];
}

- (void)_createAndStoreUserDomainConceptBackedByOntologyConceptWithIdentifier:(id)a3 supplementaryProperties:(id)a4 userDomainConceptTypeIdentifier:(id)a5 completion:(id)a6
{
  v10 = a3;
  v11 = a4;
  v12 = a5;
  v13 = a6;
  v14 = [(HKProxyProvider *)self->_proxyProvider clientQueueObjectHandlerWithCompletion:v13];
  proxyProvider = self->_proxyProvider;
  v23[0] = MEMORY[0x1E69E9820];
  v23[1] = 3221225472;
  v23[2] = __165__HKUserDomainConceptStore__createAndStoreUserDomainConceptBackedByOntologyConceptWithIdentifier_supplementaryProperties_userDomainConceptTypeIdentifier_completion___block_invoke;
  v23[3] = &unk_1E737AE20;
  v23[4] = self;
  v24 = v10;
  v25 = v11;
  v26 = v12;
  v27 = v13;
  v21[0] = MEMORY[0x1E69E9820];
  v21[1] = 3221225472;
  v21[2] = __165__HKUserDomainConceptStore__createAndStoreUserDomainConceptBackedByOntologyConceptWithIdentifier_supplementaryProperties_userDomainConceptTypeIdentifier_completion___block_invoke_80;
  v21[3] = &unk_1E7376960;
  v22 = v14;
  v16 = v14;
  v17 = v13;
  v18 = v12;
  v19 = v11;
  v20 = v10;
  [(HKProxyProvider *)proxyProvider fetchProxyWithHandler:v23 errorHandler:v21];
}

void __165__HKUserDomainConceptStore__createAndStoreUserDomainConceptBackedByOntologyConceptWithIdentifier_supplementaryProperties_userDomainConceptTypeIdentifier_completion___block_invoke(uint64_t a1, void *a2)
{
  v14 = *MEMORY[0x1E69E9840];
  v3 = a2;
  _HKInitializeLogging();
  v4 = HKLogHealthOntology();
  v5 = os_log_type_enabled(v4, OS_LOG_TYPE_INFO);

  if (v5)
  {
    v6 = HKLogHealthOntology();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
    {
      v7 = *(a1 + 32);
      v8 = [*(a1 + 40) rawIdentifier];
      v10 = 138543618;
      v11 = v7;
      v12 = 2048;
      v13 = v8;
      _os_log_impl(&dword_19197B000, v6, OS_LOG_TYPE_INFO, "%{public}@: creating and storing user domain concept with identifier %lld", &v10, 0x16u);
    }
  }

  [v3 remote_createAndStoreUserDomainConceptWithConceptIdentifier:*(a1 + 40) additionalProperties:*(a1 + 48) userDomainConceptTypeIdentifier:*(a1 + 56) completion:*(a1 + 64)];

  v9 = *MEMORY[0x1E69E9840];
}

@end