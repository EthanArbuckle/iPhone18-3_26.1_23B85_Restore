@interface AACustodianController
- (AACustodianController)initWithDaemonConnectionProvider:(id)a3 analyticsReporter:(id)a4;
- (AACustodianController)initWithDaemonXPCEndpoint:(id)a3;
- (BOOL)cancelCustodianRecoveryWithSessionID:(id)a3 error:(id *)a4;
- (void)_retryingGenerateCustodianRecoveryCodeWithContext:(id)a3 completion:(id)a4;
- (void)_retryingValidateCustodianRecoveryCodeWithContext:(id)a3 completion:(id)a4;
- (void)availableRecoveryFactorsWithCompletion:(id)a3;
- (void)cancelCustodianRecoveryWithContext:(id)a3 completion:(id)a4;
- (void)displayInvitationUIWithUUID:(id)a3 completion:(id)a4;
- (void)displayTrustedContactFlowWithModel:(id)a3 completion:(id)a4;
- (void)fetchCachedTrustedContactsWithCompletion:(id)a3;
- (void)fetchCustodianHealthStatusWithCompletion:(id)a3;
- (void)fetchCustodianPasswordResetInformationWithSessionID:(id)a3 completion:(id)a4;
- (void)fetchCustodianRecoveryConfigurationWithCompletion:(id)a3;
- (void)fetchCustodianRecoveryKeysWithContext:(id)a3 completion:(id)a4;
- (void)fetchCustodianRecoveryKeysWithSessionID:(id)a3 completion:(id)a4;
- (void)fetchCustodianshipInfoWithCompletion:(id)a3;
- (void)fetchCustodianshipInfoWithUUID:(id)a3 completion:(id)a4;
- (void)fetchSuggestedCustodiansForUpsellWithTelemetryFlowID:(id)a3 completion:(id)a4;
- (void)fetchSuggestedCustodiansWithCompletion:(id)a3;
- (void)fetchTrustedContactsWithCompletion:(id)a3;
- (void)fetchTrustedContactsWithRequest:(id)a3 completion:(id)a4;
- (void)generateCustodianRecoveryCodeWithContext:(id)a3 completion:(id)a4;
- (void)preflightCustodianRecoveryWithCompletion:(id)a3;
- (void)pullTrustedContactsFromCloudKitWithCompletion:(id)a3;
- (void)reSendCustodianInvitationWithCustodianID:(id)a3 completion:(id)a4;
- (void)removeCustodian:(id)a3 completion:(id)a4;
- (void)removeCustodianWithContext:(id)a3 completion:(id)a4;
- (void)repairCustodians:(id)a3 completion:(id)a4;
- (void)respondToCustodianRequestWithResponse:(id)a3 completion:(id)a4;
- (void)setupCustodianshipWithContext:(id)a3 completion:(id)a4;
- (void)startCustodianRecoveryWithContext:(id)a3 completion:(id)a4;
- (void)startHealthCheckWithCompletion:(id)a3;
- (void)startManateeMigrationWithCompletion:(id)a3;
- (void)stopBeingCustodian:(id)a3 completion:(id)a4;
- (void)stopBeingCustodianWithContext:(id)a3 completion:(id)a4;
- (void)validateCustodianRecoveryCodeWithContext:(id)a3 completion:(id)a4;
@end

@implementation AACustodianController

- (AACustodianController)initWithDaemonXPCEndpoint:(id)a3
{
  v4 = a3;
  v5 = [[AACustodianDaemonConnection alloc] initWithListenerEndpoint:v4];

  v6 = [(AACustodianController *)self initWithDaemonConnectionProvider:v5 analyticsReporter:0];
  return v6;
}

- (AACustodianController)initWithDaemonConnectionProvider:(id)a3 analyticsReporter:(id)a4
{
  v7 = a3;
  v8 = a4;
  v14.receiver = self;
  v14.super_class = AACustodianController;
  v9 = [(AACustodianController *)&v14 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_daemonConnection, a3);
    if (v8)
    {
      v11 = v8;
    }

    else
    {
      v11 = +[AAAnalyticsRTCReporter reporter];
    }

    analyticsReporter = v10->_analyticsReporter;
    v10->_analyticsReporter = v11;
  }

  return v10;
}

- (void)setupCustodianshipWithContext:(id)a3 completion:(id)a4
{
  v52 = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = a4;
  v8 = _os_activity_create(&dword_1B6F6A000, "custodian-appleaccount/set-up-custodianship", MEMORY[0x1E69E9C00], OS_ACTIVITY_FLAG_DEFAULT);
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
    _os_signpost_emit_with_name_impl(&dword_1B6F6A000, v14, OS_SIGNPOST_INTERVAL_BEGIN, v10, "SetupCustodianship", " enableTelemetry=YES ", &buf, 2u);
  }

  v15 = _AASignpostLogSystem();
  if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
  {
    LODWORD(buf) = 134217984;
    *(&buf + 4) = v10;
    _os_log_impl(&dword_1B6F6A000, v15, OS_LOG_TYPE_DEFAULT, "BEGIN [%lld]: SetupCustodianship  enableTelemetry=YES ", &buf, 0xCu);
  }

  v16 = self->_analyticsReporter;
  v17 = MEMORY[0x1E6985DB0];
  v18 = [v6 altDSID];
  v19 = [v6 telemetryFlowID];
  v20 = [v17 analyticsEventWithName:@"com.apple.appleaccount.custodian.setup.newCustodian" altDSID:v18 flowID:v19];

  [v20 setObject:&unk_1F2F24B20 forKeyedSubscript:@"contextType"];
  *&buf = 0;
  *(&buf + 1) = &buf;
  v48 = 0x3032000000;
  v49 = __Block_byref_object_copy__2;
  v50 = __Block_byref_object_dispose__2;
  v21 = self;
  v51 = v21;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 3221225472;
  aBlock[2] = __66__AACustodianController_setupCustodianshipWithContext_completion___block_invoke;
  aBlock[3] = &unk_1E7C9B4A0;
  p_buf = &buf;
  v22 = v20;
  v38 = v22;
  v23 = v16;
  v39 = v23;
  v42 = v10;
  v43 = v12;
  v24 = v7;
  v40 = v24;
  v25 = _Block_copy(aBlock);
  daemonConnection = v21->_daemonConnection;
  v35[0] = MEMORY[0x1E69E9820];
  v35[1] = 3221225472;
  v35[2] = __66__AACustodianController_setupCustodianshipWithContext_completion___block_invoke_35;
  v35[3] = &unk_1E7C9B078;
  v27 = v25;
  v36 = v27;
  v28 = [(AACustodianDaemonConnectionProviding *)daemonConnection remoteObjectProxyWithErrorHandler:v35];
  v29 = _AALogSystem();
  if (os_log_type_enabled(v29, OS_LOG_TYPE_DEFAULT))
  {
    v30 = [v6 debugDescription];
    *v45 = 138412290;
    v46 = v30;
    _os_log_impl(&dword_1B6F6A000, v29, OS_LOG_TYPE_DEFAULT, "Setting up custodianship: %@", v45, 0xCu);
  }

  v33[0] = MEMORY[0x1E69E9820];
  v33[1] = 3221225472;
  v33[2] = __66__AACustodianController_setupCustodianshipWithContext_completion___block_invoke_37;
  v33[3] = &unk_1E7C9B4C8;
  v31 = v27;
  v34 = v31;
  [v28 setupCustodianshipWithContext:v6 completion:v33];

  _Block_object_dispose(&buf, 8);
  os_activity_scope_leave(&state);

  v32 = *MEMORY[0x1E69E9840];
}

void __66__AACustodianController_setupCustodianshipWithContext_completion___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v27 = *MEMORY[0x1E69E9840];
  v5 = a2;
  v6 = a3;
  v7 = *(*(a1 + 56) + 8);
  v8 = *(v7 + 40);
  *(v7 + 40) = 0;

  [*(a1 + 32) updateTaskResultWithError:v6];
  [*(a1 + 40) sendEvent:*(a1 + 32)];
  Nanoseconds = _AASignpostGetNanoseconds(*(a1 + 64), *(a1 + 72));
  v10 = _AASignpostLogSystem();
  v11 = v10;
  v12 = *(a1 + 64);
  if (v12 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v10))
  {
    v13 = _AAErrorUnderlyingError(v6);
    v21 = 67240192;
    LODWORD(v22) = [v13 code];
    _os_signpost_emit_with_name_impl(&dword_1B6F6A000, v11, OS_SIGNPOST_INTERVAL_END, v12, "SetupCustodianship", " Error=%{public,signpost.telemetry:number2,name=Error}d ", &v21, 8u);
  }

  v14 = _AASignpostLogSystem();
  if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
  {
    v15 = Nanoseconds / 1000000000.0;
    v16 = *(a1 + 64);
    v17 = _AAErrorUnderlyingError(v6);
    v18 = [v17 code];
    v21 = 134218496;
    v22 = v16;
    v23 = 2048;
    v24 = v15;
    v25 = 1026;
    v26 = v18;
    _os_log_impl(&dword_1B6F6A000, v14, OS_LOG_TYPE_DEFAULT, "END [%lld] %fs: SetupCustodianship  Error=%{public,signpost.telemetry:number2,name=Error}d ", &v21, 0x1Cu);
  }

  v19 = *(a1 + 48);
  if (v19)
  {
    (*(v19 + 16))(v19, v5, v6);
  }

  v20 = *MEMORY[0x1E69E9840];
}

void __66__AACustodianController_setupCustodianshipWithContext_completion___block_invoke_35(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = _AALogSystem();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
  {
    __66__AACustodianController_setupCustodianshipWithContext_completion___block_invoke_35_cold_1();
  }

  (*(*(a1 + 32) + 16))();
}

void __66__AACustodianController_setupCustodianshipWithContext_completion___block_invoke_37(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  if (v6)
  {
    v7 = _AALogSystem();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      __66__AACustodianController_setupCustodianshipWithContext_completion___block_invoke_37_cold_1();
    }
  }

  (*(*(a1 + 32) + 16))();
}

- (void)respondToCustodianRequestWithResponse:(id)a3 completion:(id)a4
{
  v50 = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = a4;
  v8 = _os_activity_create(&dword_1B6F6A000, "custodian-appleaccount/custodian-invitation-response", MEMORY[0x1E69E9C00], OS_ACTIVITY_FLAG_DEFAULT);
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
    _os_signpost_emit_with_name_impl(&dword_1B6F6A000, v14, OS_SIGNPOST_INTERVAL_BEGIN, v10, "RespondToCustodianRequest", " enableTelemetry=YES ", &buf, 2u);
  }

  v15 = _AASignpostLogSystem();
  if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
  {
    LODWORD(buf) = 134217984;
    *(&buf + 4) = v10;
    _os_log_impl(&dword_1B6F6A000, v15, OS_LOG_TYPE_DEFAULT, "BEGIN [%lld]: RespondToCustodianRequest  enableTelemetry=YES ", &buf, 0xCu);
  }

  v16 = self->_analyticsReporter;
  v17 = MEMORY[0x1E6985DB0];
  v18 = [v6 altDSID];
  v19 = [v6 telemetryFlowID];
  v20 = [v17 analyticsEventWithName:@"com.apple.appleaccount.custodian.setup.respondToInvite" altDSID:v18 flowID:v19];

  *&buf = 0;
  *(&buf + 1) = &buf;
  v46 = 0x3032000000;
  v47 = __Block_byref_object_copy__2;
  v48 = __Block_byref_object_dispose__2;
  v21 = self;
  v49 = v21;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 3221225472;
  aBlock[2] = __74__AACustodianController_respondToCustodianRequestWithResponse_completion___block_invoke;
  aBlock[3] = &unk_1E7C9B4F0;
  p_buf = &buf;
  v22 = v20;
  v38 = v22;
  v23 = v16;
  v39 = v23;
  v42 = v10;
  v43 = v12;
  v24 = v7;
  v40 = v24;
  v25 = _Block_copy(aBlock);
  daemonConnection = v21->_daemonConnection;
  v35[0] = MEMORY[0x1E69E9820];
  v35[1] = 3221225472;
  v35[2] = __74__AACustodianController_respondToCustodianRequestWithResponse_completion___block_invoke_38;
  v35[3] = &unk_1E7C9B078;
  v27 = v25;
  v36 = v27;
  v28 = [(AACustodianDaemonConnectionProviding *)daemonConnection remoteObjectProxyWithErrorHandler:v35];
  v29 = _AALogSystem();
  if (os_log_type_enabled(v29, OS_LOG_TYPE_DEFAULT))
  {
    *v34 = 0;
    _os_log_impl(&dword_1B6F6A000, v29, OS_LOG_TYPE_DEFAULT, "Responding to a custodian request.", v34, 2u);
  }

  v32[0] = MEMORY[0x1E69E9820];
  v32[1] = 3221225472;
  v32[2] = __74__AACustodianController_respondToCustodianRequestWithResponse_completion___block_invoke_39;
  v32[3] = &unk_1E7C9B078;
  v30 = v27;
  v33 = v30;
  [v28 respondToInviteWithContext:v6 completion:v32];

  _Block_object_dispose(&buf, 8);
  os_activity_scope_leave(&state);

  v31 = *MEMORY[0x1E69E9840];
}

void __74__AACustodianController_respondToCustodianRequestWithResponse_completion___block_invoke(uint64_t a1, void *a2)
{
  v24 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = *(*(a1 + 56) + 8);
  v5 = *(v4 + 40);
  *(v4 + 40) = 0;

  [*(a1 + 32) updateTaskResultWithError:v3];
  [*(a1 + 40) sendEvent:*(a1 + 32)];
  Nanoseconds = _AASignpostGetNanoseconds(*(a1 + 64), *(a1 + 72));
  v7 = _AASignpostLogSystem();
  v8 = v7;
  v9 = *(a1 + 64);
  if (v9 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v7))
  {
    v10 = _AAErrorUnderlyingError(v3);
    v18 = 67240192;
    LODWORD(v19) = [v10 code];
    _os_signpost_emit_with_name_impl(&dword_1B6F6A000, v8, OS_SIGNPOST_INTERVAL_END, v9, "RespondToCustodianRequest", " Error=%{public,signpost.telemetry:number2,name=Error}d ", &v18, 8u);
  }

  v11 = _AASignpostLogSystem();
  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
  {
    v12 = Nanoseconds / 1000000000.0;
    v13 = *(a1 + 64);
    v14 = _AAErrorUnderlyingError(v3);
    v15 = [v14 code];
    v18 = 134218496;
    v19 = v13;
    v20 = 2048;
    v21 = v12;
    v22 = 1026;
    v23 = v15;
    _os_log_impl(&dword_1B6F6A000, v11, OS_LOG_TYPE_DEFAULT, "END [%lld] %fs: RespondToCustodianRequest  Error=%{public,signpost.telemetry:number2,name=Error}d ", &v18, 0x1Cu);
  }

  v16 = *(a1 + 48);
  if (v16)
  {
    (*(v16 + 16))(v16, v3);
  }

  v17 = *MEMORY[0x1E69E9840];
}

void __74__AACustodianController_respondToCustodianRequestWithResponse_completion___block_invoke_38(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = _AALogSystem();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
  {
    __74__AACustodianController_respondToCustodianRequestWithResponse_completion___block_invoke_38_cold_1();
  }

  (*(*(a1 + 32) + 16))();
}

void __74__AACustodianController_respondToCustodianRequestWithResponse_completion___block_invoke_39(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = _AALogSystem();
  v5 = v4;
  if (v3)
  {
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      __74__AACustodianController_respondToCustodianRequestWithResponse_completion___block_invoke_39_cold_1();
    }
  }

  else if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    *v6 = 0;
    _os_log_impl(&dword_1B6F6A000, v5, OS_LOG_TYPE_DEFAULT, "Responded to the custodian request successfully.", v6, 2u);
  }

  (*(*(a1 + 32) + 16))();
}

- (void)removeCustodian:(id)a3 completion:(id)a4
{
  v6 = a4;
  v7 = a3;
  v11 = [[AACustodianUpdateRequestContext alloc] initWithCustodianID:v7];

  v8 = [MEMORY[0x1E698DC80] sharedInstance];
  v9 = [v8 primaryAuthKitAccount];
  v10 = [v9 aa_altDSID];
  [(AACustodianUpdateRequestContext *)v11 setAltDSID:v10];

  [(AACustodianController *)self removeCustodianWithContext:v11 completion:v6];
}

- (void)removeCustodianWithContext:(id)a3 completion:(id)a4
{
  v57 = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = a4;
  state.opaque[0] = 0;
  state.opaque[1] = 0;
  v35 = _os_activity_create(&dword_1B6F6A000, "custodian-appleaccount/custodian-remove", MEMORY[0x1E69E9C00], OS_ACTIVITY_FLAG_DEFAULT);
  os_activity_scope_enter(v35, &state);
  v8 = _AASignpostLogSystem();
  v9 = _AASignpostCreate(v8);
  v11 = v10;
  v36 = v7;

  v12 = _AASignpostLogSystem();
  v13 = v12;
  if (v9 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v12))
  {
    LOWORD(buf) = 0;
    _os_signpost_emit_with_name_impl(&dword_1B6F6A000, v13, OS_SIGNPOST_INTERVAL_BEGIN, v9, "RemoveCustodian", " enableTelemetry=YES ", &buf, 2u);
  }

  v14 = _AASignpostLogSystem();
  if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
  {
    LODWORD(buf) = 134217984;
    *(&buf + 4) = v9;
    _os_log_impl(&dword_1B6F6A000, v14, OS_LOG_TYPE_DEFAULT, "BEGIN [%lld]: RemoveCustodian  enableTelemetry=YES ", &buf, 0xCu);
  }

  v15 = @"com.apple.appleaccount.custodian.remove";
  v16 = self->_analyticsReporter;
  v17 = MEMORY[0x1E6985DB0];
  v18 = [v6 altDSID];
  v19 = [v6 telemetryFlowID];
  v20 = [v17 analyticsEventWithName:v15 altDSID:v18 flowID:v19];

  *&buf = 0;
  *(&buf + 1) = &buf;
  v53 = 0x3032000000;
  v54 = __Block_byref_object_copy__2;
  v55 = __Block_byref_object_dispose__2;
  v21 = self;
  v56 = v21;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 3221225472;
  aBlock[2] = __63__AACustodianController_removeCustodianWithContext_completion___block_invoke;
  aBlock[3] = &unk_1E7C9B4F0;
  p_buf = &buf;
  v22 = v20;
  v43 = v22;
  v23 = v16;
  v44 = v23;
  v47 = v9;
  v48 = v11;
  v24 = v36;
  v45 = v24;
  v25 = _Block_copy(aBlock);
  daemonConnection = v21->_daemonConnection;
  v40[0] = MEMORY[0x1E69E9820];
  v40[1] = 3221225472;
  v40[2] = __63__AACustodianController_removeCustodianWithContext_completion___block_invoke_42;
  v40[3] = &unk_1E7C9B078;
  v27 = v25;
  v41 = v27;
  v28 = [(AACustodianDaemonConnectionProviding *)daemonConnection remoteObjectProxyWithErrorHandler:v40];
  v29 = _AALogSystem();
  if (os_log_type_enabled(v29, OS_LOG_TYPE_DEFAULT))
  {
    v30 = [v6 custodianID];
    v31 = [v30 UUIDString];
    *v50 = 138412290;
    v51 = v31;
    _os_log_impl(&dword_1B6F6A000, v29, OS_LOG_TYPE_DEFAULT, "Removing custodian with ID %@.", v50, 0xCu);
  }

  v37[0] = MEMORY[0x1E69E9820];
  v37[1] = 3221225472;
  v37[2] = __63__AACustodianController_removeCustodianWithContext_completion___block_invoke_43;
  v37[3] = &unk_1E7C9B518;
  v32 = v6;
  v38 = v32;
  v33 = v27;
  v39 = v33;
  [v28 removeCustodianWithContext:v32 completion:v37];

  _Block_object_dispose(&buf, 8);
  os_activity_scope_leave(&state);

  v34 = *MEMORY[0x1E69E9840];
}

