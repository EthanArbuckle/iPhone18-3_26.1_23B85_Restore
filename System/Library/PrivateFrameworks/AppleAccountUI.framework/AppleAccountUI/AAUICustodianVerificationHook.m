@interface AAUICustodianVerificationHook
- (AAUICustodianVerificationHook)initWithAccountManager:(id)a3;
- (BOOL)shouldMatchElement:(id)a3;
- (BOOL)shouldMatchModel:(id)a3;
- (RUIServerHookDelegate)delegate;
- (void)_cancelFlow;
- (void)_dismissUI;
- (void)_displayCustodianFetchErrorAlert;
- (void)_displayListOfCustodiansWithContacts:(id)a3;
- (void)_processAttributes:(id)a3;
- (void)_verifyCustodianWithServerAttributes:(id)a3 completion:(id)a4;
- (void)processElement:(id)a3 attributes:(id)a4 objectModel:(id)a5 completion:(id)a6;
- (void)processObjectModel:(id)a3 completion:(id)a4;
- (void)tableWelcomeViewControllerDidTapPrimaryButton;
- (void)tableWelcomeViewControllerDidTapSecondaryButton;
@end

@implementation AAUICustodianVerificationHook

- (AAUICustodianVerificationHook)initWithAccountManager:(id)a3
{
  v5 = a3;
  v9.receiver = self;
  v9.super_class = AAUICustodianVerificationHook;
  v6 = [(AAUICustodianVerificationHook *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_accountManager, a3);
  }

  return v7;
}

- (BOOL)shouldMatchElement:(id)a3
{
  v3 = [a3 name];
  v4 = [v3 isEqualToString:@"custodian:verify"];

  return v4;
}

- (BOOL)shouldMatchModel:(id)a3
{
  v3 = [a3 clientInfo];
  v4 = [v3 objectForKey:*MEMORY[0x1E69C7058]];
  v5 = [v4 isEqualToString:@"custodian:verify"];

  return v5;
}

- (void)_processAttributes:(id)a3
{
  v4 = a3;
  objc_opt_class();
  v5 = [v4 objectForKeyedSubscript:*MEMORY[0x1E69C7068]];

  v7 = v5;
  if (objc_opt_isKindOfClass())
  {
    v6 = v7;
  }

  else
  {
    v6 = 0;
  }

  self->_forceInline = [v6 BOOLValue];
}

- (void)processElement:(id)a3 attributes:(id)a4 objectModel:(id)a5 completion:(id)a6
{
  v9 = a6;
  v10 = a3;
  [(AAUICustodianVerificationHook *)self _processAttributes:a4];
  v11 = [v10 name];

  [(AAUICustodianVerificationHook *)self _verifyCustodianWithServerAttributes:v11 completion:v9];
}

- (void)processObjectModel:(id)a3 completion:(id)a4
{
  v6 = a4;
  v7 = a3;
  v8 = [v7 clientInfo];
  [(AAUICustodianVerificationHook *)self _processAttributes:v8];

  v10 = [v7 clientInfo];

  v9 = [v10 objectForKeyedSubscript:@"custodian:verify"];
  [(AAUICustodianVerificationHook *)self _verifyCustodianWithServerAttributes:v9 completion:v6];
}

- (void)_verifyCustodianWithServerAttributes:(id)a3 completion:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = _AAUILogSystem();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
  {
    [AAUICustodianVerificationHook _verifyCustodianWithServerAttributes:v6 completion:v8];
  }

  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  v10 = [WeakRetained presentationContextForHook:self];
  presentingViewController = self->_presentingViewController;
  self->_presentingViewController = v10;

  objc_initWeak(&location, self);
  v12 = objc_alloc_init(AAUIContactsProvider);
  v14[0] = MEMORY[0x1E69E9820];
  v14[1] = 3221225472;
  v14[2] = __81__AAUICustodianVerificationHook__verifyCustodianWithServerAttributes_completion___block_invoke;
  v14[3] = &unk_1E820CFA0;
  objc_copyWeak(&v16, &location);
  v13 = v7;
  v14[4] = self;
  v15 = v13;
  [(AAContactsProvider *)v12 fetchMyWalrusEligibleCustodians:v14];

  objc_destroyWeak(&v16);
  objc_destroyWeak(&location);
}

