@interface AVObservationController
- (AVObservationController)initWithOwner:(id)owner;
- (id)startObserving:(id)observing keyPath:(id)path includeInitialValue:(BOOL)value observationHandler:(id)handler;
- (id)startObserving:(id)observing keyPath:(id)path observationHandler:(id)handler;
- (id)startObserving:(id)observing keyPaths:(id)paths includeInitialValue:(BOOL)value includeChanges:(BOOL)changes observationHandler:(id)handler;
- (id)startObserving:(id)observing keyPaths:(id)paths observationHandler:(id)handler;
- (void)_stopAllObservation;
- (void)dealloc;
- (void)startObservingNotificationForName:(id)name object:(id)object notificationCenter:(id)center observationHandler:(id)handler;
- (void)stopAllObservation;
- (void)stopObserving:(id)observing;
@end

@implementation AVObservationController

- (void)_stopAllObservation
{
  v27 = *MEMORY[0x1E69E9840];
  allValues = [(NSMutableDictionary *)self->_proxyObserversByTokens allValues];
  [(NSMutableDictionary *)self->_proxyObserversByTokens removeAllObjects];
  v23 = 0u;
  v24 = 0u;
  v21 = 0u;
  v22 = 0u;
  v4 = allValues;
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
  allKeys = [(NSMutableDictionary *)self->_notificationObservers allKeys];
  v10 = [allKeys countByEnumeratingWithState:&v17 objects:v25 count:16];
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
          objc_enumerationMutation(allKeys);
        }

        v14 = *(*(&v17 + 1) + 8 * j);
        v15 = [(NSMutableDictionary *)self->_notificationCenters objectForKeyedSubscript:v14];
        v16 = [(NSMutableDictionary *)self->_notificationObservers objectForKeyedSubscript:v14];
        [v15 removeObserver:v16];
      }

      v11 = [allKeys countByEnumeratingWithState:&v17 objects:v25 count:16];
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

- (void)stopObserving:(id)observing
{
  if (observing)
  {
    observingCopy = observing;
    os_unfair_lock_lock(&self->_unfairLock);
    v5 = [(NSMutableDictionary *)self->_proxyObserversByTokens objectForKeyedSubscript:observingCopy];
    [v5 stopObserving];

    [(NSMutableDictionary *)self->_proxyObserversByTokens removeObjectForKey:observingCopy];

    os_unfair_lock_unlock(&self->_unfairLock);
  }
}

