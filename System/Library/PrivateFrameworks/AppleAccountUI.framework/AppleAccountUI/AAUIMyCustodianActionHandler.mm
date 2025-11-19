@interface AAUIMyCustodianActionHandler
- (AAUIMyCustodianActionHandler)initWithAccountManager:(id)a3 localContact:(id)a4;
- (BOOL)_isWalrusEnabled;
- (id)_recoveryFactorController;
- (void)_addRecoveryContact;
- (void)_checkRecoveryContactAndRecoveryKeyStatus:(id)a3;
- (void)_continueDoingDestructiveAction:(id)a3 specifier:(id)a4 account:(id)a5;
- (void)_dismissAndPopFromRecoveryContactRemovedScreen;
- (void)_dismissAndStartHealthCheck;
- (void)_dismissRecoveryContactRemovedScreenWithCompletion:(id)a3;
- (void)_displayCustodianDeleteNotAllowedAlert;
- (void)_displayRatchetGenericErrorAlert;
- (void)_doCustodianRemove;
- (void)_performHealthCheck;
- (void)_popToAccountRecoveryScreen;
- (void)_setupRecoveryKey;
- (void)_stopSpinners;
- (void)_updateUIAfterDeleteWithHasRecoveryContact:(BOOL)a3 hasRecoveryKey:(BOOL)a4;
- (void)doDestructiveAction:(id)a3 specifier:(id)a4;
@end

@implementation AAUIMyCustodianActionHandler

- (AAUIMyCustodianActionHandler)initWithAccountManager:(id)a3 localContact:(id)a4
{
  v7 = a3;
  v8 = a4;
  v17.receiver = self;
  v17.super_class = AAUIMyCustodianActionHandler;
  v9 = [(AAUIMyCustodianActionHandler *)&v17 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_contact, a4);
    objc_storeStrong(&v10->_accountManager, a3);
    v11 = objc_opt_new();
    spinnerManager = v10->_spinnerManager;
    v10->_spinnerManager = v11;

    v13 = objc_alloc_init(MEMORY[0x1E698DD40]);
    v14 = [[AAUIDTOHelper alloc] initWithDTOController:v13];
    dtoHelper = v10->_dtoHelper;
    v10->_dtoHelper = v14;
  }

  return v10;
}

- (void)doDestructiveAction:(id)a3 specifier:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [(AIDAAccountManager *)self->_accountManager accounts];
  v9 = [v8 objectForKeyedSubscript:*MEMORY[0x1E698C218]];

  if (v9)
  {
    dtoHelper = self->_dtoHelper;
    v11 = [v9 aa_altDSID];
    v13[0] = MEMORY[0x1E69E9820];
    v13[1] = 3221225472;
    v13[2] = __62__AAUIMyCustodianActionHandler_doDestructiveAction_specifier___block_invoke;
    v13[3] = &unk_1E820DA18;
    v13[4] = self;
    v14 = v6;
    v15 = v7;
    v16 = v9;
    [(AAUIDTOHelper *)dtoHelper shouldGateUsingRatchetForAltDSID:v11 completion:v13];
  }

  else
  {
    v12 = _AAUILogSystem();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_DEBUG))
    {
      [AAUIRecoveryFactorController startAddingRecoveryContact];
    }
  }
}

