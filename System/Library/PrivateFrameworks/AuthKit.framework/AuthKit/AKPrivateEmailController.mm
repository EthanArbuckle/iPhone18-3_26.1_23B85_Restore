@interface AKPrivateEmailController
- (AKPrivateEmailController)init;
- (AKPrivateEmailController)initWithXPCSession:(id)session;
- (void)configureRemoteInterface:(id)interface;
- (void)deletePrivateEmailDatabaseWithCompletion:(id)completion;
- (void)fetchPrivateEmailForAltDSID:(id)d withKey:(id)key completion:(id)completion;
- (void)fetchPrivateEmailWithContext:(id)context completion:(id)completion;
- (void)fetchSignInWithApplePrivateEmailWithContext:(id)context completion:(id)completion;
- (void)getContextForRequestContext:(id)context completion:(id)completion;
- (void)listAllPrivateEmailsForAltDSID:(id)d completion:(id)completion;
- (void)lookupPrivateEmailForAltDSID:(id)d withKey:(id)key completion:(id)completion;
- (void)lookupPrivateEmailWithContext:(id)context completion:(id)completion;
- (void)privateEmailListVersionWithCompletion:(id)completion;
- (void)registerPrivateEmailForAltDSID:(id)d withKey:(id)key completion:(id)completion;
- (void)registerPrivateEmailWithContext:(id)context completion:(id)completion;
- (void)removePrivateEmailKey:(id)key completion:(id)completion;
- (void)setUiProvider:(id)provider;
@end

@implementation AKPrivateEmailController

- (AKPrivateEmailController)init
{
  selfCopy = self;
  v7[1] = a2;
  v7[0] = [objc_alloc(MEMORY[0x1E6985E18]) initWithServiceName:@"com.apple.ak.privateemail.xpc" remoteProtocol:&unk_1F07C2A30 exportedProtocol:&unk_1F07D19D8 options:0];
  v2 = objc_alloc(MEMORY[0x1E6985E10]);
  v6 = [v2 initWithRemoteServiceConfig:v7[0] delegate:selfCopy];
  v3 = selfCopy;
  selfCopy = 0;
  selfCopy = [(AKPrivateEmailController *)v3 initWithXPCSession:v6];
  objc_storeStrong(&selfCopy, selfCopy);
  v5 = MEMORY[0x1E69E5928](selfCopy);
  objc_storeStrong(&v6, 0);
  objc_storeStrong(v7, 0);
  objc_storeStrong(&selfCopy, 0);
  return v5;
}

- (AKPrivateEmailController)initWithXPCSession:(id)session
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, session);
  v3 = selfCopy;
  selfCopy = 0;
  v8.receiver = v3;
  v8.super_class = AKPrivateEmailController;
  selfCopy = [(AKPrivateEmailController *)&v8 init];
  objc_storeStrong(&selfCopy, selfCopy);
  if (selfCopy)
  {
    v4 = objc_alloc_init(AKPrivateEmailClientImpl);
    clientImpl = selfCopy->_clientImpl;
    selfCopy->_clientImpl = v4;
    MEMORY[0x1E69E5920](clientImpl);
    objc_storeStrong(&selfCopy->_remoteService, location[0]);
    [(AAFXPCSession *)selfCopy->_remoteService resume];
  }

  v7 = MEMORY[0x1E69E5928](selfCopy);
  objc_storeStrong(location, 0);
  objc_storeStrong(&selfCopy, 0);
  return v7;
}

- (void)configureRemoteInterface:(id)interface
{
  location[2] = self;
  location[1] = a2;
  v11 = location;
  v12 = 0;
  location[0] = 0;
  objc_storeStrong(location, interface);
  v7 = MEMORY[0x1E695DFD8];
  v6 = objc_opt_class();
  v4 = objc_opt_class();
  v5 = objc_opt_class();
  v3 = [v7 setWithObjects:{v6, v4, v5, objc_opt_class(), 0}];
  v10 = &v13;
  v13 = v3;
  v8 = 0;
  v9 = 1;
  [location[0] setClasses:v3 forSelector:sel_lookupPrivateEmailForAltDSID_withKey_completion_ argumentIndex:? ofReply:?];
  [location[0] setClasses:v13 forSelector:sel_registerPrivateEmailForAltDSID_withKey_completion_ argumentIndex:v8 ofReply:v9 & 1];
  [location[0] setClasses:v13 forSelector:sel_registerPrivateEmailWithContext_completion_ argumentIndex:v8 ofReply:v9 & 1];
  [location[0] setClasses:v13 forSelector:sel_listAllPrivateEmailsForAltDSID_completion_ argumentIndex:v8 ofReply:v9 & 1];
  [location[0] setClasses:v13 forSelector:sel_fetchSignInWithApplePrivateEmailWithContext_completion_ argumentIndex:v8 ofReply:v9 & 1];
  objc_storeStrong(v10, v12);
  objc_storeStrong(v11, v12);
}

- (void)setUiProvider:(id)provider
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, provider);
  [(AKPrivateEmailClientImpl *)selfCopy->_clientImpl setUiProvider:location[0]];
  objc_storeStrong(location, 0);
}

- (void)lookupPrivateEmailForAltDSID:(id)d withKey:(id)key completion:(id)completion
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, d);
  v10 = 0;
  objc_storeStrong(&v10, key);
  v9 = 0;
  objc_storeStrong(&v9, completion);
  v5 = [AKPrivateEmailContext alloc];
  v8 = [(AKPrivateEmailContext *)v5 initWithKey:v10 altDSID:location[0]];
  [(AKPrivateEmailController *)selfCopy lookupPrivateEmailWithContext:v8 completion:v9];
  objc_storeStrong(&v8, 0);
  objc_storeStrong(&v9, 0);
  objc_storeStrong(&v10, 0);
  objc_storeStrong(location, 0);
}

- (void)lookupPrivateEmailWithContext:(id)context completion:(id)completion
{
  v47 = *MEMORY[0x1E69E9840];
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, context);
  v43 = 0;
  objc_storeStrong(&v43, completion);
  v37[0] = 0;
  v37[1] = v37;
  v38 = 838860800;
  v39 = 48;
  v40 = __Block_byref_object_copy__8;
  v41 = __Block_byref_object_dispose__8;
  v42 = MEMORY[0x1E69E5928](selfCopy);
  v35 = _os_activity_create(&dword_193225000, "private-email-authkit/lookup-email", MEMORY[0x1E69E9C00], OS_ACTIVITY_FLAG_DEFAULT);
  v36 = v35;
  state.opaque[0] = 0;
  state.opaque[1] = 0;
  os_activity_scope_enter(v35, &state);
  v33 = 0uLL;
  v9 = _AKSignpostLogSystem();
  *&v32 = _AKSignpostCreate(v9);
  *(&v32 + 1) = v4;
  MEMORY[0x1E69E5920](v9);
  v31 = _AKSignpostLogSystem();
  v30 = 1;
  v29 = v32;
  if (v32 && v29 != -1 && os_signpost_enabled(v31))
  {
    log = v31;
    type = v30;
    spid = v29;
    __os_log_helper_16_0_0(v28);
    _os_signpost_emit_with_name_impl(&dword_193225000, log, type, spid, "PrivateEmailLocalLookup", " enableTelemetry=YES ", v28, 2u);
  }

  objc_storeStrong(&v31, 0);
  v27 = _AKSignpostLogSystem();
  v26 = OS_LOG_TYPE_DEFAULT;
  if (os_log_type_enabled(v27, OS_LOG_TYPE_DEFAULT))
  {
    __os_log_helper_16_0_1_8_0(v46, v32);
    _os_log_impl(&dword_193225000, v27, v26, "BEGIN [%lld]: PrivateEmailLocalLookup  enableTelemetry=YES ", v46, 0xCu);
  }

  objc_storeStrong(&v27, 0);
  v33 = v32;
  v18 = MEMORY[0x1E69E9820];
  v19 = -1073741824;
  v20 = 0;
  v21 = __69__AKPrivateEmailController_lookupPrivateEmailWithContext_completion___block_invoke;
  v22 = &unk_1E73D6C80;
  v23[1] = v37;
  v24 = v32;
  v23[0] = MEMORY[0x1E69E5928](v43);
  v25 = MEMORY[0x193B165F0](&v18);
  remoteService = selfCopy->_remoteService;
  v11 = MEMORY[0x1E69E9820];
  v12 = -1073741824;
  v13 = 0;
  v14 = __69__AKPrivateEmailController_lookupPrivateEmailWithContext_completion___block_invoke_104;
  v15 = &unk_1E73D3510;
  v16 = MEMORY[0x1E69E5928](v25);
  v17 = [(AAFXPCSession *)remoteService remoteServiceProxyWithErrorHandler:&v11];
  [v17 lookupPrivateEmailWithContext:location[0] completion:v25];
  objc_storeStrong(&v17, 0);
  objc_storeStrong(&v16, 0);
  objc_storeStrong(&v25, 0);
  objc_storeStrong(v23, 0);
  os_activity_scope_leave(&state);
  objc_storeStrong(&v36, 0);
  _Block_object_dispose(v37, 8);
  objc_storeStrong(&v42, 0);
  objc_storeStrong(&v43, 0);
  objc_storeStrong(location, 0);
  *MEMORY[0x1E69E9840];
}

