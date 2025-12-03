@interface AKInheritanceController
- (AKInheritanceController)init;
- (AKInheritanceController)initWithXPCSession:(id)session;
- (void)_setupBeneficiaryAliasWithInheritanceContext:(id)context completion:(id)completion;
- (void)fetchManifestOptionsWithInheritanceContext:(id)context completion:(id)completion;
- (void)removeBeneficiaryWithInheritanceContext:(id)context completion:(id)completion;
- (void)setupBeneficiaryWithInheritanceContext:(id)context completion:(id)completion;
- (void)updateBeneficiaryWithInheritanceContext:(id)context completion:(id)completion;
@end

@implementation AKInheritanceController

- (AKInheritanceController)init
{
  selfCopy = self;
  v7[1] = a2;
  v7[0] = [objc_alloc(MEMORY[0x1E6985E18]) initWithServiceName:@"com.apple.ak.inheritance.xpc" remoteProtocol:&unk_1F07B9FD8 options:0];
  v2 = objc_alloc(MEMORY[0x1E6985E10]);
  v6 = [v2 initWithRemoteServiceConfig:v7[0] delegate:selfCopy];
  v3 = selfCopy;
  selfCopy = 0;
  selfCopy = [(AKInheritanceController *)v3 initWithXPCSession:v6];
  objc_storeStrong(&selfCopy, selfCopy);
  v5 = MEMORY[0x1E69E5928](selfCopy);
  objc_storeStrong(&v6, 0);
  objc_storeStrong(v7, 0);
  objc_storeStrong(&selfCopy, 0);
  return v5;
}

- (AKInheritanceController)initWithXPCSession:(id)session
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, session);
  v3 = selfCopy;
  selfCopy = 0;
  v6.receiver = v3;
  v6.super_class = AKInheritanceController;
  selfCopy = [(AKInheritanceController *)&v6 init];
  objc_storeStrong(&selfCopy, selfCopy);
  if (selfCopy)
  {
    objc_storeStrong(&selfCopy->_remoteService, location[0]);
    [(AAFXPCSession *)selfCopy->_remoteService resume];
  }

  v5 = MEMORY[0x1E69E5928](selfCopy);
  objc_storeStrong(location, 0);
  objc_storeStrong(&selfCopy, 0);
  return v5;
}

- (void)fetchManifestOptionsWithInheritanceContext:(id)context completion:(id)completion
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, context);
  v29 = 0;
  objc_storeStrong(&v29, completion);
  v27 = _os_activity_create(&dword_193225000, "inheritance-authkit/fetch-dataclass-rules", MEMORY[0x1E69E9C00], OS_ACTIVITY_FLAG_DEFAULT);
  v28 = v27;
  state.opaque[0] = 0;
  state.opaque[1] = 0;
  os_activity_scope_enter(v27, &state);
  v20[0] = 0;
  v20[1] = v20;
  v21 = 838860800;
  v22 = 48;
  v23 = __Block_byref_object_copy__1;
  v24 = __Block_byref_object_dispose__1;
  v25 = MEMORY[0x1E69E5928](selfCopy);
  v13 = MEMORY[0x1E69E9820];
  v14 = -1073741824;
  v15 = 0;
  v16 = __81__AKInheritanceController_fetchManifestOptionsWithInheritanceContext_completion___block_invoke;
  v17 = &unk_1E73D4740;
  v18[1] = v20;
  v18[0] = MEMORY[0x1E69E5928](v29);
  v19 = MEMORY[0x193B165F0](&v13);
  remoteService = selfCopy->_remoteService;
  v6 = MEMORY[0x1E69E9820];
  v7 = -1073741824;
  v8 = 0;
  v9 = __81__AKInheritanceController_fetchManifestOptionsWithInheritanceContext_completion___block_invoke_2;
  v10 = &unk_1E73D3510;
  v11 = MEMORY[0x1E69E5928](v19);
  v12 = [(AAFXPCSession *)remoteService remoteServiceProxyWithErrorHandler:&v6];
  [v12 fetchManifestOptionsWithInheritanceContext:location[0] completion:v19];
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

void __81__AKInheritanceController_fetchManifestOptionsWithInheritanceContext_completion___block_invoke(void *a1, void *a2, void *a3)
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

void __81__AKInheritanceController_fetchManifestOptionsWithInheritanceContext_completion___block_invoke_2(NSObject *a1, void *a2)
{
  v6 = *MEMORY[0x1E69E9840];
  location[1] = a1;
  location[0] = 0;
  objc_storeStrong(location, a2);
  oslog[1] = a1;
  oslog[0] = _AKLogSystem();
  if (os_log_type_enabled(oslog[0], OS_LOG_TYPE_ERROR))
  {
    __os_log_helper_16_2_2_8_32_8_64(v5, "[AKInheritanceController fetchManifestOptionsWithInheritanceContext:completion:]_block_invoke_2", location[0]);
    _os_log_error_impl(&dword_193225000, oslog[0], OS_LOG_TYPE_ERROR, "Connection to remote inheritance service to %s returned an error: %@", v5, 0x16u);
  }

  objc_storeStrong(oslog, 0);
  (*(a1[4].isa + 2))();
  objc_storeStrong(location, 0);
  *MEMORY[0x1E69E9840];
}

