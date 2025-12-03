@interface PHPhotoLibraryChangeObserverRegistrar
+ (BOOL)_isInternalObserver:(id)observer;
- (BOOL)_lock_hasChangeObservers;
- (BOOL)clearsOIDCacheAfterFetchResultDealloc;
- (BOOL)postsPersistentHistoryChangedNotifications;
- (PHPhotoLibraryChangeObserverRegistrar)initWithLibraryBundle:(id)bundle changeHandlingDebugger:(id)debugger uniqueObjectIDCache:(id)cache;
- (unint64_t)countOfRegisteredFetchResults;
- (void)_lock_clearOIDCache;
- (void)_lock_pauseChangeHandlingIfNeeded;
- (void)_lock_resumeChangeHandlingIfNeeded;
- (void)_throttlePendingChangesWithBlock:(id)block;
- (void)addObservers:(id)observers authorizationStatus:(int64_t)status;
- (void)dealloc;
- (void)getObserversWithBlock:(id)block;
- (void)publishChangesToObserversOnQueue:(id)queue withDebugEvent:(id)event block:(id)block;
- (void)registerFetchResult:(id)result;
- (void)removeObserver:(id)observer;
- (void)throttlePendingChangesTimerFiredWithBlock:(id)block;
- (void)unregisterFetchResult:(id)result;
@end

@implementation PHPhotoLibraryChangeObserverRegistrar

void __71__PHPhotoLibraryChangeObserverRegistrar_clearIsChangeProcessingPending__block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = *(v2 + 68);
  *(v2 + 68) = 0;
  *(*(a1 + 32) + 72) = CFAbsoluteTimeGetCurrent();
  if (v3 == 1)
  {
    v4 = *(a1 + 32);
    v5 = *(v4 + 16);
    v6 = *(v4 + 68);

    [v5 processPendingChangesStateDidChange:v6];
  }
}

- (void)throttlePendingChangesTimerFiredWithBlock:(id)block
{
  blockCopy = block;
  [(PHPhotoLibraryChangeObserverRegistrar *)self clearIsChangeProcessingPending];
  blockCopy[2]();
}

- (void)_throttlePendingChangesWithBlock:(id)block
{
  blockCopy = block;
  v10 = 0;
  v11 = &v10;
  v12 = 0x2020000000;
  v13 = 0;
  v6 = 0;
  v7 = &v6;
  v8 = 0x2020000000;
  v9 = 0;
  PLRunWithUnfairLock();
  if (v11[3])
  {
    v5 = 1;
  }

  else
  {
    [(PHChangeHandlingDebugger *)self->_changeHandlingDebugger processPendingChangesStateDidChange:1];
    v5 = *(v11 + 24);
  }

  blockCopy[2](blockCopy, v5 & 1, v7[3]);
  _Block_object_dispose(&v6, 8);
  _Block_object_dispose(&v10, 8);
}

double __74__PHPhotoLibraryChangeObserverRegistrar__throttlePendingChangesWithBlock___block_invoke(void *a1)
{
  *(*(a1[5] + 8) + 24) = *(a1[4] + 68);
  *(a1[4] + 68) = 1;
  result = *(a1[4] + 72);
  *(*(a1[6] + 8) + 24) = result;
  return result;
}

- (void)publishChangesToObserversOnQueue:(id)queue withDebugEvent:(id)event block:(id)block
{
  queueCopy = queue;
  eventCopy = event;
  blockCopy = block;
  v14[0] = MEMORY[0x1E69E9820];
  v14[1] = 3221225472;
  v14[2] = __95__PHPhotoLibraryChangeObserverRegistrar_publishChangesToObserversOnQueue_withDebugEvent_block___block_invoke;
  v14[3] = &unk_1E75A9A68;
  v14[4] = self;
  v15 = eventCopy;
  v16 = queueCopy;
  v17 = blockCopy;
  v11 = blockCopy;
  v12 = queueCopy;
  v13 = eventCopy;
  [(PHPhotoLibraryChangeObserverRegistrar *)self _throttlePendingChangesWithBlock:v14];
}

