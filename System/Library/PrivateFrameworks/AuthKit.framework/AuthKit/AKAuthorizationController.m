@interface AKAuthorizationController
+ (BOOL)_matchURLProcessingSet:(id)a3 url:(id)a4;
+ (BOOL)isURL:(id)a3 matchingAppleOwnedDomains:(id)a4;
+ (BOOL)isURLFromAllowListDomainsForSharingKey:(id)a3;
+ (BOOL)isURLFromAppleOwnedDomain:(id)a3;
+ (BOOL)shouldProcessURL:(id)a3;
+ (id)appleOwnedDomains;
+ (id)sharedController;
+ (unint64_t)appSSORequestTypeForURL:(id)a3;
+ (void)shouldProcessURL:(id)a3 completion:(id)a4;
- (AKAuthorizationController)init;
- (AKAuthorizationController)initWithDaemonXPCEndpoint:(id)a3;
- (BOOL)_shouldOverrideProxiedBundleIDForContext:(id)a3;
- (id)_allowListDomainsForSharingKey;
- (id)_appleOwnedDomains;
- (id)_nativeTakeoverURLs;
- (id)_sharedKeyInfo;
- (id)primaryApplicationInformationForWebServiceWithInfo:(id)a3 error:(id *)a4;
- (void)_nativeTakeoverEndpointsWithCompletionHandler:(id)a3;
- (void)beginAuthorizationWithContext:(id)a3 completion:(id)a4;
- (void)cancelAuthorizationWithContext:(id)a3 completion:(id)a4;
- (void)continueAuthorizationWithContext:(id)a3 completion:(id)a4;
- (void)continueFetchingIconForRequestContext:(id)a3 completion:(id)a4;
- (void)dealloc;
- (void)establishConnectionWithNotificationHandlerEndpoint:(id)a3 completion:(id)a4;
- (void)establishConnectionWithStateBroadcastHandlerEndpoint:(id)a3 completion:(id)a4;
- (void)fetchAppleIDAuthorizeHTMLResponseTemplateWithCompletion:(id)a3;
- (void)getCredentialStateForClientID:(id)a3 completion:(id)a4;
- (void)getCredentialStateForRequest:(id)a3 completion:(id)a4;
- (void)getPresentationContextForRequestContext:(id)a3 completion:(id)a4;
- (void)performAuthorizationWithContext:(id)a3 completion:(id)a4;
- (void)performAuthorizationWithContext:(id)a3 withUserProvidedInformation:(id)a4 completion:(id)a5;
- (void)revokeAuthorizationWithContext:(id)a3 completion:(id)a4;
- (void)setUiProvider:(id)a3;
- (void)storeAuthorization:(id)a3 forProxiedRequest:(id)a4 completion:(id)a5;
@end

@implementation AKAuthorizationController

- (AKAuthorizationController)init
{
  v4 = 0;
  v4 = [(AKAuthorizationController *)self initWithDaemonXPCEndpoint:?];
  v3 = MEMORY[0x1E69E5928](v4);
  objc_storeStrong(&v4, 0);
  return v3;
}

- (AKAuthorizationController)initWithDaemonXPCEndpoint:(id)a3
{
  v13 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  v3 = v13;
  v13 = 0;
  v11.receiver = v3;
  v11.super_class = AKAuthorizationController;
  v13 = [(AKAuthorizationController *)&v11 init];
  objc_storeStrong(&v13, v13);
  if (v13)
  {
    v4 = objc_alloc_init(AKAuthorizationClientImpl);
    clientImpl = v13->_clientImpl;
    v13->_clientImpl = v4;
    MEMORY[0x1E69E5920](clientImpl);
    v6 = [AKAuthorizationDaemonConnection alloc];
    v7 = [(AKAuthorizationDaemonConnection *)v6 initWithListenerEndpoint:location[0] exportedInterface:v13->_clientImpl];
    daemonConnection = v13->_daemonConnection;
    v13->_daemonConnection = v7;
    MEMORY[0x1E69E5920](daemonConnection);
  }

  v10 = MEMORY[0x1E69E5928](v13);
  objc_storeStrong(location, 0);
  objc_storeStrong(&v13, 0);
  return v10;
}

- (void)dealloc
{
  v7 = *MEMORY[0x1E69E9840];
  v5 = self;
  oslog[1] = a2;
  oslog[0] = _AKLogSiwa();
  type = OS_LOG_TYPE_DEBUG;
  if (os_log_type_enabled(oslog[0], OS_LOG_TYPE_DEBUG))
  {
    __os_log_helper_16_2_1_8_64(v6, v5);
    _os_log_debug_impl(&dword_193225000, oslog[0], type, "%@ deallocated", v6, 0xCu);
  }

  objc_storeStrong(oslog, 0);
  if (v5->_daemonConnection)
  {
    objc_storeStrong(&v5->_daemonConnection, 0);
  }

  v2.receiver = v5;
  v2.super_class = AKAuthorizationController;
  [(AKAuthorizationController *)&v2 dealloc];
  *MEMORY[0x1E69E9840];
}

- (void)setUiProvider:(id)a3
{
  v4 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  [(AKAuthorizationClientImpl *)v4->_clientImpl setUiProvider:location[0]];
  objc_storeStrong(location, 0);
}

- (void)performAuthorizationWithContext:(id)a3 completion:(id)a4
{
  v36 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  v34 = 0;
  objc_storeStrong(&v34, a4);
  v32 = _os_activity_create(&dword_193225000, "authkit/authorize", MEMORY[0x1E69E9C00], OS_ACTIVITY_FLAG_DEFAULT);
  v33 = v32;
  state.opaque[0] = 0;
  state.opaque[1] = 0;
  os_activity_scope_enter(v32, &state);
  v30 = _AKLogSiwa();
  v29 = OS_LOG_TYPE_DEFAULT;
  if (os_log_type_enabled(v30, OS_LOG_TYPE_DEFAULT))
  {
    log = v30;
    type = v29;
    __os_log_helper_16_0_0(v28);
    _os_log_impl(&dword_193225000, log, type, "Authorization controller performAuthorizationWithContext called", v28, 2u);
  }

  objc_storeStrong(&v30, 0);
  v22[0] = 0;
  v22[1] = v22;
  v23 = 838860800;
  v24 = 48;
  v25 = __Block_byref_object_copy__17;
  v26 = __Block_byref_object_dispose__17;
  v27 = MEMORY[0x1E69E5928](v36);
  v15 = MEMORY[0x1E69E9820];
  v16 = -1073741824;
  v17 = 0;
  v18 = __72__AKAuthorizationController_performAuthorizationWithContext_completion___block_invoke;
  v19 = &unk_1E73D9890;
  v20[1] = v22;
  v20[0] = MEMORY[0x1E69E5928](v34);
  v21 = MEMORY[0x193B165F0](&v15);
  daemonConnection = v36->_daemonConnection;
  v8 = MEMORY[0x1E69E9820];
  v9 = -1073741824;
  v10 = 0;
  v11 = __72__AKAuthorizationController_performAuthorizationWithContext_completion___block_invoke_4;
  v12 = &unk_1E73D3510;
  v13 = MEMORY[0x1E69E5928](v21);
  v14 = [(AKAuthorizationDaemonConnection *)daemonConnection remoteObjectProxyWithErrorHandler:&v8];
  [v14 performAuthorization:location[0] completion:v21];
  objc_storeStrong(&v14, 0);
  objc_storeStrong(&v13, 0);
  objc_storeStrong(&v21, 0);
  objc_storeStrong(v20, 0);
  _Block_object_dispose(v22, 8);
  objc_storeStrong(&v27, 0);
  os_activity_scope_leave(&state);
  objc_storeStrong(&v33, 0);
  objc_storeStrong(&v34, 0);
  objc_storeStrong(location, 0);
}

void __72__AKAuthorizationController_performAuthorizationWithContext_completion___block_invoke(void *a1, void *a2, void *a3)
{
  v12 = *MEMORY[0x1E69E9840];
  location[1] = a1;
  location[0] = 0;
  objc_storeStrong(location, a2);
  v8 = 0;
  objc_storeStrong(&v8, a3);
  v7[1] = a1;
  if (location[0])
  {
    v7[0] = _AKLogSiwa();
    v6 = OS_LOG_TYPE_DEFAULT;
    if (os_log_type_enabled(v7[0], OS_LOG_TYPE_DEFAULT))
    {
      __os_log_helper_16_2_1_8_64(v11, location[0]);
      _os_log_impl(&dword_193225000, v7[0], v6, "Authorization completed with authorization: %@", v11, 0xCu);
    }

    objc_storeStrong(v7, 0);
  }

  else
  {
    oslog = _AKLogSiwa();
    if (os_log_type_enabled(oslog, OS_LOG_TYPE_ERROR))
    {
      __os_log_helper_16_2_1_8_64(v10, v8);
      _os_log_error_impl(&dword_193225000, oslog, OS_LOG_TYPE_ERROR, "Authorization failed: %@", v10, 0xCu);
    }

    objc_storeStrong(&oslog, 0);
  }

  objc_storeStrong((*(a1[5] + 8) + 40), 0);
  (*(a1[4] + 16))();
  objc_storeStrong(&v8, 0);
  objc_storeStrong(location, 0);
  *MEMORY[0x1E69E9840];
}

void __72__AKAuthorizationController_performAuthorizationWithContext_completion___block_invoke_4(void *a1, void *a2)
{
  location[1] = a1;
  location[0] = 0;
  objc_storeStrong(location, a2);
  (*(a1[4] + 16))();
  objc_storeStrong(location, 0);
}

- (void)beginAuthorizationWithContext:(id)a3 completion:(id)a4
{
  v47 = *MEMORY[0x1E69E9840];
  v45 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  v43 = 0;
  objc_storeStrong(&v43, a4);
  v41 = _os_activity_create(&dword_193225000, "authkit/begin-authorize", MEMORY[0x1E69E9C00], OS_ACTIVITY_FLAG_DEFAULT);
  v42 = v41;
  state.opaque[0] = 0;
  state.opaque[1] = 0;
  os_activity_scope_enter(v41, &state);
  v39 = 0uLL;
  v9 = _AKSignpostLogSystem();
  *&v38 = _AKSignpostCreate(v9);
  *(&v38 + 1) = v4;
  MEMORY[0x1E69E5920](v9);
  v37 = _AKSignpostLogSystem();
  v36 = 1;
  v35 = v38;
  if (v38 && v35 != -1 && os_signpost_enabled(v37))
  {
    log = v37;
    type = v36;
    spid = v35;
    __os_log_helper_16_0_0(v34);
    _os_signpost_emit_with_name_impl(&dword_193225000, log, type, spid, "AuthorizationExternalAuthBegin", " enableTelemetry=YES ", v34, 2u);
  }

  objc_storeStrong(&v37, 0);
  v33 = _AKSignpostLogSystem();
  v32 = OS_LOG_TYPE_DEFAULT;
  if (os_log_type_enabled(v33, OS_LOG_TYPE_DEFAULT))
  {
    __os_log_helper_16_0_1_8_0(v46, v38);
    _os_log_impl(&dword_193225000, v33, v32, "BEGIN [%lld]: AuthorizationExternalAuthBegin  enableTelemetry=YES ", v46, 0xCu);
  }

  objc_storeStrong(&v33, 0);
  v39 = v38;
  v26[0] = 0;
  v26[1] = v26;
  v27 = 838860800;
  v28 = 48;
  v29 = __Block_byref_object_copy__17;
  v30 = __Block_byref_object_dispose__17;
  v31 = MEMORY[0x1E69E5928](v45);
  v18 = MEMORY[0x1E69E9820];
  v19 = -1073741824;
  v20 = 0;
  v21 = __70__AKAuthorizationController_beginAuthorizationWithContext_completion___block_invoke;
  v22 = &unk_1E73D98B8;
  v24 = v39;
  v23[1] = v26;
  v23[0] = MEMORY[0x1E69E5928](v43);
  v25 = MEMORY[0x193B165F0](&v18);
  daemonConnection = v45->_daemonConnection;
  v11 = MEMORY[0x1E69E9820];
  v12 = -1073741824;
  v13 = 0;
  v14 = __70__AKAuthorizationController_beginAuthorizationWithContext_completion___block_invoke_7;
  v15 = &unk_1E73D3510;
  v16 = MEMORY[0x1E69E5928](v25);
  v17 = [(AKAuthorizationDaemonConnection *)daemonConnection remoteObjectProxyWithErrorHandler:&v11];
  [v17 beginAuthorizationWithContext:location[0] completion:v25];
  objc_storeStrong(&v17, 0);
  objc_storeStrong(&v16, 0);
  objc_storeStrong(&v25, 0);
  objc_storeStrong(v23, 0);
  _Block_object_dispose(v26, 8);
  objc_storeStrong(&v31, 0);
  os_activity_scope_leave(&state);
  objc_storeStrong(&v42, 0);
  objc_storeStrong(&v43, 0);
  objc_storeStrong(location, 0);
  *MEMORY[0x1E69E9840];
}

