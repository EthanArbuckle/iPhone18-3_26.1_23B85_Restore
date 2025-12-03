@interface AASignOutFlowController
- (AASignOutFlowController)initWithContext:(id)context;
- (AASignOutFlowControllerDelegate)delegate;
- (void)_delegate_disableFindMyDeviceForAccount:(id)account completion:(id)completion;
- (void)_delegate_performWalrusValidationForAccount:(id)account completion:(id)completion;
- (void)_delegate_presentError:(id)error withTitle:(id)title;
- (void)_delegate_signOutAccount:(id)account completion:(id)completion;
- (void)_delegate_startSignOutFlowForAccount:(id)account completion:(id)completion;
- (void)_disableDeviceLocatorForAccount:(id)account completion:(id)completion;
- (void)_performWalrusValidationForAccount:(id)account completion:(id)completion;
- (void)_preflightSignOutOfAccount:(id)account completion:(id)completion;
- (void)_signOutAppleAccount:(id)account completion:(id)completion;
- (void)_startSignOutOfferFlow:(id)flow completion:(id)completion;
- (void)sendTelemetryEventSignoutStart:(id)start;
- (void)signOutAppleAccount:(id)account completion:(id)completion;
@end

@implementation AASignOutFlowController

- (AASignOutFlowController)initWithContext:(id)context
{
  contextCopy = context;
  v19.receiver = self;
  v19.super_class = AASignOutFlowController;
  v5 = [(AASignOutFlowController *)&v19 init];
  if (v5)
  {
    defaultStore = [MEMORY[0x1E6959A48] defaultStore];
    accountStore = v5->_accountStore;
    v5->_accountStore = defaultStore;

    v8 = objc_alloc_init(AASignedOutAccountKeychain);
    signedOutAccountKeychain = v5->_signedOutAccountKeychain;
    v5->_signedOutAccountKeychain = v8;

    if (contextCopy)
    {
      authenticationResults = [contextCopy authenticationResults];
      v11 = [authenticationResults objectForKeyedSubscript:*MEMORY[0x1E698DBE0]];
      p_telemetryFlowID = &v5->telemetryFlowID;
      telemetryFlowID = v5->telemetryFlowID;
      v5->telemetryFlowID = v11;

      if (!v5->telemetryFlowID)
      {
        uUID = [MEMORY[0x1E696AFB0] UUID];
        uUIDString = [uUID UUIDString];
        v16 = *p_telemetryFlowID;
        *p_telemetryFlowID = uUIDString;

        v17 = _AASignOutLogSystem();
        if (os_log_type_enabled(v17, OS_LOG_TYPE_DEBUG))
        {
          [(AASignOutFlowController *)&v5->telemetryFlowID initWithContext:v17];
        }
      }
    }
  }

  return v5;
}

- (void)signOutAppleAccount:(id)account completion:(id)completion
{
  v32 = *MEMORY[0x1E69E9840];
  accountCopy = account;
  completionCopy = completion;
  if (!accountCopy)
  {
    [AASignOutFlowController signOutAppleAccount:a2 completion:self];
  }

  accountType = [accountCopy accountType];
  identifier = [accountType identifier];
  v11 = [identifier isEqualToString:*MEMORY[0x1E69597F8]];

  if (v11)
  {
    v12 = _os_activity_create(&dword_1B6F6A000, "appleaccount/signOutAppleAccount", MEMORY[0x1E69E9C00], OS_ACTIVITY_FLAG_DEFAULT);
    state.opaque[0] = 0;
    state.opaque[1] = 0;
    os_activity_scope_enter(v12, &state);
    v13 = _AASignOutLogSystem();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v31 = accountCopy;
      _os_log_impl(&dword_1B6F6A000, v13, OS_LOG_TYPE_DEFAULT, "AASignOutFlowController: Will begin sign out of account: %@", buf, 0xCu);
    }

    v14 = _AASignpostLogSystem();
    v15 = _AASignpostCreate(v14);
    v17 = v16;

    v18 = _AASignpostLogSystem();
    v19 = v18;
    if ((v15 - 1) <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v18))
    {
      *buf = 0;
      _os_signpost_emit_with_name_impl(&dword_1B6F6A000, v19, OS_SIGNPOST_INTERVAL_BEGIN, v15, "SignOutAppleAccount", " enableTelemetry=YES ", buf, 2u);
    }

    v20 = _AASignpostLogSystem();
    if (os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 134217984;
      v31 = v15;
      _os_log_impl(&dword_1B6F6A000, v20, OS_LOG_TYPE_DEFAULT, "BEGIN [%lld]: SignOutAppleAccount  enableTelemetry=YES ", buf, 0xCu);
    }

    [(AASignOutFlowController *)self sendTelemetryEventSignoutStart:accountCopy];
    objc_initWeak(buf, self);
    v21 = dispatch_get_global_queue(25, 0);
    v24[0] = MEMORY[0x1E69E9820];
    v24[1] = 3221225472;
    v24[2] = __58__AASignOutFlowController_signOutAppleAccount_completion___block_invoke;
    v24[3] = &unk_1E7C9AF88;
    objc_copyWeak(v28, buf);
    v25 = accountCopy;
    selfCopy = self;
    v27 = completionCopy;
    v28[1] = v15;
    v28[2] = v17;
    dispatch_async(v21, v24);

    objc_destroyWeak(v28);
    objc_destroyWeak(buf);
    os_activity_scope_leave(&state);
  }

  else
  {
    v22 = _AASignOutLogSystem();
    if (os_log_type_enabled(v22, OS_LOG_TYPE_DEFAULT))
    {
      LOWORD(state.opaque[0]) = 0;
      _os_log_impl(&dword_1B6F6A000, v22, OS_LOG_TYPE_DEFAULT, "Attempting to sign out non-AppleAccount, bailing!", &state, 2u);
    }

    v12 = [MEMORY[0x1E696ABC0] aa_errorWithCode:-4404];
    (*(completionCopy + 2))(completionCopy, 0, v12);
  }

  v23 = *MEMORY[0x1E69E9840];
}

