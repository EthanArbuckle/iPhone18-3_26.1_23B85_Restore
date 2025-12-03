@interface HKFeatureAvailabilityHealthDataRequirementStore
+ (id)taskIdentifier;
- (BOOL)_synchronouslyStartObservingWithError:(id *)error;
- (HKFeatureAvailabilityHealthDataRequirementStore)initWithHealthStore:(id)store;
- (id)_allObservedRequirements;
- (id)evaluationOfRequirements:(id)requirements error:(id *)error;
- (void)_handleAutomaticProxyReconnection;
- (void)_notifyObservers:(id)observers;
- (void)_reevaluateAllObservedRequirementsAndNotifyObservers;
- (void)_startObservingRequirements:(id)requirements activationHandler:(id)handler;
- (void)client_featureAvailabilityRequirement:(id)requirement didUpdateSatisfaction:(BOOL)satisfaction;
- (void)registerObserver:(id)observer forRequirements:(id)requirements queue:(id)queue;
- (void)registerObserver:(id)observer forRequirements:(id)requirements queue:(id)queue activationHandler:(id)handler;
- (void)unregisterObserver:(id)observer;
@end

@implementation HKFeatureAvailabilityHealthDataRequirementStore

- (HKFeatureAvailabilityHealthDataRequirementStore)initWithHealthStore:(id)store
{
  storeCopy = store;
  v19.receiver = self;
  v19.super_class = HKFeatureAvailabilityHealthDataRequirementStore;
  v5 = [(HKFeatureAvailabilityHealthDataRequirementStore *)&v19 init];
  if (v5)
  {
    v6 = [HKObserverSet alloc];
    v7 = HKLogInfrastructure();
    v8 = [(HKObserverSet *)v6 initWithName:@"HKFeatureAvailabilityHealthDataRequirementStore" loggingCategory:v7];
    observers = v5->_observers;
    v5->_observers = v8;

    v10 = [HKTaskServerProxyProvider alloc];
    taskIdentifier = [objc_opt_class() taskIdentifier];
    uUID = [MEMORY[0x1E696AFB0] UUID];
    v13 = [(HKTaskServerProxyProvider *)v10 initWithHealthStore:storeCopy taskIdentifier:taskIdentifier exportedObject:v5 taskUUID:uUID];
    proxyProvider = v5->_proxyProvider;
    v5->_proxyProvider = v13;

    [(HKProxyProvider *)v5->_proxyProvider setShouldRetryOnInterruption:0];
    v15 = objc_alloc_init(HKTaskConfiguration);
    [(HKTaskServerProxyProvider *)v5->_proxyProvider setTaskConfiguration:v15];

    v5->_lock._os_unfair_lock_opaque = 0;
    weakToStrongObjectsMapTable = [MEMORY[0x1E696AD18] weakToStrongObjectsMapTable];
    lock_requirementsByObserver = v5->_lock_requirementsByObserver;
    v5->_lock_requirementsByObserver = weakToStrongObjectsMapTable;
  }

  return v5;
}

+ (id)taskIdentifier
{
  v2 = objc_opt_class();

  return NSStringFromClass(v2);
}

- (id)evaluationOfRequirements:(id)requirements error:(id *)error
{
  requirementsCopy = requirements;
  if ([requirementsCopy count])
  {
    v24 = 0;
    v25 = &v24;
    v26 = 0x3032000000;
    v27 = __Block_byref_object_copy__25;
    v28 = __Block_byref_object_dispose__25;
    v29 = 0;
    v18 = 0;
    v19 = &v18;
    v20 = 0x3032000000;
    v21 = __Block_byref_object_copy__25;
    v22 = __Block_byref_object_dispose__25;
    v23 = 0;
    proxyProvider = self->_proxyProvider;
    v14[0] = MEMORY[0x1E69E9820];
    v14[1] = 3221225472;
    v14[2] = __82__HKFeatureAvailabilityHealthDataRequirementStore_evaluationOfRequirements_error___block_invoke;
    v14[3] = &unk_1E737F5C8;
    v15 = requirementsCopy;
    v16 = &v24;
    v17 = &v18;
    v13[0] = MEMORY[0x1E69E9820];
    v13[1] = 3221225472;
    v13[2] = __82__HKFeatureAvailabilityHealthDataRequirementStore_evaluationOfRequirements_error___block_invoke_3;
    v13[3] = &unk_1E7378838;
    v13[4] = &v18;
    [(HKProxyProvider *)proxyProvider getSynchronousProxyWithHandler:v14 errorHandler:v13];
    v8 = v19[5];
    v9 = v8;
    if (v8)
    {
      if (error)
      {
        v10 = v8;
        *error = v9;
      }

      else
      {
        _HKLogDroppedError(v8);
      }
    }

    v11 = v25[5];
    _Block_object_dispose(&v18, 8);

    _Block_object_dispose(&v24, 8);
  }

  else
  {
    v11 = MEMORY[0x1E695E0F8];
  }

  return v11;
}