void __70__AKAuthorizationController_beginAuthorizationWithContext_completion___block_invoke(void *a1, void *a2, void *a3)
{
  v21 = *MEMORY[0x1E69E9840];
  location[1] = a1;
  location[0] = 0;
  objc_storeStrong(location, a2);
  v15 = 0;
  objc_storeStrong(&v15, a3);
  v14 = a1;
  v13 = _AKSignpostGetNanoseconds(a1[6], a1[7]) / 1000000000.0;
  v12 = _AKSignpostLogSystem();
  v11 = OS_SIGNPOST_INTERVAL_END;
  v10 = a1[6];
  if (v10 && v10 != -1 && os_signpost_enabled(v12))
  {
    __os_log_helper_16_0_1_4_2(v20, [v15 code]);
    _os_signpost_emit_with_name_impl(&dword_193225000, v12, v11, v10, "AuthorizationExternalAuthBegin", " Error=%{public,signpost.telemetry:number2,name=Error}d ", v20, 8u);
  }

  objc_storeStrong(&v12, 0);
  v9 = _AKSignpostLogSystem();
  v8 = OS_LOG_TYPE_DEFAULT;
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
  {
    __os_log_helper_16_0_3_8_0_8_0_4_2(v19, a1[6], *&v13, [v15 code]);
    _os_log_impl(&dword_193225000, v9, v8, "END [%lld] %fs:AuthorizationExternalAuthBegin  Error=%{public,signpost.telemetry:number2,name=Error}d ", v19, 0x1Cu);
  }

  objc_storeStrong(&v9, 0);
  if (location[0])
  {
    v7 = _AKLogSiwa();
    v6 = OS_LOG_TYPE_DEFAULT;
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      __os_log_helper_16_2_1_8_64(v18, location[0]);
      _os_log_impl(&dword_193225000, v7, v6, "Begin Authorization completed with userResponse: %@", v18, 0xCu);
    }

    objc_storeStrong(&v7, 0);
  }

  else
  {
    oslog = _AKLogSiwa();
    if (os_log_type_enabled(oslog, OS_LOG_TYPE_ERROR))
    {
      __os_log_helper_16_2_1_8_64(v17, v15);
      _os_log_error_impl(&dword_193225000, oslog, OS_LOG_TYPE_ERROR, "Begin Authorization failed: %@", v17, 0xCu);
    }

    objc_storeStrong(&oslog, 0);
  }

  objc_storeStrong((*(a1[5] + 8) + 40), 0);
  (*(a1[4] + 16))();
  objc_storeStrong(&v15, 0);
  objc_storeStrong(location, 0);
  *MEMORY[0x1E69E9840];
}

void __70__AKAuthorizationController_beginAuthorizationWithContext_completion___block_invoke_7(void *a1, void *a2)
{
  location[1] = a1;
  location[0] = 0;
  objc_storeStrong(location, a2);
  (*(a1[4] + 16))();
  objc_storeStrong(location, 0);
}

- (void)continueAuthorizationWithContext:(id)a3 completion:(id)a4
{
  v47 = *MEMORY[0x1E69E9840];
  v45 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  v43 = 0;
  objc_storeStrong(&v43, a4);
  v41 = _os_activity_create(&dword_193225000, "authkit/continue-authorize", MEMORY[0x1E69E9C00], OS_ACTIVITY_FLAG_DEFAULT);
  v42 = v41;
  state.opaque[0] = 0;
  state.opaque[1] = 0;
  os_activity_scope_enter(v41, &state);
  v39 = 0uLL;
  v9 = _AKSignpostLogSystem();
  *&v38 = _AKSignpostCreate(v9);
  *(&v38 + 1) = v4;
  MEMORY[0x1E69E5920](v9);
  v37 = _AKSignpostLogSystem();
  v36 = 1;
  v35 = v38;
  if (v38 && v35 != -1 && os_signpost_enabled(v37))
  {
    log = v37;
    type = v36;
    spid = v35;
    __os_log_helper_16_0_0(v34);
    _os_signpost_emit_with_name_impl(&dword_193225000, log, type, spid, "AuthorizationExternalAuthContinue", " enableTelemetry=YES ", v34, 2u);
  }

  objc_storeStrong(&v37, 0);
  v33 = _AKSignpostLogSystem();
  v32 = OS_LOG_TYPE_DEFAULT;
  if (os_log_type_enabled(v33, OS_LOG_TYPE_DEFAULT))
  {
    __os_log_helper_16_0_1_8_0(v46, v38);
    _os_log_impl(&dword_193225000, v33, v32, "BEGIN [%lld]: AuthorizationExternalAuthContinue  enableTelemetry=YES ", v46, 0xCu);
  }

  objc_storeStrong(&v33, 0);
  v39 = v38;
  v26[0] = 0;
  v26[1] = v26;
  v27 = 838860800;
  v28 = 48;
  v29 = __Block_byref_object_copy__17;
  v30 = __Block_byref_object_dispose__17;
  v31 = MEMORY[0x1E69E5928](v45);
  v18 = MEMORY[0x1E69E9820];
  v19 = -1073741824;
  v20 = 0;
  v21 = __73__AKAuthorizationController_continueAuthorizationWithContext_completion___block_invoke;
  v22 = &unk_1E73D98E0;
  v24 = v39;
  v23[1] = v26;
  v23[0] = MEMORY[0x1E69E5928](v43);
  v25 = MEMORY[0x193B165F0](&v18);
  daemonConnection = v45->_daemonConnection;
  v11 = MEMORY[0x1E69E9820];
  v12 = -1073741824;
  v13 = 0;
  v14 = __73__AKAuthorizationController_continueAuthorizationWithContext_completion___block_invoke_8;
  v15 = &unk_1E73D3510;
  v16 = MEMORY[0x1E69E5928](v25);
  v17 = [(AKAuthorizationDaemonConnection *)daemonConnection remoteObjectProxyWithErrorHandler:&v11];
  [v17 continueAuthorizationWithContext:location[0] completion:v25];
  objc_storeStrong(&v17, 0);
  objc_storeStrong(&v16, 0);
  objc_storeStrong(&v25, 0);
  objc_storeStrong(v23, 0);
  _Block_object_dispose(v26, 8);
  objc_storeStrong(&v31, 0);
  os_activity_scope_leave(&state);
  objc_storeStrong(&v42, 0);
  objc_storeStrong(&v43, 0);
  objc_storeStrong(location, 0);
  *MEMORY[0x1E69E9840];
}

void __73__AKAuthorizationController_continueAuthorizationWithContext_completion___block_invoke(void *a1, void *a2, void *a3)
{
  v21 = *MEMORY[0x1E69E9840];
  location[1] = a1;
  location[0] = 0;
  objc_storeStrong(location, a2);
  v15 = 0;
  objc_storeStrong(&v15, a3);
  v14 = a1;
  v13 = _AKSignpostGetNanoseconds(a1[6], a1[7]) / 1000000000.0;
  v12 = _AKSignpostLogSystem();
  v11 = OS_SIGNPOST_INTERVAL_END;
  v10 = a1[6];
  if (v10 && v10 != -1 && os_signpost_enabled(v12))
  {
    __os_log_helper_16_0_1_4_2(v20, [v15 code]);
    _os_signpost_emit_with_name_impl(&dword_193225000, v12, v11, v10, "AuthorizationExternalAuthContinue", " Error=%{public,signpost.telemetry:number2,name=Error}d ", v20, 8u);
  }

  objc_storeStrong(&v12, 0);
  v9 = _AKSignpostLogSystem();
  v8 = OS_LOG_TYPE_DEFAULT;
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
  {
    __os_log_helper_16_0_3_8_0_8_0_4_2(v19, a1[6], *&v13, [v15 code]);
    _os_log_impl(&dword_193225000, v9, v8, "END [%lld] %fs:AuthorizationExternalAuthContinue  Error=%{public,signpost.telemetry:number2,name=Error}d ", v19, 0x1Cu);
  }

  objc_storeStrong(&v9, 0);
  if (location[0])
  {
    v7 = _AKLogSiwa();
    v6 = OS_LOG_TYPE_DEFAULT;
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      __os_log_helper_16_2_1_8_64(v18, location[0]);
      _os_log_impl(&dword_193225000, v7, v6, "Continue Authorization completed with authorization: %@", v18, 0xCu);
    }

    objc_storeStrong(&v7, 0);
  }

  else
  {
    oslog = _AKLogSiwa();
    if (os_log_type_enabled(oslog, OS_LOG_TYPE_ERROR))
    {
      __os_log_helper_16_2_1_8_64(v17, v15);
      _os_log_error_impl(&dword_193225000, oslog, OS_LOG_TYPE_ERROR, "Continue Authorization failed: %@", v17, 0xCu);
    }

    objc_storeStrong(&oslog, 0);
  }

  objc_storeStrong((*(a1[5] + 8) + 40), 0);
  (*(a1[4] + 16))();
  objc_storeStrong(&v15, 0);
  objc_storeStrong(location, 0);
  *MEMORY[0x1E69E9840];
}

void __73__AKAuthorizationController_continueAuthorizationWithContext_completion___block_invoke_8(void *a1, void *a2)
{
  location[1] = a1;
  location[0] = 0;
  objc_storeStrong(location, a2);
  (*(a1[4] + 16))();
  objc_storeStrong(location, 0);
}

- (void)cancelAuthorizationWithContext:(id)a3 completion:(id)a4
{
  v47 = *MEMORY[0x1E69E9840];
  v45 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  v43 = 0;
  objc_storeStrong(&v43, a4);
  v41 = _os_activity_create(&dword_193225000, "authkit/cancel-authorize", MEMORY[0x1E69E9C00], OS_ACTIVITY_FLAG_DEFAULT);
  v42 = v41;
  state.opaque[0] = 0;
  state.opaque[1] = 0;
  os_activity_scope_enter(v41, &state);
  v39 = 0uLL;
  v9 = _AKSignpostLogSystem();
  *&v38 = _AKSignpostCreate(v9);
  *(&v38 + 1) = v4;
  MEMORY[0x1E69E5920](v9);
  v37 = _AKSignpostLogSystem();
  v36 = 1;
  v35 = v38;
  if (v38 && v35 != -1 && os_signpost_enabled(v37))
  {
    log = v37;
    type = v36;
    spid = v35;
    __os_log_helper_16_0_0(v34);
    _os_signpost_emit_with_name_impl(&dword_193225000, log, type, spid, "AuthorizationExternalAuthCancel", " enableTelemetry=YES ", v34, 2u);
  }

  objc_storeStrong(&v37, 0);
  v33 = _AKSignpostLogSystem();
  v32 = OS_LOG_TYPE_DEFAULT;
  if (os_log_type_enabled(v33, OS_LOG_TYPE_DEFAULT))
  {
    __os_log_helper_16_0_1_8_0(v46, v38);
    _os_log_impl(&dword_193225000, v33, v32, "BEGIN [%lld]: AuthorizationExternalAuthCancel  enableTelemetry=YES ", v46, 0xCu);
  }

  objc_storeStrong(&v33, 0);
  v39 = v38;
  v26[0] = 0;
  v26[1] = v26;
  v27 = 838860800;
  v28 = 48;
  v29 = __Block_byref_object_copy__17;
  v30 = __Block_byref_object_dispose__17;
  v31 = MEMORY[0x1E69E5928](v45);
  v18 = MEMORY[0x1E69E9820];
  v19 = -1073741824;
  v20 = 0;
  v21 = __71__AKAuthorizationController_cancelAuthorizationWithContext_completion___block_invoke;
  v22 = &unk_1E73D6D20;
  v24 = v39;
  v23[1] = v26;
  v23[0] = MEMORY[0x1E69E5928](v43);
  v25 = MEMORY[0x193B165F0](&v18);
  daemonConnection = v45->_daemonConnection;
  v11 = MEMORY[0x1E69E9820];
  v12 = -1073741824;
  v13 = 0;
  v14 = __71__AKAuthorizationController_cancelAuthorizationWithContext_completion___block_invoke_9;
  v15 = &unk_1E73D3510;
  v16 = MEMORY[0x1E69E5928](v25);
  v17 = [(AKAuthorizationDaemonConnection *)daemonConnection remoteObjectProxyWithErrorHandler:&v11];
  [v17 cancelAuthorizationWithContext:location[0] completion:v25];
  objc_storeStrong(&v17, 0);
  objc_storeStrong(&v16, 0);
  objc_storeStrong(&v25, 0);
  objc_storeStrong(v23, 0);
  _Block_object_dispose(v26, 8);
  objc_storeStrong(&v31, 0);
  os_activity_scope_leave(&state);
  objc_storeStrong(&v42, 0);
  objc_storeStrong(&v43, 0);
  objc_storeStrong(location, 0);
  *MEMORY[0x1E69E9840];
}

void __71__AKAuthorizationController_cancelAuthorizationWithContext_completion___block_invoke(void *a1, void *a2)
{
  v21 = *MEMORY[0x1E69E9840];
  location[1] = a1;
  location[0] = 0;
  objc_storeStrong(location, a2);
  v16 = a1;
  v15 = _AKSignpostGetNanoseconds(a1[6], a1[7]) / 1000000000.0;
  v14 = _AKSignpostLogSystem();
  v13 = OS_SIGNPOST_INTERVAL_END;
  v12 = a1[6];
  if (v12 && v12 != -1 && os_signpost_enabled(v14))
  {
    __os_log_helper_16_0_1_4_2(v20, [location[0] code]);
    _os_signpost_emit_with_name_impl(&dword_193225000, v14, v13, v12, "AuthorizationExternalAuthCancel", " Error=%{public,signpost.telemetry:number2,name=Error}d ", v20, 8u);
  }

  objc_storeStrong(&v14, 0);
  v11 = _AKSignpostLogSystem();
  v10 = OS_LOG_TYPE_DEFAULT;
  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
  {
    __os_log_helper_16_0_3_8_0_8_0_4_2(v19, a1[6], *&v15, [location[0] code]);
    _os_log_impl(&dword_193225000, v11, v10, "END [%lld] %fs:AuthorizationExternalAuthCancel  Error=%{public,signpost.telemetry:number2,name=Error}d ", v19, 0x1Cu);
  }

  objc_storeStrong(&v11, 0);
  if (location[0])
  {
    v9 = _AKLogSiwa();
    v8 = OS_LOG_TYPE_ERROR;
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      __os_log_helper_16_2_1_8_64(v18, location[0]);
      _os_log_error_impl(&dword_193225000, v9, v8, "Cancel Authorization failed: %@", v18, 0xCu);
    }

    objc_storeStrong(&v9, 0);
  }

  else
  {
    oslog = _AKLogSiwa();
    v6 = OS_LOG_TYPE_DEFAULT;
    if (os_log_type_enabled(oslog, OS_LOG_TYPE_DEFAULT))
    {
      v2 = oslog;
      v3 = v6;
      __os_log_helper_16_0_0(v5);
      _os_log_impl(&dword_193225000, v2, v3, "Cancel Authorization completed successfully", v5, 2u);
    }

    objc_storeStrong(&oslog, 0);
  }

  objc_storeStrong((*(a1[5] + 8) + 40), 0);
  (*(a1[4] + 16))();
  objc_storeStrong(location, 0);
  *MEMORY[0x1E69E9840];
}

