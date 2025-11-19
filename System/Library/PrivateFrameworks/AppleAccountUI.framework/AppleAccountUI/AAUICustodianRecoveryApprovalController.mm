@interface AAUICustodianRecoveryApprovalController
+ (id)approvalControllerWithPresenter:(id)a3 recoverySessionID:(id)a4 telemetryFlowID:(id)a5;
- (id)_actionsForRecoveryCodeAlert:(id)a3 completion:(id)a4;
- (void)_promptForRecoveryCodeWithCompletion:(id)a3;
- (void)_sendAnalyticsEventWithSelectedOffer:(id)a3;
- (void)_validateRecoveryCode:(id)a3 withCompletion:(id)a4;
- (void)dealloc;
- (void)validateRecoveryCodeWithCompletion:(id)a3;
@end

@implementation AAUICustodianRecoveryApprovalController

+ (id)approvalControllerWithPresenter:(id)a3 recoverySessionID:(id)a4 telemetryFlowID:(id)a5
{
  v20 = *MEMORY[0x1E69E9840];
  v7 = a3;
  v8 = a4;
  v9 = a5;
  v10 = _AAUILogSystem();
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
  {
    v18 = 138412290;
    v19 = v8;
    _os_log_impl(&dword_1C5355000, v10, OS_LOG_TYPE_DEFAULT, "Creating Custodian Recovery Approval Controller with Session ID: %@", &v18, 0xCu);
  }

  v11 = objc_alloc_init(objc_opt_class());
  v12 = v11[1];
  v11[1] = v8;
  v13 = v8;

  v14 = v11[2];
  v11[2] = v9;
  v15 = v9;

  v16 = v11[4];
  v11[4] = v7;

  return v11;
}

- (void)dealloc
{
  v3 = _AAUILogSystem();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_1C5355000, v3, OS_LOG_TYPE_DEFAULT, "AAUICustodianRecoveryApprovalController dealloc", buf, 2u);
  }

  v4.receiver = self;
  v4.super_class = AAUICustodianRecoveryApprovalController;
  [(AAUICustodianRecoveryApprovalController *)&v4 dealloc];
}

- (void)validateRecoveryCodeWithCompletion:(id)a3
{
  v4 = a3;
  v5 = _AAUILogSystem();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_1C5355000, v5, OS_LOG_TYPE_DEFAULT, "Custodian recovery approval validation was requested", buf, 2u);
  }

  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __78__AAUICustodianRecoveryApprovalController_validateRecoveryCodeWithCompletion___block_invoke;
  v7[3] = &unk_1E820B758;
  v8 = v4;
  v6 = v4;
  [(AAUICustodianRecoveryApprovalController *)self _promptForRecoveryCodeWithCompletion:v7];
}

void __78__AAUICustodianRecoveryApprovalController_validateRecoveryCodeWithCompletion___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v13 = *MEMORY[0x1E69E9840];
  v5 = a2;
  v6 = a3;
  v7 = [v5 custodianUUID];

  v8 = _AAUILogSystem();
  v9 = v8;
  if (v6 || !v7)
  {
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      __78__AAUICustodianRecoveryApprovalController_validateRecoveryCodeWithCompletion___block_invoke_cold_1();
    }

    v10 = *(*(a1 + 32) + 16);
  }

  else
  {
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      v11 = 138412290;
      v12 = v5;
      _os_log_impl(&dword_1C5355000, v9, OS_LOG_TYPE_DEFAULT, "Successfully validated custodian recovery code with context: %@", &v11, 0xCu);
    }

    v10 = *(*(a1 + 32) + 16);
  }

  v10();
}

- (void)_validateRecoveryCode:(id)a3 withCompletion:(id)a4
{
  v6 = MEMORY[0x1E698B868];
  v7 = a4;
  v8 = a3;
  v10 = objc_alloc_init(v6);
  [v10 setRecoverySessionID:self->_recoverySessionID];
  [v10 setRecoveryCode:v8];

  [v10 setTelemetryFlowID:self->_telemetryFlowID];
  v9 = objc_alloc_init(MEMORY[0x1E698B850]);
  [v9 validateCustodianRecoveryCodeWithContext:v10 completion:v7];
}

