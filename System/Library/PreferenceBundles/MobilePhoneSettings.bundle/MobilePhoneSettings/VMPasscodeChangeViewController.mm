@interface VMPasscodeChangeViewController
- (VMAccountsViewController)accountsViewController;
- (id)accountAtIndex:(unint64_t)index;
- (id)accountsView:(id)view buttonForRowAtIndex:(unint64_t)index;
- (id)passcodeViewControllerForAccount:(id)account;
- (id)titleForAccountsView:(id)view;
- (unint64_t)numberOfRowsForAccountsView:(id)view;
- (void)accountsView:(id)view buttonTappedForRowWithIndex:(unint64_t)index;
- (void)cancelAction:(id)action;
- (void)setPINViewControllerFinished:(id)finished success:(BOOL)success oldPIN:(id)n newPIN:(id)iN;
- (void)updateAccounts;
- (void)updateView;
- (void)viewDidLoad;
@end

@implementation VMPasscodeChangeViewController

- (void)viewDidLoad
{
  v6.receiver = self;
  v6.super_class = VMPasscodeChangeViewController;
  [(VMPasscodeChangeViewController *)&v6 viewDidLoad];
  v3 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
  v4 = [v3 localizedStringForKey:@"ACCOUNTS_VIEW_CONTROLLER_NAVIGATION_ITEM_TITLE_PASSWORD" value:&stru_284EEA450 table:@"VoicemailUI"];
  navigationItem = [(VMPasscodeChangeViewController *)self navigationItem];
  [navigationItem setTitle:v4];

  [(VMPasscodeChangeViewController *)self updateAccounts];
  [(VMPasscodeChangeViewController *)self updateView];
}

- (id)accountAtIndex:(unint64_t)index
{
  accounts = [(VMPasscodeChangeViewController *)self accounts];
  if ([accounts count] <= index)
  {
    v5 = 0;
  }

  else
  {
    v5 = [accounts objectAtIndexedSubscript:index];
  }

  return v5;
}

- (void)updateAccounts
{
  v21 = *MEMORY[0x277D85DE8];
  array = [MEMORY[0x277CBEB18] array];
  manager = [(VMNavigationController *)self manager];
  accounts = [manager accounts];

  v18 = 0u;
  v19 = 0u;
  v16 = 0u;
  v17 = 0u;
  v6 = accounts;
  v7 = [v6 countByEnumeratingWithState:&v16 objects:v20 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v17;
    do
    {
      for (i = 0; i != v8; ++i)
      {
        if (*v17 != v9)
        {
          objc_enumerationMutation(v6);
        }

        v11 = *(*(&v16 + 1) + 8 * i);
        if ([v11 isProvisioned])
        {
          manager2 = [(VMNavigationController *)self manager];
          uUID = [v11 UUID];
          v14 = [manager2 isPasscodeChangeSupportedForAccountUUID:uUID];

          if (v14)
          {
            [array addObject:v11];
          }
        }
      }

      v8 = [v6 countByEnumeratingWithState:&v16 objects:v20 count:16];
    }

    while (v8);
  }

  [(VMPasscodeChangeViewController *)self setAccounts:array];
  v15 = *MEMORY[0x277D85DE8];
}

- (void)updateView
{
  v13[1] = *MEMORY[0x277D85DE8];
  manager = [(VMNavigationController *)self manager];
  accounts = [manager accounts];
  v5 = [accounts count];

  if (v5 < 2)
  {
    accounts2 = [(VMPasscodeChangeViewController *)self accounts];
    firstObject = [accounts2 firstObject];

    if (firstObject)
    {
      [(VMPasscodeChangeViewController *)self setSelectedAccount:firstObject];
      v7 = [(VMPasscodeChangeViewController *)self passcodeViewControllerForAccount:firstObject];
      v12 = v7;
      v9 = [MEMORY[0x277CBEA60] arrayWithObjects:&v12 count:1];
      [(VMPasscodeChangeViewController *)self setViewControllers:v9];
    }

    else
    {
      v7 = PHDefaultLog();
      if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
      {
        *v11 = 0;
        _os_log_impl(&dword_23C144000, v7, OS_LOG_TYPE_DEFAULT, "No accounts were found.", v11, 2u);
      }
    }
  }

  else
  {
    firstObject = [(VMPasscodeChangeViewController *)self accountsViewController];
    v13[0] = firstObject;
    v7 = [MEMORY[0x277CBEA60] arrayWithObjects:v13 count:1];
    [(VMPasscodeChangeViewController *)self setViewControllers:v7];
  }

  v10 = *MEMORY[0x277D85DE8];
}

