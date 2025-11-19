@interface SOAuthorizationCore
+ (BOOL)_canPerformAuthorizationWithURL:(id)a3 responseCode:(int64_t)a4 callerBundleIdentifier:(id)a5 useInternalExtensions:(BOOL)a6;
+ (BOOL)_doAKshouldProcessURL:(id)a3;
+ (BOOL)canPerformAuthorizationWithURL:(id)a3 responseCode:(int64_t)a4;
+ (BOOL)canPerformAuthorizationWithURL:(id)a3 responseCode:(int64_t)a4 callerBundleIdentifier:(id)a5 useInternalExtensions:(BOOL)a6;
+ (BOOL)canPerformAuthorizationWithURL:(id)a3 responseCode:(int64_t)a4 useInternalExtensions:(BOOL)a5;
+ (void)_canPerformAuthorizationWithURL:(id)a3 responseCode:(int64_t)a4 callerBundleIdentifier:(id)a5 useInternalExtensions:(BOOL)a6 completion:(id)a7;
+ (void)_doAKshouldProcessURL:(id)a3 completion:(id)a4;
+ (void)canPerformAuthorizationWithURL:(id)a3 responseCode:(int64_t)a4 callerBundleIdentifier:(id)a5 useInternalExtensions:(BOOL)a6 completion:(id)a7;
+ (void)isConfigurationActiveForExtensionIdentifier:(id)a3 completion:(id)a4;
+ (void)isExtensionProcessWithAuditToken:(id *)a3 completion:(id)a4;
- (SOAuthorizationCore)init;
- (SOAuthorizationCoreDelegate)delegate;
- (SOAuthorizationRequestParametersCore)requestParametersCore;
- (id)createSecKeysFromSecKeyProxyEndpoints:(id)a3 error:(id *)a4;
- (id)debugDescription;
- (id)kerberosProfiles;
- (id)realms;
- (void)_addNoUserInterfaceToAuthorizationOptionsInRequestParameters;
- (void)_cancelAuthorization;
- (void)_finishAuthorization:(id)a3 withCredential:(id)a4 error:(id)a5;
- (void)beginAuthorizationWithOperation:(id)a3 url:(id)a4 httpHeaders:(id)a5 httpBody:(id)a6;
- (void)beginAuthorizationWithParameters:(id)a3;
- (void)beginAuthorizationWithParameters:(id)a3 completion:(id)a4;
- (void)beginAuthorizationWithRequestParameters:(id)a3 completion:(id)a4;
- (void)beginAuthorizationWithURL:(id)a3 httpHeaders:(id)a4 httpBody:(id)a5;
- (void)cancelAuthorization;
- (void)debugHintsWithCompletion:(id)a3;
- (void)finishAuthorization:(id)a3 completion:(id)a4;
- (void)getAuthorizationHintsWithURL:(id)a3 responseCode:(int64_t)a4 completion:(id)a5;
- (void)performBlockOnDelegateQueue:(id)a3;
- (void)setRequestParametersCore:(id)a3;
@end

@implementation SOAuthorizationCore

- (SOAuthorizationCore)init
{
  v14 = *MEMORY[0x1E69E9840];
  v3 = SO_LOG_SOAuthorizationCore();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315394;
    v11 = "[SOAuthorizationCore init]";
    v12 = 2112;
    v13 = self;
    _os_log_impl(&dword_1CA238000, v3, OS_LOG_TYPE_DEFAULT, "%s  on %@", buf, 0x16u);
  }

  v9.receiver = self;
  v9.super_class = SOAuthorizationCore;
  v4 = [(SOAuthorizationCore *)&v9 init];
  if (v4)
  {
    v5 = objc_alloc_init(SOClient);
    client = v4->_client;
    v4->_client = v5;

    v4->_enableUserInteraction = 1;
  }

  v7 = *MEMORY[0x1E69E9840];
  return v4;
}

+ (BOOL)canPerformAuthorizationWithURL:(id)a3 responseCode:(int64_t)a4
{
  v6 = a3;
  v14 = 0;
  v15 = &v14;
  v16 = 0x2020000000;
  v17 = 0;
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __67__SOAuthorizationCore_canPerformAuthorizationWithURL_responseCode___block_invoke;
  v9[3] = &unk_1E836CDF0;
  v10 = v6;
  v11 = &v14;
  v12 = a1;
  v13 = a4;
  v7 = v6;
  _os_activity_initiate(&dword_1CA238000, "canPerformAuthorizationWithURL", OS_ACTIVITY_FLAG_DEFAULT, v9);

  LOBYTE(a1) = *(v15 + 24);
  _Block_object_dispose(&v14, 8);
  return a1;
}

uint64_t __67__SOAuthorizationCore_canPerformAuthorizationWithURL_responseCode___block_invoke(uint64_t a1)
{
  result = [*(a1 + 48) canPerformAuthorizationWithURL:*(a1 + 32) responseCode:*(a1 + 56) useInternalExtensions:1];
  *(*(*(a1 + 40) + 8) + 24) = result;
  return result;
}

+ (BOOL)canPerformAuthorizationWithURL:(id)a3 responseCode:(int64_t)a4 useInternalExtensions:(BOOL)a5
{
  v8 = a3;
  v17 = 0;
  v18 = &v17;
  v19 = 0x2020000000;
  v20 = 0;
  activity_block[0] = MEMORY[0x1E69E9820];
  activity_block[1] = 3221225472;
  activity_block[2] = __89__SOAuthorizationCore_canPerformAuthorizationWithURL_responseCode_useInternalExtensions___block_invoke;
  activity_block[3] = &unk_1E836CE18;
  v12 = v8;
  v13 = &v17;
  v14 = a1;
  v15 = a4;
  v16 = a5;
  v9 = v8;
  _os_activity_initiate(&dword_1CA238000, "canPerformAuthorizationWithURL", OS_ACTIVITY_FLAG_DEFAULT, activity_block);

  LOBYTE(a4) = *(v18 + 24);
  _Block_object_dispose(&v17, 8);
  return a4;
}

uint64_t __89__SOAuthorizationCore_canPerformAuthorizationWithURL_responseCode_useInternalExtensions___block_invoke(uint64_t a1)
{
  result = [*(a1 + 48) canPerformAuthorizationWithURL:*(a1 + 32) responseCode:*(a1 + 56) callerBundleIdentifier:0 useInternalExtensions:*(a1 + 64)];
  *(*(*(a1 + 40) + 8) + 24) = result;
  return result;
}

+ (BOOL)canPerformAuthorizationWithURL:(id)a3 responseCode:(int64_t)a4 callerBundleIdentifier:(id)a5 useInternalExtensions:(BOOL)a6
{
  v10 = a3;
  v11 = a5;
  v22 = 0;
  v23 = &v22;
  v24 = 0x2020000000;
  v25 = 0;
  v15[0] = MEMORY[0x1E69E9820];
  v15[1] = 3221225472;
  v15[2] = __112__SOAuthorizationCore_canPerformAuthorizationWithURL_responseCode_callerBundleIdentifier_useInternalExtensions___block_invoke;
  v15[3] = &unk_1E836CE40;
  v18 = &v22;
  v19 = a4;
  v16 = v10;
  v17 = v11;
  v21 = a6;
  v20 = a1;
  v12 = v11;
  v13 = v10;
  _os_activity_initiate(&dword_1CA238000, "canPerformAuthorizationWithURL", OS_ACTIVITY_FLAG_DEFAULT, v15);

  LOBYTE(a4) = *(v23 + 24);
  _Block_object_dispose(&v22, 8);
  return a4;
}

