@interface AKWalrusController
- (AKWalrusController)init;
- (void)PCSAuthContextForWebSessionIdentifier:(id)identifier serviceName:(id)name completion:(id)completion;
- (void)PCSAuthContextForWebSessionUUID:(id)d serviceName:(id)name completion:(id)completion;
- (void)postWalrusStateUpdateToServerWithContext:(id)context urlBagKey:(id)key username:(id)username password:(id)password completion:(id)completion;
- (void)removeAllPCSAuthCredentialWithCompletion:(id)completion;
- (void)verifyEnableWalrusAllowedWithContext:(id)context completion:(id)completion;
@end

@implementation AKWalrusController

- (AKWalrusController)init
{
  v9 = a2;
  v10 = 0;
  v8.receiver = self;
  v8.super_class = AKWalrusController;
  v10 = [(AKWalrusController *)&v8 init];
  objc_storeStrong(&v10, v10);
  if (v10)
  {
    v7 = [objc_alloc(MEMORY[0x1E6985E18]) initWithServiceName:@"com.apple.ak.walrus.xpc" remoteProtocol:&unk_1F07DCF28 options:0];
    v2 = objc_alloc(MEMORY[0x1E6985E10]);
    v3 = [v2 initWithRemoteServiceConfig:v7 delegate:v10];
    remoteService = v10->_remoteService;
    v10->_remoteService = v3;
    MEMORY[0x1E69E5920](remoteService);
    [(AAFXPCSession *)v10->_remoteService resume];
    objc_storeStrong(&v7, 0);
  }

  v6 = MEMORY[0x1E69E5928](v10);
  objc_storeStrong(&v10, 0);
  return v6;
}

- (void)PCSAuthContextForWebSessionIdentifier:(id)identifier serviceName:(id)name completion:(id)completion
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, identifier);
  v32 = 0;
  objc_storeStrong(&v32, name);
  v31 = 0;
  objc_storeStrong(&v31, completion);
  v29 = _os_activity_create(&dword_193225000, "walrus-authkit/fetch-pcs-auth-context", MEMORY[0x1E69E9C00], OS_ACTIVITY_FLAG_DEFAULT);
  v30 = v29;
  state.opaque[0] = 0;
  state.opaque[1] = 0;
  os_activity_scope_enter(v29, &state);
  v22[0] = 0;
  v22[1] = v22;
  v23 = 838860800;
  v24 = 48;
  v25 = __Block_byref_object_copy__9;
  v26 = __Block_byref_object_dispose__9;
  v27 = MEMORY[0x1E69E5928](selfCopy);
  v15 = MEMORY[0x1E69E9820];
  v16 = -1073741824;
  v17 = 0;
  v18 = __83__AKWalrusController_PCSAuthContextForWebSessionIdentifier_serviceName_completion___block_invoke;
  v19 = &unk_1E73D7B10;
  v20[1] = v22;
  v20[0] = MEMORY[0x1E69E5928](v31);
  v21 = MEMORY[0x193B165F0](&v15);
  remoteService = selfCopy->_remoteService;
  v8 = MEMORY[0x1E69E9820];
  v9 = -1073741824;
  v10 = 0;
  v11 = __83__AKWalrusController_PCSAuthContextForWebSessionIdentifier_serviceName_completion___block_invoke_2;
  v12 = &unk_1E73D3510;
  v13 = MEMORY[0x1E69E5928](v21);
  v14 = [(AAFXPCSession *)remoteService remoteServiceProxyWithErrorHandler:&v8];
  [v14 PCSAuthContextForWebSessionIdentifier:location[0] serviceName:v32 completion:v21];
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

void __83__AKWalrusController_PCSAuthContextForWebSessionIdentifier_serviceName_completion___block_invoke(void *a1, void *a2, void *a3)
{
  location[1] = a1;
  location[0] = 0;
  objc_storeStrong(location, a2);
  v5 = 0;
  objc_storeStrong(&v5, a3);
  objc_storeStrong((*(a1[5] + 8) + 40), 0);
  (*(a1[4] + 16))();
  objc_storeStrong(&v5, 0);
  objc_storeStrong(location, 0);
}

