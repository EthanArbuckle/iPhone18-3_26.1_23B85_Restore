@interface AAUICDPCustodianHook
- (AAUICDPCustodianHook)initWithAccountManager:(id)a3 contactsProvider:(id)a4;
- (AAUICDPCustodianHook)initWithAccountManager:(id)a3 contactsProvider:(id)a4 cdpContext:(id)a5;
- (BOOL)shouldMatchElement:(id)a3;
- (BOOL)shouldMatchModel:(id)a3;
- (RUIServerHookDelegate)delegate;
- (id)_appleAccount;
- (id)_custodianInlineSetupFlowNavigationController;
- (void)_callSetupCompletionWithSuccess:(BOOL)a3 error:(id)a4;
- (void)_custodianInlineSetupFlowNavigationController;
- (void)_performInlineCustodianSetupWithIsADPUpsellFlow:(BOOL)a3 completion:(id)a4;
- (void)custodianSetupFlowControllerDidFinish:(id)a3 withError:(id)a4;
- (void)processObjectModel:(id)a3 completion:(id)a4;
@end

@implementation AAUICDPCustodianHook

- (AAUICDPCustodianHook)initWithAccountManager:(id)a3 contactsProvider:(id)a4
{
  v6 = a4;
  v7 = a3;
  v8 = _AAUILogSystem();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
  {
    [AAUICDPCustodianHook initWithAccountManager:contactsProvider:];
  }

  v9 = [(AAUICDPCustodianHook *)self initWithAccountManager:v7 contactsProvider:v6 cdpContext:0];
  return v9;
}

- (AAUICDPCustodianHook)initWithAccountManager:(id)a3 contactsProvider:(id)a4 cdpContext:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v24.receiver = self;
  v24.super_class = AAUICDPCustodianHook;
  v11 = [(AAUICDPCustodianHook *)&v24 init];
  if (v11)
  {
    if (v8)
    {
      v12 = v8;
      accountManager = v11->_accountManager;
      v11->_accountManager = v12;
    }

    else
    {
      v14 = _AAUILogSystem();
      if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
      {
        [AAUICDPCustodianHook initWithAccountManager:contactsProvider:cdpContext:];
      }

      v15 = objc_alloc(MEMORY[0x1E698C250]);
      accountManager = [MEMORY[0x1E6959A48] defaultStore];
      v16 = [v15 initWithAccountStore:accountManager];
      v17 = v11->_accountManager;
      v11->_accountManager = v16;
    }

    if (v9)
    {
      v18 = v9;
    }

    else
    {
      v19 = _AAUILogSystem();
      if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
      {
        [AAUICDPCustodianHook initWithAccountManager:contactsProvider:cdpContext:];
      }

      v18 = objc_alloc_init(AAUIContactsProvider);
    }

    contactsProvider = v11->_contactsProvider;
    v11->_contactsProvider = v18;

    objc_storeStrong(&v11->_cdpContext, a5);
    v21 = [MEMORY[0x1E696AAE8] mainBundle];
    v22 = [v21 bundleIdentifier];
    v11->_isOSUpgradeFlow = [v22 isEqualToString:@"com.apple.purplebuddy"];

    v11->_isInternalBuild = [MEMORY[0x1E698B890] isInternalBuild];
  }

  return v11;
}

- (id)_appleAccount
{
  v2 = [(AIDAAccountManager *)self->_accountManager accounts];
  v3 = [v2 objectForKeyedSubscript:*MEMORY[0x1E698C218]];

  return v3;
}

- (BOOL)shouldMatchElement:(id)a3
{
  v3 = [a3 name];
  v4 = [v3 isEqualToString:@"custodian:add"];

  return v4;
}

- (BOOL)shouldMatchModel:(id)a3
{
  v3 = a3;
  objc_opt_class();
  v4 = [v3 clientInfo];

  v5 = [v4 objectForKeyedSubscript:*MEMORY[0x1E69C7058]];
  if (objc_opt_isKindOfClass())
  {
    v6 = v5;
  }

  else
  {
    v6 = 0;
  }

  v7 = [v6 isEqualToString:@"custodian:add"];
  return v7;
}

