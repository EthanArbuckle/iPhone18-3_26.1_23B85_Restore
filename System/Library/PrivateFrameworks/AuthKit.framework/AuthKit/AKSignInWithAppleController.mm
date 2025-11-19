@interface AKSignInWithAppleController
- (AKSignInWithAppleController)init;
- (AKSignInWithAppleController)initWithXPCSession:(id)a3;
- (void)cancelAppIconRequestForClientID:(id)a3 completion:(id)a4;
- (void)configureRemoteInterface:(id)a3;
- (void)deleteAllItemsFromDepartedGroupWithContext:(id)a3 completion:(id)a4;
- (void)fetchAccountsWithContext:(id)a3 completion:(id)a4;
- (void)fetchAppIconForClientID:(id)a3 iconSize:(CGSize)a4 completion:(id)a5;
- (void)fetchEULAForClientID:(id)a3 completion:(id)a4;
- (void)fetchSharedGroupsWithContext:(id)a3 completion:(id)a4;
- (void)fetchSignInWithApplePrivateEmailCountWithCompletion:(id)a3;
- (void)leaveGroupWithContext:(id)a3 completion:(id)a4;
- (void)participantRemovedWithContext:(id)a3 participantID:(id)a4 completion:(id)a5;
- (void)performHealthCheckWithContext:(id)a3 completion:(id)a4;
- (void)performTokenRotationWithContext:(id)a3 completion:(id)a4;
- (void)remoteServiceDidInterrupt;
- (void)remoteServiceDidInvalidate;
- (void)revokeAcccountWithContext:(id)a3 completion:(id)a4;
- (void)shareAccountWithContext:(id)a3 withGroup:(id)a4 completion:(id)a5;
- (void)unshareAccountWithContext:(id)a3 completion:(id)a4;
@end

@implementation AKSignInWithAppleController

- (AKSignInWithAppleController)init
{
  v8 = self;
  v7[1] = a2;
  v7[0] = [objc_alloc(MEMORY[0x1E6985E18]) initWithServiceName:@"com.apple.ak.signinwithapple.xpc" remoteProtocol:&unk_1F07DD0A8 options:0];
  v2 = objc_alloc(MEMORY[0x1E6985E10]);
  v6 = [v2 initWithRemoteServiceConfig:v7[0] delegate:v8];
  v3 = v8;
  v8 = 0;
  v8 = [(AKSignInWithAppleController *)v3 initWithXPCSession:v6];
  objc_storeStrong(&v8, v8);
  v5 = MEMORY[0x1E69E5928](v8);
  objc_storeStrong(&v6, 0);
  objc_storeStrong(v7, 0);
  objc_storeStrong(&v8, 0);
  return v5;
}

- (AKSignInWithAppleController)initWithXPCSession:(id)a3
{
  v8 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  v3 = v8;
  v8 = 0;
  v6.receiver = v3;
  v6.super_class = AKSignInWithAppleController;
  v8 = [(AKSignInWithAppleController *)&v6 init];
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
  location[0] = _AKLogSiwa();
  v5 = 16;
  if (os_log_type_enabled(location[0], OS_LOG_TYPE_ERROR))
  {
    log = location[0];
    type = v5;
    __os_log_helper_16_0_0(v4);
    _os_log_error_impl(&dword_193225000, log, type, "Connection to SignInWithApple remote service was interrupted", v4, 2u);
  }

  objc_storeStrong(location, 0);
}

- (void)remoteServiceDidInvalidate
{
  location[2] = self;
  location[1] = a2;
  location[0] = _AKLogSiwa();
  v5 = 16;
  if (os_log_type_enabled(location[0], OS_LOG_TYPE_ERROR))
  {
    log = location[0];
    type = v5;
    __os_log_helper_16_0_0(v4);
    _os_log_error_impl(&dword_193225000, log, type, "Connection to SignInWithApple remote service was invalidated", v4, 2u);
  }

  objc_storeStrong(location, 0);
}

- (void)configureRemoteInterface:(id)a3
{
  location[2] = self;
  location[1] = a2;
  v13 = location;
  v14 = 0;
  location[0] = 0;
  objc_storeStrong(location, a3);
  v9 = MEMORY[0x1E695DFD8];
  v8 = objc_opt_class();
  v4 = objc_opt_class();
  v5 = objc_opt_class();
  v6 = objc_opt_class();
  v7 = objc_opt_class();
  v3 = [v9 setWithObjects:{v8, v4, v5, v6, v7, objc_opt_class(), 0}];
  v12 = &v15;
  v15 = v3;
  v10 = 0;
  v11 = 1;
  [location[0] setClasses:v3 forSelector:sel_fetchAccountsWithContext_completion_ argumentIndex:? ofReply:?];
  [location[0] setClasses:v15 forSelector:sel_fetchAppIconForClientID_iconSize_completion_ argumentIndex:v10 ofReply:v11 & 1];
  [location[0] setClasses:v15 forSelector:sel_shareAccountWithContext_withGroup_completion_ argumentIndex:v10 ofReply:v11 & 1];
  objc_storeStrong(v12, v14);
  objc_storeStrong(v13, v14);
}

- (void)fetchAccountsWithContext:(id)a3 completion:(id)a4
{
  v42 = *MEMORY[0x1E69E9840];
  v40 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  v38 = 0;
  objc_storeStrong(&v38, a4);
  v36 = _os_activity_create(&dword_193225000, "SignInWithApple/fetchAccounts", MEMORY[0x1E69E9C00], OS_ACTIVITY_FLAG_DEFAULT);
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
    _os_signpost_emit_with_name_impl(&dword_193225000, log, type, spid, "SiwAFetchAccounts", " enableTelemetry=YES ", v29, 2u);
  }

  objc_storeStrong(&v32, 0);
  v28 = _AKSignpostLogSystem();
  v27 = OS_LOG_TYPE_DEFAULT;
  if (os_log_type_enabled(v28, OS_LOG_TYPE_DEFAULT))
  {
    __os_log_helper_16_0_1_8_0(v41, v33);
    _os_log_impl(&dword_193225000, v28, v27, "BEGIN [%lld]: SiwAFetchAccounts  enableTelemetry=YES ", v41, 0xCu);
  }

  objc_storeStrong(&v28, 0);
  v34 = v33;
  v18 = MEMORY[0x1E69E9820];
  v19 = -1073741824;
  v20 = 0;
  v21 = __67__AKSignInWithAppleController_fetchAccountsWithContext_completion___block_invoke;
  v22 = &unk_1E73D95E8;
  v23 = MEMORY[0x1E69E5928](v40);
  v25 = v34;
  v24 = MEMORY[0x1E69E5928](v38);
  v26 = MEMORY[0x193B165F0](&v18);
  remoteService = v40->_remoteService;
  v11 = MEMORY[0x1E69E9820];
  v12 = -1073741824;
  v13 = 0;
  v14 = __67__AKSignInWithAppleController_fetchAccountsWithContext_completion___block_invoke_101;
  v15 = &unk_1E73D3510;
  v16 = MEMORY[0x1E69E5928](v26);
  v17 = [(AAFXPCSession *)remoteService remoteServiceProxyWithErrorHandler:&v11];
  [v17 fetchAccountsWithContext:location[0] completion:v26];
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