- (void)setupBeneficiaryWithInheritanceContext:(id)context completion:(id)completion
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, context);
  v29 = 0;
  objc_storeStrong(&v29, completion);
  v27 = _os_activity_create(&dword_193225000, "inheritance-authkit/persist-manifest", MEMORY[0x1E69E9C00], OS_ACTIVITY_FLAG_DEFAULT);
  v28 = v27;
  state.opaque[0] = 0;
  state.opaque[1] = 0;
  os_activity_scope_enter(v27, &state);
  v20[0] = 0;
  v20[1] = v20;
  v21 = 838860800;
  v22 = 48;
  v23 = __Block_byref_object_copy__1;
  v24 = __Block_byref_object_dispose__1;
  v25 = MEMORY[0x1E69E5928](selfCopy);
  v13 = MEMORY[0x1E69E9820];
  v14 = -1073741824;
  v15 = 0;
  v16 = __77__AKInheritanceController_setupBeneficiaryWithInheritanceContext_completion___block_invoke;
  v17 = &unk_1E73D3DB8;
  v18[1] = v20;
  v18[0] = MEMORY[0x1E69E5928](v29);
  v19 = MEMORY[0x193B165F0](&v13);
  remoteService = selfCopy->_remoteService;
  v6 = MEMORY[0x1E69E9820];
  v7 = -1073741824;
  v8 = 0;
  v9 = __77__AKInheritanceController_setupBeneficiaryWithInheritanceContext_completion___block_invoke_2;
  v10 = &unk_1E73D3510;
  v11 = MEMORY[0x1E69E5928](v19);
  v12 = [(AAFXPCSession *)remoteService remoteServiceProxyWithErrorHandler:&v6];
  [v12 setupBeneficiaryWithInheritanceContext:location[0] completion:v19];
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

void __77__AKInheritanceController_setupBeneficiaryWithInheritanceContext_completion___block_invoke(void *a1, void *a2)
{
  location[1] = a1;
  location[0] = 0;
  objc_storeStrong(location, a2);
  objc_storeStrong((*(a1[5] + 8) + 40), 0);
  (*(a1[4] + 16))();
  objc_storeStrong(location, 0);
}

void __77__AKInheritanceController_setupBeneficiaryWithInheritanceContext_completion___block_invoke_2(NSObject *a1, void *a2)
{
  v6 = *MEMORY[0x1E69E9840];
  location[1] = a1;
  location[0] = 0;
  objc_storeStrong(location, a2);
  oslog[1] = a1;
  oslog[0] = _AKLogSystem();
  if (os_log_type_enabled(oslog[0], OS_LOG_TYPE_ERROR))
  {
    __os_log_helper_16_2_2_8_32_8_64(v5, "[AKInheritanceController setupBeneficiaryWithInheritanceContext:completion:]_block_invoke_2", location[0]);
    _os_log_error_impl(&dword_193225000, oslog[0], OS_LOG_TYPE_ERROR, "Connection to remote inheritance service to %s returned an error: %@", v5, 0x16u);
  }

  objc_storeStrong(oslog, 0);
  (*(a1[4].isa + 2))();
  objc_storeStrong(location, 0);
  *MEMORY[0x1E69E9840];
}

- (void)updateBeneficiaryWithInheritanceContext:(id)context completion:(id)completion
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, context);
  v29 = 0;
  objc_storeStrong(&v29, completion);
  v27 = _os_activity_create(&dword_193225000, "inheritance-authkit/update-beneficiary", MEMORY[0x1E69E9C00], OS_ACTIVITY_FLAG_DEFAULT);
  v28 = v27;
  state.opaque[0] = 0;
  state.opaque[1] = 0;
  os_activity_scope_enter(v27, &state);
  v20[0] = 0;
  v20[1] = v20;
  v21 = 838860800;
  v22 = 48;
  v23 = __Block_byref_object_copy__1;
  v24 = __Block_byref_object_dispose__1;
  v25 = MEMORY[0x1E69E5928](selfCopy);
  v13 = MEMORY[0x1E69E9820];
  v14 = -1073741824;
  v15 = 0;
  v16 = __78__AKInheritanceController_updateBeneficiaryWithInheritanceContext_completion___block_invoke;
  v17 = &unk_1E73D3DB8;
  v18[1] = v20;
  v18[0] = MEMORY[0x1E69E5928](v29);
  v19 = MEMORY[0x193B165F0](&v13);
  remoteService = selfCopy->_remoteService;
  v6 = MEMORY[0x1E69E9820];
  v7 = -1073741824;
  v8 = 0;
  v9 = __78__AKInheritanceController_updateBeneficiaryWithInheritanceContext_completion___block_invoke_2;
  v10 = &unk_1E73D3510;
  v11 = MEMORY[0x1E69E5928](v19);
  v12 = [(AAFXPCSession *)remoteService remoteServiceProxyWithErrorHandler:&v6];
  [v12 updateBeneficiaryWithInheritanceContext:location[0] completion:v19];
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

