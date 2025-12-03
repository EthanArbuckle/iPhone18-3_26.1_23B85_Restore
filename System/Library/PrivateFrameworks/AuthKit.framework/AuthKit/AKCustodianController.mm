@interface AKCustodianController
- (AKCustodianController)init;
- (AKCustodianController)initWithDaemonXPCEndpoint:(id)endpoint;
- (void)dealloc;
- (void)fetchCustodianDataRecoveryKeyWithContext:(id)context completion:(id)completion;
- (void)fetchCustodianRecoveryCodeConfigurationWithCompletion:(id)completion;
- (void)fetchCustodianRecoveryTokenWithContext:(id)context completion:(id)completion;
- (void)finalizeCustodianSetupWithContext:(id)context completion:(id)completion;
- (void)initiateCustodianSetupWithContext:(id)context completion:(id)completion;
- (void)revokeCustodianWithContext:(id)context completion:(id)completion;
- (void)sendEmbargoEndNotificationFeedbackWithContext:(id)context urlKey:(id)key completion:(id)completion;
- (void)startCustodianRecoveryRequestWithContext:(id)context completion:(id)completion;
- (void)startCustodianRecoveryTransactionWithContext:(id)context completion:(id)completion;
- (void)updateCustodianRecoveryKeyWithContext:(id)context completion:(id)completion;
@end

@implementation AKCustodianController

- (AKCustodianController)init
{
  v4 = 0;
  v4 = [(AKCustodianController *)self initWithDaemonXPCEndpoint:?];
  v3 = MEMORY[0x1E69E5928](v4);
  objc_storeStrong(&v4, 0);
  return v3;
}

- (AKCustodianController)initWithDaemonXPCEndpoint:(id)endpoint
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, endpoint);
  v3 = selfCopy;
  selfCopy = 0;
  v9.receiver = v3;
  v9.super_class = AKCustodianController;
  selfCopy = [(AKCustodianController *)&v9 init];
  objc_storeStrong(&selfCopy, selfCopy);
  if (selfCopy)
  {
    v4 = [AKCustodianDaemonConnection alloc];
    v5 = [(AKCustodianDaemonConnection *)v4 initWithListenerEndpoint:location[0]];
    daemonConnection = selfCopy->_daemonConnection;
    selfCopy->_daemonConnection = v5;
    MEMORY[0x1E69E5920](daemonConnection);
  }

  v8 = MEMORY[0x1E69E5928](selfCopy);
  objc_storeStrong(location, 0);
  objc_storeStrong(&selfCopy, 0);
  return v8;
}

- (void)initiateCustodianSetupWithContext:(id)context completion:(id)completion
{
  v59 = *MEMORY[0x1E69E9840];
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, context);
  v54 = 0;
  objc_storeStrong(&v54, completion);
  v48[0] = 0;
  v48[1] = v48;
  v49 = 838860800;
  v50 = 48;
  v51 = __Block_byref_object_copy__16;
  v52 = __Block_byref_object_dispose__16;
  v53 = MEMORY[0x1E69E5928](selfCopy);
  v46 = _os_activity_create(&dword_193225000, "custodian-authkit/initiate-custodian", MEMORY[0x1E69E9C00], OS_ACTIVITY_FLAG_DEFAULT);
  v47 = v46;
  state.opaque[0] = 0;
  state.opaque[1] = 0;
  os_activity_scope_enter(v46, &state);
  v44 = 0uLL;
  v11 = _AKSignpostLogSystem();
  *&v12 = _AKSignpostCreate(v11);
  *(&v12 + 1) = v4;
  v43 = v12;
  MEMORY[0x1E69E5920](v11);
  v42 = _AKSignpostLogSystem();
  v41 = 1;
  v40 = v12;
  if (v12 && v40 != -1 && os_signpost_enabled(v42))
  {
    log = v42;
    type = v41;
    spid = v40;
    __os_log_helper_16_0_0(v39);
    _os_signpost_emit_with_name_impl(&dword_193225000, log, type, spid, "CustodianSetupStart", " enableTelemetry=YES ", v39, 2u);
  }

  objc_storeStrong(&v42, 0);
  oslog = _AKSignpostLogSystem();
  v37 = OS_LOG_TYPE_DEFAULT;
  if (os_log_type_enabled(oslog, OS_LOG_TYPE_DEFAULT))
  {
    __os_log_helper_16_0_1_8_0(v58, v43);
    _os_log_impl(&dword_193225000, oslog, v37, "BEGIN [%lld]: CustodianSetupStart  enableTelemetry=YES ", v58, 0xCu);
  }

  objc_storeStrong(&oslog, 0);
  v44 = v43;
  v29 = MEMORY[0x1E69E9820];
  v30 = -1073741824;
  v31 = 0;
  v32 = __70__AKCustodianController_initiateCustodianSetupWithContext_completion___block_invoke;
  v33 = &unk_1E73D9760;
  v35 = v43;
  v34[1] = v48;
  v34[0] = MEMORY[0x1E69E5928](v54);
  v36 = MEMORY[0x193B165F0](&v29);
  daemonConnection = selfCopy->_daemonConnection;
  v22 = MEMORY[0x1E69E9820];
  v23 = -1073741824;
  v24 = 0;
  v25 = __70__AKCustodianController_initiateCustodianSetupWithContext_completion___block_invoke_1;
  v26 = &unk_1E73D3510;
  v27 = MEMORY[0x1E69E5928](v36);
  v28 = [(AKCustodianDaemonConnection *)daemonConnection remoteObjectProxyWithErrorHandler:&v22];
  v21 = _AKLogSystem();
  v20 = OS_LOG_TYPE_DEFAULT;
  if (os_log_type_enabled(v21, OS_LOG_TYPE_DEFAULT))
  {
    __os_log_helper_16_2_1_8_64(v57, location[0]);
    _os_log_impl(&dword_193225000, v21, v20, "Calling out to remote custodian service to initiate custodian for context %@", v57, 0xCu);
  }

  objc_storeStrong(&v21, 0);
  v6 = v28;
  v5 = location[0];
  v14 = MEMORY[0x1E69E9820];
  v15 = -1073741824;
  v16 = 0;
  v17 = __70__AKCustodianController_initiateCustodianSetupWithContext_completion___block_invoke_3;
  v18 = &unk_1E73D9788;
  v19 = MEMORY[0x1E69E5928](v36);
  [v6 initiateCustodianSetupWithContext:v5 completion:&v14];
  objc_storeStrong(&v19, 0);
  objc_storeStrong(&v28, 0);
  objc_storeStrong(&v27, 0);
  objc_storeStrong(&v36, 0);
  objc_storeStrong(v34, 0);
  os_activity_scope_leave(&state);
  objc_storeStrong(&v47, 0);
  _Block_object_dispose(v48, 8);
  objc_storeStrong(&v53, 0);
  objc_storeStrong(&v54, 0);
  objc_storeStrong(location, 0);
  *MEMORY[0x1E69E9840];
}

void __70__AKCustodianController_initiateCustodianSetupWithContext_completion___block_invoke(void *a1, void *a2, void *a3)
{
  v18 = *MEMORY[0x1E69E9840];
  location[1] = a1;
  location[0] = 0;
  objc_storeStrong(location, a2);
  v15 = 0;
  objc_storeStrong(&v15, a3);
  v14 = a1;
  v13 = _AKSignpostGetNanoseconds(a1[6], a1[7]) / 1000000000.0;
  v12 = _AKSignpostLogSystem();
  v11 = 2;
  v10 = a1[6];
  if (v10 && v10 != -1 && os_signpost_enabled(v12))
  {
    log = v12;
    type = v11;
    spid = v10;
    __os_log_helper_16_0_0(v9);
    _os_signpost_emit_with_name_impl(&dword_193225000, log, type, spid, "CustodianSetupStart", "", v9, 2u);
  }

  objc_storeStrong(&v12, 0);
  oslog = _AKSignpostLogSystem();
  if (os_log_type_enabled(oslog, OS_LOG_TYPE_DEFAULT))
  {
    __os_log_helper_16_0_2_8_0_8_0(v17, a1[6], *&v13);
    _os_log_impl(&dword_193225000, oslog, OS_LOG_TYPE_DEFAULT, "END [%lld] %fs:CustodianSetupStart ", v17, 0x16u);
  }

  objc_storeStrong(&oslog, 0);
  objc_storeStrong((*(a1[5] + 8) + 40), 0);
  if (a1[4])
  {
    (*(a1[4] + 16))();
  }

  objc_storeStrong(&v15, 0);
  objc_storeStrong(location, 0);
  *MEMORY[0x1E69E9840];
}

