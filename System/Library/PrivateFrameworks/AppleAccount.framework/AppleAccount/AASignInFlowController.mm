@interface AASignInFlowController
- (AASignInFlowController)init;
- (AASignInFlowController)initWithAccountStore:(id)a3;
- (AASignInFlowController)initWithAccountStore:(id)a3 dataclassManager:(id)a4;
- (AASignInFlowControllerDelegate)delegate;
- (BOOL)_delegateRequiresTerms;
- (BOOL)_delegateWantsToBackgroundDataclassEnablement;
- (BOOL)_delegateWantsToSkipDataclassEnablement;
- (BOOL)_isAccountImprovementProgramEnabled;
- (BOOL)_newSignInFlow;
- (BOOL)_newSignInReauth;
- (BOOL)_shouldEnableDataclassesForAccount:(id)a3;
- (BOOL)_shouldStashLoginResponse;
- (CDPStateUIProvider)cdpUIProvider;
- (id)_aaErrorForErrorCode:(int64_t)a3 withUnderlyingError:(id)a4;
- (id)_aaMessageForErrorCode:(int64_t)a3;
- (id)_dataclassActionsForPostCDPSaveForAccount:(id)a3;
- (id)_dataclassActionsForPreflightSaveForAccount:(id)a3;
- (id)_nameForCloudService;
- (id)_onqueue_createCDPContextWithAuthResults:(id)a3;
- (id)_onqueue_createNewAppleAccountWithAuthResults:(id)a3 accountCreationError:(id *)a4;
- (id)_onqueue_updateOrCreateAppleAccountForAuthResults:(id)a3 accountCreationError:(id *)a4;
- (id)_titleForSignInFailureAlert;
- (id)_titleForVerificationFailureAlert;
- (id)_userPersonaUniqueString;
- (id)dataclassManager;
- (unint64_t)_findMyActivationAction;
- (void)_addKeysAndEnrollCDPStateForAccount:(id)a3 withCDPContext:(id)a4 completion:(id)a5;
- (void)_backgroundSaveAccount:(id)a3 withDataclassEnablement:(BOOL)a4 completion:(id)a5;
- (void)_cacheLoginResponse:(id)a3 forAccount:(id)a4 completion:(id)a5;
- (void)_delegate_presentAccountCreationError:(id)a3 completion:(id)a4;
- (void)_delegate_presentAccountPrivacyOptInForAccount:(id)a3 userActionCompletion:(id)a4;
- (void)_delegate_presentDataclassActionsForAccount:(id)a3 completion:(id)a4;
- (void)_delegate_presentGenericTermsUIforAccount:(id)a3 authResults:(id)a4 serverError:(id)a5 completion:(id)a6;
- (void)_delegate_presentProgressViewForAccount:(id)a3 completion:(id)a4;
- (void)_delegate_presentValidationAlertForError:(id)a3 forAccount:(id)a4 completion:(id)a5;
- (void)_enableFindMyIfPossibleWithAccount:(id)a3 completion:(id)a4;
- (void)_enrollCDPStateForAccount:(id)a3 withCDPContext:(id)a4 completion:(id)a5;
- (void)_isAccountImprovementProgramEnabled;
- (void)_loginAndUpdateiCloudWithAuthResults:(id)a3 iCloudAccount:(id)a4 withCompletion:(id)a5;
- (void)_onqueue_addKeysAndEnrollCDPStateForAccount:(id)a3 withCDPContext:(id)a4 completion:(id)a5;
- (void)_onqueue_delegate_enableFindMyWithCompletion:(id)a3;
- (void)_onqueue_enableFindMyIfPossibleWithAccount:(id)a3 completion:(id)a4;
- (void)_onqueue_enrollCDPStateForAccount:(id)a3 withCDPContext:(id)a4 completion:(id)a5;
- (void)_onqueue_legacyRegisterAndVerifyLoginForiCloudAccount:(id)a3 authResults:(id)a4 withCompletion:(id)a5;
- (void)_onqueue_prepareExistingAppleAccountForSignIn:(id)a3 withAuthResults:(id)a4 accountCreationError:(id *)a5;
- (void)_onqueue_registerAndVerifyLoginForiCloudAccount:(id)a3 authResults:(id)a4 withCompletion:(id)a5;
- (void)_onqueue_saveAccount:(id)a3 withAuthResults:(id)a4 withCDPEnablement:(BOOL)a5 withAllDataclassesEnabledIfPossibleWithCompletion:(id)a6;
- (void)_onqueue_saveTermsWithAuthResults:(id)a3 account:(id)a4;
- (void)_onqueue_signInWithIDMSAuthenticationResults:(id)a3 completion:(id)a4;
- (void)_onqueue_updateAppleAccount:(id)a3 withAuthenticationResults:(id)a4;
- (void)_onqueue_updateAppleAccountIfNecessary:(id)a3 withAltDSID:(id)a4 rawPassword:(id)a5;
- (void)_onqueue_validateAndEnrollCDPStateForAccount:(id)a3 withAuthResults:(id)a4 completion:(id)a5;
- (void)_onqueue_verifyLoginResponseForiCloudAccount:(id)a3 withAuthResults:(id)a4 withSuccess:(BOOL)a5 error:(id)a6 completion:(id)a7;
- (void)_preflightSaveWithAuthResults:(id)a3 account:(id)a4 withCompletion:(id)a5;
- (void)_registerAndVerifyLoginForiCloudAccount:(id)a3 authResults:(id)a4 withCompletion:(id)a5;
- (void)_saveAccount:(id)a3 withAuthResults:(id)a4 withCDPEnablement:(BOOL)a5 withAllDataclassesEnabledIfPossibleWithCompletion:(id)a6;
- (void)_stashLoginResponseWithAuthenticationResults:(id)a3 appleAccount:(id)a4;
- (void)_userPersonaUniqueString;
- (void)_validateAndEnrollCDPStateForAccount:(id)a3 withAuthResults:(id)a4 completion:(id)a5;
- (void)_verifyLoginResponseForiCloudAccount:(id)a3 withAuthResults:(id)a4 withSuccess:(BOOL)a5 error:(id)a6 completion:(id)a7;
- (void)prewarmOperationsWithCompletion:(id)a3;
- (void)signInWithIDMSAuthenticationResults:(id)a3 completion:(id)a4;
@end

@implementation AASignInFlowController

- (AASignInFlowController)init
{
  v3 = objc_opt_new();
  v4 = [(AASignInFlowController *)self initWithAccountStore:v3];

  return v4;
}

- (AASignInFlowController)initWithAccountStore:(id)a3
{
  v5 = a3;
  v14.receiver = self;
  v14.super_class = AASignInFlowController;
  v6 = [(AASignInFlowController *)&v14 init];
  if (v6)
  {
    v7 = dispatch_queue_attr_make_with_qos_class(0, QOS_CLASS_USER_INTERACTIVE, 0);
    v8 = dispatch_queue_attr_make_with_qos_class(0, QOS_CLASS_UTILITY, 0);
    v9 = dispatch_queue_create("com.apple.AppleAccount.sign-in-flow-controller-ui", v7);
    uiQueue = v6->_uiQueue;
    v6->_uiQueue = v9;

    v11 = dispatch_queue_create("com.apple.AppleAccount.sign-in-flow-controller-utility", v8);
    utilityQueue = v6->_utilityQueue;
    v6->_utilityQueue = v11;

    objc_storeStrong(&v6->_accountStore, a3);
  }

  return v6;
}

- (AASignInFlowController)initWithAccountStore:(id)a3 dataclassManager:(id)a4
{
  v7 = a4;
  v8 = [(AASignInFlowController *)self initWithAccountStore:a3];
  v9 = v8;
  if (v8)
  {
    objc_storeStrong(&v8->_dataclassManager, a4);
  }

  return v9;
}

- (void)signInWithIDMSAuthenticationResults:(id)a3 completion:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = _os_activity_create(&dword_1B6F6A000, "appleaccount/signin-with-IDMSauthresults", MEMORY[0x1E69E9C00], OS_ACTIVITY_FLAG_DEFAULT);
  state.opaque[0] = 0;
  state.opaque[1] = 0;
  os_activity_scope_enter(v8, &state);
  if (!v7)
  {
    v9 = _AALogSystem();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_FAULT))
    {
      [AASignInFlowController signInWithIDMSAuthenticationResults:completion:];
    }
  }

  uiQueue = self->_uiQueue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __73__AASignInFlowController_signInWithIDMSAuthenticationResults_completion___block_invoke;
  block[3] = &unk_1E7C9A898;
  block[4] = self;
  v16 = v6;
  v17 = v7;
  v11 = uiQueue;
  v12 = v7;
  v13 = v6;
  v14 = dispatch_block_create_with_qos_class(DISPATCH_BLOCK_ENFORCE_QOS_CLASS|DISPATCH_BLOCK_ASSIGN_CURRENT, QOS_CLASS_USER_INTERACTIVE, 0, block);
  dispatch_async(v11, v14);

  os_activity_scope_leave(&state);
}

- (void)_registerAndVerifyLoginForiCloudAccount:(id)a3 authResults:(id)a4 withCompletion:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  uiQueue = self->_uiQueue;
  v17[0] = MEMORY[0x1E69E9820];
  v17[1] = 3221225472;
  v17[2] = __93__AASignInFlowController__registerAndVerifyLoginForiCloudAccount_authResults_withCompletion___block_invoke;
  v17[3] = &unk_1E7C9A8C0;
  v17[4] = self;
  v18 = v8;
  v19 = v9;
  v20 = v10;
  v12 = uiQueue;
  v13 = v10;
  v14 = v9;
  v15 = v8;
  v16 = dispatch_block_create_with_qos_class(DISPATCH_BLOCK_ENFORCE_QOS_CLASS|DISPATCH_BLOCK_ASSIGN_CURRENT, QOS_CLASS_USER_INTERACTIVE, 0, v17);
  dispatch_async(v12, v16);
}

- (void)_verifyLoginResponseForiCloudAccount:(id)a3 withAuthResults:(id)a4 withSuccess:(BOOL)a5 error:(id)a6 completion:(id)a7
{
  v12 = a3;
  v13 = a4;
  v14 = a6;
  v15 = a7;
  uiQueue = self->_uiQueue;
  v23[0] = MEMORY[0x1E69E9820];
  v23[1] = 3221225472;
  v23[2] = __108__AASignInFlowController__verifyLoginResponseForiCloudAccount_withAuthResults_withSuccess_error_completion___block_invoke;
  v23[3] = &unk_1E7C9A8E8;
  v23[4] = self;
  v24 = v12;
  v28 = a5;
  v25 = v13;
  v26 = v14;
  v27 = v15;
  v17 = uiQueue;
  v18 = v15;
  v19 = v14;
  v20 = v13;
  v21 = v12;
  v22 = dispatch_block_create_with_qos_class(DISPATCH_BLOCK_ENFORCE_QOS_CLASS|DISPATCH_BLOCK_ASSIGN_CURRENT, QOS_CLASS_USER_INTERACTIVE, 0, v23);
  dispatch_async(v17, v22);
}

- (void)_validateAndEnrollCDPStateForAccount:(id)a3 withAuthResults:(id)a4 completion:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  uiQueue = self->_uiQueue;
  v17[0] = MEMORY[0x1E69E9820];
  v17[1] = 3221225472;
  v17[2] = __90__AASignInFlowController__validateAndEnrollCDPStateForAccount_withAuthResults_completion___block_invoke;
  v17[3] = &unk_1E7C9A8C0;
  v17[4] = self;
  v18 = v8;
  v19 = v9;
  v20 = v10;
  v12 = uiQueue;
  v13 = v10;
  v14 = v9;
  v15 = v8;
  v16 = dispatch_block_create_with_qos_class(DISPATCH_BLOCK_ENFORCE_QOS_CLASS|DISPATCH_BLOCK_ASSIGN_CURRENT, QOS_CLASS_USER_INTERACTIVE, 0, v17);
  dispatch_async(v12, v16);
}

- (void)_addKeysAndEnrollCDPStateForAccount:(id)a3 withCDPContext:(id)a4 completion:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  uiQueue = self->_uiQueue;
  v17[0] = MEMORY[0x1E69E9820];
  v17[1] = 3221225472;
  v17[2] = __88__AASignInFlowController__addKeysAndEnrollCDPStateForAccount_withCDPContext_completion___block_invoke;
  v17[3] = &unk_1E7C9A8C0;
  v17[4] = self;
  v18 = v8;
  v19 = v9;
  v20 = v10;
  v12 = uiQueue;
  v13 = v10;
  v14 = v9;
  v15 = v8;
  v16 = dispatch_block_create_with_qos_class(DISPATCH_BLOCK_ENFORCE_QOS_CLASS|DISPATCH_BLOCK_ASSIGN_CURRENT, QOS_CLASS_USER_INTERACTIVE, 0, v17);
  dispatch_async(v12, v16);
}

- (void)_enrollCDPStateForAccount:(id)a3 withCDPContext:(id)a4 completion:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  uiQueue = self->_uiQueue;
  v17[0] = MEMORY[0x1E69E9820];
  v17[1] = 3221225472;
  v17[2] = __78__AASignInFlowController__enrollCDPStateForAccount_withCDPContext_completion___block_invoke;
  v17[3] = &unk_1E7C9A8C0;
  v17[4] = self;
  v18 = v8;
  v19 = v9;
  v20 = v10;
  v12 = uiQueue;
  v13 = v10;
  v14 = v9;
  v15 = v8;
  v16 = dispatch_block_create_with_qos_class(DISPATCH_BLOCK_ENFORCE_QOS_CLASS|DISPATCH_BLOCK_ASSIGN_CURRENT, QOS_CLASS_USER_INTERACTIVE, 0, v17);
  dispatch_async(v12, v16);
}

- (void)_onqueue_signInWithIDMSAuthenticationResults:(id)a3 completion:(id)a4
{
  v72 = *MEMORY[0x1E69E9840];
  v7 = a3;
  v8 = a4;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 3221225472;
  aBlock[2] = __82__AASignInFlowController__onqueue_signInWithIDMSAuthenticationResults_completion___block_invoke;
  aBlock[3] = &unk_1E7C9A910;
  v50 = v8;
  v65 = v50;
  v9 = _Block_copy(aBlock);
  objc_storeStrong(&self->_authResults, a3);
  v10 = _AASignpostLogSystem();
  v11 = _AASignpostCreate(v10);
  v13 = v12;

  v14 = _AASignpostLogSystem();
  v15 = v14;
  if (v11 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v14))
  {
    *buf = 0;
    _os_signpost_emit_with_name_impl(&dword_1B6F6A000, v15, OS_SIGNPOST_INTERVAL_BEGIN, v11, "GetLocalAppleAccount", " enableTelemetry=YES ", buf, 2u);
  }

  v16 = _AASignpostLogSystem();
  if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 134217984;
    v67 = v11;
    _os_log_impl(&dword_1B6F6A000, v16, OS_LOG_TYPE_DEFAULT, "BEGIN [%lld]: GetLocalAppleAccount  enableTelemetry=YES ", buf, 0xCu);
  }

  v63 = 0;
  v49 = [(AASignInFlowController *)self _onqueue_updateOrCreateAppleAccountForAuthResults:v7 accountCreationError:&v63];
  v17 = v63;
  v18 = v17;
  if (v17)
  {
    v19 = [MEMORY[0x1E696AD98] numberWithInteger:{objc_msgSend(v17, "code")}];
  }

  else
  {
    v19 = 0;
  }

  v20 = [(AASignInFlowController *)self telemetryTimeSeries];
  v21 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%s_%s", "GetLocalAppleAccount", "errorCode"];
  [v20 setObject:v19 forKeyedSubscript:v21];

  if (v18)
  {
  }

  v22 = [v18 domain];
  v23 = [(AASignInFlowController *)self telemetryTimeSeries];
  v24 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%s_%s", "GetLocalAppleAccount", "errorDomain"];
  [v23 setObject:v22 forKeyedSubscript:v24];

  Nanoseconds = _AASignpostGetNanoseconds(v11, v13);
  v26 = _AASignpostLogSystem();
  v27 = v26;
  if (v11 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v26))
  {
    v28 = [v18 code];
    *buf = 67240192;
    LODWORD(v67) = v28;
    _os_signpost_emit_with_name_impl(&dword_1B6F6A000, v27, OS_SIGNPOST_INTERVAL_END, v11, "GetLocalAppleAccount", " Error=%{public,signpost.telemetry:number2,name=Error}d ", buf, 8u);
  }

  v29 = Nanoseconds / 1000000000.0;

  v30 = _AASignpostLogSystem();
  if (os_log_type_enabled(v30, OS_LOG_TYPE_DEFAULT))
  {
    v31 = [v18 code];
    *buf = 134218496;
    v67 = v11;
    v68 = 2048;
    v69 = v29;
    v70 = 1026;
    v71 = v31;
    _os_log_impl(&dword_1B6F6A000, v30, OS_LOG_TYPE_DEFAULT, "END [%lld] %fs:GetLocalAppleAccount  Error=%{public,signpost.telemetry:number2,name=Error}d ", buf, 0x1Cu);
  }

  v32 = [(AASignInFlowController *)self telemetryTimeSeries];
  v33 = [MEMORY[0x1E696AD98] numberWithDouble:v29];
  [v32 setObject:v33 forKeyedSubscript:@"GetLocalAppleAccount"];

  if (v18)
  {
    [(AASignInFlowController *)self _delegate_presentAccountCreationError:v18 completion:v9];
  }

  else
  {
    v59[0] = MEMORY[0x1E69E9820];
    v59[1] = 3221225472;
    v59[2] = __82__AASignInFlowController__onqueue_signInWithIDMSAuthenticationResults_completion___block_invoke_43;
    v59[3] = &unk_1E7C9A960;
    v62 = v9;
    v59[4] = self;
    v34 = v7;
    v60 = v34;
    v35 = v49;
    v61 = v35;
    v36 = _Block_copy(v59);
    v55[0] = MEMORY[0x1E69E9820];
    v55[1] = 3221225472;
    v55[2] = __82__AASignInFlowController__onqueue_signInWithIDMSAuthenticationResults_completion___block_invoke_51;
    v55[3] = &unk_1E7C9A8C0;
    v55[4] = self;
    v37 = v35;
    v56 = v37;
    v57 = v34;
    v58 = v36;
    v48 = v36;
    v38 = _Block_copy(v55);
    v39 = _AASignpostLogSystem();
    v40 = _AASignpostCreate(v39);
    v42 = v41;

    v43 = _AASignpostLogSystem();
    v44 = v43;
    if (v40 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v43))
    {
      *buf = 0;
      _os_signpost_emit_with_name_impl(&dword_1B6F6A000, v44, OS_SIGNPOST_INTERVAL_BEGIN, v40, "SignInPresentProgressView", " enableTelemetry=YES ", buf, 2u);
    }

    v45 = _AASignpostLogSystem();
    if (os_log_type_enabled(v45, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 134217984;
      v67 = v40;
      _os_log_impl(&dword_1B6F6A000, v45, OS_LOG_TYPE_DEFAULT, "BEGIN [%lld]: SignInPresentProgressView  enableTelemetry=YES ", buf, 0xCu);
    }

    v51[0] = MEMORY[0x1E69E9820];
    v51[1] = 3221225472;
    v51[2] = __82__AASignInFlowController__onqueue_signInWithIDMSAuthenticationResults_completion___block_invoke_52;
    v51[3] = &unk_1E7C9A988;
    v53 = v40;
    v54 = v42;
    v51[4] = self;
    v52 = v38;
    v46 = v38;
    [(AASignInFlowController *)self _delegate_presentProgressViewForAccount:v37 completion:v51];
  }

  v47 = *MEMORY[0x1E69E9840];
}

uint64_t __82__AASignInFlowController__onqueue_signInWithIDMSAuthenticationResults_completion___block_invoke(uint64_t a1)
{
  result = *(a1 + 32);
  if (result)
  {
    return (*(result + 16))();
  }

  return result;
}

void __82__AASignInFlowController__onqueue_signInWithIDMSAuthenticationResults_completion___block_invoke_43(uint64_t a1, char a2, void *a3, void *a4)
{
  v29 = *MEMORY[0x1E69E9840];
  v7 = a3;
  v8 = a4;
  if (a2)
  {
    [*(a1 + 32) _stashLoginResponseWithAuthenticationResults:*(a1 + 40) appleAccount:*(a1 + 48)];
    v9 = _AALogSystem();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_1B6F6A000, v9, OS_LOG_TYPE_DEFAULT, "Successfully authenticated account, attempting to enable FindMy if possible...", buf, 2u);
    }

    v10 = _AASignpostLogSystem();
    v11 = _AASignpostCreate(v10);
    v13 = v12;

    v14 = _AASignpostLogSystem();
    v15 = v14;
    if (v11 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v14))
    {
      *buf = 0;
      _os_signpost_emit_with_name_impl(&dword_1B6F6A000, v15, OS_SIGNPOST_INTERVAL_BEGIN, v11, "SignInEnableFindMy", " enableTelemetry=YES ", buf, 2u);
    }

    v16 = _AASignpostLogSystem();
    if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 134217984;
      v28 = v11;
      _os_log_impl(&dword_1B6F6A000, v16, OS_LOG_TYPE_DEFAULT, "BEGIN [%lld]: SignInEnableFindMy  enableTelemetry=YES ", buf, 0xCu);
    }

    v17 = *(a1 + 32);
    v20[0] = MEMORY[0x1E69E9820];
    v20[1] = 3221225472;
    v20[2] = __82__AASignInFlowController__onqueue_signInWithIDMSAuthenticationResults_completion___block_invoke_44;
    v20[3] = &unk_1E7C9A938;
    v20[4] = v17;
    v24 = v11;
    v25 = v13;
    v18 = *(a1 + 48);
    v23 = *(a1 + 56);
    v26 = a2;
    v21 = v7;
    v22 = v8;
    [v17 _enableFindMyIfPossibleWithAccount:v18 completion:v20];
  }

  else
  {
    (*(*(a1 + 56) + 16))();
  }

  v19 = *MEMORY[0x1E69E9840];
}

