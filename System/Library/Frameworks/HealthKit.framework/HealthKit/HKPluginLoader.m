@interface HKPluginLoader
+ (Class)loadPrincipalClassConformingToProtocols:(id)a3 fromBundleAtURL:(id)a4 skipIfLoaded:(BOOL)a5;
@end

@implementation HKPluginLoader

+ (Class)loadPrincipalClassConformingToProtocols:(id)a3 fromBundleAtURL:(id)a4 skipIfLoaded:(BOOL)a5
{
  v38 = *MEMORY[0x1E69E9840];
  v7 = a3;
  v8 = a4;
  v9 = [objc_alloc(MEMORY[0x1E696AAE8]) initWithURL:v8];
  v10 = v9;
  if (!v9)
  {
    _HKInitializeLogging();
    if (os_log_type_enabled(HKLogDefault, OS_LOG_TYPE_ERROR))
    {
      +[HKPluginLoader loadPrincipalClassConformingToProtocols:fromBundleAtURL:skipIfLoaded:];
    }

    goto LABEL_20;
  }

  if ([v9 isLoaded] && a5)
  {
LABEL_20:
    v20 = 0;
    goto LABEL_28;
  }

  v30 = 0;
  v11 = [v10 loadAndReturnError:&v30];
  v12 = v30;
  if (v11)
  {
    v13 = [v10 principalClass];
    if (!v13)
    {
      _HKInitializeLogging();
      if (os_log_type_enabled(HKLogDefault, OS_LOG_TYPE_ERROR))
      {
        +[HKPluginLoader loadPrincipalClassConformingToProtocols:fromBundleAtURL:skipIfLoaded:];
      }
    }

    v28 = 0u;
    v29 = 0u;
    v26 = 0u;
    v27 = 0u;
    v14 = v7;
    v15 = [v14 countByEnumeratingWithState:&v26 objects:v37 count:16];
    if (v15)
    {
      v16 = v15;
      v17 = *v27;
      while (2)
      {
        for (i = 0; i != v16; ++i)
        {
          if (*v27 != v17)
          {
            objc_enumerationMutation(v14);
          }

          if ([v13 conformsToProtocol:{*(*(&v26 + 1) + 8 * i), v26}])
          {
            _HKInitializeLogging();
            if (os_log_type_enabled(HKLogDefault, OS_LOG_TYPE_DEBUG))
            {
              +[HKPluginLoader loadPrincipalClassConformingToProtocols:fromBundleAtURL:skipIfLoaded:];
            }

            v20 = v13;

            goto LABEL_27;
          }
        }

        v16 = [v14 countByEnumeratingWithState:&v26 objects:v37 count:16];
        if (v16)
        {
          continue;
        }

        break;
      }
    }

    _HKInitializeLogging();
    v19 = HKLogDefault;
    if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
    {
      if (v13)
      {
        v23 = NSStringFromClass(v13);
      }

      else
      {
        v23 = @"<>";
      }

      v24 = [v14 hk_map:{&__block_literal_global_2, v26}];
      v25 = [v24 componentsJoinedByString:{@", "}];
      *buf = 138543874;
      v32 = v8;
      v33 = 2114;
      v34 = v23;
      v35 = 2114;
      v36 = v25;
      _os_log_error_impl(&dword_19197B000, v19, OS_LOG_TYPE_ERROR, "Error: failed to load bundle %{public}@: principal class %{public}@ doesn't conform to any of: %{public}@", buf, 0x20u);

      if (v13)
      {
      }
    }
  }

  else
  {
    _HKInitializeLogging();
    if (os_log_type_enabled(HKLogDefault, OS_LOG_TYPE_ERROR))
    {
      +[HKPluginLoader loadPrincipalClassConformingToProtocols:fromBundleAtURL:skipIfLoaded:];
    }
  }

  v20 = 0;
LABEL_27:

LABEL_28:
  v21 = *MEMORY[0x1E69E9840];

  return v20;
}

+ (void)loadPrincipalClassConformingToProtocols:fromBundleAtURL:skipIfLoaded:.cold.1()
{
  v6 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_4();
  v4 = 2114;
  v5 = v0;
  _os_log_error_impl(&dword_19197B000, v1, OS_LOG_TYPE_ERROR, "Error: failed to load bundle %{public}@: %{public}@", v3, 0x16u);
  v2 = *MEMORY[0x1E69E9840];
}

+ (void)loadPrincipalClassConformingToProtocols:fromBundleAtURL:skipIfLoaded:.cold.2()
{
  v3 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_4();
  _os_log_error_impl(&dword_19197B000, v0, OS_LOG_TYPE_ERROR, "Error: failed to get principal class from bundle %{public}@", v2, 0xCu);
  v1 = *MEMORY[0x1E69E9840];
}

+ (void)loadPrincipalClassConformingToProtocols:fromBundleAtURL:skipIfLoaded:.cold.3()
{
  v3 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_4();
  _os_log_debug_impl(&dword_19197B000, v0, OS_LOG_TYPE_DEBUG, "Loaded bundle %{public}@", v2, 0xCu);
  v1 = *MEMORY[0x1E69E9840];
}

+ (void)loadPrincipalClassConformingToProtocols:fromBundleAtURL:skipIfLoaded:.cold.4()
{
  v3 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_4();
  _os_log_error_impl(&dword_19197B000, v0, OS_LOG_TYPE_ERROR, "Error: failed to instantiate bundle %{public}@", v2, 0xCu);
  v1 = *MEMORY[0x1E69E9840];
}

@end