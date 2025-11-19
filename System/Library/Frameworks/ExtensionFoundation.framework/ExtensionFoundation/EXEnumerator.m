@interface EXEnumerator
+ (id)_extensionLiveEnumerator;
+ (id)_extensionPointLiveEnumerator;
+ (id)config;
+ (id)extensionCacheFileURLs;
+ (id)extensionInstallDirectoryURLs;
+ (id)extensionPointCacheFileURLs;
+ (id)extensionPointDefinitionDirectoryURLs;
+ (id)extensionPointDefinitionEnumerator;
+ (id)extensionPointDefinitionEnumeratorWithSDKDictionary:(id)a3;
+ (id)extensionURLEnumerator;
@end

@implementation EXEnumerator

+ (id)config
{
  if (config_onceToken != -1)
  {
    +[EXEnumerator config];
  }

  v3 = config_config;

  return v3;
}

uint64_t __22__EXEnumerator_config__block_invoke()
{
  config_config = objc_opt_new();

  return MEMORY[0x1EEE66BB8]();
}

+ (id)extensionCacheFileURLs
{
  v2 = objc_opt_new();
  v3 = objc_autoreleasePoolPush();
  v4 = [objc_opt_class() config];
  v5 = [v4 xpcExtensionsCache];

  v6 = [MEMORY[0x1E696AC08] defaultManager];
  v7 = [v5 path];
  v8 = [v6 fileExistsAtPath:v7];

  if (v8)
  {
    [v2 addObject:v5];
  }

  objc_autoreleasePoolPop(v3);
  v9 = [v2 copy];

  return v9;
}

+ (id)extensionPointCacheFileURLs
{
  v2 = objc_opt_new();
  v3 = objc_autoreleasePoolPush();
  v4 = [objc_opt_class() config];
  v5 = [v4 xpcExtensionPointsCache];

  v6 = [MEMORY[0x1E696AC08] defaultManager];
  v7 = [v5 path];
  v8 = [v6 fileExistsAtPath:v7];

  if (v8)
  {
    [v2 addObject:v5];
  }

  objc_autoreleasePoolPop(v3);
  v9 = [v2 copy];

  return v9;
}

+ (id)extensionPointDefinitionDirectoryURLs
{
  v23[1] = *MEMORY[0x1E69E9840];
  v3 = objc_opt_new();
  v4 = +[_EXDefaults sharedInstance];
  v5 = [v4 supportExtensionKitConfigPath];

  if (v5)
  {
    v6 = [a1 config];
    v7 = [v6 rootURL];
    v8 = [v7 URLByAppendingPathComponent:@"System/Library/ExtensionKit" isDirectory:1];
    v9 = [v8 URLByAppendingPathComponent:@"ExtensionPoints" isDirectory:1];
    v23[0] = v9;
    v10 = [MEMORY[0x1E695DEC8] arrayWithObjects:v23 count:1];
    [v3 addObjectsFromArray:v10];

    v11 = +[_EXDefaults sharedInstance];
    LODWORD(v7) = [v11 allowsAppleInternalComponents];

    if (v7)
    {
      v12 = [a1 config];
      v13 = [v12 rootURL];
      v14 = [v13 URLByAppendingPathComponent:@"AppleInternal/System/Library/ExtensionKit" isDirectory:1];
      v15 = [v14 URLByAppendingPathComponent:@"ExtensionPoints" isDirectory:1];
      [v3 addObject:v15];

      v16 = [a1 config];
      v17 = [v16 rootURL];
      v18 = [v17 URLByAppendingPathComponent:@"AppleInternal/Library/ExtensionKit" isDirectory:1];
      v19 = [v18 URLByAppendingPathComponent:@"ExtensionPoints" isDirectory:1];
      [v3 addObject:v19];
    }
  }

  v20 = [v3 copy];

  v21 = *MEMORY[0x1E69E9840];

  return v20;
}

