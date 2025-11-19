@interface AAAgeMigrationController
- (AAAgeMigrationController)initWithDaemonXPCEndpoint:(id)a3;
- (void)clearAgeMigrationFollowUpWithCompletion:(id)a3;
- (void)clearUserAcknowledgeMisconfiguredAgedPromptWithContext:(id)a3 completion:(id)a4;
- (void)didUserAcknowledgeMisconfiguredAgedPromptWithContext:(id)a3 completion:(id)a4;
- (void)displayMisconfiguredAgePromptWithContext:(id)a3 completion:(id)a4;
@end

@implementation AAAgeMigrationController

- (AAAgeMigrationController)initWithDaemonXPCEndpoint:(id)a3
{
  v4 = a3;
  v9.receiver = self;
  v9.super_class = AAAgeMigrationController;
  v5 = [(AAAgeMigrationController *)&v9 init];
  if (v5)
  {
    v6 = [[AAAgeMigrationDaemonConnection alloc] initWithListenerEndpoint:v4];
    daemonConnection = v5->_daemonConnection;
    v5->_daemonConnection = v6;
  }

  return v5;
}

- (void)clearAgeMigrationFollowUpWithCompletion:(id)a3
{
  v4 = a3;
  v5 = _os_activity_create(&dword_1B6F6A000, "age-migration/clear-child-migration-cfu", MEMORY[0x1E69E9C00], OS_ACTIVITY_FLAG_DEFAULT);
  state.opaque[0] = 0;
  state.opaque[1] = 0;
  os_activity_scope_enter(v5, &state);
  v22[0] = 0;
  v22[1] = v22;
  v22[2] = 0x3032000000;
  v22[3] = __Block_byref_object_copy__1;
  v22[4] = __Block_byref_object_dispose__1;
  v6 = self;
  v23 = v6;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 3221225472;
  aBlock[2] = __68__AAAgeMigrationController_clearAgeMigrationFollowUpWithCompletion___block_invoke;
  aBlock[3] = &unk_1E7C9B050;
  v21 = v22;
  v7 = v4;
  v20 = v7;
  v8 = _Block_copy(aBlock);
  daemonConnection = v6->_daemonConnection;
  v17[0] = MEMORY[0x1E69E9820];
  v17[1] = 3221225472;
  v17[2] = __68__AAAgeMigrationController_clearAgeMigrationFollowUpWithCompletion___block_invoke_2;
  v17[3] = &unk_1E7C9B078;
  v10 = v8;
  v18 = v10;
  v11 = [(AAAgeMigrationDaemonConnection *)daemonConnection remoteObjectProxyWithErrorHandler:v17];
  v12 = _AAAgeMigrationLogSystem();
  if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_1B6F6A000, v12, OS_LOG_TYPE_DEFAULT, "Clearing age migration CFU.", buf, 2u);
  }

  v14[0] = MEMORY[0x1E69E9820];
  v14[1] = 3221225472;
  v14[2] = __68__AAAgeMigrationController_clearAgeMigrationFollowUpWithCompletion___block_invoke_29;
  v14[3] = &unk_1E7C9B078;
  v13 = v10;
  v15 = v13;
  [v11 clearAgeMigrationFollowUpWithCompletion:v14];

  _Block_object_dispose(v22, 8);
  os_activity_scope_leave(&state);
}

void __68__AAAgeMigrationController_clearAgeMigrationFollowUpWithCompletion___block_invoke(uint64_t a1, void *a2)
{
  v6 = a2;
  v3 = *(*(a1 + 40) + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = 0;

  v5 = *(a1 + 32);
  if (v5)
  {
    (*(v5 + 16))(v5, v6);
  }
}

void __68__AAAgeMigrationController_clearAgeMigrationFollowUpWithCompletion___block_invoke_2(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = _AAAgeMigrationLogSystem();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
  {
    __68__AAAgeMigrationController_clearAgeMigrationFollowUpWithCompletion___block_invoke_2_cold_1();
  }

  (*(*(a1 + 32) + 16))();
}

void __68__AAAgeMigrationController_clearAgeMigrationFollowUpWithCompletion___block_invoke_29(uint64_t a1, void *a2)
{
  v3 = a2;
  if (v3)
  {
    v4 = _AAAgeMigrationLogSystem();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      __68__AAAgeMigrationController_clearAgeMigrationFollowUpWithCompletion___block_invoke_29_cold_1(v4);
    }
  }

  (*(*(a1 + 32) + 16))();
}