uint64_t __82__AASignInFlowController__onqueue_signInWithIDMSAuthenticationResults_completion___block_invoke_44(uint64_t a1, uint64_t a2)
{
  v2 = a2;
  v27 = *MEMORY[0x1E69E9840];
  v4 = [MEMORY[0x1E696AD98] numberWithBool:a2];
  v5 = [*(a1 + 32) telemetryTimeSeries];
  v6 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%s_%s", "SignInEnableFindMy", "didEnable"];
  [v5 setObject:v4 forKeyedSubscript:v6];

  Nanoseconds = _AASignpostGetNanoseconds(*(a1 + 64), *(a1 + 72));
  v8 = _AASignpostLogSystem();
  v9 = v8;
  v10 = *(a1 + 64);
  if (v10 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v8))
  {
    *buf = 67240192;
    LODWORD(v22) = v2;
    _os_signpost_emit_with_name_impl(&dword_1B6F6A000, v9, OS_SIGNPOST_INTERVAL_END, v10, "SignInEnableFindMy", " DidEnable=%{public,signpost.telemetry:number1,name=DidEnable}d ", buf, 8u);
  }

  v11 = Nanoseconds / 1000000000.0;

  v12 = _AASignpostLogSystem();
  if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
  {
    v13 = *(a1 + 64);
    *buf = 134218496;
    v22 = v13;
    v23 = 2048;
    v24 = v11;
    v25 = 1026;
    v26 = v2;
    _os_log_impl(&dword_1B6F6A000, v12, OS_LOG_TYPE_DEFAULT, "END [%lld] %fs:SignInEnableFindMy  DidEnable=%{public,signpost.telemetry:number1,name=DidEnable}d ", buf, 0x1Cu);
  }

  v14 = [*(a1 + 32) telemetryTimeSeries];
  v15 = [MEMORY[0x1E696AD98] numberWithDouble:v11];
  [v14 setObject:v15 forKeyedSubscript:@"SignInEnableFindMy"];

  v16 = *(a1 + 48);
  v17 = *(a1 + 80);
  v18 = *(a1 + 40);
  result = (*(*(a1 + 56) + 16))();
  v20 = *MEMORY[0x1E69E9840];
  return result;
}

uint64_t __82__AASignInFlowController__onqueue_signInWithIDMSAuthenticationResults_completion___block_invoke_51(uint64_t a1)
{
  v2 = [*(a1 + 32) _termsAreRequired];
  v3 = *(a1 + 32);
  v4 = *(a1 + 40);
  v5 = *(a1 + 48);
  v6 = *(a1 + 56);
  if (v2)
  {

    return [v3 _delegate_presentGenericTermsUIforAccount:v4 authResults:v5 serverError:0 completion:v6];
  }

  else
  {
    v8 = *(a1 + 56);

    return [v3 _registerAndVerifyLoginForiCloudAccount:v4 authResults:v5 withCompletion:{v8, v6}];
  }
}

uint64_t __82__AASignInFlowController__onqueue_signInWithIDMSAuthenticationResults_completion___block_invoke_52(uint64_t a1, uint64_t a2)
{
  v2 = a2;
  v25 = *MEMORY[0x1E69E9840];
  v4 = [MEMORY[0x1E696AD98] numberWithBool:a2];
  v5 = [*(a1 + 32) telemetryTimeSeries];
  v6 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%s_%s", "SignInPresentProgressView", "didPresent"];
  [v5 setObject:v4 forKeyedSubscript:v6];

  Nanoseconds = _AASignpostGetNanoseconds(*(a1 + 48), *(a1 + 56));
  v8 = _AASignpostLogSystem();
  v9 = v8;
  v10 = *(a1 + 48);
  if (v10 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v8))
  {
    *buf = 67240192;
    LODWORD(v20) = v2;
    _os_signpost_emit_with_name_impl(&dword_1B6F6A000, v9, OS_SIGNPOST_INTERVAL_END, v10, "SignInPresentProgressView", " DidPresent=%{public,signpost.telemetry:number1,name=DidPresent}d ", buf, 8u);
  }

  v11 = Nanoseconds / 1000000000.0;

  v12 = _AASignpostLogSystem();
  if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
  {
    v13 = *(a1 + 48);
    *buf = 134218496;
    v20 = v13;
    v21 = 2048;
    v22 = v11;
    v23 = 1026;
    v24 = v2;
    _os_log_impl(&dword_1B6F6A000, v12, OS_LOG_TYPE_DEFAULT, "END [%lld] %fs:SignInPresentProgressView  DidPresent=%{public,signpost.telemetry:number1,name=DidPresent}d ", buf, 0x1Cu);
  }

  v14 = [*(a1 + 32) telemetryTimeSeries];
  v15 = [MEMORY[0x1E696AD98] numberWithDouble:v11];
  [v14 setObject:v15 forKeyedSubscript:@"SignInPresentProgressView"];

  v16 = _AALogSystem();
  if (os_log_type_enabled(v16, OS_LOG_TYPE_DEBUG))
  {
    __82__AASignInFlowController__onqueue_signInWithIDMSAuthenticationResults_completion___block_invoke_52_cold_1();
  }

  result = (*(*(a1 + 40) + 16))();
  v18 = *MEMORY[0x1E69E9840];
  return result;
}

- (id)_onqueue_updateOrCreateAppleAccountForAuthResults:(id)a3 accountCreationError:(id *)a4
{
  v6 = a3;
  v7 = [v6 objectForKeyedSubscript:*MEMORY[0x1E698DB68]];
  v8 = [v7 stringValue];

  if (v8 && ([(ACAccountStore *)self->_accountStore aa_appleAccountWithPersonID:v8], (v9 = objc_claimAutoreleasedReturnValue()) != 0))
  {
    v10 = v9;
    self->_existingAccount = 1;
    [(AASignInFlowController *)self _onqueue_prepareExistingAppleAccountForSignIn:v9 withAuthResults:v6 accountCreationError:a4];
    if (!a4)
    {
      goto LABEL_8;
    }
  }

  else
  {
    v10 = [(AASignInFlowController *)self _onqueue_createNewAppleAccountWithAuthResults:v6 accountCreationError:a4];
    if (!a4)
    {
      goto LABEL_8;
    }
  }

  if (*a4)
  {
    v11 = 0;
    goto LABEL_9;
  }

LABEL_8:
  [(AASignInFlowController *)self _onqueue_updateAppleAccount:v10 withAuthenticationResults:v6];
  v11 = v10;
LABEL_9:

  return v11;
}

- (void)_onqueue_prepareExistingAppleAccountForSignIn:(id)a3 withAuthResults:(id)a4 accountCreationError:(id *)a5
{
  v25 = *MEMORY[0x1E69E9840];
  v8 = a3;
  v9 = *MEMORY[0x1E698DB40];
  v10 = a4;
  v11 = [v10 objectForKeyedSubscript:v9];
  v12 = [v10 objectForKeyedSubscript:*MEMORY[0x1E698DBD0]];
  v13 = [(ACAccountStore *)self->_accountStore aa_primaryAppleAccount];

  [(AASignInFlowController *)self _onqueue_updateAppleAccountIfNecessary:v8 withAltDSID:v11 rawPassword:v12];
  [(AASignInFlowController *)self _onqueue_saveTermsWithAuthResults:v10 account:v8];

  v14 = _AALogSystem();
  if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
  {
    v15 = [v8 aa_altDSID];
    v23 = 138412290;
    v24 = v15;
    _os_log_impl(&dword_1B6F6A000, v14, OS_LOG_TYPE_DEFAULT, "AASignInFlowController: found an existing account with altDSID: %{mask}@", &v23, 0xCu);
  }

  v16 = [(AASignInFlowController *)self _userPersonaUniqueString];

  if (v16)
  {
    v17 = _AALogSystem();
    if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
    {
      v18 = [v8 aa_altDSID];
      v23 = 138412290;
      v24 = v18;
      _os_log_impl(&dword_1B6F6A000, v17, OS_LOG_TYPE_DEFAULT, "AASignInFlowController: found an existing account with altDSID %{mask}@, but we're running in the enterprise persona.", &v23, 0xCu);
    }

    if (![v8 isDataSeparatedAccount])
    {
      goto LABEL_18;
    }

LABEL_9:
    v19 = _AALogSystem();
    if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
    {
      [AASignInFlowController _onqueue_prepareExistingAppleAccountForSignIn:withAuthResults:accountCreationError:];
    }

    if (a5)
    {
      *a5 = [(AASignInFlowController *)self _aaErrorForErrorCode:-8012];
    }

    goto LABEL_18;
  }

  if ([v8 isDataSeparatedAccount])
  {
    goto LABEL_9;
  }

  if (!v13 && [v8 aa_isAccountClass:@"basic"])
  {
    v20 = _AALogSystem();
    if (os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT))
    {
      v23 = 138412290;
      v24 = v8;
      _os_log_impl(&dword_1B6F6A000, v20, OS_LOG_TYPE_DEFAULT, "AASignInFlowController: promoting existing account %@ to primary", &v23, 0xCu);
    }

    [v8 aa_setAccountClass:@"primary"];
    v21 = [(AASignInFlowController *)self _nameForCloudService];
    [v8 setAccountDescription:v21];
  }

LABEL_18:

  v22 = *MEMORY[0x1E69E9840];
}

- (id)_onqueue_createNewAppleAccountWithAuthResults:(id)a3 accountCreationError:(id *)a4
{
  v36 = *MEMORY[0x1E69E9840];
  v5 = a3;
  v6 = [v5 objectForKeyedSubscript:*MEMORY[0x1E698DBF0]];
  v7 = [v5 objectForKeyedSubscript:*MEMORY[0x1E698DB68]];
  v8 = [v7 stringValue];

  v29 = [v5 objectForKeyedSubscript:*MEMORY[0x1E698DBD8]];
  v9 = _AALogSystem();
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v31 = v6;
    _os_log_impl(&dword_1B6F6A000, v9, OS_LOG_TYPE_DEFAULT, "AASignInFlowController: will sign in a new iCloud Account for %@", buf, 0xCu);
  }

  v10 = objc_alloc(MEMORY[0x1E6959A28]);
  v11 = [(ACAccountStore *)self->_accountStore aa_appleAccountType];
  v12 = [v10 initWithAccountType:v11];

  [v12 setUsername:v6];
  [v12 _aa_setPersonID:v8];
  v13 = [(AASignInFlowController *)self _userPersonaUniqueString];
  v14 = +[AAPreferences isMultipleFullAccountsEnabled];
  v15 = [(ACAccountStore *)self->_accountStore aa_primaryAppleAccount];

  v16 = [(ACAccountStore *)self->_accountStore aa_dataSeparatedAccounts];
  v17 = [v16 count];

  v18 = _AALogSystem();
  if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
  {
    v19 = @"NO";
    if (v14)
    {
      v20 = @"YES";
    }

    else
    {
      v20 = @"NO";
    }

    if (v17)
    {
      v21 = @"YES";
    }

    else
    {
      v21 = @"NO";
    }

    *buf = 138412802;
    v31 = v20;
    v32 = 2112;
    v33 = v21;
    if (v17 != 0 && !v14)
    {
      v19 = @"YES";
    }

    v34 = 2112;
    v35 = v19;
    _os_log_impl(&dword_1B6F6A000, v18, OS_LOG_TYPE_DEFAULT, "AASignInFlowController: multiple full accounts allowed: %@, already have data separated account: %@, disallow multiple full accounts: %@", buf, 0x20u);
  }

  if (v13 == 0 || v17 == 0 || v14)
  {
    v22 = v29;
    if (v13)
    {
      [v12 setAccountDescription:v6];
      [v12 aa_setAccountClass:@"full"];
      [v12 setObject:v13 forKeyedSubscript:*MEMORY[0x1E69597A0]];
    }

    else
    {
      if (v15)
      {
        [v12 setAccountDescription:v6];
        if (v14)
        {
          v24 = AAAccountClassFull;
        }

        else
        {
          v24 = AAAccountClassBasic;
        }
      }

      else
      {
        v25 = [(AASignInFlowController *)self _nameForCloudService];
        [v12 setAccountDescription:v25];

        v24 = AAAccountClassPrimary;
      }

      [v12 aa_setAccountClass:*v24];
    }
  }

  else
  {
    v23 = _AALogSystem();
    v22 = v29;
    if (os_log_type_enabled(v23, OS_LOG_TYPE_ERROR))
    {
      [AASignInFlowController _onqueue_createNewAppleAccountWithAuthResults:accountCreationError:];
    }

    if (a4)
    {
      *a4 = [(AASignInFlowController *)self _aaErrorForErrorCode:-8013];
    }
  }

  if ([v22 unsignedIntValue] == 9)
  {
    [v12 setCredentialLocation:1];
  }

  [(AASignInFlowController *)self _onqueue_saveTermsWithAuthResults:v5 account:v12];

  v26 = *MEMORY[0x1E69E9840];

  return v12;
}

- (void)_onqueue_updateAppleAccount:(id)a3 withAuthenticationResults:(id)a4
{
  v28 = *MEMORY[0x1E69E9840];
  v5 = a3;
  v6 = a4;
  v7 = [v6 objectForKeyedSubscript:*MEMORY[0x1E698DBC8]];
  v8 = [v6 objectForKeyedSubscript:*MEMORY[0x1E698DBD0]];
  v9 = [v6 objectForKeyedSubscript:*MEMORY[0x1E698DB40]];
  v10 = [v6 objectForKeyedSubscript:*MEMORY[0x1E698DBD8]];
  v11 = [MEMORY[0x1E6959A30] credentialWithPassword:v7];
  [v5 setCredential:v11];
  [v5 _aa_setRawPassword:v8];
  [v5 _aa_setAltDSID:v9];
  v12 = [v5 aa_firstName];

  if (!v12)
  {
    objc_opt_class();
    v13 = [v6 objectForKeyedSubscript:*MEMORY[0x1E698DB90]];
    if (objc_opt_isKindOfClass())
    {
      v14 = v13;
    }

    else
    {
      v14 = 0;
    }

    [v5 aa_setFirstName:v14];
    v15 = _AALogSystem();
    if (os_log_type_enabled(v15, OS_LOG_TYPE_DEBUG))
    {
      [AASignInFlowController _onqueue_updateAppleAccount:withAuthenticationResults:];
    }
  }

  v16 = [v5 aa_lastName];

  if (!v16)
  {
    objc_opt_class();
    v17 = [v6 objectForKeyedSubscript:*MEMORY[0x1E698DBB8]];
    if (objc_opt_isKindOfClass())
    {
      v18 = v17;
    }

    else
    {
      v18 = 0;
    }

    [v5 aa_setLastName:v18];
    v19 = _AALogSystem();
    if (os_log_type_enabled(v19, OS_LOG_TYPE_DEBUG))
    {
      [AASignInFlowController _onqueue_updateAppleAccount:withAuthenticationResults:];
    }
  }

  v20 = [v6 objectForKeyedSubscript:@"appProvidedContext"];

  if (v20)
  {
    v21 = _AALogSystem();
    if (os_log_type_enabled(v21, OS_LOG_TYPE_DEFAULT))
    {
      v22 = [v6 objectForKeyedSubscript:@"appProvidedContext"];
      v26 = 138412290;
      v27 = v22;
      _os_log_impl(&dword_1B6F6A000, v21, OS_LOG_TYPE_DEFAULT, "AASignInFlowController: AuthContext contains AppProvidedContext: %@", &v26, 0xCu);
    }

    v23 = [v6 objectForKeyedSubscript:@"appProvidedContext"];
    [v5 _aa_setAppProvidedContext:v23];
  }

  if ([v10 unsignedIntValue] == 9)
  {
    v24 = 1;
LABEL_23:
    [v5 setCredentialLocation:v24];
    goto LABEL_24;
  }

  if (v10)
  {
    v24 = 0;
    goto LABEL_23;
  }

LABEL_24:

  v25 = *MEMORY[0x1E69E9840];
}

- (void)_onqueue_updateAppleAccountIfNecessary:(id)a3 withAltDSID:(id)a4 rawPassword:(id)a5
{
  v20 = *MEMORY[0x1E69E9840];
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v11 = _AALogSystem();
  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
  {
    v18 = 138412290;
    v19 = v8;
    _os_log_impl(&dword_1B6F6A000, v11, OS_LOG_TYPE_DEFAULT, "Checking to see if we should update altDSID on iCloud account %@", &v18, 0xCu);
  }

  if ([v9 length])
  {
    v12 = [v8 aa_altDSID];
    v13 = [v12 length];

    v14 = _AALogSystem();
    v15 = os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT);
    if (v13)
    {
      if (v15)
      {
        LOWORD(v18) = 0;
        _os_log_impl(&dword_1B6F6A000, v14, OS_LOG_TYPE_DEFAULT, "iCloud account already has altDSID, ignoring...", &v18, 2u);
      }
    }

    else
    {
      if (v15)
      {
        v18 = 138412290;
        v19 = v9;
        _os_log_impl(&dword_1B6F6A000, v14, OS_LOG_TYPE_DEFAULT, "Updating iCloud account with altDSID: %{mask}@", &v18, 0xCu);
      }

      [v8 _aa_setRawPassword:v10];
      [v8 _aa_setAltDSID:v9];
      [(ACAccountStore *)self->_accountStore saveVerifiedAccount:v8 withCompletionHandler:0];
    }
  }

  else
  {
    v16 = _AALogSystem();
    if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
    {
      LOWORD(v18) = 0;
      _os_log_impl(&dword_1B6F6A000, v16, OS_LOG_TYPE_DEFAULT, "No altDSID provided, nothing to do...", &v18, 2u);
    }
  }

  v17 = *MEMORY[0x1E69E9840];
}

- (void)_onqueue_saveTermsWithAuthResults:(id)a3 account:(id)a4
{
  v5 = a4;
  v6 = [a3 objectForKeyedSubscript:*MEMORY[0x1E698DB38]];
  if (v6)
  {
    v7 = _AALogSystem();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
    {
      [AASignInFlowController _onqueue_saveTermsWithAuthResults:account:];
    }

    v8 = objc_opt_new();
    [v8 saveTermsAcceptance:v6 forAccount:v5];
  }
}

- (void)_cacheLoginResponse:(id)a3 forAccount:(id)a4 completion:(id)a5
{
  v27 = *MEMORY[0x1E69E9840];
  v8 = a5;
  v9 = a4;
  v10 = a3;
  v11 = _AASignpostLogSystem();
  v12 = _AASignpostCreate(v11);
  v14 = v13;

  v15 = _AASignpostLogSystem();
  v16 = v15;
  if (v12 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v15))
  {
    *buf = 0;
    _os_signpost_emit_with_name_impl(&dword_1B6F6A000, v16, OS_SIGNPOST_INTERVAL_BEGIN, v12, "SignInCacheLoginResponse", " enableTelemetry=YES ", buf, 2u);
  }

  v17 = _AASignpostLogSystem();
  if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 134217984;
    v26 = v12;
    _os_log_impl(&dword_1B6F6A000, v17, OS_LOG_TYPE_DEFAULT, "BEGIN [%lld]: SignInCacheLoginResponse  enableTelemetry=YES ", buf, 0xCu);
  }

  v18 = objc_alloc_init(AADaemonController);
  v21[0] = MEMORY[0x1E69E9820];
  v21[1] = 3221225472;
  v21[2] = __68__AASignInFlowController__cacheLoginResponse_forAccount_completion___block_invoke;
  v21[3] = &unk_1E7C9A9B0;
  v23 = v12;
  v24 = v14;
  v21[4] = self;
  v22 = v8;
  v19 = v8;
  [(AADaemonController *)v18 cacheLoginResponse:v10 forAccount:v9 completion:v21];

  v20 = *MEMORY[0x1E69E9840];
}