void __67__AKSignInWithAppleController_fetchAccountsWithContext_completion___block_invoke(void *a1, void *a2, void *a3)
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
    _os_signpost_emit_with_name_impl(&dword_193225000, v15, v14, v13, "SiwAFetchAccounts", " Error=%{public,signpost.telemetry:number2,name=Error}d ", v22, 8u);
  }

  objc_storeStrong(&v15, 0);
  v12 = _AKSignpostLogSystem();
  v11 = OS_LOG_TYPE_DEFAULT;
  if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
  {
    __os_log_helper_16_0_3_8_0_8_0_4_2(v21, a1[6], *&v16, [v18 code]);
    _os_log_impl(&dword_193225000, v12, v11, "END [%lld] %fs:SiwAFetchAccounts  Error=%{public,signpost.telemetry:number2,name=Error}d ", v21, 0x1Cu);
  }

  objc_storeStrong(&v12, 0);
  if (location[0])
  {
    v10 = _AKLogSiwa();
    v9 = OS_LOG_TYPE_DEFAULT;
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
    {
      v3 = v10;
      v4 = v9;
      __os_log_helper_16_0_0(v8);
      _os_log_impl(&dword_193225000, v3, v4, "Completed fetch SiwA accounts successfully", v8, 2u);
    }

    objc_storeStrong(&v10, 0);
  }

  else
  {
    oslog = _AKLogSiwa();
    if (os_log_type_enabled(oslog, OS_LOG_TYPE_ERROR))
    {
      __os_log_helper_16_2_1_8_64(v20, v18);
      _os_log_error_impl(&dword_193225000, oslog, OS_LOG_TYPE_ERROR, "Fetch SiwA accounts failed with error: %@", v20, 0xCu);
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

void __67__AKSignInWithAppleController_fetchAccountsWithContext_completion___block_invoke_101(void *a1, void *a2)
{
  location[1] = a1;
  location[0] = 0;
  objc_storeStrong(location, a2);
  (*(a1[4] + 16))();
  objc_storeStrong(location, 0);
}

- (void)revokeAcccountWithContext:(id)a3 completion:(id)a4
{
  v42 = *MEMORY[0x1E69E9840];
  v40 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  v38 = 0;
  objc_storeStrong(&v38, a4);
  v36 = _os_activity_create(&dword_193225000, "SignInWithApple/revokeAccount", MEMORY[0x1E69E9C00], OS_ACTIVITY_FLAG_DEFAULT);
  v37 = v36;
  state.opaque[0] = 0;
  state.opaque[1] = 0;
  os_activity_scope_enter(v36, &state);
  v34 = 0uLL;
  v9 = _AKSignpostLogSystem();
  *&v10 = _AKSignpostCreate(v9);
  *(&v10 + 1) = v4;
  v33 = v10;
  MEMORY[0x1E69E5920](v9);
  v32 = _AKSignpostLogSystem();
  v31 = 1;
  v30 = v10;
  if (v10 && v30 != -1 && os_signpost_enabled(v32))
  {
    log = v32;
    type = v31;
    spid = v30;
    __os_log_helper_16_0_0(v29);
    _os_signpost_emit_with_name_impl(&dword_193225000, log, type, spid, "SiwARevokeAccount", " enableTelemetry=YES ", v29, 2u);
  }

  objc_storeStrong(&v32, 0);
  v28 = _AKSignpostLogSystem();
  v27 = OS_LOG_TYPE_DEFAULT;
  if (os_log_type_enabled(v28, OS_LOG_TYPE_DEFAULT))
  {
    __os_log_helper_16_0_1_8_0(v41, v33);
    _os_log_impl(&dword_193225000, v28, v27, "BEGIN [%lld]: SiwARevokeAccount  enableTelemetry=YES ", v41, 0xCu);
  }

  objc_storeStrong(&v28, 0);
  v34 = v33;
  v19 = MEMORY[0x1E69E9820];
  v20 = -1073741824;
  v21 = 0;
  v22 = __68__AKSignInWithAppleController_revokeAcccountWithContext_completion___block_invoke;
  v23 = &unk_1E73D3CF0;
  v25 = v33;
  v24 = MEMORY[0x1E69E5928](v38);
  v26 = MEMORY[0x193B165F0](&v19);
  remoteService = v40->_remoteService;
  v12 = MEMORY[0x1E69E9820];
  v13 = -1073741824;
  v14 = 0;
  v15 = __68__AKSignInWithAppleController_revokeAcccountWithContext_completion___block_invoke_104;
  v16 = &unk_1E73D3510;
  v17 = MEMORY[0x1E69E5928](v26);
  v18 = [(AAFXPCSession *)remoteService remoteServiceProxyWithErrorHandler:&v12];
  [v18 revokeAcccountWithContext:location[0] completion:v26];
  objc_storeStrong(&v18, 0);
  objc_storeStrong(&v17, 0);
  objc_storeStrong(&v26, 0);
  objc_storeStrong(&v24, 0);
  os_activity_scope_leave(&state);
  objc_storeStrong(&v37, 0);
  objc_storeStrong(&v38, 0);
  objc_storeStrong(location, 0);
  *MEMORY[0x1E69E9840];
}

void __68__AKSignInWithAppleController_revokeAcccountWithContext_completion___block_invoke(void *a1, char a2, id obj)
{
  v23 = *MEMORY[0x1E69E9840];
  v19 = a1;
  v18 = a2;
  location = 0;
  objc_storeStrong(&location, obj);
  v16 = a1;
  v15 = _AKSignpostGetNanoseconds(a1[5], a1[6]) / 1000000000.0;
  v14 = _AKSignpostLogSystem();
  v13 = OS_SIGNPOST_INTERVAL_END;
  v12 = a1[5];
  if (v12 && v12 != -1 && os_signpost_enabled(v14))
  {
    __os_log_helper_16_0_1_4_2(v22, [location code]);
    _os_signpost_emit_with_name_impl(&dword_193225000, v14, v13, v12, "SiwARevokeAccount", " Error=%{public,signpost.telemetry:number2,name=Error}d ", v22, 8u);
  }

  objc_storeStrong(&v14, 0);
  v11 = _AKSignpostLogSystem();
  v10 = OS_LOG_TYPE_DEFAULT;
  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
  {
    __os_log_helper_16_0_3_8_0_8_0_4_2(v21, a1[5], *&v15, [location code]);
    _os_log_impl(&dword_193225000, v11, v10, "END [%lld] %fs:SiwARevokeAccount  Error=%{public,signpost.telemetry:number2,name=Error}d ", v21, 0x1Cu);
  }

  objc_storeStrong(&v11, 0);
  if (v18)
  {
    oslog = _AKLogSiwa();
    v8 = OS_LOG_TYPE_DEFAULT;
    if (os_log_type_enabled(oslog, OS_LOG_TYPE_DEFAULT))
    {
      v3 = oslog;
      v4 = v8;
      __os_log_helper_16_0_0(v7);
      _os_log_impl(&dword_193225000, v3, v4, "Successfully revoked SiwA account", v7, 2u);
    }

    objc_storeStrong(&oslog, 0);
  }

  else
  {
    v6 = _AKLogSiwa();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      __os_log_helper_16_2_1_8_64(v20, location);
      _os_log_error_impl(&dword_193225000, v6, OS_LOG_TYPE_ERROR, "Failed to revoke SiwA account with error: %@", v20, 0xCu);
    }

    objc_storeStrong(&v6, 0);
  }

  if (a1[4])
  {
    (*(a1[4] + 16))();
  }

  objc_storeStrong(&location, 0);
  *MEMORY[0x1E69E9840];
}

void __68__AKSignInWithAppleController_revokeAcccountWithContext_completion___block_invoke_104(void *a1, void *a2)
{
  location[1] = a1;
  location[0] = 0;
  objc_storeStrong(location, a2);
  (*(a1[4] + 16))();
  objc_storeStrong(location, 0);
}

- (void)fetchEULAForClientID:(id)a3 completion:(id)a4
{
  v42 = *MEMORY[0x1E69E9840];
  v40 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  v38 = 0;
  objc_storeStrong(&v38, a4);
  v36 = _os_activity_create(&dword_193225000, "SignInWithApple/appEULAFetch", MEMORY[0x1E69E9C00], OS_ACTIVITY_FLAG_DEFAULT);
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
    _os_signpost_emit_with_name_impl(&dword_193225000, log, type, spid, "SiwAFetchEULA", " enableTelemetry=YES ", v29, 2u);
  }

  objc_storeStrong(&v32, 0);
  v28 = _AKSignpostLogSystem();
  v27 = OS_LOG_TYPE_DEFAULT;
  if (os_log_type_enabled(v28, OS_LOG_TYPE_DEFAULT))
  {
    __os_log_helper_16_0_1_8_0(v41, v33);
    _os_log_impl(&dword_193225000, v28, v27, "BEGIN [%lld]: SiwAFetchEULA  enableTelemetry=YES ", v41, 0xCu);
  }

  objc_storeStrong(&v28, 0);
  v34 = v33;
  v18 = MEMORY[0x1E69E9820];
  v19 = -1073741824;
  v20 = 0;
  v21 = __63__AKSignInWithAppleController_fetchEULAForClientID_completion___block_invoke;
  v22 = &unk_1E73D9610;
  v23 = MEMORY[0x1E69E5928](v40);
  v25 = v34;
  v24 = MEMORY[0x1E69E5928](v38);
  v26 = MEMORY[0x193B165F0](&v18);
  remoteService = v40->_remoteService;
  v11 = MEMORY[0x1E69E9820];
  v12 = -1073741824;
  v13 = 0;
  v14 = __63__AKSignInWithAppleController_fetchEULAForClientID_completion___block_invoke_106;
  v15 = &unk_1E73D3510;
  v16 = MEMORY[0x1E69E5928](v26);
  v17 = [(AAFXPCSession *)remoteService remoteServiceProxyWithErrorHandler:&v11];
  [v17 fetchEULAForClientID:location[0] completion:v38];
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

void __63__AKSignInWithAppleController_fetchEULAForClientID_completion___block_invoke(void *a1, void *a2, void *a3)
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
    _os_signpost_emit_with_name_impl(&dword_193225000, v15, v14, v13, "SiwAFetchEULA", " Error=%{public,signpost.telemetry:number2,name=Error}d ", v22, 8u);
  }

  objc_storeStrong(&v15, 0);
  v12 = _AKSignpostLogSystem();
  v11 = OS_LOG_TYPE_DEFAULT;
  if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
  {
    __os_log_helper_16_0_3_8_0_8_0_4_2(v21, a1[6], *&v16, [v18 code]);
    _os_log_impl(&dword_193225000, v12, v11, "END [%lld] %fs:SiwAFetchEULA  Error=%{public,signpost.telemetry:number2,name=Error}d ", v21, 0x1Cu);
  }

  objc_storeStrong(&v12, 0);
  if ([location[0] length])
  {
    v10 = _AKLogSiwa();
    v9 = OS_LOG_TYPE_DEFAULT;
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
    {
      v3 = v10;
      v4 = v9;
      __os_log_helper_16_0_0(v8);
      _os_log_impl(&dword_193225000, v3, v4, "Successfully fetched EULA", v8, 2u);
    }

    objc_storeStrong(&v10, 0);
  }

  else
  {
    oslog = _AKLogSiwa();
    if (os_log_type_enabled(oslog, OS_LOG_TYPE_ERROR))
    {
      __os_log_helper_16_2_1_8_64(v20, v18);
      _os_log_error_impl(&dword_193225000, oslog, OS_LOG_TYPE_ERROR, "Failed to fetch EULA with error: %@", v20, 0xCu);
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

void __63__AKSignInWithAppleController_fetchEULAForClientID_completion___block_invoke_106(void *a1, void *a2)
{
  location[1] = a1;
  location[0] = 0;
  objc_storeStrong(location, a2);
  (*(a1[4] + 16))();
  objc_storeStrong(location, 0);
}

- (void)fetchAppIconForClientID:(id)a3 iconSize:(CGSize)a4 completion:(id)a5
{
  v44 = *MEMORY[0x1E69E9840];
  v42 = a4;
  v41 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  v39 = 0;
  objc_storeStrong(&v39, a5);
  v37 = _os_activity_create(&dword_193225000, "SignInWithApple/appIconFetch", MEMORY[0x1E69E9C00], OS_ACTIVITY_FLAG_DEFAULT);
  v38 = v37;
  state.opaque[0] = 0;
  state.opaque[1] = 0;
  os_activity_scope_enter(v37, &state);
  v35 = 0uLL;
  v10 = _AKSignpostLogSystem();
  *&v11 = _AKSignpostCreate(v10);
  *(&v11 + 1) = v5;
  v34 = v11;
  MEMORY[0x1E69E5920](v10);
  v33 = _AKSignpostLogSystem();
  v32 = 1;
  v31 = v11;
  if (v11 && v31 != -1 && os_signpost_enabled(v33))
  {
    log = v33;
    type = v32;
    spid = v31;
    __os_log_helper_16_0_0(v30);
    _os_signpost_emit_with_name_impl(&dword_193225000, log, type, spid, "SiwAFetchAppIcon", " enableTelemetry=YES ", v30, 2u);
  }

  objc_storeStrong(&v33, 0);
  v29 = _AKSignpostLogSystem();
  v28 = OS_LOG_TYPE_DEFAULT;
  if (os_log_type_enabled(v29, OS_LOG_TYPE_DEFAULT))
  {
    __os_log_helper_16_0_1_8_0(v43, v34);
    _os_log_impl(&dword_193225000, v29, v28, "BEGIN [%lld]: SiwAFetchAppIcon  enableTelemetry=YES ", v43, 0xCu);
  }

  objc_storeStrong(&v29, 0);
  v35 = v34;
  v20 = MEMORY[0x1E69E9820];
  v21 = -1073741824;
  v22 = 0;
  v23 = __75__AKSignInWithAppleController_fetchAppIconForClientID_iconSize_completion___block_invoke;
  v24 = &unk_1E73D9638;
  v26 = v34;
  v25 = MEMORY[0x1E69E5928](v39);
  v27 = MEMORY[0x193B165F0](&v20);
  remoteService = v41->_remoteService;
  v13 = MEMORY[0x1E69E9820];
  v14 = -1073741824;
  v15 = 0;
  v16 = __75__AKSignInWithAppleController_fetchAppIconForClientID_iconSize_completion___block_invoke_108;
  v17 = &unk_1E73D3510;
  v18 = MEMORY[0x1E69E5928](v27);
  v19 = [(AAFXPCSession *)remoteService remoteServiceProxyWithErrorHandler:&v13];
  [v19 fetchAppIconForClientID:location[0] iconSize:v39 completion:{v42.width, v42.height}];
  objc_storeStrong(&v19, 0);
  objc_storeStrong(&v18, 0);
  objc_storeStrong(&v27, 0);
  objc_storeStrong(&v25, 0);
  os_activity_scope_leave(&state);
  objc_storeStrong(&v38, 0);
  objc_storeStrong(&v39, 0);
  objc_storeStrong(location, 0);
  *MEMORY[0x1E69E9840];
}

void __75__AKSignInWithAppleController_fetchAppIconForClientID_iconSize_completion___block_invoke(void *a1, void *a2, void *a3)
{
  v24 = *MEMORY[0x1E69E9840];
  location[1] = a1;
  location[0] = 0;
  objc_storeStrong(location, a2);
  v19 = 0;
  objc_storeStrong(&v19, a3);
  v18 = a1;
  v17 = _AKSignpostGetNanoseconds(a1[5], a1[6]) / 1000000000.0;
  v16 = _AKSignpostLogSystem();
  v15 = OS_SIGNPOST_INTERVAL_END;
  v14 = a1[5];
  if (v14 && v14 != -1 && os_signpost_enabled(v16))
  {
    __os_log_helper_16_0_1_4_2(v23, [v19 code]);
    _os_signpost_emit_with_name_impl(&dword_193225000, v16, v15, v14, "SiwAFetchAppIcon", " Error=%{public,signpost.telemetry:number2,name=Error}d ", v23, 8u);
  }

  objc_storeStrong(&v16, 0);
  v13 = _AKSignpostLogSystem();
  v12 = OS_LOG_TYPE_DEFAULT;
  if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
  {
    __os_log_helper_16_0_3_8_0_8_0_4_2(v22, a1[5], *&v17, [v19 code]);
    _os_log_impl(&dword_193225000, v13, v12, "END [%lld] %fs:SiwAFetchAppIcon  Error=%{public,signpost.telemetry:number2,name=Error}d ", v22, 0x1Cu);
  }

  objc_storeStrong(&v13, 0);
  v5 = [location[0] data];
  MEMORY[0x1E69E5920](v5);
  if (v5)
  {
    v11 = _AKLogSiwa();
    v10 = OS_LOG_TYPE_DEFAULT;
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
    {
      v3 = v11;
      v4 = v10;
      __os_log_helper_16_0_0(v9);
      _os_log_impl(&dword_193225000, v3, v4, "Successfully fetched app icon", v9, 2u);
    }

    objc_storeStrong(&v11, 0);
  }

  else
  {
    oslog = _AKLogSiwa();
    if (os_log_type_enabled(oslog, OS_LOG_TYPE_ERROR))
    {
      __os_log_helper_16_2_1_8_64(v21, v19);
      _os_log_error_impl(&dword_193225000, oslog, OS_LOG_TYPE_ERROR, "Failed to fetch app icon with error: %@", v21, 0xCu);
    }

    objc_storeStrong(&oslog, 0);
  }

  if (a1[4])
  {
    (*(a1[4] + 16))();
  }

  objc_storeStrong(&v19, 0);
  objc_storeStrong(location, 0);
  *MEMORY[0x1E69E9840];
}

void __75__AKSignInWithAppleController_fetchAppIconForClientID_iconSize_completion___block_invoke_108(void *a1, void *a2)
{
  location[1] = a1;
  location[0] = 0;
  objc_storeStrong(location, a2);
  (*(a1[4] + 16))();
  objc_storeStrong(location, 0);
}

- (void)cancelAppIconRequestForClientID:(id)a3 completion:(id)a4
{
  v42 = *MEMORY[0x1E69E9840];
  v40 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  v38 = 0;
  objc_storeStrong(&v38, a4);
  v36 = _os_activity_create(&dword_193225000, "SignInWithApple/cancelAppIconFetch", MEMORY[0x1E69E9C00], OS_ACTIVITY_FLAG_DEFAULT);
  v37 = v36;
  state.opaque[0] = 0;
  state.opaque[1] = 0;
  os_activity_scope_enter(v36, &state);
  v34 = 0uLL;
  v9 = _AKSignpostLogSystem();
  *&v10 = _AKSignpostCreate(v9);
  *(&v10 + 1) = v4;
  v33 = v10;
  MEMORY[0x1E69E5920](v9);
  v32 = _AKSignpostLogSystem();
  v31 = 1;
  v30 = v10;
  if (v10 && v30 != -1 && os_signpost_enabled(v32))
  {
    log = v32;
    type = v31;
    spid = v30;
    __os_log_helper_16_0_0(v29);
    _os_signpost_emit_with_name_impl(&dword_193225000, log, type, spid, "SiwACancelAppIcon", " enableTelemetry=YES ", v29, 2u);
  }

  objc_storeStrong(&v32, 0);
  v28 = _AKSignpostLogSystem();
  v27 = OS_LOG_TYPE_DEFAULT;
  if (os_log_type_enabled(v28, OS_LOG_TYPE_DEFAULT))
  {
    __os_log_helper_16_0_1_8_0(v41, v33);
    _os_log_impl(&dword_193225000, v28, v27, "BEGIN [%lld]: SiwACancelAppIcon  enableTelemetry=YES ", v41, 0xCu);
  }

  objc_storeStrong(&v28, 0);
  v34 = v33;
  v19 = MEMORY[0x1E69E9820];
  v20 = -1073741824;
  v21 = 0;
  v22 = __74__AKSignInWithAppleController_cancelAppIconRequestForClientID_completion___block_invoke;
  v23 = &unk_1E73D3CF0;
  v25 = v33;
  v24 = MEMORY[0x1E69E5928](v38);
  v26 = MEMORY[0x193B165F0](&v19);
  remoteService = v40->_remoteService;
  v12 = MEMORY[0x1E69E9820];
  v13 = -1073741824;
  v14 = 0;
  v15 = __74__AKSignInWithAppleController_cancelAppIconRequestForClientID_completion___block_invoke_109;
  v16 = &unk_1E73D3510;
  v17 = MEMORY[0x1E69E5928](v26);
  v18 = [(AAFXPCSession *)remoteService remoteServiceProxyWithErrorHandler:&v12];
  [v18 cancelAppIconRequestForClientID:location[0] completion:v38];
  objc_storeStrong(&v18, 0);
  objc_storeStrong(&v17, 0);
  objc_storeStrong(&v26, 0);
  objc_storeStrong(&v24, 0);
  os_activity_scope_leave(&state);
  objc_storeStrong(&v37, 0);
  objc_storeStrong(&v38, 0);
  objc_storeStrong(location, 0);
  *MEMORY[0x1E69E9840];
}

void __74__AKSignInWithAppleController_cancelAppIconRequestForClientID_completion___block_invoke(void *a1, char a2, id obj)
{
  v23 = *MEMORY[0x1E69E9840];
  v19 = a1;
  v18 = a2;
  location = 0;
  objc_storeStrong(&location, obj);
  v16 = a1;
  v15 = _AKSignpostGetNanoseconds(a1[5], a1[6]) / 1000000000.0;
  v14 = _AKSignpostLogSystem();
  v13 = OS_SIGNPOST_INTERVAL_END;
  v12 = a1[5];
  if (v12 && v12 != -1 && os_signpost_enabled(v14))
  {
    __os_log_helper_16_0_1_4_2(v22, [location code]);
    _os_signpost_emit_with_name_impl(&dword_193225000, v14, v13, v12, "SiwACancelAppIcon", " Error=%{public,signpost.telemetry:number2,name=Error}d ", v22, 8u);
  }

  objc_storeStrong(&v14, 0);
  v11 = _AKSignpostLogSystem();
  v10 = OS_LOG_TYPE_DEFAULT;
  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
  {
    __os_log_helper_16_0_3_8_0_8_0_4_2(v21, a1[5], *&v15, [location code]);
    _os_log_impl(&dword_193225000, v11, v10, "END [%lld] %fs:SiwACancelAppIcon  Error=%{public,signpost.telemetry:number2,name=Error}d ", v21, 0x1Cu);
  }

  objc_storeStrong(&v11, 0);
  if (v18)
  {
    oslog = _AKLogSiwa();
    v8 = OS_LOG_TYPE_DEFAULT;
    if (os_log_type_enabled(oslog, OS_LOG_TYPE_DEFAULT))
    {
      v3 = oslog;
      v4 = v8;
      __os_log_helper_16_0_0(v7);
      _os_log_impl(&dword_193225000, v3, v4, "Successfully cancel app icon fetch", v7, 2u);
    }

    objc_storeStrong(&oslog, 0);
  }

  else
  {
    v6 = _AKLogSiwa();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      __os_log_helper_16_2_1_8_64(v20, location);
      _os_log_error_impl(&dword_193225000, v6, OS_LOG_TYPE_ERROR, "Failed to cancel app icon fetch with error: %@", v20, 0xCu);
    }

    objc_storeStrong(&v6, 0);
  }

  if (a1[4])
  {
    (*(a1[4] + 16))();
  }

  objc_storeStrong(&location, 0);
  *MEMORY[0x1E69E9840];
}

void __74__AKSignInWithAppleController_cancelAppIconRequestForClientID_completion___block_invoke_109(void *a1, void *a2)
{
  location[1] = a1;
  location[0] = 0;
  objc_storeStrong(location, a2);
  (*(a1[4] + 16))();
  objc_storeStrong(location, 0);
}

- (void)shareAccountWithContext:(id)a3 withGroup:(id)a4 completion:(id)a5
{
  v45 = *MEMORY[0x1E69E9840];
  v43 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  v41 = 0;
  objc_storeStrong(&v41, a4);
  v40 = 0;
  objc_storeStrong(&v40, a5);
  v38 = _os_activity_create(&dword_193225000, "SignInWithApple/shareCredential", MEMORY[0x1E69E9C00], OS_ACTIVITY_FLAG_DEFAULT);
  v39 = v38;
  state.opaque[0] = 0;
  state.opaque[1] = 0;
  os_activity_scope_enter(v38, &state);
  v36 = 0uLL;
  v10 = _AKSignpostLogSystem();
  *&v35 = _AKSignpostCreate(v10);
  *(&v35 + 1) = v5;
  MEMORY[0x1E69E5920](v10);
  v34 = _AKSignpostLogSystem();
  v33 = 1;
  v32 = v35;
  if (v35 && v32 != -1 && os_signpost_enabled(v34))
  {
    log = v34;
    type = v33;
    spid = v32;
    __os_log_helper_16_0_0(v31);
    _os_signpost_emit_with_name_impl(&dword_193225000, log, type, spid, "SiwAShareCredential", " enableTelemetry=YES ", v31, 2u);
  }

  objc_storeStrong(&v34, 0);
  v30 = _AKSignpostLogSystem();
  v29 = OS_LOG_TYPE_DEFAULT;
  if (os_log_type_enabled(v30, OS_LOG_TYPE_DEFAULT))
  {
    __os_log_helper_16_0_1_8_0(v44, v35);
    _os_log_impl(&dword_193225000, v30, v29, "BEGIN [%lld]: SiwAShareCredential  enableTelemetry=YES ", v44, 0xCu);
  }

  objc_storeStrong(&v30, 0);
  v36 = v35;
  v20 = MEMORY[0x1E69E9820];
  v21 = -1073741824;
  v22 = 0;
  v23 = __76__AKSignInWithAppleController_shareAccountWithContext_withGroup_completion___block_invoke;
  v24 = &unk_1E73D9660;
  v25 = MEMORY[0x1E69E5928](v43);
  v27 = v36;
  v26 = MEMORY[0x1E69E5928](v40);
  v28 = MEMORY[0x193B165F0](&v20);
  remoteService = v43->_remoteService;
  v13 = MEMORY[0x1E69E9820];
  v14 = -1073741824;
  v15 = 0;
  v16 = __76__AKSignInWithAppleController_shareAccountWithContext_withGroup_completion___block_invoke_111;
  v17 = &unk_1E73D3510;
  v18 = MEMORY[0x1E69E5928](v28);
  v19 = [(AAFXPCSession *)remoteService remoteServiceProxyWithErrorHandler:&v13];
  [v19 shareAccountWithContext:location[0] withGroup:v41 completion:v28];
  objc_storeStrong(&v19, 0);
  objc_storeStrong(&v18, 0);
  objc_storeStrong(&v28, 0);
  objc_storeStrong(&v26, 0);
  objc_storeStrong(&v25, 0);
  os_activity_scope_leave(&state);
  objc_storeStrong(&v39, 0);
  objc_storeStrong(&v40, 0);
  objc_storeStrong(&v41, 0);
  objc_storeStrong(location, 0);
  *MEMORY[0x1E69E9840];
}

void __76__AKSignInWithAppleController_shareAccountWithContext_withGroup_completion___block_invoke(void *a1, void *a2, void *a3)
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
    _os_signpost_emit_with_name_impl(&dword_193225000, v15, v14, v13, "SiwAShareCredential", " Error=%{public,signpost.telemetry:number2,name=Error}d ", v22, 8u);
  }

  objc_storeStrong(&v15, 0);
  v12 = _AKSignpostLogSystem();
  v11 = OS_LOG_TYPE_DEFAULT;
  if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
  {
    __os_log_helper_16_0_3_8_0_8_0_4_2(v21, a1[6], *&v16, [v18 code]);
    _os_log_impl(&dword_193225000, v12, v11, "END [%lld] %fs:SiwAShareCredential  Error=%{public,signpost.telemetry:number2,name=Error}d ", v21, 0x1Cu);
  }

  objc_storeStrong(&v12, 0);
  if (location[0])
  {
    v10 = _AKLogSiwa();
    v9 = OS_LOG_TYPE_DEFAULT;
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
    {
      v3 = v10;
      v4 = v9;
      __os_log_helper_16_0_0(v8);
      _os_log_impl(&dword_193225000, v3, v4, "SiwA account shared successfully", v8, 2u);
    }

    objc_storeStrong(&v10, 0);
  }

  else
  {
    oslog = _AKLogSiwa();
    if (os_log_type_enabled(oslog, OS_LOG_TYPE_ERROR))
    {
      __os_log_helper_16_2_1_8_64(v20, v18);
      _os_log_error_impl(&dword_193225000, oslog, OS_LOG_TYPE_ERROR, "SiwA account sharing failed with error: %@", v20, 0xCu);
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

void __76__AKSignInWithAppleController_shareAccountWithContext_withGroup_completion___block_invoke_111(void *a1, void *a2)
{
  location[1] = a1;
  location[0] = 0;
  objc_storeStrong(location, a2);
  (*(a1[4] + 16))();
  objc_storeStrong(location, 0);
}

- (void)unshareAccountWithContext:(id)a3 completion:(id)a4
{
  v42 = *MEMORY[0x1E69E9840];
  v40 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  v38 = 0;
  objc_storeStrong(&v38, a4);
  v36 = _os_activity_create(&dword_193225000, "SignInWithApple/unshareCredential", MEMORY[0x1E69E9C00], OS_ACTIVITY_FLAG_DEFAULT);
  v37 = v36;
  state.opaque[0] = 0;
  state.opaque[1] = 0;
  os_activity_scope_enter(v36, &state);
  v34 = 0uLL;
  v9 = _AKSignpostLogSystem();
  *&v10 = _AKSignpostCreate(v9);
  *(&v10 + 1) = v4;
  v33 = v10;
  MEMORY[0x1E69E5920](v9);
  v32 = _AKSignpostLogSystem();
  v31 = 1;
  v30 = v10;
  if (v10 && v30 != -1 && os_signpost_enabled(v32))
  {
    log = v32;
    type = v31;
    spid = v30;
    __os_log_helper_16_0_0(v29);
    _os_signpost_emit_with_name_impl(&dword_193225000, log, type, spid, "SiwAUnshareCredential", " enableTelemetry=YES ", v29, 2u);
  }

  objc_storeStrong(&v32, 0);
  v28 = _AKSignpostLogSystem();
  v27 = OS_LOG_TYPE_DEFAULT;
  if (os_log_type_enabled(v28, OS_LOG_TYPE_DEFAULT))
  {
    __os_log_helper_16_0_1_8_0(v41, v33);
    _os_log_impl(&dword_193225000, v28, v27, "BEGIN [%lld]: SiwAUnshareCredential  enableTelemetry=YES ", v41, 0xCu);
  }

  objc_storeStrong(&v28, 0);
  v34 = v33;
  v19 = MEMORY[0x1E69E9820];
  v20 = -1073741824;
  v21 = 0;
  v22 = __68__AKSignInWithAppleController_unshareAccountWithContext_completion___block_invoke;
  v23 = &unk_1E73D3CF0;
  v25 = v33;
  v24 = MEMORY[0x1E69E5928](v38);
  v26 = MEMORY[0x193B165F0](&v19);
  remoteService = v40->_remoteService;
  v12 = MEMORY[0x1E69E9820];
  v13 = -1073741824;
  v14 = 0;
  v15 = __68__AKSignInWithAppleController_unshareAccountWithContext_completion___block_invoke_112;
  v16 = &unk_1E73D3510;
  v17 = MEMORY[0x1E69E5928](v26);
  v18 = [(AAFXPCSession *)remoteService remoteServiceProxyWithErrorHandler:&v12];
  [v18 unshareAccountWithContext:location[0] completion:v26];
  objc_storeStrong(&v18, 0);
  objc_storeStrong(&v17, 0);
  objc_storeStrong(&v26, 0);
  objc_storeStrong(&v24, 0);
  os_activity_scope_leave(&state);
  objc_storeStrong(&v37, 0);
  objc_storeStrong(&v38, 0);
  objc_storeStrong(location, 0);
  *MEMORY[0x1E69E9840];
}

void __68__AKSignInWithAppleController_unshareAccountWithContext_completion___block_invoke(void *a1, char a2, id obj)
{
  v23 = *MEMORY[0x1E69E9840];
  v19 = a1;
  v18 = a2;
  location = 0;
  objc_storeStrong(&location, obj);
  v16 = a1;
  v15 = _AKSignpostGetNanoseconds(a1[5], a1[6]) / 1000000000.0;
  v14 = _AKSignpostLogSystem();
  v13 = OS_SIGNPOST_INTERVAL_END;
  v12 = a1[5];
  if (v12 && v12 != -1 && os_signpost_enabled(v14))
  {
    __os_log_helper_16_0_1_4_2(v22, [location code]);
    _os_signpost_emit_with_name_impl(&dword_193225000, v14, v13, v12, "SiwAUnshareCredential", " Error=%{public,signpost.telemetry:number2,name=Error}d ", v22, 8u);
  }

  objc_storeStrong(&v14, 0);
  v11 = _AKSignpostLogSystem();
  v10 = OS_LOG_TYPE_DEFAULT;
  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
  {
    __os_log_helper_16_0_3_8_0_8_0_4_2(v21, a1[5], *&v15, [location code]);
    _os_log_impl(&dword_193225000, v11, v10, "END [%lld] %fs:SiwAUnshareCredential  Error=%{public,signpost.telemetry:number2,name=Error}d ", v21, 0x1Cu);
  }

  objc_storeStrong(&v11, 0);
  if (v18)
  {
    oslog = _AKLogSiwa();
    v8 = OS_LOG_TYPE_DEFAULT;
    if (os_log_type_enabled(oslog, OS_LOG_TYPE_DEFAULT))
    {
      v3 = oslog;
      v4 = v8;
      __os_log_helper_16_0_0(v7);
      _os_log_impl(&dword_193225000, v3, v4, "Successfully unshared SiwA account", v7, 2u);
    }

    objc_storeStrong(&oslog, 0);
  }

  else
  {
    v6 = _AKLogSiwa();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      __os_log_helper_16_2_1_8_64(v20, location);
      _os_log_error_impl(&dword_193225000, v6, OS_LOG_TYPE_ERROR, "Failed to unshare SiwA account with error: %@", v20, 0xCu);
    }

    objc_storeStrong(&v6, 0);
  }

  if (a1[4])
  {
    (*(a1[4] + 16))();
  }

  objc_storeStrong(&location, 0);
  *MEMORY[0x1E69E9840];
}

void __68__AKSignInWithAppleController_unshareAccountWithContext_completion___block_invoke_112(void *a1, void *a2)
{
  location[1] = a1;
  location[0] = 0;
  objc_storeStrong(location, a2);
  (*(a1[4] + 16))();
  objc_storeStrong(location, 0);
}

- (void)leaveGroupWithContext:(id)a3 completion:(id)a4
{
  v42 = *MEMORY[0x1E69E9840];
  v40 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  v38 = 0;
  objc_storeStrong(&v38, a4);
  v36 = _os_activity_create(&dword_193225000, "SignInWithApple/leaveGroup", MEMORY[0x1E69E9C00], OS_ACTIVITY_FLAG_DEFAULT);
  v37 = v36;
  state.opaque[0] = 0;
  state.opaque[1] = 0;
  os_activity_scope_enter(v36, &state);
  v34 = 0uLL;
  v9 = _AKSignpostLogSystem();
  *&v10 = _AKSignpostCreate(v9);
  *(&v10 + 1) = v4;
  v33 = v10;
  MEMORY[0x1E69E5920](v9);
  v32 = _AKSignpostLogSystem();
  v31 = 1;
  v30 = v10;
  if (v10 && v30 != -1 && os_signpost_enabled(v32))
  {
    log = v32;
    type = v31;
    spid = v30;
    __os_log_helper_16_0_0(v29);
    _os_signpost_emit_with_name_impl(&dword_193225000, log, type, spid, "SiwALeaveGroup", " enableTelemetry=YES ", v29, 2u);
  }

  objc_storeStrong(&v32, 0);
  v28 = _AKSignpostLogSystem();
  v27 = OS_LOG_TYPE_DEFAULT;
  if (os_log_type_enabled(v28, OS_LOG_TYPE_DEFAULT))
  {
    __os_log_helper_16_0_1_8_0(v41, v33);
    _os_log_impl(&dword_193225000, v28, v27, "BEGIN [%lld]: SiwALeaveGroup  enableTelemetry=YES ", v41, 0xCu);
  }

  objc_storeStrong(&v28, 0);
  v34 = v33;
  v19 = MEMORY[0x1E69E9820];
  v20 = -1073741824;
  v21 = 0;
  v22 = __64__AKSignInWithAppleController_leaveGroupWithContext_completion___block_invoke;
  v23 = &unk_1E73D3CF0;
  v25 = v33;
  v24 = MEMORY[0x1E69E5928](v38);
  v26 = MEMORY[0x193B165F0](&v19);
  remoteService = v40->_remoteService;
  v12 = MEMORY[0x1E69E9820];
  v13 = -1073741824;
  v14 = 0;
  v15 = __64__AKSignInWithAppleController_leaveGroupWithContext_completion___block_invoke_113;
  v16 = &unk_1E73D3510;
  v17 = MEMORY[0x1E69E5928](v26);
  v18 = [(AAFXPCSession *)remoteService remoteServiceProxyWithErrorHandler:&v12];
  [v18 leaveGroupWithContext:location[0] completion:v26];
  objc_storeStrong(&v18, 0);
  objc_storeStrong(&v17, 0);
  objc_storeStrong(&v26, 0);
  objc_storeStrong(&v24, 0);
  os_activity_scope_leave(&state);
  objc_storeStrong(&v37, 0);
  objc_storeStrong(&v38, 0);
  objc_storeStrong(location, 0);
  *MEMORY[0x1E69E9840];
}

void __64__AKSignInWithAppleController_leaveGroupWithContext_completion___block_invoke(void *a1, char a2, id obj)
{
  v23 = *MEMORY[0x1E69E9840];
  v19 = a1;
  v18 = a2;
  location = 0;
  objc_storeStrong(&location, obj);
  v16 = a1;
  v15 = _AKSignpostGetNanoseconds(a1[5], a1[6]) / 1000000000.0;
  v14 = _AKSignpostLogSystem();
  v13 = OS_SIGNPOST_INTERVAL_END;
  v12 = a1[5];
  if (v12 && v12 != -1 && os_signpost_enabled(v14))
  {
    __os_log_helper_16_0_1_4_2(v22, [location code]);
    _os_signpost_emit_with_name_impl(&dword_193225000, v14, v13, v12, "SiwALeaveGroup", " Error=%{public,signpost.telemetry:number2,name=Error}d ", v22, 8u);
  }

  objc_storeStrong(&v14, 0);
  v11 = _AKSignpostLogSystem();
  v10 = OS_LOG_TYPE_DEFAULT;
  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
  {
    __os_log_helper_16_0_3_8_0_8_0_4_2(v21, a1[5], *&v15, [location code]);
    _os_log_impl(&dword_193225000, v11, v10, "END [%lld] %fs:SiwALeaveGroup  Error=%{public,signpost.telemetry:number2,name=Error}d ", v21, 0x1Cu);
  }

  objc_storeStrong(&v11, 0);
  if (v18)
  {
    oslog = _AKLogSiwa();
    v8 = OS_LOG_TYPE_DEFAULT;
    if (os_log_type_enabled(oslog, OS_LOG_TYPE_DEFAULT))
    {
      v3 = oslog;
      v4 = v8;
      __os_log_helper_16_0_0(v7);
      _os_log_impl(&dword_193225000, v3, v4, "Successfully completed group departure", v7, 2u);
    }

    objc_storeStrong(&oslog, 0);
  }

  else
  {
    v6 = _AKLogSiwa();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      __os_log_helper_16_2_1_8_64(v20, location);
      _os_log_error_impl(&dword_193225000, v6, OS_LOG_TYPE_ERROR, "Failed to complete group departure with error: %@", v20, 0xCu);
    }

    objc_storeStrong(&v6, 0);
  }

  if (a1[4])
  {
    (*(a1[4] + 16))();
  }

  objc_storeStrong(&location, 0);
  *MEMORY[0x1E69E9840];
}