void __71__AKAuthorizationController_cancelAuthorizationWithContext_completion___block_invoke_9(void *a1, void *a2)
{
  location[1] = a1;
  location[0] = 0;
  objc_storeStrong(location, a2);
  (*(a1[4] + 16))();
  objc_storeStrong(location, 0);
}

- (void)revokeAuthorizationWithContext:(id)a3 completion:(id)a4
{
  v31 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  v29 = 0;
  objc_storeStrong(&v29, a4);
  v27 = _os_activity_create(&dword_193225000, "authkit/revokeUpgrade", MEMORY[0x1E69E9C00], OS_ACTIVITY_FLAG_DEFAULT);
  v28 = v27;
  state.opaque[0] = 0;
  state.opaque[1] = 0;
  os_activity_scope_enter(v27, &state);
  v20[0] = 0;
  v20[1] = v20;
  v21 = 838860800;
  v22 = 48;
  v23 = __Block_byref_object_copy__17;
  v24 = __Block_byref_object_dispose__17;
  v25 = MEMORY[0x1E69E5928](v31);
  v13 = MEMORY[0x1E69E9820];
  v14 = -1073741824;
  v15 = 0;
  v16 = __71__AKAuthorizationController_revokeAuthorizationWithContext_completion___block_invoke;
  v17 = &unk_1E73D3B10;
  v18[1] = v20;
  v18[0] = MEMORY[0x1E69E5928](v29);
  v19 = MEMORY[0x193B165F0](&v13);
  daemonConnection = v31->_daemonConnection;
  v6 = MEMORY[0x1E69E9820];
  v7 = -1073741824;
  v8 = 0;
  v9 = __71__AKAuthorizationController_revokeAuthorizationWithContext_completion___block_invoke_11;
  v10 = &unk_1E73D3510;
  v11 = MEMORY[0x1E69E5928](v19);
  v12 = [(AKAuthorizationDaemonConnection *)daemonConnection remoteObjectProxyWithErrorHandler:&v6];
  [v12 revokeUpgradeWithContext:location[0] completion:v19];
  objc_storeStrong(&v12, 0);
  objc_storeStrong(&v11, 0);
  objc_storeStrong(&v19, 0);
  objc_storeStrong(v18, 0);
  _Block_object_dispose(v20, 8);
  objc_storeStrong(&v25, 0);
  os_activity_scope_leave(&state);
  objc_storeStrong(&v28, 0);
  objc_storeStrong(&v29, 0);
  objc_storeStrong(location, 0);
}

void __71__AKAuthorizationController_revokeAuthorizationWithContext_completion___block_invoke(void *a1, char a2, id obj)
{
  v14 = *MEMORY[0x1E69E9840];
  v12 = a1;
  v11 = a2;
  location = 0;
  objc_storeStrong(&location, obj);
  v9[1] = a1;
  if (v11)
  {
    v9[0] = _AKLogSiwa();
    v8 = OS_LOG_TYPE_DEFAULT;
    if (os_log_type_enabled(v9[0], OS_LOG_TYPE_DEFAULT))
    {
      log = v9[0];
      type = v8;
      __os_log_helper_16_0_0(v7);
      _os_log_impl(&dword_193225000, log, type, "Revoke completed successfully", v7, 2u);
    }

    objc_storeStrong(v9, 0);
  }

  else
  {
    oslog = _AKLogSiwa();
    if (os_log_type_enabled(oslog, OS_LOG_TYPE_ERROR))
    {
      __os_log_helper_16_2_1_8_64(v13, location);
      _os_log_error_impl(&dword_193225000, oslog, OS_LOG_TYPE_ERROR, "Revoke failed: %@", v13, 0xCu);
    }

    objc_storeStrong(&oslog, 0);
  }

  objc_storeStrong((*(a1[5] + 8) + 40), 0);
  (*(a1[4] + 16))();
  objc_storeStrong(&location, 0);
  *MEMORY[0x1E69E9840];
}

void __71__AKAuthorizationController_revokeAuthorizationWithContext_completion___block_invoke_11(void *a1, void *a2)
{
  location[1] = a1;
  location[0] = 0;
  objc_storeStrong(location, a2);
  (*(a1[4] + 16))();
  objc_storeStrong(location, 0);
}

- (void)getCredentialStateForRequest:(id)a3 completion:(id)a4
{
  v31 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  v29 = 0;
  objc_storeStrong(&v29, a4);
  v27 = _os_activity_create(&dword_193225000, "authkit/credentialState", MEMORY[0x1E69E9C00], OS_ACTIVITY_FLAG_DEFAULT);
  v28 = v27;
  state.opaque[0] = 0;
  state.opaque[1] = 0;
  os_activity_scope_enter(v27, &state);
  v20[0] = 0;
  v20[1] = v20;
  v21 = 838860800;
  v22 = 48;
  v23 = __Block_byref_object_copy__17;
  v24 = __Block_byref_object_dispose__17;
  v25 = MEMORY[0x1E69E5928](v31);
  v13 = MEMORY[0x1E69E9820];
  v14 = -1073741824;
  v15 = 0;
  v16 = __69__AKAuthorizationController_getCredentialStateForRequest_completion___block_invoke;
  v17 = &unk_1E73D9908;
  v18[1] = v20;
  v18[0] = MEMORY[0x1E69E5928](v29);
  v19 = MEMORY[0x193B165F0](&v13);
  daemonConnection = v31->_daemonConnection;
  v6 = MEMORY[0x1E69E9820];
  v7 = -1073741824;
  v8 = 0;
  v9 = __69__AKAuthorizationController_getCredentialStateForRequest_completion___block_invoke_14;
  v10 = &unk_1E73D3510;
  v11 = MEMORY[0x1E69E5928](v19);
  v12 = [(AKAuthorizationDaemonConnection *)daemonConnection remoteObjectProxyWithErrorHandler:&v6];
  [v12 getCredentialStateForRequest:location[0] completion:v19];
  objc_storeStrong(&v12, 0);
  objc_storeStrong(&v11, 0);
  objc_storeStrong(&v19, 0);
  objc_storeStrong(v18, 0);
  _Block_object_dispose(v20, 8);
  objc_storeStrong(&v25, 0);
  os_activity_scope_leave(&state);
  objc_storeStrong(&v28, 0);
  objc_storeStrong(&v29, 0);
  objc_storeStrong(location, 0);
}

void __69__AKAuthorizationController_getCredentialStateForRequest_completion___block_invoke(void *a1, uint64_t a2, id obj)
{
  v13 = *MEMORY[0x1E69E9840];
  v10 = a1;
  v9 = a2;
  location = 0;
  objc_storeStrong(&location, obj);
  v7[1] = a1;
  if (location)
  {
    v7[0] = _AKLogSiwa();
    v6 = OS_LOG_TYPE_ERROR;
    if (os_log_type_enabled(v7[0], OS_LOG_TYPE_ERROR))
    {
      __os_log_helper_16_2_1_8_64(v12, location);
      _os_log_error_impl(&dword_193225000, v7[0], v6, "Credential State request returned with error: %@", v12, 0xCu);
    }

    objc_storeStrong(v7, 0);
  }

  objc_storeStrong((*(a1[5] + 8) + 40), 0);
  oslog = _AKLogSiwa();
  if (os_log_type_enabled(oslog, OS_LOG_TYPE_DEBUG))
  {
    v3 = [MEMORY[0x1E696AD98] numberWithInteger:v9];
    __os_log_helper_16_2_1_8_64(v11, v3);
    _os_log_debug_impl(&dword_193225000, oslog, OS_LOG_TYPE_DEBUG, "Credential State returned with state: %@", v11, 0xCu);
    MEMORY[0x1E69E5920](v3);
  }

  objc_storeStrong(&oslog, 0);
  (*(a1[4] + 16))();
  objc_storeStrong(&location, 0);
  *MEMORY[0x1E69E9840];
}

void __69__AKAuthorizationController_getCredentialStateForRequest_completion___block_invoke_14(void *a1, void *a2)
{
  location[1] = a1;
  location[0] = 0;
  objc_storeStrong(location, a2);
  (*(a1[4] + 16))();
  objc_storeStrong(location, 0);
}

- (void)getCredentialStateForClientID:(id)a3 completion:(id)a4
{
  v31 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  v29 = 0;
  objc_storeStrong(&v29, a4);
  v27 = _os_activity_create(&dword_193225000, "authkit/credentialStateForClientID", MEMORY[0x1E69E9C00], OS_ACTIVITY_FLAG_DEFAULT);
  v28 = v27;
  state.opaque[0] = 0;
  state.opaque[1] = 0;
  os_activity_scope_enter(v27, &state);
  v20[0] = 0;
  v20[1] = v20;
  v21 = 838860800;
  v22 = 48;
  v23 = __Block_byref_object_copy__17;
  v24 = __Block_byref_object_dispose__17;
  v25 = MEMORY[0x1E69E5928](v31);
  v13 = MEMORY[0x1E69E9820];
  v14 = -1073741824;
  v15 = 0;
  v16 = __70__AKAuthorizationController_getCredentialStateForClientID_completion___block_invoke;
  v17 = &unk_1E73D9908;
  v18[1] = v20;
  v18[0] = MEMORY[0x1E69E5928](v29);
  v19 = MEMORY[0x193B165F0](&v13);
  daemonConnection = v31->_daemonConnection;
  v6 = MEMORY[0x1E69E9820];
  v7 = -1073741824;
  v8 = 0;
  v9 = __70__AKAuthorizationController_getCredentialStateForClientID_completion___block_invoke_15;
  v10 = &unk_1E73D3510;
  v11 = MEMORY[0x1E69E5928](v19);
  v12 = [(AKAuthorizationDaemonConnection *)daemonConnection remoteObjectProxyWithErrorHandler:&v6];
  [v12 getCredentialStateForClientID:location[0] completion:v19];
  objc_storeStrong(&v12, 0);
  objc_storeStrong(&v11, 0);
  objc_storeStrong(&v19, 0);
  objc_storeStrong(v18, 0);
  _Block_object_dispose(v20, 8);
  objc_storeStrong(&v25, 0);
  os_activity_scope_leave(&state);
  objc_storeStrong(&v28, 0);
  objc_storeStrong(&v29, 0);
  objc_storeStrong(location, 0);
}

void __70__AKAuthorizationController_getCredentialStateForClientID_completion___block_invoke(void *a1, uint64_t a2, id obj)
{
  v13 = *MEMORY[0x1E69E9840];
  v10 = a1;
  v9 = a2;
  location = 0;
  objc_storeStrong(&location, obj);
  v7[1] = a1;
  if (location)
  {
    v7[0] = _AKLogSiwa();
    v6 = OS_LOG_TYPE_ERROR;
    if (os_log_type_enabled(v7[0], OS_LOG_TYPE_ERROR))
    {
      __os_log_helper_16_2_1_8_64(v12, location);
      _os_log_error_impl(&dword_193225000, v7[0], v6, "Credential State request returned with error: %@", v12, 0xCu);
    }

    objc_storeStrong(v7, 0);
  }

  objc_storeStrong((*(a1[5] + 8) + 40), 0);
  oslog = _AKLogSiwa();
  if (os_log_type_enabled(oslog, OS_LOG_TYPE_DEBUG))
  {
    v3 = [MEMORY[0x1E696AD98] numberWithInteger:v9];
    __os_log_helper_16_2_1_8_64(v11, v3);
    _os_log_debug_impl(&dword_193225000, oslog, OS_LOG_TYPE_DEBUG, "Credential State returned with state: %@", v11, 0xCu);
    MEMORY[0x1E69E5920](v3);
  }

  objc_storeStrong(&oslog, 0);
  (*(a1[4] + 16))();
  objc_storeStrong(&location, 0);
  *MEMORY[0x1E69E9840];
}

void __70__AKAuthorizationController_getCredentialStateForClientID_completion___block_invoke_15(void *a1, void *a2)
{
  location[1] = a1;
  location[0] = 0;
  objc_storeStrong(location, a2);
  (*(a1[4] + 16))();
  objc_storeStrong(location, 0);
}

- (void)getPresentationContextForRequestContext:(id)a3 completion:(id)a4
{
  v31 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  v29 = 0;
  objc_storeStrong(&v29, a4);
  v27 = _os_activity_create(&dword_193225000, "authkit/presentationContext", MEMORY[0x1E69E9C00], OS_ACTIVITY_FLAG_DEFAULT);
  v28 = v27;
  state.opaque[0] = 0;
  state.opaque[1] = 0;
  os_activity_scope_enter(v27, &state);
  v20[0] = 0;
  v20[1] = v20;
  v21 = 838860800;
  v22 = 48;
  v23 = __Block_byref_object_copy__17;
  v24 = __Block_byref_object_dispose__17;
  v25 = MEMORY[0x1E69E5928](v31);
  v13 = MEMORY[0x1E69E9820];
  v14 = -1073741824;
  v15 = 0;
  v16 = __80__AKAuthorizationController_getPresentationContextForRequestContext_completion___block_invoke;
  v17 = &unk_1E73D9930;
  v18[0] = MEMORY[0x1E69E5928](v29);
  v18[1] = v20;
  v19 = MEMORY[0x193B165F0](&v13);
  daemonConnection = v31->_daemonConnection;
  v6 = MEMORY[0x1E69E9820];
  v7 = -1073741824;
  v8 = 0;
  v9 = __80__AKAuthorizationController_getPresentationContextForRequestContext_completion___block_invoke_17;
  v10 = &unk_1E73D3510;
  v11 = MEMORY[0x1E69E5928](v19);
  v12 = [(AKAuthorizationDaemonConnection *)daemonConnection remoteObjectProxyWithErrorHandler:&v6];
  [v12 getPresentationContextForRequestContext:location[0] completion:v19];
  objc_storeStrong(&v12, 0);
  objc_storeStrong(&v11, 0);
  objc_storeStrong(&v19, 0);
  objc_storeStrong(v18, 0);
  _Block_object_dispose(v20, 8);
  objc_storeStrong(&v25, 0);
  os_activity_scope_leave(&state);
  objc_storeStrong(&v28, 0);
  objc_storeStrong(&v29, 0);
  objc_storeStrong(location, 0);
}