- (void)_sendAnalyticsEventWithSelectedOffer:(id)a3
{
  v3 = MEMORY[0x1E6985DB0];
  v4 = *MEMORY[0x1E698BA68];
  telemetryFlowID = self->_telemetryFlowID;
  v6 = a3;
  v8 = [v3 analyticsEventWithName:v4 altDSID:0 flowID:telemetryFlowID];
  [v8 setObject:v6 forKeyedSubscript:*MEMORY[0x1E6997820]];

  v7 = [MEMORY[0x1E698B810] reporter];
  [v7 sendEvent:v8];
}

- (void)_promptForRecoveryCodeWithCompletion:(id)a3
{
  v4 = a3;
  v5 = [MEMORY[0x1E6985DB0] analyticsEventWithName:@"com.apple.appleAccount.recoveryContactCodeEntryLanding" altDSID:0 flowID:self->_telemetryFlowID];
  v6 = objc_alloc_init(MEMORY[0x1E695DF70]);
  v7 = objc_alloc_init(AAUICodeEntryContext);
  v8 = [MEMORY[0x1E696AAE8] bundleForClass:objc_opt_class()];
  v9 = [v8 localizedStringForKey:@"CUSTODIAN_RECOVERY_CODE_PROMPT_TITLE" value:&stru_1F447F790 table:@"Localizable"];
  [(AAUICodeEntryContext *)v7 setPromptTitle:v9];

  v10 = [MEMORY[0x1E696AAE8] bundleForClass:objc_opt_class()];
  v11 = [v10 localizedStringForKey:@"CUSTODIAN_RECOVERY_CODE_PROMPT_MESSAGE" value:&stru_1F447F790 table:@"Localizable"];
  [(AAUICodeEntryContext *)v7 setPromptMessage:v11];

  v12 = [MEMORY[0x1E696AAE8] bundleForClass:objc_opt_class()];
  v13 = [v12 localizedStringForKey:@"CUSTODIAN_RECOVERY_CODE_PROMPT_ESCAPE_TITLE" value:&stru_1F447F790 table:@"Localizable"];
  [(AAUICodeEntryContext *)v7 setEscapeTitle:v13];

  v24[0] = MEMORY[0x1E69E9820];
  v24[1] = 3221225472;
  v24[2] = __80__AAUICustodianRecoveryApprovalController__promptForRecoveryCodeWithCompletion___block_invoke;
  v24[3] = &unk_1E820B780;
  v24[4] = self;
  v14 = v4;
  v25 = v14;
  [(AAUICodeEntryContext *)v7 setEscapeAction:v24];
  [v6 addObject:*MEMORY[0x1E6997848]];
  v22[0] = MEMORY[0x1E69E9820];
  v22[1] = 3221225472;
  v22[2] = __80__AAUICustodianRecoveryApprovalController__promptForRecoveryCodeWithCompletion___block_invoke_55;
  v22[3] = &unk_1E820B780;
  v22[4] = self;
  v15 = v14;
  v23 = v15;
  [(AAUICodeEntryContext *)v7 setCancelEntryAction:v22];
  [v6 addObject:*MEMORY[0x1E698BB28]];
  v20[0] = MEMORY[0x1E69E9820];
  v20[1] = 3221225472;
  v20[2] = __80__AAUICustodianRecoveryApprovalController__promptForRecoveryCodeWithCompletion___block_invoke_56;
  v20[3] = &unk_1E820B7F8;
  v20[4] = self;
  v21 = v15;
  v16 = v15;
  [(AAUICodeEntryContext *)v7 setCodeEnteredAction:v20];
  [v6 addObject:*MEMORY[0x1E6997840]];
  v17 = [v6 aaf_arrayAsCommaSeperatedString];
  [v5 setObject:v17 forKeyedSubscript:*MEMORY[0x1E6997818]];

  v18 = [[AAUICodeEntryViewController alloc] initWithContext:v7];
  [(UIViewController *)self->_presenter presentViewController:v18 animated:1 completion:0];
  v19 = [MEMORY[0x1E698B810] reporter];
  [v19 sendEvent:v5];
}