void __70__AKCustodianController_initiateCustodianSetupWithContext_completion___block_invoke_1(NSObject *a1, void *a2)
{
  v6 = *MEMORY[0x1E69E9840];
  location[1] = a1;
  location[0] = 0;
  objc_storeStrong(location, a2);
  oslog[1] = a1;
  oslog[0] = _AKLogSystem();
  if (os_log_type_enabled(oslog[0], OS_LOG_TYPE_ERROR))
  {
    __os_log_helper_16_2_1_8_66(v5, location[0]);
    _os_log_error_impl(&dword_193225000, oslog[0], OS_LOG_TYPE_ERROR, "Initiated Custodian with remote custodian service returned an error: %{public}@", v5, 0xCu);
  }

  objc_storeStrong(oslog, 0);
  (*(a1[4].isa + 2))();
  objc_storeStrong(location, 0);
  *MEMORY[0x1E69E9840];
}

void __70__AKCustodianController_initiateCustodianSetupWithContext_completion___block_invoke_3(void *a1, void *a2, void *a3)
{
  v14 = *MEMORY[0x1E69E9840];
  location[1] = a1;
  location[0] = 0;
  objc_storeStrong(location, a2);
  v11 = 0;
  objc_storeStrong(&v11, a3);
  v10[1] = a1;
  v10[0] = _AKLogSystem();
  v9 = OS_LOG_TYPE_DEFAULT;
  if (os_log_type_enabled(v10[0], OS_LOG_TYPE_DEFAULT))
  {
    log = v10[0];
    type = v9;
    v5 = [location[0] debugDescription];
    v8 = MEMORY[0x1E69E5928](v5);
    __os_log_helper_16_2_2_8_64_8_66(v13, v8, v11);
    _os_log_impl(&dword_193225000, log, type, "Result of remote custodian initiation call: %@. Error: %{public}@", v13, 0x16u);
    MEMORY[0x1E69E5920](v5);
    objc_storeStrong(&v8, 0);
  }

  objc_storeStrong(v10, 0);
  (*(a1[4] + 16))();
  objc_storeStrong(&v11, 0);
  objc_storeStrong(location, 0);
  *MEMORY[0x1E69E9840];
}

- (void)finalizeCustodianSetupWithContext:(id)context completion:(id)completion
{
  v59 = *MEMORY[0x1E69E9840];
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, context);
  v54 = 0;
  objc_storeStrong(&v54, completion);
  v48[0] = 0;
  v48[1] = v48;
  v49 = 838860800;
  v50 = 48;
  v51 = __Block_byref_object_copy__16;
  v52 = __Block_byref_object_dispose__16;
  v53 = MEMORY[0x1E69E5928](selfCopy);
  v46 = _os_activity_create(&dword_193225000, "authkit/custodian-finalize-custodian", MEMORY[0x1E69E9C00], OS_ACTIVITY_FLAG_DEFAULT);
  v47 = v46;
  state.opaque[0] = 0;
  state.opaque[1] = 0;
  os_activity_scope_enter(v46, &state);
  v44 = 0uLL;
  v11 = _AKSignpostLogSystem();
  *&v12 = _AKSignpostCreate(v11);
  *(&v12 + 1) = v4;
  v43 = v12;
  MEMORY[0x1E69E5920](v11);
  v42 = _AKSignpostLogSystem();
  v41 = 1;
  v40 = v12;
  if (v12 && v40 != -1 && os_signpost_enabled(v42))
  {
    log = v42;
    type = v41;
    spid = v40;
    __os_log_helper_16_0_0(v39);
    _os_signpost_emit_with_name_impl(&dword_193225000, log, type, spid, "CustodianSetupFinalize", " enableTelemetry=YES ", v39, 2u);
  }

  objc_storeStrong(&v42, 0);
  oslog = _AKSignpostLogSystem();
  v37 = OS_LOG_TYPE_DEFAULT;
  if (os_log_type_enabled(oslog, OS_LOG_TYPE_DEFAULT))
  {
    __os_log_helper_16_0_1_8_0(v58, v43);
    _os_log_impl(&dword_193225000, oslog, v37, "BEGIN [%lld]: CustodianSetupFinalize  enableTelemetry=YES ", v58, 0xCu);
  }

  objc_storeStrong(&oslog, 0);
  v44 = v43;
  v29 = MEMORY[0x1E69E9820];
  v30 = -1073741824;
  v31 = 0;
  v32 = __70__AKCustodianController_finalizeCustodianSetupWithContext_completion___block_invoke;
  v33 = &unk_1E73D6D20;
  v35 = v43;
  v34[1] = v48;
  v34[0] = MEMORY[0x1E69E5928](v54);
  v36 = MEMORY[0x193B165F0](&v29);
  daemonConnection = selfCopy->_daemonConnection;
  v22 = MEMORY[0x1E69E9820];
  v23 = -1073741824;
  v24 = 0;
  v25 = __70__AKCustodianController_finalizeCustodianSetupWithContext_completion___block_invoke_4;
  v26 = &unk_1E73D3510;
  v27 = MEMORY[0x1E69E5928](v36);
  v28 = [(AKCustodianDaemonConnection *)daemonConnection remoteObjectProxyWithErrorHandler:&v22];
  v21 = _AKLogSystem();
  v20 = OS_LOG_TYPE_DEFAULT;
  if (os_log_type_enabled(v21, OS_LOG_TYPE_DEFAULT))
  {
    __os_log_helper_16_2_1_8_64(v57, location[0]);
    _os_log_impl(&dword_193225000, v21, v20, "Calling out to remote custodian service to finalize custodian for context %@", v57, 0xCu);
  }

  objc_storeStrong(&v21, 0);
  v6 = v28;
  v5 = location[0];
  v14 = MEMORY[0x1E69E9820];
  v15 = -1073741824;
  v16 = 0;
  v17 = __70__AKCustodianController_finalizeCustodianSetupWithContext_completion___block_invoke_5;
  v18 = &unk_1E73D3510;
  v19 = MEMORY[0x1E69E5928](v36);
  [v6 finalizeCustodianSetupWithContext:v5 completion:&v14];
  objc_storeStrong(&v19, 0);
  objc_storeStrong(&v28, 0);
  objc_storeStrong(&v27, 0);
  objc_storeStrong(&v36, 0);
  objc_storeStrong(v34, 0);
  os_activity_scope_leave(&state);
  objc_storeStrong(&v47, 0);
  _Block_object_dispose(v48, 8);
  objc_storeStrong(&v53, 0);
  objc_storeStrong(&v54, 0);
  objc_storeStrong(location, 0);
  *MEMORY[0x1E69E9840];
}

void __70__AKCustodianController_finalizeCustodianSetupWithContext_completion___block_invoke(void *a1, void *a2)
{
  v15 = *MEMORY[0x1E69E9840];
  location[1] = a1;
  location[0] = 0;
  objc_storeStrong(location, a2);
  v12 = a1;
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
    _os_signpost_emit_with_name_impl(&dword_193225000, log, type, spid, "CustodianSetupFinalize", "", v7, 2u);
  }

  objc_storeStrong(&v10, 0);
  oslog = _AKSignpostLogSystem();
  if (os_log_type_enabled(oslog, OS_LOG_TYPE_DEFAULT))
  {
    __os_log_helper_16_0_2_8_0_8_0(v14, a1[6], *&v11);
    _os_log_impl(&dword_193225000, oslog, OS_LOG_TYPE_DEFAULT, "END [%lld] %fs:CustodianSetupFinalize ", v14, 0x16u);
  }

  objc_storeStrong(&oslog, 0);
  objc_storeStrong((*(a1[5] + 8) + 40), 0);
  if (a1[4])
  {
    (*(a1[4] + 16))();
  }

  objc_storeStrong(location, 0);
  *MEMORY[0x1E69E9840];
}

