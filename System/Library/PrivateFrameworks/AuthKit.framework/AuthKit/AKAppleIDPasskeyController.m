@interface AKAppleIDPasskeyController
- (AKAppleIDPasskeyController)init;
- (AKAppleIDPasskeyController)initWithXPCSession:(id)a3;
- (void)appleIDPasskeyStatusWithContext:(id)a3 completion:(id)a4;
- (void)remoteServiceDidInterrupt;
- (void)remoteServiceDidInvalidate;
- (void)setupAppleIDPasskeyWithContext:(id)a3 completion:(id)a4;
- (void)unenrollAppleIDPasskeyWithContext:(id)a3 completion:(id)a4;
- (void)verifyAppleIDPasskeyWithContext:(id)a3 completion:(id)a4;
@end

@implementation AKAppleIDPasskeyController

- (AKAppleIDPasskeyController)init
{
  v8 = self;
  v7[1] = a2;
  v7[0] = [objc_alloc(MEMORY[0x1E6985E18]) initWithServiceName:@"com.apple.ak.appleidpasskey.xpc" remoteProtocol:&unk_1F07DCE68 options:0];
  v2 = objc_alloc(MEMORY[0x1E6985E10]);
  v6 = [v2 initWithRemoteServiceConfig:v7[0] delegate:v8];
  v3 = v8;
  v8 = 0;
  v8 = [(AKAppleIDPasskeyController *)v3 initWithXPCSession:v6];
  objc_storeStrong(&v8, v8);
  v5 = MEMORY[0x1E69E5928](v8);
  objc_storeStrong(&v6, 0);
  objc_storeStrong(v7, 0);
  objc_storeStrong(&v8, 0);
  return v5;
}

- (AKAppleIDPasskeyController)initWithXPCSession:(id)a3
{
  v8 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  v3 = v8;
  v8 = 0;
  v6.receiver = v3;
  v6.super_class = AKAppleIDPasskeyController;
  v8 = [(AKAppleIDPasskeyController *)&v6 init];
  objc_storeStrong(&v8, v8);
  if (v8)
  {
    objc_storeStrong(&v8->_remoteService, location[0]);
    [(AAFXPCSession *)v8->_remoteService resume];
  }

  v5 = MEMORY[0x1E69E5928](v8);
  objc_storeStrong(location, 0);
  objc_storeStrong(&v8, 0);
  return v5;
}

- (void)remoteServiceDidInterrupt
{
  location[2] = self;
  location[1] = a2;
  location[0] = _AKLogPasskey();
  v5 = 16;
  if (os_log_type_enabled(location[0], OS_LOG_TYPE_ERROR))
  {
    log = location[0];
    type = v5;
    __os_log_helper_16_0_0(v4);
    _os_log_error_impl(&dword_193225000, log, type, "Connection to AppleIDPasskey remote service was interrupted", v4, 2u);
  }

  objc_storeStrong(location, 0);
}

- (void)remoteServiceDidInvalidate
{
  location[2] = self;
  location[1] = a2;
  location[0] = _AKLogPasskey();
  v5 = 16;
  if (os_log_type_enabled(location[0], OS_LOG_TYPE_ERROR))
  {
    log = location[0];
    type = v5;
    __os_log_helper_16_0_0(v4);
    _os_log_error_impl(&dword_193225000, log, type, "Connection to AppleIDPasskey remote service was invalidated", v4, 2u);
  }

  objc_storeStrong(location, 0);
}

