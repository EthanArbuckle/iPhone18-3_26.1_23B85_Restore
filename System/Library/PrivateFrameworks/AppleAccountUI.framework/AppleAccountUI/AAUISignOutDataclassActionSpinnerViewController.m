@interface AAUISignOutDataclassActionSpinnerViewController
- (AAUISignOutControllerDelegate)delegate;
- (AAUISignOutDataclassActionSpinnerViewController)initWithAccount:(id)a3;
- (AAUISignOutDataclassActionSpinnerViewController)initWithAccount:(id)a3 dataclassActionsStore:(id)a4;
- (AAUISignOutDataclassActionSpinnerViewController)initWithCoder:(id)a3;
- (id)_spinnerViewController;
- (void)_delegate_signOutControllerDidCompleteWithSuccess:(BOOL)a3 error:(id)a4;
- (void)_mainQueue_continueSignOutWithDataclassActions:(id)a3;
- (void)_mainQueue_presentSpinnerAndSignOutWithDefaultDataclassActions:(id)a3;
- (void)_mainQueue_presentSpinnerPageWithCompletion:(id)a3;
- (void)_spinnerViewController;
- (void)viewWillAppear:(BOOL)a3;
@end

@implementation AAUISignOutDataclassActionSpinnerViewController

- (AAUISignOutDataclassActionSpinnerViewController)initWithAccount:(id)a3
{
  v5 = a3;
  v11.receiver = self;
  v11.super_class = AAUISignOutDataclassActionSpinnerViewController;
  v6 = [(AAUISignOutDataclassActionSpinnerViewController *)&v11 initWithNibName:0 bundle:0];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_account, a3);
    v8 = [(ACAccount *)v7->_account accountStore];
    v9 = v8;
    if (!v8)
    {
      v9 = [MEMORY[0x1E6959A48] defaultStore];
    }

    objc_storeStrong(&v7->_accountStore, v9);
    if (!v8)
    {
    }
  }

  return v7;
}

- (AAUISignOutDataclassActionSpinnerViewController)initWithAccount:(id)a3 dataclassActionsStore:(id)a4
{
  v7 = a3;
  v8 = a4;
  v15.receiver = self;
  v15.super_class = AAUISignOutDataclassActionSpinnerViewController;
  v9 = [(AAUISignOutDataclassActionSpinnerViewController *)&v15 initWithNibName:0 bundle:0];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_account, a3);
    v11 = [(ACAccount *)v10->_account accountStore];
    v12 = v11;
    if (!v11)
    {
      v12 = [MEMORY[0x1E6959A48] defaultStore];
    }

    objc_storeStrong(&v10->_accountStore, v12);
    if (!v11)
    {
    }

    v13 = v8;
    if (!v8)
    {
      v13 = [objc_alloc(MEMORY[0x1E698B880]) initWithAccount:v7];
    }

    objc_storeStrong(&v10->_dataclassActionsStore, v13);
    if (!v8)
    {
    }
  }

  return v10;
}

- (AAUISignOutDataclassActionSpinnerViewController)initWithCoder:(id)a3
{
  v4 = a3;
  v11.receiver = self;
  v11.super_class = AAUISignOutDataclassActionSpinnerViewController;
  v5 = [(AAUISignOutDataclassActionSpinnerViewController *)&v11 initWithCoder:v4];
  if (v5)
  {
    v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"account"];
    account = v5->_account;
    v5->_account = v6;

    v8 = [(ACAccount *)v5->_account accountStore];
    v9 = v8;
    if (!v8)
    {
      v9 = [MEMORY[0x1E6959A48] defaultStore];
    }

    objc_storeStrong(&v5->_accountStore, v9);
    if (!v8)
    {
    }
  }

  return v5;
}