void __80__AAUICustodianRecoveryApprovalController__promptForRecoveryCodeWithCompletion___block_invoke(uint64_t a1)
{
  objc_initWeak(&location, *(a1 + 32));
  v2 = _AAUILogSystem();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    *v6 = 0;
    _os_log_impl(&dword_1C5355000, v2, OS_LOG_TYPE_DEFAULT, "Custodian Recovery Code Attempt: User elected for escape action!", v6, 2u);
  }

  v3 = objc_loadWeakRetained(&location);
  [v3 _sendAnalyticsEventWithSelectedOffer:*MEMORY[0x1E6997848]];

  v4 = *(a1 + 40);
  v5 = [MEMORY[0x1E696ABC0] errorWithDomain:*MEMORY[0x1E698B770] code:-9007 userInfo:0];
  (*(v4 + 16))(v4, 0, v5);

  objc_destroyWeak(&location);
}

void __80__AAUICustodianRecoveryApprovalController__promptForRecoveryCodeWithCompletion___block_invoke_55(uint64_t a1)
{
  objc_initWeak(&location, *(a1 + 32));
  v2 = _AAUILogSystem();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_ERROR))
  {
    __80__AAUICustodianRecoveryApprovalController__promptForRecoveryCodeWithCompletion___block_invoke_55_cold_1();
  }

  v3 = objc_loadWeakRetained(&location);
  [v3 _sendAnalyticsEventWithSelectedOffer:*MEMORY[0x1E698BB28]];

  v4 = *(a1 + 40);
  v5 = [MEMORY[0x1E696ABC0] errorWithDomain:*MEMORY[0x1E698B770] code:-9003 userInfo:0];
  (*(v4 + 16))(v4, 0, v5);

  objc_destroyWeak(&location);
}

void __80__AAUICustodianRecoveryApprovalController__promptForRecoveryCodeWithCompletion___block_invoke_56(uint64_t a1, void *a2, void *a3)
{
  v15 = *MEMORY[0x1E69E9840];
  v5 = a2;
  v6 = a3;
  [*(a1 + 32) _sendAnalyticsEventWithSelectedOffer:*MEMORY[0x1E6997840]];
  v7 = _AAUILogSystem();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v14 = v5;
    _os_log_impl(&dword_1C5355000, v7, OS_LOG_TYPE_DEFAULT, "Custodian Recovery Code Attempt: Code Entered: %@", buf, 0xCu);
  }

  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __80__AAUICustodianRecoveryApprovalController__promptForRecoveryCodeWithCompletion___block_invoke_57;
  v10[3] = &unk_1E820B7D0;
  v11 = v6;
  v8 = *(a1 + 32);
  v12 = *(a1 + 40);
  v9 = v6;
  [v8 _validateRecoveryCode:v5 withCompletion:v10];
}

void __80__AAUICustodianRecoveryApprovalController__promptForRecoveryCodeWithCompletion___block_invoke_57(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  if (v6)
  {
    v7 = _AAUILogSystem();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      __80__AAUICustodianRecoveryApprovalController__promptForRecoveryCodeWithCompletion___block_invoke_57_cold_1();
    }

    v8 = [v6 aa_isAACustodianRecoveryErrorWithCode:-9002];
    v9 = *(*(a1 + 32) + 16);
    if (v8)
    {
      v9();
      goto LABEL_13;
    }

    v9();
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __80__AAUICustodianRecoveryApprovalController__promptForRecoveryCodeWithCompletion___block_invoke_58;
    block[3] = &unk_1E820B7A8;
    v17 = *(a1 + 40);
    v16 = v6;
    dispatch_async(MEMORY[0x1E69E96A0], block);

    v10 = v17;
LABEL_9:

    goto LABEL_13;
  }

  if (v5)
  {
    (*(*(a1 + 32) + 16))();
    v12[0] = MEMORY[0x1E69E9820];
    v12[1] = 3221225472;
    v12[2] = __80__AAUICustodianRecoveryApprovalController__promptForRecoveryCodeWithCompletion___block_invoke_59;
    v12[3] = &unk_1E820B780;
    v13 = v5;
    v14 = *(a1 + 40);
    dispatch_async(MEMORY[0x1E69E96A0], v12);

    v10 = v13;
    goto LABEL_9;
  }

  v11 = _AAUILogSystem();
  if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
  {
    __80__AAUICustodianRecoveryApprovalController__promptForRecoveryCodeWithCompletion___block_invoke_57_cold_2();
  }

  (*(*(a1 + 32) + 16))();
