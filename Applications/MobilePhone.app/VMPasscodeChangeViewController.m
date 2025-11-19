@interface VMPasscodeChangeViewController
- (VMAccountsViewController)accountsViewController;
- (id)accountAtIndex:(unint64_t)a3;
- (id)accountsView:(id)a3 buttonForRowAtIndex:(unint64_t)a4;
- (id)passcodeViewControllerForAccount:(id)a3;
- (id)titleForAccountsView:(id)a3;
- (unint64_t)numberOfRowsForAccountsView:(id)a3;
- (void)accountsView:(id)a3 buttonTappedForRowWithIndex:(unint64_t)a4;
- (void)cancelAction:(id)a3;
- (void)setPINViewControllerFinished:(id)a3 success:(BOOL)a4 oldPIN:(id)a5 newPIN:(id)a6;
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
  v3 = [NSBundle bundleForClass:objc_opt_class()];
  v4 = [v3 localizedStringForKey:@"ACCOUNTS_VIEW_CONTROLLER_NAVIGATION_ITEM_TITLE_PASSWORD" value:&stru_10028F310 table:@"VoicemailUI"];
  v5 = [(VMPasscodeChangeViewController *)self navigationItem];
  [v5 setTitle:v4];

  [(VMPasscodeChangeViewController *)self updateAccounts];
  [(VMPasscodeChangeViewController *)self updateView];
}

- (id)accountAtIndex:(unint64_t)a3
{
  v4 = [(VMPasscodeChangeViewController *)self accounts];
  if ([v4 count] <= a3)
  {
    v5 = 0;
  }

  else
  {
    v5 = [v4 objectAtIndexedSubscript:a3];
  }

  return v5;
}

- (void)updateAccounts
{
  v3 = +[NSMutableArray array];
  v4 = [(VMNavigationController *)self manager];
  v5 = [v4 accounts];

  v17 = 0u;
  v18 = 0u;
  v15 = 0u;
  v16 = 0u;
  v6 = v5;
  v7 = [v6 countByEnumeratingWithState:&v15 objects:v19 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v16;
    do
    {
      for (i = 0; i != v8; i = i + 1)
      {
        if (*v16 != v9)
        {
          objc_enumerationMutation(v6);
        }

        v11 = *(*(&v15 + 1) + 8 * i);
        if ([v11 isProvisioned])
        {
          v12 = [(VMNavigationController *)self manager];
          v13 = [v11 UUID];
          v14 = [v12 isPasscodeChangeSupportedForAccountUUID:v13];

          if (v14)
          {
            [v3 addObject:v11];
          }
        }
      }

      v8 = [v6 countByEnumeratingWithState:&v15 objects:v19 count:16];
    }

    while (v8);
  }

  [(VMPasscodeChangeViewController *)self setAccounts:v3];
}

- (void)updateView
{
  v3 = [(VMNavigationController *)self manager];
  v4 = [v3 accounts];
  v5 = [v4 count];

  if (v5 < 2)
  {
    v8 = [(VMPasscodeChangeViewController *)self accounts];
    v6 = [v8 firstObject];

    if (v6)
    {
      [(VMPasscodeChangeViewController *)self setSelectedAccount:v6];
      v7 = [(VMPasscodeChangeViewController *)self passcodeViewControllerForAccount:v6];
      v11 = v7;
      v9 = [NSArray arrayWithObjects:&v11 count:1];
      [(VMPasscodeChangeViewController *)self setViewControllers:v9];
    }

    else
    {
      v7 = PHDefaultLog();
      if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
      {
        *v10 = 0;
        _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "No accounts were found.", v10, 2u);
      }
    }
  }

  else
  {
    v6 = [(VMPasscodeChangeViewController *)self accountsViewController];
    v12 = v6;
    v7 = [NSArray arrayWithObjects:&v12 count:1];
    [(VMPasscodeChangeViewController *)self setViewControllers:v7];
  }
}

