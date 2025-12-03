@interface AAUIAccountBeneficiaryViewController
- (AAUIAccountBeneficiaryViewController)init;
- (AAUIAccountBeneficiaryViewController)initWithAccountManager:(id)manager;
- (AAUIAccountBeneficiaryViewController)initWithAccountManager:(id)manager highlightRowIdentifier:(id)identifier;
- (BOOL)_canBeBeneficiary;
- (BOOL)_canHaveBeneficiary;
- (id)_addBeneficiarySpecifier;
- (id)_idmsAccount;
- (id)_myBenefactorsGroupSpecifier;
- (id)_myBenefactorsSpecifiers;
- (id)_myBeneficiariesGroupSpecifier;
- (id)_myBeneficiariesSpecifiers;
- (id)_noBenefactorSpecifier;
- (id)specifiers;
- (void)_beginObservingTrustedContactChangeNotification;
- (void)_fetchAllBeneficiaryContacts;
- (void)_learnMoreWasTapped;
- (void)_myBenefactorWasTapped:(id)tapped;
- (void)_myBeneficiaryWasTapped:(id)tapped;
- (void)_showAddBeneficiary;
- (void)_showViewController:(id)controller;
- (void)_stopObservingTrustedContactChangeNotification;
- (void)_syncTrustedContactsFromCloudKit;
- (void)dealloc;
- (void)viewDidLoad;
@end

@implementation AAUIAccountBeneficiaryViewController

- (AAUIAccountBeneficiaryViewController)init
{
  v14.receiver = self;
  v14.super_class = AAUIAccountBeneficiaryViewController;
  v2 = [(AAUIAccountBeneficiaryViewController *)&v14 init];
  if (v2)
  {
    v3 = objc_opt_new();
    contactsProvider = v2->_contactsProvider;
    v2->_contactsProvider = v3;

    v5 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    v6 = dispatch_queue_create("com.apple.appleaccountsettings.fetchbeneficiaries", v5);
    contactWorkQueue = v2->_contactWorkQueue;
    v2->_contactWorkQueue = v6;

    myBeneficiaries = v2->_myBeneficiaries;
    v9 = MEMORY[0x1E695E0F0];
    v2->_myBeneficiaries = MEMORY[0x1E695E0F0];

    myBenefactors = v2->_myBenefactors;
    v2->_myBenefactors = v9;

    v11 = objc_opt_new();
    viewModel = v2->_viewModel;
    v2->_viewModel = v11;
  }

  return v2;
}

- (AAUIAccountBeneficiaryViewController)initWithAccountManager:(id)manager
{
  managerCopy = manager;
  v6 = [(AAUIAccountBeneficiaryViewController *)self init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_accountManager, manager);
  }

  return v7;
}

- (AAUIAccountBeneficiaryViewController)initWithAccountManager:(id)manager highlightRowIdentifier:(id)identifier
{
  managerCopy = manager;
  identifierCopy = identifier;
  v9 = [(AAUIAccountBeneficiaryViewController *)self init];
  if (v9)
  {
    v10 = _AAUILogSystem();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEBUG))
    {
      [AAUIAccountBeneficiaryViewController initWithAccountManager:identifierCopy highlightRowIdentifier:v10];
    }

    objc_storeStrong((&v9->super.super.super.super.super.isa + *MEMORY[0x1E69C57A8]), identifier);
    objc_storeStrong(&v9->_accountManager, manager);
  }

  return v9;
}

- (void)dealloc
{
  v9 = *MEMORY[0x1E69E9840];
  v3 = _AAUILogSystem();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    v4 = objc_opt_self();
    v5 = NSStringFromClass(v4);
    *buf = 138412290;
    v8 = v5;
    _os_log_impl(&dword_1C5355000, v3, OS_LOG_TYPE_DEFAULT, "dealloc %@", buf, 0xCu);
  }

  [(AAUIAccountBeneficiaryViewController *)self _stopObservingTrustedContactChangeNotification];
  v6.receiver = self;
  v6.super_class = AAUIAccountBeneficiaryViewController;
  [(AAUIAccountBeneficiaryViewController *)&v6 dealloc];
}

