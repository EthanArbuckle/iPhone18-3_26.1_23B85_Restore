@interface ASCAgentProxy
- (ASCAgentProxy)initWithFailureHandler:(id)a3;
- (BOOL)isDeviceConfiguredForPasskeysWithTestOptions:(id)a3;
- (id)_reconnectIfNecessary;
- (id)_remoteObjectProxyWithErrorHandler:(id)a3;
- (void)_getSavedAccountContextFromSafariApplicationWithRequestContext:(id)a3 completionHandler:(id)a4;
- (void)_setUpConnection:(id)a3;
- (void)browserPasskeysForRelyingParty:(id)a3 testOptions:(id)a4 completionHandler:(id)a5;
- (void)cancelCurrentRequest;
- (void)clearAllPlatformPublicKeyCredentialsWithCompletionHandler:(id)a3;
- (void)dealloc;
- (void)deleteAllPasskeysForRelyingParty:(id)a3 completionHandler:(id)a4;
- (void)deletePasskeyForRelyingParty:(id)a3 withCredentialID:(id)a4 completionHandler:(id)a5;
- (void)getArePasskeysDisallowedForRelyingParty:(id)a3 withCompletionHandler:(id)a4;
- (void)getCanCurrentProcessAccessPasskeysForRelyingParty:(id)a3 withCompletionHandler:(id)a4;
- (void)getPasskeysDataForRelyingParty:(id)a3 withCompletionHandler:(id)a4;
- (void)getShouldUseAlternateCredentialStoreWithCompletionHandler:(id)a3;
- (void)openCABLEURL:(id)a3 fromSourceApplication:(id)a4 withCompletionHandler:(id)a5;
- (void)openCredentialProviderAppSettingsWithCompletionHandler:(id)a3;
- (void)openVerificationCodeAppSettingsWithCompletionHandler:(id)a3;
- (void)performAuthorizationRequestsForContext:(id)a3 withCompletionHandler:(id)a4;
- (void)performSilentAuthorizationRequestsForContext:(id)a3 withCompletionHandler:(id)a4;
- (void)preflightCanCreateICloudKeychainPasskeyWithCompletionHandler:(id)a3;
- (void)requestToTurnOnCredentialProviderExtensionWithCompletionHandler:(id)a3;
@end

@implementation ASCAgentProxy

- (ASCAgentProxy)initWithFailureHandler:(id)a3
{
  v4 = a3;
  v14.receiver = self;
  v14.super_class = ASCAgentProxy;
  v5 = [(ASCAgentProxy *)&v14 init];
  if (v5)
  {
    v6 = objc_alloc(MEMORY[0x1E696B0B8]);
    v7 = ASCAgentServiceName();
    v8 = [v6 initWithMachServiceName:v7 options:0];
    connection = v5->_connection;
    v5->_connection = v8;

    v5->_connectionLock._os_unfair_lock_opaque = 0;
    v10 = _Block_copy(v4);
    failureHandler = v5->_failureHandler;
    v5->_failureHandler = v10;

    [(ASCAgentProxy *)v5 _setUpConnection:v5->_connection];
    v12 = v5;
  }

  return v5;
}

- (void)_setUpConnection:(id)a3
{
  v4 = a3;
  v5 = +[ASCAgentInterface xpcInterface];
  [v4 setRemoteObjectInterface:v5];
  objc_initWeak(&location, self);
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 3221225472;
  aBlock[2] = __34__ASCAgentProxy__setUpConnection___block_invoke;
  aBlock[3] = &unk_1E815FFD0;
  objc_copyWeak(&v10, &location);
  v6 = v4;
  v9 = v6;
  v7 = _Block_copy(aBlock);
  [v6 setInvalidationHandler:v7];
  [v6 setInterruptionHandler:v7];
  [v6 resume];

  objc_destroyWeak(&v10);
  objc_destroyWeak(&location);
}

void __34__ASCAgentProxy__setUpConnection___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  if (WeakRetained)
  {
    v6 = WeakRetained;
    os_unfair_lock_lock(WeakRetained + 4);
    v3 = v6;
    v4 = *&v6[2]._os_unfair_lock_opaque;
    if (*(a1 + 32) == v4)
    {
      *&v6[2]._os_unfair_lock_opaque = 0;

      v3 = v6;
    }

    v5 = *&v3[8]._os_unfair_lock_opaque;
    if (v5)
    {
      (*(v5 + 16))();
    }

    os_unfair_lock_unlock(v6 + 4);
    WeakRetained = v6;
  }
}

- (void)dealloc
{
  os_unfair_lock_lock(&self->_connectionLock);
  v3 = self->_connection;
  os_unfair_lock_unlock(&self->_connectionLock);
  [(NSXPCConnection *)v3 invalidate];

  v4.receiver = self;
  v4.super_class = ASCAgentProxy;
  [(ASCAgentProxy *)&v4 dealloc];
}

- (id)_remoteObjectProxyWithErrorHandler:(id)a3
{
  v4 = a3;
  v5 = [(ASCAgentProxy *)self _reconnectIfNecessary];
  v13[0] = MEMORY[0x1E69E9820];
  v13[1] = 3221225472;
  v13[2] = __52__ASCAgentProxy__remoteObjectProxyWithErrorHandler___block_invoke;
  v13[3] = &unk_1E815FFF8;
  v6 = v4;
  v14 = v6;
  v7 = [v5 remoteObjectProxyWithErrorHandler:v13];
  v8 = v7;
  if (v7)
  {
    v9 = v7;
  }

  else
  {
    v10 = WBS_LOG_CHANNEL_PREFIXAuthenticationServicesAgent();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      [ASCAgentProxy _remoteObjectProxyWithErrorHandler:v10];
    }

    v11 = [MEMORY[0x1E696ABC0] safari_errorWithDomain:*MEMORY[0x1E696A798] code:14 privacyPreservingDescription:@"Failed to acquire remote object proxy."];
    (*(v6 + 2))(v6, v11);
  }

  return v8;
}