- (VMAccountsViewController)accountsViewController
{
  accountsViewController = self->_accountsViewController;
  if (!accountsViewController)
  {
    v4 = [VMAccountsViewController alloc];
    v5 = [(VMNavigationController *)self manager];
    v6 = [(VMViewController *)v4 initWithManager:v5];
    v7 = self->_accountsViewController;
    self->_accountsViewController = v6;

    v8 = [(VMAccountsViewController *)self->_accountsViewController accountsView];
    [v8 setDataSource:self];

    v9 = [(VMAccountsViewController *)self->_accountsViewController accountsView];
    [v9 setDelegate:self];

    v10 = [[UIBarButtonItem alloc] initWithBarButtonSystemItem:1 target:self action:"cancelAction:"];
    v11 = [(VMAccountsViewController *)self->_accountsViewController navigationItem];
    [v11 setLeftBarButtonItem:v10];

    accountsViewController = self->_accountsViewController;
  }

  return accountsViewController;
}

- (id)passcodeViewControllerForAccount:(id)a3
{
  v4 = a3;
  v5 = [(VMNavigationController *)self manager];
  v6 = [v4 UUID];
  v7 = [v5 minimumPasscodeLengthForAccountUUID:v6];

  v8 = [(VMNavigationController *)self manager];
  v9 = [v4 UUID];

  v10 = [v8 maximumPasscodeLengthForAccountUUID:v9];
  v11 = [[TPSetPINViewController alloc] initForNewPINWithMinLength:v7 maxLength:v10 confirmPIN:1];
  [v11 setDelegate:self];
  v12 = [NSBundle bundleForClass:objc_opt_class()];
  v13 = [v12 localizedStringForKey:@"CHANGE_PASSCODE_VIEW_CONTROLLER_PASSCODE_CURRENT" value:&stru_10028F310 table:@"VoicemailUI"];
  [v11 setPromptTextForOldPIN:v13];

  v14 = [NSBundle bundleForClass:objc_opt_class()];
  v15 = [v14 localizedStringForKey:@"CHANGE_PASSCODE_VIEW_CONTROLLER_PASSCODE_NEW" value:&stru_10028F310 table:@"VoicemailUI"];
  [v11 setPromptTextForNewPIN:v15];

  v16 = [NSBundle bundleForClass:objc_opt_class()];
  v17 = [v16 localizedStringForKey:@"CHANGE_PASSCODE_VIEW_CONTROLLER_PASSCODE_NEW_REENTER" value:&stru_10028F310 table:@"VoicemailUI"];
  [v11 setPromptTextForConfirmingNewPIN:v17];

  v18 = [NSBundle bundleForClass:objc_opt_class()];
  v19 = [v18 localizedStringForKey:@"CHANGE_PASSCODE_VIEW_CONTROLLER_PASSCODE_SAVING" value:&stru_10028F310 table:@"VoicemailUI"];
  [v11 setPromptTextForSavingPIN:v19];

  return v11;
}

- (void)cancelAction:(id)a3
{
  v3 = [(VMPasscodeChangeViewController *)self accountsViewController];
  [v3 dismissViewControllerAnimated:1 completion:0];
}

- (id)accountsView:(id)a3 buttonForRowAtIndex:(unint64_t)a4
{
  v6 = +[VMAccountButton accountButton];
  v7 = [(VMPasscodeChangeViewController *)self accountAtIndex:a4];
  v8 = [v7 accountDescription];
  v9 = [(VMNavigationController *)self manager];
  v10 = [v9 accounts];
  v11 = [v10 count];

  if (v11 == 1)
  {
    v12 = [NSBundle bundleForClass:objc_opt_class()];
    v13 = [v12 localizedStringForKey:@"ACCOUNTS_VIEW_BUTTON_TITLE_CHANGE_PASSCODE" value:&stru_10028F310 table:@"VoicemailUI"];

    v8 = v13;
  }

  [v6 setTitle:v8 forState:0];

  return v6;
}

- (unint64_t)numberOfRowsForAccountsView:(id)a3
{
  v3 = [(VMPasscodeChangeViewController *)self accounts];
  v4 = [v3 count];

  return v4;
}

- (id)titleForAccountsView:(id)a3
{
  v3 = [NSBundle bundleForClass:objc_opt_class()];
  v4 = [v3 localizedStringForKey:@"ACCOUNTS_VIEW_MESSAGE_TITLE_CHANGE_PASSWORD" value:&stru_10028F310 table:@"VoicemailUI"];

  return v4;
}

