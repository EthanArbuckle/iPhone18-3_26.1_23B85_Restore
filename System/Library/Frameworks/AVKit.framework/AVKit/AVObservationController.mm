@interface AVObservationController
- (AVObservationController)initWithOwner:(id)a3;
- (id)startObserving:(id)a3 keyPath:(id)a4 includeInitialValue:(BOOL)a5 observationHandler:(id)a6;
- (id)startObserving:(id)a3 keyPath:(id)a4 observationHandler:(id)a5;
- (id)startObserving:(id)a3 keyPaths:(id)a4 includeInitialValue:(BOOL)a5 includeChanges:(BOOL)a6 observationHandler:(id)a7;
- (id)startObserving:(id)a3 keyPaths:(id)a4 observationHandler:(id)a5;
- (void)_stopAllObservation;
- (void)dealloc;
- (void)startObservingNotificationForName:(id)a3 object:(id)a4 notificationCenter:(id)a5 observationHandler:(id)a6;
- (void)stopAllObservation;
- (void)stopObserving:(id)a3;
@end

@implementation AVObservationController

- (void)_stopAllObservation
{
  v27 = *MEMORY[0x1E69E9840];
  v3 = [(NSMutableDictionary *)self->_proxyObserversByTokens allValues];
  [(NSMutableDictionary *)self->_proxyObserversByTokens removeAllObjects];
  v23 = 0u;
  v24 = 0u;
  v21 = 0u;
  v22 = 0u;
  v4 = v3;
  v5 = [v4 countByEnumeratingWithState:&v21 objects:v26 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v22;
    do
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v22 != v7)
        {
          objc_enumerationMutation(v4);
        }

        [*(*(&v21 + 1) + 8 * i) stopObserving];
      }

      v6 = [v4 countByEnumeratingWithState:&v21 objects:v26 count:16];
    }

    while (v6);
  }

  v19 = 0u;
  v20 = 0u;
  v17 = 0u;
  v18 = 0u;
  v9 = [(NSMutableDictionary *)self->_notificationObservers allKeys];
  v10 = [v9 countByEnumeratingWithState:&v17 objects:v25 count:16];
  if (v10)
  {
    v11 = v10;
    v12 = *v18;
    do
    {
      for (j = 0; j != v11; ++j)
      {
        if (*v18 != v12)
        {
          objc_enumerationMutation(v9);
        }

        v14 = *(*(&v17 + 1) + 8 * j);
        v15 = [(NSMutableDictionary *)self->_notificationCenters objectForKeyedSubscript:v14];
        v16 = [(NSMutableDictionary *)self->_notificationObservers objectForKeyedSubscript:v14];
        [v15 removeObserver:v16];
      }

      v11 = [v9 countByEnumeratingWithState:&v17 objects:v25 count:16];
    }

    while (v11);
  }

  [(NSMutableDictionary *)self->_notificationObservers removeAllObjects];
  [(NSMutableDictionary *)self->_notificationCenters removeAllObjects];
}

- (void)stopAllObservation
{
  os_unfair_lock_lock(&self->_unfairLock);
  [(AVObservationController *)self _stopAllObservation];

  os_unfair_lock_unlock(&self->_unfairLock);
}

- (void)stopObserving:(id)a3
{
  if (a3)
  {
    v4 = a3;
    os_unfair_lock_lock(&self->_unfairLock);
    v5 = [(NSMutableDictionary *)self->_proxyObserversByTokens objectForKeyedSubscript:v4];
    [v5 stopObserving];

    [(NSMutableDictionary *)self->_proxyObserversByTokens removeObjectForKey:v4];

    os_unfair_lock_unlock(&self->_unfairLock);
  }
}