void __95__PHPhotoLibraryChangeObserverRegistrar_publishChangesToObserversOnQueue_withDebugEvent_block___block_invoke(uint64_t a1, char a2, double a3)
{
  v20 = *MEMORY[0x1E69E9840];
  if (a2)
  {
    if (qos_class_self() >= QOS_CLASS_USER_INITIATED)
    {
      dispatch_async(*(a1 + 48), &__block_literal_global_38);
    }

    [*(a1 + 40) setThrottleChangesTimestamp:a3];
    v5 = *(a1 + 40);

    [v5 end];
  }

  else
  {
    Current = CFAbsoluteTimeGetCurrent();
    objc_initWeak(&location, *(a1 + 32));
    v7 = fmax(0.3 - fmax(Current - a3, 0.0), 0.0);
    [*(a1 + 40) setWaitTimeInterval:v7];
    v8 = PLChangeHandlingGetLog();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
    {
      *buf = 134218240;
      v17 = v7;
      v18 = 2048;
      v19 = (v7 * 1000000000.0);
      _os_log_impl(&dword_19C86F000, v8, OS_LOG_TYPE_DEBUG, "Publish changes after: %lf [%llu]", buf, 0x16u);
    }

    v9 = dispatch_time(0, (v7 * 1000000000.0));
    v10 = *(a1 + 48);
    v11[0] = MEMORY[0x1E69E9820];
    v11[1] = 3221225472;
    v11[2] = __95__PHPhotoLibraryChangeObserverRegistrar_publishChangesToObserversOnQueue_withDebugEvent_block___block_invoke_33;
    v11[3] = &unk_1E75A9A40;
    objc_copyWeak(&v14, &location);
    v13 = *(a1 + 56);
    v12 = *(a1 + 40);
    dispatch_after(v9, v10, v11);

    objc_destroyWeak(&v14);
    objc_destroyWeak(&location);
  }
}

void __95__PHPhotoLibraryChangeObserverRegistrar_publishChangesToObserversOnQueue_withDebugEvent_block___block_invoke_33(uint64_t a1)
{
  v8 = *MEMORY[0x1E69E9840];
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  if (WeakRetained)
  {
    v3 = PLChangeHandlingGetLog();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_DEBUG))
    {
      v4 = _Block_copy(*(a1 + 40));
      v6 = 138412290;
      v7 = v4;
      _os_log_impl(&dword_19C86F000, v3, OS_LOG_TYPE_DEBUG, "Publish changes with block: %@", &v6, 0xCu);
    }

    [MEMORY[0x1E695DF00] timeIntervalSinceReferenceDate];
    [*(a1 + 32) setPublishTimestamp:?];
    [*(a1 + 32) setPublishThreadID:{+[PFAbstractStateCaptureEvent currentThreadID](PHChangeHandlingDebugEvent, "currentThreadID")}];
    v5 = objc_loadWeakRetained((a1 + 48));
    [v5 throttlePendingChangesTimerFiredWithBlock:*(a1 + 40)];
  }

  [*(a1 + 32) end];
}

- (BOOL)_lock_hasChangeObservers
{
  os_unfair_lock_assert_owner(&self->_lock);
  v3 = [(NSHashTable *)self->_lock_internalChangeObservers count];
  v4 = [(NSHashTable *)self->_lock_externalChangeObservers count]+ v3;
  return v4 + [(NSHashTable *)self->_lock_fetchResults count]+ self->_lock_postsPersistentHistoryChangedNotifications != 0;
}

