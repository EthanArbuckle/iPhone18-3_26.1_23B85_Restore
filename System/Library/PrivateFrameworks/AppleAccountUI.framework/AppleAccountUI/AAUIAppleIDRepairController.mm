@interface AAUIAppleIDRepairController
- (AAUIAppleIDRepairController)init;
- (AAUIAppleIDRepairControllerDelegate)delegate;
- (void)_prepareAction;
- (void)viewDidAppear:(BOOL)a3;
- (void)viewDidLoad;
@end

@implementation AAUIAppleIDRepairController

- (AAUIAppleIDRepairController)init
{
  v3 = [MEMORY[0x1E696AAE8] bundleForClass:objc_opt_class()];
  v4 = [v3 localizedStringForKey:@"UPDATING_APPLE_ID_LABEL_REBRAND" value:&stru_1F447F790 table:@"Localizable"];
  v15.receiver = self;
  v15.super_class = AAUIAppleIDRepairController;
  v5 = [(OBSetupAssistantSpinnerController *)&v15 initWithSpinnerText:v4];

  if (v5)
  {
    v6 = [(OBBaseWelcomeController *)v5 navigationItem];
    [v6 setHidesBackButton:1 animated:0];

    v7 = [MEMORY[0x1E6959A48] defaultStore];
    v8 = [v7 aa_primaryAppleAccount];
    [(AAUIAppleIDRepairController *)v5 setPrimaryAccount:v8];

    v9 = objc_alloc_init(MEMORY[0x1E698DE88]);
    [(AAUIAppleIDRepairController *)v5 setAuthContext:v9];

    v10 = [(AAUIAppleIDRepairController *)v5 primaryAccount];
    v11 = [v10 aa_altDSID];
    v12 = [(AAUIAppleIDRepairController *)v5 authContext];
    [v12 setAltDSID:v11];

    v13 = [(AAUIAppleIDRepairController *)v5 authContext];
    [v13 setNeedsRepair:1];
  }

  return v5;
}

- (void)viewDidLoad
{
  v3.receiver = self;
  v3.super_class = AAUIAppleIDRepairController;
  [(OBBaseWelcomeController *)&v3 viewDidLoad];
  [(AAUIAppleIDRepairController *)self _prepareAction];
}

- (void)_prepareAction
{
  objc_initWeak(&location, self);
  v3[0] = MEMORY[0x1E69E9820];
  v3[1] = 3221225472;
  v3[2] = __45__AAUIAppleIDRepairController__prepareAction__block_invoke;
  v3[3] = &unk_1E820C290;
  objc_copyWeak(&v4, &location);
  [(AAUIOBSpinnerViewController *)self setActionBlock:v3];
  objc_destroyWeak(&v4);
  objc_destroyWeak(&location);
}

void __45__AAUIAppleIDRepairController__prepareAction__block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v2 = objc_alloc_init(MEMORY[0x1E698DCC0]);
  v3 = _AAUILogSystem();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_1C5355000, v3, OS_LOG_TYPE_DEFAULT, "Starting Apple ID repair flow...", buf, 2u);
  }

  v4 = [WeakRetained authContext];
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __45__AAUIAppleIDRepairController__prepareAction__block_invoke_30;
  v6[3] = &unk_1E820C6E8;
  v7 = WeakRetained;
  v5 = WeakRetained;
  [v2 authenticateWithContext:v4 completion:v6];
}

void __45__AAUIAppleIDRepairController__prepareAction__block_invoke_30(uint64_t a1, void *a2, void *a3)
{
  v15 = *MEMORY[0x1E69E9840];
  v5 = a2;
  v6 = a3;
  v7 = _AAUILogSystem();
  v8 = os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT);
  if (v6)
  {
    if (!v8)
    {
      goto LABEL_7;
    }

    *v14 = 138412290;
    *&v14[4] = v6;
    v9 = "Repair flow completed with error: %@";
    v10 = v7;
    v11 = 12;
  }

  else
  {
    if (!v8)
    {
      goto LABEL_7;
    }

    *v14 = 0;
    v9 = "Repair flow completed successfully!";
    v10 = v7;
    v11 = 2;
  }

  _os_log_impl(&dword_1C5355000, v10, OS_LOG_TYPE_DEFAULT, v9, v14, v11);
LABEL_7:

  v12 = [*(a1 + 32) delegate];

  if (v12)
  {
    v13 = [*(a1 + 32) delegate];
    [v13 repairController:*(a1 + 32) didCompleteWithSuccess:v6 == 0];
  }
}

- (void)viewDidAppear:(BOOL)a3
{
  v3 = a3;
  v5 = [(AAUIAppleIDRepairController *)self authContext];
  v6 = [(AAUIAppleIDRepairController *)self navigationController];
  [v5 setPresentingViewController:v6];

  v7.receiver = self;
  v7.super_class = AAUIAppleIDRepairController;
  [(AAUIOBSpinnerViewController *)&v7 viewDidAppear:v3];
}

- (AAUIAppleIDRepairControllerDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end