void __52__ASCAgentProxy__remoteObjectProxyWithErrorHandler___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = WBS_LOG_CHANNEL_PREFIXAuthenticationServicesAgent();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
  {
    __52__ASCAgentProxy__remoteObjectProxyWithErrorHandler___block_invoke_cold_1(v4);
  }

  (*(*(a1 + 32) + 16))();
}

- (void)performAuthorizationRequestsForContext:(id)a3 withCompletionHandler:(id)a4
{
  v6 = a3;
  v7 = a4;
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __78__ASCAgentProxy_performAuthorizationRequestsForContext_withCompletionHandler___block_invoke;
  v10[3] = &unk_1E8160048;
  v11 = v6;
  v12 = self;
  v13 = v7;
  v8 = v7;
  v9 = v6;
  [(ASCAgentProxy *)self _getSavedAccountContextFromSafariApplicationWithRequestContext:v9 completionHandler:v10];
}

void __78__ASCAgentProxy_performAuthorizationRequestsForContext_withCompletionHandler___block_invoke(uint64_t a1, uint64_t a2)
{
  [*(a1 + 32) setSavedAccountContext:a2];
  v3 = *(a1 + 40);
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __78__ASCAgentProxy_performAuthorizationRequestsForContext_withCompletionHandler___block_invoke_2;
  v8[3] = &unk_1E8160020;
  v8[4] = v3;
  v9 = *(a1 + 48);
  v4 = [v3 _remoteObjectProxyWithErrorHandler:v8];
  v5 = *(a1 + 32);
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __78__ASCAgentProxy_performAuthorizationRequestsForContext_withCompletionHandler___block_invoke_7;
  v6[3] = &unk_1E815FA38;
  v7 = *(a1 + 48);
  [v4 performAuthorizationRequestsForContext:v5 withCompletionHandler:v6];
}

void __78__ASCAgentProxy_performAuthorizationRequestsForContext_withCompletionHandler___block_invoke_2(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = *(*(a1 + 32) + 24);
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __78__ASCAgentProxy_performAuthorizationRequestsForContext_withCompletionHandler___block_invoke_3;
  block[3] = &unk_1E815F9D0;
  v7 = v3;
  v5 = v3;
  os_activity_apply(v4, block);
  (*(*(a1 + 40) + 16))();
}

void __78__ASCAgentProxy_performAuthorizationRequestsForContext_withCompletionHandler___block_invoke_3(uint64_t a1)
{
  v2 = WBS_LOG_CHANNEL_PREFIXAuthorization();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_ERROR))
  {
    __78__ASCAgentProxy_performAuthorizationRequestsForContext_withCompletionHandler___block_invoke_3_cold_1(a1, v2);
  }
}

- (void)clearAllPlatformPublicKeyCredentialsWithCompletionHandler:(id)a3
{
  v5 = a3;
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __75__ASCAgentProxy_clearAllPlatformPublicKeyCredentialsWithCompletionHandler___block_invoke;
  v10[3] = &unk_1E8160098;
  v10[4] = self;
  v12 = a2;
  v6 = v5;
  v11 = v6;
  v7 = [(ASCAgentProxy *)self _remoteObjectProxyWithErrorHandler:v10];
  v8 = v7;
  if (v7)
  {
    [v7 clearAllPlatformPublicKeyCredentialsWithCompletionHandler:v6];
  }

  else
  {
    v9 = [MEMORY[0x1E696ABC0] errorWithDomain:@"com.apple.AuthenticationServicesCore.AuthorizationError" code:1 userInfo:0];
    v6[2](v6);
  }
}

void __75__ASCAgentProxy_clearAllPlatformPublicKeyCredentialsWithCompletionHandler___block_invoke(void *a1, void *a2)
{
  v3 = a2;
  v4 = *(a1[4] + 24);
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __75__ASCAgentProxy_clearAllPlatformPublicKeyCredentialsWithCompletionHandler___block_invoke_2;
  v10[3] = &unk_1E8160070;
  v5 = a1[6];
  v11 = v3;
  v12 = v5;
  v6 = v3;
  os_activity_apply(v4, v10);
  (*(a1[5] + 16))(a1[5], v7, v8, v9);
}

void __75__ASCAgentProxy_clearAllPlatformPublicKeyCredentialsWithCompletionHandler___block_invoke_2(uint64_t a1)
{
  v2 = WBS_LOG_CHANNEL_PREFIXAuthorization();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_ERROR))
  {
    __75__ASCAgentProxy_clearAllPlatformPublicKeyCredentialsWithCompletionHandler___block_invoke_2_cold_1(a1, v2);
  }
}

- (void)getShouldUseAlternateCredentialStoreWithCompletionHandler:(id)a3
{
  v4 = a3;
  v7 = MEMORY[0x1E69E9820];
  v8 = 3221225472;
  v9 = __75__ASCAgentProxy_getShouldUseAlternateCredentialStoreWithCompletionHandler___block_invoke;
  v10 = &unk_1E8160020;
  v11 = self;
  v12 = v4;
  v5 = v4;
  v6 = [(ASCAgentProxy *)self _remoteObjectProxyWithErrorHandler:&v7];
  [v6 getShouldUseAlternateCredentialStoreWithCompletionHandler:{v5, v7, v8, v9, v10, v11}];
}

void __75__ASCAgentProxy_getShouldUseAlternateCredentialStoreWithCompletionHandler___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = *(*(a1 + 32) + 24);
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __75__ASCAgentProxy_getShouldUseAlternateCredentialStoreWithCompletionHandler___block_invoke_2;
  block[3] = &unk_1E815F9D0;
  v7 = v3;
  v5 = v3;
  os_activity_apply(v4, block);
  (*(*(a1 + 40) + 16))();
}