- (VMAccountsViewController)accountsViewController
{
  accountsViewController = self->_accountsViewController;
  if (!accountsViewController)
  {
    v4 = [VMAccountsViewController alloc];
    manager = [(VMNavigationController *)self manager];
    v6 = [(VMViewController *)v4 initWithManager:manager];
    v7 = self->_accountsViewController;
    self->_accountsViewController = v6;

    accountsView = [(VMAccountsViewController *)self->_accountsViewController accountsView];
    [accountsView setDataSource:self];

    accountsView2 = [(VMAccountsViewController *)self->_accountsViewController accountsView];
    [accountsView2 setDelegate:self];

    v10 = [objc_alloc(MEMORY[0x277D751E0]) initWithBarButtonSystemItem:1 target:self action:sel_cancelAction_];
    navigationItem = [(VMAccountsViewController *)self->_accountsViewController navigationItem];
    [navigationItem setLeftBarButtonItem:v10];

    accountsViewController = self->_accountsViewController;
  }

  return accountsViewController;
}

- (id)passcodeViewControllerForAccount:(id)account
{
  accountCopy = account;
  manager = [(VMNavigationController *)self manager];
  uUID = [accountCopy UUID];
  v7 = [manager minimumPasscodeLengthForAccountUUID:uUID];

  manager2 = [(VMNavigationController *)self manager];
  uUID2 = [accountCopy UUID];

  v10 = [manager2 maximumPasscodeLengthForAccountUUID:uUID2];
  v11 = [objc_alloc(MEMORY[0x277D6ED88]) initForNewPINWithMinLength:v7 maxLength:v10 confirmPIN:1];
  [v11 setDelegate:self];
  v12 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
  v13 = [v12 localizedStringForKey:@"CHANGE_PASSCODE_VIEW_CONTROLLER_PASSCODE_CURRENT" value:&stru_284EEA450 table:@"VoicemailUI"];
  [v11 setPromptTextForOldPIN:v13];

  v14 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
  v15 = [v14 localizedStringForKey:@"CHANGE_PASSCODE_VIEW_CONTROLLER_PASSCODE_NEW" value:&stru_284EEA450 table:@"VoicemailUI"];
  [v11 setPromptTextForNewPIN:v15];

  v16 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
  v17 = [v16 localizedStringForKey:@"CHANGE_PASSCODE_VIEW_CONTROLLER_PASSCODE_NEW_REENTER" value:&stru_284EEA450 table:@"VoicemailUI"];
  [v11 setPromptTextForConfirmingNewPIN:v17];

  v18 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
  v19 = [v18 localizedStringForKey:@"CHANGE_PASSCODE_VIEW_CONTROLLER_PASSCODE_SAVING" value:&stru_284EEA450 table:@"VoicemailUI"];
  [v11 setPromptTextForSavingPIN:v19];

  return v11;
}

- (void)cancelAction:(id)action
{
  accountsViewController = [(VMPasscodeChangeViewController *)self accountsViewController];
  [accountsViewController dismissViewControllerAnimated:1 completion:0];
}

- (id)accountsView:(id)view buttonForRowAtIndex:(unint64_t)index
{
  v6 = +[VMAccountButton accountButton];
  v7 = [(VMPasscodeChangeViewController *)self accountAtIndex:index];
  accountDescription = [v7 accountDescription];
  manager = [(VMNavigationController *)self manager];
  accounts = [manager accounts];
  v11 = [accounts count];

  if (v11 == 1)
  {
    v12 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
    v13 = [v12 localizedStringForKey:@"ACCOUNTS_VIEW_BUTTON_TITLE_CHANGE_PASSCODE" value:&stru_284EEA450 table:@"VoicemailUI"];

    accountDescription = v13;
  }

  [v6 setTitle:accountDescription forState:0];

  return v6;
}

- (unint64_t)numberOfRowsForAccountsView:(id)view
{
  accounts = [(VMPasscodeChangeViewController *)self accounts];
  v4 = [accounts count];

  return v4;
}

- (id)titleForAccountsView:(id)view
{
  v3 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
  v4 = [v3 localizedStringForKey:@"ACCOUNTS_VIEW_MESSAGE_TITLE_CHANGE_PASSWORD" value:&stru_284EEA450 table:@"VoicemailUI"];

  return v4;
}

- (void)accountsView:(id)view buttonTappedForRowWithIndex:(unint64_t)index
{
  v12 = *MEMORY[0x277D85DE8];
  v6 = [(VMPasscodeChangeViewController *)self accountAtIndex:index];
  if (v6)
  {
    [(VMPasscodeChangeViewController *)self setSelectedAccount:v6];
    v7 = [(VMPasscodeChangeViewController *)self passcodeViewControllerForAccount:v6];
    [(VMPasscodeChangeViewController *)self pushViewController:v7 animated:1];
  }

  else
  {
    v8 = PHDefaultLog();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      v10 = 134217984;
      indexCopy = index;
      _os_log_impl(&dword_23C144000, v8, OS_LOG_TYPE_DEFAULT, "Could not retrieve account at index %lu", &v10, 0xCu);
    }
  }

  v9 = *MEMORY[0x277D85DE8];
}