void __70__AKCustodianController_finalizeCustodianSetupWithContext_completion___block_invoke_4(NSObject *a1, void *a2)
{
  v6 = *MEMORY[0x1E69E9840];
  location[1] = a1;
  location[0] = 0;
  objc_storeStrong(location, a2);
  oslog[1] = a1;
  oslog[0] = _AKLogSystem();
  if (os_log_type_enabled(oslog[0], OS_LOG_TYPE_ERROR))
  {
    __os_log_helper_16_2_1_8_66(v5, location[0]);
    _os_log_error_impl(&dword_193225000, oslog[0], OS_LOG_TYPE_ERROR, "Finalized Custodian setup with remote custodian service returned an error: %{public}@", v5, 0xCu);
  }

  objc_storeStrong(oslog, 0);
  (*(a1[4].isa + 2))();
  objc_storeStrong(location, 0);
  *MEMORY[0x1E69E9840];
}

void __70__AKCustodianController_finalizeCustodianSetupWithContext_completion___block_invoke_5(void *a1, void *a2)
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
      _os_log_error_impl(&dword_193225000, v9[0], v8, "Error finalizing custodianship: %{public}@", v11, 0xCu);
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
      _os_log_impl(&dword_193225000, v2, v3, "Successfully finalized custodianship.", v5, 2u);
    }

    objc_storeStrong(&oslog, 0);
  }

  (*(a1[4] + 16))();
  objc_storeStrong(location, 0);
  *MEMORY[0x1E69E9840];
}

- (void)revokeCustodianWithContext:(id)context completion:(id)completion
{
  v43 = *MEMORY[0x1E69E9840];
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, context);
  v39 = 0;
  objc_storeStrong(&v39, completion);
  v33[0] = 0;
  v33[1] = v33;
  v34 = 838860800;
  v35 = 48;
  v36 = __Block_byref_object_copy__16;
  v37 = __Block_byref_object_dispose__16;
  v38 = MEMORY[0x1E69E5928](selfCopy);
  v31 = _os_activity_create(&dword_193225000, "authkit/custodian-revoke-custodian", MEMORY[0x1E69E9C00], OS_ACTIVITY_FLAG_DEFAULT);
  v32 = v31;
  state.opaque[0] = 0;
  state.opaque[1] = 0;
  os_activity_scope_enter(v31, &state);
  v23 = MEMORY[0x1E69E9820];
  v24 = -1073741824;
  v25 = 0;
  v26 = __63__AKCustodianController_revokeCustodianWithContext_completion___block_invoke;
  v27 = &unk_1E73D3DB8;
  v28[1] = v33;
  v28[0] = MEMORY[0x1E69E5928](v39);
  v29 = MEMORY[0x193B165F0](&v23);
  daemonConnection = selfCopy->_daemonConnection;
  v16 = MEMORY[0x1E69E9820];
  v17 = -1073741824;
  v18 = 0;
  v19 = __63__AKCustodianController_revokeCustodianWithContext_completion___block_invoke_2;
  v20 = &unk_1E73D3510;
  v21 = MEMORY[0x1E69E5928](v29);
  v22 = [(AKCustodianDaemonConnection *)daemonConnection remoteObjectProxyWithErrorHandler:&v16];
  oslog = _AKLogSystem();
  type = OS_LOG_TYPE_DEFAULT;
  if (os_log_type_enabled(oslog, OS_LOG_TYPE_DEFAULT))
  {
    __os_log_helper_16_2_1_8_64(v42, location[0]);
    _os_log_impl(&dword_193225000, oslog, type, "Calling out to remote custodian service to revoke custodian for context %@", v42, 0xCu);
  }

  objc_storeStrong(&oslog, 0);
  v5 = v22;
  v4 = location[0];
  v8 = MEMORY[0x1E69E9820];
  v9 = -1073741824;
  v10 = 0;
  v11 = __63__AKCustodianController_revokeCustodianWithContext_completion___block_invoke_6;
  v12 = &unk_1E73D3510;
  v13 = MEMORY[0x1E69E5928](v29);
  [v5 revokeCustodianWithContext:v4 completion:&v8];
  objc_storeStrong(&v13, 0);
  objc_storeStrong(&v22, 0);
  objc_storeStrong(&v21, 0);
  objc_storeStrong(&v29, 0);
  objc_storeStrong(v28, 0);
  os_activity_scope_leave(&state);
  objc_storeStrong(&v32, 0);
  _Block_object_dispose(v33, 8);
  objc_storeStrong(&v38, 0);
  objc_storeStrong(&v39, 0);
  objc_storeStrong(location, 0);
  *MEMORY[0x1E69E9840];
}

void __63__AKCustodianController_revokeCustodianWithContext_completion___block_invoke(void *a1, void *a2)
{
  location[1] = a1;
  location[0] = 0;
  objc_storeStrong(location, a2);
  objc_storeStrong((*(a1[5] + 8) + 40), 0);
  if (a1[4])
  {
    (*(a1[4] + 16))();
  }

  objc_storeStrong(location, 0);
}

void __63__AKCustodianController_revokeCustodianWithContext_completion___block_invoke_2(NSObject *a1, void *a2)
{
  v6 = *MEMORY[0x1E69E9840];
  location[1] = a1;
  location[0] = 0;
  objc_storeStrong(location, a2);
  oslog[1] = a1;
  oslog[0] = _AKLogSystem();
  if (os_log_type_enabled(oslog[0], OS_LOG_TYPE_ERROR))
  {
    __os_log_helper_16_2_1_8_66(v5, location[0]);
    _os_log_error_impl(&dword_193225000, oslog[0], OS_LOG_TYPE_ERROR, "Revoke custodian with remote custodian service returned an error: %{public}@", v5, 0xCu);
  }

  objc_storeStrong(oslog, 0);
  (*(a1[4].isa + 2))();
  objc_storeStrong(location, 0);
  *MEMORY[0x1E69E9840];
}

void __63__AKCustodianController_revokeCustodianWithContext_completion___block_invoke_6(void *a1, void *a2)
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
      _os_log_error_impl(&dword_193225000, v9[0], v8, "Error revoking custodianship: %{public}@", v11, 0xCu);
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
      _os_log_impl(&dword_193225000, v2, v3, "Successfully revoked custodianship.", v5, 2u);
    }

    objc_storeStrong(&oslog, 0);
  }

  (*(a1[4] + 16))();
  objc_storeStrong(location, 0);
  *MEMORY[0x1E69E9840];
}

- (void)updateCustodianRecoveryKeyWithContext:(id)context completion:(id)completion
{
  v43 = *MEMORY[0x1E69E9840];
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, context);
  v39 = 0;
  objc_storeStrong(&v39, completion);
  v33[0] = 0;
  v33[1] = v33;
  v34 = 838860800;
  v35 = 48;
  v36 = __Block_byref_object_copy__16;
  v37 = __Block_byref_object_dispose__16;
  v38 = MEMORY[0x1E69E5928](selfCopy);
  v31 = _os_activity_create(&dword_193225000, "authkit/custodian-update-key", MEMORY[0x1E69E9C00], OS_ACTIVITY_FLAG_DEFAULT);
  v32 = v31;
  state.opaque[0] = 0;
  state.opaque[1] = 0;
  os_activity_scope_enter(v31, &state);
  v23 = MEMORY[0x1E69E9820];
  v24 = -1073741824;
  v25 = 0;
  v26 = __74__AKCustodianController_updateCustodianRecoveryKeyWithContext_completion___block_invoke;
  v27 = &unk_1E73D3DB8;
  v28[1] = v33;
  v28[0] = MEMORY[0x1E69E5928](v39);
  v29 = MEMORY[0x193B165F0](&v23);
  daemonConnection = selfCopy->_daemonConnection;
  v16 = MEMORY[0x1E69E9820];
  v17 = -1073741824;
  v18 = 0;
  v19 = __74__AKCustodianController_updateCustodianRecoveryKeyWithContext_completion___block_invoke_2;
  v20 = &unk_1E73D3510;
  v21 = MEMORY[0x1E69E5928](v29);
  v22 = [(AKCustodianDaemonConnection *)daemonConnection remoteObjectProxyWithErrorHandler:&v16];
  oslog = _AKLogSystem();
  type = OS_LOG_TYPE_DEFAULT;
  if (os_log_type_enabled(oslog, OS_LOG_TYPE_DEFAULT))
  {
    __os_log_helper_16_2_1_8_64(v42, location[0]);
    _os_log_impl(&dword_193225000, oslog, type, "Updating idMS recovery key with context %@", v42, 0xCu);
  }

  objc_storeStrong(&oslog, 0);
  v5 = v22;
  v4 = location[0];
  v8 = MEMORY[0x1E69E9820];
  v9 = -1073741824;
  v10 = 0;
  v11 = __74__AKCustodianController_updateCustodianRecoveryKeyWithContext_completion___block_invoke_7;
  v12 = &unk_1E73D3510;
  v13 = MEMORY[0x1E69E5928](v29);
  [v5 updateCustodianRecoveryKeyWithContext:v4 completion:&v8];
  objc_storeStrong(&v13, 0);
  objc_storeStrong(&v22, 0);
  objc_storeStrong(&v21, 0);
  objc_storeStrong(&v29, 0);
  objc_storeStrong(v28, 0);
  os_activity_scope_leave(&state);
  objc_storeStrong(&v32, 0);
  _Block_object_dispose(v33, 8);
  objc_storeStrong(&v38, 0);
  objc_storeStrong(&v39, 0);
  objc_storeStrong(location, 0);
  *MEMORY[0x1E69E9840];
}

