@interface AKAccountPrivacyOptInViewController
- (AKAccountPrivacyOptInViewController)initWithViewModel:(id)a3 userActionCompletion:(id)a4;
- (void)_addPrimaryButton;
- (void)_addPrivacyLinkController;
- (void)_addSecondaryButton;
- (void)_cancelBarButtonItemPressed:(id)a3;
- (void)_cleanupOldViews;
- (void)_configureViews;
- (void)_optUserWithChoice:(BOOL)a3 withCompletion:(id)a4;
- (void)_primaryButtonSelected:(id)a3;
- (void)_secondaryButtonSelected:(id)a3;
- (void)updateViewWithViewModel:(id)a3;
- (void)viewDidLoad;
@end

@implementation AKAccountPrivacyOptInViewController

- (AKAccountPrivacyOptInViewController)initWithViewModel:(id)a3 userActionCompletion:(id)a4
{
  v19 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  v17 = 0;
  objc_storeStrong(&v17, a4);
  v12 = v19;
  v14 = [location[0] titleText];
  v13 = [location[0] detailedText];
  v19 = 0;
  v16.receiver = v12;
  v16.super_class = AKAccountPrivacyOptInViewController;
  v15 = [AKAccountPrivacyOptInViewController initWithTitle:sel_initWithTitle_detailText_symbolName_ detailText:v14 symbolName:?];
  v19 = v15;
  objc_storeStrong(&v19, v15);
  MEMORY[0x277D82BD8](v13);
  MEMORY[0x277D82BD8](v14);
  if (v15)
  {
    objc_storeStrong(&v19->_viewModel, location[0]);
    v4 = objc_alloc_init(MEMORY[0x277CF0178]);
    authController = v19->_authController;
    v19->_authController = v4;
    v6 = MEMORY[0x277D82BD8](authController);
    v7 = MEMORY[0x223DB6C90](v17, v6);
    userActionCompletionHandler = v19->_userActionCompletionHandler;
    v19->_userActionCompletionHandler = v7;
    MEMORY[0x277D82BD8](userActionCompletionHandler);
  }

  v10 = MEMORY[0x277D82BE0](v19);
  objc_storeStrong(&v17, 0);
  objc_storeStrong(location, 0);
  objc_storeStrong(&v19, 0);
  return v10;
}

- (void)updateViewWithViewModel:(id)a3
{
  v13 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  [(AKAccountPrivacyOptInViewController *)v13 setViewModel:location[0]];
  v7 = [location[0] detailedText];
  v6 = [(AKAccountPrivacyOptInViewController *)v13 headerView];
  [v6 setDetailText:v7];
  MEMORY[0x277D82BD8](v6);
  *&v3 = MEMORY[0x277D82BD8](v7).n128_u64[0];
  v9 = [location[0] titleText];
  v8 = [(AKAccountPrivacyOptInViewController *)v13 headerView];
  [v8 setTitle:v9];
  MEMORY[0x277D82BD8](v8);
  *&v4 = MEMORY[0x277D82BD8](v9).n128_u64[0];
  v10 = [(AKAccountPrivacyOptInViewController *)v13 buttonTray];
  [v10 removeAllButtons];
  *&v5 = MEMORY[0x277D82BD8](v10).n128_u64[0];
  [(AKAccountPrivacyOptInViewController *)v13 _configureViews];
  v11 = [(AKAccountPrivacyOptInViewController *)v13 view];
  [v11 layoutIfNeeded];
  MEMORY[0x277D82BD8](v11);
  objc_storeStrong(location, 0);
}

- (void)viewDidLoad
{
  v4 = self;
  v3 = a2;
  v2.receiver = self;
  v2.super_class = AKAccountPrivacyOptInViewController;
  [(OBBaseWelcomeController *)&v2 viewDidLoad];
  [(AKAccountPrivacyOptInViewController *)v4 _configureViews];
}

- (void)_cancelBarButtonItemPressed:(id)a3
{
  v4 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  if (v4->_cancelAction)
  {
    (*(v4->_cancelAction + 2))();
  }

  objc_storeStrong(location, 0);
}

