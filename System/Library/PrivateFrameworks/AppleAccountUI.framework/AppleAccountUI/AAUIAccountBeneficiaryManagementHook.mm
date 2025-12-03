@interface AAUIAccountBeneficiaryManagementHook
- (AAUIAccountBeneficiaryManagementHook)initWithAccountManager:(id)manager legacyContactsViewModel:(id)model;
- (BOOL)shouldMatchElement:(id)element;
- (BOOL)shouldMatchModel:(id)model;
- (RUIServerHookDelegate)delegate;
- (void)_showAccountBeneficiaryManagementWithServerAttributes:(id)attributes completion:(id)completion;
- (void)processObjectModel:(id)model completion:(id)completion;
@end

@implementation AAUIAccountBeneficiaryManagementHook

- (AAUIAccountBeneficiaryManagementHook)initWithAccountManager:(id)manager legacyContactsViewModel:(id)model
{
  managerCopy = manager;
  modelCopy = model;
  v12.receiver = self;
  v12.super_class = AAUIAccountBeneficiaryManagementHook;
  v9 = [(AAUIAccountBeneficiaryManagementHook *)&v12 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_accountManager, manager);
    objc_storeStrong(&v10->_legacyContactsViewModel, model);
  }

  return v10;
}

- (BOOL)shouldMatchElement:(id)element
{
  name = [element name];
  v4 = [name isEqualToString:@"inheritance:show"];

  return v4;
}

- (BOOL)shouldMatchModel:(id)model
{
  clientInfo = [model clientInfo];
  v4 = [clientInfo objectForKey:@"action"];
  v5 = [v4 isEqualToString:@"inheritance:show"];

  return v5;
}

- (void)processObjectModel:(id)model completion:(id)completion
{
  completionCopy = completion;
  clientInfo = [model clientInfo];
  [(AAUIAccountBeneficiaryManagementHook *)self _showAccountBeneficiaryManagementWithServerAttributes:clientInfo completion:completionCopy];
}

- (void)_showAccountBeneficiaryManagementWithServerAttributes:(id)attributes completion:(id)completion
{
  attributesCopy = attributes;
  completionCopy = completion;
  v20 = 0;
  v21 = &v20;
  v22 = 0x3032000000;
  v23 = __Block_byref_object_copy__12;
  v24 = __Block_byref_object_dispose__12;
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  v25 = [WeakRetained presentationContextForHook:self];

  v9 = [[AAUID2DEncryptionFlowContext alloc] initWithType:3];
  v10 = [AAUIManateeStateValidator alloc];
  v11 = [(AAUIManateeStateValidator *)v10 initWithFlowContext:v9 withPresentingViewController:v21[5]];
  objc_initWeak(&location, self);
  v14[0] = MEMORY[0x1E69E9820];
  v14[1] = 3221225472;
  v14[2] = __105__AAUIAccountBeneficiaryManagementHook__showAccountBeneficiaryManagementWithServerAttributes_completion___block_invoke;
  v14[3] = &unk_1E820BFD0;
  v12 = v11;
  v15 = v12;
  objc_copyWeak(&v18, &location);
  v17 = &v20;
  v13 = completionCopy;
  v16 = v13;
  [(AAUIManateeStateValidator *)v12 verifyAndRepairManateeWithCompletion:v14];

  objc_destroyWeak(&v18);
  objc_destroyWeak(&location);

  _Block_object_dispose(&v20, 8);
}

void __105__AAUIAccountBeneficiaryManagementHook__showAccountBeneficiaryManagementWithServerAttributes_completion___block_invoke(uint64_t a1, int a2, void *a3)
{
  v5 = a3;
  WeakRetained = objc_loadWeakRetained((a1 + 56));
  v7 = _AAUILogSystem();
  v8 = v7;
  if (a2)
  {
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
    {
      __105__AAUIAccountBeneficiaryManagementHook__showAccountBeneficiaryManagementWithServerAttributes_completion___block_invoke_cold_2(v8);
    }

    v9 = [AAUILegacyContactsViewFactory createWithViewModel:WeakRetained[2]];
    [*(*(*(a1 + 48) + 8) + 40) aaui_showViewController:v9 sender:WeakRetained];
    (*(*(a1 + 40) + 16))();
  }

  else
  {
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      __99__AAUIAccountRecoveryManagementHook__showAccountRecoveryManagementWithServerAttributes_completion___block_invoke_cold_1((a1 + 56), v5, v8);
    }

    (*(*(a1 + 40) + 16))();
  }
}

- (RUIServerHookDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end