void __74__AKCustodianController_updateCustodianRecoveryKeyWithContext_completion___block_invoke(void *a1, void *a2)
{
  location[1] = a1;
  location[0] = 0;
  objc_storeStrong(location, a2);
  objc_storeStrong((*(a1[5] + 8) + 40), 0);
  if (a1[4])
  {
    (*(a1[4] + 16))();
  }

  objc_storeStrong(location, 0);
}

void __74__AKCustodianController_updateCustodianRecoveryKeyWithContext_completion___block_invoke_2(NSObject *a1, void *a2)
{
  v6 = *MEMORY[0x1E69E9840];
  location[1] = a1;
  location[0] = 0;
  objc_storeStrong(location, a2);
  oslog[1] = a1;
  oslog[0] = _AKLogSystem();
  if (os_log_type_enabled(oslog[0], OS_LOG_TYPE_ERROR))
  {
    __os_log_helper_16_2_1_8_66(v5, location[0]);
    _os_log_error_impl(&dword_193225000, oslog[0], OS_LOG_TYPE_ERROR, "Update recovery key returned an error: %{public}@", v5, 0xCu);
  }

  objc_storeStrong(oslog, 0);
  (*(a1[4].isa + 2))();
  objc_storeStrong(location, 0);
  *MEMORY[0x1E69E9840];
}

void __74__AKCustodianController_updateCustodianRecoveryKeyWithContext_completion___block_invoke_7(void *a1, void *a2)
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
      _os_log_error_impl(&dword_193225000, v9[0], v8, "Error updating recovery key: %{public}@", v11, 0xCu);
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
      _os_log_impl(&dword_193225000, v2, v3, "Successfully updated recovery key with idMS.", v5, 2u);
    }

    objc_storeStrong(&oslog, 0);
  }

  (*(a1[4] + 16))();
  objc_storeStrong(location, 0);
  *MEMORY[0x1E69E9840];
}

- (void)startCustodianRecoveryRequestWithContext:(id)context completion:(id)completion
{
  v47 = *MEMORY[0x1E69E9840];
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, context);
  v43 = 0;
  objc_storeStrong(&v43, completion);
  v41 = _os_activity_create(&dword_193225000, "custodian-authkit/start-custodian-recovery", MEMORY[0x1E69E9C00], OS_ACTIVITY_FLAG_DEFAULT);
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
    _os_signpost_emit_with_name_impl(&dword_193225000, log, type, spid, "CustodianRecoveryStart", " enableTelemetry=YES ", v34, 2u);
  }

  objc_storeStrong(&v37, 0);
  v33 = _AKSignpostLogSystem();
  v32 = OS_LOG_TYPE_DEFAULT;
  if (os_log_type_enabled(v33, OS_LOG_TYPE_DEFAULT))
  {
    __os_log_helper_16_0_1_8_0(v46, v38);
    _os_log_impl(&dword_193225000, v33, v32, "BEGIN [%lld]: CustodianRecoveryStart  enableTelemetry=YES ", v46, 0xCu);
  }

  objc_storeStrong(&v33, 0);
  v39 = v38;
  v26[0] = 0;
  v26[1] = v26;
  v27 = 838860800;
  v28 = 48;
  v29 = __Block_byref_object_copy__16;
  v30 = __Block_byref_object_dispose__16;
  v31 = MEMORY[0x1E69E5928](selfCopy);
  v18 = MEMORY[0x1E69E9820];
  v19 = -1073741824;
  v20 = 0;
  v21 = __77__AKCustodianController_startCustodianRecoveryRequestWithContext_completion___block_invoke;
  v22 = &unk_1E73D97B0;
  v24 = v39;
  v23[1] = v26;
  v23[0] = MEMORY[0x1E69E5928](v43);
  v25 = MEMORY[0x193B165F0](&v18);
  daemonConnection = selfCopy->_daemonConnection;
  v11 = MEMORY[0x1E69E9820];
  v12 = -1073741824;
  v13 = 0;
  v14 = __77__AKCustodianController_startCustodianRecoveryRequestWithContext_completion___block_invoke_9;
  v15 = &unk_1E73D3510;
  v16 = MEMORY[0x1E69E5928](v25);
  v17 = [(AKCustodianDaemonConnection *)daemonConnection remoteObjectProxyWithErrorHandler:&v11];
  [v17 startCustodianRecoveryRequestWithContext:location[0] completion:v25];
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

void __77__AKCustodianController_startCustodianRecoveryRequestWithContext_completion___block_invoke(void *a1, void *a2, void *a3)
{
  v24 = *MEMORY[0x1E69E9840];
  location[1] = a1;
  location[0] = 0;
  objc_storeStrong(location, a2);
  v19 = 0;
  objc_storeStrong(&v19, a3);
  v18 = a1;
  v17 = _AKSignpostGetNanoseconds(a1[6], a1[7]) / 1000000000.0;
  v16 = _AKSignpostLogSystem();
  v15 = 2;
  v14 = a1[6];
  if (v14 && v14 != -1 && os_signpost_enabled(v16))
  {
    log = v16;
    type = v15;
    spid = v14;
    __os_log_helper_16_0_0(v13);
    _os_signpost_emit_with_name_impl(&dword_193225000, log, type, spid, "CustodianRecoveryStart", "", v13, 2u);
  }

  objc_storeStrong(&v16, 0);
  v12 = _AKSignpostLogSystem();
  v11 = OS_LOG_TYPE_DEFAULT;
  if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
  {
    __os_log_helper_16_0_2_8_0_8_0(v23, a1[6], *&v17);
    _os_log_impl(&dword_193225000, v12, v11, "END [%lld] %fs:CustodianRecoveryStart ", v23, 0x16u);
  }

  objc_storeStrong(&v12, 0);
  if (location[0])
  {
    oslog = _AKLogSystem();
    v9 = OS_LOG_TYPE_DEFAULT;
    if (os_log_type_enabled(oslog, OS_LOG_TYPE_DEFAULT))
    {
      __os_log_helper_16_2_1_8_64(v22, location[0]);
      _os_log_impl(&dword_193225000, oslog, v9, "startCustodianRecoveryRequestWithContext completed with response: %@", v22, 0xCu);
    }

    objc_storeStrong(&oslog, 0);
  }

  else
  {
    v8 = _AKLogSystem();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      __os_log_helper_16_2_1_8_66(v21, v19);
      _os_log_error_impl(&dword_193225000, v8, OS_LOG_TYPE_ERROR, "startCustodianRecoveryRequestWithContext completed with error: %{public}@", v21, 0xCu);
    }

    objc_storeStrong(&v8, 0);
  }

  objc_storeStrong((*(a1[5] + 8) + 40), 0);
  (*(a1[4] + 16))();
  objc_storeStrong(&v19, 0);
  objc_storeStrong(location, 0);
  *MEMORY[0x1E69E9840];
}

