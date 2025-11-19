@interface AAUISignInFlowController
- (AAUISignInFlowController)init;
- (UIViewController)presentingViewController;
- (id)_appleAccountType;
- (id)_messageForErrorAlert:(int64_t)a3;
- (id)_titleForError:(id)a3 account:(id)a4;
- (void)_hasActivationLockSupportedWatchWithCompletion:(id)a3;
- (void)_presentExistingAccountAlert:(id)a3;
- (void)_presentUnableToSaveAccountAlert;
- (void)_presentValidationErrorAlert:(id)a3 forAccount:(id)a4 completion:(id)a5;
- (void)_promptToEnableFindMyIfPossibleWithAccount:(id)a3 completion:(id)a4;
- (void)_saveAccount:(id)a3 withAllDataclassesEnabledIfPossibleWithCompletion:(id)a4;
- (void)_showGenericTermsUIforAccount:(id)a3 completion:(id)a4;
- (void)_stashLoginResponseWithAuthenticationResults:(id)a3 completion:(id)a4;
- (void)_updateAppleAccountIfNecessary:(id)a3 withAltDSID:(id)a4 rawPassword:(id)a5;
- (void)_validateCDPStateForAccount:(id)a3 withCDPContext:(id)a4 completion:(id)a5;
- (void)_verifyLoginResponseForiCloudAccount:(id)a3 withSuccess:(BOOL)a4 response:(id)a5 error:(id)a6 completion:(id)a7;
- (void)genericTermsRemoteUI:(id)a3 didFinishWithSuccess:(BOOL)a4;
- (void)prewarmOperationsWithCompletion:(id)a3;
- (void)signInOperationManager:(id)a3 didSaveAccount:(id)a4 error:(id)a5;
- (void)signInWithIDMSAuthenticationResults:(id)a3 completion:(id)a4;
@end

@implementation AAUISignInFlowController

- (AAUISignInFlowController)init
{
  v10.receiver = self;
  v10.super_class = AAUISignInFlowController;
  v2 = [(AAUISignInFlowController *)&v10 init];
  if (v2)
  {
    v3 = objc_alloc_init(MEMORY[0x1E6959A48]);
    accountStore = v2->_accountStore;
    v2->_accountStore = v3;

    v5 = objc_alloc_init(MEMORY[0x1E695DF90]);
    cdpContextsByAccountID = v2->_cdpContextsByAccountID;
    v2->_cdpContextsByAccountID = v5;

    v7 = objc_alloc_init(MEMORY[0x1E696AD10]);
    cdpContextsByAccountIDLock = v2->_cdpContextsByAccountIDLock;
    v2->_cdpContextsByAccountIDLock = v7;
  }

  return v2;
}