void __64__AKSignInWithAppleController_leaveGroupWithContext_completion___block_invoke_113(void *a1, void *a2)
{
  location[1] = a1;
  location[0] = 0;
  objc_storeStrong(location, a2);
  (*(a1[4] + 16))();
  objc_storeStrong(location, 0);
}

- (void)deleteAllItemsFromDepartedGroupWithContext:(id)a3 completion:(id)a4
{
  v42 = *MEMORY[0x1E69E9840];
  v40 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  v38 = 0;
  objc_storeStrong(&v38, a4);
  v36 = _os_activity_create(&dword_193225000, "SignInWithApple/deleteGroupItems", MEMORY[0x1E69E9C00], OS_ACTIVITY_FLAG_DEFAULT);
  v37 = v36;
  state.opaque[0] = 0;
  state.opaque[1] = 0;
  os_activity_scope_enter(v36, &state);
  v34 = 0uLL;
  v9 = _AKSignpostLogSystem();
  *&v10 = _AKSignpostCreate(v9);
  *(&v10 + 1) = v4;
  v33 = v10;
  MEMORY[0x1E69E5920](v9);
  v32 = _AKSignpostLogSystem();
  v31 = 1;
  v30 = v10;
  if (v10 && v30 != -1 && os_signpost_enabled(v32))
  {
    log = v32;
    type = v31;
    spid = v30;
    __os_log_helper_16_0_0(v29);
    _os_signpost_emit_with_name_impl(&dword_193225000, log, type, spid, "SiwADeleteGroupItems", " enableTelemetry=YES ", v29, 2u);
  }

  objc_storeStrong(&v32, 0);
  v28 = _AKSignpostLogSystem();
  v27 = OS_LOG_TYPE_DEFAULT;
  if (os_log_type_enabled(v28, OS_LOG_TYPE_DEFAULT))
  {
    __os_log_helper_16_0_1_8_0(v41, v33);
    _os_log_impl(&dword_193225000, v28, v27, "BEGIN [%lld]: SiwADeleteGroupItems  enableTelemetry=YES ", v41, 0xCu);
  }

  objc_storeStrong(&v28, 0);
  v34 = v33;
  v19 = MEMORY[0x1E69E9820];
  v20 = -1073741824;
  v21 = 0;
  v22 = __85__AKSignInWithAppleController_deleteAllItemsFromDepartedGroupWithContext_completion___block_invoke;
  v23 = &unk_1E73D3CF0;
  v25 = v33;
  v24 = MEMORY[0x1E69E5928](v38);
  v26 = MEMORY[0x193B165F0](&v19);
  remoteService = v40->_remoteService;
  v12 = MEMORY[0x1E69E9820];
  v13 = -1073741824;
  v14 = 0;
  v15 = __85__AKSignInWithAppleController_deleteAllItemsFromDepartedGroupWithContext_completion___block_invoke_114;
  v16 = &unk_1E73D3510;
  v17 = MEMORY[0x1E69E5928](v26);
  v18 = [(AAFXPCSession *)remoteService remoteServiceProxyWithErrorHandler:&v12];
  [v18 deleteAllItemsFromDepartedGroupWithContext:location[0] completion:v26];
  objc_storeStrong(&v18, 0);
  objc_storeStrong(&v17, 0);
  objc_storeStrong(&v26, 0);
  objc_storeStrong(&v24, 0);
  os_activity_scope_leave(&state);
  objc_storeStrong(&v37, 0);
  objc_storeStrong(&v38, 0);
  objc_storeStrong(location, 0);
  *MEMORY[0x1E69E9840];
}

