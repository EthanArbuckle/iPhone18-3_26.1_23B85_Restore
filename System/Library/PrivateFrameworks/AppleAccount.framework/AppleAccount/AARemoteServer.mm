@interface AARemoteServer
+ (AARemoteServer)sharedServer;
+ (AARemoteServer)sharedServerWithNoUrlCache;
- (id)_bodyDictionaryWithProtocolVersion:(id)a3;
- (id)_configurationCacheInvalidatingIfNecessary;
- (id)_configurationLock_configurationCacheInvalidatingIfNecessary;
- (id)_initRequiringUrlCache:(BOOL)a3;
- (id)_newURLRequestWithURLString:(id)a3;
- (id)_redactedBodyStringWithPropertyList:(id)a3;
- (id)_redactedHeadersFromHTTPHeaders:(id)a3;
- (void)_configurationAndResponseWithCompletion:(id)a3;
- (void)_fetchConfigurationAndResponseWithCompletion:(id)a3;
- (void)_setConfigurationCache:(id)a3;
- (void)_startRequest:(id)a3 responseClass:(Class)a4 mainThread:(BOOL)a5 completion:(id)a6;
- (void)authenticateAccount:(id)a3 completion:(id)a4;
- (void)configurationWithCompletion:(id)a3;
- (void)loginDelegates:(id)a3 parameters:(id)a4 completion:(id)a5;
- (void)registerAccount:(id)a3 withHSA:(BOOL)a4 completion:(id)a5;
- (void)urlConfigurationWithCompletion:(id)a3;
@end

@implementation AARemoteServer

uint64_t __44__AARemoteServer_sharedServerWithNoUrlCache__block_invoke()
{
  sharedServerWithNoUrlCache_sharedServer = [[AARemoteServer alloc] _initRequiringUrlCache:0];

  return MEMORY[0x1EEE66BB8]();
}

+ (AARemoteServer)sharedServerWithNoUrlCache
{
  if (sharedServerWithNoUrlCache_onceToken != -1)
  {
    +[AARemoteServer sharedServerWithNoUrlCache];
  }

  v3 = sharedServerWithNoUrlCache_sharedServer;

  return v3;
}

+ (AARemoteServer)sharedServer
{
  if (sharedServer_onceToken != -1)
  {
    +[AARemoteServer sharedServer];
  }

  v3 = sharedServer_sharedServer;

  return v3;
}

uint64_t __30__AARemoteServer_sharedServer__block_invoke()
{
  sharedServer_sharedServer = objc_alloc_init(AARemoteServer);

  return MEMORY[0x1EEE66BB8]();
}

- (id)_initRequiringUrlCache:(BOOL)a3
{
  v3 = a3;
  v18 = *MEMORY[0x1E69E9840];
  v15.receiver = self;
  v15.super_class = AARemoteServer;
  v4 = [(AARemoteServer *)&v15 init];
  if (v4)
  {
    if (v3)
    {
      +[AAURLSession sharedSession];
    }

    else
    {
      +[AAURLSession sharedSessionWithNoUrlCache];
    }
    v5 = ;
    session = v4->_session;
    v4->_session = v5;

    v4->_configurationLock._os_unfair_lock_opaque = 0;
    v7 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    v8 = dispatch_queue_create("com.apple.AppleAccount.RemoteServer", v7);
    configurationQueue = v4->_configurationQueue;
    v4->_configurationQueue = v8;

    configurationCache = v4->_configurationCache;
    v4->_configurationCache = 0;

    v11 = _AALogSystem();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
    {
      v12 = @"NO";
      if (v3)
      {
        v12 = @"YES";
      }

      *buf = 138412290;
      v17 = v12;
      _os_log_impl(&dword_1B6F6A000, v11, OS_LOG_TYPE_DEFAULT, "AARemoteServer initiated with requiresUrlCache: %@", buf, 0xCu);
    }
  }

  v13 = *MEMORY[0x1E69E9840];
  return v4;
}

- (void)configurationWithCompletion:(id)a3
{
  v4 = a3;
  if (!v4)
  {
    [AARemoteServer configurationWithCompletion:];
  }

  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __46__AARemoteServer_configurationWithCompletion___block_invoke;
  v6[3] = &unk_1E7C9BA60;
  v6[4] = self;
  v7 = v4;
  v5 = v4;
  [(AARemoteServer *)self urlConfigurationWithCompletion:v6];
}