- (void)_primaryButtonSelected:(id)a3
{
  v14 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  v12 = _AKLogSystem();
  v11 = 2;
  if (os_log_type_enabled(v12, OS_LOG_TYPE_DEBUG))
  {
    log = v12;
    type = v11;
    __os_log_helper_16_0_0(v10);
    _os_log_debug_impl(&dword_222379000, log, type, "AKAccountPrivacyOptInViewController: User selected the primary button. Opting the user into Account Access Improvement Program...", v10, 2u);
  }

  objc_storeStrong(&v12, 0);
  v6 = [(AKAccountPrivacyOptInViewController *)v14 viewModel];
  v7 = [(AKAccountPrivacyOptInViewModel *)v6 altDSID];
  MEMORY[0x277D82BD8](v7);
  v3 = MEMORY[0x277D82BD8](v6);
  if (v7)
  {
    v4 = v14;
    v5 = [(AKAccountPrivacyOptInViewController *)v14 userActionCompletionHandler];
    [(AKAccountPrivacyOptInViewController *)v4 _optUserWithChoice:1 withCompletion:?];
    MEMORY[0x277D82BD8](v5);
  }

  else if (v14->_primaryButtonAction)
  {
    (*(v14->_primaryButtonAction + 2))(v3);
  }

  objc_storeStrong(location, 0);
}

- (void)_secondaryButtonSelected:(id)a3
{
  v14 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  v12 = _AKLogSystem();
  v11 = 2;
  if (os_log_type_enabled(v12, OS_LOG_TYPE_DEBUG))
  {
    log = v12;
    type = v11;
    __os_log_helper_16_0_0(v10);
    _os_log_debug_impl(&dword_222379000, log, type, "AKAccountPrivacyOptInViewController: User selected the secondary button. Opting the user out of Account Access Improvement Program...", v10, 2u);
  }

  objc_storeStrong(&v12, 0);
  v6 = [(AKAccountPrivacyOptInViewController *)v14 viewModel];
  v7 = [(AKAccountPrivacyOptInViewModel *)v6 altDSID];
  MEMORY[0x277D82BD8](v7);
  v3 = MEMORY[0x277D82BD8](v6);
  if (v7)
  {
    v4 = v14;
    v5 = [(AKAccountPrivacyOptInViewController *)v14 userActionCompletionHandler];
    [(AKAccountPrivacyOptInViewController *)v4 _optUserWithChoice:0 withCompletion:?];
    MEMORY[0x277D82BD8](v5);
  }

  else if (v14->_alternateButtonAction)
  {
    (*(v14->_alternateButtonAction + 2))(v3);
  }

  objc_storeStrong(location, 0);
}

- (void)_optUserWithChoice:(BOOL)a3 withCompletion:(id)a4
{
  v27 = self;
  v26 = a2;
  v25 = a3;
  location = 0;
  objc_storeStrong(&location, a4);
  v23 = [MEMORY[0x277CF0130] sharedInstance];
  v7 = [MEMORY[0x277CF0130] sharedInstance];
  v6 = [(AKAccountPrivacyOptInViewController *)v27 viewModel];
  v5 = [(AKAccountPrivacyOptInViewModel *)v6 altDSID];
  v22 = [v7 authKitAccountWithAltDSID:? error:?];
  MEMORY[0x277D82BD8](v5);
  MEMORY[0x277D82BD8](v6);
  *&v4 = MEMORY[0x277D82BD8](v7).n128_u64[0];
  v21 = [MEMORY[0x277CCABB0] numberWithBool:{v25, v4}];
  v12 = [(AKAccountPrivacyOptInViewController *)v27 authController];
  v8 = v21;
  v9 = *MEMORY[0x277CEFEA8];
  v11 = [(AKAccountPrivacyOptInViewController *)v27 viewModel];
  v10 = [(AKAccountPrivacyOptInViewModel *)v11 altDSID];
  v13 = MEMORY[0x277D85DD0];
  v14 = 3221225472;
  v15 = __73__AKAccountPrivacyOptInViewController__optUserWithChoice_withCompletion___block_invoke;
  v16 = &unk_2784A6AE0;
  v17 = MEMORY[0x277D82BE0](v23);
  v20 = v25;
  v18 = MEMORY[0x277D82BE0](v22);
  v19 = MEMORY[0x277D82BE0](location);
  [(AKAppleIDAuthenticationController *)v12 setConfigurationInfo:v8 forIdentifier:v9 forAltDSID:v10 completion:?];
  MEMORY[0x277D82BD8](v10);
  MEMORY[0x277D82BD8](v11);
  MEMORY[0x277D82BD8](v12);
  objc_storeStrong(&v19, 0);
  objc_storeStrong(&v18, 0);
  objc_storeStrong(&v17, 0);
  objc_storeStrong(&v21, 0);
  objc_storeStrong(&v22, 0);
  objc_storeStrong(&v23, 0);
  objc_storeStrong(&location, 0);
}