- (void)signInWithIDMSAuthenticationResults:(id)a3 completion:(id)a4
{
  v102[1] = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = a4;
  state.opaque[0] = 0;
  state.opaque[1] = 0;
  v67 = _os_activity_create(&dword_1C5355000, "appleaccountui/signin-with-IDMSauthresults", MEMORY[0x1E69E9C00], OS_ACTIVITY_FLAG_DEFAULT);
  os_activity_scope_enter(v67, &state);
  v70 = objc_alloc_init(MEMORY[0x1E69DF078]);
  if ([v70 isEnterprisePersona])
  {
    v8 = [v70 userPersonaUniqueString];
    v9 = _AAUILogSystem();
    v73 = v8;
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEBUG))
    {
      [AAUISignInFlowController signInWithIDMSAuthenticationResults:v8 completion:v9];
    }
  }

  else
  {
    v9 = _AAUILogSystem();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEBUG))
    {
      [AAUISignInFlowController signInWithIDMSAuthenticationResults:completion:];
    }

    v73 = 0;
  }

  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 3221225472;
  aBlock[2] = __75__AAUISignInFlowController_signInWithIDMSAuthenticationResults_completion___block_invoke;
  aBlock[3] = &unk_1E820C898;
  v65 = v7;
  v87 = v65;
  v74 = _Block_copy(aBlock);
  v72 = [v6 objectForKeyedSubscript:*MEMORY[0x1E698DBF0]];
  v66 = [v6 objectForKeyedSubscript:*MEMORY[0x1E698DB68]];
  v10 = [v66 stringValue];
  v71 = [v6 objectForKeyedSubscript:*MEMORY[0x1E698DB40]];
  v69 = [v6 objectForKeyedSubscript:*MEMORY[0x1E698DBC8]];
  v75 = [v6 objectForKeyedSubscript:*MEMORY[0x1E698DBD0]];
  v76 = v10;
  v11 = _AAUISignpostLogSystem();
  v12 = _AAUISignpostCreate(v11);
  v68 = v13;
  v14 = v12;

  v15 = _AAUISignpostLogSystem();
  v16 = v15;
  if (v14 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v15))
  {
    *buf = 0;
    _os_signpost_emit_with_name_impl(&dword_1C5355000, v16, OS_SIGNPOST_INTERVAL_BEGIN, v14, "GetLocalAppleAccount", " enableTelemetry=YES ", buf, 2u);
  }

  v17 = _AAUISignpostLogSystem();
  if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 134217984;
    v90 = v14;
    _os_log_impl(&dword_1C5355000, v17, OS_LOG_TYPE_DEFAULT, "BEGIN [%lld]: GetLocalAppleAccount  enableTelemetry=YES ", buf, 0xCu);
  }

  if (v76)
  {
    v18 = [(ACAccountStore *)self->_accountStore aa_appleAccountWithPersonID:?];
  }

  else
  {
    v18 = 0;
  }

  AppBooleanValue = CFPreferencesGetAppBooleanValue(*MEMORY[0x1E698BAE8], *MEMORY[0x1E698B7D0], 0);
  v20 = [(ACAccountStore *)self->_accountStore aa_primaryAppleAccount];

  v21 = [(ACAccountStore *)self->_accountStore aa_dataSeparatedAccounts];
  v22 = [v21 count];

  if (v18)
  {
    v23 = _AAUILogSystem();
    if (os_log_type_enabled(v23, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v90 = v76;
      _os_log_impl(&dword_1C5355000, v23, OS_LOG_TYPE_DEFAULT, "AAUISignInFlowController: found an existing account with DSID %@.", buf, 0xCu);
    }

    [(AAUISignInFlowController *)self _updateAppleAccountIfNecessary:v18 withAltDSID:v71 rawPassword:v75];
    if (v20)
    {
      v24 = _AAUILogSystem();
      if (os_log_type_enabled(v24, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138412290;
        v90 = v18;
        _os_log_impl(&dword_1C5355000, v24, OS_LOG_TYPE_DEFAULT, "AAUISignInFlowController: cannot promote existing account %@.", buf, 0xCu);
      }

      v25 = [(AAUISignInFlowController *)self _messageForErrorAlert:-9002];
      v26 = MEMORY[0x1E696ABC0];
      v101 = *MEMORY[0x1E696A578];
      v102[0] = v25;
      v27 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v102 forKeys:&v101 count:1];
      v28 = [v26 errorWithDomain:@"AAUISignInErrors" code:-9002 userInfo:v27];
    }

    else
    {
      if (!v73)
      {
        v25 = [v18 objectForKeyedSubscript:*MEMORY[0x1E69597A0]];
        if (!v25 || ([MEMORY[0x1E698B940] findEnterprisePersonaIdentifier], v57 = objc_claimAutoreleasedReturnValue(), v58 = objc_msgSend(v25, "isEqualToString:", v57), v57, !v58))
        {
          v64 = _AAUILogSystem();
          if (os_log_type_enabled(v64, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 138412290;
            v90 = v18;
            _os_log_impl(&dword_1C5355000, v64, OS_LOG_TYPE_DEFAULT, "AAUISignInFlowController: promoting existing account %@ to primary.", buf, 0xCu);
          }

          [v18 aa_setAccountClass:*MEMORY[0x1E698B760]];
          [v18 setAccountDescription:@"iCloud"];
          v37 = 0;
          goto LABEL_36;
        }

        v59 = _AAUILogSystem();
        if (os_log_type_enabled(v59, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 138412290;
          v90 = v18;
          _os_log_impl(&dword_1C5355000, v59, OS_LOG_TYPE_DEFAULT, "AAUISignInFlowController: cannot promote existing data separated account %@.", buf, 0xCu);
        }

        v27 = [(AAUISignInFlowController *)self _messageForErrorAlert:-9011];
        v60 = MEMORY[0x1E696ABC0];
        v97 = *MEMORY[0x1E696A578];
        v98 = v27;
        v61 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v98 forKeys:&v97 count:1];
        v37 = [v60 errorWithDomain:@"AAUISignInErrors" code:-9011 userInfo:v61];

LABEL_35:
LABEL_36:

        goto LABEL_37;
      }

      v33 = _AAUILogSystem();
      if (os_log_type_enabled(v33, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138412290;
        v90 = v76;
        _os_log_impl(&dword_1C5355000, v33, OS_LOG_TYPE_DEFAULT, "AAUISignInFlowController: found an existing account with DSID %@, but we're running in the enterprise persona.", buf, 0xCu);
      }

      v25 = [(AAUISignInFlowController *)self _messageForErrorAlert:-9010];
      v34 = MEMORY[0x1E696ABC0];
      v99 = *MEMORY[0x1E696A578];
      v100 = v25;
      v27 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v100 forKeys:&v99 count:1];
      v28 = [v34 errorWithDomain:@"AAUISignInErrors" code:-9010 userInfo:v27];
    }

LABEL_34:
    v37 = v28;
    goto LABEL_35;
  }

  v29 = _AAUILogSystem();
  if (os_log_type_enabled(v29, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v90 = v72;
    _os_log_impl(&dword_1C5355000, v29, OS_LOG_TYPE_DEFAULT, "AAUISignInFlowController: will sign in new iCloud account for %@.", buf, 0xCu);
  }

  v30 = objc_alloc(MEMORY[0x1E6959A28]);
  v31 = [(AAUISignInFlowController *)self _appleAccountType];
  v18 = [v30 initWithAccountType:v31];

  [v18 setUsername:v72];
  v32 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%@", v76];
  [v18 setAccountProperty:v32 forKey:@"personID"];

  if (v73 != 0 && v22 != 0 && AppBooleanValue == 0)
  {
    v35 = _AAUILogSystem();
    if (os_log_type_enabled(v35, OS_LOG_TYPE_ERROR))
    {
      [AAUISignInFlowController signInWithIDMSAuthenticationResults:completion:];
    }

    v25 = [(AAUISignInFlowController *)self _messageForErrorAlert:-9012];
    v36 = MEMORY[0x1E696ABC0];
    v95 = *MEMORY[0x1E696A578];
    v96 = v25;
    v27 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v96 forKeys:&v95 count:1];
    v28 = [v36 errorWithDomain:@"AAUISignInErrors" code:-9012 userInfo:v27];
    goto LABEL_34;
  }

  if (v73)
  {
    [v18 setAccountDescription:v72];
    [v18 aa_setAccountClass:*MEMORY[0x1E698B758]];
    [v18 setObject:v73 forKeyedSubscript:*MEMORY[0x1E69597A0]];
  }

  else
  {
    if (v20)
    {
      [v18 setAccountDescription:v72];
      if (AppBooleanValue)
      {
        v62 = _AAUILogSystem();
        if (os_log_type_enabled(v62, OS_LOG_TYPE_DEBUG))
        {
          [AAUISignInFlowController signInWithIDMSAuthenticationResults:completion:];
        }

        v63 = MEMORY[0x1E698B758];
      }

      else
      {
        v63 = MEMORY[0x1E698B750];
      }
    }

    else
    {
      [v18 setAccountDescription:@"iCloud"];
      v63 = MEMORY[0x1E698B760];
    }

    [v18 aa_setAccountClass:*v63];
  }

  v37 = 0;
LABEL_37:
  Nanoseconds = _AAUISignpostGetNanoseconds(v14, v68);
  v39 = _AAUISignpostLogSystem();
  v40 = v39;
  if (v14 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v39))
  {
    v41 = [v37 code];
    *buf = 67240192;
    LODWORD(v90) = v41;
    _os_signpost_emit_with_name_impl(&dword_1C5355000, v40, OS_SIGNPOST_INTERVAL_END, v14, "GetLocalAppleAccount", " Error=%{public,signpost.telemetry:number2,name=Error}d ", buf, 8u);
  }

  v42 = _AAUISignpostLogSystem();
  if (os_log_type_enabled(v42, OS_LOG_TYPE_DEFAULT))
  {
    v43 = [v37 code];
    *buf = 134218496;
    v90 = v14;
    v91 = 2048;
    v92 = Nanoseconds / 1000000000.0;
    v93 = 1026;
    v94 = v43;
    _os_log_impl(&dword_1C5355000, v42, OS_LOG_TYPE_DEFAULT, "END [%lld] %fs: GetLocalAppleAccount  Error=%{public,signpost.telemetry:number2,name=Error}d ", buf, 0x1Cu);
  }

  if (v37)
  {
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __75__AAUISignInFlowController_signInWithIDMSAuthenticationResults_completion___block_invoke_76;
    block[3] = &unk_1E820B708;
    block[4] = self;
    v84 = v37;
    v85 = v74;
    dispatch_async(MEMORY[0x1E69E96A0], block);
  }

  else
  {
    v44 = [MEMORY[0x1E6959A30] credentialWithPassword:v69];
    [v18 setCredential:v44];
    [v18 _aa_setRawPassword:v75];
    if ([v18 aa_isAccountClass:*MEMORY[0x1E698B760]])
    {
      v45 = [AAUICDPHelper cdpContextForPrimaryAccountWithAuthenticationResults:v6];
      v46 = [(AAUISignInFlowController *)self messageSession];
      [v45 setSharingChannel:v46];

      [v45 set_ignoreLockAssertErrors:[(AAUISignInFlowController *)self ignoreLockAssertErrors]];
      [(NSLock *)self->_cdpContextsByAccountIDLock lock];
      cdpContextsByAccountID = self->_cdpContextsByAccountID;
      v48 = [v18 identifier];
      [(NSMutableDictionary *)cdpContextsByAccountID setObject:v45 forKeyedSubscript:v48];

      [(NSLock *)self->_cdpContextsByAccountIDLock unlock];
    }

    else
    {
      v45 = _AAUILogSystem();
      if (os_log_type_enabled(v45, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138412290;
        v90 = v18;
        _os_log_impl(&dword_1C5355000, v45, OS_LOG_TYPE_DEFAULT, "AAUISignInFlowController: HSA 2 account %@ is secondary, so no iCDP checks will be made.", buf, 0xCu);
      }
    }

    v49 = _AAUISignpostLogSystem();
    v50 = _AAUISignpostCreate(v49);
    v52 = v51;

    v53 = _AAUISignpostLogSystem();
    v54 = v53;
    if (v50 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v53))
    {
      *buf = 0;
      _os_signpost_emit_with_name_impl(&dword_1C5355000, v54, OS_SIGNPOST_INTERVAL_BEGIN, v50, "SignInRegisterAccount", " enableTelemetry=YES ", buf, 2u);
    }

    v55 = _AAUISignpostLogSystem();
    if (os_log_type_enabled(v55, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 134217984;
      v90 = v50;
      _os_log_impl(&dword_1C5355000, v55, OS_LOG_TYPE_DEFAULT, "BEGIN [%lld]: SignInRegisterAccount  enableTelemetry=YES ", buf, 0xCu);
    }

    accountStore = self->_accountStore;
    v77[0] = MEMORY[0x1E69E9820];
    v77[1] = 3221225472;
    v77[2] = __75__AAUISignInFlowController_signInWithIDMSAuthenticationResults_completion___block_invoke_81;
    v77[3] = &unk_1E820C938;
    v81 = v50;
    v82 = v52;
    v77[4] = self;
    v78 = v18;
    v80 = v74;
    v79 = v6;
    [(ACAccountStore *)accountStore aa_registerAppleAccount:v78 withCompletion:v77];
  }

  os_activity_scope_leave(&state);
}

uint64_t __75__AAUISignInFlowController_signInWithIDMSAuthenticationResults_completion___block_invoke(uint64_t a1)
{
  result = *(a1 + 32);
  if (result)
  {
    return (*(result + 16))();
  }

  return result;
}

uint64_t __75__AAUISignInFlowController_signInWithIDMSAuthenticationResults_completion___block_invoke_76(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((*(a1 + 32) + 64));
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();

  if ((isKindOfClass & 1) == 0)
  {
    [*(a1 + 32) _presentExistingAccountAlert:*(a1 + 40)];
  }

  v4 = *(*(a1 + 48) + 16);

  return v4();
}

void __75__AAUISignInFlowController_signInWithIDMSAuthenticationResults_completion___block_invoke_81(uint64_t a1, uint64_t a2, void *a3)
{
  v31 = *MEMORY[0x1E69E9840];
  v5 = a3;
  Nanoseconds = _AAUISignpostGetNanoseconds(*(a1 + 64), *(a1 + 72));
  v7 = _AAUISignpostLogSystem();
  v8 = v7;
  v9 = *(a1 + 64);
  if (v9 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v7))
  {
    *buf = 67240448;
    *v25 = a2;
    *&v25[4] = 1026;
    *&v25[6] = [v5 code];
    _os_signpost_emit_with_name_impl(&dword_1C5355000, v8, OS_SIGNPOST_INTERVAL_END, v9, "SignInRegisterAccount", " Authenticated=%{public,signpost.telemetry:number1,name=Authenticated}d  Error=%{public,signpost.telemetry:number2,name=Error}d ", buf, 0xEu);
  }

  v10 = _AAUISignpostLogSystem();
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
  {
    v11 = Nanoseconds / 1000000000.0;
    v12 = *(a1 + 64);
    v13 = [v5 code];
    *buf = 134218752;
    *v25 = v12;
    *&v25[8] = 2048;
    v26 = v11;
    v27 = 1026;
    v28 = a2;
    v29 = 1026;
    v30 = v13;
    _os_log_impl(&dword_1C5355000, v10, OS_LOG_TYPE_DEFAULT, "END [%lld] %fs: SignInRegisterAccount  Authenticated=%{public,signpost.telemetry:number1,name=Authenticated}d  Error=%{public,signpost.telemetry:number2,name=Error}d ", buf, 0x22u);
  }

  v14 = *(a1 + 32);
  v15 = *(a1 + 40);
  v21[0] = MEMORY[0x1E69E9820];
  v21[1] = 3221225472;
  v21[2] = __75__AAUISignInFlowController_signInWithIDMSAuthenticationResults_completion___block_invoke_82;
  v21[3] = &unk_1E820C910;
  v16 = *(a1 + 56);
  v20 = *(a1 + 32);
  v17 = *(a1 + 48);
  *&v18 = *(a1 + 40);
  *(&v18 + 1) = v16;
  *&v19 = v20;
  *(&v19 + 1) = v17;
  v22 = v19;
  v23 = v18;
  [v14 _verifyLoginResponseForiCloudAccount:v15 withSuccess:a2 response:0 error:v5 completion:v21];
}