uint64_t __82__HKFeatureAvailabilityHealthDataRequirementStore_evaluationOfRequirements_error___block_invoke(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = __82__HKFeatureAvailabilityHealthDataRequirementStore_evaluationOfRequirements_error___block_invoke_2;
  v4[3] = &unk_1E737F5A0;
  v5 = *(a1 + 40);
  return [a2 remote_getEvaluationOfRequirements:v2 completion:v4];
}

void __82__HKFeatureAvailabilityHealthDataRequirementStore_evaluationOfRequirements_error___block_invoke_2(uint64_t a1, void *a2, void *a3)
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

- (void)registerObserver:(id)observer forRequirements:(id)requirements queue:(id)queue
{
  observerCopy = observer;
  requirementsCopy = requirements;
  queueCopy = queue;
  if ([requirementsCopy count])
  {
    [(HKFeatureAvailabilityHealthDataRequirementStore *)self registerObserver:observerCopy forRequirements:requirementsCopy queue:queueCopy activationHandler:0];
  }
}

- (void)registerObserver:(id)observer forRequirements:(id)requirements queue:(id)queue activationHandler:(id)handler
{
  proxyProvider = self->_proxyProvider;
  queueCopy = queue;
  requirementsCopy = requirements;
  observerCopy = observer;
  v14 = [(HKProxyProvider *)proxyProvider clientQueueActionHandlerWithCompletion:handler];
  os_unfair_lock_lock(&self->_lock);
  [(NSMapTable *)self->_lock_requirementsByObserver setObject:requirementsCopy forKey:observerCopy];
  os_unfair_lock_unlock(&self->_lock);
  observers = self->_observers;
  v16[0] = MEMORY[0x1E69E9820];
  v16[1] = 3221225472;
  v16[2] = __108__HKFeatureAvailabilityHealthDataRequirementStore_registerObserver_forRequirements_queue_activationHandler___block_invoke;
  v16[3] = &unk_1E7376780;
  v16[4] = self;
  [(HKObserverSet *)observers registerObserver:observerCopy queue:queueCopy runIfFirstObserver:v16];

  [(HKFeatureAvailabilityHealthDataRequirementStore *)self _startObservingRequirements:requirementsCopy activationHandler:v14];
}

void __108__HKFeatureAvailabilityHealthDataRequirementStore_registerObserver_forRequirements_queue_activationHandler___block_invoke(uint64_t a1)
{
  v9 = *MEMORY[0x1E69E9840];
  _HKInitializeLogging();
  v2 = HKLogInfrastructure();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v3 = *(a1 + 32);
    *buf = 138543362;
    v8 = v3;
    _os_log_impl(&dword_19197B000, v2, OS_LOG_TYPE_DEFAULT, "[%{public}@] Beginning observation", buf, 0xCu);
  }

  objc_initWeak(buf, *(a1 + 32));
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __108__HKFeatureAvailabilityHealthDataRequirementStore_registerObserver_forRequirements_queue_activationHandler___block_invoke_14;
  v5[3] = &unk_1E7379140;
  objc_copyWeak(&v6, buf);
  [*(*(a1 + 32) + 16) setAutomaticProxyReconnectionHandler:v5];
  [*(*(a1 + 32) + 16) setShouldRetryOnInterruption:1];
  objc_destroyWeak(&v6);
  objc_destroyWeak(buf);
  v4 = *MEMORY[0x1E69E9840];
}

void __108__HKFeatureAvailabilityHealthDataRequirementStore_registerObserver_forRequirements_queue_activationHandler___block_invoke_14(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained _handleAutomaticProxyReconnection];
}

