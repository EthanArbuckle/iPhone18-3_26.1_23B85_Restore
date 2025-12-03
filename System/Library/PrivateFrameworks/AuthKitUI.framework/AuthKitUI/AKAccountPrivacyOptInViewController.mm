@interface AKAccountPrivacyOptInViewController
- (AKAccountPrivacyOptInViewController)initWithViewModel:(id)model userActionCompletion:(id)completion;
- (void)_addPrimaryButton;
- (void)_addPrivacyLinkController;
- (void)_addSecondaryButton;
- (void)_cancelBarButtonItemPressed:(id)pressed;
- (void)_cleanupOldViews;
- (void)_configureViews;
- (void)_optUserWithChoice:(BOOL)choice withCompletion:(id)completion;
- (void)_primaryButtonSelected:(id)selected;
- (void)_secondaryButtonSelected:(id)selected;
- (void)updateViewWithViewModel:(id)model;
- (void)viewDidLoad;
@end

@implementation AKAccountPrivacyOptInViewController

- (AKAccountPrivacyOptInViewController)initWithViewModel:(id)model userActionCompletion:(id)completion
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, model);
  v17 = 0;
  objc_storeStrong(&v17, completion);
  v12 = selfCopy;
  titleText = [location[0] titleText];
  detailedText = [location[0] detailedText];
  selfCopy = 0;
  v16.receiver = v12;
  v16.super_class = AKAccountPrivacyOptInViewController;
  v15 = [AKAccountPrivacyOptInViewController initWithTitle:sel_initWithTitle_detailText_symbolName_ detailText:titleText symbolName:?];
  selfCopy = v15;
  objc_storeStrong(&selfCopy, v15);
  MEMORY[0x277D82BD8](detailedText);
  MEMORY[0x277D82BD8](titleText);
  if (v15)
  {
    objc_storeStrong(&selfCopy->_viewModel, location[0]);
    v4 = objc_alloc_init(MEMORY[0x277CF0178]);
    authController = selfCopy->_authController;
    selfCopy->_authController = v4;
    v6 = MEMORY[0x277D82BD8](authController);
    v7 = MEMORY[0x223DB6C90](v17, v6);
    userActionCompletionHandler = selfCopy->_userActionCompletionHandler;
    selfCopy->_userActionCompletionHandler = v7;
    MEMORY[0x277D82BD8](userActionCompletionHandler);
  }

  v10 = MEMORY[0x277D82BE0](selfCopy);
  objc_storeStrong(&v17, 0);
  objc_storeStrong(location, 0);
  objc_storeStrong(&selfCopy, 0);
  return v10;
}

- (void)updateViewWithViewModel:(id)model
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, model);
  [(AKAccountPrivacyOptInViewController *)selfCopy setViewModel:location[0]];
  detailedText = [location[0] detailedText];
  headerView = [(AKAccountPrivacyOptInViewController *)selfCopy headerView];
  [headerView setDetailText:detailedText];
  MEMORY[0x277D82BD8](headerView);
  *&v3 = MEMORY[0x277D82BD8](detailedText).n128_u64[0];
  titleText = [location[0] titleText];
  headerView2 = [(AKAccountPrivacyOptInViewController *)selfCopy headerView];
  [headerView2 setTitle:titleText];
  MEMORY[0x277D82BD8](headerView2);
  *&v4 = MEMORY[0x277D82BD8](titleText).n128_u64[0];
  buttonTray = [(AKAccountPrivacyOptInViewController *)selfCopy buttonTray];
  [buttonTray removeAllButtons];
  *&v5 = MEMORY[0x277D82BD8](buttonTray).n128_u64[0];
  [(AKAccountPrivacyOptInViewController *)selfCopy _configureViews];
  view = [(AKAccountPrivacyOptInViewController *)selfCopy view];
  [view layoutIfNeeded];
  MEMORY[0x277D82BD8](view);
  objc_storeStrong(location, 0);
}

- (void)viewDidLoad
{
  selfCopy = self;
  v3 = a2;
  v2.receiver = self;
  v2.super_class = AKAccountPrivacyOptInViewController;
  [(OBBaseWelcomeController *)&v2 viewDidLoad];
  [(AKAccountPrivacyOptInViewController *)selfCopy _configureViews];
}

- (void)_cancelBarButtonItemPressed:(id)pressed
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, pressed);
  if (selfCopy->_cancelAction)
  {
    (*(selfCopy->_cancelAction + 2))();
  }

  objc_storeStrong(location, 0);
}