void __75__AAUISignInFlowController_signInWithIDMSAuthenticationResults_completion___block_invoke_82(uint64_t a1, char a2, void *a3, void *a4)
{
  v7 = a3;
  v8 = a4;
  if (a2)
  {
    v9 = *(a1 + 32);
    v10 = *(a1 + 40);
    v11[0] = MEMORY[0x1E69E9820];
    v11[1] = 3221225472;
    v11[2] = __75__AAUISignInFlowController_signInWithIDMSAuthenticationResults_completion___block_invoke_2;
    v11[3] = &unk_1E820C8E8;
    v11[4] = v9;
    v12 = *(a1 + 48);
    v15 = *(a1 + 56);
    v16 = 1;
    v13 = v7;
    v14 = v8;
    [v9 _stashLoginResponseWithAuthenticationResults:v10 completion:v11];
  }

  else
  {
    (*(*(a1 + 56) + 16))();
  }
}

void __75__AAUISignInFlowController_signInWithIDMSAuthenticationResults_completion___block_invoke_2(uint64_t a1)
{
  v2 = _AAUILogSystem();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_1C5355000, v2, OS_LOG_TYPE_DEFAULT, "Successfully authenticated account, attempting to enable FindMy if possible...", buf, 2u);
  }

  v3 = *(a1 + 32);
  v4 = *(a1 + 40);
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __75__AAUISignInFlowController_signInWithIDMSAuthenticationResults_completion___block_invoke_83;
  v5[3] = &unk_1E820C8C0;
  v8 = *(a1 + 64);
  v9 = *(a1 + 72);
  v6 = *(a1 + 48);
  v7 = *(a1 + 56);
  [v3 _promptToEnableFindMyIfPossibleWithAccount:v4 completion:v5];
}

uint64_t __75__AAUISignInFlowController_signInWithIDMSAuthenticationResults_completion___block_invoke_83(uint64_t a1, int a2)
{
  v9 = *MEMORY[0x1E69E9840];
  v4 = _AAUILogSystem();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v5 = @"NO";
    if (a2)
    {
      v5 = @"YES";
    }

    v7 = 138543362;
    v8 = v5;
    _os_log_impl(&dword_1C5355000, v4, OS_LOG_TYPE_DEFAULT, "Result of enabling FindMy, didPrompt: %{public}@", &v7, 0xCu);
  }

  return (*(*(a1 + 48) + 16))();
}

- (void)_updateAppleAccountIfNecessary:(id)a3 withAltDSID:(id)a4 rawPassword:(id)a5
{
  v19 = *MEMORY[0x1E69E9840];
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v11 = _AAUILogSystem();
  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
  {
    v17 = 138412290;
    v18 = v8;
    _os_log_impl(&dword_1C5355000, v11, OS_LOG_TYPE_DEFAULT, "Checking to see if we should update altDSID on iCloud account %@", &v17, 0xCu);
  }

  if ([v9 length])
  {
    v12 = [v8 aa_altDSID];
    v13 = [v12 length];

    v14 = _AAUILogSystem();
    v15 = os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT);
    if (v13)
    {
      if (v15)
      {
        LOWORD(v17) = 0;
        _os_log_impl(&dword_1C5355000, v14, OS_LOG_TYPE_DEFAULT, "iCloud account already has altDSID, ignoring...", &v17, 2u);
      }
    }

    else
    {
      if (v15)
      {
        v17 = 138412290;
        v18 = v9;
        _os_log_impl(&dword_1C5355000, v14, OS_LOG_TYPE_DEFAULT, "Updating iCloud account with altDSID: %@", &v17, 0xCu);
      }

      [v8 _aa_setAltDSID:v9];
      [v8 _aa_setRawPassword:v10];
      [(ACAccountStore *)self->_accountStore saveVerifiedAccount:v8 withCompletionHandler:0];
    }
  }

  else
  {
    v16 = _AAUILogSystem();
    if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
    {
      LOWORD(v17) = 0;
      _os_log_impl(&dword_1C5355000, v16, OS_LOG_TYPE_DEFAULT, "No altDSID provided, nothing to do...", &v17, 2u);
    }
  }
}

- (void)_verifyLoginResponseForiCloudAccount:(id)a3 withSuccess:(BOOL)a4 response:(id)a5 error:(id)a6 completion:(id)a7
{
  v40 = *MEMORY[0x1E69E9840];
  v11 = a3;
  v12 = a6;
  v13 = a7;
  if (!a4)
  {
    v23 = [v12 userInfo];
    v19 = [v23 objectForKey:*MEMORY[0x1E698BAA0]];

    v24 = _AAUILogSystem();
    if (os_log_type_enabled(v24, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v39 = v19;
      _os_log_impl(&dword_1C5355000, v24, OS_LOG_TYPE_DEFAULT, "Account is not valid: handling error %@", buf, 0xCu);
    }

    if ([v19 isEqualToString:*MEMORY[0x1E698BAC0]])
    {
      block[0] = MEMORY[0x1E69E9820];
      block[1] = 3221225472;
      block[2] = __103__AAUISignInFlowController__verifyLoginResponseForiCloudAccount_withSuccess_response_error_completion___block_invoke;
      block[3] = &unk_1E820B708;
      block[4] = self;
      v25 = &v36;
      v36 = v11;
      v26 = &v37;
      v37 = v13;
      dispatch_async(MEMORY[0x1E69E96A0], block);
    }

    else
    {
      v31[0] = MEMORY[0x1E69E9820];
      v31[1] = 3221225472;
      v31[2] = __103__AAUISignInFlowController__verifyLoginResponseForiCloudAccount_withSuccess_response_error_completion___block_invoke_2;
      v31[3] = &unk_1E820BFF8;
      v31[4] = self;
      v25 = &v32;
      v32 = v12;
      v26 = &v33;
      v33 = v11;
      v34 = v13;
      dispatch_async(MEMORY[0x1E69E96A0], v31);
    }

    v22 = *v25;
    goto LABEL_18;
  }

  v14 = _AAUILogSystem();
  if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_1C5355000, v14, OS_LOG_TYPE_DEFAULT, "Account is valid: finish account setup", buf, 2u);
  }

  v15 = [v11 aa_password];

  if (v15)
  {
    v16 = _AAUILogSystem();
    if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_1C5355000, v16, OS_LOG_TYPE_DEFAULT, "We have a password, setAuthenticated to NO and grab delegate tokens", buf, 2u);
    }

    [v11 setAuthenticated:0];
  }

  [(NSLock *)self->_cdpContextsByAccountIDLock lock];
  cdpContextsByAccountID = self->_cdpContextsByAccountID;
  v18 = [v11 identifier];
  v19 = [(NSMutableDictionary *)cdpContextsByAccountID objectForKeyedSubscript:v18];

  [(NSLock *)self->_cdpContextsByAccountIDLock unlock];
  v20 = _AAUILogSystem();
  v21 = os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT);
  if (v19)
  {
    if (v21)
    {
      *buf = 0;
      _os_log_impl(&dword_1C5355000, v20, OS_LOG_TYPE_DEFAULT, "Finished auth'ing account and must validate iCDP state.", buf, 2u);
    }

    v27[0] = MEMORY[0x1E69E9820];
    v27[1] = 3221225472;
    v27[2] = __103__AAUISignInFlowController__verifyLoginResponseForiCloudAccount_withSuccess_response_error_completion___block_invoke_92;
    v27[3] = &unk_1E820C960;
    v28 = v11;
    v29 = self;
    v30 = v13;
    [(AAUISignInFlowController *)self _validateCDPStateForAccount:v28 withCDPContext:v19 completion:v27];

    v22 = v28;
LABEL_18:

    goto LABEL_19;
  }

  if (v21)
  {
    *buf = 0;
    _os_log_impl(&dword_1C5355000, v20, OS_LOG_TYPE_DEFAULT, "Finished auth'ing without a queued CDP context. No need to validate iCDP state.", buf, 2u);
  }

  [(AAUISignInFlowController *)self _saveAccount:v11 withAllDataclassesEnabledIfPossibleWithCompletion:v13];
LABEL_19:
}

void __103__AAUISignInFlowController__verifyLoginResponseForiCloudAccount_withSuccess_response_error_completion___block_invoke_92(uint64_t a1, int a2, void *a3)
{
  v5 = a3;
  if (a2)
  {
    [*(a1 + 32) refresh];
    v6 = _AAUILogSystem();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_1C5355000, v6, OS_LOG_TYPE_DEFAULT, "Validating iCDP succeeded! Proceeding with iCloud sign-in...", buf, 2u);
    }

    [*(a1 + 40) _saveAccount:*(a1 + 32) withAllDataclassesEnabledIfPossibleWithCompletion:*(a1 + 48)];
  }

  else
  {
    v7 = _AAUILogSystem();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      __103__AAUISignInFlowController__verifyLoginResponseForiCloudAccount_withSuccess_response_error_completion___block_invoke_92_cold_1(v5, v7);
    }

    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __103__AAUISignInFlowController__verifyLoginResponseForiCloudAccount_withSuccess_response_error_completion___block_invoke_93;
    block[3] = &unk_1E820B708;
    v8 = v5;
    v9 = *(a1 + 40);
    v10 = *(a1 + 48);
    v12 = v8;
    v13 = v9;
    v14 = v10;
    dispatch_async(MEMORY[0x1E69E96A0], block);
  }
}