void __83__AKWalrusController_PCSAuthContextForWebSessionIdentifier_serviceName_completion___block_invoke_2(void *a1, void *a2)
{
  v7 = *MEMORY[0x1E69E9840];
  location[1] = a1;
  location[0] = 0;
  objc_storeStrong(location, a2);
  v4[1] = a1;
  v4[0] = _AKLogSystem();
  if (os_log_type_enabled(v4[0], OS_LOG_TYPE_ERROR))
  {
    v2 = [location[0] description];
    __os_log_helper_16_2_2_8_32_8_64(v6, "[AKWalrusController PCSAuthContextForWebSessionIdentifier:serviceName:completion:]_block_invoke_2", v2);
    _os_log_error_impl(&dword_193225000, v4[0], OS_LOG_TYPE_ERROR, "Connection to Walrus remote service '%s' returned an error: %@", v6, 0x16u);
    MEMORY[0x1E69E5920](v2);
  }

  objc_storeStrong(v4, 0);
  (*(a1[4] + 16))();
  objc_storeStrong(location, 0);
  *MEMORY[0x1E69E9840];
}

- (void)PCSAuthContextForWebSessionUUID:(id)d serviceName:(id)name completion:(id)completion
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, d);
  v10 = 0;
  objc_storeStrong(&v10, name);
  v9 = 0;
  objc_storeStrong(&v9, completion);
  v5 = selfCopy;
  uUIDString = [location[0] UUIDString];
  [AKWalrusController PCSAuthContextForWebSessionIdentifier:v5 serviceName:"PCSAuthContextForWebSessionIdentifier:serviceName:completion:" completion:?];
  MEMORY[0x1E69E5920](uUIDString);
  objc_storeStrong(&v9, 0);
  objc_storeStrong(&v10, 0);
  objc_storeStrong(location, 0);
}

- (void)removeAllPCSAuthCredentialWithCompletion:(id)completion
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, completion);
  v25 = _os_activity_create(&dword_193225000, "walrus-authkit/remove-all-pcs-auth-credentials", MEMORY[0x1E69E9C00], OS_ACTIVITY_FLAG_DEFAULT);
  v26 = v25;
  state.opaque[0] = 0;
  state.opaque[1] = 0;
  os_activity_scope_enter(v25, &state);
  v18[0] = 0;
  v18[1] = v18;
  v19 = 838860800;
  v20 = 48;
  v21 = __Block_byref_object_copy__9;
  v22 = __Block_byref_object_dispose__9;
  v23 = MEMORY[0x1E69E5928](selfCopy);
  v11 = MEMORY[0x1E69E9820];
  v12 = -1073741824;
  v13 = 0;
  v14 = __63__AKWalrusController_removeAllPCSAuthCredentialWithCompletion___block_invoke;
  v15 = &unk_1E73D3DB8;
  v16[1] = v18;
  v16[0] = MEMORY[0x1E69E5928](location[0]);
  v17 = MEMORY[0x193B165F0](&v11);
  remoteService = selfCopy->_remoteService;
  v4 = MEMORY[0x1E69E9820];
  v5 = -1073741824;
  v6 = 0;
  v7 = __63__AKWalrusController_removeAllPCSAuthCredentialWithCompletion___block_invoke_2;
  v8 = &unk_1E73D3510;
  v9 = MEMORY[0x1E69E5928](v17);
  v10 = [(AAFXPCSession *)remoteService remoteServiceProxyWithErrorHandler:&v4];
  [v10 removeAllPCSAuthCredentialWithCompletion:v17];
  objc_storeStrong(&v10, 0);
  objc_storeStrong(&v9, 0);
  objc_storeStrong(&v17, 0);
  objc_storeStrong(v16, 0);
  _Block_object_dispose(v18, 8);
  objc_storeStrong(&v23, 0);
  os_activity_scope_leave(&state);
  objc_storeStrong(&v26, 0);
  objc_storeStrong(location, 0);
}

void __63__AKWalrusController_removeAllPCSAuthCredentialWithCompletion___block_invoke(void *a1, void *a2)
{
  location[1] = a1;
  location[0] = 0;
  objc_storeStrong(location, a2);
  objc_storeStrong((*(a1[5] + 8) + 40), 0);
  (*(a1[4] + 16))();
  objc_storeStrong(location, 0);
}

