@interface AADaemonController
- (AADaemonController)init;
- (void)cacheLoginResponse:(id)a3 forAccount:(id)a4 completion:(id)a5;
- (void)configureRemoteInterface:(id)a3;
- (void)dealloc;
- (void)fetchCachedLoginResponseForAccount:(id)a3 completion:(id)a4;
- (void)handleAppleAccountDeleteForAccount:(id)a3 completion:(id)a4;
- (void)removeChildOrTeenConnectFollowUpWithCompletion:(id)a3;
- (void)removeProtoAccountWithCompletion:(id)a3;
- (void)startAppleIDAvailabilityHealthCheckWithCompletion:(id)a3;
- (void)urlConfigurationWithCompletion:(id)a3;
@end

@implementation AADaemonController

- (AADaemonController)init
{
  v7.receiver = self;
  v7.super_class = AADaemonController;
  v2 = [(AADaemonController *)&v7 init];
  if (v2)
  {
    v3 = [objc_alloc(MEMORY[0x1E6985E18]) initWithServiceName:@"com.apple.aa.daemon.xpc" remoteProtocol:&unk_1F2F2AAE0 options:0];
    v4 = [objc_alloc(MEMORY[0x1E6985E10]) initWithRemoteServiceConfig:v3 delegate:v2];
    remoteService = v2->_remoteService;
    v2->_remoteService = v4;

    [(AAFXPCSession *)v2->_remoteService resume];
  }

  return v2;
}

- (void)dealloc
{
  v9 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_4_0(&dword_1B6F6A000, a2, a3, "%@ deallocated", a5, a6, a7, a8, 2u);
  v8 = *MEMORY[0x1E69E9840];
}

- (void)handleAppleAccountDeleteForAccount:(id)a3 completion:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = v7;
  if (!v6)
  {
    [AADaemonController handleAppleAccountDeleteForAccount:completion:];
    if (v8)
    {
      goto LABEL_3;
    }

LABEL_5:
    [AADaemonController handleAppleAccountDeleteForAccount:completion:];
    goto LABEL_3;
  }

  if (!v7)
  {
    goto LABEL_5;
  }

LABEL_3:
  v9 = _os_activity_create(&dword_1B6F6A000, "daemon-appleaccount/handle-AppleAccount-Delete", MEMORY[0x1E69E9C00], OS_ACTIVITY_FLAG_DEFAULT);
  state.opaque[0] = 0;
  state.opaque[1] = 0;
  os_activity_scope_enter(v9, &state);
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 3221225472;
  aBlock[2] = __68__AADaemonController_handleAppleAccountDeleteForAccount_completion___block_invoke;
  aBlock[3] = &unk_1E7C9B518;
  aBlock[4] = self;
  v10 = v8;
  v18 = v10;
  v11 = _Block_copy(aBlock);
  remoteService = self->_remoteService;
  v15[0] = MEMORY[0x1E69E9820];
  v15[1] = 3221225472;
  v15[2] = __68__AADaemonController_handleAppleAccountDeleteForAccount_completion___block_invoke_2;
  v15[3] = &unk_1E7C9B078;
  v13 = v11;
  v16 = v13;
  v14 = [(AAFXPCSession *)remoteService remoteServiceProxyWithErrorHandler:v15];
  [v14 handleAppleAccountDeleteForAccount:v6 completion:v13];

  os_activity_scope_leave(&state);
}

uint64_t __68__AADaemonController_handleAppleAccountDeleteForAccount_completion___block_invoke(uint64_t a1)
{
  result = *(a1 + 40);
  if (result)
  {
    return (*(result + 16))();
  }

  return result;
}

void __68__AADaemonController_handleAppleAccountDeleteForAccount_completion___block_invoke_2(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = _AALogSystem();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
  {
    __68__AADaemonController_handleAppleAccountDeleteForAccount_completion___block_invoke_2_cold_1();
  }

  (*(*(a1 + 32) + 16))();
}

