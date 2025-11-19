@interface AAUIMyBeneficiaryActionHandler
- (AAUIMyBeneficiaryActionHandler)initWithAccountManager:(id)a3 localContact:(id)a4;
- (void)_doBeneficiaryRemoveWithViewController:(id)a3;
- (void)_navigateToAccessKeyScreenFromViewController:(id)a3;
- (void)_popViewController:(id)a3;
- (void)_showAlert:(id)a3;
- (void)_showAuthPromptInViewController:(id)a3;
- (void)_startSpinnerInSpecifier:(id)a3;
- (void)_stopAllSpinners;
- (void)doDestructiveAction:(id)a3 specifier:(id)a4;
- (void)doPrimaryAction:(id)a3 specifier:(id)a4;
@end

@implementation AAUIMyBeneficiaryActionHandler

- (AAUIMyBeneficiaryActionHandler)initWithAccountManager:(id)a3 localContact:(id)a4
{
  v7 = a3;
  v8 = a4;
  v14.receiver = self;
  v14.super_class = AAUIMyBeneficiaryActionHandler;
  v9 = [(AAUIMyBeneficiaryActionHandler *)&v14 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_accountManager, a3);
    objc_storeStrong(&v10->_contact, a4);
    v11 = objc_alloc_init(AAUISpinnerManager);
    spinnerManager = v10->_spinnerManager;
    v10->_spinnerManager = v11;
  }

  return v10;
}

- (void)doDestructiveAction:(id)a3 specifier:(id)a4
{
  v20 = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = a4;
  v8 = [(AIDAAccountManager *)self->_accountManager accounts];
  v9 = [v8 objectForKeyedSubscript:*MEMORY[0x1E698C218]];

  if (v9)
  {
    v10 = _AAUILogSystem();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
    {
      v11 = [(AALocalContactInfo *)self->_contact handle];
      *buf = 138412290;
      v19 = v11;
      _os_log_impl(&dword_1C5355000, v10, OS_LOG_TYPE_DEFAULT, "Removing beneficiary %@.", buf, 0xCu);
    }

    spinnerManager = self->_spinnerManager;
    v13 = [v7 identifier];
    [(AAUISpinnerManager *)spinnerManager startSpinnerInSpecifier:v7 forKey:v13];

    v14 = objc_alloc_init(MEMORY[0x1E698DCC0]);
    objc_initWeak(buf, self);
    v15[0] = MEMORY[0x1E69E9820];
    v15[1] = 3221225472;
    v15[2] = __64__AAUIMyBeneficiaryActionHandler_doDestructiveAction_specifier___block_invoke;
    v15[3] = &unk_1E820CC00;
    objc_copyWeak(&v17, buf);
    v16 = v6;
    [v14 aaui_authenticateAccount:v9 forceInteraction:0 presentingViewController:v16 completion:v15];

    objc_destroyWeak(&v17);
    objc_destroyWeak(buf);
  }
}

void __64__AAUIMyBeneficiaryActionHandler_doDestructiveAction_specifier___block_invoke(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = a3;
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v7 = _AAUILogSystem();
  v8 = v7;
  if (!a2 || v5)
  {
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      __64__AAUIMyBeneficiaryActionHandler_doDestructiveAction_specifier___block_invoke_cold_1(v5, v8, v9, v10, v11, v12, v13, v14);
    }

    [WeakRetained _stopAllSpinners];
  }

  else
  {
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      *v15 = 0;
      _os_log_impl(&dword_1C5355000, v8, OS_LOG_TYPE_DEFAULT, "Authentication successful, continue removing beneficiary...", v15, 2u);
    }

    [WeakRetained _doBeneficiaryRemoveWithViewController:*(a1 + 32)];
  }
}

- (void)doPrimaryAction:(id)a3 specifier:(id)a4
{
  v6 = a3;
  [(AAUIMyBeneficiaryActionHandler *)self _startSpinnerInSpecifier:a4];
  [(AAUIMyBeneficiaryActionHandler *)self _showAuthPromptInViewController:v6];
}

- (void)_doBeneficiaryRemoveWithViewController:(id)a3
{
  v4 = a3;
  objc_initWeak(&location, self);
  v5 = objc_alloc_init(MEMORY[0x1E698B8E0]);
  v6 = [(AALocalContactInfo *)self->_contact inheritanceContactInfo];
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __73__AAUIMyBeneficiaryActionHandler__doBeneficiaryRemoveWithViewController___block_invoke;
  v8[3] = &unk_1E820DBD0;
  objc_copyWeak(&v10, &location);
  v8[4] = self;
  v7 = v4;
  v9 = v7;
  [v5 removeBeneficiary:v6 manifest:0 completion:v8];

  objc_destroyWeak(&v10);
  objc_destroyWeak(&location);
}

