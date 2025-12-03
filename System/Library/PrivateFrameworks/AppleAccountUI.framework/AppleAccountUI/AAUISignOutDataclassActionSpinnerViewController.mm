@interface AAUISignOutDataclassActionSpinnerViewController
- (AAUISignOutControllerDelegate)delegate;
- (AAUISignOutDataclassActionSpinnerViewController)initWithAccount:(id)account;
- (AAUISignOutDataclassActionSpinnerViewController)initWithAccount:(id)account dataclassActionsStore:(id)store;
- (AAUISignOutDataclassActionSpinnerViewController)initWithCoder:(id)coder;
- (id)_spinnerViewController;
- (void)_delegate_signOutControllerDidCompleteWithSuccess:(BOOL)success error:(id)error;
- (void)_mainQueue_continueSignOutWithDataclassActions:(id)actions;
- (void)_mainQueue_presentSpinnerAndSignOutWithDefaultDataclassActions:(id)actions;
- (void)_mainQueue_presentSpinnerPageWithCompletion:(id)completion;
- (void)_spinnerViewController;
- (void)viewWillAppear:(BOOL)appear;
@end

@implementation AAUISignOutDataclassActionSpinnerViewController

- (AAUISignOutDataclassActionSpinnerViewController)initWithAccount:(id)account
{
  accountCopy = account;
  v11.receiver = self;
  v11.super_class = AAUISignOutDataclassActionSpinnerViewController;
  v6 = [(AAUISignOutDataclassActionSpinnerViewController *)&v11 initWithNibName:0 bundle:0];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_account, account);
    accountStore = [(ACAccount *)v7->_account accountStore];
    defaultStore = accountStore;
    if (!accountStore)
    {
      defaultStore = [MEMORY[0x1E6959A48] defaultStore];
    }

    objc_storeStrong(&v7->_accountStore, defaultStore);
    if (!accountStore)
    {
    }
  }

  return v7;
}

- (AAUISignOutDataclassActionSpinnerViewController)initWithAccount:(id)account dataclassActionsStore:(id)store
{
  accountCopy = account;
  storeCopy = store;
  v15.receiver = self;
  v15.super_class = AAUISignOutDataclassActionSpinnerViewController;
  v9 = [(AAUISignOutDataclassActionSpinnerViewController *)&v15 initWithNibName:0 bundle:0];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_account, account);
    accountStore = [(ACAccount *)v10->_account accountStore];
    defaultStore = accountStore;
    if (!accountStore)
    {
      defaultStore = [MEMORY[0x1E6959A48] defaultStore];
    }

    objc_storeStrong(&v10->_accountStore, defaultStore);
    if (!accountStore)
    {
    }

    v13 = storeCopy;
    if (!storeCopy)
    {
      v13 = [objc_alloc(MEMORY[0x1E698B880]) initWithAccount:accountCopy];
    }

    objc_storeStrong(&v10->_dataclassActionsStore, v13);
    if (!storeCopy)
    {
    }
  }

  return v10;
}

- (AAUISignOutDataclassActionSpinnerViewController)initWithCoder:(id)coder
{
  coderCopy = coder;
  v11.receiver = self;
  v11.super_class = AAUISignOutDataclassActionSpinnerViewController;
  v5 = [(AAUISignOutDataclassActionSpinnerViewController *)&v11 initWithCoder:coderCopy];
  if (v5)
  {
    v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"account"];
    account = v5->_account;
    v5->_account = v6;

    accountStore = [(ACAccount *)v5->_account accountStore];
    defaultStore = accountStore;
    if (!accountStore)
    {
      defaultStore = [MEMORY[0x1E6959A48] defaultStore];
    }

    objc_storeStrong(&v5->_accountStore, defaultStore);
    if (!accountStore)
    {
    }
  }

  return v5;
}