void __77__AKCustodianController_startCustodianRecoveryRequestWithContext_completion___block_invoke_9(void *a1, void *a2)
{
  location[1] = a1;
  location[0] = 0;
  objc_storeStrong(location, a2);
  (*(a1[4] + 16))();
  objc_storeStrong(location, 0);
}

- (void)fetchCustodianRecoveryCodeConfigurationWithCompletion:(id)completion
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, completion);
  v25 = _os_activity_create(&dword_193225000, "custodian-authkit/fetch-code-config", MEMORY[0x1E69E9C00], OS_ACTIVITY_FLAG_DEFAULT);
  v26 = v25;
  state.opaque[0] = 0;
  state.opaque[1] = 0;
  os_activity_scope_enter(v25, &state);
  v18[0] = 0;
  v18[1] = v18;
  v19 = 838860800;
  v20 = 48;
  v21 = __Block_byref_object_copy__16;
  v22 = __Block_byref_object_dispose__16;
  v23 = MEMORY[0x1E69E5928](selfCopy);
  v11 = MEMORY[0x1E69E9820];
  v12 = -1073741824;
  v13 = 0;
  v14 = __79__AKCustodianController_fetchCustodianRecoveryCodeConfigurationWithCompletion___block_invoke;
  v15 = &unk_1E73D3A70;
  v16[1] = v18;
  v16[0] = MEMORY[0x1E69E5928](location[0]);
  v17 = MEMORY[0x193B165F0](&v11);
  daemonConnection = selfCopy->_daemonConnection;
  v4 = MEMORY[0x1E69E9820];
  v5 = -1073741824;
  v6 = 0;
  v7 = __79__AKCustodianController_fetchCustodianRecoveryCodeConfigurationWithCompletion___block_invoke_10;
  v8 = &unk_1E73D3510;
  v9 = MEMORY[0x1E69E5928](v17);
  v10 = [(AKCustodianDaemonConnection *)daemonConnection remoteObjectProxyWithErrorHandler:&v4];
  [v10 fetchCustodianRecoveryCodeConfigurationWithCompletion:v17];
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

void __79__AKCustodianController_fetchCustodianRecoveryCodeConfigurationWithCompletion___block_invoke(void *a1, void *a2, void *a3)
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
    v7[0] = _AKLogSystem();
    v6 = OS_LOG_TYPE_DEFAULT;
    if (os_log_type_enabled(v7[0], OS_LOG_TYPE_DEFAULT))
    {
      __os_log_helper_16_2_1_8_64(v11, location[0]);
      _os_log_impl(&dword_193225000, v7[0], v6, "fetchCustodianRecoveryCodeConfiguration completed with result: %@", v11, 0xCu);
    }

    objc_storeStrong(v7, 0);
  }

  else
  {
    oslog = _AKLogSystem();
    if (os_log_type_enabled(oslog, OS_LOG_TYPE_ERROR))
    {
      __os_log_helper_16_2_1_8_66(v10, v8);
      _os_log_error_impl(&dword_193225000, oslog, OS_LOG_TYPE_ERROR, "Failed to fetch custodian recovery code configuration with error: %{public}@", v10, 0xCu);
    }

    objc_storeStrong(&oslog, 0);
  }

  objc_storeStrong((*(a1[5] + 8) + 40), 0);
  (*(a1[4] + 16))();
  objc_storeStrong(&v8, 0);
  objc_storeStrong(location, 0);
  *MEMORY[0x1E69E9840];
}

void __79__AKCustodianController_fetchCustodianRecoveryCodeConfigurationWithCompletion___block_invoke_10(void *a1, void *a2)
{
  location[1] = a1;
  location[0] = 0;
  objc_storeStrong(location, a2);
  (*(a1[4] + 16))();
  objc_storeStrong(location, 0);
}

- (void)startCustodianRecoveryTransactionWithContext:(id)context completion:(id)completion
{
  v48 = *MEMORY[0x1E69E9840];
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, context);
  v43 = 0;
  objc_storeStrong(&v43, completion);
  v41 = _os_activity_create(&dword_193225000, "custodian-authkit/custodian-recovery-circle", MEMORY[0x1E69E9C00], OS_ACTIVITY_FLAG_DEFAULT);
  v42 = v41;
  state.opaque[0] = 0;
  state.opaque[1] = 0;
  os_activity_scope_enter(v41, &state);
  v39 = 0uLL;
  v9 = _AKSignpostLogSystem();
  *&v10 = _AKSignpostCreate(v9);
  *(&v10 + 1) = v4;
  v38 = v10;
  MEMORY[0x1E69E5920](v9);
  v37 = _AKSignpostLogSystem();
  v36 = OS_SIGNPOST_INTERVAL_BEGIN;
  v35 = v10;
  if (v10 && v35 != -1 && os_signpost_enabled(v37))
  {
    recoverySessionID = [location[0] recoverySessionID];
    __os_log_helper_16_2_1_8_66(v47, recoverySessionID);
    _os_signpost_emit_with_name_impl(&dword_193225000, v37, v36, v35, "CustodianRecoveryMessage", " RecoverySessionID=%{public,signpost.telemetry:string1,name=RecoverySessionID}@  enableTelemetry=YES ", v47, 0xCu);
    MEMORY[0x1E69E5920](recoverySessionID);
  }

  objc_storeStrong(&v37, 0);
  v34 = _AKSignpostLogSystem();
  v33 = OS_LOG_TYPE_DEFAULT;
  if (os_log_type_enabled(v34, OS_LOG_TYPE_DEFAULT))
  {
    v7 = v38;
    recoverySessionID2 = [location[0] recoverySessionID];
    __os_log_helper_16_2_2_8_0_8_66(v46, v7, recoverySessionID2);
    _os_log_impl(&dword_193225000, v34, v33, "BEGIN [%lld]: CustodianRecoveryMessage  RecoverySessionID=%{public,signpost.telemetry:string1,name=RecoverySessionID}@  enableTelemetry=YES ", v46, 0x16u);
    MEMORY[0x1E69E5920](recoverySessionID2);
  }

  objc_storeStrong(&v34, 0);
  v39 = v38;
  v27[0] = 0;
  v27[1] = v27;
  v28 = 838860800;
  v29 = 48;
  v30 = __Block_byref_object_copy__16;
  v31 = __Block_byref_object_dispose__16;
  v32 = MEMORY[0x1E69E5928](selfCopy);
  v19 = MEMORY[0x1E69E9820];
  v20 = -1073741824;
  v21 = 0;
  v22 = __81__AKCustodianController_startCustodianRecoveryTransactionWithContext_completion___block_invoke;
  v23 = &unk_1E73D6CD0;
  v25 = v39;
  v24[1] = v27;
  v24[0] = MEMORY[0x1E69E5928](v43);
  v26 = MEMORY[0x193B165F0](&v19);
  daemonConnection = selfCopy->_daemonConnection;
  v12 = MEMORY[0x1E69E9820];
  v13 = -1073741824;
  v14 = 0;
  v15 = __81__AKCustodianController_startCustodianRecoveryTransactionWithContext_completion___block_invoke_12;
  v16 = &unk_1E73D3510;
  v17 = MEMORY[0x1E69E5928](v26);
  v18 = [(AKCustodianDaemonConnection *)daemonConnection remoteObjectProxyWithErrorHandler:&v12];
  [v18 startCustodianRecoveryTransactionWithContext:location[0] completion:v26];
  objc_storeStrong(&v18, 0);
  objc_storeStrong(&v17, 0);
  objc_storeStrong(&v26, 0);
  objc_storeStrong(v24, 0);
  _Block_object_dispose(v27, 8);
  objc_storeStrong(&v32, 0);
  os_activity_scope_leave(&state);
  objc_storeStrong(&v42, 0);
  objc_storeStrong(&v43, 0);
  objc_storeStrong(location, 0);
  *MEMORY[0x1E69E9840];
}

