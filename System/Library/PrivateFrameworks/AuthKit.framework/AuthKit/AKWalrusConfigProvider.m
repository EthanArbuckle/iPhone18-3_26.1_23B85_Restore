@interface AKWalrusConfigProvider
+ (id)sharedInstance;
- (id)_extractWalrusConfigWithAccountCountry:(id)a3 fromGlobalConfig:(id)a4;
- (void)getWalrusConfigWithCompletion:(id)a3;
@end

@implementation AKWalrusConfigProvider

+ (id)sharedInstance
{
  v5 = &sharedInstance_pred_1;
  location = 0;
  objc_storeStrong(&location, &__block_literal_global_49);
  if (*v5 != -1)
  {
    dispatch_once(v5, location);
  }

  objc_storeStrong(&location, 0);
  v2 = sharedInstance_sharedInstance_4;

  return v2;
}

uint64_t __40__AKWalrusConfigProvider_sharedInstance__block_invoke()
{
  v0 = objc_alloc_init(AKWalrusConfigProvider);
  v1 = sharedInstance_sharedInstance_4;
  sharedInstance_sharedInstance_4 = v0;
  return MEMORY[0x1E69E5920](v1);
}

- (void)getWalrusConfigWithCompletion:(id)a3
{
  v33 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  v31 = objc_alloc_init(AKAppleIDAuthenticationController);
  v6 = +[AKAccountManager sharedInstance];
  v30 = [(AKAccountManager *)v6 primaryAuthKitAccount];
  MEMORY[0x1E69E5920](v6);
  v7 = +[AKAccountManager sharedInstance];
  v29 = [(AKAccountManager *)v7 appleIDCountryCodeForAccount:v30];
  MEMORY[0x1E69E5920](v7);
  v23[0] = 0;
  v23[1] = v23;
  v24 = 838860800;
  v25 = 48;
  v26 = __Block_byref_object_copy__14;
  v27 = __Block_byref_object_dispose__14;
  v28 = 0;
  v18[0] = MEMORY[0x1E69E9820];
  v18[1] = 3221225472;
  v18[2] = __56__AKWalrusConfigProvider_getWalrusConfigWithCompletion___block_invoke;
  v18[3] = &unk_1E73D8B20;
  v21[1] = v23;
  v19 = MEMORY[0x1E69E5928](v33);
  v20 = MEMORY[0x1E69E5928](v29);
  v21[0] = MEMORY[0x1E69E5928](location[0]);
  v22 = MEMORY[0x193B165F0](v18);
  v17 = _AKLogSystem();
  type = OS_LOG_TYPE_DEBUG;
  if (os_log_type_enabled(v17, OS_LOG_TYPE_DEBUG))
  {
    log = v17;
    v5 = type;
    __os_log_helper_16_0_0(v15);
    _os_log_debug_impl(&dword_193225000, log, v5, "Fetching global config for walrus config.", v15, 2u);
  }

  objc_storeStrong(&v17, 0);
  v3 = v31;
  v8 = MEMORY[0x1E69E9820];
  v9 = -1073741824;
  v10 = 0;
  v11 = __56__AKWalrusConfigProvider_getWalrusConfigWithCompletion___block_invoke_66;
  v12 = &unk_1E73D8B48;
  v14[0] = MEMORY[0x1E69E5928](v22);
  v14[1] = v23;
  v13 = MEMORY[0x1E69E5928](v31);
  [v3 fetchGlobalConfigurationUsingPolicy:0 completion:&v8];
  objc_storeStrong(&v13, 0);
  objc_storeStrong(v14, 0);
  objc_storeStrong(&v22, 0);
  objc_storeStrong(v21, 0);
  objc_storeStrong(&v20, 0);
  objc_storeStrong(&v19, 0);
  _Block_object_dispose(v23, 8);
  objc_storeStrong(&v28, 0);
  objc_storeStrong(&v29, 0);
  objc_storeStrong(&v30, 0);
  objc_storeStrong(&v31, 0);
  objc_storeStrong(location, 0);
}