void __62__AAUIMyCustodianActionHandler_doDestructiveAction_specifier___block_invoke(uint64_t a1, int a2)
{
  if (a2)
  {
    v3 = _AAUILogSystem();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_DEBUG))
    {
      __62__AAUIMyCustodianActionHandler_doDestructiveAction_specifier___block_invoke_cold_1();
    }

    if ([*(*(a1 + 32) + 48) isDTOGatingEnabled])
    {
      v4 = _AAUILogSystem();
      if (os_log_type_enabled(v4, OS_LOG_TYPE_DEBUG))
      {
        __62__AAUIMyCustodianActionHandler_doDestructiveAction_specifier___block_invoke_cold_2();
      }

      v5 = [*(*(a1 + 32) + 48) makeRatchetContextWithPresentationContext:*(*(a1 + 32) + 32) DTOContextType:2];
      v21[0] = MEMORY[0x1E69E9820];
      v21[1] = 3221225472;
      v21[2] = __62__AAUIMyCustodianActionHandler_doDestructiveAction_specifier___block_invoke_36;
      v21[3] = &unk_1E820D9F0;
      v15 = *(a1 + 32);
      v6 = *(v15 + 48);
      v7 = *(&v15 + 1);
      v8 = *(a1 + 48);
      v9 = *(a1 + 56);
      *&v10 = v8;
      *(&v10 + 1) = v9;
      v22 = v15;
      v23 = v10;
      [v6 shouldAllowOpForContext:v5 completion:v21];
    }

    else
    {
      v18[0] = MEMORY[0x1E69E9820];
      v18[1] = 3221225472;
      v18[2] = __62__AAUIMyCustodianActionHandler_doDestructiveAction_specifier___block_invoke_2;
      v18[3] = &unk_1E820D9C8;
      v16 = *(a1 + 32);
      v11 = *(&v16 + 1);
      v12 = *(a1 + 48);
      v13 = *(a1 + 56);
      *&v14 = v12;
      *(&v14 + 1) = v13;
      v19 = v16;
      v20 = v14;
      dispatch_async(MEMORY[0x1E69E96A0], v18);
    }
  }

  else
  {
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __62__AAUIMyCustodianActionHandler_doDestructiveAction_specifier___block_invoke_40;
    block[3] = &unk_1E820B8F0;
    block[4] = *(a1 + 32);
    dispatch_async(MEMORY[0x1E69E96A0], block);
  }
}

void __62__AAUIMyCustodianActionHandler_doDestructiveAction_specifier___block_invoke_36(uint64_t a1, int a2, void *a3)
{
  v5 = a3;
  v6 = _AAUILogSystem();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEBUG))
  {
    __58__AAUIRecoveryFactorController_startAddingRecoveryContact__block_invoke_35_cold_1(a2, v5, v6);
  }

  if (a2)
  {
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __62__AAUIMyCustodianActionHandler_doDestructiveAction_specifier___block_invoke_37;
    block[3] = &unk_1E820D9C8;
    v11 = *(a1 + 32);
    v7 = *(&v11 + 1);
    v8 = *(a1 + 48);
    v9 = *(a1 + 56);
    *&v10 = v8;
    *(&v10 + 1) = v9;
    v13 = v11;
    v14 = v10;
    dispatch_async(MEMORY[0x1E69E96A0], block);
  }
}

uint64_t __62__AAUIMyCustodianActionHandler_doDestructiveAction_specifier___block_invoke_2(uint64_t a1)
{
  v2 = _AAUILogSystem();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEBUG))
  {
    __58__AAUIRecoveryFactorController_startAddingRecoveryContact__block_invoke_2_cold_1();
  }

  return [*(a1 + 32) _continueDoingDestructiveAction:*(a1 + 40) specifier:*(a1 + 48) account:*(a1 + 56)];
}

uint64_t __62__AAUIMyCustodianActionHandler_doDestructiveAction_specifier___block_invoke_40(uint64_t a1)
{
  v2 = _AAUILogSystem();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEBUG))
  {
    __58__AAUIRecoveryFactorController_startAddingRecoveryContact__block_invoke_39_cold_1();
  }

  return [*(a1 + 32) _displayCustodianDeleteNotAllowedAlert];
}

