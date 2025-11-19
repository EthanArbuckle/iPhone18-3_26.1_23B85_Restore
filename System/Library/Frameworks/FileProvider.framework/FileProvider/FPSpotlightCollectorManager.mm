@interface FPSpotlightCollectorManager
+ (FPSpotlightCollectorManager)sharedInstance;
+ (id)_mountPointsFromProviderDomains:(id)a3;
- (FPSpotlightCollectorManager)init;
- (NSSet)effectiveCurrentMountPoints;
- (id)_recursiveDescription;
- (void)_observeFileProviderDomains;
- (void)collectorDidFinish:(id)a3;
- (void)dealloc;
- (void)disableMountPointQueries;
- (void)enableMountPointQueries;
- (void)registerDataSource:(id)a3;
- (void)resumeCollectors;
- (void)suspendCollectors;
- (void)unregisterDataSource:(id)a3;
@end

@implementation FPSpotlightCollectorManager

uint64_t __45__FPSpotlightCollectorManager_sharedInstance__block_invoke(uint64_t a1)
{
  v1 = *(a1 + 32);
  sharedInstance_sharedInstance = objc_opt_new();

  return MEMORY[0x1EEE66BB8]();
}

+ (FPSpotlightCollectorManager)sharedInstance
{
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __45__FPSpotlightCollectorManager_sharedInstance__block_invoke;
  block[3] = &__block_descriptor_40_e5_v8__0l;
  block[4] = a1;
  if (sharedInstance_once_1 != -1)
  {
    dispatch_once(&sharedInstance_once_1, block);
  }

  v2 = sharedInstance_sharedInstance;

  return v2;
}

- (FPSpotlightCollectorManager)init
{
  v8.receiver = self;
  v8.super_class = FPSpotlightCollectorManager;
  v2 = [(FPSpotlightCollectorManager *)&v8 init];
  if (v2)
  {
    v3 = objc_opt_new();
    collectorByDescriptor = v2->_collectorByDescriptor;
    v2->_collectorByDescriptor = v3;

    v5 = [MEMORY[0x1E695DFD8] setWithObject:@"FPQueryCollectionDefaultMountPointIdentifier"];
    currentMountPoints = v2->_currentMountPoints;
    v2->_currentMountPoints = v5;

    v2->_areMountQueriesEnabled = 1;
    [(FPSpotlightCollectorManager *)v2 _observeFileProviderDomains];
  }

  return v2;
}

void __58__FPSpotlightCollectorManager__observeFileProviderDomains__block_invoke(uint64_t a1, void *a2)
{
  v3 = [a2 allValues];
  v4 = [FPSpotlightCollectorManager _mountPointsFromProviderDomains:v3];
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained setCurrentMountPoints:v4];

  v6 = fp_current_or_default_log();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEBUG))
  {
    __58__FPSpotlightCollectorManager__observeFileProviderDomains__block_invoke_cold_1((a1 + 32), v6);
  }

  v7 = dispatch_time(0, 2000000000);
  v8 = dispatch_get_global_queue(0, 0);
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __58__FPSpotlightCollectorManager__observeFileProviderDomains__block_invoke_12;
  block[3] = &unk_1E7939010;
  objc_copyWeak(&v10, (a1 + 32));
  dispatch_after(v7, v8, block);

  objc_destroyWeak(&v10);
}

- (void)_observeFileProviderDomains
{
  v3 = [(FPSpotlightCollectorManager *)self providerDomainChangesToken];

  if (!v3)
  {
    objc_initWeak(&location, self);
    v5 = MEMORY[0x1E69E9820];
    v6 = 3221225472;
    v7 = __58__FPSpotlightCollectorManager__observeFileProviderDomains__block_invoke;
    v8 = &unk_1E793DB50;
    objc_copyWeak(&v9, &location);
    v4 = [FPProviderDomain beginMonitoringProviderDomainChangesWithHandler:&v5];
    [(FPSpotlightCollectorManager *)self setProviderDomainChangesToken:v4, v5, v6, v7, v8];

    objc_destroyWeak(&v9);
    objc_destroyWeak(&location);
  }
}