- (void)setupAppleIDPasskeyWithContext:(id)a3 completion:(id)a4
{
  v42 = *MEMORY[0x1E69E9840];
  v40 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  v38 = 0;
  objc_storeStrong(&v38, a4);
  v36 = _os_activity_create(&dword_193225000, "AppleIDPasskey/setupAppleIDPasskey", MEMORY[0x1E69E9C00], OS_ACTIVITY_FLAG_DEFAULT);
  v37 = v36;
  state.opaque[0] = 0;
  state.opaque[1] = 0;
  os_activity_scope_enter(v36, &state);
  v34 = 0uLL;
  v9 = _AKSignpostLogSystem();
  *&v33 = _AKSignpostCreate(v9);
  *(&v33 + 1) = v4;
  MEMORY[0x1E69E5920](v9);
  v32 = _AKSignpostLogSystem();
  v31 = 1;
  v30 = v33;
  if (v33 && v30 != -1 && os_signpost_enabled(v32))
  {
    log = v32;
    type = v31;
    spid = v30;
    __os_log_helper_16_0_0(v29);
    _os_signpost_emit_with_name_impl(&dword_193225000, log, type, spid, "AppleIDPasskeySetup", " enableTelemetry=YES ", v29, 2u);
  }

  objc_storeStrong(&v32, 0);
  v28 = _AKSignpostLogSystem();
  v27 = OS_LOG_TYPE_DEFAULT;
  if (os_log_type_enabled(v28, OS_LOG_TYPE_DEFAULT))
  {
    __os_log_helper_16_0_1_8_0(v41, v33);
    _os_log_impl(&dword_193225000, v28, v27, "BEGIN [%lld]: AppleIDPasskeySetup  enableTelemetry=YES ", v41, 0xCu);
  }

  objc_storeStrong(&v28, 0);
  v34 = v33;
  v18 = MEMORY[0x1E69E9820];
  v19 = -1073741824;
  v20 = 0;
  v21 = __72__AKAppleIDPasskeyController_setupAppleIDPasskeyWithContext_completion___block_invoke;
  v22 = &unk_1E73D71D0;
  v23 = MEMORY[0x1E69E5928](v40);
  v25 = v34;
  v24 = MEMORY[0x1E69E5928](v38);
  v26 = MEMORY[0x193B165F0](&v18);
  remoteService = v40->_remoteService;
  v11 = MEMORY[0x1E69E9820];
  v12 = -1073741824;
  v13 = 0;
  v14 = __72__AKAppleIDPasskeyController_setupAppleIDPasskeyWithContext_completion___block_invoke_69;
  v15 = &unk_1E73D3510;
  v16 = MEMORY[0x1E69E5928](v26);
  v17 = [(AAFXPCSession *)remoteService remoteServiceProxyWithErrorHandler:&v11];
  [v17 setupAppleIDPasskeyWithContext:location[0] completion:v26];
  objc_storeStrong(&v17, 0);
  objc_storeStrong(&v16, 0);
  objc_storeStrong(&v26, 0);
  objc_storeStrong(&v24, 0);
  objc_storeStrong(&v23, 0);
  os_activity_scope_leave(&state);
  objc_storeStrong(&v37, 0);
  objc_storeStrong(&v38, 0);
  objc_storeStrong(location, 0);
  *MEMORY[0x1E69E9840];
}

void __72__AKAppleIDPasskeyController_setupAppleIDPasskeyWithContext_completion___block_invoke(void *a1, char a2, id obj)
{
  v23 = *MEMORY[0x1E69E9840];
  v19 = a1;
  v18 = a2;
  location = 0;
  objc_storeStrong(&location, obj);
  v16 = a1;
  v15 = _AKSignpostGetNanoseconds(a1[6], a1[7]) / 1000000000.0;
  v14 = _AKSignpostLogSystem();
  v13 = OS_SIGNPOST_INTERVAL_END;
  v12 = a1[6];
  if (v12 && v12 != -1 && os_signpost_enabled(v14))
  {
    __os_log_helper_16_0_1_4_2(v22, [location code]);
    _os_signpost_emit_with_name_impl(&dword_193225000, v14, v13, v12, "AppleIDPasskeySetup", " Error=%{public,signpost.telemetry:number2,name=Error}d ", v22, 8u);
  }

  objc_storeStrong(&v14, 0);
  v11 = _AKSignpostLogSystem();
  v10 = OS_LOG_TYPE_DEFAULT;
  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
  {
    __os_log_helper_16_0_3_8_0_8_0_4_2(v21, a1[6], *&v15, [location code]);
    _os_log_impl(&dword_193225000, v11, v10, "END [%lld] %fs:AppleIDPasskeySetup  Error=%{public,signpost.telemetry:number2,name=Error}d ", v21, 0x1Cu);
  }

  objc_storeStrong(&v11, 0);
  if (v18)
  {
    oslog = _AKLogPasskey();
    v8 = OS_LOG_TYPE_DEFAULT;
    if (os_log_type_enabled(oslog, OS_LOG_TYPE_DEFAULT))
    {
      v3 = oslog;
      v4 = v8;
      __os_log_helper_16_0_0(v7);
      _os_log_impl(&dword_193225000, v3, v4, "Completed AppleID passkey setup successfully", v7, 2u);
    }

    objc_storeStrong(&oslog, 0);
  }

  else
  {
    v6 = _AKLogPasskey();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      __os_log_helper_16_2_1_8_64(v20, location);
      _os_log_error_impl(&dword_193225000, v6, OS_LOG_TYPE_ERROR, "AppleID passkey setup failed with error: %@", v20, 0xCu);
    }

    objc_storeStrong(&v6, 0);
  }

  if (a1[5])
  {
    (*(a1[5] + 16))();
  }

  objc_storeStrong(&location, 0);
  *MEMORY[0x1E69E9840];
}