- (void)_continueDoingDestructiveAction:(id)a3 specifier:(id)a4 account:(id)a5
{
  v23 = *MEMORY[0x1E69E9840];
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v11 = _AAUILogSystem();
  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
  {
    v12 = [(AALocalContactInfo *)self->_contact handle];
    *buf = 138412290;
    v22 = v12;
    _os_log_impl(&dword_1C5355000, v11, OS_LOG_TYPE_DEFAULT, "Removing custodian %@.", buf, 0xCu);
  }

  spinnerManager = self->_spinnerManager;
  v14 = [v9 identifier];
  [(AAUISpinnerManager *)spinnerManager startSpinnerInSpecifier:v9 forKey:v14];

  objc_initWeak(buf, self);
  v15 = [(AAUIMyCustodianActionHandler *)self _isWalrusEnabled];
  v16 = objc_opt_new();
  v18[0] = MEMORY[0x1E69E9820];
  v18[1] = 3221225472;
  v18[2] = __82__AAUIMyCustodianActionHandler__continueDoingDestructiveAction_specifier_account___block_invoke;
  v18[3] = &unk_1E820DA40;
  objc_copyWeak(&v20, buf);
  v18[4] = self;
  v17 = v8;
  v19 = v17;
  [v16 aaui_authenticateAccount:v10 forceInteraction:v15 presentingViewController:v17 completion:v18];

  objc_destroyWeak(&v20);
  objc_destroyWeak(buf);
}

void __82__AAUIMyCustodianActionHandler__continueDoingDestructiveAction_specifier_account___block_invoke(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = a3;
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  v7 = _AAUILogSystem();
  v8 = v7;
  if (!a2 || v5)
  {
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      __82__AAUIMyCustodianActionHandler__continueDoingDestructiveAction_specifier_account___block_invoke_cold_1();
    }

    [WeakRetained _stopSpinners];
  }

  else
  {
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      *v9 = 0;
      _os_log_impl(&dword_1C5355000, v8, OS_LOG_TYPE_DEFAULT, "Authentication successful, continue removing custodian...", v9, 2u);
    }

    objc_storeStrong((*(a1 + 32) + 32), *(a1 + 40));
    [WeakRetained _doCustodianRemove];
  }
}

- (void)_doCustodianRemove
{
  objc_initWeak(&location, self);
  v3 = objc_opt_new();
  v4 = [(AALocalContactInfo *)self->_contact custodianID];
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __50__AAUIMyCustodianActionHandler__doCustodianRemove__block_invoke;
  v5[3] = &unk_1E820C3A0;
  objc_copyWeak(&v6, &location);
  v5[4] = self;
  [v3 removeCustodian:v4 completion:v5];

  objc_destroyWeak(&v6);
  objc_destroyWeak(&location);
}

void __50__AAUIMyCustodianActionHandler__doCustodianRemove__block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  if (v3)
  {
    v5 = _AAUILogSystem();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      __50__AAUIMyCustodianActionHandler__doCustodianRemove__block_invoke_cold_1();
    }

    [WeakRetained _stopSpinners];
  }

  else
  {
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __50__AAUIMyCustodianActionHandler__doCustodianRemove__block_invoke_45;
    block[3] = &unk_1E820DA90;
    block[4] = *(a1 + 32);
    objc_copyWeak(&v7, (a1 + 40));
    block[5] = WeakRetained;
    dispatch_async(MEMORY[0x1E69E96A0], block);
    objc_destroyWeak(&v7);
  }
}

void __50__AAUIMyCustodianActionHandler__doCustodianRemove__block_invoke_45(uint64_t a1)
{
  if ([*(a1 + 32) _isWalrusEnabled])
  {
    v2 = *(a1 + 32);
    v4[0] = MEMORY[0x1E69E9820];
    v4[1] = 3221225472;
    v4[2] = __50__AAUIMyCustodianActionHandler__doCustodianRemove__block_invoke_2;
    v4[3] = &unk_1E820DA68;
    objc_copyWeak(&v5, (a1 + 48));
    [v2 _checkRecoveryContactAndRecoveryKeyStatus:v4];
    objc_destroyWeak(&v5);
  }

  else
  {
    [*(*(a1 + 40) + 8) stopAllSpinners];
    v3 = [*(*(a1 + 32) + 32) navigationController];
    [v3 aaui_removeLastViewControllerAnimated:1];
  }
}