void __85__AKSignInWithAppleController_deleteAllItemsFromDepartedGroupWithContext_completion___block_invoke(void *a1, char a2, id obj)
{
  v23 = *MEMORY[0x1E69E9840];
  v19 = a1;
  v18 = a2;
  location = 0;
  objc_storeStrong(&location, obj);
  v16 = a1;
  v15 = _AKSignpostGetNanoseconds(a1[5], a1[6]) / 1000000000.0;
  v14 = _AKSignpostLogSystem();
  v13 = OS_SIGNPOST_INTERVAL_END;
  v12 = a1[5];
  if (v12 && v12 != -1 && os_signpost_enabled(v14))
  {
    __os_log_helper_16_0_1_4_2(v22, [location code]);
    _os_signpost_emit_with_name_impl(&dword_193225000, v14, v13, v12, "SiwADeleteGroupItems", " Error=%{public,signpost.telemetry:number2,name=Error}d ", v22, 8u);
  }

  objc_storeStrong(&v14, 0);
  v11 = _AKSignpostLogSystem();
  v10 = OS_LOG_TYPE_DEFAULT;
  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
  {
    __os_log_helper_16_0_3_8_0_8_0_4_2(v21, a1[5], *&v15, [location code]);
    _os_log_impl(&dword_193225000, v11, v10, "END [%lld] %fs:SiwADeleteGroupItems  Error=%{public,signpost.telemetry:number2,name=Error}d ", v21, 0x1Cu);
  }

  objc_storeStrong(&v11, 0);
  if (v18)
  {
    oslog = _AKLogSiwa();
    v8 = OS_LOG_TYPE_DEFAULT;
    if (os_log_type_enabled(oslog, OS_LOG_TYPE_DEFAULT))
    {
      v3 = oslog;
      v4 = v8;
      __os_log_helper_16_0_0(v7);
      _os_log_impl(&dword_193225000, v3, v4, "Successfully deleted all items from group", v7, 2u);
    }

    objc_storeStrong(&oslog, 0);
  }

  else
  {
    v6 = _AKLogSiwa();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      __os_log_helper_16_2_1_8_64(v20, location);
      _os_log_error_impl(&dword_193225000, v6, OS_LOG_TYPE_ERROR, "Failed to deleted all items from group with error: %@", v20, 0xCu);
    }

    objc_storeStrong(&v6, 0);
  }

  if (a1[4])
  {
    (*(a1[4] + 16))();
  }

  objc_storeStrong(&location, 0);
  *MEMORY[0x1E69E9840];
}

