@interface ACHAwardPluginSystem
- (ACHAwardPluginSystem)init;
- (Class)_loadPrincipalClassConformingToProtocols:(id)a3 fromBundleAtPath:(id)a4;
- (id)_createPluginsFromClasses:(id)a3;
- (id)_loadPrincipalClassesConformingToProtocols:(id)a3 fromBundlesInDirectoryAtPath:(id)a4 error:(id *)a5;
- (id)_pluginClasses;
- (id)_pluginDirectoryPath;
- (id)_principalClassProtocols;
- (id)createProgressProviders;
- (id)createTemplateAssetSources;
- (void)_loadPlugins;
- (void)_pluginClasses;
@end

@implementation ACHAwardPluginSystem

- (ACHAwardPluginSystem)init
{
  v6.receiver = self;
  v6.super_class = ACHAwardPluginSystem;
  v2 = [(ACHAwardPluginSystem *)&v6 init];
  v3 = v2;
  if (v2)
  {
    progressProviders = v2->_progressProviders;
    v2->_progressProviders = MEMORY[0x277CBEBF8];

    [(ACHAwardPluginSystem *)v3 _loadPlugins];
  }

  return v3;
}

- (id)_pluginDirectoryPath
{
  v2 = GSSystemRootDirectory();

  return [v2 stringByAppendingPathComponent:@"/System/Library/Fitness/Plugins"];
}

- (id)_principalClassProtocols
{
  v5[1] = *MEMORY[0x277D85DE8];
  v5[0] = &unk_28356FF18;
  v2 = [MEMORY[0x277CBEA60] arrayWithObjects:v5 count:1];
  v3 = *MEMORY[0x277D85DE8];

  return v2;
}

- (id)_pluginClasses
{
  v3 = objc_alloc_init(MEMORY[0x277CBEB18]);
  v4 = [(ACHAwardPluginSystem *)self _pluginDirectoryPath];
  v5 = [(ACHAwardPluginSystem *)self _principalClassProtocols];
  v10 = 0;
  v6 = [(ACHAwardPluginSystem *)self _loadPrincipalClassesConformingToProtocols:v5 fromBundlesInDirectoryAtPath:v4 error:&v10];
  v7 = v10;

  if (v6)
  {
    [v3 addObjectsFromArray:v6];
  }

  else if (([v7 hk_isCocoaNoSuchFileError] & 1) == 0)
  {
    v8 = ACHLogDefault();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      [ACHAwardPluginSystem _pluginClasses];
    }
  }

  return v3;
}

- (id)_loadPrincipalClassesConformingToProtocols:(id)a3 fromBundlesInDirectoryAtPath:(id)a4 error:(id *)a5
{
  v34 = *MEMORY[0x277D85DE8];
  v28 = a3;
  v7 = a4;
  v8 = objc_alloc_init(MEMORY[0x277CCAA00]);
  v9 = v7;
  v10 = [v8 contentsOfDirectoryAtPath:v7 error:a5];
  if (v10)
  {
    v25 = v8;
    v26 = objc_alloc_init(MEMORY[0x277CBEB18]);
    v29 = 0u;
    v30 = 0u;
    v31 = 0u;
    v32 = 0u;
    v24 = v10;
    v11 = v10;
    v12 = [v11 countByEnumeratingWithState:&v29 objects:v33 count:16];
    if (v12)
    {
      v13 = v12;
      v14 = *v30;
      do
      {
        for (i = 0; i != v13; ++i)
        {
          if (*v30 != v14)
          {
            objc_enumerationMutation(v11);
          }

          v16 = *(*(&v29 + 1) + 8 * i);
          v17 = objc_autoreleasePoolPush();
          v18 = [v16 pathExtension];
          v19 = [v18 isEqualToString:@"bundle"];

          if (v19)
          {
            v20 = [v9 stringByAppendingPathComponent:v16];
            v21 = [(ACHAwardPluginSystem *)self _loadPrincipalClassConformingToProtocols:v28 fromBundleAtPath:v20];
            if (v21)
            {
              [v26 addObject:v21];
            }
          }

          objc_autoreleasePoolPop(v17);
        }

        v13 = [v11 countByEnumeratingWithState:&v29 objects:v33 count:16];
      }

      while (v13);
    }

    v10 = v24;
    v8 = v25;
  }

  else
  {
    v26 = 0;
  }

  v22 = *MEMORY[0x277D85DE8];

  return v26;
}