void __103__AAUISignInFlowController__verifyLoginResponseForiCloudAccount_withSuccess_response_error_completion___block_invoke_93(uint64_t a1)
{
  if ([*(a1 + 32) shouldDisplayToUser])
  {
    v2 = [*(a1 + 32) userInfo];
    v3 = [v2 objectForKey:*MEMORY[0x1E696A578]];

    if (v3)
    {
      v4 = [*(a1 + 32) userInfo];
      v5 = [v4 objectForKey:*MEMORY[0x1E696A588]];
    }

    else
    {
      v4 = [MEMORY[0x1E696AAE8] bundleForClass:objc_opt_class()];
      v3 = [v4 localizedStringForKey:@"VERIFICATION_FAILED_TITLE" value:&stru_1F447F790 table:@"Localizable"];
      v5 = 0;
    }

    v7 = [MEMORY[0x1E69DC650] alertWithTitle:v3 message:v5];
    v8 = MEMORY[0x1E69DC648];
    v9 = [MEMORY[0x1E696AAE8] bundleForClass:objc_opt_class()];
    v10 = [v9 localizedStringForKey:@"OK" value:&stru_1F447F790 table:@"Localizable"];
    v11 = [v8 actionWithTitle:v10 style:1 handler:0];
    [v7 addAction:v11];

    WeakRetained = objc_loadWeakRetained((*(a1 + 40) + 64));
    v13[0] = MEMORY[0x1E69E9820];
    v13[1] = 3221225472;
    v13[2] = __103__AAUISignInFlowController__verifyLoginResponseForiCloudAccount_withSuccess_response_error_completion___block_invoke_2_106;
    v13[3] = &unk_1E820B7A8;
    v15 = *(a1 + 48);
    v14 = *(a1 + 32);
    [WeakRetained presentViewController:v7 animated:1 completion:v13];
  }

  else
  {
    v6 = *(*(a1 + 48) + 16);

    v6();
  }
}

- (void)_validateCDPStateForAccount:(id)a3 withCDPContext:(id)a4 completion:(id)a5
{
  v45 = *MEMORY[0x1E69E9840];
  v8 = a3;
  v9 = a5;
  v10 = MEMORY[0x1E6997800];
  v11 = a4;
  v12 = [[v10 alloc] initWithContext:v11];

  v13 = objc_alloc(MEMORY[0x1E6997858]);
  WeakRetained = objc_loadWeakRetained(&self->_presentingViewController);
  v15 = [v13 initWithPresentingViewController:WeakRetained];

  v16 = objc_loadWeakRetained(&self->_presentingViewController);
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();

  if (isKindOfClass)
  {
    [v15 setForceInlinePresentation:1];
  }

  [v12 setUiProvider:v15];
  v18 = v8;
  v19 = v18;
  v20 = v18;
  if (!self->_shouldAutomaticallySaveSignInResults)
  {
    v20 = [v18 copy];

    [(ACAccountStore *)self->_accountStore setNotificationsEnabled:0];
  }

  [v20 setEnabled:1 forDataclass:*MEMORY[0x1E6959B18]];
  [v20 setEnabled:1 forDataclass:*MEMORY[0x1E6959B20]];
  [v20 setEnabled:1 forDataclass:*MEMORY[0x1E6959B00]];
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 3221225472;
  aBlock[2] = __82__AAUISignInFlowController__validateCDPStateForAccount_withCDPContext_completion___block_invoke;
  aBlock[3] = &unk_1E820C988;
  aBlock[4] = self;
  v42 = v9;
  v21 = v9;
  v22 = _Block_copy(aBlock);
  v23 = _AAUISignpostLogSystem();
  v24 = _AAUISignpostCreate(v23);
  v26 = v25;

  v27 = _AAUISignpostLogSystem();
  v28 = v27;
  if (v24 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v27))
  {
    *buf = 0;
    _os_signpost_emit_with_name_impl(&dword_1C5355000, v28, OS_SIGNPOST_INTERVAL_BEGIN, v24, "SignInPreflightSave", " enableTelemetry=YES ", buf, 2u);
  }

  v29 = _AAUISignpostLogSystem();
  if (os_log_type_enabled(v29, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 134217984;
    v44 = v24;
    _os_log_impl(&dword_1C5355000, v29, OS_LOG_TYPE_DEFAULT, "BEGIN [%lld]: SignInPreflightSave  enableTelemetry=YES ", buf, 0xCu);
  }

  accountStore = self->_accountStore;
  v34[0] = MEMORY[0x1E69E9820];
  v34[1] = 3221225472;
  v34[2] = __82__AAUISignInFlowController__validateCDPStateForAccount_withCDPContext_completion___block_invoke_110;
  v34[3] = &unk_1E820CA00;
  v39 = v24;
  v40 = v26;
  v35 = v12;
  v36 = self;
  v37 = v20;
  v38 = v22;
  v31 = v20;
  v32 = v12;
  v33 = v22;
  [(ACAccountStore *)accountStore saveAccount:v31 withCompletionHandler:v34];
}

void __82__AAUISignInFlowController__validateCDPStateForAccount_withCDPContext_completion___block_invoke(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = *(*(a1 + 32) + 8);
  v5 = a3;
  [v4 setNotificationsEnabled:1];
  (*(*(a1 + 40) + 16))();
}

void __82__AAUISignInFlowController__validateCDPStateForAccount_withCDPContext_completion___block_invoke_110(uint64_t a1, int a2, void *a3)
{
  v37 = *MEMORY[0x1E69E9840];
  v5 = a3;
  Nanoseconds = _AAUISignpostGetNanoseconds(*(a1 + 64), *(a1 + 72));
  v7 = _AAUISignpostLogSystem();
  v8 = v7;
  v9 = *(a1 + 64);
  if (v9 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v7))
  {
    *buf = 67240448;
    *v31 = a2;
    *&v31[4] = 1026;
    *&v31[6] = [v5 code];
    _os_signpost_emit_with_name_impl(&dword_1C5355000, v8, OS_SIGNPOST_INTERVAL_END, v9, "SignInPreflightSave", " DidSave=%{public,signpost.telemetry:number1,name=DidSave}d  Error=%{public,signpost.telemetry:number2,name=Error}d ", buf, 0xEu);
  }

  v10 = _AAUISignpostLogSystem();
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
  {
    v11 = Nanoseconds / 1000000000.0;
    v12 = *(a1 + 64);
    v13 = [v5 code];
    *buf = 134218752;
    *v31 = v12;
    *&v31[8] = 2048;
    v32 = v11;
    v33 = 1026;
    v34 = a2;
    v35 = 1026;
    v36 = v13;
    _os_log_impl(&dword_1C5355000, v10, OS_LOG_TYPE_DEFAULT, "END [%lld] %fs: SignInPreflightSave  DidSave=%{public,signpost.telemetry:number1,name=DidSave}d  Error=%{public,signpost.telemetry:number2,name=Error}d ", buf, 0x22u);
  }

  if (a2)
  {
    v14 = _AAUISignpostLogSystem();
    v15 = _AAUISignpostCreate(v14);
    v17 = v16;

    v18 = _AAUISignpostLogSystem();
    v19 = v18;
    if (v15 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v18))
    {
      *buf = 0;
      _os_signpost_emit_with_name_impl(&dword_1C5355000, v19, OS_SIGNPOST_INTERVAL_BEGIN, v15, "SignInValidateCDP", " enableTelemetry=YES ", buf, 2u);
    }

    v20 = _AAUISignpostLogSystem();
    if (os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 134217984;
      *v31 = v15;
      _os_log_impl(&dword_1C5355000, v20, OS_LOG_TYPE_DEFAULT, "BEGIN [%lld]: SignInValidateCDP  enableTelemetry=YES ", buf, 0xCu);
    }

    v25[0] = MEMORY[0x1E69E9820];
    v25[1] = 3221225472;
    v25[2] = __82__AAUISignInFlowController__validateCDPStateForAccount_withCDPContext_completion___block_invoke_111;
    v25[3] = &unk_1E820C9D8;
    v28 = v15;
    v29 = v17;
    v21 = *(a1 + 32);
    v25[4] = *(a1 + 40);
    v27 = *(a1 + 56);
    v26 = *(a1 + 48);
    [v21 handleCloudDataProtectionStateWithCompletion:v25];
  }

  else
  {
    v22 = _AAUILogSystem();
    if (os_log_type_enabled(v22, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      *v31 = v5;
      _os_log_impl(&dword_1C5355000, v22, OS_LOG_TYPE_DEFAULT, "iCDP preflighting failed because we could not save the iCloud account! Error: %@", buf, 0xCu);
    }

    v23 = *(a1 + 56);
    v24 = [MEMORY[0x1E696ABC0] errorWithDomain:@"AAUISignInErrors" code:-9004 userInfo:0];
    (*(v23 + 16))(v23, 0, v24);
  }
}

void __82__AAUISignInFlowController__validateCDPStateForAccount_withCDPContext_completion___block_invoke_111(uint64_t a1, int a2, int a3, void *a4)
{
  v32 = *MEMORY[0x1E69E9840];
  v7 = a4;
  Nanoseconds = _AAUISignpostGetNanoseconds(*(a1 + 56), *(a1 + 64));
  v9 = _AAUISignpostLogSystem();
  v10 = v9;
  v11 = *(a1 + 56);
  if (v11 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v9))
  {
    *buf = 67240448;
    *v26 = a3;
    *&v26[4] = 1026;
    *&v26[6] = [v7 code];
    _os_signpost_emit_with_name_impl(&dword_1C5355000, v10, OS_SIGNPOST_INTERVAL_END, v11, "SignInValidateCDP", " Enabled=%{public,signpost.telemetry:number1,name=Enabled}d  Error=%{public,signpost.telemetry:number2,name=Error}d ", buf, 0xEu);
  }

  v12 = _AAUISignpostLogSystem();
  if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
  {
    v13 = Nanoseconds / 1000000000.0;
    v14 = *(a1 + 56);
    v15 = [v7 code];
    *buf = 134218752;
    *v26 = v14;
    *&v26[8] = 2048;
    v27 = v13;
    v28 = 1026;
    v29 = a3;
    v30 = 1026;
    v31 = v15;
    _os_log_impl(&dword_1C5355000, v12, OS_LOG_TYPE_DEFAULT, "END [%lld] %fs: SignInValidateCDP  Enabled=%{public,signpost.telemetry:number1,name=Enabled}d  Error=%{public,signpost.telemetry:number2,name=Error}d ", buf, 0x22u);
  }

  if (a2 && (*(*(a1 + 32) + 56) & 1) != 0)
  {
    v16 = v7;
    (*(*(a1 + 48) + 16))();
  }

  else
  {
    v17 = v7;
    v18 = _AAUILogSystem();
    if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_1C5355000, v18, OS_LOG_TYPE_DEFAULT, "Cleaning up temporary account state created during iCDP validation.", buf, 2u);
    }

    v19 = *(a1 + 40);
    v20 = *(*(a1 + 32) + 8);
    v21[0] = MEMORY[0x1E69E9820];
    v21[1] = 3221225472;
    v21[2] = __82__AAUISignInFlowController__validateCDPStateForAccount_withCDPContext_completion___block_invoke_112;
    v21[3] = &unk_1E820C9B0;
    v23 = *(a1 + 48);
    v24 = a2;
    v22 = v17;
    [v20 removeAccount:v19 withCompletionHandler:v21];
  }
}