- (void)viewDidLoad
{
  v8.receiver = self;
  v8.super_class = AAUIAccountBeneficiaryViewController;
  [(AAUIAccountBeneficiaryViewController *)&v8 viewDidLoad];
  if (!self->_accountManager)
  {
    specifier = [(AAUIAccountBeneficiaryViewController *)self specifier];
    v4 = [specifier objectForKeyedSubscript:@"icloudAccountManager"];
    accountManager = self->_accountManager;
    self->_accountManager = v4;
  }

  title = [(AAAccountBeneficiaryManagementViewModel *)self->_viewModel title];
  navigationItem = [(AAUIAccountBeneficiaryViewController *)self navigationItem];
  [navigationItem setTitle:title];

  [(AAUIAccountBeneficiaryViewController *)self _fetchAllBeneficiaryContacts];
  [(AAUIAccountBeneficiaryViewController *)self _beginObservingTrustedContactChangeNotification];
  [(AAUIAccountBeneficiaryViewController *)self _syncTrustedContactsFromCloudKit];
}

- (void)_beginObservingTrustedContactChangeNotification
{
  defaultCenter = [MEMORY[0x1E696ABB0] defaultCenter];
  [defaultCenter addObserver:self selector:sel__fetchAllBeneficiaryContacts name:*MEMORY[0x1E698B7C8] object:0 suspensionBehavior:4];
}

- (void)_stopObservingTrustedContactChangeNotification
{
  defaultCenter = [MEMORY[0x1E696ABB0] defaultCenter];
  [defaultCenter removeObserver:self name:*MEMORY[0x1E698B7C8] object:0];
}

- (id)specifiers
{
  v22 = *MEMORY[0x1E69E9840];
  v3 = *MEMORY[0x1E69C57B8];
  if (!*(&self->super.super.super.super.super.isa + v3))
  {
    v4 = _AAUILogSystem();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      LOWORD(v20) = 0;
      _os_log_impl(&dword_1C5355000, v4, OS_LOG_TYPE_DEFAULT, "Loading Account Beneficiary specifiers.", &v20, 2u);
    }

    v5 = objc_opt_new();
    if ([(AAUIAccountBeneficiaryViewController *)self _canHaveBeneficiary])
    {
      v6 = _AAUILogSystem();
      if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
      {
        LOWORD(v20) = 0;
        _os_log_impl(&dword_1C5355000, v6, OS_LOG_TYPE_DEFAULT, "Account can have beneficiary, adding beneficiary specifiers to UI...", &v20, 2u);
      }

      _myBeneficiariesGroupSpecifier = [(AAUIAccountBeneficiaryViewController *)self _myBeneficiariesGroupSpecifier];
      [v5 addObject:_myBeneficiariesGroupSpecifier];

      _myBeneficiariesSpecifiers = [(AAUIAccountBeneficiaryViewController *)self _myBeneficiariesSpecifiers];
      [v5 addObjectsFromArray:_myBeneficiariesSpecifiers];

      _addBeneficiarySpecifier = [(AAUIAccountBeneficiaryViewController *)self _addBeneficiarySpecifier];
      [v5 addObject:_addBeneficiarySpecifier];
    }

    if ([(AAUIAccountBeneficiaryViewController *)self _canBeBeneficiary])
    {
      v10 = _AAUILogSystem();
      if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
      {
        LOWORD(v20) = 0;
        _os_log_impl(&dword_1C5355000, v10, OS_LOG_TYPE_DEFAULT, "Account can have benefactors, adding benefactor specifiers to UI...", &v20, 2u);
      }

      if ([(NSArray *)self->_myBenefactors count])
      {
        _myBenefactorsGroupSpecifier = [(AAUIAccountBeneficiaryViewController *)self _myBenefactorsGroupSpecifier];
        [v5 addObject:_myBenefactorsGroupSpecifier];

        _myBenefactorsSpecifiers = [(AAUIAccountBeneficiaryViewController *)self _myBenefactorsSpecifiers];
        [v5 addObjectsFromArray:_myBenefactorsSpecifiers];
      }
    }

    if (![(NSArray *)self->_myBenefactors count]&& ![(AAUIAccountBeneficiaryViewController *)self _canHaveBeneficiary])
    {
      v13 = _AAUILogSystem();
      if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
      {
        LOWORD(v20) = 0;
        _os_log_impl(&dword_1C5355000, v13, OS_LOG_TYPE_DEFAULT, "Account can't have beneficiary and does not have any benefactors, adding no benefactor specifier to UI...", &v20, 2u);
      }

      _noBenefactorSpecifier = [(AAUIAccountBeneficiaryViewController *)self _noBenefactorSpecifier];
      [v5 addObject:_noBenefactorSpecifier];
    }

    v15 = *(&self->super.super.super.super.super.isa + v3);
    *(&self->super.super.super.super.super.isa + v3) = v5;
  }

  v16 = _AAUILogSystem();
  if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
  {
    v17 = *(&self->super.super.super.super.super.isa + v3);
    v20 = 138412290;
    v21 = v17;
    _os_log_impl(&dword_1C5355000, v16, OS_LOG_TYPE_DEFAULT, "AAUIAccountBeneficiaryViewController specifiers: returning %@", &v20, 0xCu);
  }

  v18 = *(&self->super.super.super.super.super.isa + v3);

  return v18;
}