- (void)unregisterObserver:(id)observer
{
  observerCopy = observer;
  os_unfair_lock_lock(&self->_lock);
  [(NSMapTable *)self->_lock_requirementsByObserver removeObjectForKey:observerCopy];
  os_unfair_lock_unlock(&self->_lock);
  observers = self->_observers;
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __70__HKFeatureAvailabilityHealthDataRequirementStore_unregisterObserver___block_invoke;
  v6[3] = &unk_1E7376780;
  v6[4] = self;
  [(HKObserverSet *)observers unregisterObserver:observerCopy runIfLastObserver:v6];
}

uint64_t __70__HKFeatureAvailabilityHealthDataRequirementStore_unregisterObserver___block_invoke(uint64_t a1)
{
  v11 = *MEMORY[0x1E69E9840];
  _HKInitializeLogging();
  v2 = HKLogInfrastructure();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v3 = *(a1 + 32);
    *buf = 138543362;
    v10 = v3;
    _os_log_impl(&dword_19197B000, v2, OS_LOG_TYPE_DEFAULT, "[%{public}@] Ending observation", buf, 0xCu);
  }

  [*(*(a1 + 32) + 16) setAutomaticProxyReconnectionHandler:0];
  v4 = *(a1 + 32);
  v5 = *(v4 + 16);
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __70__HKFeatureAvailabilityHealthDataRequirementStore_unregisterObserver___block_invoke_2;
  v8[3] = &unk_1E7376898;
  v8[4] = v4;
  result = [v5 fetchProxyWithHandler:&__block_literal_global_64 errorHandler:v8];
  v7 = *MEMORY[0x1E69E9840];
  return result;
}

void __70__HKFeatureAvailabilityHealthDataRequirementStore_unregisterObserver___block_invoke_2(uint64_t a1, void *a2)
{
  v3 = a2;
  _HKInitializeLogging();
  v4 = HKLogInfrastructure();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
  {
    __70__HKFeatureAvailabilityHealthDataRequirementStore_unregisterObserver___block_invoke_2_cold_1(a1);
  }
}

- (void)_startObservingRequirements:(id)requirements activationHandler:(id)handler
{
  requirementsCopy = requirements;
  handlerCopy = handler;
  proxyProvider = self->_proxyProvider;
  v13[0] = MEMORY[0x1E69E9820];
  v13[1] = 3221225472;
  v13[2] = __97__HKFeatureAvailabilityHealthDataRequirementStore__startObservingRequirements_activationHandler___block_invoke;
  v13[3] = &unk_1E737F610;
  v14 = requirementsCopy;
  v15 = handlerCopy;
  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 3221225472;
  v11[2] = __97__HKFeatureAvailabilityHealthDataRequirementStore__startObservingRequirements_activationHandler___block_invoke_2;
  v11[3] = &unk_1E7376820;
  v11[4] = self;
  v12 = v15;
  v9 = v15;
  v10 = requirementsCopy;
  [(HKProxyProvider *)proxyProvider fetchProxyWithHandler:v13 errorHandler:v11];
}

void __97__HKFeatureAvailabilityHealthDataRequirementStore__startObservingRequirements_activationHandler___block_invoke_2(uint64_t a1, void *a2)
{
  v3 = a2;
  _HKInitializeLogging();
  v4 = HKLogInfrastructure();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
  {
    __97__HKFeatureAvailabilityHealthDataRequirementStore__startObservingRequirements_activationHandler___block_invoke_2_cold_1(a1);
  }

  (*(*(a1 + 40) + 16))();
}

- (BOOL)_synchronouslyStartObservingWithError:(id *)error
{
  v24 = 0;
  v25 = &v24;
  v26 = 0x2020000000;
  v27 = 0;
  v18 = 0;
  v19 = &v18;
  v20 = 0x3032000000;
  v21 = __Block_byref_object_copy__25;
  v22 = __Block_byref_object_dispose__25;
  v23 = 0;
  _allObservedRequirements = [(HKFeatureAvailabilityHealthDataRequirementStore *)self _allObservedRequirements];
  proxyProvider = self->_proxyProvider;
  v14[0] = MEMORY[0x1E69E9820];
  v14[1] = 3221225472;
  v14[2] = __89__HKFeatureAvailabilityHealthDataRequirementStore__synchronouslyStartObservingWithError___block_invoke;
  v14[3] = &unk_1E737F5C8;
  v7 = _allObservedRequirements;
  v15 = v7;
  v16 = &v24;
  v17 = &v18;
  v13[0] = MEMORY[0x1E69E9820];
  v13[1] = 3221225472;
  v13[2] = __89__HKFeatureAvailabilityHealthDataRequirementStore__synchronouslyStartObservingWithError___block_invoke_3;
  v13[3] = &unk_1E73787C0;
  v13[4] = self;
  v13[5] = &v18;
  [(HKProxyProvider *)proxyProvider getSynchronousProxyWithHandler:v14 errorHandler:v13];
  v8 = v19[5];
  v9 = v8;
  if (v8)
  {
    if (error)
    {
      v10 = v8;
      *error = v9;
    }

    else
    {
      _HKLogDroppedError(v8);
    }
  }

  v11 = *(v25 + 24);
  _Block_object_dispose(&v18, 8);

  _Block_object_dispose(&v24, 8);
  return v11;
}

