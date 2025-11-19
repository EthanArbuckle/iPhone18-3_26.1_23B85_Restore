@interface ATClientController
+ (id)controllerForDataclasses:(id)a3;
+ (id)sharedInstance;
- (BOOL)_loadClientsForDataclasses:(id)a3;
- (id)queueForClient:(id)a3;
- (void)dealloc;
- (void)resetQueues;
- (void)waitToDrain;
@end

@implementation ATClientController

- (BOOL)_loadClientsForDataclasses:(id)a3
{
  v102 = *MEMORY[0x277D85DE8];
  v53 = [MEMORY[0x277CBEAA8] date];
  v4 = objc_alloc_init(MEMORY[0x277CBEB38]);
  v76 = 0u;
  v77 = 0u;
  v78 = 0u;
  v79 = 0u;
  obj = NSSearchPathForDirectoriesInDomains(NSLibraryDirectory, 8uLL, 1);
  v56 = [obj countByEnumeratingWithState:&v76 objects:v101 count:16];
  if (v56)
  {
    v55 = *v77;
    v59 = self;
    do
    {
      v5 = 0;
      do
      {
        if (*v77 != v55)
        {
          objc_enumerationMutation(obj);
        }

        v58 = v5;
        v6 = *(*(&v76 + 1) + 8 * v5);
        v7 = MSVSystemRootDirectory();
        v8 = [v7 stringByAppendingPathComponent:v6];
        v9 = [v8 stringByAppendingPathComponent:@"SyncBundles"];
        v10 = [v9 stringByResolvingSymlinksInPath];

        v74 = 0u;
        v75 = 0u;
        v72 = 0u;
        v73 = 0u;
        v11 = [MEMORY[0x277CCAA00] defaultManager];
        v71 = 0;
        v12 = [v11 contentsOfDirectoryAtPath:v10 error:&v71];
        v57 = v71;

        v62 = v12;
        v64 = [v12 countByEnumeratingWithState:&v72 objects:v100 count:16];
        if (v64)
        {
          v63 = *v73;
          v61 = v10;
          do
          {
            for (i = 0; i != v64; ++i)
            {
              if (*v73 != v63)
              {
                objc_enumerationMutation(v62);
              }

              v14 = *(*(&v72 + 1) + 8 * i);
              v65 = [MEMORY[0x277CBEAA8] date];
              v15 = [v10 stringByAppendingPathComponent:v14];
              v16 = [v15 pathExtension];
              v17 = [v16 isEqualToString:@"syncBundle"];

              if (v17)
              {
                v18 = _ATLogCategoryFramework();
                if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
                {
                  *buf = 138543362;
                  v96 = v15;
                  _os_log_impl(&dword_223819000, v18, OS_LOG_TYPE_DEFAULT, "Loading bundle at path '%{public}@'", buf, 0xCu);
                }

                v19 = [objc_alloc(MEMORY[0x277CCA8D8]) initWithPath:v15];
                v20 = v19;
                if (!v19)
                {
                  v34 = _ATLogCategoryFramework();
                  if (os_log_type_enabled(v34, OS_LOG_TYPE_ERROR))
                  {
                    *buf = 138543362;
                    v96 = v15;
                    _os_log_impl(&dword_223819000, v34, OS_LOG_TYPE_ERROR, "unable to load sync bundle at path %{public}@, filesystem error", buf, 0xCu);
                  }

                  v22 = [MEMORY[0x277CCACA8] stringWithFormat:@"filesystem error"];
                  v83 = @"bundlePath";
                  v84 = v15;
                  v25 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v84 forKeys:&v83 count:1];
                  v85 = v25;
                  v31 = [MEMORY[0x277CBEA60] arrayWithObjects:&v85 count:1];
                  [(ATClientController *)self _snapShotWithContext:v22 events:v31];
                  goto LABEL_42;
                }

                v70 = 0;
                v21 = [v19 loadAndReturnError:&v70];
                v22 = v70;
                if (v21)
                {
                  v23 = [v20 principalClass];
                  if (v23)
                  {
                    v24 = v23;
                    v60 = v22;
                    if ([(objc_class *)v23 conformsToProtocol:&unk_283709248])
                    {
                      v25 = objc_alloc_init(v24);
                      v66 = 0u;
                      v67 = 0u;
                      v68 = 0u;
                      v69 = 0u;
                      v26 = [v25 supportedDataclasses];
                      v27 = [v26 countByEnumeratingWithState:&v66 objects:v99 count:16];
                      if (v27)
                      {
                        v28 = v27;
                        v29 = *v67;
                        do
                        {
                          for (j = 0; j != v28; ++j)
                          {
                            if (*v67 != v29)
                            {
                              objc_enumerationMutation(v26);
                            }

                            [v4 setObject:v25 forKey:*(*(&v66 + 1) + 8 * j)];
                          }

                          v28 = [v26 countByEnumeratingWithState:&v66 objects:v99 count:16];
                        }

                        while (v28);
                      }

                      v31 = _ATLogCategoryFramework();
                      if (os_log_type_enabled(v31, OS_LOG_TYPE_DEFAULT))
                      {
                        v32 = [MEMORY[0x277CBEAA8] date];
                        [v32 timeIntervalSinceDate:v65];
                        *buf = 138543618;
                        v96 = v24;
                        v97 = 2048;
                        v98 = v33;
                        _os_log_impl(&dword_223819000, v31, OS_LOG_TYPE_DEFAULT, "Loaded bundle %{public}@ in %.2fs", buf, 0x16u);
                      }

                      self = v59;
                    }

                    else
                    {
                      v25 = NSStringFromProtocol(&unk_283709248);
                      v38 = _ATLogCategoryFramework();
                      if (os_log_type_enabled(v38, OS_LOG_TYPE_ERROR))
                      {
                        *buf = 138543618;
                        v96 = v15;
                        v97 = 2114;
                        v98 = v25;
                        _os_log_impl(&dword_223819000, v38, OS_LOG_TYPE_ERROR, "unable to load sync bundle at path %{public}@: principal class does not implement %{public}@ protocol", buf, 0x16u);
                      }

                      v31 = [MEMORY[0x277CCACA8] stringWithFormat:@"principal class does not implement %@ protocol", v25];
                      v92 = @"bundlePath";
                      v93 = v15;
                      v39 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v93 forKeys:&v92 count:1];
                      v94 = v39;
                      v40 = [MEMORY[0x277CBEA60] arrayWithObjects:&v94 count:1];
                      self = v59;
                      [(ATClientController *)v59 _snapShotWithContext:v31 events:v40];
                    }

                    v22 = v60;
                    goto LABEL_42;
                  }

                  v37 = _ATLogCategoryFramework();
                  if (os_log_type_enabled(v37, OS_LOG_TYPE_ERROR))
                  {
                    *buf = 138543362;
                    v96 = v15;
                    _os_log_impl(&dword_223819000, v37, OS_LOG_TYPE_ERROR, "unable to load sync bundle at path %{public}@: no principal class", buf, 0xCu);
                  }

                  v25 = [MEMORY[0x277CCACA8] stringWithFormat:@"no principal class"];
                  v89 = @"bundlePath";
                  v90 = v15;
                  v31 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v90 forKeys:&v89 count:1];
                  v91 = v31;
                  v36 = [MEMORY[0x277CBEA60] arrayWithObjects:&v91 count:1];
                  self = v59;
                }

                else
                {
                  v35 = _ATLogCategoryFramework();
                  if (os_log_type_enabled(v35, OS_LOG_TYPE_ERROR))
                  {
                    *buf = 138543618;
                    v96 = v15;
                    v97 = 2114;
                    v98 = v22;
                    _os_log_impl(&dword_223819000, v35, OS_LOG_TYPE_ERROR, "unable to load sync bundle at path %{public}@: error %{public}@", buf, 0x16u);
                  }

                  v25 = [MEMORY[0x277CCACA8] stringWithFormat:@"unable to load sync bundle"];
                  v86[0] = @"bundlePath";
                  v86[1] = @"loadError";
                  v87[0] = v15;
                  v87[1] = v22;
                  v31 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v87 forKeys:v86 count:2];
                  v88 = v31;
                  v36 = [MEMORY[0x277CBEA60] arrayWithObjects:&v88 count:1];
                }

                [(ATClientController *)self _snapShotWithContext:v25 events:v36];

LABEL_42:
                v10 = v61;
              }
            }

            v64 = [v62 countByEnumeratingWithState:&v72 objects:v100 count:16];
          }

          while (v64);
        }

        if (v57)
        {
          v41 = [v57 code];
          v42 = _ATLogCategoryFramework();
          v43 = v42;
          if (v41 == 260)
          {
            if (os_log_type_enabled(v42, OS_LOG_TYPE_DEFAULT))
            {
              *buf = 138543362;
              v96 = v57;
              _os_log_impl(&dword_223819000, v43, OS_LOG_TYPE_DEFAULT, "Encountered error loading sync bundles: %{public}@. Ignoring", buf, 0xCu);
            }
          }

          else
          {
            if (os_log_type_enabled(v42, OS_LOG_TYPE_ERROR))
            {
              *buf = 138543362;
              v96 = v57;
              _os_log_impl(&dword_223819000, v43, OS_LOG_TYPE_ERROR, "Encountered error loading sync bundles: %{public}@", buf, 0xCu);
            }

            v43 = [MEMORY[0x277CCACA8] stringWithFormat:@"error loading sync bundles"];
            v80 = @"error";
            v81 = v57;
            v44 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v81 forKeys:&v80 count:1];
            v82 = v44;
            v45 = [MEMORY[0x277CBEA60] arrayWithObjects:&v82 count:1];
            [(ATClientController *)self _snapShotWithContext:v43 events:v45];
          }
        }

        v5 = v58 + 1;
      }

      while (v58 + 1 != v56);
      v56 = [obj countByEnumeratingWithState:&v76 objects:v101 count:16];
    }

    while (v56);
  }

  if (![v4 count])
  {
    v46 = _ATLogCategoryFramework();
    if (os_log_type_enabled(v46, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_impl(&dword_223819000, v46, OS_LOG_TYPE_ERROR, "found 0 sync bundle clients.", buf, 2u);
    }

    v47 = [MEMORY[0x277CCA890] currentHandler];
    [v47 handleFailureInMethod:a2 object:self file:@"ATClientController.m" lineNumber:193 description:@"Failed to load sync bundles"];
  }

  objc_storeStrong(&self->_clientMap, v4);
  [(ATClientController *)self resetQueues];
  v48 = _ATLogCategoryFramework();
  if (os_log_type_enabled(v48, OS_LOG_TYPE_DEFAULT))
  {
    v49 = [MEMORY[0x277CBEAA8] date];
    [v49 timeIntervalSinceDate:v53];
    *buf = 134217984;
    v96 = v50;
    _os_log_impl(&dword_223819000, v48, OS_LOG_TYPE_DEFAULT, "Loaded all clients in %.2fs", buf, 0xCu);
  }

  return 1;
}