void __85__AKSignInWithAppleController_deleteAllItemsFromDepartedGroupWithContext_completion___block_invoke_114(void *a1, void *a2)
{
  location[1] = a1;
  location[0] = 0;
  objc_storeStrong(location, a2);
  (*(a1[4] + 16))();
  objc_storeStrong(location, 0);
}

- (void)participantRemovedWithContext:(id)a3 participantID:(id)a4 completion:(id)a5
{
  v45 = *MEMORY[0x1E69E9840];
  v43 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  v41 = 0;
  objc_storeStrong(&v41, a4);
  v40 = 0;
  objc_storeStrong(&v40, a5);
  v38 = _os_activity_create(&dword_193225000, "SignInWithApple/participantRemoved", MEMORY[0x1E69E9C00], OS_ACTIVITY_FLAG_DEFAULT);
  v39 = v38;
  state.opaque[0] = 0;
  state.opaque[1] = 0;
  os_activity_scope_enter(v38, &state);
  v36 = 0uLL;
  v10 = _AKSignpostLogSystem();
  *&v11 = _AKSignpostCreate(v10);
  *(&v11 + 1) = v5;
  v35 = v11;
  MEMORY[0x1E69E5920](v10);
  v34 = _AKSignpostLogSystem();
  v33 = 1;
  v32 = v11;
  if (v11 && v32 != -1 && os_signpost_enabled(v34))
  {
    log = v34;
    type = v33;
    spid = v32;
    __os_log_helper_16_0_0(v31);
    _os_signpost_emit_with_name_impl(&dword_193225000, log, type, spid, "SiwAParticipantRemoved", " enableTelemetry=YES ", v31, 2u);
  }

  objc_storeStrong(&v34, 0);
  v30 = _AKSignpostLogSystem();
  v29 = OS_LOG_TYPE_DEFAULT;
  if (os_log_type_enabled(v30, OS_LOG_TYPE_DEFAULT))
  {
    __os_log_helper_16_0_1_8_0(v44, v35);
    _os_log_impl(&dword_193225000, v30, v29, "BEGIN [%lld]: SiwAParticipantRemoved  enableTelemetry=YES ", v44, 0xCu);
  }

  objc_storeStrong(&v30, 0);
  v36 = v35;
  v21 = MEMORY[0x1E69E9820];
  v22 = -1073741824;
  v23 = 0;
  v24 = __86__AKSignInWithAppleController_participantRemovedWithContext_participantID_completion___block_invoke;
  v25 = &unk_1E73D3CF0;
  v27 = v35;
  v26 = MEMORY[0x1E69E5928](v40);
  v28 = MEMORY[0x193B165F0](&v21);
  remoteService = v43->_remoteService;
  v14 = MEMORY[0x1E69E9820];
  v15 = -1073741824;
  v16 = 0;
  v17 = __86__AKSignInWithAppleController_participantRemovedWithContext_participantID_completion___block_invoke_115;
  v18 = &unk_1E73D3510;
  v19 = MEMORY[0x1E69E5928](v28);
  v20 = [(AAFXPCSession *)remoteService remoteServiceProxyWithErrorHandler:&v14];
  [v20 participantRemovedWithContext:location[0] participantID:v41 completion:v28];
  objc_storeStrong(&v20, 0);
  objc_storeStrong(&v19, 0);
  objc_storeStrong(&v28, 0);
  objc_storeStrong(&v26, 0);
  os_activity_scope_leave(&state);
  objc_storeStrong(&v39, 0);
  objc_storeStrong(&v40, 0);
  objc_storeStrong(&v41, 0);
  objc_storeStrong(location, 0);
  *MEMORY[0x1E69E9840];
}

