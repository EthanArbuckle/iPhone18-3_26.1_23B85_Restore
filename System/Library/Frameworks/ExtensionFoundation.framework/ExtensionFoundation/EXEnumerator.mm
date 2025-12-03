@interface EXEnumerator
+ (id)_extensionLiveEnumerator;
+ (id)_extensionPointLiveEnumerator;
+ (id)config;
+ (id)extensionCacheFileURLs;
+ (id)extensionInstallDirectoryURLs;
+ (id)extensionPointCacheFileURLs;
+ (id)extensionPointDefinitionDirectoryURLs;
+ (id)extensionPointDefinitionEnumerator;
+ (id)extensionPointDefinitionEnumeratorWithSDKDictionary:(id)dictionary;
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
  config = [objc_opt_class() config];
  xpcExtensionsCache = [config xpcExtensionsCache];

  defaultManager = [MEMORY[0x1E696AC08] defaultManager];
  path = [xpcExtensionsCache path];
  v8 = [defaultManager fileExistsAtPath:path];

  if (v8)
  {
    [v2 addObject:xpcExtensionsCache];
  }

  objc_autoreleasePoolPop(v3);
  v9 = [v2 copy];

  return v9;
}

+ (id)extensionPointCacheFileURLs
{
  v2 = objc_opt_new();
  v3 = objc_autoreleasePoolPush();
  config = [objc_opt_class() config];
  xpcExtensionPointsCache = [config xpcExtensionPointsCache];

  defaultManager = [MEMORY[0x1E696AC08] defaultManager];
  path = [xpcExtensionPointsCache path];
  v8 = [defaultManager fileExistsAtPath:path];

  if (v8)
  {
    [v2 addObject:xpcExtensionPointsCache];
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
  supportExtensionKitConfigPath = [v4 supportExtensionKitConfigPath];

  if (supportExtensionKitConfigPath)
  {
    config = [self config];
    rootURL = [config rootURL];
    v8 = [rootURL URLByAppendingPathComponent:@"System/Library/ExtensionKit" isDirectory:1];
    v9 = [v8 URLByAppendingPathComponent:@"ExtensionPoints" isDirectory:1];
    v23[0] = v9;
    v10 = [MEMORY[0x1E695DEC8] arrayWithObjects:v23 count:1];
    [v3 addObjectsFromArray:v10];

    v11 = +[_EXDefaults sharedInstance];
    LODWORD(rootURL) = [v11 allowsAppleInternalComponents];

    if (rootURL)
    {
      config2 = [self config];
      rootURL2 = [config2 rootURL];
      v14 = [rootURL2 URLByAppendingPathComponent:@"AppleInternal/System/Library/ExtensionKit" isDirectory:1];
      v15 = [v14 URLByAppendingPathComponent:@"ExtensionPoints" isDirectory:1];
      [v3 addObject:v15];

      config3 = [self config];
      rootURL3 = [config3 rootURL];
      v18 = [rootURL3 URLByAppendingPathComponent:@"AppleInternal/Library/ExtensionKit" isDirectory:1];
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
  supportExtensionKitConfigPath = [v4 supportExtensionKitConfigPath];

  if (supportExtensionKitConfigPath)
  {
    config = [self config];
    rootURL = [config rootURL];
    v8 = [rootURL URLByAppendingPathComponent:@"System/Library/ExtensionKit" isDirectory:1];
    v9 = [v8 URLByAppendingPathComponent:@"Extensions"];
    v28[0] = v9;
    [self config];
    v10 = v27 = self;
    rootURL2 = [v10 rootURL];
    v12 = [rootURL2 URLByAppendingPathComponent:@"/System/Cryptexes/OS/System/Library/ExtensionKit" isDirectory:1];
    v13 = [v12 URLByAppendingPathComponent:@"Extensions"];
    v28[1] = v13;
    v14 = [MEMORY[0x1E695DEC8] arrayWithObjects:v28 count:2];
    [v3 addObjectsFromArray:v14];

    v15 = +[_EXDefaults sharedInstance];
    LODWORD(config) = [v15 allowsAppleInternalComponents];

    if (config)
    {
      config2 = [v27 config];
      rootURL3 = [config2 rootURL];
      v18 = [rootURL3 URLByAppendingPathComponent:@"AppleInternal/System/Library/ExtensionKit" isDirectory:1];
      v19 = [v18 URLByAppendingPathComponent:@"Extensions"];
      [v3 addObject:v19];

      config3 = [v27 config];
      rootURL4 = [config3 rootURL];
      v22 = [rootURL4 URLByAppendingPathComponent:@"AppleInternal/Library/ExtensionKit" isDirectory:1];
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

  extensionCacheFileURLs = [objc_opt_class() extensionCacheFileURLs];
  if ([extensionCacheFileURLs count])
  {
    extensionInstallDirectoryURLs = [objc_opt_class() extensionInstallDirectoryURLs];
    v8 = [extensionCacheFileURLs arrayByAddingObjectsFromArray:extensionInstallDirectoryURLs];

    _extensionLiveEnumerator = [[EXOSExtensionEnumerator alloc] initWithCacheURLs:v8];
    extensionCacheFileURLs = v8;
  }

  else
  {
    v10 = _EXRegistrationLog();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
    {
      *v15 = 0;
      _os_log_impl(&dword_1847D1000, v10, OS_LOG_TYPE_DEFAULT, "Failed to load or create cache extension/extension point info.", v15, 2u);
    }

    _extensionLiveEnumerator = [objc_opt_class() _extensionLiveEnumerator];
  }

  v11 = _EXRegistrationLog();
  v12 = v11;
  if (v3 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v11))
  {
    *v14 = 0;
    _os_signpost_emit_with_name_impl(&dword_1847D1000, v12, OS_SIGNPOST_INTERVAL_END, v3, "extensionURLEnumerator", "", v14, 2u);
  }

  return _extensionLiveEnumerator;
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

  config = [objc_opt_class() config];
  rootURL = [config rootURL];

  v8 = [[EXFrameworkScanner alloc] initWithSourceURL:rootURL];
  [(EXFrameworkScanner *)v8 start];
  extensionPaths = [(EXFrameworkScanner *)v8 extensionPaths];
  v10 = +[_EXDefaults sharedInstance];
  appleInternal = [v10 appleInternal];

  if (appleInternal)
  {
    appleInternalExtensionPaths = [(EXFrameworkScanner *)v8 appleInternalExtensionPaths];
    v13 = [extensionPaths arrayByAddingObjectsFromArray:appleInternalExtensionPaths];

    extensionPaths = v13;
  }

  v14 = [EXOSExtensionEnumerator alloc];
  extensionInstallDirectoryURLs = [objc_opt_class() extensionInstallDirectoryURLs];
  v16 = [(EXOSExtensionEnumerator *)v14 initWithCacheURLs:extensionInstallDirectoryURLs paths:extensionPaths];

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

  extensionPointCacheFileURLs = [objc_opt_class() extensionPointCacheFileURLs];
  if ([extensionPointCacheFileURLs count])
  {
    extensionPointDefinitionDirectoryURLs = [objc_opt_class() extensionPointDefinitionDirectoryURLs];
    v8 = [extensionPointCacheFileURLs arrayByAddingObjectsFromArray:extensionPointDefinitionDirectoryURLs];

    v9 = [EXExtensionPointEnumerator alloc];
    config = [objc_opt_class() config];
    _extensionPointLiveEnumerator = [(EXExtensionPointEnumerator *)v9 initWithCacheURLs:v8 config:config];

    extensionPointCacheFileURLs = v8;
  }

  else
  {
    v12 = _EXRegistrationLog();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
    {
      *v17 = 0;
      _os_log_impl(&dword_1847D1000, v12, OS_LOG_TYPE_DEFAULT, "Failed to load or create cache extension/extension point info.", v17, 2u);
    }

    _extensionPointLiveEnumerator = [objc_opt_class() _extensionPointLiveEnumerator];
  }

  v13 = _EXRegistrationLog();
  v14 = v13;
  if (v3 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v13))
  {
    *v16 = 0;
    _os_signpost_emit_with_name_impl(&dword_1847D1000, v14, OS_SIGNPOST_INTERVAL_END, v3, "extensionPointDefinitionEnumerator", "", v16, 2u);
  }

  return _extensionPointLiveEnumerator;
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

  config = [objc_opt_class() config];
  rootURL = [config rootURL];

  v8 = [[EXFrameworkScanner alloc] initWithSourceURL:rootURL];
  [(EXFrameworkScanner *)v8 start];
  combinedExtensionSDK = [(EXFrameworkScanner *)v8 combinedExtensionSDK];
  v10 = +[_EXDefaults sharedInstance];
  allowsAppleInternalComponents = [v10 allowsAppleInternalComponents];

  if (allowsAppleInternalComponents)
  {
    combinedAppleInternalExtensionSDK = [(EXFrameworkScanner *)v8 combinedAppleInternalExtensionSDK];
    v13 = [combinedExtensionSDK _EX_dictionaryBySettingValuesForKeysWithDictionary:combinedAppleInternalExtensionSDK];

    combinedExtensionSDK = v13;
  }

  extensionPointDefinitionDirectoryURLs = [objc_opt_class() extensionPointDefinitionDirectoryURLs];
  v15 = [EXExtensionPointEnumerator alloc];
  config2 = [objc_opt_class() config];
  v17 = [(EXExtensionPointEnumerator *)v15 initWithSDKDictionary:combinedExtensionSDK urls:extensionPointDefinitionDirectoryURLs config:config2];

  v18 = _EXRegistrationLog();
  v19 = v18;
  if (v3 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v18))
  {
    *v21 = 0;
    _os_signpost_emit_with_name_impl(&dword_1847D1000, v19, OS_SIGNPOST_INTERVAL_END, v3, "_extensionPointLiveEnumerator", "", v21, 2u);
  }

  return v17;
}

+ (id)extensionPointDefinitionEnumeratorWithSDKDictionary:(id)dictionary
{
  dictionaryCopy = dictionary;
  v4 = [EXExtensionPointEnumerator alloc];
  config = [objc_opt_class() config];
  v6 = [(EXExtensionPointEnumerator *)v4 initWithSDKDictionary:dictionaryCopy config:config];

  return v6;
}

@end