- (void)_lock_pauseChangeHandlingIfNeeded
{
  v16 = *MEMORY[0x1E69E9840];
  os_unfair_lock_assert_owner(&self->_lock);
  v3 = PLChangeHandlingGetLog();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEBUG))
  {
    v4 = [(NSHashTable *)self->_lock_internalChangeObservers count];
    v5 = [(NSHashTable *)self->_lock_externalChangeObservers count];
    v6 = [(NSHashTable *)self->_lock_fetchResults count];
    lock_isChangeHandlingActive = self->_lock_isChangeHandlingActive;
    v8 = 134218752;
    v9 = v4;
    v10 = 2048;
    v11 = v5;
    v12 = 2048;
    v13 = v6;
    v14 = 1024;
    v15 = lock_isChangeHandlingActive;
    _os_log_impl(&dword_19C86F000, v3, OS_LOG_TYPE_DEBUG, "_pauseChangeHandlingIfNeeded - internal: %tu external: %tu fetchResults: %tu isActive: %d", &v8, 0x26u);
  }

  if (self->_lock_isChangeHandlingActive && ![(PHPhotoLibraryChangeObserverRegistrar *)self _lock_hasChangeObservers])
  {
    [(PLPhotoLibraryBundle *)self->_photoLibraryBundle endObservingChanges];
    self->_lock_isChangeHandlingActive = 0;
    [(PHChangeHandlingDebugger *)self->_changeHandlingDebugger changeHandlingActiveStateDidChange:0];
  }
}

- (void)_lock_resumeChangeHandlingIfNeeded
{
  v20 = *MEMORY[0x1E69E9840];
  os_unfair_lock_assert_owner(&self->_lock);
  v3 = PLChangeHandlingGetLog();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEBUG))
  {
    v4 = [(NSHashTable *)self->_lock_internalChangeObservers count];
    v5 = [(NSHashTable *)self->_lock_externalChangeObservers count];
    v6 = [(NSHashTable *)self->_lock_fetchResults count];
    lock_isChangeHandlingActive = self->_lock_isChangeHandlingActive;
    lock_isChangeHandlingAuthorized = self->_lock_isChangeHandlingAuthorized;
    v10 = 134219008;
    v11 = v4;
    v12 = 2048;
    v13 = v5;
    v14 = 2048;
    v15 = v6;
    v16 = 1024;
    v17 = lock_isChangeHandlingActive;
    v18 = 1024;
    v19 = lock_isChangeHandlingAuthorized;
    _os_log_impl(&dword_19C86F000, v3, OS_LOG_TYPE_DEBUG, "_resumeChangeHandlingIfNeeded - internal: %tu external: %tu fetchResults: %tu isActive: %d authorized: %d", &v10, 0x2Cu);
  }

  if (!self->_lock_isChangeHandlingActive)
  {
    if ([(PHPhotoLibraryChangeObserverRegistrar *)self _lock_hasChangeObservers])
    {
      if (self->_lock_isChangeHandlingAuthorized || (v9 = [PHPhotoLibrary checkAuthorizationStatusForAPIAccessLevel:2 suppressPrompt:1], self->_lock_isChangeHandlingAuthorized = v9, v9))
      {
        [(PLPhotoLibraryBundle *)self->_photoLibraryBundle beginObservingChanges];
        self->_lock_isChangeHandlingActive = 1;
        [(PHChangeHandlingDebugger *)self->_changeHandlingDebugger changeHandlingActiveStateDidChange:1];
      }
    }
  }
}

- (void)getObserversWithBlock:(id)block
{
  blockCopy = block;
  v16 = 0;
  v17 = &v16;
  v18 = 0x3032000000;
  v19 = __Block_byref_object_copy__43617;
  v20 = __Block_byref_object_dispose__43618;
  v21 = MEMORY[0x1E695E0F0];
  v10 = 0;
  v11 = &v10;
  v12 = 0x3032000000;
  v13 = __Block_byref_object_copy__43617;
  v14 = __Block_byref_object_dispose__43618;
  v15 = MEMORY[0x1E695E0F0];
  v4 = 0;
  v5 = &v4;
  v6 = 0x3032000000;
  v7 = __Block_byref_object_copy__43617;
  v8 = __Block_byref_object_dispose__43618;
  v9 = MEMORY[0x1E695E0F0];
  PLRunWithUnfairLock();
  blockCopy[2](blockCopy, v17[5], v11[5], v5[5]);
  _Block_object_dispose(&v4, 8);

  _Block_object_dispose(&v10, 8);
  _Block_object_dispose(&v16, 8);
}

