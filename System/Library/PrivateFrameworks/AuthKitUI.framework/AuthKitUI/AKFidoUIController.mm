@interface AKFidoUIController
- (AKFidoUIController)init;
- (AKFidoUIController)initWithXPCSession:(id)a3;
- (void)registerFidoKeyWithContext:(id)a3 completion:(id)a4;
- (void)verifyFidoKeyWithContext:(id)a3 completion:(id)a4;
- (void)verifyFidoKeyWithFidoContext:(id)a3 completion:(id)a4;
- (void)verifyFidoRecoveryWithContext:(id)a3 recoveryToken:(id)a4 completion:(id)a5;
@end

@implementation AKFidoUIController

- (AKFidoUIController)init
{
  v9 = self;
  v8[1] = a2;
  v2 = objc_alloc(MEMORY[0x277CE4558]);
  v8[0] = [v2 initWithServiceName:*MEMORY[0x277CF0020] remoteProtocol:&unk_2835ECBD8 options:0];
  v3 = objc_alloc(MEMORY[0x277CE4550]);
  v7 = [v3 initWithRemoteServiceConfig:v8[0] delegate:v9];
  v4 = v9;
  v9 = 0;
  v9 = [(AKFidoUIController *)v4 initWithXPCSession:v7];
  objc_storeStrong(&v9, v9);
  v6 = MEMORY[0x277D82BE0](v9);
  objc_storeStrong(&v7, 0);
  objc_storeStrong(v8, 0);
  objc_storeStrong(&v9, 0);
  return v6;
}

- (AKFidoUIController)initWithXPCSession:(id)a3
{
  v8 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  v3 = v8;
  v8 = 0;
  v6.receiver = v3;
  v6.super_class = AKFidoUIController;
  v8 = [(AKFidoUIController *)&v6 init];
  objc_storeStrong(&v8, v8);
  if (v8)
  {
    objc_storeStrong(&v8->_remoteService, location[0]);
    [(AAFXPCSession *)v8->_remoteService resume];
  }

  v5 = MEMORY[0x277D82BE0](v8);
  objc_storeStrong(location, 0);
  objc_storeStrong(&v8, 0);
  return v5;
}