void __46__AARemoteServer_configurationWithCompletion___block_invoke(uint64_t a1, void *a2, void *a3, void *a4)
{
  v7 = a2;
  v8 = a3;
  v9 = a4;
  v10 = v7;
  v11 = v9;
  if ((v10 == 0) != (v11 != 0))
  {
    v16 = [MEMORY[0x1E695DF30] exceptionWithName:*MEMORY[0x1E695D930] reason:@"Invalid exclusivity not satisfying: configuration ^ error" userInfo:0];
    objc_exception_throw(v16);
  }

  v12 = v11;

  v13 = _AALogSystem();
  if (os_log_type_enabled(v13, OS_LOG_TYPE_DEBUG))
  {
    __46__AARemoteServer_configurationWithCompletion___block_invoke_cold_1(v10, v12, v13);
  }

  if (v12)
  {
    v14 = _AALogSystem();
    if (os_log_type_enabled(v14, OS_LOG_TYPE_DEBUG))
    {
      __46__AARemoteServer_configurationWithCompletion___block_invoke_cold_2(v14);
    }

    v17[0] = MEMORY[0x1E69E9820];
    v17[1] = 3221225472;
    v17[2] = __46__AARemoteServer_configurationWithCompletion___block_invoke_65;
    v17[3] = &unk_1E7C9C018;
    v15 = *(a1 + 32);
    v18 = *(a1 + 40);
    [v15 _configurationAndResponseWithCompletion:v17];
  }

  else
  {
    (*(*(a1 + 40) + 16))();
  }
}

void __46__AARemoteServer_configurationWithCompletion___block_invoke_65(uint64_t a1, void *a2, void *a3, void *a4)
{
  v7 = a2;
  v8 = a3;
  v9 = a4;
  v12 = v7;
  v10 = v9;
  if ((v12 != 0) != (v10 == 0))
  {
    v11 = [MEMORY[0x1E695DF30] exceptionWithName:*MEMORY[0x1E695D930] reason:@"Invalid exclusivity not satisfying: configuration ^ error" userInfo:0];
    objc_exception_throw(v11);
  }

  (*(*(a1 + 32) + 16))();
}

- (void)urlConfigurationWithCompletion:(id)a3
{
  v3 = a3;
  v4 = _AALogSystem();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEBUG))
  {
    [AARemoteServer urlConfigurationWithCompletion:v4];
  }

  v5 = objc_alloc_init(AADaemonController);
  [(AADaemonController *)v5 urlConfigurationWithCompletion:v3];
}

- (void)_configurationAndResponseWithCompletion:(id)a3
{
  v4 = a3;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 3221225472;
  aBlock[2] = __58__AARemoteServer__configurationAndResponseWithCompletion___block_invoke;
  aBlock[3] = &unk_1E7C9C040;
  v5 = v4;
  v15 = v5;
  v6 = _Block_copy(aBlock);
  v7 = [(AARemoteServer *)self _configurationCacheInvalidatingIfNecessary];
  v8 = v7;
  if (v7)
  {
    v9 = [v7 configuration];
    v10 = [v8 response];
    v6[2](v6, v9, v10, 0);
  }

  else
  {
    configurationQueue = self->_configurationQueue;
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __58__AARemoteServer__configurationAndResponseWithCompletion___block_invoke_2;
    block[3] = &unk_1E7C9BC78;
    block[4] = self;
    v13 = v6;
    dispatch_async(configurationQueue, block);
  }
}

void __58__AARemoteServer__configurationAndResponseWithCompletion___block_invoke(uint64_t a1, void *a2, void *a3, void *a4)
{
  v7 = a2;
  v8 = a3;
  v9 = a4;
  v12 = v7;
  v10 = v9;
  if ((v12 != 0) != (v10 == 0))
  {
    v11 = [MEMORY[0x1E695DF30] exceptionWithName:*MEMORY[0x1E695D930] reason:@"Invalid exclusivity not satisfying: configuration ^ error" userInfo:0];
    objc_exception_throw(v11);
  }

  (*(*(a1 + 32) + 16))();
}

void __58__AARemoteServer__configurationAndResponseWithCompletion___block_invoke_2(uint64_t a1)
{
  v2 = [*(a1 + 32) _configurationCacheInvalidatingIfNecessary];
  v3 = v2;
  if (v2)
  {
    v4 = *(a1 + 40);
    v5 = [v2 configuration];
    v6 = [v3 response];
    (*(v4 + 16))(v4, v5, v6, 0);
  }

  else
  {
    dispatch_suspend(*(*(a1 + 32) + 16));
    v7 = *(a1 + 32);
    v8[0] = MEMORY[0x1E69E9820];
    v8[1] = 3221225472;
    v8[2] = __58__AARemoteServer__configurationAndResponseWithCompletion___block_invoke_3;
    v8[3] = &unk_1E7C9BA60;
    v8[4] = v7;
    v9 = *(a1 + 40);
    [v7 _fetchConfigurationAndResponseWithCompletion:v8];
  }
}

