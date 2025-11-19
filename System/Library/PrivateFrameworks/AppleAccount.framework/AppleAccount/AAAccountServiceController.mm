@interface AAAccountServiceController
- (AAAccountServiceController)initWithDaemonXPCEndpoint:(id)a3;
- (void)updatePropertiesForAppleAccount:(id)a3 options:(id)a4 completion:(id)a5;
@end

@implementation AAAccountServiceController

- (AAAccountServiceController)initWithDaemonXPCEndpoint:(id)a3
{
  v4 = a3;
  v9.receiver = self;
  v9.super_class = AAAccountServiceController;
  v5 = [(AAAccountServiceController *)&v9 init];
  if (v5)
  {
    v6 = [[AAAccountServiceDaemonConnection alloc] initWithListenerEndpoint:v4];
    daemonConnection = v5->_daemonConnection;
    v5->_daemonConnection = v6;
  }

  return v5;
}

- (void)updatePropertiesForAppleAccount:(id)a3 options:(id)a4 completion:(id)a5
{
  v35 = *MEMORY[0x1E69E9840];
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v11 = _os_activity_create(&dword_1B6F6A000, "apple-account/update-account-properties", MEMORY[0x1E69E9C00], OS_ACTIVITY_FLAG_DEFAULT);
  state.opaque[0] = 0;
  state.opaque[1] = 0;
  os_activity_scope_enter(v11, &state);
  v30[0] = 0;
  v30[1] = v30;
  v30[2] = 0x3032000000;
  v30[3] = __Block_byref_object_copy_;
  v30[4] = __Block_byref_object_dispose_;
  v12 = self;
  v31 = v12;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 3221225472;
  aBlock[2] = __81__AAAccountServiceController_updatePropertiesForAppleAccount_options_completion___block_invoke;
  aBlock[3] = &unk_1E7C9A7A8;
  v29 = v30;
  v13 = v10;
  v28 = v13;
  v14 = _Block_copy(aBlock);
  daemonConnection = v12->_daemonConnection;
  v21 = MEMORY[0x1E69E9820];
  v22 = 3221225472;
  v23 = __81__AAAccountServiceController_updatePropertiesForAppleAccount_options_completion___block_invoke_2;
  v24 = &unk_1E7C9A7D0;
  v16 = v14;
  v26 = v16;
  v17 = v8;
  v25 = v17;
  v18 = [(AAAccountServiceDaemonConnection *)daemonConnection remoteObjectProxyWithErrorHandler:&v21];
  v19 = _AALogSystem();
  if (os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v34 = v18;
    _os_log_impl(&dword_1B6F6A000, v19, OS_LOG_TYPE_DEFAULT, "Account service updating account properties for account with service: %@", buf, 0xCu);
  }

  [v18 updatePropertiesForAppleAccount:v17 options:v9 completion:{v16, v21, v22, v23, v24}];
  _Block_object_dispose(v30, 8);

  os_activity_scope_leave(&state);
  v20 = *MEMORY[0x1E69E9840];
}

void __81__AAAccountServiceController_updatePropertiesForAppleAccount_options_completion___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v9 = a2;
  v5 = a3;
  v6 = *(*(a1 + 40) + 8);
  v7 = *(v6 + 40);
  *(v6 + 40) = 0;

  v8 = *(a1 + 32);
  if (v8)
  {
    (*(v8 + 16))(v8, v9, v5);
  }
}

void __81__AAAccountServiceController_updatePropertiesForAppleAccount_options_completion___block_invoke_2(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = _AALogSystem();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
  {
    __81__AAAccountServiceController_updatePropertiesForAppleAccount_options_completion___block_invoke_2_cold_1(v3, v4);
  }

  v5 = *(a1 + 32);
  (*(*(a1 + 40) + 16))();
}

void __81__AAAccountServiceController_updatePropertiesForAppleAccount_options_completion___block_invoke_2_cold_1(uint64_t a1, NSObject *a2)
{
  v5 = *MEMORY[0x1E69E9840];
  v3 = 138412290;
  v4 = a1;
  _os_log_error_impl(&dword_1B6F6A000, a2, OS_LOG_TYPE_ERROR, "Account service connection error handler called with: %@.", &v3, 0xCu);
  v2 = *MEMORY[0x1E69E9840];
}

@end