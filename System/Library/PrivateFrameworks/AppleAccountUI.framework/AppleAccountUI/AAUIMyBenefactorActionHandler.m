@interface AAUIMyBenefactorActionHandler
- (AAUIMyBenefactorActionHandler)initWithAccountManager:(id)a3 localContact:(id)a4;
- (void)_navigateToAccessKeyScreenFromViewController:(id)a3;
- (void)_popViewController:(id)a3;
- (void)_showAlert:(id)a3;
- (void)_showAuthPromptInViewController:(id)a3;
- (void)_startSpinnerInSpecifier:(id)a3;
- (void)_stopAllSpinners;
- (void)doDestructiveAction:(id)a3 specifier:(id)a4;
- (void)doPrimaryAction:(id)a3 specifier:(id)a4;
- (void)doSecondaryAction:(id)a3 specifier:(id)a4;
- (void)remoteUIRequestComplete:(id)a3 error:(id)a4;
@end

@implementation AAUIMyBenefactorActionHandler

- (AAUIMyBenefactorActionHandler)initWithAccountManager:(id)a3 localContact:(id)a4
{
  v7 = a3;
  v8 = a4;
  v14.receiver = self;
  v14.super_class = AAUIMyBenefactorActionHandler;
  v9 = [(AAUIMyBenefactorActionHandler *)&v14 init];
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
  v5 = a3;
  v6 = objc_opt_new();
  v7 = [(AALocalContactInfo *)self->_contact inheritanceContactInfo];
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __63__AAUIMyBenefactorActionHandler_doDestructiveAction_specifier___block_invoke;
  v9[3] = &unk_1E820CBD8;
  v9[4] = self;
  v10 = v5;
  v8 = v5;
  [v6 removeBenefactor:v7 completion:v9];
}

void __63__AAUIMyBenefactorActionHandler_doDestructiveAction_specifier___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = _AAUILogSystem();
  v5 = v4;
  if (!v3)
  {
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEBUG))
    {
      __63__AAUIMyBenefactorActionHandler_doDestructiveAction_specifier___block_invoke_cold_2(v5);
    }

    v7 = *(a1 + 32);
    v8 = *(a1 + 40);
    goto LABEL_9;
  }

  if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
  {
    __63__AAUIMyBenefactorActionHandler_doDestructiveAction_specifier___block_invoke_cold_1();
  }

  v6 = [v3 code];
  v7 = *(a1 + 32);
  v8 = *(a1 + 40);
  if (v6 != 2113)
  {
LABEL_9:
    [v7 _popViewController:v8];
    goto LABEL_10;
  }

  [v7 _showAlert:v8];
LABEL_10:
}

- (void)_popViewController:(id)a3
{
  v3 = a3;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __52__AAUIMyBenefactorActionHandler__popViewController___block_invoke;
  block[3] = &unk_1E820B8F0;
  v6 = v3;
  v4 = v3;
  dispatch_async(MEMORY[0x1E69E96A0], block);
}

void __52__AAUIMyBenefactorActionHandler__popViewController___block_invoke(uint64_t a1)
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
  v20[2] = __44__AAUIMyBenefactorActionHandler__showAlert___block_invoke;
  v20[3] = &unk_1E820BFA8;
  v13 = v3;
  v21 = v13;
  v14 = [v12 actionWithTitle:v11 style:0 handler:v20];
  [v9 addAction:v14];

  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __44__AAUIMyBenefactorActionHandler__showAlert___block_invoke_3;
  block[3] = &unk_1E820BEB8;
  v18 = v13;
  v19 = v9;
  v15 = v9;
  v16 = v13;
  dispatch_async(MEMORY[0x1E69E96A0], block);
}

void __44__AAUIMyBenefactorActionHandler__showAlert___block_invoke(uint64_t a1)
{
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __44__AAUIMyBenefactorActionHandler__showAlert___block_invoke_2;
  block[3] = &unk_1E820B8F0;
  v2 = *(a1 + 32);
  dispatch_async(MEMORY[0x1E69E96A0], block);
}

void __44__AAUIMyBenefactorActionHandler__showAlert___block_invoke_2(uint64_t a1)
{
  v1 = [*(a1 + 32) navigationController];
  [v1 aaui_removeLastViewControllerAnimated:1];
}

- (void)doPrimaryAction:(id)a3 specifier:(id)a4
{
  v6 = a3;
  [(AAUIMyBenefactorActionHandler *)self _startSpinnerInSpecifier:a4];
  [(AAUIMyBenefactorActionHandler *)self _showAuthPromptInViewController:v6];
}

- (void)_showAuthPromptInViewController:(id)a3
{
  v4 = a3;
  v5 = [(AIDAAccountManager *)self->_accountManager accounts];
  v6 = [v5 objectForKeyedSubscript:*MEMORY[0x1E698C218]];

  v7 = objc_opt_new();
  objc_initWeak(&location, self);
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __65__AAUIMyBenefactorActionHandler__showAuthPromptInViewController___block_invoke;
  v9[3] = &unk_1E820CC00;
  objc_copyWeak(&v11, &location);
  v8 = v4;
  v10 = v8;
  [v7 aaui_authenticateAccount:v6 forceInteraction:1 presentingViewController:v8 completion:v9];

  objc_destroyWeak(&v11);
  objc_destroyWeak(&location);
}