void __58__AARemoteServer__configurationAndResponseWithCompletion___block_invoke_3(uint64_t a1, void *a2, void *a3, void *a4)
{
  v7 = a2;
  v8 = a3;
  v9 = a4;
  v10 = _AALogSystem();
  v11 = v10;
  if (v7 && v8)
  {
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEBUG))
    {
      __58__AARemoteServer__configurationAndResponseWithCompletion___block_invoke_3_cold_2(v7, v11);
    }

    v12 = *(a1 + 32);
    v11 = [AARemoteServerConfigurationCache cacheWithConfiguration:v7 response:v8];
    [v12 _setConfigurationCache:v11];
  }

  else if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
  {
    __58__AARemoteServer__configurationAndResponseWithCompletion___block_invoke_3_cold_1(v9, v11);
  }

  dispatch_resume(*(*(a1 + 32) + 16));
  (*(*(a1 + 40) + 16))();
}

- (void)_setConfigurationCache:(id)a3
{
  v4 = a3;
  os_unfair_lock_lock(&self->_configurationLock);
  configurationCache = self->_configurationCache;
  self->_configurationCache = v4;

  os_unfair_lock_unlock(&self->_configurationLock);
}

- (id)_configurationCacheInvalidatingIfNecessary
{
  os_unfair_lock_lock(&self->_configurationLock);
  v3 = [(AARemoteServer *)self _configurationLock_configurationCacheInvalidatingIfNecessary];
  os_unfair_lock_unlock(&self->_configurationLock);

  return v3;
}

- (id)_configurationLock_configurationCacheInvalidatingIfNecessary
{
  os_unfair_lock_assert_owner(&self->_configurationLock);
  v3 = [(AARemoteServerConfigurationCache *)self->_configurationCache creationDate];
  [v3 timeIntervalSinceNow];
  v5 = v4;

  if (v5 < -600.0)
  {
    configurationCache = self->_configurationCache;
    self->_configurationCache = 0;
  }

  v7 = self->_configurationCache;

  return v7;
}

- (void)_fetchConfigurationAndResponseWithCompletion:(id)a3
{
  v4 = a3;
  if (!v4)
  {
    [AARemoteServer _fetchConfigurationAndResponseWithCompletion:];
  }

  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 3221225472;
  aBlock[2] = __63__AARemoteServer__fetchConfigurationAndResponseWithCompletion___block_invoke;
  aBlock[3] = &unk_1E7C9C040;
  v19 = v4;
  v5 = v4;
  v6 = _Block_copy(aBlock);
  v7 = [objc_alloc(MEMORY[0x1E696AF20]) initWithString:@"https://setup.icloud.com"];
  [v7 setPath:@"/configurations/init"];
  [v7 setQuery:@"context=settings"];
  v8 = [v7 URL];

  v9 = [MEMORY[0x1E695AC18] requestWithURL:v8];
  v10 = [(AARemoteServer *)self session];
  v13 = MEMORY[0x1E69E9820];
  v14 = 3221225472;
  v15 = __63__AARemoteServer__fetchConfigurationAndResponseWithCompletion___block_invoke_2;
  v16 = &unk_1E7C9BD40;
  v17 = v6;
  v11 = v6;
  v12 = [v10 bodyTaskWithRequest:v9 completion:&v13];
  [v12 resume];
}

void __63__AARemoteServer__fetchConfigurationAndResponseWithCompletion___block_invoke(uint64_t a1, void *a2, void *a3, void *a4)
{
  v7 = a2;
  v8 = a3;
  v9 = a4;
  v12 = v7;
  v10 = v9;
  if ((v12 != 0) != (v10 == 0))
  {
    v11 = [MEMORY[0x1E695DF30] exceptionWithName:*MEMORY[0x1E695D930] reason:@"Invalid exclusivity not satisfying: configuration ^ error" userInfo:0];
    objc_exception_throw(v11);
  }

  (*(*(a1 + 32) + 16))();
}