void __80__AKAuthorizationController_getPresentationContextForRequestContext_completion___block_invoke(void *a1, void *a2, void *a3)
{
  v12 = *MEMORY[0x1E69E9840];
  location[1] = a1;
  location[0] = 0;
  objc_storeStrong(location, a2);
  v8 = 0;
  objc_storeStrong(&v8, a3);
  v7[1] = a1;
  if (location[0])
  {
    v7[0] = _AKLogSiwa();
    v6 = OS_LOG_TYPE_DEFAULT;
    if (os_log_type_enabled(v7[0], OS_LOG_TYPE_DEFAULT))
    {
      __os_log_helper_16_2_1_8_64(v11, location[0]);
      _os_log_impl(&dword_193225000, v7[0], v6, "getPresentationContext completed with presentation context: %@", v11, 0xCu);
    }

    objc_storeStrong(v7, 0);
  }

  else
  {
    oslog = _AKLogSiwa();
    if (os_log_type_enabled(oslog, OS_LOG_TYPE_ERROR))
    {
      __os_log_helper_16_2_1_8_64(v10, v8);
      _os_log_error_impl(&dword_193225000, oslog, OS_LOG_TYPE_ERROR, "Authorization failed: %@", v10, 0xCu);
    }

    objc_storeStrong(&oslog, 0);
  }

  (*(a1[4] + 16))();
  objc_storeStrong((*(a1[5] + 8) + 40), 0);
  objc_storeStrong(&v8, 0);
  objc_storeStrong(location, 0);
  *MEMORY[0x1E69E9840];
}

void __80__AKAuthorizationController_getPresentationContextForRequestContext_completion___block_invoke_17(void *a1, void *a2)
{
  location[1] = a1;
  location[0] = 0;
  objc_storeStrong(location, a2);
  (*(a1[4] + 16))();
  objc_storeStrong(location, 0);
}

- (void)performAuthorizationWithContext:(id)a3 withUserProvidedInformation:(id)a4 completion:(id)a5
{
  v44 = *MEMORY[0x1E69E9840];
  v42 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  v40 = 0;
  objc_storeStrong(&v40, a4);
  v39 = 0;
  objc_storeStrong(&v39, a5);
  v37 = _os_activity_create(&dword_193225000, "authkit/performRequestWithSelection", MEMORY[0x1E69E9C00], OS_ACTIVITY_FLAG_DEFAULT);
  v38 = v37;
  state.opaque[0] = 0;
  state.opaque[1] = 0;
  os_activity_scope_enter(v37, &state);
  if ([(AKAuthorizationController *)v42 _shouldOverrideProxiedBundleIDForContext:location[0]])
  {
    v10 = [MEMORY[0x1E696AAE8] mainBundle];
    v35 = [v10 bundleIdentifier];
    MEMORY[0x1E69E5920](v10);
    [location[0] set_proxiedClientBundleID:v35];
    objc_storeStrong(&v35, 0);
  }

  v9 = [location[0] authorizationRequest];
  v8 = [location[0] requestIdentifier];
  [v9 setRequestIdentifier:?];
  MEMORY[0x1E69E5920](v8);
  MEMORY[0x1E69E5920](v9);
  v7 = [location[0] passwordRequest];
  v6 = [location[0] requestIdentifier];
  [v7 setRequestIdentifier:?];
  MEMORY[0x1E69E5920](v6);
  MEMORY[0x1E69E5920](v7);
  v29[0] = 0;
  v29[1] = v29;
  v30 = 838860800;
  v31 = 48;
  v32 = __Block_byref_object_copy__17;
  v33 = __Block_byref_object_dispose__17;
  v34 = MEMORY[0x1E69E5928](v42);
  v21 = MEMORY[0x1E69E9820];
  v22 = -1073741824;
  v23 = 0;
  v24 = __100__AKAuthorizationController_performAuthorizationWithContext_withUserProvidedInformation_completion___block_invoke;
  v25 = &unk_1E73D9958;
  v26 = MEMORY[0x1E69E5928](v42);
  v27[0] = MEMORY[0x1E69E5928](v39);
  v27[1] = v29;
  v28 = MEMORY[0x193B165F0](&v21);
  daemonConnection = v42->_daemonConnection;
  v14 = MEMORY[0x1E69E9820];
  v15 = -1073741824;
  v16 = 0;
  v17 = __100__AKAuthorizationController_performAuthorizationWithContext_withUserProvidedInformation_completion___block_invoke_19;
  v18 = &unk_1E73D3510;
  v19 = MEMORY[0x1E69E5928](v28);
  v20 = [(AKAuthorizationDaemonConnection *)daemonConnection remoteObjectProxyWithErrorHandler:&v14];
  oslog = _AKLogSiwa();
  if (os_log_type_enabled(oslog, OS_LOG_TYPE_DEFAULT))
  {
    __os_log_helper_16_2_1_8_64(v43, location[0]);
    _os_log_impl(&dword_193225000, oslog, OS_LOG_TYPE_DEFAULT, "Attempting proxy auth with context: %@", v43, 0xCu);
  }

  objc_storeStrong(&oslog, 0);
  [v20 performAuthorizationWithContext:location[0] withUserProvidedInformation:v40 completion:v28];
  objc_storeStrong(&v20, 0);
  objc_storeStrong(&v19, 0);
  objc_storeStrong(&v28, 0);
  objc_storeStrong(v27, 0);
  objc_storeStrong(&v26, 0);
  _Block_object_dispose(v29, 8);
  objc_storeStrong(&v34, 0);
  os_activity_scope_leave(&state);
  objc_storeStrong(&v38, 0);
  objc_storeStrong(&v39, 0);
  objc_storeStrong(&v40, 0);
  objc_storeStrong(location, 0);
  *MEMORY[0x1E69E9840];
}

void __100__AKAuthorizationController_performAuthorizationWithContext_withUserProvidedInformation_completion___block_invoke(uint64_t *a1, void *a2, void *a3)
{
  v12 = *MEMORY[0x1E69E9840];
  location[1] = a1;
  location[0] = 0;
  objc_storeStrong(location, a2);
  v8 = 0;
  objc_storeStrong(&v8, a3);
  v7[1] = a1;
  if (location[0])
  {
    v7[0] = _AKLogSiwa();
    v6 = OS_LOG_TYPE_DEFAULT;
    if (os_log_type_enabled(v7[0], OS_LOG_TYPE_DEFAULT))
    {
      __os_log_helper_16_2_1_8_64(v11, location[0]);
      _os_log_impl(&dword_193225000, v7[0], v6, "performAuthorizationWithContext completed with presentation context: %@", v11, 0xCu);
    }

    objc_storeStrong(v7, 0);
  }

  else
  {
    oslog = _AKLogSiwa();
    if (os_log_type_enabled(oslog, OS_LOG_TYPE_ERROR))
    {
      __os_log_helper_16_2_2_8_64_8_64(v10, a1[4], v8);
      _os_log_error_impl(&dword_193225000, oslog, OS_LOG_TYPE_ERROR, "%@: Authorization failed: %@", v10, 0x16u);
    }

    objc_storeStrong(&oslog, 0);
  }

  (*(a1[5] + 16))();
  objc_storeStrong((*(a1[6] + 8) + 40), 0);
  objc_storeStrong(&v8, 0);
  objc_storeStrong(location, 0);
  *MEMORY[0x1E69E9840];
}

void __100__AKAuthorizationController_performAuthorizationWithContext_withUserProvidedInformation_completion___block_invoke_19(void *a1, void *a2)
{
  location[1] = a1;
  location[0] = 0;
  objc_storeStrong(location, a2);
  (*(a1[4] + 16))();
  objc_storeStrong(location, 0);
}

- (id)_nativeTakeoverURLs
{
  v25 = *MEMORY[0x1E69E9840];
  v23 = self;
  location[1] = a2;
  location[0] = _AKLogNto();
  v21 = OS_LOG_TYPE_DEFAULT;
  if (os_log_type_enabled(location[0], OS_LOG_TYPE_DEFAULT))
  {
    log = location[0];
    type = v21;
    __os_log_helper_16_0_0(v20);
    _os_log_impl(&dword_193225000, log, type, "Fetching native takeover URLs", v20, 2u);
  }

  objc_storeStrong(location, 0);
  v13 = 0;
  v14 = &v13;
  v15 = 838860800;
  v16 = 48;
  v17 = __Block_byref_object_copy__17;
  v18 = __Block_byref_object_dispose__17;
  v19 = 0;
  v12 = [(AKAuthorizationDaemonConnection *)v23->_daemonConnection synchronousRemoteObjectProxyWithErrorHandler:&__block_literal_global_59];
  oslog[1] = MEMORY[0x1E69E9820];
  v7 = -1073741824;
  v8 = 0;
  v9 = __48__AKAuthorizationController__nativeTakeoverURLs__block_invoke_20;
  v10 = &unk_1E73D9980;
  v11 = &v13;
  [v12 fetchNativeTakeoverURLSetWithCompletion:?];
  oslog[0] = _AKLogNto();
  if (os_log_type_enabled(oslog[0], OS_LOG_TYPE_DEBUG))
  {
    __os_log_helper_16_2_1_8_64(v24, v14[5]);
    _os_log_debug_impl(&dword_193225000, oslog[0], OS_LOG_TYPE_DEBUG, "Native takeover URLs: %@", v24, 0xCu);
  }

  objc_storeStrong(oslog, 0);
  v3 = MEMORY[0x1E69E5928](v14[5]);
  objc_storeStrong(&v12, 0);
  _Block_object_dispose(&v13, 8);
  objc_storeStrong(&v19, 0);
  *MEMORY[0x1E69E9840];

  return v3;
}

void __48__AKAuthorizationController__nativeTakeoverURLs__block_invoke(NSObject *a1, void *a2)
{
  v6 = *MEMORY[0x1E69E9840];
  location[1] = a1;
  location[0] = 0;
  objc_storeStrong(location, a2);
  oslog[1] = a1;
  oslog[0] = _AKLogNto();
  if (os_log_type_enabled(oslog[0], OS_LOG_TYPE_ERROR))
  {
    __os_log_helper_16_2_1_8_64(v5, location[0]);
    _os_log_error_impl(&dword_193225000, oslog[0], OS_LOG_TYPE_ERROR, "Failed to fetch authorized URLs with XPC error: %@", v5, 0xCu);
  }

  objc_storeStrong(oslog, 0);
  objc_storeStrong(location, 0);
  *MEMORY[0x1E69E9840];
}

void __48__AKAuthorizationController__nativeTakeoverURLs__block_invoke_20(void *a1, void *a2, void *a3)
{
  v14 = *MEMORY[0x1E69E9840];
  location[1] = a1;
  location[0] = 0;
  objc_storeStrong(location, a2);
  v11 = 0;
  objc_storeStrong(&v11, a3);
  v10[1] = a1;
  if (location[0])
  {
    v10[0] = _AKLogNto();
    v9 = OS_LOG_TYPE_DEFAULT;
    if (os_log_type_enabled(v10[0], OS_LOG_TYPE_DEFAULT))
    {
      log = v10[0];
      type = v9;
      __os_log_helper_16_0_0(v8);
      _os_log_impl(&dword_193225000, log, type, "Native takeover URLs fetched", v8, 2u);
    }

    objc_storeStrong(v10, 0);
    objc_storeStrong((*(a1[4] + 8) + 40), location[0]);
  }

  else
  {
    oslog = _AKLogNto();
    if (os_log_type_enabled(oslog, OS_LOG_TYPE_ERROR))
    {
      __os_log_helper_16_2_1_8_64(v13, v11);
      _os_log_error_impl(&dword_193225000, oslog, OS_LOG_TYPE_ERROR, "Failed to fetch authorized URLs with error: %@", v13, 0xCu);
    }

    objc_storeStrong(&oslog, 0);
  }

  objc_storeStrong(&v11, 0);
  objc_storeStrong(location, 0);
  *MEMORY[0x1E69E9840];
}

- (void)_nativeTakeoverEndpointsWithCompletionHandler:(id)a3
{
  v24 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  v22 = _AKLogNto();
  v21 = OS_LOG_TYPE_DEFAULT;
  if (os_log_type_enabled(v22, OS_LOG_TYPE_DEFAULT))
  {
    log = v22;
    type = v21;
    __os_log_helper_16_0_0(v20);
    _os_log_impl(&dword_193225000, log, type, "Fetching native takeover URLs", v20, 2u);
  }

  objc_storeStrong(&v22, 0);
  daemonConnection = v24->_daemonConnection;
  v13 = MEMORY[0x1E69E9820];
  v14 = -1073741824;
  v15 = 0;
  v16 = __75__AKAuthorizationController__nativeTakeoverEndpointsWithCompletionHandler___block_invoke;
  v17 = &unk_1E73D3510;
  v18 = MEMORY[0x1E69E5928](location[0]);
  v19 = [(AKAuthorizationDaemonConnection *)daemonConnection remoteObjectProxyWithErrorHandler:&v13];
  v4 = v19;
  v7 = MEMORY[0x1E69E9820];
  v8 = -1073741824;
  v9 = 0;
  v10 = __75__AKAuthorizationController__nativeTakeoverEndpointsWithCompletionHandler___block_invoke_22;
  v11 = &unk_1E73D99A8;
  v12 = MEMORY[0x1E69E5928](location[0]);
  [v4 fetchNativeTakeoverURLSetWithCompletion:&v7];
  objc_storeStrong(&v12, 0);
  objc_storeStrong(&v19, 0);
  objc_storeStrong(&v18, 0);
  objc_storeStrong(location, 0);
}