- (void)processObjectModel:(id)a3 completion:(id)a4
{
  v23 = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = a4;
  objc_opt_class();
  v8 = [v6 clientInfo];
  v9 = [v8 objectForKeyedSubscript:*MEMORY[0x1E69C7058]];
  if (objc_opt_isKindOfClass())
  {
    v10 = v9;
  }

  else
  {
    v10 = 0;
  }

  if ([v10 isEqualToString:@"custodian:add"])
  {
    objc_opt_class();
    v11 = [v6 clientInfo];
    v12 = [v11 objectForKeyedSubscript:@"context"];
    if (objc_opt_isKindOfClass())
    {
      v13 = v12;
    }

    else
    {
      v13 = 0;
    }

    hookClientContext = self->_hookClientContext;
    self->_hookClientContext = v13;

    v17 = [(NSString *)self->_hookClientContext isEqualToString:@"adpEnroll"];
    v18 = _AAUILogSystem();
    if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
    {
      v19 = self->_hookClientContext;
      v20[0] = 67109378;
      v20[1] = v17;
      v21 = 2112;
      v22 = v19;
      _os_log_impl(&dword_1C5355000, v18, OS_LOG_TYPE_DEFAULT, "isADPUpsellFlow=%{BOOL}d because clientContext=%@", v20, 0x12u);
    }

    [(AAUICDPCustodianHook *)self _performInlineCustodianSetupWithIsADPUpsellFlow:v17 completion:v7];
  }

  else
  {
    v14 = _AAUILogSystem();
    if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
    {
      [AAUICDPCustodianHook processObjectModel:completion:];
    }

    v15 = [MEMORY[0x1E696ABC0] errorWithDomain:*MEMORY[0x1E698B768] code:-7000 userInfo:0];
    [(AAUICDPCustodianHook *)self _callSetupCompletionWithSuccess:0 error:v15];
  }
}

- (void)_performInlineCustodianSetupWithIsADPUpsellFlow:(BOOL)a3 completion:(id)a4
{
  v4 = a3;
  v6 = [a4 copy];
  [(AAUICDPCustodianHook *)self setSetupCompletion:v6];

  if (self->_isOSUpgradeFlow && [(NSString *)self->_hookClientContext isEqualToString:@"rcUpsell"])
  {
    v31 = [MEMORY[0x1E696ABC0] errorWithDomain:*MEMORY[0x1E698B768] code:-7001 userInfo:0];
    [(AAUICDPCustodianHook *)self _callSetupCompletionWithSuccess:0 error:v31];
    v7 = MEMORY[0x1E6985DB0];
    v8 = [(AAUICDPCustodianHook *)self _appleAccount];
    v9 = [v8 aida_alternateDSID];
    v10 = [v7 analyticsEventWithName:@"com.apple.appleaccount.custodian.setup.askedToPresentUpsellByServer" altDSID:v9 flowID:0];

    [v10 setObject:MEMORY[0x1E695E110] forKeyedSubscript:*MEMORY[0x1E6985E40]];
    [v10 updateTaskResultWithError:v31];
    v11 = [MEMORY[0x1E698B810] reporter];
    [v11 sendEvent:v10];
  }

  else
  {
    v31 = [(AAUICDPCustodianHook *)self _custodianInlineSetupFlowNavigationController];
    v12 = objc_alloc(MEMORY[0x1E69DC708]);
    v13 = [MEMORY[0x1E696AAE8] bundleWithIdentifier:@"com.apple.AppleAccountUI"];
    v14 = [v13 localizedStringForKey:@"BACK" value:&stru_1F447F790 table:@"Localizable"];
    v15 = [v12 initWithTitle:v14 style:0 target:0 action:0];
    v16 = [v31 topViewController];
    v17 = [v16 navigationItem];
    [v17 setBackBarButtonItem:v15];

    v18 = [AAUICustodianSetupFlowController alloc];
    v19 = [(AAUICDPCustodianHook *)self accountManager];
    v20 = [(AAUICustodianSetupFlowController *)v18 initWithAccountManager:v19 navigationController:v31 isADPUpsellFlow:v4 cdpContext:self->_cdpContext];
    [(AAUICDPCustodianHook *)self setSetupFlowController:v20];

    if ([(NSString *)self->_hookClientContext isEqualToString:@"rcUpsell"]&& +[AAUIFeatureFlags isRCUpsellEnabled])
    {
      v21 = [MEMORY[0x1E696AFB0] UUID];
      v22 = [v21 UUIDString];

      v23 = MEMORY[0x1E6985DB0];
      v24 = [(AAUICDPCustodianHook *)self _appleAccount];
      v25 = [v24 aida_alternateDSID];
      v26 = [v23 analyticsEventWithName:@"com.apple.appleaccount.custodian.setup.askedToPresentUpsellByServer" altDSID:v25 flowID:v22];

      [v26 setObject:MEMORY[0x1E695E118] forKeyedSubscript:*MEMORY[0x1E6985E40]];
      v27 = [MEMORY[0x1E698B810] reporter];
      [v27 sendEvent:v26];

      v28 = [(AAUICDPCustodianHook *)self setupFlowController];
      [v28 setTelemetryFlowID:v22];

      v29 = [(AAUICDPCustodianHook *)self setupFlowController];
      [v29 setUiVersion:1];
    }

    v30 = [(AAUICDPCustodianHook *)self setupFlowController];
    [v30 setDelegate:self];

    v10 = [(AAUICDPCustodianHook *)self setupFlowController];
    [v10 start];
  }
}