void __63__AKWalrusController_removeAllPCSAuthCredentialWithCompletion___block_invoke_2(void *a1, void *a2)
{
  v7 = *MEMORY[0x1E69E9840];
  location[1] = a1;
  location[0] = 0;
  objc_storeStrong(location, a2);
  v4[1] = a1;
  v4[0] = _AKLogSystem();
  if (os_log_type_enabled(v4[0], OS_LOG_TYPE_ERROR))
  {
    v2 = [location[0] description];
    __os_log_helper_16_2_2_8_32_8_64(v6, "[AKWalrusController removeAllPCSAuthCredentialWithCompletion:]_block_invoke_2", v2);
    _os_log_error_impl(&dword_193225000, v4[0], OS_LOG_TYPE_ERROR, "Connection to Walrus remote service '%s' returned an error: %@", v6, 0x16u);
    MEMORY[0x1E69E5920](v2);
  }

  objc_storeStrong(v4, 0);
  (*(a1[4] + 16))();
  objc_storeStrong(location, 0);
  *MEMORY[0x1E69E9840];
}

- (void)verifyEnableWalrusAllowedWithContext:(id)context completion:(id)completion
{
  v56 = *MEMORY[0x1E69E9840];
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, context);
  v52 = 0;
  objc_storeStrong(&v52, completion);
  v46[0] = 0;
  v46[1] = v46;
  v47 = 838860800;
  v48 = 48;
  v49 = __Block_byref_object_copy__9;
  v50 = __Block_byref_object_dispose__9;
  v51 = MEMORY[0x1E69E5928](selfCopy);
  v44 = _os_activity_create(&dword_193225000, "walrus-authkit/verify-walrus-enable-allowed", MEMORY[0x1E69E9C00], OS_ACTIVITY_FLAG_DEFAULT);
  v45 = v44;
  state.opaque[0] = 0;
  state.opaque[1] = 0;
  os_activity_scope_enter(v44, &state);
  v42 = 0uLL;
  v11 = _AKSignpostLogSystem();
  *&v12 = _AKSignpostCreate(v11);
  *(&v12 + 1) = v4;
  v41 = v12;
  MEMORY[0x1E69E5920](v11);
  v40 = _AKSignpostLogSystem();
  v39 = 1;
  v38 = v12;
  if (v12 && v38 != -1 && os_signpost_enabled(v40))
  {
    log = v40;
    type = v39;
    spid = v38;
    __os_log_helper_16_0_0(v37);
    _os_signpost_emit_with_name_impl(&dword_193225000, log, type, spid, "VerifyEnableWalrusAllowed", " enableTelemetry=YES ", v37, 2u);
  }

  objc_storeStrong(&v40, 0);
  v36 = _AKSignpostLogSystem();
  v35 = OS_LOG_TYPE_DEFAULT;
  if (os_log_type_enabled(v36, OS_LOG_TYPE_DEFAULT))
  {
    __os_log_helper_16_0_1_8_0(v55, v41);
    _os_log_impl(&dword_193225000, v36, v35, "BEGIN [%lld]: VerifyEnableWalrusAllowed  enableTelemetry=YES ", v55, 0xCu);
  }

  objc_storeStrong(&v36, 0);
  v42 = v41;
  v27 = MEMORY[0x1E69E9820];
  v28 = -1073741824;
  v29 = 0;
  v30 = __70__AKWalrusController_verifyEnableWalrusAllowedWithContext_completion___block_invoke;
  v31 = &unk_1E73D6D20;
  v32[1] = v46;
  v33 = v41;
  v32[0] = MEMORY[0x1E69E5928](v52);
  v34 = MEMORY[0x193B165F0](&v27);
  remoteService = selfCopy->_remoteService;
  v20 = MEMORY[0x1E69E9820];
  v21 = -1073741824;
  v22 = 0;
  v23 = __70__AKWalrusController_verifyEnableWalrusAllowedWithContext_completion___block_invoke_78;
  v24 = &unk_1E73D3510;
  v25 = MEMORY[0x1E69E5928](v34);
  v26 = [(AAFXPCSession *)remoteService remoteServiceProxyWithErrorHandler:&v20];
  v6 = v26;
  v5 = location[0];
  v14 = MEMORY[0x1E69E9820];
  v15 = -1073741824;
  v16 = 0;
  v17 = __70__AKWalrusController_verifyEnableWalrusAllowedWithContext_completion___block_invoke_79;
  v18 = &unk_1E73D3510;
  v19 = MEMORY[0x1E69E5928](v34);
  [v6 verifyEnableWalrusAllowedWithContext:v5 completion:&v14];
  objc_storeStrong(&v19, 0);
  objc_storeStrong(&v26, 0);
  objc_storeStrong(&v25, 0);
  objc_storeStrong(&v34, 0);
  objc_storeStrong(v32, 0);
  os_activity_scope_leave(&state);
  objc_storeStrong(&v45, 0);
  _Block_object_dispose(v46, 8);
  objc_storeStrong(&v51, 0);
  objc_storeStrong(&v52, 0);
  objc_storeStrong(location, 0);
  *MEMORY[0x1E69E9840];
}