void __63__AACustodianController_removeCustodianWithContext_completion___block_invoke(uint64_t a1, void *a2)
{
  v24 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = *(*(a1 + 56) + 8);
  v5 = *(v4 + 40);
  *(v4 + 40) = 0;

  [*(a1 + 32) updateTaskResultWithError:v3];
  [*(a1 + 40) sendEvent:*(a1 + 32)];
  Nanoseconds = _AASignpostGetNanoseconds(*(a1 + 64), *(a1 + 72));
  v7 = _AASignpostLogSystem();
  v8 = v7;
  v9 = *(a1 + 64);
  if (v9 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v7))
  {
    v10 = _AAErrorUnderlyingError(v3);
    v18 = 67240192;
    LODWORD(v19) = [v10 code];
    _os_signpost_emit_with_name_impl(&dword_1B6F6A000, v8, OS_SIGNPOST_INTERVAL_END, v9, "RemoveCustodian", " Error=%{public,signpost.telemetry:number2,name=Error}d ", &v18, 8u);
  }

  v11 = _AASignpostLogSystem();
  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
  {
    v12 = Nanoseconds / 1000000000.0;
    v13 = *(a1 + 64);
    v14 = _AAErrorUnderlyingError(v3);
    v15 = [v14 code];
    v18 = 134218496;
    v19 = v13;
    v20 = 2048;
    v21 = v12;
    v22 = 1026;
    v23 = v15;
    _os_log_impl(&dword_1B6F6A000, v11, OS_LOG_TYPE_DEFAULT, "END [%lld] %fs: RemoveCustodian  Error=%{public,signpost.telemetry:number2,name=Error}d ", &v18, 0x1Cu);
  }

  v16 = *(a1 + 48);
  if (v16)
  {
    (*(v16 + 16))(v16, v3);
  }

  v17 = *MEMORY[0x1E69E9840];
}

void __63__AACustodianController_removeCustodianWithContext_completion___block_invoke_42(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = _AALogSystem();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
  {
    __63__AACustodianController_removeCustodianWithContext_completion___block_invoke_42_cold_1();
  }

  (*(*(a1 + 32) + 16))();
}

void __63__AACustodianController_removeCustodianWithContext_completion___block_invoke_43(uint64_t a1, void *a2)
{
  v11 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = _AALogSystem();
  v5 = v4;
  if (v3)
  {
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      __63__AACustodianController_removeCustodianWithContext_completion___block_invoke_43_cold_1();
    }
  }

  else if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v6 = [*(a1 + 32) custodianID];
    v7 = [v6 UUIDString];
    v9 = 138412290;
    v10 = v7;
    _os_log_impl(&dword_1B6F6A000, v5, OS_LOG_TYPE_DEFAULT, "Custodian %@ removed successfully.", &v9, 0xCu);
  }

  (*(*(a1 + 40) + 16))();
  v8 = *MEMORY[0x1E69E9840];
}

- (void)stopBeingCustodian:(id)a3 completion:(id)a4
{
  v6 = a4;
  v7 = a3;
  v11 = [[AACustodianUpdateRequestContext alloc] initWithCustodianID:v7];

  v8 = [MEMORY[0x1E698DC80] sharedInstance];
  v9 = [v8 primaryAuthKitAccount];
  v10 = [v9 aa_altDSID];
  [(AACustodianUpdateRequestContext *)v11 setAltDSID:v10];

  [(AACustodianController *)self stopBeingCustodianWithContext:v11 completion:v6];
}

- (void)stopBeingCustodianWithContext:(id)a3 completion:(id)a4
{
  v57 = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = a4;
  state.opaque[0] = 0;
  state.opaque[1] = 0;
  v35 = _os_activity_create(&dword_1B6F6A000, "custodian-appleaccount/stop-being-custodian", MEMORY[0x1E69E9C00], OS_ACTIVITY_FLAG_DEFAULT);
  os_activity_scope_enter(v35, &state);
  v8 = _AASignpostLogSystem();
  v9 = _AASignpostCreate(v8);
  v11 = v10;
  v36 = v7;

  v12 = _AASignpostLogSystem();
  v13 = v12;
  if (v9 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v12))
  {
    LOWORD(buf) = 0;
    _os_signpost_emit_with_name_impl(&dword_1B6F6A000, v13, OS_SIGNPOST_INTERVAL_BEGIN, v9, "StopBeingCustodian", " enableTelemetry=YES ", &buf, 2u);
  }

  v14 = _AASignpostLogSystem();
  if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
  {
    LODWORD(buf) = 134217984;
    *(&buf + 4) = v9;
    _os_log_impl(&dword_1B6F6A000, v14, OS_LOG_TYPE_DEFAULT, "BEGIN [%lld]: StopBeingCustodian  enableTelemetry=YES ", &buf, 0xCu);
  }

  v15 = self->_analyticsReporter;
  v16 = @"com.apple.appleaccount.custodian.setup.stopBeingCustodian";
  v17 = MEMORY[0x1E6985DB0];
  v18 = [v6 altDSID];
  v19 = [v6 telemetryFlowID];
  v20 = [v17 analyticsEventWithName:v16 altDSID:v18 flowID:v19];

  *&buf = 0;
  *(&buf + 1) = &buf;
  v53 = 0x3032000000;
  v54 = __Block_byref_object_copy__2;
  v55 = __Block_byref_object_dispose__2;
  v21 = self;
  v56 = v21;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 3221225472;
  aBlock[2] = __66__AACustodianController_stopBeingCustodianWithContext_completion___block_invoke;
  aBlock[3] = &unk_1E7C9B4F0;
  p_buf = &buf;
  v22 = v20;
  v43 = v22;
  v23 = v15;
  v44 = v23;
  v47 = v9;
  v48 = v11;
  v24 = v36;
  v45 = v24;
  v25 = _Block_copy(aBlock);
  daemonConnection = v21->_daemonConnection;
  v40[0] = MEMORY[0x1E69E9820];
  v40[1] = 3221225472;
  v40[2] = __66__AACustodianController_stopBeingCustodianWithContext_completion___block_invoke_44;
  v40[3] = &unk_1E7C9B078;
  v27 = v25;
  v41 = v27;
  v28 = [(AACustodianDaemonConnectionProviding *)daemonConnection remoteObjectProxyWithErrorHandler:v40];
  v29 = _AALogSystem();
  if (os_log_type_enabled(v29, OS_LOG_TYPE_DEFAULT))
  {
    v30 = [v6 custodianID];
    v31 = [v30 UUIDString];
    *v50 = 138412290;
    v51 = v31;
    _os_log_impl(&dword_1B6F6A000, v29, OS_LOG_TYPE_DEFAULT, "Ending custodianship with ID %@.", v50, 0xCu);
  }

  v37[0] = MEMORY[0x1E69E9820];
  v37[1] = 3221225472;
  v37[2] = __66__AACustodianController_stopBeingCustodianWithContext_completion___block_invoke_45;
  v37[3] = &unk_1E7C9B518;
  v32 = v6;
  v38 = v32;
  v33 = v27;
  v39 = v33;
  [v28 stopBeingCustodianWithContext:v32 completion:v37];

  _Block_object_dispose(&buf, 8);
  os_activity_scope_leave(&state);

  v34 = *MEMORY[0x1E69E9840];
}

void __66__AACustodianController_stopBeingCustodianWithContext_completion___block_invoke(uint64_t a1, void *a2)
{
  v24 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = *(*(a1 + 56) + 8);
  v5 = *(v4 + 40);
  *(v4 + 40) = 0;

  [*(a1 + 32) updateTaskResultWithError:v3];
  [*(a1 + 40) sendEvent:*(a1 + 32)];
  Nanoseconds = _AASignpostGetNanoseconds(*(a1 + 64), *(a1 + 72));
  v7 = _AASignpostLogSystem();
  v8 = v7;
  v9 = *(a1 + 64);
  if (v9 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v7))
  {
    v10 = _AAErrorUnderlyingError(v3);
    v18 = 67240192;
    LODWORD(v19) = [v10 code];
    _os_signpost_emit_with_name_impl(&dword_1B6F6A000, v8, OS_SIGNPOST_INTERVAL_END, v9, "StopBeingCustodian", " Error=%{public,signpost.telemetry:number2,name=Error}d ", &v18, 8u);
  }

  v11 = _AASignpostLogSystem();
  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
  {
    v12 = Nanoseconds / 1000000000.0;
    v13 = *(a1 + 64);
    v14 = _AAErrorUnderlyingError(v3);
    v15 = [v14 code];
    v18 = 134218496;
    v19 = v13;
    v20 = 2048;
    v21 = v12;
    v22 = 1026;
    v23 = v15;
    _os_log_impl(&dword_1B6F6A000, v11, OS_LOG_TYPE_DEFAULT, "END [%lld] %fs: StopBeingCustodian  Error=%{public,signpost.telemetry:number2,name=Error}d ", &v18, 0x1Cu);
  }

  v16 = *(a1 + 48);
  if (v16)
  {
    (*(v16 + 16))(v16, v3);
  }

  v17 = *MEMORY[0x1E69E9840];
}

void __66__AACustodianController_stopBeingCustodianWithContext_completion___block_invoke_44(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = _AALogSystem();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
  {
    __66__AACustodianController_stopBeingCustodianWithContext_completion___block_invoke_44_cold_1();
  }

  (*(*(a1 + 32) + 16))();
}

void __66__AACustodianController_stopBeingCustodianWithContext_completion___block_invoke_45(uint64_t a1, void *a2)
{
  v11 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = _AALogSystem();
  v5 = v4;
  if (v3)
  {
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      __66__AACustodianController_stopBeingCustodianWithContext_completion___block_invoke_45_cold_1();
    }
  }

  else if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v6 = [*(a1 + 32) custodianID];
    v7 = [v6 UUIDString];
    v9 = 138412290;
    v10 = v7;
    _os_log_impl(&dword_1B6F6A000, v5, OS_LOG_TYPE_DEFAULT, "Custodianship %@ has been ended.", &v9, 0xCu);
  }

  (*(*(a1 + 40) + 16))();
  v8 = *MEMORY[0x1E69E9840];
}

- (void)fetchCachedTrustedContactsWithCompletion:(id)a3
{
  v4 = a3;
  v5 = [[AATrustedContactFetchRequest alloc] initWithContactType:0 cachePolicy:0];
  [(AACustodianController *)self fetchTrustedContactsWithRequest:v5 completion:v4];
}

- (void)fetchTrustedContactsWithCompletion:(id)a3
{
  v4 = a3;
  v5 = [[AATrustedContactFetchRequest alloc] initWithContactType:0 cachePolicy:1];
  [(AACustodianController *)self fetchTrustedContactsWithRequest:v5 completion:v4];
}

- (void)fetchTrustedContactsWithRequest:(id)a3 completion:(id)a4
{
  v41 = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = a4;
  v8 = _os_activity_create(&dword_1B6F6A000, "custodian-appleaccount/fetch-trusted-contacts", MEMORY[0x1E69E9C00], OS_ACTIVITY_FLAG_DEFAULT);
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
    _os_signpost_emit_with_name_impl(&dword_1B6F6A000, v14, OS_SIGNPOST_INTERVAL_BEGIN, v10, "FetchTrustedContacts", " enableTelemetry=YES ", &buf, 2u);
  }

  v15 = _AASignpostLogSystem();
  if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
  {
    LODWORD(buf) = 134217984;
    *(&buf + 4) = v10;
    _os_log_impl(&dword_1B6F6A000, v15, OS_LOG_TYPE_DEFAULT, "BEGIN [%lld]: FetchTrustedContacts  enableTelemetry=YES ", &buf, 0xCu);
  }

  *&buf = 0;
  *(&buf + 1) = &buf;
  v37 = 0x3032000000;
  v38 = __Block_byref_object_copy__2;
  v39 = __Block_byref_object_dispose__2;
  v16 = self;
  v40 = v16;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 3221225472;
  aBlock[2] = __68__AACustodianController_fetchTrustedContactsWithRequest_completion___block_invoke;
  aBlock[3] = &unk_1E7C9B540;
  p_buf = &buf;
  v33 = v10;
  v34 = v12;
  v17 = v7;
  v31 = v17;
  v18 = _Block_copy(aBlock);
  daemonConnection = v16->_daemonConnection;
  v28[0] = MEMORY[0x1E69E9820];
  v28[1] = 3221225472;
  v28[2] = __68__AACustodianController_fetchTrustedContactsWithRequest_completion___block_invoke_48;
  v28[3] = &unk_1E7C9B078;
  v20 = v18;
  v29 = v20;
  v21 = [(AACustodianDaemonConnectionProviding *)daemonConnection remoteObjectProxyWithErrorHandler:v28];
  v22 = _AALogSystem();
  if (os_log_type_enabled(v22, OS_LOG_TYPE_DEFAULT))
  {
    *v27 = 0;
    _os_log_impl(&dword_1B6F6A000, v22, OS_LOG_TYPE_DEFAULT, "Fetching trusted contacts.", v27, 2u);
  }

  v25[0] = MEMORY[0x1E69E9820];
  v25[1] = 3221225472;
  v25[2] = __68__AACustodianController_fetchTrustedContactsWithRequest_completion___block_invoke_49;
  v25[3] = &unk_1E7C9B290;
  v23 = v20;
  v26 = v23;
  [v21 fetchTrustedContactsWithRequest:v6 completion:v25];

  _Block_object_dispose(&buf, 8);
  os_activity_scope_leave(&state);

  v24 = *MEMORY[0x1E69E9840];
}

void __68__AACustodianController_fetchTrustedContactsWithRequest_completion___block_invoke(void *a1, void *a2, void *a3)
{
  v27 = *MEMORY[0x1E69E9840];
  v5 = a2;
  v6 = a3;
  v7 = *(a1[5] + 8);
  v8 = *(v7 + 40);
  *(v7 + 40) = 0;

  Nanoseconds = _AASignpostGetNanoseconds(a1[6], a1[7]);
  v10 = _AASignpostLogSystem();
  v11 = v10;
  v12 = a1[6];
  if (v12 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v10))
  {
    v13 = _AAErrorUnderlyingError(v6);
    v21 = 67240192;
    LODWORD(v22) = [v13 code];
    _os_signpost_emit_with_name_impl(&dword_1B6F6A000, v11, OS_SIGNPOST_INTERVAL_END, v12, "FetchTrustedContacts", " Error=%{public,signpost.telemetry:number2,name=Error}d ", &v21, 8u);
  }

  v14 = _AASignpostLogSystem();
  if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
  {
    v15 = Nanoseconds / 1000000000.0;
    v16 = a1[6];
    v17 = _AAErrorUnderlyingError(v6);
    v18 = [v17 code];
    v21 = 134218496;
    v22 = v16;
    v23 = 2048;
    v24 = v15;
    v25 = 1026;
    v26 = v18;
    _os_log_impl(&dword_1B6F6A000, v14, OS_LOG_TYPE_DEFAULT, "END [%lld] %fs: FetchTrustedContacts  Error=%{public,signpost.telemetry:number2,name=Error}d ", &v21, 0x1Cu);
  }

  if (a1[4])
  {
    v19 = _AALogSystem();
    if (os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
    {
      v21 = 138412290;
      v22 = v5;
      _os_log_impl(&dword_1B6F6A000, v19, OS_LOG_TYPE_DEFAULT, "Fetched trusted contacts: %@", &v21, 0xCu);
    }

    (*(a1[4] + 16))();
  }

  v20 = *MEMORY[0x1E69E9840];
}

void __68__AACustodianController_fetchTrustedContactsWithRequest_completion___block_invoke_48(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = _AALogSystem();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
  {
    __68__AACustodianController_fetchTrustedContactsWithRequest_completion___block_invoke_48_cold_1();
  }

  (*(*(a1 + 32) + 16))();
}

void __68__AACustodianController_fetchTrustedContactsWithRequest_completion___block_invoke_49(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  if (v6)
  {
    v7 = _AALogSystem();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      __68__AACustodianController_fetchTrustedContactsWithRequest_completion___block_invoke_49_cold_1();
    }
  }

  (*(*(a1 + 32) + 16))();
}

- (void)fetchCustodianshipInfoWithCompletion:(id)a3
{
  v38 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = _os_activity_create(&dword_1B6F6A000, "custodian-appleaccount/fetch-custodianship-info", MEMORY[0x1E69E9C00], OS_ACTIVITY_FLAG_DEFAULT);
  state.opaque[0] = 0;
  state.opaque[1] = 0;
  os_activity_scope_enter(v5, &state);
  v6 = _AASignpostLogSystem();
  v7 = _AASignpostCreate(v6);
  v9 = v8;

  v10 = _AASignpostLogSystem();
  v11 = v10;
  if (v7 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v10))
  {
    LOWORD(buf) = 0;
    _os_signpost_emit_with_name_impl(&dword_1B6F6A000, v11, OS_SIGNPOST_INTERVAL_BEGIN, v7, "FetchCustodianshipInfo", " enableTelemetry=YES ", &buf, 2u);
  }

  v12 = _AASignpostLogSystem();
  if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
  {
    LODWORD(buf) = 134217984;
    *(&buf + 4) = v7;
    _os_log_impl(&dword_1B6F6A000, v12, OS_LOG_TYPE_DEFAULT, "BEGIN [%lld]: FetchCustodianshipInfo  enableTelemetry=YES ", &buf, 0xCu);
  }

  *&buf = 0;
  *(&buf + 1) = &buf;
  v34 = 0x3032000000;
  v35 = __Block_byref_object_copy__2;
  v36 = __Block_byref_object_dispose__2;
  v13 = self;
  v37 = v13;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 3221225472;
  aBlock[2] = __62__AACustodianController_fetchCustodianshipInfoWithCompletion___block_invoke;
  aBlock[3] = &unk_1E7C9B540;
  p_buf = &buf;
  v30 = v7;
  v31 = v9;
  v14 = v4;
  v28 = v14;
  v15 = _Block_copy(aBlock);
  daemonConnection = v13->_daemonConnection;
  v25[0] = MEMORY[0x1E69E9820];
  v25[1] = 3221225472;
  v25[2] = __62__AACustodianController_fetchCustodianshipInfoWithCompletion___block_invoke_50;
  v25[3] = &unk_1E7C9B078;
  v17 = v15;
  v26 = v17;
  v18 = [(AACustodianDaemonConnectionProviding *)daemonConnection remoteObjectProxyWithErrorHandler:v25];
  v19 = _AALogSystem();
  if (os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
  {
    *v24 = 0;
    _os_log_impl(&dword_1B6F6A000, v19, OS_LOG_TYPE_DEFAULT, "Fetching custodianship info.", v24, 2u);
  }

  v22[0] = MEMORY[0x1E69E9820];
  v22[1] = 3221225472;
  v22[2] = __62__AACustodianController_fetchCustodianshipInfoWithCompletion___block_invoke_51;
  v22[3] = &unk_1E7C9B290;
  v20 = v17;
  v23 = v20;
  [v18 fetchCustodianshipInfoWithCompletion:v22];

  _Block_object_dispose(&buf, 8);
  os_activity_scope_leave(&state);

  v21 = *MEMORY[0x1E69E9840];
}

void __62__AACustodianController_fetchCustodianshipInfoWithCompletion___block_invoke(void *a1, void *a2, void *a3)
{
  v27 = *MEMORY[0x1E69E9840];
  v5 = a2;
  v6 = a3;
  v7 = *(a1[5] + 8);
  v8 = *(v7 + 40);
  *(v7 + 40) = 0;

  Nanoseconds = _AASignpostGetNanoseconds(a1[6], a1[7]);
  v10 = _AASignpostLogSystem();
  v11 = v10;
  v12 = a1[6];
  if (v12 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v10))
  {
    v13 = _AAErrorUnderlyingError(v6);
    v21 = 67240192;
    LODWORD(v22) = [v13 code];
    _os_signpost_emit_with_name_impl(&dword_1B6F6A000, v11, OS_SIGNPOST_INTERVAL_END, v12, "FetchCustodianshipInfo", " Error=%{public,signpost.telemetry:number2,name=Error}d ", &v21, 8u);
  }

  v14 = _AASignpostLogSystem();
  if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
  {
    v15 = Nanoseconds / 1000000000.0;
    v16 = a1[6];
    v17 = _AAErrorUnderlyingError(v6);
    v18 = [v17 code];
    v21 = 134218496;
    v22 = v16;
    v23 = 2048;
    v24 = v15;
    v25 = 1026;
    v26 = v18;
    _os_log_impl(&dword_1B6F6A000, v14, OS_LOG_TYPE_DEFAULT, "END [%lld] %fs: FetchCustodianshipInfo  Error=%{public,signpost.telemetry:number2,name=Error}d ", &v21, 0x1Cu);
  }

  if (a1[4])
  {
    v19 = _AALogSystem();
    if (os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
    {
      v21 = 138412290;
      v22 = v5;
      _os_log_impl(&dword_1B6F6A000, v19, OS_LOG_TYPE_DEFAULT, "Fetched custodianship info: %@", &v21, 0xCu);
    }

    (*(a1[4] + 16))();
  }

  v20 = *MEMORY[0x1E69E9840];
}

