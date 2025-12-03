@interface HKPPTPluginManager
+ (id)sharedPluginManager;
- (HKPPTPluginManager)init;
- (id)builtinTests;
- (void)_loadPPTBundles;
- (void)registerDriverClass:(Class)class;
@end

@implementation HKPPTPluginManager

+ (id)sharedPluginManager
{
  if (sharedPluginManager_onceToken != -1)
  {
    +[HKPPTPluginManager sharedPluginManager];
  }

  v3 = sharedPluginManager_sharedManager;

  return v3;
}

uint64_t __41__HKPPTPluginManager_sharedPluginManager__block_invoke()
{
  v0 = objc_alloc_init(HKPPTPluginManager);
  v1 = sharedPluginManager_sharedManager;
  sharedPluginManager_sharedManager = v0;

  return MEMORY[0x1EEE66BB8](v0, v1);
}

- (HKPPTPluginManager)init
{
  v8.receiver = self;
  v8.super_class = HKPPTPluginManager;
  v2 = [(HKPPTPluginManager *)&v8 init];
  if (v2)
  {
    v3 = objc_alloc_init(MEMORY[0x1E695DF90]);
    testClasses = v2->_testClasses;
    v2->_testClasses = v3;

    v5 = objc_alloc_init(MEMORY[0x1E695DF90]);
    builtinTests = v2->_builtinTests;
    v2->_builtinTests = v5;

    [(HKPPTPluginManager *)v2 _loadPPTBundles];
  }

  return v2;
}

- (id)builtinTests
{
  v2 = [(NSMutableDictionary *)self->_builtinTests copy];

  return v2;
}

- (void)registerDriverClass:(Class)class
{
  v36 = *MEMORY[0x1E69E9840];
  v4 = objc_alloc_init(class);
  v5 = v4;
  if (v4)
  {
    supportedTestType = [v4 supportedTestType];
    if (supportedTestType)
    {
      v7 = [(NSMutableDictionary *)self->_testClasses objectForKeyedSubscript:supportedTestType];
      _HKInitializeLogging();
      v8 = HKLogTesting();
      builtinTestDefinitions = v8;
      if (v7)
      {
        if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
        {
          v10 = [(NSMutableDictionary *)self->_testClasses objectForKeyedSubscript:supportedTestType];
          *buf = 138543874;
          classCopy2 = class;
          v32 = 2114;
          v33 = supportedTestType;
          v34 = 2114;
          v35 = v10;
          _os_log_error_impl(&dword_19197B000, builtinTestDefinitions, OS_LOG_TYPE_ERROR, "Loaded PPT driver %{public}@ supports %{public}@, but we already have a driver (%{public}@) supporting that type.", buf, 0x20u);
        }
      }

      else
      {
        v11 = os_log_type_enabled(v8, OS_LOG_TYPE_INFO);

        if (v11)
        {
          v12 = HKLogTesting();
          if (os_log_type_enabled(v12, OS_LOG_TYPE_INFO))
          {
            *buf = 138543618;
            classCopy2 = class;
            v32 = 2114;
            v33 = supportedTestType;
            _os_log_impl(&dword_19197B000, v12, OS_LOG_TYPE_INFO, "Loaded PPT driver %{public}@ for %{public}@", buf, 0x16u);
          }
        }

        [(NSMutableDictionary *)self->_testClasses setObject:class forKeyedSubscript:supportedTestType];
        builtinTestDefinitions = [v5 builtinTestDefinitions];
        v25 = 0u;
        v26 = 0u;
        v27 = 0u;
        v28 = 0u;
        v13 = [builtinTestDefinitions countByEnumeratingWithState:&v25 objects:v29 count:16];
        if (v13)
        {
          v14 = v13;
          v15 = supportedTestType;
          v23 = v5;
          v16 = *v26;
          v17 = MEMORY[0x1E695E118];
          do
          {
            for (i = 0; i != v14; ++i)
            {
              if (*v26 != v16)
              {
                objc_enumerationMutation(builtinTestDefinitions);
              }

              v19 = *(*(&v25 + 1) + 8 * i);
              v20 = [builtinTestDefinitions objectForKeyedSubscript:v19, v23];
              v21 = [v20 mutableCopy];

              [v21 setObject:v19 forKeyedSubscript:@"testName"];
              [v21 setObject:v15 forKeyedSubscript:@"testType"];
              [v21 setObject:v17 forKeyedSubscript:@"enabled"];
              [(NSMutableDictionary *)self->_builtinTests setObject:v21 forKeyedSubscript:v19];
            }

            v14 = [builtinTestDefinitions countByEnumeratingWithState:&v25 objects:v29 count:16];
          }

          while (v14);
          v5 = v23;
          supportedTestType = v15;
        }
      }
    }

    else
    {
      _HKInitializeLogging();
      builtinTestDefinitions = HKLogTesting();
      if (os_log_type_enabled(builtinTestDefinitions, OS_LOG_TYPE_ERROR))
      {
        [(HKPPTPluginManager *)class registerDriverClass:builtinTestDefinitions];
      }
    }
  }

  v22 = *MEMORY[0x1E69E9840];
}