void __70__AKWalrusController_verifyEnableWalrusAllowedWithContext_completion___block_invoke(void *a1, void *a2)
{
  v15 = *MEMORY[0x1E69E9840];
  location[1] = a1;
  location[0] = 0;
  objc_storeStrong(location, a2);
  v12 = a1;
  objc_storeStrong((*(a1[5] + 8) + 40), 0);
  v11 = _AKSignpostGetNanoseconds(a1[6], a1[7]) / 1000000000.0;
  v10 = _AKSignpostLogSystem();
  v9 = 2;
  v8 = a1[6];
  if (v8 && v8 != -1 && os_signpost_enabled(v10))
  {
    log = v10;
    type = v9;
    spid = v8;
    __os_log_helper_16_0_0(v7);
    _os_signpost_emit_with_name_impl(&dword_193225000, log, type, spid, "VerifyEnableWalrusAllowed", "", v7, 2u);
  }

  objc_storeStrong(&v10, 0);
  oslog = _AKSignpostLogSystem();
  if (os_log_type_enabled(oslog, OS_LOG_TYPE_DEFAULT))
  {
    __os_log_helper_16_0_2_8_0_8_0(v14, a1[6], *&v11);
    _os_log_impl(&dword_193225000, oslog, OS_LOG_TYPE_DEFAULT, "END [%lld] %fs:VerifyEnableWalrusAllowed ", v14, 0x16u);
  }

  objc_storeStrong(&oslog, 0);
  if (a1[4])
  {
    (*(a1[4] + 16))();
  }

  objc_storeStrong(location, 0);
  *MEMORY[0x1E69E9840];
}

void __70__AKWalrusController_verifyEnableWalrusAllowedWithContext_completion___block_invoke_78(void *a1, void *a2)
{
  v7 = *MEMORY[0x1E69E9840];
  location[1] = a1;
  location[0] = 0;
  objc_storeStrong(location, a2);
  v4[1] = a1;
  v4[0] = _AKLogSystem();
  if (os_log_type_enabled(v4[0], OS_LOG_TYPE_ERROR))
  {
    v2 = [location[0] description];
    __os_log_helper_16_2_2_8_32_8_64(v6, "[AKWalrusController verifyEnableWalrusAllowedWithContext:completion:]_block_invoke", v2);
    _os_log_error_impl(&dword_193225000, v4[0], OS_LOG_TYPE_ERROR, "Connection to Walrus remote service '%s' returned an error: %@", v6, 0x16u);
    MEMORY[0x1E69E5920](v2);
  }

  objc_storeStrong(v4, 0);
  (*(a1[4] + 16))();
  objc_storeStrong(location, 0);
  *MEMORY[0x1E69E9840];
}

void __70__AKWalrusController_verifyEnableWalrusAllowedWithContext_completion___block_invoke_79(void *a1, void *a2)
{
  v12 = *MEMORY[0x1E69E9840];
  location[1] = a1;
  location[0] = 0;
  objc_storeStrong(location, a2);
  v9[1] = a1;
  if (location[0])
  {
    v9[0] = _AKLogSystem();
    v8 = OS_LOG_TYPE_ERROR;
    if (os_log_type_enabled(v9[0], OS_LOG_TYPE_ERROR))
    {
      __os_log_helper_16_2_1_8_66(v11, location[0]);
      _os_log_error_impl(&dword_193225000, v9[0], v8, "Error verifying whether user is allowed to enable walrus - %{public}@", v11, 0xCu);
    }

    objc_storeStrong(v9, 0);
  }

  else
  {
    oslog = _AKLogSystem();
    v6 = OS_LOG_TYPE_DEFAULT;
    if (os_log_type_enabled(oslog, OS_LOG_TYPE_DEFAULT))
    {
      v2 = oslog;
      v3 = v6;
      __os_log_helper_16_0_0(v5);
      _os_log_impl(&dword_193225000, v2, v3, "Successfully verified allowed to enable walrus status.", v5, 2u);
    }

    objc_storeStrong(&oslog, 0);
  }

  (*(a1[4] + 16))();
  objc_storeStrong(location, 0);
  *MEMORY[0x1E69E9840];
}

