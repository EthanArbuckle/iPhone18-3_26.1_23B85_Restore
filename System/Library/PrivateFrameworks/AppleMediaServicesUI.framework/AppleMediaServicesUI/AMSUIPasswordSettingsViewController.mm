@interface AMSUIPasswordSettingsViewController
- (AMSUIPasswordSettingsViewController)initWithAccount:(id)a3;
- (id)tableView:(id)a3 cellForRowAtIndexPath:(id)a4;
- (id)tableView:(id)a3 titleForHeaderInSection:(int64_t)a4;
- (id)tableView:(id)a3 willSelectRowAtIndexPath:(id)a4;
- (int64_t)tableView:(id)a3 numberOfRowsInSection:(int64_t)a4;
- (void)freeDownloadsToggle:(id)a3 changedValue:(BOOL)a4;
- (void)handleAuthenticateRequest:(id)a3 completion:(id)a4;
- (void)handleDialogRequest:(id)a3 completion:(id)a4;
- (void)loadView;
- (void)tableView:(id)a3 didSelectRowAtIndexPath:(id)a4;
- (void)viewDidLoad;
@end

@implementation AMSUIPasswordSettingsViewController

- (AMSUIPasswordSettingsViewController)initWithAccount:(id)a3
{
  v5 = a3;
  v11.receiver = self;
  v11.super_class = AMSUIPasswordSettingsViewController;
  v6 = [(AMSUIPasswordSettingsViewController *)&v11 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_account, a3);
    v8 = [MEMORY[0x1E696AAE8] bundleWithIdentifier:@"com.apple.AppleMediaServicesUI"];
    bundle = v7->_bundle;
    v7->_bundle = v8;
  }

  return v7;
}

- (void)loadView
{
  v4 = [AMSUIPasswordSettingsViewProvider makeViewWithAccount:self->_account];
  v3 = [v4 view];
  [v4 setView:0];
  [(AMSUIPasswordSettingsViewController *)self setView:v3];
}

- (void)viewDidLoad
{
  v7.receiver = self;
  v7.super_class = AMSUIPasswordSettingsViewController;
  [(AMSUIPasswordSettingsViewController *)&v7 viewDidLoad];
  v3 = [(AMSUIPasswordSettingsViewController *)self bundle];
  v4 = [v3 localizedStringForKey:@"PASSWORD_SETTINGS_TITLE" value:&stru_1F3921360 table:0];
  [(AMSUIPasswordSettingsViewController *)self setTitle:v4];

  v5 = [objc_alloc(MEMORY[0x1E69DC708]) initWithBarButtonSystemItem:0 target:self action:sel_donePressed_];
  v6 = [(AMSUIPasswordSettingsViewController *)self navigationItem];
  [v6 setRightBarButtonItem:v5];
}

