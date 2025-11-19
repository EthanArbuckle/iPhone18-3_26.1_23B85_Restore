@interface FPProviderMonitor
+ (BOOL)isProviderIDForeground:(id)a3;
+ (id)providerIDForApplication:(id)a3 sharedContainerIdentifier:(id)a4;
- (BOOL)wakeProviderID:(id)a3 forSessionIdentifier:(id)a4;
- (FPProviderMonitor)init;
- (void)addObserver:(id)a3 forProviderID:(id)a4;
- (void)dealloc;
- (void)removeObserver:(id)a3 forProviderID:(id)a4;
@end

@implementation FPProviderMonitor

- (FPProviderMonitor)init
{
  v11.receiver = self;
  v11.super_class = FPProviderMonitor;
  v2 = [(FPProviderMonitor *)&v11 init];
  if (v2)
  {
    v3 = objc_alloc_init(MEMORY[0x1E695DF90]);
    observersByContainerID = v2->_observersByContainerID;
    v2->_observersByContainerID = v3;

    v5 = objc_alloc_init(MEMORY[0x1E695DF90]);
    notifyTokenByContainerID = v2->_notifyTokenByContainerID;
    v2->_notifyTokenByContainerID = v5;

    v7 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    v8 = dispatch_queue_create("com.apple.fileprovider.containers.monitor", v7);
    queue = v2->_queue;
    v2->_queue = v8;
  }

  return v2;
}

- (void)dealloc
{
  v4 = [MEMORY[0x1E696AAA8] currentHandler];
  [v4 handleFailureInMethod:a1 object:a2 file:@"FPProviderMonitor.m" lineNumber:103 description:@"There were observers remaining at dealloc time. Call -removeObserver:forContainerID: first."];
}

+ (id)providerIDForApplication:(id)a3 sharedContainerIdentifier:(id)a4
{
  v24 = *MEMORY[0x1E69E9840];
  v17 = [MEMORY[0x1E69635E0] applicationProxyForIdentifier:{a3, a4}];
  v18 = objc_opt_new();
  v19 = 0u;
  v20 = 0u;
  v21 = 0u;
  v22 = 0u;
  v4 = [v17 plugInKitPlugins];
  v5 = [v4 countByEnumeratingWithState:&v19 objects:v23 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v20;
    do
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v20 != v7)
        {
          objc_enumerationMutation(v4);
        }

        v9 = *(*(&v19 + 1) + 8 * i);
        v10 = [v9 protocol];
        v11 = [v10 isEqualToString:@"com.apple.fileprovider-nonui"];

        if (v11)
        {
          v12 = [v9 objectForInfoDictionaryKey:@"NSExtensionFileProviderDocumentGroup" ofClass:objc_opt_class() inScope:1];
          if ([v12 isEqualToString:v12])
          {
            [v18 addObject:v9];
          }
        }
      }

      v6 = [v4 countByEnumeratingWithState:&v19 objects:v23 count:16];
    }

    while (v6);
  }

  [v18 sortUsingComparator:&__block_literal_global_34];
  v13 = [v18 firstObject];
  v14 = [v13 bundleIdentifier];

  v15 = *MEMORY[0x1E69E9840];

  return v14;
}

uint64_t __72__FPProviderMonitor_providerIDForApplication_sharedContainerIdentifier___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v4 = a3;
  v5 = [a2 bundleIdentifier];
  v6 = [v4 bundleIdentifier];

  v7 = [v5 compare:v6];
  return v7;
}