void __112__SOAuthorizationCore_canPerformAuthorizationWithURL_responseCode_callerBundleIdentifier_useInternalExtensions___block_invoke(uint64_t a1)
{
  v26 = *MEMORY[0x1E69E9840];
  *(*(*(a1 + 48) + 8) + 24) = [SOAuthorizationCore _canPerformAuthorizationWithURL:*(a1 + 32) responseCode:*(a1 + 56) callerBundleIdentifier:*(a1 + 40) useInternalExtensions:*(a1 + 72)];
  v2 = SO_LOG_SOAuthorizationCore();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEBUG))
  {
    v4 = *(a1 + 32);
    v5 = *(a1 + 40);
    v6 = @"NO";
    if (*(a1 + 72))
    {
      v7 = @"YES";
    }

    else
    {
      v7 = @"NO";
    }

    v8 = *(a1 + 56);
    if (*(*(*(a1 + 48) + 8) + 24))
    {
      v6 = @"YES";
    }

    v9 = *(a1 + 64);
    v10 = 136316931;
    v11 = "+[SOAuthorizationCore canPerformAuthorizationWithURL:responseCode:callerBundleIdentifier:useInternalExtensions:]_block_invoke";
    v12 = 2160;
    v13 = 1752392040;
    v14 = 2117;
    v15 = v4;
    v16 = 1024;
    v17 = v8;
    v18 = 2114;
    v19 = v5;
    v20 = 2114;
    v21 = v7;
    v22 = 2114;
    v23 = v6;
    v24 = 2112;
    v25 = v9;
    _os_log_debug_impl(&dword_1CA238000, v2, OS_LOG_TYPE_DEBUG, "%s %{sensitive, mask.hash}@, responseCode = %d, callerBundleIdentifier = %{public}@, useInternalExtensions = %{public}@, result = %{public}@ on %@", &v10, 0x4Eu);
  }

  v3 = *MEMORY[0x1E69E9840];
}

+ (void)canPerformAuthorizationWithURL:(id)a3 responseCode:(int64_t)a4 callerBundleIdentifier:(id)a5 useInternalExtensions:(BOOL)a6 completion:(id)a7
{
  v12 = a3;
  v13 = a5;
  v14 = a7;
  v18[0] = MEMORY[0x1E69E9820];
  v18[1] = 3221225472;
  v18[2] = __123__SOAuthorizationCore_canPerformAuthorizationWithURL_responseCode_callerBundleIdentifier_useInternalExtensions_completion___block_invoke;
  v18[3] = &unk_1E836CE90;
  v19 = v12;
  v20 = v13;
  v24 = a6;
  v22 = a4;
  v23 = a1;
  v21 = v14;
  v15 = v14;
  v16 = v13;
  v17 = v12;
  _os_activity_initiate(&dword_1CA238000, "canPerformAuthorizationWithURL", OS_ACTIVITY_FLAG_DEFAULT, v18);
}

void __123__SOAuthorizationCore_canPerformAuthorizationWithURL_responseCode_callerBundleIdentifier_useInternalExtensions_completion___block_invoke(uint64_t a1)
{
  v2 = *(a1 + 56);
  v3 = *(a1 + 32);
  v4 = *(a1 + 40);
  v5 = *(a1 + 72);
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __123__SOAuthorizationCore_canPerformAuthorizationWithURL_responseCode_callerBundleIdentifier_useInternalExtensions_completion___block_invoke_2;
  v10[3] = &unk_1E836CE68;
  v6 = v3;
  v7 = *(a1 + 56);
  v11 = v6;
  v14 = v7;
  v8 = *(a1 + 40);
  v16 = *(a1 + 72);
  v9 = *(a1 + 64);
  v12 = v8;
  v15 = v9;
  v13 = *(a1 + 48);
  [SOAuthorizationCore _canPerformAuthorizationWithURL:v6 responseCode:v2 callerBundleIdentifier:v4 useInternalExtensions:v5 completion:v10];
}

uint64_t __123__SOAuthorizationCore_canPerformAuthorizationWithURL_responseCode_callerBundleIdentifier_useInternalExtensions_completion___block_invoke_2(uint64_t a1)
{
  v2 = SO_LOG_SOAuthorizationCore();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEBUG))
  {
    __123__SOAuthorizationCore_canPerformAuthorizationWithURL_responseCode_callerBundleIdentifier_useInternalExtensions_completion___block_invoke_2_cold_1(a1);
  }

  return (*(*(a1 + 48) + 16))();
}

- (void)getAuthorizationHintsWithURL:(id)a3 responseCode:(int64_t)a4 completion:(id)a5
{
  v8 = a3;
  v9 = a5;
  v12[0] = MEMORY[0x1E69E9820];
  v12[1] = 3221225472;
  v12[2] = __76__SOAuthorizationCore_getAuthorizationHintsWithURL_responseCode_completion___block_invoke;
  v12[3] = &unk_1E836CEB8;
  v12[4] = self;
  v13 = v8;
  v14 = v9;
  v15 = a4;
  v10 = v9;
  v11 = v8;
  _os_activity_initiate(&dword_1CA238000, "getAuthorizationHintsWithURL", OS_ACTIVITY_FLAG_DEFAULT, v12);
}

void __76__SOAuthorizationCore_getAuthorizationHintsWithURL_responseCode_completion___block_invoke(uint64_t a1)
{
  v1 = *(a1 + 40);
  v2 = *(*(a1 + 32) + 8);
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = __76__SOAuthorizationCore_getAuthorizationHintsWithURL_responseCode_completion___block_invoke_2;
  v4[3] = &unk_1E836CBE0;
  v3 = *(a1 + 56);
  v5 = *(a1 + 48);
  [v2 getAuthorizationHintsWithURL:v1 responseCode:v3 completion:v4];
}

void __76__SOAuthorizationCore_getAuthorizationHintsWithURL_responseCode_completion___block_invoke_2(uint64_t a1, void *a2, void *a3)
{
  v14 = *MEMORY[0x1E69E9840];
  v5 = a2;
  v6 = a3;
  v7 = SO_LOG_SOAuthorizationCore();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    v10 = 138478083;
    v11 = v5;
    v12 = 2114;
    v13 = v6;
    _os_log_impl(&dword_1CA238000, v7, OS_LOG_TYPE_DEFAULT, "getAuthorizationHintsWithURL: authorizationHints = %{private}@, error = %{public}@", &v10, 0x16u);
  }

  v8 = *(a1 + 32);
  if (v8)
  {
    (*(v8 + 16))(v8, v5, v6);
  }

  v9 = *MEMORY[0x1E69E9840];
}

- (void)beginAuthorizationWithURL:(id)a3 httpHeaders:(id)a4 httpBody:(id)a5
{
  v18 = *MEMORY[0x1E69E9840];
  v8 = a5;
  v9 = a4;
  v10 = a3;
  v11 = SO_LOG_SOAuthorizationCore();
  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
  {
    v14 = 136315394;
    v15 = "[SOAuthorizationCore beginAuthorizationWithURL:httpHeaders:httpBody:]";
    v16 = 2112;
    v17 = self;
    _os_log_impl(&dword_1CA238000, v11, OS_LOG_TYPE_DEFAULT, "%s  on %@", &v14, 0x16u);
  }

  v12 = objc_alloc_init(SOAuthorizationParametersCore);
  [(SOAuthorizationParametersCore *)v12 setUrl:v10];

  [(SOAuthorizationParametersCore *)v12 setHttpHeaders:v9];
  [(SOAuthorizationParametersCore *)v12 setHttpBody:v8];

  [(SOAuthorizationParametersCore *)v12 setUseInternalExtensions:1];
  [(SOAuthorizationCore *)self beginAuthorizationWithParameters:v12];

  v13 = *MEMORY[0x1E69E9840];
}