void __73__AKAccountPrivacyOptInViewController__optUserWithChoice_withCompletion___block_invoke(uint64_t a1, char a2, id obj)
{
  v22 = *MEMORY[0x277D85DE8];
  v18 = a1;
  v17 = a2;
  location = 0;
  objc_storeStrong(&location, obj);
  v15[1] = a1;
  if ((v17 & 1) == 1)
  {
    v15[0] = 0;
    v3 = *(a1 + 32);
    v4 = *(a1 + 56);
    v5 = *(a1 + 40);
    obja = 0;
    v6 = [v3 setAccountImprovementOptIn:v4 & 1 forAccount:v5 error:&obja];
    objc_storeStrong(v15, obja);
    v14 = v6;
    if (v6)
    {
      oslog = _AKLogSystem();
      type = OS_LOG_TYPE_DEBUG;
      if (os_log_type_enabled(oslog, OS_LOG_TYPE_DEBUG))
      {
        __os_log_helper_16_2_2_8_64_8_64(v21, v15[0], location);
        _os_log_debug_impl(&dword_222379000, oslog, type, "Succeeded in opting in to Account Access Improvement Program with local error=%@, server error=%@", v21, 0x16u);
      }

      objc_storeStrong(&oslog, 0);
    }

    else
    {
      v10 = _AKLogSystem();
      v9 = OS_LOG_TYPE_ERROR;
      if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
      {
        __os_log_helper_16_2_2_8_64_8_64(v20, v15[0], location);
        _os_log_error_impl(&dword_222379000, v10, v9, "Local failed to opt in to Account Access Improvement Program with local error=%@, server error=%@", v20, 0x16u);
      }

      objc_storeStrong(&v10, 0);
    }

    objc_storeStrong(v15, 0);
  }

  else
  {
    v8 = _AKLogSystem();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      __os_log_helper_16_2_1_8_64(v19, location);
      _os_log_error_impl(&dword_222379000, v8, OS_LOG_TYPE_ERROR, "Server failed to opt in to Account Access Improvement Program with server error=%@. Not attempting local opt-in", v19, 0xCu);
    }

    objc_storeStrong(&v8, 0);
  }

  if (*(a1 + 48))
  {
    (*(*(a1 + 48) + 16))();
  }

  objc_storeStrong(&location, 0);
  *MEMORY[0x277D85DE8];
}

- (void)_configureViews
{
  [(AKAccountPrivacyOptInViewController *)self _cleanupOldViews];
  [(AKAccountPrivacyOptInViewController *)self _addPrivacyLinkController];
  [(AKAccountPrivacyOptInViewController *)self _addPrimaryButton];
  [(AKAccountPrivacyOptInViewController *)self _addSecondaryButton];
}

- (void)_addPrimaryButton
{
  v10 = [(AKAccountPrivacyOptInViewController *)self viewModel];
  v11 = [(AKAccountPrivacyOptInViewModel *)v10 primaryButtonTitle];
  MEMORY[0x277D82BD8](v11);
  *&v2 = MEMORY[0x277D82BD8](v10).n128_u64[0];
  if (v11)
  {
    v3 = [MEMORY[0x277D37618] boldButton];
    primaryButton = self->_primaryButton;
    self->_primaryButton = v3;
    *&v5 = MEMORY[0x277D82BD8](primaryButton).n128_u64[0];
    v6 = self->_primaryButton;
    v8 = [(AKAccountPrivacyOptInViewController *)self viewModel];
    v7 = [(AKAccountPrivacyOptInViewModel *)v8 primaryButtonTitle];
    [OBTrayButton setTitle:v6 forState:"setTitle:forState:"];
    MEMORY[0x277D82BD8](v7);
    [(OBTrayButton *)self->_primaryButton addTarget:self action:sel__primaryButtonSelected_ forControlEvents:64, MEMORY[0x277D82BD8](v8).n128_f64[0]];
    v9 = [(AKAccountPrivacyOptInViewController *)self buttonTray];
    [v9 addButton:self->_primaryButton];
    MEMORY[0x277D82BD8](v9);
  }
}