void __81__AKCustodianController_startCustodianRecoveryTransactionWithContext_completion___block_invoke(void *a1, char a2, id obj)
{
  v26 = *MEMORY[0x1E69E9840];
  v23 = a1;
  v22 = a2;
  location = 0;
  objc_storeStrong(&location, obj);
  v20 = a1;
  v19 = _AKSignpostGetNanoseconds(a1[6], a1[7]) / 1000000000.0;
  v18 = _AKSignpostLogSystem();
  v17 = 2;
  v16 = a1[6];
  if (v16 && v16 != -1 && os_signpost_enabled(v18))
  {
    log = v18;
    type = v17;
    spid = v16;
    __os_log_helper_16_0_0(v15);
    _os_signpost_emit_with_name_impl(&dword_193225000, log, type, spid, "CustodianRecoveryMessage", "", v15, 2u);
  }

  objc_storeStrong(&v18, 0);
  v14 = _AKSignpostLogSystem();
  v13 = OS_LOG_TYPE_DEFAULT;
  if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
  {
    __os_log_helper_16_0_2_8_0_8_0(v25, a1[6], *&v19);
    _os_log_impl(&dword_193225000, v14, v13, "END [%lld] %fs:CustodianRecoveryMessage ", v25, 0x16u);
  }

  objc_storeStrong(&v14, 0);
  if (v22)
  {
    oslog = _AKLogSystem();
    v11 = OS_LOG_TYPE_DEFAULT;
    if (os_log_type_enabled(oslog, OS_LOG_TYPE_DEFAULT))
    {
      v3 = oslog;
      v4 = v11;
      __os_log_helper_16_0_0(v10);
      _os_log_impl(&dword_193225000, v3, v4, "startCustodianRecoveryTransactionWithContext completed successfully", v10, 2u);
    }

    objc_storeStrong(&oslog, 0);
  }

  else
  {
    v9 = _AKLogSystem();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      __os_log_helper_16_2_1_8_66(v24, location);
      _os_log_error_impl(&dword_193225000, v9, OS_LOG_TYPE_ERROR, "startCustodianRecoveryTransactionWithContext completed with error: %{public}@", v24, 0xCu);
    }

    objc_storeStrong(&v9, 0);
  }

  objc_storeStrong((*(a1[5] + 8) + 40), 0);
  (*(a1[4] + 16))();
  objc_storeStrong(&location, 0);
  *MEMORY[0x1E69E9840];
}

void __81__AKCustodianController_startCustodianRecoveryTransactionWithContext_completion___block_invoke_12(NSObject *a1, void *a2)
{
  v6 = *MEMORY[0x1E69E9840];
  location[1] = a1;
  location[0] = 0;
  objc_storeStrong(location, a2);
  oslog[1] = a1;
  oslog[0] = _AKLogSystem();
  if (os_log_type_enabled(oslog[0], OS_LOG_TYPE_ERROR))
  {
    __os_log_helper_16_2_1_8_64(v5, location[0]);
    _os_log_error_impl(&dword_193225000, oslog[0], OS_LOG_TYPE_ERROR, "XPC Connection failed or interrupted with error: %@ on call: startCustodianRecoveryTransactionWithContext", v5, 0xCu);
  }

  objc_storeStrong(oslog, 0);
  (*(a1[4].isa + 2))();
  objc_storeStrong(location, 0);
  *MEMORY[0x1E69E9840];
}

- (void)fetchCustodianRecoveryTokenWithContext:(id)context completion:(id)completion
{
  v48 = *MEMORY[0x1E69E9840];
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, context);
  v43 = 0;
  objc_storeStrong(&v43, completion);
  v41 = _os_activity_create(&dword_193225000, "custodian-authkit/fetch-recovery-token", MEMORY[0x1E69E9C00], OS_ACTIVITY_FLAG_DEFAULT);
  v42 = v41;
  state.opaque[0] = 0;
  state.opaque[1] = 0;
  os_activity_scope_enter(v41, &state);
  v39 = 0uLL;
  v9 = _AKSignpostLogSystem();
  *&v10 = _AKSignpostCreate(v9);
  *(&v10 + 1) = v4;
  v38 = v10;
  MEMORY[0x1E69E5920](v9);
  v37 = _AKSignpostLogSystem();
  v36 = OS_SIGNPOST_INTERVAL_BEGIN;
  v35 = v10;
  if (v10 && v35 != -1 && os_signpost_enabled(v37))
  {
    recoverySessionID = [location[0] recoverySessionID];
    __os_log_helper_16_2_1_8_66(v47, recoverySessionID);
    _os_signpost_emit_with_name_impl(&dword_193225000, v37, v36, v35, "CustodianRecoveryToken", " RecoverySessionID=%{public,signpost.telemetry:string1,name=RecoverySessionID}@  enableTelemetry=YES ", v47, 0xCu);
    MEMORY[0x1E69E5920](recoverySessionID);
  }

  objc_storeStrong(&v37, 0);
  v34 = _AKSignpostLogSystem();
  v33 = OS_LOG_TYPE_DEFAULT;
  if (os_log_type_enabled(v34, OS_LOG_TYPE_DEFAULT))
  {
    v7 = v38;
    recoverySessionID2 = [location[0] recoverySessionID];
    __os_log_helper_16_2_2_8_0_8_66(v46, v7, recoverySessionID2);
    _os_log_impl(&dword_193225000, v34, v33, "BEGIN [%lld]: CustodianRecoveryToken  RecoverySessionID=%{public,signpost.telemetry:string1,name=RecoverySessionID}@  enableTelemetry=YES ", v46, 0x16u);
    MEMORY[0x1E69E5920](recoverySessionID2);
  }

  objc_storeStrong(&v34, 0);
  v39 = v38;
  v27[0] = 0;
  v27[1] = v27;
  v28 = 838860800;
  v29 = 48;
  v30 = __Block_byref_object_copy__16;
  v31 = __Block_byref_object_dispose__16;
  v32 = MEMORY[0x1E69E5928](selfCopy);
  v19 = MEMORY[0x1E69E9820];
  v20 = -1073741824;
  v21 = 0;
  v22 = __75__AKCustodianController_fetchCustodianRecoveryTokenWithContext_completion___block_invoke;
  v23 = &unk_1E73D6CF8;
  v25 = v39;
  v24[1] = v27;
  v24[0] = MEMORY[0x1E69E5928](v43);
  v26 = MEMORY[0x193B165F0](&v19);
  daemonConnection = selfCopy->_daemonConnection;
  v12 = MEMORY[0x1E69E9820];
  v13 = -1073741824;
  v14 = 0;
  v15 = __75__AKCustodianController_fetchCustodianRecoveryTokenWithContext_completion___block_invoke_14;
  v16 = &unk_1E73D3510;
  v17 = MEMORY[0x1E69E5928](v26);
  v18 = [(AKCustodianDaemonConnection *)daemonConnection remoteObjectProxyWithErrorHandler:&v12];
  [v18 fetchCustodianRecoveryTokenWithContext:location[0] completion:v26];
  objc_storeStrong(&v18, 0);
  objc_storeStrong(&v17, 0);
  objc_storeStrong(&v26, 0);
  objc_storeStrong(v24, 0);
  _Block_object_dispose(v27, 8);
  objc_storeStrong(&v32, 0);
  os_activity_scope_leave(&state);
  objc_storeStrong(&v42, 0);
  objc_storeStrong(&v43, 0);
  objc_storeStrong(location, 0);
  *MEMORY[0x1E69E9840];
}

