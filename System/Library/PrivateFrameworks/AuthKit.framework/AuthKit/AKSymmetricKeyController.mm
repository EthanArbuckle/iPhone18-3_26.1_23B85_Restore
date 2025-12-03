@interface AKSymmetricKeyController
- (AKSymmetricKeyController)init;
- (AKSymmetricKeyController)initWithDaemonXPCEndpoint:(id)endpoint;
- (void)registerForSymmetricKeyWithContext:(id)context completion:(id)completion;
@end

@implementation AKSymmetricKeyController

- (AKSymmetricKeyController)init
{
  v4 = 0;
  v4 = [(AKSymmetricKeyController *)self initWithDaemonXPCEndpoint:?];
  v3 = MEMORY[0x1E69E5928](v4);
  objc_storeStrong(&v4, 0);
  return v3;
}

- (AKSymmetricKeyController)initWithDaemonXPCEndpoint:(id)endpoint
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, endpoint);
  v3 = selfCopy;
  selfCopy = 0;
  v9.receiver = v3;
  v9.super_class = AKSymmetricKeyController;
  selfCopy = [(AKSymmetricKeyController *)&v9 init];
  objc_storeStrong(&selfCopy, selfCopy);
  if (selfCopy)
  {
    v4 = [AKSymmetricKeyDaemonConnection alloc];
    v5 = [(AKSymmetricKeyDaemonConnection *)v4 initWithListenerEndpoint:location[0]];
    daemonConnection = selfCopy->_daemonConnection;
    selfCopy->_daemonConnection = v5;
    MEMORY[0x1E69E5920](daemonConnection);
  }

  v8 = MEMORY[0x1E69E5928](selfCopy);
  objc_storeStrong(location, 0);
  objc_storeStrong(&selfCopy, 0);
  return v8;
}

- (void)registerForSymmetricKeyWithContext:(id)context completion:(id)completion
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
  v51 = __Block_byref_object_copy__2;
  v52 = __Block_byref_object_dispose__2;
  v53 = MEMORY[0x1E69E5928](selfCopy);
  v46 = _os_activity_create(&dword_193225000, "symmetrickey-authkit/registeration", MEMORY[0x1E69E9C00], OS_ACTIVITY_FLAG_DEFAULT);
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
    _os_signpost_emit_with_name_impl(&dword_193225000, log, type, spid, "SymmetricKeyRegistration", " enableTelemetry=YES ", v39, 2u);
  }

  objc_storeStrong(&v42, 0);
  oslog = _AKSignpostLogSystem();
  v37 = OS_LOG_TYPE_DEFAULT;
  if (os_log_type_enabled(oslog, OS_LOG_TYPE_DEFAULT))
  {
    __os_log_helper_16_0_1_8_0(v58, v43);
    _os_log_impl(&dword_193225000, oslog, v37, "BEGIN [%lld]: SymmetricKeyRegistration  enableTelemetry=YES ", v58, 0xCu);
  }

  objc_storeStrong(&oslog, 0);
  v44 = v43;
  v29 = MEMORY[0x1E69E9820];
  v30 = -1073741824;
  v31 = 0;
  v32 = __74__AKSymmetricKeyController_registerForSymmetricKeyWithContext_completion___block_invoke;
  v33 = &unk_1E73D47F8;
  v35 = v43;
  v34[1] = v48;
  v34[0] = MEMORY[0x1E69E5928](v54);
  v36 = MEMORY[0x193B165F0](&v29);
  daemonConnection = selfCopy->_daemonConnection;
  v22 = MEMORY[0x1E69E9820];
  v23 = -1073741824;
  v24 = 0;
  v25 = __74__AKSymmetricKeyController_registerForSymmetricKeyWithContext_completion___block_invoke_20;
  v26 = &unk_1E73D3510;
  v27 = MEMORY[0x1E69E5928](v36);
  v28 = [(AKSymmetricKeyDaemonConnection *)daemonConnection remoteObjectProxyWithErrorHandler:&v22];
  v21 = _AKLogSystem();
  v20 = OS_LOG_TYPE_DEFAULT;
  if (os_log_type_enabled(v21, OS_LOG_TYPE_DEFAULT))
  {
    __os_log_helper_16_2_1_8_64(v57, location[0]);
    _os_log_impl(&dword_193225000, v21, v20, "Calling out to remote SymmetricKey service to initiate register for context %@", v57, 0xCu);
  }

  objc_storeStrong(&v21, 0);
  v6 = v28;
  v5 = location[0];
  v14 = MEMORY[0x1E69E9820];
  v15 = -1073741824;
  v16 = 0;
  v17 = __74__AKSymmetricKeyController_registerForSymmetricKeyWithContext_completion___block_invoke_22;
  v18 = &unk_1E73D4820;
  v19 = MEMORY[0x1E69E5928](v36);
  [v6 registerForSymmetricKeyWithContext:v5 completion:&v14];
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

void __74__AKSymmetricKeyController_registerForSymmetricKeyWithContext_completion___block_invoke(void *a1, void *a2, void *a3)
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
    _os_signpost_emit_with_name_impl(&dword_193225000, log, type, spid, "SymmetricKeyRegistration", "", v9, 2u);
  }

  objc_storeStrong(&v12, 0);
  oslog = _AKSignpostLogSystem();
  if (os_log_type_enabled(oslog, OS_LOG_TYPE_DEFAULT))
  {
    __os_log_helper_16_0_2_8_0_8_0(v17, a1[6], *&v13);
    _os_log_impl(&dword_193225000, oslog, OS_LOG_TYPE_DEFAULT, "END [%lld] %fs:SymmetricKeyRegistration ", v17, 0x16u);
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

void __74__AKSymmetricKeyController_registerForSymmetricKeyWithContext_completion___block_invoke_20(NSObject *a1, void *a2)
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
    _os_log_error_impl(&dword_193225000, oslog[0], OS_LOG_TYPE_ERROR, "Initiated SymmetricKey service returned an error: %{public}@", v5, 0xCu);
  }

  objc_storeStrong(oslog, 0);
  if (a1[4].isa)
  {
    (*(a1[4].isa + 2))();
  }

  objc_storeStrong(location, 0);
  *MEMORY[0x1E69E9840];
}

void __74__AKSymmetricKeyController_registerForSymmetricKeyWithContext_completion___block_invoke_22(void *a1, void *a2, void *a3)
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
    _os_log_impl(&dword_193225000, log, type, "Result of remote symmetric key registration call: %@. Error: %{public}@", v13, 0x16u);
    MEMORY[0x1E69E5920](v5);
    objc_storeStrong(&v8, 0);
  }

  objc_storeStrong(v10, 0);
  if (a1[4])
  {
    (*(a1[4] + 16))();
  }

  objc_storeStrong(&v11, 0);
  objc_storeStrong(location, 0);
  *MEMORY[0x1E69E9840];
}

@end