- (id)tableView:(id)a3 cellForRowAtIndexPath:(id)a4
{
  v6 = a3;
  v7 = a4;
  if ([v7 section])
  {
    v8 = [v6 dequeueReusableCellWithIdentifier:@"Free" forIndexPath:v7];
    v9 = [(AMSUIPasswordSettingsViewController *)self bundle];
    v10 = [v9 localizedStringForKey:@"PASSWORD_SETTINGS_REQUIRE" value:&stru_1F3921360 table:0];
    v11 = [v8 textLabel];
    [v11 setText:v10];

    v12 = ([MEMORY[0x1E698CB10] requirePasswordImmediately] & 1) != 0 || -[AMSUIPasswordSettingsViewController freeSetting](self, "freeSetting") == 1;
    v19 = [v8 toggle];
    [v19 setOn:v12];

    [v8 setDelegate:self];
    v20 = 0.5;
    if (-[AMSUIPasswordSettingsViewController paidSetting](self, "paidSetting") && ([MEMORY[0x1E698CB10] requirePasswordImmediately] & 1) == 0)
    {
      if (self->_isBiometricsEnabled)
      {
        v20 = 0.5;
      }

      else
      {
        v20 = 1.0;
      }

      v21 = !self->_isBiometricsEnabled;
    }

    else
    {
      v21 = 0;
    }

    v22 = [v8 contentView];
    [v22 setAlpha:v20];

    v23 = [v8 toggle];
    [v23 setEnabled:v21];

    goto LABEL_26;
  }

  v8 = [v6 dequeueReusableCellWithIdentifier:@"Purchases" forIndexPath:v7];
  if ([MEMORY[0x1E698CB10] requirePasswordImmediately])
  {
    v13 = [v8 contentView];
    [v13 setAlpha:0.5];
  }

  v14 = [v7 row];
  v15 = [(AMSUIPasswordSettingsViewController *)self bundle];
  v16 = v15;
  if (!v14)
  {
    v24 = [v15 localizedStringForKey:@"PASSWORD_SETTINGS_ALWAYS" value:&stru_1F3921360 table:0];
    v25 = [v8 textLabel];
    [v25 setText:v24];

    if (-[AMSUIPasswordSettingsViewController paidSetting](self, "paidSetting") != 1 && -[AMSUIPasswordSettingsViewController paidSetting](self, "paidSetting") && ![MEMORY[0x1E698CB10] requirePasswordImmediately])
    {
      goto LABEL_23;
    }

LABEL_22:
    [v6 selectRowAtIndexPath:v7 animated:1 scrollPosition:0];
    goto LABEL_24;
  }

  v17 = [v15 localizedStringForKey:@"PASSWORD_SETTINGS_SOMETIMES" value:&stru_1F3921360 table:0];
  v18 = [v8 textLabel];
  [v18 setText:v17];

  if (-[AMSUIPasswordSettingsViewController paidSetting](self, "paidSetting") == 2 && ([MEMORY[0x1E698CB10] requirePasswordImmediately] & 1) == 0)
  {
    goto LABEL_22;
  }

LABEL_23:
  [v6 deselectRowAtIndexPath:v7 animated:1];
LABEL_24:
  if (self->_isBiometricsEnabled)
  {
    v26 = [v8 contentView];
    [v26 setAlpha:0.5];

    v27 = [MEMORY[0x1E69DC888] tintColor];
    v28 = [v27 colorWithAlphaComponent:0.5];
    [v8 setTintColor:v28];

    [v8 setUserInteractionEnabled:0];
  }

LABEL_26:

  return v8;
}

- (int64_t)tableView:(id)a3 numberOfRowsInSection:(int64_t)a4
{
  if (a4)
  {
    return 1;
  }

  else
  {
    return 2;
  }
}

- (id)tableView:(id)a3 titleForHeaderInSection:(int64_t)a4
{
  v5 = [(AMSUIPasswordSettingsViewController *)self bundle];
  v6 = v5;
  if (a4)
  {
    v7 = @"PASSWORD_SETTINGS_FREE_HEADER";
  }

  else
  {
    v7 = @"PASSWORD_SETTINGS_PAID_HEADER";
  }

  v8 = [v5 localizedStringForKey:v7 value:&stru_1F3921360 table:0];

  return v8;
}

- (void)tableView:(id)a3 didSelectRowAtIndexPath:(id)a4
{
  v26 = *MEMORY[0x1E69E9840];
  v5 = a4;
  v6 = [MEMORY[0x1E698C968] sharedAccountsConfig];
  if (!v6)
  {
    v6 = [MEMORY[0x1E698C968] sharedConfig];
  }

  v7 = [v6 OSLogObject];
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    v8 = objc_opt_class();
    v9 = AMSLogKey();
    *buf = 138543618;
    v23 = v8;
    v24 = 2114;
    v25 = v9;
    _os_log_impl(&dword_1BB036000, v7, OS_LOG_TYPE_DEFAULT, "%{public}@: [%{public}@] Paid Downloads toggled", buf, 0x16u);
  }

  if ([v5 row])
  {
    v10 = 2;
  }

  else
  {
    v10 = 1;
  }

  [(AMSUIPasswordSettingsViewController *)self setPaidSetting:v10];
  v11 = objc_alloc(MEMORY[0x1E698CB48]);
  v12 = [(AMSUIPasswordSettingsViewController *)self account];
  v13 = [(AMSUIPasswordSettingsViewController *)self freeSetting];
  v14 = [(AMSUIPasswordSettingsViewController *)self paidSetting];
  v15 = [MEMORY[0x1E698CB48] createBagForSubProfile];
  v16 = [v11 initWithAccount:v12 freeSetting:v13 paidSetting:v14 delegate:self bag:v15];

  v17 = [v16 performSync];
  v20[0] = MEMORY[0x1E69E9820];
  v20[1] = 3221225472;
  v20[2] = __73__AMSUIPasswordSettingsViewController_tableView_didSelectRowAtIndexPath___block_invoke;
  v20[3] = &unk_1E7F255A0;
  v20[4] = self;
  v21 = v5;
  v18 = v5;
  [v17 addFinishBlock:v20];

  v19 = *MEMORY[0x1E69E9840];
}