- (void)_primaryButtonSelected:(id)selected
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, selected);
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
  viewModel = [(AKAccountPrivacyOptInViewController *)selfCopy viewModel];
  altDSID = [(AKAccountPrivacyOptInViewModel *)viewModel altDSID];
  MEMORY[0x277D82BD8](altDSID);
  v3 = MEMORY[0x277D82BD8](viewModel);
  if (altDSID)
  {
    v4 = selfCopy;
    userActionCompletionHandler = [(AKAccountPrivacyOptInViewController *)selfCopy userActionCompletionHandler];
    [(AKAccountPrivacyOptInViewController *)v4 _optUserWithChoice:1 withCompletion:?];
    MEMORY[0x277D82BD8](userActionCompletionHandler);
  }

  else if (selfCopy->_primaryButtonAction)
  {
    (*(selfCopy->_primaryButtonAction + 2))(v3);
  }

  objc_storeStrong(location, 0);
}

- (void)_secondaryButtonSelected:(id)selected
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, selected);
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
  viewModel = [(AKAccountPrivacyOptInViewController *)selfCopy viewModel];
  altDSID = [(AKAccountPrivacyOptInViewModel *)viewModel altDSID];
  MEMORY[0x277D82BD8](altDSID);
  v3 = MEMORY[0x277D82BD8](viewModel);
  if (altDSID)
  {
    v4 = selfCopy;
    userActionCompletionHandler = [(AKAccountPrivacyOptInViewController *)selfCopy userActionCompletionHandler];
    [(AKAccountPrivacyOptInViewController *)v4 _optUserWithChoice:0 withCompletion:?];
    MEMORY[0x277D82BD8](userActionCompletionHandler);
  }

  else if (selfCopy->_alternateButtonAction)
  {
    (*(selfCopy->_alternateButtonAction + 2))(v3);
  }

  objc_storeStrong(location, 0);
}

- (void)_optUserWithChoice:(BOOL)choice withCompletion:(id)completion
{
  selfCopy = self;
  v26 = a2;
  choiceCopy = choice;
  location = 0;
  objc_storeStrong(&location, completion);
  mEMORY[0x277CF0130] = [MEMORY[0x277CF0130] sharedInstance];
  mEMORY[0x277CF0130]2 = [MEMORY[0x277CF0130] sharedInstance];
  viewModel = [(AKAccountPrivacyOptInViewController *)selfCopy viewModel];
  altDSID = [(AKAccountPrivacyOptInViewModel *)viewModel altDSID];
  v22 = [mEMORY[0x277CF0130]2 authKitAccountWithAltDSID:? error:?];
  MEMORY[0x277D82BD8](altDSID);
  MEMORY[0x277D82BD8](viewModel);
  *&v4 = MEMORY[0x277D82BD8](mEMORY[0x277CF0130]2).n128_u64[0];
  v21 = [MEMORY[0x277CCABB0] numberWithBool:{choiceCopy, v4}];
  authController = [(AKAccountPrivacyOptInViewController *)selfCopy authController];
  v8 = v21;
  v9 = *MEMORY[0x277CEFEA8];
  viewModel2 = [(AKAccountPrivacyOptInViewController *)selfCopy viewModel];
  altDSID2 = [(AKAccountPrivacyOptInViewModel *)viewModel2 altDSID];
  v13 = MEMORY[0x277D85DD0];
  v14 = 3221225472;
  v15 = __73__AKAccountPrivacyOptInViewController__optUserWithChoice_withCompletion___block_invoke;
  v16 = &unk_2784A6AE0;
  v17 = MEMORY[0x277D82BE0](mEMORY[0x277CF0130]);
  v20 = choiceCopy;
  v18 = MEMORY[0x277D82BE0](v22);
  v19 = MEMORY[0x277D82BE0](location);
  [(AKAppleIDAuthenticationController *)authController setConfigurationInfo:v8 forIdentifier:v9 forAltDSID:altDSID2 completion:?];
  MEMORY[0x277D82BD8](altDSID2);
  MEMORY[0x277D82BD8](viewModel2);
  MEMORY[0x277D82BD8](authController);
  objc_storeStrong(&v19, 0);
  objc_storeStrong(&v18, 0);
  objc_storeStrong(&v17, 0);
  objc_storeStrong(&v21, 0);
  objc_storeStrong(&v22, 0);
  objc_storeStrong(&mEMORY[0x277CF0130], 0);
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
  viewModel = [(AKAccountPrivacyOptInViewController *)self viewModel];
  primaryButtonTitle = [(AKAccountPrivacyOptInViewModel *)viewModel primaryButtonTitle];
  MEMORY[0x277D82BD8](primaryButtonTitle);
  *&v2 = MEMORY[0x277D82BD8](viewModel).n128_u64[0];
  if (primaryButtonTitle)
  {
    boldButton = [MEMORY[0x277D37618] boldButton];
    primaryButton = self->_primaryButton;
    self->_primaryButton = boldButton;
    *&v5 = MEMORY[0x277D82BD8](primaryButton).n128_u64[0];
    v6 = self->_primaryButton;
    viewModel2 = [(AKAccountPrivacyOptInViewController *)self viewModel];
    primaryButtonTitle2 = [(AKAccountPrivacyOptInViewModel *)viewModel2 primaryButtonTitle];
    [OBTrayButton setTitle:v6 forState:"setTitle:forState:"];
    MEMORY[0x277D82BD8](primaryButtonTitle2);
    [(OBTrayButton *)self->_primaryButton addTarget:self action:sel__primaryButtonSelected_ forControlEvents:64, MEMORY[0x277D82BD8](viewModel2).n128_f64[0]];
    buttonTray = [(AKAccountPrivacyOptInViewController *)self buttonTray];
    [buttonTray addButton:self->_primaryButton];
    MEMORY[0x277D82BD8](buttonTray);
  }
}