void __69__AKPrivateEmailController_lookupPrivateEmailWithContext_completion___block_invoke(void *a1, void *a2, void *a3)
{
  v18 = *MEMORY[0x1E69E9840];
  location[1] = a1;
  location[0] = 0;
  objc_storeStrong(location, a2);
  v13 = 0;
  objc_storeStrong(&v13, a3);
  v12 = a1;
  objc_storeStrong((*(a1[5] + 8) + 40), 0);
  v11 = _AKSignpostGetNanoseconds(a1[6], a1[7]) / 1000000000.0;
  v10 = _AKSignpostLogSystem();
  v9 = OS_SIGNPOST_INTERVAL_END;
  v8 = a1[6];
  if (v8 && v8 != -1 && os_signpost_enabled(v10))
  {
    __os_log_helper_16_0_1_4_2(v17, [v13 code]);
    _os_signpost_emit_with_name_impl(&dword_193225000, v10, v9, v8, "PrivateEmailLocalLookup", " Error=%{public,signpost.telemetry:number2,name=Error}d ", v17, 8u);
  }

  objc_storeStrong(&v10, 0);
  v7 = _AKSignpostLogSystem();
  v6 = OS_LOG_TYPE_DEFAULT;
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    __os_log_helper_16_0_3_8_0_8_0_4_2(v16, a1[6], *&v11, [v13 code]);
    _os_log_impl(&dword_193225000, v7, v6, "END [%lld] %fs:PrivateEmailLocalLookup  Error=%{public,signpost.telemetry:number2,name=Error}d ", v16, 0x1Cu);
  }

  objc_storeStrong(&v7, 0);
  if (a1[4])
  {
    oslog = _AKLogHme();
    if (os_log_type_enabled(oslog, OS_LOG_TYPE_DEFAULT))
    {
      __os_log_helper_16_2_1_8_64(v15, v13);
      _os_log_impl(&dword_193225000, oslog, OS_LOG_TYPE_DEFAULT, "Completed Private Email lookup, error:%@", v15, 0xCu);
    }

    objc_storeStrong(&oslog, 0);
    (*(a1[4] + 16))();
  }

  objc_storeStrong(&v13, 0);
  objc_storeStrong(location, 0);
  *MEMORY[0x1E69E9840];
}

void __69__AKPrivateEmailController_lookupPrivateEmailWithContext_completion___block_invoke_104(NSObject *a1, void *a2)
{
  v6 = *MEMORY[0x1E69E9840];
  location[1] = a1;
  location[0] = 0;
  objc_storeStrong(location, a2);
  oslog[1] = a1;
  oslog[0] = _AKLogHme();
  if (os_log_type_enabled(oslog[0], OS_LOG_TYPE_ERROR))
  {
    __os_log_helper_16_2_2_8_32_8_64(v5, "[AKPrivateEmailController lookupPrivateEmailWithContext:completion:]_block_invoke", location[0]);
    _os_log_error_impl(&dword_193225000, oslog[0], OS_LOG_TYPE_ERROR, "Connection to private email service to %s returned an error: %@", v5, 0x16u);
  }

  objc_storeStrong(oslog, 0);
  (*(a1[4].isa + 2))();
  objc_storeStrong(location, 0);
  *MEMORY[0x1E69E9840];
}

- (void)fetchPrivateEmailForAltDSID:(id)d withKey:(id)key completion:(id)completion
{
  v50 = *MEMORY[0x1E69E9840];
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, d);
  v46 = 0;
  objc_storeStrong(&v46, key);
  v45 = 0;
  objc_storeStrong(&v45, completion);
  v39[0] = 0;
  v39[1] = v39;
  v40 = 838860800;
  v41 = 48;
  v42 = __Block_byref_object_copy__8;
  v43 = __Block_byref_object_dispose__8;
  v44 = MEMORY[0x1E69E5928](selfCopy);
  v37 = _os_activity_create(&dword_193225000, "private-email-authkit/fetch-email", MEMORY[0x1E69E9C00], OS_ACTIVITY_FLAG_DEFAULT);
  v38 = v37;
  state.opaque[0] = 0;
  state.opaque[1] = 0;
  os_activity_scope_enter(v37, &state);
  v35 = 0uLL;
  v10 = _AKSignpostLogSystem();
  *&v34 = _AKSignpostCreate(v10);
  *(&v34 + 1) = v5;
  MEMORY[0x1E69E5920](v10);
  v33 = _AKSignpostLogSystem();
  v32 = 1;
  v31 = v34;
  if (v34 && v31 != -1 && os_signpost_enabled(v33))
  {
    log = v33;
    type = v32;
    spid = v31;
    __os_log_helper_16_0_0(v30);
    _os_signpost_emit_with_name_impl(&dword_193225000, log, type, spid, "PrivateEmailRemoteFetch", " enableTelemetry=YES ", v30, 2u);
  }

  objc_storeStrong(&v33, 0);
  oslog = _AKSignpostLogSystem();
  v28 = OS_LOG_TYPE_DEFAULT;
  if (os_log_type_enabled(oslog, OS_LOG_TYPE_DEFAULT))
  {
    __os_log_helper_16_0_1_8_0(v49, v34);
    _os_log_impl(&dword_193225000, oslog, v28, "BEGIN [%lld]: PrivateEmailRemoteFetch  enableTelemetry=YES ", v49, 0xCu);
  }

  objc_storeStrong(&oslog, 0);
  v35 = v34;
  v20 = MEMORY[0x1E69E9820];
  v21 = -1073741824;
  v22 = 0;
  v23 = __75__AKPrivateEmailController_fetchPrivateEmailForAltDSID_withKey_completion___block_invoke;
  v24 = &unk_1E73D6C80;
  v25[1] = v39;
  v26 = v34;
  v25[0] = MEMORY[0x1E69E5928](v45);
  v27 = MEMORY[0x193B165F0](&v20);
  remoteService = selfCopy->_remoteService;
  v13 = MEMORY[0x1E69E9820];
  v14 = -1073741824;
  v15 = 0;
  v16 = __75__AKPrivateEmailController_fetchPrivateEmailForAltDSID_withKey_completion___block_invoke_106;
  v17 = &unk_1E73D3510;
  v18 = MEMORY[0x1E69E5928](v27);
  v19 = [(AAFXPCSession *)remoteService remoteServiceProxyWithErrorHandler:&v13];
  [v19 fetchPrivateEmailForAltDSID:location[0] withKey:v46 completion:v27];
  objc_storeStrong(&v19, 0);
  objc_storeStrong(&v18, 0);
  objc_storeStrong(&v27, 0);
  objc_storeStrong(v25, 0);
  os_activity_scope_leave(&state);
  objc_storeStrong(&v38, 0);
  _Block_object_dispose(v39, 8);
  objc_storeStrong(&v44, 0);
  objc_storeStrong(&v45, 0);
  objc_storeStrong(&v46, 0);
  objc_storeStrong(location, 0);
  *MEMORY[0x1E69E9840];
}

void __75__AKPrivateEmailController_fetchPrivateEmailForAltDSID_withKey_completion___block_invoke(void *a1, void *a2, void *a3)
{
  v18 = *MEMORY[0x1E69E9840];
  location[1] = a1;
  location[0] = 0;
  objc_storeStrong(location, a2);
  v13 = 0;
  objc_storeStrong(&v13, a3);
  v12 = a1;
  objc_storeStrong((*(a1[5] + 8) + 40), 0);
  v11 = _AKSignpostGetNanoseconds(a1[6], a1[7]) / 1000000000.0;
  v10 = _AKSignpostLogSystem();
  v9 = OS_SIGNPOST_INTERVAL_END;
  v8 = a1[6];
  if (v8 && v8 != -1 && os_signpost_enabled(v10))
  {
    __os_log_helper_16_0_1_4_2(v17, [v13 code]);
    _os_signpost_emit_with_name_impl(&dword_193225000, v10, v9, v8, "PrivateEmailRemoteFetch", " Error=%{public,signpost.telemetry:number2,name=Error}d ", v17, 8u);
  }

  objc_storeStrong(&v10, 0);
  v7 = _AKSignpostLogSystem();
  v6 = OS_LOG_TYPE_DEFAULT;
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    __os_log_helper_16_0_3_8_0_8_0_4_2(v16, a1[6], *&v11, [v13 code]);
    _os_log_impl(&dword_193225000, v7, v6, "END [%lld] %fs:PrivateEmailRemoteFetch  Error=%{public,signpost.telemetry:number2,name=Error}d ", v16, 0x1Cu);
  }

  objc_storeStrong(&v7, 0);
  if (a1[4])
  {
    oslog = _AKLogHme();
    if (os_log_type_enabled(oslog, OS_LOG_TYPE_DEFAULT))
    {
      __os_log_helper_16_2_1_8_64(v15, v13);
      _os_log_impl(&dword_193225000, oslog, OS_LOG_TYPE_DEFAULT, "Completed Private Email fetch, error:%@", v15, 0xCu);
    }

    objc_storeStrong(&oslog, 0);
    (*(a1[4] + 16))();
  }

  objc_storeStrong(&v13, 0);
  objc_storeStrong(location, 0);
  *MEMORY[0x1E69E9840];
}

void __75__AKPrivateEmailController_fetchPrivateEmailForAltDSID_withKey_completion___block_invoke_106(NSObject *a1, void *a2)
{
  v6 = *MEMORY[0x1E69E9840];
  location[1] = a1;
  location[0] = 0;
  objc_storeStrong(location, a2);
  oslog[1] = a1;
  oslog[0] = _AKLogHme();
  if (os_log_type_enabled(oslog[0], OS_LOG_TYPE_ERROR))
  {
    __os_log_helper_16_2_2_8_32_8_64(v5, "[AKPrivateEmailController fetchPrivateEmailForAltDSID:withKey:completion:]_block_invoke", location[0]);
    _os_log_error_impl(&dword_193225000, oslog[0], OS_LOG_TYPE_ERROR, "Connection to private email service to %s returned an error: %@", v5, 0x16u);
  }

  objc_storeStrong(oslog, 0);
  (*(a1[4].isa + 2))();
  objc_storeStrong(location, 0);
  *MEMORY[0x1E69E9840];
}

