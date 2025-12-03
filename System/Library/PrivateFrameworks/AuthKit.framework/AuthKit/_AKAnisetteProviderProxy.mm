@interface _AKAnisetteProviderProxy
- (_AKAnisetteProviderProxy)initWithProvider:(id)provider;
- (void)eraseAnisetteForContext:(id)context withCompletion:(id)completion;
- (void)fetchAnisetteDataForContext:(id)context provisionIfNecessary:(BOOL)necessary withCompletion:(id)completion;
- (void)fetchPeerAttestationDataForContext:(id)context withRequest:(id)request completion:(id)completion;
- (void)legacyAnisetteDataForContext:(id)context DSID:(id)d withCompletion:(id)completion;
- (void)provisionAnisetteForContext:(id)context withCompletion:(id)completion;
- (void)syncAnisetteForContext:(id)context withSIMData:(id)data completion:(id)completion;
@end

@implementation _AKAnisetteProviderProxy

- (_AKAnisetteProviderProxy)initWithProvider:(id)provider
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, provider);
  v3 = selfCopy;
  selfCopy = 0;
  v6.receiver = v3;
  v6.super_class = _AKAnisetteProviderProxy;
  selfCopy = [(_AKAnisetteProviderProxy *)&v6 init];
  objc_storeStrong(&selfCopy, selfCopy);
  if (selfCopy)
  {
    objc_storeStrong(&selfCopy->_anisetteDataProvider, location[0]);
  }

  v5 = MEMORY[0x1E69E5928](selfCopy);
  objc_storeStrong(location, 0);
  objc_storeStrong(&selfCopy, 0);
  return v5;
}

- (void)provisionAnisetteForContext:(id)context withCompletion:(id)completion
{
  v14 = *MEMORY[0x1E69E9840];
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, context);
  v10 = 0;
  objc_storeStrong(&v10, completion);
  v9 = _AKLogSystem();
  v8 = OS_LOG_TYPE_DEBUG;
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEBUG))
  {
    __os_log_helper_16_2_2_8_32_4_0(v13, "[_AKAnisetteProviderProxy provisionAnisetteForContext:withCompletion:]", 728);
    _os_log_debug_impl(&dword_193225000, v9, v8, "%s (%d) called", v13, 0x12u);
  }

  objc_storeStrong(&v9, 0);
  v7 = MEMORY[0x1E69E5928](selfCopy->_anisetteDataProvider);
  if (v7)
  {
    [v7 provisionAnisetteWithCompletion:v10];
  }

  else
  {
    v4 = v10;
    v5 = [MEMORY[0x1E696ABC0] ak_errorWithCode:-7060];
    v4[2](v4, 0);
    MEMORY[0x1E69E5920](v5);
  }

  objc_storeStrong(&v7, 0);
  objc_storeStrong(&v10, 0);
  objc_storeStrong(location, 0);
  *MEMORY[0x1E69E9840];
}

- (void)syncAnisetteForContext:(id)context withSIMData:(id)data completion:(id)completion
{
  v17 = *MEMORY[0x1E69E9840];
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, context);
  v13 = 0;
  objc_storeStrong(&v13, data);
  v12 = 0;
  objc_storeStrong(&v12, completion);
  v11 = _AKLogSystem();
  v10 = OS_LOG_TYPE_DEBUG;
  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEBUG))
  {
    __os_log_helper_16_2_2_8_32_4_0(v16, "[_AKAnisetteProviderProxy syncAnisetteForContext:withSIMData:completion:]", 742);
    _os_log_debug_impl(&dword_193225000, v11, v10, "%s (%d) called", v16, 0x12u);
  }

  objc_storeStrong(&v11, 0);
  v9 = MEMORY[0x1E69E5928](selfCopy->_anisetteDataProvider);
  if (v9)
  {
    [v9 syncAnisetteWithSIMData:v13 completion:v12];
  }

  else
  {
    v5 = v12;
    v6 = [MEMORY[0x1E696ABC0] ak_errorWithCode:-7060];
    v5[2](v5, 0);
    MEMORY[0x1E69E5920](v6);
  }

  objc_storeStrong(&v9, 0);
  objc_storeStrong(&v12, 0);
  objc_storeStrong(&v13, 0);
  objc_storeStrong(location, 0);
  *MEMORY[0x1E69E9840];
}

- (void)eraseAnisetteForContext:(id)context withCompletion:(id)completion
{
  v14 = *MEMORY[0x1E69E9840];
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, context);
  v10 = 0;
  objc_storeStrong(&v10, completion);
  v9 = _AKLogSystem();
  v8 = OS_LOG_TYPE_DEBUG;
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEBUG))
  {
    __os_log_helper_16_2_2_8_32_4_0(v13, "[_AKAnisetteProviderProxy eraseAnisetteForContext:withCompletion:]", 756);
    _os_log_debug_impl(&dword_193225000, v9, v8, "%s (%d) called", v13, 0x12u);
  }

  objc_storeStrong(&v9, 0);
  v7 = MEMORY[0x1E69E5928](selfCopy->_anisetteDataProvider);
  if (v7)
  {
    [v7 eraseAnisetteWithCompletion:v10];
  }

  else
  {
    v4 = v10;
    v5 = [MEMORY[0x1E696ABC0] ak_errorWithCode:-7060];
    v4[2](v4, 0);
    MEMORY[0x1E69E5920](v5);
  }

  objc_storeStrong(&v7, 0);
  objc_storeStrong(&v10, 0);
  objc_storeStrong(location, 0);
  *MEMORY[0x1E69E9840];
}