void __65__AAUIMyBenefactorActionHandler__showAuthPromptInViewController___block_invoke(uint64_t a1, uint64_t a2, void *a3)
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
        __65__AAUIMyBenefactorActionHandler__showAuthPromptInViewController___block_invoke_cold_1();
      }
    }

    else
    {
      if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&dword_1C5355000, v9, OS_LOG_TYPE_DEFAULT, "Authentication successful, continuing to show Access Key...", buf, 2u);
      }

      v10[0] = MEMORY[0x1E69E9820];
      v10[1] = 3221225472;
      v10[2] = __65__AAUIMyBenefactorActionHandler__showAuthPromptInViewController___block_invoke_54;
      v10[3] = &unk_1E820BEB8;
      v10[4] = v7;
      v11 = *(a1 + 32);
      dispatch_async(MEMORY[0x1E69E96A0], v10);
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

- (void)doSecondaryAction:(id)a3 specifier:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = _AAUILogSystem();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_1C5355000, v8, OS_LOG_TYPE_DEFAULT, "Request Access Tapped. Beginning Beneficiary Claim RUI...", buf, 2u);
  }

  v9 = objc_alloc(MEMORY[0x1E698B8D8]);
  v10 = [(AALocalContactInfo *)self->_contact inheritanceContactInfo];
  v11 = [v9 initWithContactInfo:v10 contactType:{-[AALocalContactInfo contactType](self->_contact, "contactType")}];

  v12 = [(AIDAAccountManager *)self->_accountManager accountStore];
  v13 = [(AIDAAccountManager *)self->_accountManager accounts];
  v14 = [v13 objectForKeyedSubscript:*MEMORY[0x1E698C218]];

  if (v14)
  {
    v15 = [v12 aida_accountForiCloudAccount:v14];
    if (v15)
    {
      v16 = objc_alloc(MEMORY[0x1E698B820]);
      v17 = [v11 claimTokenString];
      v18 = [v16 initWithGrandSlamAccount:v15 accountStore:v12 claimCode:v17];

      [(AAUIMyBenefactorActionHandler *)self _startSpinnerInSpecifier:v7];
      v19 = _AAUILogSystem();
      if (os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
      {
        *v24 = 0;
        _os_log_impl(&dword_1C5355000, v19, OS_LOG_TYPE_DEFAULT, "Presenting Beneficiary Claim RUI...", v24, 2u);
      }

      v20 = [[AAUIGrandSlamRemoteUIPresenter alloc] initWithAccountManager:self->_accountManager presenter:v6];
      remoteUIPresenter = self->_remoteUIPresenter;
      self->_remoteUIPresenter = v20;

      [(AAUIGrandSlamRemoteUIPresenter *)self->_remoteUIPresenter setDelegate:self];
      v22 = self->_remoteUIPresenter;
      v23 = [v18 urlRequest];
      [(AAUIGrandSlamRemoteUIPresenter *)v22 loadRequest:v23];
    }

    else
    {
      v18 = _AAUILogSystem();
      if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
      {
        [AAUIMyBenefactorActionHandler doSecondaryAction:specifier:];
      }
    }
  }

  else
  {
    v15 = _AAUILogSystem();
    if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
    {
      [AAUIMyBenefactorActionHandler doSecondaryAction:specifier:];
    }
  }
}

- (void)_startSpinnerInSpecifier:(id)a3
{
  v4 = a3;
  objc_initWeak(&location, self);
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __58__AAUIMyBenefactorActionHandler__startSpinnerInSpecifier___block_invoke;
  block[3] = &unk_1E820BE68;
  objc_copyWeak(&v8, &location);
  v7 = v4;
  v5 = v4;
  dispatch_async(MEMORY[0x1E69E96A0], block);

  objc_destroyWeak(&v8);
  objc_destroyWeak(&location);
}

void __58__AAUIMyBenefactorActionHandler__startSpinnerInSpecifier___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  if (WeakRetained)
  {
    v3 = WeakRetained[3];
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
  v2[2] = __49__AAUIMyBenefactorActionHandler__stopAllSpinners__block_invoke;
  v2[3] = &unk_1E820C290;
  objc_copyWeak(&v3, &location);
  dispatch_async(MEMORY[0x1E69E96A0], v2);
  objc_destroyWeak(&v3);
  objc_destroyWeak(&location);
}

void __49__AAUIMyBenefactorActionHandler__stopAllSpinners__block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    v2 = WeakRetained;
    [WeakRetained[3] stopAllSpinners];
    WeakRetained = v2;
  }
}

- (void)remoteUIRequestComplete:(id)a3 error:(id)a4
{
  v5 = a4;
  if (v5)
  {
    v6 = _AAUILogSystem();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      [AAUIMyBenefactorActionHandler remoteUIRequestComplete:error:];
    }
  }

  [(AAUIMyBenefactorActionHandler *)self _stopAllSpinners];
}

@end