- (Class)_loadPrincipalClassConformingToProtocols:(id)a3 fromBundleAtPath:(id)a4
{
  v37 = *MEMORY[0x277D85DE8];
  v5 = a3;
  v6 = a4;
  v7 = [objc_alloc(MEMORY[0x277CCA8D8]) initWithPath:v6];
  v8 = v7;
  if (v7)
  {
    v29 = 0;
    v9 = [v7 loadAndReturnError:&v29];
    v10 = v29;
    if (v9)
    {
      v11 = [v8 principalClass];
      if (!v11)
      {
        v12 = ACHLogDefault();
        if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
        {
          [ACHAwardPluginSystem _loadPrincipalClassConformingToProtocols:fromBundleAtPath:];
        }
      }

      v27 = 0u;
      v28 = 0u;
      v25 = 0u;
      v26 = 0u;
      v13 = v5;
      v14 = [v13 countByEnumeratingWithState:&v25 objects:v36 count:16];
      if (v14)
      {
        v15 = v14;
        v16 = *v26;
        while (2)
        {
          for (i = 0; i != v15; ++i)
          {
            if (*v26 != v16)
            {
              objc_enumerationMutation(v13);
            }

            if ([v11 conformsToProtocol:{*(*(&v25 + 1) + 8 * i), v25}])
            {
              v20 = ACHLogDefault();
              if (os_log_type_enabled(v20, OS_LOG_TYPE_DEBUG))
              {
                [ACHAwardPluginSystem _loadPrincipalClassConformingToProtocols:fromBundleAtPath:];
              }

              v19 = v11;
              goto LABEL_26;
            }
          }

          v15 = [v13 countByEnumeratingWithState:&v25 objects:v36 count:16];
          if (v15)
          {
            continue;
          }

          break;
        }
      }

      v18 = ACHLogDefault();
      if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
      {
        if (v11)
        {
          v23 = NSStringFromClass(v11);
        }

        else
        {
          v23 = @"<>";
        }

        v24 = [v13 hk_map:&__block_literal_global_11, v25];
        *buf = 138543874;
        v31 = v6;
        v32 = 2114;
        v33 = v23;
        v34 = 2114;
        v35 = v24;
        _os_log_error_impl(&dword_221DDC000, v18, OS_LOG_TYPE_ERROR, "Error: failed to load bundle %{public}@: principal class %{public}@ doesn't conform to any of: %{public}@", buf, 0x20u);
        if (v11)
        {
        }
      }

      v19 = 0;
      v13 = v18;
    }

    else
    {
      v13 = ACHLogDefault();
      if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
      {
        [ACHAwardPluginSystem _loadPrincipalClassConformingToProtocols:fromBundleAtPath:];
      }

      v19 = 0;
    }

LABEL_26:
  }

  else
  {
    v10 = ACHLogDefault();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      [ACHAwardPluginSystem _loadPrincipalClassConformingToProtocols:fromBundleAtPath:];
    }

    v19 = 0;
  }

  v21 = *MEMORY[0x277D85DE8];

  return v19;
}

- (id)_createPluginsFromClasses:(id)a3
{
  v4 = &unk_28356FF18;
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __50__ACHAwardPluginSystem__createPluginsFromClasses___block_invoke;
  v8[3] = &unk_278491808;
  v9 = v4;
  v10 = sel_shouldLoadPlugin;
  v5 = v4;
  v6 = [a3 hk_map:v8];

  return v6;
}

