@interface ACPluginLoader
+ (id)_accountsPluginDirectoryURLs:(id)a3 inAppleInternal:(BOOL)a4;
+ (id)_validatedBundleAtURL:(id)a3;
+ (id)pluginBundlesAtSubpath:(id)a3;
+ (id)pluginWithName:(id)a3 inSubpath:(id)a4;
@end

@implementation ACPluginLoader

+ (id)_accountsPluginDirectoryURLs:(id)a3 inAppleInternal:(BOOL)a4
{
  v4 = a4;
  v24[1] = *MEMORY[0x1E69E9840];
  v5 = a3;
  v6 = [MEMORY[0x1E695E0F0] mutableCopy];
  if (v4)
  {
    v7 = [MEMORY[0x1E695DFF8] fileURLWithPath:@"/AppleInternal/Library" isDirectory:1];
    v24[0] = v7;
    v8 = [MEMORY[0x1E695DEC8] arrayWithObjects:v24 count:1];
  }

  else
  {
    v7 = [MEMORY[0x1E696AC08] defaultManager];
    v8 = [v7 URLsForDirectory:5 inDomains:8];
  }

  v9 = v8;

  if (v9 && [v9 count])
  {
    v21 = 0u;
    v22 = 0u;
    v19 = 0u;
    v20 = 0u;
    v10 = v9;
    v11 = [v10 countByEnumeratingWithState:&v19 objects:v23 count:16];
    if (v11)
    {
      v12 = v11;
      v13 = *v20;
      do
      {
        for (i = 0; i != v12; ++i)
        {
          if (*v20 != v13)
          {
            objc_enumerationMutation(v10);
          }

          v15 = [*(*(&v19 + 1) + 8 * i) URLByAppendingPathComponent:@"Accounts" isDirectory:{1, v19}];
          v16 = [v15 URLByAppendingPathComponent:v5 isDirectory:1];
          [v6 addObject:v16];
        }

        v12 = [v10 countByEnumeratingWithState:&v19 objects:v23 count:16];
      }

      while (v12);
    }
  }

  else
  {
    v10 = _ACLogSystem();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      [ACPluginLoader _accountsPluginDirectoryURLs:v10 inAppleInternal:?];
    }
  }

  v17 = *MEMORY[0x1E69E9840];

  return v6;
}

+ (id)_validatedBundleAtURL:(id)a3
{
  v26 = *MEMORY[0x1E69E9840];
  v3 = a3;
  v4 = [v3 lastPathComponent];
  v5 = [v4 hasSuffix:@"bundle"];

  if (!v5)
  {
    v12 = 0;
    goto LABEL_22;
  }

  v23 = 0;
  v6 = *MEMORY[0x1E695DB78];
  v22 = 0;
  v7 = [v3 getResourceValue:&v23 forKey:v6 error:&v22];
  v8 = v23;
  v9 = v22;
  if ((v7 & 1) == 0)
  {
    v11 = _ACLogSystem();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      +[ACPluginLoader _validatedBundleAtURL:];
    }

    v12 = 0;
    goto LABEL_21;
  }

  if ([v8 BOOLValue])
  {
    goto LABEL_4;
  }

  v21 = 0;
  v13 = *MEMORY[0x1E695DBC8];
  v20 = 0;
  v14 = [v3 getResourceValue:&v21 forKey:v13 error:&v20];
  v15 = v21;

  v16 = v20;
  if (v14)
  {
    if ([v15 BOOLValue])
    {
      v8 = v15;
      v9 = v16;
LABEL_4:
      v10 = [MEMORY[0x1E696AAE8] bundleWithURL:v3];
      v11 = v10;
      if (v10)
      {
        v11 = v10;
        v12 = v11;
      }

      else
      {
        v17 = _ACLogSystem();
        if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 138412290;
          v25 = v3;
          _os_log_impl(&dword_1AC3CD000, v17, OS_LOG_TYPE_DEFAULT, "Couldn't create plugin at %@", buf, 0xCu);
        }

        v12 = 0;
      }

      goto LABEL_21;
    }

    v11 = _ACLogSystem();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEBUG))
    {
      [(ACPluginLoader *)v3 _validatedBundleAtURL:v11];
    }
  }

  else
  {
    v11 = _ACLogSystem();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      +[ACPluginLoader _validatedBundleAtURL:];
    }
  }

  v12 = 0;
  v9 = v16;
  v8 = v15;
LABEL_21:

LABEL_22:
  v18 = *MEMORY[0x1E69E9840];

  return v12;
}

uint64_t __67__ACPluginLoader__populatePluginBundles_atSubpath_inAppleInternal___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v14 = *MEMORY[0x1E69E9840];
  v5 = a2;
  v6 = a3;
  if ((*(a1 + 32) & 1) == 0)
  {
    v7 = _ACLogSystem();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      v10 = 138412546;
      v11 = v5;
      v12 = 2112;
      v13 = v6;
      _os_log_impl(&dword_1AC3CD000, v7, OS_LOG_TYPE_DEFAULT, "Encountered an error while scanning for plugins at %@: %@", &v10, 0x16u);
    }
  }

  v8 = *MEMORY[0x1E69E9840];
  return 1;
}

+ (id)pluginBundlesAtSubpath:(id)a3
{
  v4 = a3;
  v5 = objc_alloc_init(MEMORY[0x1E695DFA8]);
  [a1 _populatePluginBundles:v5 atSubpath:v4 inAppleInternal:0];
  if (ACIsInternal())
  {
    v6 = _ACLogSystem();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEBUG))
    {
      [ACPluginLoader pluginBundlesAtSubpath:v6];
    }

    [a1 _populatePluginBundles:v5 atSubpath:v4 inAppleInternal:1];
  }

  v7 = [v5 copy];

  return v7;
}

+ (id)pluginWithName:(id)a3 inSubpath:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [a1 _pluginWithName:v6 inSubpath:v7 inAppleInternal:0];
  if (!v8)
  {
    if (ACIsInternal())
    {
      v9 = _ACLogSystem();
      if (os_log_type_enabled(v9, OS_LOG_TYPE_DEBUG))
      {
        +[ACPluginLoader pluginWithName:inSubpath:];
      }

      v8 = [a1 _pluginWithName:v6 inSubpath:v7 inAppleInternal:1];
    }

    else
    {
      v8 = 0;
    }
  }

  return v8;
}

+ (void)_validatedBundleAtURL:.cold.1()
{
  v3 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_0_1();
  OUTLINED_FUNCTION_1_2(&dword_1AC3CD000, v0, v1, "Couldn't get value for the directory at %@: %@");
  v2 = *MEMORY[0x1E69E9840];
}

+ (void)_validatedBundleAtURL:(uint64_t)a1 .cold.3(uint64_t a1, NSObject *a2)
{
  v5 = *MEMORY[0x1E69E9840];
  v3 = 138412290;
  v4 = a1;
  _os_log_debug_impl(&dword_1AC3CD000, a2, OS_LOG_TYPE_DEBUG, "Skipping file at %@ because it isn't a directory", &v3, 0xCu);
  v2 = *MEMORY[0x1E69E9840];
}

+ (void)pluginWithName:inSubpath:.cold.1()
{
  v3 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_0_1();
  _os_log_debug_impl(&dword_1AC3CD000, v0, OS_LOG_TYPE_DEBUG, "Looking for AppleInternal plugin '%@' at '%@'", v2, 0x16u);
  v1 = *MEMORY[0x1E69E9840];
}

@end