- (void)startObservingNotificationForName:(id)a3 object:(id)a4 notificationCenter:(id)a5 observationHandler:(id)a6
{
  v10 = a3;
  v11 = a4;
  v12 = a5;
  v13 = a6;
  os_unfair_lock_lock(&self->_unfairLock);
  v14 = [(NSMutableDictionary *)self->_notificationObservers objectForKeyedSubscript:v10];

  os_unfair_lock_unlock(&self->_unfairLock);
  if (!v14)
  {
    v15 = [v13 copy];

    if (!v12)
    {
      v12 = [MEMORY[0x1E696AD88] defaultCenter];
    }

    objc_copyWeak(&to, &self->_owner);
    objc_initWeak(&location, v11);
    v17 = MEMORY[0x1E69E9820];
    v18 = 3221225472;
    v19 = __106__AVObservationController_startObservingNotificationForName_object_notificationCenter_observationHandler___block_invoke;
    v20 = &unk_1E7207A68;
    objc_copyWeak(&v22, &to);
    objc_copyWeak(&v23, &location);
    v24 = v11 == 0;
    v13 = v15;
    v21 = v13;
    v16 = [v12 addObserverForName:v10 object:v11 queue:0 usingBlock:&v17];
    os_unfair_lock_lock(&self->_unfairLock);
    [(NSMutableDictionary *)self->_notificationObservers setObject:v16 forKeyedSubscript:v10, v17, v18, v19, v20];
    [(NSMutableDictionary *)self->_notificationCenters setObject:v12 forKeyedSubscript:v10];
    os_unfair_lock_unlock(&self->_unfairLock);

    objc_destroyWeak(&v23);
    objc_destroyWeak(&v22);
    objc_destroyWeak(&location);
    objc_destroyWeak(&to);
  }
}

void __106__AVObservationController_startObservingNotificationForName_object_notificationCenter_observationHandler___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v5 = objc_loadWeakRetained((a1 + 48));
  v6 = v5;
  if (WeakRetained && ((*(a1 + 56) & 1) != 0 || v5))
  {
    if ([MEMORY[0x1E696AF00] isMainThread])
    {
      (*(*(a1 + 32) + 16))();
    }

    else
    {
      v7 = objc_alloc(MEMORY[0x1E696AD80]);
      v8 = [v3 name];
      v9 = [v3 object];
      v10 = [v3 userInfo];
      v11 = [v7 initWithName:v8 object:v9 userInfo:v10];

      block[0] = MEMORY[0x1E69E9820];
      block[1] = 3221225472;
      block[2] = __106__AVObservationController_startObservingNotificationForName_object_notificationCenter_observationHandler___block_invoke_2;
      block[3] = &unk_1E72086D0;
      objc_copyWeak(&v18, (a1 + 48));
      v15 = WeakRetained;
      v19 = *(a1 + 56);
      v12 = *(a1 + 32);
      v16 = v11;
      v17 = v12;
      v13 = v11;
      dispatch_async(MEMORY[0x1E69E96A0], block);

      objc_destroyWeak(&v18);
    }
  }
}

uint64_t __106__AVObservationController_startObservingNotificationForName_object_notificationCenter_observationHandler___block_invoke_2(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 56));
  if (*(a1 + 32) && ((*(a1 + 64) & 1) != 0 || WeakRetained))
  {
    WeakRetained = (*(*(a1 + 48) + 16))();
  }

  return MEMORY[0x1EEE66BE0](WeakRetained);
}

- (id)startObserving:(id)a3 keyPath:(id)a4 observationHandler:(id)a5
{
  v16 = *MEMORY[0x1E69E9840];
  v15 = a4;
  v8 = MEMORY[0x1E695DEC8];
  v9 = a5;
  v10 = a4;
  v11 = a3;
  v12 = [v8 arrayWithObjects:&v15 count:1];

  v13 = [(AVObservationController *)self startObserving:v11 keyPaths:v12 observationHandler:v9, v15, v16];

  return v13;
}

- (id)startObserving:(id)a3 keyPaths:(id)a4 observationHandler:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  objc_copyWeak(&to, &self->_owner);
  v11 = [v10 copy];

  v15[0] = MEMORY[0x1E69E9820];
  v15[1] = 3221225472;
  v15[2] = __70__AVObservationController_startObserving_keyPaths_observationHandler___block_invoke;
  v15[3] = &unk_1E7207A40;
  objc_copyWeak(&v17, &to);
  v12 = v11;
  v16 = v12;
  v13 = [(AVObservationController *)self startObserving:v8 keyPaths:v9 includeInitialValue:0 includeChanges:0 observationHandler:v15];

  objc_destroyWeak(&v17);
  objc_destroyWeak(&to);

  return v13;
}