void __73__AAUIMyBeneficiaryActionHandler__doBeneficiaryRemoveWithViewController___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  v5 = _AAUILogSystem();
  v6 = v5;
  if (!v3)
  {
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
    {
      __73__AAUIMyBeneficiaryActionHandler__doBeneficiaryRemoveWithViewController___block_invoke_cold_2(v6);
    }

    v14 = *(a1 + 32);
    v15 = *(a1 + 40);
    goto LABEL_9;
  }

  if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
  {
    __73__AAUIMyBeneficiaryActionHandler__doBeneficiaryRemoveWithViewController___block_invoke_cold_1(v3, v6, v7, v8, v9, v10, v11, v12);
  }

  [WeakRetained _stopAllSpinners];
  v13 = [v3 code];
  v14 = *(a1 + 32);
  v15 = *(a1 + 40);
  if (v13 != 2113)
  {
LABEL_9:
    [v14 _popViewController:v15];
    goto LABEL_10;
  }

  [v14 _showAlert:v15];
LABEL_10:
}

- (void)_popViewController:(id)a3
{
  v3 = a3;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __53__AAUIMyBeneficiaryActionHandler__popViewController___block_invoke;
  block[3] = &unk_1E820B8F0;
  v6 = v3;
  v4 = v3;
  dispatch_async(MEMORY[0x1E69E96A0], block);
}

void __53__AAUIMyBeneficiaryActionHandler__popViewController___block_invoke(uint64_t a1)
{
  v1 = [*(a1 + 32) navigationController];
  [v1 aaui_removeLastViewControllerAnimated:1];
}

- (void)_showAlert:(id)a3
{
  v3 = a3;
  v4 = MEMORY[0x1E69DC650];
  v5 = [MEMORY[0x1E696AAE8] bundleForClass:objc_opt_class()];
  v6 = [v5 localizedStringForKey:@"LEGACY_CONTACT_DELETION_FAILURE_ALERT_TITLE" value:&stru_1F447F790 table:@"Localizable"];
  v7 = [MEMORY[0x1E696AAE8] bundleForClass:objc_opt_class()];
  v8 = [v7 localizedStringForKey:@"LEGACY_CONTACT_DELETION_FAILURE_ALERT_MESSAGE" value:&stru_1F447F790 table:@"Localizable"];
  v9 = [v4 alertWithTitle:v6 message:v8];

  v10 = [MEMORY[0x1E696AAE8] bundleForClass:objc_opt_class()];
  v11 = [v10 localizedStringForKey:@"OK" value:&stru_1F447F790 table:@"Localizable"];

  v12 = MEMORY[0x1E69DC648];
  v20[0] = MEMORY[0x1E69E9820];
  v20[1] = 3221225472;
  v20[2] = __45__AAUIMyBeneficiaryActionHandler__showAlert___block_invoke;
  v20[3] = &unk_1E820BFA8;
  v13 = v3;
  v21 = v13;
  v14 = [v12 actionWithTitle:v11 style:0 handler:v20];
  [v9 addAction:v14];

  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __45__AAUIMyBeneficiaryActionHandler__showAlert___block_invoke_3;
  block[3] = &unk_1E820BEB8;
  v18 = v13;
  v19 = v9;
  v15 = v9;
  v16 = v13;
  dispatch_async(MEMORY[0x1E69E96A0], block);
}

void __45__AAUIMyBeneficiaryActionHandler__showAlert___block_invoke(uint64_t a1)
{
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __45__AAUIMyBeneficiaryActionHandler__showAlert___block_invoke_2;
  block[3] = &unk_1E820B8F0;
  v2 = *(a1 + 32);
  dispatch_async(MEMORY[0x1E69E96A0], block);
}

void __45__AAUIMyBeneficiaryActionHandler__showAlert___block_invoke_2(uint64_t a1)
{
  v1 = [*(a1 + 32) navigationController];
  [v1 aaui_removeLastViewControllerAnimated:1];
}