- (void)registerPrivateEmailForAltDSID:(id)d withKey:(id)key completion:(id)completion
{
  v50 = *MEMORY[0x1E69E9840];
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, d);
  v46 = 0;
  objc_storeStrong(&v46, key);
  v45 = 0;
  objc_storeStrong(&v45, completion);
  v39[0] = 0;
  v39[1] = v39;
  v40 = 838860800;
  v41 = 48;
  v42 = __Block_byref_object_copy__8;
  v43 = __Block_byref_object_dispose__8;
  v44 = MEMORY[0x1E69E5928](selfCopy);
  v37 = _os_activity_create(&dword_193225000, "private-email-authkit/register-email", MEMORY[0x1E69E9C00], OS_ACTIVITY_FLAG_DEFAULT);
  v38 = v37;
  state.opaque[0] = 0;
  state.opaque[1] = 0;
  os_activity_scope_enter(v37, &state);
  v35 = 0uLL;
  v10 = _AKSignpostLogSystem();
  *&v34 = _AKSignpostCreate(v10);
  *(&v34 + 1) = v5;
  MEMORY[0x1E69E5920](v10);
  v33 = _AKSignpostLogSystem();
  v32 = 1;
  v31 = v34;
  if (v34 && v31 != -1 && os_signpost_enabled(v33))
  {
    log = v33;
    type = v32;
    spid = v31;
    __os_log_helper_16_0_0(v30);
    _os_signpost_emit_with_name_impl(&dword_193225000, log, type, spid, "PrivateEmailRemoteRegister", " enableTelemetry=YES ", v30, 2u);
  }

  objc_storeStrong(&v33, 0);
  oslog = _AKSignpostLogSystem();
  v28 = OS_LOG_TYPE_DEFAULT;
  if (os_log_type_enabled(oslog, OS_LOG_TYPE_DEFAULT))
  {
    __os_log_helper_16_0_1_8_0(v49, v34);
    _os_log_impl(&dword_193225000, oslog, v28, "BEGIN [%lld]: PrivateEmailRemoteRegister  enableTelemetry=YES ", v49, 0xCu);
  }

  objc_storeStrong(&oslog, 0);
  v35 = v34;
  v20 = MEMORY[0x1E69E9820];
  v21 = -1073741824;
  v22 = 0;
  v23 = __78__AKPrivateEmailController_registerPrivateEmailForAltDSID_withKey_completion___block_invoke;
  v24 = &unk_1E73D6C80;
  v25[1] = v39;
  v26 = v34;
  v25[0] = MEMORY[0x1E69E5928](v45);
  v27 = MEMORY[0x193B165F0](&v20);
  remoteService = selfCopy->_remoteService;
  v13 = MEMORY[0x1E69E9820];
  v14 = -1073741824;
  v15 = 0;
  v16 = __78__AKPrivateEmailController_registerPrivateEmailForAltDSID_withKey_completion___block_invoke_107;
  v17 = &unk_1E73D3510;
  v18 = MEMORY[0x1E69E5928](v27);
  v19 = [(AAFXPCSession *)remoteService remoteServiceProxyWithErrorHandler:&v13];
  [v19 registerPrivateEmailForAltDSID:location[0] withKey:v46 completion:v27];
  objc_storeStrong(&v19, 0);
  objc_storeStrong(&v18, 0);
  objc_storeStrong(&v27, 0);
  objc_storeStrong(v25, 0);
  os_activity_scope_leave(&state);
  objc_storeStrong(&v38, 0);
  _Block_object_dispose(v39, 8);
  objc_storeStrong(&v44, 0);
  objc_storeStrong(&v45, 0);
  objc_storeStrong(&v46, 0);
  objc_storeStrong(location, 0);
  *MEMORY[0x1E69E9840];
}

void __78__AKPrivateEmailController_registerPrivateEmailForAltDSID_withKey_completion___block_invoke(void *a1, void *a2, void *a3)
{
  v18 = *MEMORY[0x1E69E9840];
  location[1] = a1;
  location[0] = 0;
  objc_storeStrong(location, a2);
  v13 = 0;
  objc_storeStrong(&v13, a3);
  v12 = a1;
  objc_storeStrong((*(a1[5] + 8) + 40), 0);
  v11 = _AKSignpostGetNanoseconds(a1[6], a1[7]) / 1000000000.0;
  v10 = _AKSignpostLogSystem();
  v9 = OS_SIGNPOST_INTERVAL_END;
  v8 = a1[6];
  if (v8 && v8 != -1 && os_signpost_enabled(v10))
  {
    __os_log_helper_16_0_1_4_2(v17, [v13 code]);
    _os_signpost_emit_with_name_impl(&dword_193225000, v10, v9, v8, "PrivateEmailRemoteRegister", " Error=%{public,signpost.telemetry:number2,name=Error}d ", v17, 8u);
  }

  objc_storeStrong(&v10, 0);
  v7 = _AKSignpostLogSystem();
  v6 = OS_LOG_TYPE_DEFAULT;
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    __os_log_helper_16_0_3_8_0_8_0_4_2(v16, a1[6], *&v11, [v13 code]);
    _os_log_impl(&dword_193225000, v7, v6, "END [%lld] %fs:PrivateEmailRemoteRegister  Error=%{public,signpost.telemetry:number2,name=Error}d ", v16, 0x1Cu);
  }

  objc_storeStrong(&v7, 0);
  oslog = _AKLogHme();
  if (os_log_type_enabled(oslog, OS_LOG_TYPE_DEFAULT))
  {
    __os_log_helper_16_2_1_8_64(v15, v13);
    _os_log_impl(&dword_193225000, oslog, OS_LOG_TYPE_DEFAULT, "Completed Private Email fetch in background, error:%@", v15, 0xCu);
  }

  objc_storeStrong(&oslog, 0);
  if (a1[4])
  {
    (*(a1[4] + 16))();
  }

  objc_storeStrong(&v13, 0);
  objc_storeStrong(location, 0);
  *MEMORY[0x1E69E9840];
}

void __78__AKPrivateEmailController_registerPrivateEmailForAltDSID_withKey_completion___block_invoke_107(NSObject *a1, void *a2)
{
  v6 = *MEMORY[0x1E69E9840];
  location[1] = a1;
  location[0] = 0;
  objc_storeStrong(location, a2);
  oslog[1] = a1;
  oslog[0] = _AKLogHme();
  if (os_log_type_enabled(oslog[0], OS_LOG_TYPE_ERROR))
  {
    __os_log_helper_16_2_2_8_32_8_64(v5, "[AKPrivateEmailController registerPrivateEmailForAltDSID:withKey:completion:]_block_invoke", location[0]);
    _os_log_error_impl(&dword_193225000, oslog[0], OS_LOG_TYPE_ERROR, "Connection to private email service to %s returned an error: %@", v5, 0x16u);
  }

  objc_storeStrong(oslog, 0);
  (*(a1[4].isa + 2))();
  objc_storeStrong(location, 0);
  *MEMORY[0x1E69E9840];
}

- (void)registerPrivateEmailWithContext:(id)context completion:(id)completion
{
  v47 = *MEMORY[0x1E69E9840];
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, context);
  v43 = 0;
  objc_storeStrong(&v43, completion);
  v37[0] = 0;
  v37[1] = v37;
  v38 = 838860800;
  v39 = 48;
  v40 = __Block_byref_object_copy__8;
  v41 = __Block_byref_object_dispose__8;
  v42 = MEMORY[0x1E69E5928](selfCopy);
  v35 = _os_activity_create(&dword_193225000, "private-email-authkit/register-email", MEMORY[0x1E69E9C00], OS_ACTIVITY_FLAG_DEFAULT);
  v36 = v35;
  state.opaque[0] = 0;
  state.opaque[1] = 0;
  os_activity_scope_enter(v35, &state);
  v33 = 0uLL;
  v9 = _AKSignpostLogSystem();
  *&v32 = _AKSignpostCreate(v9);
  *(&v32 + 1) = v4;
  MEMORY[0x1E69E5920](v9);
  v31 = _AKSignpostLogSystem();
  v30 = 1;
  v29 = v32;
  if (v32 && v29 != -1 && os_signpost_enabled(v31))
  {
    log = v31;
    type = v30;
    spid = v29;
    __os_log_helper_16_0_0(v28);
    _os_signpost_emit_with_name_impl(&dword_193225000, log, type, spid, "PrivateEmailRemoteRegister", " enableTelemetry=YES ", v28, 2u);
  }

  objc_storeStrong(&v31, 0);
  v27 = _AKSignpostLogSystem();
  v26 = OS_LOG_TYPE_DEFAULT;
  if (os_log_type_enabled(v27, OS_LOG_TYPE_DEFAULT))
  {
    __os_log_helper_16_0_1_8_0(v46, v32);
    _os_log_impl(&dword_193225000, v27, v26, "BEGIN [%lld]: PrivateEmailRemoteRegister  enableTelemetry=YES ", v46, 0xCu);
  }

  objc_storeStrong(&v27, 0);
  v33 = v32;
  v18 = MEMORY[0x1E69E9820];
  v19 = -1073741824;
  v20 = 0;
  v21 = __71__AKPrivateEmailController_registerPrivateEmailWithContext_completion___block_invoke;
  v22 = &unk_1E73D6C80;
  v23[1] = v37;
  v24 = v32;
  v23[0] = MEMORY[0x1E69E5928](v43);
  v25 = MEMORY[0x193B165F0](&v18);
  remoteService = selfCopy->_remoteService;
  v11 = MEMORY[0x1E69E9820];
  v12 = -1073741824;
  v13 = 0;
  v14 = __71__AKPrivateEmailController_registerPrivateEmailWithContext_completion___block_invoke_108;
  v15 = &unk_1E73D3510;
  v16 = MEMORY[0x1E69E5928](v25);
  v17 = [(AAFXPCSession *)remoteService remoteServiceProxyWithErrorHandler:&v11];
  [v17 registerPrivateEmailWithContext:location[0] completion:v25];
  objc_storeStrong(&v17, 0);
  objc_storeStrong(&v16, 0);
  objc_storeStrong(&v25, 0);
  objc_storeStrong(v23, 0);
  os_activity_scope_leave(&state);
  objc_storeStrong(&v36, 0);
  _Block_object_dispose(v37, 8);
  objc_storeStrong(&v42, 0);
  objc_storeStrong(&v43, 0);
  objc_storeStrong(location, 0);
  *MEMORY[0x1E69E9840];
}