- (void)cacheLoginResponse:(id)a3 forAccount:(id)a4 completion:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  if (!v8)
  {
    [AADaemonController cacheLoginResponse:forAccount:completion:];
    if (v9)
    {
      goto LABEL_3;
    }

LABEL_5:
    [AADaemonController cacheLoginResponse:forAccount:completion:];
    goto LABEL_3;
  }

  if (!v9)
  {
    goto LABEL_5;
  }

LABEL_3:
  v14 = MEMORY[0x1E69E9820];
  v15 = 3221225472;
  v16 = __63__AADaemonController_cacheLoginResponse_forAccount_completion___block_invoke;
  v17 = &unk_1E7C9B518;
  v18 = self;
  v19 = v10;
  v11 = v10;
  v12 = _Block_copy(&v14);
  v13 = [(AAFXPCSession *)self->_remoteService remoteServiceProxyWithErrorHandler:v12, v14, v15, v16, v17, v18];
  [v13 cacheLoginResponse:v8 forAccount:v9 completion:v12];
}

uint64_t __63__AADaemonController_cacheLoginResponse_forAccount_completion___block_invoke(uint64_t a1)
{
  result = *(a1 + 40);
  if (result)
  {
    return (*(result + 16))();
  }

  return result;
}

- (void)fetchCachedLoginResponseForAccount:(id)a3 completion:(id)a4
{
  v6 = a3;
  v7 = a4;
  if (!v6)
  {
    [AADaemonController fetchCachedLoginResponseForAccount:completion:];
  }

  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 3221225472;
  aBlock[2] = __68__AADaemonController_fetchCachedLoginResponseForAccount_completion___block_invoke;
  aBlock[3] = &unk_1E7C9BA38;
  aBlock[4] = self;
  v16 = v7;
  v8 = v7;
  v9 = _Block_copy(aBlock);
  remoteService = self->_remoteService;
  v13[0] = MEMORY[0x1E69E9820];
  v13[1] = 3221225472;
  v13[2] = __68__AADaemonController_fetchCachedLoginResponseForAccount_completion___block_invoke_2;
  v13[3] = &unk_1E7C9B078;
  v14 = v9;
  v11 = v9;
  v12 = [(AAFXPCSession *)remoteService remoteServiceProxyWithErrorHandler:v13];
  [v12 fetchCachedLoginResponseForAccount:v6 completion:v11];
}

uint64_t __68__AADaemonController_fetchCachedLoginResponseForAccount_completion___block_invoke(uint64_t a1)
{
  result = *(a1 + 40);
  if (result)
  {
    return (*(result + 16))();
  }

  return result;
}

- (void)urlConfigurationWithCompletion:(id)a3
{
  v4 = a3;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 3221225472;
  aBlock[2] = __53__AADaemonController_urlConfigurationWithCompletion___block_invoke;
  aBlock[3] = &unk_1E7C9BA60;
  aBlock[4] = self;
  v5 = v4;
  v22 = v5;
  v6 = _Block_copy(aBlock);
  remoteService = self->_remoteService;
  v19[0] = MEMORY[0x1E69E9820];
  v19[1] = 3221225472;
  v19[2] = __53__AADaemonController_urlConfigurationWithCompletion___block_invoke_70;
  v19[3] = &unk_1E7C9B078;
  v8 = v6;
  v20 = v8;
  v9 = [(AAFXPCSession *)remoteService remoteServiceProxyWithErrorHandler:v19];
  v10 = _AALogSystem();
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEBUG))
  {
    [(AADaemonController *)v10 urlConfigurationWithCompletion:v11, v12, v13, v14, v15, v16, v17];
  }

  v18 = self->_remoteService;
  if (objc_opt_respondsToSelector())
  {
    [(AAFXPCSession *)self->_remoteService activate];
  }

  [v9 urlConfigurationWithCompletion:v8];
}

