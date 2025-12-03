@interface AMSUIPasswordSettingsViewController
- (AMSUIPasswordSettingsViewController)initWithAccount:(id)account;
- (id)tableView:(id)view cellForRowAtIndexPath:(id)path;
- (id)tableView:(id)view titleForHeaderInSection:(int64_t)section;
- (id)tableView:(id)view willSelectRowAtIndexPath:(id)path;
- (int64_t)tableView:(id)view numberOfRowsInSection:(int64_t)section;
- (void)freeDownloadsToggle:(id)toggle changedValue:(BOOL)value;
- (void)handleAuthenticateRequest:(id)request completion:(id)completion;
- (void)handleDialogRequest:(id)request completion:(id)completion;
- (void)loadView;
- (void)tableView:(id)view didSelectRowAtIndexPath:(id)path;
- (void)viewDidLoad;
@end

@implementation AMSUIPasswordSettingsViewController

- (AMSUIPasswordSettingsViewController)initWithAccount:(id)account
{
  accountCopy = account;
  v11.receiver = self;
  v11.super_class = AMSUIPasswordSettingsViewController;
  v6 = [(AMSUIPasswordSettingsViewController *)&v11 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_account, account);
    v8 = [MEMORY[0x1E696AAE8] bundleWithIdentifier:@"com.apple.AppleMediaServicesUI"];
    bundle = v7->_bundle;
    v7->_bundle = v8;
  }

  return v7;
}

- (void)loadView
{
  v4 = [AMSUIPasswordSettingsViewProvider makeViewWithAccount:self->_account];
  view = [v4 view];
  [v4 setView:0];
  [(AMSUIPasswordSettingsViewController *)self setView:view];
}

- (void)viewDidLoad
{
  v7.receiver = self;
  v7.super_class = AMSUIPasswordSettingsViewController;
  [(AMSUIPasswordSettingsViewController *)&v7 viewDidLoad];
  bundle = [(AMSUIPasswordSettingsViewController *)self bundle];
  v4 = [bundle localizedStringForKey:@"PASSWORD_SETTINGS_TITLE" value:&stru_1F3921360 table:0];
  [(AMSUIPasswordSettingsViewController *)self setTitle:v4];

  v5 = [objc_alloc(MEMORY[0x1E69DC708]) initWithBarButtonSystemItem:0 target:self action:sel_donePressed_];
  navigationItem = [(AMSUIPasswordSettingsViewController *)self navigationItem];
  [navigationItem setRightBarButtonItem:v5];
}

- (id)tableView:(id)view cellForRowAtIndexPath:(id)path
{
  viewCopy = view;
  pathCopy = path;
  if ([pathCopy section])
  {
    v8 = [viewCopy dequeueReusableCellWithIdentifier:@"Free" forIndexPath:pathCopy];
    bundle = [(AMSUIPasswordSettingsViewController *)self bundle];
    v10 = [bundle localizedStringForKey:@"PASSWORD_SETTINGS_REQUIRE" value:&stru_1F3921360 table:0];
    textLabel = [v8 textLabel];
    [textLabel setText:v10];

    v12 = ([MEMORY[0x1E698CB10] requirePasswordImmediately] & 1) != 0 || -[AMSUIPasswordSettingsViewController freeSetting](self, "freeSetting") == 1;
    toggle = [v8 toggle];
    [toggle setOn:v12];

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

    contentView = [v8 contentView];
    [contentView setAlpha:v20];

    toggle2 = [v8 toggle];
    [toggle2 setEnabled:v21];

    goto LABEL_26;
  }

  v8 = [viewCopy dequeueReusableCellWithIdentifier:@"Purchases" forIndexPath:pathCopy];
  if ([MEMORY[0x1E698CB10] requirePasswordImmediately])
  {
    contentView2 = [v8 contentView];
    [contentView2 setAlpha:0.5];
  }

  v14 = [pathCopy row];
  bundle2 = [(AMSUIPasswordSettingsViewController *)self bundle];
  v16 = bundle2;
  if (!v14)
  {
    v24 = [bundle2 localizedStringForKey:@"PASSWORD_SETTINGS_ALWAYS" value:&stru_1F3921360 table:0];
    textLabel2 = [v8 textLabel];
    [textLabel2 setText:v24];

    if (-[AMSUIPasswordSettingsViewController paidSetting](self, "paidSetting") != 1 && -[AMSUIPasswordSettingsViewController paidSetting](self, "paidSetting") && ![MEMORY[0x1E698CB10] requirePasswordImmediately])
    {
      goto LABEL_23;
    }

LABEL_22:
    [viewCopy selectRowAtIndexPath:pathCopy animated:1 scrollPosition:0];
    goto LABEL_24;
  }

  v17 = [bundle2 localizedStringForKey:@"PASSWORD_SETTINGS_SOMETIMES" value:&stru_1F3921360 table:0];
  textLabel3 = [v8 textLabel];
  [textLabel3 setText:v17];

  if (-[AMSUIPasswordSettingsViewController paidSetting](self, "paidSetting") == 2 && ([MEMORY[0x1E698CB10] requirePasswordImmediately] & 1) == 0)
  {
    goto LABEL_22;
  }

LABEL_23:
  [viewCopy deselectRowAtIndexPath:pathCopy animated:1];
LABEL_24:
  if (self->_isBiometricsEnabled)
  {
    contentView3 = [v8 contentView];
    [contentView3 setAlpha:0.5];

    tintColor = [MEMORY[0x1E69DC888] tintColor];
    v28 = [tintColor colorWithAlphaComponent:0.5];
    [v8 setTintColor:v28];

    [v8 setUserInteractionEnabled:0];
  }

LABEL_26:

  return v8;
}