void __73__AMSUIPasswordSettingsViewController_tableView_didSelectRowAtIndexPath___block_invoke(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v27 = *MEMORY[0x1E69E9840];
  v5 = [MEMORY[0x1E698C968] sharedAccountsConfig];
  v6 = v5;
  if (a3)
  {
    if (!v5)
    {
      v6 = [MEMORY[0x1E698C968] sharedConfig];
    }

    v7 = [v6 OSLogObject];
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      v8 = *(a1 + 32);
      v9 = objc_opt_class();
      v10 = AMSLogKey();
      *buf = 138543618;
      v24 = v9;
      v25 = 2114;
      v26 = v10;
      _os_log_impl(&dword_1BB036000, v7, OS_LOG_TYPE_ERROR, "%{public}@: [%{public}@] Paid Downloads sync failed - Toggling back", buf, 0x16u);
    }

    v11 = [*(a1 + 32) paidSetting];
    v12 = *(a1 + 32);
    if (v11 == 1)
    {
      v13 = 2;
    }

    else
    {
      v13 = 1;
    }

    [*(a1 + 32) setPaidSetting:v13];
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __73__AMSUIPasswordSettingsViewController_tableView_didSelectRowAtIndexPath___block_invoke_38;
    block[3] = &unk_1E7F243C0;
    v14 = *(a1 + 40);
    block[4] = *(a1 + 32);
    v22 = v14;
    dispatch_async(MEMORY[0x1E69E96A0], block);
  }

  else
  {
    if (!v5)
    {
      v6 = [MEMORY[0x1E698C968] sharedConfig];
    }

    v15 = [v6 OSLogObject];
    if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
    {
      v16 = *(a1 + 32);
      v17 = objc_opt_class();
      v18 = AMSLogKey();
      *buf = 138543618;
      v24 = v17;
      v25 = 2114;
      v26 = v18;
      _os_log_impl(&dword_1BB036000, v15, OS_LOG_TYPE_DEFAULT, "%{public}@: [%{public}@] Paid Downloads Success", buf, 0x16u);
    }

    v20[0] = MEMORY[0x1E69E9820];
    v20[1] = 3221225472;
    v20[2] = __73__AMSUIPasswordSettingsViewController_tableView_didSelectRowAtIndexPath___block_invoke_41;
    v20[3] = &unk_1E7F242D0;
    v20[4] = *(a1 + 32);
    dispatch_async(MEMORY[0x1E69E96A0], v20);
  }

  v19 = *MEMORY[0x1E69E9840];
}

void __73__AMSUIPasswordSettingsViewController_tableView_didSelectRowAtIndexPath___block_invoke_38(uint64_t a1)
{
  v3 = [*(a1 + 32) tableView];
  v2 = [MEMORY[0x1E696AC90] indexSetWithIndex:{objc_msgSend(*(a1 + 40), "section")}];
  [v3 reloadSections:v2 withRowAnimation:5];
}

void __73__AMSUIPasswordSettingsViewController_tableView_didSelectRowAtIndexPath___block_invoke_41(uint64_t a1)
{
  v1 = [*(a1 + 32) tableView];
  [v1 reloadData];
}

- (id)tableView:(id)a3 willSelectRowAtIndexPath:(id)a4
{
  v5 = a4;
  if (([MEMORY[0x1E698CB10] requirePasswordImmediately] & 1) != 0 || self->_isBiometricsEnabled)
  {
    v6 = 0;
  }

  else
  {
    if ([v5 section])
    {
      v7 = 0;
    }

    else
    {
      v7 = v5;
    }

    v6 = v7;
  }

  return v6;
}

