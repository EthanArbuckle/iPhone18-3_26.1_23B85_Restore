@interface AAUIAuthKitRecoveryHook
- (AKAppleIDServerUIDataHarvester)serverDataHarvester;
- (BOOL)shouldMatchModel:(id)model;
- (RUIServerHookDelegate)delegate;
- (id)_cdpStateUIProvider;
- (void)harvestDataFromResponse:(id)response;
- (void)processObjectModel:(id)model completion:(id)completion;
@end

@implementation AAUIAuthKitRecoveryHook

- (void)processObjectModel:(id)model completion:(id)completion
{
  completionCopy = completion;
  serverDataHarvester = [(AAUIAuthKitRecoveryHook *)self serverDataHarvester];
  harvestedData = [serverDataHarvester harvestedData];

  [(AAUIAuthKitRecoveryHook *)self setServerHookResponse:0];
  [(AAUIAuthKitRecoveryHook *)self setServerDataHarvester:0];
  v8 = [MEMORY[0x1E698DC90] recoveryContextWithServerInfo:harvestedData];
  v9 = objc_alloc(MEMORY[0x1E698DD98]);
  _cdpStateUIProvider = [(AAUIAuthKitRecoveryHook *)self _cdpStateUIProvider];
  v11 = [v9 initWithContext:v8 uiProvider:_cdpStateUIProvider];

  v14[0] = MEMORY[0x1E69E9820];
  v14[1] = 3221225472;
  v14[2] = __57__AAUIAuthKitRecoveryHook_processObjectModel_completion___block_invoke;
  v14[3] = &unk_1E820C748;
  v14[4] = self;
  v15 = v8;
  v16 = completionCopy;
  v12 = completionCopy;
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
  delegate = [(AAUIAuthKitRecoveryHook *)self delegate];
  v5 = [delegate presentationContextForHook:self];
  v6 = [v3 initWithPresentingViewController:v5];

  [v6 setForceInlinePresentation:1];

  return v6;
}

- (BOOL)shouldMatchModel:(id)model
{
  modelCopy = model;
  serverDataHarvester = [(AAUIAuthKitRecoveryHook *)self serverDataHarvester];
  [serverDataHarvester harvestDataFromServerUIObjectModel:modelCopy];

  objc_opt_class();
  serverDataHarvester2 = [(AAUIAuthKitRecoveryHook *)self serverDataHarvester];
  harvestedData = [serverDataHarvester2 harvestedData];
  v8 = [harvestedData objectForKeyedSubscript:*MEMORY[0x1E698DB00]];
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

- (void)harvestDataFromResponse:(id)response
{
  responseCopy = response;
  serverDataHarvester = [(AAUIAuthKitRecoveryHook *)self serverDataHarvester];
  [serverDataHarvester harvestDataFromServerHTTPResponse:responseCopy];
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