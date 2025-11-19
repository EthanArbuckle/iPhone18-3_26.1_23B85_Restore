@interface HKObserverBridge
- (BOOL)notifyObserversOfChangeForKey:(id)a3 newValue:(id)a4;
- (HKObserverBridge)init;
- (id)makeAndRegisterBridgedObserverForKey:(id)a3 handle:(id)a4;
- (void)dealloc;
- (void)registerObserver:(id)a3 forKey:(id)a4 newValueHandler:(id)a5;
- (void)unregisterBridgedObserver:(id)a3 forKey:(id)a4;
- (void)unregisterObserver:(id)a3 forKey:(id)a4;
@end

@implementation HKObserverBridge

- (HKObserverBridge)init
{
  v8.receiver = self;
  v8.super_class = HKObserverBridge;
  v2 = [(HKObserverBridge *)&v8 init];
  if (v2)
  {
    v3 = [MEMORY[0x1E696AD18] weakToStrongObjectsMapTable];
    observerBlocksByKeyByObserver = v2->_observerBlocksByKeyByObserver;
    v2->_observerBlocksByKeyByObserver = v3;

    v5 = [MEMORY[0x1E695DF90] dictionary];
    observersByKey = v2->_observersByKey;
    v2->_observersByKey = v5;

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
        v10 = [v9 bridgedObserver];
        [(HKObserverBridge *)self unregisterBridgedObserver:v10 forKey:v8];
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

- (void)registerObserver:(id)a3 forKey:(id)a4 newValueHandler:(id)a5
{
  v45 = *MEMORY[0x1E69E9840];
  v8 = a3;
  v9 = a4;
  v10 = a5;
  os_unfair_lock_lock(&self->_lock);
  v11 = [(NSMutableDictionary *)self->_observersByKey objectForKeyedSubscript:v9];

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
        v44 = v9;
        v15 = v42;
        _os_log_impl(&dword_19197B000, v14, OS_LOG_TYPE_INFO, "[%{public}@] Beginning observation for key %{public}@", buf, 0x16u);
      }
    }

    v16 = [[HKObserverBridgeHandle alloc] initWithBridge:self];
    v17 = objc_alloc_init(_HKBridgedObserverSet);
    v18 = [(HKObserverBridge *)self makeAndRegisterBridgedObserverForKey:v9 handle:v16];
    [(_HKBridgedObserverSet *)v17 setBridgedObserver:v18];

    v19 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%@_%@", objc_opt_class(), v9];
    v20 = [HKObserverSet alloc];
    v21 = HKLogInfrastructure();
    v22 = [(HKObserverSet *)v20 initWithName:v19 loggingCategory:v21];
    [(_HKBridgedObserverSet *)v17 setObservers:v22];

    [(NSMutableDictionary *)self->_observersByKey setObject:v17 forKeyedSubscript:v9];
  }

  v23 = objc_alloc_init(_HKObservationBlock);
  objc_initWeak(buf, v8);
  v38[0] = MEMORY[0x1E69E9820];
  v38[1] = 3221225472;
  v38[2] = __60__HKObserverBridge_registerObserver_forKey_newValueHandler___block_invoke;
  v38[3] = &unk_1E737F880;
  objc_copyWeak(&v40, buf);
  v24 = v10;
  v39 = v24;
  [(_HKObservationBlock *)v23 setNewValueHandler:v38];
  v25 = [(NSMutableDictionary *)self->_observersByKey objectForKeyedSubscript:v9];
  v26 = [v25 observers];
  [v26 registerObserver:v23];

  v27 = [(NSMapTable *)self->_observerBlocksByKeyByObserver objectForKey:v8];
  LODWORD(v25) = v27 == 0;

  if (v25)
  {
    observerBlocksByKeyByObserver = self->_observerBlocksByKeyByObserver;
    v29 = [MEMORY[0x1E695DF90] dictionary];
    [(NSMapTable *)observerBlocksByKeyByObserver setObject:v29 forKey:v8];
  }

  v30 = [(NSMapTable *)self->_observerBlocksByKeyByObserver objectForKey:v8];
  v31 = [v30 objectForKeyedSubscript:v9];
  v32 = v31 == 0;

  if (v32)
  {
    v33 = [MEMORY[0x1E695DF70] array];
    v34 = [(NSMapTable *)self->_observerBlocksByKeyByObserver objectForKey:v8];
    [v34 setObject:v33 forKeyedSubscript:v9];
  }

  v35 = [(NSMapTable *)self->_observerBlocksByKeyByObserver objectForKey:v8];
  v36 = [v35 objectForKeyedSubscript:v9];
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