void __63__AARemoteServer__fetchConfigurationAndResponseWithCompletion___block_invoke_2(uint64_t a1, void *a2, void *a3, void *a4)
{
  v13 = a2;
  v7 = a3;
  v8 = a4;
  if (v13)
  {
    objc_opt_class();
    v9 = v13;
    if (objc_opt_isKindOfClass())
    {
      v10 = [[AAURLConfiguration alloc] initWithDictionary:v9];
      (*(*(a1 + 32) + 16))();
    }

    else
    {

      v12 = *(a1 + 32);
      v9 = [MEMORY[0x1E696ABC0] aa_errorWithCode:-4402 underlyingError:v8];
      (*(v12 + 16))(v12, 0, v7, v9);
    }
  }

  else
  {
    v11 = *(a1 + 32);
    if (v8)
    {
      (*(v11 + 16))(v11, 0, v7, v8);
      goto LABEL_9;
    }

    v9 = [MEMORY[0x1E696ABC0] aa_errorWithCode:-4402];
    (*(v11 + 16))(v11, 0, v7, v9);
  }

LABEL_9:
}

- (void)authenticateAccount:(id)a3 completion:(id)a4
{
  v5 = a3;
  v6 = a4;
  v7 = v6;
  if (!v5)
  {
    [AARemoteServer(Deprecated) authenticateAccount:completion:];
    if (v7)
    {
      goto LABEL_3;
    }

LABEL_5:
    [AARemoteServer(Deprecated) authenticateAccount:completion:];
    goto LABEL_3;
  }

  if (!v6)
  {
    goto LABEL_5;
  }

LABEL_3:
  v8 = [MEMORY[0x1E695DFF8] aa_URLWithEndpoint:@"authenticate"];
  v9 = [AAAuthenticateRequest alloc];
  v10 = [v8 absoluteString];
  v11 = [v5 username];
  v12 = [v5 aa_password];
  v13 = [(AAAuthenticateRequest *)v9 initWithURLString:v10 username:v11 password:v12];

  v14 = [AARequester alloc];
  v19 = MEMORY[0x1E69E9820];
  v20 = 3221225472;
  v21 = __61__AARemoteServer_Deprecated__authenticateAccount_completion___block_invoke;
  v22 = &unk_1E7C9C068;
  v23 = v5;
  v24 = v7;
  v15 = v7;
  v16 = v5;
  v17 = [(AARequester *)v14 initWithRequest:v13 handler:&v19];
  v18 = objc_alloc_init(MEMORY[0x1E696ADC8]);
  [v18 addOperation:{v17, v19, v20, v21, v22}];
}

void __61__AARemoteServer_Deprecated__authenticateAccount_completion___block_invoke(uint64_t a1, void *a2)
{
  v20 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = v3;
  if (v3)
  {
    v5 = v3;
    v6 = [v5 error];
    v7 = [v5 personID];
    objc_opt_class();
    isKindOfClass = objc_opt_isKindOfClass();

    v9 = [v5 personID];
    v10 = v9;
    if (isKindOfClass)
    {
      v11 = [v9 stringValue];

      v10 = v11;
    }

    [*(a1 + 32) setAccountProperty:v10 forKey:@"personID"];
    if (v6)
    {
      v12 = *(*(a1 + 40) + 16);
    }

    else
    {
      v13 = _AALogSystem();
      if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
      {
        v14 = [v5 authToken];
        v18 = 138739971;
        v19 = v14;
        _os_log_impl(&dword_1B6F6A000, v13, OS_LOG_TYPE_DEFAULT, "authenticate Succeeded. Token is %{sensitive}@", &v18, 0xCu);
      }

      v15 = *(a1 + 32);
      v16 = [v5 authToken];
      [v15 aa_setAuthToken:v16];

      v12 = *(*(a1 + 40) + 16);
    }

    v12();
  }

  else
  {
    (*(*(a1 + 40) + 16))();
  }

  v17 = *MEMORY[0x1E69E9840];
}