void __86__AKSignInWithAppleController_participantRemovedWithContext_participantID_completion___block_invoke(void *a1, char a2, id obj)
{
  v23 = *MEMORY[0x1E69E9840];
  v19 = a1;
  v18 = a2;
  location = 0;
  objc_storeStrong(&location, obj);
  v16 = a1;
  v15 = _AKSignpostGetNanoseconds(a1[5], a1[6]) / 1000000000.0;
  v14 = _AKSignpostLogSystem();
  v13 = OS_SIGNPOST_INTERVAL_END;
  v12 = a1[5];
  if (v12 && v12 != -1 && os_signpost_enabled(v14))
  {
    __os_log_helper_16_0_1_4_2(v22, [location code]);
    _os_signpost_emit_with_name_impl(&dword_193225000, v14, v13, v12, "SiwAParticipantRemoved", " Error=%{public,signpost.telemetry:number2,name=Error}d ", v22, 8u);
  }

  objc_storeStrong(&v14, 0);
  v11 = _AKSignpostLogSystem();
  v10 = OS_LOG_TYPE_DEFAULT;
  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
  {
    __os_log_helper_16_0_3_8_0_8_0_4_2(v21, a1[5], *&v15, [location code]);
    _os_log_impl(&dword_193225000, v11, v10, "END [%lld] %fs:SiwAParticipantRemoved  Error=%{public,signpost.telemetry:number2,name=Error}d ", v21, 0x1Cu);
  }

  objc_storeStrong(&v11, 0);
  if (v18)
  {
    oslog = _AKLogSiwa();
    v8 = OS_LOG_TYPE_DEFAULT;
    if (os_log_type_enabled(oslog, OS_LOG_TYPE_DEFAULT))
    {
      v3 = oslog;
      v4 = v8;
      __os_log_helper_16_0_0(v7);
      _os_log_impl(&dword_193225000, v3, v4, "Successfully performed actions after participant removal.", v7, 2u);
    }

    objc_storeStrong(&oslog, 0);
  }

  else
  {
    v6 = _AKLogSiwa();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      __os_log_helper_16_2_1_8_64(v20, location);
      _os_log_error_impl(&dword_193225000, v6, OS_LOG_TYPE_ERROR, "Failed to perform actions after participant removal with error: %@", v20, 0xCu);
    }

    objc_storeStrong(&v6, 0);
  }

  if (a1[4])
  {
    (*(a1[4] + 16))();
  }

  objc_storeStrong(&location, 0);
  *MEMORY[0x1E69E9840];
}

void __86__AKSignInWithAppleController_participantRemovedWithContext_participantID_completion___block_invoke_115(void *a1, void *a2)
{
  location[1] = a1;
  location[0] = 0;
  objc_storeStrong(location, a2);
  (*(a1[4] + 16))();
  objc_storeStrong(location, 0);
}

- (void)fetchSharedGroupsWithContext:(id)a3 completion:(id)a4
{
  v42 = *MEMORY[0x1E69E9840];
  v40 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  v38 = 0;
  objc_storeStrong(&v38, a4);
  v36 = _os_activity_create(&dword_193225000, "SignInWithApple/fetchSharedGroups", MEMORY[0x1E69E9C00], OS_ACTIVITY_FLAG_DEFAULT);
  v37 = v36;
  state.opaque[0] = 0;
  state.opaque[1] = 0;
  os_activity_scope_enter(v36, &state);
  v34 = 0uLL;
  v9 = _AKSignpostLogSystem();
  *&v10 = _AKSignpostCreate(v9);
  *(&v10 + 1) = v4;
  v33 = v10;
  MEMORY[0x1E69E5920](v9);
  v32 = _AKSignpostLogSystem();
  v31 = 1;
  v30 = v10;
  if (v10 && v30 != -1 && os_signpost_enabled(v32))
  {
    log = v32;
    type = v31;
    spid = v30;
    __os_log_helper_16_0_0(v29);
    _os_signpost_emit_with_name_impl(&dword_193225000, log, type, spid, "SiwAFetchSharedGroups", " enableTelemetry=YES ", v29, 2u);
  }

  objc_storeStrong(&v32, 0);
  v28 = _AKSignpostLogSystem();
  v27 = OS_LOG_TYPE_DEFAULT;
  if (os_log_type_enabled(v28, OS_LOG_TYPE_DEFAULT))
  {
    __os_log_helper_16_0_1_8_0(v41, v33);
    _os_log_impl(&dword_193225000, v28, v27, "BEGIN [%lld]: SiwAFetchSharedGroups  enableTelemetry=YES ", v41, 0xCu);
  }

  objc_storeStrong(&v28, 0);
  v34 = v33;
  v19 = MEMORY[0x1E69E9820];
  v20 = -1073741824;
  v21 = 0;
  v22 = __71__AKSignInWithAppleController_fetchSharedGroupsWithContext_completion___block_invoke;
  v23 = &unk_1E73D3CF0;
  v25 = v33;
  v24 = MEMORY[0x1E69E5928](v38);
  v26 = MEMORY[0x193B165F0](&v19);
  remoteService = v40->_remoteService;
  v12 = MEMORY[0x1E69E9820];
  v13 = -1073741824;
  v14 = 0;
  v15 = __71__AKSignInWithAppleController_fetchSharedGroupsWithContext_completion___block_invoke_116;
  v16 = &unk_1E73D3510;
  v17 = MEMORY[0x1E69E5928](v26);
  v18 = [(AAFXPCSession *)remoteService remoteServiceProxyWithErrorHandler:&v12];
  [v18 fetchSharedGroupsWithContext:location[0] completion:v26];
  objc_storeStrong(&v18, 0);
  objc_storeStrong(&v17, 0);
  objc_storeStrong(&v26, 0);
  objc_storeStrong(&v24, 0);
  os_activity_scope_leave(&state);
  objc_storeStrong(&v37, 0);
  objc_storeStrong(&v38, 0);
  objc_storeStrong(location, 0);
  *MEMORY[0x1E69E9840];
}