void __81__AAUICustodianVerificationHook__verifyCustodianWithServerAttributes_completion___block_invoke(uint64_t a1, void *a2, uint64_t a3)
{
  v5 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  if (a3)
  {
    v7 = _AAUILogSystem();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      __81__AAUICustodianVerificationHook__verifyCustodianWithServerAttributes_completion___block_invoke_cold_1();
    }

    if (WeakRetained)
    {
      block[0] = MEMORY[0x1E69E9820];
      block[1] = 3221225472;
      block[2] = __81__AAUICustodianVerificationHook__verifyCustodianWithServerAttributes_completion___block_invoke_38;
      block[3] = &unk_1E820B8F0;
      block[4] = WeakRetained;
      dispatch_async(MEMORY[0x1E69E96A0], block);
    }

    v8 = *(a1 + 40);
    v9 = MEMORY[0x1E696ABC0];
    v10 = *MEMORY[0x1E698B768];
    v11 = -7000;
LABEL_7:
    v12 = [v9 errorWithDomain:v10 code:v11 userInfo:0];
    (*(v8 + 16))(v8, 0, v12);

    goto LABEL_8;
  }

  if (![v5 count])
  {
    v17 = _AAUILogSystem();
    if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
    {
      __81__AAUICustodianVerificationHook__verifyCustodianWithServerAttributes_completion___block_invoke_cold_2();
    }

    v8 = *(a1 + 40);
    v9 = MEMORY[0x1E696ABC0];
    v10 = *MEMORY[0x1E698B768];
    v11 = -7003;
    goto LABEL_7;
  }

  v13 = *(a1 + 40);
  if (WeakRetained)
  {
    v14 = [*(a1 + 40) copy];
    v15 = *(a1 + 32);
    v16 = *(v15 + 8);
    *(v15 + 8) = v14;

    v19[0] = MEMORY[0x1E69E9820];
    v19[1] = 3221225472;
    v19[2] = __81__AAUICustodianVerificationHook__verifyCustodianWithServerAttributes_completion___block_invoke_41;
    v19[3] = &unk_1E820BEB8;
    v19[4] = WeakRetained;
    v20 = v5;
    dispatch_async(MEMORY[0x1E69E96A0], v19);
  }

  else
  {
    v18 = [MEMORY[0x1E696ABC0] errorWithDomain:*MEMORY[0x1E698B768] code:-7000 userInfo:0];
    (*(v13 + 16))(v13, 0, v18);
  }

LABEL_8:
}

- (void)_displayCustodianFetchErrorAlert
{
  v3 = MEMORY[0x1E69DC650];
  v4 = [MEMORY[0x1E696AAE8] bundleForClass:objc_opt_class()];
  v5 = [v4 localizedStringForKey:@"CANNOT_ADD_ADP_ALERT_TITLE" value:&stru_1F447F790 table:@"Localizable"];
  v6 = [MEMORY[0x1E696AAE8] bundleForClass:objc_opt_class()];
  v7 = [v6 localizedStringForKey:@"ERROR_DISPLAYING_HEALTHY_CUSTODIANS" value:&stru_1F447F790 table:@"Localizable"];
  v11 = [v3 alertWithTitle:v5 message:v7];

  v8 = [MEMORY[0x1E696AAE8] bundleForClass:objc_opt_class()];
  v9 = [v8 localizedStringForKey:@"OK" value:&stru_1F447F790 table:@"Localizable"];

  v10 = [MEMORY[0x1E69DC648] actionWithTitle:v9 style:0 handler:&__block_literal_global_14];
  [v11 addAction:v10];

  [(UIViewController *)self->_presentingViewController presentViewController:v11 animated:1 completion:0];
}

void __65__AAUICustodianVerificationHook__displayCustodianFetchErrorAlert__block_invoke()
{
  v0 = _AAUILogSystem();
  if (os_log_type_enabled(v0, OS_LOG_TYPE_DEFAULT))
  {
    *v1 = 0;
    _os_log_impl(&dword_1C5355000, v0, OS_LOG_TYPE_DEFAULT, "User tapped on OK button of custodian error alert.", v1, 2u);
  }
}

