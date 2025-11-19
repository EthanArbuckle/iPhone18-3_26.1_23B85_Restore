@interface AAUIAccountRecoveryManagementHook
- (AAUIAccountRecoveryManagementHook)initWithAccountManager:(id)a3 recoveryContactsViewModel:(id)a4;
- (BOOL)shouldMatchElement:(id)a3;
- (BOOL)shouldMatchModel:(id)a3;
- (RUIServerHookDelegate)delegate;
- (unint64_t)_presentationTypeForString:(id)a3;
- (void)_presentWithBasePresentationMode:(id)a3 fromCurrentViewController:(id)a4 completion:(id)a5;
- (void)_showAccountRecoveryManagementWithServerAttributes:(id)a3 completion:(id)a4;
- (void)processObjectModel:(id)a3 completion:(id)a4;
@end

@implementation AAUIAccountRecoveryManagementHook

- (AAUIAccountRecoveryManagementHook)initWithAccountManager:(id)a3 recoveryContactsViewModel:(id)a4
{
  v7 = a3;
  v8 = a4;
  v12.receiver = self;
  v12.super_class = AAUIAccountRecoveryManagementHook;
  v9 = [(AAUIAccountRecoveryManagementHook *)&v12 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_accountManager, a3);
    objc_storeStrong(&v10->_recoveryContactsViewModel, a4);
  }

  return v10;
}

- (BOOL)shouldMatchElement:(id)a3
{
  v3 = [a3 name];
  v4 = [v3 isEqualToString:@"recoveryOptions:show"];

  return v4;
}

- (BOOL)shouldMatchModel:(id)a3
{
  v3 = [a3 clientInfo];
  v4 = [v3 objectForKey:*MEMORY[0x1E69C7058]];
  v5 = [v4 isEqualToString:@"recoveryOptions:show"];

  return v5;
}

- (void)processObjectModel:(id)a3 completion:(id)a4
{
  v6 = a4;
  v7 = [a3 clientInfo];
  [(AAUIAccountRecoveryManagementHook *)self _showAccountRecoveryManagementWithServerAttributes:v7 completion:v6];
}

- (void)_showAccountRecoveryManagementWithServerAttributes:(id)a3 completion:(id)a4
{
  v6 = a3;
  v7 = a4;
  objc_opt_class();
  v8 = [v6 objectForKeyedSubscript:*MEMORY[0x1E69C7088]];
  if (objc_opt_isKindOfClass())
  {
    v9 = v8;
  }

  else
  {
    v9 = 0;
  }

  v10 = _AAUILogSystem();
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEBUG))
  {
    [AAUIAccountRecoveryManagementHook _showAccountRecoveryManagementWithServerAttributes:v9 completion:v10];
  }

  self->_presentationType = [(AAUIAccountRecoveryManagementHook *)self _presentationTypeForString:v9];
  v23 = 0;
  v24 = &v23;
  v25 = 0x3032000000;
  v26 = __Block_byref_object_copy__2;
  v27 = __Block_byref_object_dispose__2;
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  v28 = [WeakRetained presentationContextForHook:self];

  v12 = [[AAUID2DEncryptionFlowContext alloc] initWithType:2];
  v13 = [AAUIManateeStateValidator alloc];
  v14 = [(AAUIManateeStateValidator *)v13 initWithFlowContext:v12 withPresentingViewController:v24[5]];
  objc_initWeak(&location, self);
  v17[0] = MEMORY[0x1E69E9820];
  v17[1] = 3221225472;
  v17[2] = __99__AAUIAccountRecoveryManagementHook__showAccountRecoveryManagementWithServerAttributes_completion___block_invoke;
  v17[3] = &unk_1E820BFD0;
  v15 = v14;
  v18 = v15;
  objc_copyWeak(&v21, &location);
  v20 = &v23;
  v16 = v7;
  v19 = v16;
  [(AAUIManateeStateValidator *)v15 repairIfPrimaryAppleAccountIsCDP:v17];

  objc_destroyWeak(&v21);
  objc_destroyWeak(&location);

  _Block_object_dispose(&v23, 8);
}