void __68__AASignInFlowController__cacheLoginResponse_forAccount_completion___block_invoke(uint64_t a1, void *a2)
{
  v29 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = v3;
  if (v3)
  {
    v5 = [MEMORY[0x1E696AD98] numberWithInteger:{objc_msgSend(v3, "code")}];
  }

  else
  {
    v5 = 0;
  }

  v6 = [*(a1 + 32) telemetryTimeSeries];
  v7 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%s_%s", "SignInCacheLoginResponse", "errorCode"];
  [v6 setObject:v5 forKeyedSubscript:v7];

  if (v4)
  {
  }

  v8 = [v4 domain];
  v9 = [*(a1 + 32) telemetryTimeSeries];
  v10 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%s_%s", "SignInCacheLoginResponse", "errorDomain"];
  [v9 setObject:v8 forKeyedSubscript:v10];

  Nanoseconds = _AASignpostGetNanoseconds(*(a1 + 48), *(a1 + 56));
  v12 = _AASignpostLogSystem();
  v13 = v12;
  v14 = *(a1 + 48);
  if (v14 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v12))
  {
    *buf = 67240192;
    LODWORD(v24) = [v4 code];
    _os_signpost_emit_with_name_impl(&dword_1B6F6A000, v13, OS_SIGNPOST_INTERVAL_END, v14, "SignInCacheLoginResponse", " Error=%{public,signpost.telemetry:number2,name=Error}d ", buf, 8u);
  }

  v15 = Nanoseconds / 1000000000.0;

  v16 = _AASignpostLogSystem();
  if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
  {
    v17 = *(a1 + 48);
    v18 = [v4 code];
    *buf = 134218496;
    v24 = v17;
    v25 = 2048;
    v26 = v15;
    v27 = 1026;
    v28 = v18;
    _os_log_impl(&dword_1B6F6A000, v16, OS_LOG_TYPE_DEFAULT, "END [%lld] %fs:SignInCacheLoginResponse  Error=%{public,signpost.telemetry:number2,name=Error}d ", buf, 0x1Cu);
  }

  v19 = [*(a1 + 32) telemetryTimeSeries];
  v20 = [MEMORY[0x1E696AD98] numberWithDouble:v15];
  [v19 setObject:v20 forKeyedSubscript:@"SignInCacheLoginResponse"];

  v21 = *(a1 + 40);
  if (v21)
  {
    (*(v21 + 16))(v21, v4);
  }

  v22 = *MEMORY[0x1E69E9840];
}

- (void)_onqueue_registerAndVerifyLoginForiCloudAccount:(id)a3 authResults:(id)a4 withCompletion:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  if (+[AAPreferences shouldUseUnifiedLoginEndpoint])
  {
    aBlock[0] = MEMORY[0x1E69E9820];
    aBlock[1] = 3221225472;
    aBlock[2] = __101__AASignInFlowController__onqueue_registerAndVerifyLoginForiCloudAccount_authResults_withCompletion___block_invoke;
    aBlock[3] = &unk_1E7C9AA00;
    aBlock[4] = self;
    v11 = v8;
    v20 = v11;
    v12 = _Block_copy(aBlock);
    v15[0] = MEMORY[0x1E69E9820];
    v15[1] = 3221225472;
    v15[2] = __101__AASignInFlowController__onqueue_registerAndVerifyLoginForiCloudAccount_authResults_withCompletion___block_invoke_76;
    v15[3] = &unk_1E7C9AA50;
    v15[4] = self;
    v16 = v9;
    v17 = v12;
    v18 = v10;
    v13 = v12;
    [(AASignInFlowController *)self _loginAndUpdateiCloudWithAuthResults:v16 iCloudAccount:v11 withCompletion:v15];
  }

  else
  {
    v14 = _AALogSystem();
    if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_1B6F6A000, v14, OS_LOG_TYPE_DEFAULT, "[Warning] Using legacy non-unified login endpoint path for sign in (not expected)", buf, 2u);
    }

    [(AASignInFlowController *)self _onqueue_legacyRegisterAndVerifyLoginForiCloudAccount:v8 authResults:v9 withCompletion:v10];
  }
}

void __101__AASignInFlowController__onqueue_registerAndVerifyLoginForiCloudAccount_authResults_withCompletion___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  if (v5)
  {
    v7 = *(a1 + 32);
    v8 = *(a1 + 40);
    v10[0] = MEMORY[0x1E69E9820];
    v10[1] = 3221225472;
    v10[2] = __101__AASignInFlowController__onqueue_registerAndVerifyLoginForiCloudAccount_authResults_withCompletion___block_invoke_74;
    v10[3] = &unk_1E7C9A9D8;
    v11 = v5;
    v12 = *(a1 + 40);
    v13 = v6;
    [v7 _cacheLoginResponse:v11 forAccount:v8 completion:v10];
  }

  else
  {
    v9 = _AALogSystem();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      __101__AASignInFlowController__onqueue_registerAndVerifyLoginForiCloudAccount_authResults_withCompletion___block_invoke_cold_1();
    }

    v6[2](v6);
  }
}

void __101__AASignInFlowController__onqueue_registerAndVerifyLoginForiCloudAccount_authResults_withCompletion___block_invoke_74(void *a1, void *a2)
{
  v13 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = _AALogSystem();
  v5 = v4;
  if (v3)
  {
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      __101__AASignInFlowController__onqueue_registerAndVerifyLoginForiCloudAccount_authResults_withCompletion___block_invoke_74_cold_1(a1);
    }
  }

  else if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v6 = a1[4];
    v7 = a1[5];
    v9 = 138412546;
    v10 = v6;
    v11 = 2112;
    v12 = v7;
    _os_log_impl(&dword_1B6F6A000, v5, OS_LOG_TYPE_DEFAULT, "Successfully cached login response (%@) for account (%@)", &v9, 0x16u);
  }

  (*(a1[6] + 16))();
  v8 = *MEMORY[0x1E69E9840];
}

void __101__AASignInFlowController__onqueue_registerAndVerifyLoginForiCloudAccount_authResults_withCompletion___block_invoke_76(uint64_t a1, char a2, void *a3, void *a4, void *a5)
{
  v9 = a3;
  v10 = a4;
  v11 = a5;
  if ([v10 aa_isAARecoverableError])
  {
    v12 = _AALogSystem();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_1B6F6A000, v12, OS_LOG_TYPE_DEFAULT, "LoginAndUpdateiCloudAccount failed with recoverable error, retrying once...", buf, 2u);
    }

    v13 = *(a1 + 32);
    v14 = *(a1 + 40);
    v28[0] = MEMORY[0x1E69E9820];
    v28[1] = 3221225472;
    v28[2] = __101__AASignInFlowController__onqueue_registerAndVerifyLoginForiCloudAccount_authResults_withCompletion___block_invoke_77;
    v28[3] = &unk_1E7C9AA28;
    v15 = *(a1 + 48);
    v21 = *(a1 + 32);
    v16 = *(&v21 + 1);
    v17 = *(a1 + 56);
    *&v18 = v15;
    *(&v18 + 1) = v17;
    v29 = v21;
    v30 = v18;
    [v13 _loginAndUpdateiCloudWithAuthResults:v14 iCloudAccount:v9 withCompletion:v28];

    v19 = v30;
  }

  else
  {
    v20 = *(a1 + 48);
    v22[0] = MEMORY[0x1E69E9820];
    v22[1] = 3221225472;
    v22[2] = __101__AASignInFlowController__onqueue_registerAndVerifyLoginForiCloudAccount_authResults_withCompletion___block_invoke_2;
    v22[3] = &unk_1E7C9A8E8;
    v22[4] = *(a1 + 32);
    v23 = v9;
    v24 = *(a1 + 40);
    v27 = a2;
    v25 = v10;
    v26 = *(a1 + 56);
    (*(v20 + 16))(v20, v11, v22);

    v19 = v23;
  }
}

void __101__AASignInFlowController__onqueue_registerAndVerifyLoginForiCloudAccount_authResults_withCompletion___block_invoke_77(uint64_t a1, char a2, void *a3, void *a4, void *a5)
{
  v9 = a3;
  v10 = a4;
  v11 = a5;
  v12 = _AALogSystem();
  if (os_log_type_enabled(v12, OS_LOG_TYPE_DEBUG))
  {
    __101__AASignInFlowController__onqueue_registerAndVerifyLoginForiCloudAccount_authResults_withCompletion___block_invoke_77_cold_1();
  }

  v18[0] = MEMORY[0x1E69E9820];
  v18[1] = 3221225472;
  v18[2] = __101__AASignInFlowController__onqueue_registerAndVerifyLoginForiCloudAccount_authResults_withCompletion___block_invoke_78;
  v18[3] = &unk_1E7C9A8E8;
  v13 = *(a1 + 40);
  v14 = *(a1 + 48);
  v18[4] = *(a1 + 32);
  v19 = v9;
  v23 = a2;
  v20 = v13;
  v21 = v10;
  v22 = *(a1 + 56);
  v15 = *(v14 + 16);
  v16 = v10;
  v17 = v9;
  v15(v14, v11, v18);
}

- (void)_loginAndUpdateiCloudWithAuthResults:(id)a3 iCloudAccount:(id)a4 withCompletion:(id)a5
{
  v36 = *MEMORY[0x1E69E9840];
  v8 = a4;
  v9 = a5;
  v10 = a3;
  v11 = _AASignpostLogSystem();
  v12 = _AASignpostCreate(v11);
  v14 = v13;

  v15 = _AASignpostLogSystem();
  v16 = v15;
  if (v12 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v15))
  {
    *buf = 0;
    _os_signpost_emit_with_name_impl(&dword_1B6F6A000, v16, OS_SIGNPOST_INTERVAL_BEGIN, v12, "LoginAndUpdateAccount", " enableTelemetry=YES ", buf, 2u);
  }

  v17 = _AASignpostLogSystem();
  if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 134217984;
    v35 = v12;
    _os_log_impl(&dword_1B6F6A000, v17, OS_LOG_TYPE_DEFAULT, "BEGIN [%lld]: LoginAndUpdateAccount  enableTelemetry=YES ", buf, 0xCu);
  }

  v18 = MEMORY[0x1E6985DB0];
  v19 = [v10 objectForKeyedSubscript:*MEMORY[0x1E698DB40]];
  v20 = [v10 objectForKeyedSubscript:*MEMORY[0x1E698DBE0]];

  v21 = [v18 analyticsEventWithName:@"com.apple.appleaccount.iCloudAuthLoginAndUpdate" altDSID:v19 flowID:v20];

  v22 = +[AAiCloudLoginAccountRequester delegateParamsForAllDelegates];
  accountStore = self->_accountStore;
  v28[0] = MEMORY[0x1E69E9820];
  v28[1] = 3221225472;
  v28[2] = __92__AASignInFlowController__loginAndUpdateiCloudWithAuthResults_iCloudAccount_withCompletion___block_invoke;
  v28[3] = &unk_1E7C9AA78;
  v32 = v12;
  v33 = v14;
  v28[4] = self;
  v29 = v21;
  v30 = v8;
  v31 = v9;
  v24 = v9;
  v25 = v8;
  v26 = v21;
  [(ACAccountStore *)accountStore aa_loginAndUpdateiCloudAccount:v25 delegateParams:v22 withCompletion:v28];

  v27 = *MEMORY[0x1E69E9840];
}

void __92__AASignInFlowController__loginAndUpdateiCloudWithAuthResults_iCloudAccount_withCompletion___block_invoke(uint64_t a1, uint64_t a2, void *a3, void *a4)
{
  v39 = *MEMORY[0x1E69E9840];
  v7 = a3;
  v8 = a4;
  v9 = v8;
  if (v8)
  {
    v10 = [MEMORY[0x1E696AD98] numberWithInteger:{objc_msgSend(v8, "code")}];
  }

  else
  {
    v10 = 0;
  }

  v11 = [*(a1 + 32) telemetryTimeSeries];
  v12 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%s_%s", "LoginAndUpdateAccount", "errorCode"];
  [v11 setObject:v10 forKeyedSubscript:v12];

  if (v9)
  {
  }

  v13 = [v9 domain];
  v14 = [*(a1 + 32) telemetryTimeSeries];
  v15 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%s_%s", "LoginAndUpdateAccount", "errorDomain"];
  [v14 setObject:v13 forKeyedSubscript:v15];

  Nanoseconds = _AASignpostGetNanoseconds(*(a1 + 64), *(a1 + 72));
  v17 = _AASignpostLogSystem();
  v18 = v17;
  v19 = *(a1 + 64);
  if (v19 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v17))
  {
    *buf = 67240448;
    *v33 = a2;
    *&v33[4] = 1026;
    *&v33[6] = [v9 code];
    _os_signpost_emit_with_name_impl(&dword_1B6F6A000, v18, OS_SIGNPOST_INTERVAL_END, v19, "LoginAndUpdateAccount", " Authenticated=%{public,signpost.telemetry:number1,name=Authenticated}d  Error=%{public,signpost.telemetry:number2,name=Error}d ", buf, 0xEu);
  }

  v20 = Nanoseconds / 1000000000.0;

  v21 = _AASignpostLogSystem();
  if (os_log_type_enabled(v21, OS_LOG_TYPE_DEFAULT))
  {
    v22 = *(a1 + 64);
    v23 = [v9 code];
    *buf = 134218752;
    *v33 = v22;
    *&v33[8] = 2048;
    v34 = v20;
    v35 = 1026;
    v36 = a2;
    v37 = 1026;
    v38 = v23;
    _os_log_impl(&dword_1B6F6A000, v21, OS_LOG_TYPE_DEFAULT, "END [%lld] %fs:LoginAndUpdateAccount  Authenticated=%{public,signpost.telemetry:number1,name=Authenticated}d  Error=%{public,signpost.telemetry:number2,name=Error}d ", buf, 0x22u);
  }

  v24 = [*(a1 + 32) telemetryTimeSeries];
  v25 = [MEMORY[0x1E696AD98] numberWithDouble:v20];
  [v24 setObject:v25 forKeyedSubscript:@"LoginAndUpdateAccount"];

  v26 = [MEMORY[0x1E696AD98] numberWithBool:a2];
  [*(a1 + 40) setObject:v26 forKeyedSubscript:*MEMORY[0x1E6985E40]];

  [*(a1 + 40) populateUnderlyingErrorsStartingWithRootError:v9];
  v27 = +[AAAnalyticsRTCReporter reporter];
  [v27 sendEvent:*(a1 + 40)];

  v28 = [v7 responseDictionary];
  v29 = [v28 objectForKeyedSubscript:@"serverInfo"];
  [*(a1 + 48) _aa_setTermsServerInfo:v29];

  v30 = *(a1 + 48);
  (*(*(a1 + 56) + 16))();

  v31 = *MEMORY[0x1E69E9840];
}

- (void)_onqueue_legacyRegisterAndVerifyLoginForiCloudAccount:(id)a3 authResults:(id)a4 withCompletion:(id)a5
{
  v31 = *MEMORY[0x1E69E9840];
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v11 = _AASignpostLogSystem();
  v12 = _AASignpostCreate(v11);
  v14 = v13;

  v15 = _AASignpostLogSystem();
  v16 = v15;
  if (v12 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v15))
  {
    *buf = 0;
    _os_signpost_emit_with_name_impl(&dword_1B6F6A000, v16, OS_SIGNPOST_INTERVAL_BEGIN, v12, "SignInRegisterAccount", " enableTelemetry=YES ", buf, 2u);
  }

  v17 = _AASignpostLogSystem();
  if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 134217984;
    v30 = v12;
    _os_log_impl(&dword_1B6F6A000, v17, OS_LOG_TYPE_DEFAULT, "BEGIN [%lld]: SignInRegisterAccount  enableTelemetry=YES ", buf, 0xCu);
  }

  accountStore = self->_accountStore;
  v23[0] = MEMORY[0x1E69E9820];
  v23[1] = 3221225472;
  v23[2] = __107__AASignInFlowController__onqueue_legacyRegisterAndVerifyLoginForiCloudAccount_authResults_withCompletion___block_invoke;
  v23[3] = &unk_1E7C9AAA0;
  v27 = v12;
  v28 = v14;
  v23[4] = self;
  v24 = v8;
  v25 = v9;
  v26 = v10;
  v19 = v10;
  v20 = v9;
  v21 = v8;
  [(ACAccountStore *)accountStore aa_registerAppleAccount:v21 withCompletion:v23];

  v22 = *MEMORY[0x1E69E9840];
}

void __107__AASignInFlowController__onqueue_legacyRegisterAndVerifyLoginForiCloudAccount_authResults_withCompletion___block_invoke(uint64_t a1, uint64_t a2, void *a3)
{
  v31 = *MEMORY[0x1E69E9840];
  v5 = a3;
  v6 = v5;
  if (v5)
  {
    v7 = [MEMORY[0x1E696AD98] numberWithInteger:{objc_msgSend(v5, "code")}];
  }

  else
  {
    v7 = 0;
  }

  v8 = [*(a1 + 32) telemetryTimeSeries];
  v9 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%s_%s", "SignInRegisterAccount", "errorCode"];
  [v8 setObject:v7 forKeyedSubscript:v9];

  if (v6)
  {
  }

  v10 = [v6 domain];
  v11 = [*(a1 + 32) telemetryTimeSeries];
  v12 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%s_%s", "SignInRegisterAccount", "errorDomain"];
  [v11 setObject:v10 forKeyedSubscript:v12];

  Nanoseconds = _AASignpostGetNanoseconds(*(a1 + 64), *(a1 + 72));
  v14 = _AASignpostLogSystem();
  v15 = v14;
  v16 = *(a1 + 64);
  if (v16 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v14))
  {
    *buf = 67240448;
    *v25 = a2;
    *&v25[4] = 1026;
    *&v25[6] = [v6 code];
    _os_signpost_emit_with_name_impl(&dword_1B6F6A000, v15, OS_SIGNPOST_INTERVAL_END, v16, "SignInRegisterAccount", " Authenticated=%{public,signpost.telemetry:number1,name=Authenticated}d  Error=%{public,signpost.telemetry:number2,name=Error}d ", buf, 0xEu);
  }

  v17 = Nanoseconds / 1000000000.0;

  v18 = _AASignpostLogSystem();
  if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
  {
    v19 = *(a1 + 64);
    v20 = [v6 code];
    *buf = 134218752;
    *v25 = v19;
    *&v25[8] = 2048;
    v26 = v17;
    v27 = 1026;
    v28 = a2;
    v29 = 1026;
    v30 = v20;
    _os_log_impl(&dword_1B6F6A000, v18, OS_LOG_TYPE_DEFAULT, "END [%lld] %fs:SignInRegisterAccount  Authenticated=%{public,signpost.telemetry:number1,name=Authenticated}d  Error=%{public,signpost.telemetry:number2,name=Error}d ", buf, 0x22u);
  }

  v21 = [*(a1 + 32) telemetryTimeSeries];
  v22 = [MEMORY[0x1E696AD98] numberWithDouble:v17];
  [v21 setObject:v22 forKeyedSubscript:@"SignInRegisterAccount"];

  [*(a1 + 32) _verifyLoginResponseForiCloudAccount:*(a1 + 40) withAuthResults:*(a1 + 48) withSuccess:a2 error:v6 completion:*(a1 + 56)];
  v23 = *MEMORY[0x1E69E9840];
}

- (void)_onqueue_verifyLoginResponseForiCloudAccount:(id)a3 withAuthResults:(id)a4 withSuccess:(BOOL)a5 error:(id)a6 completion:(id)a7
{
  v46 = *MEMORY[0x1E69E9840];
  v12 = a3;
  v13 = a4;
  v14 = a6;
  v15 = a7;
  if (a5)
  {
    v16 = _AALogSystem();
    if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_1B6F6A000, v16, OS_LOG_TYPE_DEFAULT, "Account is valid: finish account setup", buf, 2u);
    }

    v17 = [v12 aa_password];

    if (v17)
    {
      v18 = _AALogSystem();
      if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&dword_1B6F6A000, v18, OS_LOG_TYPE_DEFAULT, "We have a password, setAuthenticated to NO and grab delegate tokens", buf, 2u);
      }

      [v12 setAuthenticated:0];
    }

    aBlock[0] = MEMORY[0x1E69E9820];
    aBlock[1] = 3221225472;
    aBlock[2] = __116__AASignInFlowController__onqueue_verifyLoginResponseForiCloudAccount_withAuthResults_withSuccess_error_completion___block_invoke;
    aBlock[3] = &unk_1E7C9AB68;
    aBlock[4] = self;
    v19 = v12;
    v39 = v19;
    v40 = v13;
    v20 = v15;
    v42 = v20;
    v43 = a5;
    v41 = v14;
    v21 = _Block_copy(aBlock);
    if (+[AAFeatureFlags isBetterSignOutEnabled](AAFeatureFlags, "isBetterSignOutEnabled") && ([v19 aa_isAccountClass:@"primary"] & 1) != 0)
    {
      v22 = _AASignpostLogSystem();
      v23 = _AASignpostCreate(v22);
      v33 = v24;
      v25 = v23;

      v26 = _AASignpostLogSystem();
      v27 = v26;
      if ((v25 - 1) <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v26))
      {
        *buf = 0;
        _os_signpost_emit_with_name_impl(&dword_1B6F6A000, v27, OS_SIGNPOST_INTERVAL_BEGIN, v25, "SignInPresentDataclassActionsSheet", " enableTelemetry=YES ", buf, 2u);
      }

      v28 = _AASignpostLogSystem();
      if (os_log_type_enabled(v28, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 134217984;
        v45 = v25;
        _os_log_impl(&dword_1B6F6A000, v28, OS_LOG_TYPE_DEFAULT, "BEGIN [%lld]: SignInPresentDataclassActionsSheet  enableTelemetry=YES ", buf, 0xCu);
      }

      objc_initWeak(buf, self);
      v34[0] = MEMORY[0x1E69E9820];
      v34[1] = 3221225472;
      v34[2] = __116__AASignInFlowController__onqueue_verifyLoginResponseForiCloudAccount_withAuthResults_withSuccess_error_completion___block_invoke_109;
      v34[3] = &unk_1E7C9AB90;
      objc_copyWeak(v37, buf);
      v37[1] = v25;
      v37[2] = v33;
      v35 = v20;
      v36 = v21;
      [(AASignInFlowController *)self _delegate_presentDataclassActionsForAccount:v19 completion:v34];

      objc_destroyWeak(v37);
      objc_destroyWeak(buf);
    }

    else
    {
      v21[2](v21);
    }
  }

  else
  {
    v29 = [v14 userInfo];
    v30 = [v29 objectForKey:@"localizedError"];

    v31 = _AALogSystem();
    if (os_log_type_enabled(v31, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v45 = v30;
      _os_log_impl(&dword_1B6F6A000, v31, OS_LOG_TYPE_DEFAULT, "Account is not valid: handling error %@", buf, 0xCu);
    }

    if ([v30 isEqualToString:@"MOBILEME_TERMS_OF_SERVICE_UPDATE"])
    {
      [(AASignInFlowController *)self _delegate_presentGenericTermsUIforAccount:v12 authResults:v13 serverError:v14 completion:v15];
    }

    else
    {
      [(AASignInFlowController *)self _delegate_presentValidationAlertForError:v14 forAccount:v12 completion:v15];
    }
  }

  v32 = *MEMORY[0x1E69E9840];
}