void __75__AKAuthorizationController__nativeTakeoverEndpointsWithCompletionHandler___block_invoke(NSObject *a1, void *a2)
{
  v6 = *MEMORY[0x1E69E9840];
  location[1] = a1;
  location[0] = 0;
  objc_storeStrong(location, a2);
  oslog[1] = a1;
  oslog[0] = _AKLogNto();
  if (os_log_type_enabled(oslog[0], OS_LOG_TYPE_ERROR))
  {
    __os_log_helper_16_2_1_8_64(v5, location[0]);
    _os_log_error_impl(&dword_193225000, oslog[0], OS_LOG_TYPE_ERROR, "Failed to fetch authorized URLs with XPC error: %@", v5, 0xCu);
  }

  objc_storeStrong(oslog, 0);
  if (a1[4].isa)
  {
    (*(a1[4].isa + 2))();
  }

  objc_storeStrong(location, 0);
  *MEMORY[0x1E69E9840];
}

void __75__AKAuthorizationController__nativeTakeoverEndpointsWithCompletionHandler___block_invoke_22(void *a1, void *a2, void *a3)
{
  v12 = *MEMORY[0x1E69E9840];
  location[1] = a1;
  location[0] = 0;
  objc_storeStrong(location, a2);
  v8 = 0;
  objc_storeStrong(&v8, a3);
  v7[1] = a1;
  if (location[0])
  {
    v7[0] = _AKLogNto();
    v6 = OS_LOG_TYPE_DEBUG;
    if (os_log_type_enabled(v7[0], OS_LOG_TYPE_DEBUG))
    {
      __os_log_helper_16_2_1_8_64(v11, location[0]);
      _os_log_debug_impl(&dword_193225000, v7[0], v6, "Native takeover URLs: %@", v11, 0xCu);
    }

    objc_storeStrong(v7, 0);
  }

  else
  {
    oslog = _AKLogNto();
    if (os_log_type_enabled(oslog, OS_LOG_TYPE_ERROR))
    {
      __os_log_helper_16_2_1_8_64(v10, v8);
      _os_log_error_impl(&dword_193225000, oslog, OS_LOG_TYPE_ERROR, "Failed to fetch authorized URLs with error: %@", v10, 0xCu);
    }

    objc_storeStrong(&oslog, 0);
  }

  if (a1[4])
  {
    (*(a1[4] + 16))();
  }

  objc_storeStrong(&v8, 0);
  objc_storeStrong(location, 0);
  *MEMORY[0x1E69E9840];
}

- (id)_appleOwnedDomains
{
  v25 = *MEMORY[0x1E69E9840];
  v23 = self;
  location[1] = a2;
  location[0] = _AKLogNto();
  v21 = OS_LOG_TYPE_DEFAULT;
  if (os_log_type_enabled(location[0], OS_LOG_TYPE_DEFAULT))
  {
    log = location[0];
    type = v21;
    __os_log_helper_16_0_0(v20);
    _os_log_impl(&dword_193225000, log, type, "Fetching apple owned domains...", v20, 2u);
  }

  objc_storeStrong(location, 0);
  v13 = 0;
  v14 = &v13;
  v15 = 838860800;
  v16 = 48;
  v17 = __Block_byref_object_copy__17;
  v18 = __Block_byref_object_dispose__17;
  v19 = 0;
  v12 = [(AKAuthorizationDaemonConnection *)v23->_daemonConnection synchronousRemoteObjectProxyWithErrorHandler:&__block_literal_global_24];
  oslog[1] = MEMORY[0x1E69E9820];
  v7 = -1073741824;
  v8 = 0;
  v9 = __47__AKAuthorizationController__appleOwnedDomains__block_invoke_25;
  v10 = &unk_1E73D9980;
  v11 = &v13;
  [v12 fetchAppleOwnedDomainSetWithCompletion:?];
  oslog[0] = _AKLogNto();
  if (os_log_type_enabled(oslog[0], OS_LOG_TYPE_DEBUG))
  {
    __os_log_helper_16_2_1_8_64(v24, v14[5]);
    _os_log_debug_impl(&dword_193225000, oslog[0], OS_LOG_TYPE_DEBUG, "Apple owned domains: %@", v24, 0xCu);
  }

  objc_storeStrong(oslog, 0);
  v3 = MEMORY[0x1E69E5928](v14[5]);
  objc_storeStrong(&v12, 0);
  _Block_object_dispose(&v13, 8);
  objc_storeStrong(&v19, 0);
  *MEMORY[0x1E69E9840];

  return v3;
}

void __47__AKAuthorizationController__appleOwnedDomains__block_invoke(NSObject *a1, void *a2)
{
  v6 = *MEMORY[0x1E69E9840];
  location[1] = a1;
  location[0] = 0;
  objc_storeStrong(location, a2);
  oslog[1] = a1;
  oslog[0] = _AKLogNto();
  if (os_log_type_enabled(oslog[0], OS_LOG_TYPE_ERROR))
  {
    __os_log_helper_16_2_1_8_64(v5, location[0]);
    _os_log_error_impl(&dword_193225000, oslog[0], OS_LOG_TYPE_ERROR, "Failed to fetch apple owned domains with XPC error: %@", v5, 0xCu);
  }

  objc_storeStrong(oslog, 0);
  objc_storeStrong(location, 0);
  *MEMORY[0x1E69E9840];
}

void __47__AKAuthorizationController__appleOwnedDomains__block_invoke_25(void *a1, void *a2, void *a3)
{
  v14 = *MEMORY[0x1E69E9840];
  location[1] = a1;
  location[0] = 0;
  objc_storeStrong(location, a2);
  v11 = 0;
  objc_storeStrong(&v11, a3);
  v10[1] = a1;
  if (location[0])
  {
    v10[0] = _AKLogNto();
    v9 = OS_LOG_TYPE_DEFAULT;
    if (os_log_type_enabled(v10[0], OS_LOG_TYPE_DEFAULT))
    {
      log = v10[0];
      type = v9;
      __os_log_helper_16_0_0(v8);
      _os_log_impl(&dword_193225000, log, type, "Apple owned domains fetched", v8, 2u);
    }

    objc_storeStrong(v10, 0);
    objc_storeStrong((*(a1[4] + 8) + 40), location[0]);
  }

  else
  {
    oslog = _AKLogNto();
    if (os_log_type_enabled(oslog, OS_LOG_TYPE_ERROR))
    {
      __os_log_helper_16_2_1_8_64(v13, v11);
      _os_log_error_impl(&dword_193225000, oslog, OS_LOG_TYPE_ERROR, "Failed to fetch apple owned domains with error: %@", v13, 0xCu);
    }

    objc_storeStrong(&oslog, 0);
  }

  objc_storeStrong(&v11, 0);
  objc_storeStrong(location, 0);
  *MEMORY[0x1E69E9840];
}

- (id)_allowListDomainsForSharingKey
{
  v25 = *MEMORY[0x1E69E9840];
  v23 = self;
  location[1] = a2;
  location[0] = _AKLogSiwa();
  v21 = OS_LOG_TYPE_DEFAULT;
  if (os_log_type_enabled(location[0], OS_LOG_TYPE_DEFAULT))
  {
    log = location[0];
    type = v21;
    __os_log_helper_16_0_0(v20);
    _os_log_impl(&dword_193225000, log, type, "Fetching allowed sharing key owned domains...", v20, 2u);
  }

  objc_storeStrong(location, 0);
  v13 = 0;
  v14 = &v13;
  v15 = 838860800;
  v16 = 48;
  v17 = __Block_byref_object_copy__17;
  v18 = __Block_byref_object_dispose__17;
  v19 = 0;
  v12 = [(AKAuthorizationDaemonConnection *)v23->_daemonConnection synchronousRemoteObjectProxyWithErrorHandler:&__block_literal_global_27];
  oslog[1] = MEMORY[0x1E69E9820];
  v7 = -1073741824;
  v8 = 0;
  v9 = __59__AKAuthorizationController__allowListDomainsForSharingKey__block_invoke_28;
  v10 = &unk_1E73D9980;
  v11 = &v13;
  [v12 fetchAllowListDomainsForSharingKeyWithCompletion:?];
  oslog[0] = _AKLogSiwa();
  if (os_log_type_enabled(oslog[0], OS_LOG_TYPE_DEBUG))
  {
    __os_log_helper_16_2_1_8_64(v24, v14[5]);
    _os_log_debug_impl(&dword_193225000, oslog[0], OS_LOG_TYPE_DEBUG, "Allowed sharing key owned domains: %@", v24, 0xCu);
  }

  objc_storeStrong(oslog, 0);
  v3 = MEMORY[0x1E69E5928](v14[5]);
  objc_storeStrong(&v12, 0);
  _Block_object_dispose(&v13, 8);
  objc_storeStrong(&v19, 0);
  *MEMORY[0x1E69E9840];

  return v3;
}

void __59__AKAuthorizationController__allowListDomainsForSharingKey__block_invoke(NSObject *a1, void *a2)
{
  v6 = *MEMORY[0x1E69E9840];
  location[1] = a1;
  location[0] = 0;
  objc_storeStrong(location, a2);
  oslog[1] = a1;
  oslog[0] = _AKLogSiwa();
  if (os_log_type_enabled(oslog[0], OS_LOG_TYPE_ERROR))
  {
    __os_log_helper_16_2_1_8_64(v5, location[0]);
    _os_log_error_impl(&dword_193225000, oslog[0], OS_LOG_TYPE_ERROR, "Failed to fetch allowed sharing key owned domains with XPC error: %@", v5, 0xCu);
  }

  objc_storeStrong(oslog, 0);
  objc_storeStrong(location, 0);
  *MEMORY[0x1E69E9840];
}

void __59__AKAuthorizationController__allowListDomainsForSharingKey__block_invoke_28(void *a1, void *a2, void *a3)
{
  v14 = *MEMORY[0x1E69E9840];
  location[1] = a1;
  location[0] = 0;
  objc_storeStrong(location, a2);
  v11 = 0;
  objc_storeStrong(&v11, a3);
  v10[1] = a1;
  if (location[0])
  {
    v10[0] = _AKLogSiwa();
    v9 = OS_LOG_TYPE_DEFAULT;
    if (os_log_type_enabled(v10[0], OS_LOG_TYPE_DEFAULT))
    {
      log = v10[0];
      type = v9;
      __os_log_helper_16_0_0(v8);
      _os_log_impl(&dword_193225000, log, type, "Allowed sharing key owned domains fetched", v8, 2u);
    }

    objc_storeStrong(v10, 0);
    objc_storeStrong((*(a1[4] + 8) + 40), location[0]);
  }

  else
  {
    oslog = _AKLogSiwa();
    if (os_log_type_enabled(oslog, OS_LOG_TYPE_ERROR))
    {
      __os_log_helper_16_2_1_8_64(v13, v11);
      _os_log_error_impl(&dword_193225000, oslog, OS_LOG_TYPE_ERROR, "Failed to fetch allowed sharing key owned domains with error: %@", v13, 0xCu);
    }

    objc_storeStrong(&oslog, 0);
  }

  objc_storeStrong(&v11, 0);
  objc_storeStrong(location, 0);
  *MEMORY[0x1E69E9840];
}

- (void)fetchAppleIDAuthorizeHTMLResponseTemplateWithCompletion:(id)a3
{
  v25 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  v18[0] = 0;
  v18[1] = v18;
  v19 = 838860800;
  v20 = 48;
  v21 = __Block_byref_object_copy__17;
  v22 = __Block_byref_object_dispose__17;
  v23 = MEMORY[0x1E69E5928](v25);
  v11 = MEMORY[0x1E69E9820];
  v12 = -1073741824;
  v13 = 0;
  v14 = __85__AKAuthorizationController_fetchAppleIDAuthorizeHTMLResponseTemplateWithCompletion___block_invoke;
  v15 = &unk_1E73D99D0;
  v16[1] = v18;
  v16[0] = MEMORY[0x1E69E5928](location[0]);
  v17 = MEMORY[0x193B165F0](&v11);
  daemonConnection = v25->_daemonConnection;
  v4 = MEMORY[0x1E69E9820];
  v5 = -1073741824;
  v6 = 0;
  v7 = __85__AKAuthorizationController_fetchAppleIDAuthorizeHTMLResponseTemplateWithCompletion___block_invoke_30;
  v8 = &unk_1E73D3510;
  v9 = MEMORY[0x1E69E5928](v17);
  v10 = [(AKAuthorizationDaemonConnection *)daemonConnection remoteObjectProxyWithErrorHandler:&v4];
  [v10 fetchAppleIDAuthorizeHTMLResponseTemplateWithCompletion:v17];
  objc_storeStrong(&v10, 0);
  objc_storeStrong(&v9, 0);
  objc_storeStrong(&v17, 0);
  objc_storeStrong(v16, 0);
  _Block_object_dispose(v18, 8);
  objc_storeStrong(&v23, 0);
  objc_storeStrong(location, 0);
}

void __85__AKAuthorizationController_fetchAppleIDAuthorizeHTMLResponseTemplateWithCompletion___block_invoke(void *a1, void *a2, void *a3)
{
  v14 = *MEMORY[0x1E69E9840];
  location[1] = a1;
  location[0] = 0;
  objc_storeStrong(location, a2);
  v11 = 0;
  objc_storeStrong(&v11, a3);
  v10[1] = a1;
  if ([location[0] length])
  {
    v10[0] = _AKLogSiwa();
    v9 = OS_LOG_TYPE_DEFAULT;
    if (os_log_type_enabled(v10[0], OS_LOG_TYPE_DEFAULT))
    {
      log = v10[0];
      type = v9;
      __os_log_helper_16_0_0(v8);
      _os_log_impl(&dword_193225000, log, type, "fetchAppleIDAuthorizeHTMLResponseTemplate completed with result.", v8, 2u);
    }

    objc_storeStrong(v10, 0);
  }

  else
  {
    v7 = _AKLogSiwa();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      __os_log_helper_16_2_1_8_64(v13, v11);
      _os_log_error_impl(&dword_193225000, v7, OS_LOG_TYPE_ERROR, "Failed to fetch authorization HTML response template with error: %@", v13, 0xCu);
    }

    objc_storeStrong(&v7, 0);
  }

  objc_storeStrong((*(a1[5] + 8) + 40), 0);
  (*(a1[4] + 16))();
  objc_storeStrong(&v11, 0);
  objc_storeStrong(location, 0);
  *MEMORY[0x1E69E9840];
}