void __62__AACustodianController_fetchCustodianshipInfoWithCompletion___block_invoke_50(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = _AALogSystem();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
  {
    __66__AACustodianController_stopBeingCustodianWithContext_completion___block_invoke_44_cold_1();
  }

  (*(*(a1 + 32) + 16))();
}

void __62__AACustodianController_fetchCustodianshipInfoWithCompletion___block_invoke_51(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  if (v6)
  {
    v7 = _AALogSystem();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      __62__AACustodianController_fetchCustodianshipInfoWithCompletion___block_invoke_51_cold_1();
    }
  }

  (*(*(a1 + 32) + 16))();
}

- (void)fetchCustodianshipInfoWithUUID:(id)a3 completion:(id)a4
{
  v41 = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = a4;
  v8 = _os_activity_create(&dword_1B6F6A000, "custodian-appleaccount/fetch-custodianship-info-with-uuid", MEMORY[0x1E69E9C00], OS_ACTIVITY_FLAG_DEFAULT);
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
    _os_signpost_emit_with_name_impl(&dword_1B6F6A000, v14, OS_SIGNPOST_INTERVAL_BEGIN, v10, "FetchCustodianshipInfoWithUUID", " enableTelemetry=YES ", &buf, 2u);
  }

  v15 = _AASignpostLogSystem();
  if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
  {
    LODWORD(buf) = 134217984;
    *(&buf + 4) = v10;
    _os_log_impl(&dword_1B6F6A000, v15, OS_LOG_TYPE_DEFAULT, "BEGIN [%lld]: FetchCustodianshipInfoWithUUID  enableTelemetry=YES ", &buf, 0xCu);
  }

  *&buf = 0;
  *(&buf + 1) = &buf;
  v37 = 0x3032000000;
  v38 = __Block_byref_object_copy__2;
  v39 = __Block_byref_object_dispose__2;
  v16 = self;
  v40 = v16;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 3221225472;
  aBlock[2] = __67__AACustodianController_fetchCustodianshipInfoWithUUID_completion___block_invoke;
  aBlock[3] = &unk_1E7C9B568;
  p_buf = &buf;
  v33 = v10;
  v34 = v12;
  v17 = v7;
  v31 = v17;
  v18 = _Block_copy(aBlock);
  daemonConnection = v16->_daemonConnection;
  v28[0] = MEMORY[0x1E69E9820];
  v28[1] = 3221225472;
  v28[2] = __67__AACustodianController_fetchCustodianshipInfoWithUUID_completion___block_invoke_53;
  v28[3] = &unk_1E7C9B078;
  v20 = v18;
  v29 = v20;
  v21 = [(AACustodianDaemonConnectionProviding *)daemonConnection remoteObjectProxyWithErrorHandler:v28];
  v22 = _AALogSystem();
  if (os_log_type_enabled(v22, OS_LOG_TYPE_DEFAULT))
  {
    *v27 = 0;
    _os_log_impl(&dword_1B6F6A000, v22, OS_LOG_TYPE_DEFAULT, "Fetching custodianship info.", v27, 2u);
  }

  v25[0] = MEMORY[0x1E69E9820];
  v25[1] = 3221225472;
  v25[2] = __67__AACustodianController_fetchCustodianshipInfoWithUUID_completion___block_invoke_54;
  v25[3] = &unk_1E7C9B590;
  v23 = v20;
  v26 = v23;
  [v21 fetchCustodianshipInfoWithUUID:v6 completion:v25];

  _Block_object_dispose(&buf, 8);
  os_activity_scope_leave(&state);

  v24 = *MEMORY[0x1E69E9840];
}

void __67__AACustodianController_fetchCustodianshipInfoWithUUID_completion___block_invoke(void *a1, void *a2, void *a3)
{
  v27 = *MEMORY[0x1E69E9840];
  v5 = a2;
  v6 = a3;
  v7 = *(a1[5] + 8);
  v8 = *(v7 + 40);
  *(v7 + 40) = 0;

  Nanoseconds = _AASignpostGetNanoseconds(a1[6], a1[7]);
  v10 = _AASignpostLogSystem();
  v11 = v10;
  v12 = a1[6];
  if (v12 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v10))
  {
    v13 = _AAErrorUnderlyingError(v6);
    v21 = 67240192;
    LODWORD(v22) = [v13 code];
    _os_signpost_emit_with_name_impl(&dword_1B6F6A000, v11, OS_SIGNPOST_INTERVAL_END, v12, "FetchCustodianshipInfoWithUUID", " Error=%{public,signpost.telemetry:number2,name=Error}d ", &v21, 8u);
  }

  v14 = _AASignpostLogSystem();
  if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
  {
    v15 = Nanoseconds / 1000000000.0;
    v16 = a1[6];
    v17 = _AAErrorUnderlyingError(v6);
    v18 = [v17 code];
    v21 = 134218496;
    v22 = v16;
    v23 = 2048;
    v24 = v15;
    v25 = 1026;
    v26 = v18;
    _os_log_impl(&dword_1B6F6A000, v14, OS_LOG_TYPE_DEFAULT, "END [%lld] %fs: FetchCustodianshipInfoWithUUID  Error=%{public,signpost.telemetry:number2,name=Error}d ", &v21, 0x1Cu);
  }

  if (a1[4])
  {
    v19 = _AALogSystem();
    if (os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
    {
      v21 = 138412290;
      v22 = v5;
      _os_log_impl(&dword_1B6F6A000, v19, OS_LOG_TYPE_DEFAULT, "Fetched custodianship info: %@", &v21, 0xCu);
    }

    (*(a1[4] + 16))();
  }

  v20 = *MEMORY[0x1E69E9840];
}

void __67__AACustodianController_fetchCustodianshipInfoWithUUID_completion___block_invoke_53(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = _AALogSystem();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
  {
    __66__AACustodianController_stopBeingCustodianWithContext_completion___block_invoke_44_cold_1();
  }

  (*(*(a1 + 32) + 16))();
}

void __67__AACustodianController_fetchCustodianshipInfoWithUUID_completion___block_invoke_54(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  if (v6)
  {
    v7 = _AALogSystem();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      __62__AACustodianController_fetchCustodianshipInfoWithCompletion___block_invoke_51_cold_1();
    }
  }

  (*(*(a1 + 32) + 16))();
}

- (void)fetchSuggestedCustodiansWithCompletion:(id)a3
{
  v38 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = _os_activity_create(&dword_1B6F6A000, "custodian-appleaccount/fetch-suggested-custodians", MEMORY[0x1E69E9C00], OS_ACTIVITY_FLAG_DEFAULT);
  state.opaque[0] = 0;
  state.opaque[1] = 0;
  os_activity_scope_enter(v5, &state);
  v6 = _AASignpostLogSystem();
  v7 = _AASignpostCreate(v6);
  v9 = v8;

  v10 = _AASignpostLogSystem();
  v11 = v10;
  if (v7 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v10))
  {
    LOWORD(buf) = 0;
    _os_signpost_emit_with_name_impl(&dword_1B6F6A000, v11, OS_SIGNPOST_INTERVAL_BEGIN, v7, "FetchSuggestedCustodians", " enableTelemetry=YES ", &buf, 2u);
  }

  v12 = _AASignpostLogSystem();
  if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
  {
    LODWORD(buf) = 134217984;
    *(&buf + 4) = v7;
    _os_log_impl(&dword_1B6F6A000, v12, OS_LOG_TYPE_DEFAULT, "BEGIN [%lld]: FetchSuggestedCustodians  enableTelemetry=YES ", &buf, 0xCu);
  }

  *&buf = 0;
  *(&buf + 1) = &buf;
  v34 = 0x3032000000;
  v35 = __Block_byref_object_copy__2;
  v36 = __Block_byref_object_dispose__2;
  v13 = self;
  v37 = v13;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 3221225472;
  aBlock[2] = __64__AACustodianController_fetchSuggestedCustodiansWithCompletion___block_invoke;
  aBlock[3] = &unk_1E7C9B540;
  p_buf = &buf;
  v30 = v7;
  v31 = v9;
  v14 = v4;
  v28 = v14;
  v15 = _Block_copy(aBlock);
  daemonConnection = v13->_daemonConnection;
  v25[0] = MEMORY[0x1E69E9820];
  v25[1] = 3221225472;
  v25[2] = __64__AACustodianController_fetchSuggestedCustodiansWithCompletion___block_invoke_55;
  v25[3] = &unk_1E7C9B078;
  v17 = v15;
  v26 = v17;
  v18 = [(AACustodianDaemonConnectionProviding *)daemonConnection remoteObjectProxyWithErrorHandler:v25];
  v19 = _AALogSystem();
  if (os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
  {
    *v24 = 0;
    _os_log_impl(&dword_1B6F6A000, v19, OS_LOG_TYPE_DEFAULT, "Fetching suggested custodians.", v24, 2u);
  }

  v22[0] = MEMORY[0x1E69E9820];
  v22[1] = 3221225472;
  v22[2] = __64__AACustodianController_fetchSuggestedCustodiansWithCompletion___block_invoke_56;
  v22[3] = &unk_1E7C9B290;
  v20 = v17;
  v23 = v20;
  [v18 fetchSuggestedCustodiansWithCompletion:v22];

  _Block_object_dispose(&buf, 8);
  os_activity_scope_leave(&state);

  v21 = *MEMORY[0x1E69E9840];
}

void __64__AACustodianController_fetchSuggestedCustodiansWithCompletion___block_invoke(void *a1, void *a2, void *a3)
{
  v27 = *MEMORY[0x1E69E9840];
  v5 = a2;
  v6 = a3;
  v7 = *(a1[5] + 8);
  v8 = *(v7 + 40);
  *(v7 + 40) = 0;

  Nanoseconds = _AASignpostGetNanoseconds(a1[6], a1[7]);
  v10 = _AASignpostLogSystem();
  v11 = v10;
  v12 = a1[6];
  if (v12 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v10))
  {
    v13 = _AAErrorUnderlyingError(v6);
    v21 = 67240192;
    LODWORD(v22) = [v13 code];
    _os_signpost_emit_with_name_impl(&dword_1B6F6A000, v11, OS_SIGNPOST_INTERVAL_END, v12, "FetchSuggestedCustodians", " Error=%{public,signpost.telemetry:number2,name=Error}d ", &v21, 8u);
  }

  v14 = _AASignpostLogSystem();
  if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
  {
    v15 = Nanoseconds / 1000000000.0;
    v16 = a1[6];
    v17 = _AAErrorUnderlyingError(v6);
    v18 = [v17 code];
    v21 = 134218496;
    v22 = v16;
    v23 = 2048;
    v24 = v15;
    v25 = 1026;
    v26 = v18;
    _os_log_impl(&dword_1B6F6A000, v14, OS_LOG_TYPE_DEFAULT, "END [%lld] %fs: FetchSuggestedCustodians  Error=%{public,signpost.telemetry:number2,name=Error}d ", &v21, 0x1Cu);
  }

  if (a1[4])
  {
    v19 = _AALogSystem();
    if (os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
    {
      v21 = 138412290;
      v22 = v5;
      _os_log_impl(&dword_1B6F6A000, v19, OS_LOG_TYPE_DEFAULT, "Fetched suggested custodians: %@", &v21, 0xCu);
    }

    (*(a1[4] + 16))();
  }

  v20 = *MEMORY[0x1E69E9840];
}

void __64__AACustodianController_fetchSuggestedCustodiansWithCompletion___block_invoke_55(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = _AALogSystem();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
  {
    __66__AACustodianController_stopBeingCustodianWithContext_completion___block_invoke_44_cold_1();
  }

  (*(*(a1 + 32) + 16))();
}

void __64__AACustodianController_fetchSuggestedCustodiansWithCompletion___block_invoke_56(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  if (v6)
  {
    v7 = _AALogSystem();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      __64__AACustodianController_fetchSuggestedCustodiansWithCompletion___block_invoke_56_cold_1();
    }
  }

  (*(*(a1 + 32) + 16))();
}

- (void)fetchSuggestedCustodiansForUpsellWithTelemetryFlowID:(id)a3 completion:(id)a4
{
  v41 = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = a4;
  v8 = _os_activity_create(&dword_1B6F6A000, "custodian-appleaccount/fetch-suggested-custodians-for-upsell", MEMORY[0x1E69E9C00], OS_ACTIVITY_FLAG_DEFAULT);
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
    _os_signpost_emit_with_name_impl(&dword_1B6F6A000, v14, OS_SIGNPOST_INTERVAL_BEGIN, v10, "FetchSuggestedCustodiansForUpsell", " enableTelemetry=YES ", &buf, 2u);
  }

  v15 = _AASignpostLogSystem();
  if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
  {
    LODWORD(buf) = 134217984;
    *(&buf + 4) = v10;
    _os_log_impl(&dword_1B6F6A000, v15, OS_LOG_TYPE_DEFAULT, "BEGIN [%lld]: FetchSuggestedCustodiansForUpsell  enableTelemetry=YES ", &buf, 0xCu);
  }

  *&buf = 0;
  *(&buf + 1) = &buf;
  v37 = 0x3032000000;
  v38 = __Block_byref_object_copy__2;
  v39 = __Block_byref_object_dispose__2;
  v16 = self;
  v40 = v16;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 3221225472;
  aBlock[2] = __89__AACustodianController_fetchSuggestedCustodiansForUpsellWithTelemetryFlowID_completion___block_invoke;
  aBlock[3] = &unk_1E7C9B540;
  p_buf = &buf;
  v33 = v10;
  v34 = v12;
  v17 = v7;
  v31 = v17;
  v18 = _Block_copy(aBlock);
  daemonConnection = v16->_daemonConnection;
  v28[0] = MEMORY[0x1E69E9820];
  v28[1] = 3221225472;
  v28[2] = __89__AACustodianController_fetchSuggestedCustodiansForUpsellWithTelemetryFlowID_completion___block_invoke_57;
  v28[3] = &unk_1E7C9B078;
  v20 = v18;
  v29 = v20;
  v21 = [(AACustodianDaemonConnectionProviding *)daemonConnection remoteObjectProxyWithErrorHandler:v28];
  v22 = _AALogSystem();
  if (os_log_type_enabled(v22, OS_LOG_TYPE_DEFAULT))
  {
    *v27 = 0;
    _os_log_impl(&dword_1B6F6A000, v22, OS_LOG_TYPE_DEFAULT, "Fetching suggested custodians for upsell .", v27, 2u);
  }

  v25[0] = MEMORY[0x1E69E9820];
  v25[1] = 3221225472;
  v25[2] = __89__AACustodianController_fetchSuggestedCustodiansForUpsellWithTelemetryFlowID_completion___block_invoke_58;
  v25[3] = &unk_1E7C9B290;
  v23 = v20;
  v26 = v23;
  [v21 fetchSuggestedCustodiansForUpsellWithTelemetryFlowID:v6 completion:v25];

  _Block_object_dispose(&buf, 8);
  os_activity_scope_leave(&state);

  v24 = *MEMORY[0x1E69E9840];
}

void __89__AACustodianController_fetchSuggestedCustodiansForUpsellWithTelemetryFlowID_completion___block_invoke(void *a1, void *a2, void *a3)
{
  v27 = *MEMORY[0x1E69E9840];
  v5 = a2;
  v6 = a3;
  v7 = *(a1[5] + 8);
  v8 = *(v7 + 40);
  *(v7 + 40) = 0;

  Nanoseconds = _AASignpostGetNanoseconds(a1[6], a1[7]);
  v10 = _AASignpostLogSystem();
  v11 = v10;
  v12 = a1[6];
  if (v12 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v10))
  {
    v13 = _AAErrorUnderlyingError(v6);
    v21 = 67240192;
    LODWORD(v22) = [v13 code];
    _os_signpost_emit_with_name_impl(&dword_1B6F6A000, v11, OS_SIGNPOST_INTERVAL_END, v12, "FetchSuggestedCustodiansForUpsell", " Error=%{public,signpost.telemetry:number2,name=Error}d ", &v21, 8u);
  }

  v14 = _AASignpostLogSystem();
  if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
  {
    v15 = Nanoseconds / 1000000000.0;
    v16 = a1[6];
    v17 = _AAErrorUnderlyingError(v6);
    v18 = [v17 code];
    v21 = 134218496;
    v22 = v16;
    v23 = 2048;
    v24 = v15;
    v25 = 1026;
    v26 = v18;
    _os_log_impl(&dword_1B6F6A000, v14, OS_LOG_TYPE_DEFAULT, "END [%lld] %fs: FetchSuggestedCustodiansForUpsell  Error=%{public,signpost.telemetry:number2,name=Error}d ", &v21, 0x1Cu);
  }

  if (a1[4])
  {
    v19 = _AALogSystem();
    if (os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
    {
      v21 = 138412290;
      v22 = v5;
      _os_log_impl(&dword_1B6F6A000, v19, OS_LOG_TYPE_DEFAULT, "Fetched suggested custodians for upsell: %@", &v21, 0xCu);
    }

    (*(a1[4] + 16))();
  }

  v20 = *MEMORY[0x1E69E9840];
}

void __89__AACustodianController_fetchSuggestedCustodiansForUpsellWithTelemetryFlowID_completion___block_invoke_57(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = _AALogSystem();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
  {
    __66__AACustodianController_stopBeingCustodianWithContext_completion___block_invoke_44_cold_1();
  }

  (*(*(a1 + 32) + 16))();
}

void __89__AACustodianController_fetchSuggestedCustodiansForUpsellWithTelemetryFlowID_completion___block_invoke_58(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  if (v6)
  {
    v7 = _AALogSystem();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      __89__AACustodianController_fetchSuggestedCustodiansForUpsellWithTelemetryFlowID_completion___block_invoke_58_cold_1();
    }
  }

  (*(*(a1 + 32) + 16))();
}

- (void)fetchCustodianHealthStatusWithCompletion:(id)a3
{
  v38 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = _os_activity_create(&dword_1B6F6A000, "custodian-appleaccount/fetch-custodian-health", MEMORY[0x1E69E9C00], OS_ACTIVITY_FLAG_DEFAULT);
  state.opaque[0] = 0;
  state.opaque[1] = 0;
  os_activity_scope_enter(v5, &state);
  v6 = _AASignpostLogSystem();
  v7 = _AASignpostCreate(v6);
  v9 = v8;

  v10 = _AASignpostLogSystem();
  v11 = v10;
  if (v7 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v10))
  {
    LOWORD(buf) = 0;
    _os_signpost_emit_with_name_impl(&dword_1B6F6A000, v11, OS_SIGNPOST_INTERVAL_BEGIN, v7, "FetchCustodianHealthStatus", " enableTelemetry=YES ", &buf, 2u);
  }

  v12 = _AASignpostLogSystem();
  if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
  {
    LODWORD(buf) = 134217984;
    *(&buf + 4) = v7;
    _os_log_impl(&dword_1B6F6A000, v12, OS_LOG_TYPE_DEFAULT, "BEGIN [%lld]: FetchCustodianHealthStatus  enableTelemetry=YES ", &buf, 0xCu);
  }

  *&buf = 0;
  *(&buf + 1) = &buf;
  v34 = 0x3032000000;
  v35 = __Block_byref_object_copy__2;
  v36 = __Block_byref_object_dispose__2;
  v13 = self;
  v37 = v13;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 3221225472;
  aBlock[2] = __66__AACustodianController_fetchCustodianHealthStatusWithCompletion___block_invoke;
  aBlock[3] = &unk_1E7C9B540;
  p_buf = &buf;
  v30 = v7;
  v31 = v9;
  v14 = v4;
  v28 = v14;
  v15 = _Block_copy(aBlock);
  daemonConnection = v13->_daemonConnection;
  v25[0] = MEMORY[0x1E69E9820];
  v25[1] = 3221225472;
  v25[2] = __66__AACustodianController_fetchCustodianHealthStatusWithCompletion___block_invoke_59;
  v25[3] = &unk_1E7C9B078;
  v17 = v15;
  v26 = v17;
  v18 = [(AACustodianDaemonConnectionProviding *)daemonConnection remoteObjectProxyWithErrorHandler:v25];
  v19 = _AALogSystem();
  if (os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
  {
    *v24 = 0;
    _os_log_impl(&dword_1B6F6A000, v19, OS_LOG_TYPE_DEFAULT, "Fetching custodian health status.", v24, 2u);
  }

  v22[0] = MEMORY[0x1E69E9820];
  v22[1] = 3221225472;
  v22[2] = __66__AACustodianController_fetchCustodianHealthStatusWithCompletion___block_invoke_60;
  v22[3] = &unk_1E7C9B290;
  v20 = v17;
  v23 = v20;
  [v18 fetchCustodianHealthStatusWithCompletion:v22];

  _Block_object_dispose(&buf, 8);
  os_activity_scope_leave(&state);

  v21 = *MEMORY[0x1E69E9840];
}