- (void)addObserver:(id)a3 forProviderID:(id)a4
{
  v6 = a3;
  v7 = a4;
  section = __fp_create_section();
  v24 = section;
  v9 = fp_current_or_default_log();
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEBUG))
  {
    [(FPProviderMonitor *)v7 addObserver:v9 forProviderID:?];
  }

  v10 = self;
  objc_sync_enter(v10);
  out_token = 0;
  v11 = [(NSMutableDictionary *)v10->_observersByContainerID objectForKeyedSubscript:v7];
  if (!v11)
  {
    v11 = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:1];
    [(NSMutableDictionary *)v10->_observersByContainerID setObject:v11 forKeyedSubscript:v7];
  }

  [v11 addObject:v6];
  v12 = FPNotifyNameForForegroundChangeWithProviderID(v7);
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 3221225472;
  aBlock[2] = __47__FPProviderMonitor_addObserver_forProviderID___block_invoke;
  aBlock[3] = &unk_1E793CDA8;
  aBlock[4] = v10;
  v13 = v7;
  v22 = v13;
  v14 = _Block_copy(aBlock);
  notify_register_dispatch([v12 UTF8String], &out_token, v10->_queue, v14);
  v15 = [MEMORY[0x1E696AD98] numberWithInt:out_token];
  [(NSMutableDictionary *)v10->_notifyTokenByContainerID setObject:v15 forKeyedSubscript:v13];

  queue = v10->_queue;
  v18[0] = MEMORY[0x1E69E9820];
  v18[1] = 3221225472;
  v18[2] = __47__FPProviderMonitor_addObserver_forProviderID___block_invoke_79;
  v18[3] = &unk_1E793CDD0;
  v19 = v14;
  v20 = out_token;
  v17 = v14;
  dispatch_async(queue, v18);

  objc_sync_exit(v10);
  __fp_leave_section_Debug(&v24);
}

void __47__FPProviderMonitor_addObserver_forProviderID___block_invoke(uint64_t a1, int a2)
{
  v25 = *MEMORY[0x1E69E9840];
  state64 = 0;
  v4 = *(a1 + 32);
  objc_sync_enter(v4);
  v5 = *(*(a1 + 32) + 8);
  v7 = *(a1 + 40);
  v6 = (a1 + 40);
  v8 = [v5 objectForKeyedSubscript:v7];
  v9 = [v8 copy];

  objc_sync_exit(v4);
  notify_get_state(a2, &state64);
  v10 = state64;
  v11 = fp_current_or_default_log();
  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEBUG))
  {
    __47__FPProviderMonitor_addObserver_forProviderID___block_invoke_cold_1(v6, v10 == 0, v11);
  }

  v21 = 0u;
  v22 = 0u;
  v19 = 0u;
  v20 = 0u;
  v12 = v9;
  v13 = [v12 countByEnumeratingWithState:&v19 objects:v24 count:16];
  if (v13)
  {
    v14 = *v20;
    do
    {
      v15 = 0;
      do
      {
        if (*v20 != v14)
        {
          objc_enumerationMutation(v12);
        }

        v16 = *(*(&v19 + 1) + 8 * v15);
        v17 = *v6;
        if (v10)
        {
          [v16 providerDidEnterForeground:v17];
        }

        else
        {
          [v16 providerDidEnterBackground:{v17, v19}];
        }

        ++v15;
      }

      while (v13 != v15);
      v13 = [v12 countByEnumeratingWithState:&v19 objects:v24 count:16];
    }

    while (v13);
  }

  v18 = *MEMORY[0x1E69E9840];
}

- (void)removeObserver:(id)a3 forProviderID:(id)a4
{
  v29 = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = a4;
  v8 = self;
  objc_sync_enter(v8);
  v9 = [(NSMutableDictionary *)v8->_observersByContainerID objectForKeyedSubscript:v7];
  if (([v9 containsObject:v6] & 1) == 0)
  {
    observersByContainerID = v8->_observersByContainerID;
    fp_simulate_crash(@"removed non existing observer %@ for %@, existing observers were %@", v10, v11, v12, v13, v14, v15, v16, v6);
    v17 = fp_current_or_default_log();
    if (os_log_type_enabled(v17, OS_LOG_TYPE_FAULT))
    {
      v21 = v8->_observersByContainerID;
      *buf = 138412802;
      v24 = v6;
      v25 = 2112;
      v26 = v7;
      v27 = 2112;
      v28 = v21;
      _os_log_fault_impl(&dword_1AAAE1000, v17, OS_LOG_TYPE_FAULT, "[SIMCRASH] removed non existing observer %@ for %@, existing observers were %@", buf, 0x20u);
    }
  }

  [v9 removeObject:v6];
  if (![v9 count])
  {
    [(NSMutableDictionary *)v8->_observersByContainerID removeObjectForKey:v7];
    v18 = [(NSMutableDictionary *)v8->_notifyTokenByContainerID objectForKeyedSubscript:v7];
    v19 = [v18 intValue];

    notify_cancel(v19);
    [(NSMutableDictionary *)v8->_notifyTokenByContainerID removeObjectForKey:v7];
  }

  objc_sync_exit(v8);
  v20 = *MEMORY[0x1E69E9840];
}