- (void)enableMountPointQueries
{
  v17 = *MEMORY[0x1E69E9840];
  v3 = fp_current_or_default_log();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEBUG))
  {
    [(FPSpotlightCollectorManager *)v3 enableMountPointQueries];
  }

  if (![(FPSpotlightCollectorManager *)self areMountQueriesEnabled])
  {
    [(FPSpotlightCollectorManager *)self setAreMountQueriesEnabled:1];
    v14 = 0u;
    v15 = 0u;
    v12 = 0u;
    v13 = 0u;
    v4 = [(FPSpotlightCollectorManager *)self collectors];
    v5 = [v4 countByEnumeratingWithState:&v12 objects:v16 count:16];
    if (v5)
    {
      v6 = v5;
      v7 = *v13;
      do
      {
        v8 = 0;
        do
        {
          if (*v13 != v7)
          {
            objc_enumerationMutation(v4);
          }

          v9 = *(*(&v12 + 1) + 8 * v8);
          v10 = [(FPSpotlightCollectorManager *)self effectiveCurrentMountPoints];
          [v9 mountPointsDidChange:v10];

          ++v8;
        }

        while (v6 != v8);
        v6 = [v4 countByEnumeratingWithState:&v12 objects:v16 count:16];
      }

      while (v6);
    }
  }

  v11 = *MEMORY[0x1E69E9840];
}

- (NSSet)effectiveCurrentMountPoints
{
  if ([(FPSpotlightCollectorManager *)self areMountQueriesEnabled])
  {
    v3 = [(FPSpotlightCollectorManager *)self currentMountPoints];
    v4 = [v3 copy];
  }

  else
  {
    v4 = [MEMORY[0x1E695DFD8] setWithObject:@"FPQueryCollectionDefaultMountPointIdentifier"];
  }

  return v4;
}

- (void)dealloc
{
  v3 = [(FPSpotlightCollectorManager *)self providerDomainChangesToken];

  if (v3)
  {
    v4 = [(FPSpotlightCollectorManager *)self providerDomainChangesToken];
    [FPProviderDomain endMonitoringProviderDomainChanges:v4];

    [(FPSpotlightCollectorManager *)self setProviderDomainChangesToken:0];
  }

  v5.receiver = self;
  v5.super_class = FPSpotlightCollectorManager;
  [(FPSpotlightCollectorManager *)&v5 dealloc];
}

- (void)registerDataSource:(id)a3
{
  v4 = a3;
  v5 = [v4 queryDescriptor];
  v6 = self;
  objc_sync_enter(v6);
  v7 = [(NSMutableDictionary *)v6->_collectorByDescriptor objectForKeyedSubscript:v5];
  if (!v7)
  {
    v7 = [[FPSpotlightCollector alloc] initWithDescriptor:v5];
    [(FPSpotlightCollector *)v7 setDelegate:v6];
    [(NSMutableDictionary *)v6->_collectorByDescriptor setObject:v7 forKeyedSubscript:v5];
  }

  [(FPSpotlightCollector *)v7 addObserver:v4];
  v8 = fp_current_or_default_log();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
  {
    [FPSpotlightCollectorManager registerDataSource:];
  }

  objc_sync_exit(v6);
}

- (void)unregisterDataSource:(id)a3
{
  v5 = a3;
  v6 = [v5 queryDescriptor];
  v7 = self;
  objc_sync_enter(v7);
  v8 = [(NSMutableDictionary *)v7->_collectorByDescriptor objectForKeyedSubscript:v6];
  if (!v8)
  {
    v9 = [MEMORY[0x1E696AAA8] currentHandler];
    [v9 handleFailureInMethod:a2 object:v7 file:@"FPSpotlightCollectorManager.m" lineNumber:106 description:@"Data source was unregistered but not previously registered"];
  }

  [v8 removeObserver:v5];
  v10 = fp_current_or_default_log();
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEBUG))
  {
    [FPSpotlightCollectorManager unregisterDataSource:];
  }

  objc_sync_exit(v7);
}

- (void)suspendCollectors
{
  v19 = *MEMORY[0x1E69E9840];
  v2 = self;
  objc_sync_enter(v2);
  [(FPSpotlightCollectorManager *)v2 collectors];
  v14 = 0u;
  v15 = 0u;
  v12 = 0u;
  v3 = v13 = 0u;
  v4 = [v3 countByEnumeratingWithState:&v12 objects:v18 count:16];
  if (v4)
  {
    v6 = *v13;
    *&v5 = 138412290;
    v11 = v5;
    do
    {
      for (i = 0; i != v4; ++i)
      {
        if (*v13 != v6)
        {
          objc_enumerationMutation(v3);
        }

        v8 = *(*(&v12 + 1) + 8 * i);
        [v8 suspend];
        v9 = fp_current_or_default_log();
        if (os_log_type_enabled(v9, OS_LOG_TYPE_DEBUG))
        {
          *buf = v11;
          v17 = v8;
          _os_log_debug_impl(&dword_1AAAE1000, v9, OS_LOG_TYPE_DEBUG, "[DEBUG] SpotlightCollectorManager: Did suspend collector %@", buf, 0xCu);
        }
      }

      v4 = [v3 countByEnumeratingWithState:&v12 objects:v18 count:16];
    }

    while (v4);
  }

  objc_sync_exit(v2);
  v10 = *MEMORY[0x1E69E9840];
}