void __72__AKAppleIDPasskeyController_setupAppleIDPasskeyWithContext_completion___block_invoke_69(void *a1, void *a2)
{
  location[1] = a1;
  location[0] = 0;
  objc_storeStrong(location, a2);
  (*(a1[4] + 16))();
  objc_storeStrong(location, 0);
}

- (void)verifyAppleIDPasskeyWithContext:(id)a3 completion:(id)a4
{
  v42 = *MEMORY[0x1E69E9840];
  v40 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  v38 = 0;
  objc_storeStrong(&v38, a4);
  v36 = _os_activity_create(&dword_193225000, "AppleIDPasskey/verifyAppleIDPasskey", MEMORY[0x1E69E9C00], OS_ACTIVITY_FLAG_DEFAULT);
  v37 = v36;
  state.opaque[0] = 0;
  state.opaque[1] = 0;
  os_activity_scope_enter(v36, &state);
  v34 = 0uLL;
  v9 = _AKSignpostLogSystem();
  *&v33 = _AKSignpostCreate(v9);
  *(&v33 + 1) = v4;
  MEMORY[0x1E69E5920](v9);
  v32 = _AKSignpostLogSystem();
  v31 = 1;
  v30 = v33;
  if (v33 && v30 != -1 && os_signpost_enabled(v32))
  {
    log = v32;
    type = v31;
    spid = v30;
    __os_log_helper_16_0_0(v29);
    _os_signpost_emit_with_name_impl(&dword_193225000, log, type, spid, "AppleIDPasskeyVerification", " enableTelemetry=YES ", v29, 2u);
  }

  objc_storeStrong(&v32, 0);
  v28 = _AKSignpostLogSystem();
  v27 = OS_LOG_TYPE_DEFAULT;
  if (os_log_type_enabled(v28, OS_LOG_TYPE_DEFAULT))
  {
    __os_log_helper_16_0_1_8_0(v41, v33);
    _os_log_impl(&dword_193225000, v28, v27, "BEGIN [%lld]: AppleIDPasskeyVerification  enableTelemetry=YES ", v41, 0xCu);
  }

  objc_storeStrong(&v28, 0);
  v34 = v33;
  v18 = MEMORY[0x1E69E9820];
  v19 = -1073741824;
  v20 = 0;
  v21 = __73__AKAppleIDPasskeyController_verifyAppleIDPasskeyWithContext_completion___block_invoke;
  v22 = &unk_1E73D71F8;
  v23 = MEMORY[0x1E69E5928](v40);
  v25 = v34;
  v24 = MEMORY[0x1E69E5928](v38);
  v26 = MEMORY[0x193B165F0](&v18);
  remoteService = v40->_remoteService;
  v11 = MEMORY[0x1E69E9820];
  v12 = -1073741824;
  v13 = 0;
  v14 = __73__AKAppleIDPasskeyController_verifyAppleIDPasskeyWithContext_completion___block_invoke_72;
  v15 = &unk_1E73D3510;
  v16 = MEMORY[0x1E69E5928](v26);
  v17 = [(AAFXPCSession *)remoteService remoteServiceProxyWithErrorHandler:&v11];
  [v17 verifyAppleIDPasskeyWithContext:location[0] completion:v26];
  objc_storeStrong(&v17, 0);
  objc_storeStrong(&v16, 0);
  objc_storeStrong(&v26, 0);
  objc_storeStrong(&v24, 0);
  objc_storeStrong(&v23, 0);
  os_activity_scope_leave(&state);
  objc_storeStrong(&v37, 0);
  objc_storeStrong(&v38, 0);
  objc_storeStrong(location, 0);
  *MEMORY[0x1E69E9840];
}