void __85__AKAuthorizationController_fetchAppleIDAuthorizeHTMLResponseTemplateWithCompletion___block_invoke_30(void *a1, void *a2)
{
  location[1] = a1;
  location[0] = 0;
  objc_storeStrong(location, a2);
  (*(a1[4] + 16))();
  objc_storeStrong(location, 0);
}

- (void)continueFetchingIconForRequestContext:(id)a3 completion:(id)a4
{
  v28 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  v26 = 0;
  objc_storeStrong(&v26, a4);
  v20[0] = 0;
  v20[1] = v20;
  v21 = 838860800;
  v22 = 48;
  v23 = __Block_byref_object_copy__17;
  v24 = __Block_byref_object_dispose__17;
  v25 = MEMORY[0x1E69E5928](v28);
  v13 = MEMORY[0x1E69E9820];
  v14 = -1073741824;
  v15 = 0;
  v16 = __78__AKAuthorizationController_continueFetchingIconForRequestContext_completion___block_invoke;
  v17 = &unk_1E73D99F8;
  v18[1] = v20;
  v18[0] = MEMORY[0x1E69E5928](v26);
  v19 = MEMORY[0x193B165F0](&v13);
  daemonConnection = v28->_daemonConnection;
  v6 = MEMORY[0x1E69E9820];
  v7 = -1073741824;
  v8 = 0;
  v9 = __78__AKAuthorizationController_continueFetchingIconForRequestContext_completion___block_invoke_32;
  v10 = &unk_1E73D3510;
  v11 = MEMORY[0x1E69E5928](v19);
  v12 = [(AKAuthorizationDaemonConnection *)daemonConnection remoteObjectProxyWithErrorHandler:&v6];
  [v12 continueFetchingIconForRequestContext:location[0] completion:v19];
  objc_storeStrong(&v12, 0);
  objc_storeStrong(&v11, 0);
  objc_storeStrong(&v19, 0);
  objc_storeStrong(v18, 0);
  _Block_object_dispose(v20, 8);
  objc_storeStrong(&v25, 0);
  objc_storeStrong(&v26, 0);
  objc_storeStrong(location, 0);
}

void __78__AKAuthorizationController_continueFetchingIconForRequestContext_completion___block_invoke(void *a1, void *a2, void *a3)
{
  v14 = *MEMORY[0x1E69E9840];
  location[1] = a1;
  location[0] = 0;
  objc_storeStrong(location, a2);
  v11 = 0;
  objc_storeStrong(&v11, a3);
  v10[1] = a1;
  if ([location[0] length])
  {
    v10[0] = _AKLogSiwa();
    v9 = OS_LOG_TYPE_DEFAULT;
    if (os_log_type_enabled(v10[0], OS_LOG_TYPE_DEFAULT))
    {
      log = v10[0];
      type = v9;
      __os_log_helper_16_0_0(v8);
      _os_log_impl(&dword_193225000, log, type, "continueFetchingIconWithCompletion completed with result.", v8, 2u);
    }

    objc_storeStrong(v10, 0);
  }

  else
  {
    v7 = _AKLogSiwa();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      __os_log_helper_16_2_1_8_64(v13, v11);
      _os_log_error_impl(&dword_193225000, v7, OS_LOG_TYPE_ERROR, "Failed to continue fetching icon with error: %@", v13, 0xCu);
    }

    objc_storeStrong(&v7, 0);
  }

  objc_storeStrong((*(a1[5] + 8) + 40), 0);
  (*(a1[4] + 16))();
  objc_storeStrong(&v11, 0);
  objc_storeStrong(location, 0);
  *MEMORY[0x1E69E9840];
}

void __78__AKAuthorizationController_continueFetchingIconForRequestContext_completion___block_invoke_32(void *a1, void *a2)
{
  location[1] = a1;
  location[0] = 0;
  objc_storeStrong(location, a2);
  (*(a1[4] + 16))();
  objc_storeStrong(location, 0);
}

- (id)primaryApplicationInformationForWebServiceWithInfo:(id)a3 error:(id *)a4
{
  v39 = *MEMORY[0x1E69E9840];
  v37 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  v35 = a4;
  v33 = _os_activity_create(&dword_193225000, "authkit/fetch-primary-bundleid", MEMORY[0x1E69E9C00], OS_ACTIVITY_FLAG_DEFAULT);
  v34 = v33;
  state.opaque[0] = 0;
  state.opaque[1] = 0;
  os_activity_scope_enter(v33, &state);
  v25 = 0;
  v26 = &v25;
  v27 = 838860800;
  v28 = 48;
  v29 = __Block_byref_object_copy__17;
  v30 = __Block_byref_object_dispose__17;
  v31 = 0;
  v18 = 0;
  v19 = &v18;
  v20 = 838860800;
  v21 = 48;
  v22 = __Block_byref_object_copy__17;
  v23 = __Block_byref_object_dispose__17;
  v24 = 0;
  daemonConnection = v37->_daemonConnection;
  oslog[3] = MEMORY[0x1E69E9820];
  v12 = -1073741824;
  v13 = 0;
  v14 = __86__AKAuthorizationController_primaryApplicationInformationForWebServiceWithInfo_error___block_invoke;
  v15 = &unk_1E73D3C50;
  v16 = &v18;
  v17 = [(AKAuthorizationDaemonConnection *)daemonConnection synchronousRemoteObjectProxyWithErrorHandler:?];
  oslog[0] = _AKLogSiwa();
  if (os_log_type_enabled(oslog[0], OS_LOG_TYPE_DEFAULT))
  {
    v9 = [location[0] objectForKeyedSubscript:@"client_id"];
    __os_log_helper_16_2_1_8_64(v38, v9);
    _os_log_impl(&dword_193225000, oslog[0], OS_LOG_TYPE_DEFAULT, "Calling out to remote auth service to fetch primary bundle ID for service: %@", v38, 0xCu);
    MEMORY[0x1E69E5920](v9);
  }

  objc_storeStrong(oslog, 0);
  [v17 fetchPrimaryApplicationInformationForWebServiceWithInfo:location[0] completion:?];
  if (v35)
  {
    v8 = v19[5];
    v5 = v8;
    *v35 = v8;
  }

  v7 = MEMORY[0x1E69E5928](v26[5]);
  objc_storeStrong(&v17, 0);
  _Block_object_dispose(&v18, 8);
  objc_storeStrong(&v24, 0);
  _Block_object_dispose(&v25, 8);
  objc_storeStrong(&v31, 0);
  os_activity_scope_leave(&state);
  objc_storeStrong(&v34, 0);
  objc_storeStrong(location, 0);
  *MEMORY[0x1E69E9840];

  return v7;
}

void __86__AKAuthorizationController_primaryApplicationInformationForWebServiceWithInfo_error___block_invoke(NSObject *a1, void *a2)
{
  v6 = *MEMORY[0x1E69E9840];
  location[1] = a1;
  location[0] = 0;
  objc_storeStrong(location, a2);
  oslog[1] = a1;
  oslog[0] = _AKLogSiwa();
  if (os_log_type_enabled(oslog[0], OS_LOG_TYPE_ERROR))
  {
    __os_log_helper_16_2_1_8_66(v5, location[0]);
    _os_log_error_impl(&dword_193225000, oslog[0], OS_LOG_TYPE_ERROR, "Remote authentication service returned an error: %{public}@", v5, 0xCu);
  }

  objc_storeStrong(oslog, 0);
  objc_storeStrong((*(a1[4].isa + 1) + 40), location[0]);
  objc_storeStrong(location, 0);
  *MEMORY[0x1E69E9840];
}

void __86__AKAuthorizationController_primaryApplicationInformationForWebServiceWithInfo_error___block_invoke_34(NSObject *a1, void *a2, void *a3)
{
  v9 = *MEMORY[0x1E69E9840];
  location[1] = a1;
  location[0] = 0;
  objc_storeStrong(location, a2);
  v6 = 0;
  objc_storeStrong(&v6, a3);
  oslog[1] = a1;
  oslog[0] = _AKLogSystem();
  if (os_log_type_enabled(oslog[0], OS_LOG_TYPE_DEFAULT))
  {
    __os_log_helper_16_2_2_8_64_8_64(v8, location[0], v6);
    _os_log_impl(&dword_193225000, oslog[0], OS_LOG_TYPE_DEFAULT, "Result of remote call: %@. Error: %@", v8, 0x16u);
  }

  objc_storeStrong(oslog, 0);
  objc_storeStrong((*(a1[4].isa + 1) + 40), location[0]);
  objc_storeStrong((*(a1[5].isa + 1) + 40), v6);
  objc_storeStrong(&v6, 0);
  objc_storeStrong(location, 0);
  *MEMORY[0x1E69E9840];
}

- (void)storeAuthorization:(id)a3 forProxiedRequest:(id)a4 completion:(id)a5
{
  v34 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  v32 = 0;
  objc_storeStrong(&v32, a4);
  v31 = 0;
  objc_storeStrong(&v31, a5);
  v29 = _os_activity_create(&dword_193225000, "authkit/store-proxied-authorization", MEMORY[0x1E69E9C00], OS_ACTIVITY_FLAG_DEFAULT);
  v30 = v29;
  state.opaque[0] = 0;
  state.opaque[1] = 0;
  os_activity_scope_enter(v29, &state);
  v22[0] = 0;
  v22[1] = v22;
  v23 = 838860800;
  v24 = 48;
  v25 = __Block_byref_object_copy__17;
  v26 = __Block_byref_object_dispose__17;
  v27 = MEMORY[0x1E69E5928](v34);
  v15 = MEMORY[0x1E69E9820];
  v16 = -1073741824;
  v17 = 0;
  v18 = __77__AKAuthorizationController_storeAuthorization_forProxiedRequest_completion___block_invoke;
  v19 = &unk_1E73D3B10;
  v20[1] = v22;
  v20[0] = MEMORY[0x1E69E5928](v31);
  v21 = MEMORY[0x193B165F0](&v15);
  daemonConnection = v34->_daemonConnection;
  v8 = MEMORY[0x1E69E9820];
  v9 = -1073741824;
  v10 = 0;
  v11 = __77__AKAuthorizationController_storeAuthorization_forProxiedRequest_completion___block_invoke_36;
  v12 = &unk_1E73D3510;
  v13 = MEMORY[0x1E69E5928](v21);
  v14 = [(AKAuthorizationDaemonConnection *)daemonConnection remoteObjectProxyWithErrorHandler:&v8];
  [v14 storeAuthorization:location[0] forProxiedRequest:v32 completion:v21];
  objc_storeStrong(&v14, 0);
  objc_storeStrong(&v13, 0);
  objc_storeStrong(&v21, 0);
  objc_storeStrong(v20, 0);
  _Block_object_dispose(v22, 8);
  objc_storeStrong(&v27, 0);
  os_activity_scope_leave(&state);
  objc_storeStrong(&v30, 0);
  objc_storeStrong(&v31, 0);
  objc_storeStrong(&v32, 0);
  objc_storeStrong(location, 0);
}

void __77__AKAuthorizationController_storeAuthorization_forProxiedRequest_completion___block_invoke(void *a1, char a2, id obj)
{
  v14 = *MEMORY[0x1E69E9840];
  v12 = a1;
  v11 = a2;
  location = 0;
  objc_storeStrong(&location, obj);
  v9[1] = a1;
  if (v11)
  {
    v9[0] = _AKLogSiwa();
    v8 = OS_LOG_TYPE_DEFAULT;
    if (os_log_type_enabled(v9[0], OS_LOG_TYPE_DEFAULT))
    {
      log = v9[0];
      type = v8;
      __os_log_helper_16_0_0(v7);
      _os_log_impl(&dword_193225000, log, type, "Store proxied authorization completed", v7, 2u);
    }

    objc_storeStrong(v9, 0);
  }

  else
  {
    oslog = _AKLogSiwa();
    if (os_log_type_enabled(oslog, OS_LOG_TYPE_ERROR))
    {
      __os_log_helper_16_2_1_8_64(v13, location);
      _os_log_error_impl(&dword_193225000, oslog, OS_LOG_TYPE_ERROR, "Store proxied authorization failed: %@", v13, 0xCu);
    }

    objc_storeStrong(&oslog, 0);
  }

  objc_storeStrong((*(a1[5] + 8) + 40), 0);
  (*(a1[4] + 16))();
  objc_storeStrong(&location, 0);
  *MEMORY[0x1E69E9840];
}

void __77__AKAuthorizationController_storeAuthorization_forProxiedRequest_completion___block_invoke_36(void *a1, void *a2)
{
  location[1] = a1;
  location[0] = 0;
  objc_storeStrong(location, a2);
  (*(a1[4] + 16))();
  objc_storeStrong(location, 0);
}

+ (id)sharedController
{
  v5 = &sharedController_onceToken_0;
  location = 0;
  objc_storeStrong(&location, &__block_literal_global_39_0);
  if (*v5 != -1)
  {
    dispatch_once(v5, location);
  }

  objc_storeStrong(&location, 0);
  v2 = sharedController_sharedController;

  return v2;
}

uint64_t __45__AKAuthorizationController_sharedController__block_invoke()
{
  v0 = objc_alloc_init(AKAuthorizationController);
  v1 = sharedController_sharedController;
  sharedController_sharedController = v0;
  return MEMORY[0x1E69E5920](v1);
}

