@interface HKConceptStore
+ (id)serverInterface;
- (HKConceptStore)init;
- (HKConceptStore)initWithHealthStore:(id)store;
- (id)countOfConceptsAssociatedToUserRecordsWithError:(id *)error;
- (id)exportedInterface;
- (id)remoteInterface;
- (unint64_t)currentConceptIndexerState;
- (void)_startObservingConceptIndexManager;
- (void)clientRemote_conceptIndexManagerDidChangeState:(unint64_t)state;
- (void)connectionInvalidated;
- (void)fetchConceptForIdentifier:(id)identifier loadRelationships:(BOOL)relationships completionHandler:(id)handler;
- (void)registerAsConceptObserver:(id)observer onQueue:(id)queue;
- (void)startObservingConceptIndexManagerWithCompletion:(id)completion;
@end

@implementation HKConceptStore

- (HKConceptStore)init
{
  v3 = MEMORY[0x1E695DF30];
  v4 = *MEMORY[0x1E695D940];
  v5 = NSStringFromSelector(a2);
  [v3 raise:v4 format:{@"The -%@ method is not available on %@", v5, objc_opt_class()}];

  return 0;
}

- (HKConceptStore)initWithHealthStore:(id)store
{
  storeCopy = store;
  v17.receiver = self;
  v17.super_class = HKConceptStore;
  v6 = [(HKConceptStore *)&v17 init];
  v7 = v6;
  if (v6)
  {
    v6->_conceptIndexManagerStateLock._os_unfair_lock_opaque = 0;
    v6->_lastKnownConceptIndexManagerState = 0;
    objc_storeStrong(&v6->_healthStore, store);
    uUID = [MEMORY[0x1E696AFB0] UUID];
    identifier = v7->_identifier;
    v7->_identifier = uUID;

    v10 = [[HKTaskServerProxyProvider alloc] initWithHealthStore:v7->_healthStore taskIdentifier:@"HDOntologyTaskServerIdentifier" exportedObject:v7 taskUUID:v7->_identifier];
    proxyProvider = v7->_proxyProvider;
    v7->_proxyProvider = v10;

    [(HKProxyProvider *)v7->_proxyProvider setShouldRetryOnInterruption:0];
    v12 = objc_alloc_init(HKConceptStoreServerConfiguration);
    [(HKTaskServerProxyProvider *)v7->_proxyProvider setTaskConfiguration:v12];

    v13 = [HKObserverSet alloc];
    v14 = [(HKObserverSet *)v13 initWithName:@"Concept Store Observers" loggingCategory:HKLogHealthRecords];
    conceptObservers = v7->_conceptObservers;
    v7->_conceptObservers = v14;
  }

  return v7;
}

- (void)_startObservingConceptIndexManager
{
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 3221225472;
  aBlock[2] = __52__HKConceptStore__startObservingConceptIndexManager__block_invoke;
  aBlock[3] = &unk_1E7376A00;
  aBlock[4] = self;
  v3 = _Block_copy(aBlock);
  [(HKConceptStore *)self startObservingConceptIndexManagerWithCompletion:v3];
}

void __52__HKConceptStore__startObservingConceptIndexManager__block_invoke(uint64_t a1, char a2, void *a3)
{
  v5 = a3;
  if ((a2 & 1) == 0)
  {
    _HKInitializeLogging();
    v6 = HKLogHealthRecords;
    if (os_log_type_enabled(HKLogHealthRecords, OS_LOG_TYPE_ERROR))
    {
      __52__HKConceptStore__startObservingConceptIndexManager__block_invoke_cold_1(a1, v5, v6);
    }
  }
}

- (void)startObservingConceptIndexManagerWithCompletion:(id)completion
{
  v4 = [(HKProxyProvider *)self->_proxyProvider clientQueueActionHandlerWithCompletion:completion];
  proxyProvider = self->_proxyProvider;
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __66__HKConceptStore_startObservingConceptIndexManagerWithCompletion___block_invoke;
  v9[3] = &unk_1E7383730;
  v10 = v4;
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __66__HKConceptStore_startObservingConceptIndexManagerWithCompletion___block_invoke_2;
  v7[3] = &unk_1E7376960;
  v8 = v10;
  v6 = v10;
  [(HKProxyProvider *)proxyProvider fetchProxyWithHandler:v9 errorHandler:v7];
}