void __116__AASignInFlowController__onqueue_verifyLoginResponseForiCloudAccount_withAuthResults_withSuccess_error_completion___block_invoke(uint64_t a1)
{
  v38 = *MEMORY[0x1E69E9840];
  v2 = [*(a1 + 32) delegate];
  if (objc_opt_respondsToSelector())
  {
    v3 = [*(a1 + 32) delegate];
    v4 = [v3 skipCDPEnablement];

    if (v4)
    {
      v5 = _AALogSystem();
      if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
      {
        v6 = [*(a1 + 40) aa_altDSID];
        *buf = 138412290;
        v37 = v6;
        _os_log_impl(&dword_1B6F6A000, v5, OS_LOG_TYPE_DEFAULT, "AASignInFlowController: Skipping iCDP state machine for %{mask}@ because delegate said to.", buf, 0xCu);
      }

LABEL_14:

      v23 = _AALogSystem();
      if (os_log_type_enabled(v23, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&dword_1B6F6A000, v23, OS_LOG_TYPE_DEFAULT, "AASignInFlowController: Finished auth'ing account and skipping iCDP state validation.", buf, 2u);
      }

      [*(a1 + 32) _onqueue_saveAccount:*(a1 + 40) withAuthResults:*(a1 + 48) withCDPEnablement:0 withAllDataclassesEnabledIfPossibleWithCompletion:*(a1 + 64)];
      goto LABEL_17;
    }
  }

  else
  {
  }

  v7 = [*(a1 + 40) aa_isAccountClass:@"primary"];
  v5 = _AALogSystem();
  v8 = os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT);
  if (!v7)
  {
    if (v8)
    {
      v22 = [*(a1 + 40) aa_altDSID];
      *buf = 138412290;
      v37 = v22;
      _os_log_impl(&dword_1B6F6A000, v5, OS_LOG_TYPE_DEFAULT, "AASignInFlowController: Account for %{mask}@ is secondary and MultiUserManatee is off, no iCDP setup will be attempted.", buf, 0xCu);
    }

    goto LABEL_14;
  }

  if (v8)
  {
    v9 = [*(a1 + 40) aa_altDSID];
    *buf = 138412290;
    v37 = v9;
    _os_log_impl(&dword_1B6F6A000, v5, OS_LOG_TYPE_DEFAULT, "AASignInFlowController: Account for %{mask}@ is primary, proceeding with iCDP setup.", buf, 0xCu);
  }

  v10 = _AALogSystem();
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_1B6F6A000, v10, OS_LOG_TYPE_DEFAULT, "AASignInFlowController: Finished auth'ing account and must validate iCDP state.", buf, 2u);
  }

  objc_initWeak(buf, *(a1 + 32));
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 3221225472;
  aBlock[2] = __116__AASignInFlowController__onqueue_verifyLoginResponseForiCloudAccount_withAuthResults_withSuccess_error_completion___block_invoke_98;
  aBlock[3] = &unk_1E7C9AB18;
  v25 = *(a1 + 32);
  v11 = *(a1 + 40);
  v35 = *(a1 + 72);
  v12 = *(a1 + 56);
  v13 = (a1 + 64);
  v14 = *(a1 + 64);
  *&v15 = v12;
  *(&v15 + 1) = v14;
  v33 = v25;
  v34 = v15;
  v16 = _Block_copy(aBlock);
  v17 = *(a1 + 32);
  v19 = *(a1 + 40);
  v18 = (a1 + 40);
  v20 = v18[1];
  v26[0] = MEMORY[0x1E69E9820];
  v26[1] = 3221225472;
  v26[2] = __116__AASignInFlowController__onqueue_verifyLoginResponseForiCloudAccount_withAuthResults_withSuccess_error_completion___block_invoke_2;
  v26[3] = &unk_1E7C9AB40;
  objc_copyWeak(&v31, buf);
  v29 = *v13;
  v27 = *v18;
  v28 = v18[1];
  v21 = v16;
  v30 = v21;
  [v17 _onqueue_validateAndEnrollCDPStateForAccount:v19 withAuthResults:v20 completion:v26];

  objc_destroyWeak(&v31);
  objc_destroyWeak(buf);
LABEL_17:
  v24 = *MEMORY[0x1E69E9840];
}

void __116__AASignInFlowController__onqueue_verifyLoginResponseForiCloudAccount_withAuthResults_withSuccess_error_completion___block_invoke_98(uint64_t a1, char a2, void *a3, void *a4)
{
  v33 = *MEMORY[0x1E69E9840];
  v7 = a3;
  v8 = a4;
  v9 = _AASignpostLogSystem();
  v10 = _AASignpostCreate(v9);
  v12 = v11;

  v13 = _AASignpostLogSystem();
  v14 = v13;
  if (v10 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v13))
  {
    *buf = 0;
    _os_signpost_emit_with_name_impl(&dword_1B6F6A000, v14, OS_SIGNPOST_INTERVAL_BEGIN, v10, "SignInPresentPrivacyOptIn", " enableTelemetry=YES ", buf, 2u);
  }

  v15 = _AASignpostLogSystem();
  if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 134217984;
    v32 = v10;
    _os_log_impl(&dword_1B6F6A000, v15, OS_LOG_TYPE_DEFAULT, "BEGIN [%lld]: SignInPresentPrivacyOptIn  enableTelemetry=YES ", buf, 0xCu);
  }

  v16 = *(a1 + 32);
  v17 = *(a1 + 40);
  v22[0] = MEMORY[0x1E69E9820];
  v22[1] = 3221225472;
  v22[2] = __116__AASignInFlowController__onqueue_verifyLoginResponseForiCloudAccount_withAuthResults_withSuccess_error_completion___block_invoke_99;
  v22[3] = &unk_1E7C9AAF0;
  v29 = *(a1 + 64);
  v22[4] = v16;
  v27 = v10;
  v28 = v12;
  v23 = *(a1 + 48);
  v18 = *(a1 + 56);
  v25 = v8;
  v26 = v18;
  v30 = a2;
  v24 = v7;
  v19 = v8;
  v20 = v7;
  [v16 _delegate_presentAccountPrivacyOptInForAccount:v17 userActionCompletion:v22];

  v21 = *MEMORY[0x1E69E9840];
}

void __116__AASignInFlowController__onqueue_verifyLoginResponseForiCloudAccount_withAuthResults_withSuccess_error_completion___block_invoke_99(uint64_t a1, uint64_t a2, void *a3)
{
  v37 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = [MEMORY[0x1E696AD98] numberWithBool:*(a1 + 88)];
  v6 = [*(a1 + 32) telemetryTimeSeries];
  v7 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%s_%s", "SignInPresentPrivacyOptIn", "success"];
  [v6 setObject:v5 forKeyedSubscript:v7];

  Nanoseconds = _AASignpostGetNanoseconds(*(a1 + 72), *(a1 + 80));
  v9 = _AASignpostLogSystem();
  v10 = v9;
  v11 = *(a1 + 72);
  if (v11 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v9))
  {
    v12 = *(a1 + 88);
    *buf = 67240192;
    LODWORD(v32) = v12;
    _os_signpost_emit_with_name_impl(&dword_1B6F6A000, v10, OS_SIGNPOST_INTERVAL_END, v11, "SignInPresentPrivacyOptIn", " Success=%{public,signpost.telemetry:number1,name=Success}d ", buf, 8u);
  }

  v13 = Nanoseconds / 1000000000.0;

  v14 = _AASignpostLogSystem();
  if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
  {
    v15 = *(a1 + 72);
    v16 = *(a1 + 88);
    *buf = 134218496;
    v32 = v15;
    v33 = 2048;
    v34 = v13;
    v35 = 1026;
    v36 = v16;
    _os_log_impl(&dword_1B6F6A000, v14, OS_LOG_TYPE_DEFAULT, "END [%lld] %fs:SignInPresentPrivacyOptIn  Success=%{public,signpost.telemetry:number1,name=Success}d ", buf, 0x1Cu);
  }

  v17 = [*(a1 + 32) telemetryTimeSeries];
  v18 = [MEMORY[0x1E696AD98] numberWithDouble:v13];
  [v17 setObject:v18 forKeyedSubscript:@"SignInPresentPrivacyOptIn"];

  v19 = *(a1 + 40);
  v20 = _AALogSystem();
  v21 = v20;
  if (v19)
  {
    if (os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
    {
      __116__AASignInFlowController__onqueue_verifyLoginResponseForiCloudAccount_withAuthResults_withSuccess_error_completion___block_invoke_99_cold_1();
    }
  }

  else if (os_log_type_enabled(v20, OS_LOG_TYPE_DEBUG))
  {
    __116__AASignInFlowController__onqueue_verifyLoginResponseForiCloudAccount_withAuthResults_withSuccess_error_completion___block_invoke_99_cold_2();
  }

  if (*(a1 + 64))
  {
    if ([MEMORY[0x1E696AF00] isMainThread])
    {
      v22 = *(a1 + 56);
      v23 = *(a1 + 89);
      v24 = *(a1 + 48);
      (*(*(a1 + 64) + 16))();
    }

    else
    {
      block[0] = MEMORY[0x1E69E9820];
      block[1] = 3221225472;
      block[2] = __116__AASignInFlowController__onqueue_verifyLoginResponseForiCloudAccount_withAuthResults_withSuccess_error_completion___block_invoke_106;
      block[3] = &unk_1E7C9AAC8;
      v29 = *(a1 + 64);
      v30 = *(a1 + 89);
      v27 = *(a1 + 48);
      v28 = *(a1 + 56);
      dispatch_async(MEMORY[0x1E69E96A0], block);
    }
  }

  v25 = *MEMORY[0x1E69E9840];
}

void __116__AASignInFlowController__onqueue_verifyLoginResponseForiCloudAccount_withAuthResults_withSuccess_error_completion___block_invoke_2(uint64_t a1, int a2, void *a3)
{
  v5 = a3;
  WeakRetained = objc_loadWeakRetained((a1 + 64));
  if (WeakRetained)
  {
    if (a2)
    {
      [*(a1 + 32) refresh];
      v7 = _AALogSystem();
      if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
      {
        *v13 = 0;
        _os_log_impl(&dword_1B6F6A000, v7, OS_LOG_TYPE_DEFAULT, "Validating iCDP succeeded! Proceeding with iCloud sign-in...", v13, 2u);
      }

      if ([WeakRetained _isAccountImprovementProgramEnabled])
      {
        v8 = *(a1 + 56);
      }

      else
      {
        v8 = *(a1 + 48);
      }

      [WeakRetained _saveAccount:*(a1 + 32) withAuthResults:*(a1 + 40) withCDPEnablement:1 withAllDataclassesEnabledIfPossibleWithCompletion:v8];
      goto LABEL_21;
    }

    v11 = _AALogSystem();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      __116__AASignInFlowController__onqueue_verifyLoginResponseForiCloudAccount_withAuthResults_withSuccess_error_completion___block_invoke_2_cold_1();
    }

    if ([v5 shouldDisplayToUser])
    {
      [WeakRetained _delegate_presentValidationAlertForError:v5 forAccount:*(a1 + 32) completion:*(a1 + 48)];
      goto LABEL_21;
    }

    v10 = *(a1 + 48);
LABEL_18:
    if (v5)
    {
      (*(v10 + 16))(v10, 0, 0, v5);
    }

    else
    {
      v12 = [MEMORY[0x1E696ABC0] aa_errorWithCode:-3];
      (*(v10 + 16))(v10, 0, 0, v12);
    }

    goto LABEL_21;
  }

  v9 = _AALogSystem();
  if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
  {
    __116__AASignInFlowController__onqueue_verifyLoginResponseForiCloudAccount_withAuthResults_withSuccess_error_completion___block_invoke_2_cold_2();
  }

  v10 = *(a1 + 48);
  if (v10)
  {
    goto LABEL_18;
  }

LABEL_21:
}

void __116__AASignInFlowController__onqueue_verifyLoginResponseForiCloudAccount_withAuthResults_withSuccess_error_completion___block_invoke_109(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  v30 = *MEMORY[0x1E69E9840];
  v7 = a4;
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  v9 = [MEMORY[0x1E696AD98] numberWithBool:a2];
  v10 = WeakRetained[14];
  v11 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%s_%s", "SignInPresentDataclassActionsSheet", "didSelectDataclassAction"];
  [v10 setObject:v9 forKeyedSubscript:v11];

  Nanoseconds = _AASignpostGetNanoseconds(*(a1 + 56), *(a1 + 64));
  v13 = _AASignpostLogSystem();
  v14 = v13;
  v15 = *(a1 + 56);
  if (v15 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v13))
  {
    *buf = 67240192;
    LODWORD(v25) = a2;
    _os_signpost_emit_with_name_impl(&dword_1B6F6A000, v14, OS_SIGNPOST_INTERVAL_END, v15, "SignInPresentDataclassActionsSheet", " DidPerformDataclassAction=%{public,signpost.telemetry:number1,name=DidPerformDataclassAction}d ", buf, 8u);
  }

  v16 = Nanoseconds / 1000000000.0;

  v17 = _AASignpostLogSystem();
  if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
  {
    v18 = *(a1 + 56);
    *buf = 134218496;
    v25 = v18;
    v26 = 2048;
    v27 = v16;
    v28 = 1026;
    v29 = a2;
    _os_log_impl(&dword_1B6F6A000, v17, OS_LOG_TYPE_DEFAULT, "END [%lld] %fs:SignInPresentDataclassActionsSheet  DidPerformDataclassAction=%{public,signpost.telemetry:number1,name=DidPerformDataclassAction}d ", buf, 0x1Cu);
  }

  v19 = WeakRetained[14];
  v20 = [MEMORY[0x1E696AD98] numberWithDouble:v16];
  [v19 setObject:v20 forKeyedSubscript:@"SignInPresentDataclassActionsSheet"];

  if ((a2 & 1) != 0 || ![v7 aa_isAAErrorWithCode:-1])
  {
    v22 = _AALogSystem();
    if (os_log_type_enabled(v22, OS_LOG_TYPE_DEBUG))
    {
      __116__AASignInFlowController__onqueue_verifyLoginResponseForiCloudAccount_withAuthResults_withSuccess_error_completion___block_invoke_109_cold_2();
    }

    WeakRetained[11] = a3;
    (*(*(a1 + 40) + 16))();
  }

  else
  {
    v21 = _AALogSystem();
    if (os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
    {
      __116__AASignInFlowController__onqueue_verifyLoginResponseForiCloudAccount_withAuthResults_withSuccess_error_completion___block_invoke_109_cold_1();
    }

    (*(*(a1 + 32) + 16))();
  }

  v23 = *MEMORY[0x1E69E9840];
}

- (void)_onqueue_validateAndEnrollCDPStateForAccount:(id)a3 withAuthResults:(id)a4 completion:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v11 = v8;
  v12 = v11;
  if (self->_shouldAutomaticallySaveSignInResults)
  {
    if (self->_existingAccount)
    {
      v13 = _AALogSystem();
      if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&dword_1B6F6A000, v13, OS_LOG_TYPE_DEFAULT, "Skipping warmup flag as account already exists.", buf, 2u);
      }
    }

    else
    {
      [v11 setWarmingUp:1];
    }

    v14 = v12;
  }

  else
  {
    [(ACAccountStore *)self->_accountStore setNotificationsEnabled:0];
    v14 = [v12 copy];
  }

  [v14 setEnabled:1 forDataclass:*MEMORY[0x1E6959B18]];
  v15 = *MEMORY[0x1E6959B20];
  if ([v14 isProvisionedForDataclass:*MEMORY[0x1E6959B20]] && (objc_msgSend(v14, "aa_serverDisabledDataclass:", v15) & 1) == 0)
  {
    [v14 setEnabled:1 forDataclass:v15];
  }

  [v14 setEnabled:1 forDataclass:*MEMORY[0x1E6959B00]];
  v19[0] = MEMORY[0x1E69E9820];
  v19[1] = 3221225472;
  v19[2] = __98__AASignInFlowController__onqueue_validateAndEnrollCDPStateForAccount_withAuthResults_completion___block_invoke;
  v19[3] = &unk_1E7C9ABE0;
  v19[4] = self;
  v20 = v9;
  v21 = v14;
  v22 = v10;
  v16 = v10;
  v17 = v14;
  v18 = v9;
  [(AASignInFlowController *)self _preflightSaveWithAuthResults:v18 account:v17 withCompletion:v19];
}

void __98__AASignInFlowController__onqueue_validateAndEnrollCDPStateForAccount_withAuthResults_completion___block_invoke(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = a3;
  if (([v4 aa_isAARecoverableError] & 1) != 0 || objc_msgSend(v4, "aa_isXPCError"))
  {
    v5 = _AALogSystem();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_1B6F6A000, v5, OS_LOG_TYPE_DEFAULT, "PreflightSave failed with recoverable / xpc error, retrying once...", buf, 2u);
    }

    v6 = *(a1 + 32);
    v7 = *(a1 + 40);
    v9[0] = MEMORY[0x1E69E9820];
    v9[1] = 3221225472;
    v9[2] = __98__AASignInFlowController__onqueue_validateAndEnrollCDPStateForAccount_withAuthResults_completion___block_invoke_116;
    v9[3] = &unk_1E7C9ABB8;
    v8 = *(a1 + 48);
    v10 = *(a1 + 56);
    [v6 _preflightSaveWithAuthResults:v7 account:v8 withCompletion:v9];
  }

  else
  {
    (*(*(a1 + 56) + 16))();
  }
}

void __98__AASignInFlowController__onqueue_validateAndEnrollCDPStateForAccount_withAuthResults_completion___block_invoke_116(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = a3;
  v5 = _AALogSystem();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
  {
    __98__AASignInFlowController__onqueue_validateAndEnrollCDPStateForAccount_withAuthResults_completion___block_invoke_116_cold_1();
  }

  (*(*(a1 + 32) + 16))();
}

- (void)_preflightSaveWithAuthResults:(id)a3 account:(id)a4 withCompletion:(id)a5
{
  v43 = *MEMORY[0x1E69E9840];
  v8 = a3;
  v9 = a4;
  v10 = a5;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 3221225472;
  aBlock[2] = __79__AASignInFlowController__preflightSaveWithAuthResults_account_withCompletion___block_invoke;
  aBlock[3] = &unk_1E7C9AC08;
  aBlock[4] = self;
  v11 = v10;
  v40 = v11;
  v12 = _Block_copy(aBlock);
  v13 = _AASignpostLogSystem();
  v14 = _AASignpostCreate(v13);
  v31 = v15;

  v16 = _AASignpostLogSystem();
  v17 = v16;
  if (v14 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v16))
  {
    *buf = 0;
    _os_signpost_emit_with_name_impl(&dword_1B6F6A000, v17, OS_SIGNPOST_INTERVAL_BEGIN, v14, "SignInPreflightSave", " enableTelemetry=YES ", buf, 2u);
  }

  v18 = _AASignpostLogSystem();
  if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 134217984;
    v42 = v14;
    _os_log_impl(&dword_1B6F6A000, v18, OS_LOG_TYPE_DEFAULT, "BEGIN [%lld]: SignInPreflightSave  enableTelemetry=YES ", buf, 0xCu);
  }

  v19 = MEMORY[0x1E6985DB0];
  v20 = [v8 objectForKeyedSubscript:*MEMORY[0x1E698DB40]];
  v21 = [v8 objectForKeyedSubscript:*MEMORY[0x1E698DBE0]];
  v22 = [v19 analyticsEventWithName:@"com.apple.appleaccount.iCloudAuthPreflightSave" altDSID:v20 flowID:v21];

  if (+[AAFeatureFlags isBetterSignOutEnabled](AAFeatureFlags, "isBetterSignOutEnabled") && [v9 aa_isAccountClass:@"primary"])
  {
    v23 = [(AASignInFlowController *)self _dataclassActionsForPreflightSaveForAccount:v9];
    v24 = _AALogSystem();
    if (os_log_type_enabled(v24, OS_LOG_TYPE_DEBUG))
    {
      [AASignInFlowController _preflightSaveWithAuthResults:account:withCompletion:];
    }
  }

  else
  {
    v23 = 0;
  }

  accountStore = self->_accountStore;
  v32[0] = MEMORY[0x1E69E9820];
  v32[1] = 3221225472;
  v32[2] = __79__AASignInFlowController__preflightSaveWithAuthResults_account_withCompletion___block_invoke_117;
  v32[3] = &unk_1E7C9AC30;
  v37 = v14;
  v38 = v31;
  v32[4] = self;
  v33 = v22;
  v35 = v9;
  v36 = v12;
  v34 = v8;
  v26 = v9;
  v27 = v8;
  v28 = v12;
  v29 = v22;
  [(ACAccountStore *)accountStore saveAccount:v26 withDataclassActions:v23 completion:v32];

  v30 = *MEMORY[0x1E69E9840];
}