- (void)displayMisconfiguredAgePromptWithContext:(id)a3 completion:(id)a4
{
  v41 = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = a4;
  if (_os_feature_enabled_impl())
  {
    v8 = _os_activity_create(&dword_1B6F6A000, "age-migration/misconfigured-age-prompt", MEMORY[0x1E69E9C00], OS_ACTIVITY_FLAG_DEFAULT);
    state.opaque[0] = 0;
    state.opaque[1] = 0;
    os_activity_scope_enter(v8, &state);
    v9 = _AASignpostLogSystem();
    v10 = _AASignpostCreate(v9);
    v12 = v11;

    v13 = _AASignpostLogSystem();
    v14 = v13;
    if (v10 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v13))
    {
      LOWORD(buf) = 0;
      _os_signpost_emit_with_name_impl(&dword_1B6F6A000, v14, OS_SIGNPOST_INTERVAL_BEGIN, v10, "MisconfiguredAgePrompt", " enableTelemetry=YES ", &buf, 2u);
    }

    v15 = _AASignpostLogSystem();
    if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
    {
      LODWORD(buf) = 134217984;
      *(&buf + 4) = v10;
      _os_log_impl(&dword_1B6F6A000, v15, OS_LOG_TYPE_DEFAULT, "BEGIN [%lld]: MisconfiguredAgePrompt  enableTelemetry=YES ", &buf, 0xCu);
    }

    *&buf = 0;
    *(&buf + 1) = &buf;
    v37 = 0x3032000000;
    v38 = __Block_byref_object_copy__1;
    v39 = __Block_byref_object_dispose__1;
    v16 = self;
    v40 = v16;
    aBlock[0] = MEMORY[0x1E69E9820];
    aBlock[1] = 3221225472;
    aBlock[2] = __80__AAAgeMigrationController_displayMisconfiguredAgePromptWithContext_completion___block_invoke;
    aBlock[3] = &unk_1E7C9B388;
    p_buf = &buf;
    v33 = v10;
    v34 = v12;
    v31 = v7;
    v17 = _Block_copy(aBlock);
    daemonConnection = v16->_daemonConnection;
    v28[0] = MEMORY[0x1E69E9820];
    v28[1] = 3221225472;
    v28[2] = __80__AAAgeMigrationController_displayMisconfiguredAgePromptWithContext_completion___block_invoke_33;
    v28[3] = &unk_1E7C9B078;
    v19 = v17;
    v29 = v19;
    v20 = [(AAAgeMigrationDaemonConnection *)daemonConnection remoteObjectProxyWithErrorHandler:v28];
    v21 = _AAAgeMigrationLogSystem();
    if (os_log_type_enabled(v21, OS_LOG_TYPE_DEFAULT))
    {
      *v27 = 0;
      _os_log_impl(&dword_1B6F6A000, v21, OS_LOG_TYPE_DEFAULT, "attempt to display misconfigured age prompt.", v27, 2u);
    }

    v25[0] = MEMORY[0x1E69E9820];
    v25[1] = 3221225472;
    v25[2] = __80__AAAgeMigrationController_displayMisconfiguredAgePromptWithContext_completion___block_invoke_34;
    v25[3] = &unk_1E7C9B3B0;
    v22 = v19;
    v26 = v22;
    [v20 displayMisconfiguredAgePromptWithContext:v6 completion:v25];

    _Block_object_dispose(&buf, 8);
    os_activity_scope_leave(&state);
  }

  else
  {
    v23 = _AAAgeMigrationLogSystem();
    if (os_log_type_enabled(v23, OS_LOG_TYPE_DEFAULT))
    {
      LOWORD(buf) = 0;
      _os_log_impl(&dword_1B6F6A000, v23, OS_LOG_TYPE_DEFAULT, "nothing to see here... feature is not on", &buf, 2u);
    }

    (*(v7 + 2))(v7, 0, 0);
  }

  v24 = *MEMORY[0x1E69E9840];
}