id __50__ACHAwardPluginSystem__createPluginsFromClasses___block_invoke(uint64_t a1, objc_class *a2)
{
  if ([(objc_class *)a2 conformsToProtocol:*(a1 + 32)]&& ((v4 = *(a1 + 40), (objc_opt_respondsToSelector() & 1) == 0) || [(objc_class *)a2 shouldLoadPlugin]))
  {
    v5 = objc_alloc_init(a2);
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (void)_loadPlugins
{
  v5 = [(ACHAwardPluginSystem *)self _pluginClasses];
  v3 = [(ACHAwardPluginSystem *)self _createPluginsFromClasses:v5];
  plugins = self->_plugins;
  self->_plugins = v3;
}

- (id)createTemplateAssetSources
{
  v19 = *MEMORY[0x277D85DE8];
  v3 = objc_alloc_init(MEMORY[0x277CBEB38]);
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v4 = self->_plugins;
  v5 = [(NSArray *)v4 countByEnumeratingWithState:&v14 objects:v18 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v15;
    do
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v15 != v7)
        {
          objc_enumerationMutation(v4);
        }

        v9 = *(*(&v14 + 1) + 8 * i);
        v10 = [v9 templateAssetSource];
        if (v10)
        {
          v11 = [v9 pluginIdentifier];
          [v3 setObject:v10 forKeyedSubscript:v11];
        }
      }

      v6 = [(NSArray *)v4 countByEnumeratingWithState:&v14 objects:v18 count:16];
    }

    while (v6);
  }

  v12 = *MEMORY[0x277D85DE8];

  return v3;
}

- (id)createProgressProviders
{
  v21 = *MEMORY[0x277D85DE8];
  v3 = objc_alloc_init(MEMORY[0x277CBEB38]);
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v4 = self->_plugins;
  v5 = [(NSArray *)v4 countByEnumeratingWithState:&v16 objects:v20 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v17;
    do
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v17 != v7)
        {
          objc_enumerationMutation(v4);
        }

        v9 = *(*(&v16 + 1) + 8 * i);
        if (objc_opt_respondsToSelector())
        {
          v10 = [v9 progressProvider];
          if (v10)
          {
            v11 = [v9 pluginIdentifier];
            [v3 setObject:v10 forKeyedSubscript:v11];

            v12 = [(NSArray *)self->_progressProviders arrayByAddingObject:v10];
            progressProviders = self->_progressProviders;
            self->_progressProviders = v12;
          }
        }
      }

      v6 = [(NSArray *)v4 countByEnumeratingWithState:&v16 objects:v20 count:16];
    }

    while (v6);
  }

  v14 = *MEMORY[0x277D85DE8];

  return v3;
}

- (void)_pluginClasses
{
  v3 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_1_0(&dword_221DDC000, v0, v1, "Failed to load plugins at %{public}@: %{public}@");
  v2 = *MEMORY[0x277D85DE8];
}

- (void)_loadPrincipalClassConformingToProtocols:fromBundleAtPath:.cold.1()
{
  v3 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_1_0(&dword_221DDC000, v0, v1, "Error: failed to load bundle %{public}@: %{public}@");
  v2 = *MEMORY[0x277D85DE8];
}

- (void)_loadPrincipalClassConformingToProtocols:fromBundleAtPath:.cold.2()
{
  v3 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_1();
  _os_log_error_impl(&dword_221DDC000, v0, OS_LOG_TYPE_ERROR, "Error: failed to get principal class from bundle %{public}@", v2, 0xCu);
  v1 = *MEMORY[0x277D85DE8];
}

- (void)_loadPrincipalClassConformingToProtocols:fromBundleAtPath:.cold.3()
{
  v3 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_1();
  _os_log_debug_impl(&dword_221DDC000, v0, OS_LOG_TYPE_DEBUG, "Loaded bundle %{public}@", v2, 0xCu);
  v1 = *MEMORY[0x277D85DE8];
}

- (void)_loadPrincipalClassConformingToProtocols:fromBundleAtPath:.cold.4()
{
  v3 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_1();
  _os_log_error_impl(&dword_221DDC000, v0, OS_LOG_TYPE_ERROR, "Error: failed to instantiate bundle %{public}@", v2, 0xCu);
  v1 = *MEMORY[0x277D85DE8];
}

@end