void __71__AKSignInWithAppleController_fetchSharedGroupsWithContext_completion___block_invoke(void *a1, char a2, id obj)
{
  v23 = *MEMORY[0x1E69E9840];
  v19 = a1;
  v18 = a2;
  location = 0;
  objc_storeStrong(&location, obj);
  v16 = a1;
  v15 = _AKSignpostGetNanoseconds(a1[5], a1[6]) / 1000000000.0;
  v14 = _AKSignpostLogSystem();
  v13 = OS_SIGNPOST_INTERVAL_END;
  v12 = a1[5];
  if (v12 && v12 != -1 && os_signpost_enabled(v14))
  {
    __os_log_helper_16_0_1_4_2(v22, [location code]);
    _os_signpost_emit_with_name_impl(&dword_193225000, v14, v13, v12, "SiwAFetchSharedGroups", " Error=%{public,signpost.telemetry:number2,name=Error}d ", v22, 8u);
  }

  objc_storeStrong(&v14, 0);
  v11 = _AKSignpostLogSystem();
  v10 = OS_LOG_TYPE_DEFAULT;
  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
  {
    __os_log_helper_16_0_3_8_0_8_0_4_2(v21, a1[5], *&v15, [location code]);
    _os_log_impl(&dword_193225000, v11, v10, "END [%lld] %fs:SiwAFetchSharedGroups  Error=%{public,signpost.telemetry:number2,name=Error}d ", v21, 0x1Cu);
  }

  objc_storeStrong(&v11, 0);
  if (v18)
  {
    oslog = _AKLogSiwa();
    v8 = OS_LOG_TYPE_DEFAULT;
    if (os_log_type_enabled(oslog, OS_LOG_TYPE_DEFAULT))
    {
      v3 = oslog;
      v4 = v8;
      __os_log_helper_16_0_0(v7);
      _os_log_impl(&dword_193225000, v3, v4, "Successfully fetched shared groups", v7, 2u);
    }

    objc_storeStrong(&oslog, 0);
  }

  else
  {
    v6 = _AKLogSiwa();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      __os_log_helper_16_2_1_8_64(v20, location);
      _os_log_error_impl(&dword_193225000, v6, OS_LOG_TYPE_ERROR, "Failed to fetch shared groups with error: %@", v20, 0xCu);
    }

    objc_storeStrong(&v6, 0);
  }

  if (a1[4])
  {
    (*(a1[4] + 16))();
  }

  objc_storeStrong(&location, 0);
  *MEMORY[0x1E69E9840];
}

void __71__AKSignInWithAppleController_fetchSharedGroupsWithContext_completion___block_invoke_116(void *a1, void *a2)
{
  location[1] = a1;
  location[0] = 0;
  objc_storeStrong(location, a2);
  (*(a1[4] + 16))();
  objc_storeStrong(location, 0);
}

- (void)performTokenRotationWithContext:(id)a3 completion:(id)a4
{
  v42 = *MEMORY[0x1E69E9840];
  v40 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  v38 = 0;
  objc_storeStrong(&v38, a4);
  v36 = _os_activity_create(&dword_193225000, "SignInWithApple/performTokenRotation", MEMORY[0x1E69E9C00], OS_ACTIVITY_FLAG_DEFAULT);
  v37 = v36;
  state.opaque[0] = 0;
  state.opaque[1] = 0;
  os_activity_scope_enter(v36, &state);
  v34 = 0uLL;
  v9 = _AKSignpostLogSystem();
  *&v10 = _AKSignpostCreate(v9);
  *(&v10 + 1) = v4;
  v33 = v10;
  MEMORY[0x1E69E5920](v9);
  v32 = _AKSignpostLogSystem();
  v31 = 1;
  v30 = v10;
  if (v10 && v30 != -1 && os_signpost_enabled(v32))
  {
    log = v32;
    type = v31;
    spid = v30;
    __os_log_helper_16_0_0(v29);
    _os_signpost_emit_with_name_impl(&dword_193225000, log, type, spid, "SiwAPerformTokenRotation", " enableTelemetry=YES ", v29, 2u);
  }

  objc_storeStrong(&v32, 0);
  v28 = _AKSignpostLogSystem();
  v27 = OS_LOG_TYPE_DEFAULT;
  if (os_log_type_enabled(v28, OS_LOG_TYPE_DEFAULT))
  {
    __os_log_helper_16_0_1_8_0(v41, v33);
    _os_log_impl(&dword_193225000, v28, v27, "BEGIN [%lld]: SiwAPerformTokenRotation  enableTelemetry=YES ", v41, 0xCu);
  }

  objc_storeStrong(&v28, 0);
  v34 = v33;
  v19 = MEMORY[0x1E69E9820];
  v20 = -1073741824;
  v21 = 0;
  v22 = __74__AKSignInWithAppleController_performTokenRotationWithContext_completion___block_invoke;
  v23 = &unk_1E73D3CF0;
  v25 = v33;
  v24 = MEMORY[0x1E69E5928](v38);
  v26 = MEMORY[0x193B165F0](&v19);
  remoteService = v40->_remoteService;
  v12 = MEMORY[0x1E69E9820];
  v13 = -1073741824;
  v14 = 0;
  v15 = __74__AKSignInWithAppleController_performTokenRotationWithContext_completion___block_invoke_117;
  v16 = &unk_1E73D3510;
  v17 = MEMORY[0x1E69E5928](v26);
  v18 = [(AAFXPCSession *)remoteService remoteServiceProxyWithErrorHandler:&v12];
  [v18 performTokenRotationWithContext:location[0] completion:v26];
  objc_storeStrong(&v18, 0);
  objc_storeStrong(&v17, 0);
  objc_storeStrong(&v26, 0);
  objc_storeStrong(&v24, 0);
  os_activity_scope_leave(&state);
  objc_storeStrong(&v37, 0);
  objc_storeStrong(&v38, 0);
  objc_storeStrong(location, 0);
  *MEMORY[0x1E69E9840];
}

void __74__AKSignInWithAppleController_performTokenRotationWithContext_completion___block_invoke(void *a1, char a2, id obj)
{
  v23 = *MEMORY[0x1E69E9840];
  v19 = a1;
  v18 = a2;
  location = 0;
  objc_storeStrong(&location, obj);
  v16 = a1;
  v15 = _AKSignpostGetNanoseconds(a1[5], a1[6]) / 1000000000.0;
  v14 = _AKSignpostLogSystem();
  v13 = OS_SIGNPOST_INTERVAL_END;
  v12 = a1[5];
  if (v12 && v12 != -1 && os_signpost_enabled(v14))
  {
    __os_log_helper_16_0_1_4_2(v22, [location code]);
    _os_signpost_emit_with_name_impl(&dword_193225000, v14, v13, v12, "SiwAPerformTokenRotation", " Error=%{public,signpost.telemetry:number2,name=Error}d ", v22, 8u);
  }

  objc_storeStrong(&v14, 0);
  v11 = _AKSignpostLogSystem();
  v10 = OS_LOG_TYPE_DEFAULT;
  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
  {
    __os_log_helper_16_0_3_8_0_8_0_4_2(v21, a1[5], *&v15, [location code]);
    _os_log_impl(&dword_193225000, v11, v10, "END [%lld] %fs:SiwAPerformTokenRotation  Error=%{public,signpost.telemetry:number2,name=Error}d ", v21, 0x1Cu);
  }

  objc_storeStrong(&v11, 0);
  if (v18)
  {
    oslog = _AKLogSiwa();
    v8 = OS_LOG_TYPE_DEFAULT;
    if (os_log_type_enabled(oslog, OS_LOG_TYPE_DEFAULT))
    {
      v3 = oslog;
      v4 = v8;
      __os_log_helper_16_0_0(v7);
      _os_log_impl(&dword_193225000, v3, v4, "Successfully performed token rotation", v7, 2u);
    }

    objc_storeStrong(&oslog, 0);
  }

  else
  {
    v6 = _AKLogSiwa();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      __os_log_helper_16_2_1_8_64(v20, location);
      _os_log_error_impl(&dword_193225000, v6, OS_LOG_TYPE_ERROR, "Failed to perform token rotation with error: %@", v20, 0xCu);
    }

    objc_storeStrong(&v6, 0);
  }

  if (a1[4])
  {
    (*(a1[4] + 16))();
  }

  objc_storeStrong(&location, 0);
  *MEMORY[0x1E69E9840];
}

void __74__AKSignInWithAppleController_performTokenRotationWithContext_completion___block_invoke_117(void *a1, void *a2)
{
  location[1] = a1;
  location[0] = 0;
  objc_storeStrong(location, a2);
  (*(a1[4] + 16))();
  objc_storeStrong(location, 0);
}