void __58__AASignOutFlowController_signOutAppleAccount_completion___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 56));
  if (WeakRetained)
  {
    v3 = MEMORY[0x1E6985DB0];
    v4 = [*(a1 + 32) aida_alternateDSID];
    v5 = [v3 analyticsEventWithName:@"com.apple.appleaccount.signOutFinish" altDSID:v4 flowID:*(*(a1 + 40) + 16)];

    v6 = *(a1 + 32);
    v10[0] = MEMORY[0x1E69E9820];
    v10[1] = 3221225472;
    v10[2] = __58__AASignOutFlowController_signOutAppleAccount_completion___block_invoke_2;
    v10[3] = &unk_1E7C9AF60;
    v14 = *(a1 + 48);
    v10[4] = WeakRetained;
    v7 = *(a1 + 32);
    v15 = *(a1 + 64);
    v8 = *(a1 + 40);
    v11 = v7;
    v12 = v8;
    v13 = v5;
    v9 = v5;
    [WeakRetained _startSignOutOfferFlow:v6 completion:v10];
  }

  else
  {
    v9 = _AASignOutLogSystem();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_FAULT))
    {
      __58__AASignOutFlowController_signOutAppleAccount_completion___block_invoke_cold_1(v9);
    }
  }
}

void __58__AASignOutFlowController_signOutAppleAccount_completion___block_invoke_2(uint64_t a1, uint64_t a2, void *a3)
{
  v18 = *MEMORY[0x1E69E9840];
  v4 = a3;
  if (v4)
  {
    v5 = _AASignOutLogSystem();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v17 = v4;
      _os_log_impl(&dword_1B6F6A000, v5, OS_LOG_TYPE_DEFAULT, "AASignOutFlowController: SignOut start failed to completed with error: %@", buf, 0xCu);
    }

    (*(*(a1 + 64) + 16))();
  }

  else
  {
    v11[0] = MEMORY[0x1E69E9820];
    v11[1] = 3221225472;
    v11[2] = __58__AASignOutFlowController_signOutAppleAccount_completion___block_invoke_42;
    v11[3] = &unk_1E7C9AF38;
    v10 = *(a1 + 32);
    v6 = *(&v10 + 1);
    v15 = *(a1 + 72);
    v9 = *(a1 + 48);
    v7 = *(&v9 + 1);
    v13 = v9;
    v12 = v10;
    v14 = *(a1 + 64);
    [v10 _preflightSignOutOfAccount:v6 completion:v11];
  }

  v8 = *MEMORY[0x1E69E9840];
}

void __58__AASignOutFlowController_signOutAppleAccount_completion___block_invoke_42(uint64_t a1, int a2, void *a3)
{
  v39 = *MEMORY[0x1E69E9840];
  v5 = a3;
  v6 = _AASignOutLogSystem();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    v7 = @"NO";
    if (a2)
    {
      v7 = @"YES";
    }

    *buf = 138412546;
    v34 = v7;
    v35 = 2112;
    v36 = *&v5;
    _os_log_impl(&dword_1B6F6A000, v6, OS_LOG_TYPE_DEFAULT, "AASignOutFlowController: Sign out preflight completed with success: %@ and error: %@", buf, 0x16u);
  }

  if (a2)
  {
    v9 = *(a1 + 32);
    v8 = *(a1 + 40);
    v26[0] = MEMORY[0x1E69E9820];
    v26[1] = 3221225472;
    v26[2] = __58__AASignOutFlowController_signOutAppleAccount_completion___block_invoke_49;
    v26[3] = &unk_1E7C9AF10;
    v26[4] = v9;
    v27 = v8;
    v32 = *(a1 + 72);
    v10 = v5;
    v11 = *(a1 + 48);
    v12 = *(a1 + 56);
    v28 = v10;
    v29 = v11;
    v30 = v12;
    v31 = *(a1 + 64);
    [v9 _signOutAppleAccount:v27 completion:v26];
  }

  else
  {
    v13 = _AASignOutLogSystem();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
    {
      __58__AASignOutFlowController_signOutAppleAccount_completion___block_invoke_42_cold_1();
    }

    Nanoseconds = _AASignpostGetNanoseconds(*(a1 + 72), *(a1 + 80));
    v15 = _AASignpostLogSystem();
    v16 = v15;
    v17 = *(a1 + 72);
    if (v17 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v15))
    {
      v18 = [v5 code];
      *buf = 67240192;
      LODWORD(v34) = v18;
      _os_signpost_emit_with_name_impl(&dword_1B6F6A000, v16, OS_SIGNPOST_INTERVAL_END, v17, "SignOutAppleAccount", " Error=%{public,signpost.telemetry:number2,name=Error}d ", buf, 8u);
    }

    v19 = _AASignpostLogSystem();
    if (os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
    {
      v20 = Nanoseconds / 1000000000.0;
      v21 = *(a1 + 72);
      v22 = [v5 code];
      *buf = 134218496;
      v34 = v21;
      v35 = 2048;
      v36 = v20;
      v37 = 1026;
      v38 = v22;
      _os_log_impl(&dword_1B6F6A000, v19, OS_LOG_TYPE_DEFAULT, "END [%lld] %fs: SignOutAppleAccount  Error=%{public,signpost.telemetry:number2,name=Error}d ", buf, 0x1Cu);
    }

    [*(a1 + 48) sendTelemetryEventSignoutFinish:*(a1 + 56) account:*(a1 + 40) didSucceed:0 error:v5];
    v23 = *(a1 + 64);
    if (v23)
    {
      if (v5)
      {
        (*(v23 + 16))(v23, 0, v5);
      }

      else
      {
        v24 = [MEMORY[0x1E696ABC0] aa_errorWithCode:0];
        (*(v23 + 16))(v23, 0, v24);
      }
    }
  }

  v25 = *MEMORY[0x1E69E9840];
}