- (void)resumeCollectors
{
  v19 = *MEMORY[0x1E69E9840];
  v2 = self;
  objc_sync_enter(v2);
  [(FPSpotlightCollectorManager *)v2 collectors];
  v14 = 0u;
  v15 = 0u;
  v12 = 0u;
  v3 = v13 = 0u;
  v4 = [v3 countByEnumeratingWithState:&v12 objects:v18 count:16];
  if (v4)
  {
    v6 = *v13;
    *&v5 = 138412290;
    v11 = v5;
    do
    {
      for (i = 0; i != v4; ++i)
      {
        if (*v13 != v6)
        {
          objc_enumerationMutation(v3);
        }

        v8 = *(*(&v12 + 1) + 8 * i);
        [v8 resume];
        v9 = fp_current_or_default_log();
        if (os_log_type_enabled(v9, OS_LOG_TYPE_DEBUG))
        {
          *buf = v11;
          v17 = v8;
          _os_log_debug_impl(&dword_1AAAE1000, v9, OS_LOG_TYPE_DEBUG, "[DEBUG] SpotlightCollectorManager: Did resume collector %@", buf, 0xCu);
        }
      }

      v4 = [v3 countByEnumeratingWithState:&v12 objects:v18 count:16];
    }

    while (v4);
  }

  objc_sync_exit(v2);
  v10 = *MEMORY[0x1E69E9840];
}

- (void)disableMountPointQueries
{
  v17 = *MEMORY[0x1E69E9840];
  v3 = fp_current_or_default_log();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEBUG))
  {
    [(FPSpotlightCollectorManager *)v3 disableMountPointQueries];
  }

  if ([(FPSpotlightCollectorManager *)self areMountQueriesEnabled])
  {
    [(FPSpotlightCollectorManager *)self setAreMountQueriesEnabled:0];
    v14 = 0u;
    v15 = 0u;
    v12 = 0u;
    v13 = 0u;
    v4 = [(FPSpotlightCollectorManager *)self collectors];
    v5 = [v4 countByEnumeratingWithState:&v12 objects:v16 count:16];
    if (v5)
    {
      v6 = v5;
      v7 = *v13;
      do
      {
        v8 = 0;
        do
        {
          if (*v13 != v7)
          {
            objc_enumerationMutation(v4);
          }

          v9 = *(*(&v12 + 1) + 8 * v8);
          v10 = [(FPSpotlightCollectorManager *)self effectiveCurrentMountPoints];
          [v9 mountPointsDidChange:v10];

          ++v8;
        }

        while (v6 != v8);
        v6 = [v4 countByEnumeratingWithState:&v12 objects:v16 count:16];
      }

      while (v6);
    }
  }

  v11 = *MEMORY[0x1E69E9840];
}

- (void)collectorDidFinish:(id)a3
{
  v4 = a3;
  v5 = self;
  objc_sync_enter(v5);
  v6 = [v4 queryDescriptor];
  [(NSMutableDictionary *)v5->_collectorByDescriptor removeObjectForKey:v6];
  v7 = fp_current_or_default_log();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
  {
    [FPSpotlightCollectorManager collectorDidFinish:];
  }

  objc_sync_exit(v5);
}

void __58__FPSpotlightCollectorManager__observeFileProviderDomains__block_invoke_12(uint64_t a1)
{
  v17 = *MEMORY[0x1E69E9840];
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v3 = [WeakRetained collectors];

  v4 = [v3 countByEnumeratingWithState:&v12 objects:v16 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v13;
    do
    {
      v7 = 0;
      do
      {
        if (*v13 != v6)
        {
          objc_enumerationMutation(v3);
        }

        v8 = *(*(&v12 + 1) + 8 * v7);
        v9 = objc_loadWeakRetained((a1 + 32));
        v10 = [v9 effectiveCurrentMountPoints];
        [v8 mountPointsDidChange:v10];

        ++v7;
      }

      while (v5 != v7);
      v5 = [v3 countByEnumeratingWithState:&v12 objects:v16 count:16];
    }

    while (v5);
  }

  v11 = *MEMORY[0x1E69E9840];
}

+ (id)_mountPointsFromProviderDomains:(id)a3
{
  v9[1] = *MEMORY[0x1E69E9840];
  v3 = [a3 fp_map:&__block_literal_global_50];
  v9[0] = @"FPQueryCollectionDefaultMountPointIdentifier";
  v4 = [MEMORY[0x1E695DEC8] arrayWithObjects:v9 count:1];
  v5 = [v4 arrayByAddingObjectsFromArray:v3];

  v6 = [MEMORY[0x1E695DFD8] setWithArray:v5];

  v7 = *MEMORY[0x1E69E9840];

  return v6;
}