- (void)postWalrusStateUpdateToServerWithContext:(id)context urlBagKey:(id)key username:(id)username password:(id)password completion:(id)completion
{
  v68 = *MEMORY[0x1E69E9840];
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, context);
  v64 = 0;
  objc_storeStrong(&v64, key);
  v63 = 0;
  objc_storeStrong(&v63, username);
  v62 = 0;
  objc_storeStrong(&v62, password);
  v61 = 0;
  objc_storeStrong(&v61, completion);
  v55[0] = 0;
  v55[1] = v55;
  v56 = 838860800;
  v57 = 48;
  v58 = __Block_byref_object_copy__9;
  v59 = __Block_byref_object_dispose__9;
  v60 = MEMORY[0x1E69E5928](selfCopy);
  v53 = _os_activity_create(&dword_193225000, "walrus-authkit/post-walrus-state-update-to-server", MEMORY[0x1E69E9C00], OS_ACTIVITY_FLAG_DEFAULT);
  v54 = v53;
  state.opaque[0] = 0;
  state.opaque[1] = 0;
  os_activity_scope_enter(v53, &state);
  v51 = 0uLL;
  v17 = _AKSignpostLogSystem();
  *&v18 = _AKSignpostCreate(v17);
  *(&v18 + 1) = v7;
  v50 = v18;
  MEMORY[0x1E69E5920](v17);
  v49 = _AKSignpostLogSystem();
  v48 = 1;
  v47 = v18;
  if (v18 && v47 != -1 && os_signpost_enabled(v49))
  {
    log = v49;
    type = v48;
    spid = v47;
    __os_log_helper_16_0_0(v46);
    _os_signpost_emit_with_name_impl(&dword_193225000, log, type, spid, "PostWalrusStateUpdateToServer", " enableTelemetry=YES ", v46, 2u);
  }

  objc_storeStrong(&v49, 0);
  oslog = _AKSignpostLogSystem();
  v44 = OS_LOG_TYPE_DEFAULT;
  if (os_log_type_enabled(oslog, OS_LOG_TYPE_DEFAULT))
  {
    __os_log_helper_16_0_1_8_0(v67, v50);
    _os_log_impl(&dword_193225000, oslog, v44, "BEGIN [%lld]: PostWalrusStateUpdateToServer  enableTelemetry=YES ", v67, 0xCu);
  }

  objc_storeStrong(&oslog, 0);
  v51 = v50;
  v36 = MEMORY[0x1E69E9820];
  v37 = -1073741824;
  v38 = 0;
  v39 = __102__AKWalrusController_postWalrusStateUpdateToServerWithContext_urlBagKey_username_password_completion___block_invoke;
  v40 = &unk_1E73D6D20;
  v41[1] = v55;
  v42 = v50;
  v41[0] = MEMORY[0x1E69E5928](v61);
  v43 = MEMORY[0x193B165F0](&v36);
  remoteService = selfCopy->_remoteService;
  v29 = MEMORY[0x1E69E9820];
  v30 = -1073741824;
  v31 = 0;
  v32 = __102__AKWalrusController_postWalrusStateUpdateToServerWithContext_urlBagKey_username_password_completion___block_invoke_80;
  v33 = &unk_1E73D3510;
  v34 = MEMORY[0x1E69E5928](v43);
  v35 = [(AAFXPCSession *)remoteService remoteServiceProxyWithErrorHandler:&v29];
  v12 = v35;
  v8 = location[0];
  v9 = v64;
  v10 = v63;
  v11 = v62;
  v23 = MEMORY[0x1E69E9820];
  v24 = -1073741824;
  v25 = 0;
  v26 = __102__AKWalrusController_postWalrusStateUpdateToServerWithContext_urlBagKey_username_password_completion___block_invoke_81;
  v27 = &unk_1E73D3510;
  v28 = MEMORY[0x1E69E5928](v43);
  [v12 postWalrusStateUpdateToServerWithContext:v8 urlBagKey:v9 username:v10 password:v11 completion:&v23];
  objc_storeStrong(&v28, 0);
  objc_storeStrong(&v35, 0);
  objc_storeStrong(&v34, 0);
  objc_storeStrong(&v43, 0);
  objc_storeStrong(v41, 0);
  os_activity_scope_leave(&state);
  objc_storeStrong(&v54, 0);
  _Block_object_dispose(v55, 8);
  objc_storeStrong(&v60, 0);
  objc_storeStrong(&v61, 0);
  objc_storeStrong(&v62, 0);
  objc_storeStrong(&v63, 0);
  objc_storeStrong(&v64, 0);
  objc_storeStrong(location, 0);
  *MEMORY[0x1E69E9840];
}

