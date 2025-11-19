@interface AAUIAuthKitRecoveryHook
- (AKAppleIDServerUIDataHarvester)serverDataHarvester;
- (BOOL)shouldMatchModel:(id)a3;
- (RUIServerHookDelegate)delegate;
- (id)_cdpStateUIProvider;
- (void)harvestDataFromResponse:(id)a3;
- (void)processObjectModel:(id)a3 completion:(id)a4;
@end

@implementation AAUIAuthKitRecoveryHook

- (void)processObjectModel:(id)a3 completion:(id)a4
{
  v5 = a4;
  v6 = [(AAUIAuthKitRecoveryHook *)self serverDataHarvester];
  v7 = [v6 harvestedData];

  [(AAUIAuthKitRecoveryHook *)self setServerHookResponse:0];
  [(AAUIAuthKitRecoveryHook *)self setServerDataHarvester:0];
  v8 = [MEMORY[0x1E698DC90] recoveryContextWithServerInfo:v7];
  v9 = objc_alloc(MEMORY[0x1E698DD98]);
  v10 = [(AAUIAuthKitRecoveryHook *)self _cdpStateUIProvider];
  v11 = [v9 initWithContext:v8 uiProvider:v10];

  v14[0] = MEMORY[0x1E69E9820];
  v14[1] = 3221225472;
  v14[2] = __57__AAUIAuthKitRecoveryHook_processObjectModel_completion___block_invoke;
  v14[3] = &unk_1E820C748;
  v14[4] = self;
  v15 = v8;
  v16 = v5;
  v12 = v5;
  v13 = v8;
  [v11 presentNativeRecoveryUIWithCompletion:v14];
}

void __57__AAUIAuthKitRecoveryHook_processObjectModel_completion___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v19 = *MEMORY[0x1E69E9840];
  v5 = a2;
  v6 = a3;
  v7 = [MEMORY[0x1E698DD98] shouldSendServerResponseForRecoveredInfo:v5 withRecoveryError:v6];
  v8 = _AAUILogSystem();
  v9 = os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT);
  if (v7)
  {
    if (v9)
    {
      *buf = 0;
      _os_log_impl(&dword_1C5355000, v8, OS_LOG_TYPE_DEFAULT, "Recovered info, proceeding with rest of the flow...", buf, 2u);
    }

    v10 = objc_alloc_init(MEMORY[0x1E69C7038]);
    [*(a1 + 32) setServerHookResponse:v10];

    v11 = [MEMORY[0x1E698DD98] requestForRecoveryCompletionWithContext:*(a1 + 40) recoveredInfo:v5 recoveryError:v6];
    v12 = [*(a1 + 32) serverHookResponse];
    [v12 setContinuationRequest:v11];

    (*(*(a1 + 48) + 16))();
  }

  else
  {
    if (v9)
    {
      *buf = 138412290;
      v18 = v6;
      _os_log_impl(&dword_1C5355000, v8, OS_LOG_TYPE_DEFAULT, "Recovery flow ended with client error... %@", buf, 0xCu);
    }

    v13 = [*(a1 + 32) delegate];
    v14[0] = MEMORY[0x1E69E9820];
    v14[1] = 3221225472;
    v14[2] = __57__AAUIAuthKitRecoveryHook_processObjectModel_completion___block_invoke_24;
    v14[3] = &unk_1E820B7A8;
    v16 = *(a1 + 48);
    v15 = v6;
    [v13 dismissObjectModelsAnimated:1 completion:v14];
  }
}

- (id)_cdpStateUIProvider
{
  v3 = objc_alloc(MEMORY[0x1E6997850]);
  v4 = [(AAUIAuthKitRecoveryHook *)self delegate];
  v5 = [v4 presentationContextForHook:self];
  v6 = [v3 initWithPresentingViewController:v5];

  [v6 setForceInlinePresentation:1];

  return v6;
}

- (BOOL)shouldMatchModel:(id)a3
{
  v4 = a3;
  v5 = [(AAUIAuthKitRecoveryHook *)self serverDataHarvester];
  [v5 harvestDataFromServerUIObjectModel:v4];

  objc_opt_class();
  v6 = [(AAUIAuthKitRecoveryHook *)self serverDataHarvester];
  v7 = [v6 harvestedData];
  v8 = [v7 objectForKeyedSubscript:*MEMORY[0x1E698DB00]];
  if (objc_opt_isKindOfClass())
  {
    v9 = v8;
  }

  else
  {
    v9 = 0;
  }

  if ([v9 isEqualToString:*MEMORY[0x1E698DB10]])
  {
    v10 = 1;
  }

  else
  {
    v10 = [v9 isEqualToString:*MEMORY[0x1E698DB18]];
  }

  return v10;
}

- (void)harvestDataFromResponse:(id)a3
{
  v4 = a3;
  v5 = [(AAUIAuthKitRecoveryHook *)self serverDataHarvester];
  [v5 harvestDataFromServerHTTPResponse:v4];
}

- (AKAppleIDServerUIDataHarvester)serverDataHarvester
{
  serverDataHarvester = self->_serverDataHarvester;
  if (!serverDataHarvester)
  {
    v4 = objc_alloc_init(MEMORY[0x1E698DE90]);
    v5 = self->_serverDataHarvester;
    self->_serverDataHarvester = v4;

    serverDataHarvester = self->_serverDataHarvester;
  }

  return serverDataHarvester;
}

- (RUIServerHookDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end