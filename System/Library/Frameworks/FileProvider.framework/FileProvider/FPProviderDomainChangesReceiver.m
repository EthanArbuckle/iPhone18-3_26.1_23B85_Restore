@interface FPProviderDomainChangesReceiver
+ (BOOL)allowedToReadCacheFromDisk;
+ (id)_sharedChangesReceiverInitIfNeeded:(BOOL)a3;
+ (id)readCacheFromDisk:(BOOL)a3;
- (BOOL)ignoreUpdateNotifications;
- (NSDictionary)cachedProviderDomainsByID;
- (id)_init;
- (id)addChangesHandler:(id)a3;
- (void)_t_discardCache;
- (void)_t_forceReadCacheFromDisk;
- (void)_t_ignoreUpdateNotifications:(BOOL)a3;
- (void)_t_loadCacheOnHandlerAdding:(BOOL)a3;
- (void)callChangesHandlersWithProviderDomains:(id)a3 error:(id)a4;
- (void)providerDomainsHaveChanged:(id)a3 error:(id)a4;
- (void)removeChangesHandlerToken:(id)a3;
- (void)updateProviderDomainsWithAttemptCount:(unint64_t)a3;
@end

@implementation FPProviderDomainChangesReceiver

- (id)_init
{
  v21.receiver = self;
  v21.super_class = FPProviderDomainChangesReceiver;
  v2 = [(FPProviderDomainChangesReceiver *)&v21 init];
  if (v2)
  {
    v3 = [MEMORY[0x1E695DFA8] set];
    v4 = *(v2 + 1);
    *(v2 + 1) = v3;

    v5 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    v6 = dispatch_queue_create("com.apple.FileProvider.provider-changes-receiver.notify", v5);
    v7 = *(v2 + 3);
    *(v2 + 3) = v6;

    v8 = [@"com.apple.fileprovider.providers-changed" fp_libnotifyPerUserNotificationName];
    objc_initWeak(&location, v2);
    aBlock[0] = MEMORY[0x1E69E9820];
    aBlock[1] = 3221225472;
    aBlock[2] = __40__FPProviderDomainChangesReceiver__init__block_invoke;
    aBlock[3] = &unk_1E7938FE8;
    objc_copyWeak(&v19, &location);
    v9 = _Block_copy(aBlock);
    notify_register_dispatch([v8 UTF8String], v2 + 8, *(v2 + 3), v9);
    v10 = fp_current_or_default_log();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
    {
      *buf = 0;
      _os_log_impl(&dword_1AAAE1000, v10, OS_LOG_TYPE_INFO, "[INFO] start monitoring provider info", buf, 2u);
    }

    v11 = [[FPPacer alloc] initWithName:@"domain-changes" queue:*(v2 + 3) minFireInterval:1.0];
    v12 = *(v2 + 5);
    *(v2 + 5) = v11;

    v13 = *(v2 + 5);
    v15[0] = MEMORY[0x1E69E9820];
    v15[1] = 3221225472;
    v15[2] = __40__FPProviderDomainChangesReceiver__init__block_invoke_30;
    v15[3] = &unk_1E7939010;
    objc_copyWeak(&v16, &location);
    [v13 setEventBlock:v15];
    [*(v2 + 5) resume];
    objc_destroyWeak(&v16);

    objc_destroyWeak(&v19);
    objc_destroyWeak(&location);
  }

  return v2;
}

+ (BOOL)allowedToReadCacheFromDisk
{
  if (allowedToReadCacheFromDisk_onceToken != -1)
  {
    +[FPProviderDomainChangesReceiver allowedToReadCacheFromDisk];
  }

  return allowedToReadCacheFromDisk_allowed;
}

void __61__FPProviderDomainChangesReceiver_allowedToReadCacheFromDisk__block_invoke()
{
  v0 = SecTaskCreateFromSelf(0);
  if (v0)
  {
    v1 = v0;
    error = 0;
    v2 = SecTaskCopyValueForEntitlement(v0, @"com.apple.private.MobileContainerManager.lookup", &error);
    v3 = v2;
    if (v2)
    {
      v4 = CFGetTypeID(v2);
      if (v4 == CFDictionaryGetTypeID())
      {
        v5 = [v3 objectForKey:@"appGroup"];
        if ([v5 containsObject:@"group.com.apple.FileProvider.DomainCaching"])
        {
          allowedToReadCacheFromDisk_allowed = 1;
        }
      }
    }

    v6 = allowedToReadCacheFromDisk_allowed;
    v7 = fp_current_or_default_log();
    v8 = v7;
    if (v6 == 1)
    {
      if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
      {
        __61__FPProviderDomainChangesReceiver_allowedToReadCacheFromDisk__block_invoke_cold_1(v8, v9, v10, v11, v12, v13, v14, v15);
      }
    }

    else if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      *v16 = 0;
      _os_log_impl(&dword_1AAAE1000, v8, OS_LOG_TYPE_DEFAULT, "[WARNING] Process is not allowed to read domains cache", v16, 2u);
    }

    if (error)
    {
      CFRelease(error);
    }

    if (v3)
    {
      CFRelease(v3);
    }

    CFRelease(v1);
  }
}

