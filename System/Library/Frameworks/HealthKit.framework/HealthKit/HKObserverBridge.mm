@interface HKObserverBridge
- (BOOL)notifyObserversOfChangeForKey:(id)key newValue:(id)value;
- (HKObserverBridge)init;
- (id)makeAndRegisterBridgedObserverForKey:(id)key handle:(id)handle;
- (void)dealloc;
- (void)registerObserver:(id)observer forKey:(id)key newValueHandler:(id)handler;
- (void)unregisterBridgedObserver:(id)observer forKey:(id)key;
- (void)unregisterObserver:(id)observer forKey:(id)key;
@end

@implementation HKObserverBridge

- (HKObserverBridge)init
{
  v8.receiver = self;
  v8.super_class = HKObserverBridge;
  v2 = [(HKObserverBridge *)&v8 init];
  if (v2)
  {
    weakToStrongObjectsMapTable = [MEMORY[0x1E696AD18] weakToStrongObjectsMapTable];
    observerBlocksByKeyByObserver = v2->_observerBlocksByKeyByObserver;
    v2->_observerBlocksByKeyByObserver = weakToStrongObjectsMapTable;

    dictionary = [MEMORY[0x1E695DF90] dictionary];
    observersByKey = v2->_observersByKey;
    v2->_observersByKey = dictionary;

    v2->_lock._os_unfair_lock_opaque = 0;
  }

  return v2;
}

- (void)dealloc
{
  v18 = *MEMORY[0x1E69E9840];
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v3 = self->_observersByKey;
  v4 = [(NSMutableDictionary *)v3 countByEnumeratingWithState:&v13 objects:v17 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v14;
    do
    {
      for (i = 0; i != v5; ++i)
      {
        if (*v14 != v6)
        {
          objc_enumerationMutation(v3);
        }

        v8 = *(*(&v13 + 1) + 8 * i);
        v9 = [(NSMutableDictionary *)self->_observersByKey objectForKeyedSubscript:v8];
        bridgedObserver = [v9 bridgedObserver];
        [(HKObserverBridge *)self unregisterBridgedObserver:bridgedObserver forKey:v8];
      }

      v5 = [(NSMutableDictionary *)v3 countByEnumeratingWithState:&v13 objects:v17 count:16];
    }

    while (v5);
  }

  v12.receiver = self;
  v12.super_class = HKObserverBridge;
  [(HKObserverBridge *)&v12 dealloc];
  v11 = *MEMORY[0x1E69E9840];
}

- (void)registerObserver:(id)observer forKey:(id)key newValueHandler:(id)handler
{
  v45 = *MEMORY[0x1E69E9840];
  observerCopy = observer;
  keyCopy = key;
  handlerCopy = handler;
  os_unfair_lock_lock(&self->_lock);
  v11 = [(NSMutableDictionary *)self->_observersByKey objectForKeyedSubscript:keyCopy];

  if (!v11)
  {
    _HKInitializeLogging();
    v12 = HKLogInfrastructure();
    v13 = os_log_type_enabled(v12, OS_LOG_TYPE_INFO);

    if (v13)
    {
      v14 = HKLogInfrastructure();
      if (os_log_type_enabled(v14, OS_LOG_TYPE_INFO))
      {
        *buf = 138543618;
        v42 = objc_opt_class();
        v43 = 2114;
        v44 = keyCopy;
        v15 = v42;
        _os_log_impl(&dword_19197B000, v14, OS_LOG_TYPE_INFO, "[%{public}@] Beginning observation for key %{public}@", buf, 0x16u);
      }
    }

    v16 = [[HKObserverBridgeHandle alloc] initWithBridge:self];
    v17 = objc_alloc_init(_HKBridgedObserverSet);
    v18 = [(HKObserverBridge *)self makeAndRegisterBridgedObserverForKey:keyCopy handle:v16];
    [(_HKBridgedObserverSet *)v17 setBridgedObserver:v18];

    keyCopy = [MEMORY[0x1E696AEC0] stringWithFormat:@"%@_%@", objc_opt_class(), keyCopy];
    v20 = [HKObserverSet alloc];
    v21 = HKLogInfrastructure();
    v22 = [(HKObserverSet *)v20 initWithName:keyCopy loggingCategory:v21];
    [(_HKBridgedObserverSet *)v17 setObservers:v22];

    [(NSMutableDictionary *)self->_observersByKey setObject:v17 forKeyedSubscript:keyCopy];
  }

  v23 = objc_alloc_init(_HKObservationBlock);
  objc_initWeak(buf, observerCopy);
  v38[0] = MEMORY[0x1E69E9820];
  v38[1] = 3221225472;
  v38[2] = __60__HKObserverBridge_registerObserver_forKey_newValueHandler___block_invoke;
  v38[3] = &unk_1E737F880;
  objc_copyWeak(&v40, buf);
  v24 = handlerCopy;
  v39 = v24;
  [(_HKObservationBlock *)v23 setNewValueHandler:v38];
  v25 = [(NSMutableDictionary *)self->_observersByKey objectForKeyedSubscript:keyCopy];
  observers = [v25 observers];
  [observers registerObserver:v23];

  v27 = [(NSMapTable *)self->_observerBlocksByKeyByObserver objectForKey:observerCopy];
  LODWORD(v25) = v27 == 0;

  if (v25)
  {
    observerBlocksByKeyByObserver = self->_observerBlocksByKeyByObserver;
    dictionary = [MEMORY[0x1E695DF90] dictionary];
    [(NSMapTable *)observerBlocksByKeyByObserver setObject:dictionary forKey:observerCopy];
  }

  v30 = [(NSMapTable *)self->_observerBlocksByKeyByObserver objectForKey:observerCopy];
  v31 = [v30 objectForKeyedSubscript:keyCopy];
  v32 = v31 == 0;

  if (v32)
  {
    array = [MEMORY[0x1E695DF70] array];
    v34 = [(NSMapTable *)self->_observerBlocksByKeyByObserver objectForKey:observerCopy];
    [v34 setObject:array forKeyedSubscript:keyCopy];
  }

  v35 = [(NSMapTable *)self->_observerBlocksByKeyByObserver objectForKey:observerCopy];
  v36 = [v35 objectForKeyedSubscript:keyCopy];
  [v36 addObject:v23];

  os_unfair_lock_unlock(&self->_lock);
  objc_destroyWeak(&v40);
  objc_destroyWeak(buf);

  v37 = *MEMORY[0x1E69E9840];
}