- (void)performHealthCheckWithContext:(id)a3 completion:(id)a4
{
  v42 = *MEMORY[0x1E69E9840];
  v40 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  v38 = 0;
  objc_storeStrong(&v38, a4);
  v36 = _os_activity_create(&dword_193225000, "SignInWithApple/performHealthCheck", MEMORY[0x1E69E9C00], OS_ACTIVITY_FLAG_DEFAULT);
  v37 = v36;
  state.opaque[0] = 0;
  state.opaque[1] = 0;
  os_activity_scope_enter(v36, &state);
  v34 = 0uLL;
  v9 = _AKSignpostLogSystem();
  *&v10 = _AKSignpostCreate(v9);
  *(&v10 + 1) = v4;
  v33 = v10;
  MEMORY[0x1E69E5920](v9);
  v32 = _AKSignpostLogSystem();
  v31 = 1;
  v30 = v10;
  if (v10 && v30 != -1 && os_signpost_enabled(v32))
  {
    log = v32;
    type = v31;
    spid = v30;
    __os_log_helper_16_0_0(v29);
    _os_signpost_emit_with_name_impl(&dword_193225000, log, type, spid, "SiwAPerformHealthCheck", " enableTelemetry=YES ", v29, 2u);
  }

  objc_storeStrong(&v32, 0);
  v28 = _AKSignpostLogSystem();
  v27 = OS_LOG_TYPE_DEFAULT;
  if (os_log_type_enabled(v28, OS_LOG_TYPE_DEFAULT))
  {
    __os_log_helper_16_0_1_8_0(v41, v33);
    _os_log_impl(&dword_193225000, v28, v27, "BEGIN [%lld]: SiwAPerformHealthCheck  enableTelemetry=YES ", v41, 0xCu);
  }

  objc_storeStrong(&v28, 0);
  v34 = v33;
  v19 = MEMORY[0x1E69E9820];
  v20 = -1073741824;
  v21 = 0;
  v22 = __72__AKSignInWithAppleController_performHealthCheckWithContext_completion___block_invoke;
  v23 = &unk_1E73D3CF0;
  v25 = v33;
  v24 = MEMORY[0x1E69E5928](v38);
  v26 = MEMORY[0x193B165F0](&v19);
  remoteService = v40->_remoteService;
  v12 = MEMORY[0x1E69E9820];
  v13 = -1073741824;
  v14 = 0;
  v15 = __72__AKSignInWithAppleController_performHealthCheckWithContext_completion___block_invoke_118;
  v16 = &unk_1E73D3510;
  v17 = MEMORY[0x1E69E5928](v26);
  v18 = [(AAFXPCSession *)remoteService remoteServiceProxyWithErrorHandler:&v12];
  [v18 performHealthCheckWithContext:location[0] completion:v26];
  objc_storeStrong(&v18, 0);
  objc_storeStrong(&v17, 0);
  objc_storeStrong(&v26, 0);
  objc_storeStrong(&v24, 0);
  os_activity_scope_leave(&state);
  objc_storeStrong(&v37, 0);
  objc_storeStrong(&v38, 0);
  objc_storeStrong(location, 0);
  *MEMORY[0x1E69E9840];
}

void __72__AKSignInWithAppleController_performHealthCheckWithContext_completion___block_invoke(void *a1, char a2, id obj)
{
  v23 = *MEMORY[0x1E69E9840];
  v19 = a1;
  v18 = a2;
  location = 0;
  objc_storeStrong(&location, obj);
  v16 = a1;
  v15 = _AKSignpostGetNanoseconds(a1[5], a1[6]) / 1000000000.0;
  v14 = _AKSignpostLogSystem();
  v13 = OS_SIGNPOST_INTERVAL_END;
  v12 = a1[5];
  if (v12 && v12 != -1 && os_signpost_enabled(v14))
  {
    __os_log_helper_16_0_1_4_2(v22, [location code]);
    _os_signpost_emit_with_name_impl(&dword_193225000, v14, v13, v12, "SiwAPerformHealthCheck", " Error=%{public,signpost.telemetry:number2,name=Error}d ", v22, 8u);
  }

  objc_storeStrong(&v14, 0);
  v11 = _AKSignpostLogSystem();
  v10 = OS_LOG_TYPE_DEFAULT;
  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
  {
    __os_log_helper_16_0_3_8_0_8_0_4_2(v21, a1[5], *&v15, [location code]);
    _os_log_impl(&dword_193225000, v11, v10, "END [%lld] %fs:SiwAPerformHealthCheck  Error=%{public,signpost.telemetry:number2,name=Error}d ", v21, 0x1Cu);
  }

  objc_storeStrong(&v11, 0);
  if (v18)
  {
    oslog = _AKLogSiwa();
    v8 = OS_LOG_TYPE_DEFAULT;
    if (os_log_type_enabled(oslog, OS_LOG_TYPE_DEFAULT))
    {
      v3 = oslog;
      v4 = v8;
      __os_log_helper_16_0_0(v7);
      _os_log_impl(&dword_193225000, v3, v4, "Successfully performed health check", v7, 2u);
    }

    objc_storeStrong(&oslog, 0);
  }

  else
  {
    v6 = _AKLogSiwa();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      __os_log_helper_16_2_1_8_64(v20, location);
      _os_log_error_impl(&dword_193225000, v6, OS_LOG_TYPE_ERROR, "Failed to perform health check with error: %@", v20, 0xCu);
    }

    objc_storeStrong(&v6, 0);
  }

  if (a1[4])
  {
    (*(a1[4] + 16))();
  }

  objc_storeStrong(&location, 0);
  *MEMORY[0x1E69E9840];
}

void __72__AKSignInWithAppleController_performHealthCheckWithContext_completion___block_invoke_118(void *a1, void *a2)
{
  location[1] = a1;
  location[0] = 0;
  objc_storeStrong(location, a2);
  (*(a1[4] + 16))();
  objc_storeStrong(location, 0);
}

- (void)fetchSignInWithApplePrivateEmailCountWithCompletion:(id)a3
{
  v39 = *MEMORY[0x1E69E9840];
  v37 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  v34 = _os_activity_create(&dword_193225000, "SignInWithApple/fetchSIWAHMECount", MEMORY[0x1E69E9C00], OS_ACTIVITY_FLAG_DEFAULT);
  v35 = v34;
  state.opaque[0] = 0;
  state.opaque[1] = 0;
  os_activity_scope_enter(v34, &state);
  v32 = 0uLL;
  v8 = _AKSignpostLogSystem();
  *&v9 = _AKSignpostCreate(v8);
  *(&v9 + 1) = v3;
  v31 = v9;
  MEMORY[0x1E69E5920](v8);
  v30 = _AKSignpostLogSystem();
  v29 = 1;
  v28 = v9;
  if (v9 && v28 != -1 && os_signpost_enabled(v30))
  {
    log = v30;
    type = v29;
    spid = v28;
    __os_log_helper_16_0_0(v27);
    _os_signpost_emit_with_name_impl(&dword_193225000, log, type, spid, "SiwAFetchHMECount", " enableTelemetry=YES ", v27, 2u);
  }

  objc_storeStrong(&v30, 0);
  v26 = _AKSignpostLogSystem();
  v25 = OS_LOG_TYPE_DEFAULT;
  if (os_log_type_enabled(v26, OS_LOG_TYPE_DEFAULT))
  {
    __os_log_helper_16_0_1_8_0(v38, v31);
    _os_log_impl(&dword_193225000, v26, v25, "BEGIN [%lld]: SiwAFetchHMECount  enableTelemetry=YES ", v38, 0xCu);
  }

  objc_storeStrong(&v26, 0);
  v32 = v31;
  v17 = MEMORY[0x1E69E9820];
  v18 = -1073741824;
  v19 = 0;
  v20 = __83__AKSignInWithAppleController_fetchSignInWithApplePrivateEmailCountWithCompletion___block_invoke;
  v21 = &unk_1E73D9688;
  v23 = v31;
  v22 = MEMORY[0x1E69E5928](location[0]);
  v24 = MEMORY[0x193B165F0](&v17);
  remoteService = v37->_remoteService;
  v10 = MEMORY[0x1E69E9820];
  v11 = -1073741824;
  v12 = 0;
  v13 = __83__AKSignInWithAppleController_fetchSignInWithApplePrivateEmailCountWithCompletion___block_invoke_120;
  v14 = &unk_1E73D3510;
  v15 = MEMORY[0x1E69E5928](v24);
  v16 = [(AAFXPCSession *)remoteService remoteServiceProxyWithErrorHandler:&v10];
  [v16 fetchSignInWithApplePrivateEmailCountWithCompletion:v24];
  objc_storeStrong(&v16, 0);
  objc_storeStrong(&v15, 0);
  objc_storeStrong(&v24, 0);
  objc_storeStrong(&v22, 0);
  os_activity_scope_leave(&state);
  objc_storeStrong(&v35, 0);
  objc_storeStrong(location, 0);
  *MEMORY[0x1E69E9840];
}

void __83__AKSignInWithAppleController_fetchSignInWithApplePrivateEmailCountWithCompletion___block_invoke(void *a1, void *a2, void *a3)
{
  v23 = *MEMORY[0x1E69E9840];
  location[1] = a1;
  location[0] = 0;
  objc_storeStrong(location, a2);
  v18 = 0;
  objc_storeStrong(&v18, a3);
  v17 = a1;
  v16 = _AKSignpostGetNanoseconds(a1[5], a1[6]) / 1000000000.0;
  v15 = _AKSignpostLogSystem();
  v14 = OS_SIGNPOST_INTERVAL_END;
  v13 = a1[5];
  if (v13 && v13 != -1 && os_signpost_enabled(v15))
  {
    __os_log_helper_16_0_1_4_2(v22, [v18 code]);
    _os_signpost_emit_with_name_impl(&dword_193225000, v15, v14, v13, "SiwAFetchHMECount", " Error=%{public,signpost.telemetry:number2,name=Error}d ", v22, 8u);
  }

  objc_storeStrong(&v15, 0);
  v12 = _AKSignpostLogSystem();
  v11 = OS_LOG_TYPE_DEFAULT;
  if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
  {
    __os_log_helper_16_0_3_8_0_8_0_4_2(v21, a1[5], *&v16, [v18 code]);
    _os_log_impl(&dword_193225000, v12, v11, "END [%lld] %fs:SiwAFetchHMECount  Error=%{public,signpost.telemetry:number2,name=Error}d ", v21, 0x1Cu);
  }

  objc_storeStrong(&v12, 0);
  if (location[0])
  {
    v10 = _AKLogSiwa();
    v9 = OS_LOG_TYPE_DEFAULT;
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
    {
      v3 = v10;
      v4 = v9;
      __os_log_helper_16_0_0(v8);
      _os_log_impl(&dword_193225000, v3, v4, "Successfully fetched SIWA HME Count", v8, 2u);
    }

    objc_storeStrong(&v10, 0);
  }

  else
  {
    oslog = _AKLogSiwa();
    if (os_log_type_enabled(oslog, OS_LOG_TYPE_ERROR))
    {
      __os_log_helper_16_2_1_8_64(v20, v18);
      _os_log_error_impl(&dword_193225000, oslog, OS_LOG_TYPE_ERROR, "Failed to fetch SIWA HME count with error: %@", v20, 0xCu);
    }

    objc_storeStrong(&oslog, 0);
  }

  if (a1[4])
  {
    (*(a1[4] + 16))();
  }

  objc_storeStrong(&v18, 0);
  objc_storeStrong(location, 0);
  *MEMORY[0x1E69E9840];
}

void __83__AKSignInWithAppleController_fetchSignInWithApplePrivateEmailCountWithCompletion___block_invoke_120(void *a1, void *a2)
{
  location[1] = a1;
  location[0] = 0;
  objc_storeStrong(location, a2);
  (*(a1[4] + 16))();
  objc_storeStrong(location, 0);
}

@end