uint64_t __63__PHPhotoLibraryChangeObserverRegistrar_getObserversWithBlock___block_invoke(void *a1)
{
  v2 = [*(a1[4] + 48) allObjects];
  v3 = *(a1[5] + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;

  v5 = [*(a1[4] + 56) allObjects];
  v6 = *(a1[6] + 8);
  v7 = *(v6 + 40);
  *(v6 + 40) = v5;

  v8 = [*(a1[4] + 40) allObjects];
  v9 = *(a1[7] + 8);
  v10 = *(v9 + 40);
  *(v9 + 40) = v8;

  return MEMORY[0x1EEE66BB8](v8, v10);
}

- (void)_lock_clearOIDCache
{
  v19 = *MEMORY[0x1E69E9840];
  os_unfair_lock_assert_owner(&self->_lock);
  allObjects = [(NSHashTable *)self->_lock_fetchResults allObjects];
  v4 = [MEMORY[0x1E696AE18] predicateWithBlock:&__block_literal_global_43620];
  v5 = [allObjects filteredArrayUsingPredicate:v4];

  v6 = [(NSHashTable *)self->_lock_fetchResults count];
  if (v6 == [v5 count])
  {
    v16 = 0u;
    v17 = 0u;
    v14 = 0u;
    v15 = 0u;
    v7 = v5;
    v8 = [v7 countByEnumeratingWithState:&v14 objects:v18 count:16];
    if (v8)
    {
      v9 = v8;
      v10 = *v15;
      do
      {
        v11 = 0;
        do
        {
          if (*v15 != v10)
          {
            objc_enumerationMutation(v7);
          }

          fetchedObjectIDs = [*(*(&v14 + 1) + 8 * v11) fetchedObjectIDs];
          v13 = [(PHUniqueObjectIDCache *)self->_uniqueObjectIDCache uniquedOIDs:fetchedObjectIDs];

          ++v11;
        }

        while (v9 != v11);
        v9 = [v7 countByEnumeratingWithState:&v14 objects:v18 count:16];
      }

      while (v9);
    }
  }
}

- (unint64_t)countOfRegisteredFetchResults
{
  v4 = 0;
  v5 = &v4;
  v6 = 0x2020000000;
  v7 = 0;
  PLRunWithUnfairLock();
  v2 = v5[3];
  _Block_object_dispose(&v4, 8);
  return v2;
}

uint64_t __70__PHPhotoLibraryChangeObserverRegistrar_countOfRegisteredFetchResults__block_invoke(uint64_t a1)
{
  result = [*(*(a1 + 32) + 40) count];
  *(*(*(a1 + 40) + 8) + 24) = result;
  return result;
}

- (void)unregisterFetchResult:(id)result
{
  if (result)
  {
    PLRunWithUnfairLock();
  }
}

uint64_t __63__PHPhotoLibraryChangeObserverRegistrar_unregisterFetchResult___block_invoke(uint64_t a1)
{
  NSHashRemove(*(*(a1 + 32) + 40), *(a1 + 40));
  v2 = *(a1 + 32);
  if (v2[39] == 1)
  {
    [v2 _lock_clearOIDCache];
    v2 = *(a1 + 32);
  }

  return [v2 _lock_pauseChangeHandlingIfNeeded];
}

- (BOOL)clearsOIDCacheAfterFetchResultDealloc
{
  v4 = 0;
  v5 = &v4;
  v6 = 0x2020000000;
  v7 = 0;
  PLRunWithUnfairLock();
  v2 = *(v5 + 24);
  _Block_object_dispose(&v4, 8);
  return v2;
}

- (void)registerFetchResult:(id)result
{
  resultCopy = result;
  v4 = resultCopy;
  if (resultCopy)
  {
    v5 = resultCopy;
    PLRunWithUnfairLock();
  }
}

uint64_t __61__PHPhotoLibraryChangeObserverRegistrar_registerFetchResult___block_invoke(uint64_t a1)
{
  [*(*(a1 + 32) + 40) addObject:*(a1 + 40)];
  v2 = *(a1 + 32);

  return [v2 _lock_resumeChangeHandlingIfNeeded];
}

- (BOOL)postsPersistentHistoryChangedNotifications
{
  v4 = 0;
  v5 = &v4;
  v6 = 0x2020000000;
  v7 = 0;
  PLRunWithUnfairLock();
  v2 = *(v5 + 24);
  _Block_object_dispose(&v4, 8);
  return v2;
}

uint64_t __87__PHPhotoLibraryChangeObserverRegistrar_setPostsPersistentHistoryChangedNotifications___block_invoke(uint64_t result)
{
  v1 = *(result + 32);
  v2 = *(result + 40);
  if (*(v1 + 38) != v2)
  {
    *(v1 + 38) = v2;
    v3 = *(result + 32);
    if (v3[38] == 1)
    {
      return [v3 _lock_resumeChangeHandlingIfNeeded];
    }

    else
    {
      return [v3 _lock_pauseChangeHandlingIfNeeded];
    }
  }

  return result;
}

- (void)removeObserver:(id)observer
{
  observerCopy = observer;
  v3 = observerCopy;
  PLRunWithUnfairLock();
}

uint64_t __56__PHPhotoLibraryChangeObserverRegistrar_removeObserver___block_invoke(uint64_t a1)
{
  v2 = [PHPhotoLibraryChangeObserverRegistrar _isInternalObserver:*(a1 + 32)];
  v3 = 56;
  if (v2)
  {
    v3 = 48;
  }

  [*(*(a1 + 40) + v3) removeObject:*(a1 + 32)];
  v4 = *(a1 + 40);

  return [v4 _lock_pauseChangeHandlingIfNeeded];
}

- (void)addObservers:(id)observers authorizationStatus:(int64_t)status
{
  observersCopy = observers;
  v4 = observersCopy;
  PLRunWithUnfairLock();
}

uint64_t __74__PHPhotoLibraryChangeObserverRegistrar_addObservers_authorizationStatus___block_invoke(uint64_t a1)
{
  v22 = *MEMORY[0x1E69E9840];
  v2 = *(a1 + 32);
  if ((*(v2 + 36) & 1) == 0)
  {
    if ((*(a1 + 48) - 3) > 1)
    {
      v3 = PLChangeHandlingGetLog();
      if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
      {
        v4 = *(a1 + 48) - 1;
        if (v4 > 3)
        {
          v5 = @"not determined";
        }

        else
        {
          v5 = off_1E75A6C70[v4];
        }

        v6 = v5;
        *buf = 138412290;
        v21 = v6;
        _os_log_impl(&dword_19C86F000, v3, OS_LOG_TYPE_DEFAULT, "_addObserver:authorizationStatus: waiting for authorization (%@)", buf, 0xCu);
      }
    }

    else
    {
      *(v2 + 36) = 1;
    }
  }

  v17 = 0u;
  v18 = 0u;
  v15 = 0u;
  v16 = 0u;
  v7 = *(a1 + 40);
  v8 = [v7 countByEnumeratingWithState:&v15 objects:v19 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = *v16;
    do
    {
      for (i = 0; i != v9; ++i)
      {
        if (*v16 != v10)
        {
          objc_enumerationMutation(v7);
        }

        v12 = *(*(&v15 + 1) + 8 * i);
        if ([PHPhotoLibraryChangeObserverRegistrar _isInternalObserver:v12, v15])
        {
          v13 = 48;
        }

        else
        {
          v13 = 56;
        }

        [*(*(a1 + 32) + v13) addObject:v12];
      }

      v9 = [v7 countByEnumeratingWithState:&v15 objects:v19 count:16];
    }

    while (v9);
  }

  return [*(a1 + 32) _lock_resumeChangeHandlingIfNeeded];
}

- (void)dealloc
{
  v9 = *MEMORY[0x1E69E9840];
  v3 = PLPhotosObjectLifecycleGetLog();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEBUG))
  {
    *buf = 138412546;
    v6 = objc_opt_class();
    v7 = 2048;
    selfCopy = self;
    _os_log_impl(&dword_19C86F000, v3, OS_LOG_TYPE_DEBUG, "%@ %p dealloc", buf, 0x16u);
  }

  v4.receiver = self;
  v4.super_class = PHPhotoLibraryChangeObserverRegistrar;
  [(PHPhotoLibraryChangeObserverRegistrar *)&v4 dealloc];
}