+ (BOOL)isProviderIDForeground:(id)a3
{
  v3 = a3;
  if (isProviderIDForeground__onceToken != -1)
  {
    +[FPProviderMonitor isProviderIDForeground:];
  }

  out_token = -1;
  v4 = FPNotifyNameForForegroundChangeWithProviderID(v3);
  v5 = [isProviderIDForeground__tokensCache objectForKey:v3];
  v6 = v5;
  if (!v5 || (v7 = [v5 intValue], out_token = v7, v7 == -1))
  {
    notify_register_check([v4 UTF8String], &out_token);
    if (!notify_is_valid_token(out_token))
    {
      v10 = 0;
      goto LABEL_9;
    }

    v8 = isProviderIDForeground__tokensCache;
    v9 = [MEMORY[0x1E696AD98] numberWithInt:out_token];
    [v8 setObject:v9 forKey:v3];

    v7 = out_token;
  }

  v12 = 0;
  notify_get_state(v7, &v12);
  v10 = v12 != 0;
LABEL_9:

  return v10;
}

uint64_t __44__FPProviderMonitor_isProviderIDForeground___block_invoke()
{
  v0 = objc_opt_new();
  v1 = isProviderIDForeground__tokensCache;
  isProviderIDForeground__tokensCache = v0;

  v2 = objc_opt_new();
  v3 = isProviderIDForeground__cacheDelegate;
  isProviderIDForeground__cacheDelegate = v2;

  v4 = isProviderIDForeground__cacheDelegate;
  v5 = isProviderIDForeground__tokensCache;

  return [v5 setDelegate:v4];
}

- (BOOL)wakeProviderID:(id)a3 forSessionIdentifier:(id)a4
{
  v5 = a3;
  v6 = a4;
  v7 = +[FPItemManager defaultManager];
  v8 = [[FPWakeForURLSessionOperation alloc] initForProvider:v5 sessionIdentifier:v6];
  v12 = 0;
  v13 = &v12;
  v14 = 0x2020000000;
  v15 = 0;
  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 3221225472;
  v11[2] = __57__FPProviderMonitor_wakeProviderID_forSessionIdentifier___block_invoke;
  v11[3] = &unk_1E793B278;
  v11[4] = &v12;
  [v8 setActionCompletionBlock:v11];
  [v7 scheduleAction:v8];
  [v8 waitUntilFinished];
  v9 = *(v13 + 24);
  _Block_object_dispose(&v12, 8);

  return v9;
}

- (void)addObserver:(NSObject *)a3 forProviderID:.cold.1(uint64_t a1, uint64_t a2, NSObject *a3)
{
  *v4 = 134218242;
  *&v4[4] = a2;
  *&v4[12] = 2112;
  *&v4[14] = a1;
  OUTLINED_FUNCTION_1_0(&dword_1AAAE1000, a2, a3, "[DEBUG] ┏%llx adding observer for %@", *v4, *&v4[8], *&v4[16], *MEMORY[0x1E69E9840]);
  v3 = *MEMORY[0x1E69E9840];
}

void __47__FPProviderMonitor_addObserver_forProviderID___block_invoke_cold_1(void *a1, uint64_t a2, NSObject *a3)
{
  v3 = "foreground";
  if (a2)
  {
    v3 = "background";
  }

  *v5 = 138412546;
  *&v5[4] = *a1;
  *&v5[12] = 2080;
  *&v5[14] = v3;
  OUTLINED_FUNCTION_1_0(&dword_1AAAE1000, a2, a3, "[DEBUG] %@ is now %s", *v5, *&v5[8], *&v5[16], *MEMORY[0x1E69E9840]);
  v4 = *MEMORY[0x1E69E9840];
}

@end