void __58__AASignOutFlowController_signOutAppleAccount_completion___block_invoke_49(uint64_t a1, uint64_t a2, void *a3)
{
  v31 = *MEMORY[0x1E69E9840];
  v5 = a3;
  v6 = *(*(a1 + 32) + 24);
  v7 = [*(a1 + 40) aa_altDSID];
  v24 = 0;
  [v6 setLastSignedOutAccountAltDSID:v7 error:&v24];
  v8 = v24;

  if (v8)
  {
    v9 = _AASignOutLogSystem();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      __58__AASignOutFlowController_signOutAppleAccount_completion___block_invoke_49_cold_1();
    }
  }

  v10 = _AASignOutLogSystem();
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
  {
    v11 = *(a1 + 40);
    v12 = @"NO";
    *buf = 138412802;
    if (a2)
    {
      v12 = @"YES";
    }

    v26 = v11;
    v27 = 2112;
    v28 = *&v12;
    v29 = 2112;
    v30 = v5;
    _os_log_impl(&dword_1B6F6A000, v10, OS_LOG_TYPE_DEFAULT, "AASignOutFlowController: Sign out of account (%@) completed with success: %@ and error: %@", buf, 0x20u);
  }

  Nanoseconds = _AASignpostGetNanoseconds(*(a1 + 80), *(a1 + 88));
  v14 = _AASignpostLogSystem();
  v15 = v14;
  v16 = *(a1 + 80);
  if (v16 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v14))
  {
    v17 = [*(a1 + 48) code];
    *buf = 67240192;
    LODWORD(v26) = v17;
    _os_signpost_emit_with_name_impl(&dword_1B6F6A000, v15, OS_SIGNPOST_INTERVAL_END, v16, "SignOutAppleAccount", " Error=%{public,signpost.telemetry:number2,name=Error}d ", buf, 8u);
  }

  v18 = _AASignpostLogSystem();
  if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
  {
    v19 = Nanoseconds / 1000000000.0;
    v20 = *(a1 + 80);
    v21 = [*(a1 + 48) code];
    *buf = 134218496;
    v26 = v20;
    v27 = 2048;
    v28 = v19;
    v29 = 1026;
    LODWORD(v30) = v21;
    _os_log_impl(&dword_1B6F6A000, v18, OS_LOG_TYPE_DEFAULT, "END [%lld] %fs: SignOutAppleAccount  Error=%{public,signpost.telemetry:number2,name=Error}d ", buf, 0x1Cu);
  }

  [*(a1 + 56) sendTelemetryEventSignoutFinish:*(a1 + 64) account:*(a1 + 40) didSucceed:a2 error:v5];
  v22 = *(a1 + 72);
  if (v22)
  {
    (*(v22 + 16))(v22, a2, v5);
  }

  v23 = *MEMORY[0x1E69E9840];
}

- (void)_startSignOutOfferFlow:(id)flow completion:(id)completion
{
  flowCopy = flow;
  completionCopy = completion;
  if (+[AADeviceInfo hasiCloudSignOutRestriction](AADeviceInfo, "hasiCloudSignOutRestriction") || [flowCopy aa_isRemotelyManaged])
  {
    v8 = _AASignOutLogSystem();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      [AASignOutFlowController _startSignOutOfferFlow:flowCopy completion:?];
    }

    v9 = [MEMORY[0x1E696ABC0] aa_errorWithCode:-4406];
    completionCopy[2](completionCopy, 0, v9);
  }

  else if (+[AAFeatureFlags isBetterSignOutEnabled](AAFeatureFlags, "isBetterSignOutEnabled") && [flowCopy aa_isAccountClass:@"primary"])
  {
    [(AASignOutFlowController *)self _delegate_startSignOutFlowForAccount:flowCopy completion:completionCopy];
  }

  else
  {
    v10 = _AASignOutLogSystem();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
    {
      v11[0] = 0;
      _os_log_impl(&dword_1B6F6A000, v10, OS_LOG_TYPE_DEFAULT, "SignOutRedesign feature flag turned off. Not showing the Erase/Sign out offer. Continuing with Sign Out.", v11, 2u);
    }

    completionCopy[2](completionCopy, 1, 0);
  }
}