void __66__AACustodianController_fetchCustodianHealthStatusWithCompletion___block_invoke(void *a1, void *a2, void *a3)
{
  v27 = *MEMORY[0x1E69E9840];
  v5 = a2;
  v6 = a3;
  v7 = *(a1[5] + 8);
  v8 = *(v7 + 40);
  *(v7 + 40) = 0;

  Nanoseconds = _AASignpostGetNanoseconds(a1[6], a1[7]);
  v10 = _AASignpostLogSystem();
  v11 = v10;
  v12 = a1[6];
  if (v12 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v10))
  {
    v13 = _AAErrorUnderlyingError(v6);
    v21 = 67240192;
    LODWORD(v22) = [v13 code];
    _os_signpost_emit_with_name_impl(&dword_1B6F6A000, v11, OS_SIGNPOST_INTERVAL_END, v12, "FetchCustodianHealthStatus", " Error=%{public,signpost.telemetry:number2,name=Error}d ", &v21, 8u);
  }

  v14 = _AASignpostLogSystem();
  if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
  {
    v15 = Nanoseconds / 1000000000.0;
    v16 = a1[6];
    v17 = _AAErrorUnderlyingError(v6);
    v18 = [v17 code];
    v21 = 134218496;
    v22 = v16;
    v23 = 2048;
    v24 = v15;
    v25 = 1026;
    v26 = v18;
    _os_log_impl(&dword_1B6F6A000, v14, OS_LOG_TYPE_DEFAULT, "END [%lld] %fs: FetchCustodianHealthStatus  Error=%{public,signpost.telemetry:number2,name=Error}d ", &v21, 0x1Cu);
  }

  if (a1[4])
  {
    v19 = _AALogSystem();
    if (os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
    {
      v21 = 138412290;
      v22 = v5;
      _os_log_impl(&dword_1B6F6A000, v19, OS_LOG_TYPE_DEFAULT, "Fetched health info: %@", &v21, 0xCu);
    }

    (*(a1[4] + 16))();
  }

  v20 = *MEMORY[0x1E69E9840];
}

void __66__AACustodianController_fetchCustodianHealthStatusWithCompletion___block_invoke_59(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = _AALogSystem();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
  {
    __66__AACustodianController_stopBeingCustodianWithContext_completion___block_invoke_44_cold_1();
  }

  (*(*(a1 + 32) + 16))();
}

void __66__AACustodianController_fetchCustodianHealthStatusWithCompletion___block_invoke_60(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  if (v6)
  {
    v7 = _AALogSystem();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      __66__AACustodianController_fetchCustodianHealthStatusWithCompletion___block_invoke_60_cold_1();
    }
  }

  (*(*(a1 + 32) + 16))();
}

- (void)startCustodianRecoveryWithContext:(id)a3 completion:(id)a4
{
  v47 = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = a4;
  v8 = _os_activity_create(&dword_1B6F6A000, "custodian-appleaccount/start-recovery", MEMORY[0x1E69E9C00], OS_ACTIVITY_FLAG_DEFAULT);
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
    _os_signpost_emit_with_name_impl(&dword_1B6F6A000, v14, OS_SIGNPOST_INTERVAL_BEGIN, v10, "StartCustodianRecovery", " enableTelemetry=YES ", &buf, 2u);
  }

  v15 = _AASignpostLogSystem();
  if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
  {
    LODWORD(buf) = 134217984;
    *(&buf + 4) = v10;
    _os_log_impl(&dword_1B6F6A000, v15, OS_LOG_TYPE_DEFAULT, "BEGIN [%lld]: StartCustodianRecovery  enableTelemetry=YES ", &buf, 0xCu);
  }

  v16 = self->_analyticsReporter;
  v17 = MEMORY[0x1E6985DB0];
  v18 = [v6 altDSID];
  v19 = [v6 telemetryFlowID];
  v20 = [v17 analyticsEventWithName:@"com.apple.appleaccount.custodian.recovery.ownerCreateSession" altDSID:v18 flowID:v19];

  *&buf = 0;
  *(&buf + 1) = &buf;
  v43 = 0x3032000000;
  v44 = __Block_byref_object_copy__2;
  v45 = __Block_byref_object_dispose__2;
  v21 = self;
  v46 = v21;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 3221225472;
  aBlock[2] = __70__AACustodianController_startCustodianRecoveryWithContext_completion___block_invoke;
  aBlock[3] = &unk_1E7C9B5B8;
  v22 = v20;
  v35 = v22;
  v23 = v16;
  v36 = v23;
  p_buf = &buf;
  v39 = v10;
  v40 = v12;
  v24 = v7;
  v37 = v24;
  v25 = _Block_copy(aBlock);
  daemonConnection = v21->_daemonConnection;
  v32[0] = MEMORY[0x1E69E9820];
  v32[1] = 3221225472;
  v32[2] = __70__AACustodianController_startCustodianRecoveryWithContext_completion___block_invoke_62;
  v32[3] = &unk_1E7C9B078;
  v27 = v25;
  v33 = v27;
  v28 = [(AACustodianDaemonConnectionProviding *)daemonConnection remoteObjectProxyWithErrorHandler:v32];
  v29 = _AALogSystem();
  if (os_log_type_enabled(v29, OS_LOG_TYPE_DEFAULT))
  {
    v31 = 0;
    _os_log_impl(&dword_1B6F6A000, v29, OS_LOG_TYPE_DEFAULT, "Initiating custodian recovery request.", &v31, 2u);
  }

  [v28 startCustodianRecoveryWithContext:v6 completion:v27];
  _Block_object_dispose(&buf, 8);

  os_activity_scope_leave(&state);
  v30 = *MEMORY[0x1E69E9840];
}

void __70__AACustodianController_startCustodianRecoveryWithContext_completion___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v29 = *MEMORY[0x1E69E9840];
  v5 = a2;
  v6 = a3;
  [*(a1 + 32) updateTaskResultWithError:v6];
  [*(a1 + 40) sendEvent:*(a1 + 32)];
  v7 = *(*(a1 + 56) + 8);
  v8 = *(v7 + 40);
  *(v7 + 40) = 0;

  Nanoseconds = _AASignpostGetNanoseconds(*(a1 + 64), *(a1 + 72));
  v10 = _AASignpostLogSystem();
  v11 = v10;
  v12 = *(a1 + 64);
  if (v12 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v10))
  {
    v13 = _AAErrorUnderlyingError(v6);
    v23 = 67240192;
    LODWORD(v24) = [v13 code];
    _os_signpost_emit_with_name_impl(&dword_1B6F6A000, v11, OS_SIGNPOST_INTERVAL_END, v12, "StartCustodianRecovery", " Error=%{public,signpost.telemetry:number2,name=Error}d ", &v23, 8u);
  }

  v14 = _AASignpostLogSystem();
  if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
  {
    v15 = Nanoseconds / 1000000000.0;
    v16 = *(a1 + 64);
    v17 = _AAErrorUnderlyingError(v6);
    v18 = [v17 code];
    v23 = 134218496;
    v24 = v16;
    v25 = 2048;
    v26 = v15;
    v27 = 1026;
    v28 = v18;
    _os_log_impl(&dword_1B6F6A000, v14, OS_LOG_TYPE_DEFAULT, "END [%lld] %fs: StartCustodianRecovery  Error=%{public,signpost.telemetry:number2,name=Error}d ", &v23, 0x1Cu);
  }

  v19 = _AALogSystem();
  v20 = v19;
  if (v5)
  {
    if (os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
    {
      v23 = 138412290;
      v24 = v5;
      _os_log_impl(&dword_1B6F6A000, v20, OS_LOG_TYPE_DEFAULT, "Custodian recovery started successfully with recovery ID: %@", &v23, 0xCu);
    }
  }

  else if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
  {
    __70__AACustodianController_startCustodianRecoveryWithContext_completion___block_invoke_cold_1();
  }

  v21 = *(a1 + 48);
  if (v21)
  {
    (*(v21 + 16))(v21, v5, v6);
  }

  v22 = *MEMORY[0x1E69E9840];
}

void __70__AACustodianController_startCustodianRecoveryWithContext_completion___block_invoke_62(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = _AALogSystem();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
  {
    __70__AACustodianController_startCustodianRecoveryWithContext_completion___block_invoke_62_cold_1();
  }

  (*(*(a1 + 32) + 16))();
}

- (void)fetchCustodianRecoveryConfigurationWithCompletion:(id)a3
{
  v35 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = _os_activity_create(&dword_1B6F6A000, "custodian-appleaccount/fetch-configuration", MEMORY[0x1E69E9C00], OS_ACTIVITY_FLAG_DEFAULT);
  state.opaque[0] = 0;
  state.opaque[1] = 0;
  os_activity_scope_enter(v5, &state);
  v6 = _AASignpostLogSystem();
  v7 = _AASignpostCreate(v6);
  v9 = v8;

  v10 = _AASignpostLogSystem();
  v11 = v10;
  if (v7 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v10))
  {
    LOWORD(buf) = 0;
    _os_signpost_emit_with_name_impl(&dword_1B6F6A000, v11, OS_SIGNPOST_INTERVAL_BEGIN, v7, "FetchCustodianRecoveryConfiguration", " enableTelemetry=YES ", &buf, 2u);
  }

  v12 = _AASignpostLogSystem();
  if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
  {
    LODWORD(buf) = 134217984;
    *(&buf + 4) = v7;
    _os_log_impl(&dword_1B6F6A000, v12, OS_LOG_TYPE_DEFAULT, "BEGIN [%lld]: FetchCustodianRecoveryConfiguration  enableTelemetry=YES ", &buf, 0xCu);
  }

  *&buf = 0;
  *(&buf + 1) = &buf;
  v31 = 0x3032000000;
  v32 = __Block_byref_object_copy__2;
  v33 = __Block_byref_object_dispose__2;
  v13 = self;
  v34 = v13;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 3221225472;
  aBlock[2] = __75__AACustodianController_fetchCustodianRecoveryConfigurationWithCompletion___block_invoke;
  aBlock[3] = &unk_1E7C9B5E0;
  p_buf = &buf;
  v27 = v7;
  v28 = v9;
  v14 = v4;
  v25 = v14;
  v15 = _Block_copy(aBlock);
  daemonConnection = v13->_daemonConnection;
  v22[0] = MEMORY[0x1E69E9820];
  v22[1] = 3221225472;
  v22[2] = __75__AACustodianController_fetchCustodianRecoveryConfigurationWithCompletion___block_invoke_64;
  v22[3] = &unk_1E7C9B078;
  v17 = v15;
  v23 = v17;
  v18 = [(AACustodianDaemonConnectionProviding *)daemonConnection remoteObjectProxyWithErrorHandler:v22];
  v19 = _AALogSystem();
  if (os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
  {
    *v21 = 0;
    _os_log_impl(&dword_1B6F6A000, v19, OS_LOG_TYPE_DEFAULT, "Fetching custodian configuration.", v21, 2u);
  }

  [v18 fetchCustodianRecoveryConfigurationWithCompletion:v17];
  _Block_object_dispose(&buf, 8);

  os_activity_scope_leave(&state);
  v20 = *MEMORY[0x1E69E9840];
}

void __75__AACustodianController_fetchCustodianRecoveryConfigurationWithCompletion___block_invoke(void *a1, void *a2, void *a3)
{
  v29 = *MEMORY[0x1E69E9840];
  v5 = a2;
  v6 = a3;
  v7 = *(a1[5] + 8);
  v8 = *(v7 + 40);
  *(v7 + 40) = 0;

  Nanoseconds = _AASignpostGetNanoseconds(a1[6], a1[7]);
  v10 = _AASignpostLogSystem();
  v11 = v10;
  v12 = a1[6];
  if (v12 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v10))
  {
    v13 = _AAErrorUnderlyingError(v6);
    v23 = 67240192;
    LODWORD(v24) = [v13 code];
    _os_signpost_emit_with_name_impl(&dword_1B6F6A000, v11, OS_SIGNPOST_INTERVAL_END, v12, "FetchCustodianRecoveryConfiguration", " Error=%{public,signpost.telemetry:number2,name=Error}d ", &v23, 8u);
  }

  v14 = _AASignpostLogSystem();
  if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
  {
    v15 = Nanoseconds / 1000000000.0;
    v16 = a1[6];
    v17 = _AAErrorUnderlyingError(v6);
    v18 = [v17 code];
    v23 = 134218496;
    v24 = v16;
    v25 = 2048;
    v26 = v15;
    v27 = 1026;
    v28 = v18;
    _os_log_impl(&dword_1B6F6A000, v14, OS_LOG_TYPE_DEFAULT, "END [%lld] %fs: FetchCustodianRecoveryConfiguration  Error=%{public,signpost.telemetry:number2,name=Error}d ", &v23, 0x1Cu);
  }

  v19 = _AALogSystem();
  v20 = v19;
  if (v5)
  {
    if (os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
    {
      v23 = 138412290;
      v24 = v5;
      _os_log_impl(&dword_1B6F6A000, v20, OS_LOG_TYPE_DEFAULT, "Custodian recovery configuration fetched successfully with configuration: %@", &v23, 0xCu);
    }
  }

  else if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
  {
    __75__AACustodianController_fetchCustodianRecoveryConfigurationWithCompletion___block_invoke_cold_1();
  }

  v21 = a1[4];
  if (v21)
  {
    (*(v21 + 16))(v21, v5, v6);
  }

  v22 = *MEMORY[0x1E69E9840];
}

void __75__AACustodianController_fetchCustodianRecoveryConfigurationWithCompletion___block_invoke_64(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = _AALogSystem();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
  {
    __75__AACustodianController_fetchCustodianRecoveryConfigurationWithCompletion___block_invoke_64_cold_1();
  }

  (*(*(a1 + 32) + 16))();
}

- (void)generateCustodianRecoveryCodeWithContext:(id)a3 completion:(id)a4
{
  v47 = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = a4;
  v8 = _os_activity_create(&dword_1B6F6A000, "custodian-appleaccount/generate-code", MEMORY[0x1E69E9C00], OS_ACTIVITY_FLAG_DEFAULT);
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
    _os_signpost_emit_with_name_impl(&dword_1B6F6A000, v14, OS_SIGNPOST_INTERVAL_BEGIN, v10, "GenerateCustodianRecoveryCode", " enableTelemetry=YES ", &buf, 2u);
  }

  v15 = _AASignpostLogSystem();
  if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
  {
    LODWORD(buf) = 134217984;
    *(&buf + 4) = v10;
    _os_log_impl(&dword_1B6F6A000, v15, OS_LOG_TYPE_DEFAULT, "BEGIN [%lld]: GenerateCustodianRecoveryCode  enableTelemetry=YES ", &buf, 0xCu);
  }

  *&buf = 0;
  *(&buf + 1) = &buf;
  v43 = 0x3032000000;
  v44 = __Block_byref_object_copy__2;
  v45 = __Block_byref_object_dispose__2;
  v16 = self;
  v46 = v16;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 3221225472;
  aBlock[2] = __77__AACustodianController_generateCustodianRecoveryCodeWithContext_completion___block_invoke;
  aBlock[3] = &unk_1E7C9B608;
  p_buf = &buf;
  v39 = v10;
  v40 = v12;
  v17 = v6;
  v36 = v17;
  v18 = v7;
  v37 = v18;
  v19 = _Block_copy(aBlock);
  objc_initWeak(&location, v16);
  v31[0] = MEMORY[0x1E69E9820];
  v31[1] = 3221225472;
  v31[2] = __77__AACustodianController_generateCustodianRecoveryCodeWithContext_completion___block_invoke_65;
  v31[3] = &unk_1E7C9B630;
  objc_copyWeak(&v33, &location);
  v20 = v17;
  v32 = v20;
  v21 = _Block_copy(v31);
  v22 = [objc_alloc(MEMORY[0x1E6985E78]) initWithMaxRetries:1];
  v23 = _AALogSystem();
  if (os_log_type_enabled(v23, OS_LOG_TYPE_DEFAULT))
  {
    *v30 = 0;
    _os_log_impl(&dword_1B6F6A000, v23, OS_LOG_TYPE_DEFAULT, "Scheduling recovery code generation through retry scheduler", v30, 2u);
  }

  v27[0] = MEMORY[0x1E69E9820];
  v27[1] = 3221225472;
  v27[2] = __77__AACustodianController_generateCustodianRecoveryCodeWithContext_completion___block_invoke_68;
  v27[3] = &unk_1E7C9B658;
  v24 = v19;
  v29 = v24;
  v25 = v22;
  v28 = v25;
  [v25 scheduleTask:v21 shouldRetry:0 completionHandler:v27];

  objc_destroyWeak(&v33);
  objc_destroyWeak(&location);

  _Block_object_dispose(&buf, 8);
  os_activity_scope_leave(&state);

  v26 = *MEMORY[0x1E69E9840];
}

void __77__AACustodianController_generateCustodianRecoveryCodeWithContext_completion___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v31 = *MEMORY[0x1E69E9840];
  v5 = a2;
  v6 = a3;
  v7 = *(*(a1 + 48) + 8);
  v8 = *(v7 + 40);
  *(v7 + 40) = 0;

  Nanoseconds = _AASignpostGetNanoseconds(*(a1 + 56), *(a1 + 64));
  v10 = _AASignpostLogSystem();
  v11 = v10;
  v12 = *(a1 + 56);
  if (v12 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v10))
  {
    v13 = _AAErrorUnderlyingError(v6);
    v25 = 67240192;
    LODWORD(v26) = [v13 code];
    _os_signpost_emit_with_name_impl(&dword_1B6F6A000, v11, OS_SIGNPOST_INTERVAL_END, v12, "GenerateCustodianRecoveryCode", " Error=%{public,signpost.telemetry:number2,name=Error}d ", &v25, 8u);
  }

  v14 = _AASignpostLogSystem();
  if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
  {
    v15 = Nanoseconds / 1000000000.0;
    v16 = *(a1 + 56);
    v17 = _AAErrorUnderlyingError(v6);
    v18 = [v17 code];
    v25 = 134218496;
    v26 = v16;
    v27 = 2048;
    v28 = v15;
    v29 = 1026;
    v30 = v18;
    _os_log_impl(&dword_1B6F6A000, v14, OS_LOG_TYPE_DEFAULT, "END [%lld] %fs: GenerateCustodianRecoveryCode  Error=%{public,signpost.telemetry:number2,name=Error}d ", &v25, 0x1Cu);
  }

  v19 = _AALogSystem();
  v20 = v19;
  if (v5)
  {
    if (os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
    {
      v21 = [*(a1 + 32) custodianUUID];
      v22 = [v21 UUIDString];
      v25 = 138412290;
      v26 = v22;
      _os_log_impl(&dword_1B6F6A000, v20, OS_LOG_TYPE_DEFAULT, "Custodian recovery code was generated successfully for custodian: %@", &v25, 0xCu);
    }
  }

  else if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
  {
    __77__AACustodianController_generateCustodianRecoveryCodeWithContext_completion___block_invoke_cold_1();
  }

  v23 = *(a1 + 40);
  if (v23)
  {
    (*(v23 + 16))(v23, v5, v6);
  }

  v24 = *MEMORY[0x1E69E9840];
}