void __73__AKAppleIDPasskeyController_verifyAppleIDPasskeyWithContext_completion___block_invoke(void *a1, void *a2, void *a3)
{
  v23 = *MEMORY[0x1E69E9840];
  location[1] = a1;
  location[0] = 0;
  objc_storeStrong(location, a2);
  v18 = 0;
  objc_storeStrong(&v18, a3);
  v17 = a1;
  v16 = _AKSignpostGetNanoseconds(a1[6], a1[7]) / 1000000000.0;
  v15 = _AKSignpostLogSystem();
  v14 = OS_SIGNPOST_INTERVAL_END;
  v13 = a1[6];
  if (v13 && v13 != -1 && os_signpost_enabled(v15))
  {
    __os_log_helper_16_0_1_4_2(v22, [v18 code]);
    _os_signpost_emit_with_name_impl(&dword_193225000, v15, v14, v13, "AppleIDPasskeyVerification", " Error=%{public,signpost.telemetry:number2,name=Error}d ", v22, 8u);
  }

  objc_storeStrong(&v15, 0);
  v12 = _AKSignpostLogSystem();
  v11 = OS_LOG_TYPE_DEFAULT;
  if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
  {
    __os_log_helper_16_0_3_8_0_8_0_4_2(v21, a1[6], *&v16, [v18 code]);
    _os_log_impl(&dword_193225000, v12, v11, "END [%lld] %fs:AppleIDPasskeyVerification  Error=%{public,signpost.telemetry:number2,name=Error}d ", v21, 0x1Cu);
  }

  objc_storeStrong(&v12, 0);
  if (location[0])
  {
    v10 = _AKLogPasskey();
    v9 = OS_LOG_TYPE_DEFAULT;
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
    {
      v3 = v10;
      v4 = v9;
      __os_log_helper_16_0_0(v8);
      _os_log_impl(&dword_193225000, v3, v4, "Completed AppleID passkey verification successfully", v8, 2u);
    }

    objc_storeStrong(&v10, 0);
  }

  else
  {
    oslog = _AKLogPasskey();
    if (os_log_type_enabled(oslog, OS_LOG_TYPE_ERROR))
    {
      __os_log_helper_16_2_1_8_64(v20, v18);
      _os_log_error_impl(&dword_193225000, oslog, OS_LOG_TYPE_ERROR, "AppleID passkey verification failed with error: %@", v20, 0xCu);
    }

    objc_storeStrong(&oslog, 0);
  }

  if (a1[5])
  {
    (*(a1[5] + 16))();
  }

  objc_storeStrong(&v18, 0);
  objc_storeStrong(location, 0);
  *MEMORY[0x1E69E9840];
}

void __73__AKAppleIDPasskeyController_verifyAppleIDPasskeyWithContext_completion___block_invoke_72(void *a1, void *a2)
{
  location[1] = a1;
  location[0] = 0;
  objc_storeStrong(location, a2);
  (*(a1[4] + 16))();
  objc_storeStrong(location, 0);
}