void __80__AAAgeMigrationController_displayMisconfiguredAgePromptWithContext_completion___block_invoke(void *a1, int a2, void *a3)
{
  v24 = *MEMORY[0x1E69E9840];
  v5 = a3;
  v6 = *(a1[5] + 8);
  v7 = *(v6 + 40);
  *(v6 + 40) = 0;

  Nanoseconds = _AASignpostGetNanoseconds(a1[6], a1[7]);
  v9 = _AASignpostLogSystem();
  v10 = v9;
  v11 = a1[6];
  if (v11 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v9))
  {
    v12 = _AAErrorUnderlyingError(v5);
    v20 = 67240192;
    *v21 = [v12 code];
    _os_signpost_emit_with_name_impl(&dword_1B6F6A000, v10, OS_SIGNPOST_INTERVAL_END, v11, "MisconfiguredAgePrompt", " Error=%{public,signpost.telemetry:number2,name=Error}d ", &v20, 8u);
  }

  v13 = _AASignpostLogSystem();
  if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
  {
    v14 = Nanoseconds / 1000000000.0;
    v15 = a1[6];
    v16 = _AAErrorUnderlyingError(v5);
    v17 = [v16 code];
    v20 = 134218496;
    *v21 = v15;
    *&v21[8] = 2048;
    *&v21[10] = v14;
    v22 = 1026;
    v23 = v17;
    _os_log_impl(&dword_1B6F6A000, v13, OS_LOG_TYPE_DEFAULT, "END [%lld] %fs: MisconfiguredAgePrompt  Error=%{public,signpost.telemetry:number2,name=Error}d ", &v20, 0x1Cu);
  }

  if (a1[4])
  {
    v18 = _AAAgeMigrationLogSystem();
    if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
    {
      v20 = 67109378;
      *v21 = a2;
      *&v21[4] = 2112;
      *&v21[6] = v5;
      _os_log_impl(&dword_1B6F6A000, v18, OS_LOG_TYPE_DEFAULT, "Displayed age migration alert with user action result %i, error:%@.", &v20, 0x12u);
    }

    (*(a1[4] + 16))();
  }

  v19 = *MEMORY[0x1E69E9840];
}

void __80__AAAgeMigrationController_displayMisconfiguredAgePromptWithContext_completion___block_invoke_33(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = _AAAgeMigrationLogSystem();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
  {
    __80__AAAgeMigrationController_displayMisconfiguredAgePromptWithContext_completion___block_invoke_33_cold_1();
  }

  (*(*(a1 + 32) + 16))();
}

- (void)clearUserAcknowledgeMisconfiguredAgedPromptWithContext:(id)a3 completion:(id)a4
{
  v41 = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = a4;
  if (_os_feature_enabled_impl())
  {
    v8 = _os_activity_create(&dword_1B6F6A000, "age-migration/misconfigured-clear-user-acknowledge-cache", MEMORY[0x1E69E9C00], OS_ACTIVITY_FLAG_DEFAULT);
    state.opaque[0] = 0;
    state.opaque[1] = 0;
    os_activity_scope_enter(v8, &state);
    v9 = _AASignpostLogSystem();
    v10 = _AASignpostCreate(v9);
    v12 = v11;

    v13 = _AASignpostLogSystem();
    v14 = v13;
    if (v10 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v13))
    {
      LOWORD(buf) = 0;
      _os_signpost_emit_with_name_impl(&dword_1B6F6A000, v14, OS_SIGNPOST_INTERVAL_BEGIN, v10, "ClearUserAcknowledgeCache", " enableTelemetry=YES ", &buf, 2u);
    }

    v15 = _AASignpostLogSystem();
    if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
    {
      LODWORD(buf) = 134217984;
      *(&buf + 4) = v10;
      _os_log_impl(&dword_1B6F6A000, v15, OS_LOG_TYPE_DEFAULT, "BEGIN [%lld]: ClearUserAcknowledgeCache  enableTelemetry=YES ", &buf, 0xCu);
    }

    *&buf = 0;
    *(&buf + 1) = &buf;
    v37 = 0x3032000000;
    v38 = __Block_byref_object_copy__1;
    v39 = __Block_byref_object_dispose__1;
    v16 = self;
    v40 = v16;
    aBlock[0] = MEMORY[0x1E69E9820];
    aBlock[1] = 3221225472;
    aBlock[2] = __94__AAAgeMigrationController_clearUserAcknowledgeMisconfiguredAgedPromptWithContext_completion___block_invoke;
    aBlock[3] = &unk_1E7C9B3D8;
    p_buf = &buf;
    v33 = v10;
    v34 = v12;
    v31 = v7;
    v17 = _Block_copy(aBlock);
    daemonConnection = v16->_daemonConnection;
    v28[0] = MEMORY[0x1E69E9820];
    v28[1] = 3221225472;
    v28[2] = __94__AAAgeMigrationController_clearUserAcknowledgeMisconfiguredAgedPromptWithContext_completion___block_invoke_35;
    v28[3] = &unk_1E7C9B078;
    v19 = v17;
    v29 = v19;
    v20 = [(AAAgeMigrationDaemonConnection *)daemonConnection remoteObjectProxyWithErrorHandler:v28];
    v21 = _AAAgeMigrationLogSystem();
    if (os_log_type_enabled(v21, OS_LOG_TYPE_DEFAULT))
    {
      *v27 = 0;
      _os_log_impl(&dword_1B6F6A000, v21, OS_LOG_TYPE_DEFAULT, "Clearing user acknowledge prompt cache.", v27, 2u);
    }

    v25[0] = MEMORY[0x1E69E9820];
    v25[1] = 3221225472;
    v25[2] = __94__AAAgeMigrationController_clearUserAcknowledgeMisconfiguredAgedPromptWithContext_completion___block_invoke_36;
    v25[3] = &unk_1E7C9B078;
    v22 = v19;
    v26 = v22;
    [v20 clearUserAcknowledgeMisconfiguredAgedPromptWithContext:v6 completion:v25];

    _Block_object_dispose(&buf, 8);
    os_activity_scope_leave(&state);
  }

  else
  {
    v23 = _AAAgeMigrationLogSystem();
    if (os_log_type_enabled(v23, OS_LOG_TYPE_DEFAULT))
    {
      LOWORD(buf) = 0;
      _os_log_impl(&dword_1B6F6A000, v23, OS_LOG_TYPE_DEFAULT, "Nothing to see here... feature is not on", &buf, 2u);
    }

    (*(v7 + 2))(v7, 0);
  }

  v24 = *MEMORY[0x1E69E9840];
}