void __71__AKPrivateEmailController_registerPrivateEmailWithContext_completion___block_invoke(void *a1, void *a2, void *a3)
{
  v18 = *MEMORY[0x1E69E9840];
  location[1] = a1;
  location[0] = 0;
  objc_storeStrong(location, a2);
  v13 = 0;
  objc_storeStrong(&v13, a3);
  v12 = a1;
  objc_storeStrong((*(a1[5] + 8) + 40), 0);
  v11 = _AKSignpostGetNanoseconds(a1[6], a1[7]) / 1000000000.0;
  v10 = _AKSignpostLogSystem();
  v9 = OS_SIGNPOST_INTERVAL_END;
  v8 = a1[6];
  if (v8 && v8 != -1 && os_signpost_enabled(v10))
  {
    __os_log_helper_16_0_1_4_2(v17, [v13 code]);
    _os_signpost_emit_with_name_impl(&dword_193225000, v10, v9, v8, "PrivateEmailRemoteRegister", " Error=%{public,signpost.telemetry:number2,name=Error}d ", v17, 8u);
  }

  objc_storeStrong(&v10, 0);
  v7 = _AKSignpostLogSystem();
  v6 = OS_LOG_TYPE_DEFAULT;
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    __os_log_helper_16_0_3_8_0_8_0_4_2(v16, a1[6], *&v11, [v13 code]);
    _os_log_impl(&dword_193225000, v7, v6, "END [%lld] %fs:PrivateEmailRemoteRegister  Error=%{public,signpost.telemetry:number2,name=Error}d ", v16, 0x1Cu);
  }

  objc_storeStrong(&v7, 0);
  oslog = _AKLogHme();
  if (os_log_type_enabled(oslog, OS_LOG_TYPE_DEFAULT))
  {
    __os_log_helper_16_2_1_8_64(v15, v13);
    _os_log_impl(&dword_193225000, oslog, OS_LOG_TYPE_DEFAULT, "Completed Private Email fetch in background, error:%@", v15, 0xCu);
  }

  objc_storeStrong(&oslog, 0);
  if (a1[4])
  {
    (*(a1[4] + 16))();
  }

  objc_storeStrong(&v13, 0);
  objc_storeStrong(location, 0);
  *MEMORY[0x1E69E9840];
}

void __71__AKPrivateEmailController_registerPrivateEmailWithContext_completion___block_invoke_108(NSObject *a1, void *a2)
{
  v6 = *MEMORY[0x1E69E9840];
  location[1] = a1;
  location[0] = 0;
  objc_storeStrong(location, a2);
  oslog[1] = a1;
  oslog[0] = _AKLogHme();
  if (os_log_type_enabled(oslog[0], OS_LOG_TYPE_ERROR))
  {
    __os_log_helper_16_2_2_8_32_8_64(v5, "[AKPrivateEmailController registerPrivateEmailWithContext:completion:]_block_invoke", location[0]);
    _os_log_error_impl(&dword_193225000, oslog[0], OS_LOG_TYPE_ERROR, "Connection to private email service to %s returned an error: %@", v5, 0x16u);
  }

  objc_storeStrong(oslog, 0);
  (*(a1[4].isa + 2))();
  objc_storeStrong(location, 0);
  *MEMORY[0x1E69E9840];
}

- (void)fetchPrivateEmailWithContext:(id)context completion:(id)completion
{
  v47 = *MEMORY[0x1E69E9840];
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, context);
  v43 = 0;
  objc_storeStrong(&v43, completion);
  v37[0] = 0;
  v37[1] = v37;
  v38 = 838860800;
  v39 = 48;
  v40 = __Block_byref_object_copy__8;
  v41 = __Block_byref_object_dispose__8;
  v42 = MEMORY[0x1E69E5928](selfCopy);
  v35 = _os_activity_create(&dword_193225000, "private-email-authkit/fetch-with-context", MEMORY[0x1E69E9C00], OS_ACTIVITY_FLAG_DEFAULT);
  v36 = v35;
  state.opaque[0] = 0;
  state.opaque[1] = 0;
  os_activity_scope_enter(v35, &state);
  v33 = 0uLL;
  v9 = _AKSignpostLogSystem();
  *&v32 = _AKSignpostCreate(v9);
  *(&v32 + 1) = v4;
  MEMORY[0x1E69E5920](v9);
  v31 = _AKSignpostLogSystem();
  v30 = 1;
  v29 = v32;
  if (v32 && v29 != -1 && os_signpost_enabled(v31))
  {
    log = v31;
    type = v30;
    spid = v29;
    __os_log_helper_16_0_0(v28);
    _os_signpost_emit_with_name_impl(&dword_193225000, log, type, spid, "PrivateEmailContextFetch", " enableTelemetry=YES ", v28, 2u);
  }

  objc_storeStrong(&v31, 0);
  v27 = _AKSignpostLogSystem();
  v26 = OS_LOG_TYPE_DEFAULT;
  if (os_log_type_enabled(v27, OS_LOG_TYPE_DEFAULT))
  {
    __os_log_helper_16_0_1_8_0(v46, v32);
    _os_log_impl(&dword_193225000, v27, v26, "BEGIN [%lld]: PrivateEmailContextFetch  enableTelemetry=YES ", v46, 0xCu);
  }

  objc_storeStrong(&v27, 0);
  v33 = v32;
  v18 = MEMORY[0x1E69E9820];
  v19 = -1073741824;
  v20 = 0;
  v21 = __68__AKPrivateEmailController_fetchPrivateEmailWithContext_completion___block_invoke;
  v22 = &unk_1E73D6C80;
  v23[1] = v37;
  v24 = v32;
  v23[0] = MEMORY[0x1E69E5928](v43);
  v25 = MEMORY[0x193B165F0](&v18);
  remoteService = selfCopy->_remoteService;
  v11 = MEMORY[0x1E69E9820];
  v12 = -1073741824;
  v13 = 0;
  v14 = __68__AKPrivateEmailController_fetchPrivateEmailWithContext_completion___block_invoke_109;
  v15 = &unk_1E73D3510;
  v16 = MEMORY[0x1E69E5928](v25);
  v17 = [(AAFXPCSession *)remoteService remoteServiceProxyWithErrorHandler:&v11];
  [v17 fetchPrivateEmailWithContext:location[0] completion:v25];
  objc_storeStrong(&v17, 0);
  objc_storeStrong(&v16, 0);
  objc_storeStrong(&v25, 0);
  objc_storeStrong(v23, 0);
  os_activity_scope_leave(&state);
  objc_storeStrong(&v36, 0);
  _Block_object_dispose(v37, 8);
  objc_storeStrong(&v42, 0);
  objc_storeStrong(&v43, 0);
  objc_storeStrong(location, 0);
  *MEMORY[0x1E69E9840];
}

void __68__AKPrivateEmailController_fetchPrivateEmailWithContext_completion___block_invoke(void *a1, void *a2, void *a3)
{
  v18 = *MEMORY[0x1E69E9840];
  location[1] = a1;
  location[0] = 0;
  objc_storeStrong(location, a2);
  v13 = 0;
  objc_storeStrong(&v13, a3);
  v12 = a1;
  objc_storeStrong((*(a1[5] + 8) + 40), 0);
  v11 = _AKSignpostGetNanoseconds(a1[6], a1[7]) / 1000000000.0;
  v10 = _AKSignpostLogSystem();
  v9 = OS_SIGNPOST_INTERVAL_END;
  v8 = a1[6];
  if (v8 && v8 != -1 && os_signpost_enabled(v10))
  {
    __os_log_helper_16_0_1_4_2(v17, [v13 code]);
    _os_signpost_emit_with_name_impl(&dword_193225000, v10, v9, v8, "PrivateEmailContextFetch", " Error=%{public,signpost.telemetry:number2,name=Error}d ", v17, 8u);
  }

  objc_storeStrong(&v10, 0);
  v7 = _AKSignpostLogSystem();
  v6 = OS_LOG_TYPE_DEFAULT;
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    __os_log_helper_16_0_3_8_0_8_0_4_2(v16, a1[6], *&v11, [v13 code]);
    _os_log_impl(&dword_193225000, v7, v6, "END [%lld] %fs:PrivateEmailContextFetch  Error=%{public,signpost.telemetry:number2,name=Error}d ", v16, 0x1Cu);
  }

  objc_storeStrong(&v7, 0);
  if (a1[4])
  {
    oslog = _AKLogHme();
    if (os_log_type_enabled(oslog, OS_LOG_TYPE_DEFAULT))
    {
      __os_log_helper_16_2_1_8_64(v15, v13);
      _os_log_impl(&dword_193225000, oslog, OS_LOG_TYPE_DEFAULT, "Completed Private Email context fetch, error:%@", v15, 0xCu);
    }

    objc_storeStrong(&oslog, 0);
    (*(a1[4] + 16))();
  }

  objc_storeStrong(&v13, 0);
  objc_storeStrong(location, 0);
  *MEMORY[0x1E69E9840];
}