void __60__HKObserverBridge_registerObserver_forKey_newValueHandler___block_invoke(uint64_t a1, void *a2)
{
  v4 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  if (WeakRetained)
  {
    (*(*(a1 + 32) + 16))();
  }
}

- (void)unregisterObserver:(id)observer forKey:(id)key
{
  v32 = *MEMORY[0x1E69E9840];
  observerCopy = observer;
  keyCopy = key;
  os_unfair_lock_lock(&self->_lock);
  v8 = [(NSMapTable *)self->_observerBlocksByKeyByObserver objectForKey:observerCopy];
  v9 = [v8 objectForKeyedSubscript:keyCopy];

  v10 = [(NSMutableDictionary *)self->_observersByKey objectForKeyedSubscript:keyCopy];
  v11 = v10;
  if (v9)
  {
    v12 = v10 == 0;
  }

  else
  {
    v12 = 1;
  }

  if (!v12)
  {
    v22 = observerCopy;
    v13 = [(NSMapTable *)self->_observerBlocksByKeyByObserver objectForKey:observerCopy];
    [v13 removeObjectForKey:keyCopy];

    v29 = 0u;
    v30 = 0u;
    v27 = 0u;
    v28 = 0u;
    v21 = v9;
    obj = v9;
    v14 = [obj countByEnumeratingWithState:&v27 objects:v31 count:16];
    if (v14)
    {
      v15 = v14;
      v16 = *v28;
      do
      {
        v17 = 0;
        do
        {
          if (*v28 != v16)
          {
            objc_enumerationMutation(obj);
          }

          v18 = *(*(&v27 + 1) + 8 * v17);
          observers = [v11 observers];
          v24[0] = MEMORY[0x1E69E9820];
          v24[1] = 3221225472;
          v24[2] = __46__HKObserverBridge_unregisterObserver_forKey___block_invoke;
          v24[3] = &unk_1E7376640;
          v24[4] = self;
          v25 = keyCopy;
          v26 = v11;
          [observers unregisterObserver:v18 runIfLastObserver:v24];

          ++v17;
        }

        while (v15 != v17);
        v15 = [obj countByEnumeratingWithState:&v27 objects:v31 count:16];
      }

      while (v15);
    }

    v9 = v21;
    observerCopy = v22;
  }

  os_unfair_lock_unlock(&self->_lock);

  v20 = *MEMORY[0x1E69E9840];
}