uint64_t __89__HKFeatureAvailabilityHealthDataRequirementStore__synchronouslyStartObservingWithError___block_invoke(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = __89__HKFeatureAvailabilityHealthDataRequirementStore__synchronouslyStartObservingWithError___block_invoke_2;
  v4[3] = &unk_1E7378D28;
  v5 = *(a1 + 40);
  return [a2 remote_startObservingChangesInRequirements:v2 completion:v4];
}

void __89__HKFeatureAvailabilityHealthDataRequirementStore__synchronouslyStartObservingWithError___block_invoke_3(uint64_t a1, void *a2)
{
  v3 = a2;
  _HKInitializeLogging();
  v4 = HKLogInfrastructure();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
  {
    __89__HKFeatureAvailabilityHealthDataRequirementStore__synchronouslyStartObservingWithError___block_invoke_3_cold_1(a1, v4);
  }

  v5 = *(*(a1 + 40) + 8);
  v6 = *(v5 + 40);
  *(v5 + 40) = v3;
}

- (void)_handleAutomaticProxyReconnection
{
  v5 = *MEMORY[0x1E69E9840];
  LODWORD(v4) = 138543618;
  *(&v4 + 4) = self;
  OUTLINED_FUNCTION_0_10();
  OUTLINED_FUNCTION_1(&dword_19197B000, v1, v2, "[%{public}@] Failed to resume observation on server reconnection: %{public}@", v4, DWORD2(v4));
  v3 = *MEMORY[0x1E69E9840];
}

- (void)_reevaluateAllObservedRequirementsAndNotifyObservers
{
  v5 = *MEMORY[0x1E69E9840];
  LODWORD(v4) = 138543618;
  *(&v4 + 4) = self;
  OUTLINED_FUNCTION_0_10();
  OUTLINED_FUNCTION_1(&dword_19197B000, v1, v2, "[%{public}@] Error reevaluating requirements on automatic proxy reconnection: %{public}@", v4, DWORD2(v4));
  v3 = *MEMORY[0x1E69E9840];
}

void __103__HKFeatureAvailabilityHealthDataRequirementStore__reevaluateAllObservedRequirementsAndNotifyObservers__block_invoke(uint64_t a1, void *a2, void *a3)
{
  v20 = *MEMORY[0x1E69E9840];
  v5 = a2;
  v6 = a3;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v7 = [v6 countByEnumeratingWithState:&v15 objects:v19 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v16;
    do
    {
      for (i = 0; i != v8; ++i)
      {
        if (*v16 != v9)
        {
          objc_enumerationMutation(v6);
        }

        v11 = *(*(&v15 + 1) + 8 * i);
        v12 = [*(a1 + 32) objectForKeyedSubscript:v11];
        v13 = v12;
        if (v12)
        {
          [v5 featureAvailabilityRequirement:v11 didUpdateSatisfaction:{objc_msgSend(v12, "BOOLValue")}];
        }
      }

      v8 = [v6 countByEnumeratingWithState:&v15 objects:v19 count:16];
    }

    while (v8);
  }

  v14 = *MEMORY[0x1E69E9840];
}

- (void)_notifyObservers:(id)observers
{
  observersCopy = observers;
  os_unfair_lock_lock(&self->_lock);
  v5 = [(NSMapTable *)self->_lock_requirementsByObserver copy];
  os_unfair_lock_unlock(&self->_lock);
  observers = self->_observers;
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __68__HKFeatureAvailabilityHealthDataRequirementStore__notifyObservers___block_invoke;
  v9[3] = &unk_1E737F660;
  v10 = v5;
  v11 = observersCopy;
  v7 = observersCopy;
  v8 = v5;
  [(HKObserverSet *)observers notifyObservers:v9];
}