void __79__AASignInFlowController__preflightSaveWithAuthResults_account_withCompletion___block_invoke(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = *(*(a1 + 32) + 8);
  v5 = a3;
  [v4 setNotificationsEnabled:1];
  (*(*(a1 + 40) + 16))();
}

void __79__AASignInFlowController__preflightSaveWithAuthResults_account_withCompletion___block_invoke_117(uint64_t a1, uint64_t a2, void *a3)
{
  v38 = *MEMORY[0x1E69E9840];
  v5 = a3;
  v6 = v5;
  if (v5)
  {
    v7 = [MEMORY[0x1E696AD98] numberWithInteger:{objc_msgSend(v5, "code")}];
  }

  else
  {
    v7 = 0;
  }

  v8 = [*(a1 + 32) telemetryTimeSeries];
  v9 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%s_%s", "SignInPreflightSave", "errorCode"];
  [v8 setObject:v7 forKeyedSubscript:v9];

  if (v6)
  {
  }

  v10 = [v6 domain];
  v11 = [*(a1 + 32) telemetryTimeSeries];
  v12 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%s_%s", "SignInPreflightSave", "errorDomain"];
  [v11 setObject:v10 forKeyedSubscript:v12];

  Nanoseconds = _AASignpostGetNanoseconds(*(a1 + 72), *(a1 + 80));
  v14 = _AASignpostLogSystem();
  v15 = v14;
  v16 = *(a1 + 72);
  if (v16 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v14))
  {
    *buf = 67240448;
    *v32 = a2;
    *&v32[4] = 1026;
    *&v32[6] = [v6 code];
    _os_signpost_emit_with_name_impl(&dword_1B6F6A000, v15, OS_SIGNPOST_INTERVAL_END, v16, "SignInPreflightSave", " DidSave=%{public,signpost.telemetry:number1,name=DidSave}d  Error=%{public,signpost.telemetry:number2,name=Error}d ", buf, 0xEu);
  }

  v17 = Nanoseconds / 1000000000.0;

  v18 = _AASignpostLogSystem();
  if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
  {
    v19 = *(a1 + 72);
    v20 = [v6 code];
    *buf = 134218752;
    *v32 = v19;
    *&v32[8] = 2048;
    v33 = v17;
    v34 = 1026;
    v35 = a2;
    v36 = 1026;
    v37 = v20;
    _os_log_impl(&dword_1B6F6A000, v18, OS_LOG_TYPE_DEFAULT, "END [%lld] %fs:SignInPreflightSave  DidSave=%{public,signpost.telemetry:number1,name=DidSave}d  Error=%{public,signpost.telemetry:number2,name=Error}d ", buf, 0x22u);
  }

  v21 = [*(a1 + 32) telemetryTimeSeries];
  v22 = [MEMORY[0x1E696AD98] numberWithDouble:v17];
  [v21 setObject:v22 forKeyedSubscript:@"SignInPreflightSave"];

  v23 = [MEMORY[0x1E696AD98] numberWithBool:a2];
  [*(a1 + 40) setObject:v23 forKeyedSubscript:*MEMORY[0x1E6985E40]];

  [*(a1 + 40) populateUnderlyingErrorsStartingWithRootError:v6];
  v24 = +[AAAnalyticsRTCReporter reporter];
  [v24 sendEvent:*(a1 + 40)];

  if (a2)
  {
    v25 = [*(a1 + 32) _onqueue_createCDPContextWithAuthResults:*(a1 + 48)];
    if (v25)
    {
      [*(a1 + 32) _addKeysAndEnrollCDPStateForAccount:*(a1 + 56) withCDPContext:v25 completion:*(a1 + 64)];
    }

    else
    {
      v27 = _AALogSystem();
      if (os_log_type_enabled(v27, OS_LOG_TYPE_ERROR))
      {
        __79__AASignInFlowController__preflightSaveWithAuthResults_account_withCompletion___block_invoke_117_cold_1();
      }

      v28 = *(a1 + 64);
      v29 = [*(a1 + 32) _aaErrorForErrorCode:-17];
      (*(v28 + 16))(v28, 0, v29);
    }
  }

  else
  {
    v26 = _AALogSystem();
    if (os_log_type_enabled(v26, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      *v32 = v6;
      _os_log_impl(&dword_1B6F6A000, v26, OS_LOG_TYPE_DEFAULT, "iCDP preflighting failed because we could not save the iCloud account! Error: %@", buf, 0xCu);
    }

    (*(*(a1 + 64) + 16))();
  }

  v30 = *MEMORY[0x1E69E9840];
}

- (void)_onqueue_addKeysAndEnrollCDPStateForAccount:(id)a3 withCDPContext:(id)a4 completion:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v11 = _AALogSystem();
  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEBUG))
  {
    [AASignInFlowController _onqueue_addKeysAndEnrollCDPStateForAccount:v11 withCDPContext:? completion:?];
  }

  v12 = [(NSDictionary *)self->_authResults valueForKey:*MEMORY[0x1E698DB60]];
  if (v12)
  {
    v13 = _AALogSystem();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_1B6F6A000, v13, OS_LOG_TYPE_DEFAULT, "Looks to be a login from custodian recovery flows. Fetching recovery keys for CDP flows", buf, 2u);
    }

    v14 = objc_alloc_init(AACustodianController);
    v15[0] = MEMORY[0x1E69E9820];
    v15[1] = 3221225472;
    v15[2] = __96__AASignInFlowController__onqueue_addKeysAndEnrollCDPStateForAccount_withCDPContext_completion___block_invoke;
    v15[3] = &unk_1E7C9AC58;
    v16 = v9;
    v17 = self;
    v18 = v8;
    v19 = v10;
    [(AACustodianController *)v14 fetchCustodianRecoveryKeysWithSessionID:v12 completion:v15];
  }

  else
  {
    [(AASignInFlowController *)self _onqueue_enrollCDPStateForAccount:v8 withCDPContext:v9 completion:v10];
  }
}

void __96__AASignInFlowController__onqueue_addKeysAndEnrollCDPStateForAccount_withCDPContext_completion___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  if (v5)
  {
    v7 = [getCDPCustodianRecoveryInfoClass() instancesRespondToSelector:sel_recordBuildVersion];
    v8 = objc_alloc(getCDPCustodianRecoveryInfoClass());
    v9 = [v5 wrappedRKC];
    v10 = [v5 wrappingKey];
    v11 = [v5 custodianUUID];
    if (v7)
    {
      v12 = [v5 recordBuildVersion];
      v13 = [v8 initWithWrappedRKC:v9 wrappingKey:v10 custodianUUID:v11 recordBuildVersion:v12];
    }

    else
    {
      v13 = [v8 initWithWrappedRKC:v9 wrappingKey:v10 custodianUUID:v11];
    }

    [*(a1 + 32) setCustodianRecoveryInfo:v13];
    [*(a1 + 32) setType:11];
  }

  else
  {
    v14 = _AALogSystem();
    if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
    {
      __96__AASignInFlowController__onqueue_addKeysAndEnrollCDPStateForAccount_withCDPContext_completion___block_invoke_cold_1();
    }
  }

  [*(a1 + 40) _enrollCDPStateForAccount:*(a1 + 48) withCDPContext:*(a1 + 32) completion:*(a1 + 56)];
}

- (id)_dataclassActionsForPreflightSaveForAccount:(id)a3
{
  v4 = a3;
  v5 = _AALogSystem();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
  {
    [AASignInFlowController _dataclassActionsForPreflightSaveForAccount:?];
  }

  dataclassActionsStore = self->_dataclassActionsStore;
  if (self->_userSelectedDataclassAction == 1)
  {
    [(AADataclassActionsStore *)dataclassActionsStore deleteActionForKeychainDataclassForAddingAccount:v4];
  }

  else
  {
    [(AADataclassActionsStore *)dataclassActionsStore mergeActionForKeychainDataclassForAddingAccount:v4];
  }
  v7 = ;

  return v7;
}

- (id)_dataclassActionsForPostCDPSaveForAccount:(id)a3
{
  v4 = a3;
  dataclassActionsStore = self->_dataclassActionsStore;
  if (self->_userSelectedDataclassAction == 1)
  {
    [(AADataclassActionsStore *)dataclassActionsStore deleteLocalDataActionsForAddingAccount:v4];
  }

  else
  {
    [(AADataclassActionsStore *)dataclassActionsStore mergeLocalDataIntoSyncDataActionsForAddingAccount:v4];
  }
  v6 = ;

  return v6;
}

- (void)_onqueue_enrollCDPStateForAccount:(id)a3 withCDPContext:(id)a4 completion:(id)a5
{
  v44 = *MEMORY[0x1E69E9840];
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v36 = 0;
  v37 = &v36;
  v38 = 0x2050000000;
  v11 = getCDPStateControllerClass_softClass;
  v39 = getCDPStateControllerClass_softClass;
  if (!getCDPStateControllerClass_softClass)
  {
    *&buf = MEMORY[0x1E69E9820];
    *(&buf + 1) = 3221225472;
    v41 = __getCDPStateControllerClass_block_invoke;
    v42 = &unk_1E7C9AE88;
    v43 = &v36;
    __getCDPStateControllerClass_block_invoke(&buf);
    v11 = v37[3];
  }

  v12 = v11;
  _Block_object_dispose(&v36, 8);
  v13 = [[v11 alloc] initWithContext:v9];
  WeakRetained = objc_loadWeakRetained(&self->_cdpUIProvider);
  v15 = WeakRetained == 0;

  if (v15)
  {
    v16 = _AALogSystem();
    if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
    {
      [AASignInFlowController _onqueue_enrollCDPStateForAccount:withCDPContext:completion:];
    }
  }

  else
  {
    v16 = objc_loadWeakRetained(&self->_cdpUIProvider);
    [v13 setUiProvider:v16];
  }

  v17 = _AASignpostLogSystem();
  v18 = _AASignpostCreate(v17);
  v20 = v19;

  v21 = _AASignpostLogSystem();
  v22 = v21;
  if (v18 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v21))
  {
    LOWORD(buf) = 0;
    _os_signpost_emit_with_name_impl(&dword_1B6F6A000, v22, OS_SIGNPOST_INTERVAL_BEGIN, v18, "SignInValidateCDP", " enableTelemetry=YES ", &buf, 2u);
  }

  v23 = _AASignpostLogSystem();
  if (os_log_type_enabled(v23, OS_LOG_TYPE_DEFAULT))
  {
    LODWORD(buf) = 134217984;
    *(&buf + 4) = v18;
    _os_log_impl(&dword_1B6F6A000, v23, OS_LOG_TYPE_DEFAULT, "BEGIN [%lld]: SignInValidateCDP  enableTelemetry=YES ", &buf, 0xCu);
  }

  v29[0] = MEMORY[0x1E69E9820];
  v29[1] = 3221225472;
  v29[2] = __86__AASignInFlowController__onqueue_enrollCDPStateForAccount_withCDPContext_completion___block_invoke;
  v29[3] = &unk_1E7C9ACA8;
  v29[4] = self;
  v30 = v13;
  v34 = v18;
  v35 = v20;
  v32 = v8;
  v33 = v10;
  v31 = v9;
  v24 = v8;
  v25 = v10;
  v26 = v9;
  v27 = v13;
  [v27 handleCloudDataProtectionStateWithCompletion:v29];

  v28 = *MEMORY[0x1E69E9840];
}

void __86__AASignInFlowController__onqueue_enrollCDPStateForAccount_withCDPContext_completion___block_invoke(uint64_t a1, uint64_t a2, int a3, void *a4)
{
  v58 = *MEMORY[0x1E69E9840];
  v46 = a4;
  v6 = MEMORY[0x1E696AD98];
  v7 = [*(a1 + 40) context];
  v8 = [v7 sharingChannel];
  v9 = [v6 numberWithInt:v8 != 0];
  v10 = [*(a1 + 32) telemetryTimeSeries];
  v11 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%s_%s", "SignInValidateCDP", "hasSharingChannel"];
  [v10 setObject:v9 forKeyedSubscript:v11];

  v12 = [MEMORY[0x1E696AD98] numberWithBool:a2];
  v13 = [*(a1 + 32) telemetryTimeSeries];
  v14 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%s_%s", "SignInValidateCDP", "shouldCompleteSignIn"];
  [v13 setObject:v12 forKeyedSubscript:v14];

  v15 = [MEMORY[0x1E696AD98] numberWithBool:a2];
  v16 = [*(a1 + 32) telemetryTimeSeries];
  v17 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%s_%s", "SignInValidateCDP", "cloudDataProtectionEnabled"];
  [v16 setObject:v15 forKeyedSubscript:v17];

  if (v46)
  {
    v18 = [MEMORY[0x1E696AD98] numberWithInteger:{objc_msgSend(v46, "code")}];
  }

  else
  {
    v18 = 0;
  }

  v19 = [*(a1 + 32) telemetryTimeSeries];
  v20 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%s_%s", "SignInValidateCDP", "errorCode"];
  [v19 setObject:v18 forKeyedSubscript:v20];

  if (v46)
  {
  }

  v21 = [v46 domain];
  v22 = [*(a1 + 32) telemetryTimeSeries];
  v23 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%s_%s", "SignInValidateCDP", "errorDomain"];
  [v22 setObject:v21 forKeyedSubscript:v23];

  Nanoseconds = _AASignpostGetNanoseconds(*(a1 + 72), *(a1 + 80));
  v25 = _AASignpostLogSystem();
  v26 = v25;
  v27 = *(a1 + 72);
  if (v27 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v25))
  {
    *buf = 67240448;
    *v52 = a3;
    *&v52[4] = 1026;
    *&v52[6] = [v46 code];
    _os_signpost_emit_with_name_impl(&dword_1B6F6A000, v26, OS_SIGNPOST_INTERVAL_END, v27, "SignInValidateCDP", " Enabled=%{public,signpost.telemetry:number1,name=Enabled}d  Error=%{public,signpost.telemetry:number2,name=Error}d ", buf, 0xEu);
  }

  v28 = Nanoseconds / 1000000000.0;

  v29 = _AASignpostLogSystem();
  if (os_log_type_enabled(v29, OS_LOG_TYPE_DEFAULT))
  {
    v30 = *(a1 + 72);
    v31 = [v46 code];
    *buf = 134218752;
    *v52 = v30;
    *&v52[8] = 2048;
    v53 = v28;
    v54 = 1026;
    v55 = a3;
    v56 = 1026;
    v57 = v31;
    _os_log_impl(&dword_1B6F6A000, v29, OS_LOG_TYPE_DEFAULT, "END [%lld] %fs:SignInValidateCDP  Enabled=%{public,signpost.telemetry:number1,name=Enabled}d  Error=%{public,signpost.telemetry:number2,name=Error}d ", buf, 0x22u);
  }

  v32 = [*(a1 + 32) telemetryTimeSeries];
  v33 = [MEMORY[0x1E696AD98] numberWithDouble:v28];
  [v32 setObject:v33 forKeyedSubscript:@"SignInValidateCDP"];

  v34 = *(a1 + 48);
  if (objc_opt_respondsToSelector())
  {
    v35 = [*(a1 + 48) telemetryTimeSeries];
    v36 = _AALogSystem();
    if (os_log_type_enabled(v36, OS_LOG_TYPE_DEBUG))
    {
      __86__AASignInFlowController__onqueue_enrollCDPStateForAccount_withCDPContext_completion___block_invoke_cold_2((a1 + 48));
    }

    if (v35)
    {
      v37 = [*(a1 + 32) telemetryTimeSeries];
      [v37 addEntriesFromDictionary:v35];
    }
  }

  else
  {
    v35 = _AALogSystem();
    if (os_log_type_enabled(v35, OS_LOG_TYPE_DEBUG))
    {
      __86__AASignInFlowController__onqueue_enrollCDPStateForAccount_withCDPContext_completion___block_invoke_cold_1((a1 + 48));
    }
  }

  if (a2 && (*(*(a1 + 32) + 56) & 1) != 0)
  {
    v38 = v46;
    v39 = *(a1 + 64);
    if (v39)
    {
      (*(v39 + 16))(v39, 1, v38);
    }
  }

  else
  {
    v40 = v46;
    v41 = _AALogSystem();
    if (os_log_type_enabled(v41, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_1B6F6A000, v41, OS_LOG_TYPE_DEFAULT, "Cleaning up temporary account state created during iCDP validation.", buf, 2u);
    }

    v42 = *(*(a1 + 32) + 8);
    v47[0] = MEMORY[0x1E69E9820];
    v47[1] = 3221225472;
    v47[2] = __86__AASignInFlowController__onqueue_enrollCDPStateForAccount_withCDPContext_completion___block_invoke_135;
    v47[3] = &unk_1E7C9AC80;
    v43 = *(a1 + 56);
    v49 = *(a1 + 64);
    v50 = a2;
    v48 = v40;
    [v42 removeAccount:v43 withCompletionHandler:v47];
  }

  v44 = *MEMORY[0x1E69E9840];
}

void __86__AASignInFlowController__onqueue_enrollCDPStateForAccount_withCDPContext_completion___block_invoke_135(uint64_t a1, char a2, void *a3)
{
  v11 = *MEMORY[0x1E69E9840];
  v5 = a3;
  if ((a2 & 1) == 0)
  {
    v6 = _AALogSystem();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      v9 = 138412290;
      v10 = v5;
      _os_log_impl(&dword_1B6F6A000, v6, OS_LOG_TYPE_DEFAULT, "Failed to clean up after iCDP! Error: %@", &v9, 0xCu);
    }
  }

  v7 = *(a1 + 40);
  if (v7)
  {
    (*(v7 + 16))(v7, *(a1 + 48), *(a1 + 32));
  }

  v8 = *MEMORY[0x1E69E9840];
}

- (id)_onqueue_createCDPContextWithAuthResults:(id)a3
{
  v4 = a3;
  v5 = [(AASignInFlowController *)self delegate];
  if (objc_opt_respondsToSelector())
  {
    v6 = [(AASignInFlowController *)self delegate];
    v7 = [v6 cdpContext];

    if (v7)
    {
      v8 = [(AASignInFlowController *)self delegate];
      v9 = [v8 cdpContext];

      goto LABEL_8;
    }
  }

  else
  {
  }

  v15 = 0;
  v16 = &v15;
  v17 = 0x2050000000;
  v10 = getCDPContextClass_softClass;
  v18 = getCDPContextClass_softClass;
  if (!getCDPContextClass_softClass)
  {
    v14[0] = MEMORY[0x1E69E9820];
    v14[1] = 3221225472;
    v14[2] = __getCDPContextClass_block_invoke;
    v14[3] = &unk_1E7C9AE88;
    v14[4] = &v15;
    __getCDPContextClass_block_invoke(v14);
    v10 = v16[3];
  }

  v11 = v10;
  _Block_object_dispose(&v15, 8);
  v9 = [[v10 alloc] initWithAuthenticationResults:v4];
  v12 = [(AASignInFlowController *)self messageSession];
  [v9 setSharingChannel:v12];

  [v9 set_ignoreLockAssertErrors:{-[AASignInFlowController ignoreLockAssertErrors](self, "ignoreLockAssertErrors")}];
LABEL_8:

  return v9;
}

- (void)_enableFindMyIfPossibleWithAccount:(id)a3 completion:(id)a4
{
  v6 = a3;
  v7 = a4;
  uiQueue = self->_uiQueue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __72__AASignInFlowController__enableFindMyIfPossibleWithAccount_completion___block_invoke;
  block[3] = &unk_1E7C9A898;
  block[4] = self;
  v14 = v6;
  v15 = v7;
  v9 = uiQueue;
  v10 = v7;
  v11 = v6;
  v12 = dispatch_block_create_with_qos_class(DISPATCH_BLOCK_ENFORCE_QOS_CLASS|DISPATCH_BLOCK_ASSIGN_CURRENT, QOS_CLASS_USER_INTERACTIVE, 0, block);
  dispatch_async(v9, v12);
}