void __50__AAUIMyCustodianActionHandler__doCustodianRemove__block_invoke_2(uint64_t a1, uint64_t a2, uint64_t a3)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    v6 = WeakRetained;
    [WeakRetained _updateUIAfterDeleteWithHasRecoveryContact:a2 hasRecoveryKey:a3];
    WeakRetained = v6;
  }
}

- (id)_recoveryFactorController
{
  recoveryFactorController = self->_recoveryFactorController;
  if (!recoveryFactorController)
  {
    v4 = [[AAUIRecoveryFactorController alloc] initWithAccountManager:self->_accountManager presentingViewController:self->_presentingViewController];
    v5 = self->_recoveryFactorController;
    self->_recoveryFactorController = v4;

    [(AAUIRecoveryFactorController *)self->_recoveryFactorController setDelegate:self];
    [(AAUIRecoveryFactorController *)self->_recoveryFactorController setForceInlinePresentation:0];
    recoveryFactorController = self->_recoveryFactorController;
  }

  return recoveryFactorController;
}

- (BOOL)_isWalrusEnabled
{
  v2 = objc_alloc_init(MEMORY[0x1E6997808]);
  v8 = 0;
  v3 = [v2 walrusStatus:&v8];
  v4 = v8;
  if (v4)
  {
    v5 = _AAUILogSystem();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      [AAUIMyCustodianActionHandler _isWalrusEnabled];
    }

    v6 = 0;
  }

  else
  {
    v6 = v3 == 1;
  }

  return v6;
}

- (void)_dismissAndPopFromRecoveryContactRemovedScreen
{
  v2[0] = MEMORY[0x1E69E9820];
  v2[1] = 3221225472;
  v2[2] = __78__AAUIMyCustodianActionHandler__dismissAndPopFromRecoveryContactRemovedScreen__block_invoke;
  v2[3] = &unk_1E820B8F0;
  v2[4] = self;
  [(AAUIMyCustodianActionHandler *)self _dismissRecoveryContactRemovedScreenWithCompletion:v2];
}

- (void)_performHealthCheck
{
  v2 = objc_alloc_init(MEMORY[0x1E698B850]);
  [v2 startHealthCheckWithCompletion:&__block_literal_global_22];
}

void __51__AAUIMyCustodianActionHandler__performHealthCheck__block_invoke(uint64_t a1, void *a2)
{
  v2 = a2;
  if (v2)
  {
    v3 = _AAUILogSystem();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
    {
      __45__AAUICDPRecoveryKeyHook__deleteRecoveryKey___block_invoke_49_cold_1();
    }
  }
}

- (void)_dismissAndStartHealthCheck
{
  [(AAUIMyCustodianActionHandler *)self _dismissAndPopFromRecoveryContactRemovedScreen];

  [(AAUIMyCustodianActionHandler *)self _performHealthCheck];
}

- (void)_popToAccountRecoveryScreen
{
  v2 = [(UIViewController *)self->_presentingViewController navigationController];
  [v2 aaui_removeLastViewControllerAnimated:0];
}

- (void)_dismissRecoveryContactRemovedScreenWithCompletion:(id)a3
{
  v4 = a3;
  recoveryContactRemovedNavigationController = self->_recoveryContactRemovedNavigationController;
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __83__AAUIMyCustodianActionHandler__dismissRecoveryContactRemovedScreenWithCompletion___block_invoke;
  v7[3] = &unk_1E820B820;
  v8 = v4;
  v6 = v4;
  [(OBNavigationController *)recoveryContactRemovedNavigationController dismissViewControllerAnimated:1 completion:v7];
}

- (void)_addRecoveryContact
{
  v2[0] = MEMORY[0x1E69E9820];
  v2[1] = 3221225472;
  v2[2] = __51__AAUIMyCustodianActionHandler__addRecoveryContact__block_invoke;
  v2[3] = &unk_1E820B8F0;
  v2[4] = self;
  [(AAUIMyCustodianActionHandler *)self _dismissRecoveryContactRemovedScreenWithCompletion:v2];
}