- (void)beginAuthorizationWithOperation:(id)a3 url:(id)a4 httpHeaders:(id)a5 httpBody:(id)a6
{
  v21 = *MEMORY[0x1E69E9840];
  v10 = a6;
  v11 = a5;
  v12 = a4;
  v13 = a3;
  v14 = SO_LOG_SOAuthorizationCore();
  if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
  {
    v17 = 136315394;
    v18 = "[SOAuthorizationCore beginAuthorizationWithOperation:url:httpHeaders:httpBody:]";
    v19 = 2112;
    v20 = self;
    _os_log_impl(&dword_1CA238000, v14, OS_LOG_TYPE_DEFAULT, "%s  on %@", &v17, 0x16u);
  }

  v15 = objc_alloc_init(SOAuthorizationParametersCore);
  [(SOAuthorizationParametersCore *)v15 setOperation:v13];

  [(SOAuthorizationParametersCore *)v15 setUrl:v12];
  [(SOAuthorizationParametersCore *)v15 setHttpHeaders:v11];

  [(SOAuthorizationParametersCore *)v15 setHttpBody:v10];
  [(SOAuthorizationParametersCore *)v15 setUseInternalExtensions:1];
  [(SOAuthorizationCore *)self beginAuthorizationWithParameters:v15];

  v16 = *MEMORY[0x1E69E9840];
}

- (void)beginAuthorizationWithParameters:(id)a3
{
  v4 = a3;
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __56__SOAuthorizationCore_beginAuthorizationWithParameters___block_invoke;
  v6[3] = &unk_1E836CEE0;
  v6[4] = self;
  v7 = v4;
  v5 = v4;
  [(SOAuthorizationCore *)self beginAuthorizationWithParameters:v5 completion:v6];
}

void __56__SOAuthorizationCore_beginAuthorizationWithParameters___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v4 = *(a1 + 32);
  v5 = *(a1 + 40);
  v6 = a3;
  v7 = a2;
  v8 = [v5 identifier];
  [v4 _finishAuthorization:v8 withCredential:v7 error:v6];
}

- (void)cancelAuthorization
{
  v10 = *MEMORY[0x1E69E9840];
  v3 = SO_LOG_SOAuthorizationCore();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315394;
    v7 = "[SOAuthorizationCore cancelAuthorization]";
    v8 = 2112;
    v9 = self;
    _os_log_impl(&dword_1CA238000, v3, OS_LOG_TYPE_DEFAULT, "%s  on %@", buf, 0x16u);
  }

  activity_block[0] = MEMORY[0x1E69E9820];
  activity_block[1] = 3221225472;
  activity_block[2] = __42__SOAuthorizationCore_cancelAuthorization__block_invoke;
  activity_block[3] = &unk_1E836CF08;
  activity_block[4] = self;
  _os_activity_initiate(&dword_1CA238000, "cancelAuthorization", OS_ACTIVITY_FLAG_DEFAULT, activity_block);
  v4 = *MEMORY[0x1E69E9840];
}

- (id)debugDescription
{
  v2 = +[SOConfigurationClient defaultClient];
  v3 = [v2 configuration];
  v4 = [v3 description];

  return v4;
}

+ (BOOL)_canPerformAuthorizationWithURL:(id)a3 responseCode:(int64_t)a4 callerBundleIdentifier:(id)a5 useInternalExtensions:(BOOL)a6
{
  v6 = a6;
  v10 = a3;
  v11 = a5;
  if (+[SOUtils isAppSSOServiceAvailable])
  {
    if (v6 && ([a1 _doAKshouldProcessURL:v10] & 1) != 0)
    {
      v12 = 1;
    }

    else
    {
      v13 = +[SOConfigurationClient defaultClient];
      v12 = [v13 willHandleURL:v10 responseCode:a4 callerBundleIdentifier:v11];
    }
  }

  else
  {
    v12 = 0;
  }

  return v12;
}

+ (void)_canPerformAuthorizationWithURL:(id)a3 responseCode:(int64_t)a4 callerBundleIdentifier:(id)a5 useInternalExtensions:(BOOL)a6 completion:(id)a7
{
  v8 = a6;
  v12 = a3;
  v13 = a5;
  v14 = a7;
  if (+[SOUtils isAppSSOServiceAvailable])
  {
    if (v8)
    {
      v19[0] = MEMORY[0x1E69E9820];
      v19[1] = 3221225472;
      v19[2] = __124__SOAuthorizationCore__canPerformAuthorizationWithURL_responseCode_callerBundleIdentifier_useInternalExtensions_completion___block_invoke;
      v19[3] = &unk_1E836CF58;
      v22 = v14;
      v20 = v12;
      v23 = a4;
      v21 = v13;
      [a1 _doAKshouldProcessURL:v20 completion:v19];

      v15 = v22;
    }

    else
    {
      v16 = +[SOConfigurationClient defaultClient];
      v17[0] = MEMORY[0x1E69E9820];
      v17[1] = 3221225472;
      v17[2] = __124__SOAuthorizationCore__canPerformAuthorizationWithURL_responseCode_callerBundleIdentifier_useInternalExtensions_completion___block_invoke_3;
      v17[3] = &unk_1E836CF30;
      v18 = v14;
      [v16 willHandleURL:v12 responseCode:a4 callerBundleIdentifier:v13 completion:v17];

      v15 = v18;
    }
  }

  else
  {
    (*(v14 + 2))(v14, 0);
  }
}

void __124__SOAuthorizationCore__canPerformAuthorizationWithURL_responseCode_callerBundleIdentifier_useInternalExtensions_completion___block_invoke(uint64_t a1, int a2)
{
  if (a2)
  {
    v3 = *(a1 + 48);
    v4 = *(*(a1 + 48) + 16);

    v4();
  }

  else
  {
    v5 = +[SOConfigurationClient defaultClient];
    v6 = *(a1 + 32);
    v7 = *(a1 + 40);
    v9[0] = MEMORY[0x1E69E9820];
    v9[1] = 3221225472;
    v9[2] = __124__SOAuthorizationCore__canPerformAuthorizationWithURL_responseCode_callerBundleIdentifier_useInternalExtensions_completion___block_invoke_2;
    v9[3] = &unk_1E836CF30;
    v8 = *(a1 + 56);
    v10 = *(a1 + 48);
    [v5 willHandleURL:v6 responseCode:v8 callerBundleIdentifier:v7 completion:v9];
  }
}