- (void)_displayListOfCustodiansWithContacts:(id)a3
{
  v4 = a3;
  v14 = [[AAUICustodiansListViewController alloc] initWithContacts:v4];

  v5 = [objc_alloc(MEMORY[0x1E69DC708]) initWithBarButtonSystemItem:1 target:self action:sel__cancelFlow];
  v6 = [(OBBaseWelcomeController *)v14 navigationItem];
  [v6 setLeftBarButtonItem:v5];

  [(AAUIOBTableWelcomeController *)v14 setDelegate:self];
  v7 = [AAUINavigationItemSpinnerController alloc];
  v8 = [(OBBaseWelcomeController *)v14 navigationItem];
  v9 = [(AAUINavigationItemSpinnerController *)v7 initWithNavigationItem:v8 hideBackButton:1];
  spinnerController = self->_spinnerController;
  self->_spinnerController = v9;

  if ([(AAUICustodianVerificationHook *)self _shouldPresentInline])
  {
    [(UIViewController *)self->_presentingViewController aaui_showViewController:v14 sender:self];
  }

  else
  {
    v11 = [objc_alloc(MEMORY[0x1E69DCCD8]) initWithRootViewController:v14];
    v12 = [MEMORY[0x1E69DC938] currentDevice];
    v13 = [v12 userInterfaceIdiom];

    if (v13 == 1)
    {
      [v11 setModalPresentationStyle:2];
    }

    [(UIViewController *)self->_presentingViewController presentViewController:v11 animated:1 completion:0];
  }
}

- (void)_cancelFlow
{
  v3 = _AAUILogSystem();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEBUG))
  {
    [AAUICustodianVerificationHook _cancelFlow];
  }

  [(AAUINavigationItemSpinnerController *)self->_spinnerController startSpinning];
  hookCompletion = self->_hookCompletion;
  if (hookCompletion)
  {
    v5 = [MEMORY[0x1E696ABC0] errorWithDomain:*MEMORY[0x1E69977D8] code:-5307 userInfo:0];
    hookCompletion[2](hookCompletion, 0, v5);
  }

  if (![(AAUICustodianVerificationHook *)self _shouldPresentInline])
  {
    v6 = _AAUILogSystem();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEBUG))
    {
      [AAUICustodianVerificationHook _cancelFlow];
    }

    [(AAUICustodianVerificationHook *)self _dismissUI];
  }
}

- (void)_dismissUI
{
  v3 = *MEMORY[0x1E69E9840];
  v2[0] = 67109120;
  v2[1] = a1 & 1;
  _os_log_debug_impl(&dword_1C5355000, a2, OS_LOG_TYPE_DEBUG, "Dismissing custodian verification UI, was modally presented: %d", v2, 8u);
}

- (void)tableWelcomeViewControllerDidTapPrimaryButton
{
  v3 = _AAUILogSystem();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEBUG))
  {
    [AAUICustodianVerificationHook tableWelcomeViewControllerDidTapPrimaryButton];
  }

  [(AAUINavigationItemSpinnerController *)self->_spinnerController startSpinning];
  hookCompletion = self->_hookCompletion;
  if (hookCompletion)
  {
    hookCompletion[2](hookCompletion, 1, 0);
  }

  if (![(AAUICustodianVerificationHook *)self _shouldPresentInline])
  {
    v5 = _AAUILogSystem();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
    {
      [AAUICustodianVerificationHook _cancelFlow];
    }

    [(AAUICustodianVerificationHook *)self _dismissUI];
  }
}

- (void)tableWelcomeViewControllerDidTapSecondaryButton
{
  v3 = _AAUILogSystem();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEBUG))
  {
    [AAUICustodianVerificationHook tableWelcomeViewControllerDidTapSecondaryButton];
  }

  [AAUISettingsHelper showAccountRecoveryFromViewController:self->_presentingViewController accountManager:self->_accountManager];
}

- (RUIServerHookDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

- (void)_verifyCustodianWithServerAttributes:(uint64_t)a1 completion:(NSObject *)a2 .cold.1(uint64_t a1, NSObject *a2)
{
  v4 = *MEMORY[0x1E69E9840];
  v2 = 138412290;
  v3 = a1;
  _os_log_debug_impl(&dword_1C5355000, a2, OS_LOG_TYPE_DEBUG, "custodian action received - %@, getting custodians", &v2, 0xCu);
}

@end