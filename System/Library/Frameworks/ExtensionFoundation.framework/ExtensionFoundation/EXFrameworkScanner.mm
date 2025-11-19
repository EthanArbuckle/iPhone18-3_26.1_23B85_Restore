@interface EXFrameworkScanner
+ (id)frameworkPaths;
+ (id)rootURL;
- (BOOL)isAppleInternalURL:(id)a3;
- (BOOL)isCatalystSupportURL:(id)a3;
- (EXFrameworkScanner)initWithSourceURL:(id)a3;
- (NSArray)appleInternalExtensionPaths;
- (NSArray)extensionPaths;
- (NSDictionary)combinedAppleInternalExtensionSDK;
- (NSDictionary)combinedExtensionSDK;
- (void)enumerateAppexptAtURL:(id)a3 block:(id)a4;
- (void)enumerateBundlesWithPathExtension:(id)a3 atURL:(id)a4 block:(id)a5;
- (void)enumerateFrameworksBundlesWithFrameworkURL:(id)a3 block:(id)a4;
- (void)main;
- (void)processExtensionSDK:(id)a3 declaringURL:(id)a4;
- (void)processExtensionSDKFromBundle:(__CFBundle *)a3;
- (void)processExtensionSDKFromFile:(id)a3;
- (void)processExtensionsFromBundle:(__CFBundle *)a3;
- (void)processExtensionsInDirectory:(id)a3;
@end

@implementation EXFrameworkScanner

+ (id)frameworkPaths
{
  if (frameworkPaths_onceToken != -1)
  {
    +[EXFrameworkScanner frameworkPaths];
  }

  v3 = frameworkPaths_frameworkPaths;

  return v3;
}

void __36__EXFrameworkScanner_frameworkPaths__block_invoke()
{
  v0 = +[_EXDefaults sharedInstance];
  v1 = [v0 allowsAppleInternalComponents];

  v2 = &unk_1EF29DE00;
  v3 = frameworkPaths_frameworkPaths;
  if (v1)
  {
    v2 = &unk_1EF29DDE8;
  }

  frameworkPaths_frameworkPaths = v2;
}

+ (id)rootURL
{
  if (rootURL_onceToken != -1)
  {
    +[EXFrameworkScanner rootURL];
  }

  v3 = rootURL_rootURL;

  return v3;
}

uint64_t __29__EXFrameworkScanner_rootURL__block_invoke()
{
  rootURL_rootURL = [MEMORY[0x1E695DFF8] fileURLWithPath:@"/"];

  return MEMORY[0x1EEE66BB8]();
}

- (EXFrameworkScanner)initWithSourceURL:(id)a3
{
  v5 = a3;
  v17.receiver = self;
  v17.super_class = EXFrameworkScanner;
  v6 = [(EXFrameworkScanner *)&v17 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_sourceURL, a3);
    v8 = objc_opt_new();
    combinedExtensionSDK = v7->__combinedExtensionSDK;
    v7->__combinedExtensionSDK = v8;

    v10 = objc_opt_new();
    combinedAppleInternalExtensionSDK = v7->__combinedAppleInternalExtensionSDK;
    v7->__combinedAppleInternalExtensionSDK = v10;

    v12 = objc_opt_new();
    extensions = v7->__extensions;
    v7->__extensions = v12;

    v14 = objc_opt_new();
    appleInternalExtensions = v7->__appleInternalExtensions;
    v7->__appleInternalExtensions = v14;
  }

  return v7;
}

- (NSDictionary)combinedExtensionSDK
{
  v2 = [(NSMutableDictionary *)self->__combinedExtensionSDK copy];

  return v2;
}

- (NSDictionary)combinedAppleInternalExtensionSDK
{
  v2 = [(NSMutableDictionary *)self->__combinedAppleInternalExtensionSDK copy];

  return v2;
}

- (NSArray)extensionPaths
{
  v2 = [(NSMutableArray *)self->__extensions copy];

  return v2;
}

- (NSArray)appleInternalExtensionPaths
{
  v2 = [(NSMutableArray *)self->__appleInternalExtensions copy];

  return v2;
}

- (BOOL)isCatalystSupportURL:(id)a3
{
  v4 = a3;
  v5 = [(EXFrameworkScanner *)self sourceURL];
  v6 = [v5 URLByAppendingPathComponent:@"System/iOSSupport"];

  v7 = [v4 path];

  v8 = [v7 lowercaseString];
  v9 = [v6 path];
  v10 = [v9 lowercaseString];
  v11 = [v8 hasPrefix:v10];

  return v11;
}