- (id)queueForClient:(id)a3
{
  v5 = a3;
  queueMap = self->_queueMap;
  if (!queueMap)
  {
    v9 = [MEMORY[0x277CCA890] currentHandler];
    [v9 handleFailureInMethod:a2 object:self file:@"ATClientController.m" lineNumber:110 description:@"We have no queues!"];

    queueMap = self->_queueMap;
  }

  v7 = CFDictionaryGetValue(queueMap, v5);

  return v7;
}

- (void)waitToDrain
{
  v11 = *MEMORY[0x277D85DE8];
  Count = CFDictionaryGetCount(self->_queueMap);
  v4 = &v9[-((8 * Count + 15) & 0xFFFFFFFFFFFFFFF0)];
  if ((8 * Count) >= 0x200)
  {
    v5 = 512;
  }

  else
  {
    v5 = 8 * Count;
  }

  bzero(&v9[-((8 * Count + 15) & 0xFFFFFFFFFFFFFFF0)], v5);
  CFDictionaryGetKeysAndValues(self->_queueMap, 0, v4);
  v6 = _ATLogCategoryFramework();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_223819000, v6, OS_LOG_TYPE_DEFAULT, "Waiting for queues to drain...", buf, 2u);
  }

  for (i = 0; CFDictionaryGetCount(self->_queueMap) > i; ++i)
  {
    dispatch_barrier_sync(v4[i], &__block_literal_global_13_2637);
  }

  v8 = _ATLogCategoryFramework();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    *v9 = 0;
    _os_log_impl(&dword_223819000, v8, OS_LOG_TYPE_DEFAULT, "Queues drained.", v9, 2u);
  }
}