void __82__AAUISignInFlowController__validateCDPStateForAccount_withCDPContext_completion___block_invoke_112(uint64_t a1, char a2, void *a3)
{
  v9 = *MEMORY[0x1E69E9840];
  v5 = a3;
  if ((a2 & 1) == 0)
  {
    v6 = _AAUILogSystem();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      v7 = 138412290;
      v8 = v5;
      _os_log_impl(&dword_1C5355000, v6, OS_LOG_TYPE_DEFAULT, "Failed to clean up after iCDP! Error: %@", &v7, 0xCu);
    }
  }

  (*(*(a1 + 40) + 16))();
}

- (void)_saveAccount:(id)a3 withAllDataclassesEnabledIfPossibleWithCompletion:(id)a4
{
  v40 = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = a4;
  v8 = v7;
  if (self->_shouldAutomaticallySaveSignInResults)
  {
    if (self->_pendingCompletion)
    {
      v9 = _AAUILogSystem();
      if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
      {
        [AAUISignInFlowController _saveAccount:withAllDataclassesEnabledIfPossibleWithCompletion:];
      }

      v10 = [MEMORY[0x1E696ABC0] aa_errorWithCode:-3];
      (v8)[2](v8, 0, 0, v10);
    }

    else
    {
      v11 = [(AAUISignInFlowController *)self presentingViewController];
      if (v11)
      {
        v32 = 0;
        v33 = &v32;
        v34 = 0x3032000000;
        v35 = __Block_byref_object_copy__8;
        v36 = __Block_byref_object_dispose__8;
        v37 = [[AAUISignInOperationManager alloc] initWithPresentingViewController:v11];
        [v33[5] setDelegate:self];
        v12 = _AAUISignpostLogSystem();
        v13 = _AAUISignpostCreate(v12);
        v15 = v14;

        v16 = _AAUISignpostLogSystem();
        v17 = v16;
        if ((v13 - 1) <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v16))
        {
          *buf = 0;
          _os_signpost_emit_with_name_impl(&dword_1C5355000, v17, OS_SIGNPOST_INTERVAL_BEGIN, v13, "SignInEnableDataclasses", " enableTelemetry=YES ", buf, 2u);
        }

        v18 = _AAUISignpostLogSystem();
        if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 134217984;
          v39 = v13;
          _os_log_impl(&dword_1C5355000, v18, OS_LOG_TYPE_DEFAULT, "BEGIN [%lld]: SignInEnableDataclasses  enableTelemetry=YES ", buf, 0xCu);
        }

        objc_initWeak(buf, self);
        v24 = MEMORY[0x1E69E9820];
        v25 = 3221225472;
        v26 = __91__AAUISignInFlowController__saveAccount_withAllDataclassesEnabledIfPossibleWithCompletion___block_invoke;
        v27 = &unk_1E820CA28;
        v31[1] = v13;
        v31[2] = v15;
        v29 = v8;
        v19 = v6;
        v28 = v19;
        objc_copyWeak(v31, buf);
        v30 = &v32;
        v20 = _Block_copy(&v24);
        pendingCompletion = self->_pendingCompletion;
        self->_pendingCompletion = v20;

        [v33[5] signInAccount:v19 enablingDataclasses:{1, v24, v25, v26, v27}];
        objc_destroyWeak(v31);

        objc_destroyWeak(buf);
        _Block_object_dispose(&v32, 8);
      }

      else
      {
        v22 = _AAUILogSystem();
        if (os_log_type_enabled(v22, OS_LOG_TYPE_ERROR))
        {
          [AAUISignInFlowController _saveAccount:withAllDataclassesEnabledIfPossibleWithCompletion:];
        }

        v23 = [MEMORY[0x1E696ABC0] aa_errorWithCode:-3];
        (v8)[2](v8, 0, 0, v23);
      }
    }
  }

  else
  {
    (*(v7 + 2))(v7, 1, v6, 0);
  }
}

void __91__AAUISignInFlowController__saveAccount_withAllDataclassesEnabledIfPossibleWithCompletion___block_invoke(uint64_t a1, int a2, uint64_t a3, void *a4)
{
  v29 = *MEMORY[0x1E69E9840];
  v6 = a4;
  Nanoseconds = _AAUISignpostGetNanoseconds(*(a1 + 64), *(a1 + 72));
  v8 = _AAUISignpostLogSystem();
  v9 = v8;
  v10 = *(a1 + 64);
  if (v10 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v8))
  {
    v22 = 67240448;
    *v23 = a2;
    *&v23[4] = 1026;
    *&v23[6] = [v6 code];
    _os_signpost_emit_with_name_impl(&dword_1C5355000, v9, OS_SIGNPOST_INTERVAL_END, v10, "SignInEnableDataclasses", " DidSave=%{public,signpost.telemetry:number1,name=DidSave}d  Error=%{public,signpost.telemetry:number2,name=Error}d ", &v22, 0xEu);
  }

  v11 = _AAUISignpostLogSystem();
  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
  {
    v12 = Nanoseconds / 1000000000.0;
    v13 = *(a1 + 64);
    v14 = [v6 code];
    v22 = 134218752;
    *v23 = v13;
    *&v23[8] = 2048;
    v24 = v12;
    v25 = 1026;
    v26 = a2;
    v27 = 1026;
    v28 = v14;
    _os_log_impl(&dword_1C5355000, v11, OS_LOG_TYPE_DEFAULT, "END [%lld] %fs: SignInEnableDataclasses  DidSave=%{public,signpost.telemetry:number1,name=DidSave}d  Error=%{public,signpost.telemetry:number2,name=Error}d ", &v22, 0x22u);
  }

  v15 = _AAUILogSystem();
  if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
  {
    v16 = @"NO";
    if (a2)
    {
      v16 = @"YES";
    }

    v22 = 138412546;
    *v23 = v16;
    *&v23[8] = 2112;
    v24 = *&v6;
    _os_log_impl(&dword_1C5355000, v15, OS_LOG_TYPE_DEFAULT, "iCloud account save completed with success: %@, error: %@", &v22, 0x16u);
  }

  if (a2)
  {
    (*(*(a1 + 40) + 16))();
  }

  else
  {
    WeakRetained = objc_loadWeakRetained((a1 + 56));
    [WeakRetained _presentUnableToSaveAccountAlert];
    v18 = *(a1 + 40);
    v19 = [MEMORY[0x1E696ABC0] errorWithDomain:@"AAUISignInErrors" code:-9004 userInfo:0];
    (*(v18 + 16))(v18, 0, 0, v19);
  }

  v20 = *(*(a1 + 48) + 8);
  v21 = *(v20 + 40);
  *(v20 + 40) = 0;
}