void __56__AKWalrusConfigProvider_getWalrusConfigWithCompletion___block_invoke(NSObject *a1, void *a2, void *a3)
{
  v12 = *MEMORY[0x1E69E9840];
  location[1] = a1;
  location[0] = 0;
  objc_storeStrong(location, a2);
  v9 = 0;
  objc_storeStrong(&v9, a3);
  oslog[1] = a1;
  oslog[0] = _AKLogSystem();
  type = OS_LOG_TYPE_DEFAULT;
  if (os_log_type_enabled(oslog[0], OS_LOG_TYPE_DEFAULT))
  {
    __os_log_helper_16_2_1_8_64(v11, v9);
    _os_log_impl(&dword_193225000, oslog[0], type, "Fetch global config completed with error: %@", v11, 0xCu);
  }

  objc_storeStrong(oslog, 0);
  if (*(*(a1[7].isa + 1) + 40) && ([location[0] isEqualToDictionary:*(*(a1[7].isa + 1) + 40)] & 1) != 0)
  {
    v6 = 1;
  }

  else
  {
    v5 = [(objc_class *)a1[4].isa _extractWalrusConfigWithAccountCountry:a1[5].isa fromGlobalConfig:location[0]];
    if (a1[6].isa)
    {
      (*(a1[6].isa + 2))();
    }

    objc_storeStrong(&v5, 0);
    v6 = 0;
  }

  objc_storeStrong(&v9, 0);
  objc_storeStrong(location, 0);
  *MEMORY[0x1E69E9840];
}

void __56__AKWalrusConfigProvider_getWalrusConfigWithCompletion___block_invoke_66(uint64_t a1, void *a2, void *a3)
{
  location[1] = a1;
  location[0] = 0;
  objc_storeStrong(location, a2);
  v5 = 0;
  objc_storeStrong(&v5, a3);
  (*(*(a1 + 40) + 16))();
  objc_storeStrong((*(*(a1 + 48) + 8) + 40), location[0]);
  [*(a1 + 32) fetchGlobalConfigurationUsingPolicy:1 completion:*(a1 + 40)];
  objc_storeStrong(&v5, 0);
  objc_storeStrong(location, 0);
}

- (id)_extractWalrusConfigWithAccountCountry:(id)a3 fromGlobalConfig:(id)a4
{
  v31 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  v29 = 0;
  objc_storeStrong(&v29, a4);
  if (!v29)
  {
    objc_storeStrong(&v29, &unk_1F07B5598);
  }

  v28 = [v29 objectForKeyedSubscript:@"adpCountries"];
  if (v28)
  {
    v12 = [location[0] uppercaseString];
    v11 = [MEMORY[0x1E696AB08] whitespaceCharacterSet];
    v23 = [v12 stringByTrimmingCharactersInSet:?];
    MEMORY[0x1E69E5920](v11);
    MEMORY[0x1E69E5920](v12);
    v13 = objc_opt_class();
    v14 = [v28 objectForKeyedSubscript:v23];
    v22 = _AKSafeCast_23(v13, v14);
    MEMORY[0x1E69E5920](v14);
    v21 = objc_opt_new();
    if (v22)
    {
      v6 = [v22 objectForKeyedSubscript:@"status"];
      v7 = [v6 unsignedIntValue];
      MEMORY[0x1E69E5920](v6);
      [v21 setFeatureStatus:v7];
      v8 = [v22 objectForKeyedSubscript:@"reason"];
      [v21 setLocalizedStatusDescription:?];
      MEMORY[0x1E69E5920](v8);
    }

    else
    {
      v20 = _AKLogSystem();
      v19 = 16;
      if (os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
      {
        v9 = v20;
        v10 = v19;
        __os_log_helper_16_0_0(v18);
        _os_log_error_impl(&dword_193225000, v9, v10, "Global config has no entry for account country", v18, 2u);
      }

      objc_storeStrong(&v20, 0);
      [v21 setFeatureStatus:0];
    }

    objc_storeStrong(&v31->_cachedConfig, v21);
    v32 = MEMORY[0x1E69E5928](v21);
    v24 = 1;
    objc_storeStrong(&v21, 0);
    objc_storeStrong(&v22, 0);
    objc_storeStrong(&v23, 0);
  }

  else
  {
    v27 = _AKLogSystem();
    v26 = 16;
    if (os_log_type_enabled(v27, OS_LOG_TYPE_ERROR))
    {
      log = v27;
      type = v26;
      __os_log_helper_16_0_0(v25);
      _os_log_error_impl(&dword_193225000, log, type, "Global config has no ADP countries", v25, 2u);
    }

    objc_storeStrong(&v27, 0);
    v32 = 0;
    v24 = 1;
  }

  objc_storeStrong(&v28, 0);
  objc_storeStrong(&v29, 0);
  objc_storeStrong(location, 0);
  v4 = v32;

  return v4;
}

@end