+ (BOOL)_doAKshouldProcessURL:(id)a3
{
  v20 = *MEMORY[0x1E69E9840];
  v4 = a3;
  if (v4)
  {
    v5 = [MEMORY[0x1E698DCE0] shouldProcessURL:v4];
  }

  else
  {
    v5 = 0;
  }

  v6 = SO_LOG_SOAuthorizationCore();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEBUG))
  {
    v11 = "+[SOAuthorizationCore _doAKshouldProcessURL:]";
    v12 = 2160;
    v9 = @"NO";
    v13 = 1752392040;
    v14 = 2117;
    v10 = 136316163;
    if (v5)
    {
      v9 = @"YES";
    }

    v15 = v4;
    v16 = 2112;
    v17 = v9;
    v18 = 2112;
    v19 = a1;
    _os_log_debug_impl(&dword_1CA238000, v6, OS_LOG_TYPE_DEBUG, "%s URL = %{sensitive, mask.hash}@, result = %@ on %@", &v10, 0x34u);
  }

  v7 = *MEMORY[0x1E69E9840];
  return v5;
}

+ (void)_doAKshouldProcessURL:(id)a3 completion:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = v7;
  if (v6)
  {
    v9 = MEMORY[0x1E698DCE0];
    v10[0] = MEMORY[0x1E69E9820];
    v10[1] = 3221225472;
    v10[2] = __56__SOAuthorizationCore__doAKshouldProcessURL_completion___block_invoke;
    v10[3] = &unk_1E836CF80;
    v11 = v6;
    v13 = a1;
    v12 = v8;
    [v9 shouldProcessURL:v11 completion:v10];
  }

  else
  {
    (*(v7 + 2))(v7, 0);
  }
}

uint64_t __56__SOAuthorizationCore__doAKshouldProcessURL_completion___block_invoke(uint64_t a1)
{
  v2 = SO_LOG_SOAuthorizationCore();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEBUG))
  {
    __56__SOAuthorizationCore__doAKshouldProcessURL_completion___block_invoke_cold_1(a1);
  }

  return (*(*(a1 + 40) + 16))();
}

- (void)_cancelAuthorization
{
  v6 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_0_2();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 0xCu);
  v5 = *MEMORY[0x1E69E9840];
}

void __43__SOAuthorizationCore__cancelAuthorization__block_invoke(uint64_t a1, int a2, void *a3)
{
  v19 = *MEMORY[0x1E69E9840];
  v5 = a3;
  v6 = SO_LOG_SOAuthorizationCore();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 67109378;
    v16 = a2;
    v17 = 2114;
    v18 = v5;
    _os_log_impl(&dword_1CA238000, v6, OS_LOG_TYPE_DEFAULT, "cancelAuthorizationWithCompletion: success = %d, error = %{public}@", buf, 0x12u);
  }

  if ((a2 & 1) == 0)
  {
    v8 = *(a1 + 32);
    v7 = (a1 + 32);
    v9 = v8;
    objc_sync_enter(v9);
    if (*(*v7 + 16))
    {
      v10 = SO_LOG_SOAuthorizationCore();
      if (os_log_type_enabled(v10, OS_LOG_TYPE_DEBUG))
      {
        __43__SOAuthorizationCore__cancelAuthorization__block_invoke_cold_1(v7);
      }

      v11 = *(*v7 + 16);
      *(*v7 + 16) = 0;

      objc_sync_exit(v9);
      v14[0] = MEMORY[0x1E69E9820];
      v14[1] = 3221225472;
      v14[2] = __43__SOAuthorizationCore__cancelAuthorization__block_invoke_18;
      v14[3] = &unk_1E836CF08;
      v14[4] = *v7;
      v12 = MEMORY[0x1CCA9D280](v14);
      [*v7 performBlockOnDelegateQueue:v12];
    }

    else
    {
      objc_sync_exit(v9);
    }
  }

  v13 = *MEMORY[0x1E69E9840];
}

void __43__SOAuthorizationCore__cancelAuthorization__block_invoke_18(uint64_t a1)
{
  v2 = [*(a1 + 32) delegate];
  if (v2)
  {
    if (objc_opt_respondsToSelector())
    {
      v3 = SO_LOG_SOAuthorizationCore();
      if (os_log_type_enabled(v3, OS_LOG_TYPE_DEBUG))
      {
        __43__SOAuthorizationCore__cancelAuthorization__block_invoke_18_cold_1();
      }

      [v2 authorizationDidCancel:*(a1 + 32)];
    }
  }

  else
  {
    v4 = SO_LOG_SOAuthorizationCore();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      __43__SOAuthorizationCore__cancelAuthorization__block_invoke_18_cold_2();
    }
  }
}

- (void)_finishAuthorization:(id)a3 withCredential:(id)a4 error:(id)a5
{
  v41 = *MEMORY[0x1E69E9840];
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v11 = SO_LOG_SOAuthorizationCore();
  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
  {
    requestParametersCore = self->_requestParametersCore;
    WeakRetained = objc_loadWeakRetained(&self->_delegate);
    *buf = 136316675;
    v28 = "[SOAuthorizationCore _finishAuthorization:withCredential:error:]";
    v29 = 2114;
    v30 = v8;
    v31 = 2113;
    v32 = v9;
    v33 = 2114;
    v34 = v10;
    v35 = 2114;
    v36 = requestParametersCore;
    v37 = 2114;
    v38 = WeakRetained;
    v39 = 2112;
    v40 = self;
    _os_log_impl(&dword_1CA238000, v11, OS_LOG_TYPE_DEFAULT, "%s requestIdentifier = %{public}@, credentialCore = %{private}@, error = %{public}@, requestParametersCore = %{public}@, delegate = %{public}@ on %@", buf, 0x48u);
  }

  v14 = self;
  objc_sync_enter(v14);
  v15 = v14->_requestParametersCore;
  if (v15)
  {
    v14->_requestParametersCore = 0;

    objc_sync_exit(v14);
    v19 = MEMORY[0x1E69E9820];
    v20 = 3221225472;
    v21 = __65__SOAuthorizationCore__finishAuthorization_withCredential_error___block_invoke;
    v22 = &unk_1E836CFD0;
    v23 = v14;
    v24 = v10;
    v25 = v9;
    v26 = v8;
    v16 = MEMORY[0x1CCA9D280](&v19);
    [(SOAuthorizationCore *)v14 performBlockOnDelegateQueue:v16, v19, v20, v21, v22, v23];
  }

  else
  {
    v17 = SO_LOG_SOAuthorizationCore();
    if (os_log_type_enabled(v17, OS_LOG_TYPE_DEBUG))
    {
      [SOAuthorizationCore _finishAuthorization:withCredential:error:];
    }

    objc_sync_exit(v14);
  }

  v18 = *MEMORY[0x1E69E9840];
}