- (PHPhotoLibraryChangeObserverRegistrar)initWithLibraryBundle:(id)bundle changeHandlingDebugger:(id)debugger uniqueObjectIDCache:(id)cache
{
  v35 = *MEMORY[0x1E69E9840];
  bundleCopy = bundle;
  debuggerCopy = debugger;
  cacheCopy = cache;
  v24.receiver = self;
  v24.super_class = PHPhotoLibraryChangeObserverRegistrar;
  v12 = [(PHPhotoLibraryChangeObserverRegistrar *)&v24 init];
  v13 = v12;
  if (v12)
  {
    objc_storeStrong(&v12->_photoLibraryBundle, bundle);
    objc_storeStrong(&v13->_changeHandlingDebugger, debugger);
    objc_storeStrong(&v13->_uniqueObjectIDCache, cache);
    v13->_lock._os_unfair_lock_opaque = 0;
    *&v13->_lock_isChangeHandlingAuthorized = 0;
    v14 = [objc_alloc(MEMORY[0x1E696AC70]) initWithOptions:517 capacity:0];
    lock_fetchResults = v13->_lock_fetchResults;
    v13->_lock_fetchResults = v14;

    weakObjectsHashTable = [MEMORY[0x1E696AC70] weakObjectsHashTable];
    lock_internalChangeObservers = v13->_lock_internalChangeObservers;
    v13->_lock_internalChangeObservers = weakObjectsHashTable;

    weakObjectsHashTable2 = [MEMORY[0x1E696AC70] weakObjectsHashTable];
    lock_externalChangeObservers = v13->_lock_externalChangeObservers;
    v13->_lock_externalChangeObservers = weakObjectsHashTable2;

    v13->_pendingLock._os_unfair_lock_opaque = 0;
    v13->_pendingLock_isChangeProcessingPending = 0;
    [(PHChangeHandlingDebugger *)v13->_changeHandlingDebugger changeHandlingActiveStateDidChange:v13->_lock_isChangeHandlingActive];
    v20 = PLPhotosObjectLifecycleGetLog();
    if (os_log_type_enabled(v20, OS_LOG_TYPE_DEBUG))
    {
      v21 = objc_opt_class();
      *buf = 138413314;
      v26 = v21;
      v27 = 2048;
      v28 = v13;
      v29 = 2112;
      v30 = bundleCopy;
      v31 = 2112;
      v32 = debuggerCopy;
      v33 = 2112;
      v34 = cacheCopy;
      _os_log_impl(&dword_19C86F000, v20, OS_LOG_TYPE_DEBUG, "%@ %p initWithLibraryBundle:%@ changeHandlingDebugger:%@ uniqueObjectIDCache:%@", buf, 0x34u);
    }

    v22 = v13;
  }

  return v13;
}

+ (BOOL)_isInternalObserver:(id)observer
{
  observerCopy = observer;
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();

  return isKindOfClass & 1;
}

@end