- (void)_onqueue_enableFindMyIfPossibleWithAccount:(id)a3 completion:(id)a4
{
  v6 = a3;
  v7 = a4;
  if ([MEMORY[0x1E6985DD8] isVirtualMachine])
  {
    v8 = _AALogSystem();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      v21 = 0;
      v9 = "Device is a virtual machine, not enabling FindMy...";
      v10 = &v21;
LABEL_19:
      _os_log_impl(&dword_1B6F6A000, v8, OS_LOG_TYPE_DEFAULT, v9, v10, 2u);
    }
  }

  else
  {
    v11 = [(AASignInFlowController *)self _shouldEnableDataclassesForAccount:v6];
    if ([(AASignInFlowController *)self _findMyActivationAction]== 2 || !v11)
    {
      v8 = _AALogSystem();
      if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
      {
        v20 = 0;
        v9 = "Activation lock action explicitly disabled, not enabling FindMy...";
        v10 = &v20;
        goto LABEL_19;
      }
    }

    else if ([(AASignInFlowController *)self shouldAutomaticallySaveSignInResults])
    {
      if ([v6 aa_isAccountClass:@"primary"] && (objc_msgSend(v6, "aa_isPrimaryEmailVerified") & 1) != 0)
      {
        v12 = *MEMORY[0x1E6959B08];
        if (([v6 isProvisionedForDataclass:*MEMORY[0x1E6959B08]] & 1) == 0)
        {
          v8 = _AALogSystem();
          if (!os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
          {
            goto LABEL_20;
          }

          v17 = 0;
          v9 = "Account is not provisioned for FindMy...";
          v10 = &v17;
          goto LABEL_19;
        }

        v13 = [(AASignInFlowController *)self dataclassManager];
        v14 = [v13 userDefaultsDisabledDataclasses];
        v15 = [v14 containsObject:v12];

        if (!v15)
        {
          [(AASignInFlowController *)self _onqueue_delegate_enableFindMyWithCompletion:v7];
          goto LABEL_21;
        }

        v8 = _AALogSystem();
        if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
        {
          v16 = 0;
          v9 = "Find My dataclass is disabled in user defaults.";
          v10 = &v16;
          goto LABEL_19;
        }
      }

      else
      {
        v8 = _AALogSystem();
        if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 0;
          v9 = "Account is not a primary with email verified...";
          v10 = buf;
          goto LABEL_19;
        }
      }
    }

    else
    {
      v8 = _AALogSystem();
      if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
      {
        v19 = 0;
        v9 = "Automatic sign in result save disabled, not enabling FindMy...";
        v10 = &v19;
        goto LABEL_19;
      }
    }
  }

LABEL_20:

  v7[2](v7, 0);
LABEL_21:
}

- (id)dataclassManager
{
  dataclassManager = self->_dataclassManager;
  if (dataclassManager)
  {
    v3 = dataclassManager;
  }

  else
  {
    v3 = +[AADataclassManager sharedManager];
  }

  return v3;
}

- (void)_saveAccount:(id)a3 withAuthResults:(id)a4 withCDPEnablement:(BOOL)a5 withAllDataclassesEnabledIfPossibleWithCompletion:(id)a6
{
  v10 = a3;
  v11 = a4;
  v12 = a6;
  uiQueue = self->_uiQueue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __123__AASignInFlowController__saveAccount_withAuthResults_withCDPEnablement_withAllDataclassesEnabledIfPossibleWithCompletion___block_invoke;
  block[3] = &unk_1E7C9ACD0;
  block[4] = self;
  v20 = v10;
  v23 = a5;
  v21 = v11;
  v22 = v12;
  v14 = uiQueue;
  v15 = v12;
  v16 = v11;
  v17 = v10;
  v18 = dispatch_block_create_with_qos_class(DISPATCH_BLOCK_ENFORCE_QOS_CLASS|DISPATCH_BLOCK_ASSIGN_CURRENT, QOS_CLASS_USER_INTERACTIVE, 0, block);
  dispatch_async(v14, v18);
}

- (void)_backgroundSaveAccount:(id)a3 withDataclassEnablement:(BOOL)a4 completion:(id)a5
{
  v8 = a3;
  v9 = a5;
  utilityQueue = self->_utilityQueue;
  v15[0] = MEMORY[0x1E69E9820];
  v15[1] = 3221225472;
  v15[2] = __84__AASignInFlowController__backgroundSaveAccount_withDataclassEnablement_completion___block_invoke;
  v15[3] = &unk_1E7C9ACF8;
  v15[4] = self;
  v16 = v8;
  v18 = a4;
  v17 = v9;
  v11 = utilityQueue;
  v12 = v9;
  v13 = v8;
  v14 = dispatch_block_create_with_qos_class(DISPATCH_BLOCK_ENFORCE_QOS_CLASS|DISPATCH_BLOCK_ASSIGN_CURRENT, QOS_CLASS_DEFAULT, 0, v15);
  dispatch_async(v11, v14);
}

- (void)_onqueue_saveAccount:(id)a3 withAuthResults:(id)a4 withCDPEnablement:(BOOL)a5 withAllDataclassesEnabledIfPossibleWithCompletion:(id)a6
{
  v7 = a5;
  v57 = *MEMORY[0x1E69E9840];
  v10 = a3;
  v11 = a4;
  v12 = a6;
  v13 = v12;
  if (self->_shouldAutomaticallySaveSignInResults)
  {
    if (self->_pendingSignIn)
    {
      v14 = _AALogSystem();
      if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
      {
        [AASignInFlowController _onqueue_saveAccount:withAuthResults:withCDPEnablement:withAllDataclassesEnabledIfPossibleWithCompletion:];
      }

      v15 = [(AASignInFlowController *)self _aaErrorForErrorCode:-8004];
      (v13)[2](v13, 0, 0, v15);
    }

    else
    {
      self->_pendingSignIn = 1;
      [v10 refresh];
      if ([v10 isWarmingUp])
      {
        v16 = _AALogSystem();
        if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 0;
          _os_log_impl(&dword_1B6F6A000, v16, OS_LOG_TYPE_DEFAULT, "Account is no longer warming up.", buf, 2u);
        }

        [v10 setWarmingUp:0];
      }

      v17 = v7 && [(AASignInFlowController *)self _delegateWantsToBackgroundDataclassEnablement];
      if ([(AASignInFlowController *)self _shouldEnableDataclassesForAccount:v10])
      {
        if ([v10 aa_isAccountClass:@"primary"])
        {
          v18 = [(AASignInFlowController *)self _newSignInFlow]^ 1;
        }

        else
        {
          v18 = 1;
        }
      }

      else
      {
        v18 = 0;
      }

      v19 = _AALogSystem();
      if (os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 67109632;
        *v54 = v7;
        *&v54[4] = 1024;
        *&v54[6] = v17;
        v55 = 1024;
        v56 = v18;
        _os_log_impl(&dword_1B6F6A000, v19, OS_LOG_TYPE_DEFAULT, "Saving account - isEnablingCDP: %{BOOL}d, wantsBackgroundDataclassEnablement %{BOOL}d, dataclassEnablement: %{BOOL}d", buf, 0x14u);
      }

      v20 = MEMORY[0x1E6985DB0];
      v21 = [v11 objectForKeyedSubscript:*MEMORY[0x1E698DB40]];
      v22 = [v11 objectForKeyedSubscript:*MEMORY[0x1E698DBE0]];
      v23 = [v20 analyticsEventWithName:@"com.apple.appleaccount.iCloudAccountAdd" altDSID:v21 flowID:v22];

      if (v17)
      {
        v24 = _AALogSystem();
        if (os_log_type_enabled(v24, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 67109120;
          *v54 = v18;
          _os_log_impl(&dword_1B6F6A000, v24, OS_LOG_TYPE_DEFAULT, "Kicking off accounts save with dataclass enablement (%{BOOL}d) in the background.", buf, 8u);
        }

        v25 = _AASignpostLogSystem();
        v26 = _AASignpostCreate(v25);
        v28 = v27;

        v29 = _AASignpostLogSystem();
        v30 = v29;
        if (v26 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v29))
        {
          *buf = 0;
          _os_signpost_emit_with_name_impl(&dword_1B6F6A000, v30, OS_SIGNPOST_INTERVAL_BEGIN, v26, "SignInEnableDataclasses", " enableTelemetry=YES ", buf, 2u);
        }

        v31 = _AASignpostLogSystem();
        if (os_log_type_enabled(v31, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 134217984;
          *v54 = v26;
          _os_log_impl(&dword_1B6F6A000, v31, OS_LOG_TYPE_DEFAULT, "BEGIN [%lld]: SignInEnableDataclasses  enableTelemetry=YES ", buf, 0xCu);
        }

        v48[0] = MEMORY[0x1E69E9820];
        v48[1] = 3221225472;
        v48[2] = __131__AASignInFlowController__onqueue_saveAccount_withAuthResults_withCDPEnablement_withAllDataclassesEnabledIfPossibleWithCompletion___block_invoke;
        v48[3] = &unk_1E7C9AD20;
        v51 = v26;
        v52 = v28;
        v49 = v23;
        v50 = self;
        v32 = v23;
        [(AASignInFlowController *)self _backgroundSaveAccount:v10 withDataclassEnablement:v18 completion:v48];
        (v13)[2](v13, 1, v10, 0);
        v33 = v49;
      }

      else
      {
        v34 = _AASignpostLogSystem();
        v35 = _AASignpostCreate(v34);
        v37 = v36;

        v38 = _AASignpostLogSystem();
        v39 = v38;
        if (v35 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v38))
        {
          *buf = 0;
          _os_signpost_emit_with_name_impl(&dword_1B6F6A000, v39, OS_SIGNPOST_INTERVAL_BEGIN, v35, "SignInEnableDataclasses", " enableTelemetry=YES ", buf, 2u);
        }

        v40 = _AASignpostLogSystem();
        if (os_log_type_enabled(v40, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 134217984;
          *v54 = v35;
          _os_log_impl(&dword_1B6F6A000, v40, OS_LOG_TYPE_DEFAULT, "BEGIN [%lld]: SignInEnableDataclasses  enableTelemetry=YES ", buf, 0xCu);
        }

        v43[0] = MEMORY[0x1E69E9820];
        v43[1] = 3221225472;
        v43[2] = __131__AASignInFlowController__onqueue_saveAccount_withAuthResults_withCDPEnablement_withAllDataclassesEnabledIfPossibleWithCompletion___block_invoke_141;
        v43[3] = &unk_1E7C9AD48;
        v46 = v35;
        v47 = v37;
        v43[4] = self;
        v44 = v23;
        v45 = v13;
        v41 = v23;
        [(AASignInFlowController *)self _onqueue_delegate_saveAccount:v10 withDataclassEnablement:v18 completion:v43];

        v33 = v44;
      }
    }
  }

  else
  {
    (*(v12 + 2))(v12, 1, v10, 0);
  }

  v42 = *MEMORY[0x1E69E9840];
}

void __131__AASignInFlowController__onqueue_saveAccount_withAuthResults_withCDPEnablement_withAllDataclassesEnabledIfPossibleWithCompletion___block_invoke(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  v24 = *MEMORY[0x1E69E9840];
  v6 = a4;
  v7 = [MEMORY[0x1E696AD98] numberWithBool:a2];
  [*(a1 + 32) setObject:v7 forKeyedSubscript:*MEMORY[0x1E6985E40]];

  [*(a1 + 32) populateUnderlyingErrorsStartingWithRootError:v6];
  v8 = +[AAAnalyticsRTCReporter reporter];
  [v8 sendEvent:*(a1 + 32)];

  Nanoseconds = _AASignpostGetNanoseconds(*(a1 + 48), *(a1 + 56));
  v10 = _AASignpostLogSystem();
  v11 = v10;
  v12 = *(a1 + 48);
  if (v12 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v10))
  {
    v17 = 67240448;
    *v18 = a2;
    *&v18[4] = 1026;
    *&v18[6] = [v6 code];
    _os_signpost_emit_with_name_impl(&dword_1B6F6A000, v11, OS_SIGNPOST_INTERVAL_END, v12, "SignInEnableDataclasses", " Success=%{public,signpost.telemetry:number1,name=Success}d  Error=%{public,signpost.telemetry:number2,name=Error}d ", &v17, 0xEu);
  }

  v13 = _AASignpostLogSystem();
  if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
  {
    v14 = *(a1 + 48);
    v15 = [v6 code];
    v17 = 134218752;
    *v18 = v14;
    *&v18[8] = 2048;
    v19 = Nanoseconds / 1000000000.0;
    v20 = 1026;
    v21 = a2;
    v22 = 1026;
    v23 = v15;
    _os_log_impl(&dword_1B6F6A000, v13, OS_LOG_TYPE_DEFAULT, "END [%lld] %fs: SignInEnableDataclasses  Success=%{public,signpost.telemetry:number1,name=Success}d  Error=%{public,signpost.telemetry:number2,name=Error}d ", &v17, 0x22u);
  }

  v16 = *MEMORY[0x1E69E9840];
}

void __131__AASignInFlowController__onqueue_saveAccount_withAuthResults_withCDPEnablement_withAllDataclassesEnabledIfPossibleWithCompletion___block_invoke_141(uint64_t a1, uint64_t a2, void *a3, void *a4)
{
  v38 = *MEMORY[0x1E69E9840];
  v7 = a3;
  v8 = a4;
  v9 = v8;
  if (v8)
  {
    v10 = [MEMORY[0x1E696AD98] numberWithInteger:{objc_msgSend(v8, "code")}];
  }

  else
  {
    v10 = 0;
  }

  v11 = [*(a1 + 32) telemetryTimeSeries];
  v12 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%s_%s", "SignInEnableDataclasses", "errorCode"];
  [v11 setObject:v10 forKeyedSubscript:v12];

  if (v9)
  {
  }

  v13 = [v9 domain];
  v14 = [*(a1 + 32) telemetryTimeSeries];
  v15 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%s_%s", "SignInEnableDataclasses", "errorDomain"];
  [v14 setObject:v13 forKeyedSubscript:v15];

  Nanoseconds = _AASignpostGetNanoseconds(*(a1 + 56), *(a1 + 64));
  v17 = _AASignpostLogSystem();
  v18 = v17;
  v19 = *(a1 + 56);
  if (v19 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v17))
  {
    *buf = 67240448;
    *v32 = a2;
    *&v32[4] = 1026;
    *&v32[6] = [v9 code];
    _os_signpost_emit_with_name_impl(&dword_1B6F6A000, v18, OS_SIGNPOST_INTERVAL_END, v19, "SignInEnableDataclasses", " Success=%{public,signpost.telemetry:number1,name=Success}d  Error=%{public,signpost.telemetry:number2,name=Error}d ", buf, 0xEu);
  }

  v20 = Nanoseconds / 1000000000.0;

  v21 = _AASignpostLogSystem();
  if (os_log_type_enabled(v21, OS_LOG_TYPE_DEFAULT))
  {
    v22 = *(a1 + 56);
    v23 = [v9 code];
    *buf = 134218752;
    *v32 = v22;
    *&v32[8] = 2048;
    v33 = v20;
    v34 = 1026;
    v35 = a2;
    v36 = 1026;
    v37 = v23;
    _os_log_impl(&dword_1B6F6A000, v21, OS_LOG_TYPE_DEFAULT, "END [%lld] %fs:SignInEnableDataclasses  Success=%{public,signpost.telemetry:number1,name=Success}d  Error=%{public,signpost.telemetry:number2,name=Error}d ", buf, 0x22u);
  }

  v24 = [*(a1 + 32) telemetryTimeSeries];
  v25 = [MEMORY[0x1E696AD98] numberWithDouble:v20];
  [v24 setObject:v25 forKeyedSubscript:@"SignInEnableDataclasses"];

  v26 = [MEMORY[0x1E696AD98] numberWithBool:a2];
  [*(a1 + 40) setObject:v26 forKeyedSubscript:*MEMORY[0x1E6985E40]];

  [*(a1 + 40) populateUnderlyingErrorsStartingWithRootError:v9];
  v27 = +[AAAnalyticsRTCReporter reporter];
  [v27 sendEvent:*(a1 + 40)];

  *(*(a1 + 32) + 24) = 0;
  v28 = _AALogSystem();
  if (os_log_type_enabled(v28, OS_LOG_TYPE_DEFAULT))
  {
    v29 = @"NO";
    if (a2)
    {
      v29 = @"YES";
    }

    *buf = 138412546;
    *v32 = v29;
    *&v32[8] = 2112;
    v33 = *&v9;
    _os_log_impl(&dword_1B6F6A000, v28, OS_LOG_TYPE_DEFAULT, "iCloud account save completed with success: %@, error: %@", buf, 0x16u);
  }

  if (a2)
  {
    (*(*(a1 + 48) + 16))();
  }

  else
  {
    [*(a1 + 32) _delegate_presentAccountCreationError:v9 completion:*(a1 + 48)];
  }

  v30 = *MEMORY[0x1E69E9840];
}

uint64_t __82__AASignInFlowController__onqueue_saveAccount_withDataclassEnablement_completion___block_invoke(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = *(a1 + 40);
  if (a2)
  {
    return (*(v4 + 16))(v4, 1, *(a1 + 32), 0);
  }

  else
  {
    return (*(v4 + 16))(v4, a2, 0, a3);
  }
}

uint64_t __82__AASignInFlowController__onqueue_saveAccount_withDataclassEnablement_completion___block_invoke_2(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = *(a1 + 40);
  if (a2)
  {
    return (*(v4 + 16))(v4, 1, *(a1 + 32), 0);
  }

  else
  {
    return (*(v4 + 16))(v4, a2, 0, a3);
  }
}

- (void)_delegate_presentAccountCreationError:(id)a3 completion:(id)a4
{
  v27 = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = a4;
  v8 = [(AASignInFlowController *)self _titleForSignInFailureAlert];
  v9 = [v6 userInfo];
  v10 = [v9 objectForKeyedSubscript:*MEMORY[0x1E696A578]];

  v11 = _AALogSystem();
  if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
  {
    *buf = 138412802;
    v22 = v6;
    v23 = 2112;
    v24 = v8;
    v25 = 2112;
    v26 = v10;
    _os_log_error_impl(&dword_1B6F6A000, v11, OS_LOG_TYPE_ERROR, "AASignInFlowController: Sign in - account creation failed with error: %@, title: %@, message: %@", buf, 0x20u);
  }

  v12 = [(AASignInFlowController *)self delegate];
  v13 = objc_opt_respondsToSelector();

  if (v13)
  {
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __75__AASignInFlowController__delegate_presentAccountCreationError_completion___block_invoke;
    block[3] = &unk_1E7C9ADC0;
    block[4] = self;
    v17 = v8;
    v18 = v10;
    v20 = v7;
    v19 = v6;
    v14 = dispatch_block_create_with_qos_class(DISPATCH_BLOCK_ENFORCE_QOS_CLASS|DISPATCH_BLOCK_ASSIGN_CURRENT, QOS_CLASS_USER_INTERACTIVE, 0, block);
    dispatch_async(MEMORY[0x1E69E96A0], v14);
  }

  else
  {
    (*(v7 + 2))(v7, 0, 0, v6);
  }

  v15 = *MEMORY[0x1E69E9840];
}

void __75__AASignInFlowController__delegate_presentAccountCreationError_completion___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) delegate];
  v3 = *(a1 + 32);
  v4 = *(a1 + 40);
  v5 = *(a1 + 48);
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __75__AASignInFlowController__delegate_presentAccountCreationError_completion___block_invoke_2;
  v6[3] = &unk_1E7C9AD98;
  v8 = *(a1 + 64);
  v7 = *(a1 + 56);
  [v2 signInFlowController:v3 showAlertWithTitle:v4 message:v5 completion:v6];
}

uint64_t __75__AASignInFlowController__delegate_presentAccountCreationError_completion___block_invoke_2(uint64_t a1)
{
  v2 = _AALogSystem();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_ERROR))
  {
    __75__AASignInFlowController__delegate_presentAccountCreationError_completion___block_invoke_2_cold_1();
  }

  v3 = *(a1 + 32);
  return (*(*(a1 + 40) + 16))();
}

- (void)_delegate_presentGenericTermsUIforAccount:(id)a3 authResults:(id)a4 serverError:(id)a5 completion:(id)a6
{
  v28 = *MEMORY[0x1E69E9840];
  v10 = a3;
  v11 = a4;
  v12 = a5;
  v13 = a6;
  v14 = _AALogSystem();
  if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v27 = v10;
    _os_log_impl(&dword_1B6F6A000, v14, OS_LOG_TYPE_DEFAULT, "AASignInFlowController: Account needs terms: %@", buf, 0xCu);
  }

  v15 = [(AASignInFlowController *)self delegate];
  v16 = objc_opt_respondsToSelector();

  if (v16)
  {
    v21[0] = MEMORY[0x1E69E9820];
    v21[1] = 3221225472;
    v21[2] = __103__AASignInFlowController__delegate_presentGenericTermsUIforAccount_authResults_serverError_completion___block_invoke;
    v21[3] = &unk_1E7C9A8C0;
    v22 = v11;
    v23 = v10;
    v24 = self;
    v25 = v13;
    v17 = dispatch_block_create_with_qos_class(DISPATCH_BLOCK_ENFORCE_QOS_CLASS|DISPATCH_BLOCK_ASSIGN_CURRENT, QOS_CLASS_USER_INTERACTIVE, 0, v21);
    dispatch_async(MEMORY[0x1E69E96A0], v17);

    v18 = v22;
  }

  else
  {
    v19 = _AALogSystem();
    if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
    {
      [AASignInFlowController _delegate_presentGenericTermsUIforAccount:authResults:serverError:completion:];
    }

    v18 = [(AASignInFlowController *)self _aaErrorForErrorCode:-8010 withUnderlyingError:v12];
    (*(v13 + 2))(v13, 0, 0, v18);
  }

  v20 = *MEMORY[0x1E69E9840];
}

