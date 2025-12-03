@interface HKUserDomainConceptStore
+ (id)clientInterface;
+ (id)serverInterface;
- (BOOL)_synchronouslyObserveUserDomainConceptChanges:(id *)changes;
- (HKUserDomainConceptStore)init;
- (HKUserDomainConceptStore)initWithHealthStore:(id)store;
- (HKUserDomainConceptStoreDelegate)delegate;
- (id)exportedInterface;
- (id)remoteInterface;
- (void)_clientQueue_notifyForChangesToUserDomainConcepts:(id)concepts changeType:(int64_t)type;
- (void)_createAndStoreUserDomainConceptBackedByOntologyConceptWithIdentifier:(id)identifier supplementaryProperties:(id)properties userDomainConceptTypeIdentifier:(id)typeIdentifier completion:(id)completion;
- (void)_handleAutomaticProxyReconnection;
- (void)_observeUserDomainConceptChanges:(BOOL)changes completion:(id)completion;
- (void)_storeUserDomainConcepts:(id)concepts method:(int64_t)method completion:(id)completion;
- (void)client_notifyForChangesToUserDomainConcepts:(id)concepts changeType:(int64_t)type;
- (void)deleteUserDomainConcept:(id)concept completion:(id)completion;
- (void)deleteUserDomainConcepts:(id)concepts completion:(id)completion;
- (void)saveOrUpdateUserDomainConcept:(id)concept completion:(id)completion;
- (void)setDelegate:(id)delegate;
- (void)setDelegate:(id)delegate completion:(id)completion;
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