void __68__AKPrivateEmailController_fetchPrivateEmailWithContext_completion___block_invoke_109(NSObject *a1, void *a2)
{
  v6 = *MEMORY[0x1E69E9840];
  location[1] = a1;
  location[0] = 0;
  objc_storeStrong(location, a2);
  oslog[1] = a1;
  oslog[0] = _AKLogHme();
  if (os_log_type_enabled(oslog[0], OS_LOG_TYPE_ERROR))
  {
    __os_log_helper_16_2_2_8_32_8_64(v5, "[AKPrivateEmailController fetchPrivateEmailWithContext:completion:]_block_invoke", location[0]);
    _os_log_error_impl(&dword_193225000, oslog[0], OS_LOG_TYPE_ERROR, "Connection to private email service to %s returned an error: %@", v5, 0x16u);
  }

  objc_storeStrong(oslog, 0);
  (*(a1[4].isa + 2))();
  objc_storeStrong(location, 0);
  *MEMORY[0x1E69E9840];
}

- (void)getContextForRequestContext:(id)context completion:(id)completion
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, context);
  v29 = 0;
  objc_storeStrong(&v29, completion);
  v27 = _os_activity_create(&dword_193225000, "authkit/PrivateEmailContext", MEMORY[0x1E69E9C00], OS_ACTIVITY_FLAG_DEFAULT);
  v28 = v27;
  state.opaque[0] = 0;
  state.opaque[1] = 0;
  os_activity_scope_enter(v27, &state);
  v20[0] = 0;
  v20[1] = v20;
  v21 = 838860800;
  v22 = 48;
  v23 = __Block_byref_object_copy__8;
  v24 = __Block_byref_object_dispose__8;
  v25 = MEMORY[0x1E69E5928](selfCopy);
  v13 = MEMORY[0x1E69E9820];
  v14 = -1073741824;
  v15 = 0;
  v16 = __67__AKPrivateEmailController_getContextForRequestContext_completion___block_invoke;
  v17 = &unk_1E73D6CA8;
  v18[0] = MEMORY[0x1E69E5928](v29);
  v18[1] = v20;
  v19 = MEMORY[0x193B165F0](&v13);
  remoteService = selfCopy->_remoteService;
  v6 = MEMORY[0x1E69E9820];
  v7 = -1073741824;
  v8 = 0;
  v9 = __67__AKPrivateEmailController_getContextForRequestContext_completion___block_invoke_111;
  v10 = &unk_1E73D3510;
  v11 = MEMORY[0x1E69E5928](v19);
  v12 = [(AAFXPCSession *)remoteService remoteServiceProxyWithErrorHandler:&v6];
  [v12 getContextForRequestContext:location[0] completion:v19];
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

void __67__AKPrivateEmailController_getContextForRequestContext_completion___block_invoke(void *a1, void *a2, void *a3)
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
    v7[0] = _AKLogHme();
    v6 = OS_LOG_TYPE_DEFAULT;
    if (os_log_type_enabled(v7[0], OS_LOG_TYPE_DEFAULT))
    {
      __os_log_helper_16_2_1_8_64(v11, location[0]);
      _os_log_impl(&dword_193225000, v7[0], v6, "getContext completed with context: %@", v11, 0xCu);
    }

    objc_storeStrong(v7, 0);
  }

  else
  {
    oslog = _AKLogHme();
    if (os_log_type_enabled(oslog, OS_LOG_TYPE_ERROR))
    {
      __os_log_helper_16_2_1_8_64(v10, v8);
      _os_log_error_impl(&dword_193225000, oslog, OS_LOG_TYPE_ERROR, "getContext failed: %@", v10, 0xCu);
    }

    objc_storeStrong(&oslog, 0);
  }

  (*(a1[4] + 16))();
  objc_storeStrong((*(a1[5] + 8) + 40), 0);
  objc_storeStrong(&v8, 0);
  objc_storeStrong(location, 0);
  *MEMORY[0x1E69E9840];
}

void __67__AKPrivateEmailController_getContextForRequestContext_completion___block_invoke_111(NSObject *a1, void *a2)
{
  v6 = *MEMORY[0x1E69E9840];
  location[1] = a1;
  location[0] = 0;
  objc_storeStrong(location, a2);
  oslog[1] = a1;
  oslog[0] = _AKLogHme();
  if (os_log_type_enabled(oslog[0], OS_LOG_TYPE_ERROR))
  {
    __os_log_helper_16_2_2_8_32_8_64(v5, "[AKPrivateEmailController getContextForRequestContext:completion:]_block_invoke", location[0]);
    _os_log_error_impl(&dword_193225000, oslog[0], OS_LOG_TYPE_ERROR, "Connection to private email service to %s returned an error: %@", v5, 0x16u);
  }

  objc_storeStrong(oslog, 0);
  (*(a1[4].isa + 2))();
  objc_storeStrong(location, 0);
  *MEMORY[0x1E69E9840];
}

- (void)deletePrivateEmailDatabaseWithCompletion:(id)completion
{
  v44 = *MEMORY[0x1E69E9840];
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, completion);
  v35[0] = 0;
  v35[1] = v35;
  v36 = 838860800;
  v37 = 48;
  v38 = __Block_byref_object_copy__8;
  v39 = __Block_byref_object_dispose__8;
  v40 = MEMORY[0x1E69E5928](selfCopy);
  v33 = _os_activity_create(&dword_193225000, "private-email-authkit/delete-db", MEMORY[0x1E69E9C00], OS_ACTIVITY_FLAG_DEFAULT);
  v34 = v33;
  state.opaque[0] = 0;
  state.opaque[1] = 0;
  os_activity_scope_enter(v33, &state);
  v31 = 0uLL;
  v8 = _AKSignpostLogSystem();
  *&v30 = _AKSignpostCreate(v8);
  *(&v30 + 1) = v3;
  MEMORY[0x1E69E5920](v8);
  v29 = _AKSignpostLogSystem();
  v28 = 1;
  v27 = v30;
  if (v30 && v27 != -1 && os_signpost_enabled(v29))
  {
    log = v29;
    type = v28;
    spid = v27;
    __os_log_helper_16_0_0(v26);
    _os_signpost_emit_with_name_impl(&dword_193225000, log, type, spid, "PrivateEmailDeleteDatabase", " enableTelemetry=YES ", v26, 2u);
  }

  objc_storeStrong(&v29, 0);
  v25 = _AKSignpostLogSystem();
  v24 = OS_LOG_TYPE_DEFAULT;
  if (os_log_type_enabled(v25, OS_LOG_TYPE_DEFAULT))
  {
    __os_log_helper_16_0_1_8_0(v43, v30);
    _os_log_impl(&dword_193225000, v25, v24, "BEGIN [%lld]: PrivateEmailDeleteDatabase  enableTelemetry=YES ", v43, 0xCu);
  }

  objc_storeStrong(&v25, 0);
  v31 = v30;
  v16 = MEMORY[0x1E69E9820];
  v17 = -1073741824;
  v18 = 0;
  v19 = __69__AKPrivateEmailController_deletePrivateEmailDatabaseWithCompletion___block_invoke;
  v20 = &unk_1E73D6CD0;
  v21[1] = v35;
  v22 = v30;
  v21[0] = MEMORY[0x1E69E5928](location[0]);
  v23 = MEMORY[0x193B165F0](&v16);
  remoteService = selfCopy->_remoteService;
  v9 = MEMORY[0x1E69E9820];
  v10 = -1073741824;
  v11 = 0;
  v12 = __69__AKPrivateEmailController_deletePrivateEmailDatabaseWithCompletion___block_invoke_113;
  v13 = &unk_1E73D3510;
  v14 = MEMORY[0x1E69E5928](v23);
  v15 = [(AAFXPCSession *)remoteService remoteServiceProxyWithErrorHandler:&v9];
  [v15 deletePrivateEmailDatabaseWithCompletion:v23];
  objc_storeStrong(&v15, 0);
  objc_storeStrong(&v14, 0);
  objc_storeStrong(&v23, 0);
  objc_storeStrong(v21, 0);
  os_activity_scope_leave(&state);
  objc_storeStrong(&v34, 0);
  _Block_object_dispose(v35, 8);
  objc_storeStrong(&v40, 0);
  objc_storeStrong(location, 0);
  *MEMORY[0x1E69E9840];
}