+ (id)extensionInstallDirectoryURLs
{
  v28[2] = *MEMORY[0x1E69E9840];
  v3 = objc_opt_new();
  v4 = +[_EXDefaults sharedInstance];
  v5 = [v4 supportExtensionKitConfigPath];

  if (v5)
  {
    v6 = [a1 config];
    v7 = [v6 rootURL];
    v8 = [v7 URLByAppendingPathComponent:@"System/Library/ExtensionKit" isDirectory:1];
    v9 = [v8 URLByAppendingPathComponent:@"Extensions"];
    v28[0] = v9;
    [a1 config];
    v10 = v27 = a1;
    v11 = [v10 rootURL];
    v12 = [v11 URLByAppendingPathComponent:@"/System/Cryptexes/OS/System/Library/ExtensionKit" isDirectory:1];
    v13 = [v12 URLByAppendingPathComponent:@"Extensions"];
    v28[1] = v13;
    v14 = [MEMORY[0x1E695DEC8] arrayWithObjects:v28 count:2];
    [v3 addObjectsFromArray:v14];

    v15 = +[_EXDefaults sharedInstance];
    LODWORD(v6) = [v15 allowsAppleInternalComponents];

    if (v6)
    {
      v16 = [v27 config];
      v17 = [v16 rootURL];
      v18 = [v17 URLByAppendingPathComponent:@"AppleInternal/System/Library/ExtensionKit" isDirectory:1];
      v19 = [v18 URLByAppendingPathComponent:@"Extensions"];
      [v3 addObject:v19];

      v20 = [v27 config];
      v21 = [v20 rootURL];
      v22 = [v21 URLByAppendingPathComponent:@"AppleInternal/Library/ExtensionKit" isDirectory:1];
      v23 = [v22 URLByAppendingPathComponent:@"Extensions"];
      [v3 addObject:v23];
    }
  }

  v24 = [v3 copy];

  v25 = *MEMORY[0x1E69E9840];

  return v24;
}

+ (id)extensionURLEnumerator
{
  v2 = _EXRegistrationLog();
  v3 = os_signpost_id_generate(v2);

  v4 = _EXRegistrationLog();
  v5 = v4;
  if (v3 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v4))
  {
    *buf = 0;
    _os_signpost_emit_with_name_impl(&dword_1847D1000, v5, OS_SIGNPOST_INTERVAL_BEGIN, v3, "extensionURLEnumerator", "", buf, 2u);
  }

  v6 = [objc_opt_class() extensionCacheFileURLs];
  if ([v6 count])
  {
    v7 = [objc_opt_class() extensionInstallDirectoryURLs];
    v8 = [v6 arrayByAddingObjectsFromArray:v7];

    v9 = [[EXOSExtensionEnumerator alloc] initWithCacheURLs:v8];
    v6 = v8;
  }

  else
  {
    v10 = _EXRegistrationLog();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
    {
      *v15 = 0;
      _os_log_impl(&dword_1847D1000, v10, OS_LOG_TYPE_DEFAULT, "Failed to load or create cache extension/extension point info.", v15, 2u);
    }

    v9 = [objc_opt_class() _extensionLiveEnumerator];
  }

  v11 = _EXRegistrationLog();
  v12 = v11;
  if (v3 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v11))
  {
    *v14 = 0;
    _os_signpost_emit_with_name_impl(&dword_1847D1000, v12, OS_SIGNPOST_INTERVAL_END, v3, "extensionURLEnumerator", "", v14, 2u);
  }

  return v9;
}

+ (id)_extensionLiveEnumerator
{
  v2 = _EXRegistrationLog();
  v3 = os_signpost_id_generate(v2);

  v4 = _EXRegistrationLog();
  v5 = v4;
  if (v3 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v4))
  {
    *buf = 0;
    _os_signpost_emit_with_name_impl(&dword_1847D1000, v5, OS_SIGNPOST_INTERVAL_BEGIN, v3, "_extensionLiveEnumerator", "", buf, 2u);
  }

  v6 = [objc_opt_class() config];
  v7 = [v6 rootURL];

  v8 = [[EXFrameworkScanner alloc] initWithSourceURL:v7];
  [(EXFrameworkScanner *)v8 start];
  v9 = [(EXFrameworkScanner *)v8 extensionPaths];
  v10 = +[_EXDefaults sharedInstance];
  v11 = [v10 appleInternal];

  if (v11)
  {
    v12 = [(EXFrameworkScanner *)v8 appleInternalExtensionPaths];
    v13 = [v9 arrayByAddingObjectsFromArray:v12];

    v9 = v13;
  }

  v14 = [EXOSExtensionEnumerator alloc];
  v15 = [objc_opt_class() extensionInstallDirectoryURLs];
  v16 = [(EXOSExtensionEnumerator *)v14 initWithCacheURLs:v15 paths:v9];

  v17 = _EXRegistrationLog();
  v18 = v17;
  if (v3 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v17))
  {
    *v20 = 0;
    _os_signpost_emit_with_name_impl(&dword_1847D1000, v18, OS_SIGNPOST_INTERVAL_END, v3, "_extensionLiveEnumerator", "", v20, 2u);
  }

  return v16;
}