- (void)_stashLoginResponseWithAuthenticationResults:(id)a3 completion:(id)a4
{
  v43 = *MEMORY[0x1E69E9840];
  v6 = a3;
  if (self->_shouldStashLoginResponse)
  {
    v38 = a4;
    v7 = _AAUISignpostLogSystem();
    v8 = _AAUISignpostCreate(v7);
    v37 = v9;

    v10 = _AAUISignpostLogSystem();
    v11 = v10;
    if (v8 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v10))
    {
      *buf = 0;
      _os_signpost_emit_with_name_impl(&dword_1C5355000, v11, OS_SIGNPOST_INTERVAL_BEGIN, v8, "StashLoginResponse", " enableTelemetry=YES ", buf, 2u);
    }

    v12 = _AAUISignpostLogSystem();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 134217984;
      v40 = v8;
      _os_log_impl(&dword_1C5355000, v12, OS_LOG_TYPE_DEFAULT, "BEGIN [%lld]: StashLoginResponse  enableTelemetry=YES ", buf, 0xCu);
    }

    v13 = _AAUILogSystem();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_DEBUG))
    {
      [AAUISignInFlowController _stashLoginResponseWithAuthenticationResults:completion:];
    }

    v14 = [v6 objectForKeyedSubscript:*MEMORY[0x1E698DBF0]];
    if (!v14)
    {
      v15 = _AAUILogSystem();
      if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
      {
        [AAUISignInFlowController _stashLoginResponseWithAuthenticationResults:completion:];
      }
    }

    v16 = [v6 objectForKeyedSubscript:*MEMORY[0x1E698DB40]];
    if (!v16)
    {
      v17 = _AAUILogSystem();
      if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
      {
        [AAUISignInFlowController _stashLoginResponseWithAuthenticationResults:completion:];
      }
    }

    v18 = [objc_alloc(MEMORY[0x1E698B988]) initWithAppleID:v14 altDSID:v16];
    v19 = [v6 objectForKeyedSubscript:*MEMORY[0x1E698DB68]];
    if (v19)
    {
      [v18 setDSID:v19];
      v20 = [v6 objectForKeyedSubscript:*MEMORY[0x1E698DBA0]];

      if (v20)
      {
        [v18 setBeneficiaryLogin:1];
      }
    }

    else
    {
      v22 = _AAUILogSystem();
      if (os_log_type_enabled(v22, OS_LOG_TYPE_ERROR))
      {
        [AAUISignInFlowController _stashLoginResponseWithAuthenticationResults:completion:];
      }
    }

    v23 = [v6 objectForKeyedSubscript:*MEMORY[0x1E698DBD0]];
    if (v23)
    {
      [v18 setRawPassword:v23];
    }

    else
    {
      v24 = _AAUILogSystem();
      if (os_log_type_enabled(v24, OS_LOG_TYPE_ERROR))
      {
        [AAUISignInFlowController _stashLoginResponseWithAuthenticationResults:completion:];
      }
    }

    v25 = [(ACAccountStore *)self->_accountStore aa_authKitAccountForAltDSID:v16];
    v26 = v25;
    if (v25)
    {
      v27 = [v25 credential];
      v28 = _AAUILogSystem();
      if (os_log_type_enabled(v28, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138412290;
        v40 = v26;
        _os_log_impl(&dword_1C5355000, v28, OS_LOG_TYPE_DEFAULT, "Trying to add CK and PRK for %@ to login context...", buf, 0xCu);
      }

      v29 = [v27 credentialItemForKey:*MEMORY[0x1E6959950]];
      [v18 setContinuationKey:v29];

      v30 = [v27 credentialItemForKey:*MEMORY[0x1E69599E0]];
      [v18 setPasswordResetKey:v30];
    }

    else
    {
      v27 = _AAUILogSystem();
      if (os_log_type_enabled(v27, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138412290;
        v40 = v16;
        _os_log_impl(&dword_1C5355000, v27, OS_LOG_TYPE_DEFAULT, "No AuthKit account to grab CK and PRK from for altDSID: %@", buf, 0xCu);
      }
    }

    v31 = [MEMORY[0x1E698B8F8] sharedManager];
    [v31 setStashedContext:v18];

    v32 = [MEMORY[0x1E698B8F8] sharedManager];
    [v32 persistStashedContext];

    Nanoseconds = _AAUISignpostGetNanoseconds(v8, v37);
    v34 = _AAUISignpostLogSystem();
    v35 = v34;
    if (v8 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v34))
    {
      *buf = 0;
      _os_signpost_emit_with_name_impl(&dword_1C5355000, v35, OS_SIGNPOST_INTERVAL_END, v8, "StashLoginResponse", "", buf, 2u);
    }

    v36 = _AAUISignpostLogSystem();
    if (os_log_type_enabled(v36, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 134218240;
      v40 = v8;
      v41 = 2048;
      v42 = Nanoseconds / 1000000000.0;
      _os_log_impl(&dword_1C5355000, v36, OS_LOG_TYPE_DEFAULT, "END [%lld] %fs: StashLoginResponse ", buf, 0x16u);
    }

    v38[2](v38);
  }

  else
  {
    v21 = *(a4 + 2);
    v14 = a4;
    v21();
  }
}

- (void)_promptToEnableFindMyIfPossibleWithAccount:(id)a3 completion:(id)a4
{
  v6 = a3;
  v7 = a4;
  if ([(AAUISignInFlowController *)self activationAction]== 2)
  {
    v8 = _AAUILogSystem();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      v9 = "Activation lock explicitly disabled, not enabling FindMy...";
LABEL_14:
      _os_log_impl(&dword_1C5355000, v8, OS_LOG_TYPE_DEFAULT, v9, buf, 2u);
      goto LABEL_15;
    }

    goto LABEL_15;
  }

  if (![(AAUISignInFlowController *)self shouldAutomaticallySaveSignInResults])
  {
    v8 = _AAUILogSystem();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      v9 = "Automatic sign in result save disabled, not enabling FindMy...";
      goto LABEL_14;
    }

LABEL_15:

    v7[2](v7, 0);
    goto LABEL_16;
  }

  if (![v6 aa_isAccountClass:*MEMORY[0x1E698B760]] || (objc_msgSend(v6, "aa_isPrimaryEmailVerified") & 1) == 0)
  {
    v8 = _AAUILogSystem();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      v9 = "Account is not a primary with email verified...";
      goto LABEL_14;
    }

    goto LABEL_15;
  }

  if (([v6 isProvisionedForDataclass:*MEMORY[0x1E6959B08]] & 1) == 0)
  {
    v8 = _AAUILogSystem();
    if (!os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_15;
    }

    *buf = 0;
    v9 = "Account is not provisioned for FindMy...";
    goto LABEL_14;
  }

  v10 = [(AAUISignInFlowController *)self presentingViewController];
  if (v10)
  {
    v12[0] = MEMORY[0x1E69E9820];
    v12[1] = 3221225472;
    v12[2] = __82__AAUISignInFlowController__promptToEnableFindMyIfPossibleWithAccount_completion___block_invoke;
    v12[3] = &unk_1E820CAC0;
    v12[4] = self;
    v14 = v7;
    v13 = v10;
    [(AAUISignInFlowController *)self _hasActivationLockSupportedWatchWithCompletion:v12];
  }

  else
  {
    v11 = _AAUILogSystem();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      [AAUISignInFlowController _promptToEnableFindMyIfPossibleWithAccount:completion:];
    }

    v7[2](v7, 0);
  }

LABEL_16:
}

void __82__AAUISignInFlowController__promptToEnableFindMyIfPossibleWithAccount_completion___block_invoke(uint64_t a1, char a2, void *a3)
{
  v5 = a3;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 3221225472;
  aBlock[2] = __82__AAUISignInFlowController__promptToEnableFindMyIfPossibleWithAccount_completion___block_invoke_2;
  aBlock[3] = &__block_descriptor_33_e5_v8__0l;
  v15 = a2;
  v6 = _Block_copy(aBlock);
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __82__AAUISignInFlowController__promptToEnableFindMyIfPossibleWithAccount_completion___block_invoke_119;
  v9[3] = &unk_1E820CA98;
  v9[4] = *(a1 + 32);
  v12 = v6;
  v13 = *(a1 + 48);
  v10 = v5;
  v11 = *(a1 + 40);
  v7 = v5;
  v8 = v6;
  dispatch_async(MEMORY[0x1E69E96A0], v9);
}

void __82__AAUISignInFlowController__promptToEnableFindMyIfPossibleWithAccount_completion___block_invoke_2(uint64_t a1)
{
  v8 = *MEMORY[0x1E69E9840];
  v2 = _AAUILogSystem();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    if (*(a1 + 32))
    {
      v3 = @"YES";
    }

    else
    {
      v3 = @"NO";
    }

    v6 = 138543362;
    v7 = v3;
    _os_log_impl(&dword_1C5355000, v2, OS_LOG_TYPE_DEFAULT, "Enabling FindMy for newly added account, hasWatch: %{public}@.", &v6, 0xCu);
  }

  if (*(a1 + 32) == 1)
  {
    v4 = [MEMORY[0x1E699C848] sharedInstance];
    [v4 userNotifiedOfActivationLockForAllPairedDevices];
  }

  v5 = +[AAUIDeviceLocatorService sharedInstance];
  [v5 enableInContext:3];
}

void __82__AAUISignInFlowController__promptToEnableFindMyIfPossibleWithAccount_completion___block_invoke_119(uint64_t a1)
{
  if ([*(a1 + 32) activationAction] == 1)
  {
    (*(*(a1 + 56) + 16))();
    v2 = *(*(a1 + 64) + 16);

    v2();
  }

  else
  {
    v3 = [MEMORY[0x1E696AAE8] bundleForClass:objc_opt_class()];
    v4 = [MEMORY[0x1E69DC938] modelSpecificLocalizedStringKeyForKey:@"DEVICE_LOCATOR_TITLE"];
    v5 = [v3 localizedStringForKey:v4 value:&stru_1F447F790 table:@"Localizable"];

    v6 = [MEMORY[0x1E696AAE8] bundleForClass:objc_opt_class()];
    v7 = [v6 localizedStringForKey:@"OK" value:&stru_1F447F790 table:@"Localizable"];

    v8 = [MEMORY[0x1E69DC650] alertWithTitle:v5 message:*(a1 + 40)];
    v9 = MEMORY[0x1E69DC648];
    v13[0] = MEMORY[0x1E69E9820];
    v13[1] = 3221225472;
    v13[2] = __82__AAUISignInFlowController__promptToEnableFindMyIfPossibleWithAccount_completion___block_invoke_2_124;
    v13[3] = &unk_1E820CA70;
    v14 = *(a1 + 64);
    v10 = [v9 actionWithTitle:v7 style:0 handler:v13];
    [v8 addAction:v10];

    v11 = _AAUILogSystem();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
    {
      *v12 = 0;
      _os_log_impl(&dword_1C5355000, v11, OS_LOG_TYPE_DEFAULT, "Presenting activation lock enable alert...", v12, 2u);
    }

    [*(a1 + 48) presentViewController:v8 animated:1 completion:*(a1 + 56)];
  }
}

- (void)_hasActivationLockSupportedWatchWithCompletion:(id)a3
{
  v4 = a3;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 3221225472;
  aBlock[2] = __75__AAUISignInFlowController__hasActivationLockSupportedWatchWithCompletion___block_invoke;
  aBlock[3] = &unk_1E820CAE8;
  v5 = v4;
  aBlock[4] = self;
  v14 = v5;
  v6 = _Block_copy(aBlock);
  v7 = [MEMORY[0x1E69B36C0] sharedInstance];
  v8 = [v7 getActivePairedDevice];

  v9 = [objc_alloc(MEMORY[0x1E696AFB0]) initWithUUIDString:@"02168E84-5DD8-4B19-9204-A79F04B33A32"];
  v10 = [v8 supportsCapability:v9];

  if (v10)
  {
    v11[0] = MEMORY[0x1E69E9820];
    v11[1] = 3221225472;
    v11[2] = __75__AAUISignInFlowController__hasActivationLockSupportedWatchWithCompletion___block_invoke_2;
    v11[3] = &unk_1E820CB10;
    v12 = v6;
    [AAUIDeviceLocatorConfirmationUtilities checkIfWatchHasAppleIDAccount:v11];
  }

  else
  {
    (*(v6 + 2))(v6, 0);
  }
}