void __75__ASCAgentProxy_getShouldUseAlternateCredentialStoreWithCompletionHandler___block_invoke_2(uint64_t a1)
{
  v2 = WBS_LOG_CHANNEL_PREFIXAuthorization();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_ERROR))
  {
    __78__ASCAgentProxy_performAuthorizationRequestsForContext_withCompletionHandler___block_invoke_3_cold_1(a1, v2);
  }
}

- (void)getArePasskeysDisallowedForRelyingParty:(id)a3 withCompletionHandler:(id)a4
{
  v6 = a4;
  v10 = MEMORY[0x1E69E9820];
  v11 = 3221225472;
  v12 = __79__ASCAgentProxy_getArePasskeysDisallowedForRelyingParty_withCompletionHandler___block_invoke;
  v13 = &unk_1E8160020;
  v14 = self;
  v15 = v6;
  v7 = v6;
  v8 = a3;
  v9 = [(ASCAgentProxy *)self _remoteObjectProxyWithErrorHandler:&v10];
  [v9 getArePasskeysDisallowedForRelyingParty:v8 withCompletionHandler:{v7, v10, v11, v12, v13, v14}];
}

void __79__ASCAgentProxy_getArePasskeysDisallowedForRelyingParty_withCompletionHandler___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = *(*(a1 + 32) + 24);
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __79__ASCAgentProxy_getArePasskeysDisallowedForRelyingParty_withCompletionHandler___block_invoke_2;
  block[3] = &unk_1E815F9D0;
  v7 = v3;
  v5 = v3;
  os_activity_apply(v4, block);
  (*(*(a1 + 40) + 16))();
}

void __79__ASCAgentProxy_getArePasskeysDisallowedForRelyingParty_withCompletionHandler___block_invoke_2(uint64_t a1)
{
  v2 = WBS_LOG_CHANNEL_PREFIXAuthorization();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_ERROR))
  {
    __78__ASCAgentProxy_performAuthorizationRequestsForContext_withCompletionHandler___block_invoke_3_cold_1(a1, v2);
  }
}

- (void)openCABLEURL:(id)a3 fromSourceApplication:(id)a4 withCompletionHandler:(id)a5
{
  v9 = a3;
  v10 = a4;
  v11 = a5;
  activity = self->_activity;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __74__ASCAgentProxy_openCABLEURL_fromSourceApplication_withCompletionHandler___block_invoke;
  block[3] = &unk_1E815FD28;
  v13 = v9;
  v23 = v13;
  v14 = v10;
  v24 = v14;
  os_activity_apply(activity, block);
  v19[0] = MEMORY[0x1E69E9820];
  v19[1] = 3221225472;
  v19[2] = __74__ASCAgentProxy_openCABLEURL_fromSourceApplication_withCompletionHandler___block_invoke_10;
  v19[3] = &unk_1E8160098;
  v19[4] = self;
  v21 = a2;
  v15 = v11;
  v20 = v15;
  v16 = [(ASCAgentProxy *)self _remoteObjectProxyWithErrorHandler:v19];
  v17 = v16;
  if (v16)
  {
    [v16 openCABLEURL:v13 fromSourceApplication:v14 withCompletionHandler:v15];
  }

  else
  {
    v18 = [MEMORY[0x1E696ABC0] errorWithDomain:@"com.apple.AuthenticationServicesCore.AuthorizationError" code:1 userInfo:0];
    (*(v15 + 2))(v15, v18);
  }
}

void __74__ASCAgentProxy_openCABLEURL_fromSourceApplication_withCompletionHandler___block_invoke(uint64_t a1)
{
  v10 = *MEMORY[0x1E69E9840];
  v2 = WBS_LOG_CHANNEL_PREFIXAuthorization();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v3 = *(a1 + 32);
    v4 = *(a1 + 40);
    v6 = 138478083;
    v7 = v3;
    v8 = 2112;
    v9 = v4;
    _os_log_impl(&dword_1C20AD000, v2, OS_LOG_TYPE_DEFAULT, "Open caBLE URL: %{private}@, sourceApplication: %@", &v6, 0x16u);
  }

  v5 = *MEMORY[0x1E69E9840];
}

void __74__ASCAgentProxy_openCABLEURL_fromSourceApplication_withCompletionHandler___block_invoke_10(void *a1, void *a2)
{
  v3 = a2;
  v4 = *(a1[4] + 24);
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __74__ASCAgentProxy_openCABLEURL_fromSourceApplication_withCompletionHandler___block_invoke_2;
  v9[3] = &unk_1E8160070;
  v5 = a1[6];
  v10 = v3;
  v11 = v5;
  v6 = v3;
  os_activity_apply(v4, v9);
  (*(a1[5] + 16))(a1[5], v6, v7, v8);
}

void __74__ASCAgentProxy_openCABLEURL_fromSourceApplication_withCompletionHandler___block_invoke_2(uint64_t a1)
{
  v2 = WBS_LOG_CHANNEL_PREFIXAuthorization();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_ERROR))
  {
    __75__ASCAgentProxy_clearAllPlatformPublicKeyCredentialsWithCompletionHandler___block_invoke_2_cold_1(a1, v2);
  }
}