- (void)registerAccount:(id)a3 withHSA:(BOOL)a4 completion:(id)a5
{
  v6 = a4;
  v43 = *MEMORY[0x1E69E9840];
  v8 = a3;
  v9 = a5;
  v10 = v9;
  if (v8)
  {
    if (v9)
    {
      goto LABEL_3;
    }
  }

  else
  {
    [AARemoteServer(Deprecated) registerAccount:withHSA:completion:];
    if (v10)
    {
      goto LABEL_3;
    }
  }

  [AARemoteServer(Deprecated) registerAccount:withHSA:completion:];
LABEL_3:
  v11 = _AALogSystem();
  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_1B6F6A000, v11, OS_LOG_TYPE_DEFAULT, "registerAccount", buf, 2u);
  }

  v12 = [MEMORY[0x1E695DFF8] aa_URLWithEndpoint:@"loginOrCreateAccount"];
  v13 = [v12 absoluteString];
  v14 = [(AARemoteServer *)self _newURLRequestWithURLString:v13];

  if (v6)
  {
    v15 = [v8 aa_personID];
    [v14 aa_addDeviceProvisioningInfoHeadersWithDSID:v15 sendEmptyValues:1];
  }

  v16 = +[AADeviceInfo udid];
  [v14 setValue:v16 forHTTPHeaderField:@"Device-UDID"];

  [v14 setHTTPMethod:@"POST"];
  [v14 aa_addAuthTokenOrBasicAuthHeaderWithAccount:v8 preferUsingPassword:1];
  v17 = [(AARemoteServer *)self _bodyDictionaryWithProtocolVersion:@"1.0"];
  v18 = [v14 aa_setXMLBodyWithParameters:v17];

  [v14 aa_addMultiUserDeviceHeaderIfEnabled];
  v19 = _AASignpostLogSystem();
  v20 = _AASignpostCreate(v19);
  v22 = v21;

  v23 = _AASignpostLogSystem();
  v24 = v23;
  if (v20 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v23))
  {
    v25 = [v8 accountType];
    v26 = [v25 identifier];
    *buf = 138543362;
    v40 = v26;
    _os_signpost_emit_with_name_impl(&dword_1B6F6A000, v24, OS_SIGNPOST_INTERVAL_BEGIN, v20, "LoginOrCreateAccount", " AccountType=%{public,signpost.telemetry:string2,name=AccountType}@  enableTelemetry=YES ", buf, 0xCu);
  }

  v27 = _AASignpostLogSystem();
  if (os_log_type_enabled(v27, OS_LOG_TYPE_DEFAULT))
  {
    v28 = [v8 accountType];
    v29 = [v28 identifier];
    *buf = 134218242;
    v40 = v20;
    v41 = 2114;
    v42 = v29;
    _os_log_impl(&dword_1B6F6A000, v27, OS_LOG_TYPE_DEFAULT, "BEGIN [%lld]: LoginOrCreateAccount  AccountType=%{public,signpost.telemetry:string2,name=AccountType}@  enableTelemetry=YES ", buf, 0x16u);
  }

  v30 = objc_opt_class();
  v34[0] = MEMORY[0x1E69E9820];
  v34[1] = 3221225472;
  v34[2] = __65__AARemoteServer_Deprecated__registerAccount_withHSA_completion___block_invoke;
  v34[3] = &unk_1E7C9C090;
  v37 = v20;
  v38 = v22;
  v35 = v8;
  v36 = v10;
  v31 = v10;
  v32 = v8;
  [(AARemoteServer *)self _startRequest:v14 responseClass:v30 mainThread:0 completion:v34];

  v33 = *MEMORY[0x1E69E9840];
}

void __65__AARemoteServer_Deprecated__registerAccount_withHSA_completion___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v35 = *MEMORY[0x1E69E9840];
  v5 = a2;
  v6 = a3;
  v7 = v5;
  Nanoseconds = _AASignpostGetNanoseconds(*(a1 + 48), *(a1 + 56));
  v9 = _AASignpostLogSystem();
  v10 = v9;
  v11 = *(a1 + 48);
  if (v11 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v9))
  {
    v12 = _AAErrorUnderlyingError(v6);
    v29 = 67240192;
    LODWORD(v30) = [v12 code];
    _os_signpost_emit_with_name_impl(&dword_1B6F6A000, v10, OS_SIGNPOST_INTERVAL_END, v11, "LoginOrCreateAccount", " error=%{public,signpost.telemetry:number2,name=error}d ", &v29, 8u);
  }

  v13 = _AASignpostLogSystem();
  if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
  {
    v14 = Nanoseconds / 1000000000.0;
    v15 = *(a1 + 48);
    v16 = _AAErrorUnderlyingError(v6);
    v17 = [v16 code];
    v29 = 134218496;
    v30 = v15;
    v31 = 2048;
    v32 = v14;
    v33 = 1026;
    v34 = v17;
    _os_log_impl(&dword_1B6F6A000, v13, OS_LOG_TYPE_DEFAULT, "END [%lld] %fs: LoginOrCreateAccount  error=%{public,signpost.telemetry:number2,name=error}d ", &v29, 0x1Cu);
  }

  v18 = _AALogSystem();
  if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
  {
    v19 = @"YES";
    if (!v7)
    {
      v19 = @"NO";
    }

    v29 = 138412290;
    v30 = v19;
    _os_log_impl(&dword_1B6F6A000, v18, OS_LOG_TYPE_DEFAULT, "Register Completed - Response: %@", &v29, 0xCu);
  }

  if (v7)
  {
    v20 = [v7 personID];
    if (v20)
    {
      v21 = v20;
      v22 = [*(a1 + 32) aa_personID];

      if (!v22)
      {
        v23 = *(a1 + 32);
        v24 = [v7 personID];
        [v23 setAccountProperty:v24 forKey:@"personID"];
      }
    }

    v25 = [v7 error];
    v26 = _AALogSystem();
    if (os_log_type_enabled(v26, OS_LOG_TYPE_DEFAULT))
    {
      v27 = @"NO";
      if (!v25)
      {
        v27 = @"YES";
      }

      v29 = 138412290;
      v30 = v27;
      _os_log_impl(&dword_1B6F6A000, v26, OS_LOG_TYPE_DEFAULT, "Account Authenticated: %@", &v29, 0xCu);
    }

    if (!v25)
    {
      [*(a1 + 32) aa_updateWithProvisioningResponse:v7];
    }

    (*(*(a1 + 40) + 16))();
  }

  else
  {
    (*(*(a1 + 40) + 16))();
  }

  v28 = *MEMORY[0x1E69E9840];
}