- (void)unenrollAppleIDPasskeyWithContext:(id)a3 completion:(id)a4
{
  v42 = *MEMORY[0x1E69E9840];
  v40 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  v38 = 0;
  objc_storeStrong(&v38, a4);
  v36 = _os_activity_create(&dword_193225000, "AppleIDPasskey/unenrollAppleIDPasskey", MEMORY[0x1E69E9C00], OS_ACTIVITY_FLAG_DEFAULT);
  v37 = v36;
  state.opaque[0] = 0;
  state.opaque[1] = 0;
  os_activity_scope_enter(v36, &state);
  v34 = 0uLL;
  v9 = _AKSignpostLogSystem();
  *&v33 = _AKSignpostCreate(v9);
  *(&v33 + 1) = v4;
  MEMORY[0x1E69E5920](v9);
  v32 = _AKSignpostLogSystem();
  v31 = 1;
  v30 = v33;
  if (v33 && v30 != -1 && os_signpost_enabled(v32))
  {
    log = v32;
    type = v31;
    spid = v30;
    __os_log_helper_16_0_0(v29);
    _os_signpost_emit_with_name_impl(&dword_193225000, log, type, spid, "AppleIDPasskeyUnenroll", " enableTelemetry=YES ", v29, 2u);
  }

  objc_storeStrong(&v32, 0);
  v28 = _AKSignpostLogSystem();
  v27 = OS_LOG_TYPE_DEFAULT;
  if (os_log_type_enabled(v28, OS_LOG_TYPE_DEFAULT))
  {
    __os_log_helper_16_0_1_8_0(v41, v33);
    _os_log_impl(&dword_193225000, v28, v27, "BEGIN [%lld]: AppleIDPasskeyUnenroll  enableTelemetry=YES ", v41, 0xCu);
  }

  objc_storeStrong(&v28, 0);
  v34 = v33;
  v18 = MEMORY[0x1E69E9820];
  v19 = -1073741824;
  v20 = 0;
  v21 = __75__AKAppleIDPasskeyController_unenrollAppleIDPasskeyWithContext_completion___block_invoke;
  v22 = &unk_1E73D71D0;
  v23 = MEMORY[0x1E69E5928](v40);
  v25 = v34;
  v24 = MEMORY[0x1E69E5928](v38);
  v26 = MEMORY[0x193B165F0](&v18);
  remoteService = v40->_remoteService;
  v11 = MEMORY[0x1E69E9820];
  v12 = -1073741824;
  v13 = 0;
  v14 = __75__AKAppleIDPasskeyController_unenrollAppleIDPasskeyWithContext_completion___block_invoke_73;
  v15 = &unk_1E73D3510;
  v16 = MEMORY[0x1E69E5928](v26);
  v17 = [(AAFXPCSession *)remoteService remoteServiceProxyWithErrorHandler:&v11];
  [v17 unenrollAppleIDPasskeyWithContext:location[0] completion:v26];
  objc_storeStrong(&v17, 0);
  objc_storeStrong(&v16, 0);
  objc_storeStrong(&v26, 0);
  objc_storeStrong(&v24, 0);
  objc_storeStrong(&v23, 0);
  os_activity_scope_leave(&state);
  objc_storeStrong(&v37, 0);
  objc_storeStrong(&v38, 0);
  objc_storeStrong(location, 0);
  *MEMORY[0x1E69E9840];
}