- (void)fetchConceptForIdentifier:(id)identifier loadRelationships:(BOOL)relationships completionHandler:(id)handler
{
  identifierCopy = identifier;
  v9 = [(HKProxyProvider *)self->_proxyProvider clientQueueObjectHandlerWithCompletion:handler];
  proxyProvider = self->_proxyProvider;
  v15[0] = MEMORY[0x1E69E9820];
  v15[1] = 3221225472;
  v15[2] = __80__HKConceptStore_fetchConceptForIdentifier_loadRelationships_completionHandler___block_invoke;
  v15[3] = &unk_1E7383780;
  v16 = identifierCopy;
  relationshipsCopy = relationships;
  v17 = v9;
  v13[0] = MEMORY[0x1E69E9820];
  v13[1] = 3221225472;
  v13[2] = __80__HKConceptStore_fetchConceptForIdentifier_loadRelationships_completionHandler___block_invoke_3;
  v13[3] = &unk_1E7376960;
  v14 = v17;
  v11 = v17;
  v12 = identifierCopy;
  [(HKProxyProvider *)proxyProvider fetchProxyWithHandler:v15 errorHandler:v13];
}

void __80__HKConceptStore_fetchConceptForIdentifier_loadRelationships_completionHandler___block_invoke(uint64_t a1, void *a2)
{
  v3 = *(a1 + 48);
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __80__HKConceptStore_fetchConceptForIdentifier_loadRelationships_completionHandler___block_invoke_2;
  v5[3] = &unk_1E7383758;
  v4 = *(a1 + 32);
  v6 = *(a1 + 40);
  [a2 remote_queryConceptByIdentifier:v4 loadRelationships:v3 completion:v5];
}

- (id)countOfConceptsAssociatedToUserRecordsWithError:(id *)error
{
  v17 = 0;
  v18 = &v17;
  v19 = 0x3032000000;
  v20 = __Block_byref_object_copy__45;
  v21 = __Block_byref_object_dispose__45;
  v22 = 0;
  v14 = 0;
  v15[0] = &v14;
  v15[1] = 0x3032000000;
  v15[2] = __Block_byref_object_copy__45;
  v15[3] = __Block_byref_object_dispose__45;
  v16 = 0;
  proxyProvider = self->_proxyProvider;
  v13[0] = MEMORY[0x1E69E9820];
  v13[1] = 3221225472;
  v13[2] = __66__HKConceptStore_countOfConceptsAssociatedToUserRecordsWithError___block_invoke;
  v13[3] = &unk_1E73809F0;
  v13[4] = &v17;
  v13[5] = &v14;
  v12[0] = MEMORY[0x1E69E9820];
  v12[1] = 3221225472;
  v12[2] = __66__HKConceptStore_countOfConceptsAssociatedToUserRecordsWithError___block_invoke_3;
  v12[3] = &unk_1E7378838;
  v12[4] = &v14;
  [(HKProxyProvider *)proxyProvider getSynchronousProxyWithHandler:v13 errorHandler:v12];
  v5 = v18[5];
  if (!v5)
  {
    v6 = *(v15[0] + 40);
    v7 = v6;
    if (v6)
    {
      if (error)
      {
        v8 = v6;
        *error = v7;
      }

      else
      {
        _HKLogDroppedError(v6);
      }
    }

    _HKInitializeLogging();
    v9 = HKLogHealthRecords;
    if (os_log_type_enabled(HKLogHealthRecords, OS_LOG_TYPE_ERROR))
    {
      [(HKConceptStore *)v15 countOfConceptsAssociatedToUserRecordsWithError:v9];
    }

    v5 = v18[5];
  }

  v10 = v5;
  _Block_object_dispose(&v14, 8);

  _Block_object_dispose(&v17, 8);

  return v10;
}

uint64_t __66__HKConceptStore_countOfConceptsAssociatedToUserRecordsWithError___block_invoke(uint64_t a1, void *a2)
{
  v3[0] = MEMORY[0x1E69E9820];
  v3[1] = 3221225472;
  v3[2] = __66__HKConceptStore_countOfConceptsAssociatedToUserRecordsWithError___block_invoke_2;
  v3[3] = &unk_1E73809C8;
  v4 = *(a1 + 32);
  return [a2 remote_queryCountOfConceptsAssociatedToUserRecordsWithCompletion:v3];
}