void __75__AKCustodianController_fetchCustodianRecoveryTokenWithContext_completion___block_invoke(void *a1, void *a2, void *a3)
{
  v24 = *MEMORY[0x1E69E9840];
  location[1] = a1;
  location[0] = 0;
  objc_storeStrong(location, a2);
  v19 = 0;
  objc_storeStrong(&v19, a3);
  v18 = a1;
  v17 = _AKSignpostGetNanoseconds(a1[6], a1[7]) / 1000000000.0;
  v16 = _AKSignpostLogSystem();
  v15 = 2;
  v14 = a1[6];
  if (v14 && v14 != -1 && os_signpost_enabled(v16))
  {
    log = v16;
    type = v15;
    spid = v14;
    __os_log_helper_16_0_0(v13);
    _os_signpost_emit_with_name_impl(&dword_193225000, log, type, spid, "CustodianRecoveryToken", "", v13, 2u);
  }

  objc_storeStrong(&v16, 0);
  v12 = _AKSignpostLogSystem();
  v11 = OS_LOG_TYPE_DEFAULT;
  if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
  {
    __os_log_helper_16_0_2_8_0_8_0(v23, a1[6], *&v17);
    _os_log_impl(&dword_193225000, v12, v11, "END [%lld] %fs:CustodianRecoveryToken ", v23, 0x16u);
  }

  objc_storeStrong(&v12, 0);
  if (v19)
  {
    oslog = _AKLogSystem();
    v9 = OS_LOG_TYPE_ERROR;
    if (os_log_type_enabled(oslog, OS_LOG_TYPE_ERROR))
    {
      __os_log_helper_16_2_1_8_66(v22, v19);
      _os_log_error_impl(&dword_193225000, oslog, v9, "fetchCustodianRecoveryTokenWithContext completed with error: %{public}@", v22, 0xCu);
    }

    objc_storeStrong(&oslog, 0);
  }

  else
  {
    v8 = _AKLogSystem();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      __os_log_helper_16_2_1_8_64(v21, location[0]);
      _os_log_impl(&dword_193225000, v8, OS_LOG_TYPE_DEFAULT, "fetchCustodianRecoveryTokenWithContext completed with token: %@", v21, 0xCu);
    }

    objc_storeStrong(&v8, 0);
  }

  objc_storeStrong((*(a1[5] + 8) + 40), 0);
  (*(a1[4] + 16))();
  objc_storeStrong(&v19, 0);
  objc_storeStrong(location, 0);
  *MEMORY[0x1E69E9840];
}

void __75__AKCustodianController_fetchCustodianRecoveryTokenWithContext_completion___block_invoke_14(NSObject *a1, void *a2)
{
  v6 = *MEMORY[0x1E69E9840];
  location[1] = a1;
  location[0] = 0;
  objc_storeStrong(location, a2);
  oslog[1] = a1;
  oslog[0] = _AKLogSystem();
  if (os_log_type_enabled(oslog[0], OS_LOG_TYPE_ERROR))
  {
    __os_log_helper_16_2_1_8_64(v5, location[0]);
    _os_log_error_impl(&dword_193225000, oslog[0], OS_LOG_TYPE_ERROR, "XPC Connection failed or interrupted with error: %@ on call: fetchCustodianRecoveryTokenWithContext", v5, 0xCu);
  }

  objc_storeStrong(oslog, 0);
  (*(a1[4].isa + 2))();
  objc_storeStrong(location, 0);
  *MEMORY[0x1E69E9840];
}

- (void)fetchCustodianDataRecoveryKeyWithContext:(id)context completion:(id)completion
{
  v48 = *MEMORY[0x1E69E9840];
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, context);
  v43 = 0;
  objc_storeStrong(&v43, completion);
  v41 = _os_activity_create(&dword_193225000, "custodian-authkit/fetch-wrap-rkc", MEMORY[0x1E69E9C00], OS_ACTIVITY_FLAG_DEFAULT);
  v42 = v41;
  state.opaque[0] = 0;
  state.opaque[1] = 0;
  os_activity_scope_enter(v41, &state);
  v39 = 0uLL;
  v9 = _AKSignpostLogSystem();
  *&v10 = _AKSignpostCreate(v9);
  *(&v10 + 1) = v4;
  v38 = v10;
  MEMORY[0x1E69E5920](v9);
  v37 = _AKSignpostLogSystem();
  v36 = OS_SIGNPOST_INTERVAL_BEGIN;
  v35 = v10;
  if (v10 && v35 != -1 && os_signpost_enabled(v37))
  {
    recoverySessionID = [location[0] recoverySessionID];
    __os_log_helper_16_2_1_8_66(v47, recoverySessionID);
    _os_signpost_emit_with_name_impl(&dword_193225000, v37, v36, v35, "CustodianDataRecoveryKey", " RecoverySessionID=%{public,signpost.telemetry:string1,name=RecoverySessionID}@  enableTelemetry=YES ", v47, 0xCu);
    MEMORY[0x1E69E5920](recoverySessionID);
  }

  objc_storeStrong(&v37, 0);
  v34 = _AKSignpostLogSystem();
  v33 = OS_LOG_TYPE_DEFAULT;
  if (os_log_type_enabled(v34, OS_LOG_TYPE_DEFAULT))
  {
    v7 = v38;
    recoverySessionID2 = [location[0] recoverySessionID];
    __os_log_helper_16_2_2_8_0_8_66(v46, v7, recoverySessionID2);
    _os_log_impl(&dword_193225000, v34, v33, "BEGIN [%lld]: CustodianDataRecoveryKey  RecoverySessionID=%{public,signpost.telemetry:string1,name=RecoverySessionID}@  enableTelemetry=YES ", v46, 0x16u);
    MEMORY[0x1E69E5920](recoverySessionID2);
  }

  objc_storeStrong(&v34, 0);
  v39 = v38;
  v27[0] = 0;
  v27[1] = v27;
  v28 = 838860800;
  v29 = 48;
  v30 = __Block_byref_object_copy__16;
  v31 = __Block_byref_object_dispose__16;
  v32 = MEMORY[0x1E69E5928](selfCopy);
  v19 = MEMORY[0x1E69E9820];
  v20 = -1073741824;
  v21 = 0;
  v22 = __77__AKCustodianController_fetchCustodianDataRecoveryKeyWithContext_completion___block_invoke;
  v23 = &unk_1E73D97B0;
  v25 = v39;
  v24[1] = v27;
  v24[0] = MEMORY[0x1E69E5928](v43);
  v26 = MEMORY[0x193B165F0](&v19);
  daemonConnection = selfCopy->_daemonConnection;
  v12 = MEMORY[0x1E69E9820];
  v13 = -1073741824;
  v14 = 0;
  v15 = __77__AKCustodianController_fetchCustodianDataRecoveryKeyWithContext_completion___block_invoke_15;
  v16 = &unk_1E73D3510;
  v17 = MEMORY[0x1E69E5928](v26);
  v18 = [(AKCustodianDaemonConnection *)daemonConnection remoteObjectProxyWithErrorHandler:&v12];
  [v18 fetchCustodianDataRecoveryKeyWithContext:location[0] completion:v26];
  objc_storeStrong(&v18, 0);
  objc_storeStrong(&v17, 0);
  objc_storeStrong(&v26, 0);
  objc_storeStrong(v24, 0);
  _Block_object_dispose(v27, 8);
  objc_storeStrong(&v32, 0);
  os_activity_scope_leave(&state);
  objc_storeStrong(&v42, 0);
  objc_storeStrong(&v43, 0);
  objc_storeStrong(location, 0);
  *MEMORY[0x1E69E9840];
}

void __77__AKCustodianController_fetchCustodianDataRecoveryKeyWithContext_completion___block_invoke(void *a1, void *a2, void *a3)
{
  v24 = *MEMORY[0x1E69E9840];
  location[1] = a1;
  location[0] = 0;
  objc_storeStrong(location, a2);
  v19 = 0;
  objc_storeStrong(&v19, a3);
  v18 = a1;
  v17 = _AKSignpostGetNanoseconds(a1[6], a1[7]) / 1000000000.0;
  v16 = _AKSignpostLogSystem();
  v15 = 2;
  v14 = a1[6];
  if (v14 && v14 != -1 && os_signpost_enabled(v16))
  {
    log = v16;
    type = v15;
    spid = v14;
    __os_log_helper_16_0_0(v13);
    _os_signpost_emit_with_name_impl(&dword_193225000, log, type, spid, "CustodianDataRecoveryKey", "", v13, 2u);
  }

  objc_storeStrong(&v16, 0);
  v12 = _AKSignpostLogSystem();
  v11 = OS_LOG_TYPE_DEFAULT;
  if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
  {
    __os_log_helper_16_0_2_8_0_8_0(v23, a1[6], *&v17);
    _os_log_impl(&dword_193225000, v12, v11, "END [%lld] %fs:CustodianDataRecoveryKey ", v23, 0x16u);
  }

  objc_storeStrong(&v12, 0);
  if (location[0])
  {
    oslog = _AKLogSystem();
    v9 = OS_LOG_TYPE_DEFAULT;
    if (os_log_type_enabled(oslog, OS_LOG_TYPE_DEFAULT))
    {
      __os_log_helper_16_2_1_8_64(v22, location[0]);
      _os_log_impl(&dword_193225000, oslog, v9, "fetchCustodianDataRecoveryKey completed with response: %@", v22, 0xCu);
    }

    objc_storeStrong(&oslog, 0);
  }

  else
  {
    v8 = _AKLogSystem();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      __os_log_helper_16_2_1_8_66(v21, v19);
      _os_log_error_impl(&dword_193225000, v8, OS_LOG_TYPE_ERROR, "Failed to fetch custodian data recovery key with error: %{public}@", v21, 0xCu);
    }

    objc_storeStrong(&v8, 0);
  }

  objc_storeStrong((*(a1[5] + 8) + 40), 0);
  (*(a1[4] + 16))();
  objc_storeStrong(&v19, 0);
  objc_storeStrong(location, 0);
  *MEMORY[0x1E69E9840];
}