void __53__AADaemonController_urlConfigurationWithCompletion___block_invoke(uint64_t a1, void *a2, void *a3, void *a4)
{
  v20 = *MEMORY[0x1E69E9840];
  v7 = a2;
  v8 = a3;
  v9 = a4;
  if (*(a1 + 40))
  {
    v10 = _AALogSystem();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEBUG))
    {
      v12 = 136315906;
      v13 = "[AADaemonController urlConfigurationWithCompletion:]_block_invoke";
      v14 = 2112;
      v15 = v7;
      v16 = 2112;
      v17 = v8;
      v18 = 2112;
      v19 = v9;
      _os_log_debug_impl(&dword_1B6F6A000, v10, OS_LOG_TYPE_DEBUG, "%s configuration: %@, response: %@, error: %@", &v12, 0x2Au);
    }

    (*(*(a1 + 40) + 16))();
  }

  v11 = *MEMORY[0x1E69E9840];
}

void __53__AADaemonController_urlConfigurationWithCompletion___block_invoke_70(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = _AALogSystem();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEBUG))
  {
    __53__AADaemonController_urlConfigurationWithCompletion___block_invoke_70_cold_1(v4, v5, v6, v7, v8, v9, v10, v11);
  }

  (*(*(a1 + 32) + 16))();
}

- (void)removeProtoAccountWithCompletion:(id)a3
{
  v4 = a3;
  v5 = _os_activity_create(&dword_1B6F6A000, "daemon-appleaccount/remove-proto-account", MEMORY[0x1E69E9C00], OS_ACTIVITY_FLAG_DEFAULT);
  state.opaque[0] = 0;
  state.opaque[1] = 0;
  os_activity_scope_enter(v5, &state);
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 3221225472;
  aBlock[2] = __55__AADaemonController_removeProtoAccountWithCompletion___block_invoke;
  aBlock[3] = &unk_1E7C9B518;
  aBlock[4] = self;
  v6 = v4;
  v14 = v6;
  v7 = _Block_copy(aBlock);
  remoteService = self->_remoteService;
  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 3221225472;
  v11[2] = __55__AADaemonController_removeProtoAccountWithCompletion___block_invoke_2;
  v11[3] = &unk_1E7C9B078;
  v9 = v7;
  v12 = v9;
  v10 = [(AAFXPCSession *)remoteService remoteServiceProxyWithErrorHandler:v11];
  [v10 removeProtoAccountWithCompletion:v9];

  os_activity_scope_leave(&state);
}

uint64_t __55__AADaemonController_removeProtoAccountWithCompletion___block_invoke(uint64_t a1)
{
  result = *(a1 + 40);
  if (result)
  {
    return (*(result + 16))();
  }

  return result;
}

void __55__AADaemonController_removeProtoAccountWithCompletion___block_invoke_2(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = _AALogSystem();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
  {
    __55__AADaemonController_removeProtoAccountWithCompletion___block_invoke_2_cold_1();
  }

  (*(*(a1 + 32) + 16))();
}

- (void)removeChildOrTeenConnectFollowUpWithCompletion:(id)a3
{
  v4 = a3;
  v5 = _os_activity_create(&dword_1B6F6A000, "daemon-appleaccount/remove-childconnect-followup", MEMORY[0x1E69E9C00], OS_ACTIVITY_FLAG_DEFAULT);
  state.opaque[0] = 0;
  state.opaque[1] = 0;
  os_activity_scope_enter(v5, &state);
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 3221225472;
  aBlock[2] = __69__AADaemonController_removeChildOrTeenConnectFollowUpWithCompletion___block_invoke;
  aBlock[3] = &unk_1E7C9B518;
  aBlock[4] = self;
  v6 = v4;
  v14 = v6;
  v7 = _Block_copy(aBlock);
  remoteService = self->_remoteService;
  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 3221225472;
  v11[2] = __69__AADaemonController_removeChildOrTeenConnectFollowUpWithCompletion___block_invoke_2;
  v11[3] = &unk_1E7C9B078;
  v9 = v7;
  v12 = v9;
  v10 = [(AAFXPCSession *)remoteService remoteServiceProxyWithErrorHandler:v11];
  [v10 removeChildOrTeenConnectFollowUpWithCompletion:v9];

  os_activity_scope_leave(&state);
}