void __66__HKConceptStore_countOfConceptsAssociatedToUserRecordsWithError___block_invoke_2(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = *(*(a1 + 32) + 8);
  v8 = *(v7 + 40);
  *(v7 + 40) = v5;
  v11 = v5;

  v9 = *(*(a1 + 40) + 8);
  v10 = *(v9 + 40);
  *(v9 + 40) = v6;
}

uint64_t __66__HKConceptStore_countOfConceptsAssociatedToUserRecordsWithError___block_invoke_3(uint64_t a1, void *a2)
{
  v3 = [a2 copy];
  v4 = *(*(a1 + 32) + 8);
  v5 = *(v4 + 40);
  *(v4 + 40) = v3;

  return MEMORY[0x1EEE66BB8](v3, v5);
}

- (unint64_t)currentConceptIndexerState
{
  v8 = 0;
  v9 = &v8;
  v10 = 0x2020000000;
  v11 = 0;
  proxyProvider = self->_proxyProvider;
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __44__HKConceptStore_currentConceptIndexerState__block_invoke;
  v7[3] = &unk_1E73837D0;
  v7[4] = &v8;
  [(HKProxyProvider *)proxyProvider getSynchronousProxyWithHandler:v7 errorHandler:&__block_literal_global_109];
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __44__HKConceptStore_currentConceptIndexerState__block_invoke_30;
  v6[3] = &unk_1E737F988;
  v6[4] = self;
  v6[5] = &v8;
  HKWithUnfairLock(&self->_conceptIndexManagerStateLock, v6);
  v4 = v9[3];
  _Block_object_dispose(&v8, 8);
  return v4;
}

uint64_t __44__HKConceptStore_currentConceptIndexerState__block_invoke(uint64_t a1, void *a2)
{
  v3[0] = MEMORY[0x1E69E9820];
  v3[1] = 3221225472;
  v3[2] = __44__HKConceptStore_currentConceptIndexerState__block_invoke_2;
  v3[3] = &unk_1E73837A8;
  v3[4] = *(a1 + 32);
  return [a2 remote_currentIndexingState:v3];
}

void __44__HKConceptStore_currentConceptIndexerState__block_invoke_3(uint64_t a1, void *a2)
{
  v2 = a2;
  _HKInitializeLogging();
  v3 = HKLogHealthRecords;
  if (os_log_type_enabled(HKLogHealthRecords, OS_LOG_TYPE_ERROR))
  {
    __44__HKConceptStore_currentConceptIndexerState__block_invoke_3_cold_1(v2, v3);
  }
}

- (void)registerAsConceptObserver:(id)observer onQueue:(id)queue
{
  observerCopy = observer;
  queueCopy = queue;
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __52__HKConceptStore_registerAsConceptObserver_onQueue___block_invoke;
  v10[3] = &unk_1E7376640;
  v10[4] = self;
  v11 = observerCopy;
  v12 = queueCopy;
  v8 = queueCopy;
  v9 = observerCopy;
  HKWithUnfairLock(&self->_conceptIndexManagerStateLock, v10);
}

uint64_t __52__HKConceptStore_registerAsConceptObserver_onQueue___block_invoke(void *a1)
{
  v3 = a1[4];
  v2 = a1[5];
  v4 = *(v3 + 24);
  v5 = *(v3 + 8);
  v6 = a1[6];
  v12[0] = MEMORY[0x1E69E9820];
  v12[1] = 3221225472;
  v12[2] = __52__HKConceptStore_registerAsConceptObserver_onQueue___block_invoke_2;
  v12[3] = &unk_1E7376780;
  v12[4] = v3;
  [v5 registerObserver:v2 queue:v6 runIfFirstObserver:v12];
  v8 = a1[4];
  v7 = a1[5];
  v9 = *(v8 + 8);
  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 3221225472;
  v11[2] = __52__HKConceptStore_registerAsConceptObserver_onQueue___block_invoke_3;
  v11[3] = &unk_1E73837F8;
  v11[4] = v8;
  v11[5] = v4;
  return [v9 notifyObserver:v7 handler:v11];
}