- (void)_loadPPTBundles
{
  v52[2] = *MEMORY[0x1E69E9840];
  v52[0] = @"/AppleInternal/Library/Health/Plugins";
  v52[1] = @"/AppleInternal/Library/Health/Plugins/PPTPlugins";
  v3 = 0x1E695D000uLL;
  [MEMORY[0x1E695DEC8] arrayWithObjects:v52 count:2];
  v44 = 0u;
  v45 = 0u;
  v46 = 0u;
  v4 = v47 = 0u;
  v30 = [v4 countByEnumeratingWithState:&v44 objects:v51 count:16];
  if (v30)
  {
    v5 = *v45;
    v6 = 0x1E695D000uLL;
    v7 = off_1E7375000;
    v8 = &selRef_setConditions_;
    v32 = v4;
    v29 = *v45;
    do
    {
      v9 = 0;
      do
      {
        if (*v45 != v5)
        {
          objc_enumerationMutation(v4);
        }

        v31 = v9;
        v10 = *(v6 + 4088);
        v11 = [GSSystemRootDirectory() stringByAppendingPathComponent:*(*(&v44 + 1) + 8 * v9)];
        v12 = [v10 fileURLWithPath:v11];

        v13 = v7[105];
        v50 = v8[469];
        v14 = [*(v3 + 3784) arrayWithObjects:&v50 count:1];
        v43 = 0;
        v34 = v12;
        v15 = [(__objc2_class *)v13 loadPrincipalClassesConformingToProtocols:v14 fromBundlesInDirectoryAtURL:v12 skipLoadedBundles:0 error:&v43];
        v33 = v43;

        v41 = 0u;
        v42 = 0u;
        v39 = 0u;
        v40 = 0u;
        v16 = v15;
        v17 = [v16 countByEnumeratingWithState:&v39 objects:v49 count:16];
        if (v17)
        {
          v18 = v17;
          v19 = *v40;
          while (2)
          {
            for (i = 0; i != v18; ++i)
            {
              if (*v40 != v19)
              {
                objc_enumerationMutation(v16);
              }

              v21 = objc_alloc_init(*(*(&v39 + 1) + 8 * i));
              if (!v21)
              {

                v4 = v32;
                goto LABEL_25;
              }

              v22 = v21;
              v37 = 0u;
              v38 = 0u;
              v35 = 0u;
              v36 = 0u;
              pPTDriverClasses = [v21 PPTDriverClasses];
              v24 = [pPTDriverClasses countByEnumeratingWithState:&v35 objects:v48 count:16];
              if (v24)
              {
                v25 = v24;
                v26 = *v36;
                do
                {
                  for (j = 0; j != v25; ++j)
                  {
                    if (*v36 != v26)
                    {
                      objc_enumerationMutation(pPTDriverClasses);
                    }

                    [(HKPPTPluginManager *)self registerDriverClass:*(*(&v35 + 1) + 8 * j), v29];
                  }

                  v25 = [pPTDriverClasses countByEnumeratingWithState:&v35 objects:v48 count:16];
                }

                while (v25);
              }
            }

            v18 = [v16 countByEnumeratingWithState:&v39 objects:v49 count:16];
            if (v18)
            {
              continue;
            }

            break;
          }
        }

        v9 = v31 + 1;
        v4 = v32;
        v3 = 0x1E695D000;
        v5 = v29;
        v6 = 0x1E695D000;
        v7 = off_1E7375000;
        v8 = &selRef_setConditions_;
      }

      while (v31 + 1 != v30);
      v30 = [v32 countByEnumeratingWithState:&v44 objects:v51 count:16];
    }

    while (v30);
  }

LABEL_25:

  v28 = *MEMORY[0x1E69E9840];
}

- (void)registerDriverClass:(uint64_t)a1 .cold.1(uint64_t a1, NSObject *a2)
{
  v5 = *MEMORY[0x1E69E9840];
  v3 = 138543362;
  v4 = a1;
  _os_log_error_impl(&dword_19197B000, a2, OS_LOG_TYPE_ERROR, "Loaded PPT driver %{public}@ did not return a supportedTestType.", &v3, 0xCu);
  v2 = *MEMORY[0x1E69E9840];
}

@end