- (void)viewWillAppear:(BOOL)appear
{
  v6.receiver = self;
  v6.super_class = AAUISignOutDataclassActionSpinnerViewController;
  [(AAUISignOutDataclassActionSpinnerViewController *)&v6 viewWillAppear:appear];
  navigationController = [(AAUISignOutDataclassActionSpinnerViewController *)self navigationController];
  [navigationController setNavigationBarHidden:1];

  _defaultDataclassActions = [(AAUISignOutDataclassActionSpinnerViewController *)self _defaultDataclassActions];
  [(AAUISignOutDataclassActionSpinnerViewController *)self _mainQueue_presentSpinnerAndSignOutWithDefaultDataclassActions:_defaultDataclassActions];
}

- (void)_mainQueue_presentSpinnerAndSignOutWithDefaultDataclassActions:(id)actions
{
  actionsCopy = actions;
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __114__AAUISignOutDataclassActionSpinnerViewController__mainQueue_presentSpinnerAndSignOutWithDefaultDataclassActions___block_invoke;
  v6[3] = &unk_1E820BEB8;
  v6[4] = self;
  v7 = actionsCopy;
  v5 = actionsCopy;
  [(AAUISignOutDataclassActionSpinnerViewController *)self _mainQueue_presentSpinnerPageWithCompletion:v6];
}

- (void)_mainQueue_presentSpinnerPageWithCompletion:(id)completion
{
  completionCopy = completion;
  dispatch_assert_queue_V2(MEMORY[0x1E69E96A0]);
  _spinnerViewController = [(AAUISignOutDataclassActionSpinnerViewController *)self _spinnerViewController];
  [(AAUISignOutDataclassActionSpinnerViewController *)self addChildViewController:_spinnerViewController];
  view = [(AAUISignOutDataclassActionSpinnerViewController *)self view];
  [view bounds];
  v7 = v6;
  v9 = v8;
  v11 = v10;
  v13 = v12;
  view2 = [_spinnerViewController view];
  [view2 setFrame:{v7, v9, v11, v13}];

  view3 = [(AAUISignOutDataclassActionSpinnerViewController *)self view];
  view4 = [_spinnerViewController view];
  [view3 addSubview:view4];

  [_spinnerViewController didMoveToParentViewController:self];
  if (completionCopy)
  {
    completionCopy[2]();
  }
}

- (void)_mainQueue_continueSignOutWithDataclassActions:(id)actions
{
  v15 = *MEMORY[0x1E69E9840];
  actionsCopy = actions;
  dispatch_assert_queue_V2(MEMORY[0x1E69E96A0]);
  v5 = _AAUISignOutLogSystem();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    account = self->_account;
    *buf = 138412546;
    v12 = account;
    v13 = 2112;
    v14 = actionsCopy;
    _os_log_impl(&dword_1C5355000, v5, OS_LOG_TYPE_DEFAULT, "Attempting to sign out account %@ with dataclass actions %@.", buf, 0x16u);
  }

  objc_initWeak(buf, self);
  accountStore = self->_accountStore;
  v8 = self->_account;
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __98__AAUISignOutDataclassActionSpinnerViewController__mainQueue_continueSignOutWithDataclassActions___block_invoke;
  v9[3] = &unk_1E820D308;
  objc_copyWeak(&v10, buf);
  [(ACAccountStore *)accountStore removeAccount:v8 withDataclassActions:actionsCopy completion:v9];
  objc_destroyWeak(&v10);
  objc_destroyWeak(buf);
}