void __75__AKAppleIDPasskeyController_unenrollAppleIDPasskeyWithContext_completion___block_invoke(void *a1, char a2, id obj)
{
  v23 = *MEMORY[0x1E69E9840];
  v19 = a1;
  v18 = a2;
  location = 0;
  objc_storeStrong(&location, obj);
  v16 = a1;
  v15 = _AKSignpostGetNanoseconds(a1[6], a1[7]) / 1000000000.0;
  v14 = _AKSignpostLogSystem();
  v13 = OS_SIGNPOST_INTERVAL_END;
  v12 = a1[6];
  if (v12 && v12 != -1 && os_signpost_enabled(v14))
  {
    __os_log_helper_16_0_1_4_2(v22, [location code]);
    _os_signpost_emit_with_name_impl(&dword_193225000, v14, v13, v12, "AppleIDPasskeyUnenroll", " Error=%{public,signpost.telemetry:number2,name=Error}d ", v22, 8u);
  }

  objc_storeStrong(&v14, 0);
  v11 = _AKSignpostLogSystem();
  v10 = OS_LOG_TYPE_DEFAULT;
  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
  {
    __os_log_helper_16_0_3_8_0_8_0_4_2(v21, a1[6], *&v15, [location code]);
    _os_log_impl(&dword_193225000, v11, v10, "END [%lld] %fs:AppleIDPasskeyUnenroll  Error=%{public,signpost.telemetry:number2,name=Error}d ", v21, 0x1Cu);
  }

  objc_storeStrong(&v11, 0);
  if (v18)
  {
    oslog = _AKLogPasskey();
    v8 = OS_LOG_TYPE_DEFAULT;
    if (os_log_type_enabled(oslog, OS_LOG_TYPE_DEFAULT))
    {
      v3 = oslog;
      v4 = v8;
      __os_log_helper_16_0_0(v7);
      _os_log_impl(&dword_193225000, v3, v4, "Completed AppleID passkey unenroll successfully", v7, 2u);
    }

    objc_storeStrong(&oslog, 0);
  }

  else
  {
    v6 = _AKLogPasskey();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      __os_log_helper_16_2_1_8_64(v20, location);
      _os_log_error_impl(&dword_193225000, v6, OS_LOG_TYPE_ERROR, "AppleID passkey unenroll failed with error: %@", v20, 0xCu);
    }

    objc_storeStrong(&v6, 0);
  }

  if (a1[5])
  {
    (*(a1[5] + 16))();
  }

  objc_storeStrong(&location, 0);
  *MEMORY[0x1E69E9840];
}

void __75__AKAppleIDPasskeyController_unenrollAppleIDPasskeyWithContext_completion___block_invoke_73(void *a1, void *a2)
{
  location[1] = a1;
  location[0] = 0;
  objc_storeStrong(location, a2);
  (*(a1[4] + 16))();
  objc_storeStrong(location, 0);
}

- (void)appleIDPasskeyStatusWithContext:(id)a3 completion:(id)a4
{
  v42 = *MEMORY[0x1E69E9840];
  v40 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  v38 = 0;
  objc_storeStrong(&v38, a4);
  v36 = _os_activity_create(&dword_193225000, "AppleIDPasskey/appleIDPasskeyStatus", MEMORY[0x1E69E9C00], OS_ACTIVITY_FLAG_DEFAULT);
  v37 = v36;
  state.opaque[0] = 0;
  state.opaque[1] = 0;
  os_activity_scope_enter(v36, &state);
  v34 = 0uLL;
  v9 = _AKSignpostLogSystem();
  *&v33 = _AKSignpostCreate(v9);
  *(&v33 + 1) = v4;
  MEMORY[0x1E69E5920](v9);
  v32 = _AKSignpostLogSystem();
  v31 = 1;
  v30 = v33;
  if (v33 && v30 != -1 && os_signpost_enabled(v32))
  {
    log = v32;
    type = v31;
    spid = v30;
    __os_log_helper_16_0_0(v29);
    _os_signpost_emit_with_name_impl(&dword_193225000, log, type, spid, "AppleIDPasskeyStatus", " enableTelemetry=YES ", v29, 2u);
  }

  objc_storeStrong(&v32, 0);
  v28 = _AKSignpostLogSystem();
  v27 = OS_LOG_TYPE_DEFAULT;
  if (os_log_type_enabled(v28, OS_LOG_TYPE_DEFAULT))
  {
    __os_log_helper_16_0_1_8_0(v41, v33);
    _os_log_impl(&dword_193225000, v28, v27, "BEGIN [%lld]: AppleIDPasskeyStatus  enableTelemetry=YES ", v41, 0xCu);
  }

  objc_storeStrong(&v28, 0);
  v34 = v33;
  v18 = MEMORY[0x1E69E9820];
  v19 = -1073741824;
  v20 = 0;
  v21 = __73__AKAppleIDPasskeyController_appleIDPasskeyStatusWithContext_completion___block_invoke;
  v22 = &unk_1E73D71F8;
  v23 = MEMORY[0x1E69E5928](v40);
  v25 = v34;
  v24 = MEMORY[0x1E69E5928](v38);
  v26 = MEMORY[0x193B165F0](&v18);
  remoteService = v40->_remoteService;
  v11 = MEMORY[0x1E69E9820];
  v12 = -1073741824;
  v13 = 0;
  v14 = __73__AKAppleIDPasskeyController_appleIDPasskeyStatusWithContext_completion___block_invoke_74;
  v15 = &unk_1E73D3510;
  v16 = MEMORY[0x1E69E5928](v26);
  v17 = [(AAFXPCSession *)remoteService remoteServiceProxyWithErrorHandler:&v11];
  [v17 appleIDPasskeyStatusWithContext:location[0] completion:v26];
  objc_storeStrong(&v17, 0);
  objc_storeStrong(&v16, 0);
  objc_storeStrong(&v26, 0);
  objc_storeStrong(&v24, 0);
  objc_storeStrong(&v23, 0);
  os_activity_scope_leave(&state);
  objc_storeStrong(&v37, 0);
  objc_storeStrong(&v38, 0);
  objc_storeStrong(location, 0);
  *MEMORY[0x1E69E9840];
}

