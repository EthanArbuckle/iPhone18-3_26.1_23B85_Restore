@interface VMAccountProvisioningViewController
- (id)accountAtIndex:(unint64_t)a3;
- (id)accountsView:(id)a3 buttonForRowAtIndex:(unint64_t)a4;
- (id)titleForAccountsView:(id)a3;
- (unint64_t)numberOfRowsForAccountsView:(id)a3;
- (void)accountsView:(id)a3 buttonTappedForRowWithIndex:(unint64_t)a4;
- (void)presentPinControllerForAccount:(id)a3 animated:(BOOL)a4;
- (void)setPINViewControllerFinished:(id)a3 success:(BOOL)a4 oldPIN:(id)a5 newPIN:(id)a6;
- (void)updateAccounts;
- (void)viewDidLoad;
- (void)voicemailGreetingViewControllerFinished:(id)a3;
@end

@implementation VMAccountProvisioningViewController

- (void)viewDidLoad
{
  v16.receiver = self;
  v16.super_class = VMAccountProvisioningViewController;
  [(VMAccountsViewController *)&v16 viewDidLoad];
  [(VMAccountProvisioningViewController *)self updateAccounts];
  v3 = [(VMAccountsViewController *)self accountsView];
  v4 = +[UIColor systemBackgroundColor];
  [v3 setBackgroundColor:v4];

  [v3 setDataSource:self];
  [v3 setDelegate:self];
  v5 = +[NSBundle mainBundle];
  v6 = [v5 localizedStringForKey:@"ACCOUNTS_VIEW_CONTROLLER_NAVIGATION_ITEM_TITLE_VOICEMAIL" value:&stru_10028F310 table:@"VoicemailUI"];
  v7 = [(VMAccountProvisioningViewController *)self navigationItem];
  [v7 setTitle:v6];

  v8 = [(VMAccountProvisioningViewController *)self navigationController];
  if (v8)
  {
    v9 = v8;
    v10 = [(VMViewController *)self manager];
    v11 = [v10 accounts];
    v12 = [v11 count];

    if (v12 == 1)
    {
      v13 = [(VMViewController *)self manager];
      v14 = [v13 accounts];
      v15 = [v14 firstObject];
      [(VMAccountProvisioningViewController *)self presentPinControllerForAccount:v15 animated:0];
    }
  }
}

- (id)accountAtIndex:(unint64_t)a3
{
  v4 = [(VMAccountProvisioningViewController *)self accounts];
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
  v4 = [(VMViewController *)self manager];
  v5 = [v4 accounts];

  v14 = 0u;
  v15 = 0u;
  v12 = 0u;
  v13 = 0u;
  v6 = v5;
  v7 = [v6 countByEnumeratingWithState:&v12 objects:v16 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v13;
    do
    {
      for (i = 0; i != v8; i = i + 1)
      {
        if (*v13 != v9)
        {
          objc_enumerationMutation(v6);
        }

        v11 = *(*(&v12 + 1) + 8 * i);
        if ([v11 hasHandle] && (objc_msgSend(v11, "isProvisioned") & 1) == 0)
        {
          [v3 addObject:v11];
        }
      }

      v8 = [v6 countByEnumeratingWithState:&v12 objects:v16 count:16];
    }

    while (v8);
  }

  [(VMAccountProvisioningViewController *)self setAccounts:v3];
}

- (id)accountsView:(id)a3 buttonForRowAtIndex:(unint64_t)a4
{
  v6 = +[VMAccountButton accountButton];
  v7 = [(VMAccountProvisioningViewController *)self accountAtIndex:a4];
  v8 = v7;
  if (v7)
  {
    v9 = [v7 accountDescription];
    v10 = [(VMViewController *)self manager];
    v11 = [v10 accounts];
    v12 = [v11 count];

    if (v12 == 1)
    {
      v13 = +[NSBundle mainBundle];
      v14 = [v13 localizedStringForKey:@"ACCOUNTS_VIEW_BUTTON_TITLE_SET_UP" value:&stru_10028F310 table:@"VoicemailUI"];

      v9 = v14;
    }

    [v6 setTitle:v9 forState:0];
  }

  return v6;
}

- (unint64_t)numberOfRowsForAccountsView:(id)a3
{
  v3 = [(VMAccountProvisioningViewController *)self accounts];
  v4 = [v3 count];

  return v4;
}