- (void)custodianSetupFlowControllerDidFinish:(id)a3 withError:(id)a4
{
  v6 = a3;
  v7 = a4;
  if (v7)
  {
    v8 = _AAUILogSystem();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      [AAUICDPCustodianHook custodianSetupFlowControllerDidFinish:withError:];
    }

    v9 = [v6 navigationController];
    v10 = [v9 presentingViewController];

    v11 = _AAUILogSystem();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEBUG))
    {
      [AAUICDPCustodianHook custodianSetupFlowControllerDidFinish:withError:];
    }

    if (v10)
    {
      v19[0] = MEMORY[0x1E69E9820];
      v19[1] = 3221225472;
      v19[2] = __72__AAUICDPCustodianHook_custodianSetupFlowControllerDidFinish_withError___block_invoke;
      v19[3] = &unk_1E820BEB8;
      v19[4] = self;
      v20 = v7;
      [v10 dismissViewControllerAnimated:1 completion:v19];
    }

    else
    {
      [(AAUICDPCustodianHook *)self _callSetupCompletionWithSuccess:0 error:v7];
    }
  }

  else
  {
    if (![(NSString *)self->_hookClientContext isEqualToString:@"adpEnroll"])
    {
      [(AAUICDPCustodianHook *)self _callSetupCompletionWithSuccess:1 error:0];
    }

    v12 = [(AAUICDPCustodianHook *)self contactsProvider];
    v13 = objc_opt_respondsToSelector();

    if (v13)
    {
      objc_initWeak(&location, self);
      v14 = [(AAUICDPCustodianHook *)self contactsProvider];
      v16[0] = MEMORY[0x1E69E9820];
      v16[1] = 3221225472;
      v16[2] = __72__AAUICDPCustodianHook_custodianSetupFlowControllerDidFinish_withError___block_invoke_73;
      v16[3] = &unk_1E820C770;
      objc_copyWeak(&v17, &location);
      [v14 fetchWalrusEligibleCustodiansForExpansionCohortsWithCompletion:v16];

      objc_destroyWeak(&v17);
      objc_destroyWeak(&location);
    }

    else
    {
      v15 = _AAUILogSystem();
      if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
      {
        [AAUICDPCustodianHook custodianSetupFlowControllerDidFinish:withError:];
      }
    }
  }
}

void __72__AAUICDPCustodianHook_custodianSetupFlowControllerDidFinish_withError___block_invoke_73(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (v6)
  {
    v8 = _AAUILogSystem();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      __72__AAUICDPCustodianHook_custodianSetupFlowControllerDidFinish_withError___block_invoke_73_cold_1();
    }

    v9 = WeakRetained;
    v10 = 0;
    v11 = v6;
LABEL_9:
    [v9 _callSetupCompletionWithSuccess:v10 error:v11];
    goto LABEL_10;
  }

  v12 = [v5 count];
  v13 = _AAUILogSystem();
  v14 = v13;
  if (v12)
  {
    if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
    {
      *v16 = 0;
      _os_log_impl(&dword_1C5355000, v14, OS_LOG_TYPE_DEFAULT, "Found at least one eligible custodian for walrus expansion cohort.", v16, 2u);
    }

    v9 = WeakRetained;
    v10 = 1;
    v11 = 0;
    goto LABEL_9;
  }

  if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
  {
    __72__AAUICDPCustodianHook_custodianSetupFlowControllerDidFinish_withError___block_invoke_73_cold_2();
  }

  v15 = [MEMORY[0x1E696ABC0] errorWithDomain:*MEMORY[0x1E698B768] code:-7003 userInfo:0];
  [WeakRetained _callSetupCompletionWithSuccess:0 error:v15];