- (void)_syncTrustedContactsFromCloudKit
{
  v2 = objc_alloc_init(MEMORY[0x1E698B850]);
  [v2 pullTrustedContactsFromCloudKitWithCompletion:&__block_literal_global_9];
}

void __72__AAUIAccountBeneficiaryViewController__syncTrustedContactsFromCloudKit__block_invoke(uint64_t a1, void *a2)
{
  v6 = *MEMORY[0x1E69E9840];
  v2 = a2;
  v3 = _AAUILogSystem();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    v4 = 138412290;
    v5 = v2;
    _os_log_impl(&dword_1C5355000, v3, OS_LOG_TYPE_DEFAULT, "Completed sync of trusted contacts from CloudKit with error: %@", &v4, 0xCu);
  }
}

- (void)_fetchAllBeneficiaryContacts
{
  objc_initWeak(&location, self);
  contactsProvider = self->_contactsProvider;
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __68__AAUIAccountBeneficiaryViewController__fetchAllBeneficiaryContacts__block_invoke;
  v7[3] = &unk_1E820C670;
  objc_copyWeak(&v8, &location);
  [(AAContactsProvider *)contactsProvider fetchMyBeneficiaries:v7];
  v4 = self->_contactsProvider;
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __68__AAUIAccountBeneficiaryViewController__fetchAllBeneficiaryContacts__block_invoke_3;
  v5[3] = &unk_1E820C670;
  objc_copyWeak(&v6, &location);
  [(AAContactsProvider *)v4 fetchMyBenefactors:v5];
  objc_destroyWeak(&v6);
  objc_destroyWeak(&v8);
  objc_destroyWeak(&location);
}

void __68__AAUIAccountBeneficiaryViewController__fetchAllBeneficiaryContacts__block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v5 = WeakRetained[185];
  WeakRetained[185] = v3;
  v6 = v3;

  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __68__AAUIAccountBeneficiaryViewController__fetchAllBeneficiaryContacts__block_invoke_2;
  block[3] = &unk_1E820B8F0;
  block[4] = WeakRetained;
  dispatch_async(MEMORY[0x1E69E96A0], block);
}

void __68__AAUIAccountBeneficiaryViewController__fetchAllBeneficiaryContacts__block_invoke_3(uint64_t a1, void *a2)
{
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v5 = WeakRetained[186];
  WeakRetained[186] = v3;
  v6 = v3;

  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __68__AAUIAccountBeneficiaryViewController__fetchAllBeneficiaryContacts__block_invoke_4;
  block[3] = &unk_1E820B8F0;
  block[4] = WeakRetained;
  dispatch_async(MEMORY[0x1E69E96A0], block);
}

- (id)_myBeneficiariesGroupSpecifier
{
  v3 = objc_opt_new();
  myBeneficiariesGroupTitle = [(AAAccountBeneficiaryManagementViewModel *)self->_viewModel myBeneficiariesGroupTitle];
  uppercaseString = [myBeneficiariesGroupTitle uppercaseString];
  myBeneficiariesGroupTitle2 = [(AAAccountBeneficiaryManagementViewModel *)self->_viewModel myBeneficiariesGroupTitle];
  myBeneficiariesGroupFooter = [(AAAccountBeneficiaryManagementViewModel *)self->_viewModel myBeneficiariesGroupFooter];
  learnMore = [(AAAccountBeneficiaryManagementViewModel *)self->_viewModel learnMore];
  v9 = [v3 createGroupSpecifierWithIdentifier:uppercaseString title:myBeneficiariesGroupTitle2 footerText:myBeneficiariesGroupFooter linkText:learnMore actionMethodName:@"_learnMoreWasTapped" target:self];

  return v9;
}