- (void)_preflightSignOutOfAccount:(id)account completion:(id)completion
{
  accountCopy = account;
  completionCopy = completion;
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __65__AASignOutFlowController__preflightSignOutOfAccount_completion___block_invoke;
  v10[3] = &unk_1E7C9AFD8;
  v10[4] = self;
  v11 = accountCopy;
  v12 = completionCopy;
  v8 = completionCopy;
  v9 = accountCopy;
  [(AASignOutFlowController *)self _performWalrusValidationForAccount:v9 completion:v10];
}

void __65__AASignOutFlowController__preflightSignOutOfAccount_completion___block_invoke(uint64_t a1, int a2)
{
  v22 = *MEMORY[0x1E69E9840];
  if (a2)
  {
    v3 = _AASignpostLogSystem();
    v4 = _AASignpostCreate(v3);
    v6 = v5;

    v7 = _AASignpostLogSystem();
    v8 = v7;
    if (v4 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v7))
    {
      *buf = 0;
      _os_signpost_emit_with_name_impl(&dword_1B6F6A000, v8, OS_SIGNPOST_INTERVAL_BEGIN, v4, "DisableFindMyDevice", " enableTelemetry=YES ", buf, 2u);
    }

    v9 = _AASignpostLogSystem();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 134217984;
      v21 = v4;
      _os_log_impl(&dword_1B6F6A000, v9, OS_LOG_TYPE_DEFAULT, "BEGIN [%lld]: DisableFindMyDevice  enableTelemetry=YES ", buf, 0xCu);
    }

    v10 = *(a1 + 32);
    v11 = *(a1 + 40);
    v16[0] = MEMORY[0x1E69E9820];
    v16[1] = 3221225472;
    v16[2] = __65__AASignOutFlowController__preflightSignOutOfAccount_completion___block_invoke_54;
    v16[3] = &unk_1E7C9AFB0;
    v18 = v4;
    v19 = v6;
    v17 = *(a1 + 48);
    [v10 _disableDeviceLocatorForAccount:v11 completion:v16];

    v12 = *MEMORY[0x1E69E9840];
  }

  else
  {
    v13 = *(a1 + 48);
    v14 = *(*(a1 + 48) + 16);
    v15 = *MEMORY[0x1E69E9840];

    v14();
  }
}

void __65__AASignOutFlowController__preflightSignOutOfAccount_completion___block_invoke_54(void *a1, uint64_t a2, void *a3)
{
  v20 = *MEMORY[0x1E69E9840];
  v4 = a3;
  Nanoseconds = _AASignpostGetNanoseconds(a1[5], a1[6]);
  v6 = _AASignpostLogSystem();
  v7 = v6;
  v8 = a1[5];
  if (v8 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v6))
  {
    v14 = 67240192;
    LODWORD(v15) = [v4 code];
    _os_signpost_emit_with_name_impl(&dword_1B6F6A000, v7, OS_SIGNPOST_INTERVAL_END, v8, "DisableFindMyDevice", " Error=%{public,signpost.telemetry:number2,name=Error}d ", &v14, 8u);
  }

  v9 = _AASignpostLogSystem();
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
  {
    v10 = Nanoseconds / 1000000000.0;
    v11 = a1[5];
    v12 = [v4 code];
    v14 = 134218496;
    v15 = v11;
    v16 = 2048;
    v17 = v10;
    v18 = 1026;
    v19 = v12;
    _os_log_impl(&dword_1B6F6A000, v9, OS_LOG_TYPE_DEFAULT, "END [%lld] %fs: DisableFindMyDevice  Error=%{public,signpost.telemetry:number2,name=Error}d ", &v14, 0x1Cu);
  }

  (*(a1[4] + 16))();
  v13 = *MEMORY[0x1E69E9840];
}

- (void)_performWalrusValidationForAccount:(id)account completion:(id)completion
{
  v16 = *MEMORY[0x1E69E9840];
  accountCopy = account;
  completionCopy = completion;
  accountType = [accountCopy accountType];
  identifier = [accountType identifier];
  v10 = [identifier isEqualToString:*MEMORY[0x1E69597F8]];

  v11 = [accountCopy aa_isAccountClass:@"primary"];
  if (v10 && (v11 & 1) != 0)
  {
    [(AASignOutFlowController *)self _delegate_performWalrusValidationForAccount:accountCopy completion:completionCopy];
  }

  else
  {
    v12 = _AASignOutLogSystem();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
    {
      v14 = 138412290;
      v15 = accountCopy;
      _os_log_impl(&dword_1B6F6A000, v12, OS_LOG_TYPE_DEFAULT, "Walrus validation is not necessary for non-primary/non-apple account: %@", &v14, 0xCu);
    }

    completionCopy[2](completionCopy, 1, 0);
  }

  v13 = *MEMORY[0x1E69E9840];
}