- (void)browserPasskeysForRelyingParty:(id)a3 testOptions:(id)a4 completionHandler:(id)a5
{
  v9 = a3;
  v10 = a4;
  v11 = a5;
  activity = self->_activity;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __78__ASCAgentProxy_browserPasskeysForRelyingParty_testOptions_completionHandler___block_invoke;
  block[3] = &unk_1E815F9D0;
  v13 = v9;
  v26 = v13;
  os_activity_apply(activity, block);
  v18 = MEMORY[0x1E69E9820];
  v19 = 3221225472;
  v20 = __78__ASCAgentProxy_browserPasskeysForRelyingParty_testOptions_completionHandler___block_invoke_11;
  v21 = &unk_1E8160098;
  v22 = self;
  v24 = a2;
  v14 = v11;
  v23 = v14;
  v15 = [(ASCAgentProxy *)self _remoteObjectProxyWithErrorHandler:&v18];
  v16 = v15;
  if (v15)
  {
    [v15 browserPasskeysForRelyingParty:v13 testOptions:v10 completionHandler:{v14, v18, v19, v20, v21, v22}];
  }

  else
  {
    v17 = [MEMORY[0x1E696ABC0] errorWithDomain:@"com.apple.AuthenticationServicesCore.AuthorizationError" code:1 userInfo:{0, v18, v19, v20, v21, v22}];
    (*(v14 + 2))(v14, MEMORY[0x1E695E0F0]);
  }
}

void __78__ASCAgentProxy_browserPasskeysForRelyingParty_testOptions_completionHandler___block_invoke(uint64_t a1)
{
  v7 = *MEMORY[0x1E69E9840];
  v2 = WBS_LOG_CHANNEL_PREFIXAuthorization();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_INFO))
  {
    v3 = *(a1 + 32);
    v5 = 138477827;
    v6 = v3;
    _os_log_impl(&dword_1C20AD000, v2, OS_LOG_TYPE_INFO, "Browser requested passkeys for %{private}@", &v5, 0xCu);
  }

  v4 = *MEMORY[0x1E69E9840];
}

void __78__ASCAgentProxy_browserPasskeysForRelyingParty_testOptions_completionHandler___block_invoke_11(void *a1, void *a2)
{
  v3 = a2;
  v4 = *(a1[4] + 24);
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __78__ASCAgentProxy_browserPasskeysForRelyingParty_testOptions_completionHandler___block_invoke_2;
  v9[3] = &unk_1E8160070;
  v5 = a1[6];
  v10 = v3;
  v11 = v5;
  v6 = v3;
  os_activity_apply(v4, v9);
  (*(a1[5] + 16))(a1[5], MEMORY[0x1E695E0F0], v7, v8);
}

void __78__ASCAgentProxy_browserPasskeysForRelyingParty_testOptions_completionHandler___block_invoke_2(uint64_t a1)
{
  v2 = WBS_LOG_CHANNEL_PREFIXAuthorization();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_ERROR))
  {
    __75__ASCAgentProxy_clearAllPlatformPublicKeyCredentialsWithCompletionHandler___block_invoke_2_cold_1(a1, v2);
  }
}

- (BOOL)isDeviceConfiguredForPasskeysWithTestOptions:(id)a3
{
  v5 = a3;
  os_activity_apply(self->_activity, &__block_literal_global_2);
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __62__ASCAgentProxy_isDeviceConfiguredForPasskeysWithTestOptions___block_invoke_12;
  v10[3] = &unk_1E81600C0;
  v10[4] = self;
  v10[5] = a2;
  v6 = [(ASCAgentProxy *)self _remoteObjectProxyWithErrorHandler:v10];
  v7 = v6;
  if (v6)
  {
    v8 = [v6 isDeviceConfiguredForPasskeysWithTestOptions:v5];
  }

  else
  {
    [MEMORY[0x1E696ABC0] errorWithDomain:@"com.apple.AuthenticationServicesCore.AuthorizationError" code:1 userInfo:0];

    v8 = 0;
  }

  return v8;
}

void __62__ASCAgentProxy_isDeviceConfiguredForPasskeysWithTestOptions___block_invoke()
{
  v4 = *MEMORY[0x1E69E9840];
  v0 = WBS_LOG_CHANNEL_PREFIXAuthorization();
  if (os_log_type_enabled(v0, OS_LOG_TYPE_INFO))
  {
    v2 = 136446210;
    v3 = "[ASCAgentProxy isDeviceConfiguredForPasskeysWithTestOptions:]_block_invoke";
    _os_log_impl(&dword_1C20AD000, v0, OS_LOG_TYPE_INFO, "Browser called %{public}s", &v2, 0xCu);
  }

  v1 = *MEMORY[0x1E69E9840];
}

void __62__ASCAgentProxy_isDeviceConfiguredForPasskeysWithTestOptions___block_invoke_12(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = *(*(a1 + 32) + 24);
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __62__ASCAgentProxy_isDeviceConfiguredForPasskeysWithTestOptions___block_invoke_2;
  v7[3] = &unk_1E8160070;
  v5 = *(a1 + 40);
  v8 = v3;
  v9 = v5;
  v6 = v3;
  os_activity_apply(v4, v7);
}

void __62__ASCAgentProxy_isDeviceConfiguredForPasskeysWithTestOptions___block_invoke_2(uint64_t a1)
{
  v2 = WBS_LOG_CHANNEL_PREFIXAuthorization();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_ERROR))
  {
    __75__ASCAgentProxy_clearAllPlatformPublicKeyCredentialsWithCompletionHandler___block_invoke_2_cold_1(a1, v2);
  }
}

