@interface EXOSExtensionEnumerator
+ (void)enumerateExtensionsInDirectoryAtURL:(id)a3 block:(id)a4;
- (EXOSExtensionEnumerator)initWithCacheURLs:(id)a3 paths:(id)a4;
- (id)nextObject;
@end

@implementation EXOSExtensionEnumerator

+ (void)enumerateExtensionsInDirectoryAtURL:(id)a3 block:(id)a4
{
  v48[1] = *MEMORY[0x1E69E9840];
  v5 = a3;
  v6 = a4;
  v48[0] = *MEMORY[0x1E695DB78];
  v7 = [MEMORY[0x1E695DEC8] arrayWithObjects:v48 count:1];
  v8 = [MEMORY[0x1E696AC08] defaultManager];
  v30 = v5;
  v9 = [v8 enumeratorAtURL:v5 includingPropertiesForKeys:v7 options:1 errorHandler:0];

  v42 = 0u;
  v43 = 0u;
  v40 = 0u;
  v41 = 0u;
  obj = v9;
  v10 = [obj countByEnumeratingWithState:&v40 objects:v47 count:16];
  if (v10)
  {
    v11 = v10;
    v12 = *v41;
    v31 = *v41;
    do
    {
      v13 = 0;
      v32 = v11;
      do
      {
        if (*v41 != v12)
        {
          objc_enumerationMutation(obj);
        }

        v14 = *(*(&v40 + 1) + 8 * v13);
        if ([v14 _EX_isDirectory] && (objc_msgSend(v14, "pathExtension"), v15 = objc_claimAutoreleasedReturnValue(), v16 = objc_msgSend(v15, "caseInsensitiveCompare:", @"appex"), v15, !v16))
        {
          v6[2](v6, v14);
        }

        else if (([v14 _EX_isDirectory] & 1) == 0)
        {
          [v14 pathExtension];
          v17 = v35 = v14;
          v18 = [v17 caseInsensitiveCompare:@"appexlist"];

          if (!v18)
          {
            v33 = [MEMORY[0x1E695DF20] dictionaryWithContentsOfURL:v14];
            v19 = [v33 _EX_dictionaryForKey:@"AppExtensions"];
            v20 = [v19 allKeys];

            v21 = _EXRegistrationLog();
            if (os_log_type_enabled(v21, OS_LOG_TYPE_DEBUG))
            {
              *buf = 138543362;
              v46 = v20;
              _os_log_debug_impl(&dword_1847D1000, v21, OS_LOG_TYPE_DEBUG, "Discovered list of App Extension paths '%{public}@'", buf, 0xCu);
            }

            v38 = 0u;
            v39 = 0u;
            v36 = 0u;
            v37 = 0u;
            v22 = v20;
            v23 = [v22 countByEnumeratingWithState:&v36 objects:v44 count:16];
            if (v23)
            {
              v24 = v23;
              v25 = *v37;
              do
              {
                for (i = 0; i != v24; ++i)
                {
                  if (*v37 != v25)
                  {
                    objc_enumerationMutation(v22);
                  }

                  v27 = *(*(&v36 + 1) + 8 * i);
                  objc_opt_class();
                  if (objc_opt_isKindOfClass())
                  {
                    v28 = [MEMORY[0x1E695DFF8] fileURLWithPath:v27 isDirectory:1];
                    v6[2](v6, v28);
                  }

                  else
                  {
                    v28 = _EXRegistrationLog();
                    if (os_log_type_enabled(v28, OS_LOG_TYPE_ERROR))
                    {
                      *buf = 138543362;
                      v46 = v35;
                      _os_log_error_impl(&dword_1847D1000, v28, OS_LOG_TYPE_ERROR, "unexpected class for entry in %{public}@ extension list.", buf, 0xCu);
                    }
                  }
                }

                v24 = [v22 countByEnumeratingWithState:&v36 objects:v44 count:16];
              }

              while (v24);
            }

            v12 = v31;
            v11 = v32;
          }
        }

        ++v13;
      }

      while (v13 != v11);
      v11 = [obj countByEnumeratingWithState:&v40 objects:v47 count:16];
    }

    while (v11);
  }

  v29 = *MEMORY[0x1E69E9840];
}