- (void)_signOutAppleAccount:(id)account completion:(id)completion
{
  v23 = *MEMORY[0x1E69E9840];
  completionCopy = completion;
  accountCopy = account;
  v8 = _AASignpostLogSystem();
  v9 = _AASignpostCreate(v8);
  v11 = v10;

  v12 = _AASignpostLogSystem();
  v13 = v12;
  if (v9 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v12))
  {
    *buf = 0;
    _os_signpost_emit_with_name_impl(&dword_1B6F6A000, v13, OS_SIGNPOST_INTERVAL_BEGIN, v9, "SignOutAppleAccountDelegate", " enableTelemetry=YES ", buf, 2u);
  }

  v14 = _AASignpostLogSystem();
  if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 134217984;
    v22 = v9;
    _os_log_impl(&dword_1B6F6A000, v14, OS_LOG_TYPE_DEFAULT, "BEGIN [%lld]: SignOutAppleAccountDelegate  enableTelemetry=YES ", buf, 0xCu);
  }

  v17[0] = MEMORY[0x1E69E9820];
  v17[1] = 3221225472;
  v17[2] = __59__AASignOutFlowController__signOutAppleAccount_completion___block_invoke;
  v17[3] = &unk_1E7C9AFB0;
  v19 = v9;
  v20 = v11;
  v18 = completionCopy;
  v15 = completionCopy;
  [(AASignOutFlowController *)self _delegate_signOutAccount:accountCopy completion:v17];

  v16 = *MEMORY[0x1E69E9840];
}

void __59__AASignOutFlowController__signOutAppleAccount_completion___block_invoke(void *a1, uint64_t a2, void *a3)
{
  v20 = *MEMORY[0x1E69E9840];
  v4 = a3;
  Nanoseconds = _AASignpostGetNanoseconds(a1[5], a1[6]);
  v6 = _AASignpostLogSystem();
  v7 = v6;
  v8 = a1[5];
  if (v8 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v6))
  {
    v14 = 67240192;
    LODWORD(v15) = [v4 code];
    _os_signpost_emit_with_name_impl(&dword_1B6F6A000, v7, OS_SIGNPOST_INTERVAL_END, v8, "SignOutAppleAccountDelegate", " Error=%{public,signpost.telemetry:number2,name=Error}d ", &v14, 8u);
  }

  v9 = _AASignpostLogSystem();
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
  {
    v10 = Nanoseconds / 1000000000.0;
    v11 = a1[5];
    v12 = [v4 code];
    v14 = 134218496;
    v15 = v11;
    v16 = 2048;
    v17 = v10;
    v18 = 1026;
    v19 = v12;
    _os_log_impl(&dword_1B6F6A000, v9, OS_LOG_TYPE_DEFAULT, "END [%lld] %fs: SignOutAppleAccountDelegate  Error=%{public,signpost.telemetry:number2,name=Error}d ", &v14, 0x1Cu);
  }

  (*(a1[4] + 16))();
  v13 = *MEMORY[0x1E69E9840];
}

- (void)_disableDeviceLocatorForAccount:(id)account completion:(id)completion
{
  accountCopy = account;
  completionCopy = completion;
  accountType = [accountCopy accountType];
  identifier = [accountType identifier];
  v10 = [identifier isEqualToString:*MEMORY[0x1E69597F8]];

  if ((v10 & 1) == 0)
  {
    v11 = _AASignOutLogSystem();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
    {
      v15 = 0;
      v12 = "Attempting to sign out non-AppleAccount, all clear!";
      v13 = &v15;
LABEL_8:
      _os_log_impl(&dword_1B6F6A000, v11, OS_LOG_TYPE_DEFAULT, v12, v13, 2u);
    }

LABEL_9:

    completionCopy[2](completionCopy, 1, 0);
    goto LABEL_10;
  }

  if (([accountCopy aa_isAccountClass:@"primary"] & 1) == 0)
  {
    v11 = _AASignOutLogSystem();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
    {
      v14 = 0;
      v12 = "Attempting to sign out secondary account, all clear!";
      v13 = &v14;
      goto LABEL_8;
    }

    goto LABEL_9;
  }

  [(AASignOutFlowController *)self _delegate_disableFindMyDeviceForAccount:accountCopy completion:completionCopy];
LABEL_10:
}

- (void)_delegate_presentError:(id)error withTitle:(id)title
{
  v24 = *MEMORY[0x1E69E9840];
  errorCopy = error;
  titleCopy = title;
  userInfo = [errorCopy userInfo];
  v9 = [userInfo objectForKeyedSubscript:*MEMORY[0x1E696A578]];

  v10 = _AASignOutLogSystem();
  if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
  {
    *buf = 138412802;
    v19 = errorCopy;
    v20 = 2112;
    v21 = titleCopy;
    v22 = 2112;
    v23 = v9;
    _os_log_error_impl(&dword_1B6F6A000, v10, OS_LOG_TYPE_ERROR, "AASignOutFlowController: Will show alert for error: %@, title: %@, message: %@", buf, 0x20u);
  }

  delegate = [(AASignOutFlowController *)self delegate];
  v12 = objc_opt_respondsToSelector();

  if (v12)
  {
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __60__AASignOutFlowController__delegate_presentError_withTitle___block_invoke;
    block[3] = &unk_1E7C9B020;
    block[4] = self;
    v16 = titleCopy;
    v17 = v9;
    dispatch_async(MEMORY[0x1E69E96A0], block);
  }

  else
  {
    v13 = _AASignOutLogSystem();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
    {
      [AASignOutFlowController _delegate_presentError:? withTitle:?];
    }
  }

  v14 = *MEMORY[0x1E69E9840];
}

