@interface ATXAssets2
+ (id)dictionaryForClass:(Class)a3;
+ (id)dictionaryForResource:(id)a3 ofType:(id)a4 specifiedABGroup:(id)a5;
+ (id)dictionaryFromLazyPlistForClass:(Class)a3;
+ (id)dictionaryFromLazyPlistWithLegacyPathForClass:(Class)a3;
+ (id)dictionaryWithLegacyPathForClass:(Class)a3;
+ (id)pathForResource:(id)a3 ofType:(id)a4 isDirectory:(BOOL)a5;
+ (id)rawDictionaryForResource:(id)a3 ofType:(id)a4;
+ (id)rawDictionaryUsingMobileAssetsForResource:(id)a3 ofType:(id)a4;
+ (id)rawDictionaryUsingTrialForResource:(id)a3 ofType:(id)a4;
+ (void)addOverridePath:(id)a3 forResource:(id)a4 ofType:(id)a5;
+ (void)clearOverrides;
+ (void)onUpdateRestartThisProcess;
+ (void)updateMobileAssetMetadata;
@end

@implementation ATXAssets2

+ (void)addOverridePath:(id)a3 forResource:(id)a4 ofType:(id)a5
{
  v14 = a3;
  v7 = MEMORY[0x1E69C5D98];
  v8 = a5;
  v9 = a4;
  v10 = [[v7 alloc] initWithFirst:v9 second:v8];

  pthread_mutex_lock(&overridesLock);
  v11 = overrides;
  if (!overrides)
  {
    v12 = objc_opt_new();
    v13 = overrides;
    overrides = v12;

    v11 = overrides;
  }

  [v11 setObject:v14 forKeyedSubscript:v10];
  pthread_mutex_unlock(&overridesLock);
}

+ (void)clearOverrides
{
  pthread_mutex_lock(&overridesLock);
  v2 = overrides;
  overrides = 0;

  pthread_mutex_unlock(&overridesLock);
}

+ (void)onUpdateRestartThisProcess
{
  if (onUpdateRestartThisProcess_onceToken != -1)
  {
    +[ATXAssets2 onUpdateRestartThisProcess];
  }
}

void __40__ATXAssets2_onUpdateRestartThisProcess__block_invoke()
{
  v0 = getAsset();
  if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEBUG))
  {
    __40__ATXAssets2_onUpdateRestartThisProcess__block_invoke_cold_1(v0);
  }

  v1 = [v0 registerUpdateHandler:&__block_literal_global_15_0];
  v2 = +[ATXAssetsABHelper decDeviceId];
  v3 = MEMORY[0x1E69C5D08];
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __40__ATXAssets2_onUpdateRestartThisProcess__block_invoke_2;
  v6[3] = &unk_1E80C0C90;
  v7 = v2;
  v4 = v2;
  [v3 runBlockWhenDeviceIsClassCUnlocked:v6];
  v5 = getTrialAssets();
  [v5 addUpdateHandlerWithBlock:&__block_literal_global_19_3];
}

uint64_t __40__ATXAssets2_onUpdateRestartThisProcess__block_invoke_2(uint64_t a1)
{
  v2 = +[ATXAssetsABHelper decDeviceId];
  v6 = v2;
  if (!v2 || (v3 = [v2 isEqual:*(a1 + 32)], v4 = v6, (v3 & 1) == 0))
  {
    v3 = xpc_transaction_exit_clean();
    v4 = v6;
  }

  return MEMORY[0x1EEE66BB8](v3, v4);
}