- (BOOL)isAppleInternalURL:(id)a3
{
  v4 = a3;
  v5 = [(EXFrameworkScanner *)self sourceURL];
  v6 = [v5 URLByAppendingPathComponent:@"AppleInternal"];

  v7 = [v4 path];
  v8 = [v7 lowercaseString];
  v9 = [v6 path];
  v10 = [v9 lowercaseString];
  v11 = [v8 hasPrefix:v10];

  if (v11)
  {
    v12 = 1;
  }

  else
  {
    v13 = [(EXFrameworkScanner *)self sourceURL];
    v14 = [v13 URLByAppendingPathComponent:@"System/iOSSupport/AppleInternal"];

    v15 = [v4 path];
    v16 = [v15 lowercaseString];
    v17 = [v14 path];
    v18 = [v17 lowercaseString];
    v12 = [v16 hasPrefix:v18];
  }

  return v12;
}

- (void)enumerateBundlesWithPathExtension:(id)a3 atURL:(id)a4 block:(id)a5
{
  v44[2] = *MEMORY[0x1E69E9840];
  v7 = a3;
  v8 = a4;
  v34 = a5;
  v42 = 0;
  v9 = *MEMORY[0x1E695DBC8];
  v10 = [v8 getResourceValue:&v42 forKey:*MEMORY[0x1E695DBC8] error:0];
  v11 = v42;
  if (v10)
  {
    v12 = v11 == 0;
  }

  else
  {
    v12 = 1;
  }

  v32 = v11;
  if (!v12 && [v11 BOOLValue])
  {
    v13 = [v8 URLByResolvingSymlinksInPath];

    v8 = v13;
  }

  v35 = *MEMORY[0x1E695DB78];
  v44[0] = *MEMORY[0x1E695DB78];
  v44[1] = v9;
  v14 = [MEMORY[0x1E695DEC8] arrayWithObjects:v44 count:2];
  v15 = [MEMORY[0x1E696AC08] defaultManager];
  v33 = v8;
  v31 = v14;
  v16 = [v15 enumeratorAtURL:v8 includingPropertiesForKeys:v14 options:1 errorHandler:0];

  v40 = 0u;
  v41 = 0u;
  v38 = 0u;
  v39 = 0u;
  v17 = v16;
  v18 = [v17 countByEnumeratingWithState:&v38 objects:v43 count:16];
  if (v18)
  {
    v19 = v18;
    v20 = *v39;
    while (2)
    {
      for (i = 0; i != v19; ++i)
      {
        if (*v39 != v20)
        {
          objc_enumerationMutation(v17);
        }

        v22 = *(*(&v38 + 1) + 8 * i);
        v23 = objc_autoreleasePoolPush();
        v24 = [v22 lastPathComponent];
        v25 = [v24 pathExtension];

        if (v25 && ![v25 caseInsensitiveCompare:v7])
        {
          v37 = 0;
          v26 = [v22 getResourceValue:&v37 forKey:v35 error:0];
          v27 = v37;
          v28 = v27;
          if (v26)
          {
            v29 = v27 == 0;
          }

          else
          {
            v29 = 1;
          }

          if (!v29)
          {
            if ([v27 BOOLValue])
            {
              v36 = 0;
              v34[2](v34, v22, &v36);
              if (v36)
              {

                objc_autoreleasePoolPop(v23);
                goto LABEL_25;
              }
            }
          }
        }

        objc_autoreleasePoolPop(v23);
      }

      v19 = [v17 countByEnumeratingWithState:&v38 objects:v43 count:16];
      if (v19)
      {
        continue;
      }

      break;
    }
  }

LABEL_25:

  v30 = *MEMORY[0x1E69E9840];
}