void __75__AAUISignInFlowController__hasActivationLockSupportedWatchWithCompletion___block_invoke(uint64_t a1, int a2)
{
  v2 = *(a1 + 40);
  if (v2)
  {
    v6 = [MEMORY[0x1E696AAE8] bundleForClass:objc_opt_class()];
    if (a2)
    {
      v4 = [v6 localizedStringForKey:@"DEVICE_LOCATOR_MESSAGE_WATCH_REBRAND" value:&stru_1F447F790 table:@"Localizable"];
      (*(v2 + 16))(v2, 1, v4);
    }

    else
    {
      v4 = [MEMORY[0x1E69DC938] modelSpecificLocalizedStringKeyForKey:@"DEVICE_LOCATOR_MESSAGE_REBRAND"];
      v5 = [v6 localizedStringForKey:v4 value:&stru_1F447F790 table:@"Localizable"];
      (*(v2 + 16))(v2, 0, v5);
    }
  }
}

- (void)_presentUnableToSaveAccountAlert
{
  v3 = MEMORY[0x1E69DC650];
  v4 = [MEMORY[0x1E696AAE8] bundleForClass:objc_opt_class()];
  v5 = [v4 localizedStringForKey:@"SAVE_FAILED_MESSAGE" value:&stru_1F447F790 table:@"Localizable"];
  v11 = [v3 alertWithTitle:v5 message:0];

  v6 = MEMORY[0x1E69DC648];
  v7 = [MEMORY[0x1E696AAE8] bundleForClass:objc_opt_class()];
  v8 = [v7 localizedStringForKey:@"OK" value:&stru_1F447F790 table:@"Localizable"];
  v9 = [v6 actionWithTitle:v8 style:1 handler:0];
  [v11 addAction:v9];

  WeakRetained = objc_loadWeakRetained(&self->_presentingViewController);
  [WeakRetained presentViewController:v11 animated:1 completion:0];
}

- (void)_showGenericTermsUIforAccount:(id)a3 completion:(id)a4
{
  v6 = a3;
  v7 = a4;
  WeakRetained = objc_loadWeakRetained(&self->_presentingViewController);

  if (WeakRetained)
  {
    if (self->_pendingCompletion)
    {
      v9 = _AAUILogSystem();
      if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
      {
        *v20 = 0;
        _os_log_impl(&dword_1C5355000, v9, OS_LOG_TYPE_DEFAULT, "Error! A pending completion for sign-in already exists and we are about to overwrite it!", v20, 2u);
      }
    }

    v10 = _Block_copy(v7);
    pendingCompletion = self->_pendingCompletion;
    self->_pendingCompletion = v10;

    v12 = objc_loadWeakRetained(&self->_presentingViewController);
    objc_opt_class();
    isKindOfClass = objc_opt_isKindOfClass();

    v14 = objc_loadWeakRetained(&self->_presentingViewController);
    v15 = v14;
    if (isKindOfClass)
    {
      v16 = [v14 topViewController];

      v15 = v16;
    }

    v17 = [[AAUIGenericTermsRemoteUI alloc] initWithAccount:v6 inStore:self->_accountStore];
    genericTermsRemoteUI = self->_genericTermsRemoteUI;
    self->_genericTermsRemoteUI = v17;

    [(AAUIGenericTermsRemoteUI *)self->_genericTermsRemoteUI setDelegate:self];
    [(AAUIGenericTermsRemoteUI *)self->_genericTermsRemoteUI presentFromViewController:v15 modal:1];
  }

  else
  {
    v19 = [MEMORY[0x1E696ABC0] errorWithDomain:@"AAUISignInErrors" code:-9005 userInfo:0];
    (*(v7 + 2))(v7, 0, 0, v19);
  }
}

- (void)genericTermsRemoteUI:(id)a3 didFinishWithSuccess:(BOOL)a4
{
  v6 = a3;
  genericTermsRemoteUI = self->_genericTermsRemoteUI;
  self->_genericTermsRemoteUI = 0;

  v8 = _Block_copy(self->_pendingCompletion);
  pendingCompletion = self->_pendingCompletion;
  self->_pendingCompletion = 0;

  if (a4)
  {
    accountStore = self->_accountStore;
    v11 = [v6 account];
    v13[0] = MEMORY[0x1E69E9820];
    v13[1] = 3221225472;
    v13[2] = __70__AAUISignInFlowController_genericTermsRemoteUI_didFinishWithSuccess___block_invoke;
    v13[3] = &unk_1E820C960;
    v13[4] = self;
    v14 = v6;
    v15 = v8;
    [(ACAccountStore *)accountStore aa_registerAppleAccount:v11 withCompletion:v13];
  }

  else
  {
    v12 = [MEMORY[0x1E696ABC0] errorWithDomain:@"AAUISignInErrors" code:-9006 userInfo:0];
    (*(v8 + 2))(v8, 0, 0, v12);
  }
}

void __70__AAUISignInFlowController_genericTermsRemoteUI_didFinishWithSuccess___block_invoke(void *a1, uint64_t a2, void *a3)
{
  v5 = a1[4];
  v6 = a1[5];
  v7 = a3;
  v8 = [v6 account];
  [v5 _verifyLoginResponseForiCloudAccount:v8 withSuccess:a2 response:0 error:v7 completion:a1[6]];
}

- (void)_presentValidationErrorAlert:(id)a3 forAccount:(id)a4 completion:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v11 = [v8 userInfo];
  v12 = v11;
  v56 = v10;
  if (v11)
  {
    v13 = [v11 objectForKey:*MEMORY[0x1E698BAA0]];
  }

  else
  {
    v13 = 0;
  }

  v14 = [v8 userInfo];
  v15 = [v14 objectForKey:*MEMORY[0x1E698BAD0]];

  v55 = v15;
  if (v15)
  {
    v16 = [v15 objectForKey:*MEMORY[0x1E698BAA8]];
    v17 = [v15 objectForKey:*MEMORY[0x1E698BAD8]];
    v15 = [v15 objectForKey:*MEMORY[0x1E698BA98]];
    if (v17)
    {
      goto LABEL_9;
    }
  }

  else
  {
    v16 = 0;
  }

  v17 = [(AAUISignInFlowController *)self _titleForError:v8 account:v9];
LABEL_9:
  v57 = v17;
  if (!v16)
  {
    v18 = *MEMORY[0x1E698BAB8];
    if ([v13 isEqualToString:*MEMORY[0x1E698BAB8]])
    {
      v19 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%@_REBRAND", v18];
      v20 = MEMORY[0x1E696AEC0];
      v52 = v12;
      v21 = [MEMORY[0x1E696AAE8] bundleForClass:objc_opt_class()];
      [v21 localizedStringForKey:v19 value:&stru_1F447F790 table:@"Localizable"];
      v23 = v22 = v13;
      [v9 username];
      v25 = v24 = self;
      v16 = [v20 stringWithFormat:v23, v25];

      self = v24;
      v17 = v57;

      v13 = v22;
      v12 = v52;
    }

    else
    {
      v16 = [v8 localizedDescription];
    }
  }

  v26 = [MEMORY[0x1E69DC650] alertWithTitle:v17 message:v16];
  if ([v8 code] == 403 && objc_msgSend(v13, "isEqualToString:", *MEMORY[0x1E698BAC8]))
  {
    v49 = MEMORY[0x1E69DC648];
    [MEMORY[0x1E696AAE8] bundleForClass:objc_opt_class()];
    v27 = v53 = v12;
    [v27 localizedStringForKey:@"OK" value:&stru_1F447F790 table:@"Localizable"];
    v28 = v48 = v13;
    v66[0] = MEMORY[0x1E69E9820];
    v66[1] = 3221225472;
    v66[2] = __79__AAUISignInFlowController__presentValidationErrorAlert_forAccount_completion___block_invoke;
    v66[3] = &unk_1E820CB38;
    v54 = &v68;
    v29 = v56;
    v30 = v56;
    v68 = v30;
    v51 = self;
    v31 = v8;
    v67 = v31;
    [v49 actionWithTitle:v28 style:0 handler:v66];
    v32 = v50 = v9;
    [v26 addAction:v32];

    v33 = MEMORY[0x1E69DC648];
    v34 = [MEMORY[0x1E696AAE8] bundleForClass:objc_opt_class()];
    v35 = [v34 localizedStringForKey:@"LEARN_MORE" value:&stru_1F447F790 table:@"Localizable"];
    v63[0] = MEMORY[0x1E69E9820];
    v63[1] = 3221225472;
    v63[2] = __79__AAUISignInFlowController__presentValidationErrorAlert_forAccount_completion___block_invoke_151;
    v63[3] = &unk_1E820CB38;
    v64 = v31;
    v65 = v30;
    v36 = v31;
    self = v51;
    v37 = v30;
    v38 = v33;
    v13 = v48;
    v39 = [v38 actionWithTitle:v35 style:1 handler:v63];
    [v26 addAction:v39];

    v9 = v50;
    v12 = v53;

    v40 = v67;
  }

  else
  {
    if (!v15)
    {
      v41 = [MEMORY[0x1E696AAE8] bundleForClass:objc_opt_class()];
      v15 = [v41 localizedStringForKey:@"OK" value:&stru_1F447F790 table:@"Localizable"];
    }

    v42 = MEMORY[0x1E69DC648];
    v58[0] = MEMORY[0x1E69E9820];
    v58[1] = 3221225472;
    v58[2] = __79__AAUISignInFlowController__presentValidationErrorAlert_forAccount_completion___block_invoke_3;
    v58[3] = &unk_1E820CB60;
    v54 = v59;
    v59[0] = v13;
    v59[1] = self;
    v43 = v9;
    v29 = v56;
    v61 = v8;
    v62 = v56;
    v60 = v43;
    v44 = v8;
    v45 = v56;
    v46 = [v42 actionWithTitle:v15 style:1 handler:v58];
    [v26 addAction:v46];

    v40 = v60;
  }

  WeakRetained = objc_loadWeakRetained(&self->_presentingViewController);
  [WeakRetained presentViewController:v26 animated:1 completion:0];
}

