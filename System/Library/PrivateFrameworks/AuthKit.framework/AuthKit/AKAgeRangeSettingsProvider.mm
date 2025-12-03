@interface AKAgeRangeSettingsProvider
- (AKAgeRangeSettingsProvider)init;
- (void)refreshAgeRangeWithCompletion:(id)completion;
@end

@implementation AKAgeRangeSettingsProvider

- (AKAgeRangeSettingsProvider)init
{
  v9 = a2;
  v10 = 0;
  v8.receiver = self;
  v8.super_class = AKAgeRangeSettingsProvider;
  v10 = [(AKAgeRangeSettingsProvider *)&v8 init];
  objc_storeStrong(&v10, v10);
  if (v10)
  {
    v2 = objc_alloc_init(AKAppleIDAuthenticationController);
    authController = v10->_authController;
    v10->_authController = v2;
    MEMORY[0x1E69E5920](authController);
    v4 = objc_alloc_init(AKAgeRangeSettingsCache);
    ageRangeCache = v10->_ageRangeCache;
    v10->_ageRangeCache = v4;
    MEMORY[0x1E69E5920](ageRangeCache);
  }

  v7 = MEMORY[0x1E69E5928](v10);
  objc_storeStrong(&v10, 0);
  return v7;
}

- (void)refreshAgeRangeWithCompletion:(id)completion
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, completion);
  v14 = _AKLogSystem();
  v13 = 2;
  if (os_log_type_enabled(v14, OS_LOG_TYPE_DEBUG))
  {
    log = v14;
    type = v13;
    __os_log_helper_16_0_0(v12);
    _os_log_debug_impl(&dword_193225000, log, type, "Refreshing age range", v12, 2u);
  }

  objc_storeStrong(&v14, 0);
  authController = selfCopy->_authController;
  v6 = MEMORY[0x1E69E9820];
  v7 = -1073741824;
  v8 = 0;
  v9 = __60__AKAgeRangeSettingsProvider_refreshAgeRangeWithCompletion___block_invoke;
  v10 = &unk_1E73D3538;
  v11 = MEMORY[0x1E69E5928](location[0]);
  [(AKAppleIDAuthenticationController *)authController fetchGlobalConfigurationUsingPolicy:1 completion:&v6];
  objc_storeStrong(&v11, 0);
  objc_storeStrong(location, 0);
}

void __60__AKAgeRangeSettingsProvider_refreshAgeRangeWithCompletion___block_invoke(void *a1, void *a2, void *a3)
{
  v19 = *MEMORY[0x1E69E9840];
  location[1] = a1;
  location[0] = 0;
  objc_storeStrong(location, a2);
  v16 = 0;
  objc_storeStrong(&v16, a3);
  v15[1] = a1;
  if (v16)
  {
    v15[0] = _AKLogSystem();
    v14 = OS_LOG_TYPE_ERROR;
    if (os_log_type_enabled(v15[0], OS_LOG_TYPE_ERROR))
    {
      __os_log_helper_16_2_1_8_64(v18, v16);
      _os_log_error_impl(&dword_193225000, v15[0], v14, "AKAgeRangeSettingsProvider - global config fetch failed with %@", v18, 0xCu);
    }

    objc_storeStrong(v15, 0);
    if (a1[4])
    {
      (*(a1[4] + 16))();
    }

    v13 = 1;
  }

  else if (location[0])
  {
    v9 = [AKAgeRangeSettingsExtractor extractAgeRangeConfigFromGlobalConfig:location[0]];
    if (a1[4])
    {
      (*(a1[4] + 16))();
    }

    objc_storeStrong(&v9, 0);
    v13 = 0;
  }

  else
  {
    v12 = _AKLogSystem();
    v11 = 16;
    if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      v5 = v12;
      v6 = v11;
      __os_log_helper_16_0_0(v10);
      _os_log_error_impl(&dword_193225000, v5, v6, "AKAgeRangeSettingsProvider - Missing global config result.", v10, 2u);
    }

    objc_storeStrong(&v12, 0);
    if (a1[4])
    {
      v3 = a1[4];
      v4 = [MEMORY[0x1E696ABC0] errorWithDomain:@"AKGenericError" code:-17004 userInfo:?];
      (*(v3 + 16))(v3, 0);
      MEMORY[0x1E69E5920](v4);
    }

    v13 = 1;
  }

  objc_storeStrong(&v16, 0);
  objc_storeStrong(location, 0);
  *MEMORY[0x1E69E9840];
}

@end