- (id)titleForAccountsView:(id)a3
{
  v3 = +[NSBundle mainBundle];
  v4 = [v3 localizedStringForKey:@"ACCOUNTS_VIEW_MESSAGE_TITLE_SET_UP" value:&stru_10028F310 table:@"VoicemailUI"];

  return v4;
}

- (void)accountsView:(id)a3 buttonTappedForRowWithIndex:(unint64_t)a4
{
  v5 = [(VMAccountProvisioningViewController *)self accountAtIndex:a4];
  if (v5)
  {
    [(VMAccountProvisioningViewController *)self presentPinControllerForAccount:v5 animated:1];
  }

  _objc_release_x1();
}

- (void)presentPinControllerForAccount:(id)a3 animated:(BOOL)a4
{
  v5 = a3;
  [(VMAccountProvisioningViewController *)self setSelectedAccount:v5];
  v6 = [(VMViewController *)self manager];
  v7 = [v5 UUID];
  v8 = [v6 minimumPasscodeLengthForAccountUUID:v7];

  v9 = [(VMViewController *)self manager];
  v10 = [v5 UUID];

  v11 = [v9 maximumPasscodeLengthForAccountUUID:v10];
  v23 = [[TPSetPINViewController alloc] initForNewPINWithMinLength:v8 maxLength:v11 confirmPIN:1];
  [v23 setDelegate:self];
  v12 = +[NSBundle mainBundle];
  v13 = [v12 localizedStringForKey:@"SETUP_PASSCODE_CONFIRM_ENTRY_PROMPT" value:&stru_10028F310 table:@"Voicemail"];
  [v23 setPromptTextForConfirmingNewPIN:v13];

  v14 = +[NSBundle mainBundle];
  v15 = [v14 localizedStringForKey:@"SETUP_PASSCODE_FIRST_ENTRY_PROMPT" value:&stru_10028F310 table:@"Voicemail"];
  [v23 setPromptTextForNewPIN:v15];

  v16 = +[NSBundle mainBundle];
  v17 = [v16 localizedStringForKey:@"SAVING_PASSWORD" value:&stru_10028F310 table:@"Voicemail"];
  [v23 setPromptTextForSavingPIN:v17];

  v18 = [(VMAccountProvisioningViewController *)self navigationController];

  if (v18)
  {
    v19 = [(VMAccountProvisioningViewController *)self navigationController];
    [v19 pushViewController:v23 animated:1];
  }

  else
  {
    v19 = [[UINavigationController alloc] initWithRootViewController:v23];
    v20 = [(VMAccountsViewController *)self accountsView];
    v21 = [v20 window];
    v22 = [v21 rootViewController];
    [v22 presentViewController:v19 animated:1 completion:0];
  }
}

- (void)voicemailGreetingViewControllerFinished:(id)a3
{
  v4 = a3;
  [(VMAccountProvisioningViewController *)self setSelectedAccount:0];
  v5 = [v4 navigationController];

  v6[0] = _NSConcreteStackBlock;
  v6[1] = 3221225472;
  v6[2] = __79__VMAccountProvisioningViewController_voicemailGreetingViewControllerFinished___block_invoke;
  v6[3] = &unk_100284FD0;
  v6[4] = self;
  [v5 dismissViewControllerAnimated:1 completion:v6];
}

void __79__VMAccountProvisioningViewController_voicemailGreetingViewControllerFinished___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) delegate];
  v3 = objc_opt_respondsToSelector();

  if (v3)
  {
    v4 = [*(a1 + 32) delegate];
    [v4 accountsViewControllerDidFinish:*(a1 + 32)];
  }
}