void __69__AKPrivateEmailController_deletePrivateEmailDatabaseWithCompletion___block_invoke(void *a1, char a2, id obj)
{
  v15 = *MEMORY[0x1E69E9840];
  v12 = a1;
  v11 = a2;
  location = 0;
  objc_storeStrong(&location, obj);
  v9 = a1;
  objc_storeStrong((*(a1[5] + 8) + 40), 0);
  v8 = _AKSignpostGetNanoseconds(a1[6], a1[7]) / 1000000000.0;
  v7 = _AKSignpostLogSystem();
  v6 = OS_SIGNPOST_INTERVAL_END;
  v5 = a1[6];
  if (v5 && v5 != -1 && os_signpost_enabled(v7))
  {
    __os_log_helper_16_0_1_4_2(v14, [location code]);
    _os_signpost_emit_with_name_impl(&dword_193225000, v7, v6, v5, "PrivateEmailDeleteDatabase", " Error=%{public,signpost.telemetry:number2,name=Error}d ", v14, 8u);
  }

  objc_storeStrong(&v7, 0);
  oslog = _AKSignpostLogSystem();
  if (os_log_type_enabled(oslog, OS_LOG_TYPE_DEFAULT))
  {
    __os_log_helper_16_0_3_8_0_8_0_4_2(v13, a1[6], *&v8, [location code]);
    _os_log_impl(&dword_193225000, oslog, OS_LOG_TYPE_DEFAULT, "END [%lld] %fs:PrivateEmailDeleteDatabase  Error=%{public,signpost.telemetry:number2,name=Error}d ", v13, 0x1Cu);
  }

  objc_storeStrong(&oslog, 0);
  if (a1[4])
  {
    (*(a1[4] + 16))();
  }

  objc_storeStrong(&location, 0);
  *MEMORY[0x1E69E9840];
}

void __69__AKPrivateEmailController_deletePrivateEmailDatabaseWithCompletion___block_invoke_113(NSObject *a1, void *a2)
{
  v6 = *MEMORY[0x1E69E9840];
  location[1] = a1;
  location[0] = 0;
  objc_storeStrong(location, a2);
  oslog[1] = a1;
  oslog[0] = _AKLogHme();
  if (os_log_type_enabled(oslog[0], OS_LOG_TYPE_ERROR))
  {
    __os_log_helper_16_2_2_8_32_8_64(v5, "[AKPrivateEmailController deletePrivateEmailDatabaseWithCompletion:]_block_invoke", location[0]);
    _os_log_error_impl(&dword_193225000, oslog[0], OS_LOG_TYPE_ERROR, "Connection to private email service to %s returned an error: %@", v5, 0x16u);
  }

  objc_storeStrong(oslog, 0);
  (*(a1[4].isa + 2))();
  objc_storeStrong(location, 0);
  *MEMORY[0x1E69E9840];
}

- (void)privateEmailListVersionWithCompletion:(id)completion
{
  v44 = *MEMORY[0x1E69E9840];
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, completion);
  v35[0] = 0;
  v35[1] = v35;
  v36 = 838860800;
  v37 = 48;
  v38 = __Block_byref_object_copy__8;
  v39 = __Block_byref_object_dispose__8;
  v40 = MEMORY[0x1E69E5928](selfCopy);
  v33 = _os_activity_create(&dword_193225000, "private-email-authkit/list-version", MEMORY[0x1E69E9C00], OS_ACTIVITY_FLAG_DEFAULT);
  v34 = v33;
  state.opaque[0] = 0;
  state.opaque[1] = 0;
  os_activity_scope_enter(v33, &state);
  v31 = 0uLL;
  v8 = _AKSignpostLogSystem();
  *&v30 = _AKSignpostCreate(v8);
  *(&v30 + 1) = v3;
  MEMORY[0x1E69E5920](v8);
  v29 = _AKSignpostLogSystem();
  v28 = 1;
  v27 = v30;
  if (v30 && v27 != -1 && os_signpost_enabled(v29))
  {
    log = v29;
    type = v28;
    spid = v27;
    __os_log_helper_16_0_0(v26);
    _os_signpost_emit_with_name_impl(&dword_193225000, log, type, spid, "PrivateEmailListVersion", " enableTelemetry=YES ", v26, 2u);
  }

  objc_storeStrong(&v29, 0);
  v25 = _AKSignpostLogSystem();
  v24 = OS_LOG_TYPE_DEFAULT;
  if (os_log_type_enabled(v25, OS_LOG_TYPE_DEFAULT))
  {
    __os_log_helper_16_0_1_8_0(v43, v30);
    _os_log_impl(&dword_193225000, v25, v24, "BEGIN [%lld]: PrivateEmailListVersion  enableTelemetry=YES ", v43, 0xCu);
  }

  objc_storeStrong(&v25, 0);
  v31 = v30;
  v16 = MEMORY[0x1E69E9820];
  v17 = -1073741824;
  v18 = 0;
  v19 = __66__AKPrivateEmailController_privateEmailListVersionWithCompletion___block_invoke;
  v20 = &unk_1E73D6CF8;
  v21[1] = v35;
  v22 = v30;
  v21[0] = MEMORY[0x1E69E5928](location[0]);
  v23 = MEMORY[0x193B165F0](&v16);
  remoteService = selfCopy->_remoteService;
  v9 = MEMORY[0x1E69E9820];
  v10 = -1073741824;
  v11 = 0;
  v12 = __66__AKPrivateEmailController_privateEmailListVersionWithCompletion___block_invoke_115;
  v13 = &unk_1E73D3510;
  v14 = MEMORY[0x1E69E5928](v23);
  v15 = [(AAFXPCSession *)remoteService remoteServiceProxyWithErrorHandler:&v9];
  [v15 privateEmailListVersionWithCompletion:v23];
  objc_storeStrong(&v15, 0);
  objc_storeStrong(&v14, 0);
  objc_storeStrong(&v23, 0);
  objc_storeStrong(v21, 0);
  os_activity_scope_leave(&state);
  objc_storeStrong(&v34, 0);
  _Block_object_dispose(v35, 8);
  objc_storeStrong(&v40, 0);
  objc_storeStrong(location, 0);
  *MEMORY[0x1E69E9840];
}

void __66__AKPrivateEmailController_privateEmailListVersionWithCompletion___block_invoke(void *a1, void *a2, void *a3)
{
  v15 = *MEMORY[0x1E69E9840];
  location[1] = a1;
  location[0] = 0;
  objc_storeStrong(location, a2);
  v11 = 0;
  objc_storeStrong(&v11, a3);
  v10 = a1;
  objc_storeStrong((*(a1[5] + 8) + 40), 0);
  v9 = _AKSignpostGetNanoseconds(a1[6], a1[7]) / 1000000000.0;
  v8 = _AKSignpostLogSystem();
  v7 = OS_SIGNPOST_INTERVAL_END;
  v6 = a1[6];
  if (v6 && v6 != -1 && os_signpost_enabled(v8))
  {
    __os_log_helper_16_0_1_4_2(v14, [v11 code]);
    _os_signpost_emit_with_name_impl(&dword_193225000, v8, v7, v6, "PrivateEmailListVersion", " Error=%{public,signpost.telemetry:number2,name=Error}d ", v14, 8u);
  }

  objc_storeStrong(&v8, 0);
  oslog = _AKSignpostLogSystem();
  if (os_log_type_enabled(oslog, OS_LOG_TYPE_DEFAULT))
  {
    __os_log_helper_16_0_3_8_0_8_0_4_2(v13, a1[6], *&v9, [v11 code]);
    _os_log_impl(&dword_193225000, oslog, OS_LOG_TYPE_DEFAULT, "END [%lld] %fs:PrivateEmailListVersion  Error=%{public,signpost.telemetry:number2,name=Error}d ", v13, 0x1Cu);
  }

  objc_storeStrong(&oslog, 0);
  if (a1[4])
  {
    (*(a1[4] + 16))();
  }

  objc_storeStrong(&v11, 0);
  objc_storeStrong(location, 0);
  *MEMORY[0x1E69E9840];
}

void __66__AKPrivateEmailController_privateEmailListVersionWithCompletion___block_invoke_115(NSObject *a1, void *a2)
{
  v6 = *MEMORY[0x1E69E9840];
  location[1] = a1;
  location[0] = 0;
  objc_storeStrong(location, a2);
  oslog[1] = a1;
  oslog[0] = _AKLogHme();
  if (os_log_type_enabled(oslog[0], OS_LOG_TYPE_ERROR))
  {
    __os_log_helper_16_2_2_8_32_8_64(v5, "[AKPrivateEmailController privateEmailListVersionWithCompletion:]_block_invoke", location[0]);
    _os_log_error_impl(&dword_193225000, oslog[0], OS_LOG_TYPE_ERROR, "Connection to private email service to %s returned an error: %@", v5, 0x16u);
  }

  objc_storeStrong(oslog, 0);
  (*(a1[4].isa + 2))();
  objc_storeStrong(location, 0);
  *MEMORY[0x1E69E9840];
}