- (void)clientRemote_conceptIndexManagerDidChangeState:(unint64_t)state
{
  v3[0] = MEMORY[0x1E69E9820];
  v3[1] = 3221225472;
  v3[2] = __65__HKConceptStore_clientRemote_conceptIndexManagerDidChangeState___block_invoke;
  v3[3] = &unk_1E7378630;
  v3[4] = self;
  v3[5] = state;
  HKWithUnfairLock(&self->_conceptIndexManagerStateLock, v3);
}

uint64_t __65__HKConceptStore_clientRemote_conceptIndexManagerDidChangeState___block_invoke(uint64_t result)
{
  v3 = *(result + 32);
  v4 = *(result + 40);
  if (*(v3 + 24) != v4)
  {
    v8[6] = v1;
    v8[7] = v2;
    *(v3 + 24) = v4;
    v5 = *(result + 32);
    v6 = *(v5 + 8);
    v8[0] = MEMORY[0x1E69E9820];
    v8[1] = 3221225472;
    v8[2] = __65__HKConceptStore_clientRemote_conceptIndexManagerDidChangeState___block_invoke_2;
    v8[3] = &unk_1E73837F8;
    v7 = *(result + 40);
    v8[4] = v5;
    v8[5] = v7;
    return [v6 notifyObservers:v8];
  }

  return result;
}

+ (id)serverInterface
{
  v2 = [MEMORY[0x1E696B0D0] interfaceWithProtocol:&unk_1F06F84F8];
  v3 = [MEMORY[0x1E695DFD8] setWithObjects:{objc_opt_class(), 0}];
  v4 = MEMORY[0x1E695DFD8];
  v5 = objc_opt_class();
  v6 = objc_opt_class();
  v7 = [v4 setWithObjects:{v5, v6, objc_opt_class(), 0}];
  [v2 setClasses:v3 forSelector:sel_remote_queryRelationshipsForNodeWithID_completion_ argumentIndex:0 ofReply:0];
  [v2 setClasses:v7 forSelector:sel_remote_queryRelationshipsForNodeWithID_completion_ argumentIndex:0 ofReply:1];

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

- (void)connectionInvalidated
{
  _HKInitializeLogging();
  v2 = HKLogHealthRecords;
  if (os_log_type_enabled(HKLogHealthRecords, OS_LOG_TYPE_ERROR))
  {
    [(HKConceptStore *)v2 connectionInvalidated];
  }
}

void __52__HKConceptStore__startObservingConceptIndexManager__block_invoke_cold_1(uint64_t a1, uint64_t a2, os_log_t log)
{
  v9 = *MEMORY[0x1E69E9840];
  v3 = *(*(a1 + 32) + 40);
  v5 = 138412546;
  v6 = v3;
  v7 = 2112;
  v8 = a2;
  _os_log_error_impl(&dword_19197B000, log, OS_LOG_TYPE_ERROR, "Unable to fetch ontology task server %@ proxy after interrupted connection with error: %@", &v5, 0x16u);
  v4 = *MEMORY[0x1E69E9840];
}

- (void)countOfConceptsAssociatedToUserRecordsWithError:(uint64_t)a1 .cold.1(uint64_t a1, NSObject *a2)
{
  v6 = *MEMORY[0x1E69E9840];
  v2 = *(*a1 + 40);
  v4 = 138412290;
  v5 = v2;
  _os_log_error_impl(&dword_19197B000, a2, OS_LOG_TYPE_ERROR, "Error getting count of concepts associated to user records: %@", &v4, 0xCu);
  v3 = *MEMORY[0x1E69E9840];
}

void __44__HKConceptStore_currentConceptIndexerState__block_invoke_3_cold_1(uint64_t a1, NSObject *a2)
{
  v5 = *MEMORY[0x1E69E9840];
  v3 = 138543362;
  v4 = a1;
  _os_log_error_impl(&dword_19197B000, a2, OS_LOG_TYPE_ERROR, "Error fetching proxy attempting to get current concept indexer state: %{public}@", &v3, 0xCu);
  v2 = *MEMORY[0x1E69E9840];
}

@end