+ (BOOL)_matchURLProcessingSet:(id)a3 url:(id)a4
{
  v65 = *MEMORY[0x1E69E9840];
  location[2] = a1;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  v60 = 0;
  objc_storeStrong(&v60, a4);
  v59 = _AKLogNto();
  v58 = OS_LOG_TYPE_DEBUG;
  if (os_log_type_enabled(v59, OS_LOG_TYPE_DEBUG))
  {
    __os_log_helper_16_2_1_8_64(v64, location[0]);
    _os_log_debug_impl(&dword_193225000, v59, v58, "Authorize URLs: %@", v64, 0xCu);
  }

  objc_storeStrong(&v59, 0);
  if ([location[0] count])
  {
    v53 = [MEMORY[0x1E696AF20] componentsWithURL:v60 resolvingAgainstBaseURL:0];
    memset(__b, 0, sizeof(__b));
    v23 = MEMORY[0x1E69E5928](location[0]);
    v24 = [v23 countByEnumeratingWithState:__b objects:v63 count:16];
    if (v24)
    {
      v20 = *__b[2];
      v21 = 0;
      v22 = v24;
      while (1)
      {
        v19 = v21;
        if (*__b[2] != v20)
        {
          objc_enumerationMutation(v23);
        }

        v52 = *(__b[1] + 8 * v21);
        v14 = MEMORY[0x1E696AF20];
        v15 = [MEMORY[0x1E695DFF8] URLWithString:v52];
        v50 = [v14 componentsWithURL:? resolvingAgainstBaseURL:?];
        MEMORY[0x1E69E5920](v15);
        v16 = [v50 scheme];
        v17 = [v53 scheme];
        v4 = [v16 caseInsensitiveCompare:?];
        v48 = 0;
        v46 = 0;
        v44 = 0;
        v42 = 0;
        v40 = 0;
        v38 = 0;
        v36 = 0;
        v34 = 0;
        v18 = 0;
        if (!v4)
        {
          v13 = [v50 host];
          v49 = v13;
          v48 = 1;
          v47 = [v53 host];
          v46 = 1;
          v18 = 0;
          if (![v13 caseInsensitiveCompare:?])
          {
            v12 = [v50 path];
            v45 = v12;
            v44 = 1;
            v43 = [v53 path];
            v42 = 1;
            v18 = 0;
            if (![v12 caseInsensitiveCompare:?])
            {
              v11 = [v50 password];
              v41 = v11;
              v40 = 1;
              v39 = [v53 password];
              v38 = 1;
              v18 = 0;
              if (![v11 caseInsensitiveCompare:?])
              {
                v10 = [v50 port];
                v37 = v10;
                v36 = 1;
                v35 = [v53 port];
                v34 = 1;
                v18 = [v10 compare:?] == 0;
              }
            }
          }
        }

        if (v34)
        {
          MEMORY[0x1E69E5920](v35);
        }

        if (v36)
        {
          MEMORY[0x1E69E5920](v37);
        }

        if (v38)
        {
          MEMORY[0x1E69E5920](v39);
        }

        if (v40)
        {
          MEMORY[0x1E69E5920](v41);
        }

        if (v42)
        {
          MEMORY[0x1E69E5920](v43);
        }

        if (v44)
        {
          MEMORY[0x1E69E5920](v45);
        }

        if (v46)
        {
          MEMORY[0x1E69E5920](v47);
        }

        if (v48)
        {
          MEMORY[0x1E69E5920](v49);
        }

        MEMORY[0x1E69E5920](v17);
        MEMORY[0x1E69E5920](v16);
        if (v18)
        {
          oslog = _AKLogNto();
          v32 = OS_LOG_TYPE_DEFAULT;
          if (os_log_type_enabled(oslog, OS_LOG_TYPE_DEFAULT))
          {
            v8 = oslog;
            v9 = v32;
            __os_log_helper_16_0_0(v31);
            _os_log_impl(&dword_193225000, v8, v9, "Authorization controller should process URL", v31, 2u);
          }

          objc_storeStrong(&oslog, 0);
          v62 = 1;
          v54 = 1;
        }

        else
        {
          v54 = 0;
        }

        objc_storeStrong(&v50, 0);
        if (v54)
        {
          break;
        }

        ++v21;
        if (v19 + 1 >= v22)
        {
          v21 = 0;
          v22 = [v23 countByEnumeratingWithState:__b objects:v63 count:16];
          if (!v22)
          {
            goto LABEL_40;
          }
        }
      }
    }

    else
    {
LABEL_40:
      v54 = 0;
    }

    MEMORY[0x1E69E5920](v23);
    if (!v54)
    {
      v30 = _AKLogNto();
      v29 = OS_LOG_TYPE_DEFAULT;
      if (os_log_type_enabled(v30, OS_LOG_TYPE_DEFAULT))
      {
        v6 = v30;
        v7 = v29;
        __os_log_helper_16_0_0(v28);
        _os_log_impl(&dword_193225000, v6, v7, "URL shouldn't be processed", v28, 2u);
      }

      objc_storeStrong(&v30, 0);
      v62 = 0;
      v54 = 1;
    }

    objc_storeStrong(&v53, 0);
  }

  else
  {
    v57 = _AKLogNto();
    v56 = 16;
    if (os_log_type_enabled(v57, OS_LOG_TYPE_ERROR))
    {
      v25 = v57;
      v26 = v56;
      __os_log_helper_16_0_0(v55);
      _os_log_error_impl(&dword_193225000, v25, v26, "No URL for Apple ID Authorization", v55, 2u);
    }

    objc_storeStrong(&v57, 0);
    v62 = 0;
    v54 = 1;
  }

  objc_storeStrong(&v60, 0);
  objc_storeStrong(location, 0);
  *MEMORY[0x1E69E9840];
  return v62 & 1;
}

+ (BOOL)shouldProcessURL:(id)a3
{
  v13 = a1;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  v11 = _AKLogNto();
  v10 = OS_LOG_TYPE_DEFAULT;
  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
  {
    log = v11;
    type = v10;
    __os_log_helper_16_0_0(v9);
    _os_log_impl(&dword_193225000, log, type, "Should process URL called", v9, 2u);
  }

  objc_storeStrong(&v11, 0);
  v4 = [v13 sharedController];
  v8 = [v4 _nativeTakeoverURLs];
  MEMORY[0x1E69E5920](v4);
  v5 = [v13 _matchURLProcessingSet:v8 url:location[0]];
  objc_storeStrong(&v8, 0);
  objc_storeStrong(location, 0);
  return v5;
}

+ (void)shouldProcessURL:(id)a3 completion:(id)a4
{
  v15 = a1;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  v13 = 0;
  objc_storeStrong(&v13, a4);
  v5 = [v15 sharedController];
  v6 = MEMORY[0x1E69E9820];
  v7 = -1073741824;
  v8 = 0;
  v9 = __57__AKAuthorizationController_shouldProcessURL_completion___block_invoke;
  v10 = &unk_1E73D9A20;
  v12[1] = v15;
  v11 = MEMORY[0x1E69E5928](location[0]);
  v12[0] = MEMORY[0x1E69E5928](v13);
  [v5 _nativeTakeoverEndpointsWithCompletionHandler:?];
  MEMORY[0x1E69E5920](v5);
  objc_storeStrong(v12, 0);
  objc_storeStrong(&v11, 0);
  objc_storeStrong(&v13, 0);
  objc_storeStrong(location, 0);
}

void __57__AKAuthorizationController_shouldProcessURL_completion___block_invoke(uint64_t a1, void *a2, void *a3)
{
  location[1] = a1;
  location[0] = 0;
  objc_storeStrong(location, a2);
  v5 = 0;
  objc_storeStrong(&v5, a3);
  if (location[0])
  {
    [*(a1 + 48) _matchURLProcessingSet:location[0] url:*(a1 + 32)];
    if (*(a1 + 40))
    {
      (*(*(a1 + 40) + 16))();
    }
  }

  else if (*(a1 + 40))
  {
    (*(*(a1 + 40) + 16))();
  }

  objc_storeStrong(&v5, 0);
  objc_storeStrong(location, 0);
}

+ (id)appleOwnedDomains
{
  v3 = [a1 sharedController];
  v4 = [v3 _appleOwnedDomains];
  MEMORY[0x1E69E5920](v3);

  return v4;
}

+ (BOOL)isURLFromAppleOwnedDomain:(id)a3
{
  v23 = a1;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  v21 = _AKLogNto();
  v20 = OS_LOG_TYPE_DEFAULT;
  if (os_log_type_enabled(v21, OS_LOG_TYPE_DEFAULT))
  {
    log = v21;
    type = v20;
    __os_log_helper_16_0_0(v19);
    _os_log_impl(&dword_193225000, log, type, "Checking if url is apple owned", v19, 2u);
  }

  objc_storeStrong(&v21, 0);
  v8 = [v23 sharedController];
  v18 = [v8 _appleOwnedDomains];
  MEMORY[0x1E69E5920](v8);
  if ([v18 count])
  {
    if ([v23 isURL:location[0] matchingAppleOwnedDomains:v18])
    {
      v24 = 1;
      v14 = 1;
    }

    else
    {
      v13 = _AKLogNto();
      v12 = OS_LOG_TYPE_DEFAULT;
      if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
      {
        v4 = v13;
        v5 = v12;
        __os_log_helper_16_0_0(v11);
        _os_log_impl(&dword_193225000, v4, v5, "URL is not apple owned", v11, 2u);
      }

      objc_storeStrong(&v13, 0);
      v24 = 0;
      v14 = 1;
    }
  }

  else
  {
    v17 = _AKLogNto();
    v16 = 16;
    if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
    {
      v6 = v17;
      v7 = v16;
      __os_log_helper_16_0_0(v15);
      _os_log_error_impl(&dword_193225000, v6, v7, "No URL for Apple ID Authorization", v15, 2u);
    }

    objc_storeStrong(&v17, 0);
    v24 = 0;
    v14 = 1;
  }

  objc_storeStrong(&v18, 0);
  objc_storeStrong(location, 0);
  return v24 & 1;
}

+ (BOOL)isURLFromAllowListDomainsForSharingKey:(id)a3
{
  v23 = a1;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  v21 = _AKLogNto();
  v20 = OS_LOG_TYPE_DEFAULT;
  if (os_log_type_enabled(v21, OS_LOG_TYPE_DEFAULT))
  {
    log = v21;
    type = v20;
    __os_log_helper_16_0_0(v19);
    _os_log_impl(&dword_193225000, log, type, "Checking if url is in allow list domain for sharing key", v19, 2u);
  }

  objc_storeStrong(&v21, 0);
  v8 = [v23 sharedController];
  v18 = [v8 _allowListDomainsForSharingKey];
  MEMORY[0x1E69E5920](v8);
  if ([v18 count])
  {
    if ([v23 isURL:location[0] matchingAppleOwnedDomains:v18])
    {
      v24 = 1;
      v14 = 1;
    }

    else
    {
      v13 = _AKLogNto();
      v12 = OS_LOG_TYPE_DEFAULT;
      if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
      {
        v4 = v13;
        v5 = v12;
        __os_log_helper_16_0_0(v11);
        _os_log_impl(&dword_193225000, v4, v5, "URL is not in allow list domain for sharing key", v11, 2u);
      }

      objc_storeStrong(&v13, 0);
      v24 = 0;
      v14 = 1;
    }
  }

  else
  {
    v17 = _AKLogNto();
    v16 = 16;
    if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
    {
      v6 = v17;
      v7 = v16;
      __os_log_helper_16_0_0(v15);
      _os_log_error_impl(&dword_193225000, v6, v7, "No URL for sharing key Apple ID Authorization", v15, 2u);
    }

    objc_storeStrong(&v17, 0);
    v24 = 0;
    v14 = 1;
  }

  objc_storeStrong(&v18, 0);
  objc_storeStrong(location, 0);
  return v24 & 1;
}

+ (BOOL)isURL:(id)a3 matchingAppleOwnedDomains:(id)a4
{
  v29 = *MEMORY[0x1E69E9840];
  location[2] = a1;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  v21 = 0;
  objc_storeStrong(&v21, a4);
  v20 = [location[0] host];
  memset(__b, 0, sizeof(__b));
  v15 = MEMORY[0x1E69E5928](v21);
  v16 = [v15 countByEnumeratingWithState:__b objects:v28 count:16];
  if (v16)
  {
    v11 = *__b[2];
    v12 = 0;
    v13 = v16;
    while (1)
    {
      v10 = v12;
      if (*__b[2] != v11)
      {
        objc_enumerationMutation(v15);
      }

      v19 = *(__b[1] + 8 * v12);
      v9 = [v20 length];
      if (v9 >= [v19 length])
      {
        v7 = [v20 length];
        v8 = v7 - [v19 length];
        v4 = [v19 length];
        v25 = v8;
        v24 = v4;
        v26 = v8;
        v27 = v4;
        if (![v20 compare:v19 options:1 range:{v8, v4}])
        {
          v6 = [v20 length];
          if (v6 == [v19 length])
          {
            v23 = 1;
            v17 = 1;
            goto LABEL_14;
          }

          if ([v20 characterAtIndex:v8 - 1] == 46)
          {
            break;
          }
        }
      }

      ++v12;
      if (v10 + 1 >= v13)
      {
        v12 = 0;
        v13 = [v15 countByEnumeratingWithState:__b objects:v28 count:16];
        if (!v13)
        {
          goto LABEL_13;
        }
      }
    }

    v23 = 1;
    v17 = 1;
  }

  else
  {
LABEL_13:
    v17 = 0;
  }

LABEL_14:
  MEMORY[0x1E69E5920](v15);
  if (!v17)
  {
    v23 = 0;
  }

  objc_storeStrong(&v20, 0);
  objc_storeStrong(&v21, 0);
  objc_storeStrong(location, 0);
  *MEMORY[0x1E69E9840];
  return v23 & 1;
}