- (void)removePrivateEmailKey:(id)key completion:(id)completion
{
  v47 = *MEMORY[0x1E69E9840];
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, key);
  v43 = 0;
  objc_storeStrong(&v43, completion);
  v37[0] = 0;
  v37[1] = v37;
  v38 = 838860800;
  v39 = 48;
  v40 = __Block_byref_object_copy__8;
  v41 = __Block_byref_object_dispose__8;
  v42 = MEMORY[0x1E69E5928](selfCopy);
  v35 = _os_activity_create(&dword_193225000, "private-email-authkit/remove-key", MEMORY[0x1E69E9C00], OS_ACTIVITY_FLAG_DEFAULT);
  v36 = v35;
  state.opaque[0] = 0;
  state.opaque[1] = 0;
  os_activity_scope_enter(v35, &state);
  v33 = 0uLL;
  v9 = _AKSignpostLogSystem();
  *&v32 = _AKSignpostCreate(v9);
  *(&v32 + 1) = v4;
  MEMORY[0x1E69E5920](v9);
  v31 = _AKSignpostLogSystem();
  v30 = 1;
  v29 = v32;
  if (v32 && v29 != -1 && os_signpost_enabled(v31))
  {
    log = v31;
    type = v30;
    spid = v29;
    __os_log_helper_16_0_0(v28);
    _os_signpost_emit_with_name_impl(&dword_193225000, log, type, spid, "PrivateEmailRemoveKey", " enableTelemetry=YES ", v28, 2u);
  }

  objc_storeStrong(&v31, 0);
  v27 = _AKSignpostLogSystem();
  v26 = OS_LOG_TYPE_DEFAULT;
  if (os_log_type_enabled(v27, OS_LOG_TYPE_DEFAULT))
  {
    __os_log_helper_16_0_1_8_0(v46, v32);
    _os_log_impl(&dword_193225000, v27, v26, "BEGIN [%lld]: PrivateEmailRemoveKey  enableTelemetry=YES ", v46, 0xCu);
  }

  objc_storeStrong(&v27, 0);
  v33 = v32;
  v18 = MEMORY[0x1E69E9820];
  v19 = -1073741824;
  v20 = 0;
  v21 = __61__AKPrivateEmailController_removePrivateEmailKey_completion___block_invoke;
  v22 = &unk_1E73D6D20;
  v23[1] = v37;
  v24 = v32;
  v23[0] = MEMORY[0x1E69E5928](v43);
  v25 = MEMORY[0x193B165F0](&v18);
  remoteService = selfCopy->_remoteService;
  v11 = MEMORY[0x1E69E9820];
  v12 = -1073741824;
  v13 = 0;
  v14 = __61__AKPrivateEmailController_removePrivateEmailKey_completion___block_invoke_116;
  v15 = &unk_1E73D3510;
  v16 = MEMORY[0x1E69E5928](v25);
  v17 = [(AAFXPCSession *)remoteService remoteServiceProxyWithErrorHandler:&v11];
  [v17 removePrivateEmailKey:location[0] completion:v25];
  objc_storeStrong(&v17, 0);
  objc_storeStrong(&v16, 0);
  objc_storeStrong(&v25, 0);
  objc_storeStrong(v23, 0);
  os_activity_scope_leave(&state);
  objc_storeStrong(&v36, 0);
  _Block_object_dispose(v37, 8);
  objc_storeStrong(&v42, 0);
  objc_storeStrong(&v43, 0);
  objc_storeStrong(location, 0);
  *MEMORY[0x1E69E9840];
}

void __61__AKPrivateEmailController_removePrivateEmailKey_completion___block_invoke(void *a1, void *a2)
{
  v12 = *MEMORY[0x1E69E9840];
  location[1] = a1;
  location[0] = 0;
  objc_storeStrong(location, a2);
  v8 = a1;
  objc_storeStrong((*(a1[5] + 8) + 40), 0);
  v7 = _AKSignpostGetNanoseconds(a1[6], a1[7]) / 1000000000.0;
  v6 = _AKSignpostLogSystem();
  v5 = OS_SIGNPOST_INTERVAL_END;
  v4 = a1[6];
  if (v4 && v4 != -1 && os_signpost_enabled(v6))
  {
    __os_log_helper_16_0_1_4_2(v11, [location[0] code]);
    _os_signpost_emit_with_name_impl(&dword_193225000, v6, v5, v4, "PrivateEmailRemoveKey", " Error=%{public,signpost.telemetry:number2,name=Error}d ", v11, 8u);
  }

  objc_storeStrong(&v6, 0);
  oslog = _AKSignpostLogSystem();
  if (os_log_type_enabled(oslog, OS_LOG_TYPE_DEFAULT))
  {
    __os_log_helper_16_0_3_8_0_8_0_4_2(v10, a1[6], *&v7, [location[0] code]);
    _os_log_impl(&dword_193225000, oslog, OS_LOG_TYPE_DEFAULT, "END [%lld] %fs:PrivateEmailRemoveKey  Error=%{public,signpost.telemetry:number2,name=Error}d ", v10, 0x1Cu);
  }

  objc_storeStrong(&oslog, 0);
  if (a1[4])
  {
    (*(a1[4] + 16))();
  }

  objc_storeStrong(location, 0);
  *MEMORY[0x1E69E9840];
}

void __61__AKPrivateEmailController_removePrivateEmailKey_completion___block_invoke_116(NSObject *a1, void *a2)
{
  v6 = *MEMORY[0x1E69E9840];
  location[1] = a1;
  location[0] = 0;
  objc_storeStrong(location, a2);
  oslog[1] = a1;
  oslog[0] = _AKLogHme();
  if (os_log_type_enabled(oslog[0], OS_LOG_TYPE_ERROR))
  {
    __os_log_helper_16_2_2_8_32_8_64(v5, "[AKPrivateEmailController removePrivateEmailKey:completion:]_block_invoke", location[0]);
    _os_log_error_impl(&dword_193225000, oslog[0], OS_LOG_TYPE_ERROR, "Connection to private email service to %s returned an error: %@", v5, 0x16u);
  }

  objc_storeStrong(oslog, 0);
  (*(a1[4].isa + 2))();
  objc_storeStrong(location, 0);
  *MEMORY[0x1E69E9840];
}

- (void)listAllPrivateEmailsForAltDSID:(id)d completion:(id)completion
{
  v47 = *MEMORY[0x1E69E9840];
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, d);
  v43 = 0;
  objc_storeStrong(&v43, completion);
  v37[0] = 0;
  v37[1] = v37;
  v38 = 838860800;
  v39 = 48;
  v40 = __Block_byref_object_copy__8;
  v41 = __Block_byref_object_dispose__8;
  v42 = MEMORY[0x1E69E5928](selfCopy);
  v35 = _os_activity_create(&dword_193225000, "private-email-authkit/fetch-email-list", MEMORY[0x1E69E9C00], OS_ACTIVITY_FLAG_DEFAULT);
  v36 = v35;
  state.opaque[0] = 0;
  state.opaque[1] = 0;
  os_activity_scope_enter(v35, &state);
  v33 = 0uLL;
  v9 = _AKSignpostLogSystem();
  *&v32 = _AKSignpostCreate(v9);
  *(&v32 + 1) = v4;
  MEMORY[0x1E69E5920](v9);
  v31 = _AKSignpostLogSystem();
  v30 = 1;
  v29 = v32;
  if (v32 && v29 != -1 && os_signpost_enabled(v31))
  {
    log = v31;
    type = v30;
    spid = v29;
    __os_log_helper_16_0_0(v28);
    _os_signpost_emit_with_name_impl(&dword_193225000, log, type, spid, "PrivateEmailLocalFetchAll", " enableTelemetry=YES ", v28, 2u);
  }

  objc_storeStrong(&v31, 0);
  v27 = _AKSignpostLogSystem();
  v26 = OS_LOG_TYPE_DEFAULT;
  if (os_log_type_enabled(v27, OS_LOG_TYPE_DEFAULT))
  {
    __os_log_helper_16_0_1_8_0(v46, v32);
    _os_log_impl(&dword_193225000, v27, v26, "BEGIN [%lld]: PrivateEmailLocalFetchAll  enableTelemetry=YES ", v46, 0xCu);
  }

  objc_storeStrong(&v27, 0);
  v33 = v32;
  v18 = MEMORY[0x1E69E9820];
  v19 = -1073741824;
  v20 = 0;
  v21 = __70__AKPrivateEmailController_listAllPrivateEmailsForAltDSID_completion___block_invoke;
  v22 = &unk_1E73D6D48;
  v23[1] = v37;
  v24 = v32;
  v23[0] = MEMORY[0x1E69E5928](v43);
  v25 = MEMORY[0x193B165F0](&v18);
  remoteService = selfCopy->_remoteService;
  v11 = MEMORY[0x1E69E9820];
  v12 = -1073741824;
  v13 = 0;
  v14 = __70__AKPrivateEmailController_listAllPrivateEmailsForAltDSID_completion___block_invoke_118;
  v15 = &unk_1E73D3510;
  v16 = MEMORY[0x1E69E5928](v25);
  v17 = [(AAFXPCSession *)remoteService remoteServiceProxyWithErrorHandler:&v11];
  [v17 listAllPrivateEmailsForAltDSID:location[0] completion:v25];
  objc_storeStrong(&v17, 0);
  objc_storeStrong(&v16, 0);
  objc_storeStrong(&v25, 0);
  objc_storeStrong(v23, 0);
  os_activity_scope_leave(&state);
  objc_storeStrong(&v36, 0);
  _Block_object_dispose(v37, 8);
  objc_storeStrong(&v42, 0);
  objc_storeStrong(&v43, 0);
  objc_storeStrong(location, 0);
  *MEMORY[0x1E69E9840];
}