- (void)enumerateAppexptAtURL:(id)a3 block:(id)a4
{
  v41[2] = *MEMORY[0x1E69E9840];
  v5 = a3;
  v31 = a4;
  v39 = 0;
  v6 = *MEMORY[0x1E695DBC8];
  v7 = [v5 getResourceValue:&v39 forKey:*MEMORY[0x1E695DBC8] error:0];
  v8 = v39;
  if (v7)
  {
    v9 = v8 == 0;
  }

  else
  {
    v9 = 1;
  }

  v29 = v8;
  if (!v9 && [v8 BOOLValue])
  {
    v10 = [v5 URLByResolvingSymlinksInPath];

    v5 = v10;
  }

  v32 = *MEMORY[0x1E695DBB8];
  v41[0] = *MEMORY[0x1E695DBB8];
  v41[1] = v6;
  v11 = [MEMORY[0x1E695DEC8] arrayWithObjects:v41 count:2];
  v12 = [MEMORY[0x1E696AC08] defaultManager];
  v30 = v5;
  v28 = v11;
  v13 = [v12 enumeratorAtURL:v5 includingPropertiesForKeys:v11 options:1 errorHandler:0];

  v37 = 0u;
  v38 = 0u;
  v35 = 0u;
  v36 = 0u;
  v14 = v13;
  v15 = [v14 countByEnumeratingWithState:&v35 objects:v40 count:16];
  if (v15)
  {
    v16 = v15;
    v17 = *v36;
    while (2)
    {
      for (i = 0; i != v16; ++i)
      {
        if (*v36 != v17)
        {
          objc_enumerationMutation(v14);
        }

        v19 = *(*(&v35 + 1) + 8 * i);
        v20 = objc_autoreleasePoolPush();
        v21 = [v19 lastPathComponent];
        v22 = [v21 pathExtension];

        if (v22 && ![v22 caseInsensitiveCompare:@"appexpt"])
        {
          v34 = 0;
          v23 = [v19 getResourceValue:&v34 forKey:v32 error:0];
          v24 = v34;
          v25 = v24;
          if (v23)
          {
            v26 = v24 == 0;
          }

          else
          {
            v26 = 1;
          }

          if (!v26)
          {
            if ([v24 BOOLValue])
            {
              v33 = 0;
              v31[2](v31, v19, &v33);
              if (v33)
              {

                objc_autoreleasePoolPop(v20);
                goto LABEL_25;
              }
            }
          }
        }

        objc_autoreleasePoolPop(v20);
      }

      v16 = [v14 countByEnumeratingWithState:&v35 objects:v40 count:16];
      if (v16)
      {
        continue;
      }

      break;
    }
  }

LABEL_25:

  v27 = *MEMORY[0x1E69E9840];
}

- (void)enumerateFrameworksBundlesWithFrameworkURL:(id)a3 block:(id)a4
{
  v23 = *MEMORY[0x1E69E9840];
  v4 = a4;
  Unique = _CFBundleCreateUnique();
  v21 = 0;
  if (Unique)
  {
    v6 = Unique;
    v4[2](v4, Unique, &v21);
    if (v21)
    {
      v7 = MEMORY[0x1E695E0F0];
    }

    else
    {
      v7 = CFBundleCopyResourceURLsOfType(v6, @"framework", @"Frameworks");
    }

    CFRelease(v6);
  }

  else
  {
    v7 = MEMORY[0x1E695E0F0];
  }

  v19 = 0u;
  v20 = 0u;
  v17 = 0u;
  v18 = 0u;
  v8 = v7;
  v9 = [(__CFArray *)v8 countByEnumeratingWithState:&v17 objects:v22 count:16];
  if (v9)
  {
    v10 = v9;
    v11 = *v18;
LABEL_9:
    v12 = 0;
    while (1)
    {
      if (*v18 != v11)
      {
        objc_enumerationMutation(v8);
      }

      v13 = *(*(&v17 + 1) + 8 * v12);
      v14 = _CFBundleCreateUnique();
      if (v14)
      {
        v15 = v14;
        v4[2](v4, v14, &v21);
        CFRelease(v15);
      }

      if (v21)
      {
        break;
      }

      if (v10 == ++v12)
      {
        v10 = [(__CFArray *)v8 countByEnumeratingWithState:&v17 objects:v22 count:16];
        if (v10)
        {
          goto LABEL_9;
        }

        break;
      }
    }
  }

  v16 = *MEMORY[0x1E69E9840];
}

- (void)processExtensionSDKFromBundle:(__CFBundle *)a3
{
  v5 = [(__CFDictionary *)CFBundleGetInfoDictionary(a3) objectForKey:@"NSExtensionSDK"];
  v6 = CFBundleCopyBundleURL(a3);
  if (v5)
  {
    v7 = _EXRegistrationLog();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
    {
      [EXFrameworkScanner processExtensionSDKFromBundle:];
    }

    [(EXFrameworkScanner *)self processExtensionSDK:v5 declaringURL:v6];
  }
}

- (void)processExtensionSDKFromFile:(id)a3
{
  v4 = a3;
  v10 = 0;
  v5 = [MEMORY[0x1E695DEF0] dataWithContentsOfURL:v4 options:1 error:&v10];
  v6 = v10;
  if (!v5)
  {
    v7 = _EXRegistrationLog();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      [EXFrameworkScanner processExtensionSDKFromFile:];
    }

    goto LABEL_11;
  }

  v9 = 0;
  v7 = [MEMORY[0x1E696AE40] propertyListWithData:v5 options:0 format:0 error:&v9];
  v8 = v9;

  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    if (v8 || !v7)
    {
      v6 = v8;
    }

    else
    {
      v6 = [MEMORY[0x1E696ABC0] _EX_parameterError];
    }