uint64_t __69__AADaemonController_removeChildOrTeenConnectFollowUpWithCompletion___block_invoke(uint64_t a1)
{
  result = *(a1 + 40);
  if (result)
  {
    return (*(result + 16))();
  }

  return result;
}

void __69__AADaemonController_removeChildOrTeenConnectFollowUpWithCompletion___block_invoke_2(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = _AALogSystem();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
  {
    __69__AADaemonController_removeChildOrTeenConnectFollowUpWithCompletion___block_invoke_2_cold_1();
  }

  (*(*(a1 + 32) + 16))();
}

- (void)startAppleIDAvailabilityHealthCheckWithCompletion:(id)a3
{
  v35 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v31[0] = 0;
  v31[1] = v31;
  v31[2] = 0x3032000000;
  v31[3] = __Block_byref_object_copy__4;
  v31[4] = __Block_byref_object_dispose__4;
  v5 = self;
  v32 = v5;
  v6 = _os_activity_create(&dword_1B6F6A000, "appleidavailability-appleaccount/start-appleid-availability-health-check", MEMORY[0x1E69E9C00], OS_ACTIVITY_FLAG_DEFAULT);
  state.opaque[0] = 0;
  state.opaque[1] = 0;
  os_activity_scope_enter(v6, &state);
  v7 = _AASignpostLogSystem();
  v8 = _AASignpostCreate(v7);
  v10 = v9;

  v11 = _AASignpostLogSystem();
  v12 = v11;
  if (v8 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v11))
  {
    *buf = 0;
    _os_signpost_emit_with_name_impl(&dword_1B6F6A000, v12, OS_SIGNPOST_INTERVAL_BEGIN, v8, "AppleIDAvailabilityHealthCheck", " enableTelemetry=YES ", buf, 2u);
  }

  v13 = _AASignpostLogSystem();
  if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 134217984;
    v34 = v8;
    _os_log_impl(&dword_1B6F6A000, v13, OS_LOG_TYPE_DEFAULT, "BEGIN [%lld]: AppleIDAvailabilityHealthCheck  enableTelemetry=YES ", buf, 0xCu);
  }

  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 3221225472;
  aBlock[2] = __72__AADaemonController_startAppleIDAvailabilityHealthCheckWithCompletion___block_invoke;
  aBlock[3] = &unk_1E7C9B3D8;
  v27 = v31;
  v28 = v8;
  v29 = v10;
  v14 = v4;
  v26 = v14;
  v15 = _Block_copy(aBlock);
  remoteService = v5->_remoteService;
  v23[0] = MEMORY[0x1E69E9820];
  v23[1] = 3221225472;
  v23[2] = __72__AADaemonController_startAppleIDAvailabilityHealthCheckWithCompletion___block_invoke_73;
  v23[3] = &unk_1E7C9B078;
  v17 = v15;
  v24 = v17;
  v18 = [(AAFXPCSession *)remoteService remoteServiceProxyWithErrorHandler:v23];
  v21[0] = MEMORY[0x1E69E9820];
  v21[1] = 3221225472;
  v21[2] = __72__AADaemonController_startAppleIDAvailabilityHealthCheckWithCompletion___block_invoke_74;
  v21[3] = &unk_1E7C9B078;
  v19 = v17;
  v22 = v19;
  [v18 startAppleIDAvailabilityHealthCheckWithCompletion:v21];

  os_activity_scope_leave(&state);
  _Block_object_dispose(v31, 8);

  v20 = *MEMORY[0x1E69E9840];
}