- (void)getCanCurrentProcessAccessPasskeysForRelyingParty:(id)a3 withCompletionHandler:(id)a4
{
  v7 = a3;
  v8 = a4;
  v13[0] = MEMORY[0x1E69E9820];
  v13[1] = 3221225472;
  v13[2] = __89__ASCAgentProxy_getCanCurrentProcessAccessPasskeysForRelyingParty_withCompletionHandler___block_invoke;
  v13[3] = &unk_1E8160098;
  v13[4] = self;
  v15 = a2;
  v9 = v8;
  v14 = v9;
  v10 = [(ASCAgentProxy *)self _remoteObjectProxyWithErrorHandler:v13];
  v11 = v10;
  if (v10)
  {
    [v10 getCanCurrentProcessAccessPasskeysForRelyingParty:v7 withCompletionHandler:v9];
  }

  else
  {
    v12 = [MEMORY[0x1E696ABC0] errorWithDomain:@"com.apple.AuthenticationServicesCore.AuthorizationError" code:1 userInfo:0];
    (*(v9 + 2))(v9, [v12 code] == 4099);
  }
}

void __89__ASCAgentProxy_getCanCurrentProcessAccessPasskeysForRelyingParty_withCompletionHandler___block_invoke(void *a1, void *a2)
{
  v3 = a2;
  v4 = *(a1[4] + 24);
  v7 = MEMORY[0x1E69E9820];
  v8 = 3221225472;
  v9 = __89__ASCAgentProxy_getCanCurrentProcessAccessPasskeysForRelyingParty_withCompletionHandler___block_invoke_2;
  v10 = &unk_1E8160070;
  v5 = a1[6];
  v11 = v3;
  v12 = v5;
  v6 = v3;
  os_activity_apply(v4, &v7);
  (*(a1[5] + 16))(a1[5], [v6 code] == 4099);
}

void __89__ASCAgentProxy_getCanCurrentProcessAccessPasskeysForRelyingParty_withCompletionHandler___block_invoke_2(uint64_t a1)
{
  v2 = WBS_LOG_CHANNEL_PREFIXAuthorization();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_ERROR))
  {
    __75__ASCAgentProxy_clearAllPlatformPublicKeyCredentialsWithCompletionHandler___block_invoke_2_cold_1(a1, v2);
  }
}

- (void)performSilentAuthorizationRequestsForContext:(id)a3 withCompletionHandler:(id)a4
{
  v6 = a4;
  v7 = a3;
  v8 = WBS_LOG_CHANNEL_PREFIXAuthorization();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
  {
    *buf = 0;
    _os_log_impl(&dword_1C20AD000, v8, OS_LOG_TYPE_INFO, "Asked to perform silent request.", buf, 2u);
  }

  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 3221225472;
  aBlock[2] = __84__ASCAgentProxy_performSilentAuthorizationRequestsForContext_withCompletionHandler___block_invoke;
  aBlock[3] = &unk_1E815FA38;
  v9 = v6;
  v19 = v9;
  v10 = _Block_copy(aBlock);
  v13 = MEMORY[0x1E69E9820];
  v14 = 3221225472;
  v15 = __84__ASCAgentProxy_performSilentAuthorizationRequestsForContext_withCompletionHandler___block_invoke_2;
  v16 = &unk_1E815FFF8;
  v17 = v9;
  v11 = v9;
  v12 = [(ASCAgentProxy *)self _remoteObjectProxyWithErrorHandler:&v13];
  [v12 performSilentAuthorizationRequestsForContext:v7 withCompletionHandler:{v10, v13, v14, v15, v16}];
}

void __84__ASCAgentProxy_performSilentAuthorizationRequestsForContext_withCompletionHandler___block_invoke_2(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = WBS_LOG_CHANNEL_PREFIXAuthorization();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
  {
    __84__ASCAgentProxy_performSilentAuthorizationRequestsForContext_withCompletionHandler___block_invoke_2_cold_1(v4);
  }

  (*(*(a1 + 32) + 16))();
}

- (void)getPasskeysDataForRelyingParty:(id)a3 withCompletionHandler:(id)a4
{
  v16 = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = a4;
  v8 = WBS_LOG_CHANNEL_PREFIXAuthorization();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
  {
    *buf = 138543362;
    v15 = v6;
    _os_log_impl(&dword_1C20AD000, v8, OS_LOG_TYPE_INFO, "Asked to look up passkey data for %{public}@.", buf, 0xCu);
  }

  v12[0] = MEMORY[0x1E69E9820];
  v12[1] = 3221225472;
  v12[2] = __70__ASCAgentProxy_getPasskeysDataForRelyingParty_withCompletionHandler___block_invoke;
  v12[3] = &unk_1E815FFF8;
  v13 = v7;
  v9 = v7;
  v10 = [(ASCAgentProxy *)self _remoteObjectProxyWithErrorHandler:v12];
  [v10 getPasskeysDataForRelyingParty:v6 withCompletionHandler:v9];

  v11 = *MEMORY[0x1E69E9840];
}

void __70__ASCAgentProxy_getPasskeysDataForRelyingParty_withCompletionHandler___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = WBS_LOG_CHANNEL_PREFIXAuthorization();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
  {
    __84__ASCAgentProxy_performSilentAuthorizationRequestsForContext_withCompletionHandler___block_invoke_2_cold_1(v4);
  }

  (*(*(a1 + 32) + 16))();
}

- (void)deletePasskeyForRelyingParty:(id)a3 withCredentialID:(id)a4 completionHandler:(id)a5
{
  v25 = *MEMORY[0x1E69E9840];
  v9 = a3;
  v10 = a4;
  v11 = a5;
  v12 = WBS_LOG_CHANNEL_PREFIXAuthorization();
  if (os_log_type_enabled(v12, OS_LOG_TYPE_INFO))
  {
    *buf = 138543618;
    v22 = v10;
    v23 = 2114;
    v24 = v9;
    _os_log_impl(&dword_1C20AD000, v12, OS_LOG_TYPE_INFO, "Asked to delete passkey %{public}@ for %{public}@.", buf, 0x16u);
  }

  v18[0] = MEMORY[0x1E69E9820];
  v18[1] = 3221225472;
  v18[2] = __81__ASCAgentProxy_deletePasskeyForRelyingParty_withCredentialID_completionHandler___block_invoke;
  v18[3] = &unk_1E8160098;
  v18[4] = self;
  v20 = a2;
  v13 = v11;
  v19 = v13;
  v14 = [(ASCAgentProxy *)self _remoteObjectProxyWithErrorHandler:v18];
  v15 = v14;
  if (v14)
  {
    [v14 deletePasskeyForRelyingParty:v9 withCredentialID:v10 completionHandler:v13];
  }

  else
  {
    v16 = [MEMORY[0x1E696ABC0] errorWithDomain:@"com.apple.AuthenticationServicesCore.AuthorizationError" code:1 userInfo:0];
    (*(v13 + 2))(v13, 0, v16);
  }

  v17 = *MEMORY[0x1E69E9840];
}