void __65__SOAuthorizationCore__finishAuthorization_withCredential_error___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) delegate];
  if (v2)
  {
    v4 = (a1 + 40);
    v3 = *(a1 + 40);
    if (v3)
    {
      if ([SOErrorHelper error:v3 hasCode:-2])
      {
        if (objc_opt_respondsToSelector())
        {
          v5 = SO_LOG_SOAuthorizationCore();
          if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
          {
            __65__SOAuthorizationCore__finishAuthorization_withCredential_error___block_invoke_cold_4();
          }

          [v2 authorizationDidCancel:*(a1 + 32)];
        }

        goto LABEL_53;
      }

      if ([SOErrorHelper error:*v4 hasCode:-5])
      {
        if (objc_opt_respondsToSelector())
        {
          v18 = SO_LOG_SOAuthorizationCore();
          if (os_log_type_enabled(v18, OS_LOG_TYPE_DEBUG))
          {
            goto LABEL_25;
          }

          goto LABEL_26;
        }
      }

      else
      {
        if (![SOErrorHelper error:*v4 hasCode:-9])
        {
          if (objc_opt_respondsToSelector())
          {
            v23 = SO_LOG_SOAuthorizationCore();
            if (os_log_type_enabled(v23, OS_LOG_TYPE_DEBUG))
            {
              __65__SOAuthorizationCore__finishAuthorization_withCredential_error___block_invoke_cold_1((a1 + 40));
            }

            [v2 authorization:*(a1 + 32) didCompleteWithError:*(a1 + 40)];
          }

          goto LABEL_53;
        }

        if (objc_opt_respondsToSelector())
        {
          v18 = SO_LOG_SOAuthorizationCore();
          if (os_log_type_enabled(v18, OS_LOG_TYPE_DEBUG))
          {
LABEL_25:
            __65__SOAuthorizationCore__finishAuthorization_withCredential_error___block_invoke_cold_2();
          }

LABEL_26:

          [v2 authorizationDidNotHandle:*(a1 + 32)];
        }
      }

LABEL_53:
      v30 = SO_LOG_SOAuthorizationCore();
      if (os_log_type_enabled(v30, OS_LOG_TYPE_DEBUG))
      {
        __65__SOAuthorizationCore__finishAuthorization_withCredential_error___block_invoke_cold_12();
      }

      v31 = *(a1 + 32);
      v32 = *(a1 + 56);
      v35[0] = MEMORY[0x1E69E9820];
      v35[1] = 3221225472;
      v35[2] = __65__SOAuthorizationCore__finishAuthorization_withCredential_error___block_invoke_38;
      v35[3] = &unk_1E836CFA8;
      v35[4] = v31;
      [v31 finishAuthorization:v32 completion:v35];
      goto LABEL_56;
    }

    v7 = *(a1 + 48);
    if (!v7)
    {
      if (objc_opt_respondsToSelector())
      {
        v19 = SO_LOG_SOAuthorizationCore();
        if (os_log_type_enabled(v19, OS_LOG_TYPE_DEBUG))
        {
          __65__SOAuthorizationCore__finishAuthorization_withCredential_error___block_invoke_cold_11();
        }

        [v2 authorizationDidComplete:*(a1 + 32)];
      }

      goto LABEL_53;
    }

    v8 = [v7 secKeyProxyEndpoints];

    if (v8)
    {
      if ((objc_opt_respondsToSelector() & 1) == 0)
      {
        goto LABEL_53;
      }

      v9 = *(a1 + 32);
      v10 = [*(a1 + 48) secKeyProxyEndpoints];
      v36 = 0;
      v11 = [v9 createSecKeysFromSecKeyProxyEndpoints:v10 error:&v36];
      v12 = v36;

      if (v11)
      {
        v13 = objc_alloc_init(SOAuthorizationResultCore);
        v14 = [*(a1 + 48) httpAuthorizationHeaders];
        [(SOAuthorizationResultCore *)v13 setHttpAuthorizationHeaders:v14];

        v15 = [*(a1 + 48) httpResponse];
        [(SOAuthorizationResultCore *)v13 setHttpResponse:v15];

        v16 = [*(a1 + 48) httpBody];
        [(SOAuthorizationResultCore *)v13 setHttpBody:v16];

        [(SOAuthorizationResultCore *)v13 setPrivateKeys:v11];
        v17 = SO_LOG_SOAuthorizationCore();
        if (os_log_type_enabled(v17, OS_LOG_TYPE_DEBUG))
        {
          __65__SOAuthorizationCore__finishAuthorization_withCredential_error___block_invoke_cold_5();
        }

        [v2 authorization:*(a1 + 32) didCompleteWithAuthorizationResult:v13];
      }

      else
      {
        v28 = SO_LOG_SOAuthorizationCore();
        if (os_log_type_enabled(v28, OS_LOG_TYPE_ERROR))
        {
          __65__SOAuthorizationCore__finishAuthorization_withCredential_error___block_invoke_cold_6();
        }

        if (objc_opt_respondsToSelector())
        {
          v29 = SO_LOG_SOAuthorizationCore();
          if (os_log_type_enabled(v29, OS_LOG_TYPE_DEBUG))
          {
            __65__SOAuthorizationCore__finishAuthorization_withCredential_error___block_invoke_cold_7();
          }

          [v2 authorization:*(a1 + 32) didCompleteWithError:v12];
        }
      }
    }

    else
    {
      v20 = [*(a1 + 48) httpAuthorizationHeaders];

      if (v20)
      {
        if ((objc_opt_respondsToSelector() & 1) == 0)
        {
          goto LABEL_53;
        }

        v21 = SO_LOG_SOAuthorizationCore();
        if (os_log_type_enabled(v21, OS_LOG_TYPE_DEBUG))
        {
          __65__SOAuthorizationCore__finishAuthorization_withCredential_error___block_invoke_cold_8();
        }

        v22 = *(a1 + 32);
        v12 = [*(a1 + 48) httpAuthorizationHeaders];
        [v2 authorization:v22 didCompleteWithHTTPAuthorizationHeaders:v12];
      }

      else
      {
        v24 = [*(a1 + 48) httpResponse];

        if (v24)
        {
          if ((objc_opt_respondsToSelector() & 1) == 0)
          {
            goto LABEL_53;
          }

          v25 = SO_LOG_SOAuthorizationCore();
          if (os_log_type_enabled(v25, OS_LOG_TYPE_DEBUG))
          {
            __65__SOAuthorizationCore__finishAuthorization_withCredential_error___block_invoke_cold_9();
          }

          v26 = *(a1 + 32);
          v12 = [*(a1 + 48) httpResponse];
          v27 = [*(a1 + 48) httpBody];
          [v2 authorization:v26 didCompleteWithHTTPResponse:v12 httpBody:v27];
        }

        else
        {
          if ((objc_opt_respondsToSelector() & 1) == 0)
          {
            goto LABEL_53;
          }

          v33 = SO_LOG_SOAuthorizationCore();
          if (os_log_type_enabled(v33, OS_LOG_TYPE_DEBUG))
          {
            __65__SOAuthorizationCore__finishAuthorization_withCredential_error___block_invoke_cold_10();
          }

          v34 = *(a1 + 32);
          v12 = [SOErrorHelper errorWithCode:-1000 message:@"Invalid credential"];
          [v2 authorization:v34 didCompleteWithError:v12];
        }
      }
    }

    goto LABEL_53;
  }

  v6 = SO_LOG_SOAuthorizationCore();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
  {
    __65__SOAuthorizationCore__finishAuthorization_withCredential_error___block_invoke_cold_13();
  }

LABEL_56:
}

void __65__SOAuthorizationCore__finishAuthorization_withCredential_error___block_invoke_38(uint64_t a1, int a2, void *a3)
{
  v15 = *MEMORY[0x1E69E9840];
  v5 = a3;
  v6 = SO_LOG_SOAuthorizationCore();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEBUG))
  {
    v8 = *(a1 + 32);
    v9 = 138543874;
    v10 = v8;
    v11 = 1024;
    v12 = a2;
    v13 = 2114;
    v14 = v5;
    _os_log_debug_impl(&dword_1CA238000, v6, OS_LOG_TYPE_DEBUG, "%{public}@ has finished (success: %d, error: %{public}@)", &v9, 0x1Cu);
  }

  v7 = *MEMORY[0x1E69E9840];
}