void __73__AKAppleIDPasskeyController_appleIDPasskeyStatusWithContext_completion___block_invoke(void *a1, void *a2, void *a3)
{
  v23 = *MEMORY[0x1E69E9840];
  location[1] = a1;
  location[0] = 0;
  objc_storeStrong(location, a2);
  v18 = 0;
  objc_storeStrong(&v18, a3);
  v17 = a1;
  v16 = _AKSignpostGetNanoseconds(a1[6], a1[7]) / 1000000000.0;
  v15 = _AKSignpostLogSystem();
  v14 = OS_SIGNPOST_INTERVAL_END;
  v13 = a1[6];
  if (v13 && v13 != -1 && os_signpost_enabled(v15))
  {
    __os_log_helper_16_0_1_4_2(v22, [v18 code]);
    _os_signpost_emit_with_name_impl(&dword_193225000, v15, v14, v13, "AppleIDPasskeyStatus", " Error=%{public,signpost.telemetry:number2,name=Error}d ", v22, 8u);
  }

  objc_storeStrong(&v15, 0);
  v12 = _AKSignpostLogSystem();
  v11 = OS_LOG_TYPE_DEFAULT;
  if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
  {
    __os_log_helper_16_0_3_8_0_8_0_4_2(v21, a1[6], *&v16, [v18 code]);
    _os_log_impl(&dword_193225000, v12, v11, "END [%lld] %fs:AppleIDPasskeyStatus  Error=%{public,signpost.telemetry:number2,name=Error}d ", v21, 0x1Cu);
  }

  objc_storeStrong(&v12, 0);
  if (location[0])
  {
    v10 = _AKLogPasskey();
    v9 = OS_LOG_TYPE_DEFAULT;
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
    {
      v3 = v10;
      v4 = v9;
      __os_log_helper_16_0_0(v8);
      _os_log_impl(&dword_193225000, v3, v4, "Completed AppleID passkey status successfully", v8, 2u);
    }

    objc_storeStrong(&v10, 0);
  }

  else
  {
    oslog = _AKLogPasskey();
    if (os_log_type_enabled(oslog, OS_LOG_TYPE_ERROR))
    {
      __os_log_helper_16_2_1_8_64(v20, v18);
      _os_log_error_impl(&dword_193225000, oslog, OS_LOG_TYPE_ERROR, "AppleID passkey status failed with error: %@", v20, 0xCu);
    }

    objc_storeStrong(&oslog, 0);
  }

  if (a1[5])
  {
    (*(a1[5] + 16))();
  }

  objc_storeStrong(&v18, 0);
  objc_storeStrong(location, 0);
  *MEMORY[0x1E69E9840];
}

void __73__AKAppleIDPasskeyController_appleIDPasskeyStatusWithContext_completion___block_invoke_74(void *a1, void *a2)
{
  location[1] = a1;
  location[0] = 0;
  objc_storeStrong(location, a2);
  (*(a1[4] + 16))();
  objc_storeStrong(location, 0);
}

@end