void __102__AKWalrusController_postWalrusStateUpdateToServerWithContext_urlBagKey_username_password_completion___block_invoke(void *a1, void *a2)
{
  v15 = *MEMORY[0x1E69E9840];
  location[1] = a1;
  location[0] = 0;
  objc_storeStrong(location, a2);
  v12 = a1;
  objc_storeStrong((*(a1[5] + 8) + 40), 0);
  v11 = _AKSignpostGetNanoseconds(a1[6], a1[7]) / 1000000000.0;
  v10 = _AKSignpostLogSystem();
  v9 = 2;
  v8 = a1[6];
  if (v8 && v8 != -1 && os_signpost_enabled(v10))
  {
    log = v10;
    type = v9;
    spid = v8;
    __os_log_helper_16_0_0(v7);
    _os_signpost_emit_with_name_impl(&dword_193225000, log, type, spid, "PostWalrusStateUpdateToServer", "", v7, 2u);
  }

  objc_storeStrong(&v10, 0);
  oslog = _AKSignpostLogSystem();
  if (os_log_type_enabled(oslog, OS_LOG_TYPE_DEFAULT))
  {
    __os_log_helper_16_0_2_8_0_8_0(v14, a1[6], *&v11);
    _os_log_impl(&dword_193225000, oslog, OS_LOG_TYPE_DEFAULT, "END [%lld] %fs:PostWalrusStateUpdateToServer ", v14, 0x16u);
  }

  objc_storeStrong(&oslog, 0);
  if (a1[4])
  {
    (*(a1[4] + 16))();
  }

  objc_storeStrong(location, 0);
  *MEMORY[0x1E69E9840];
}

void __102__AKWalrusController_postWalrusStateUpdateToServerWithContext_urlBagKey_username_password_completion___block_invoke_80(void *a1, void *a2)
{
  v7 = *MEMORY[0x1E69E9840];
  location[1] = a1;
  location[0] = 0;
  objc_storeStrong(location, a2);
  v4[1] = a1;
  v4[0] = _AKLogSystem();
  if (os_log_type_enabled(v4[0], OS_LOG_TYPE_ERROR))
  {
    v2 = [location[0] description];
    __os_log_helper_16_2_2_8_32_8_64(v6, "[AKWalrusController postWalrusStateUpdateToServerWithContext:urlBagKey:username:password:completion:]_block_invoke", v2);
    _os_log_error_impl(&dword_193225000, v4[0], OS_LOG_TYPE_ERROR, "Connection to Walrus remote service '%s' returned an error: %@", v6, 0x16u);
    MEMORY[0x1E69E5920](v2);
  }

  objc_storeStrong(v4, 0);
  (*(a1[4] + 16))();
  objc_storeStrong(location, 0);
  *MEMORY[0x1E69E9840];
}

void __102__AKWalrusController_postWalrusStateUpdateToServerWithContext_urlBagKey_username_password_completion___block_invoke_81(void *a1, void *a2)
{
  v12 = *MEMORY[0x1E69E9840];
  location[1] = a1;
  location[0] = 0;
  objc_storeStrong(location, a2);
  v9[1] = a1;
  if (location[0])
  {
    v9[0] = _AKLogSystem();
    v8 = OS_LOG_TYPE_ERROR;
    if (os_log_type_enabled(v9[0], OS_LOG_TYPE_ERROR))
    {
      __os_log_helper_16_2_1_8_66(v11, location[0]);
      _os_log_error_impl(&dword_193225000, v9[0], v8, "Error updating walrus state update status to server - %{public}@", v11, 0xCu);
    }

    objc_storeStrong(v9, 0);
  }

  else
  {
    oslog = _AKLogSystem();
    v6 = OS_LOG_TYPE_DEFAULT;
    if (os_log_type_enabled(oslog, OS_LOG_TYPE_DEFAULT))
    {
      v2 = oslog;
      v3 = v6;
      __os_log_helper_16_0_0(v5);
      _os_log_impl(&dword_193225000, v2, v3, "Successfully posted walrus state update status to server.", v5, 2u);
    }

    objc_storeStrong(&oslog, 0);
  }

  (*(a1[4] + 16))();
  objc_storeStrong(location, 0);
  *MEMORY[0x1E69E9840];
}

@end