void __77__AACustodianController_generateCustodianRecoveryCodeWithContext_completion___block_invoke_65(uint64_t a1, void *a2)
{
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v5 = WeakRetained;
  if (WeakRetained)
  {
    [WeakRetained _retryingGenerateCustodianRecoveryCodeWithContext:*(a1 + 32) completion:v3];
  }

  else
  {
    v6 = _AALogSystem();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      *v7 = 0;
      _os_log_impl(&dword_1B6F6A000, v6, OS_LOG_TYPE_DEFAULT, "Cannot call daemon to generate custodian recovery code as custodian controller is deallocated", v7, 2u);
    }
  }
}

void __77__AACustodianController_generateCustodianRecoveryCodeWithContext_completion___block_invoke_68(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = *(a1 + 40);
  v7 = a3;
  objc_opt_class();
  v9 = v5;
  if (objc_opt_isKindOfClass())
  {
    v8 = v9;
  }

  else
  {
    v8 = 0;
  }

  (*(v6 + 16))(v6, v8, v7);
}

- (void)_retryingGenerateCustodianRecoveryCodeWithContext:(id)a3 completion:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = MEMORY[0x1E6985DB0];
  v9 = [v6 altDSID];
  v10 = [v6 telemetryFlowID];
  v11 = [v8 analyticsEventWithName:@"com.apple.appleaccount.custodian.generate" altDSID:v9 flowID:v10];

  v12 = self->_analyticsReporter;
  daemonConnection = self->_daemonConnection;
  v27[0] = MEMORY[0x1E69E9820];
  v27[1] = 3221225472;
  v27[2] = __86__AACustodianController__retryingGenerateCustodianRecoveryCodeWithContext_completion___block_invoke;
  v27[3] = &unk_1E7C9A9D8;
  v14 = v11;
  v28 = v14;
  v15 = v12;
  v29 = v15;
  v16 = v7;
  v30 = v16;
  v17 = [(AACustodianDaemonConnectionProviding *)daemonConnection remoteObjectProxyWithErrorHandler:v27];
  v18 = _AALogSystem();
  if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_1B6F6A000, v18, OS_LOG_TYPE_DEFAULT, "Calling daemon to generate custodian recovery code", buf, 2u);
  }

  v22[0] = MEMORY[0x1E69E9820];
  v22[1] = 3221225472;
  v22[2] = __86__AACustodianController__retryingGenerateCustodianRecoveryCodeWithContext_completion___block_invoke_71;
  v22[3] = &unk_1E7C9B680;
  v23 = v14;
  v24 = v15;
  v25 = v16;
  v19 = v16;
  v20 = v15;
  v21 = v14;
  [v17 generateCustodianRecoveryCodeWithContext:v6 completion:v22];
}

void __86__AACustodianController__retryingGenerateCustodianRecoveryCodeWithContext_completion___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = _AALogSystem();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
  {
    __86__AACustodianController__retryingGenerateCustodianRecoveryCodeWithContext_completion___block_invoke_cold_1();
  }

  [*(a1 + 32) updateTaskResultWithError:v3];
  [*(a1 + 40) sendEvent:*(a1 + 32)];
  (*(*(a1 + 48) + 16))();
}

void __86__AACustodianController__retryingGenerateCustodianRecoveryCodeWithContext_completion___block_invoke_71(uint64_t a1, void *a2, void *a3)
{
  v5 = *(a1 + 32);
  v6 = a3;
  v7 = a2;
  [v5 updateTaskResultWithError:v6];
  [*(a1 + 40) sendEvent:*(a1 + 32)];
  (*(*(a1 + 48) + 16))();
}

- (void)validateCustodianRecoveryCodeWithContext:(id)a3 completion:(id)a4
{
  v45 = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = a4;
  v8 = _os_activity_create(&dword_1B6F6A000, "custodian-appleaccount/validate-code", MEMORY[0x1E69E9C00], OS_ACTIVITY_FLAG_DEFAULT);
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
    _os_signpost_emit_with_name_impl(&dword_1B6F6A000, v14, OS_SIGNPOST_INTERVAL_BEGIN, v10, "ValidateCustodianRecoveryCode", " enableTelemetry=YES ", &buf, 2u);
  }

  v15 = _AASignpostLogSystem();
  if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
  {
    LODWORD(buf) = 134217984;
    *(&buf + 4) = v10;
    _os_log_impl(&dword_1B6F6A000, v15, OS_LOG_TYPE_DEFAULT, "BEGIN [%lld]: ValidateCustodianRecoveryCode  enableTelemetry=YES ", &buf, 0xCu);
  }

  *&buf = 0;
  *(&buf + 1) = &buf;
  v41 = 0x3032000000;
  v42 = __Block_byref_object_copy__2;
  v43 = __Block_byref_object_dispose__2;
  v16 = self;
  v44 = v16;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 3221225472;
  aBlock[2] = __77__AACustodianController_validateCustodianRecoveryCodeWithContext_completion___block_invoke;
  aBlock[3] = &unk_1E7C9B6A8;
  p_buf = &buf;
  v37 = v10;
  v38 = v12;
  v17 = v7;
  v35 = v17;
  v18 = _Block_copy(aBlock);
  objc_initWeak(&location, v16);
  v30[0] = MEMORY[0x1E69E9820];
  v30[1] = 3221225472;
  v30[2] = __77__AACustodianController_validateCustodianRecoveryCodeWithContext_completion___block_invoke_73;
  v30[3] = &unk_1E7C9B630;
  objc_copyWeak(&v32, &location);
  v19 = v6;
  v31 = v19;
  v20 = _Block_copy(v30);
  v21 = [objc_alloc(MEMORY[0x1E6985E78]) initWithMaxRetries:1];
  v22 = _AALogSystem();
  if (os_log_type_enabled(v22, OS_LOG_TYPE_DEFAULT))
  {
    *v29 = 0;
    _os_log_impl(&dword_1B6F6A000, v22, OS_LOG_TYPE_DEFAULT, "Scheduling validate recovery code through retry scheduler", v29, 2u);
  }

  v26[0] = MEMORY[0x1E69E9820];
  v26[1] = 3221225472;
  v26[2] = __77__AACustodianController_validateCustodianRecoveryCodeWithContext_completion___block_invoke_74;
  v26[3] = &unk_1E7C9B658;
  v23 = v18;
  v28 = v23;
  v24 = v21;
  v27 = v24;
  [v24 scheduleTask:v20 shouldRetry:0 completionHandler:v26];

  objc_destroyWeak(&v32);
  objc_destroyWeak(&location);

  _Block_object_dispose(&buf, 8);
  os_activity_scope_leave(&state);

  v25 = *MEMORY[0x1E69E9840];
}

void __77__AACustodianController_validateCustodianRecoveryCodeWithContext_completion___block_invoke(void *a1, void *a2, void *a3)
{
  v29 = *MEMORY[0x1E69E9840];
  v5 = a2;
  v6 = a3;
  v7 = *(a1[5] + 8);
  v8 = *(v7 + 40);
  *(v7 + 40) = 0;

  Nanoseconds = _AASignpostGetNanoseconds(a1[6], a1[7]);
  v10 = _AASignpostLogSystem();
  v11 = v10;
  v12 = a1[6];
  if (v12 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v10))
  {
    v13 = _AAErrorUnderlyingError(v6);
    v23 = 67240192;
    LODWORD(v24) = [v13 code];
    _os_signpost_emit_with_name_impl(&dword_1B6F6A000, v11, OS_SIGNPOST_INTERVAL_END, v12, "ValidateCustodianRecoveryCode", " Error=%{public,signpost.telemetry:number2,name=Error}d ", &v23, 8u);
  }

  v14 = _AASignpostLogSystem();
  if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
  {
    v15 = Nanoseconds / 1000000000.0;
    v16 = a1[6];
    v17 = _AAErrorUnderlyingError(v6);
    v18 = [v17 code];
    v23 = 134218496;
    v24 = v16;
    v25 = 2048;
    v26 = v15;
    v27 = 1026;
    v28 = v18;
    _os_log_impl(&dword_1B6F6A000, v14, OS_LOG_TYPE_DEFAULT, "END [%lld] %fs: ValidateCustodianRecoveryCode  Error=%{public,signpost.telemetry:number2,name=Error}d ", &v23, 0x1Cu);
  }

  v19 = _AALogSystem();
  v20 = v19;
  if (v5)
  {
    if (os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
    {
      v23 = 138412290;
      v24 = v5;
      _os_log_impl(&dword_1B6F6A000, v20, OS_LOG_TYPE_DEFAULT, "Custodian code verification successful with context: %@", &v23, 0xCu);
    }
  }

  else if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
  {
    __77__AACustodianController_validateCustodianRecoveryCodeWithContext_completion___block_invoke_cold_1();
  }

  v21 = a1[4];
  if (v21)
  {
    (*(v21 + 16))(v21, v5, v6);
  }

  v22 = *MEMORY[0x1E69E9840];
}

void __77__AACustodianController_validateCustodianRecoveryCodeWithContext_completion___block_invoke_73(uint64_t a1, void *a2)
{
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v5 = WeakRetained;
  if (WeakRetained)
  {
    [WeakRetained _retryingValidateCustodianRecoveryCodeWithContext:*(a1 + 32) completion:v3];
  }

  else
  {
    v6 = _AALogSystem();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      *v7 = 0;
      _os_log_impl(&dword_1B6F6A000, v6, OS_LOG_TYPE_DEFAULT, "Cannot call daemon to generate custodian recovery code as custodian controller is deallocated", v7, 2u);
    }
  }
}

void __77__AACustodianController_validateCustodianRecoveryCodeWithContext_completion___block_invoke_74(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = *(a1 + 40);
  v7 = a3;
  objc_opt_class();
  v9 = v5;
  if (objc_opt_isKindOfClass())
  {
    v8 = v9;
  }

  else
  {
    v8 = 0;
  }

  (*(v6 + 16))(v6, v8, v7);
}

- (void)_retryingValidateCustodianRecoveryCodeWithContext:(id)a3 completion:(id)a4
{
  v6 = a4;
  v7 = a3;
  v8 = _AALogSystem();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_1B6F6A000, v8, OS_LOG_TYPE_DEFAULT, "Calling daemon to verify custodian recovery code", buf, 2u);
  }

  v9 = MEMORY[0x1E6985DB0];
  v10 = [v7 altDSID];
  v11 = [v7 telemetryFlowID];
  v12 = [v9 analyticsEventWithName:@"com.apple.appleaccount.custodian.recovery.ownerValidateCode" altDSID:v10 flowID:v11];

  v13 = self->_analyticsReporter;
  daemonConnection = self->_daemonConnection;
  v26[0] = MEMORY[0x1E69E9820];
  v26[1] = 3221225472;
  v26[2] = __86__AACustodianController__retryingValidateCustodianRecoveryCodeWithContext_completion___block_invoke;
  v26[3] = &unk_1E7C9A9D8;
  v15 = v12;
  v27 = v15;
  v16 = v13;
  v28 = v16;
  v17 = v6;
  v29 = v17;
  v18 = [(AACustodianDaemonConnectionProviding *)daemonConnection remoteObjectProxyWithErrorHandler:v26];
  v22[0] = MEMORY[0x1E69E9820];
  v22[1] = 3221225472;
  v22[2] = __86__AACustodianController__retryingValidateCustodianRecoveryCodeWithContext_completion___block_invoke_76;
  v22[3] = &unk_1E7C9B6D0;
  v23 = v15;
  v24 = v16;
  v25 = v17;
  v19 = v17;
  v20 = v16;
  v21 = v15;
  [v18 validateCustodianRecoveryCodeWithContext:v7 completion:v22];
}

void __86__AACustodianController__retryingValidateCustodianRecoveryCodeWithContext_completion___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = _AALogSystem();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
  {
    __86__AACustodianController__retryingValidateCustodianRecoveryCodeWithContext_completion___block_invoke_cold_1();
  }

  [*(a1 + 32) updateTaskResultWithError:v3];
  [*(a1 + 40) sendEvent:*(a1 + 32)];
  (*(*(a1 + 48) + 16))();
}

void __86__AACustodianController__retryingValidateCustodianRecoveryCodeWithContext_completion___block_invoke_76(uint64_t a1, void *a2, void *a3)
{
  v5 = *(a1 + 32);
  v6 = a3;
  v7 = a2;
  [v5 updateTaskResultWithError:v6];
  [*(a1 + 40) sendEvent:*(a1 + 32)];
  (*(*(a1 + 48) + 16))();
}

- (void)fetchCustodianRecoveryKeysWithSessionID:(id)a3 completion:(id)a4
{
  v6 = a4;
  v7 = a3;
  v8 = objc_alloc_init(AACustodianRecoveryRequestContext);
  [(AACustodianRecoveryRequestContext *)v8 setRecoverySessionID:v7];

  [(AACustodianController *)self fetchCustodianRecoveryKeysWithContext:v8 completion:v6];
}

- (void)fetchCustodianRecoveryKeysWithContext:(id)a3 completion:(id)a4
{
  v47 = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = a4;
  v8 = _os_activity_create(&dword_1B6F6A000, "custodian-appleaccount/fetch-keys", MEMORY[0x1E69E9C00], OS_ACTIVITY_FLAG_DEFAULT);
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
    _os_signpost_emit_with_name_impl(&dword_1B6F6A000, v14, OS_SIGNPOST_INTERVAL_BEGIN, v10, "FetchCustodianRecoveryKeys", " enableTelemetry=YES ", &buf, 2u);
  }

  v15 = _AASignpostLogSystem();
  if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
  {
    LODWORD(buf) = 134217984;
    *(&buf + 4) = v10;
    _os_log_impl(&dword_1B6F6A000, v15, OS_LOG_TYPE_DEFAULT, "BEGIN [%lld]: FetchCustodianRecoveryKeys  enableTelemetry=YES ", &buf, 0xCu);
  }

  v16 = MEMORY[0x1E6985DB0];
  v17 = [v6 altDSID];
  v18 = [v6 telemetryFlowID];
  v19 = [v16 analyticsEventWithName:@"com.apple.appleaccount.custodian.recovery.ownerFetchCustodianRecoveryKeys" altDSID:v17 flowID:v18];

  v20 = self->_analyticsReporter;
  *&buf = 0;
  *(&buf + 1) = &buf;
  v43 = 0x3032000000;
  v44 = __Block_byref_object_copy__2;
  v45 = __Block_byref_object_dispose__2;
  v21 = self;
  v46 = v21;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 3221225472;
  aBlock[2] = __74__AACustodianController_fetchCustodianRecoveryKeysWithContext_completion___block_invoke;
  aBlock[3] = &unk_1E7C9B6F8;
  v22 = v19;
  v35 = v22;
  v23 = v20;
  v36 = v23;
  p_buf = &buf;
  v39 = v10;
  v40 = v12;
  v24 = v7;
  v37 = v24;
  v25 = _Block_copy(aBlock);
  daemonConnection = v21->_daemonConnection;
  v32[0] = MEMORY[0x1E69E9820];
  v32[1] = 3221225472;
  v32[2] = __74__AACustodianController_fetchCustodianRecoveryKeysWithContext_completion___block_invoke_78;
  v32[3] = &unk_1E7C9B078;
  v27 = v25;
  v33 = v27;
  v28 = [(AACustodianDaemonConnectionProviding *)daemonConnection remoteObjectProxyWithErrorHandler:v32];
  v29 = _AALogSystem();
  if (os_log_type_enabled(v29, OS_LOG_TYPE_DEFAULT))
  {
    v31 = 0;
    _os_log_impl(&dword_1B6F6A000, v29, OS_LOG_TYPE_DEFAULT, "Calling daemon service to fetch custodian recovery keys", &v31, 2u);
  }

  [v28 fetchCustodianRecoveryKeysWithContext:v6 completion:v27];
  _Block_object_dispose(&buf, 8);

  os_activity_scope_leave(&state);
  v30 = *MEMORY[0x1E69E9840];
}

void __74__AACustodianController_fetchCustodianRecoveryKeysWithContext_completion___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v29 = *MEMORY[0x1E69E9840];
  v5 = a2;
  v6 = a3;
  [*(a1 + 32) updateTaskResultWithError:v6];
  [*(a1 + 40) sendEvent:*(a1 + 32)];
  v7 = *(*(a1 + 56) + 8);
  v8 = *(v7 + 40);
  *(v7 + 40) = 0;

  Nanoseconds = _AASignpostGetNanoseconds(*(a1 + 64), *(a1 + 72));
  v10 = _AASignpostLogSystem();
  v11 = v10;
  v12 = *(a1 + 64);
  if (v12 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v10))
  {
    v13 = _AAErrorUnderlyingError(v6);
    v23 = 67240192;
    LODWORD(v24) = [v13 code];
    _os_signpost_emit_with_name_impl(&dword_1B6F6A000, v11, OS_SIGNPOST_INTERVAL_END, v12, "FetchCustodianRecoveryKeys", " Error=%{public,signpost.telemetry:number2,name=Error}d ", &v23, 8u);
  }

  v14 = _AASignpostLogSystem();
  if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
  {
    v15 = Nanoseconds / 1000000000.0;
    v16 = *(a1 + 64);
    v17 = _AAErrorUnderlyingError(v6);
    v18 = [v17 code];
    v23 = 134218496;
    v24 = v16;
    v25 = 2048;
    v26 = v15;
    v27 = 1026;
    v28 = v18;
    _os_log_impl(&dword_1B6F6A000, v14, OS_LOG_TYPE_DEFAULT, "END [%lld] %fs: FetchCustodianRecoveryKeys  Error=%{public,signpost.telemetry:number2,name=Error}d ", &v23, 0x1Cu);
  }

  v19 = _AALogSystem();
  v20 = v19;
  if (v5)
  {
    if (os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
    {
      v23 = 138412290;
      v24 = v5;
      _os_log_impl(&dword_1B6F6A000, v20, OS_LOG_TYPE_DEFAULT, "Fetched recovery keys successfully with keys: %@", &v23, 0xCu);
    }
  }

  else if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
  {
    __74__AACustodianController_fetchCustodianRecoveryKeysWithContext_completion___block_invoke_cold_1();
  }

  v21 = *(a1 + 48);
  if (v21)
  {
    (*(v21 + 16))(v21, v5, v6);
  }

  v22 = *MEMORY[0x1E69E9840];
}

void __74__AACustodianController_fetchCustodianRecoveryKeysWithContext_completion___block_invoke_78(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = _AALogSystem();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
  {
    __74__AACustodianController_fetchCustodianRecoveryKeysWithContext_completion___block_invoke_78_cold_1();
  }

  (*(*(a1 + 32) + 16))();
}

- (BOOL)cancelCustodianRecoveryWithSessionID:(id)a3 error:(id *)a4
{
  v5 = a3;
  v6 = objc_alloc_init(AACustodianRecoveryRequestContext);
  [(AACustodianRecoveryRequestContext *)v6 setRecoverySessionID:v5];
  v9 = 0;
  v10 = &v9;
  v11 = 0x2020000000;
  v12 = 0;
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __68__AACustodianController_cancelCustodianRecoveryWithSessionID_error___block_invoke;
  v8[3] = &unk_1E7C9B720;
  v8[4] = &v9;
  [(AACustodianController *)self cancelCustodianRecoveryWithContext:v6 completion:v8];
  LOBYTE(self) = *(v10 + 24);
  _Block_object_dispose(&v9, 8);

  return self;
}

