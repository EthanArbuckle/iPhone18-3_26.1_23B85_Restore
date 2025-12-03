@interface PHPhotoLibraryCloudStatusObserverRegistrar
- (BOOL)hasObservers;
- (PHPhotoLibraryCloudStatusObserverRegistrar)initWithLibraryBundle:(id)bundle;
- (void)_lock_pauseCloudStatusHandlingIfNeeded;
- (void)_lock_resumeCloudStatusHandlingIfNeeded;
- (void)addObservers:(id)observers authorizationStatus:(int64_t)status;
- (void)dealloc;
- (void)getObserversWithBlock:(id)block;
- (void)removeObserver:(id)observer;
@end

@implementation PHPhotoLibraryCloudStatusObserverRegistrar

- (void)_lock_pauseCloudStatusHandlingIfNeeded
{
  v10 = *MEMORY[0x1E69E9840];
  os_unfair_lock_assert_owner(&self->_lock);
  v3 = PLChangeHandlingGetLog();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEBUG))
  {
    v4 = [(NSHashTable *)self->_lock_cloudStatusObservers count];
    lock_isCloudStatusHandlingActive = self->_lock_isCloudStatusHandlingActive;
    v6 = 134218240;
    v7 = v4;
    v8 = 1024;
    v9 = lock_isCloudStatusHandlingActive;
    _os_log_impl(&dword_19C86F000, v3, OS_LOG_TYPE_DEBUG, "_pauseCloudStatusHandlingIfNeeded - observers: %tu isActive: %d", &v6, 0x12u);
  }

  if (self->_lock_isCloudStatusHandlingActive && ![(PHPhotoLibraryCloudStatusObserverRegistrar *)self _lock_hasCloudStatusObservers])
  {
    self->_lock_isCloudStatusHandlingActive = 0;
  }
}

- (void)_lock_resumeCloudStatusHandlingIfNeeded
{
  v16 = *MEMORY[0x1E69E9840];
  os_unfair_lock_assert_owner(&self->_lock);
  v3 = PLChangeHandlingGetLog();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEBUG))
  {
    v4 = [(NSHashTable *)self->_lock_cloudStatusObservers count];
    lock_isCloudStatusHandlingActive = self->_lock_isCloudStatusHandlingActive;
    lock_isCloudStatusHandlingAuthorized = self->_lock_isCloudStatusHandlingAuthorized;
    v10 = 134218496;
    v11 = v4;
    v12 = 1024;
    v13 = lock_isCloudStatusHandlingActive;
    v14 = 1024;
    v15 = lock_isCloudStatusHandlingAuthorized;
    _os_log_impl(&dword_19C86F000, v3, OS_LOG_TYPE_DEBUG, "_resumeCloudStatusHandlingIfNeeded - observers: %tu isActive: %d authorized: %d", &v10, 0x18u);
  }

  if (!self->_lock_isCloudStatusHandlingActive)
  {
    if ([(PHPhotoLibraryCloudStatusObserverRegistrar *)self _lock_hasCloudStatusObservers])
    {
      if (self->_lock_isCloudStatusHandlingAuthorized || (v7 = [PHPhotoLibrary checkAuthorizationStatusForAPIAccessLevel:2 suppressPrompt:1], self->_lock_isCloudStatusHandlingAuthorized = v7, v7))
      {
        self->_lock_isCloudStatusHandlingActive = 1;
        beginObservingCloudStatusBlock = [(PHPhotoLibraryCloudStatusObserverRegistrar *)self beginObservingCloudStatusBlock];
        v9 = beginObservingCloudStatusBlock;
        if (beginObservingCloudStatusBlock)
        {
          (*(beginObservingCloudStatusBlock + 16))(beginObservingCloudStatusBlock);
        }
      }
    }
  }
}

- (BOOL)hasObservers
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

uint64_t __58__PHPhotoLibraryCloudStatusObserverRegistrar_hasObservers__block_invoke(uint64_t a1)
{
  result = [*(a1 + 32) _lock_hasCloudStatusObservers];
  *(*(*(a1 + 40) + 8) + 24) = result;
  return result;
}