void __51__AAUIMyCustodianActionHandler__addRecoveryContact__block_invoke(uint64_t a1)
{
  v1 = [*(a1 + 32) _recoveryFactorController];
  [v1 startAddingRecoveryContact];
}

- (void)_setupRecoveryKey
{
  v2[0] = MEMORY[0x1E69E9820];
  v2[1] = 3221225472;
  v2[2] = __49__AAUIMyCustodianActionHandler__setupRecoveryKey__block_invoke;
  v2[3] = &unk_1E820B8F0;
  v2[4] = self;
  [(AAUIMyCustodianActionHandler *)self _dismissRecoveryContactRemovedScreenWithCompletion:v2];
}

void __49__AAUIMyCustodianActionHandler__setupRecoveryKey__block_invoke(uint64_t a1)
{
  objc_initWeak(&location, *(a1 + 32));
  v2 = [*(a1 + 32) _recoveryFactorController];
  v3[0] = MEMORY[0x1E69E9820];
  v3[1] = 3221225472;
  v3[2] = __49__AAUIMyCustodianActionHandler__setupRecoveryKey__block_invoke_2;
  v3[3] = &unk_1E820D308;
  objc_copyWeak(&v4, &location);
  [v2 generateRecoveryKeyWithCompletion:v3];

  objc_destroyWeak(&v4);
  objc_destroyWeak(&location);
}

void __49__AAUIMyCustodianActionHandler__setupRecoveryKey__block_invoke_2(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = a3;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (v4)
  {
    v6 = _AAUILogSystem();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      __49__AAUIMyCustodianActionHandler__setupRecoveryKey__block_invoke_2_cold_1();
    }
  }

  [WeakRetained _popToAccountRecoveryScreen];
}

- (void)_checkRecoveryContactAndRecoveryKeyStatus:(id)a3
{
  v3 = a3;
  v22[0] = 0;
  v22[1] = v22;
  v22[2] = 0x2020000000;
  v23 = 0;
  v20[0] = 0;
  v20[1] = v20;
  v20[2] = 0x2020000000;
  v21 = 0;
  v4 = objc_opt_new();
  v5 = dispatch_group_create();
  dispatch_group_enter(v5);
  v17[0] = MEMORY[0x1E69E9820];
  v17[1] = 3221225472;
  v17[2] = __74__AAUIMyCustodianActionHandler__checkRecoveryContactAndRecoveryKeyStatus___block_invoke;
  v17[3] = &unk_1E820DAB8;
  v19 = v22;
  v6 = v5;
  v18 = v6;
  [v4 fetchMyHealthyCustodians:v17];
  v7 = objc_opt_new();
  dispatch_group_enter(v6);
  v14[0] = MEMORY[0x1E69E9820];
  v14[1] = 3221225472;
  v14[2] = __74__AAUIMyCustodianActionHandler__checkRecoveryContactAndRecoveryKeyStatus___block_invoke_2;
  v14[3] = &unk_1E820DAE0;
  v16 = v20;
  v8 = v6;
  v15 = v8;
  [v7 isWalrusRecoveryKeyAvailableWithCompletion:v14];
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __74__AAUIMyCustodianActionHandler__checkRecoveryContactAndRecoveryKeyStatus___block_invoke_53;
  block[3] = &unk_1E820DB08;
  v11 = v3;
  v12 = v22;
  v13 = v20;
  v9 = v3;
  dispatch_group_notify(v8, MEMORY[0x1E69E96A0], block);

  _Block_object_dispose(v20, 8);
  _Block_object_dispose(v22, 8);
}

void __74__AAUIMyCustodianActionHandler__checkRecoveryContactAndRecoveryKeyStatus___block_invoke(uint64_t a1, void *a2)
{
  *(*(*(a1 + 40) + 8) + 24) = [a2 count] != 0;
  v3 = *(a1 + 32);

  dispatch_group_leave(v3);
}