- (id)_recursiveDescription
{
  v43 = *MEMORY[0x1E69E9840];
  v3 = objc_opt_new();
  v4 = MEMORY[0x1E696AEC0];
  v5 = [(FPSpotlightCollectorManager *)self collectors];
  v6 = [v4 stringWithFormat:@"Collector Manager: %@ (%ld collectors)\n", self, objc_msgSend(v5, "count")];
  [v3 appendString:v6];

  v7 = 0x1E696A000uLL;
  v39 = 0u;
  v40 = 0u;
  v37 = 0u;
  v38 = 0u;
  obj = [(FPSpotlightCollectorManager *)self collectors];
  v31 = [obj countByEnumeratingWithState:&v37 objects:v42 count:16];
  if (v31)
  {
    v30 = *v38;
    do
    {
      v8 = 0;
      do
      {
        if (*v38 != v30)
        {
          objc_enumerationMutation(obj);
        }

        v32 = v8;
        v9 = *(*(&v37 + 1) + 8 * v8);
        v10 = [v9 allObservers];
        v11 = [*(v7 + 3776) stringWithFormat:@"\t\\ Collector: %@ (%ld observers)\n", v9, objc_msgSend(v10, "count")];
        [v3 appendString:v11];

        v35 = 0u;
        v36 = 0u;
        v33 = 0u;
        v34 = 0u;
        v12 = v10;
        v13 = [v12 countByEnumeratingWithState:&v33 objects:v41 count:16];
        if (v13)
        {
          v14 = v13;
          v15 = *v34;
          do
          {
            for (i = 0; i != v14; ++i)
            {
              if (*v34 != v15)
              {
                objc_enumerationMutation(v12);
              }

              v17 = *(*(&v33 + 1) + 8 * i);
              objc_opt_class();
              if (objc_opt_isKindOfClass())
              {
                v18 = v17;
                v19 = [*(v7 + 3776) stringWithFormat:@"\t\t\\ Observer %@\n", v18];
                [v3 appendString:v19];

                v20 = [v18 delegate];
                objc_opt_class();
                isKindOfClass = objc_opt_isKindOfClass();

                if (isKindOfClass)
                {
                  v22 = [v18 delegate];
                  v23 = *(v7 + 3776);
                  [v22 items];
                  v25 = v24 = v7;
                  v26 = [v23 stringWithFormat:@"\t\t\t\\ Collection %@ (%ld items)\n", v22, objc_msgSend(v25, "count")];
                  [v3 appendString:v26];

                  v7 = v24;
                }
              }
            }

            v14 = [v12 countByEnumeratingWithState:&v33 objects:v41 count:16];
          }

          while (v14);
        }

        v8 = v32 + 1;
      }

      while (v32 + 1 != v31);
      v31 = [obj countByEnumeratingWithState:&v37 objects:v42 count:16];
    }

    while (v31);
  }

  NSLog(&stru_1F1F941A0.isa, v3);
  v27 = *MEMORY[0x1E69E9840];

  return v3;
}

- (void)registerDataSource:.cold.1()
{
  v3 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_0_11();
  OUTLINED_FUNCTION_1_0(&dword_1AAAE1000, v0, v1, "[DEBUG] SpotlightCollectorManager: Registered data source %@ for %@");
  v2 = *MEMORY[0x1E69E9840];
}

- (void)unregisterDataSource:.cold.1()
{
  v3 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_0_11();
  OUTLINED_FUNCTION_1_0(&dword_1AAAE1000, v0, v1, "[DEBUG] SpotlightCollectorManager: Unregistered data source %@ for %@");
  v2 = *MEMORY[0x1E69E9840];
}

- (void)collectorDidFinish:.cold.1()
{
  v3 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_0_11();
  OUTLINED_FUNCTION_1_0(&dword_1AAAE1000, v0, v1, "[DEBUG] SpotlightCollectorManager: Did remove finished collector %@ for descriptor %@");
  v2 = *MEMORY[0x1E69E9840];
}

void __58__FPSpotlightCollectorManager__observeFileProviderDomains__block_invoke_cold_1(id *a1, NSObject *a2)
{
  v8 = *MEMORY[0x1E69E9840];
  WeakRetained = objc_loadWeakRetained(a1);
  v4 = [WeakRetained currentMountPoints];
  v6 = 134217984;
  v7 = [v4 count];
  _os_log_debug_impl(&dword_1AAAE1000, a2, OS_LOG_TYPE_DEBUG, "[DEBUG] SpotlightCollectorManager: Provider domains have changed, number of current mount points: %ld", &v6, 0xCu);

  v5 = *MEMORY[0x1E69E9840];
}

@end