void __77__AKCustodianController_fetchCustodianDataRecoveryKeyWithContext_completion___block_invoke_15(NSObject *a1, void *a2)
{
  v6 = *MEMORY[0x1E69E9840];
  location[1] = a1;
  location[0] = 0;
  objc_storeStrong(location, a2);
  oslog[1] = a1;
  oslog[0] = _AKLogSystem();
  if (os_log_type_enabled(oslog[0], OS_LOG_TYPE_ERROR))
  {
    __os_log_helper_16_2_1_8_64(v5, location[0]);
    _os_log_error_impl(&dword_193225000, oslog[0], OS_LOG_TYPE_ERROR, "XPC Connection failed or interrupted with error: %@ on call: fetchCustodianDataRecoveryKeyWithContext", v5, 0xCu);
  }

  objc_storeStrong(oslog, 0);
  (*(a1[4].isa + 2))();
  objc_storeStrong(location, 0);
  *MEMORY[0x1E69E9840];
}

- (void)sendEmbargoEndNotificationFeedbackWithContext:(id)context urlKey:(id)key completion:(id)completion
{
  v39 = *MEMORY[0x1E69E9840];
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, context);
  v35 = 0;
  objc_storeStrong(&v35, key);
  v34 = 0;
  objc_storeStrong(&v34, completion);
  v32 = _os_activity_create(&dword_193225000, "custodian-authkit/embargo-feedback", MEMORY[0x1E69E9C00], OS_ACTIVITY_FLAG_DEFAULT);
  v33 = v32;
  state.opaque[0] = 0;
  state.opaque[1] = 0;
  os_activity_scope_enter(v32, &state);
  v30 = _AKLogSystem();
  v29 = OS_LOG_TYPE_DEFAULT;
  if (os_log_type_enabled(v30, OS_LOG_TYPE_DEFAULT))
  {
    __os_log_helper_16_2_1_8_64(v38, location[0]);
    _os_log_impl(&dword_193225000, v30, v29, "Starting call to send embargo end notification feedback to IdMS with context: %@", v38, 0xCu);
  }

  objc_storeStrong(&v30, 0);
  v23[0] = 0;
  v23[1] = v23;
  v24 = 838860800;
  v25 = 48;
  v26 = __Block_byref_object_copy__16;
  v27 = __Block_byref_object_dispose__16;
  v28 = MEMORY[0x1E69E5928](selfCopy);
  v15 = MEMORY[0x1E69E9820];
  v16 = -1073741824;
  v17 = 0;
  v18 = __89__AKCustodianController_sendEmbargoEndNotificationFeedbackWithContext_urlKey_completion___block_invoke;
  v19 = &unk_1E73D97D8;
  v20 = MEMORY[0x1E69E5928](location[0]);
  v21[1] = v23;
  v21[0] = MEMORY[0x1E69E5928](v34);
  v22 = MEMORY[0x193B165F0](&v15);
  daemonConnection = selfCopy->_daemonConnection;
  v8 = MEMORY[0x1E69E9820];
  v9 = -1073741824;
  v10 = 0;
  v11 = __89__AKCustodianController_sendEmbargoEndNotificationFeedbackWithContext_urlKey_completion___block_invoke_16;
  v12 = &unk_1E73D3510;
  v13 = MEMORY[0x1E69E5928](v22);
  v14 = [(AKCustodianDaemonConnection *)daemonConnection remoteObjectProxyWithErrorHandler:&v8];
  [v14 sendEmbargoEndNotificationFeedbackWithContext:location[0] urlKey:v35 completion:v22];
  objc_storeStrong(&v14, 0);
  objc_storeStrong(&v13, 0);
  objc_storeStrong(&v22, 0);
  objc_storeStrong(v21, 0);
  objc_storeStrong(&v20, 0);
  _Block_object_dispose(v23, 8);
  objc_storeStrong(&v28, 0);
  os_activity_scope_leave(&state);
  objc_storeStrong(&v33, 0);
  objc_storeStrong(&v34, 0);
  objc_storeStrong(&v35, 0);
  objc_storeStrong(location, 0);
  *MEMORY[0x1E69E9840];
}

void __89__AKCustodianController_sendEmbargoEndNotificationFeedbackWithContext_urlKey_completion___block_invoke(uint64_t a1, void *a2)
{
  v10 = *MEMORY[0x1E69E9840];
  location[1] = a1;
  location[0] = 0;
  objc_storeStrong(location, a2);
  v6[1] = a1;
  if (location[0])
  {
    v6[0] = _AKLogSystem();
    v5 = OS_LOG_TYPE_ERROR;
    if (os_log_type_enabled(v6[0], OS_LOG_TYPE_ERROR))
    {
      __os_log_helper_16_2_1_8_66(v9, location[0]);
      _os_log_error_impl(&dword_193225000, v6[0], v5, "sendEmbargoEndNotificationFeedback failed with error: %{public}@", v9, 0xCu);
    }

    objc_storeStrong(v6, 0);
  }

  else
  {
    oslog = _AKLogSystem();
    if (os_log_type_enabled(oslog, OS_LOG_TYPE_DEFAULT))
    {
      v2 = [*(a1 + 32) transactionID];
      __os_log_helper_16_2_1_8_64(v8, v2);
      _os_log_impl(&dword_193225000, oslog, OS_LOG_TYPE_DEFAULT, "sendEmbargoEndNotification completed without error for transactionID: %@", v8, 0xCu);
      MEMORY[0x1E69E5920](v2);
    }

    objc_storeStrong(&oslog, 0);
  }

  objc_storeStrong((*(*(a1 + 48) + 8) + 40), 0);
  (*(*(a1 + 40) + 16))();
  objc_storeStrong(location, 0);
  *MEMORY[0x1E69E9840];
}

void __89__AKCustodianController_sendEmbargoEndNotificationFeedbackWithContext_urlKey_completion___block_invoke_16(NSObject *a1, void *a2)
{
  v6 = *MEMORY[0x1E69E9840];
  location[1] = a1;
  location[0] = 0;
  objc_storeStrong(location, a2);
  oslog[1] = a1;
  oslog[0] = _AKLogSystem();
  if (os_log_type_enabled(oslog[0], OS_LOG_TYPE_ERROR))
  {
    __os_log_helper_16_2_1_8_64(v5, location[0]);
    _os_log_error_impl(&dword_193225000, oslog[0], OS_LOG_TYPE_ERROR, "XPC Connection failed or interrupted with error: %@ on call: sendEmbargoEndNotificationFeedbackWithContext", v5, 0xCu);
  }

  objc_storeStrong(oslog, 0);
  (*(a1[4].isa + 2))();
  objc_storeStrong(location, 0);
  *MEMORY[0x1E69E9840];
}

- (void)dealloc
{
  v7 = *MEMORY[0x1E69E9840];
  selfCopy = self;
  oslog[1] = a2;
  oslog[0] = _AKLogSystem();
  type = OS_LOG_TYPE_DEBUG;
  if (os_log_type_enabled(oslog[0], OS_LOG_TYPE_DEBUG))
  {
    __os_log_helper_16_2_1_8_64(v6, selfCopy);
    _os_log_debug_impl(&dword_193225000, oslog[0], type, "%@ deallocated", v6, 0xCu);
  }

  objc_storeStrong(oslog, 0);
  if (selfCopy->_daemonConnection)
  {
    objc_storeStrong(&selfCopy->_daemonConnection, 0);
  }

  v2.receiver = selfCopy;
  v2.super_class = AKCustodianController;
  [(AKCustodianController *)&v2 dealloc];
  *MEMORY[0x1E69E9840];
}

@end