- (void)cancelCustodianRecoveryWithContext:(id)a3 completion:(id)a4
{
  v44 = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = a4;
  v8 = _os_activity_create(&dword_1B6F6A000, "custodian-appleaccount/custodian-cancel-recovery", MEMORY[0x1E69E9C00], OS_ACTIVITY_FLAG_DEFAULT);
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
    *buf = 0;
    _os_signpost_emit_with_name_impl(&dword_1B6F6A000, v14, OS_SIGNPOST_INTERVAL_BEGIN, v10, "CancelCustodianRecovery", " enableTelemetry=YES ", buf, 2u);
  }

  v15 = _AASignpostLogSystem();
  if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 134217984;
    v43 = v10;
    _os_log_impl(&dword_1B6F6A000, v15, OS_LOG_TYPE_DEFAULT, "BEGIN [%lld]: CancelCustodianRecovery  enableTelemetry=YES ", buf, 0xCu);
  }

  v16 = MEMORY[0x1E6985DB0];
  v17 = [v6 altDSID];
  v18 = [v6 telemetryFlowID];
  v19 = [v16 analyticsEventWithName:@"com.apple.appleaccount.custodian.recovery.cancel" altDSID:v17 flowID:v18];

  v20 = self->_analyticsReporter;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 3221225472;
  aBlock[2] = __71__AACustodianController_cancelCustodianRecoveryWithContext_completion___block_invoke;
  aBlock[3] = &unk_1E7C9B748;
  v21 = v19;
  v36 = v21;
  v22 = v20;
  v37 = v22;
  v39 = v10;
  v40 = v12;
  v23 = v7;
  v38 = v23;
  v24 = _Block_copy(aBlock);
  daemonConnection = self->_daemonConnection;
  v33[0] = MEMORY[0x1E69E9820];
  v33[1] = 3221225472;
  v33[2] = __71__AACustodianController_cancelCustodianRecoveryWithContext_completion___block_invoke_79;
  v33[3] = &unk_1E7C9B078;
  v26 = v24;
  v34 = v26;
  v27 = [(AACustodianDaemonConnectionProviding *)daemonConnection synchronousRemoteObjectProxyWithErrorHandler:v33];
  v28 = _AALogSystem();
  if (os_log_type_enabled(v28, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_1B6F6A000, v28, OS_LOG_TYPE_DEFAULT, "Calling daemon service to cancel custodian recovery", buf, 2u);
  }

  v31[0] = MEMORY[0x1E69E9820];
  v31[1] = 3221225472;
  v31[2] = __71__AACustodianController_cancelCustodianRecoveryWithContext_completion___block_invoke_80;
  v31[3] = &unk_1E7C9B078;
  v29 = v26;
  v32 = v29;
  [v27 cancelCustodianRecoveryWithContext:v6 completion:v31];

  os_activity_scope_leave(&state);
  v30 = *MEMORY[0x1E69E9840];
}

void __71__AACustodianController_cancelCustodianRecoveryWithContext_completion___block_invoke(uint64_t a1, void *a2)
{
  v22 = *MEMORY[0x1E69E9840];
  v3 = a2;
  [*(a1 + 32) updateTaskResultWithError:v3];
  [*(a1 + 40) sendEvent:*(a1 + 32)];
  Nanoseconds = _AASignpostGetNanoseconds(*(a1 + 56), *(a1 + 64));
  v5 = _AASignpostLogSystem();
  v6 = v5;
  v7 = *(a1 + 56);
  if (v7 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v5))
  {
    v8 = _AAErrorUnderlyingError(v3);
    v16 = 67240192;
    LODWORD(v17) = [v8 code];
    _os_signpost_emit_with_name_impl(&dword_1B6F6A000, v6, OS_SIGNPOST_INTERVAL_END, v7, "CancelCustodianRecovery", " Error=%{public,signpost.telemetry:number2,name=Error}d ", &v16, 8u);
  }

  v9 = _AASignpostLogSystem();
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
  {
    v10 = Nanoseconds / 1000000000.0;
    v11 = *(a1 + 56);
    v12 = _AAErrorUnderlyingError(v3);
    v13 = [v12 code];
    v16 = 134218496;
    v17 = v11;
    v18 = 2048;
    v19 = v10;
    v20 = 1026;
    v21 = v13;
    _os_log_impl(&dword_1B6F6A000, v9, OS_LOG_TYPE_DEFAULT, "END [%lld] %fs: CancelCustodianRecovery  Error=%{public,signpost.telemetry:number2,name=Error}d ", &v16, 0x1Cu);
  }

  v14 = _AALogSystem();
  if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
  {
    v16 = 138412290;
    v17 = v3;
    _os_log_impl(&dword_1B6F6A000, v14, OS_LOG_TYPE_DEFAULT, "Custodian recovery canceled with error: %@", &v16, 0xCu);
  }

  (*(*(a1 + 48) + 16))();
  v15 = *MEMORY[0x1E69E9840];
}

void __71__AACustodianController_cancelCustodianRecoveryWithContext_completion___block_invoke_79(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = _AALogSystem();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
  {
    __74__AACustodianController_fetchCustodianRecoveryKeysWithContext_completion___block_invoke_78_cold_1();
  }

  (*(*(a1 + 32) + 16))();
}

- (void)fetchCustodianPasswordResetInformationWithSessionID:(id)a3 completion:(id)a4
{
  v40 = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = a4;
  v8 = _os_activity_create(&dword_1B6F6A000, "custodian-appleaccount/fetch-recovery-token", MEMORY[0x1E69E9C00], OS_ACTIVITY_FLAG_DEFAULT);
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
    _os_signpost_emit_with_name_impl(&dword_1B6F6A000, v14, OS_SIGNPOST_INTERVAL_BEGIN, v10, "FetchCustodianPasswordResetInfo", " enableTelemetry=YES ", &buf, 2u);
  }

  v15 = _AASignpostLogSystem();
  if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
  {
    LODWORD(buf) = 134217984;
    *(&buf + 4) = v10;
    _os_log_impl(&dword_1B6F6A000, v15, OS_LOG_TYPE_DEFAULT, "BEGIN [%lld]: FetchCustodianPasswordResetInfo  enableTelemetry=YES ", &buf, 0xCu);
  }

  *&buf = 0;
  *(&buf + 1) = &buf;
  v36 = 0x3032000000;
  v37 = __Block_byref_object_copy__2;
  v38 = __Block_byref_object_dispose__2;
  v16 = self;
  v39 = v16;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 3221225472;
  aBlock[2] = __88__AACustodianController_fetchCustodianPasswordResetInformationWithSessionID_completion___block_invoke;
  aBlock[3] = &unk_1E7C9B770;
  p_buf = &buf;
  v32 = v10;
  v33 = v12;
  v17 = v6;
  v29 = v17;
  v18 = v7;
  v30 = v18;
  v19 = _Block_copy(aBlock);
  daemonConnection = v16->_daemonConnection;
  v26[0] = MEMORY[0x1E69E9820];
  v26[1] = 3221225472;
  v26[2] = __88__AACustodianController_fetchCustodianPasswordResetInformationWithSessionID_completion___block_invoke_82;
  v26[3] = &unk_1E7C9B078;
  v21 = v19;
  v27 = v21;
  v22 = [(AACustodianDaemonConnectionProviding *)daemonConnection remoteObjectProxyWithErrorHandler:v26];
  v23 = _AALogSystem();
  if (os_log_type_enabled(v23, OS_LOG_TYPE_DEFAULT))
  {
    *v25 = 0;
    _os_log_impl(&dword_1B6F6A000, v23, OS_LOG_TYPE_DEFAULT, "Calling daemon service to fetch custodian recovery token", v25, 2u);
  }

  [v22 fetchCustodianPasswordResetInformationWithSessionID:v17 completion:v21];
  _Block_object_dispose(&buf, 8);

  os_activity_scope_leave(&state);
  v24 = *MEMORY[0x1E69E9840];
}

void __88__AACustodianController_fetchCustodianPasswordResetInformationWithSessionID_completion___block_invoke(void *a1, void *a2, void *a3)
{
  v30 = *MEMORY[0x1E69E9840];
  v5 = a2;
  v6 = a3;
  v7 = *(a1[6] + 8);
  v8 = *(v7 + 40);
  *(v7 + 40) = 0;

  Nanoseconds = _AASignpostGetNanoseconds(a1[7], a1[8]);
  v10 = _AASignpostLogSystem();
  v11 = v10;
  v12 = a1[7];
  if (v12 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v10))
  {
    v13 = _AAErrorUnderlyingError(v6);
    v24 = 67240192;
    LODWORD(v25) = [v13 code];
    _os_signpost_emit_with_name_impl(&dword_1B6F6A000, v11, OS_SIGNPOST_INTERVAL_END, v12, "FetchCustodianPasswordResetInfo", " Error=%{public,signpost.telemetry:number2,name=Error}d ", &v24, 8u);
  }

  v14 = _AASignpostLogSystem();
  if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
  {
    v15 = Nanoseconds / 1000000000.0;
    v16 = a1[7];
    v17 = _AAErrorUnderlyingError(v6);
    v18 = [v17 code];
    v24 = 134218496;
    v25 = v16;
    v26 = 2048;
    v27 = v15;
    v28 = 1026;
    v29 = v18;
    _os_log_impl(&dword_1B6F6A000, v14, OS_LOG_TYPE_DEFAULT, "END [%lld] %fs: FetchCustodianPasswordResetInfo  Error=%{public,signpost.telemetry:number2,name=Error}d ", &v24, 0x1Cu);
  }

  v19 = _AALogSystem();
  v20 = v19;
  if (v5)
  {
    if (os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
    {
      v21 = a1[4];
      v24 = 138412290;
      v25 = v21;
      _os_log_impl(&dword_1B6F6A000, v20, OS_LOG_TYPE_DEFAULT, "Fetched recovery token successfully for sessionID: %@", &v24, 0xCu);
    }
  }

  else if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
  {
    __88__AACustodianController_fetchCustodianPasswordResetInformationWithSessionID_completion___block_invoke_cold_1();
  }

  v22 = a1[5];
  if (v22)
  {
    (*(v22 + 16))(v22, v5, v6);
  }

  v23 = *MEMORY[0x1E69E9840];
}

void __88__AACustodianController_fetchCustodianPasswordResetInformationWithSessionID_completion___block_invoke_82(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = _AALogSystem();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
  {
    __74__AACustodianController_fetchCustodianRecoveryKeysWithContext_completion___block_invoke_78_cold_1();
  }

  (*(*(a1 + 32) + 16))();
}

- (void)startHealthCheckWithCompletion:(id)a3
{
  v38 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = _os_activity_create(&dword_1B6F6A000, "custodian-appleaccount/custodian-health-check", MEMORY[0x1E69E9C00], OS_ACTIVITY_FLAG_DEFAULT);
  state.opaque[0] = 0;
  state.opaque[1] = 0;
  os_activity_scope_enter(v5, &state);
  v6 = _AASignpostLogSystem();
  v7 = _AASignpostCreate(v6);
  v9 = v8;

  v10 = _AASignpostLogSystem();
  v11 = v10;
  if (v7 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v10))
  {
    LOWORD(buf) = 0;
    _os_signpost_emit_with_name_impl(&dword_1B6F6A000, v11, OS_SIGNPOST_INTERVAL_BEGIN, v7, "StartHealthCheck", " enableTelemetry=YES ", &buf, 2u);
  }

  v12 = _AASignpostLogSystem();
  if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
  {
    LODWORD(buf) = 134217984;
    *(&buf + 4) = v7;
    _os_log_impl(&dword_1B6F6A000, v12, OS_LOG_TYPE_DEFAULT, "BEGIN [%lld]: StartHealthCheck  enableTelemetry=YES ", &buf, 0xCu);
  }

  *&buf = 0;
  *(&buf + 1) = &buf;
  v34 = 0x3032000000;
  v35 = __Block_byref_object_copy__2;
  v36 = __Block_byref_object_dispose__2;
  v13 = self;
  v37 = v13;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 3221225472;
  aBlock[2] = __56__AACustodianController_startHealthCheckWithCompletion___block_invoke;
  aBlock[3] = &unk_1E7C9B3D8;
  p_buf = &buf;
  v30 = v7;
  v31 = v9;
  v14 = v4;
  v28 = v14;
  v15 = _Block_copy(aBlock);
  daemonConnection = v13->_daemonConnection;
  v25[0] = MEMORY[0x1E69E9820];
  v25[1] = 3221225472;
  v25[2] = __56__AACustodianController_startHealthCheckWithCompletion___block_invoke_83;
  v25[3] = &unk_1E7C9B078;
  v17 = v15;
  v26 = v17;
  v18 = [(AACustodianDaemonConnectionProviding *)daemonConnection remoteObjectProxyWithErrorHandler:v25];
  v19 = _AALogSystem();
  if (os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
  {
    *v24 = 0;
    _os_log_impl(&dword_1B6F6A000, v19, OS_LOG_TYPE_DEFAULT, "Starting health check", v24, 2u);
  }

  v22[0] = MEMORY[0x1E69E9820];
  v22[1] = 3221225472;
  v22[2] = __56__AACustodianController_startHealthCheckWithCompletion___block_invoke_84;
  v22[3] = &unk_1E7C9B078;
  v20 = v17;
  v23 = v20;
  [v18 startHealthCheckWithCompletion:v22];

  _Block_object_dispose(&buf, 8);
  os_activity_scope_leave(&state);

  v21 = *MEMORY[0x1E69E9840];
}

void __56__AACustodianController_startHealthCheckWithCompletion___block_invoke(void *a1, void *a2)
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
    _os_signpost_emit_with_name_impl(&dword_1B6F6A000, v8, OS_SIGNPOST_INTERVAL_END, v9, "StartHealthCheck", " Error=%{public,signpost.telemetry:number2,name=Error}d ", &v18, 8u);
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
    _os_log_impl(&dword_1B6F6A000, v11, OS_LOG_TYPE_DEFAULT, "END [%lld] %fs: StartHealthCheck  Error=%{public,signpost.telemetry:number2,name=Error}d ", &v18, 0x1Cu);
  }

  v16 = a1[4];
  if (v16)
  {
    (*(v16 + 16))(v16, v3);
  }

  v17 = *MEMORY[0x1E69E9840];
}

void __56__AACustodianController_startHealthCheckWithCompletion___block_invoke_83(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = _AALogSystem();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
  {
    __56__AACustodianController_startHealthCheckWithCompletion___block_invoke_83_cold_1();
  }

  (*(*(a1 + 32) + 16))();
}

void __56__AACustodianController_startHealthCheckWithCompletion___block_invoke_84(uint64_t a1, void *a2)
{
  v3 = a2;
  if (v3)
  {
    v4 = _AALogSystem();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      __56__AACustodianController_startHealthCheckWithCompletion___block_invoke_84_cold_1();
    }
  }

  (*(*(a1 + 32) + 16))();
}

- (void)startManateeMigrationWithCompletion:(id)a3
{
  v38 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = _os_activity_create(&dword_1B6F6A000, "custodian-appleaccount/start-manatee-migration", MEMORY[0x1E69E9C00], OS_ACTIVITY_FLAG_DEFAULT);
  state.opaque[0] = 0;
  state.opaque[1] = 0;
  os_activity_scope_enter(v5, &state);
  v6 = _AASignpostLogSystem();
  v7 = _AASignpostCreate(v6);
  v9 = v8;

  v10 = _AASignpostLogSystem();
  v11 = v10;
  if (v7 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v10))
  {
    LOWORD(buf) = 0;
    _os_signpost_emit_with_name_impl(&dword_1B6F6A000, v11, OS_SIGNPOST_INTERVAL_BEGIN, v7, "StartManateeMigration", " enableTelemetry=YES ", &buf, 2u);
  }

  v12 = _AASignpostLogSystem();
  if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
  {
    LODWORD(buf) = 134217984;
    *(&buf + 4) = v7;
    _os_log_impl(&dword_1B6F6A000, v12, OS_LOG_TYPE_DEFAULT, "BEGIN [%lld]: StartManateeMigration  enableTelemetry=YES ", &buf, 0xCu);
  }

  *&buf = 0;
  *(&buf + 1) = &buf;
  v34 = 0x3032000000;
  v35 = __Block_byref_object_copy__2;
  v36 = __Block_byref_object_dispose__2;
  v13 = self;
  v37 = v13;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 3221225472;
  aBlock[2] = __61__AACustodianController_startManateeMigrationWithCompletion___block_invoke;
  aBlock[3] = &unk_1E7C9B3D8;
  p_buf = &buf;
  v30 = v7;
  v31 = v9;
  v14 = v4;
  v28 = v14;
  v15 = _Block_copy(aBlock);
  daemonConnection = v13->_daemonConnection;
  v25[0] = MEMORY[0x1E69E9820];
  v25[1] = 3221225472;
  v25[2] = __61__AACustodianController_startManateeMigrationWithCompletion___block_invoke_85;
  v25[3] = &unk_1E7C9B078;
  v17 = v15;
  v26 = v17;
  v18 = [(AACustodianDaemonConnectionProviding *)daemonConnection remoteObjectProxyWithErrorHandler:v25];
  v19 = _AALogSystem();
  if (os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
  {
    *v24 = 0;
    _os_log_impl(&dword_1B6F6A000, v19, OS_LOG_TYPE_DEFAULT, "Calling out to remote custodian service to start Manatee migration.", v24, 2u);
  }

  v22[0] = MEMORY[0x1E69E9820];
  v22[1] = 3221225472;
  v22[2] = __61__AACustodianController_startManateeMigrationWithCompletion___block_invoke_86;
  v22[3] = &unk_1E7C9B078;
  v20 = v17;
  v23 = v20;
  [v18 startManateeMigrationWithCompletion:v22];

  _Block_object_dispose(&buf, 8);
  os_activity_scope_leave(&state);

  v21 = *MEMORY[0x1E69E9840];
}

void __61__AACustodianController_startManateeMigrationWithCompletion___block_invoke(void *a1, void *a2)
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
    _os_signpost_emit_with_name_impl(&dword_1B6F6A000, v8, OS_SIGNPOST_INTERVAL_END, v9, "StartManateeMigration", " Error=%{public,signpost.telemetry:number2,name=Error}d ", &v18, 8u);
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
    _os_log_impl(&dword_1B6F6A000, v11, OS_LOG_TYPE_DEFAULT, "END [%lld] %fs: StartManateeMigration  Error=%{public,signpost.telemetry:number2,name=Error}d ", &v18, 0x1Cu);
  }

  if (a1[4])
  {
    v16 = _AALogSystem();
    if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
    {
      LOWORD(v18) = 0;
      _os_log_impl(&dword_1B6F6A000, v16, OS_LOG_TYPE_DEFAULT, "Manatee migration completed", &v18, 2u);
    }

    (*(a1[4] + 16))();
  }

  v17 = *MEMORY[0x1E69E9840];
}

void __61__AACustodianController_startManateeMigrationWithCompletion___block_invoke_85(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = _AALogSystem();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
  {
    __61__AACustodianController_startManateeMigrationWithCompletion___block_invoke_85_cold_1();
  }

  (*(*(a1 + 32) + 16))();
}

void __61__AACustodianController_startManateeMigrationWithCompletion___block_invoke_86(uint64_t a1, void *a2)
{
  v3 = a2;
  if (v3)
  {
    v4 = _AALogSystem();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      __61__AACustodianController_startManateeMigrationWithCompletion___block_invoke_86_cold_1();
    }
  }

  (*(*(a1 + 32) + 16))();
}

- (void)pullTrustedContactsFromCloudKitWithCompletion:(id)a3
{
  v37 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = _os_activity_create(&dword_1B6F6A000, "custodian-appleaccount/pull-trusted-contacts", MEMORY[0x1E69E9C00], OS_ACTIVITY_FLAG_DEFAULT);
  state.opaque[0] = 0;
  state.opaque[1] = 0;
  os_activity_scope_enter(v5, &state);
  v6 = _AASignpostLogSystem();
  v7 = _AASignpostCreate(v6);
  v9 = v8;

  v10 = _AASignpostLogSystem();
  v11 = v10;
  if (v7 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v10))
  {
    LOWORD(buf) = 0;
    _os_signpost_emit_with_name_impl(&dword_1B6F6A000, v11, OS_SIGNPOST_INTERVAL_BEGIN, v7, "PullTrustedContacts", " enableTelemetry=YES ", &buf, 2u);
  }

  v12 = _AASignpostLogSystem();
  if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
  {
    LODWORD(buf) = 134217984;
    *(&buf + 4) = v7;
    _os_log_impl(&dword_1B6F6A000, v12, OS_LOG_TYPE_DEFAULT, "BEGIN [%lld]: PullTrustedContacts  enableTelemetry=YES ", &buf, 0xCu);
  }

  *&buf = 0;
  *(&buf + 1) = &buf;
  v33 = 0x3032000000;
  v34 = __Block_byref_object_copy__2;
  v35 = __Block_byref_object_dispose__2;
  v13 = self;
  v36 = v13;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 3221225472;
  aBlock[2] = __71__AACustodianController_pullTrustedContactsFromCloudKitWithCompletion___block_invoke;
  aBlock[3] = &unk_1E7C9B3D8;
  p_buf = &buf;
  v29 = v7;
  v30 = v9;
  v14 = v4;
  v27 = v14;
  v15 = _Block_copy(aBlock);
  daemonConnection = v13->_daemonConnection;
  v24[0] = MEMORY[0x1E69E9820];
  v24[1] = 3221225472;
  v24[2] = __71__AACustodianController_pullTrustedContactsFromCloudKitWithCompletion___block_invoke_87;
  v24[3] = &unk_1E7C9B078;
  v17 = v15;
  v25 = v17;
  v18 = [(AACustodianDaemonConnectionProviding *)daemonConnection remoteObjectProxyWithErrorHandler:v24];
  v19 = _AALogSystem();
  if (os_log_type_enabled(v19, OS_LOG_TYPE_DEBUG))
  {
    [AACustodianController pullTrustedContactsFromCloudKitWithCompletion:v19];
  }

  v22[0] = MEMORY[0x1E69E9820];
  v22[1] = 3221225472;
  v22[2] = __71__AACustodianController_pullTrustedContactsFromCloudKitWithCompletion___block_invoke_88;
  v22[3] = &unk_1E7C9B078;
  v20 = v17;
  v23 = v20;
  [v18 pullTrustedContactsFromCloudKitWithCompletion:v22];

  _Block_object_dispose(&buf, 8);
  os_activity_scope_leave(&state);

  v21 = *MEMORY[0x1E69E9840];
}