- (int64_t)tableView:(id)view numberOfRowsInSection:(int64_t)section
{
  if (section)
  {
    return 1;
  }

  else
  {
    return 2;
  }
}

- (id)tableView:(id)view titleForHeaderInSection:(int64_t)section
{
  bundle = [(AMSUIPasswordSettingsViewController *)self bundle];
  v6 = bundle;
  if (section)
  {
    v7 = @"PASSWORD_SETTINGS_FREE_HEADER";
  }

  else
  {
    v7 = @"PASSWORD_SETTINGS_PAID_HEADER";
  }

  v8 = [bundle localizedStringForKey:v7 value:&stru_1F3921360 table:0];

  return v8;
}

- (void)tableView:(id)view didSelectRowAtIndexPath:(id)path
{
  v26 = *MEMORY[0x1E69E9840];
  pathCopy = path;
  mEMORY[0x1E698C968] = [MEMORY[0x1E698C968] sharedAccountsConfig];
  if (!mEMORY[0x1E698C968])
  {
    mEMORY[0x1E698C968] = [MEMORY[0x1E698C968] sharedConfig];
  }

  oSLogObject = [mEMORY[0x1E698C968] OSLogObject];
  if (os_log_type_enabled(oSLogObject, OS_LOG_TYPE_DEFAULT))
  {
    v8 = objc_opt_class();
    v9 = AMSLogKey();
    *buf = 138543618;
    v23 = v8;
    v24 = 2114;
    v25 = v9;
    _os_log_impl(&dword_1BB036000, oSLogObject, OS_LOG_TYPE_DEFAULT, "%{public}@: [%{public}@] Paid Downloads toggled", buf, 0x16u);
  }

  if ([pathCopy row])
  {
    v10 = 2;
  }

  else
  {
    v10 = 1;
  }

  [(AMSUIPasswordSettingsViewController *)self setPaidSetting:v10];
  v11 = objc_alloc(MEMORY[0x1E698CB48]);
  account = [(AMSUIPasswordSettingsViewController *)self account];
  freeSetting = [(AMSUIPasswordSettingsViewController *)self freeSetting];
  paidSetting = [(AMSUIPasswordSettingsViewController *)self paidSetting];
  createBagForSubProfile = [MEMORY[0x1E698CB48] createBagForSubProfile];
  v16 = [v11 initWithAccount:account freeSetting:freeSetting paidSetting:paidSetting delegate:self bag:createBagForSubProfile];

  performSync = [v16 performSync];
  v20[0] = MEMORY[0x1E69E9820];
  v20[1] = 3221225472;
  v20[2] = __73__AMSUIPasswordSettingsViewController_tableView_didSelectRowAtIndexPath___block_invoke;
  v20[3] = &unk_1E7F255A0;
  v20[4] = self;
  v21 = pathCopy;
  v18 = pathCopy;
  [performSync addFinishBlock:v20];

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

- (id)tableView:(id)view willSelectRowAtIndexPath:(id)path
{
  pathCopy = path;
  if (([MEMORY[0x1E698CB10] requirePasswordImmediately] & 1) != 0 || self->_isBiometricsEnabled)
  {
    v6 = 0;
  }

  else
  {
    if ([pathCopy section])
    {
      v7 = 0;
    }

    else
    {
      v7 = pathCopy;
    }

    v6 = v7;
  }

  return v6;
}

- (void)freeDownloadsToggle:(id)toggle changedValue:(BOOL)value
{
  valueCopy = value;
  v27 = *MEMORY[0x1E69E9840];
  toggleCopy = toggle;
  mEMORY[0x1E698C968] = [MEMORY[0x1E698C968] sharedAccountsConfig];
  if (!mEMORY[0x1E698C968])
  {
    mEMORY[0x1E698C968] = [MEMORY[0x1E698C968] sharedConfig];
  }

  oSLogObject = [mEMORY[0x1E698C968] OSLogObject];
  if (os_log_type_enabled(oSLogObject, OS_LOG_TYPE_DEFAULT))
  {
    v9 = objc_opt_class();
    v10 = AMSLogKey();
    *buf = 138543618;
    v24 = v9;
    v25 = 2114;
    v26 = v10;
    _os_log_impl(&dword_1BB036000, oSLogObject, OS_LOG_TYPE_DEFAULT, "%{public}@: [%{public}@] Free Downloads toggled", buf, 0x16u);
  }

  if (valueCopy)
  {
    v11 = 1;
  }

  else
  {
    v11 = 3;
  }

  [(AMSUIPasswordSettingsViewController *)self setFreeSetting:v11];
  v12 = objc_alloc(MEMORY[0x1E698CB48]);
  account = [(AMSUIPasswordSettingsViewController *)self account];
  freeSetting = [(AMSUIPasswordSettingsViewController *)self freeSetting];
  paidSetting = [(AMSUIPasswordSettingsViewController *)self paidSetting];
  createBagForSubProfile = [MEMORY[0x1E698CB48] createBagForSubProfile];
  v17 = [v12 initWithAccount:account freeSetting:freeSetting paidSetting:paidSetting delegate:self bag:createBagForSubProfile];

  performSync = [v17 performSync];
  v21[0] = MEMORY[0x1E69E9820];
  v21[1] = 3221225472;
  v21[2] = __72__AMSUIPasswordSettingsViewController_freeDownloadsToggle_changedValue___block_invoke;
  v21[3] = &unk_1E7F255A0;
  v21[4] = self;
  v22 = toggleCopy;
  v19 = toggleCopy;
  [performSync addFinishBlock:v21];

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

- (void)handleAuthenticateRequest:(id)request completion:(id)completion
{
  completionCopy = completion;
  requestCopy = request;
  v8 = [[AMSUIAuthenticateTask alloc] initWithRequest:requestCopy presentingViewController:self];

  performAuthentication = [(AMSAuthenticateTask *)v8 performAuthentication];
  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 3221225472;
  v11[2] = __76__AMSUIPasswordSettingsViewController_handleAuthenticateRequest_completion___block_invoke;
  v11[3] = &unk_1E7F24370;
  v12 = completionCopy;
  v10 = completionCopy;
  [performAuthentication addFinishBlock:v11];
}

- (void)handleDialogRequest:(id)request completion:(id)completion
{
  completionCopy = completion;
  requestCopy = request;
  v8 = [[AMSUIAlertDialogTask alloc] initWithRequest:requestCopy presentingViewController:self];

  present = [(AMSUIAlertDialogTask *)v8 present];
  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 3221225472;
  v11[2] = __70__AMSUIPasswordSettingsViewController_handleDialogRequest_completion___block_invoke;
  v11[3] = &unk_1E7F24398;
  v12 = completionCopy;
  v10 = completionCopy;
  [present addFinishBlock:v11];
}

@end