- (SOAuthorizationCoreDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

- (SOAuthorizationRequestParametersCore)requestParametersCore
{
  v2 = self;
  objc_sync_enter(v2);
  v3 = v2->_requestParametersCore;
  objc_sync_exit(v2);

  return v3;
}

- (void)setRequestParametersCore:(id)a3
{
  v4 = a3;
  obj = self;
  objc_sync_enter(obj);
  requestParametersCore = obj->_requestParametersCore;
  obj->_requestParametersCore = v4;

  objc_sync_exit(obj);
}

- (void)beginAuthorizationWithParameters:(id)a3 completion:(id)a4
{
  v48 = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = a4;
  v8 = SO_LOG_SOAuthorizationCore();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    v23 = [v6 identifier];
    v22 = [v6 operation];
    v9 = [v6 url];
    v10 = [v6 httpHeaders];
    v11 = [v6 httpBody];
    v12 = [v6 auditTokenData];
    WeakRetained = objc_loadWeakRetained(&self->_delegate);
    enableUserInteraction = self->_enableUserInteraction;
    *buf = 136317699;
    v27 = "[SOAuthorizationCore(Core) beginAuthorizationWithParameters:completion:]";
    v28 = 2114;
    v29 = v23;
    v30 = 2114;
    v31 = v22;
    v32 = 2160;
    v33 = 1752392040;
    v34 = 2117;
    v35 = v9;
    v36 = 2113;
    v37 = v10;
    v38 = 2113;
    v39 = v11;
    v40 = 2114;
    v41 = v12;
    v42 = 2114;
    v43 = WeakRetained;
    v44 = 1024;
    v45 = enableUserInteraction;
    v46 = 2112;
    v47 = self;
    _os_log_impl(&dword_1CA238000, v8, OS_LOG_TYPE_DEFAULT, "%s requestIdentifier = %{public}@, operation = %{public}@, url = %{sensitive, mask.hash}@, httpHeaders = %{private}@, httpBody = %{private}@, auditToken = %{public}@, delegate = %{public}@, enableUI = %d on %@", buf, 0x6Cu);
  }

  v15 = self;
  objc_sync_enter(v15);
  if (v15->_requestParametersCore)
  {
    v16 = SO_LOG_SOAuthorizationCore();
    if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v27 = v15;
      _os_log_impl(&dword_1CA238000, v16, OS_LOG_TYPE_DEFAULT, "%@ is already authorizing => ignoring a new authorization request", buf, 0xCu);
    }

    if (v7)
    {
      v17 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%@ is already authorizing => ignoring a new authorization request", v15];
      v18 = [SOErrorHelper silentInternalErrorWithMessage:v17];
      v7[2](v7, 0, v18);
    }

    objc_sync_exit(v15);
  }

  else
  {
    v19 = [[SOAuthorizationRequestParametersCore alloc] initWithAuthorizationParametersCore:v6];
    requestParametersCore = v15->_requestParametersCore;
    v15->_requestParametersCore = v19;

    [(SOAuthorizationRequestParametersCore *)v15->_requestParametersCore setAuthorizationOptions:v15->_authorizationOptions];
    [(SOAuthorizationRequestParametersCore *)v15->_requestParametersCore setEnableUserInteraction:v15->_enableUserInteraction];
    objc_sync_exit(v15);

    if (!v15->_enableUserInteraction)
    {
      [(SOAuthorizationCore *)v15 _addNoUserInterfaceToAuthorizationOptionsInRequestParameters];
    }

    activity_block[0] = MEMORY[0x1E69E9820];
    activity_block[1] = 3221225472;
    activity_block[2] = __73__SOAuthorizationCore_Core__beginAuthorizationWithParameters_completion___block_invoke;
    activity_block[3] = &unk_1E836CFF8;
    activity_block[4] = v15;
    v25 = v7;
    _os_activity_initiate(&dword_1CA238000, "beginAuthorizationWithParameters", OS_ACTIVITY_FLAG_DEFAULT, activity_block);
  }

  v21 = *MEMORY[0x1E69E9840];
}

void __73__SOAuthorizationCore_Core__beginAuthorizationWithParameters_completion___block_invoke(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = *(v1 + 8);
  v3 = *(v1 + 16);
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = __73__SOAuthorizationCore_Core__beginAuthorizationWithParameters_completion___block_invoke_2;
  v4[3] = &unk_1E836CC08;
  v5 = *(a1 + 40);
  [v2 performAuthorizationWithRequestParameters:v3 completion:v4];
}

void __73__SOAuthorizationCore_Core__beginAuthorizationWithParameters_completion___block_invoke_2(uint64_t a1, void *a2, void *a3)
{
  v14 = *MEMORY[0x1E69E9840];
  v5 = a2;
  v6 = a3;
  v7 = SO_LOG_SOAuthorizationCore();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    v10 = 138478083;
    v11 = v5;
    v12 = 2114;
    v13 = v6;
    _os_log_impl(&dword_1CA238000, v7, OS_LOG_TYPE_DEFAULT, "performAuthorizationWithRequestParameters: credential = %{private}@, error = %{public}@", &v10, 0x16u);
  }

  v8 = *(a1 + 32);
  if (v8)
  {
    (*(v8 + 16))(v8, v5, v6);
  }

  v9 = *MEMORY[0x1E69E9840];
}

- (void)beginAuthorizationWithRequestParameters:(id)a3 completion:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = SO_LOG_SOAuthorizationCore();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
  {
    [(SOAuthorizationCore(Core) *)v6 beginAuthorizationWithRequestParameters:v8 completion:?];
  }

  requestParametersCore = self->_requestParametersCore;
  self->_requestParametersCore = v6;
  v10 = v6;

  if (!self->_enableUserInteraction)
  {
    [(SOAuthorizationCore *)self _addNoUserInterfaceToAuthorizationOptionsInRequestParameters];
  }

  v12[0] = MEMORY[0x1E69E9820];
  v12[1] = 3221225472;
  v12[2] = __80__SOAuthorizationCore_Core__beginAuthorizationWithRequestParameters_completion___block_invoke;
  v12[3] = &unk_1E836CFF8;
  v12[4] = self;
  v13 = v7;
  v11 = v7;
  _os_activity_initiate(&dword_1CA238000, "beginAuthorizationWithParameters", OS_ACTIVITY_FLAG_DEFAULT, v12);
}

- (void)_addNoUserInterfaceToAuthorizationOptionsInRequestParameters
{
  v3 = [(SOAuthorizationRequestParametersCore *)self->_requestParametersCore authorizationOptions];
  if (v3)
  {
    v4 = [(SOAuthorizationRequestParametersCore *)self->_requestParametersCore authorizationOptions];
    v5 = [v4 mutableCopy];
  }

  else
  {
    v5 = [MEMORY[0x1E695DF90] dictionary];
  }

  [v5 setObject:MEMORY[0x1E695E118] forKeyedSubscript:@"noUserInterface"];
  [(SOAuthorizationRequestParametersCore *)self->_requestParametersCore setAuthorizationOptions:v5];
}

- (void)performBlockOnDelegateQueue:(id)a3
{
  v4 = a3;
  v5 = SO_LOG_SOAuthorizationCore();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
  {
    [SOAuthorizationCore(Core) performBlockOnDelegateQueue:?];
  }

  delegateDispatchQueue = self->_delegateDispatchQueue;
  if (delegateDispatchQueue)
  {
    goto LABEL_7;
  }

  if (![MEMORY[0x1E696AF00] isMainThread])
  {
    delegateDispatchQueue = MEMORY[0x1E69E96A0];
LABEL_7:
    dispatch_async(delegateDispatchQueue, v4);
    goto LABEL_8;
  }

  v4[2](v4);
LABEL_8:
}