void __68__HKFeatureAvailabilityHealthDataRequirementStore__notifyObservers___block_invoke(uint64_t a1, void *a2)
{
  v4 = a2;
  v3 = [*(a1 + 32) objectForKey:?];
  if (v3)
  {
    (*(*(a1 + 40) + 16))();
  }
}

- (id)_allObservedRequirements
{
  v17 = *MEMORY[0x1E69E9840];
  os_unfair_lock_lock(&self->_lock);
  v3 = objc_alloc_init(MEMORY[0x1E695DFA8]);
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  objectEnumerator = [(NSMapTable *)self->_lock_requirementsByObserver objectEnumerator];
  v5 = [objectEnumerator countByEnumeratingWithState:&v12 objects:v16 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v13;
    do
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v13 != v7)
        {
          objc_enumerationMutation(objectEnumerator);
        }

        [v3 unionSet:*(*(&v12 + 1) + 8 * i)];
      }

      v6 = [objectEnumerator countByEnumeratingWithState:&v12 objects:v16 count:16];
    }

    while (v6);
  }

  os_unfair_lock_unlock(&self->_lock);
  v9 = [v3 copy];

  v10 = *MEMORY[0x1E69E9840];

  return v9;
}

- (void)client_featureAvailabilityRequirement:(id)requirement didUpdateSatisfaction:(BOOL)satisfaction
{
  v15 = *MEMORY[0x1E69E9840];
  requirementCopy = requirement;
  _HKInitializeLogging();
  v7 = HKLogInfrastructure();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138543362;
    selfCopy = self;
    _os_log_impl(&dword_19197B000, v7, OS_LOG_TYPE_DEFAULT, "[%{public}@] Received server notification of requirement satisfaction update", buf, 0xCu);
  }

  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __111__HKFeatureAvailabilityHealthDataRequirementStore_client_featureAvailabilityRequirement_didUpdateSatisfaction___block_invoke;
  v10[3] = &unk_1E737F688;
  v11 = requirementCopy;
  satisfactionCopy = satisfaction;
  v8 = requirementCopy;
  [(HKFeatureAvailabilityHealthDataRequirementStore *)self _notifyObservers:v10];

  v9 = *MEMORY[0x1E69E9840];
}

void __111__HKFeatureAvailabilityHealthDataRequirementStore_client_featureAvailabilityRequirement_didUpdateSatisfaction___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  if ([a3 containsObject:*(a1 + 32)])
  {
    [v5 featureAvailabilityRequirement:*(a1 + 32) didUpdateSatisfaction:*(a1 + 40)];
  }
}

void __70__HKFeatureAvailabilityHealthDataRequirementStore_unregisterObserver___block_invoke_2_cold_1(uint64_t a1)
{
  v5 = *MEMORY[0x1E69E9840];
  LODWORD(v4) = 138543618;
  *(&v4 + 4) = *(a1 + 32);
  OUTLINED_FUNCTION_0_10();
  OUTLINED_FUNCTION_1(&dword_19197B000, v1, v2, "[%{public}@] Failed to communicate with task server for observation stop: %{public}@", v4, DWORD2(v4));
  v3 = *MEMORY[0x1E69E9840];
}

void __97__HKFeatureAvailabilityHealthDataRequirementStore__startObservingRequirements_activationHandler___block_invoke_2_cold_1(uint64_t a1)
{
  v5 = *MEMORY[0x1E69E9840];
  LODWORD(v4) = 138543618;
  *(&v4 + 4) = *(a1 + 32);
  OUTLINED_FUNCTION_0_10();
  OUTLINED_FUNCTION_1(&dword_19197B000, v1, v2, "[%{public}@] Failed to communicate with task server for observation start: %{public}@", v4, DWORD2(v4));
  v3 = *MEMORY[0x1E69E9840];
}

void __89__HKFeatureAvailabilityHealthDataRequirementStore__synchronouslyStartObservingWithError___block_invoke_3_cold_1(uint64_t a1, NSObject *a2)
{
  v9 = *MEMORY[0x1E69E9840];
  v2 = *(a1 + 32);
  v3 = *(*(*(a1 + 40) + 8) + 40);
  v5 = 138543618;
  v6 = v2;
  v7 = 2114;
  v8 = v3;
  _os_log_error_impl(&dword_19197B000, a2, OS_LOG_TYPE_ERROR, "[%{public}@] Failed to communicate with task server for observation start: %{public}@", &v5, 0x16u);
  v4 = *MEMORY[0x1E69E9840];
}

@end