+ (id)pathForResource:(id)a3 ofType:(id)a4 isDirectory:(BOOL)a5
{
  v5 = a5;
  v42 = *MEMORY[0x1E69E9840];
  v7 = a3;
  v8 = a4;
  v9 = [objc_alloc(MEMORY[0x1E69C5D98]) initWithFirst:v7 second:v8];
  pthread_mutex_lock(&overridesLock);
  v34 = v9;
  v10 = [overrides objectForKeyedSubscript:v9];
  pthread_mutex_unlock(&overridesLock);
  v11 = [v7 stringByAppendingPathExtension:v8];
  v12 = getAsset();
  v33 = v11;
  v13 = [v12 filesystemPathForAssetDataRelativePath:v11];
  v14 = getTrialAssets();
  if (([v8 isEqualToString:@"mlmodelc"] & 1) != 0 || v5)
  {
    v15 = [v14 directoryPathForTrialResource:{v7, a1}];
    v35 = 0;
    v19 = v13;
    if (v15)
    {
      v20 = [MEMORY[0x1E696AC08] defaultManager];
      v21 = [v20 fileExistsAtPath:v15 isDirectory:&v35];

      v19 = v13;
      if (v21)
      {
        v19 = v13;
        if (v35 == 1)
        {
          v19 = v15;

          v22 = __atxlog_handle_trial_assets();
          if (os_log_type_enabled(v22, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 138412546;
            v37 = v19;
            v38 = 2112;
            v39 = v7;
            _os_log_impl(&dword_1BF549000, v22, OS_LOG_TYPE_DEFAULT, "Using Trial directory path: %@ for resource: %@", buf, 0x16u);
          }
        }
      }
    }
  }

  else
  {
    v15 = [v14 filePathForResource:v7];
    if (v15 && ([MEMORY[0x1E696AC08] defaultManager], v16 = objc_claimAutoreleasedReturnValue(), v17 = objc_msgSend(v16, "fileExistsAtPath:", v15), v16, v17))
    {
      v15 = v15;

      v18 = __atxlog_handle_trial_assets();
      if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138412546;
        v37 = v15;
        v38 = 2112;
        v39 = v7;
        _os_log_impl(&dword_1BF549000, v18, OS_LOG_TYPE_DEFAULT, "Using Trial file path: %@ for resource: %@", buf, 0x16u);
      }

      v19 = v15;
    }

    else
    {
      v19 = v13;
    }
  }

  if (!v19)
  {
    v23 = __atxlog_handle_default();
    if (os_log_type_enabled(v23, OS_LOG_TYPE_FAULT))
    {
      v30 = objc_opt_class();
      v31 = NSStringFromClass(v30);
      *buf = 138412802;
      v37 = v31;
      v38 = 2112;
      v39 = v7;
      v40 = 2112;
      v41 = v8;
      _os_log_fault_impl(&dword_1BF549000, v23, OS_LOG_TYPE_FAULT, "%@ - could not find path for resource: %@ with extension: %@", buf, 0x20u);
    }
  }

  if (v10)
  {
    v24 = v10;
  }

  else
  {
    v24 = v19;
  }

  v25 = v24;
  v26 = __atxlog_handle_default();
  if (os_log_type_enabled(v26, OS_LOG_TYPE_DEFAULT))
  {
    v27 = objc_opt_class();
    v28 = NSStringFromClass(v27);
    *buf = 138412802;
    v37 = v28;
    v38 = 2112;
    v39 = v25;
    v40 = 2112;
    v41 = v7;
    _os_log_impl(&dword_1BF549000, v26, OS_LOG_TYPE_DEFAULT, "%@ - using path: %@ for resource name: %@", buf, 0x20u);
  }

  return v25;
}

+ (void)updateMobileAssetMetadata
{
  v2 = getAsset();
  if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT))
  {
    *v3 = 0;
    _os_log_impl(&dword_1BF549000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT, "Kicking off mobile asset metadata download.", v3, 2u);
  }

  [v2 downloadMetadataWithCompletion:0];
}