- (void)setPINViewControllerFinished:(id)a3 success:(BOOL)a4 oldPIN:(id)a5 newPIN:(id)a6
{
  v8 = a4;
  v10 = a3;
  v11 = a5;
  v12 = a6;
  v13 = [(VMAccountProvisioningViewController *)self selectedAccount];
  if (v8)
  {
    v31[0] = _NSConcreteStackBlock;
    v31[1] = 3221225472;
    v31[2] = __90__VMAccountProvisioningViewController_setPINViewControllerFinished_success_oldPIN_newPIN___block_invoke;
    v31[3] = &unk_100285568;
    v14 = v10;
    v32 = v14;
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = __90__VMAccountProvisioningViewController_setPINViewControllerFinished_success_oldPIN_newPIN___block_invoke_2;
    block[3] = &unk_100285590;
    v15 = objc_retainBlock(v31);
    v30 = v15;
    v16 = dispatch_block_create(0, block);
    v17 = dispatch_time(0, 30000000000);
    dispatch_after(v17, &_dispatch_main_q, v16);
    objc_initWeak(&location, self);
    v18 = [(VMViewController *)self manager];
    v19 = [v13 UUID];
    v22[0] = _NSConcreteStackBlock;
    v22[1] = 3221225472;
    v22[2] = __90__VMAccountProvisioningViewController_setPINViewControllerFinished_success_oldPIN_newPIN___block_invoke_3;
    v22[3] = &unk_1002855E0;
    v20 = v16;
    v25 = v20;
    objc_copyWeak(&v27, &location);
    v23 = v13;
    v24 = v14;
    v21 = v15;
    v26 = v21;
    [v18 setPasscode:v12 forAccountUUID:v19 completion:v22];

    objc_destroyWeak(&v27);
    objc_destroyWeak(&location);
  }

  else
  {
    [(VMAccountProvisioningViewController *)self setSelectedAccount:0];
    [v10 dismissViewControllerAnimated:1 completion:0];
  }
}

void __90__VMAccountProvisioningViewController_setPINViewControllerFinished_success_oldPIN_newPIN___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = v3;
  if (v3)
  {
    v11 = 0;
    v12 = 0;
    [v3 displayedErrorTitle:&v12 message:&v11];
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
    v7 = +[NSBundle mainBundle];
    v8 = [v7 localizedStringForKey:@"VOICEMAIL_ERROR_TITLE_ERROR" value:&stru_10028F310 table:@"Voicemail"];

    v9 = +[NSBundle mainBundle];
    v10 = [v9 localizedStringForKey:@"VOICEMAIL_ERROR_MSG_TRY_AGAIN_LATER" value:&stru_10028F310 table:@"Voicemail"];

    v6 = v10;
    v5 = v8;
  }

  [*(a1 + 32) resetWithErrorPrompt:v6 title:v5];
}

void __90__VMAccountProvisioningViewController_setPINViewControllerFinished_success_oldPIN_newPIN___block_invoke_3(id *a1, char a2, void *a3)
{
  v5 = a3;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = __90__VMAccountProvisioningViewController_setPINViewControllerFinished_success_oldPIN_newPIN___block_invoke_4;
  block[3] = &unk_1002855B8;
  v11 = a1[6];
  v14 = a2;
  objc_copyWeak(&v13, a1 + 8);
  v8 = a1[4];
  v9 = a1[5];
  v10 = v5;
  v12 = a1[7];
  v6 = v5;
  dispatch_async(&_dispatch_main_q, block);

  objc_destroyWeak(&v13);
}

void __90__VMAccountProvisioningViewController_setPINViewControllerFinished_success_oldPIN_newPIN___block_invoke_4(uint64_t a1)
{
  dispatch_block_cancel(*(a1 + 56));
  if (*(a1 + 80) == 1)
  {
    WeakRetained = objc_loadWeakRetained((a1 + 72));
    v3 = [WeakRetained manager];
    v4 = [*(a1 + 32) UUID];
    v5 = [v3 isGreetingChangeSupportedForAccountUUID:v4];

    if (v5)
    {
      v6 = [[MPGreetingAccount alloc] initWithAccount:*(a1 + 32)];
      v7 = [[PHVoicemailGreetingViewController alloc] initWithAccount:v6];
      [(PHVoicemailGreetingViewController *)v7 setGreetingDelegate:WeakRetained];
      [(PHVoicemailGreetingViewController *)v7 setPresentedFromSetup:1];
      v8 = [*(a1 + 40) navigationController];
      [v8 pushViewController:v7 animated:1];
    }

    else
    {
      [WeakRetained setSelectedAccount:0];
      [*(a1 + 40) dismissViewControllerAnimated:1 completion:0];
    }
  }

  if (*(a1 + 48))
  {
    v9 = *(*(a1 + 64) + 16);

    v9();
  }
}

@end