- (id)_noBenefactorSpecifier
{
  v3 = objc_opt_new();
  noBenefactorFooter = [(AAAccountBeneficiaryManagementViewModel *)self->_viewModel noBenefactorFooter];
  learnMore = [(AAAccountBeneficiaryManagementViewModel *)self->_viewModel learnMore];
  v6 = [v3 createGroupSpecifierWithIdentifier:@"noBenefactor" title:0 footerText:noBenefactorFooter linkText:learnMore actionMethodName:@"_learnMoreWasTapped" target:self];

  return v6;
}

- (id)_myBeneficiariesSpecifiers
{
  v16 = *MEMORY[0x1E69E9840];
  v3 = objc_opt_new();
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v4 = self->_myBeneficiaries;
  v5 = [(NSArray *)v4 countByEnumeratingWithState:&v11 objects:v15 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v12;
    do
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v12 != v7)
        {
          objc_enumerationMutation(v4);
        }

        v9 = [AAUITrustedContactListCell specifierForContact:*(*(&v11 + 1) + 8 * i) loadAction:sel__myBeneficiaryWasTapped_ target:self, v11];
        [v3 addObject:v9];
      }

      v6 = [(NSArray *)v4 countByEnumeratingWithState:&v11 objects:v15 count:16];
    }

    while (v6);
  }

  return v3;
}

- (id)_addBeneficiarySpecifier
{
  v3 = objc_opt_new();
  myBeneficiariesAdd = [(AAAccountBeneficiaryManagementViewModel *)self->_viewModel myBeneficiariesAdd];
  v5 = [v3 createAddTableCellWithTitle:myBeneficiariesAdd loadAction:sel__showAddBeneficiary target:self];

  return v5;
}

- (id)_myBenefactorsGroupSpecifier
{
  v3 = MEMORY[0x1E69C5748];
  beneficiaryForGroupTitle = [(AAAccountBeneficiaryManagementViewModel *)self->_viewModel beneficiaryForGroupTitle];
  uppercaseString = [beneficiaryForGroupTitle uppercaseString];
  beneficiaryForGroupTitle2 = [(AAAccountBeneficiaryManagementViewModel *)self->_viewModel beneficiaryForGroupTitle];
  v7 = [v3 groupSpecifierWithID:uppercaseString name:beneficiaryForGroupTitle2];

  return v7;
}

- (id)_myBenefactorsSpecifiers
{
  v17 = *MEMORY[0x1E69E9840];
  v3 = objc_opt_new();
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v4 = self->_myBenefactors;
  v5 = [(NSArray *)v4 countByEnumeratingWithState:&v12 objects:v16 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v13;
    do
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v13 != v7)
        {
          objc_enumerationMutation(v4);
        }

        v9 = *(*(&v12 + 1) + 8 * i);
        if ([v9 trustedContactStatus] == 2)
        {
          v10 = [AAUITrustedContactListCell specifierForContact:v9 loadAction:sel__myBenefactorWasTapped_ target:self];
          [v3 addObject:v10];
        }
      }

      v6 = [(NSArray *)v4 countByEnumeratingWithState:&v12 objects:v16 count:16];
    }

    while (v6);
  }

  return v3;
}

- (void)_myBeneficiaryWasTapped:(id)tapped
{
  userInfo = [tapped userInfo];
  trustedContactStatus = [userInfo trustedContactStatus];
  v5 = off_1E8209C48;
  if (trustedContactStatus != 1)
  {
    v5 = off_1E8209C38;
  }

  v6 = [objc_alloc(*v5) initWithAccountManager:self->_accountManager localContact:userInfo];
  v7 = objc_opt_new();
  v8 = [v7 viewModelForFlow:2 withContact:userInfo];

  v9 = [[AAUITrustedContactDetailsViewController alloc] initWithContact:userInfo viewModel:v8 actionHandler:v6];
  [(AAUIAccountBeneficiaryViewController *)self _showViewController:v9];
}

- (void)_learnMoreWasTapped
{
  v9 = *MEMORY[0x1E69E9840];
  v3 = _AAUILogSystem();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    learnMoreURL = [(AAAccountBeneficiaryManagementViewModel *)self->_viewModel learnMoreURL];
    v7 = 138412290;
    v8 = learnMoreURL;
    _os_log_impl(&dword_1C5355000, v3, OS_LOG_TYPE_DEFAULT, "Learn more was tapped, URL is: %@", &v7, 0xCu);
  }

  mEMORY[0x1E69DC668] = [MEMORY[0x1E69DC668] sharedApplication];
  learnMoreURL2 = [(AAAccountBeneficiaryManagementViewModel *)self->_viewModel learnMoreURL];
  [mEMORY[0x1E69DC668] openURL:learnMoreURL2 withCompletionHandler:0];
}