- (void)loginDelegates:(id)a3 parameters:(id)a4 completion:(id)a5
{
  v35 = *MEMORY[0x1E69E9840];
  v8 = a3;
  v9 = a4;
  v29 = a5;
  if (v8)
  {
    if (v9)
    {
      goto LABEL_3;
    }
  }

  else
  {
    [AARemoteServer(Deprecated) loginDelegates:parameters:completion:];
    if (v9)
    {
      goto LABEL_3;
    }
  }

  [AARemoteServer(Deprecated) loginDelegates:parameters:completion:];
LABEL_3:
  v10 = _AALogSystem();
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_1B6F6A000, v10, OS_LOG_TYPE_DEFAULT, "loginDelegates called", buf, 2u);
  }

  v11 = [MEMORY[0x1E695DFF8] aa_URLWithEndpoint:@"loginDelegates"];
  v12 = [v11 absoluteString];
  v13 = [(AARemoteServer *)self _newURLRequestWithURLString:v12];

  v14 = [v8 aa_personID];

  if (v14)
  {
    v15 = [v8 aa_personID];
    [v13 aa_addDeviceProvisioningInfoHeadersWithDSID:v15];
  }

  [v13 setHTTPMethod:{@"POST", v29}];
  v16 = objc_alloc_init(MEMORY[0x1E695DF90]);
  [v16 setValue:v9 forKey:@"delegates"];
  v17 = [v8 username];
  [v16 setValue:v17 forKey:@"apple-id"];

  v18 = [v8 credential];
  v19 = [v18 password];
  [v16 setValue:v19 forKey:@"password"];

  v20 = +[AADeviceInfo appleIDClientIdentifier];
  [v16 setValue:v20 forKey:@"client-id"];

  [v13 aa_setBodyWithParameters:v16];
  v21 = _AALogSystem();
  if (os_log_type_enabled(v21, OS_LOG_TYPE_DEFAULT))
  {
    v22 = [(AARemoteServer *)self _redactedBodyStringWithPropertyList:v9];
    *buf = 138412290;
    v34 = v22;
    _os_log_impl(&dword_1B6F6A000, v21, OS_LOG_TYPE_DEFAULT, "%@", buf, 0xCu);
  }

  [v13 addValue:@"text/plist" forHTTPHeaderField:@"Content-Type"];
  [v13 aa_addAltDSIDAndRepairStateWithAccount:v8];
  v23 = +[AADeviceInfo udid];
  [v13 setValue:v23 forHTTPHeaderField:@"Device-UDID"];

  v24 = _AALogSystem();
  if (os_log_type_enabled(v24, OS_LOG_TYPE_DEFAULT))
  {
    v25 = [v13 description];
    *buf = 138412290;
    v34 = v25;
    _os_log_impl(&dword_1B6F6A000, v24, OS_LOG_TYPE_DEFAULT, "request is: %@", buf, 0xCu);
  }

  v26 = objc_opt_class();
  v31[0] = MEMORY[0x1E69E9820];
  v31[1] = 3221225472;
  v31[2] = __67__AARemoteServer_Deprecated__loginDelegates_parameters_completion___block_invoke;
  v31[3] = &unk_1E7C9C0B8;
  v32 = v30;
  v27 = v30;
  [(AARemoteServer *)self _startRequest:v13 responseClass:v26 mainThread:0 completion:v31];

  v28 = *MEMORY[0x1E69E9840];
}