+ (id)extensionPointDefinitionEnumerator
{
  v2 = _EXRegistrationLog();
  v3 = os_signpost_id_generate(v2);

  v4 = _EXRegistrationLog();
  v5 = v4;
  if (v3 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v4))
  {
    *buf = 0;
    _os_signpost_emit_with_name_impl(&dword_1847D1000, v5, OS_SIGNPOST_INTERVAL_BEGIN, v3, "extensionPointDefinitionEnumerator", "", buf, 2u);
  }

  v6 = [objc_opt_class() extensionPointCacheFileURLs];
  if ([v6 count])
  {
    v7 = [objc_opt_class() extensionPointDefinitionDirectoryURLs];
    v8 = [v6 arrayByAddingObjectsFromArray:v7];

    v9 = [EXExtensionPointEnumerator alloc];
    v10 = [objc_opt_class() config];
    v11 = [(EXExtensionPointEnumerator *)v9 initWithCacheURLs:v8 config:v10];

    v6 = v8;
  }

  else
  {
    v12 = _EXRegistrationLog();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
    {
      *v17 = 0;
      _os_log_impl(&dword_1847D1000, v12, OS_LOG_TYPE_DEFAULT, "Failed to load or create cache extension/extension point info.", v17, 2u);
    }

    v11 = [objc_opt_class() _extensionPointLiveEnumerator];
  }

  v13 = _EXRegistrationLog();
  v14 = v13;
  if (v3 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v13))
  {
    *v16 = 0;
    _os_signpost_emit_with_name_impl(&dword_1847D1000, v14, OS_SIGNPOST_INTERVAL_END, v3, "extensionPointDefinitionEnumerator", "", v16, 2u);
  }

  return v11;
}

+ (id)_extensionPointLiveEnumerator
{
  v2 = _EXRegistrationLog();
  v3 = os_signpost_id_generate(v2);

  v4 = _EXRegistrationLog();
  v5 = v4;
  if (v3 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v4))
  {
    *buf = 0;
    _os_signpost_emit_with_name_impl(&dword_1847D1000, v5, OS_SIGNPOST_INTERVAL_BEGIN, v3, "_extensionPointLiveEnumerator", "", buf, 2u);
  }

  v6 = [objc_opt_class() config];
  v7 = [v6 rootURL];

  v8 = [[EXFrameworkScanner alloc] initWithSourceURL:v7];
  [(EXFrameworkScanner *)v8 start];
  v9 = [(EXFrameworkScanner *)v8 combinedExtensionSDK];
  v10 = +[_EXDefaults sharedInstance];
  v11 = [v10 allowsAppleInternalComponents];

  if (v11)
  {
    v12 = [(EXFrameworkScanner *)v8 combinedAppleInternalExtensionSDK];
    v13 = [v9 _EX_dictionaryBySettingValuesForKeysWithDictionary:v12];

    v9 = v13;
  }

  v14 = [objc_opt_class() extensionPointDefinitionDirectoryURLs];
  v15 = [EXExtensionPointEnumerator alloc];
  v16 = [objc_opt_class() config];
  v17 = [(EXExtensionPointEnumerator *)v15 initWithSDKDictionary:v9 urls:v14 config:v16];

  v18 = _EXRegistrationLog();
  v19 = v18;
  if (v3 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v18))
  {
    *v21 = 0;
    _os_signpost_emit_with_name_impl(&dword_1847D1000, v19, OS_SIGNPOST_INTERVAL_END, v3, "_extensionPointLiveEnumerator", "", v21, 2u);
  }

  return v17;
}

+ (id)extensionPointDefinitionEnumeratorWithSDKDictionary:(id)a3
{
  v3 = a3;
  v4 = [EXExtensionPointEnumerator alloc];
  v5 = [objc_opt_class() config];
  v6 = [(EXExtensionPointEnumerator *)v4 initWithSDKDictionary:v3 config:v5];

  return v6;
}

@end