- (void)_showAuthPromptInViewController:(id)a3
{
  v4 = a3;
  v5 = [(AIDAAccountManager *)self->_accountManager accounts];
  v6 = [v5 objectForKeyedSubscript:*MEMORY[0x1E698C218]];

  v7 = objc_alloc_init(MEMORY[0x1E698DCC0]);
  objc_initWeak(&location, self);
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __66__AAUIMyBeneficiaryActionHandler__showAuthPromptInViewController___block_invoke;
  v9[3] = &unk_1E820CC00;
  objc_copyWeak(&v11, &location);
  v8 = v4;
  v10 = v8;
  [v7 aaui_beneficiaryViewAccessKeyForAccount:v6 presentingViewController:v8 completion:v9];

  objc_destroyWeak(&v11);
  objc_destroyWeak(&location);
}

void __66__AAUIMyBeneficiaryActionHandler__showAuthPromptInViewController___block_invoke(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = a3;
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v7 = WeakRetained;
  if (WeakRetained)
  {
    [WeakRetained _stopAllSpinners];
    v8 = _AAUILogSystem();
    v9 = v8;
    if (!a2 || v5)
    {
      if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
      {
        __64__AAUIMyBeneficiaryActionHandler_doDestructiveAction_specifier___block_invoke_cold_1(v5, v9, v10, v11, v12, v13, v14, v15);
      }
    }

    else
    {
      if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&dword_1C5355000, v9, OS_LOG_TYPE_DEFAULT, "Authentication successful, continuing to show Access Key...", buf, 2u);
      }

      v16[0] = MEMORY[0x1E69E9820];
      v16[1] = 3221225472;
      v16[2] = __66__AAUIMyBeneficiaryActionHandler__showAuthPromptInViewController___block_invoke_55;
      v16[3] = &unk_1E820BEB8;
      v16[4] = v7;
      v17 = *(a1 + 32);
      dispatch_async(MEMORY[0x1E69E96A0], v16);
    }
  }
}

- (void)_navigateToAccessKeyScreenFromViewController:(id)a3
{
  v4 = MEMORY[0x1E698B8D8];
  v5 = a3;
  v6 = [v4 alloc];
  v7 = [(AALocalContactInfo *)self->_contact inheritanceContactInfo];
  v15 = [v6 initWithContactInfo:v7 contactType:{-[AALocalContactInfo contactType](self->_contact, "contactType")}];

  v8 = [v15 accessKeyString];
  v9 = [v15 accessKeyQRCodeImageDataWithSize:155.0];
  v10 = [MEMORY[0x1E69DCAB8] imageWithData:v9];
  v11 = [(AIDAAccountManager *)self->_accountManager accounts];
  v12 = [v11 objectForKeyedSubscript:*MEMORY[0x1E698C218]];

  v13 = [[AAUIShowAccessKeyViewController alloc] initWithAppleAccount:v12 localContactInfo:self->_contact accessKey:v8 accessKeyQRCodeImage:v10];
  v14 = [v5 navigationController];

  [v14 aaui_showViewController:v13 sender:0];
}

- (void)_startSpinnerInSpecifier:(id)a3
{
  v4 = a3;
  objc_initWeak(&location, self);
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __59__AAUIMyBeneficiaryActionHandler__startSpinnerInSpecifier___block_invoke;
  block[3] = &unk_1E820BE68;
  objc_copyWeak(&v8, &location);
  v7 = v4;
  v5 = v4;
  dispatch_async(MEMORY[0x1E69E96A0], block);

  objc_destroyWeak(&v8);
  objc_destroyWeak(&location);
}

void __59__AAUIMyBeneficiaryActionHandler__startSpinnerInSpecifier___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  if (WeakRetained)
  {
    v3 = WeakRetained[1];
    v4 = *(a1 + 32);
    v6 = WeakRetained;
    v5 = [v4 identifier];
    [v3 startSpinnerInSpecifier:v4 forKey:v5];

    WeakRetained = v6;
  }
}

- (void)_stopAllSpinners
{
  objc_initWeak(&location, self);
  v2[0] = MEMORY[0x1E69E9820];
  v2[1] = 3221225472;
  v2[2] = __50__AAUIMyBeneficiaryActionHandler__stopAllSpinners__block_invoke;
  v2[3] = &unk_1E820C290;
  objc_copyWeak(&v3, &location);
  dispatch_async(MEMORY[0x1E69E96A0], v2);
  objc_destroyWeak(&v3);
  objc_destroyWeak(&location);
}

void __50__AAUIMyBeneficiaryActionHandler__stopAllSpinners__block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    v2 = WeakRetained;
    [WeakRetained[1] stopAllSpinners];
    WeakRetained = v2;
  }
}

@end