- (void)freeDownloadsToggle:(id)a3 changedValue:(BOOL)a4
{
  v4 = a4;
  v27 = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = [MEMORY[0x1E698C968] sharedAccountsConfig];
  if (!v7)
  {
    v7 = [MEMORY[0x1E698C968] sharedConfig];
  }

  v8 = [v7 OSLogObject];
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    v9 = objc_opt_class();
    v10 = AMSLogKey();
    *buf = 138543618;
    v24 = v9;
    v25 = 2114;
    v26 = v10;
    _os_log_impl(&dword_1BB036000, v8, OS_LOG_TYPE_DEFAULT, "%{public}@: [%{public}@] Free Downloads toggled", buf, 0x16u);
  }

  if (v4)
  {
    v11 = 1;
  }

  else
  {
    v11 = 3;
  }

  [(AMSUIPasswordSettingsViewController *)self setFreeSetting:v11];
  v12 = objc_alloc(MEMORY[0x1E698CB48]);
  v13 = [(AMSUIPasswordSettingsViewController *)self account];
  v14 = [(AMSUIPasswordSettingsViewController *)self freeSetting];
  v15 = [(AMSUIPasswordSettingsViewController *)self paidSetting];
  v16 = [MEMORY[0x1E698CB48] createBagForSubProfile];
  v17 = [v12 initWithAccount:v13 freeSetting:v14 paidSetting:v15 delegate:self bag:v16];

  v18 = [v17 performSync];
  v21[0] = MEMORY[0x1E69E9820];
  v21[1] = 3221225472;
  v21[2] = __72__AMSUIPasswordSettingsViewController_freeDownloadsToggle_changedValue___block_invoke;
  v21[3] = &unk_1E7F255A0;
  v21[4] = self;
  v22 = v6;
  v19 = v6;
  [v18 addFinishBlock:v21];

  v20 = *MEMORY[0x1E69E9840];
}

void __72__AMSUIPasswordSettingsViewController_freeDownloadsToggle_changedValue___block_invoke(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v20 = *MEMORY[0x1E69E9840];
  v5 = [MEMORY[0x1E698C968] sharedAccountsConfig];
  v6 = v5;
  if (a3)
  {
    if (!v5)
    {
      v6 = [MEMORY[0x1E698C968] sharedConfig];
    }

    v7 = [v6 OSLogObject];
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      v8 = *(a1 + 32);
      v9 = objc_opt_class();
      v10 = AMSLogKey();
      v16 = 138543618;
      v17 = v9;
      v18 = 2114;
      v19 = v10;
      _os_log_impl(&dword_1BB036000, v7, OS_LOG_TYPE_ERROR, "%{public}@: [%{public}@] Free Download sync failed - Toggling back", &v16, 0x16u);
    }

    [*(a1 + 40) setOn:{objc_msgSend(*(a1 + 40), "isOn") ^ 1}];
  }

  else
  {
    if (!v5)
    {
      v6 = [MEMORY[0x1E698C968] sharedConfig];
    }

    v11 = [v6 OSLogObject];
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
    {
      v12 = *(a1 + 32);
      v13 = objc_opt_class();
      v14 = AMSLogKey();
      v16 = 138543618;
      v17 = v13;
      v18 = 2114;
      v19 = v14;
      _os_log_impl(&dword_1BB036000, v11, OS_LOG_TYPE_DEFAULT, "%{public}@: [%{public}@] Free Downloads Success", &v16, 0x16u);
    }
  }

  v15 = *MEMORY[0x1E69E9840];
}

- (void)handleAuthenticateRequest:(id)a3 completion:(id)a4
{
  v6 = a4;
  v7 = a3;
  v8 = [[AMSUIAuthenticateTask alloc] initWithRequest:v7 presentingViewController:self];

  v9 = [(AMSAuthenticateTask *)v8 performAuthentication];
  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 3221225472;
  v11[2] = __76__AMSUIPasswordSettingsViewController_handleAuthenticateRequest_completion___block_invoke;
  v11[3] = &unk_1E7F24370;
  v12 = v6;
  v10 = v6;
  [v9 addFinishBlock:v11];
}

- (void)handleDialogRequest:(id)a3 completion:(id)a4
{
  v6 = a4;
  v7 = a3;
  v8 = [[AMSUIAlertDialogTask alloc] initWithRequest:v7 presentingViewController:self];

  v9 = [(AMSUIAlertDialogTask *)v8 present];
  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 3221225472;
  v11[2] = __70__AMSUIPasswordSettingsViewController_handleDialogRequest_completion___block_invoke;
  v11[3] = &unk_1E7F24398;
  v12 = v6;
  v10 = v6;
  [v9 addFinishBlock:v11];
}

@end