void __98__AAUISignOutDataclassActionSpinnerViewController__mainQueue_continueSignOutWithDataclassActions___block_invoke(uint64_t a1, int a2, void *a3)
{
  v18 = *MEMORY[0x1E69E9840];
  v5 = a3;
  v6 = _AAUISignOutLogSystem();
  v7 = v6;
  if (v5)
  {
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      __98__AAUISignOutDataclassActionSpinnerViewController__mainQueue_continueSignOutWithDataclassActions___block_invoke_cold_1(v5, v7);
    }
  }

  else if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    v8 = @"NO";
    if (a2)
    {
      v8 = @"YES";
    }

    *buf = 138412546;
    v15 = v8;
    v16 = 2112;
    v17 = 0;
    _os_log_impl(&dword_1C5355000, v7, OS_LOG_TYPE_DEFAULT, "Removal of account completed with success: %@, error: %@", buf, 0x16u);
  }

  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __98__AAUISignOutDataclassActionSpinnerViewController__mainQueue_continueSignOutWithDataclassActions___block_invoke_44;
  block[3] = &unk_1E820BEE0;
  objc_copyWeak(&v12, (a1 + 32));
  v13 = a2;
  v11 = v5;
  v9 = v5;
  dispatch_async(MEMORY[0x1E69E96A0], block);

  objc_destroyWeak(&v12);
}

void __98__AAUISignOutDataclassActionSpinnerViewController__mainQueue_continueSignOutWithDataclassActions___block_invoke_44(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v3 = WeakRetained;
  if (WeakRetained)
  {
    [WeakRetained _delegate_signOutControllerDidCompleteWithSuccess:*(a1 + 48) error:*(a1 + 32)];
  }

  else
  {
    v4 = _AAUISignOutLogSystem();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      __98__AAUISignOutDataclassActionSpinnerViewController__mainQueue_continueSignOutWithDataclassActions___block_invoke_44_cold_1(v4);
    }
  }
}

- (void)_delegate_signOutControllerDidCompleteWithSuccess:(BOOL)success error:(id)error
{
  successCopy = success;
  errorCopy = error;
  dispatch_assert_queue_V2(MEMORY[0x1E69E96A0]);
  delegate = [(AAUISignOutDataclassActionSpinnerViewController *)self delegate];
  v8 = objc_opt_respondsToSelector();
  v9 = _AAUISignOutLogSystem();
  v10 = os_log_type_enabled(v9, OS_LOG_TYPE_DEBUG);
  if (v8)
  {
    if (v10)
    {
      [AAUISignOutDataclassActionSpinnerViewController _delegate_signOutControllerDidCompleteWithSuccess:v9 error:?];
    }

    [delegate signOutViewController:self didCompleteWithSuccess:successCopy error:errorCopy];
  }

  else
  {
    if (v10)
    {
      [AAUISignOutDataclassActionSpinnerViewController _delegate_signOutControllerDidCompleteWithSuccess:v9 error:?];
    }

    [(AAUISignOutDataclassActionSpinnerViewController *)self dismissViewControllerAnimated:1 completion:0];
  }
}

- (id)_spinnerViewController
{
  aa_fullName = [(ACAccount *)self->_account aa_fullName];
  if (!aa_fullName)
  {
    v4 = _AAUISignOutLogSystem();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      [(AAUISignOutDataclassActionSpinnerViewController *)self _spinnerViewController];
    }

    aa_fullName = &stru_1F447F790;
  }

  v5 = [AAUISpinnerViewController newSpinnerProgressViewForType:1 fullName:aa_fullName forAccount:self->_account];

  return v5;
}

- (AAUISignOutControllerDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

void __98__AAUISignOutDataclassActionSpinnerViewController__mainQueue_continueSignOutWithDataclassActions___block_invoke_cold_1(uint64_t a1, NSObject *a2)
{
  v4 = *MEMORY[0x1E69E9840];
  v2 = 138412290;
  v3 = a1;
  _os_log_error_impl(&dword_1C5355000, a2, OS_LOG_TYPE_ERROR, "Failed to remove account with error: %@", &v2, 0xCu);
}

- (void)_spinnerViewController
{
  v8 = *MEMORY[0x1E69E9840];
  v3 = *a2;
  v4 = 138412546;
  selfCopy = self;
  v6 = 2112;
  v7 = v3;
  _os_log_error_impl(&dword_1C5355000, log, OS_LOG_TYPE_ERROR, "%@: Unable to retrieve full name from account (%@) for progress view", &v4, 0x16u);
}

@end