void __71__AACustodianController_pullTrustedContactsFromCloudKitWithCompletion___block_invoke(void *a1, void *a2)
{
  v26 = *MEMORY[0x1E69E9840];
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
    v20 = 67240192;
    LODWORD(v21) = [v10 code];
    _os_signpost_emit_with_name_impl(&dword_1B6F6A000, v8, OS_SIGNPOST_INTERVAL_END, v9, "PullTrustedContacts", " Error=%{public,signpost.telemetry:number2,name=Error}d ", &v20, 8u);
  }

  v11 = _AASignpostLogSystem();
  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
  {
    v12 = Nanoseconds / 1000000000.0;
    v13 = a1[6];
    v14 = _AAErrorUnderlyingError(v3);
    v15 = [v14 code];
    v20 = 134218496;
    v21 = v13;
    v22 = 2048;
    v23 = v12;
    v24 = 1026;
    v25 = v15;
    _os_log_impl(&dword_1B6F6A000, v11, OS_LOG_TYPE_DEFAULT, "END [%lld] %fs: PullTrustedContacts  Error=%{public,signpost.telemetry:number2,name=Error}d ", &v20, 0x1Cu);
  }

  v16 = _AALogSystem();
  v17 = v16;
  if (v3)
  {
    if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
    {
      __71__AACustodianController_pullTrustedContactsFromCloudKitWithCompletion___block_invoke_cold_1();
    }
  }

  else if (os_log_type_enabled(v16, OS_LOG_TYPE_DEBUG))
  {
    __71__AACustodianController_pullTrustedContactsFromCloudKitWithCompletion___block_invoke_cold_2(v17);
  }

  v18 = a1[4];
  if (v18)
  {
    (*(v18 + 16))(v18, v3);
  }

  v19 = *MEMORY[0x1E69E9840];
}

void __71__AACustodianController_pullTrustedContactsFromCloudKitWithCompletion___block_invoke_87(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = _AALogSystem();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
  {
    __71__AACustodianController_pullTrustedContactsFromCloudKitWithCompletion___block_invoke_87_cold_1();
  }

  (*(*(a1 + 32) + 16))();
}

- (void)displayTrustedContactFlowWithModel:(id)a3 completion:(id)a4
{
  v41 = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = a4;
  v8 = _os_activity_create(&dword_1B6F6A000, "custodian-appleaccount/display-trusted-contact-flow-ui", MEMORY[0x1E69E9C00], OS_ACTIVITY_FLAG_DEFAULT);
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
    _os_signpost_emit_with_name_impl(&dword_1B6F6A000, v14, OS_SIGNPOST_INTERVAL_BEGIN, v10, "DisplayTrustedContactFlow", " enableTelemetry=YES ", &buf, 2u);
  }

  v15 = _AASignpostLogSystem();
  if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
  {
    LODWORD(buf) = 134217984;
    *(&buf + 4) = v10;
    _os_log_impl(&dword_1B6F6A000, v15, OS_LOG_TYPE_DEFAULT, "BEGIN [%lld]: DisplayTrustedContactFlow  enableTelemetry=YES ", &buf, 0xCu);
  }

  *&buf = 0;
  *(&buf + 1) = &buf;
  v37 = 0x3032000000;
  v38 = __Block_byref_object_copy__2;
  v39 = __Block_byref_object_dispose__2;
  v16 = self;
  v40 = v16;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 3221225472;
  aBlock[2] = __71__AACustodianController_displayTrustedContactFlowWithModel_completion___block_invoke;
  aBlock[3] = &unk_1E7C9B3D8;
  p_buf = &buf;
  v33 = v10;
  v34 = v12;
  v17 = v7;
  v31 = v17;
  v18 = _Block_copy(aBlock);
  daemonConnection = v16->_daemonConnection;
  v28[0] = MEMORY[0x1E69E9820];
  v28[1] = 3221225472;
  v28[2] = __71__AACustodianController_displayTrustedContactFlowWithModel_completion___block_invoke_89;
  v28[3] = &unk_1E7C9B078;
  v20 = v18;
  v29 = v20;
  v21 = [(AACustodianDaemonConnectionProviding *)daemonConnection remoteObjectProxyWithErrorHandler:v28];
  v22 = _AALogSystem();
  if (os_log_type_enabled(v22, OS_LOG_TYPE_DEFAULT))
  {
    *v27 = 0;
    _os_log_impl(&dword_1B6F6A000, v22, OS_LOG_TYPE_DEFAULT, "Displaying trusted contact flow from view service.", v27, 2u);
  }

  v25[0] = MEMORY[0x1E69E9820];
  v25[1] = 3221225472;
  v25[2] = __71__AACustodianController_displayTrustedContactFlowWithModel_completion___block_invoke_90;
  v25[3] = &unk_1E7C9B078;
  v23 = v20;
  v26 = v23;
  [v21 displayTrustedContactFlowWithModel:v6 completion:v25];

  _Block_object_dispose(&buf, 8);
  os_activity_scope_leave(&state);

  v24 = *MEMORY[0x1E69E9840];
}

void __71__AACustodianController_displayTrustedContactFlowWithModel_completion___block_invoke(void *a1, void *a2)
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
    _os_signpost_emit_with_name_impl(&dword_1B6F6A000, v8, OS_SIGNPOST_INTERVAL_END, v9, "DisplayTrustedContactFlow", " Error=%{public,signpost.telemetry:number2,name=Error}d ", &v18, 8u);
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
    _os_log_impl(&dword_1B6F6A000, v11, OS_LOG_TYPE_DEFAULT, "END [%lld] %fs: DisplayTrustedContactFlow  Error=%{public,signpost.telemetry:number2,name=Error}d ", &v18, 0x1Cu);
  }

  v16 = a1[4];
  if (v16)
  {
    (*(v16 + 16))(v16, v3);
  }

  v17 = *MEMORY[0x1E69E9840];
}

void __71__AACustodianController_displayTrustedContactFlowWithModel_completion___block_invoke_89(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = _AALogSystem();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
  {
    __71__AACustodianController_displayTrustedContactFlowWithModel_completion___block_invoke_89_cold_1();
  }

  (*(*(a1 + 32) + 16))();
}

void __71__AACustodianController_displayTrustedContactFlowWithModel_completion___block_invoke_90(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = _AALogSystem();
  v5 = v4;
  if (v3)
  {
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      __71__AACustodianController_displayTrustedContactFlowWithModel_completion___block_invoke_90_cold_1();
    }
  }

  else if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    *v6 = 0;
    _os_log_impl(&dword_1B6F6A000, v5, OS_LOG_TYPE_DEFAULT, "Displayed trusted contact flow UI successfully.", v6, 2u);
  }

  (*(*(a1 + 32) + 16))();
}

- (void)displayInvitationUIWithUUID:(id)a3 completion:(id)a4
{
  v41 = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = a4;
  v8 = _os_activity_create(&dword_1B6F6A000, "custodian-appleaccount/display-invitation-ui", MEMORY[0x1E69E9C00], OS_ACTIVITY_FLAG_DEFAULT);
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
    _os_signpost_emit_with_name_impl(&dword_1B6F6A000, v14, OS_SIGNPOST_INTERVAL_BEGIN, v10, "DisplayInvitationUI", " enableTelemetry=YES ", &buf, 2u);
  }

  v15 = _AASignpostLogSystem();
  if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
  {
    LODWORD(buf) = 134217984;
    *(&buf + 4) = v10;
    _os_log_impl(&dword_1B6F6A000, v15, OS_LOG_TYPE_DEFAULT, "BEGIN [%lld]: DisplayInvitationUI  enableTelemetry=YES ", &buf, 0xCu);
  }

  *&buf = 0;
  *(&buf + 1) = &buf;
  v37 = 0x3032000000;
  v38 = __Block_byref_object_copy__2;
  v39 = __Block_byref_object_dispose__2;
  v16 = self;
  v40 = v16;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 3221225472;
  aBlock[2] = __64__AACustodianController_displayInvitationUIWithUUID_completion___block_invoke;
  aBlock[3] = &unk_1E7C9B3D8;
  p_buf = &buf;
  v33 = v10;
  v34 = v12;
  v17 = v7;
  v31 = v17;
  v18 = _Block_copy(aBlock);
  daemonConnection = v16->_daemonConnection;
  v28[0] = MEMORY[0x1E69E9820];
  v28[1] = 3221225472;
  v28[2] = __64__AACustodianController_displayInvitationUIWithUUID_completion___block_invoke_91;
  v28[3] = &unk_1E7C9B078;
  v20 = v18;
  v29 = v20;
  v21 = [(AACustodianDaemonConnectionProviding *)daemonConnection remoteObjectProxyWithErrorHandler:v28];
  v22 = _AALogSystem();
  if (os_log_type_enabled(v22, OS_LOG_TYPE_DEFAULT))
  {
    *v27 = 0;
    _os_log_impl(&dword_1B6F6A000, v22, OS_LOG_TYPE_DEFAULT, "Displaying invitation UI from view service.", v27, 2u);
  }

  v25[0] = MEMORY[0x1E69E9820];
  v25[1] = 3221225472;
  v25[2] = __64__AACustodianController_displayInvitationUIWithUUID_completion___block_invoke_92;
  v25[3] = &unk_1E7C9B078;
  v23 = v20;
  v26 = v23;
  [v21 displayCustodianInviteWithUUID:v6 completion:v25];

  _Block_object_dispose(&buf, 8);
  os_activity_scope_leave(&state);

  v24 = *MEMORY[0x1E69E9840];
}

void __64__AACustodianController_displayInvitationUIWithUUID_completion___block_invoke(void *a1, void *a2)
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
    _os_signpost_emit_with_name_impl(&dword_1B6F6A000, v8, OS_SIGNPOST_INTERVAL_END, v9, "DisplayInvitationUI", " Error=%{public,signpost.telemetry:number2,name=Error}d ", &v18, 8u);
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
    _os_log_impl(&dword_1B6F6A000, v11, OS_LOG_TYPE_DEFAULT, "END [%lld] %fs: DisplayInvitationUI  Error=%{public,signpost.telemetry:number2,name=Error}d ", &v18, 0x1Cu);
  }

  v16 = a1[4];
  if (v16)
  {
    (*(v16 + 16))(v16, v3);
  }

  v17 = *MEMORY[0x1E69E9840];
}

void __64__AACustodianController_displayInvitationUIWithUUID_completion___block_invoke_91(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = _AALogSystem();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
  {
    __64__AACustodianController_displayInvitationUIWithUUID_completion___block_invoke_91_cold_1();
  }

  (*(*(a1 + 32) + 16))();
}

void __64__AACustodianController_displayInvitationUIWithUUID_completion___block_invoke_92(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = _AALogSystem();
  v5 = v4;
  if (v3)
  {
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      __64__AACustodianController_displayInvitationUIWithUUID_completion___block_invoke_92_cold_1();
    }
  }

  else if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    *v6 = 0;
    _os_log_impl(&dword_1B6F6A000, v5, OS_LOG_TYPE_DEFAULT, "Displayed invitation UI successfully.", v6, 2u);
  }

  (*(*(a1 + 32) + 16))();
}

- (void)reSendCustodianInvitationWithCustodianID:(id)a3 completion:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = _os_activity_create(&dword_1B6F6A000, "custodian-appleaccount/resend-invite", MEMORY[0x1E69E9C00], OS_ACTIVITY_FLAG_DEFAULT);
  state.opaque[0] = 0;
  state.opaque[1] = 0;
  os_activity_scope_enter(v8, &state);
  v9 = self->_analyticsReporter;
  v10 = [MEMORY[0x1E6985DB0] analyticsEventWithName:@"com.apple.appleaccount.custodian.setup.resendInvitation" altDSID:0 flowID:0];
  v28[0] = 0;
  v28[1] = v28;
  v28[2] = 0x3032000000;
  v28[3] = __Block_byref_object_copy__2;
  v28[4] = __Block_byref_object_dispose__2;
  v11 = self;
  v29 = v11;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 3221225472;
  aBlock[2] = __77__AACustodianController_reSendCustodianInvitationWithCustodianID_completion___block_invoke;
  aBlock[3] = &unk_1E7C9B798;
  v12 = v10;
  v24 = v12;
  v13 = v9;
  v25 = v13;
  v27 = v28;
  v14 = v7;
  v26 = v14;
  v15 = _Block_copy(aBlock);
  daemonConnection = v11->_daemonConnection;
  v21[0] = MEMORY[0x1E69E9820];
  v21[1] = 3221225472;
  v21[2] = __77__AACustodianController_reSendCustodianInvitationWithCustodianID_completion___block_invoke_2;
  v21[3] = &unk_1E7C9B078;
  v17 = v15;
  v22 = v17;
  v18 = [(AACustodianDaemonConnectionProviding *)daemonConnection remoteObjectProxyWithErrorHandler:v21];
  v19 = _AALogSystem();
  if (os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
  {
    v20 = 0;
    _os_log_impl(&dword_1B6F6A000, v19, OS_LOG_TYPE_DEFAULT, "Calling daemon service to resend invitation.", &v20, 2u);
  }

  [v18 reSendCustodianInvitationWithCustodianID:v6 completion:v17];
  _Block_object_dispose(v28, 8);

  os_activity_scope_leave(&state);
}

void __77__AACustodianController_reSendCustodianInvitationWithCustodianID_completion___block_invoke(uint64_t a1, void *a2)
{
  v6 = a2;
  [*(a1 + 32) updateTaskResultWithError:?];
  [*(a1 + 40) sendEvent:*(a1 + 32)];
  v3 = *(*(a1 + 56) + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = 0;

  v5 = *(a1 + 48);
  if (v5)
  {
    (*(v5 + 16))(v5, v6);
  }
}

void __77__AACustodianController_reSendCustodianInvitationWithCustodianID_completion___block_invoke_2(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = _AALogSystem();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
  {
    __77__AACustodianController_reSendCustodianInvitationWithCustodianID_completion___block_invoke_2_cold_1();
  }

  (*(*(a1 + 32) + 16))();
}

- (void)availableRecoveryFactorsWithCompletion:(id)a3
{
  v39 = *MEMORY[0x1E69E9840];
  v5 = a3;
  if (!v5)
  {
    [(AACustodianController *)a2 availableRecoveryFactorsWithCompletion:?];
  }

  v6 = _os_activity_create(&dword_1B6F6A000, "custodian-appleaccount/available-recovery-factors", MEMORY[0x1E69E9C00], OS_ACTIVITY_FLAG_DEFAULT);
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
    LOWORD(buf) = 0;
    _os_signpost_emit_with_name_impl(&dword_1B6F6A000, v12, OS_SIGNPOST_INTERVAL_BEGIN, v8, "FetchAvailableRecoveryFactors", " enableTelemetry=YES ", &buf, 2u);
  }

  v13 = _AASignpostLogSystem();
  if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
  {
    LODWORD(buf) = 134217984;
    *(&buf + 4) = v8;
    _os_log_impl(&dword_1B6F6A000, v13, OS_LOG_TYPE_DEFAULT, "BEGIN [%lld]: FetchAvailableRecoveryFactors  enableTelemetry=YES ", &buf, 0xCu);
  }

  *&buf = 0;
  *(&buf + 1) = &buf;
  v35 = 0x3032000000;
  v36 = __Block_byref_object_copy__2;
  v37 = __Block_byref_object_dispose__2;
  v14 = self;
  v38 = v14;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 3221225472;
  aBlock[2] = __64__AACustodianController_availableRecoveryFactorsWithCompletion___block_invoke;
  aBlock[3] = &unk_1E7C9B7C0;
  p_buf = &buf;
  v31 = v8;
  v32 = v10;
  v15 = v5;
  v29 = v15;
  v16 = _Block_copy(aBlock);
  daemonConnection = v14->_daemonConnection;
  v26[0] = MEMORY[0x1E69E9820];
  v26[1] = 3221225472;
  v26[2] = __64__AACustodianController_availableRecoveryFactorsWithCompletion___block_invoke_104;
  v26[3] = &unk_1E7C9B078;
  v18 = v16;
  v27 = v18;
  v19 = [(AACustodianDaemonConnectionProviding *)daemonConnection remoteObjectProxyWithErrorHandler:v26];
  v20 = _AALogSystem();
  if (os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT))
  {
    *v25 = 0;
    _os_log_impl(&dword_1B6F6A000, v20, OS_LOG_TYPE_DEFAULT, "Fetching available recovery factors", v25, 2u);
  }

  v23[0] = MEMORY[0x1E69E9820];
  v23[1] = 3221225472;
  v23[2] = __64__AACustodianController_availableRecoveryFactorsWithCompletion___block_invoke_105;
  v23[3] = &unk_1E7C9B7E8;
  v21 = v18;
  v24 = v21;
  [v19 availableRecoveryFactorsWithCompletion:v23];

  _Block_object_dispose(&buf, 8);
  os_activity_scope_leave(&state);

  v22 = *MEMORY[0x1E69E9840];
}

void __64__AACustodianController_availableRecoveryFactorsWithCompletion___block_invoke(void *a1, uint64_t a2, void *a3)
{
  v26 = *MEMORY[0x1E69E9840];
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
    LODWORD(v21) = [v12 code];
    _os_signpost_emit_with_name_impl(&dword_1B6F6A000, v10, OS_SIGNPOST_INTERVAL_END, v11, "FetchAvailableRecoveryFactors", " Error=%{public,signpost.telemetry:number2,name=Error}d ", &v20, 8u);
  }

  v13 = _AASignpostLogSystem();
  if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
  {
    v14 = Nanoseconds / 1000000000.0;
    v15 = a1[6];
    v16 = _AAErrorUnderlyingError(v5);
    v17 = [v16 code];
    v20 = 134218496;
    v21 = v15;
    v22 = 2048;
    v23 = v14;
    v24 = 1026;
    v25 = v17;
    _os_log_impl(&dword_1B6F6A000, v13, OS_LOG_TYPE_DEFAULT, "END [%lld] %fs: FetchAvailableRecoveryFactors  Error=%{public,signpost.telemetry:number2,name=Error}d ", &v20, 0x1Cu);
  }

  v18 = a1[4];
  if (v18)
  {
    (*(v18 + 16))(v18, a2, v5);
  }

  v19 = *MEMORY[0x1E69E9840];
}

void __64__AACustodianController_availableRecoveryFactorsWithCompletion___block_invoke_104(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = _AALogSystem();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
  {
    __64__AACustodianController_availableRecoveryFactorsWithCompletion___block_invoke_104_cold_1();
  }

  (*(*(a1 + 32) + 16))();
}

void __64__AACustodianController_availableRecoveryFactorsWithCompletion___block_invoke_105(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = a3;
  if (v4)
  {
    v5 = _AALogSystem();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      __64__AACustodianController_availableRecoveryFactorsWithCompletion___block_invoke_105_cold_1();
    }

    v6 = *(*(a1 + 32) + 16);
  }

  else
  {
    v6 = *(*(a1 + 32) + 16);
  }

  v6();
}