void __81__ASCAgentProxy_deletePasskeyForRelyingParty_withCredentialID_completionHandler___block_invoke(void *a1, void *a2)
{
  v3 = a2;
  v4 = *(a1[4] + 24);
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __81__ASCAgentProxy_deletePasskeyForRelyingParty_withCredentialID_completionHandler___block_invoke_2;
  v8[3] = &unk_1E8160070;
  v5 = a1[6];
  v9 = v3;
  v10 = v5;
  v6 = v3;
  os_activity_apply(v4, v8);
  (*(a1[5] + 16))(a1[5], 0, v6, v7);
}

void __81__ASCAgentProxy_deletePasskeyForRelyingParty_withCredentialID_completionHandler___block_invoke_2(uint64_t a1)
{
  v2 = WBS_LOG_CHANNEL_PREFIXAuthorization();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_ERROR))
  {
    __75__ASCAgentProxy_clearAllPlatformPublicKeyCredentialsWithCompletionHandler___block_invoke_2_cold_1(a1, v2);
  }
}

- (void)deleteAllPasskeysForRelyingParty:(id)a3 completionHandler:(id)a4
{
  v20 = *MEMORY[0x1E69E9840];
  v7 = a3;
  v8 = a4;
  v9 = WBS_LOG_CHANNEL_PREFIXAuthorization();
  if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
  {
    *buf = 138543362;
    v19 = v7;
    _os_log_impl(&dword_1C20AD000, v9, OS_LOG_TYPE_INFO, "Asked to delete all passkeys for %{public}@.", buf, 0xCu);
  }

  v15[0] = MEMORY[0x1E69E9820];
  v15[1] = 3221225472;
  v15[2] = __68__ASCAgentProxy_deleteAllPasskeysForRelyingParty_completionHandler___block_invoke;
  v15[3] = &unk_1E8160098;
  v15[4] = self;
  v17 = a2;
  v10 = v8;
  v16 = v10;
  v11 = [(ASCAgentProxy *)self _remoteObjectProxyWithErrorHandler:v15];
  v12 = v11;
  if (v11)
  {
    [v11 deleteAllPasskeysForRelyingParty:v7 completionHandler:v10];
  }

  else
  {
    v13 = [MEMORY[0x1E696ABC0] errorWithDomain:@"com.apple.AuthenticationServicesCore.AuthorizationError" code:1 userInfo:0];
    (*(v10 + 2))(v10, 0, v13);
  }

  v14 = *MEMORY[0x1E69E9840];
}

void __68__ASCAgentProxy_deleteAllPasskeysForRelyingParty_completionHandler___block_invoke(void *a1, void *a2)
{
  v3 = a2;
  v4 = *(a1[4] + 24);
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __68__ASCAgentProxy_deleteAllPasskeysForRelyingParty_completionHandler___block_invoke_2;
  v8[3] = &unk_1E8160070;
  v5 = a1[6];
  v9 = v3;
  v10 = v5;
  v6 = v3;
  os_activity_apply(v4, v8);
  (*(a1[5] + 16))(a1[5], 0, v6, v7);
}

void __68__ASCAgentProxy_deleteAllPasskeysForRelyingParty_completionHandler___block_invoke_2(uint64_t a1)
{
  v2 = WBS_LOG_CHANNEL_PREFIXAuthorization();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_ERROR))
  {
    __75__ASCAgentProxy_clearAllPlatformPublicKeyCredentialsWithCompletionHandler___block_invoke_2_cold_1(a1, v2);
  }
}

- (void)preflightCanCreateICloudKeychainPasskeyWithCompletionHandler:(id)a3
{
  v4 = a3;
  v5 = WBS_LOG_CHANNEL_PREFIXAuthorization();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
  {
    *buf = 0;
    _os_log_impl(&dword_1C20AD000, v5, OS_LOG_TYPE_INFO, "Asked to preflight creating passkey in iCloud Keychain.", buf, 2u);
  }

  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __78__ASCAgentProxy_preflightCanCreateICloudKeychainPasskeyWithCompletionHandler___block_invoke;
  v8[3] = &unk_1E815FFF8;
  v9 = v4;
  v6 = v4;
  v7 = [(ASCAgentProxy *)self _remoteObjectProxyWithErrorHandler:v8];
  [v7 preflightCanCreateICloudKeychainPasskeyWithCompletionHandler:v6];
}

void __78__ASCAgentProxy_preflightCanCreateICloudKeychainPasskeyWithCompletionHandler___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = WBS_LOG_CHANNEL_PREFIXAuthorization();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
  {
    __84__ASCAgentProxy_performSilentAuthorizationRequestsForContext_withCompletionHandler___block_invoke_2_cold_1(v4);
  }

  (*(*(a1 + 32) + 16))();
}