void __46__HKObserverBridge_unregisterObserver_forKey___block_invoke(uint64_t a1)
{
  v13 = *MEMORY[0x1E69E9840];
  _HKInitializeLogging();
  v2 = HKLogInfrastructure();
  v3 = os_log_type_enabled(v2, OS_LOG_TYPE_INFO);

  if (v3)
  {
    v4 = HKLogInfrastructure();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
    {
      v5 = *(a1 + 32);
      v6 = objc_opt_class();
      v7 = *(a1 + 40);
      *v12 = 138543618;
      *&v12[4] = v6;
      *&v12[12] = 2114;
      *&v12[14] = v7;
      v8 = v6;
      _os_log_impl(&dword_19197B000, v4, OS_LOG_TYPE_INFO, "[%{public}@] Ending observation for key %{public}@", v12, 0x16u);
    }
  }

  [*(*(a1 + 32) + 16) removeObjectForKey:{*(a1 + 40), *v12, *&v12[16], v13}];
  v9 = *(a1 + 32);
  v10 = [*(a1 + 48) bridgedObserver];
  [v9 unregisterBridgedObserver:v10 forKey:*(a1 + 40)];

  v11 = *MEMORY[0x1E69E9840];
}

- (BOOL)notifyObserversOfChangeForKey:(id)key newValue:(id)value
{
  v32 = *MEMORY[0x1E69E9840];
  keyCopy = key;
  valueCopy = value;
  _HKInitializeLogging();
  v8 = HKLogInfrastructure();
  v9 = os_log_type_enabled(v8, OS_LOG_TYPE_INFO);

  if (v9)
  {
    v10 = HKLogInfrastructure();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
    {
      *buf = 138543618;
      v27 = objc_opt_class();
      v28 = 2114;
      v29 = keyCopy;
      v11 = v27;
      _os_log_impl(&dword_19197B000, v10, OS_LOG_TYPE_INFO, "[%{public}@] Observed change to %{public}@", buf, 0x16u);
    }
  }

  os_unfair_lock_lock(&self->_lock);
  v12 = [(NSMutableDictionary *)self->_observersByKey objectForKeyedSubscript:keyCopy];
  observers = [v12 observers];

  os_unfair_lock_unlock(&self->_lock);
  _HKInitializeLogging();
  v14 = HKLogInfrastructure();
  v15 = v14;
  if (observers)
  {
    v16 = os_log_type_enabled(v14, OS_LOG_TYPE_INFO);

    if (v16)
    {
      v17 = HKLogInfrastructure();
      if (os_log_type_enabled(v17, OS_LOG_TYPE_INFO))
      {
        v18 = objc_opt_class();
        v19 = MEMORY[0x1E696AD98];
        v20 = v18;
        v21 = [v19 numberWithUnsignedInteger:{objc_msgSend(observers, "count")}];
        *buf = 138543874;
        v27 = v18;
        v28 = 2114;
        v29 = v21;
        v30 = 2114;
        v31 = keyCopy;
        _os_log_impl(&dword_19197B000, v17, OS_LOG_TYPE_INFO, "[%{public}@] Notifying %{public}@ observers of key %{public}@", buf, 0x20u);
      }
    }

    v24[0] = MEMORY[0x1E69E9820];
    v24[1] = 3221225472;
    v24[2] = __59__HKObserverBridge_notifyObserversOfChangeForKey_newValue___block_invoke;
    v24[3] = &unk_1E737F8A8;
    v25 = valueCopy;
    [observers notifyObservers:v24];
    v15 = v25;
  }

  else if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
  {
    [(HKObserverBridge *)self notifyObserversOfChangeForKey:keyCopy newValue:v15];
  }

  v22 = *MEMORY[0x1E69E9840];
  return observers != 0;
}

void __59__HKObserverBridge_notifyObserversOfChangeForKey_newValue___block_invoke(uint64_t a1, void *a2)
{
  v3 = [a2 newValueHandler];
  v3[2](v3, *(a1 + 32));
}

- (id)makeAndRegisterBridgedObserverForKey:(id)key handle:(id)handle
{
  objc_opt_class();
  NSRequestConcreteImplementation();
  return 0;
}

- (void)unregisterBridgedObserver:(id)observer forKey:(id)key
{
  objc_opt_class();

  NSRequestConcreteImplementation();
}

- (void)notifyObserversOfChangeForKey:(NSObject *)a3 newValue:.cold.1(uint64_t a1, uint64_t a2, NSObject *a3)
{
  v11 = *MEMORY[0x1E69E9840];
  v7 = 138543618;
  v8 = objc_opt_class();
  v9 = 2114;
  v10 = a2;
  v5 = v8;
  _os_log_error_impl(&dword_19197B000, a3, OS_LOG_TYPE_ERROR, "[%{public}@] Found no observer set for key %{public}@", &v7, 0x16u);

  v6 = *MEMORY[0x1E69E9840];
}

@end