- (void)debugHintsWithCompletion:(id)a3
{
  v11 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = SO_LOG_SOAuthorizationCore();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v7 = 136315394;
    v8 = "[SOAuthorizationCore(Core) debugHintsWithCompletion:]";
    v9 = 2112;
    v10 = self;
    _os_log_impl(&dword_1CA238000, v5, OS_LOG_TYPE_DEFAULT, "%s  on %@", &v7, 0x16u);
  }

  [(SOClient *)self->_client debugHintsWithCompletion:v4];
  v6 = *MEMORY[0x1E69E9840];
}

- (void)finishAuthorization:(id)a3 completion:(id)a4
{
  v6 = a4;
  v7 = a3;
  v8 = SO_LOG_SOAuthorizationCore();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
  {
    [SOAuthorizationCore(Core) finishAuthorization:completion:];
  }

  [(SOClient *)self->_client finishAuthorization:v7 completion:v6];
}

- (id)createSecKeysFromSecKeyProxyEndpoints:(id)a3 error:(id *)a4
{
  v24 = *MEMORY[0x1E69E9840];
  v5 = a3;
  v6 = SO_LOG_SOAuthorizationCore();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEBUG))
  {
    [SOAuthorizationCore(Core) createSecKeysFromSecKeyProxyEndpoints:error:];
  }

  v7 = [MEMORY[0x1E695DF70] array];
  v19 = 0u;
  v20 = 0u;
  v21 = 0u;
  v22 = 0u;
  v8 = v5;
  v9 = [v8 countByEnumeratingWithState:&v19 objects:v23 count:16];
  if (v9)
  {
    v10 = v9;
    v11 = *v20;
    while (2)
    {
      for (i = 0; i != v10; ++i)
      {
        if (*v20 != v11)
        {
          objc_enumerationMutation(v8);
        }

        v13 = [MEMORY[0x1E697AAB0] createKeyFromEndpoint:*(*(&v19 + 1) + 8 * i) error:{a4, v19}];
        if (!v13)
        {
          v16 = SO_LOG_SOAuthorizationCore();
          if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
          {
            [SOAuthorizationCore(Core) createSecKeysFromSecKeyProxyEndpoints:a4 error:?];
          }

          v15 = 0;
          goto LABEL_15;
        }

        v14 = v13;
        [v7 addObject:v13];
      }

      v10 = [v8 countByEnumeratingWithState:&v19 objects:v23 count:16];
      if (v10)
      {
        continue;
      }

      break;
    }
  }

  v15 = v7;
LABEL_15:

  v17 = *MEMORY[0x1E69E9840];

  return v15;
}

- (id)realms
{
  v16 = *MEMORY[0x1E69E9840];
  v3 = SO_LOG_SOAuthorizationCore();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315394;
    *&buf[4] = "[SOAuthorizationCore(Kerberos) realms]";
    *&buf[12] = 2112;
    *&buf[14] = self;
    _os_log_impl(&dword_1CA238000, v3, OS_LOG_TYPE_DEFAULT, "%s  on %@", buf, 0x16u);
  }

  *buf = 0;
  *&buf[8] = buf;
  *&buf[16] = 0x3032000000;
  v13 = __Block_byref_object_copy__0;
  v14 = __Block_byref_object_dispose__0;
  v15 = 0;
  client = self->_client;
  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 3221225472;
  v11[2] = __39__SOAuthorizationCore_Kerberos__realms__block_invoke;
  v11[3] = &unk_1E836D020;
  v11[4] = buf;
  [(SOClient *)client realmsWithCompletion:v11];
  v5 = *(*&buf[8] + 40);
  if (!v5)
  {
    v6 = [MEMORY[0x1E695DEC8] array];
    v7 = *(*&buf[8] + 40);
    *(*&buf[8] + 40) = v6;

    v5 = *(*&buf[8] + 40);
  }

  v8 = v5;
  _Block_object_dispose(buf, 8);

  v9 = *MEMORY[0x1E69E9840];

  return v8;
}

void __39__SOAuthorizationCore_Kerberos__realms__block_invoke(uint64_t a1, void *a2, void *a3)
{
  v15 = *MEMORY[0x1E69E9840];
  v5 = a2;
  v6 = a3;
  v7 = SO_LOG_SOAuthorizationCore();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    v11 = 138543618;
    v12 = v5;
    v13 = 2114;
    v14 = v6;
    _os_log_impl(&dword_1CA238000, v7, OS_LOG_TYPE_DEFAULT, "realms = %{public}@, error = %{public}@", &v11, 0x16u);
  }

  v8 = *(*(a1 + 32) + 8);
  v9 = *(v8 + 40);
  *(v8 + 40) = v5;

  v10 = *MEMORY[0x1E69E9840];
}

- (id)kerberosProfiles
{
  v16 = *MEMORY[0x1E69E9840];
  v3 = SO_LOG_SOAuthorizationCore();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315394;
    *&buf[4] = "[SOAuthorizationCore(Kerberos) kerberosProfiles]";
    *&buf[12] = 2112;
    *&buf[14] = self;
    _os_log_impl(&dword_1CA238000, v3, OS_LOG_TYPE_DEFAULT, "%s  on %@", buf, 0x16u);
  }

  *buf = 0;
  *&buf[8] = buf;
  *&buf[16] = 0x3032000000;
  v13 = __Block_byref_object_copy__0;
  v14 = __Block_byref_object_dispose__0;
  v15 = 0;
  client = self->_client;
  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 3221225472;
  v11[2] = __49__SOAuthorizationCore_Kerberos__kerberosProfiles__block_invoke;
  v11[3] = &unk_1E836D020;
  v11[4] = buf;
  [(SOClient *)client profilesWithExtensionBundleIdentifier:@"com.apple.AppSSOKerberos.KerberosExtension" completion:v11];
  v5 = *(*&buf[8] + 40);
  if (!v5)
  {
    v6 = [MEMORY[0x1E695DEC8] array];
    v7 = *(*&buf[8] + 40);
    *(*&buf[8] + 40) = v6;

    v5 = *(*&buf[8] + 40);
  }

  v8 = v5;
  _Block_object_dispose(buf, 8);

  v9 = *MEMORY[0x1E69E9840];

  return v8;
}

+ (void)isExtensionProcessWithAuditToken:(id *)a3 completion:(id)a4
{
  v19 = *MEMORY[0x1E69E9840];
  v6 = a4;
  v7 = SO_LOG_SOAuthorizationCore();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315394;
    v16 = "+[SOAuthorizationCore(Process) isExtensionProcessWithAuditToken:completion:]";
    v17 = 2112;
    v18 = a1;
    _os_log_impl(&dword_1CA238000, v7, OS_LOG_TYPE_DEFAULT, "%s  on %@", buf, 0x16u);
  }

  if (isExtensionProcessWithAuditToken_completion__onceToken != -1)
  {
    +[SOAuthorizationCore(Process) isExtensionProcessWithAuditToken:completion:];
  }

  activity_block[0] = MEMORY[0x1E69E9820];
  activity_block[1] = 3221225472;
  v8 = *&a3->var0[4];
  v13 = *a3->var0;
  v14 = v8;
  activity_block[2] = __76__SOAuthorizationCore_Process__isExtensionProcessWithAuditToken_completion___block_invoke_2;
  activity_block[3] = &unk_1E836D048;
  v12 = v6;
  v9 = v6;
  _os_activity_initiate(&dword_1CA238000, "isExtensionProcessWithAuditToken", OS_ACTIVITY_FLAG_DEFAULT, activity_block);

  v10 = *MEMORY[0x1E69E9840];
}