void __74__AAUIMyCustodianActionHandler__checkRecoveryContactAndRecoveryKeyStatus___block_invoke_2(uint64_t a1, char a2, void *a3)
{
  v5 = a3;
  if (v5)
  {
    v6 = _AAUILogSystem();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      __74__AAUIMyCustodianActionHandler__checkRecoveryContactAndRecoveryKeyStatus___block_invoke_2_cold_1();
    }
  }

  *(*(*(a1 + 40) + 8) + 24) = a2;
  dispatch_group_leave(*(a1 + 32));
}

- (void)_updateUIAfterDeleteWithHasRecoveryContact:(BOOL)a3 hasRecoveryKey:(BOOL)a4
{
  v4 = a4;
  v5 = a3;
  [(AAUISpinnerManager *)self->_spinnerManager stopAllSpinners];
  v19 = [[AAUIWalrusRecoveryContactRemovedScreenModel alloc] initWithHasRecoveryContact:v5 hasRecoveryKey:v4];
  v7 = [[AAUIOBWelcomeController alloc] initWithViewModel:v19];
  v8 = v7;
  if (v5 || v4)
  {
    v15 = [(AAUIOBWelcomeController *)v7 primaryButton];
    [v15 addTarget:self action:sel__dismissAndPopFromRecoveryContactRemovedScreen forControlEvents:64];

    v14 = [(OBBaseWelcomeController *)v8 navigationItem];
    [v14 setHidesBackButton:1];
  }

  else
  {
    v9 = objc_alloc(MEMORY[0x1E69DC708]);
    v10 = [(AAWalrusRecoveryContactRemovedScreenModel *)v19 leftBarButton];
    v11 = [v9 initWithTitle:v10 style:0 target:self action:sel__dismissAndStartHealthCheck];
    v12 = [(OBBaseWelcomeController *)v8 navigationItem];
    [v12 setLeftBarButtonItem:v11];

    v13 = [(AAUIOBWelcomeController *)v8 primaryButton];
    [v13 addTarget:self action:sel__addRecoveryContact forControlEvents:64];

    v14 = [(AAUIOBWelcomeController *)v8 secondaryButton];
    [v14 addTarget:self action:sel__setupRecoveryKey forControlEvents:64];
  }

  v16 = [objc_alloc(MEMORY[0x1E69B7D40]) initWithRootViewController:v8];
  recoveryContactRemovedNavigationController = self->_recoveryContactRemovedNavigationController;
  self->_recoveryContactRemovedNavigationController = v16;

  v18 = [(UIViewController *)self->_presentingViewController navigationController];
  [v18 presentViewController:self->_recoveryContactRemovedNavigationController animated:1 completion:0];
}

- (void)_stopSpinners
{
  objc_initWeak(&location, self);
  v2[0] = MEMORY[0x1E69E9820];
  v2[1] = 3221225472;
  v2[2] = __45__AAUIMyCustodianActionHandler__stopSpinners__block_invoke;
  v2[3] = &unk_1E820C290;
  objc_copyWeak(&v3, &location);
  dispatch_async(MEMORY[0x1E69E96A0], v2);
  objc_destroyWeak(&v3);
  objc_destroyWeak(&location);
}

void __45__AAUIMyCustodianActionHandler__stopSpinners__block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained[1] stopAllSpinners];
}

- (void)_displayCustodianDeleteNotAllowedAlert
{
  v3 = [(AAUIDTOHelper *)self->_dtoHelper makeCustodianDeleteOpNotAllowedAlert];
  [(UIViewController *)self->_presentingViewController presentViewController:v3 animated:1 completion:0];
}

- (void)_displayRatchetGenericErrorAlert
{
  v3 = [(AAUIDTOHelper *)self->_dtoHelper makeGenericRatchetFailedAlert];
  [(UIViewController *)self->_presentingViewController presentViewController:v3 animated:1 completion:0];
}

@end