- (void)resetQueues
{
  v27 = *MEMORY[0x277D85DE8];
  if (self->_queueMap)
  {
    v23 = 0u;
    v24 = 0u;
    v21 = 0u;
    v22 = 0u;
    v3 = [(NSDictionary *)self->_clientMap allValues];
    v4 = [v3 countByEnumeratingWithState:&v21 objects:v26 count:16];
    if (v4)
    {
      v5 = v4;
      v6 = *v22;
      do
      {
        v7 = 0;
        do
        {
          if (*v22 != v6)
          {
            objc_enumerationMutation(v3);
          }

          v8 = CFDictionaryGetValue(self->_queueMap, *(*(&v21 + 1) + 8 * v7));
          dispatch_queue_set_specific(v8, @"disabled_queue", 1, 0);

          ++v7;
        }

        while (v5 != v7);
        v5 = [v3 countByEnumeratingWithState:&v21 objects:v26 count:16];
      }

      while (v5);
    }

    CFRelease(self->_queueMap);
    self->_queueMap = 0;
  }

  self->_queueMap = CFDictionaryCreateMutable(*MEMORY[0x277CBECE8], 0, 0, 0);
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  v9 = [(ATClientController *)self allClients];
  v10 = [v9 countByEnumeratingWithState:&v17 objects:v25 count:16];
  if (v10)
  {
    v11 = v10;
    v12 = *v18;
    do
    {
      v13 = 0;
      do
      {
        if (*v18 != v12)
        {
          objc_enumerationMutation(v9);
        }

        v14 = *(*(&v17 + 1) + 8 * v13);
        v15 = [MEMORY[0x277CCACA8] stringWithFormat:@"com.apple.atc-%@", objc_opt_class()];
        v16 = dispatch_queue_create([v15 UTF8String], 0);

        CFDictionaryAddValue(self->_queueMap, v14, v16);
        ++v13;
      }

      while (v11 != v13);
      v11 = [v9 countByEnumeratingWithState:&v17 objects:v25 count:16];
    }

    while (v11);
  }
}