void __78__AKInheritanceController_updateBeneficiaryWithInheritanceContext_completion___block_invoke(void *a1, void *a2)
{
  location[1] = a1;
  location[0] = 0;
  objc_storeStrong(location, a2);
  objc_storeStrong((*(a1[5] + 8) + 40), 0);
  (*(a1[4] + 16))();
  objc_storeStrong(location, 0);
}

void __78__AKInheritanceController_updateBeneficiaryWithInheritanceContext_completion___block_invoke_2(NSObject *a1, void *a2)
{
  v6 = *MEMORY[0x1E69E9840];
  location[1] = a1;
  location[0] = 0;
  objc_storeStrong(location, a2);
  oslog[1] = a1;
  oslog[0] = _AKLogSystem();
  if (os_log_type_enabled(oslog[0], OS_LOG_TYPE_ERROR))
  {
    __os_log_helper_16_2_2_8_32_8_64(v5, "[AKInheritanceController updateBeneficiaryWithInheritanceContext:completion:]_block_invoke_2", location[0]);
    _os_log_error_impl(&dword_193225000, oslog[0], OS_LOG_TYPE_ERROR, "Connection to remote inheritance service to %s returned an error: %@", v5, 0x16u);
  }

  objc_storeStrong(oslog, 0);
  (*(a1[4].isa + 2))();
  objc_storeStrong(location, 0);
  *MEMORY[0x1E69E9840];
}

- (void)removeBeneficiaryWithInheritanceContext:(id)context completion:(id)completion
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, context);
  v29 = 0;
  objc_storeStrong(&v29, completion);
  v27 = _os_activity_create(&dword_193225000, "inheritance-authkit/remove-beneficiary", MEMORY[0x1E69E9C00], OS_ACTIVITY_FLAG_DEFAULT);
  v28 = v27;
  state.opaque[0] = 0;
  state.opaque[1] = 0;
  os_activity_scope_enter(v27, &state);
  v20[0] = 0;
  v20[1] = v20;
  v21 = 838860800;
  v22 = 48;
  v23 = __Block_byref_object_copy__1;
  v24 = __Block_byref_object_dispose__1;
  v25 = MEMORY[0x1E69E5928](selfCopy);
  v13 = MEMORY[0x1E69E9820];
  v14 = -1073741824;
  v15 = 0;
  v16 = __78__AKInheritanceController_removeBeneficiaryWithInheritanceContext_completion___block_invoke;
  v17 = &unk_1E73D3DB8;
  v18[1] = v20;
  v18[0] = MEMORY[0x1E69E5928](v29);
  v19 = MEMORY[0x193B165F0](&v13);
  remoteService = selfCopy->_remoteService;
  v6 = MEMORY[0x1E69E9820];
  v7 = -1073741824;
  v8 = 0;
  v9 = __78__AKInheritanceController_removeBeneficiaryWithInheritanceContext_completion___block_invoke_2;
  v10 = &unk_1E73D3510;
  v11 = MEMORY[0x1E69E5928](v19);
  v12 = [(AAFXPCSession *)remoteService remoteServiceProxyWithErrorHandler:&v6];
  [v12 removeBeneficiaryWithInheritanceContext:location[0] completion:v19];
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

void __78__AKInheritanceController_removeBeneficiaryWithInheritanceContext_completion___block_invoke(void *a1, void *a2)
{
  location[1] = a1;
  location[0] = 0;
  objc_storeStrong(location, a2);
  objc_storeStrong((*(a1[5] + 8) + 40), 0);
  (*(a1[4] + 16))();
  objc_storeStrong(location, 0);
}

void __78__AKInheritanceController_removeBeneficiaryWithInheritanceContext_completion___block_invoke_2(NSObject *a1, void *a2)
{
  v6 = *MEMORY[0x1E69E9840];
  location[1] = a1;
  location[0] = 0;
  objc_storeStrong(location, a2);
  oslog[1] = a1;
  oslog[0] = _AKLogSystem();
  if (os_log_type_enabled(oslog[0], OS_LOG_TYPE_ERROR))
  {
    __os_log_helper_16_2_2_8_32_8_64(v5, "[AKInheritanceController removeBeneficiaryWithInheritanceContext:completion:]_block_invoke_2", location[0]);
    _os_log_error_impl(&dword_193225000, oslog[0], OS_LOG_TYPE_ERROR, "Connection to remote inheritance service to %s returned an error: %@", v5, 0x16u);
  }

  objc_storeStrong(oslog, 0);
  (*(a1[4].isa + 2))();
  objc_storeStrong(location, 0);
  *MEMORY[0x1E69E9840];
}