void __60__AASignOutFlowController__delegate_presentError_withTitle___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) delegate];
  [v2 signOutFlowController:*(a1 + 32) showAlertWithTitle:*(a1 + 40) message:*(a1 + 48) completion:&__block_literal_global_1];
}

void __60__AASignOutFlowController__delegate_presentError_withTitle___block_invoke_2(uint64_t a1, uint64_t a2)
{
  v3 = _AASignOutLogSystem();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
  {
    __60__AASignOutFlowController__delegate_presentError_withTitle___block_invoke_2_cold_1(a2, v3, v4, v5, v6, v7, v8, v9);
  }
}

- (void)_delegate_startSignOutFlowForAccount:(id)account completion:(id)completion
{
  v18 = *MEMORY[0x1E69E9840];
  accountCopy = account;
  completionCopy = completion;
  delegate = [(AASignOutFlowController *)self delegate];
  v9 = objc_opt_respondsToSelector();

  v10 = _AASignOutLogSystem();
  v11 = v10;
  if (v9)
  {
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v17 = accountCopy;
      _os_log_impl(&dword_1B6F6A000, v11, OS_LOG_TYPE_DEFAULT, "AASignOutFlowController: Calling delegate to start Sign Out/Erase flow for account: %@", buf, 0xCu);
    }

    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __75__AASignOutFlowController__delegate_startSignOutFlowForAccount_completion___block_invoke;
    block[3] = &unk_1E7C9A898;
    block[4] = self;
    v14 = accountCopy;
    v15 = completionCopy;
    dispatch_async(MEMORY[0x1E69E96A0], block);
  }

  else
  {
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      [AASignOutFlowController _delegate_startSignOutFlowForAccount:? completion:?];
    }

    (*(completionCopy + 2))(completionCopy, 1, 0);
  }

  v12 = *MEMORY[0x1E69E9840];
}

void __75__AASignOutFlowController__delegate_startSignOutFlowForAccount_completion___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) delegate];
  v3 = *(a1 + 32);
  v4 = *(a1 + 40);
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __75__AASignOutFlowController__delegate_startSignOutFlowForAccount_completion___block_invoke_2;
  v5[3] = &unk_1E7C9ABB8;
  v6 = *(a1 + 48);
  [v2 signOutFlowController:v3 startSignOutForAccount:v4 completion:v5];
}

void __75__AASignOutFlowController__delegate_startSignOutFlowForAccount_completion___block_invoke_2(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = a3;
  if (v4)
  {
    v5 = _AASignOutLogSystem();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      __75__AASignOutFlowController__delegate_startSignOutFlowForAccount_completion___block_invoke_2_cold_1(v5);
    }
  }

  (*(*(a1 + 32) + 16))();
}

- (void)_delegate_disableFindMyDeviceForAccount:(id)account completion:(id)completion
{
  v19 = *MEMORY[0x1E69E9840];
  accountCopy = account;
  completionCopy = completion;
  delegate = [(AASignOutFlowController *)self delegate];
  v9 = objc_opt_respondsToSelector();

  v10 = _AASignOutLogSystem();
  v11 = v10;
  if (v9)
  {
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v18 = accountCopy;
      _os_log_impl(&dword_1B6F6A000, v11, OS_LOG_TYPE_DEFAULT, "AASignOutFlowController: Calling delegate to disable find my device for account: %@", buf, 0xCu);
    }

    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __78__AASignOutFlowController__delegate_disableFindMyDeviceForAccount_completion___block_invoke;
    block[3] = &unk_1E7C9A898;
    block[4] = self;
    v15 = accountCopy;
    v16 = completionCopy;
    dispatch_async(MEMORY[0x1E69E96A0], block);
  }

  else
  {
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      [AASignOutFlowController _delegate_disableFindMyDeviceForAccount:? completion:?];
    }

    v12 = [MEMORY[0x1E696ABC0] aa_errorWithCode:-4405];
    (*(completionCopy + 2))(completionCopy, 0, v12);
  }

  v13 = *MEMORY[0x1E69E9840];
}

void __78__AASignOutFlowController__delegate_disableFindMyDeviceForAccount_completion___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) delegate];
  v3 = *(a1 + 32);
  v4 = *(a1 + 40);
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __78__AASignOutFlowController__delegate_disableFindMyDeviceForAccount_completion___block_invoke_2;
  v5[3] = &unk_1E7C9ABB8;
  v6 = *(a1 + 48);
  [v2 signOutFlowController:v3 disableFindMyDeviceForAccount:v4 completion:v5];
}