- (void)fetchAnisetteDataForContext:(id)context provisionIfNecessary:(BOOL)necessary withCompletion:(id)completion
{
  v17 = *MEMORY[0x1E69E9840];
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, context);
  necessaryCopy = necessary;
  v12 = 0;
  objc_storeStrong(&v12, completion);
  v11 = _AKLogSystem();
  v10 = OS_LOG_TYPE_DEBUG;
  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEBUG))
  {
    __os_log_helper_16_2_2_8_32_4_0(v16, "[_AKAnisetteProviderProxy fetchAnisetteDataForContext:provisionIfNecessary:withCompletion:]", 770);
    _os_log_debug_impl(&dword_193225000, v11, v10, "%s (%d) called", v16, 0x12u);
  }

  objc_storeStrong(&v11, 0);
  v9 = MEMORY[0x1E69E5928](selfCopy->_anisetteDataProvider);
  if (v9)
  {
    [v9 fetchAnisetteDataAndProvisionIfNecessary:necessaryCopy withCompletion:v12];
  }

  else
  {
    v5 = v12;
    v6 = [MEMORY[0x1E696ABC0] ak_errorWithCode:-7060];
    v5[2](v5, 0);
    MEMORY[0x1E69E5920](v6);
  }

  objc_storeStrong(&v9, 0);
  objc_storeStrong(&v12, 0);
  objc_storeStrong(location, 0);
  *MEMORY[0x1E69E9840];
}

- (void)legacyAnisetteDataForContext:(id)context DSID:(id)d withCompletion:(id)completion
{
  v17 = *MEMORY[0x1E69E9840];
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, context);
  v13 = 0;
  objc_storeStrong(&v13, d);
  v12 = 0;
  objc_storeStrong(&v12, completion);
  v11 = _AKLogSystem();
  v10 = OS_LOG_TYPE_DEBUG;
  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEBUG))
  {
    __os_log_helper_16_2_2_8_32_4_0(v16, "[_AKAnisetteProviderProxy legacyAnisetteDataForContext:DSID:withCompletion:]", 784);
    _os_log_debug_impl(&dword_193225000, v11, v10, "%s (%d) called", v16, 0x12u);
  }

  objc_storeStrong(&v11, 0);
  v9 = MEMORY[0x1E69E5928](selfCopy->_anisetteDataProvider);
  if (v9)
  {
    [v9 legacyAnisetteDataForDSID:v13 withCompletion:v12];
  }

  else
  {
    v5 = v12;
    v6 = [MEMORY[0x1E696ABC0] ak_errorWithCode:-7060];
    v5[2](v5, 0);
    MEMORY[0x1E69E5920](v6);
  }

  objc_storeStrong(&v9, 0);
  objc_storeStrong(&v12, 0);
  objc_storeStrong(&v13, 0);
  objc_storeStrong(location, 0);
  *MEMORY[0x1E69E9840];
}

- (void)fetchPeerAttestationDataForContext:(id)context withRequest:(id)request completion:(id)completion
{
  v25 = *MEMORY[0x1E69E9840];
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, context);
  v19 = 0;
  objc_storeStrong(&v19, request);
  v18 = 0;
  objc_storeStrong(&v18, completion);
  v17 = _AKLogSystem();
  v16 = OS_LOG_TYPE_DEBUG;
  if (os_log_type_enabled(v17, OS_LOG_TYPE_DEBUG))
  {
    __os_log_helper_16_2_2_8_32_4_0(v24, "[_AKAnisetteProviderProxy fetchPeerAttestationDataForContext:withRequest:completion:]", 798);
    _os_log_debug_impl(&dword_193225000, v17, v16, "%s (%d) called", v24, 0x12u);
  }

  objc_storeStrong(&v17, 0);
  v15 = MEMORY[0x1E69E5928](selfCopy->_anisetteDataProvider);
  if (v15)
  {
    if (objc_opt_respondsToSelector())
    {
      oslog = _AKLogSystem();
      v12 = OS_LOG_TYPE_DEFAULT;
      if (os_log_type_enabled(oslog, OS_LOG_TYPE_DEFAULT))
      {
        __os_log_helper_16_2_3_8_64_8_64_8_64(v23, selfCopy, v15, v19);
        _os_log_impl(&dword_193225000, oslog, v12, "%@: Calling anisette data provider (%@) to fetch peer attestation data for request (%@)", v23, 0x20u);
      }

      objc_storeStrong(&oslog, 0);
      [v15 fetchPeerAttestationDataForRequest:v19 completion:v18];
    }

    else
    {
      v11 = _AKLogSystem();
      if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
      {
        __os_log_helper_16_2_3_8_64_8_64_8_64(v22, selfCopy, v15, v19);
        _os_log_error_impl(&dword_193225000, v11, OS_LOG_TYPE_ERROR, "%@: Unable to call anisette data provider (%@) to fetch peer attestation data for request (%@) because it does not implement 'fetchPeerAttestationDataForRequest:completion:'", v22, 0x20u);
      }

      objc_storeStrong(&v11, 0);
      v5 = v18;
      v6 = [MEMORY[0x1E696ABC0] errorWithDomain:@"AKAnisetteError" code:-8009 userInfo:0];
      v5[2](v5, 0);
      MEMORY[0x1E69E5920](v6);
    }

    v14 = 0;
  }

  else
  {
    v7 = v18;
    v8 = [MEMORY[0x1E696ABC0] ak_errorWithCode:-7060];
    v7[2](v7, 0);
    MEMORY[0x1E69E5920](v8);
    v14 = 1;
  }

  objc_storeStrong(&v15, 0);
  objc_storeStrong(&v18, 0);
  objc_storeStrong(&v19, 0);
  objc_storeStrong(location, 0);
  *MEMORY[0x1E69E9840];
}

@end