- (void)dealloc
{
  v17 = *MEMORY[0x277D85DE8];
  v3 = _ATLogCategoryFramework();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_223819000, v3, OS_LOG_TYPE_DEFAULT, "ATClientController dealloc", buf, 2u);
  }

  if (self->_queueMap)
  {
    v13 = 0u;
    v14 = 0u;
    v11 = 0u;
    v12 = 0u;
    v4 = [(NSDictionary *)self->_clientMap allValues];
    v5 = [v4 countByEnumeratingWithState:&v11 objects:v16 count:16];
    if (v5)
    {
      v6 = v5;
      v7 = *v12;
      do
      {
        v8 = 0;
        do
        {
          if (*v12 != v7)
          {
            objc_enumerationMutation(v4);
          }

          v9 = CFDictionaryGetValue(self->_queueMap, *(*(&v11 + 1) + 8 * v8));
          dispatch_queue_set_specific(v9, @"disabled_queue", 1, 0);

          ++v8;
        }

        while (v6 != v8);
        v6 = [v4 countByEnumeratingWithState:&v11 objects:v16 count:16];
      }

      while (v6);
    }

    CFRelease(self->_queueMap);
    self->_queueMap = 0;
  }

  v10.receiver = self;
  v10.super_class = ATClientController;
  [(ATClientController *)&v10 dealloc];
}

+ (id)sharedInstance
{
  if (sharedInstance_onceToken_2652 != -1)
  {
    dispatch_once(&sharedInstance_onceToken_2652, &__block_literal_global_2653);
  }

  v3 = sharedInstance___sharedInstance;

  return v3;
}

uint64_t __36__ATClientController_sharedInstance__block_invoke()
{
  sharedInstance___sharedInstance = [ATClientController controllerForDataclasses:0];

  return MEMORY[0x2821F96F8]();
}

+ (id)controllerForDataclasses:(id)a3
{
  v3 = a3;
  v4 = objc_alloc_init(ATClientController);
  v5 = [(ATClientController *)v4 _loadClientsForDataclasses:v3];

  if (v5)
  {
    v6 = v4;
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

@end