void __78__AASignOutFlowController__delegate_disableFindMyDeviceForAccount_completion___block_invoke_2(uint64_t a1, int a2, void *a3)
{
  v13 = *MEMORY[0x1E69E9840];
  v5 = a3;
  v6 = _AASignOutLogSystem();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    v7 = @"NO";
    if (a2)
    {
      v7 = @"YES";
    }

    v9 = 138412546;
    v10 = v7;
    v11 = 2112;
    v12 = v5;
    _os_log_impl(&dword_1B6F6A000, v6, OS_LOG_TYPE_DEFAULT, "AASignOutFlowController: Delegate disabled find my device with success %@ and error %@", &v9, 0x16u);
  }

  (*(*(a1 + 32) + 16))();
  v8 = *MEMORY[0x1E69E9840];
}

- (void)_delegate_signOutAccount:(id)account completion:(id)completion
{
  v19 = *MEMORY[0x1E69E9840];
  accountCopy = account;
  completionCopy = completion;
  delegate = [(AASignOutFlowController *)self delegate];
  v9 = objc_opt_respondsToSelector();

  v10 = _AASignOutLogSystem();
  v11 = v10;
  if (v9)
  {
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v18 = accountCopy;
      _os_log_impl(&dword_1B6F6A000, v11, OS_LOG_TYPE_DEFAULT, "AASignOutFlowController: Calling delegate to sign out account: %@", buf, 0xCu);
    }

    delegate2 = [(AASignOutFlowController *)self delegate];
    v15[0] = MEMORY[0x1E69E9820];
    v15[1] = 3221225472;
    v15[2] = __63__AASignOutFlowController__delegate_signOutAccount_completion___block_invoke;
    v15[3] = &unk_1E7C9ABB8;
    v16 = completionCopy;
    [delegate2 signOutFlowController:self signOutAccount:accountCopy completion:v15];

    v13 = v16;
  }

  else
  {
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      [AASignOutFlowController _delegate_signOutAccount:? completion:?];
    }

    v13 = [MEMORY[0x1E696ABC0] aa_errorWithCode:-4405];
    (*(completionCopy + 2))(completionCopy, 0, v13);
  }

  v14 = *MEMORY[0x1E69E9840];
}

void __63__AASignOutFlowController__delegate_signOutAccount_completion___block_invoke(uint64_t a1, int a2, void *a3)
{
  v13 = *MEMORY[0x1E69E9840];
  v5 = a3;
  v6 = _AASignOutLogSystem();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    v7 = @"NO";
    if (a2)
    {
      v7 = @"YES";
    }

    v9 = 138412546;
    v10 = v7;
    v11 = 2112;
    v12 = v5;
    _os_log_impl(&dword_1B6F6A000, v6, OS_LOG_TYPE_DEFAULT, "AASignOutFlowController: Delegate signOutAccount completed with success %@ and error %@", &v9, 0x16u);
  }

  (*(*(a1 + 32) + 16))();
  v8 = *MEMORY[0x1E69E9840];
}

- (void)_delegate_performWalrusValidationForAccount:(id)account completion:(id)completion
{
  v19 = *MEMORY[0x1E69E9840];
  accountCopy = account;
  completionCopy = completion;
  delegate = [(AASignOutFlowController *)self delegate];
  v9 = objc_opt_respondsToSelector();

  v10 = _AASignOutLogSystem();
  v11 = v10;
  if (v9)
  {
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v18 = accountCopy;
      _os_log_impl(&dword_1B6F6A000, v11, OS_LOG_TYPE_DEFAULT, "AASignOutFlowController: Calling delegate to perform walrus validation for account: %@", buf, 0xCu);
    }

    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __82__AASignOutFlowController__delegate_performWalrusValidationForAccount_completion___block_invoke;
    block[3] = &unk_1E7C9A898;
    block[4] = self;
    v15 = accountCopy;
    v16 = completionCopy;
    dispatch_async(MEMORY[0x1E69E96A0], block);
  }

  else
  {
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      [AASignOutFlowController _delegate_performWalrusValidationForAccount:? completion:?];
    }

    v12 = [MEMORY[0x1E696ABC0] aa_errorWithCode:-4405];
    (*(completionCopy + 2))(completionCopy, 0, v12);
  }

  v13 = *MEMORY[0x1E69E9840];
}

void __82__AASignOutFlowController__delegate_performWalrusValidationForAccount_completion___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) delegate];
  v3 = *(a1 + 32);
  v4 = *(a1 + 40);
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __82__AASignOutFlowController__delegate_performWalrusValidationForAccount_completion___block_invoke_2;
  v5[3] = &unk_1E7C9ABB8;
  v6 = *(a1 + 48);
  [v2 signOutFlowController:v3 performWalrusValidationForAccount:v4 completion:v5];
}

void __82__AASignOutFlowController__delegate_performWalrusValidationForAccount_completion___block_invoke_2(uint64_t a1, int a2, void *a3)
{
  v13 = *MEMORY[0x1E69E9840];
  v5 = a3;
  v6 = _AASignOutLogSystem();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    v7 = @"NO";
    if (a2)
    {
      v7 = @"YES";
    }

    v9 = 138412546;
    v10 = v7;
    v11 = 2112;
    v12 = v5;
    _os_log_impl(&dword_1B6F6A000, v6, OS_LOG_TYPE_DEFAULT, "AASignOutFlowController: Delegate 'performWalrusValidationForAccount:completion' completed with success %@ and error %@", &v9, 0x16u);
  }

  (*(*(a1 + 32) + 16))();
  v8 = *MEMORY[0x1E69E9840];
}