LABEL_10:
}

- (id)_custodianInlineSetupFlowNavigationController
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  v4 = [WeakRetained presentationContextForHook:self];

  if (!v4)
  {
    v7 = _AAUILogSystem();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
    {
      [AAUICDPCustodianHook _custodianInlineSetupFlowNavigationController];
    }

    v6 = objc_alloc_init(MEMORY[0x1E69DCCD8]);
    goto LABEL_9;
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = _AAUILogSystem();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
    {
      [AAUICDPCustodianHook _custodianInlineSetupFlowNavigationController];
    }

    v6 = v4;
LABEL_9:
    v8 = v6;
    goto LABEL_18;
  }

  v9 = [v4 navigationController];
  v10 = _AAUILogSystem();
  v11 = os_log_type_enabled(v10, OS_LOG_TYPE_DEBUG);
  if (v9)
  {
    if (v11)
    {
      [AAUICDPCustodianHook _custodianInlineSetupFlowNavigationController];
    }

    v12 = v9;
  }

  else
  {
    if (v11)
    {
      [AAUICDPCustodianHook _custodianInlineSetupFlowNavigationController];
    }

    v12 = [objc_alloc(MEMORY[0x1E69DCCD8]) initWithRootViewController:v4];
  }

  v8 = v12;

LABEL_18:

  return v8;
}

- (void)_callSetupCompletionWithSuccess:(BOOL)a3 error:(id)a4
{
  v4 = a3;
  v6 = a4;
  v7 = [(AAUICDPCustodianHook *)self setupCompletion];

  v8 = _AAUILogSystem();
  v9 = v8;
  if (v7)
  {
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
    {
      [(AAUICDPCustodianHook *)v4 _callSetupCompletionWithSuccess:v6 error:v9];
    }

    v9 = [(AAUICDPCustodianHook *)self setupCompletion];
    (*(v9 + 16))(v9, v4, v6);
  }

  else if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
  {
    [AAUICDPCustodianHook _callSetupCompletionWithSuccess:error:];
  }
}

- (RUIServerHookDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

- (void)initWithAccountManager:contactsProvider:.cold.1()
{
  OUTLINED_FUNCTION_1_0();
  OUTLINED_FUNCTION_1_1();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 2u);
}

- (void)initWithAccountManager:contactsProvider:cdpContext:.cold.1()
{
  OUTLINED_FUNCTION_1_0();
  OUTLINED_FUNCTION_0_0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

- (void)initWithAccountManager:contactsProvider:cdpContext:.cold.2()
{
  OUTLINED_FUNCTION_1_0();
  OUTLINED_FUNCTION_0_0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

- (void)processObjectModel:completion:.cold.1()
{
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_0_0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
}

- (void)custodianSetupFlowControllerDidFinish:withError:.cold.1()
{
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_0_0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
}

- (void)custodianSetupFlowControllerDidFinish:withError:.cold.2()
{
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_1_1();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 0xCu);
}

- (void)custodianSetupFlowControllerDidFinish:withError:.cold.3()
{
  OUTLINED_FUNCTION_1_0();
  OUTLINED_FUNCTION_0_0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void __72__AAUICDPCustodianHook_custodianSetupFlowControllerDidFinish_withError___block_invoke_73_cold_1()
{
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_0_0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
}

void __72__AAUICDPCustodianHook_custodianSetupFlowControllerDidFinish_withError___block_invoke_73_cold_2()
{
  OUTLINED_FUNCTION_1_0();
  OUTLINED_FUNCTION_0_0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

- (void)_custodianInlineSetupFlowNavigationController
{
  OUTLINED_FUNCTION_3_0();
  OUTLINED_FUNCTION_1_1();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 0x16u);
}

- (void)_callSetupCompletionWithSuccess:(os_log_t)log error:.cold.1(char a1, uint64_t a2, os_log_t log)
{
  v6 = *MEMORY[0x1E69E9840];
  v3[0] = 67109378;
  v3[1] = a1 & 1;
  v4 = 2112;
  v5 = a2;
  _os_log_debug_impl(&dword_1C5355000, log, OS_LOG_TYPE_DEBUG, "AAUICDPCustodianHook: Calling completion with success=(%d) error=(%@)", v3, 0x12u);
}

- (void)_callSetupCompletionWithSuccess:error:.cold.2()
{
  OUTLINED_FUNCTION_1_0();
  OUTLINED_FUNCTION_0_0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

@end