+ (id)rawDictionaryUsingTrialForResource:(id)a3 ofType:(id)a4
{
  v21 = *MEMORY[0x1E69E9840];
  v5 = a3;
  v6 = MEMORY[0x1E69C5D98];
  v7 = a4;
  v8 = [[v6 alloc] initWithFirst:v5 second:v7];

  pthread_mutex_lock(&overridesLock);
  v9 = [overrides objectForKeyedSubscript:v8];
  pthread_mutex_unlock(&overridesLock);
  v10 = v9;
  v11 = getTrialAssets();
  v12 = [v11 filePathForResource:v5];
  if (v12)
  {
    v13 = [MEMORY[0x1E696AC08] defaultManager];
    v14 = [v13 fileExistsAtPath:v12];

    if (v14)
    {
      v15 = v12;

LABEL_8:
      v17 = loadLazyOrRegularPlist_0(v15);
      goto LABEL_10;
    }
  }

  else
  {
    v16 = __atxlog_handle_trial_assets();
    if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
    {
      v19 = 138543362;
      v20 = v5;
      _os_log_impl(&dword_1BF549000, v16, OS_LOG_TYPE_DEFAULT, "Unable to locate Trial resource: %{public}@", &v19, 0xCu);
    }
  }

  v15 = v10;
  if (v10)
  {
    goto LABEL_8;
  }

  v17 = 0;
LABEL_10:

  return v17;
}

+ (id)rawDictionaryUsingMobileAssetsForResource:(id)a3 ofType:(id)a4
{
  v5 = MEMORY[0x1E69C5D98];
  v6 = a4;
  v7 = a3;
  v8 = [[v5 alloc] initWithFirst:v7 second:v6];
  pthread_mutex_lock(&overridesLock);
  v9 = [overrides objectForKeyedSubscript:v8];
  pthread_mutex_unlock(&overridesLock);
  v10 = [v7 stringByAppendingPathExtension:v6];

  v11 = getAsset();
  v12 = [v11 filesystemPathForAssetDataRelativePath:v10];
  v13 = v12;
  if (v9)
  {
    v12 = v9;
  }

  if (v12)
  {
    v14 = loadLazyOrRegularPlist_0(v12);
  }

  else
  {
    v14 = 0;
  }

  return v14;
}

+ (id)rawDictionaryForResource:(id)a3 ofType:(id)a4
{
  v6 = a3;
  v7 = a4;
  if ([v7 isEqualToString:@"mlmodelc"])
  {
    v8 = 0;
  }

  else
  {
    v9 = [a1 pathForResource:v6 ofType:v7 isDirectory:0];
    v10 = v9;
    if (v9)
    {
      v8 = loadLazyOrRegularPlist_0(v9);
    }

    else
    {
      v8 = 0;
    }
  }

  return v8;
}

+ (id)dictionaryForResource:(id)a3 ofType:(id)a4 specifiedABGroup:(id)a5
{
  v8 = a5;
  v9 = [a1 rawDictionaryForResource:a3 ofType:a4];
  v10 = [[ATXAssetsABHelper alloc] initWithAssetContents:v9 specifiedABGroup:v8 indexForDevice:+[ATXAssetsABHelper indexForDevice]];

  v11 = [(ATXAssetsABHelper *)v10 abGroupContents];

  return v11;
}

+ (id)dictionaryWithLegacyPathForClass:(Class)a3
{
  v4 = NSStringFromClass(a3);
  v5 = [a1 dictionaryForResource:v4 ofType:@"plist" specifiedABGroup:0];

  return v5;
}

+ (id)dictionaryFromLazyPlistWithLegacyPathForClass:(Class)a3
{
  v4 = NSStringFromClass(a3);
  v5 = [a1 dictionaryForResource:v4 ofType:@"plplist" specifiedABGroup:0];

  return v5;
}

+ (id)dictionaryForClass:(Class)a3
{
  v4 = NSStringFromClass(a3);
  v5 = [a1 dictionaryForClassName:v4];

  return v5;
}

+ (id)dictionaryFromLazyPlistForClass:(Class)a3
{
  v4 = NSStringFromClass(a3);
  v5 = [a1 dictionaryFromLazyPlistForClassName:v4];

  return v5;
}

void __40__ATXAssets2_onUpdateRestartThisProcess__block_invoke_cold_1(uint64_t a1)
{
  v3 = *MEMORY[0x1E69E9840];
  v1 = 138412290;
  v2 = a1;
  _os_log_debug_impl(&dword_1BF549000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEBUG, "Registering to quit on update of asset %@", &v1, 0xCu);
}

@end