- (void)registerFidoKeyWithContext:(id)a3 completion:(id)a4
{
  v31 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  v29 = 0;
  objc_storeStrong(&v29, a4);
  v27 = _os_activity_create(&dword_222379000, "fido-authkit/register-key", MEMORY[0x277D86210], OS_ACTIVITY_FLAG_DEFAULT);
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
  v25 = MEMORY[0x277D82BE0](v31);
  v13 = MEMORY[0x277D85DD0];
  v14 = -1073741824;
  v15 = 0;
  v16 = __60__AKFidoUIController_registerFidoKeyWithContext_completion___block_invoke;
  v17 = &unk_2784A7F10;
  v18[1] = v20;
  v18[0] = MEMORY[0x277D82BE0](v29);
  v19 = MEMORY[0x223DB6C90](&v13);
  remoteService = v31->_remoteService;
  v6 = MEMORY[0x277D85DD0];
  v7 = -1073741824;
  v8 = 0;
  v9 = __60__AKFidoUIController_registerFidoKeyWithContext_completion___block_invoke_2;
  v10 = &unk_2784A5CB8;
  v11 = MEMORY[0x277D82BE0](v19);
  v12 = [(AAFXPCSession *)remoteService remoteServiceProxyWithErrorHandler:&v6];
  [v12 registerFidoKeyWithContext:location[0] completion:v19];
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

void __60__AKFidoUIController_registerFidoKeyWithContext_completion___block_invoke(void *a1, void *a2, void *a3)
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

void __60__AKFidoUIController_registerFidoKeyWithContext_completion___block_invoke_2(NSObject *a1, void *a2)
{
  v6 = *MEMORY[0x277D85DE8];
  location[1] = a1;
  location[0] = 0;
  objc_storeStrong(location, a2);
  oslog[1] = a1;
  oslog[0] = _AKLogFido();
  if (os_log_type_enabled(oslog[0], OS_LOG_TYPE_ERROR))
  {
    __os_log_helper_16_2_2_8_32_8_64(v5, "[AKFidoUIController registerFidoKeyWithContext:completion:]_block_invoke_2", location[0]);
    _os_log_error_impl(&dword_222379000, oslog[0], OS_LOG_TYPE_ERROR, "Connection to remote FIDO service to %s returned an error: %@", v5, 0x16u);
  }

  objc_storeStrong(oslog, 0);
  (*(a1[4].isa + 2))();
  objc_storeStrong(location, 0);
  *MEMORY[0x277D85DE8];
}

- (void)verifyFidoKeyWithFidoContext:(id)a3 completion:(id)a4
{
  v31 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  v29 = 0;
  objc_storeStrong(&v29, a4);
  v27 = _os_activity_create(&dword_222379000, "fido-authkit/verify-fido-key", MEMORY[0x277D86210], OS_ACTIVITY_FLAG_DEFAULT);
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
  v25 = MEMORY[0x277D82BE0](v31);
  v13 = MEMORY[0x277D85DD0];
  v14 = -1073741824;
  v15 = 0;
  v16 = __62__AKFidoUIController_verifyFidoKeyWithFidoContext_completion___block_invoke;
  v17 = &unk_2784A7F38;
  v18[1] = v20;
  v18[0] = MEMORY[0x277D82BE0](v29);
  v19 = MEMORY[0x223DB6C90](&v13);
  remoteService = v31->_remoteService;
  v6 = MEMORY[0x277D85DD0];
  v7 = -1073741824;
  v8 = 0;
  v9 = __62__AKFidoUIController_verifyFidoKeyWithFidoContext_completion___block_invoke_2;
  v10 = &unk_2784A5CB8;
  v11 = MEMORY[0x277D82BE0](v19);
  v12 = [(AAFXPCSession *)remoteService remoteServiceProxyWithErrorHandler:&v6];
  [v12 verifyFidoKeyWithFidoContext:location[0] completion:v19];
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

void __62__AKFidoUIController_verifyFidoKeyWithFidoContext_completion___block_invoke(void *a1, void *a2, void *a3)
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

void __62__AKFidoUIController_verifyFidoKeyWithFidoContext_completion___block_invoke_2(NSObject *a1, void *a2)
{
  v6 = *MEMORY[0x277D85DE8];
  location[1] = a1;
  location[0] = 0;
  objc_storeStrong(location, a2);
  oslog[1] = a1;
  oslog[0] = _AKLogFido();
  if (os_log_type_enabled(oslog[0], OS_LOG_TYPE_ERROR))
  {
    __os_log_helper_16_2_2_8_32_8_64(v5, "[AKFidoUIController verifyFidoKeyWithFidoContext:completion:]_block_invoke_2", location[0]);
    _os_log_error_impl(&dword_222379000, oslog[0], OS_LOG_TYPE_ERROR, "Connection to remote FIDO service to %s returned an error: %@", v5, 0x16u);
  }

  objc_storeStrong(oslog, 0);
  (*(a1[4].isa + 2))();
  objc_storeStrong(location, 0);
  *MEMORY[0x277D85DE8];
}

- (void)verifyFidoKeyWithContext:(id)a3 completion:(id)a4
{
  v31 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  v29 = 0;
  objc_storeStrong(&v29, a4);
  v27 = _os_activity_create(&dword_222379000, "fido-authkit/verify-context-key", MEMORY[0x277D86210], OS_ACTIVITY_FLAG_DEFAULT);
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
  v25 = MEMORY[0x277D82BE0](v31);
  v13 = MEMORY[0x277D85DD0];
  v14 = -1073741824;
  v15 = 0;
  v16 = __58__AKFidoUIController_verifyFidoKeyWithContext_completion___block_invoke;
  v17 = &unk_2784A7F60;
  v18[1] = v20;
  v18[0] = MEMORY[0x277D82BE0](v29);
  v19 = MEMORY[0x223DB6C90](&v13);
  remoteService = v31->_remoteService;
  v6 = MEMORY[0x277D85DD0];
  v7 = -1073741824;
  v8 = 0;
  v9 = __58__AKFidoUIController_verifyFidoKeyWithContext_completion___block_invoke_2;
  v10 = &unk_2784A5CB8;
  v11 = MEMORY[0x277D82BE0](v19);
  v12 = [(AAFXPCSession *)remoteService remoteServiceProxyWithErrorHandler:&v6];
  [v12 verifyFidoKeyWithContext:location[0] completion:v19];
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

void __58__AKFidoUIController_verifyFidoKeyWithContext_completion___block_invoke(void *a1, void *a2, void *a3, void *a4)
{
  location[1] = a1;
  location[0] = 0;
  objc_storeStrong(location, a2);
  v8 = 0;
  objc_storeStrong(&v8, a3);
  v7 = 0;
  objc_storeStrong(&v7, a4);
  objc_storeStrong((*(a1[5] + 8) + 40), 0);
  (*(a1[4] + 16))();
  objc_storeStrong(&v7, 0);
  objc_storeStrong(&v8, 0);
  objc_storeStrong(location, 0);
}

void __58__AKFidoUIController_verifyFidoKeyWithContext_completion___block_invoke_2(NSObject *a1, void *a2)
{
  v6 = *MEMORY[0x277D85DE8];
  location[1] = a1;
  location[0] = 0;
  objc_storeStrong(location, a2);
  oslog[1] = a1;
  oslog[0] = _AKLogFido();
  if (os_log_type_enabled(oslog[0], OS_LOG_TYPE_ERROR))
  {
    __os_log_helper_16_2_2_8_32_8_64(v5, "[AKFidoUIController verifyFidoKeyWithContext:completion:]_block_invoke_2", location[0]);
    _os_log_error_impl(&dword_222379000, oslog[0], OS_LOG_TYPE_ERROR, "Connection to remote FIDO service to %s returned an error: %@", v5, 0x16u);
  }

  objc_storeStrong(oslog, 0);
  (*(a1[4].isa + 2))();
  objc_storeStrong(location, 0);
  *MEMORY[0x277D85DE8];
}

- (void)verifyFidoRecoveryWithContext:(id)a3 recoveryToken:(id)a4 completion:(id)a5
{
  v34 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  v32 = 0;
  objc_storeStrong(&v32, a4);
  v31 = 0;
  objc_storeStrong(&v31, a5);
  v29 = _os_activity_create(&dword_222379000, "fido-authkit/verify-recovery-key", MEMORY[0x277D86210], OS_ACTIVITY_FLAG_DEFAULT);
  v30 = v29;
  state.opaque[0] = 0;
  state.opaque[1] = 0;
  os_activity_scope_enter(v29, &state);
  v22[0] = 0;
  v22[1] = v22;
  v23 = 838860800;
  v24 = 48;
  v25 = __Block_byref_object_copy__1;
  v26 = __Block_byref_object_dispose__1;
  v27 = MEMORY[0x277D82BE0](v34);
  v15 = MEMORY[0x277D85DD0];
  v16 = -1073741824;
  v17 = 0;
  v18 = __77__AKFidoUIController_verifyFidoRecoveryWithContext_recoveryToken_completion___block_invoke;
  v19 = &unk_2784A7F60;
  v20[1] = v22;
  v20[0] = MEMORY[0x277D82BE0](v31);
  v21 = MEMORY[0x223DB6C90](&v15);
  remoteService = v34->_remoteService;
  v8 = MEMORY[0x277D85DD0];
  v9 = -1073741824;
  v10 = 0;
  v11 = __77__AKFidoUIController_verifyFidoRecoveryWithContext_recoveryToken_completion___block_invoke_2;
  v12 = &unk_2784A5CB8;
  v13 = MEMORY[0x277D82BE0](v21);
  v14 = [(AAFXPCSession *)remoteService remoteServiceProxyWithErrorHandler:&v8];
  [v14 verifyFidoRecoveryWithContext:location[0] recoveryToken:v32 completion:v21];
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

void __77__AKFidoUIController_verifyFidoRecoveryWithContext_recoveryToken_completion___block_invoke(void *a1, void *a2, void *a3, void *a4)
{
  location[1] = a1;
  location[0] = 0;
  objc_storeStrong(location, a2);
  v8 = 0;
  objc_storeStrong(&v8, a3);
  v7 = 0;
  objc_storeStrong(&v7, a4);
  objc_storeStrong((*(a1[5] + 8) + 40), 0);
  (*(a1[4] + 16))();
  objc_storeStrong(&v7, 0);
  objc_storeStrong(&v8, 0);
  objc_storeStrong(location, 0);
}

void __77__AKFidoUIController_verifyFidoRecoveryWithContext_recoveryToken_completion___block_invoke_2(NSObject *a1, void *a2)
{
  v6 = *MEMORY[0x277D85DE8];
  location[1] = a1;
  location[0] = 0;
  objc_storeStrong(location, a2);
  oslog[1] = a1;
  oslog[0] = _AKLogFido();
  if (os_log_type_enabled(oslog[0], OS_LOG_TYPE_ERROR))
  {
    __os_log_helper_16_2_2_8_32_8_64(v5, "[AKFidoUIController verifyFidoRecoveryWithContext:recoveryToken:completion:]_block_invoke_2", location[0]);
    _os_log_error_impl(&dword_222379000, oslog[0], OS_LOG_TYPE_ERROR, "Connection to remote FIDO service to %s returned an error: %@", v5, 0x16u);
  }

  objc_storeStrong(oslog, 0);
  (*(a1[4].isa + 2))();
  objc_storeStrong(location, 0);
  *MEMORY[0x277D85DE8];
}

@end