- (EXOSExtensionEnumerator)initWithCacheURLs:(id)a3 paths:(id)a4
{
  v43 = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = a4;
  v39.receiver = self;
  v39.super_class = EXOSExtensionEnumerator;
  v8 = [(EXOSExtensionEnumerator *)&v39 init];
  v9 = v8;
  if (v8)
  {
    v30 = v8;
    v10 = _EXRegistrationLog();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEBUG))
    {
      [EXOSExtensionEnumerator initWithCacheURLs:paths:];
    }

    v31 = v7;
    v11 = [objc_alloc(MEMORY[0x1E695DFA8]) initWithArray:v7];
    v35 = 0u;
    v36 = 0u;
    v37 = 0u;
    v38 = 0u;
    v32 = v6;
    v12 = v6;
    v13 = [v12 countByEnumeratingWithState:&v35 objects:v42 count:16];
    if (v13)
    {
      v14 = v13;
      v15 = *v36;
      do
      {
        for (i = 0; i != v14; ++i)
        {
          if (*v36 != v15)
          {
            objc_enumerationMutation(v12);
          }

          v17 = *(*(&v35 + 1) + 8 * i);
          if ([v17 _EX_isDirectory])
          {
            v33[0] = MEMORY[0x1E69E9820];
            v33[1] = 3221225472;
            v33[2] = __51__EXOSExtensionEnumerator_initWithCacheURLs_paths___block_invoke;
            v33[3] = &unk_1E6E4E5D8;
            v34 = v11;
            [EXOSExtensionEnumerator enumerateExtensionsInDirectoryAtURL:v17 block:v33];
            v18 = v34;
          }

          else
          {
            v18 = [MEMORY[0x1E695DF20] dictionaryWithContentsOfURL:v17];
            v19 = [v18 _EX_objectForKey:@"AppExtensions" ofClass:objc_opt_class()];
            v20 = [v19 allKeys];

            v21 = _EXRegistrationLog();
            if (os_log_type_enabled(v21, OS_LOG_TYPE_DEBUG))
            {
              *buf = 138543362;
              v41 = v20;
              _os_log_debug_impl(&dword_1847D1000, v21, OS_LOG_TYPE_DEBUG, "Discovered cached App Extension paths '%{public}@'", buf, 0xCu);
            }

            v22 = [MEMORY[0x1E696AE18] predicateWithBlock:&__block_literal_global_429];
            v23 = [v20 filteredArrayUsingPredicate:v22];

            [v11 addObjectsFromArray:v23];
          }
        }

        v14 = [v12 countByEnumeratingWithState:&v35 objects:v42 count:16];
      }

      while (v14);
    }

    v24 = [v11 copy];
    v9 = v30;
    extensionPaths = v30->_extensionPaths;
    v30->_extensionPaths = v24;

    v26 = [(NSArray *)v30->_extensionPaths objectEnumerator];
    extensionPathsEnumerator = v30->_extensionPathsEnumerator;
    v30->_extensionPathsEnumerator = v26;

    v7 = v31;
    v6 = v32;
  }

  v28 = *MEMORY[0x1E69E9840];
  return v9;
}

void __51__EXOSExtensionEnumerator_initWithCacheURLs_paths___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = _EXRegistrationLog();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEBUG))
  {
    __51__EXOSExtensionEnumerator_initWithCacheURLs_paths___block_invoke_cold_1();
  }

  v5 = *(a1 + 32);
  v6 = [v3 path];
  [v5 addObject:v6];
}

uint64_t __51__EXOSExtensionEnumerator_initWithCacheURLs_paths___block_invoke_426(uint64_t a1, void *a2)
{
  v9 = *MEMORY[0x1E69E9840];
  v2 = a2;
  if ([v2 hasPrefix:@"/System/Library/Frameworks"] & 1) != 0 || (objc_msgSend(v2, "hasPrefix:", @"/System/Library/PrivateFrameworks"))
  {
    v3 = 1;
  }

  else
  {
    v4 = _EXRegistrationLog();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      v7 = 138543362;
      v8 = v2;
    }

    v3 = 0;
  }

  v5 = *MEMORY[0x1E69E9840];
  return v3;
}

- (id)nextObject
{
  v2 = [(NSEnumerator *)self->_extensionPathsEnumerator nextObject];
  if (v2)
  {
    v3 = [MEMORY[0x1E695DFF8] fileURLWithPath:v2 isDirectory:1];
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (void)initWithCacheURLs:paths:.cold.1()
{
  v3 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_6();
  OUTLINED_FUNCTION_1_1(&dword_1847D1000, v0, v1, "Looking for caches at URLs: %{public}@ with know paths: %{public}@");
  v2 = *MEMORY[0x1E69E9840];
}

void __51__EXOSExtensionEnumerator_initWithCacheURLs_paths___block_invoke_cold_1()
{
  v8 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_6();
  OUTLINED_FUNCTION_3(&dword_1847D1000, v0, v1, "Discovered App Extension at '%{public}@'", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x1E69E9840];
}

@end