- (void)accountsView:(id)a3 buttonTappedForRowWithIndex:(unint64_t)a4
{
  v6 = [(VMPasscodeChangeViewController *)self accountAtIndex:a4];
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
      v9 = 134217984;
      v10 = a4;
      _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "Could not retrieve account at index %lu", &v9, 0xCu);
    }
  }
}

- (void)setPINViewControllerFinished:(id)a3 success:(BOOL)a4 oldPIN:(id)a5 newPIN:(id)a6
{
  v8 = a4;
  v10 = a3;
  v11 = a5;
  v12 = a6;
  objc_initWeak(&location, self);
  v22[0] = _NSConcreteStackBlock;
  v22[1] = 3221225472;
  v22[2] = __85__VMPasscodeChangeViewController_setPINViewControllerFinished_success_oldPIN_newPIN___block_invoke;
  v22[3] = &unk_100285170;
  objc_copyWeak(&v24, &location);
  v13 = v10;
  v23 = v13;
  v14 = objc_retainBlock(v22);
  v15 = v14;
  if (v8)
  {
    v16 = [(VMNavigationController *)self manager];
    v17 = [(VMPasscodeChangeViewController *)self selectedAccount];
    v18 = [v17 UUID];
    v19[0] = _NSConcreteStackBlock;
    v19[1] = 3221225472;
    v19[2] = __85__VMPasscodeChangeViewController_setPINViewControllerFinished_success_oldPIN_newPIN___block_invoke_3;
    v19[3] = &unk_100285630;
    v21 = v15;
    v20 = v13;
    [v16 setPasscode:v12 forAccountUUID:v18 completion:v19];
  }

  else
  {
    (v14[2])(v14);
  }

  objc_destroyWeak(&v24);
  objc_destroyWeak(&location);
}

void __85__VMPasscodeChangeViewController_setPINViewControllerFinished_success_oldPIN_newPIN___block_invoke(uint64_t a1)
{
  v2[0] = _NSConcreteStackBlock;
  v2[1] = 3221225472;
  v2[2] = __85__VMPasscodeChangeViewController_setPINViewControllerFinished_success_oldPIN_newPIN___block_invoke_2;
  v2[3] = &unk_100285170;
  objc_copyWeak(&v4, (a1 + 40));
  v3 = *(a1 + 32);
  dispatch_async(&_dispatch_main_q, v2);

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
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = __85__VMPasscodeChangeViewController_setPINViewControllerFinished_success_oldPIN_newPIN___block_invoke_4;
  v7[3] = &unk_100285608;
  v11 = a2;
  v10 = *(a1 + 40);
  v8 = v5;
  v9 = *(a1 + 32);
  v6 = v5;
  dispatch_async(&_dispatch_main_q, v7);
}

void __85__VMPasscodeChangeViewController_setPINViewControllerFinished_success_oldPIN_newPIN___block_invoke_4(uint64_t a1)
{
  if (*(a1 + 56) == 1)
  {
    v2 = *(*(a1 + 48) + 16);

    v2();
  }

  else
  {
    v3 = *(a1 + 32);
    if (v3)
    {
      v10 = 0;
      v11 = 0;
      [v3 displayedErrorTitle:&v11 message:&v10];
      v4 = v11;
      v5 = v10;
    }

    else
    {
      v5 = 0;
      v4 = 0;
    }

    if (![v4 length] && !objc_msgSend(v5, "length"))
    {
      v6 = +[NSBundle mainBundle];
      v7 = [v6 localizedStringForKey:@"VOICEMAIL_ERROR_TITLE_ERROR" value:&stru_10028F310 table:@"Voicemail"];

      v8 = +[NSBundle mainBundle];
      v9 = [v8 localizedStringForKey:@"VOICEMAIL_ERROR_MSG_TRY_AGAIN_LATER" value:&stru_10028F310 table:@"Voicemail"];

      v5 = v9;
      v4 = v7;
    }

    [*(a1 + 40) resetWithErrorPrompt:v5 title:v4];
  }
}

@end