- (void)sendTelemetryEventSignoutStart:(id)start
{
  startCopy = start;
  delegate = [(AASignOutFlowController *)self delegate];
  v6 = objc_opt_respondsToSelector();

  if (v6)
  {
    delegate2 = [(AASignOutFlowController *)self delegate];
    [delegate2 setTelemetryFlowID:self->telemetryFlowID];
  }

  else
  {
    delegate2 = _AASignOutLogSystem();
    if (os_log_type_enabled(delegate2, OS_LOG_TYPE_DEBUG))
    {
      [AASignOutFlowController sendTelemetryEventSignoutStart:delegate2];
    }
  }

  v8 = +[AAAnalyticsRTCReporter reporter];
  v9 = MEMORY[0x1E6985DB0];
  aida_alternateDSID = [startCopy aida_alternateDSID];

  v11 = [v9 analyticsEventWithName:@"com.apple.appleaccount.signOutStart" altDSID:aida_alternateDSID flowID:self->telemetryFlowID];
  [v8 sendEvent:v11];
}

- (AASignOutFlowControllerDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

- (void)initWithContext:(uint64_t *)a1 .cold.1(uint64_t *a1, NSObject *a2)
{
  v6 = *MEMORY[0x1E69E9840];
  v2 = *a1;
  v4 = 138412290;
  v5 = v2;
  _os_log_debug_impl(&dword_1B6F6A000, a2, OS_LOG_TYPE_DEBUG, "Received nil telemetryFlowID from AIDAServiceContext, generated new telemetryFlowID %@", &v4, 0xCu);
  v3 = *MEMORY[0x1E69E9840];
}

- (void)signOutAppleAccount:(uint64_t)a1 completion:(uint64_t)a2 .cold.1(uint64_t a1, uint64_t a2)
{
  v4 = [MEMORY[0x1E696AAA8] currentHandler];
  [v4 handleFailureInMethod:a1 object:a2 file:@"AASignOutFlowController.m" lineNumber:55 description:{@"Invalid parameter not satisfying: %@", @"account"}];
}

void __58__AASignOutFlowController_signOutAppleAccount_completion___block_invoke_42_cold_1()
{
  v8 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_0(&dword_1B6F6A000, v0, v1, "AASignOutFlowController: Sign out preflight failed with error: %@", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x1E69E9840];
}

void __58__AASignOutFlowController_signOutAppleAccount_completion___block_invoke_49_cold_1()
{
  v8 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_0(&dword_1B6F6A000, v0, v1, "Failed to set altDSID for account in keychain with error: %@", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x1E69E9840];
}

- (void)_startSignOutOfferFlow:(void *)a1 completion:.cold.1(void *a1)
{
  v8 = *MEMORY[0x1E69E9840];
  +[AADeviceInfo hasiCloudSignOutRestriction];
  [a1 aa_isRemotelyManaged];
  OUTLINED_FUNCTION_0_1();
  _os_log_error_impl(v2, v3, v4, v5, v6, 0x16u);
  v7 = *MEMORY[0x1E69E9840];
}

- (void)_delegate_presentError:(void *)a1 withTitle:.cold.1(void *a1)
{
  v8 = *MEMORY[0x1E69E9840];
  v1 = [a1 delegate];
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_0_1();
  _os_log_error_impl(v2, v3, v4, v5, v6, 0xCu);

  v7 = *MEMORY[0x1E69E9840];
}

void __60__AASignOutFlowController__delegate_presentError_withTitle___block_invoke_2_cold_1(uint64_t a1, NSObject *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v9 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_0(&dword_1B6F6A000, a2, a3, "AASignOutFlowController: didShowAlert: %@", a5, a6, a7, a8, 2u);
  v8 = *MEMORY[0x1E69E9840];
}

- (void)_delegate_startSignOutFlowForAccount:(void *)a1 completion:.cold.1(void *a1)
{
  v8 = *MEMORY[0x1E69E9840];
  v1 = [a1 delegate];
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_0_1();
  _os_log_error_impl(v2, v3, v4, v5, v6, 0xCu);

  v7 = *MEMORY[0x1E69E9840];
}

- (void)_delegate_disableFindMyDeviceForAccount:(void *)a1 completion:.cold.1(void *a1)
{
  v8 = *MEMORY[0x1E69E9840];
  v1 = [a1 delegate];
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_0_1();
  _os_log_error_impl(v2, v3, v4, v5, v6, 0xCu);

  v7 = *MEMORY[0x1E69E9840];
}

- (void)_delegate_signOutAccount:(void *)a1 completion:.cold.1(void *a1)
{
  v8 = *MEMORY[0x1E69E9840];
  v1 = [a1 delegate];
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_0_1();
  _os_log_error_impl(v2, v3, v4, v5, v6, 0xCu);

  v7 = *MEMORY[0x1E69E9840];
}

- (void)_delegate_performWalrusValidationForAccount:(void *)a1 completion:.cold.1(void *a1)
{
  v8 = *MEMORY[0x1E69E9840];
  v1 = [a1 delegate];
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_0_1();
  _os_log_error_impl(v2, v3, v4, v5, v6, 0xCu);

  v7 = *MEMORY[0x1E69E9840];
}

@end