void __103__AASignInFlowController__delegate_presentGenericTermsUIforAccount_authResults_serverError_completion___block_invoke(id *a1)
{
  v22 = *MEMORY[0x1E69E9840];
  v2 = _AASignpostLogSystem();
  v3 = _AASignpostCreate(v2);
  v5 = v4;

  v6 = _AASignpostLogSystem();
  v7 = v6;
  if (v3 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v6))
  {
    *buf = 0;
    _os_signpost_emit_with_name_impl(&dword_1B6F6A000, v7, OS_SIGNPOST_INTERVAL_BEGIN, v3, "TermsAcceptance", " enableTelemetry=YES ", buf, 2u);
  }

  v8 = _AASignpostLogSystem();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 134217984;
    v21 = v3;
    _os_log_impl(&dword_1B6F6A000, v8, OS_LOG_TYPE_DEFAULT, "BEGIN [%lld]: TermsAcceptance  enableTelemetry=YES ", buf, 0xCu);
  }

  v9 = [a1[4] objectForKeyedSubscript:@"appProvidedContext"];
  if (v9)
  {
    v10 = _AALogSystem();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v21 = v9;
      _os_log_impl(&dword_1B6F6A000, v10, OS_LOG_TYPE_DEFAULT, "AASignInFlowController: Auth results contains an app provided context to add to the Apple Account: %@", buf, 0xCu);
    }

    [a1[5] _aa_setAppProvidedContext:v9];
  }

  v11 = [a1[6] delegate];
  v13 = a1[5];
  v12 = a1[6];
  v15[0] = MEMORY[0x1E69E9820];
  v15[1] = 3221225472;
  v15[2] = __103__AASignInFlowController__delegate_presentGenericTermsUIforAccount_authResults_serverError_completion___block_invoke_151;
  v15[3] = &unk_1E7C9AD48;
  v15[4] = v12;
  v18 = v3;
  v19 = v5;
  v16 = a1[4];
  v17 = a1[7];
  [v11 signInFlowController:v12 presentGenericTermsUIForAccount:v13 completion:v15];

  v14 = *MEMORY[0x1E69E9840];
}

void __103__AASignInFlowController__delegate_presentGenericTermsUIforAccount_authResults_serverError_completion___block_invoke_151(uint64_t a1, int a2, void *a3, void *a4)
{
  v37 = *MEMORY[0x1E69E9840];
  v7 = a3;
  v8 = a4;
  v9 = _AALogSystem();
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
  {
    v10 = @"NO";
    if (a2)
    {
      v10 = @"YES";
    }

    *buf = 138412546;
    v32 = v10;
    v33 = 2112;
    v34 = *&v8;
    _os_log_impl(&dword_1B6F6A000, v9, OS_LOG_TYPE_DEFAULT, "AASignInFlowController: Account accepted terms: %@, error: %@", buf, 0x16u);
  }

  if (v8)
  {
    v11 = [MEMORY[0x1E696AD98] numberWithInteger:{objc_msgSend(v8, "code")}];
  }

  else
  {
    v11 = 0;
  }

  v12 = [*(a1 + 32) telemetryTimeSeries];
  v13 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%s_%s", "TermsAcceptance", "errorCode"];
  [v12 setObject:v11 forKeyedSubscript:v13];

  if (v8)
  {
  }

  v14 = [v8 domain];
  v15 = [*(a1 + 32) telemetryTimeSeries];
  v16 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%s_%s", "TermsAcceptance", "errorDomain"];
  [v15 setObject:v14 forKeyedSubscript:v16];

  Nanoseconds = _AASignpostGetNanoseconds(*(a1 + 56), *(a1 + 64));
  v18 = _AASignpostLogSystem();
  v19 = v18;
  v20 = *(a1 + 56);
  if (v20 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v18))
  {
    v21 = [v8 code];
    *buf = 67240192;
    LODWORD(v32) = v21;
    _os_signpost_emit_with_name_impl(&dword_1B6F6A000, v19, OS_SIGNPOST_INTERVAL_END, v20, "TermsAcceptance", " Error=%{public,signpost.telemetry:number1,name=Error}d ", buf, 8u);
  }

  v22 = Nanoseconds / 1000000000.0;

  v23 = _AASignpostLogSystem();
  if (os_log_type_enabled(v23, OS_LOG_TYPE_DEFAULT))
  {
    v24 = *(a1 + 56);
    v25 = [v8 code];
    *buf = 134218496;
    v32 = v24;
    v33 = 2048;
    v34 = v22;
    v35 = 1026;
    v36 = v25;
    _os_log_impl(&dword_1B6F6A000, v23, OS_LOG_TYPE_DEFAULT, "END [%lld] %fs:TermsAcceptance  Error=%{public,signpost.telemetry:number1,name=Error}d ", buf, 0x1Cu);
  }

  v26 = [*(a1 + 32) telemetryTimeSeries];
  v27 = [MEMORY[0x1E696AD98] numberWithDouble:v22];
  [v26 setObject:v27 forKeyedSubscript:@"TermsAcceptance"];

  if (a2)
  {
    [*(a1 + 32) _registerAndVerifyLoginForiCloudAccount:v7 authResults:*(a1 + 40) withCompletion:*(a1 + 48)];
  }

  else
  {
    v28 = *(a1 + 48);
    if (v8)
    {
      (*(v28 + 16))(v28, 0, 0, v8);
    }

    else
    {
      v29 = [MEMORY[0x1E696ABC0] errorWithDomain:@"AASignInErrors" code:-8006 userInfo:0];
      (*(v28 + 16))(v28, 0, 0, v29);
    }
  }

  v30 = *MEMORY[0x1E69E9840];
}

- (void)_delegate_presentValidationAlertForError:(id)a3 forAccount:(id)a4 completion:(id)a5
{
  v32 = *MEMORY[0x1E69E9840];
  v7 = a3;
  v8 = a5;
  v9 = [v7 userInfo];
  v10 = [v9 objectForKey:*MEMORY[0x1E696A578]];
  v11 = v10;
  if (v10)
  {
    v12 = v10;
  }

  else
  {
    v12 = [(AASignInFlowController *)self _titleForVerificationFailureAlert];
  }

  v13 = v12;

  v14 = [v7 userInfo];
  v15 = [v14 objectForKey:*MEMORY[0x1E696A588]];

  v16 = _AALogSystem();
  if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
  {
    *buf = 138412802;
    v27 = v7;
    v28 = 2112;
    v29 = v13;
    v30 = 2112;
    v31 = v15;
    _os_log_error_impl(&dword_1B6F6A000, v16, OS_LOG_TYPE_ERROR, "AASignInFlowController: Sign in - validation failed with error: %@, title: %@, message: %@", buf, 0x20u);
  }

  v17 = [(AASignInFlowController *)self delegate];
  v18 = objc_opt_respondsToSelector();

  if (v18)
  {
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __89__AASignInFlowController__delegate_presentValidationAlertForError_forAccount_completion___block_invoke;
    block[3] = &unk_1E7C9ADC0;
    block[4] = self;
    v22 = v13;
    v23 = v15;
    v25 = v8;
    v24 = v7;
    v19 = dispatch_block_create_with_qos_class(DISPATCH_BLOCK_ENFORCE_QOS_CLASS|DISPATCH_BLOCK_ASSIGN_CURRENT, QOS_CLASS_USER_INTERACTIVE, 0, block);
    dispatch_async(MEMORY[0x1E69E96A0], v19);
  }

  else
  {
    (*(v8 + 2))(v8, 0, 0, v7);
  }

  v20 = *MEMORY[0x1E69E9840];
}

void __89__AASignInFlowController__delegate_presentValidationAlertForError_forAccount_completion___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) delegate];
  v3 = *(a1 + 32);
  v4 = *(a1 + 40);
  v5 = *(a1 + 48);
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __89__AASignInFlowController__delegate_presentValidationAlertForError_forAccount_completion___block_invoke_2;
  v6[3] = &unk_1E7C9AD98;
  v8 = *(a1 + 64);
  v7 = *(a1 + 56);
  [v2 signInFlowController:v3 showAlertWithTitle:v4 message:v5 completion:v6];
}

uint64_t __89__AASignInFlowController__delegate_presentValidationAlertForError_forAccount_completion___block_invoke_2(uint64_t a1)
{
  v2 = _AALogSystem();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_ERROR))
  {
    __89__AASignInFlowController__delegate_presentValidationAlertForError_forAccount_completion___block_invoke_2_cold_1();
  }

  v3 = *(a1 + 32);
  return (*(*(a1 + 40) + 16))();
}

- (void)_delegate_presentProgressViewForAccount:(id)a3 completion:(id)a4
{
  v6 = a3;
  v7 = a4;
  if (_os_feature_enabled_impl())
  {
    v8 = [(AASignInFlowController *)self delegate];
    v9 = objc_opt_respondsToSelector();
    v10 = _AALogSystem();
    v11 = v10;
    if (v9)
    {
      if (os_log_type_enabled(v10, OS_LOG_TYPE_DEBUG))
      {
        [AASignInFlowController _delegate_presentProgressViewForAccount:completion:];
      }

      v14[0] = MEMORY[0x1E69E9820];
      v14[1] = 3221225472;
      v14[2] = __77__AASignInFlowController__delegate_presentProgressViewForAccount_completion___block_invoke;
      v14[3] = &unk_1E7C9A8C0;
      v15 = v8;
      v16 = self;
      v17 = v6;
      v18 = v7;
      v12 = dispatch_block_create_with_qos_class(DISPATCH_BLOCK_ENFORCE_QOS_CLASS|DISPATCH_BLOCK_ASSIGN_CURRENT, QOS_CLASS_USER_INTERACTIVE, 0, v14);
      dispatch_async(MEMORY[0x1E69E96A0], v12);
    }

    else
    {
      if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
      {
        [AASignInFlowController _delegate_presentProgressViewForAccount:completion:];
      }

      if (v7)
      {
        (*(v7 + 2))(v7, 0);
      }
    }
  }

  else
  {
    v13 = _AALogSystem();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_DEBUG))
    {
      [AASignInFlowController _delegate_presentProgressViewForAccount:completion:];
    }

    if (v7)
    {
      (*(v7 + 2))(v7, 0);
    }
  }
}

- (void)_delegate_presentDataclassActionsForAccount:(id)a3 completion:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [[AADataclassActionsStore alloc] initWithAccount:v6];
  dataclassActionsStore = self->_dataclassActionsStore;
  self->_dataclassActionsStore = v8;

  v10 = objc_alloc_init(AASignedOutAccountKeychain);
  v28 = 0;
  v11 = [(AASignedOutAccountKeychain *)v10 fetchLastSignedOutAccountAltDSID:&v28];
  v12 = v28;
  if (v12)
  {
    v13 = _AALogSystem();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_DEBUG))
    {
      [AASignInFlowController _delegate_presentDataclassActionsForAccount:completion:];
    }

    (*(v7 + 2))(v7, 0, 0, v12);
  }

  else
  {
    v14 = [v6 aa_altDSID];
    v15 = [v14 isEqualToString:v11];

    v16 = _AALogSystem();
    v17 = os_log_type_enabled(v16, OS_LOG_TYPE_DEBUG);
    if (v15)
    {
      if (v17)
      {
        [AASignInFlowController _delegate_presentDataclassActionsForAccount:completion:];
      }

      (*(v7 + 2))(v7, 1, 2, 0);
    }

    else
    {
      if (v17)
      {
        [AASignInFlowController _delegate_presentDataclassActionsForAccount:completion:];
      }

      v18 = [(AASignInFlowController *)self delegate];
      v19 = objc_opt_respondsToSelector();
      v20 = _AALogSystem();
      v21 = v20;
      if (v19)
      {
        if (os_log_type_enabled(v20, OS_LOG_TYPE_DEBUG))
        {
          [AASignInFlowController _delegate_presentDataclassActionsForAccount:completion:];
        }

        block[0] = MEMORY[0x1E69E9820];
        block[1] = 3221225472;
        block[2] = __81__AASignInFlowController__delegate_presentDataclassActionsForAccount_completion___block_invoke;
        block[3] = &unk_1E7C9A8C0;
        v24 = v18;
        v25 = self;
        v26 = v6;
        v27 = v7;
        v22 = dispatch_block_create_with_qos_class(DISPATCH_BLOCK_ENFORCE_QOS_CLASS|DISPATCH_BLOCK_ASSIGN_CURRENT, QOS_CLASS_USER_INTERACTIVE, 0, block);
        dispatch_async(MEMORY[0x1E69E96A0], v22);
      }

      else
      {
        if (os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
        {
          [AASignInFlowController _delegate_presentDataclassActionsForAccount:completion:];
        }

        (*(v7 + 2))(v7, 1, 0, 0);
      }
    }
  }
}

- (void)_delegate_presentAccountPrivacyOptInForAccount:(id)a3 userActionCompletion:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [(AASignInFlowController *)self delegate];
  v9 = objc_opt_respondsToSelector();
  v10 = _AALogSystem();
  v11 = v10;
  if (v9)
  {
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEBUG))
    {
      [AASignInFlowController _delegate_presentAccountPrivacyOptInForAccount:userActionCompletion:];
    }

    v14[0] = MEMORY[0x1E69E9820];
    v14[1] = 3221225472;
    v14[2] = __94__AASignInFlowController__delegate_presentAccountPrivacyOptInForAccount_userActionCompletion___block_invoke;
    v14[3] = &unk_1E7C9A8C0;
    v15 = v8;
    v16 = self;
    v17 = v6;
    v18 = v7;
    v12 = dispatch_block_create_with_qos_class(DISPATCH_BLOCK_ENFORCE_QOS_CLASS|DISPATCH_BLOCK_ASSIGN_CURRENT, QOS_CLASS_USER_INTERACTIVE, 0, v14);
    dispatch_async(MEMORY[0x1E69E96A0], v12);

    v13 = v15;
    goto LABEL_9;
  }

  if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
  {
    [AASignInFlowController _delegate_presentAccountPrivacyOptInForAccount:userActionCompletion:];
  }

  if (v7)
  {
    v13 = [MEMORY[0x1E696ABC0] errorWithDomain:@"AASignInErrors" code:-8016 userInfo:0];
    (*(v7 + 2))(v7, 0, v13);
LABEL_9:
  }
}

- (void)_onqueue_delegate_enableFindMyWithCompletion:(id)a3
{
  v4 = a3;
  v5 = [(AASignInFlowController *)self delegate];
  v6 = objc_opt_respondsToSelector();

  if (v6)
  {
    v7 = [(AASignInFlowController *)self delegate];
    v8 = [(AASignInFlowController *)self _findMyActivationAction];
    v10[0] = MEMORY[0x1E69E9820];
    v10[1] = 3221225472;
    v10[2] = __71__AASignInFlowController__onqueue_delegate_enableFindMyWithCompletion___block_invoke;
    v10[3] = &unk_1E7C9A780;
    v11 = v4;
    [v7 signInFlowController:self enableFindMyWithAction:v8 completion:v10];
  }

  else
  {
    v9 = _AALogSystem();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      [(AASignInFlowController *)self _onqueue_delegate_enableFindMyWithCompletion:v9];
    }

    (*(v4 + 2))(v4, 0);
  }
}

uint64_t __71__AASignInFlowController__onqueue_delegate_enableFindMyWithCompletion___block_invoke(uint64_t a1)
{
  v2 = _AALogSystem();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_ERROR))
  {
    __71__AASignInFlowController__onqueue_delegate_enableFindMyWithCompletion___block_invoke_cold_1();
  }

  return (*(*(a1 + 32) + 16))();
}

- (id)_nameForCloudService
{
  v2 = [MEMORY[0x1E696AAE8] bundleWithIdentifier:@"com.apple.AppleAccount"];
  v3 = [v2 localizedStringForKey:@"SERVICE_TYPE_ICLOUD" value:0 table:@"Localizable"];

  return v3;
}

- (id)_titleForSignInFailureAlert
{
  v2 = [MEMORY[0x1E696AAE8] bundleWithIdentifier:@"com.apple.AppleAccount"];
  v3 = [v2 localizedStringForKey:@"SIGN_IN_ERROR_TITLE" value:0 table:@"Localizable"];

  return v3;
}

- (id)_titleForVerificationFailureAlert
{
  v2 = [MEMORY[0x1E696AAE8] bundleWithIdentifier:@"com.apple.AppleAccount"];
  v3 = [v2 localizedStringForKey:@"VERIFICATION_FAILED_TITLE" value:0 table:@"Localizable"];

  return v3;
}

- (id)_aaErrorForErrorCode:(int64_t)a3 withUnderlyingError:(id)a4
{
  v6 = a4;
  v7 = [MEMORY[0x1E695DF90] dictionary];
  v8 = [(AASignInFlowController *)self _aaMessageForErrorCode:a3];
  [v7 setObject:v8 forKeyedSubscript:*MEMORY[0x1E696A578]];

  if (v6)
  {
    [v7 setObject:v6 forKeyedSubscript:*MEMORY[0x1E696AA08]];
  }

  v9 = [MEMORY[0x1E696ABC0] errorWithDomain:@"AASignInErrors" code:a3 userInfo:v7];

  return v9;
}

- (id)_aaMessageForErrorCode:(int64_t)a3
{
  v5 = [MEMORY[0x1E696AAE8] bundleWithIdentifier:@"com.apple.AppleAccount"];
  v6 = [v5 localizedStringForKey:@"UNABLE_TO_VALIDATE" value:0 table:@"Localizable"];

  if ([(AASignInFlowController *)self _isDuplicateAccountError:a3])
  {
    v7 = [MEMORY[0x1E696AAE8] bundleWithIdentifier:@"com.apple.AppleAccount"];
    v8 = [v7 localizedStringForKey:@"ALREADY_EXISTING_ACCOUNT_DESC" value:0 table:@"Localizable"];

    v6 = v8;
  }

  return v6;
}

- (BOOL)_delegateWantsToSkipDataclassEnablement
{
  v13 = *MEMORY[0x1E69E9840];
  v3 = [(AASignInFlowController *)self delegate];
  v4 = objc_opt_respondsToSelector();

  if (v4)
  {
    v5 = [(AASignInFlowController *)self delegate];
    v6 = [v5 skipDataclassEnablement];

    v7 = _AALogSystem();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      v8 = @"NO";
      if (v6)
      {
        v8 = @"YES";
      }

      v11 = 138412290;
      v12 = v8;
      _os_log_impl(&dword_1B6F6A000, v7, OS_LOG_TYPE_DEFAULT, "Delegate wants to skip dataclass enablement: %@", &v11, 0xCu);
    }
  }

  else
  {
    LOBYTE(v6) = 0;
  }

  v9 = *MEMORY[0x1E69E9840];
  return v6;
}

- (BOOL)_delegateWantsToBackgroundDataclassEnablement
{
  v13 = *MEMORY[0x1E69E9840];
  v3 = [(AASignInFlowController *)self delegate];
  v4 = objc_opt_respondsToSelector();

  if (v4)
  {
    v5 = [(AASignInFlowController *)self delegate];
    v6 = [v5 backgroundDataclassEnablement];

    v7 = _AALogSystem();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      v8 = @"NO";
      if (v6)
      {
        v8 = @"YES";
      }

      v11 = 138412290;
      v12 = v8;
      _os_log_impl(&dword_1B6F6A000, v7, OS_LOG_TYPE_DEFAULT, "Delegate wants to background dataclass enablement: %@", &v11, 0xCu);
    }
  }

  else
  {
    LOBYTE(v6) = 0;
  }

  v9 = *MEMORY[0x1E69E9840];
  return v6;
}

- (BOOL)_delegateRequiresTerms
{
  v3 = [(AASignInFlowController *)self delegate];
  v4 = objc_opt_respondsToSelector();

  if ((v4 & 1) == 0)
  {
    return 0;
  }

  v5 = [(AASignInFlowController *)self delegate];
  v6 = [v5 requiredTerms];
  v7 = [v6 count] != 0;

  return v7;
}