- (void)repairCustodians:(id)a3 completion:(id)a4
{
  v42 = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = a4;
  v8 = _os_activity_create(&dword_1B6F6A000, "custodian-appleaccount/custodian-repair", MEMORY[0x1E69E9C00], OS_ACTIVITY_FLAG_DEFAULT);
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
    _os_signpost_emit_with_name_impl(&dword_1B6F6A000, v14, OS_SIGNPOST_INTERVAL_BEGIN, v10, "RepairCustodians", " enableTelemetry=YES ", &buf, 2u);
  }

  v15 = _AASignpostLogSystem();
  if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
  {
    LODWORD(buf) = 134217984;
    *(&buf + 4) = v10;
    _os_log_impl(&dword_1B6F6A000, v15, OS_LOG_TYPE_DEFAULT, "BEGIN [%lld]: RepairCustodians  enableTelemetry=YES ", &buf, 0xCu);
  }

  *&buf = 0;
  *(&buf + 1) = &buf;
  v38 = 0x3032000000;
  v39 = __Block_byref_object_copy__2;
  v40 = __Block_byref_object_dispose__2;
  v16 = self;
  v41 = v16;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 3221225472;
  aBlock[2] = __53__AACustodianController_repairCustodians_completion___block_invoke;
  aBlock[3] = &unk_1E7C9B3D8;
  p_buf = &buf;
  v32 = v10;
  v33 = v12;
  v17 = v7;
  v30 = v17;
  v18 = _Block_copy(aBlock);
  daemonConnection = v16->_daemonConnection;
  v27[0] = MEMORY[0x1E69E9820];
  v27[1] = 3221225472;
  v27[2] = __53__AACustodianController_repairCustodians_completion___block_invoke_106;
  v27[3] = &unk_1E7C9B078;
  v20 = v18;
  v28 = v20;
  v21 = [(AACustodianDaemonConnectionProviding *)daemonConnection remoteObjectProxyWithErrorHandler:v27];
  v22 = _AALogSystem();
  if (os_log_type_enabled(v22, OS_LOG_TYPE_DEFAULT))
  {
    *v35 = 138412290;
    v36 = v6;
    _os_log_impl(&dword_1B6F6A000, v22, OS_LOG_TYPE_DEFAULT, "Repairing custodians %@", v35, 0xCu);
  }

  v25[0] = MEMORY[0x1E69E9820];
  v25[1] = 3221225472;
  v25[2] = __53__AACustodianController_repairCustodians_completion___block_invoke_107;
  v25[3] = &unk_1E7C9B078;
  v23 = v20;
  v26 = v23;
  [v21 repairCustodians:v6 completion:v25];

  _Block_object_dispose(&buf, 8);
  os_activity_scope_leave(&state);

  v24 = *MEMORY[0x1E69E9840];
}

void __53__AACustodianController_repairCustodians_completion___block_invoke(void *a1, void *a2)
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
    _os_signpost_emit_with_name_impl(&dword_1B6F6A000, v8, OS_SIGNPOST_INTERVAL_END, v9, "RepairCustodians", " Error=%{public,signpost.telemetry:number2,name=Error}d ", &v18, 8u);
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
    _os_log_impl(&dword_1B6F6A000, v11, OS_LOG_TYPE_DEFAULT, "END [%lld] %fs: RepairCustodians  Error=%{public,signpost.telemetry:number2,name=Error}d ", &v18, 0x1Cu);
  }

  v16 = a1[4];
  if (v16)
  {
    (*(v16 + 16))(v16, v3);
  }

  v17 = *MEMORY[0x1E69E9840];
}

void __53__AACustodianController_repairCustodians_completion___block_invoke_106(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = _AALogSystem();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
  {
    __53__AACustodianController_repairCustodians_completion___block_invoke_106_cold_1();
  }

  (*(*(a1 + 32) + 16))();
}

void __53__AACustodianController_repairCustodians_completion___block_invoke_107(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = _AALogSystem();
  v5 = v4;
  if (v3)
  {
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      __53__AACustodianController_repairCustodians_completion___block_invoke_107_cold_1();
    }
  }

  else if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    *v6 = 0;
    _os_log_impl(&dword_1B6F6A000, v5, OS_LOG_TYPE_DEFAULT, "Custodians repaired successfully.", v6, 2u);
  }

  (*(*(a1 + 32) + 16))();
}

- (void)preflightCustodianRecoveryWithCompletion:(id)a3
{
  v38 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = _os_activity_create(&dword_1B6F6A000, "custodian-appleaccount/preflight-custodian-recovery", MEMORY[0x1E69E9C00], OS_ACTIVITY_FLAG_DEFAULT);
  state.opaque[0] = 0;
  state.opaque[1] = 0;
  os_activity_scope_enter(v5, &state);
  v6 = _AASignpostLogSystem();
  v7 = _AASignpostCreate(v6);
  v9 = v8;

  v10 = _AASignpostLogSystem();
  v11 = v10;
  if (v7 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v10))
  {
    LOWORD(buf) = 0;
    _os_signpost_emit_with_name_impl(&dword_1B6F6A000, v11, OS_SIGNPOST_INTERVAL_BEGIN, v7, "PreflightCustodianRecovery", " enableTelemetry=YES ", &buf, 2u);
  }

  v12 = _AASignpostLogSystem();
  if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
  {
    LODWORD(buf) = 134217984;
    *(&buf + 4) = v7;
    _os_log_impl(&dword_1B6F6A000, v12, OS_LOG_TYPE_DEFAULT, "BEGIN [%lld]: PreflightCustodianRecovery  enableTelemetry=YES ", &buf, 0xCu);
  }

  *&buf = 0;
  *(&buf + 1) = &buf;
  v34 = 0x3032000000;
  v35 = __Block_byref_object_copy__2;
  v36 = __Block_byref_object_dispose__2;
  v13 = self;
  v37 = v13;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 3221225472;
  aBlock[2] = __66__AACustodianController_preflightCustodianRecoveryWithCompletion___block_invoke;
  aBlock[3] = &unk_1E7C9B3D8;
  p_buf = &buf;
  v30 = v7;
  v31 = v9;
  v14 = v4;
  v28 = v14;
  v15 = _Block_copy(aBlock);
  daemonConnection = v13->_daemonConnection;
  v25[0] = MEMORY[0x1E69E9820];
  v25[1] = 3221225472;
  v25[2] = __66__AACustodianController_preflightCustodianRecoveryWithCompletion___block_invoke_108;
  v25[3] = &unk_1E7C9B078;
  v17 = v15;
  v26 = v17;
  v18 = [(AACustodianDaemonConnectionProviding *)daemonConnection remoteObjectProxyWithErrorHandler:v25];
  v19 = _AALogSystem();
  if (os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
  {
    *v24 = 0;
    _os_log_impl(&dword_1B6F6A000, v19, OS_LOG_TYPE_DEFAULT, "Starting Preflight custodian recovery in CustodianController", v24, 2u);
  }

  v22[0] = MEMORY[0x1E69E9820];
  v22[1] = 3221225472;
  v22[2] = __66__AACustodianController_preflightCustodianRecoveryWithCompletion___block_invoke_109;
  v22[3] = &unk_1E7C9B078;
  v20 = v17;
  v23 = v20;
  [v18 preflightCustodianRecoveryWithCompletion:v22];

  _Block_object_dispose(&buf, 8);
  os_activity_scope_leave(&state);

  v21 = *MEMORY[0x1E69E9840];
}

void __66__AACustodianController_preflightCustodianRecoveryWithCompletion___block_invoke(void *a1, void *a2)
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
    _os_signpost_emit_with_name_impl(&dword_1B6F6A000, v8, OS_SIGNPOST_INTERVAL_END, v9, "PreflightCustodianRecovery", " Error=%{public,signpost.telemetry:number2,name=Error}d ", &v18, 8u);
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
    _os_log_impl(&dword_1B6F6A000, v11, OS_LOG_TYPE_DEFAULT, "END [%lld] %fs: PreflightCustodianRecovery  Error=%{public,signpost.telemetry:number2,name=Error}d ", &v18, 0x1Cu);
  }

  v16 = a1[4];
  if (v16)
  {
    (*(v16 + 16))(v16, v3);
  }

  v17 = *MEMORY[0x1E69E9840];
}

void __66__AACustodianController_preflightCustodianRecoveryWithCompletion___block_invoke_108(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = _AALogSystem();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
  {
    __66__AACustodianController_preflightCustodianRecoveryWithCompletion___block_invoke_108_cold_1();
  }

  (*(*(a1 + 32) + 16))();
}

void __66__AACustodianController_preflightCustodianRecoveryWithCompletion___block_invoke_109(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = _AALogSystem();
  v5 = v4;
  if (v3)
  {
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      __66__AACustodianController_preflightCustodianRecoveryWithCompletion___block_invoke_109_cold_1();
    }
  }

  else if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    *v6 = 0;
    _os_log_impl(&dword_1B6F6A000, v5, OS_LOG_TYPE_DEFAULT, "Preflight custodian recovery successfully.", v6, 2u);
  }

  (*(*(a1 + 32) + 16))();
}

void __66__AACustodianController_setupCustodianshipWithContext_completion___block_invoke_35_cold_1()
{
  v8 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_0(&dword_1B6F6A000, v0, v1, "AppleAccount daemon connection for setting up custodianship return an error: %@", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x1E69E9840];
}

void __66__AACustodianController_setupCustodianshipWithContext_completion___block_invoke_37_cold_1()
{
  v8 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_0(&dword_1B6F6A000, v0, v1, "Custodian setup failed: %@", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x1E69E9840];
}

void __74__AACustodianController_respondToCustodianRequestWithResponse_completion___block_invoke_38_cold_1()
{
  v8 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_0(&dword_1B6F6A000, v0, v1, "AppleAccount daemon connection for responding to custodian requests returned an error: %@", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x1E69E9840];
}

void __74__AACustodianController_respondToCustodianRequestWithResponse_completion___block_invoke_39_cold_1()
{
  v8 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_0(&dword_1B6F6A000, v0, v1, "Error responding to custodian requests: %@", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x1E69E9840];
}

void __63__AACustodianController_removeCustodianWithContext_completion___block_invoke_42_cold_1()
{
  v8 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_0(&dword_1B6F6A000, v0, v1, "AppleAccount daemon connection for removing custodian returned an error: %@", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x1E69E9840];
}

void __63__AACustodianController_removeCustodianWithContext_completion___block_invoke_43_cold_1()
{
  v8 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_0(&dword_1B6F6A000, v0, v1, "Error removing custodian: %@", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x1E69E9840];
}

void __66__AACustodianController_stopBeingCustodianWithContext_completion___block_invoke_44_cold_1()
{
  v8 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_0(&dword_1B6F6A000, v0, v1, "AppleAccount daemon connection returned an error: %@", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x1E69E9840];
}

void __66__AACustodianController_stopBeingCustodianWithContext_completion___block_invoke_45_cold_1()
{
  v8 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_0(&dword_1B6F6A000, v0, v1, "Error ending custodianship: %@", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x1E69E9840];
}

void __68__AACustodianController_fetchTrustedContactsWithRequest_completion___block_invoke_48_cold_1()
{
  v8 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_0(&dword_1B6F6A000, v0, v1, "AppleAccount daemon connection for fetching trusted contacts returned an error: %@", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x1E69E9840];
}

void __68__AACustodianController_fetchTrustedContactsWithRequest_completion___block_invoke_49_cold_1()
{
  v8 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_0(&dword_1B6F6A000, v0, v1, "Error fetching trusted contacts: %@", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x1E69E9840];
}

void __62__AACustodianController_fetchCustodianshipInfoWithCompletion___block_invoke_51_cold_1()
{
  v8 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_0(&dword_1B6F6A000, v0, v1, "Error fetching custodianship info: %@", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x1E69E9840];
}

void __64__AACustodianController_fetchSuggestedCustodiansWithCompletion___block_invoke_56_cold_1()
{
  v8 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_0(&dword_1B6F6A000, v0, v1, "Error fetching suggested custodians: %@", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x1E69E9840];
}

void __89__AACustodianController_fetchSuggestedCustodiansForUpsellWithTelemetryFlowID_completion___block_invoke_58_cold_1()
{
  v8 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_0(&dword_1B6F6A000, v0, v1, "Error fetching suggested custodiansor upsell : %@", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x1E69E9840];
}

void __66__AACustodianController_fetchCustodianHealthStatusWithCompletion___block_invoke_60_cold_1()
{
  v8 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_0(&dword_1B6F6A000, v0, v1, "Error fetching health status: %@", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x1E69E9840];
}

void __70__AACustodianController_startCustodianRecoveryWithContext_completion___block_invoke_cold_1()
{
  v8 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_0(&dword_1B6F6A000, v0, v1, "Custodian recovery failed to start with error: %@", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x1E69E9840];
}

void __70__AACustodianController_startCustodianRecoveryWithContext_completion___block_invoke_62_cold_1()
{
  v8 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_0(&dword_1B6F6A000, v0, v1, "AppleAccount daemon connection for starting custodian recovery request returned an error: %@", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x1E69E9840];
}

void __75__AACustodianController_fetchCustodianRecoveryConfigurationWithCompletion___block_invoke_cold_1()
{
  v8 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_0(&dword_1B6F6A000, v0, v1, "Custodian recovery configuration failed to fetch with error: %@", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x1E69E9840];
}

void __75__AACustodianController_fetchCustodianRecoveryConfigurationWithCompletion___block_invoke_64_cold_1()
{
  v8 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_0(&dword_1B6F6A000, v0, v1, "AppleAccount daemon connection for fetching custodian configuration returned an error: %@", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x1E69E9840];
}

void __77__AACustodianController_generateCustodianRecoveryCodeWithContext_completion___block_invoke_cold_1()
{
  v8 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_0(&dword_1B6F6A000, v0, v1, "Custodian recovery code failed to be generated with error: %@", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x1E69E9840];
}

void __86__AACustodianController__retryingGenerateCustodianRecoveryCodeWithContext_completion___block_invoke_cold_1()
{
  v8 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_0(&dword_1B6F6A000, v0, v1, "AppleAccount daemon connection for generating custodian recovery code returned an error: %@", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x1E69E9840];
}

void __77__AACustodianController_validateCustodianRecoveryCodeWithContext_completion___block_invoke_cold_1()
{
  v8 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_0(&dword_1B6F6A000, v0, v1, "Custodian code verification failed with error: %@", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x1E69E9840];
}

void __86__AACustodianController__retryingValidateCustodianRecoveryCodeWithContext_completion___block_invoke_cold_1()
{
  v8 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_0(&dword_1B6F6A000, v0, v1, "AppleAccount daemon connection for validating custodian recovery code returned an error: %@", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x1E69E9840];
}

void __74__AACustodianController_fetchCustodianRecoveryKeysWithContext_completion___block_invoke_cold_1()
{
  v8 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_0(&dword_1B6F6A000, v0, v1, "Failed to fetch recovery keys with error: %@", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x1E69E9840];
}

void __74__AACustodianController_fetchCustodianRecoveryKeysWithContext_completion___block_invoke_78_cold_1()
{
  v8 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_0(&dword_1B6F6A000, v0, v1, "AppleAccount daemon connection for fetching recovery keys returned an error: %@", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x1E69E9840];
}

void __88__AACustodianController_fetchCustodianPasswordResetInformationWithSessionID_completion___block_invoke_cold_1()
{
  v8 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_0(&dword_1B6F6A000, v0, v1, "Failed to fetch recovery token with error: %@", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x1E69E9840];
}

void __56__AACustodianController_startHealthCheckWithCompletion___block_invoke_83_cold_1()
{
  v8 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_0(&dword_1B6F6A000, v0, v1, "AppleAccount daemon connection for health check return an error: %@", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x1E69E9840];
}

void __56__AACustodianController_startHealthCheckWithCompletion___block_invoke_84_cold_1()
{
  v8 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_0(&dword_1B6F6A000, v0, v1, "Custodian health check failed: %@", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x1E69E9840];
}

void __61__AACustodianController_startManateeMigrationWithCompletion___block_invoke_85_cold_1()
{
  v8 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_0(&dword_1B6F6A000, v0, v1, "AppleAccount daemon connection for starting Manatee migration return an error: %@", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x1E69E9840];
}

void __61__AACustodianController_startManateeMigrationWithCompletion___block_invoke_86_cold_1()
{
  v8 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_0(&dword_1B6F6A000, v0, v1, "Manatee migration failed: %@", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x1E69E9840];
}

void __71__AACustodianController_pullTrustedContactsFromCloudKitWithCompletion___block_invoke_cold_1()
{
  v8 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_0(&dword_1B6F6A000, v0, v1, "Failed to pull trusted contacts from CloudKit: %@", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x1E69E9840];
}

void __71__AACustodianController_pullTrustedContactsFromCloudKitWithCompletion___block_invoke_87_cold_1()
{
  v8 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_0(&dword_1B6F6A000, v0, v1, "AppleAccount daemon connection for pulling trusted contacts from CloudKit return an error: %@", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x1E69E9840];
}

void __71__AACustodianController_displayTrustedContactFlowWithModel_completion___block_invoke_89_cold_1()
{
  v8 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_0(&dword_1B6F6A000, v0, v1, "AppleAccount daemon connection for displaying trusted contact flow returned an error: %@", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x1E69E9840];
}

void __71__AACustodianController_displayTrustedContactFlowWithModel_completion___block_invoke_90_cold_1()
{
  v8 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_0(&dword_1B6F6A000, v0, v1, "Displayed trusted contact flow with error %@", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x1E69E9840];
}

void __64__AACustodianController_displayInvitationUIWithUUID_completion___block_invoke_91_cold_1()
{
  v8 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_0(&dword_1B6F6A000, v0, v1, "AppleAccount daemon connection for displaying invitation UI returned an error: %@", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x1E69E9840];
}

void __64__AACustodianController_displayInvitationUIWithUUID_completion___block_invoke_92_cold_1()
{
  v8 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_0(&dword_1B6F6A000, v0, v1, "Displayed invitation UI with error %@", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x1E69E9840];
}

void __77__AACustodianController_reSendCustodianInvitationWithCustodianID_completion___block_invoke_2_cold_1()
{
  v8 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_0(&dword_1B6F6A000, v0, v1, "AppleAccount daemon connection for resending invitation encountered error: %@", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x1E69E9840];
}

- (void)availableRecoveryFactorsWithCompletion:(uint64_t)a1 .cold.1(uint64_t a1, uint64_t a2)
{
  v4 = [MEMORY[0x1E696AAA8] currentHandler];
  [v4 handleFailureInMethod:a1 object:a2 file:@"AACustodianController.m" lineNumber:840 description:{@"Invalid parameter not satisfying: %@", @"completion"}];
}

void __64__AACustodianController_availableRecoveryFactorsWithCompletion___block_invoke_104_cold_1()
{
  v8 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_0(&dword_1B6F6A000, v0, v1, "AppleAccount daemon connection for fetching available recovery factors returned an error: %@", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x1E69E9840];
}

void __64__AACustodianController_availableRecoveryFactorsWithCompletion___block_invoke_105_cold_1()
{
  v8 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_0(&dword_1B6F6A000, v0, v1, "Fetching available recovery factors failed: %@", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x1E69E9840];
}

void __53__AACustodianController_repairCustodians_completion___block_invoke_106_cold_1()
{
  v8 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_0(&dword_1B6F6A000, v0, v1, "AppleAccount daemon connection for repairing custodian returned an error: %@", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x1E69E9840];
}

void __53__AACustodianController_repairCustodians_completion___block_invoke_107_cold_1()
{
  v8 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_0(&dword_1B6F6A000, v0, v1, "Error repairing error: %@", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x1E69E9840];
}

void __66__AACustodianController_preflightCustodianRecoveryWithCompletion___block_invoke_108_cold_1()
{
  v8 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_0(&dword_1B6F6A000, v0, v1, "AppleAccount daemon connection for Preflighting custodian returned an error: %@", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x1E69E9840];
}

void __66__AACustodianController_preflightCustodianRecoveryWithCompletion___block_invoke_109_cold_1()
{
  v8 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_0(&dword_1B6F6A000, v0, v1, "Preflight custodian recovery failed: %@", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x1E69E9840];
}

@end