LABEL_11:

    v8 = v6;
    goto LABEL_12;
  }

  if (v7)
  {
    [(EXFrameworkScanner *)self processExtensionSDK:v7 declaringURL:v4];
    goto LABEL_14;
  }

LABEL_12:
  v7 = _EXRegistrationLog();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
  {
    [EXFrameworkScanner processExtensionSDKFromFile:];
  }

LABEL_14:
}

- (void)processExtensionSDK:(id)a3 declaringURL:(id)a4
{
  v6 = a3;
  v7 = a4;
  active_platform = dyld_get_active_platform();
  v9 = [(EXFrameworkScanner *)self isCatalystSupportURL:v7];
  v10 = [(EXFrameworkScanner *)self isAppleInternalURL:v7];
  v11 = [(EXFrameworkScanner *)self _combinedExtensionSDK];
  if (v10)
  {
    v12 = [(EXFrameworkScanner *)self _combinedAppleInternalExtensionSDK];

    v11 = v12;
  }

  v16[0] = MEMORY[0x1E69E9820];
  v16[1] = 3221225472;
  v16[2] = __55__EXFrameworkScanner_processExtensionSDK_declaringURL___block_invoke;
  v16[3] = &unk_1E6E4E478;
  if (v9)
  {
    v13 = 6;
  }

  else
  {
    v13 = active_platform;
  }

  v17 = v7;
  v18 = v11;
  v19 = v13;
  v14 = v11;
  v15 = v7;
  [v6 enumerateKeysAndObjectsUsingBlock:v16];
}

void __55__EXFrameworkScanner_processExtensionSDK_declaringURL___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v27 = *MEMORY[0x1E69E9840];
  v5 = a2;
  v6 = a3;
  v7 = v6;
  if (v5 && v6)
  {
    v8 = _EXRegistrationLog();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
    {
      __55__EXFrameworkScanner_processExtensionSDK_declaringURL___block_invoke_cold_1();
    }

    v9 = [*(a1 + 32) path];
    v10 = [v7 _EX_dictionaryBySettingObject:v9 forKey:@"EXDeclaringPath"];

    v11 = [*(a1 + 40) objectForKeyedSubscript:v5];
    v12 = v11;
    if (v11)
    {
      v13 = v11;
    }

    else
    {
      v13 = objc_opt_new();
    }

    v14 = v13;

    v15 = *(a1 + 48);
    v16 = [v14 objectForKeyedSubscript:@"EXCatalystSDKVariant"];
    v17 = v16;
    if (v15 == 6)
    {

      if (v17)
      {
        v18 = _EXRegistrationLog();
        if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
        {
          v19 = *(a1 + 32);
          v25 = 138543362;
          v26 = v19;
        }
      }

      [v14 setObject:v10 forKeyedSubscript:@"EXCatalystSDKVariant"];
      [*(a1 + 40) setObject:v14 forKeyedSubscript:v5];
      goto LABEL_24;
    }

    v20 = [v14 count];
    if (v17)
    {
      if (v20 <= 1)
      {
        v21 = [v10 mutableCopy];

LABEL_22:
        [v21 setObject:v17 forKeyedSubscript:@"EXCatalystSDKVariant"];
LABEL_23:
        [*(a1 + 40) setObject:v21 forKeyedSubscript:v5];

        v14 = v21;
LABEL_24:

        goto LABEL_25;
      }
    }

    else if (!v20)
    {
      v21 = [v10 mutableCopy];

      goto LABEL_23;
    }

    v22 = _EXRegistrationLog();
    if (os_log_type_enabled(v22, OS_LOG_TYPE_DEFAULT))
    {
      v23 = *(a1 + 32);
      v25 = 138543362;
      v26 = v23;
    }

    v21 = [v10 mutableCopy];
    if (!v17)
    {
      goto LABEL_23;
    }

    goto LABEL_22;
  }

  v10 = v6;
LABEL_25:

  v24 = *MEMORY[0x1E69E9840];
}

- (void)processExtensionsFromBundle:(__CFBundle *)a3
{
  v4 = CFBundleCopyBuiltInPlugInsURL(a3);
  v5 = _EXRegistrationLog();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
  {
    [EXFrameworkScanner processExtensionsFromBundle:v4];
  }

  [(EXFrameworkScanner *)self processExtensionsInDirectory:v4];
}