- (void)_myBenefactorWasTapped:(id)tapped
{
  userInfo = [tapped userInfo];
  v4 = [[AAUIMyBenefactorActionHandler alloc] initWithAccountManager:self->_accountManager localContact:userInfo];
  v5 = objc_opt_new();
  v6 = [v5 viewModelForFlow:3 withContact:userInfo];

  v7 = [[AAUITrustedContactDetailsViewController alloc] initWithContact:userInfo viewModel:v6 actionHandler:v4];
  [(AAUIAccountBeneficiaryViewController *)self _showViewController:v7];
}

- (void)_showAddBeneficiary
{
  v3 = _AAUILogSystem();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *v9 = 0;
    _os_log_impl(&dword_1C5355000, v3, OS_LOG_TYPE_DEFAULT, "Initiating Inheritance Beneficiary setup flow...", v9, 2u);
  }

  accounts = [(AIDAAccountManager *)self->_accountManager accounts];
  v5 = [accounts objectForKeyedSubscript:*MEMORY[0x1E698C218]];

  if (v5)
  {
    v6 = [[AAUIInheritanceSetupFlowController alloc] initWithAccount:v5];
    inheritanceSetupFlowController = self->_inheritanceSetupFlowController;
    self->_inheritanceSetupFlowController = v6;

    [(AAUIInheritanceSetupFlowController *)self->_inheritanceSetupFlowController start];
    navigationController = [(AAUIInheritanceSetupFlowController *)self->_inheritanceSetupFlowController navigationController];
    [(AAUIAccountBeneficiaryViewController *)self _showViewController:navigationController];
  }
}

- (void)_showViewController:(id)controller
{
  controllerCopy = controller;
  dispatch_assert_queue_V2(MEMORY[0x1E69E96A0]);
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    [(AAUIAccountBeneficiaryViewController *)self presentViewController:controllerCopy animated:1 completion:0];
  }

  else
  {
    [(AAUIAccountBeneficiaryViewController *)self showViewController:controllerCopy sender:self];
  }
}

- (id)_idmsAccount
{
  idmsAccount = self->_idmsAccount;
  if (!idmsAccount)
  {
    accounts = [(AIDAAccountManager *)self->_accountManager accounts];
    v5 = [accounts objectForKeyedSubscript:*MEMORY[0x1E698C218]];

    mEMORY[0x1E698DC80] = [MEMORY[0x1E698DC80] sharedInstance];
    aa_altDSID = [v5 aa_altDSID];
    v8 = [mEMORY[0x1E698DC80] authKitAccountWithAltDSID:aa_altDSID];
    v9 = self->_idmsAccount;
    self->_idmsAccount = v8;

    idmsAccount = self->_idmsAccount;
  }

  return idmsAccount;
}

- (BOOL)_canHaveBeneficiary
{
  mEMORY[0x1E698DC80] = [MEMORY[0x1E698DC80] sharedInstance];
  _idmsAccount = [(AAUIAccountBeneficiaryViewController *)self _idmsAccount];
  v5 = [mEMORY[0x1E698DC80] canHaveBeneficiaryForAccount:_idmsAccount];

  return v5;
}

- (BOOL)_canBeBeneficiary
{
  mEMORY[0x1E698DC80] = [MEMORY[0x1E698DC80] sharedInstance];
  _idmsAccount = [(AAUIAccountBeneficiaryViewController *)self _idmsAccount];
  v5 = [mEMORY[0x1E698DC80] canBeBeneficiaryForAccount:_idmsAccount];

  return v5;
}

- (void)initWithAccountManager:(uint64_t)a1 highlightRowIdentifier:(NSObject *)a2 .cold.1(uint64_t a1, NSObject *a2)
{
  v4 = *MEMORY[0x1E69E9840];
  v2 = 138412290;
  v3 = a1;
  _os_log_debug_impl(&dword_1C5355000, a2, OS_LOG_TYPE_DEBUG, "Highlighting row %@", &v2, 0xCu);
}

@end