void __72__AADaemonController_startAppleIDAvailabilityHealthCheckWithCompletion___block_invoke(void *a1, void *a2)
{
  v24 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = *(a1[5] + 8);
  v5 = *(v4 + 40);
  *(v4 + 40) = 0;

  Nanoseconds = _AASignpostGetNanoseconds(a1[6], a1[7]);
  v7 = _AASignpostLogSystem();
  v8 = v7;
  v9 = a1[6];
  if (v9 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v7))
  {
    v10 = _AAErrorUnderlyingError(v3);
    v18 = 67240192;
    LODWORD(v19) = [v10 code];
    _os_signpost_emit_with_name_impl(&dword_1B6F6A000, v8, OS_SIGNPOST_INTERVAL_END, v9, "AppleIDAvailabilityHealthCheck", " Error=%{public,signpost.telemetry:number2,name=Error}d ", &v18, 8u);
  }

  v11 = _AASignpostLogSystem();
  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
  {
    v12 = Nanoseconds / 1000000000.0;
    v13 = a1[6];
    v14 = _AAErrorUnderlyingError(v3);
    v15 = [v14 code];
    v18 = 134218496;
    v19 = v13;
    v20 = 2048;
    v21 = v12;
    v22 = 1026;
    v23 = v15;
    _os_log_impl(&dword_1B6F6A000, v11, OS_LOG_TYPE_DEFAULT, "END [%lld] %fs: AppleIDAvailabilityHealthCheck  Error=%{public,signpost.telemetry:number2,name=Error}d ", &v18, 0x1Cu);
  }

  v16 = a1[4];
  if (v16)
  {
    (*(v16 + 16))(v16, v3);
  }

  v17 = *MEMORY[0x1E69E9840];
}

void __72__AADaemonController_startAppleIDAvailabilityHealthCheckWithCompletion___block_invoke_73(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = _AALogSystem();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
  {
    __72__AADaemonController_startAppleIDAvailabilityHealthCheckWithCompletion___block_invoke_73_cold_1();
  }

  (*(*(a1 + 32) + 16))();
}

void __72__AADaemonController_startAppleIDAvailabilityHealthCheckWithCompletion___block_invoke_74(uint64_t a1, void *a2)
{
  v3 = a2;
  if (v3)
  {
    v4 = _AALogSystem();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      __72__AADaemonController_startAppleIDAvailabilityHealthCheckWithCompletion___block_invoke_74_cold_1(v3, v4);
    }
  }

  (*(*(a1 + 32) + 16))();
}

- (void)configureRemoteInterface:(id)a3
{
  v19[2] = *MEMORY[0x1E69E9840];
  v3 = MEMORY[0x1E695DFD8];
  v4 = a3;
  v19[0] = objc_opt_class();
  v19[1] = objc_opt_class();
  v5 = [MEMORY[0x1E695DEC8] arrayWithObjects:v19 count:2];
  v6 = [v3 setWithArray:v5];

  [v4 setClasses:v6 forSelector:sel_handleAppleAccountDeleteForAccount_completion_ argumentIndex:0 ofReply:1];
  v7 = [v6 copy];
  [v4 setClasses:v7 forSelector:sel_removeProtoAccountWithCompletion_ argumentIndex:0 ofReply:1];

  v8 = MEMORY[0x1E695DFD8];
  v12 = objc_opt_class();
  v13 = objc_opt_class();
  v14 = objc_opt_class();
  v15 = objc_opt_class();
  v16 = objc_opt_class();
  v17 = objc_opt_class();
  v18 = objc_opt_class();
  v9 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v12 count:7];
  v10 = [v8 setWithArray:{v9, v12, v13, v14, v15, v16, v17}];

  [v4 setClasses:v10 forSelector:sel_urlConfigurationWithCompletion_ argumentIndex:0 ofReply:1];
  v11 = *MEMORY[0x1E69E9840];
}

- (void)handleAppleAccountDeleteForAccount:completion:.cold.1()
{
  OUTLINED_FUNCTION_0_4();
  v1 = [MEMORY[0x1E696AAA8] currentHandler];
  OUTLINED_FUNCTION_1_3();
  [v0 handleFailureInMethod:@"oldAccount" object:? file:? lineNumber:? description:?];
}

- (void)handleAppleAccountDeleteForAccount:completion:.cold.2()
{
  OUTLINED_FUNCTION_0_4();
  v1 = [MEMORY[0x1E696AAA8] currentHandler];
  OUTLINED_FUNCTION_1_3();
  [v0 handleFailureInMethod:@"completion" object:? file:? lineNumber:? description:?];
}