LABEL_13:
}

uint64_t __80__AAUICustodianRecoveryApprovalController__promptForRecoveryCodeWithCompletion___block_invoke_58(uint64_t a1)
{
  v2 = _AAUILogSystem();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_ERROR))
  {
    __80__AAUICustodianRecoveryApprovalController__promptForRecoveryCodeWithCompletion___block_invoke_58_cold_1();
  }

  return (*(*(a1 + 40) + 16))();
}

uint64_t __80__AAUICustodianRecoveryApprovalController__promptForRecoveryCodeWithCompletion___block_invoke_59(uint64_t a1)
{
  v7 = *MEMORY[0x1E69E9840];
  v2 = _AAUILogSystem();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v3 = *(a1 + 32);
    v5 = 138412290;
    v6 = v3;
    _os_log_impl(&dword_1C5355000, v2, OS_LOG_TYPE_DEFAULT, "Custodian Recovery Code Attempt: Code validation success! Custodian with context: %@", &v5, 0xCu);
  }

  return (*(*(a1 + 40) + 16))();
}

- (id)_actionsForRecoveryCodeAlert:(id)a3 completion:(id)a4
{
  v5 = a3;
  v6 = a4;
  v7 = objc_opt_new();
  v15[0] = MEMORY[0x1E69E9820];
  v15[1] = 3221225472;
  v15[2] = __83__AAUICustodianRecoveryApprovalController__actionsForRecoveryCodeAlert_completion___block_invoke;
  v15[3] = &unk_1E820B820;
  v8 = v6;
  v16 = v8;
  [v7 setAk_cancelAction:v15];
  objc_initWeak(&location, v5);
  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 3221225472;
  v11[2] = __83__AAUICustodianRecoveryApprovalController__actionsForRecoveryCodeAlert_completion___block_invoke_63;
  v11[3] = &unk_1E820B848;
  objc_copyWeak(&v13, &location);
  v9 = v8;
  v12 = v9;
  [v7 setCodeEnteredAction:v11];

  objc_destroyWeak(&v13);
  objc_destroyWeak(&location);

  return v7;
}

void __83__AAUICustodianRecoveryApprovalController__actionsForRecoveryCodeAlert_completion___block_invoke(uint64_t a1)
{
  v2 = _AAUILogSystem();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_ERROR))
  {
    __83__AAUICustodianRecoveryApprovalController__actionsForRecoveryCodeAlert_completion___block_invoke_cold_1();
  }

  v3 = *(a1 + 32);
  v4 = [MEMORY[0x1E696ABC0] errorWithDomain:*MEMORY[0x1E698B770] code:-9003 userInfo:0];
  (*(v3 + 16))(v3, 0, v4);
}

void __83__AAUICustodianRecoveryApprovalController__actionsForRecoveryCodeAlert_completion___block_invoke_63(uint64_t a1, void *a2)
{
  v9 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = _AAUILogSystem();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v7 = 138412290;
    v8 = v3;
    _os_log_impl(&dword_1C5355000, v4, OS_LOG_TYPE_DEFAULT, "User entered recovery code %@.", &v7, 0xCu);
  }

  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v6 = WeakRetained;
  if (WeakRetained)
  {
    [WeakRetained setPasscodeFieldDisabled:1];
  }

  (*(*(a1 + 32) + 16))();
}

void __80__AAUICustodianRecoveryApprovalController__promptForRecoveryCodeWithCompletion___block_invoke_55_cold_1()
{
  OUTLINED_FUNCTION_1_0();
  OUTLINED_FUNCTION_0_0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void __80__AAUICustodianRecoveryApprovalController__promptForRecoveryCodeWithCompletion___block_invoke_57_cold_2()
{
  OUTLINED_FUNCTION_1_0();
  OUTLINED_FUNCTION_0_0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void __80__AAUICustodianRecoveryApprovalController__promptForRecoveryCodeWithCompletion___block_invoke_58_cold_1()
{
  OUTLINED_FUNCTION_1_0();
  OUTLINED_FUNCTION_0_0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void __83__AAUICustodianRecoveryApprovalController__actionsForRecoveryCodeAlert_completion___block_invoke_cold_1()
{
  OUTLINED_FUNCTION_1_0();
  OUTLINED_FUNCTION_0_0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

@end