void __99__AAUIAccountRecoveryManagementHook__showAccountRecoveryManagementWithServerAttributes_completion___block_invoke(uint64_t a1, int a2, void *a3)
{
  v5 = a3;
  WeakRetained = objc_loadWeakRetained((a1 + 56));
  v7 = _AAUILogSystem();
  v8 = v7;
  if (WeakRetained && a2)
  {
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
    {
      __99__AAUIAccountRecoveryManagementHook__showAccountRecoveryManagementWithServerAttributes_completion___block_invoke_cold_2(v8);
    }

    v9 = [AAUIRecoveryContactsViewFactory createWithViewModel:WeakRetained[2]];
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

- (void)_presentWithBasePresentationMode:(id)a3 fromCurrentViewController:(id)a4 completion:(id)a5
{
  v30 = *MEMORY[0x1E69E9840];
  v7 = a3;
  v8 = a4;
  v9 = a5;
  objc_opt_class();
  objc_opt_class();
  v10 = v8;
  if (objc_opt_isKindOfClass())
  {
    v11 = v10;
  }

  else
  {
    v11 = 0;
  }

  objc_opt_class();
  objc_opt_class();
  v12 = [v11 hostViewController];
  if (objc_opt_isKindOfClass())
  {
    v13 = v12;
  }

  else
  {
    v13 = 0;
  }

  v14 = _AAUILogSystem();
  if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412802;
    v25 = v10;
    v26 = 2112;
    v27 = v11;
    v28 = 2112;
    v29 = v13;
    _os_log_impl(&dword_1C5355000, v14, OS_LOG_TYPE_DEFAULT, "Base presentation was specified. Dismissing current vc %@ as modal %@ and showing on host %@.", buf, 0x20u);
  }

  v19[0] = MEMORY[0x1E69E9820];
  v19[1] = 3221225472;
  v19[2] = __107__AAUIAccountRecoveryManagementHook__presentWithBasePresentationMode_fromCurrentViewController_completion___block_invoke;
  v19[3] = &unk_1E820BFF8;
  v20 = v10;
  v21 = v13;
  v22 = v7;
  v23 = v9;
  v15 = v9;
  v16 = v7;
  v17 = v13;
  v18 = v10;
  [v18 dismissViewControllerAnimated:1 completion:v19];
}

uint64_t __107__AAUIAccountRecoveryManagementHook__presentWithBasePresentationMode_fromCurrentViewController_completion___block_invoke(uint64_t a1)
{
  v2 = _AAUILogSystem();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEBUG))
  {
    __107__AAUIAccountRecoveryManagementHook__presentWithBasePresentationMode_fromCurrentViewController_completion___block_invoke_cold_1(a1, v2);
  }

  [*(a1 + 40) aaui_pushViewController:*(a1 + 48) animated:1];
  return (*(*(a1 + 56) + 16))();
}

- (unint64_t)_presentationTypeForString:(id)a3
{
  v3 = a3;
  if ([v3 isEqualToString:*MEMORY[0x1E69C7078]])
  {
    v4 = 0;
  }

  else if ([v3 isEqualToString:*MEMORY[0x1E69C7080]])
  {
    v4 = 1;
  }

  else if ([v3 isEqualToString:*MEMORY[0x1E69C7090]])
  {
    v4 = 2;
  }

  else
  {
    v4 = 1;
  }

  return v4;
}

- (RUIServerHookDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

- (void)_showAccountRecoveryManagementWithServerAttributes:(uint64_t)a1 completion:(NSObject *)a2 .cold.1(uint64_t a1, NSObject *a2)
{
  v4 = *MEMORY[0x1E69E9840];
  v2 = 138412290;
  v3 = a1;
  _os_log_debug_impl(&dword_1C5355000, a2, OS_LOG_TYPE_DEBUG, "Found presentation type %@ from attributes", &v2, 0xCu);
}

void __99__AAUIAccountRecoveryManagementHook__showAccountRecoveryManagementWithServerAttributes_completion___block_invoke_cold_1(id *a1, uint64_t a2, NSObject *a3)
{
  v10 = *MEMORY[0x1E69E9840];
  WeakRetained = objc_loadWeakRetained(a1);
  v6 = 138412546;
  v7 = objc_opt_class();
  v8 = 2112;
  v9 = a2;
  _os_log_error_impl(&dword_1C5355000, a3, OS_LOG_TYPE_ERROR, "%@ - Unable to validate CDP state. Stopping flow with error %@", &v6, 0x16u);
}

void __107__AAUIAccountRecoveryManagementHook__presentWithBasePresentationMode_fromCurrentViewController_completion___block_invoke_cold_1(uint64_t a1, NSObject *a2)
{
  v8 = *MEMORY[0x1E69E9840];
  v2 = *(a1 + 32);
  v3 = *(a1 + 40);
  v4 = 138412546;
  v5 = v2;
  v6 = 2112;
  v7 = v3;
  _os_log_debug_impl(&dword_1C5355000, a2, OS_LOG_TYPE_DEBUG, "Finished dismissing currentViewController %@, now showing host %@", &v4, 0x16u);
}

@end