void __70__AKPrivateEmailController_listAllPrivateEmailsForAltDSID_completion___block_invoke(void *a1, void *a2, void *a3)
{
  v19 = *MEMORY[0x1E69E9840];
  location[1] = a1;
  location[0] = 0;
  objc_storeStrong(location, a2);
  v14 = 0;
  objc_storeStrong(&v14, a3);
  v13 = a1;
  objc_storeStrong((*(a1[5] + 8) + 40), 0);
  v12 = _AKSignpostGetNanoseconds(a1[6], a1[7]) / 1000000000.0;
  v11 = _AKSignpostLogSystem();
  v10 = OS_SIGNPOST_INTERVAL_END;
  v9 = a1[6];
  if (v9 && v9 != -1 && os_signpost_enabled(v11))
  {
    __os_log_helper_16_0_1_4_2(v18, [v14 code]);
    _os_signpost_emit_with_name_impl(&dword_193225000, v11, v10, v9, "PrivateEmailLocalFetchAll", " Error=%{public,signpost.telemetry:number2,name=Error}d ", v18, 8u);
  }

  objc_storeStrong(&v11, 0);
  oslog = _AKSignpostLogSystem();
  v7 = OS_LOG_TYPE_DEFAULT;
  if (os_log_type_enabled(oslog, OS_LOG_TYPE_DEFAULT))
  {
    __os_log_helper_16_0_3_8_0_8_0_4_2(v17, a1[6], *&v12, [v14 code]);
    _os_log_impl(&dword_193225000, oslog, v7, "END [%lld] %fs:PrivateEmailLocalFetchAll  Error=%{public,signpost.telemetry:number2,name=Error}d ", v17, 0x1Cu);
  }

  objc_storeStrong(&oslog, 0);
  v6 = _AKLogHme();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    v3 = [location[0] count];
    __os_log_helper_16_2_2_8_0_8_64(v16, v3, v14);
    _os_log_impl(&dword_193225000, v6, OS_LOG_TYPE_DEFAULT, "Completed Fetch Private Email list with %lu addresses, error:%@", v16, 0x16u);
  }

  objc_storeStrong(&v6, 0);
  if (a1[4])
  {
    (*(a1[4] + 16))();
  }

  objc_storeStrong(&v14, 0);
  objc_storeStrong(location, 0);
  *MEMORY[0x1E69E9840];
}

void __70__AKPrivateEmailController_listAllPrivateEmailsForAltDSID_completion___block_invoke_118(NSObject *a1, void *a2)
{
  v6 = *MEMORY[0x1E69E9840];
  location[1] = a1;
  location[0] = 0;
  objc_storeStrong(location, a2);
  oslog[1] = a1;
  oslog[0] = _AKLogHme();
  if (os_log_type_enabled(oslog[0], OS_LOG_TYPE_ERROR))
  {
    __os_log_helper_16_2_2_8_32_8_64(v5, "[AKPrivateEmailController listAllPrivateEmailsForAltDSID:completion:]_block_invoke", location[0]);
    _os_log_error_impl(&dword_193225000, oslog[0], OS_LOG_TYPE_ERROR, "Connection to private email service to %s returned an error: %@", v5, 0x16u);
  }

  objc_storeStrong(oslog, 0);
  (*(a1[4].isa + 2))();
  objc_storeStrong(location, 0);
  *MEMORY[0x1E69E9840];
}

- (void)fetchSignInWithApplePrivateEmailWithContext:(id)context completion:(id)completion
{
  v47 = *MEMORY[0x1E69E9840];
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, context);
  v43 = 0;
  objc_storeStrong(&v43, completion);
  v37[0] = 0;
  v37[1] = v37;
  v38 = 838860800;
  v39 = 48;
  v40 = __Block_byref_object_copy__8;
  v41 = __Block_byref_object_dispose__8;
  v42 = MEMORY[0x1E69E5928](selfCopy);
  v35 = _os_activity_create(&dword_193225000, "private-email-authkit/fetch-siwahme-with-context", MEMORY[0x1E69E9C00], OS_ACTIVITY_FLAG_DEFAULT);
  v36 = v35;
  state.opaque[0] = 0;
  state.opaque[1] = 0;
  os_activity_scope_enter(v35, &state);
  v33 = 0uLL;
  v9 = _AKSignpostLogSystem();
  *&v32 = _AKSignpostCreate(v9);
  *(&v32 + 1) = v4;
  MEMORY[0x1E69E5920](v9);
  v31 = _AKSignpostLogSystem();
  v30 = 1;
  v29 = v32;
  if (v32 && v29 != -1 && os_signpost_enabled(v31))
  {
    log = v31;
    type = v30;
    spid = v29;
    __os_log_helper_16_0_0(v28);
    _os_signpost_emit_with_name_impl(&dword_193225000, log, type, spid, "PrivateEmailFetchSiwaHme", " enableTelemetry=YES ", v28, 2u);
  }

  objc_storeStrong(&v31, 0);
  v27 = _AKSignpostLogSystem();
  v26 = OS_LOG_TYPE_DEFAULT;
  if (os_log_type_enabled(v27, OS_LOG_TYPE_DEFAULT))
  {
    __os_log_helper_16_0_1_8_0(v46, v32);
    _os_log_impl(&dword_193225000, v27, v26, "BEGIN [%lld]: PrivateEmailFetchSiwaHme  enableTelemetry=YES ", v46, 0xCu);
  }

  objc_storeStrong(&v27, 0);
  v33 = v32;
  v18 = MEMORY[0x1E69E9820];
  v19 = -1073741824;
  v20 = 0;
  v21 = __83__AKPrivateEmailController_fetchSignInWithApplePrivateEmailWithContext_completion___block_invoke;
  v22 = &unk_1E73D6C80;
  v23[1] = v37;
  v24 = v32;
  v23[0] = MEMORY[0x1E69E5928](v43);
  v25 = MEMORY[0x193B165F0](&v18);
  remoteService = selfCopy->_remoteService;
  v11 = MEMORY[0x1E69E9820];
  v12 = -1073741824;
  v13 = 0;
  v14 = __83__AKPrivateEmailController_fetchSignInWithApplePrivateEmailWithContext_completion___block_invoke_119;
  v15 = &unk_1E73D3510;
  v16 = MEMORY[0x1E69E5928](v25);
  v17 = [(AAFXPCSession *)remoteService remoteServiceProxyWithErrorHandler:&v11];
  [v17 fetchSignInWithApplePrivateEmailWithContext:location[0] completion:v25];
  objc_storeStrong(&v17, 0);
  objc_storeStrong(&v16, 0);
  objc_storeStrong(&v25, 0);
  objc_storeStrong(v23, 0);
  os_activity_scope_leave(&state);
  objc_storeStrong(&v36, 0);
  _Block_object_dispose(v37, 8);
  objc_storeStrong(&v42, 0);
  objc_storeStrong(&v43, 0);
  objc_storeStrong(location, 0);
  *MEMORY[0x1E69E9840];
}

void __83__AKPrivateEmailController_fetchSignInWithApplePrivateEmailWithContext_completion___block_invoke(void *a1, void *a2, void *a3)
{
  v18 = *MEMORY[0x1E69E9840];
  location[1] = a1;
  location[0] = 0;
  objc_storeStrong(location, a2);
  v13 = 0;
  objc_storeStrong(&v13, a3);
  v12 = a1;
  objc_storeStrong((*(a1[5] + 8) + 40), 0);
  v11 = _AKSignpostGetNanoseconds(a1[6], a1[7]) / 1000000000.0;
  v10 = _AKSignpostLogSystem();
  v9 = OS_SIGNPOST_INTERVAL_END;
  v8 = a1[6];
  if (v8 && v8 != -1 && os_signpost_enabled(v10))
  {
    __os_log_helper_16_0_1_4_2(v17, [v13 code]);
    _os_signpost_emit_with_name_impl(&dword_193225000, v10, v9, v8, "PrivateEmailFetchSiwaHme", " Error=%{public,signpost.telemetry:number2,name=Error}d ", v17, 8u);
  }

  objc_storeStrong(&v10, 0);
  v7 = _AKSignpostLogSystem();
  v6 = OS_LOG_TYPE_DEFAULT;
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    __os_log_helper_16_0_3_8_0_8_0_4_2(v16, a1[6], *&v11, [v13 code]);
    _os_log_impl(&dword_193225000, v7, v6, "END [%lld] %fs:PrivateEmailFetchSiwaHme  Error=%{public,signpost.telemetry:number2,name=Error}d ", v16, 0x1Cu);
  }

  objc_storeStrong(&v7, 0);
  if (a1[4])
  {
    oslog = _AKLogHme();
    if (os_log_type_enabled(oslog, OS_LOG_TYPE_DEFAULT))
    {
      __os_log_helper_16_2_1_8_64(v15, v13);
      _os_log_impl(&dword_193225000, oslog, OS_LOG_TYPE_DEFAULT, "Completed fetch SiWA Private Email, error:%@", v15, 0xCu);
    }

    objc_storeStrong(&oslog, 0);
    (*(a1[4] + 16))();
  }

  objc_storeStrong(&v13, 0);
  objc_storeStrong(location, 0);
  *MEMORY[0x1E69E9840];
}

void __83__AKPrivateEmailController_fetchSignInWithApplePrivateEmailWithContext_completion___block_invoke_119(NSObject *a1, void *a2)
{
  v6 = *MEMORY[0x1E69E9840];
  location[1] = a1;
  location[0] = 0;
  objc_storeStrong(location, a2);
  oslog[1] = a1;
  oslog[0] = _AKLogHme();
  if (os_log_type_enabled(oslog[0], OS_LOG_TYPE_ERROR))
  {
    __os_log_helper_16_2_2_8_32_8_64(v5, "[AKPrivateEmailController fetchSignInWithApplePrivateEmailWithContext:completion:]_block_invoke", location[0]);
    _os_log_error_impl(&dword_193225000, oslog[0], OS_LOG_TYPE_ERROR, "Connection to private email service to %s returned an error: %@", v5, 0x16u);
  }

  objc_storeStrong(oslog, 0);
  (*(a1[4].isa + 2))();
  objc_storeStrong(location, 0);
  *MEMORY[0x1E69E9840];
}

@end