- (void)openCredentialProviderAppSettingsWithCompletionHandler:(id)a3
{
  v5 = a3;
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __72__ASCAgentProxy_openCredentialProviderAppSettingsWithCompletionHandler___block_invoke;
  v10[3] = &unk_1E8160098;
  v10[4] = self;
  v12 = a2;
  v6 = v5;
  v11 = v6;
  v7 = [(ASCAgentProxy *)self _remoteObjectProxyWithErrorHandler:v10];
  v8 = v7;
  if (v7)
  {
    [v7 openCredentialProviderAppSettingsWithCompletionHandler:v6];
  }

  else
  {
    v9 = [MEMORY[0x1E696ABC0] errorWithDomain:@"com.apple.AuthenticationServicesCore.AuthorizationError" code:1 userInfo:0];
    (*(v6 + 2))(v6, v9);
  }
}

void __72__ASCAgentProxy_openCredentialProviderAppSettingsWithCompletionHandler___block_invoke(void *a1, void *a2)
{
  v3 = a2;
  v4 = *(a1[4] + 24);
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __72__ASCAgentProxy_openCredentialProviderAppSettingsWithCompletionHandler___block_invoke_2;
  v9[3] = &unk_1E8160070;
  v5 = a1[6];
  v10 = v3;
  v11 = v5;
  v6 = v3;
  os_activity_apply(v4, v9);
  (*(a1[5] + 16))(a1[5], v6, v7, v8);
}

void __72__ASCAgentProxy_openCredentialProviderAppSettingsWithCompletionHandler___block_invoke_2(uint64_t a1)
{
  v2 = WBS_LOG_CHANNEL_PREFIXAuthorization();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_ERROR))
  {
    __75__ASCAgentProxy_clearAllPlatformPublicKeyCredentialsWithCompletionHandler___block_invoke_2_cold_1(a1, v2);
  }
}

- (void)openVerificationCodeAppSettingsWithCompletionHandler:(id)a3
{
  v5 = a3;
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __70__ASCAgentProxy_openVerificationCodeAppSettingsWithCompletionHandler___block_invoke;
  v10[3] = &unk_1E8160098;
  v10[4] = self;
  v12 = a2;
  v6 = v5;
  v11 = v6;
  v7 = [(ASCAgentProxy *)self _remoteObjectProxyWithErrorHandler:v10];
  v8 = v7;
  if (v7)
  {
    [v7 openVerificationCodeAppSettingsWithCompletionHandler:v6];
  }

  else
  {
    v9 = [MEMORY[0x1E696ABC0] errorWithDomain:@"com.apple.AuthenticationServicesCore.AuthorizationError" code:1 userInfo:0];
    (*(v6 + 2))(v6, v9);
  }
}

void __70__ASCAgentProxy_openVerificationCodeAppSettingsWithCompletionHandler___block_invoke(void *a1, void *a2)
{
  v3 = a2;
  v4 = *(a1[4] + 24);
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __70__ASCAgentProxy_openVerificationCodeAppSettingsWithCompletionHandler___block_invoke_2;
  v9[3] = &unk_1E8160070;
  v5 = a1[6];
  v10 = v3;
  v11 = v5;
  v6 = v3;
  os_activity_apply(v4, v9);
  (*(a1[5] + 16))(a1[5], v6, v7, v8);
}

void __70__ASCAgentProxy_openVerificationCodeAppSettingsWithCompletionHandler___block_invoke_2(uint64_t a1)
{
  v2 = WBS_LOG_CHANNEL_PREFIXAuthorization();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_ERROR))
  {
    __75__ASCAgentProxy_clearAllPlatformPublicKeyCredentialsWithCompletionHandler___block_invoke_2_cold_1(a1, v2);
  }
}

- (void)requestToTurnOnCredentialProviderExtensionWithCompletionHandler:(id)a3
{
  v5 = a3;
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __81__ASCAgentProxy_requestToTurnOnCredentialProviderExtensionWithCompletionHandler___block_invoke;
  v10[3] = &unk_1E8160098;
  v10[4] = self;
  v12 = a2;
  v6 = v5;
  v11 = v6;
  v7 = [(ASCAgentProxy *)self _remoteObjectProxyWithErrorHandler:v10];
  v8 = v7;
  if (v7)
  {
    [v7 requestToTurnOnCredentialProviderExtensionWithCompletionHandler:v6];
  }

  else
  {
    v9 = [MEMORY[0x1E696ABC0] errorWithDomain:@"com.apple.AuthenticationServicesCore.AuthorizationError" code:1 userInfo:0];
    (*(v6 + 2))(v6, 0);
  }
}

void __81__ASCAgentProxy_requestToTurnOnCredentialProviderExtensionWithCompletionHandler___block_invoke(void *a1, void *a2)
{
  v3 = a2;
  v4 = *(a1[4] + 24);
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __81__ASCAgentProxy_requestToTurnOnCredentialProviderExtensionWithCompletionHandler___block_invoke_2;
  v9[3] = &unk_1E8160070;
  v5 = a1[6];
  v10 = v3;
  v11 = v5;
  v6 = v3;
  os_activity_apply(v4, v9);
  (*(a1[5] + 16))(a1[5], 0, v7, v8);
}

void __81__ASCAgentProxy_requestToTurnOnCredentialProviderExtensionWithCompletionHandler___block_invoke_2(uint64_t a1)
{
  v2 = WBS_LOG_CHANNEL_PREFIXAuthorization();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_ERROR))
  {
    __75__ASCAgentProxy_clearAllPlatformPublicKeyCredentialsWithCompletionHandler___block_invoke_2_cold_1(a1, v2);
  }
}