- (void)_setupBeneficiaryAliasWithInheritanceContext:(id)context completion:(id)completion
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, context);
  v39 = 0;
  objc_storeStrong(&v39, completion);
  v10 = +[AKDevice currentDevice];
  isInternalBuild = [v10 isInternalBuild];
  MEMORY[0x1E69E5920](v10);
  if (isInternalBuild)
  {
    v33 = _os_activity_create(&dword_193225000, "inheritance-authkit/create-beneficiary-alias", MEMORY[0x1E69E9C00], OS_ACTIVITY_FLAG_DEFAULT);
    v34 = v33;
    state.opaque[0] = 0;
    state.opaque[1] = 0;
    os_activity_scope_enter(v33, &state);
    v26[0] = 0;
    v26[1] = v26;
    v27 = 838860800;
    v28 = 48;
    v29 = __Block_byref_object_copy__1;
    v30 = __Block_byref_object_dispose__1;
    v31 = MEMORY[0x1E69E5928](selfCopy);
    v19 = MEMORY[0x1E69E9820];
    v20 = -1073741824;
    v21 = 0;
    v22 = __83__AKInheritanceController__setupBeneficiaryAliasWithInheritanceContext_completion___block_invoke;
    v23 = &unk_1E73D4768;
    v24[1] = v26;
    v24[0] = MEMORY[0x1E69E5928](v39);
    v25 = MEMORY[0x193B165F0](&v19);
    remoteService = selfCopy->_remoteService;
    v12 = MEMORY[0x1E69E9820];
    v13 = -1073741824;
    v14 = 0;
    v15 = __83__AKInheritanceController__setupBeneficiaryAliasWithInheritanceContext_completion___block_invoke_2;
    v16 = &unk_1E73D3510;
    v17 = MEMORY[0x1E69E5928](v25);
    v18 = [(AAFXPCSession *)remoteService remoteServiceProxyWithErrorHandler:&v12];
    [v18 _setupBeneficiaryAliasWithInheritanceContext:location[0] completion:v25];
    objc_storeStrong(&v18, 0);
    objc_storeStrong(&v17, 0);
    objc_storeStrong(&v25, 0);
    objc_storeStrong(v24, 0);
    _Block_object_dispose(v26, 8);
    objc_storeStrong(&v31, 0);
    os_activity_scope_leave(&state);
    objc_storeStrong(&v34, 0);
    v35 = 0;
  }

  else
  {
    v38 = _AKLogSystem();
    v37 = 16;
    if (os_log_type_enabled(v38, OS_LOG_TYPE_ERROR))
    {
      log = v38;
      type = v37;
      __os_log_helper_16_0_0(v36);
      _os_log_error_impl(&dword_193225000, log, type, "Not an Internal Build. Aborting beneficiary alias setup", v36, 2u);
    }

    objc_storeStrong(&v38, 0);
    v5 = v39;
    v6 = [MEMORY[0x1E696ABC0] ak_errorWithCode:-7026];
    v5[2](v5, 0);
    MEMORY[0x1E69E5920](v6);
    v35 = 1;
  }

  objc_storeStrong(&v39, 0);
  objc_storeStrong(location, 0);
}

void __83__AKInheritanceController__setupBeneficiaryAliasWithInheritanceContext_completion___block_invoke(void *a1, void *a2, void *a3)
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

void __83__AKInheritanceController__setupBeneficiaryAliasWithInheritanceContext_completion___block_invoke_2(NSObject *a1, void *a2)
{
  v6 = *MEMORY[0x1E69E9840];
  location[1] = a1;
  location[0] = 0;
  objc_storeStrong(location, a2);
  oslog[1] = a1;
  oslog[0] = _AKLogSystem();
  if (os_log_type_enabled(oslog[0], OS_LOG_TYPE_ERROR))
  {
    __os_log_helper_16_2_2_8_32_8_64(v5, "[AKInheritanceController _setupBeneficiaryAliasWithInheritanceContext:completion:]_block_invoke_2", location[0]);
    _os_log_error_impl(&dword_193225000, oslog[0], OS_LOG_TYPE_ERROR, "Connection to remote inheritance service to %s returned an error: %@", v5, 0x16u);
  }

  objc_storeStrong(oslog, 0);
  (*(a1[4].isa + 2))();
  objc_storeStrong(location, 0);
  *MEMORY[0x1E69E9840];
}

@end