- (void)viewWillAppear:(BOOL)a3
{
  v6.receiver = self;
  v6.super_class = AAUISignOutDataclassActionSpinnerViewController;
  [(AAUISignOutDataclassActionSpinnerViewController *)&v6 viewWillAppear:a3];
  v4 = [(AAUISignOutDataclassActionSpinnerViewController *)self navigationController];
  [v4 setNavigationBarHidden:1];

  v5 = [(AAUISignOutDataclassActionSpinnerViewController *)self _defaultDataclassActions];
  [(AAUISignOutDataclassActionSpinnerViewController *)self _mainQueue_presentSpinnerAndSignOutWithDefaultDataclassActions:v5];
}

- (void)_mainQueue_presentSpinnerAndSignOutWithDefaultDataclassActions:(id)a3
{
  v4 = a3;
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __114__AAUISignOutDataclassActionSpinnerViewController__mainQueue_presentSpinnerAndSignOutWithDefaultDataclassActions___block_invoke;
  v6[3] = &unk_1E820BEB8;
  v6[4] = self;
  v7 = v4;
  v5 = v4;
  [(AAUISignOutDataclassActionSpinnerViewController *)self _mainQueue_presentSpinnerPageWithCompletion:v6];
}

- (void)_mainQueue_presentSpinnerPageWithCompletion:(id)a3
{
  v17 = a3;
  dispatch_assert_queue_V2(MEMORY[0x1E69E96A0]);
  v4 = [(AAUISignOutDataclassActionSpinnerViewController *)self _spinnerViewController];
  [(AAUISignOutDataclassActionSpinnerViewController *)self addChildViewController:v4];
  v5 = [(AAUISignOutDataclassActionSpinnerViewController *)self view];
  [v5 bounds];
  v7 = v6;
  v9 = v8;
  v11 = v10;
  v13 = v12;
  v14 = [v4 view];
  [v14 setFrame:{v7, v9, v11, v13}];

  v15 = [(AAUISignOutDataclassActionSpinnerViewController *)self view];
  v16 = [v4 view];
  [v15 addSubview:v16];

  [v4 didMoveToParentViewController:self];
  if (v17)
  {
    v17[2]();
  }
}

- (void)_mainQueue_continueSignOutWithDataclassActions:(id)a3
{
  v15 = *MEMORY[0x1E69E9840];
  v4 = a3;
  dispatch_assert_queue_V2(MEMORY[0x1E69E96A0]);
  v5 = _AAUISignOutLogSystem();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    account = self->_account;
    *buf = 138412546;
    v12 = account;
    v13 = 2112;
    v14 = v4;
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
  [(ACAccountStore *)accountStore removeAccount:v8 withDataclassActions:v4 completion:v9];
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

- (void)_delegate_signOutControllerDidCompleteWithSuccess:(BOOL)a3 error:(id)a4
{
  v4 = a3;
  v6 = a4;
  dispatch_assert_queue_V2(MEMORY[0x1E69E96A0]);
  v7 = [(AAUISignOutDataclassActionSpinnerViewController *)self delegate];
  v8 = objc_opt_respondsToSelector();
  v9 = _AAUISignOutLogSystem();
  v10 = os_log_type_enabled(v9, OS_LOG_TYPE_DEBUG);
  if (v8)
  {
    if (v10)
    {
      [AAUISignOutDataclassActionSpinnerViewController _delegate_signOutControllerDidCompleteWithSuccess:v9 error:?];
    }

    [v7 signOutViewController:self didCompleteWithSuccess:v4 error:v6];
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
  v3 = [(ACAccount *)self->_account aa_fullName];
  if (!v3)
  {
    v4 = _AAUISignOutLogSystem();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      [(AAUISignOutDataclassActionSpinnerViewController *)self _spinnerViewController];
    }

    v3 = &stru_1F447F790;
  }

  v5 = [AAUISpinnerViewController newSpinnerProgressViewForType:1 fullName:v3 forAccount:self->_account];

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
  v5 = a1;
  v6 = 2112;
  v7 = v3;
  _os_log_error_impl(&dword_1C5355000, log, OS_LOG_TYPE_ERROR, "%@: Unable to retrieve full name from account (%@) for progress view", &v4, 0x16u);
}

@end