- (void)_addSecondaryButton
{
  v11 = [(AKAccountPrivacyOptInViewController *)self viewModel];
  v12 = [(AKAccountPrivacyOptInViewModel *)v11 secondaryButtonTitle];
  MEMORY[0x277D82BD8](v12);
  *&v2 = MEMORY[0x277D82BD8](v11).n128_u64[0];
  if (v12)
  {
    v3 = [MEMORY[0x277D37650] linkButton];
    secondaryButton = self->_secondaryButton;
    self->_secondaryButton = v3;
    *&v5 = MEMORY[0x277D82BD8](secondaryButton).n128_u64[0];
    v7 = self->_secondaryButton;
    v9 = [(AKAccountPrivacyOptInViewController *)self viewModel];
    v8 = [(AKAccountPrivacyOptInViewModel *)v9 secondaryButtonTitle];
    [OBTrayButton setTitle:v7 forState:"setTitle:forState:"];
    MEMORY[0x277D82BD8](v8);
    [(OBTrayButton *)self->_secondaryButton addTarget:self action:sel__secondaryButtonSelected_ forControlEvents:64, MEMORY[0x277D82BD8](v9).n128_f64[0]];
    v10 = [(AKAccountPrivacyOptInViewController *)self buttonTray];
    [v10 addButton:self->_secondaryButton];
    MEMORY[0x277D82BD8](v10);
  }

  else
  {
    objc_storeStrong(&self->_secondaryButton, 0);
    v6 = [(AKAccountPrivacyOptInViewController *)self buttonTray];
    [v6 removeButton:self->_secondaryButton];
    MEMORY[0x277D82BD8](v6);
  }
}

- (void)_addPrivacyLinkController
{
  v4[1] = *MEMORY[0x277D85DE8];
  v3 = [(AKAccountPrivacyOptInViewController *)self buttonTray];
  v4[0] = @"com.apple.onboarding.improveaccountsecurity";
  v2 = [MEMORY[0x277CBEA60] arrayWithObjects:v4 count:1];
  [v3 setPrivacyLinkForBundles:?];
  MEMORY[0x277D82BD8](v2);
  MEMORY[0x277D82BD8](v3);
  *MEMORY[0x277D85DE8];
}

- (void)_cleanupOldViews
{
  v17 = *MEMORY[0x277D85DE8];
  v15 = self;
  v14 = a2;
  if (self->_primaryButton)
  {
    v11 = [(AKAccountPrivacyOptInViewController *)v15 buttonTray];
    [v11 removeButton:v15->_primaryButton];
    MEMORY[0x277D82BD8](v11);
    objc_storeStrong(&v15->_primaryButton, 0);
  }

  if (v15->_secondaryButton)
  {
    v10 = [(AKAccountPrivacyOptInViewController *)v15 buttonTray];
    [v10 removeButton:v15->_secondaryButton];
    MEMORY[0x277D82BD8](v10);
    objc_storeStrong(&v15->_secondaryButton, 0);
  }

  v9 = [(AKAccountPrivacyOptInViewController *)v15 contentView];
  MEMORY[0x277D82BD8](v9);
  if (v9)
  {
    memset(__b, 0, sizeof(__b));
    v6 = [(AKAccountPrivacyOptInViewController *)v15 contentView];
    obj = [v6 subviews];
    v8 = [obj countByEnumeratingWithState:__b objects:v16 count:{16, MEMORY[0x277D82BD8](v6).n128_f64[0]}];
    if (v8)
    {
      v3 = *__b[2];
      v4 = 0;
      v5 = v8;
      while (1)
      {
        v2 = v4;
        if (*__b[2] != v3)
        {
          objc_enumerationMutation(obj);
        }

        v13 = *(__b[1] + 8 * v4);
        [v13 removeFromSuperview];
        ++v4;
        if (v2 + 1 >= v5)
        {
          v4 = 0;
          v5 = [obj countByEnumeratingWithState:__b objects:v16 count:16];
          if (!v5)
          {
            break;
          }
        }
      }
    }

    MEMORY[0x277D82BD8](obj);
  }

  *MEMORY[0x277D85DE8];
}

@end