- (unint64_t)_findMyActivationAction
{
  v12 = *MEMORY[0x1E69E9840];
  v3 = [(AASignInFlowController *)self delegate];
  v4 = objc_opt_respondsToSelector();

  if (v4)
  {
    v5 = [(AASignInFlowController *)self delegate];
    v6 = [v5 findMyActivationAction];

    if (v6)
    {
      v7 = _AALogSystem();
      if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
      {
        v10 = 134217984;
        v11 = v6;
        _os_log_impl(&dword_1B6F6A000, v7, OS_LOG_TYPE_DEFAULT, "Delegate provided custom activation action: %lu", &v10, 0xCu);
      }
    }
  }

  else
  {
    v6 = 0;
  }

  v8 = *MEMORY[0x1E69E9840];
  return v6;
}

- (BOOL)_shouldEnableDataclassesForAccount:(id)a3
{
  v4 = a3;
  if ([(AASignInFlowController *)self _delegateWantsToSkipDataclassEnablement]|| self->_existingAccount && ![(AASignInFlowController *)self _newSignInReauth])
  {
    v5 = 0;
  }

  else
  {
    v5 = [v4 aa_isPrimaryEmailVerified];
  }

  return v5;
}

- (BOOL)_newSignInReauth
{
  v13 = *MEMORY[0x1E69E9840];
  v3 = [(AASignInFlowController *)self delegate];
  v4 = objc_opt_respondsToSelector();

  if (v4)
  {
    v5 = [(AASignInFlowController *)self delegate];
    v6 = [v5 newSignInReauth];

    v7 = _AALogSystem();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      v8 = @"NO";
      if (v6)
      {
        v8 = @"YES";
      }

      v11 = 138412290;
      v12 = v8;
      _os_log_impl(&dword_1B6F6A000, v7, OS_LOG_TYPE_DEFAULT, "Delegate indicates new sign in reauth: %@", &v11, 0xCu);
    }
  }

  else
  {
    LOBYTE(v6) = 0;
  }

  v9 = *MEMORY[0x1E69E9840];
  return v6;
}

- (BOOL)_newSignInFlow
{
  v13 = *MEMORY[0x1E69E9840];
  v3 = [(AASignInFlowController *)self delegate];
  v4 = objc_opt_respondsToSelector();

  if (v4)
  {
    v5 = [(AASignInFlowController *)self delegate];
    v6 = [v5 newSignInFlow];

    v7 = _AALogSystem();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      v8 = @"NO";
      if (v6)
      {
        v8 = @"YES";
      }

      v11 = 138412290;
      v12 = v8;
      _os_log_impl(&dword_1B6F6A000, v7, OS_LOG_TYPE_DEFAULT, "Delegate wants to start new sign in flow: %@", &v11, 0xCu);
    }
  }

  else
  {
    LOBYTE(v6) = 0;
  }

  v9 = *MEMORY[0x1E69E9840];
  return v6;
}

- (BOOL)_shouldStashLoginResponse
{
  v13 = *MEMORY[0x1E69E9840];
  v3 = [(AASignInFlowController *)self delegate];
  v4 = objc_opt_respondsToSelector();

  if (v4)
  {
    v5 = [(AASignInFlowController *)self delegate];
    v6 = [v5 shouldStashLoginResponse];

    v7 = _AALogSystem();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      v8 = @"NO";
      if (v6)
      {
        v8 = @"YES";
      }

      v11 = 138412290;
      v12 = v8;
      _os_log_impl(&dword_1B6F6A000, v7, OS_LOG_TYPE_DEFAULT, "Delegate wants to stash login response: %@", &v11, 0xCu);
    }
  }

  else
  {
    LOBYTE(v6) = 0;
  }

  v9 = *MEMORY[0x1E69E9840];
  return v6;
}

- (void)_stashLoginResponseWithAuthenticationResults:(id)a3 appleAccount:(id)a4
{
  v6 = a3;
  v7 = a4;
  if ([(AASignInFlowController *)self _shouldStashLoginResponse])
  {
    utilityQueue = self->_utilityQueue;
    v11[0] = MEMORY[0x1E69E9820];
    v11[1] = 3221225472;
    v11[2] = __84__AASignInFlowController__stashLoginResponseWithAuthenticationResults_appleAccount___block_invoke;
    v11[3] = &unk_1E7C9ADE8;
    v12 = v7;
    v13 = v6;
    v9 = utilityQueue;
    v10 = dispatch_block_create_with_qos_class(DISPATCH_BLOCK_ENFORCE_QOS_CLASS|DISPATCH_BLOCK_ASSIGN_CURRENT, QOS_CLASS_DEFAULT, 0, v11);
    dispatch_async(v9, v10);
  }
}

void __84__AASignInFlowController__stashLoginResponseWithAuthenticationResults_appleAccount___block_invoke(uint64_t a1)
{
  v21 = *MEMORY[0x1E69E9840];
  v2 = _AASignpostLogSystem();
  v3 = _AASignpostCreate(v2);
  v5 = v4;

  v6 = _AASignpostLogSystem();
  v7 = v6;
  if (v3 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v6))
  {
    LOWORD(v17) = 0;
    _os_signpost_emit_with_name_impl(&dword_1B6F6A000, v7, OS_SIGNPOST_INTERVAL_BEGIN, v3, "StashLoginResponse", " enableTelemetry=YES ", &v17, 2u);
  }

  v8 = _AASignpostLogSystem();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    v17 = 134217984;
    v18 = v3;
    _os_log_impl(&dword_1B6F6A000, v8, OS_LOG_TYPE_DEFAULT, "BEGIN [%lld]: StashLoginResponse  enableTelemetry=YES ", &v17, 0xCu);
  }

  v9 = [*(a1 + 32) aa_cloudKitAccount];
  v10 = [v9 credential];
  v11 = [v10 token];

  [AALoginContextManager stashLoginResponseWithAuthenticationResults:*(a1 + 40) cloudKitToken:v11];
  Nanoseconds = _AASignpostGetNanoseconds(v3, v5);
  v13 = _AASignpostLogSystem();
  v14 = v13;
  if (v3 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v13))
  {
    LOWORD(v17) = 0;
    _os_signpost_emit_with_name_impl(&dword_1B6F6A000, v14, OS_SIGNPOST_INTERVAL_END, v3, "StashLoginResponse", "", &v17, 2u);
  }

  v15 = _AASignpostLogSystem();
  if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
  {
    v17 = 134218240;
    v18 = v3;
    v19 = 2048;
    v20 = Nanoseconds / 1000000000.0;
    _os_log_impl(&dword_1B6F6A000, v15, OS_LOG_TYPE_DEFAULT, "END [%lld] %fs: StashLoginResponse ", &v17, 0x16u);
  }

  v16 = *MEMORY[0x1E69E9840];
}

- (id)_userPersonaUniqueString
{
  v2 = objc_alloc_init(MEMORY[0x1E69DF078]);
  if (([v2 isEnterprisePersona] & 1) != 0 || objc_msgSend(v2, "isGuestPersona"))
  {
    v3 = [v2 userPersonaUniqueString];
    v4 = _AALogSystem();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEBUG))
    {
      [(AASignInFlowController *)v3 _userPersonaUniqueString];
    }
  }

  else
  {
    v4 = _AALogSystem();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEBUG))
    {
      [AASignInFlowController _userPersonaUniqueString];
    }

    v3 = 0;
  }

  return v3;
}

- (void)prewarmOperationsWithCompletion:(id)a3
{
  v3 = a3;
  v4 = +[AARemoteServer sharedServer];
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __58__AASignInFlowController_prewarmOperationsWithCompletion___block_invoke;
  v6[3] = &unk_1E7C9AE60;
  v7 = v3;
  v5 = v3;
  [v4 configurationWithCompletion:v6];
}

void __58__AASignInFlowController_prewarmOperationsWithCompletion___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [@"PREWARM" dataUsingEncoding:4];
  v5 = dispatch_group_create();
  v6 = [v3 absintheEnable];

  if ([v6 unsignedIntegerValue] == 1)
  {
    dispatch_group_enter(v5);
    v7 = +[AAAbsintheSigner sharedSigner];
    v10[0] = MEMORY[0x1E69E9820];
    v10[1] = 3221225472;
    v10[2] = __58__AASignInFlowController_prewarmOperationsWithCompletion___block_invoke_2;
    v10[3] = &unk_1E7C9AE10;
    v11 = v5;
    [v7 signatureForData:v4 completion:v10];
  }

  if (*(a1 + 32))
  {
    v8[0] = MEMORY[0x1E69E9820];
    v8[1] = 3221225472;
    v8[2] = __58__AASignInFlowController_prewarmOperationsWithCompletion___block_invoke_3;
    v8[3] = &unk_1E7C9AE38;
    v9 = *(a1 + 32);
    dispatch_group_notify(v5, MEMORY[0x1E69E96A0], v8);
  }
}

- (BOOL)_isAccountImprovementProgramEnabled
{
  v2 = [MEMORY[0x1E698DD70] sharedManager];
  v3 = objc_opt_respondsToSelector();

  if (v3)
  {
    v4 = [MEMORY[0x1E698DD70] sharedManager];
    v5 = [v4 isAccountImprovementProgramEnabled];

    v6 = _AALogSystem();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEBUG))
    {
      [AASignInFlowController _isAccountImprovementProgramEnabled];
    }
  }

  else
  {
    v6 = _AALogSystem();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEBUG))
    {
      [AASignInFlowController _isAccountImprovementProgramEnabled];
    }

    v5 = 0;
  }

  return v5;
}

- (AASignInFlowControllerDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

- (CDPStateUIProvider)cdpUIProvider
{
  WeakRetained = objc_loadWeakRetained(&self->_cdpUIProvider);

  return WeakRetained;
}

void __82__AASignInFlowController__onqueue_signInWithIDMSAuthenticationResults_completion___block_invoke_52_cold_1()
{
  v6 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_6();
  OUTLINED_FUNCTION_5();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 0xCu);
  v5 = *MEMORY[0x1E69E9840];
}

- (void)_onqueue_prepareExistingAppleAccountForSignIn:withAuthResults:accountCreationError:.cold.1()
{
  v6 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_2();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
  v5 = *MEMORY[0x1E69E9840];
}

- (void)_onqueue_createNewAppleAccountWithAuthResults:accountCreationError:.cold.1()
{
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_2();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

- (void)_onqueue_updateAppleAccount:withAuthenticationResults:.cold.1()
{
  v3 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_0_0(&dword_1B6F6A000, v0, v1, "Updated Apple account (%@) with temporary first name from IdMS results (%{sensitive}@)");
  v2 = *MEMORY[0x1E69E9840];
}

- (void)_onqueue_updateAppleAccount:withAuthenticationResults:.cold.2()
{
  v3 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_0_0(&dword_1B6F6A000, v0, v1, "Updated Apple account (%@) with temporary last name from IdMS results (%{sensitive}@)");
  v2 = *MEMORY[0x1E69E9840];
}

- (void)_onqueue_saveTermsWithAuthResults:account:.cold.1()
{
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_5();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 2u);
}

void __101__AASignInFlowController__onqueue_registerAndVerifyLoginForiCloudAccount_authResults_withCompletion___block_invoke_cold_1()
{
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_2();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void __101__AASignInFlowController__onqueue_registerAndVerifyLoginForiCloudAccount_authResults_withCompletion___block_invoke_74_cold_1(uint64_t a1)
{
  v12 = *MEMORY[0x1E69E9840];
  v1 = *(a1 + 32);
  v2 = *(a1 + 40);
  OUTLINED_FUNCTION_6();
  v8 = 2112;
  v9 = v3;
  v10 = 2112;
  v11 = v4;
  _os_log_error_impl(&dword_1B6F6A000, v5, OS_LOG_TYPE_ERROR, "Failed to cache login response (%@) for account (%@) with error: %@", v7, 0x20u);
  v6 = *MEMORY[0x1E69E9840];
}

void __101__AASignInFlowController__onqueue_registerAndVerifyLoginForiCloudAccount_authResults_withCompletion___block_invoke_77_cold_1()
{
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_5();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 2u);
}

void __116__AASignInFlowController__onqueue_verifyLoginResponseForiCloudAccount_withAuthResults_withSuccess_error_completion___block_invoke_99_cold_1()
{
  v3 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_6();
  OUTLINED_FUNCTION_1_0();
  _os_log_error_impl(&dword_1B6F6A000, v0, OS_LOG_TYPE_ERROR, "Delegate presented privacy opt-in view. User action success=%@, error=%@", v2, 0x16u);
  v1 = *MEMORY[0x1E69E9840];
}

void __116__AASignInFlowController__onqueue_verifyLoginResponseForiCloudAccount_withAuthResults_withSuccess_error_completion___block_invoke_99_cold_2()
{
  v3 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_6();
  OUTLINED_FUNCTION_1_0();
  OUTLINED_FUNCTION_0_0(&dword_1B6F6A000, v0, v1, "Delegate presented privacy opt-in view. User action success=%@, error=%@");
  v2 = *MEMORY[0x1E69E9840];
}

void __116__AASignInFlowController__onqueue_verifyLoginResponseForiCloudAccount_withAuthResults_withSuccess_error_completion___block_invoke_2_cold_1()
{
  v6 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_2();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
  v5 = *MEMORY[0x1E69E9840];
}

void __116__AASignInFlowController__onqueue_verifyLoginResponseForiCloudAccount_withAuthResults_withSuccess_error_completion___block_invoke_2_cold_2()
{
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_2();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void __116__AASignInFlowController__onqueue_verifyLoginResponseForiCloudAccount_withAuthResults_withSuccess_error_completion___block_invoke_109_cold_1()
{
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_2();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void __116__AASignInFlowController__onqueue_verifyLoginResponseForiCloudAccount_withAuthResults_withSuccess_error_completion___block_invoke_109_cold_2()
{
  v6 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_6();
  OUTLINED_FUNCTION_5();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 0xCu);
  v5 = *MEMORY[0x1E69E9840];
}

void __98__AASignInFlowController__onqueue_validateAndEnrollCDPStateForAccount_withAuthResults_completion___block_invoke_116_cold_1()
{
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_5();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 2u);
}

- (void)_preflightSaveWithAuthResults:account:withCompletion:.cold.1()
{
  v6 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_5();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 0xCu);
  v5 = *MEMORY[0x1E69E9840];
}

void __79__AASignInFlowController__preflightSaveWithAuthResults_account_withCompletion___block_invoke_117_cold_1()
{
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_2();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

- (void)_onqueue_addKeysAndEnrollCDPStateForAccount:(uint64_t)a1 withCDPContext:(NSObject *)a2 completion:.cold.1(uint64_t a1, NSObject *a2)
{
  v6 = *MEMORY[0x1E69E9840];
  v3 = [*(a1 + 16) allKeys];
  OUTLINED_FUNCTION_1();
  _os_log_debug_impl(&dword_1B6F6A000, a2, OS_LOG_TYPE_DEBUG, "Looking for custodian sessionID in authentication results: %{private}@", v5, 0xCu);

  v4 = *MEMORY[0x1E69E9840];
}

void __96__AASignInFlowController__onqueue_addKeysAndEnrollCDPStateForAccount_withCDPContext_completion___block_invoke_cold_1()
{
  v6 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_2();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
  v5 = *MEMORY[0x1E69E9840];
}

- (void)_dataclassActionsForPreflightSaveForAccount:(uint64_t)a1 .cold.1(uint64_t a1)
{
  v8 = *MEMORY[0x1E69E9840];
  v1 = *(a1 + 88);
  OUTLINED_FUNCTION_6();
  OUTLINED_FUNCTION_5();
  _os_log_debug_impl(v2, v3, v4, v5, v6, 0xCu);
  v7 = *MEMORY[0x1E69E9840];
}

- (void)_onqueue_enrollCDPStateForAccount:withCDPContext:completion:.cold.1()
{
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_2();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void __86__AASignInFlowController__onqueue_enrollCDPStateForAccount_withCDPContext_completion___block_invoke_cold_1(uint64_t *a1)
{
  v8 = *MEMORY[0x1E69E9840];
  v1 = *a1;
  OUTLINED_FUNCTION_6();
  OUTLINED_FUNCTION_5();
  _os_log_debug_impl(v2, v3, v4, v5, v6, 0xCu);
  v7 = *MEMORY[0x1E69E9840];
}

void __86__AASignInFlowController__onqueue_enrollCDPStateForAccount_withCDPContext_completion___block_invoke_cold_2(uint64_t *a1)
{
  v5 = *MEMORY[0x1E69E9840];
  v1 = *a1;
  OUTLINED_FUNCTION_6();
  OUTLINED_FUNCTION_1_0();
  OUTLINED_FUNCTION_0_0(&dword_1B6F6A000, v2, v3, "CDPContext (%@) is providing specialized time series: %@");
  v4 = *MEMORY[0x1E69E9840];
}

- (void)_onqueue_saveAccount:withAuthResults:withCDPEnablement:withAllDataclassesEnabledIfPossibleWithCompletion:.cold.1()
{
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_2();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

- (void)_onqueue_saveAccount:withDataclassEnablement:completion:.cold.1()
{
  v6 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_5();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 0xCu);
  v5 = *MEMORY[0x1E69E9840];
}

void __75__AASignInFlowController__delegate_presentAccountCreationError_completion___block_invoke_2_cold_1()
{
  v6 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_6();
  OUTLINED_FUNCTION_2();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
  v5 = *MEMORY[0x1E69E9840];
}

- (void)_delegate_presentGenericTermsUIforAccount:authResults:serverError:completion:.cold.1()
{
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_2();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void __89__AASignInFlowController__delegate_presentValidationAlertForError_forAccount_completion___block_invoke_2_cold_1()
{
  v6 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_6();
  OUTLINED_FUNCTION_2();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
  v5 = *MEMORY[0x1E69E9840];
}

- (void)_delegate_presentProgressViewForAccount:completion:.cold.1()
{
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_5();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 2u);
}

- (void)_delegate_presentProgressViewForAccount:completion:.cold.2()
{
  v6 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_2();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
  v5 = *MEMORY[0x1E69E9840];
}

- (void)_delegate_presentProgressViewForAccount:completion:.cold.3()
{
  v3 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_1_0();
  OUTLINED_FUNCTION_0_0(&dword_1B6F6A000, v0, v1, "AASignInFlowController: Requesting delegate (%@) to present progress view for account (%@)");
  v2 = *MEMORY[0x1E69E9840];
}

- (void)_delegate_presentDataclassActionsForAccount:completion:.cold.1()
{
  v6 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_5();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 0xCu);
  v5 = *MEMORY[0x1E69E9840];
}

- (void)_delegate_presentDataclassActionsForAccount:completion:.cold.2()
{
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_5();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 2u);
}

- (void)_delegate_presentDataclassActionsForAccount:completion:.cold.3()
{
  v6 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_2();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
  v5 = *MEMORY[0x1E69E9840];
}

- (void)_delegate_presentDataclassActionsForAccount:completion:.cold.4()
{
  v3 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_1_0();
  OUTLINED_FUNCTION_0_0(&dword_1B6F6A000, v0, v1, "AASignInFlowController: Requesting delegate (%@) to present dataclass actions view for account (%@)");
  v2 = *MEMORY[0x1E69E9840];
}

- (void)_delegate_presentDataclassActionsForAccount:completion:.cold.5()
{
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_5();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 2u);
}

- (void)_delegate_presentAccountPrivacyOptInForAccount:userActionCompletion:.cold.1()
{
  v6 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_2();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
  v5 = *MEMORY[0x1E69E9840];
}

- (void)_delegate_presentAccountPrivacyOptInForAccount:userActionCompletion:.cold.2()
{
  v3 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_1_0();
  OUTLINED_FUNCTION_0_0(&dword_1B6F6A000, v0, v1, "AASignInFlowController: Requesting delegate (%@) to present account privacy opt-in for account (%@)");
  v2 = *MEMORY[0x1E69E9840];
}

- (void)_onqueue_delegate_enableFindMyWithCompletion:(void *)a1 .cold.1(void *a1, NSObject *a2)
{
  v6 = *MEMORY[0x1E69E9840];
  v3 = [a1 delegate];
  OUTLINED_FUNCTION_1();
  _os_log_error_impl(&dword_1B6F6A000, a2, OS_LOG_TYPE_ERROR, "AASignInFlowController: Delegate (%@) does not respond to selector, FindMy enable failed.", v5, 0xCu);

  v4 = *MEMORY[0x1E69E9840];
}

void __71__AASignInFlowController__onqueue_delegate_enableFindMyWithCompletion___block_invoke_cold_1()
{
  v6 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_6();
  OUTLINED_FUNCTION_2();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
  v5 = *MEMORY[0x1E69E9840];
}

- (void)_userPersonaUniqueString
{
  v14 = *MEMORY[0x1E69E9840];
  v6 = [a2 userPersonaNickName];
  v8 = 138543874;
  v9 = a1;
  v10 = 2112;
  v11 = v6;
  v12 = 2048;
  v13 = [a2 userPersonaType];
  _os_log_debug_impl(&dword_1B6F6A000, a3, OS_LOG_TYPE_DEBUG, "Data separated persona detected. {uniqueString=%{public}@, nickname=%@, type=%ld}", &v8, 0x20u);

  v7 = *MEMORY[0x1E69E9840];
}

- (void)_isAccountImprovementProgramEnabled
{
  v6 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_6();
  OUTLINED_FUNCTION_5();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 0xCu);
  v5 = *MEMORY[0x1E69E9840];
}

@end