- (HKUserDomainConceptStore)initWithHealthStore:(id)store
{
  storeCopy = store;
  v17.receiver = self;
  v17.super_class = HKUserDomainConceptStore;
  v5 = [(HKUserDomainConceptStore *)&v17 init];
  if (v5)
  {
    uUID = [MEMORY[0x1E696AFB0] UUID];
    identifier = v5->_identifier;
    v5->_identifier = uUID;

    v8 = [[HKTaskServerProxyProvider alloc] initWithHealthStore:storeCopy taskIdentifier:@"HKUserDomainConceptStoreServerIdentifier" exportedObject:v5 taskUUID:v5->_identifier];
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

- (void)saveOrUpdateUserDomainConcept:(id)concept completion:(id)completion
{
  v12 = *MEMORY[0x1E69E9840];
  conceptCopy = concept;
  v6 = MEMORY[0x1E695DEC8];
  completionCopy = completion;
  conceptCopy2 = concept;
  v9 = [v6 arrayWithObjects:&conceptCopy count:1];

  [(HKUserDomainConceptStore *)self saveOrUpdateUserDomainConcepts:v9 completion:completionCopy, conceptCopy, v12];
  v10 = *MEMORY[0x1E69E9840];
}

- (void)deleteUserDomainConcept:(id)concept completion:(id)completion
{
  v12 = *MEMORY[0x1E69E9840];
  conceptCopy = concept;
  v6 = MEMORY[0x1E695DEC8];
  completionCopy = completion;
  conceptCopy2 = concept;
  v9 = [v6 arrayWithObjects:&conceptCopy count:1];

  [(HKUserDomainConceptStore *)self _storeUserDomainConcepts:v9 method:3 completion:completionCopy, conceptCopy, v12];
  v10 = *MEMORY[0x1E69E9840];
}

- (void)deleteUserDomainConcepts:(id)concepts completion:(id)completion
{
  v14 = *MEMORY[0x1E69E9840];
  conceptsCopy = concepts;
  completionCopy = completion;
  _HKInitializeLogging();
  v8 = HKLogHealthOntology();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    v10 = 138543618;
    selfCopy = self;
    v12 = 2114;
    v13 = conceptsCopy;
    _os_log_impl(&dword_19197B000, v8, OS_LOG_TYPE_DEFAULT, "%{public}@: deleteUserDomainConcepts: %{public}@", &v10, 0x16u);
  }

  [(HKUserDomainConceptStore *)self _storeUserDomainConcepts:conceptsCopy method:3 completion:completionCopy];
  v9 = *MEMORY[0x1E69E9840];
}

- (void)setDelegate:(id)delegate
{
  delegateCopy = delegate;
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __40__HKUserDomainConceptStore_setDelegate___block_invoke;
  v6[3] = &unk_1E7376A00;
  v7 = delegateCopy;
  v5 = delegateCopy;
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

- (void)setDelegate:(id)delegate completion:(id)completion
{
  completionCopy = completion;
  obj = delegate;
  os_unfair_lock_lock(&self->_lock);
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  v8 = (obj == 0) ^ (WeakRetained != 0);

  v9 = objc_storeWeak(&self->_delegate, obj);
  v10 = v9;
  os_unfair_lock_unlock(&self->_lock);
  if (v8)
  {
    completionCopy[2](completionCopy, 1, 0);
  }

  else
  {
    [(HKUserDomainConceptStore *)self _observeUserDomainConceptChanges:obj != 0 completion:completionCopy];
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

- (void)client_notifyForChangesToUserDomainConcepts:(id)concepts changeType:(int64_t)type
{
  conceptsCopy = concepts;
  clientQueue = [(HKProxyProvider *)self->_proxyProvider clientQueue];
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __83__HKUserDomainConceptStore_client_notifyForChangesToUserDomainConcepts_changeType___block_invoke;
  block[3] = &unk_1E73767D0;
  block[4] = self;
  v10 = conceptsCopy;
  typeCopy = type;
  v8 = conceptsCopy;
  dispatch_sync(clientQueue, block);
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
  selfCopy = self;
  v6 = 2114;
  v7 = a2;
  _os_log_error_impl(&dword_19197B000, log, OS_LOG_TYPE_ERROR, "[%{public}@] Failed to resume observation on server reconnection: %{public}@", &v4, 0x16u);
  v3 = *MEMORY[0x1E69E9840];
}

- (void)_storeUserDomainConcepts:(id)concepts method:(int64_t)method completion:(id)completion
{
  conceptsCopy = concepts;
  v9 = [(HKProxyProvider *)self->_proxyProvider clientQueueActionHandlerWithCompletion:completion];
  proxyProvider = self->_proxyProvider;
  v15[0] = MEMORY[0x1E69E9820];
  v15[1] = 3221225472;
  v15[2] = __71__HKUserDomainConceptStore__storeUserDomainConcepts_method_completion___block_invoke;
  v15[3] = &unk_1E737ADA8;
  v15[4] = self;
  v16 = conceptsCopy;
  methodCopy = method;
  v17 = v9;
  v13[0] = MEMORY[0x1E69E9820];
  v13[1] = 3221225472;
  v13[2] = __71__HKUserDomainConceptStore__storeUserDomainConcepts_method_completion___block_invoke_78;
  v13[3] = &unk_1E7376960;
  v14 = v17;
  v11 = v17;
  v12 = conceptsCopy;
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

- (void)_observeUserDomainConceptChanges:(BOOL)changes completion:(id)completion
{
  v6 = [(HKProxyProvider *)self->_proxyProvider clientQueueActionHandlerWithCompletion:completion];
  proxyProvider = self->_proxyProvider;
  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 3221225472;
  v11[2] = __72__HKUserDomainConceptStore__observeUserDomainConceptChanges_completion___block_invoke;
  v11[3] = &unk_1E737ADD0;
  changesCopy = changes;
  v12 = v6;
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __72__HKUserDomainConceptStore__observeUserDomainConceptChanges_completion___block_invoke_2;
  v9[3] = &unk_1E7376960;
  v10 = v12;
  v8 = v12;
  [(HKProxyProvider *)proxyProvider fetchProxyWithHandler:v11 errorHandler:v9];
}

- (BOOL)_synchronouslyObserveUserDomainConceptChanges:(id *)changes
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
    if (changes)
    {
      v7 = v5;
      *changes = v6;
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

- (void)_clientQueue_notifyForChangesToUserDomainConcepts:(id)concepts changeType:(int64_t)type
{
  v21 = *MEMORY[0x1E69E9840];
  conceptsCopy = concepts;
  clientQueue = [(HKProxyProvider *)self->_proxyProvider clientQueue];
  dispatch_assert_queue_V2(clientQueue);

  delegate = [(HKUserDomainConceptStore *)self delegate];
  _HKInitializeLogging();
  v9 = HKLogHealthOntology();
  v10 = os_log_type_enabled(v9, OS_LOG_TYPE_INFO);

  if (v10)
  {
    v11 = HKLogHealthOntology();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_INFO))
    {
      v12 = [conceptsCopy count];
      v13 = HKStringFromUserDomainConceptStoreChangeType(type);
      v15 = 138543874;
      selfCopy = self;
      v17 = 2048;
      v18 = v12;
      v19 = 2112;
      v20 = v13;
      _os_log_impl(&dword_19197B000, v11, OS_LOG_TYPE_INFO, "%{public}@: Received %ld changes of type %@", &v15, 0x20u);
    }
  }

  switch(type)
  {
    case 3:
      [delegate userDomainConceptStore:self didDeleteUserDomainConcepts:conceptsCopy];
      break;
    case 2:
      [delegate userDomainConceptStore:self didUpdateUserDomainConcepts:conceptsCopy];
      break;
    case 1:
      [delegate userDomainConceptStore:self didAddUserDomainConcepts:conceptsCopy];
      break;
  }

  v14 = *MEMORY[0x1E69E9840];
}

- (void)_createAndStoreUserDomainConceptBackedByOntologyConceptWithIdentifier:(id)identifier supplementaryProperties:(id)properties userDomainConceptTypeIdentifier:(id)typeIdentifier completion:(id)completion
{
  identifierCopy = identifier;
  propertiesCopy = properties;
  typeIdentifierCopy = typeIdentifier;
  completionCopy = completion;
  v14 = [(HKProxyProvider *)self->_proxyProvider clientQueueObjectHandlerWithCompletion:completionCopy];
  proxyProvider = self->_proxyProvider;
  v23[0] = MEMORY[0x1E69E9820];
  v23[1] = 3221225472;
  v23[2] = __165__HKUserDomainConceptStore__createAndStoreUserDomainConceptBackedByOntologyConceptWithIdentifier_supplementaryProperties_userDomainConceptTypeIdentifier_completion___block_invoke;
  v23[3] = &unk_1E737AE20;
  v23[4] = self;
  v24 = identifierCopy;
  v25 = propertiesCopy;
  v26 = typeIdentifierCopy;
  v27 = completionCopy;
  v21[0] = MEMORY[0x1E69E9820];
  v21[1] = 3221225472;
  v21[2] = __165__HKUserDomainConceptStore__createAndStoreUserDomainConceptBackedByOntologyConceptWithIdentifier_supplementaryProperties_userDomainConceptTypeIdentifier_completion___block_invoke_80;
  v21[3] = &unk_1E7376960;
  v22 = v14;
  v16 = v14;
  v17 = completionCopy;
  v18 = typeIdentifierCopy;
  v19 = propertiesCopy;
  v20 = identifierCopy;
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