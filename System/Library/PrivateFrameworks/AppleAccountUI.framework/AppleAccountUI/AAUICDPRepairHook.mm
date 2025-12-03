@interface AAUICDPRepairHook
- (BOOL)shouldMatchElement:(id)element;
- (BOOL)shouldMatchModel:(id)model;
- (RUIServerHookDelegate)delegate;
- (void)_performCDPRepairWithAttributes:(id)attributes completion:(id)completion;
- (void)processObjectModel:(id)model completion:(id)completion;
@end

@implementation AAUICDPRepairHook

- (BOOL)shouldMatchElement:(id)element
{
  name = [element name];
  v4 = [name isEqualToString:@"cdp:repair"];

  return v4;
}

- (BOOL)shouldMatchModel:(id)model
{
  modelCopy = model;
  objc_opt_class();
  clientInfo = [modelCopy clientInfo];

  v5 = [clientInfo objectForKeyedSubscript:*MEMORY[0x1E69C7058]];
  if (objc_opt_isKindOfClass())
  {
    v6 = v5;
  }

  else
  {
    v6 = 0;
  }

  v7 = [v6 isEqualToString:@"cdp:repair"];
  return v7;
}

- (void)processObjectModel:(id)model completion:(id)completion
{
  completionCopy = completion;
  clientInfo = [model clientInfo];
  [(AAUICDPRepairHook *)self _performCDPRepairWithAttributes:clientInfo completion:completionCopy];
}

- (void)_performCDPRepairWithAttributes:(id)attributes completion:(id)completion
{
  completionCopy = completion;
  attributesCopy = attributes;
  v8 = _AAUILogSystem();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_1C5355000, v8, OS_LOG_TYPE_DEFAULT, "Starting CDP flow", buf, 2u);
  }

  objc_opt_class();
  v9 = [attributesCopy objectForKeyedSubscript:*MEMORY[0x1E69C7068]];

  v10 = v9;
  if (objc_opt_isKindOfClass())
  {
    v11 = v10;
  }

  else
  {
    v11 = 0;
  }

  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  v13 = [WeakRetained presentationContextForHook:self];
  v14 = [AAUICDPHelper helperWithPresenter:v13];

  [v14 setForceInline:{objc_msgSend(v11, "BOOLValue")}];
  cdpStateControllerForPrimaryAccount = [v14 cdpStateControllerForPrimaryAccount];
  v17[0] = MEMORY[0x1E69E9820];
  v17[1] = 3221225472;
  v17[2] = __64__AAUICDPRepairHook__performCDPRepairWithAttributes_completion___block_invoke;
  v17[3] = &unk_1E820C308;
  v18 = completionCopy;
  v16 = completionCopy;
  [cdpStateControllerForPrimaryAccount repairCloudDataProtectionStateWithCompletion:v17];
}

void __64__AAUICDPRepairHook__performCDPRepairWithAttributes_completion___block_invoke(uint64_t a1, uint64_t a2, void *a3)
{
  v10 = *MEMORY[0x1E69E9840];
  v5 = a3;
  v6 = _AAUILogSystem();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    v8 = 138412290;
    v9 = v5;
    _os_log_impl(&dword_1C5355000, v6, OS_LOG_TYPE_DEFAULT, "CDP Repair flow finished: %@", &v8, 0xCu);
  }

  v7 = *(a1 + 32);
  if (v7)
  {
    (*(v7 + 16))(v7, a2, v5);
  }
}

- (RUIServerHookDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end