- (void)processExtensionsInDirectory:(id)a3
{
  v3[0] = MEMORY[0x1E69E9820];
  v3[1] = 3221225472;
  v3[2] = __51__EXFrameworkScanner_processExtensionsInDirectory___block_invoke;
  v3[3] = &unk_1E6E4E4A0;
  v3[4] = self;
  [(EXFrameworkScanner *)self enumerateBundlesWithPathExtension:@"appex" atURL:a3 block:v3];
}

void __51__EXFrameworkScanner_processExtensionsInDirectory___block_invoke(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);
  v4 = a2;
  v5 = [v3 sourceURL];
  v6 = [v5 path];

  v7 = [v4 path];

  v8 = [v7 stringByReplacingOccurrencesOfString:v6 withString:&stru_1EF289F70 options:1 range:{0, objc_msgSend(v6, "length")}];

  v9 = MEMORY[0x1E695DFF8];
  v10 = *(a1 + 32);
  v11 = [objc_opt_class() rootURL];
  v12 = [v9 fileURLWithPath:v8 relativeToURL:v11];

  v13 = [*(a1 + 32) isAppleInternalURL:v12];
  v14 = &OBJC_IVAR___EXFrameworkScanner___extensions;
  if (v13)
  {
    v14 = &OBJC_IVAR___EXFrameworkScanner___appleInternalExtensions;
  }

  v15 = *(*(a1 + 32) + *v14);
  v16 = [v12 path];
  [v15 addObject:v16];

  v17 = _EXRegistrationLog();
  if (os_log_type_enabled(v17, OS_LOG_TYPE_DEBUG))
  {
    __51__EXFrameworkScanner_processExtensionsInDirectory___block_invoke_cold_1();
  }
}

- (void)main
{
  v7 = [a2 path];
  *a1 = 138543362;
  *a3 = v7;
  _os_log_debug_impl(&dword_1847D1000, a4, OS_LOG_TYPE_DEBUG, "Scanning frameworks at '%{public}@'", a1, 0xCu);
}

void __26__EXFrameworkScanner_main__block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __26__EXFrameworkScanner_main__block_invoke_2;
  v6[3] = &unk_1E6E4E4C8;
  v4 = *(a1 + 32);
  v7 = v3;
  v8 = v4;
  v5 = v3;
  [v4 enumerateFrameworksBundlesWithFrameworkURL:v5 block:v6];
}

uint64_t __26__EXFrameworkScanner_main__block_invoke_2(uint64_t a1, uint64_t a2)
{
  v4 = _EXRegistrationLog();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEBUG))
  {
    __26__EXFrameworkScanner_main__block_invoke_2_cold_1(a1);
  }

  [*(a1 + 40) processExtensionSDKFromBundle:a2];
  return [*(a1 + 40) processExtensionsFromBundle:a2];
}

- (void)processExtensionSDKFromBundle:.cold.1()
{
  v8 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_6();
  OUTLINED_FUNCTION_3(&dword_1847D1000, v0, v1, "NSExtensionSDK found in '%{public}@'", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x1E69E9840];
}

- (void)processExtensionSDKFromFile:.cold.1()
{
  v6 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_6();
  v4 = 2114;
  v5 = v0;
  v2 = *MEMORY[0x1E69E9840];
}

- (void)processExtensionSDKFromFile:.cold.2()
{
  v3 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_6();
  v1 = *MEMORY[0x1E69E9840];
}

void __55__EXFrameworkScanner_processExtensionSDK_declaringURL___block_invoke_cold_1()
{
  v8 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_6();
  v6 = *MEMORY[0x1E69E9840];
}

- (void)processExtensionsFromBundle:(void *)a1 .cold.1(void *a1)
{
  v10 = *MEMORY[0x1E69E9840];
  v1 = [a1 path];
  OUTLINED_FUNCTION_6();

  v8 = *MEMORY[0x1E69E9840];
}

void __51__EXFrameworkScanner_processExtensionsInDirectory___block_invoke_cold_1()
{
  v8 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_6();
  v6 = *MEMORY[0x1E69E9840];
}

void __26__EXFrameworkScanner_main__block_invoke_2_cold_1(uint64_t a1)
{
  v10 = *MEMORY[0x1E69E9840];
  v1 = [*(a1 + 32) path];
  OUTLINED_FUNCTION_6();
  OUTLINED_FUNCTION_2_2(&dword_1847D1000, v2, v3, "Processing: %{public}@", v4, v5, v6, v7, v9);

  v8 = *MEMORY[0x1E69E9840];
}

@end