void __68__AADaemonController_handleAppleAccountDeleteForAccount_completion___block_invoke_2_cold_1()
{
  v7 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_0_7();
  OUTLINED_FUNCTION_1_5(&dword_1B6F6A000, v0, v1, "Connection to remote service to %{public}s returned an error: %{public}@", v2, v3, v4, v5, 2u);
  v6 = *MEMORY[0x1E69E9840];
}

- (void)cacheLoginResponse:forAccount:completion:.cold.1()
{
  OUTLINED_FUNCTION_0_4();
  v1 = [MEMORY[0x1E696AAA8] currentHandler];
  OUTLINED_FUNCTION_1_3();
  [v0 handleFailureInMethod:@"loginResponse" object:? file:? lineNumber:? description:?];
}

- (void)cacheLoginResponse:forAccount:completion:.cold.2()
{
  OUTLINED_FUNCTION_0_4();
  v1 = [MEMORY[0x1E696AAA8] currentHandler];
  OUTLINED_FUNCTION_1_3();
  [v0 handleFailureInMethod:@"account" object:? file:? lineNumber:? description:?];
}

- (void)fetchCachedLoginResponseForAccount:completion:.cold.1()
{
  OUTLINED_FUNCTION_0_4();
  v1 = [MEMORY[0x1E696AAA8] currentHandler];
  OUTLINED_FUNCTION_1_3();
  [v0 handleFailureInMethod:@"account" object:? file:? lineNumber:? description:?];
}

- (void)urlConfigurationWithCompletion:(uint64_t)a3 .cold.1(NSObject *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v9 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_4_0(&dword_1B6F6A000, a1, a3, "%s Initiating url configuration fetch...", a5, a6, a7, a8, 2u);
  v8 = *MEMORY[0x1E69E9840];
}

void __53__AADaemonController_urlConfigurationWithCompletion___block_invoke_70_cold_1(NSObject *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v9 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_4_0(&dword_1B6F6A000, a1, a3, "%s Failed to create proxy...", a5, a6, a7, a8, 2u);
  v8 = *MEMORY[0x1E69E9840];
}

void __55__AADaemonController_removeProtoAccountWithCompletion___block_invoke_2_cold_1()
{
  v7 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_0_7();
  OUTLINED_FUNCTION_1_5(&dword_1B6F6A000, v0, v1, "Connection to remote service to %{public}s returned an error: %{public}@", v2, v3, v4, v5, 2u);
  v6 = *MEMORY[0x1E69E9840];
}

void __69__AADaemonController_removeChildOrTeenConnectFollowUpWithCompletion___block_invoke_2_cold_1()
{
  v7 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_0_7();
  OUTLINED_FUNCTION_1_5(&dword_1B6F6A000, v0, v1, "Connection to remote service to %{public}s returned an error: %{public}@", v2, v3, v4, v5, 2u);
  v6 = *MEMORY[0x1E69E9840];
}

void __72__AADaemonController_startAppleIDAvailabilityHealthCheckWithCompletion___block_invoke_73_cold_1()
{
  v7 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_0_7();
  OUTLINED_FUNCTION_1_5(&dword_1B6F6A000, v0, v1, "Connection to remote service to %{public}s returned an error: %{public}@", v2, v3, v4, v5, 2u);
  v6 = *MEMORY[0x1E69E9840];
}

void __72__AADaemonController_startAppleIDAvailabilityHealthCheckWithCompletion___block_invoke_74_cold_1(uint64_t a1, NSObject *a2)
{
  v5 = *MEMORY[0x1E69E9840];
  v3 = 138412290;
  v4 = a1;
  _os_log_error_impl(&dword_1B6F6A000, a2, OS_LOG_TYPE_ERROR, "Apple ID Availability health check failed: %@", &v3, 0xCu);
  v2 = *MEMORY[0x1E69E9840];
}

@end