- (id)_bodyDictionaryWithProtocolVersion:(id)a3
{
  v3 = MEMORY[0x1E695DF90];
  v4 = a3;
  v5 = [v3 dictionary];
  [v5 setObject:v4 forKey:@"protocolVersion"];

  v6 = [MEMORY[0x1E695DF90] dictionary];
  v7 = [MEMORY[0x1E695DFE8] localTimeZone];
  v8 = [v7 name];

  [v6 setObject:v8 forKey:@"timezone"];
  v9 = [MEMORY[0x1E695DF58] preferredLanguages];
  v10 = [v9 firstObject];

  if (v10)
  {
    v11 = v10;
  }

  else
  {
    v11 = @"en";
  }

  [v6 setObject:v11 forKey:@"language"];
  v12 = +[AADeviceInfo appleIDClientIdentifier];
  [v6 setObject:v12 forKey:@"client-id"];

  [v5 setObject:v6 forKey:@"userInfo"];

  return v5;
}

- (id)_redactedBodyStringWithPropertyList:(id)a3
{
  v22 = *MEMORY[0x1E69E9840];
  v3 = [a3 mutableCopy];
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  v4 = [&unk_1F2F24CB0 countByEnumeratingWithState:&v17 objects:v21 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v18;
    do
    {
      for (i = 0; i != v5; ++i)
      {
        if (*v18 != v6)
        {
          objc_enumerationMutation(&unk_1F2F24CB0);
        }

        v8 = *(*(&v17 + 1) + 8 * i);
        v9 = [v3 valueForKey:v8];
        v10 = v9;
        if (v9)
        {
          v11 = [v9 unredactedSuffixOfLength:4];
          v12 = [MEMORY[0x1E696AEC0] stringWithFormat:@"...%@", v11];
          [v3 setValue:v12 forKey:v8];
        }
      }

      v5 = [&unk_1F2F24CB0 countByEnumeratingWithState:&v17 objects:v21 count:16];
    }

    while (v5);
  }

  v13 = [MEMORY[0x1E696AE40] dataWithPropertyList:v3 format:100 options:0 error:0];
  v14 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithBytes:objc_msgSend(v13 length:"bytes") encoding:{objc_msgSend(v13, "length"), 4}];

  v15 = *MEMORY[0x1E69E9840];

  return v14;
}

- (id)_redactedHeadersFromHTTPHeaders:(id)a3
{
  v20 = *MEMORY[0x1E69E9840];
  v3 = [a3 mutableCopy];
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v4 = [&unk_1F2F24CC8 countByEnumeratingWithState:&v15 objects:v19 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v16;
    do
    {
      for (i = 0; i != v5; ++i)
      {
        if (*v16 != v6)
        {
          objc_enumerationMutation(&unk_1F2F24CC8);
        }

        v8 = *(*(&v15 + 1) + 8 * i);
        v9 = [v3 valueForKey:v8];
        v10 = v9;
        if (v9)
        {
          v11 = [v9 unredactedSuffixOfLength:4];
          v12 = [MEMORY[0x1E696AEC0] stringWithFormat:@"...%@", v11];
          [v3 setValue:v12 forKey:v8];
        }
      }

      v5 = [&unk_1F2F24CC8 countByEnumeratingWithState:&v15 objects:v19 count:16];
    }

    while (v5);
  }

  v13 = *MEMORY[0x1E69E9840];

  return v3;
}

- (void)_startRequest:(id)a3 responseClass:(Class)a4 mainThread:(BOOL)a5 completion:(id)a6
{
  v28 = *MEMORY[0x1E69E9840];
  v10 = a3;
  v11 = a6;
  v12 = _AALogSystem();
  if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_1B6F6A000, v12, OS_LOG_TYPE_DEFAULT, "Sending request...", buf, 2u);
  }

  v13 = _AALogSystem();
  if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
  {
    v14 = [v10 description];
    *buf = 138412290;
    v27 = v14;
    _os_log_impl(&dword_1B6F6A000, v13, OS_LOG_TYPE_DEFAULT, "HTTP Request: %@", buf, 0xCu);
  }

  v15 = _AALogSystem();
  if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
  {
    v16 = [v10 allHTTPHeaderFields];
    v17 = [(AARemoteServer *)self _redactedHeadersFromHTTPHeaders:v16];
    *buf = 138412290;
    v27 = v17;
    _os_log_impl(&dword_1B6F6A000, v15, OS_LOG_TYPE_DEFAULT, "HTTP Headers:\n%@", buf, 0xCu);
  }

  v18 = [(AARemoteServer *)self signingSession];
  v22[0] = MEMORY[0x1E69E9820];
  v22[1] = 3221225472;
  v22[2] = __80__AARemoteServer_Deprecated___startRequest_responseClass_mainThread_completion___block_invoke;
  v22[3] = &unk_1E7C9C108;
  v25 = a5;
  v23 = v11;
  v24 = a4;
  v19 = v11;
  v20 = [v18 dataTaskWithRequest:v10 completion:v22];
  [v20 resume];

  v21 = *MEMORY[0x1E69E9840];
}