- (void)cancelCurrentRequest
{
  os_activity_apply(self->_activity, &__block_literal_global_14);
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __37__ASCAgentProxy_cancelCurrentRequest__block_invoke_15;
  v6[3] = &unk_1E81600C0;
  v6[4] = self;
  v6[5] = a2;
  v4 = [(ASCAgentProxy *)self _remoteObjectProxyWithErrorHandler:v6];
  v5 = v4;
  if (v4)
  {
    [v4 cancelCurrentRequest];
  }

  else
  {
    [MEMORY[0x1E696ABC0] errorWithDomain:@"com.apple.AuthenticationServicesCore.AuthorizationError" code:1 userInfo:0];
  }
}

void __37__ASCAgentProxy_cancelCurrentRequest__block_invoke()
{
  v0 = WBS_LOG_CHANNEL_PREFIXAuthorization();
  if (os_log_type_enabled(v0, OS_LOG_TYPE_DEFAULT))
  {
    *v1 = 0;
    _os_log_impl(&dword_1C20AD000, v0, OS_LOG_TYPE_DEFAULT, "Client asked to cancel request.", v1, 2u);
  }
}

void __37__ASCAgentProxy_cancelCurrentRequest__block_invoke_15(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = *(*(a1 + 32) + 24);
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __37__ASCAgentProxy_cancelCurrentRequest__block_invoke_2;
  v7[3] = &unk_1E8160070;
  v5 = *(a1 + 40);
  v8 = v3;
  v9 = v5;
  v6 = v3;
  os_activity_apply(v4, v7);
}

void __37__ASCAgentProxy_cancelCurrentRequest__block_invoke_2(uint64_t a1)
{
  v2 = WBS_LOG_CHANNEL_PREFIXAuthorization();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_ERROR))
  {
    __75__ASCAgentProxy_clearAllPlatformPublicKeyCredentialsWithCompletionHandler___block_invoke_2_cold_1(a1, v2);
  }
}

- (void)_getSavedAccountContextFromSafariApplicationWithRequestContext:(id)a3 completionHandler:(id)a4
{
  v14 = a3;
  v5 = a4;
  v6 = [MEMORY[0x1E69C8A20] defaultContext];
  v7 = [MEMORY[0x1E696AAE8] mainBundle];
  v8 = [v7 safari_isSafariFamilyApplicationBundle];

  if ((v8 & 1) != 0 && (v9 = NSClassFromString(&cfstr_Uiapplication.isa)) != 0)
  {
    v10 = v9;
    if (objc_opt_respondsToSelector())
    {
      v11 = [(objc_class *)v10 sharedApplication];
    }

    else
    {
      v11 = 0;
    }

    if ([v11 conformsToProtocol:&unk_1F41BBA48])
    {
      v12 = [v14 globalFrameID];
      v13 = [v12 coreFrameIdentifier];
      [v11 getSavedAccountContextForGlobalFrameIdentifier:v13 completionHandler:v5];
    }

    else
    {
      v5[2](v5, v6);
    }
  }

  else
  {
    v5[2](v5, v6);
  }
}

- (id)_reconnectIfNecessary
{
  os_unfair_lock_lock(&self->_connectionLock);
  connection = self->_connection;
  if (!connection)
  {
    v4 = objc_alloc(MEMORY[0x1E696B0B8]);
    v5 = ASCAgentServiceName();
    v6 = [v4 initWithMachServiceName:v5 options:0];
    v7 = self->_connection;
    self->_connection = v6;

    [(ASCAgentProxy *)self _setUpConnection:self->_connection];
    connection = self->_connection;
  }

  v8 = connection;
  os_unfair_lock_unlock(&self->_connectionLock);

  return v8;
}

void __52__ASCAgentProxy__remoteObjectProxyWithErrorHandler___block_invoke_cold_1(void *a1)
{
  v12 = *MEMORY[0x1E69E9840];
  v2 = a1;
  v3 = [OUTLINED_FUNCTION_1() safari_privacyPreservingDescription];
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_0(&dword_1C20AD000, v4, v5, "Remote proxy object error handler invoked with error: %{public}@", v6, v7, v8, v9, v11);

  v10 = *MEMORY[0x1E69E9840];
}

void __78__ASCAgentProxy_performAuthorizationRequestsForContext_withCompletionHandler___block_invoke_3_cold_1(uint64_t a1, void *a2)
{
  v14 = *MEMORY[0x1E69E9840];
  v3 = *(a1 + 32);
  v4 = a2;
  v5 = [OUTLINED_FUNCTION_1() safari_privacyPreservingDescription];
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_0(&dword_1C20AD000, v6, v7, "Connection to agent service interrupted with error: %{public}@", v8, v9, v10, v11, v13);

  v12 = *MEMORY[0x1E69E9840];
}

void __75__ASCAgentProxy_clearAllPlatformPublicKeyCredentialsWithCompletionHandler___block_invoke_2_cold_1(uint64_t a1, void *a2)
{
  v4 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_7_0(a1, a2);
  v5 = OUTLINED_FUNCTION_4();
  NSStringFromSelector(v5);
  objc_claimAutoreleasedReturnValue();
  v6 = [OUTLINED_FUNCTION_3_0() safari_privacyPreservingDescription];
  OUTLINED_FUNCTION_0_0();
  OUTLINED_FUNCTION_1_1(&dword_1C20AD000, v7, v8, "Could not create AuthenticationServicesAgent proxy object in %{public}@: %{public}@", v9, v10, v11, v12, v14);

  v13 = *MEMORY[0x1E69E9840];
}

void __84__ASCAgentProxy_performSilentAuthorizationRequestsForContext_withCompletionHandler___block_invoke_2_cold_1(void *a1)
{
  v12 = *MEMORY[0x1E69E9840];
  v2 = a1;
  v3 = [OUTLINED_FUNCTION_1() safari_privacyPreservingDescription];
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_0(&dword_1C20AD000, v4, v5, "Connection to agent service interrupted with error: %{public}@", v6, v7, v8, v9, v11);

  v10 = *MEMORY[0x1E69E9840];
}

@end