- (NSDictionary)cachedProviderDomainsByID
{
  v2 = self;
  objc_sync_enter(v2);
  v3 = [(NSDictionary *)v2->_providerDomainsByID copy];
  objc_sync_exit(v2);

  return v3;
}

+ (id)_sharedChangesReceiverInitIfNeeded:(BOOL)a3
{
  if (a3 && _sharedChangesReceiverInitIfNeeded__onceToken != -1)
  {
    +[FPProviderDomainChangesReceiver _sharedChangesReceiverInitIfNeeded:];
  }

  v4 = _sharedChangesReceiverInitIfNeeded__sharedChangesReceiver;

  return v4;
}

uint64_t __70__FPProviderDomainChangesReceiver__sharedChangesReceiverInitIfNeeded___block_invoke()
{
  _sharedChangesReceiverInitIfNeeded__sharedChangesReceiver = [[FPProviderDomainChangesReceiver alloc] _init];

  return MEMORY[0x1EEE66BB8]();
}

void __40__FPProviderDomainChangesReceiver__init__block_invoke(uint64_t a1)
{
  v2 = fp_current_or_default_log();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_INFO))
  {
    *v4 = 0;
    _os_log_impl(&dword_1AAAE1000, v2, OS_LOG_TYPE_INFO, "[INFO] received notification that provider info has changed; scheduling a fetch", v4, 2u);
  }

  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained signalChange];
}

void __40__FPProviderDomainChangesReceiver__init__block_invoke_30(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v3 = WeakRetained;
  if (WeakRetained && ([WeakRetained ignoreUpdateNotifications] & 1) == 0)
  {
    v4 = fp_current_or_default_log();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
    {
      *v6 = 0;
      _os_log_impl(&dword_1AAAE1000, v4, OS_LOG_TYPE_INFO, "[INFO] received notification that provider info has changed; querying for new info", v6, 2u);
    }

    v5 = objc_loadWeakRetained((a1 + 32));
    [v5 updateProviderDomainsWithAttemptCount:3];
  }
}

+ (id)readCacheFromDisk:(BOOL)a3
{
  if (a3 || [a1 allowedToReadCacheFromDisk])
  {
    v16 = -1;
    v3 = FPGetSharedDomainCachingPath(&v16);
    if (v3)
    {
      v15 = 0;
      v4 = [MEMORY[0x1E695DEF0] dataWithContentsOfFile:v3 options:1 error:&v15];
      v5 = v15;
      if (v4)
      {
        v6 = MEMORY[0x1E695DFD8];
        v7 = objc_opt_class();
        v8 = objc_opt_class();
        v9 = [v6 setWithObjects:{v7, v8, objc_opt_class(), 0}];
        v14 = v5;
        v10 = [MEMORY[0x1E696ACD0] unarchivedObjectOfClasses:v9 fromData:v4 error:&v14];
        v11 = v14;

        if (!v10)
        {
          v12 = fp_current_or_default_log();
          if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
          {
            [FPProviderDomainChangesReceiver readCacheFromDisk:v11];
          }
        }
      }

      else
      {
        v9 = fp_current_or_default_log();
        if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
        {
          [FPProviderDomainChangesReceiver readCacheFromDisk:v5];
        }

        v10 = 0;
        v11 = v5;
      }

      if (v16 != -1)
      {
        sandbox_extension_release();
      }
    }

    else
    {
      v10 = 0;
    }
  }

  else
  {
    v10 = 0;
  }

  return v10;
}