- (void)startObservingNotificationForName:(id)name object:(id)object notificationCenter:(id)center observationHandler:(id)handler
{
  nameCopy = name;
  objectCopy = object;
  centerCopy = center;
  handlerCopy = handler;
  os_unfair_lock_lock(&self->_unfairLock);
  v14 = [(NSMutableDictionary *)self->_notificationObservers objectForKeyedSubscript:nameCopy];

  os_unfair_lock_unlock(&self->_unfairLock);
  if (!v14)
  {
    v15 = [handlerCopy copy];

    if (!centerCopy)
    {
      centerCopy = [MEMORY[0x1E696AD88] defaultCenter];
    }

    objc_copyWeak(&to, &self->_owner);
    objc_initWeak(&location, objectCopy);
    v17 = MEMORY[0x1E69E9820];
    v18 = 3221225472;
    v19 = __106__AVObservationController_startObservingNotificationForName_object_notificationCenter_observationHandler___block_invoke;
    v20 = &unk_1E7207A68;
    objc_copyWeak(&v22, &to);
    objc_copyWeak(&v23, &location);
    v24 = objectCopy == 0;
    handlerCopy = v15;
    v21 = handlerCopy;
    v16 = [centerCopy addObserverForName:nameCopy object:objectCopy queue:0 usingBlock:&v17];
    os_unfair_lock_lock(&self->_unfairLock);
    [(NSMutableDictionary *)self->_notificationObservers setObject:v16 forKeyedSubscript:nameCopy, v17, v18, v19, v20];
    [(NSMutableDictionary *)self->_notificationCenters setObject:centerCopy forKeyedSubscript:nameCopy];
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

- (id)startObserving:(id)observing keyPath:(id)path observationHandler:(id)handler
{
  v16 = *MEMORY[0x1E69E9840];
  pathCopy = path;
  v8 = MEMORY[0x1E695DEC8];
  handlerCopy = handler;
  pathCopy2 = path;
  observingCopy = observing;
  v12 = [v8 arrayWithObjects:&pathCopy count:1];

  v13 = [(AVObservationController *)self startObserving:observingCopy keyPaths:v12 observationHandler:handlerCopy, pathCopy, v16];

  return v13;
}

- (id)startObserving:(id)observing keyPaths:(id)paths observationHandler:(id)handler
{
  observingCopy = observing;
  pathsCopy = paths;
  handlerCopy = handler;
  objc_copyWeak(&to, &self->_owner);
  v11 = [handlerCopy copy];

  v15[0] = MEMORY[0x1E69E9820];
  v15[1] = 3221225472;
  v15[2] = __70__AVObservationController_startObserving_keyPaths_observationHandler___block_invoke;
  v15[3] = &unk_1E7207A40;
  objc_copyWeak(&v17, &to);
  v12 = v11;
  v16 = v12;
  v13 = [(AVObservationController *)self startObserving:observingCopy keyPaths:pathsCopy includeInitialValue:0 includeChanges:0 observationHandler:v15];

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

- (id)startObserving:(id)observing keyPath:(id)path includeInitialValue:(BOOL)value observationHandler:(id)handler
{
  valueCopy = value;
  v18 = *MEMORY[0x1E69E9840];
  pathCopy = path;
  v10 = MEMORY[0x1E695DEC8];
  handlerCopy = handler;
  pathCopy2 = path;
  observingCopy = observing;
  v14 = [v10 arrayWithObjects:&pathCopy count:1];

  v15 = [(AVObservationController *)self startObserving:observingCopy keyPaths:v14 includeInitialValue:valueCopy observationHandler:handlerCopy, pathCopy, v18];

  return v15;
}

- (id)startObserving:(id)observing keyPaths:(id)paths includeInitialValue:(BOOL)value includeChanges:(BOOL)changes observationHandler:(id)handler
{
  changesCopy = changes;
  valueCopy = value;
  observingCopy = observing;
  pathsCopy = paths;
  handlerCopy = handler;
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
  v15 = observingCopy;
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
    v29 = valueCopy;
    v30 = pathsCopy;
    objc_initWeak(&location, v18);
    v20 = [handlerCopy copy];
    v21 = [AVProxyKVOObserver alloc];
    v22 = v43[5];
    v23 = objc_loadWeakRetained(&self->_owner);
    v35[0] = MEMORY[0x1E69E9820];
    v35[1] = 3221225472;
    v35[2] = __105__AVObservationController_startObserving_keyPaths_includeInitialValue_includeChanges_observationHandler___block_invoke;
    v35[3] = &unk_1E72079F0;
    objc_copyWeak(&v37, &location);
    v38 = changesCopy;
    v24 = v20;
    v36 = v24;
    v25 = v22;
    pathsCopy = v30;
    v26 = [(AVProxyKVOObserver *)v21 initWithObservedObject:v16 observer:v25 keyPaths:v30 retainingObservedObject:v23 != v16 includeInitialValue:v29 includeChanges:changesCopy changesBlock:v35];

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
  token = [(AVProxyKVOObserver *)v17 token];
  _Block_object_dispose(v40, 8);

  _Block_object_dispose(&v42, 8);

  return token;
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

- (AVObservationController)initWithOwner:(id)owner
{
  ownerCopy = owner;
  v14.receiver = self;
  v14.super_class = AVObservationController;
  v5 = [(AVObservationController *)&v14 init];
  v6 = v5;
  if (v5)
  {
    v5->_unfairLock._os_unfair_lock_opaque = 0;
    dictionary = [MEMORY[0x1E695DF90] dictionary];
    proxyObserversByTokens = v6->_proxyObserversByTokens;
    v6->_proxyObserversByTokens = dictionary;

    dictionary2 = [MEMORY[0x1E695DF90] dictionary];
    notificationObservers = v6->_notificationObservers;
    v6->_notificationObservers = dictionary2;

    dictionary3 = [MEMORY[0x1E695DF90] dictionary];
    notificationCenters = v6->_notificationCenters;
    v6->_notificationCenters = dictionary3;

    objc_storeWeak(&v6->_owner, ownerCopy);
  }

  return v6;
}

@end