+ (unint64_t)appSSORequestTypeForURL:(id)a3
{
  v24 = *MEMORY[0x1E69E9840];
  v21 = a1;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  v19 = _AKLogSiwa();
  v18 = OS_LOG_TYPE_DEFAULT;
  if (os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
  {
    log = v19;
    type = v18;
    __os_log_helper_16_0_0(v17);
    _os_log_impl(&dword_193225000, log, type, "Checking app SSO request type", v17, 2u);
  }

  objc_storeStrong(&v19, 0);
  v9 = +[AKFeatureManager sharedManager];
  v10 = [v9 isForgotPasswordNativeTakeoverEnabled];
  MEMORY[0x1E69E5920](v9);
  if ((v10 & 1) == 0)
  {
    goto LABEL_8;
  }

  v5 = +[AKURLBag sharedBag];
  v16 = [v5 iForgotWebURLToIntercept];
  MEMORY[0x1E69E5920](v5);
  v7 = [v16 host];
  v6 = [location[0] host];
  v8 = [v7 isEqualToString:?];
  MEMORY[0x1E69E5920](v6);
  MEMORY[0x1E69E5920](v7);
  if (v8)
  {
    v22 = 2;
    v15 = 1;
  }

  else
  {
    v15 = 0;
  }

  objc_storeStrong(&v16, 0);
  if (!v15)
  {
LABEL_8:
    v14 = [v21 isURLFromAppleOwnedDomain:location[0]];
    v13 = _AKLogSiwa();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
    {
      if (v14)
      {
        v3 = @"YES";
      }

      else
      {
        v3 = @"NO";
      }

      __os_log_helper_16_2_1_8_64(v23, v3);
      _os_log_impl(&dword_193225000, v13, OS_LOG_TYPE_DEFAULT, "Should show authorization flow: %@", v23, 0xCu);
    }

    objc_storeStrong(&v13, 0);
    v22 = (v14 & 1) != 0;
    v15 = 1;
  }

  objc_storeStrong(location, 0);
  *MEMORY[0x1E69E9840];
  return v22;
}

- (id)_sharedKeyInfo
{
  v25 = *MEMORY[0x1E69E9840];
  v23 = self;
  location[1] = a2;
  location[0] = _AKLogSiwa();
  v21 = OS_LOG_TYPE_DEFAULT;
  if (os_log_type_enabled(location[0], OS_LOG_TYPE_DEFAULT))
  {
    log = location[0];
    type = v21;
    __os_log_helper_16_0_0(v20);
    _os_log_impl(&dword_193225000, log, type, "Fetching shared key info...", v20, 2u);
  }

  objc_storeStrong(location, 0);
  v13 = 0;
  v14 = &v13;
  v15 = 838860800;
  v16 = 48;
  v17 = __Block_byref_object_copy__17;
  v18 = __Block_byref_object_dispose__17;
  v19 = 0;
  v12 = [(AKAuthorizationDaemonConnection *)v23->_daemonConnection synchronousRemoteObjectProxyWithErrorHandler:&__block_literal_global_52];
  oslog[1] = MEMORY[0x1E69E9820];
  v7 = -1073741824;
  v8 = 0;
  v9 = __43__AKAuthorizationController__sharedKeyInfo__block_invoke_53;
  v10 = &unk_1E73D9A48;
  v11 = &v13;
  [v12 fetchSharedKeyInfoWithCompletion:?];
  oslog[0] = _AKLogSiwa();
  if (os_log_type_enabled(oslog[0], OS_LOG_TYPE_DEBUG))
  {
    __os_log_helper_16_2_1_8_64(v24, v14[5]);
    _os_log_debug_impl(&dword_193225000, oslog[0], OS_LOG_TYPE_DEBUG, "Shared key info: %@", v24, 0xCu);
  }

  objc_storeStrong(oslog, 0);
  v3 = MEMORY[0x1E69E5928](v14[5]);
  objc_storeStrong(&v12, 0);
  _Block_object_dispose(&v13, 8);
  objc_storeStrong(&v19, 0);
  *MEMORY[0x1E69E9840];

  return v3;
}

void __43__AKAuthorizationController__sharedKeyInfo__block_invoke(NSObject *a1, void *a2)
{
  v6 = *MEMORY[0x1E69E9840];
  location[1] = a1;
  location[0] = 0;
  objc_storeStrong(location, a2);
  oslog[1] = a1;
  oslog[0] = _AKLogSiwa();
  if (os_log_type_enabled(oslog[0], OS_LOG_TYPE_ERROR))
  {
    __os_log_helper_16_2_1_8_64(v5, location[0]);
    _os_log_error_impl(&dword_193225000, oslog[0], OS_LOG_TYPE_ERROR, "Failed to fetch apple owned domains with XPC error: %@", v5, 0xCu);
  }

  objc_storeStrong(oslog, 0);
  objc_storeStrong(location, 0);
  *MEMORY[0x1E69E9840];
}

void __43__AKAuthorizationController__sharedKeyInfo__block_invoke_53(void *a1, void *a2, void *a3)
{
  v14 = *MEMORY[0x1E69E9840];
  location[1] = a1;
  location[0] = 0;
  objc_storeStrong(location, a2);
  v11 = 0;
  objc_storeStrong(&v11, a3);
  v10[1] = a1;
  if (location[0])
  {
    v10[0] = _AKLogSiwa();
    v9 = OS_LOG_TYPE_DEFAULT;
    if (os_log_type_enabled(v10[0], OS_LOG_TYPE_DEFAULT))
    {
      log = v10[0];
      type = v9;
      __os_log_helper_16_0_0(v8);
      _os_log_impl(&dword_193225000, log, type, "Shared key info fetched", v8, 2u);
    }

    objc_storeStrong(v10, 0);
    objc_storeStrong((*(a1[4] + 8) + 40), location[0]);
  }

  else
  {
    oslog = _AKLogSiwa();
    if (os_log_type_enabled(oslog, OS_LOG_TYPE_ERROR))
    {
      __os_log_helper_16_2_1_8_64(v13, v11);
      _os_log_error_impl(&dword_193225000, oslog, OS_LOG_TYPE_ERROR, "Failed to fetch shared key info with error: %@", v13, 0xCu);
    }

    objc_storeStrong(&oslog, 0);
  }

  objc_storeStrong(&v11, 0);
  objc_storeStrong(location, 0);
  *MEMORY[0x1E69E9840];
}

- (void)establishConnectionWithNotificationHandlerEndpoint:(id)a3 completion:(id)a4
{
  v28 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  v26 = 0;
  objc_storeStrong(&v26, a4);
  v20[0] = 0;
  v20[1] = v20;
  v21 = 838860800;
  v22 = 48;
  v23 = __Block_byref_object_copy__17;
  v24 = __Block_byref_object_dispose__17;
  v25 = MEMORY[0x1E69E5928](v28);
  v13 = MEMORY[0x1E69E9820];
  v14 = -1073741824;
  v15 = 0;
  v16 = __91__AKAuthorizationController_establishConnectionWithNotificationHandlerEndpoint_completion___block_invoke;
  v17 = &unk_1E73D3B10;
  v18[1] = v20;
  v18[0] = MEMORY[0x1E69E5928](v26);
  v19 = MEMORY[0x193B165F0](&v13);
  daemonConnection = v28->_daemonConnection;
  v6 = MEMORY[0x1E69E9820];
  v7 = -1073741824;
  v8 = 0;
  v9 = __91__AKAuthorizationController_establishConnectionWithNotificationHandlerEndpoint_completion___block_invoke_54;
  v10 = &unk_1E73D3510;
  v11 = MEMORY[0x1E69E5928](v19);
  v12 = [(AKAuthorizationDaemonConnection *)daemonConnection remoteObjectProxyWithErrorHandler:&v6];
  [v12 establishConnectionWithNotificationHandlerEndpoint:location[0] completion:v19];
  objc_storeStrong(&v12, 0);
  objc_storeStrong(&v11, 0);
  objc_storeStrong(&v19, 0);
  objc_storeStrong(v18, 0);
  _Block_object_dispose(v20, 8);
  objc_storeStrong(&v25, 0);
  objc_storeStrong(&v26, 0);
  objc_storeStrong(location, 0);
}

void __91__AKAuthorizationController_establishConnectionWithNotificationHandlerEndpoint_completion___block_invoke(void *a1, char a2, id obj)
{
  v14 = *MEMORY[0x1E69E9840];
  v12 = a1;
  v11 = a2;
  location = 0;
  objc_storeStrong(&location, obj);
  v9[1] = a1;
  if (v11)
  {
    v9[0] = _AKLogSiwa();
    v8 = OS_LOG_TYPE_DEFAULT;
    if (os_log_type_enabled(v9[0], OS_LOG_TYPE_DEFAULT))
    {
      log = v9[0];
      type = v8;
      __os_log_helper_16_0_0(v7);
      _os_log_impl(&dword_193225000, log, type, "Established connection between notification center endpoint and daemon service.", v7, 2u);
    }

    objc_storeStrong(v9, 0);
  }

  else if (![location ak_isAuthenticationErrorWithCode:-7026])
  {
    oslog = _AKLogSiwa();
    if (os_log_type_enabled(oslog, OS_LOG_TYPE_ERROR))
    {
      __os_log_helper_16_2_1_8_64(v13, location);
      _os_log_error_impl(&dword_193225000, oslog, OS_LOG_TYPE_ERROR, "Failed to establish connection between notification center endpoint and daemon service with error: %@", v13, 0xCu);
    }

    objc_storeStrong(&oslog, 0);
  }

  objc_storeStrong((*(a1[5] + 8) + 40), 0);
  if (a1[4])
  {
    (*(a1[4] + 16))();
  }

  objc_storeStrong(&location, 0);
  *MEMORY[0x1E69E9840];
}

void __91__AKAuthorizationController_establishConnectionWithNotificationHandlerEndpoint_completion___block_invoke_54(void *a1, void *a2)
{
  location[1] = a1;
  location[0] = 0;
  objc_storeStrong(location, a2);
  (*(a1[4] + 16))();
  objc_storeStrong(location, 0);
}

- (void)establishConnectionWithStateBroadcastHandlerEndpoint:(id)a3 completion:(id)a4
{
  v28 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  v26 = 0;
  objc_storeStrong(&v26, a4);
  v20[0] = 0;
  v20[1] = v20;
  v21 = 838860800;
  v22 = 48;
  v23 = __Block_byref_object_copy__17;
  v24 = __Block_byref_object_dispose__17;
  v25 = MEMORY[0x1E69E5928](v28);
  v13 = MEMORY[0x1E69E9820];
  v14 = -1073741824;
  v15 = 0;
  v16 = __93__AKAuthorizationController_establishConnectionWithStateBroadcastHandlerEndpoint_completion___block_invoke;
  v17 = &unk_1E73D3B10;
  v18[1] = v20;
  v18[0] = MEMORY[0x1E69E5928](v26);
  v19 = MEMORY[0x193B165F0](&v13);
  daemonConnection = v28->_daemonConnection;
  v6 = MEMORY[0x1E69E9820];
  v7 = -1073741824;
  v8 = 0;
  v9 = __93__AKAuthorizationController_establishConnectionWithStateBroadcastHandlerEndpoint_completion___block_invoke_55;
  v10 = &unk_1E73D3510;
  v11 = MEMORY[0x1E69E5928](v19);
  v12 = [(AKAuthorizationDaemonConnection *)daemonConnection remoteObjectProxyWithErrorHandler:&v6];
  [v12 establishConnectionWithStateBroadcastHandlerEndpoint:location[0] completion:v19];
  objc_storeStrong(&v12, 0);
  objc_storeStrong(&v11, 0);
  objc_storeStrong(&v19, 0);
  objc_storeStrong(v18, 0);
  _Block_object_dispose(v20, 8);
  objc_storeStrong(&v25, 0);
  objc_storeStrong(&v26, 0);
  objc_storeStrong(location, 0);
}

void __93__AKAuthorizationController_establishConnectionWithStateBroadcastHandlerEndpoint_completion___block_invoke(void *a1, char a2, id obj)
{
  v14 = *MEMORY[0x1E69E9840];
  v12 = a1;
  v11 = a2;
  location = 0;
  objc_storeStrong(&location, obj);
  v9[1] = a1;
  if (v11)
  {
    v9[0] = _AKLogSiwa();
    v8 = OS_LOG_TYPE_DEFAULT;
    if (os_log_type_enabled(v9[0], OS_LOG_TYPE_DEFAULT))
    {
      log = v9[0];
      type = v8;
      __os_log_helper_16_0_0(v7);
      _os_log_impl(&dword_193225000, log, type, "Established connection between state broadcast handler endpoint and daemon service.", v7, 2u);
    }

    objc_storeStrong(v9, 0);
  }

  else if (![location ak_isAuthenticationErrorWithCode:-7026])
  {
    oslog = _AKLogSiwa();
    if (os_log_type_enabled(oslog, OS_LOG_TYPE_ERROR))
    {
      __os_log_helper_16_2_1_8_64(v13, location);
      _os_log_error_impl(&dword_193225000, oslog, OS_LOG_TYPE_ERROR, "Failed to establish connection between state broadcast handler endpoint and daemon service with error: %@", v13, 0xCu);
    }

    objc_storeStrong(&oslog, 0);
  }

  objc_storeStrong((*(a1[5] + 8) + 40), 0);
  if (a1[4])
  {
    (*(a1[4] + 16))();
  }

  objc_storeStrong(&location, 0);
  *MEMORY[0x1E69E9840];
}

void __93__AKAuthorizationController_establishConnectionWithStateBroadcastHandlerEndpoint_completion___block_invoke_55(void *a1, void *a2)
{
  location[1] = a1;
  location[0] = 0;
  objc_storeStrong(location, a2);
  (*(a1[4] + 16))();
  objc_storeStrong(location, 0);
}

- (BOOL)_shouldOverrideProxiedBundleIDForContext:(id)a3
{
  location[2] = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  v5 = 0;
  if (![location[0] _isWebLogin] || !objc_msgSend(location[0], "_isEligibleForUpgradeFromPassword") || (v4 = 0, objc_msgSend(location[0], "_isEligibleForUpgradeFromPassword") == 1) && (v6 = objc_msgSend(location[0], "_proxiedClientBundleID"), v5 = 1, v4 = 0, !v6))
  {
    v4 = [location[0] _isSubscriptionLogin] == 0;
  }

  v8 = v4;
  if (v5)
  {
    MEMORY[0x1E69E5920](v6);
  }

  objc_storeStrong(location, 0);
  return v8;
}

@end