- (id)addChangesHandler:(id)a3
{
  v4 = a3;
  v5 = fp_current_or_default_log();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
  {
    [(FPProviderDomainChangesReceiver *)v5 addChangesHandler:v6, v7, v8, v9, v10, v11, v12];
  }

  v13 = [_FPProviderDomainChangesHandlerWrapper wrapperWithHandler:v4];
  v14 = self;
  objc_sync_enter(v14);
  [(NSMutableSet *)v14->_changesHandlers addObject:v13];
  providerDomainsByID = v14->_providerDomainsByID;
  if (providerDomainsByID)
  {
    v16 = [(NSDictionary *)providerDomainsByID copy];
  }

  else
  {
    v16 = 0;
  }

  objc_sync_exit(v14);

  if (v16)
  {
    [v13 callHandlerWithProvidersByID:v16 error:0];
  }

  else
  {
    if (!v14->_dontLoadCacheFromDisk)
    {
      v17 = [FPProviderDomainChangesReceiver readCacheFromDisk:0];
      if (v17)
      {
        v18 = v14;
        objc_sync_enter(v18);
        if (!v14->_providerDomainsByID)
        {
          objc_storeStrong(&v14->_providerDomainsByID, v17);
        }

        objc_sync_exit(v18);
      }
    }

    if ([(FPPacer *)v14->_pacer isSuspended])
    {
      [(FPProviderDomainChangesReceiver *)v14 signalChange];
    }

    else
    {
      [(FPProviderDomainChangesReceiver *)v14 updateProviderDomainsWithAttemptCount:3];
    }
  }

  return v13;
}

- (void)removeChangesHandlerToken:(id)a3
{
  v4 = a3;
  v5 = fp_current_or_default_log();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
  {
    [(FPProviderDomainChangesReceiver *)v5 removeChangesHandlerToken:v6, v7, v8, v9, v10, v11, v12];
  }

  v13 = v4;
  objc_sync_enter(v13);
  [v13 setUnregistered:1];
  objc_sync_exit(v13);

  v14 = self;
  objc_sync_enter(v14);
  [(NSMutableSet *)v14->_changesHandlers removeObject:v13];
  objc_sync_exit(v14);
}

- (void)_t_discardCache
{
  obj = self;
  objc_sync_enter(obj);
  providerDomainsByID = obj->_providerDomainsByID;
  obj->_providerDomainsByID = 0;

  objc_sync_exit(obj);
}

- (void)_t_forceReadCacheFromDisk
{
  v3 = [FPProviderDomainChangesReceiver readCacheFromDisk:0];
  if (v3)
  {
    obj = v3;
    if ([v3 count])
    {
      v4 = self;
      objc_sync_enter(v4);
      objc_storeStrong(&v4->_providerDomainsByID, obj);
      objc_sync_exit(v4);
    }
  }

  MEMORY[0x1EEE66BB8]();
}

- (void)_t_loadCacheOnHandlerAdding:(BOOL)a3
{
  obj = self;
  objc_sync_enter(obj);
  obj->_dontLoadCacheFromDisk = !a3;
  objc_sync_exit(obj);
}

- (void)_t_ignoreUpdateNotifications:(BOOL)a3
{
  obj = self;
  objc_sync_enter(obj);
  obj->_ignoreUpdateNotifications = a3;
  objc_sync_exit(obj);
}

- (BOOL)ignoreUpdateNotifications
{
  v2 = self;
  objc_sync_enter(v2);
  ignoreUpdateNotifications = v2->_ignoreUpdateNotifications;
  objc_sync_exit(v2);

  return ignoreUpdateNotifications;
}

- (void)updateProviderDomainsWithAttemptCount:(unint64_t)a3
{
  [(FPPacer *)self->_pacer suspend];
  v5 = +[FPDaemonConnection sharedConnectionProxy];
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __73__FPProviderDomainChangesReceiver_updateProviderDomainsWithAttemptCount___block_invoke;
  v6[3] = &unk_1E7939060;
  v6[4] = self;
  v6[5] = a3;
  [v5 providerDomainsCompletionHandler:v6];
}

void __73__FPProviderDomainChangesReceiver_updateProviderDomainsWithAttemptCount___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  if (!v6)
  {
    v8 = fp_current_or_default_log();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
    {
      __73__FPProviderDomainChangesReceiver_updateProviderDomainsWithAttemptCount___block_invoke_cold_3(v5, v8);
    }

    goto LABEL_10;
  }

  v7 = *(a1 + 40);
  v8 = fp_current_or_default_log();
  v9 = os_log_type_enabled(v8, OS_LOG_TYPE_ERROR);
  if (!v7)
  {
    if (v9)
    {
      __73__FPProviderDomainChangesReceiver_updateProviderDomainsWithAttemptCount___block_invoke_cold_2(v6);
    }

LABEL_10:

    [*(a1 + 32) providerDomainsHaveChanged:v5 error:v6];
    [*(*(a1 + 32) + 40) resume];
    goto LABEL_11;
  }

  if (v9)
  {
    __73__FPProviderDomainChangesReceiver_updateProviderDomainsWithAttemptCount___block_invoke_cold_1(v6, (a1 + 40));
  }

  v10 = *(a1 + 32);
  v11 = *(v10 + 24);
  v13[0] = MEMORY[0x1E69E9820];
  v13[1] = 3221225472;
  v13[2] = __73__FPProviderDomainChangesReceiver_updateProviderDomainsWithAttemptCount___block_invoke_50;
  v13[3] = &unk_1E7939038;
  v12 = *(a1 + 40);
  v13[4] = v10;
  v13[5] = v12;
  dispatch_async(v11, v13);