uint64_t __79__AAUISignInFlowController__presentValidationErrorAlert_forAccount_completion___block_invoke(uint64_t a1)
{
  v2 = _AAUILogSystem();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    *v4 = 0;
    _os_log_impl(&dword_1C5355000, v2, OS_LOG_TYPE_DEFAULT, "User dismissed Unsupported Device alert.", v4, 2u);
  }

  return (*(*(a1 + 40) + 16))();
}

void __79__AAUISignInFlowController__presentValidationErrorAlert_forAccount_completion___block_invoke_151(uint64_t a1)
{
  v2 = *MEMORY[0x1E69DDA98];
  v3 = [MEMORY[0x1E695DFF8] URLWithString:@"https://www.me.com/findmyiphone/account"];
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = __79__AAUISignInFlowController__presentValidationErrorAlert_forAccount_completion___block_invoke_2;
  v4[3] = &unk_1E820CAE8;
  v6 = *(a1 + 40);
  v5 = *(a1 + 32);
  [v2 openURL:v3 withCompletionHandler:v4];
}

uint64_t __79__AAUISignInFlowController__presentValidationErrorAlert_forAccount_completion___block_invoke_3(uint64_t a1)
{
  if ([*(a1 + 32) isEqualToString:*MEMORY[0x1E698BAB8]])
  {
    v2 = *(a1 + 40);
    v3 = *(a1 + 48);
    v4 = *(a1 + 64);

    return [v2 _showGenericTermsUIforAccount:v3 completion:v4];
  }

  else
  {
    v6 = *(*(a1 + 64) + 16);

    return v6();
  }
}

- (id)_messageForErrorAlert:(int64_t)a3
{
  v3 = (a3 + 9011) > 9 || ((1 << (a3 + 51)) & 0x203) == 0;
  v4 = MEMORY[0x1E696AEC0];
  if (v3)
  {
    v5 = [MEMORY[0x1E696AAE8] bundleForClass:objc_opt_class()];
    v6 = [v5 localizedStringForKey:@"UNABLE_TO_VALIDATE" value:&stru_1F447F790 table:@"Localizable"];
    v8 = [v4 stringWithFormat:v6];
  }

  else
  {
    v5 = [MEMORY[0x1E696AAE8] bundleForClass:objc_opt_class()];
    v6 = [MEMORY[0x1E69DC938] modelSpecificLocalizedStringKeyForKey:@"ALREADY_EXISTING_ACCOUNT_DESC"];
    v7 = [v5 localizedStringForKey:v6 value:&stru_1F447F790 table:@"Localizable"];
    v8 = [v4 stringWithFormat:v7, @"iCloud"];
  }

  return v8;
}

- (void)_presentExistingAccountAlert:(id)a3
{
  v4 = MEMORY[0x1E696AEC0];
  v5 = MEMORY[0x1E696AAE8];
  v6 = a3;
  v7 = [v5 bundleForClass:objc_opt_class()];
  v8 = [v7 localizedStringForKey:@"SIGN_IN_ERROR_TITLE" value:&stru_1F447F790 table:@"Localizable"];
  v17 = [v4 stringWithFormat:v8];

  v9 = [v6 userInfo];

  v10 = [v9 objectForKeyedSubscript:*MEMORY[0x1E696A578]];

  v11 = [MEMORY[0x1E69DC650] alertWithTitle:v17 message:v10];
  v12 = MEMORY[0x1E69DC648];
  v13 = [MEMORY[0x1E696AAE8] bundleForClass:objc_opt_class()];
  v14 = [v13 localizedStringForKey:@"OK" value:&stru_1F447F790 table:@"Localizable"];
  v15 = [v12 actionWithTitle:v14 style:1 handler:0];
  [v11 addAction:v15];

  WeakRetained = objc_loadWeakRetained(&self->_presentingViewController);
  [WeakRetained presentViewController:v11 animated:1 completion:0];
}

- (id)_titleForError:(id)a3 account:(id)a4
{
  v5 = a3;
  v6 = a4;
  v7 = [v5 userInfo];
  v8 = v7;
  if (v7 && (v9 = *MEMORY[0x1E698BAA0], [v7 objectForKey:*MEMORY[0x1E698BAA0]], v10 = objc_claimAutoreleasedReturnValue(), v10, v10))
  {
    v11 = [v8 objectForKey:v9];
  }

  else
  {
    v11 = 0;
  }

  v12 = [v5 code];
  if (v12 == 403)
  {
    if (!v11)
    {
LABEL_13:
      v13 = [MEMORY[0x1E696AAE8] bundleForClass:objc_opt_class()];
      v14 = v13;
      v15 = @"VERIFICATION_FAILED_TITLE";
      goto LABEL_14;
    }

    if (![v11 isEqualToString:*MEMORY[0x1E698BAB0]])
    {
      v14 = [MEMORY[0x1E696AAE8] bundleForClass:objc_opt_class()];
      v18 = [v11 stringByAppendingString:@"_DYNAMIC_TITLE"];
      v16 = [v14 localizedStringForKey:v18 value:&stru_1F447F790 table:@"Localizable"];

      goto LABEL_15;
    }

LABEL_12:
    v16 = [v6 aa_displayName];
    goto LABEL_16;
  }

  if (v12 != 402)
  {
    if (v12 != 401)
    {
      goto LABEL_13;
    }

    goto LABEL_12;
  }

  v13 = [MEMORY[0x1E696AAE8] bundleForClass:objc_opt_class()];
  v14 = v13;
  v15 = @"MOBILEME_PAID_ACCOUNT_LAPSED_TITLE";
LABEL_14:
  v16 = [v13 localizedStringForKey:v15 value:&stru_1F447F790 table:@"Localizable"];
LABEL_15:

LABEL_16:

  return v16;
}

- (id)_appleAccountType
{
  appleAccountType = self->_appleAccountType;
  if (!appleAccountType)
  {
    v4 = [(ACAccountStore *)self->_accountStore accountTypeWithAccountTypeIdentifier:*MEMORY[0x1E69597F8]];
    v5 = self->_appleAccountType;
    self->_appleAccountType = v4;

    appleAccountType = self->_appleAccountType;
  }

  return appleAccountType;
}

- (void)prewarmOperationsWithCompletion:(id)a3
{
  v3 = a3;
  v4 = [MEMORY[0x1E698B968] sharedServer];
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __60__AAUISignInFlowController_prewarmOperationsWithCompletion___block_invoke;
  v6[3] = &unk_1E820CBB0;
  v7 = v3;
  v5 = v3;
  [v4 configurationWithCompletion:v6];
}

void __60__AAUISignInFlowController_prewarmOperationsWithCompletion___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [@"PREWARM" dataUsingEncoding:4];
  v5 = dispatch_group_create();
  v6 = [v3 absintheEnable];

  if ([v6 unsignedIntegerValue] == 1)
  {
    dispatch_group_enter(v5);
    v7 = [MEMORY[0x1E698B7F8] sharedSigner];
    v10[0] = MEMORY[0x1E69E9820];
    v10[1] = 3221225472;
    v10[2] = __60__AAUISignInFlowController_prewarmOperationsWithCompletion___block_invoke_2;
    v10[3] = &unk_1E820CB88;
    v11 = v5;
    [v7 signatureForData:v4 completion:v10];
  }

  if (*(a1 + 32))
  {
    v8[0] = MEMORY[0x1E69E9820];
    v8[1] = 3221225472;
    v8[2] = __60__AAUISignInFlowController_prewarmOperationsWithCompletion___block_invoke_3;
    v8[3] = &unk_1E820B820;
    v9 = *(a1 + 32);
    dispatch_group_notify(v5, MEMORY[0x1E69E96A0], v8);
  }
}

- (void)signInOperationManager:(id)a3 didSaveAccount:(id)a4 error:(id)a5
{
  pendingCompletion = self->_pendingCompletion;
  if (pendingCompletion)
  {
    pendingCompletion[2](pendingCompletion, a4 != 0, a4, a5);
    v7 = self->_pendingCompletion;
    self->_pendingCompletion = 0;
  }

  else
  {
    v8 = _AAUILogSystem();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      [AAUISignInFlowController signInOperationManager:didSaveAccount:error:];
    }
  }
}

- (UIViewController)presentingViewController
{
  WeakRetained = objc_loadWeakRetained(&self->_presentingViewController);

  return WeakRetained;
}

- (void)signInWithIDMSAuthenticationResults:(uint64_t)a1 completion:(NSObject *)a2 .cold.2(uint64_t a1, NSObject *a2)
{
  v4 = *MEMORY[0x1E69E9840];
  v2 = 138412290;
  v3 = a1;
  _os_log_debug_impl(&dword_1C5355000, a2, OS_LOG_TYPE_DEBUG, "Enterprise persona detected: %@", &v2, 0xCu);
}

void __103__AAUISignInFlowController__verifyLoginResponseForiCloudAccount_withSuccess_response_error_completion___block_invoke_92_cold_1(uint64_t a1, NSObject *a2)
{
  v4 = *MEMORY[0x1E69E9840];
  v2 = 138412290;
  v3 = a1;
  _os_log_error_impl(&dword_1C5355000, a2, OS_LOG_TYPE_ERROR, "Validating iCDP failed with error %@! Blocking iCloud sign-in...", &v2, 0xCu);
}

@end