void __94__AAAgeMigrationController_clearUserAcknowledgeMisconfiguredAgedPromptWithContext_completion___block_invoke(void *a1, void *a2)
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
    _os_signpost_emit_with_name_impl(&dword_1B6F6A000, v8, OS_SIGNPOST_INTERVAL_END, v9, "ClearUserAcknowledgeCache", " Error=%{public,signpost.telemetry:number2,name=Error}d ", &v18, 8u);
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
    _os_log_impl(&dword_1B6F6A000, v11, OS_LOG_TYPE_DEFAULT, "END [%lld] %fs: ClearUserAcknowledgeCache  Error=%{public,signpost.telemetry:number2,name=Error}d ", &v18, 0x1Cu);
  }

  if (a1[4])
  {
    v16 = _AAAgeMigrationLogSystem();
    if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
    {
      v18 = 138412290;
      v19 = v3;
      _os_log_impl(&dword_1B6F6A000, v16, OS_LOG_TYPE_DEFAULT, "Returned with error:%@.", &v18, 0xCu);
    }

    (*(a1[4] + 16))();
  }

  v17 = *MEMORY[0x1E69E9840];
}

void __94__AAAgeMigrationController_clearUserAcknowledgeMisconfiguredAgedPromptWithContext_completion___block_invoke_35(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = _AAAgeMigrationLogSystem();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
  {
    __94__AAAgeMigrationController_clearUserAcknowledgeMisconfiguredAgedPromptWithContext_completion___block_invoke_35_cold_1();
  }

  (*(*(a1 + 32) + 16))();
}