LABEL_11:
}

uint64_t __73__FPProviderDomainChangesReceiver_updateProviderDomainsWithAttemptCount___block_invoke_50(uint64_t a1)
{
  [*(a1 + 32) updateProviderDomainsWithAttemptCount:*(a1 + 40) - 1];
  v2 = *(*(a1 + 32) + 40);

  return [v2 resume];
}

- (void)callChangesHandlersWithProviderDomains:(id)a3 error:(id)a4
{
  v20 = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = a4;
  v8 = self;
  objc_sync_enter(v8);
  v9 = [(NSMutableSet *)v8->_changesHandlers copy];
  objc_sync_exit(v8);

  v17 = 0u;
  v18 = 0u;
  v15 = 0u;
  v16 = 0u;
  v10 = v9;
  v11 = [v10 countByEnumeratingWithState:&v15 objects:v19 count:16];
  if (v11)
  {
    v12 = *v16;
    do
    {
      v13 = 0;
      do
      {
        if (*v16 != v12)
        {
          objc_enumerationMutation(v10);
        }

        [*(*(&v15 + 1) + 8 * v13++) callHandlerWithProvidersByID:v6 error:{v7, v15}];
      }

      while (v11 != v13);
      v11 = [v10 countByEnumeratingWithState:&v15 objects:v19 count:16];
    }

    while (v11);
  }

  v14 = *MEMORY[0x1E69E9840];
}

- (void)providerDomainsHaveChanged:(id)a3 error:(id)a4
{
  v10 = a3;
  v6 = a4;
  if (!v6)
  {
    v7 = self;
    objc_sync_enter(v7);
    v8 = [v10 copy];
    providerDomainsByID = v7->_providerDomainsByID;
    v7->_providerDomainsByID = v8;

    objc_sync_exit(v7);
  }

  [(FPProviderDomainChangesReceiver *)self callChangesHandlersWithProviderDomains:v10 error:v6];
}

+ (void)readCacheFromDisk:(void *)a1 .cold.1(void *a1)
{
  v10 = *MEMORY[0x1E69E9840];
  v1 = [a1 fp_prettyDescription];
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_0(&dword_1AAAE1000, v2, v3, "[ERROR] Failed unarchiving domains cache: %{public}@", v4, v5, v6, v7, v9);

  v8 = *MEMORY[0x1E69E9840];
}

+ (void)readCacheFromDisk:(void *)a1 .cold.2(void *a1)
{
  v10 = *MEMORY[0x1E69E9840];
  v1 = [a1 fp_prettyDescription];
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_0(&dword_1AAAE1000, v2, v3, "[ERROR] Failed reading domains cache: %{public}@", v4, v5, v6, v7, v9);

  v8 = *MEMORY[0x1E69E9840];
}

void __73__FPProviderDomainChangesReceiver_updateProviderDomainsWithAttemptCount___block_invoke_cold_1(uint64_t a1, uint64_t *a2)
{
  v9 = *MEMORY[0x1E69E9840];
  v2 = *a2;
  OUTLINED_FUNCTION_2();
  v7 = 2048;
  v8 = v3;
  _os_log_error_impl(&dword_1AAAE1000, v4, OS_LOG_TYPE_ERROR, "[ERROR] received an error when listing providers, attempting again: %@ (count: %ld)", v6, 0x16u);
  v5 = *MEMORY[0x1E69E9840];
}

void __73__FPProviderDomainChangesReceiver_updateProviderDomainsWithAttemptCount___block_invoke_cold_2(void *a1)
{
  v10 = *MEMORY[0x1E69E9840];
  v1 = [a1 fp_prettyDescription];
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_0(&dword_1AAAE1000, v2, v3, "[ERROR] can't get the list of providers: %@", v4, v5, v6, v7, v9);

  v8 = *MEMORY[0x1E69E9840];
}

void __73__FPProviderDomainChangesReceiver_updateProviderDomainsWithAttemptCount___block_invoke_cold_3(void *a1, NSObject *a2)
{
  v11 = *MEMORY[0x1E69E9840];
  v4 = [a1 count];
  v5 = [a1 allValues];
  v7 = 134218242;
  v8 = v4;
  v9 = 2112;
  v10 = v5;
  _os_log_debug_impl(&dword_1AAAE1000, a2, OS_LOG_TYPE_DEBUG, "[DEBUG] received %lu updated providers: %@", &v7, 0x16u);

  v6 = *MEMORY[0x1E69E9840];
}

@end