void __80__AARemoteServer_Deprecated___startRequest_responseClass_mainThread_completion___block_invoke(uint64_t a1, void *a2, void *a3, void *a4)
{
  v20 = *MEMORY[0x1E69E9840];
  v7 = a2;
  v8 = a3;
  v9 = a4;
  v10 = _AALogSystem();
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v19 = v9;
    _os_log_impl(&dword_1B6F6A000, v10, OS_LOG_TYPE_DEFAULT, "Remote request completed with error %@", buf, 0xCu);
  }

  if (v9)
  {
    v11 = 0;
  }

  else
  {
    v11 = [objc_alloc(*(a1 + 40)) initWithHTTPResponse:v8 data:v7];
    v9 = [v11 error];
  }

  v12 = [v9 _aa_userReadableError];

  if (*(a1 + 48) == 1)
  {
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __80__AARemoteServer_Deprecated___startRequest_responseClass_mainThread_completion___block_invoke_219;
    block[3] = &unk_1E7C9C0E0;
    v17 = *(a1 + 32);
    v15 = v11;
    v16 = v12;
    dispatch_async(MEMORY[0x1E69E96A0], block);
  }

  else
  {
    (*(*(a1 + 32) + 16))();
  }

  v13 = *MEMORY[0x1E69E9840];
}

- (id)_newURLRequestWithURLString:(id)a3
{
  v3 = MEMORY[0x1E696AF20];
  v4 = a3;
  v5 = [[v3 alloc] initWithString:v4];

  v6 = MEMORY[0x1E695AC18];
  v7 = [v5 URL];
  v8 = [v6 requestWithURL:v7];

  return v8;
}

- (void)configurationWithCompletion:.cold.1()
{
  OUTLINED_FUNCTION_0_4();
  v1 = [MEMORY[0x1E696AAA8] currentHandler];
  OUTLINED_FUNCTION_1_3();
  [v0 handleFailureInMethod:@"completion" object:? file:? lineNumber:? description:?];
}

void __46__AARemoteServer_configurationWithCompletion___block_invoke_cold_1(uint64_t a1, uint64_t a2, os_log_t log)
{
  v10 = *MEMORY[0x1E69E9840];
  v4 = 136315650;
  v5 = "[AARemoteServer configurationWithCompletion:]_block_invoke";
  v6 = 2112;
  v7 = a1;
  v8 = 2112;
  v9 = a2;
  _os_log_debug_impl(&dword_1B6F6A000, log, OS_LOG_TYPE_DEBUG, "%s completion: %@, error: %@", &v4, 0x20u);
  v3 = *MEMORY[0x1E69E9840];
}

- (void)urlConfigurationWithCompletion:(os_log_t)log .cold.1(os_log_t log)
{
  v4 = *MEMORY[0x1E69E9840];
  v2 = 136315138;
  v3 = "[AARemoteServer urlConfigurationWithCompletion:]";
  _os_log_debug_impl(&dword_1B6F6A000, log, OS_LOG_TYPE_DEBUG, "%s called.", &v2, 0xCu);
  v1 = *MEMORY[0x1E69E9840];
}

void __58__AARemoteServer__configurationAndResponseWithCompletion___block_invoke_3_cold_1(uint64_t a1, NSObject *a2)
{
  v5 = *MEMORY[0x1E69E9840];
  v3 = 138412290;
  v4 = a1;
  _os_log_error_impl(&dword_1B6F6A000, a2, OS_LOG_TYPE_ERROR, "Failed to fetch URL configuration, error: %@", &v3, 0xCu);
  v2 = *MEMORY[0x1E69E9840];
}

void __58__AARemoteServer__configurationAndResponseWithCompletion___block_invoke_3_cold_2(uint64_t a1, NSObject *a2)
{
  v5 = *MEMORY[0x1E69E9840];
  v3 = 138412290;
  v4 = a1;
  _os_log_debug_impl(&dword_1B6F6A000, a2, OS_LOG_TYPE_DEBUG, "Successfully fetched URL configuration: %@", &v3, 0xCu);
  v2 = *MEMORY[0x1E69E9840];
}

- (void)_fetchConfigurationAndResponseWithCompletion:.cold.1()
{
  OUTLINED_FUNCTION_0_4();
  v1 = [MEMORY[0x1E696AAA8] currentHandler];
  OUTLINED_FUNCTION_1_3();
  [v0 handleFailureInMethod:@"completion" object:? file:? lineNumber:? description:?];
}

@end