- (void)didUserAcknowledgeMisconfiguredAgedPromptWithContext:(id)a3 completion:(id)a4
{
  v41 = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = a4;
  if (_os_feature_enabled_impl())
  {
    v8 = _os_activity_create(&dword_1B6F6A000, "age-migration/misconfigured-fetch-user-acknowledge-cache", MEMORY[0x1E69E9C00], OS_ACTIVITY_FLAG_DEFAULT);
    state.opaque[0] = 0;
    state.opaque[1] = 0;
    os_activity_scope_enter(v8, &state);
    v9 = _AASignpostLogSystem();
    v10 = _AASignpostCreate(v9);
    v12 = v11;

    v13 = _AASignpostLogSystem();
    v14 = v13;
    if (v10 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v13))
    {
      LOWORD(buf) = 0;
      _os_signpost_emit_with_name_impl(&dword_1B6F6A000, v14, OS_SIGNPOST_INTERVAL_BEGIN, v10, "FetchUserAcknowledgeCache", " enableTelemetry=YES ", &buf, 2u);
    }

    v15 = _AASignpostLogSystem();
    if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
    {
      LODWORD(buf) = 134217984;
      *(&buf + 4) = v10;
      _os_log_impl(&dword_1B6F6A000, v15, OS_LOG_TYPE_DEFAULT, "BEGIN [%lld]: FetchUserAcknowledgeCache  enableTelemetry=YES ", &buf, 0xCu);
    }

    *&buf = 0;
    *(&buf + 1) = &buf;
    v37 = 0x3032000000;
    v38 = __Block_byref_object_copy__1;
    v39 = __Block_byref_object_dispose__1;
    v16 = self;
    v40 = v16;
    aBlock[0] = MEMORY[0x1E69E9820];
    aBlock[1] = 3221225472;
    aBlock[2] = __92__AAAgeMigrationController_didUserAcknowledgeMisconfiguredAgedPromptWithContext_completion___block_invoke;
    aBlock[3] = &unk_1E7C9B400;
    p_buf = &buf;
    v33 = v10;
    v34 = v12;
    v31 = v7;
    v17 = _Block_copy(aBlock);
    daemonConnection = v16->_daemonConnection;
    v28[0] = MEMORY[0x1E69E9820];
    v28[1] = 3221225472;
    v28[2] = __92__AAAgeMigrationController_didUserAcknowledgeMisconfiguredAgedPromptWithContext_completion___block_invoke_38;
    v28[3] = &unk_1E7C9B078;
    v19 = v17;
    v29 = v19;
    v20 = [(AAAgeMigrationDaemonConnection *)daemonConnection remoteObjectProxyWithErrorHandler:v28];
    v21 = _AAAgeMigrationLogSystem();
    if (os_log_type_enabled(v21, OS_LOG_TYPE_DEFAULT))
    {
      *v27 = 0;
      _os_log_impl(&dword_1B6F6A000, v21, OS_LOG_TYPE_DEFAULT, "Clearing user acknowledge prompt cache.", v27, 2u);
    }

    v25[0] = MEMORY[0x1E69E9820];
    v25[1] = 3221225472;
    v25[2] = __92__AAAgeMigrationController_didUserAcknowledgeMisconfiguredAgedPromptWithContext_completion___block_invoke_39;
    v25[3] = &unk_1E7C9ABB8;
    v22 = v19;
    v26 = v22;
    [v20 didUserAcknowledgeMisconfiguredAgedPromptWithContext:v6 completion:v25];

    _Block_object_dispose(&buf, 8);
    os_activity_scope_leave(&state);
  }

  else
  {
    v23 = _AAAgeMigrationLogSystem();
    if (os_log_type_enabled(v23, OS_LOG_TYPE_DEFAULT))
    {
      LOWORD(buf) = 0;
      _os_log_impl(&dword_1B6F6A000, v23, OS_LOG_TYPE_DEFAULT, "Nothing to see here... feature is not on", &buf, 2u);
    }

    (*(v7 + 2))(v7, 0, 0);
  }

  v24 = *MEMORY[0x1E69E9840];
}

void __92__AAAgeMigrationController_didUserAcknowledgeMisconfiguredAgedPromptWithContext_completion___block_invoke(void *a1, int a2, void *a3)
{
  v24 = *MEMORY[0x1E69E9840];
  v5 = a3;
  v6 = *(a1[5] + 8);
  v7 = *(v6 + 40);
  *(v6 + 40) = 0;

  Nanoseconds = _AASignpostGetNanoseconds(a1[6], a1[7]);
  v9 = _AASignpostLogSystem();
  v10 = v9;
  v11 = a1[6];
  if (v11 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v9))
  {
    v12 = _AAErrorUnderlyingError(v5);
    v20 = 67240192;
    *v21 = [v12 code];
    _os_signpost_emit_with_name_impl(&dword_1B6F6A000, v10, OS_SIGNPOST_INTERVAL_END, v11, "FetchUserAcknowledgeCache", " Error=%{public,signpost.telemetry:number2,name=Error}d ", &v20, 8u);
  }

  v13 = _AASignpostLogSystem();
  if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
  {
    v14 = Nanoseconds / 1000000000.0;
    v15 = a1[6];
    v16 = _AAErrorUnderlyingError(v5);
    v17 = [v16 code];
    v20 = 134218496;
    *v21 = v15;
    *&v21[8] = 2048;
    *&v21[10] = v14;
    v22 = 1026;
    v23 = v17;
    _os_log_impl(&dword_1B6F6A000, v13, OS_LOG_TYPE_DEFAULT, "END [%lld] %fs: FetchUserAcknowledgeCache  Error=%{public,signpost.telemetry:number2,name=Error}d ", &v20, 0x1Cu);
  }

  if (a1[4])
  {
    v18 = _AAAgeMigrationLogSystem();
    if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
    {
      v20 = 67109378;
      *v21 = a2;
      *&v21[4] = 2112;
      *&v21[6] = v5;
      _os_log_impl(&dword_1B6F6A000, v18, OS_LOG_TYPE_DEFAULT, "Fetched user acknowledge cache returned result: %i, error:%@.", &v20, 0x12u);
    }

    (*(a1[4] + 16))();
  }

  v19 = *MEMORY[0x1E69E9840];
}