- (void)getObserversWithBlock:(id)block
{
  blockCopy = block;
  v4 = 0;
  v5 = &v4;
  v6 = 0x3032000000;
  v7 = __Block_byref_object_copy__48419;
  v8 = __Block_byref_object_dispose__48420;
  v9 = MEMORY[0x1E695E0F0];
  PLRunWithUnfairLock();
  blockCopy[2](blockCopy, v5[5]);
  _Block_object_dispose(&v4, 8);
}

uint64_t __68__PHPhotoLibraryCloudStatusObserverRegistrar_getObserversWithBlock___block_invoke(uint64_t a1)
{
  v2 = [*(*(a1 + 32) + 24) allObjects];
  v3 = *(*(a1 + 40) + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;

  return MEMORY[0x1EEE66BB8](v2, v4);
}

- (void)removeObserver:(id)observer
{
  observerCopy = observer;
  v3 = observerCopy;
  PLRunWithUnfairLock();
}

uint64_t __61__PHPhotoLibraryCloudStatusObserverRegistrar_removeObserver___block_invoke(uint64_t a1)
{
  [*(*(a1 + 32) + 24) removeObject:*(a1 + 40)];
  v2 = *(a1 + 32);

  return [v2 _lock_pauseCloudStatusHandlingIfNeeded];
}

- (void)addObservers:(id)observers authorizationStatus:(int64_t)status
{
  observersCopy = observers;
  v4 = observersCopy;
  PLRunWithUnfairLock();
}

uint64_t __79__PHPhotoLibraryCloudStatusObserverRegistrar_addObservers_authorizationStatus___block_invoke(uint64_t a1)
{
  v20 = *MEMORY[0x1E69E9840];
  v2 = *(a1 + 32);
  if ((*(v2 + 20) & 1) == 0)
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
        v19 = v6;
        _os_log_impl(&dword_19C86F000, v3, OS_LOG_TYPE_DEFAULT, "_addObservers:authorizationStatus: waiting for authorization (%@)", buf, 0xCu);
      }
    }

    else
    {
      *(v2 + 20) = 1;
    }
  }

  v15 = 0u;
  v16 = 0u;
  v13 = 0u;
  v14 = 0u;
  v7 = *(a1 + 40);
  v8 = [v7 countByEnumeratingWithState:&v13 objects:v17 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = *v14;
    do
    {
      v11 = 0;
      do
      {
        if (*v14 != v10)
        {
          objc_enumerationMutation(v7);
        }

        [*(*(a1 + 32) + 24) addObject:{*(*(&v13 + 1) + 8 * v11++), v13}];
      }

      while (v9 != v11);
      v9 = [v7 countByEnumeratingWithState:&v13 objects:v17 count:16];
    }

    while (v9);
  }

  return [*(a1 + 32) _lock_resumeCloudStatusHandlingIfNeeded];
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
  v4.super_class = PHPhotoLibraryCloudStatusObserverRegistrar;
  [(PHPhotoLibraryCloudStatusObserverRegistrar *)&v4 dealloc];
}

- (PHPhotoLibraryCloudStatusObserverRegistrar)initWithLibraryBundle:(id)bundle
{
  v21 = *MEMORY[0x1E69E9840];
  bundleCopy = bundle;
  v14.receiver = self;
  v14.super_class = PHPhotoLibraryCloudStatusObserverRegistrar;
  v6 = [(PHPhotoLibraryCloudStatusObserverRegistrar *)&v14 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_photoLibraryBundle, bundle);
    v7->_lock._os_unfair_lock_opaque = 0;
    *&v7->_lock_isCloudStatusHandlingAuthorized = 0;
    weakObjectsHashTable = [MEMORY[0x1E696AC70] weakObjectsHashTable];
    lock_cloudStatusObservers = v7->_lock_cloudStatusObservers;
    v7->_lock_cloudStatusObservers = weakObjectsHashTable;

    v10 = PLPhotosObjectLifecycleGetLog();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEBUG))
    {
      v11 = objc_opt_class();
      *buf = 138412802;
      v16 = v11;
      v17 = 2048;
      v18 = v7;
      v19 = 2112;
      v20 = bundleCopy;
      _os_log_impl(&dword_19C86F000, v10, OS_LOG_TYPE_DEBUG, "%@ %p initWithLibraryBundle:%@", buf, 0x20u);
    }

    v12 = v7;
  }

  return v7;
}

@end