uint64_t __70__AVObservationController_startObserving_keyPaths_observationHandler___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v3 = WeakRetained;
  if (WeakRetained)
  {
    v5 = WeakRetained;
    WeakRetained = (*(*(a1 + 32) + 16))();
    v3 = v5;
  }

  return MEMORY[0x1EEE66BB8](WeakRetained, v3);
}

- (id)startObserving:(id)a3 keyPath:(id)a4 includeInitialValue:(BOOL)a5 observationHandler:(id)a6
{
  v6 = a5;
  v18 = *MEMORY[0x1E69E9840];
  v17 = a4;
  v10 = MEMORY[0x1E695DEC8];
  v11 = a6;
  v12 = a4;
  v13 = a3;
  v14 = [v10 arrayWithObjects:&v17 count:1];

  v15 = [(AVObservationController *)self startObserving:v13 keyPaths:v14 includeInitialValue:v6 observationHandler:v11, v17, v18];

  return v15;
}

- (id)startObserving:(id)a3 keyPaths:(id)a4 includeInitialValue:(BOOL)a5 includeChanges:(BOOL)a6 observationHandler:(id)a7
{
  v8 = a6;
  v9 = a5;
  v12 = a3;
  v13 = a4;
  v14 = a7;
  kdebug_trace();
  v42 = 0;
  v43 = &v42;
  v44 = 0x3032000000;
  v45 = __Block_byref_object_copy__6096;
  v46 = __Block_byref_object_dispose__6097;
  WeakRetained = objc_loadWeakRetained(&self->_owner);
  v40[0] = 0;
  v40[1] = v40;
  v40[2] = 0x3032000000;
  v40[3] = __Block_byref_object_copy__6096;
  v40[4] = __Block_byref_object_dispose__6097;
  v15 = v12;
  v16 = v15;
  v17 = 0;
  v41 = v15;
  v18 = v43[5];
  if (v18)
  {
    v19 = v15 == 0;
  }

  else
  {
    v19 = 1;
  }

  if (!v19)
  {
    v29 = v9;
    v30 = v13;
    objc_initWeak(&location, v18);
    v20 = [v14 copy];
    v21 = [AVProxyKVOObserver alloc];
    v22 = v43[5];
    v23 = objc_loadWeakRetained(&self->_owner);
    v35[0] = MEMORY[0x1E69E9820];
    v35[1] = 3221225472;
    v35[2] = __105__AVObservationController_startObserving_keyPaths_includeInitialValue_includeChanges_observationHandler___block_invoke;
    v35[3] = &unk_1E72079F0;
    objc_copyWeak(&v37, &location);
    v38 = v8;
    v24 = v20;
    v36 = v24;
    v25 = v22;
    v13 = v30;
    v26 = [(AVProxyKVOObserver *)v21 initWithObservedObject:v16 observer:v25 keyPaths:v30 retainingObservedObject:v23 != v16 includeInitialValue:v29 includeChanges:v8 changesBlock:v35];

    v31[0] = MEMORY[0x1E69E9820];
    v31[1] = 3221225472;
    v31[2] = __105__AVObservationController_startObserving_keyPaths_includeInitialValue_includeChanges_observationHandler___block_invoke_3;
    v31[3] = &unk_1E7207A18;
    v31[4] = self;
    v17 = v26;
    v32 = v17;
    v33 = &v42;
    v34 = v40;
    [(AVProxyKVOObserver *)v17 startObserving:v16 completion:v31];

    objc_destroyWeak(&v37);
    objc_destroyWeak(&location);
  }

  kdebug_trace();
  v27 = [(AVProxyKVOObserver *)v17 token];
  _Block_object_dispose(v40, 8);

  _Block_object_dispose(&v42, 8);

  return v27;
}