uint64_t __76__SOAuthorizationCore_Process__isExtensionProcessWithAuditToken_completion___block_invoke()
{
  isExtensionProcessWithAuditToken_completion__client = objc_alloc_init(SOClient);

  return MEMORY[0x1EEE66BB8]();
}

void __76__SOAuthorizationCore_Process__isExtensionProcessWithAuditToken_completion___block_invoke_2(uint64_t a1)
{
  v2 = isExtensionProcessWithAuditToken_completion__client;
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __76__SOAuthorizationCore_Process__isExtensionProcessWithAuditToken_completion___block_invoke_3;
  v5[3] = &unk_1E836CC58;
  v6 = *(a1 + 32);
  v3 = *(a1 + 56);
  v4[0] = *(a1 + 40);
  v4[1] = v3;
  [v2 isExtensionProcessWithAuditToken:v4 completion:v5];
}

uint64_t __76__SOAuthorizationCore_Process__isExtensionProcessWithAuditToken_completion___block_invoke_3(uint64_t a1)
{
  result = *(a1 + 32);
  if (result)
  {
    return (*(result + 16))();
  }

  return result;
}

+ (void)isConfigurationActiveForExtensionIdentifier:(id)a3 completion:(id)a4
{
  v5 = a3;
  v6 = a4;
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __93__SOAuthorizationCore_Configuration__isConfigurationActiveForExtensionIdentifier_completion___block_invoke;
  v9[3] = &unk_1E836CFF8;
  v10 = v5;
  v11 = v6;
  v7 = v6;
  v8 = v5;
  _os_activity_initiate(&dword_1CA238000, "isConfigurationActiveForExtensionIdentifier", OS_ACTIVITY_FLAG_DEFAULT, v9);
}

void __93__SOAuthorizationCore_Configuration__isConfigurationActiveForExtensionIdentifier_completion___block_invoke(uint64_t a1)
{
  v2 = +[SOConfigurationClient defaultClient];
  [v2 isConfigurationActiveForExtensionIdentifier:*(a1 + 32) completion:*(a1 + 40)];
}

void __123__SOAuthorizationCore_canPerformAuthorizationWithURL_responseCode_callerBundleIdentifier_useInternalExtensions_completion___block_invoke_2_cold_1(uint64_t a1)
{
  v11 = *MEMORY[0x1E69E9840];
  *(a1 + 72);
  v1 = *(a1 + 56);
  v8 = *(a1 + 32);
  v9 = *(a1 + 40);
  v10 = *(a1 + 64);
  OUTLINED_FUNCTION_3_0();
  _os_log_debug_impl(v2, v3, v4, v5, v6, 0x4Eu);
  v7 = *MEMORY[0x1E69E9840];
}

void __56__SOAuthorizationCore__doAKshouldProcessURL_completion___block_invoke_cold_1(uint64_t a1)
{
  v9 = *MEMORY[0x1E69E9840];
  v7 = *(a1 + 32);
  v8 = *(a1 + 48);
  OUTLINED_FUNCTION_3_0();
  _os_log_debug_impl(v1, v2, v3, v4, v5, 0x34u);
  v6 = *MEMORY[0x1E69E9840];
}

void __43__SOAuthorizationCore__cancelAuthorization__block_invoke_cold_1(uint64_t *a1)
{
  v8 = *MEMORY[0x1E69E9840];
  v7 = *a1;
  OUTLINED_FUNCTION_0_2();
  _os_log_debug_impl(v1, v2, v3, v4, v5, 0xCu);
  v6 = *MEMORY[0x1E69E9840];
}

void __43__SOAuthorizationCore__cancelAuthorization__block_invoke_18_cold_1()
{
  OUTLINED_FUNCTION_1_2();
  OUTLINED_FUNCTION_0_2();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 2u);
}

void __43__SOAuthorizationCore__cancelAuthorization__block_invoke_18_cold_2()
{
  OUTLINED_FUNCTION_1_2();
  OUTLINED_FUNCTION_0_0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

- (void)_finishAuthorization:withCredential:error:.cold.1()
{
  v6 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_0_2();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 0xCu);
  v5 = *MEMORY[0x1E69E9840];
}

void __65__SOAuthorizationCore__finishAuthorization_withCredential_error___block_invoke_cold_1(uint64_t *a1)
{
  v8 = *MEMORY[0x1E69E9840];
  v7 = *a1;
  OUTLINED_FUNCTION_0_2();
  _os_log_debug_impl(v1, v2, v3, v4, v5, 0xCu);
  v6 = *MEMORY[0x1E69E9840];
}

void __65__SOAuthorizationCore__finishAuthorization_withCredential_error___block_invoke_cold_2()
{
  OUTLINED_FUNCTION_1_2();
  OUTLINED_FUNCTION_0_2();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 2u);
}

void __65__SOAuthorizationCore__finishAuthorization_withCredential_error___block_invoke_cold_4()
{
  OUTLINED_FUNCTION_1_2();
  OUTLINED_FUNCTION_0_2();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 2u);
}

void __65__SOAuthorizationCore__finishAuthorization_withCredential_error___block_invoke_cold_5()
{
  OUTLINED_FUNCTION_1_2();
  OUTLINED_FUNCTION_0_2();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 2u);
}

void __65__SOAuthorizationCore__finishAuthorization_withCredential_error___block_invoke_cold_6()
{
  v6 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_0_0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
  v5 = *MEMORY[0x1E69E9840];
}

void __65__SOAuthorizationCore__finishAuthorization_withCredential_error___block_invoke_cold_7()
{
  v6 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_0_2();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 0xCu);
  v5 = *MEMORY[0x1E69E9840];
}

void __65__SOAuthorizationCore__finishAuthorization_withCredential_error___block_invoke_cold_8()
{
  OUTLINED_FUNCTION_1_2();
  OUTLINED_FUNCTION_0_2();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 2u);
}

void __65__SOAuthorizationCore__finishAuthorization_withCredential_error___block_invoke_cold_9()
{
  OUTLINED_FUNCTION_1_2();
  OUTLINED_FUNCTION_0_2();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 2u);
}

void __65__SOAuthorizationCore__finishAuthorization_withCredential_error___block_invoke_cold_10()
{
  OUTLINED_FUNCTION_1_2();
  OUTLINED_FUNCTION_0_2();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 2u);
}

void __65__SOAuthorizationCore__finishAuthorization_withCredential_error___block_invoke_cold_11()
{
  OUTLINED_FUNCTION_1_2();
  OUTLINED_FUNCTION_0_2();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 2u);
}

void __65__SOAuthorizationCore__finishAuthorization_withCredential_error___block_invoke_cold_12()
{
  OUTLINED_FUNCTION_1_2();
  OUTLINED_FUNCTION_0_2();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 2u);
}

void __65__SOAuthorizationCore__finishAuthorization_withCredential_error___block_invoke_cold_13()
{
  OUTLINED_FUNCTION_1_2();
  OUTLINED_FUNCTION_0_0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

@end