- (void)_addSecondaryButton
{
  viewModel = [(AKAccountPrivacyOptInViewController *)self viewModel];
  secondaryButtonTitle = [(AKAccountPrivacyOptInViewModel *)viewModel secondaryButtonTitle];
  MEMORY[0x277D82BD8](secondaryButtonTitle);
  *&v2 = MEMORY[0x277D82BD8](viewModel).n128_u64[0];
  if (secondaryButtonTitle)
  {
    linkButton = [MEMORY[0x277D37650] linkButton];
    secondaryButton = self->_secondaryButton;
    self->_secondaryButton = linkButton;
    *&v5 = MEMORY[0x277D82BD8](secondaryButton).n128_u64[0];
    v7 = self->_secondaryButton;
    viewModel2 = [(AKAccountPrivacyOptInViewController *)self viewModel];
    secondaryButtonTitle2 = [(AKAccountPrivacyOptInViewModel *)viewModel2 secondaryButtonTitle];
    [OBTrayButton setTitle:v7 forState:"setTitle:forState:"];
    MEMORY[0x277D82BD8](secondaryButtonTitle2);
    [(OBTrayButton *)self->_secondaryButton addTarget:self action:sel__secondaryButtonSelected_ forControlEvents:64, MEMORY[0x277D82BD8](viewModel2).n128_f64[0]];
    buttonTray = [(AKAccountPrivacyOptInViewController *)self buttonTray];
    [buttonTray addButton:self->_secondaryButton];
    MEMORY[0x277D82BD8](buttonTray);
  }

  else
  {
    objc_storeStrong(&self->_secondaryButton, 0);
    buttonTray2 = [(AKAccountPrivacyOptInViewController *)self buttonTray];
    [buttonTray2 removeButton:self->_secondaryButton];
    MEMORY[0x277D82BD8](buttonTray2);
  }
}

- (void)_addPrivacyLinkController
{
  v4[1] = *MEMORY[0x277D85DE8];
  buttonTray = [(AKAccountPrivacyOptInViewController *)self buttonTray];
  v4[0] = @"com.apple.onboarding.improveaccountsecurity";
  v2 = [MEMORY[0x277CBEA60] arrayWithObjects:v4 count:1];
  [buttonTray setPrivacyLinkForBundles:?];
  MEMORY[0x277D82BD8](v2);
  MEMORY[0x277D82BD8](buttonTray);
  *MEMORY[0x277D85DE8];
}

- (void)_cleanupOldViews
{
  v17 = *MEMORY[0x277D85DE8];
  selfCopy = self;
  v14 = a2;
  if (self->_primaryButton)
  {
    buttonTray = [(AKAccountPrivacyOptInViewController *)selfCopy buttonTray];
    [buttonTray removeButton:selfCopy->_primaryButton];
    MEMORY[0x277D82BD8](buttonTray);
    objc_storeStrong(&selfCopy->_primaryButton, 0);
  }

  if (selfCopy->_secondaryButton)
  {
    buttonTray2 = [(AKAccountPrivacyOptInViewController *)selfCopy buttonTray];
    [buttonTray2 removeButton:selfCopy->_secondaryButton];
    MEMORY[0x277D82BD8](buttonTray2);
    objc_storeStrong(&selfCopy->_secondaryButton, 0);
  }

  contentView = [(AKAccountPrivacyOptInViewController *)selfCopy contentView];
  MEMORY[0x277D82BD8](contentView);
  if (contentView)
  {
    memset(__b, 0, sizeof(__b));
    contentView2 = [(AKAccountPrivacyOptInViewController *)selfCopy contentView];
    obj = [contentView2 subviews];
    v8 = [obj countByEnumeratingWithState:__b objects:v16 count:{16, MEMORY[0x277D82BD8](contentView2).n128_f64[0]}];
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