void __105__AVObservationController_startObserving_keyPaths_includeInitialValue_includeChanges_observationHandler___block_invoke(uint64_t a1, void *a2, void *a3, void *a4, void *a5, void *a6)
{
  v11 = a2;
  v12 = a3;
  v13 = a4;
  v14 = a5;
  v15 = a6;
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v17 = WeakRetained;
  if (v11 && WeakRetained && (!v14 || v13 != v14 || (*(a1 + 48) & 1) == 0))
  {
    v18 = [[AVKeyValueChange alloc] initWithValue:v13 oldValue:v14 keyPath:v12 observationToken:v15];
    if ([MEMORY[0x1E696AF00] isMainThread])
    {
      (*(*(a1 + 32) + 16))();
    }

    else
    {
      v19[0] = MEMORY[0x1E69E9820];
      v19[1] = 3221225472;
      v19[2] = __105__AVObservationController_startObserving_keyPaths_includeInitialValue_includeChanges_observationHandler___block_invoke_2;
      v19[3] = &unk_1E7209AD8;
      objc_copyWeak(&v23, (a1 + 40));
      v22 = *(a1 + 32);
      v20 = v11;
      v21 = v18;
      dispatch_async(MEMORY[0x1E69E96A0], v19);

      objc_destroyWeak(&v23);
    }
  }
}

void __105__AVObservationController_startObserving_keyPaths_includeInitialValue_includeChanges_observationHandler___block_invoke_3(void *a1)
{
  os_unfair_lock_lock((a1[4] + 8));
  v2 = a1[5];
  v3 = *(a1[4] + 16);
  v4 = [v2 token];
  [v3 setObject:v2 forKeyedSubscript:v4];

  os_unfair_lock_unlock((a1[4] + 8));
  v5 = *(a1[6] + 8);
  v6 = *(v5 + 40);
  *(v5 + 40) = 0;

  v7 = *(a1[7] + 8);
  v8 = *(v7 + 40);
  *(v7 + 40) = 0;
}

uint64_t __105__AVObservationController_startObserving_keyPaths_includeInitialValue_includeChanges_observationHandler___block_invoke_2(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 56));
  v3 = WeakRetained;
  if (WeakRetained)
  {
    v5 = WeakRetained;
    WeakRetained = (*(*(a1 + 48) + 16))();
    v3 = v5;
  }

  return MEMORY[0x1EEE66BB8](WeakRetained, v3);
}

- (void)dealloc
{
  v9 = *MEMORY[0x1E69E9840];
  os_unfair_lock_lock(&self->_unfairLock);
  v3 = [(NSMutableDictionary *)self->_proxyObserversByTokens count];
  if (v3 | [(NSMutableDictionary *)self->_notificationObservers count])
  {
    v4 = _AVLog();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      v5 = _AVMethodProem(self);
      *buf = 138412290;
      v8 = v5;
      _os_log_error_impl(&dword_18B49C000, v4, OS_LOG_TYPE_ERROR, "You must call [AVObservationController stopAllObservation] before destroying it, perhaps in its owner's dealloc. %@", buf, 0xCu);
    }

    [(AVObservationController *)self _stopAllObservation];
  }

  os_unfair_lock_unlock(&self->_unfairLock);
  v6.receiver = self;
  v6.super_class = AVObservationController;
  [(AVObservationController *)&v6 dealloc];
}

- (AVObservationController)initWithOwner:(id)a3
{
  v4 = a3;
  v14.receiver = self;
  v14.super_class = AVObservationController;
  v5 = [(AVObservationController *)&v14 init];
  v6 = v5;
  if (v5)
  {
    v5->_unfairLock._os_unfair_lock_opaque = 0;
    v7 = [MEMORY[0x1E695DF90] dictionary];
    proxyObserversByTokens = v6->_proxyObserversByTokens;
    v6->_proxyObserversByTokens = v7;

    v9 = [MEMORY[0x1E695DF90] dictionary];
    notificationObservers = v6->_notificationObservers;
    v6->_notificationObservers = v9;

    v11 = [MEMORY[0x1E695DF90] dictionary];
    notificationCenters = v6->_notificationCenters;
    v6->_notificationCenters = v11;

    objc_storeWeak(&v6->_owner, v4);
  }

  return v6;
}

@end