void __92__AAAgeMigrationController_didUserAcknowledgeMisconfiguredAgedPromptWithContext_completion___block_invoke_38(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = _AAAgeMigrationLogSystem();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
  {
    __92__AAAgeMigrationController_didUserAcknowledgeMisconfiguredAgedPromptWithContext_completion___block_invoke_38_cold_1();
  }

  (*(*(a1 + 32) + 16))();
}

void __100__AAAgeMigrationController_saveUserAcknowledgeMisconfiguredAgedPromptWithContext_action_completion___block_invoke(void *a1, void *a2)
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
    _os_signpost_emit_with_name_impl(&dword_1B6F6A000, v8, OS_SIGNPOST_INTERVAL_END, v9, "CacheUserAcknowledgement", " Error=%{public,signpost.telemetry:number2,name=Error}d ", &v18, 8u);
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
    _os_log_impl(&dword_1B6F6A000, v11, OS_LOG_TYPE_DEFAULT, "END [%lld] %fs: CacheUserAcknowledgement  Error=%{public,signpost.telemetry:number2,name=Error}d ", &v18, 0x1Cu);
  }

  if (a1[4])
  {
    v16 = _AAAgeMigrationLogSystem();
    if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
    {
      v18 = 138412290;
      v19 = v3;
      _os_log_impl(&dword_1B6F6A000, v16, OS_LOG_TYPE_DEFAULT, "Returned with error:%@.", &v18, 0xCu);
    }

    (*(a1[4] + 16))();
  }

  v17 = *MEMORY[0x1E69E9840];
}

void __100__AAAgeMigrationController_saveUserAcknowledgeMisconfiguredAgedPromptWithContext_action_completion___block_invoke_40(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = _AAAgeMigrationLogSystem();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
  {
    __100__AAAgeMigrationController_saveUserAcknowledgeMisconfiguredAgedPromptWithContext_action_completion___block_invoke_40_cold_1();
  }

  (*(*(a1 + 32) + 16))();
}

void __68__AAAgeMigrationController_clearAgeMigrationFollowUpWithCompletion___block_invoke_2_cold_1()
{
  v8 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_0(&dword_1B6F6A000, v0, v1, "AppleAccount daemon connection clearing age migration CFU returned an error: %@.", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x1E69E9840];
}

void __80__AAAgeMigrationController_displayMisconfiguredAgePromptWithContext_completion___block_invoke_33_cold_1()
{
  v8 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_0(&dword_1B6F6A000, v0, v1, "AppleAccount daemon connection for requesting age migration display alert returned an error: %@.", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x1E69E9840];
}

void __94__AAAgeMigrationController_clearUserAcknowledgeMisconfiguredAgedPromptWithContext_completion___block_invoke_35_cold_1()
{
  v8 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_0(&dword_1B6F6A000, v0, v1, "AppleAccount daemon connection for requesting to clear user acknowledge prompt cache returned an error: %@.", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x1E69E9840];
}

void __92__AAAgeMigrationController_didUserAcknowledgeMisconfiguredAgedPromptWithContext_completion___block_invoke_38_cold_1()
{
  v8 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_0(&dword_1B6F6A000, v0, v1, "AppleAccount daemon connection for requesting to fetch user acknowledge prompt cache returned an error: %@.", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x1E69E9840];
}

void __100__AAAgeMigrationController_saveUserAcknowledgeMisconfiguredAgedPromptWithContext_action_completion___block_invoke_40_cold_1()
{
  v8 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_0(&dword_1B6F6A000, v0, v1, "AppleAccount daemon connection for requesting to cache user acknowledge prompt returned an error: %@.", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x1E69E9840];
}

@end