- (void)setPINViewControllerFinished:(id)finished success:(BOOL)success oldPIN:(id)n newPIN:(id)iN
{
  successCopy = success;
  finishedCopy = finished;
  nCopy = n;
  iNCopy = iN;
  objc_initWeak(&location, self);
  v22[0] = MEMORY[0x277D85DD0];
  v22[1] = 3221225472;
  v22[2] = __85__VMPasscodeChangeViewController_setPINViewControllerFinished_success_oldPIN_newPIN___block_invoke;
  v22[3] = &unk_278BB36E0;
  objc_copyWeak(&v24, &location);
  v13 = finishedCopy;
  v23 = v13;
  v14 = MEMORY[0x23EEC9570](v22);
  v15 = v14;
  if (successCopy)
  {
    manager = [(VMNavigationController *)self manager];
    selectedAccount = [(VMPasscodeChangeViewController *)self selectedAccount];
    uUID = [selectedAccount UUID];
    v19[0] = MEMORY[0x277D85DD0];
    v19[1] = 3221225472;
    v19[2] = __85__VMPasscodeChangeViewController_setPINViewControllerFinished_success_oldPIN_newPIN___block_invoke_3;
    v19[3] = &unk_278BB3730;
    v21 = v15;
    v20 = v13;
    [manager setPasscode:iNCopy forAccountUUID:uUID completion:v19];
  }

  else
  {
    (*(v14 + 16))(v14);
  }

  objc_destroyWeak(&v24);
  objc_destroyWeak(&location);
}

void __85__VMPasscodeChangeViewController_setPINViewControllerFinished_success_oldPIN_newPIN___block_invoke(uint64_t a1)
{
  v2[0] = MEMORY[0x277D85DD0];
  v2[1] = 3221225472;
  v2[2] = __85__VMPasscodeChangeViewController_setPINViewControllerFinished_success_oldPIN_newPIN___block_invoke_2;
  v2[3] = &unk_278BB36E0;
  objc_copyWeak(&v4, (a1 + 40));
  v3 = *(a1 + 32);
  dispatch_async(MEMORY[0x277D85CD0], v2);

  objc_destroyWeak(&v4);
}

void __85__VMPasscodeChangeViewController_setPINViewControllerFinished_success_oldPIN_newPIN___block_invoke_2(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  if (WeakRetained)
  {
    v3 = WeakRetained;
    [WeakRetained setSelectedAccount:0];
    [*(a1 + 32) dismissViewControllerAnimated:1 completion:0];
    WeakRetained = v3;
  }
}

void __85__VMPasscodeChangeViewController_setPINViewControllerFinished_success_oldPIN_newPIN___block_invoke_3(uint64_t a1, char a2, void *a3)
{
  v5 = a3;
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __85__VMPasscodeChangeViewController_setPINViewControllerFinished_success_oldPIN_newPIN___block_invoke_4;
  v7[3] = &unk_278BB3708;
  v11 = a2;
  v10 = *(a1 + 40);
  v8 = v5;
  v9 = *(a1 + 32);
  v6 = v5;
  dispatch_async(MEMORY[0x277D85CD0], v7);
}

void __85__VMPasscodeChangeViewController_setPINViewControllerFinished_success_oldPIN_newPIN___block_invoke_4(uint64_t a1)
{
  if (*(a1 + 56) == 1)
  {
    v2 = *(a1 + 48);
    v3 = *(*(a1 + 48) + 16);

    v3();
  }

  else
  {
    v4 = *(a1 + 32);
    if (v4)
    {
      v11 = 0;
      v12 = 0;
      [v4 displayedErrorTitle:&v12 message:&v11];
      v5 = v12;
      v6 = v11;
    }

    else
    {
      v6 = 0;
      v5 = 0;
    }

    if (![v5 length] && !objc_msgSend(v6, "length"))
    {
      v7 = [MEMORY[0x277CCA8D8] mainBundle];
      v8 = [v7 localizedStringForKey:@"VOICEMAIL_ERROR_TITLE_ERROR" value:&stru_284EEA450 table:@"Voicemail"];

      v9 = [MEMORY[0x277CCA8D8] mainBundle];
      v10 = [v9 localizedStringForKey:@"VOICEMAIL_ERROR_MSG_TRY_AGAIN_LATER" value:&stru_284EEA450 table:@"Voicemail"];

      v6 = v10;
      v5 = v8;
    }

    [*(a1 + 40) resetWithErrorPrompt:v6 title:v5];
  }
}

@end