- (void)unregisterObserver:(id)a3 forKey:(id)a4
{
  v32 = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = a4;
  os_unfair_lock_lock(&self->_lock);
  v8 = [(NSMapTable *)self->_observerBlocksByKeyByObserver objectForKey:v6];
  v9 = [v8 objectForKeyedSubscript:v7];

  v10 = [(NSMutableDictionary *)self->_observersByKey objectForKeyedSubscript:v7];
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
    v22 = v6;
    v13 = [(NSMapTable *)self->_observerBlocksByKeyByObserver objectForKey:v6];
    [v13 removeObjectForKey:v7];

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
          v19 = [v11 observers];
          v24[0] = MEMORY[0x1E69E9820];
          v24[1] = 3221225472;
          v24[2] = __46__HKObserverBridge_unregisterObserver_forKey___block_invoke;
          v24[3] = &unk_1E7376640;
          v24[4] = self;
          v25 = v7;
          v26 = v11;
          [v19 unregisterObserver:v18 runIfLastObserver:v24];

          ++v17;
        }

        while (v15 != v17);
        v15 = [obj countByEnumeratingWithState:&v27 objects:v31 count:16];
      }

      while (v15);
    }

    v9 = v21;
    v6 = v22;
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

- (BOOL)notifyObserversOfChangeForKey:(id)a3 newValue:(id)a4
{
  v32 = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = a4;
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
      v29 = v6;
      v11 = v27;
      _os_log_impl(&dword_19197B000, v10, OS_LOG_TYPE_INFO, "[%{public}@] Observed change to %{public}@", buf, 0x16u);
    }
  }

  os_unfair_lock_lock(&self->_lock);
  v12 = [(NSMutableDictionary *)self->_observersByKey objectForKeyedSubscript:v6];
  v13 = [v12 observers];

  os_unfair_lock_unlock(&self->_lock);
  _HKInitializeLogging();
  v14 = HKLogInfrastructure();
  v15 = v14;
  if (v13)
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
        v21 = [v19 numberWithUnsignedInteger:{objc_msgSend(v13, "count")}];
        *buf = 138543874;
        v27 = v18;
        v28 = 2114;
        v29 = v21;
        v30 = 2114;
        v31 = v6;
        _os_log_impl(&dword_19197B000, v17, OS_LOG_TYPE_INFO, "[%{public}@] Notifying %{public}@ observers of key %{public}@", buf, 0x20u);
      }
    }

    v24[0] = MEMORY[0x1E69E9820];
    v24[1] = 3221225472;
    v24[2] = __59__HKObserverBridge_notifyObserversOfChangeForKey_newValue___block_invoke;
    v24[3] = &unk_1E737F8A8;
    v25 = v7;
    [v13 notifyObservers:v24];
    v15 = v25;
  }

  else if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
  {
    [(HKObserverBridge *)self notifyObserversOfChangeForKey:v6 newValue:v15];
  }

  v22 = *MEMORY[0x1E69E9840];
  return v13 != 0;
}

void __59__HKObserverBridge_notifyObserversOfChangeForKey_newValue___block_invoke(uint64_t a1, void *a2)
{
  v3 = [a2 newValueHandler];
  v3[2](v3, *(a1 + 32));
}

- (id)makeAndRegisterBridgedObserverForKey:(id)a3 handle:(id)a4
{
  objc_opt_class();
  NSRequestConcreteImplementation();
  return 0;
}

- (void)unregisterBridgedObserver:(id)a3 forKey:(id)a4
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