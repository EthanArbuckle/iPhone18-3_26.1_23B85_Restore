@interface AMSUINotificationSettingsViewController
- (ACAccount)account;
- (AMSUINotificationSettingsViewController)initWithIdentifier:(id)a3 bag:(id)a4;
- (BOOL)_isAuthenticated;
- (id)_promptForAuthentication;
- (void)_commitChangedItemsUpdates;
- (void)_commonSetup;
- (void)_handleAllowNotificationsButton;
- (void)_handleAuthenticationError:(id)a3;
- (void)_loadData;
- (void)_updateNotificationStatus;
- (void)dealloc;
- (void)tableView:(id)a3 didSelectRowAtIndexPath:(id)a4;
- (void)viewDidLoad;
- (void)viewModel:(id)a3 didReceiveValueChange:(id)a4 forItem:(id)a5;
- (void)viewWillLayoutSubviews;
@end

@implementation AMSUINotificationSettingsViewController

- (AMSUINotificationSettingsViewController)initWithIdentifier:(id)a3 bag:(id)a4
{
  v7 = a3;
  v8 = a4;
  v13.receiver = self;
  v13.super_class = AMSUINotificationSettingsViewController;
  v9 = [(AMSUINotificationSettingsViewController *)&v13 init];
  if (v9)
  {
    v10 = [MEMORY[0x1E695DF90] dictionary];
    changedItems = v9->_changedItems;
    v9->_changedItems = v10;

    objc_storeStrong(&v9->_bag, a4);
    objc_storeStrong(&v9->_identifier, a3);
    [(AMSUINotificationSettingsViewController *)v9 _commonSetup];
  }

  return v9;
}

- (void)dealloc
{
  v3 = [MEMORY[0x1E696AD88] defaultCenter];
  [v3 removeObserver:self name:@"UIApplicationWillEnterForegroundNotification" object:0];

  v4.receiver = self;
  v4.super_class = AMSUINotificationSettingsViewController;
  [(AMSUINotificationSettingsViewController *)&v4 dealloc];
}

- (void)viewDidLoad
{
  v22 = *MEMORY[0x1E69E9840];
  v17.receiver = self;
  v17.super_class = AMSUINotificationSettingsViewController;
  [(AMSUINotificationSettingsViewController *)&v17 viewDidLoad];
  v3 = [MEMORY[0x1E696AD88] defaultCenter];
  [v3 addObserver:self selector:sel__appWillEnterForeground_ name:@"UIApplicationWillEnterForegroundNotification" object:0];

  v4 = [MEMORY[0x1E69DC888] systemBackgroundColor];
  v5 = [(AMSUINotificationSettingsViewController *)self view];
  [v5 setBackgroundColor:v4];

  v6 = [(AMSUINotificationSettingsViewController *)self bag];
  v7 = [MEMORY[0x1E696AAE8] bundleWithIdentifier:@"com.apple.AppleMediaServicesUI"];
  v8 = AMSUILocalizedStringFromBundle(@"NOTIFICATIONS_SETTINGS_TITLE", v6, v7);
  [(AMSUINotificationSettingsViewController *)self setTitle:v8];

  v9 = [(AMSUINotificationSettingsViewController *)self navigationItem];
  [v9 setLargeTitleDisplayMode:2];

  if ([(AMSUINotificationSettingsViewController *)self _isAuthenticated])
  {
    [(AMSUINotificationSettingsViewController *)self _loadData];
    v10 = [MEMORY[0x1E698C968] sharedConfig];
    if (!v10)
    {
      v10 = [MEMORY[0x1E698C968] sharedConfig];
    }

    v11 = [v10 OSLogObject];
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEBUG))
    {
      v12 = objc_opt_class();
      v13 = AMSLogKey();
      *buf = 138543618;
      v19 = v12;
      v20 = 2114;
      v21 = v13;
      v14 = "%{public}@: [%{public}@] User authenticated, setting up table";
LABEL_10:
      _os_log_impl(&dword_1BB036000, v11, OS_LOG_TYPE_DEBUG, v14, buf, 0x16u);
    }
  }

  else
  {
    v10 = [MEMORY[0x1E698C968] sharedConfig];
    if (!v10)
    {
      v10 = [MEMORY[0x1E698C968] sharedConfig];
    }

    v11 = [v10 OSLogObject];
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEBUG))
    {
      v15 = objc_opt_class();
      v13 = AMSLogKey();
      *buf = 138543618;
      v19 = v15;
      v20 = 2114;
      v21 = v13;
      v14 = "%{public}@: [%{public}@] User not authenticated, delaying table setup";
      goto LABEL_10;
    }
  }

  v16 = *MEMORY[0x1E69E9840];
}

void __57__AMSUINotificationSettingsViewController_viewDidAppear___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __57__AMSUINotificationSettingsViewController_viewDidAppear___block_invoke_2;
  block[3] = &unk_1E7F24590;
  v11 = v5;
  v12 = WeakRetained;
  v13 = v6;
  v8 = v6;
  v9 = v5;
  dispatch_async(MEMORY[0x1E69E96A0], block);
}

uint64_t __57__AMSUINotificationSettingsViewController_viewDidAppear___block_invoke_2(void *a1)
{
  v3 = a1[4];
  v2 = a1[5];
  if (v3)
  {
    return [v2 _loadData];
  }

  else
  {
    return [v2 _handleAuthenticationError:a1[6]];
  }
}

- (void)viewWillLayoutSubviews
{
  v33.receiver = self;
  v33.super_class = AMSUINotificationSettingsViewController;
  [(AMSUINotificationSettingsViewController *)&v33 viewWillLayoutSubviews];
  v3 = [(AMSUINotificationSettingsViewController *)self view];
  [v3 bounds];
  v5 = v4;
  v7 = v6;
  v9 = v8;
  v11 = v10;
  v12 = [(AMSUINotificationSettingsViewController *)self tableView];
  [v12 setFrame:{v5, v7, v9, v11}];

  v13 = [(AMSUINotificationSettingsViewController *)self view];
  [v13 bounds];
  v15 = v14;
  v17 = v16;
  v19 = v18;
  v21 = v20;
  v22 = [(AMSUINotificationSettingsViewController *)self loadingView];
  [v22 setFrame:{v15, v17, v19, v21}];

  v23 = [(AMSUINotificationSettingsViewController *)self view];
  [v23 bounds];
  v25 = v24;
  v27 = v26;
  v29 = v28;
  v31 = v30;
  v32 = [(AMSUINotificationSettingsViewController *)self errorView];
  [v32 setFrame:{v25, v27, v29, v31}];
}

- (void)_commitChangedItemsUpdates
{
  v26 = *MEMORY[0x1E69E9840];
  v3 = [(AMSUINotificationSettingsViewController *)self changedItems];
  v4 = [v3 allValues];

  v5 = [v4 count];
  v6 = [MEMORY[0x1E698C968] sharedConfig];
  v7 = v6;
  if (v5)
  {
    if (!v6)
    {
      v7 = [MEMORY[0x1E698C968] sharedConfig];
    }

    v8 = [v7 OSLogObject];
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      v9 = objc_opt_class();
      v10 = AMSLogKey();
      *buf = 138543874;
      v21 = v9;
      v22 = 2114;
      v23 = v10;
      v24 = 2048;
      v25 = [v4 count];
      _os_log_impl(&dword_1BB036000, v8, OS_LOG_TYPE_DEFAULT, "%{public}@: [%{public}@] Updating %lu notification settings", buf, 0x20u);
    }

    v11 = objc_alloc(MEMORY[0x1E698CA80]);
    v12 = [(AMSUINotificationSettingsViewController *)self identifier];
    v13 = [(AMSUINotificationSettingsViewController *)self account];
    v14 = [(AMSUINotificationSettingsViewController *)self bag];
    v7 = [v11 initWithIdentifier:v12 account:v13 bag:v14];

    v15 = [v7 updateSettings:v4];
    v19[0] = MEMORY[0x1E69E9820];
    v19[1] = 3221225472;
    v19[2] = __69__AMSUINotificationSettingsViewController__commitChangedItemsUpdates__block_invoke;
    v19[3] = &unk_1E7F246E0;
    v19[4] = self;
    [v15 addFinishBlock:v19];
  }

  else
  {
    if (!v6)
    {
      v7 = [MEMORY[0x1E698C968] sharedConfig];
    }

    v15 = [v7 OSLogObject];
    if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
    {
      v16 = objc_opt_class();
      v17 = AMSLogKey();
      *buf = 138543618;
      v21 = v16;
      v22 = 2114;
      v23 = v17;
      _os_log_impl(&dword_1BB036000, v15, OS_LOG_TYPE_DEFAULT, "%{public}@: [%{public}@] No settings changed, not updating", buf, 0x16u);
    }
  }

  v18 = *MEMORY[0x1E69E9840];
}

void __69__AMSUINotificationSettingsViewController__commitChangedItemsUpdates__block_invoke(uint64_t a1, int a2)
{
  v18 = *MEMORY[0x1E69E9840];
  v4 = [MEMORY[0x1E698C968] sharedConfig];
  v5 = v4;
  if (a2)
  {
    if (!v4)
    {
      v5 = [MEMORY[0x1E698C968] sharedConfig];
    }

    v6 = [v5 OSLogObject];
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      v7 = *(a1 + 32);
      v8 = objc_opt_class();
      v9 = AMSLogKey();
      v14 = 138543618;
      v15 = v8;
      v16 = 2114;
      v17 = v9;
      v10 = "%{public}@: [%{public}@] Successfully updated notification settings";
LABEL_10:
      _os_log_impl(&dword_1BB036000, v6, OS_LOG_TYPE_DEFAULT, v10, &v14, 0x16u);
    }
  }

  else
  {
    if (!v4)
    {
      v5 = [MEMORY[0x1E698C968] sharedConfig];
    }

    v6 = [v5 OSLogObject];
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      v11 = *(a1 + 32);
      v12 = objc_opt_class();
      v9 = AMSLogKey();
      v14 = 138543618;
      v15 = v12;
      v16 = 2114;
      v17 = v9;
      v10 = "%{public}@: [%{public}@] Failed to update notification settings";
      goto LABEL_10;
    }
  }

  v13 = *MEMORY[0x1E69E9840];
}

- (void)_commonSetup
{
  v3 = [AMSUILoadingView alloc];
  v4 = *MEMORY[0x1E695F058];
  v5 = *(MEMORY[0x1E695F058] + 8);
  v6 = *(MEMORY[0x1E695F058] + 16);
  v7 = *(MEMORY[0x1E695F058] + 24);
  v8 = [(AMSUILoadingView *)v3 initWithFrame:*MEMORY[0x1E695F058], v5, v6, v7];
  loadingView = self->_loadingView;
  self->_loadingView = v8;

  v10 = [MEMORY[0x1E6983308] currentNotificationCenter];
  notificationCenter = self->_notificationCenter;
  self->_notificationCenter = v10;

  v12 = objc_alloc_init(AMSUINotificationSettingsViewModel);
  model = self->_model;
  self->_model = v12;

  [(AMSUINotificationSettingsViewModel *)self->_model setDelegate:self];
  v14 = [objc_alloc(MEMORY[0x1E69DD020]) initWithFrame:2 style:{v4, v5, v6, v7}];
  tableView = self->_tableView;
  self->_tableView = v14;

  [(UITableView *)self->_tableView registerClass:objc_opt_class() forCellReuseIdentifier:@"kAMSUINotificationInAppSettingsCellIdentifier"];
  [(UITableView *)self->_tableView registerClass:objc_opt_class() forCellReuseIdentifier:@"kAMSUINotificationInAppSettingsButtonCellIdentifier"];
  [(UITableView *)self->_tableView setDataSource:self->_model];
  [(UITableView *)self->_tableView setDelegate:self];
  [(AMSUINotificationSettingsViewController *)self _updateNotificationStatus];
  v16 = objc_alloc(MEMORY[0x1E69DD418]);
  v17 = [(AMSUINotificationSettingsViewController *)self bag];
  v18 = [MEMORY[0x1E696AAE8] bundleWithIdentifier:@"com.apple.AppleMediaServicesUI"];
  v19 = AMSUILocalizedStringFromBundle(@"DEFAULT_ERROR_TITLE", v17, v18);
  v20 = [v16 initWithFrame:v19 title:0 style:{v4, v5, v6, v7}];
  errorView = self->_errorView;
  self->_errorView = v20;

  [(_UIContentUnavailableView *)self->_errorView setMessage:&stru_1F3921360];
  v22 = [(AMSUINotificationSettingsViewController *)self bag];
  v23 = [MEMORY[0x1E696AAE8] bundleWithIdentifier:@"com.apple.AppleMediaServicesUI"];
  v24 = AMSUILocalizedStringFromBundle(@"DEFAULT_ERROR_BUTTON", v22, v23);
  [(_UIContentUnavailableView *)self->_errorView setButtonTitle:v24];

  objc_initWeak(&location, self);
  v25 = self->_errorView;
  v26[0] = MEMORY[0x1E69E9820];
  v26[1] = 3221225472;
  v26[2] = __55__AMSUINotificationSettingsViewController__commonSetup__block_invoke;
  v26[3] = &unk_1E7F24968;
  objc_copyWeak(&v27, &location);
  [(_UIContentUnavailableView *)v25 setButtonAction:v26];
  objc_destroyWeak(&v27);
  objc_destroyWeak(&location);
}

void __55__AMSUINotificationSettingsViewController__commonSetup__block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v1 = [WeakRetained errorView];
  [v1 removeFromSuperview];

  [WeakRetained _loadData];
}

- (void)_handleAllowNotificationsButton
{
  v25 = *MEMORY[0x1E69E9840];
  if ([(AMSUINotificationSettingsViewController *)self shouldDeepLink])
  {
    v3 = MEMORY[0x1E696AEC0];
    v4 = [MEMORY[0x1E698CAC8] currentProcess];
    v5 = [v4 bundleIdentifier];
    v6 = [v3 stringWithFormat:@"prefs:root=NOTIFICATIONS_ID&path=%@", v5];

    v7 = MEMORY[0x1E698CA98];
    v8 = [MEMORY[0x1E695DFF8] URLWithString:v6];
    v9 = [v7 openStandardURL:v8];

    v10 = [MEMORY[0x1E698C968] sharedConfig];
    v11 = v10;
    if (v9)
    {
      if (!v10)
      {
        v11 = [MEMORY[0x1E698C968] sharedConfig];
      }

      v12 = [v11 OSLogObject];
      if (!os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
      {
        goto LABEL_13;
      }

      v13 = objc_opt_class();
      v14 = AMSLogKey();
      *buf = 138543618;
      v22 = v13;
      v23 = 2114;
      v24 = v14;
      v15 = "%{public}@: [%{public}@] Successfully opened URL to notifications page.";
      v16 = v12;
      v17 = OS_LOG_TYPE_DEFAULT;
    }

    else
    {
      if (!v10)
      {
        v11 = [MEMORY[0x1E698C968] sharedConfig];
      }

      v12 = [v11 OSLogObject];
      if (!os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
      {
        goto LABEL_13;
      }

      v18 = objc_opt_class();
      v14 = AMSLogKey();
      *buf = 138543618;
      v22 = v18;
      v23 = 2114;
      v24 = v14;
      v15 = "%{public}@: [%{public}@] Failed to open URL to notifications page.";
      v16 = v12;
      v17 = OS_LOG_TYPE_ERROR;
    }

    _os_log_impl(&dword_1BB036000, v16, v17, v15, buf, 0x16u);

LABEL_13:
    goto LABEL_14;
  }

  v6 = [(AMSUINotificationSettingsViewController *)self notificationCenter];
  v20[0] = MEMORY[0x1E69E9820];
  v20[1] = 3221225472;
  v20[2] = __74__AMSUINotificationSettingsViewController__handleAllowNotificationsButton__block_invoke;
  v20[3] = &unk_1E7F246E0;
  v20[4] = self;
  [v6 requestAuthorizationWithOptions:38 completionHandler:v20];
LABEL_14:

  v19 = *MEMORY[0x1E69E9840];
}

void __74__AMSUINotificationSettingsViewController__handleAllowNotificationsButton__block_invoke(uint64_t a1, int a2, void *a3)
{
  v23 = *MEMORY[0x1E69E9840];
  v5 = a3;
  v6 = [MEMORY[0x1E698C968] sharedConfig];
  v7 = v6;
  if (a2)
  {
    if (!v6)
    {
      v7 = [MEMORY[0x1E698C968] sharedConfig];
    }

    v8 = [v7 OSLogObject];
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      v9 = *(a1 + 32);
      v10 = objc_opt_class();
      v11 = AMSLogKey();
      v17 = 138543618;
      v18 = v10;
      v19 = 2114;
      v20 = v11;
      _os_log_impl(&dword_1BB036000, v8, OS_LOG_TYPE_DEFAULT, "%{public}@: [%{public}@] Authorization granted.", &v17, 0x16u);
    }

    [*(a1 + 32) _updateNotificationStatus];
  }

  else
  {
    if (!v6)
    {
      v7 = [MEMORY[0x1E698C968] sharedConfig];
    }

    v12 = [v7 OSLogObject];
    if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      v13 = *(a1 + 32);
      v14 = objc_opt_class();
      v15 = AMSLogKey();
      v17 = 138543874;
      v18 = v14;
      v19 = 2114;
      v20 = v15;
      v21 = 2114;
      v22 = v5;
      _os_log_impl(&dword_1BB036000, v12, OS_LOG_TYPE_ERROR, "%{public}@: [%{public}@] Failed to acquire authorization. Error: %{public}@", &v17, 0x20u);
    }
  }

  v16 = *MEMORY[0x1E69E9840];
}

- (void)_loadData
{
  v3 = [(AMSUINotificationSettingsViewController *)self view];
  v4 = [(AMSUINotificationSettingsViewController *)self loadingView];
  [v3 addSubview:v4];

  v5 = [(AMSUINotificationSettingsViewController *)self loadingView];
  [v5 startAnimating];

  v6 = objc_alloc(MEMORY[0x1E698CA80]);
  v7 = [(AMSUINotificationSettingsViewController *)self identifier];
  v8 = [(AMSUINotificationSettingsViewController *)self account];
  v9 = [(AMSUINotificationSettingsViewController *)self bag];
  v10 = [v6 initWithIdentifier:v7 account:v8 bag:v9];

  v11 = [v10 fetchAllSettings];
  v12[0] = MEMORY[0x1E69E9820];
  v12[1] = 3221225472;
  v12[2] = __52__AMSUINotificationSettingsViewController__loadData__block_invoke;
  v12[3] = &unk_1E7F25368;
  v12[4] = self;
  [v11 addFinishBlock:v12];
}

void __52__AMSUINotificationSettingsViewController__loadData__block_invoke(uint64_t a1, void *a2, uint64_t a3)
{
  if (a3)
  {
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __52__AMSUINotificationSettingsViewController__loadData__block_invoke_2;
    block[3] = &unk_1E7F242D0;
    block[4] = *(a1 + 32);
    dispatch_sync(MEMORY[0x1E69E96A0], block);
  }

  else
  {
    v4 = [a2 sections];
    v5 = [*(a1 + 32) model];
    [v5 setSections:v4];

    v6[0] = MEMORY[0x1E69E9820];
    v6[1] = 3221225472;
    v6[2] = __52__AMSUINotificationSettingsViewController__loadData__block_invoke_3;
    v6[3] = &unk_1E7F242D0;
    v6[4] = *(a1 + 32);
    dispatch_async(MEMORY[0x1E69E96A0], v6);
  }
}

void __52__AMSUINotificationSettingsViewController__loadData__block_invoke_2(uint64_t a1)
{
  v2 = [*(a1 + 32) loadingView];
  [v2 removeFromSuperview];

  v4 = [*(a1 + 32) view];
  v3 = [*(a1 + 32) errorView];
  [v4 addSubview:v3];
}

void __52__AMSUINotificationSettingsViewController__loadData__block_invoke_3(uint64_t a1)
{
  v2 = [*(a1 + 32) view];
  v3 = [*(a1 + 32) tableView];
  [v2 addSubview:v3];

  v4 = *(a1 + 32);
  v5 = [v4 tableView];
  [v4 setContentScrollView:v5 forEdge:15];

  v6 = [*(a1 + 32) tableView];
  [v6 reloadData];
}

- (void)_updateNotificationStatus
{
  objc_initWeak(&location, self);
  v3 = [(AMSUINotificationSettingsViewController *)self notificationCenter];
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = __68__AMSUINotificationSettingsViewController__updateNotificationStatus__block_invoke;
  v4[3] = &unk_1E7F25390;
  objc_copyWeak(&v5, &location);
  [v3 getNotificationSettingsWithCompletionHandler:v4];

  objc_destroyWeak(&v5);
  objc_destroyWeak(&location);
}

void __68__AMSUINotificationSettingsViewController__updateNotificationStatus__block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v5 = [v3 authorizationStatus];
  if (v5 != 2 && [v3 authorizationStatus] == 1)
  {
    [WeakRetained setShouldDeepLink:1];
  }

  v6 = [WeakRetained model];
  [v6 setShowAllowNotificationsButton:v5 != 2];

  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __68__AMSUINotificationSettingsViewController__updateNotificationStatus__block_invoke_2;
  block[3] = &unk_1E7F242D0;
  block[4] = WeakRetained;
  dispatch_async(MEMORY[0x1E69E96A0], block);
}

void __68__AMSUINotificationSettingsViewController__updateNotificationStatus__block_invoke_2(uint64_t a1)
{
  v1 = [*(a1 + 32) tableView];
  [v1 reloadData];
}

- (ACAccount)account
{
  v2 = [MEMORY[0x1E6959A48] ams_sharedAccountStore];
  v3 = [v2 ams_activeiTunesAccount];

  return v3;
}

- (BOOL)_isAuthenticated
{
  v2 = [(AMSUINotificationSettingsViewController *)self account];
  v3 = v2 != 0;

  return v3;
}

- (void)_handleAuthenticationError:(id)a3
{
  v19 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = [MEMORY[0x1E698C968] sharedConfig];
  if (!v5)
  {
    v5 = [MEMORY[0x1E698C968] sharedConfig];
  }

  v6 = [v5 OSLogObject];
  if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
  {
    v7 = objc_opt_class();
    v8 = AMSLogKey();
    v13 = 138543874;
    v14 = v7;
    v15 = 2114;
    v16 = v8;
    v17 = 2114;
    v18 = v4;
    _os_log_impl(&dword_1BB036000, v6, OS_LOG_TYPE_ERROR, "%{public}@: [%{public}@] Failed to authenticate an account. Error: %{public}@", &v13, 0x20u);
  }

  v9 = [(AMSUINotificationSettingsViewController *)self navigationController];

  if (v9)
  {
    v10 = [(AMSUINotificationSettingsViewController *)self navigationController];
    v11 = [v10 popViewControllerAnimated:1];
  }

  else
  {
    [(AMSUINotificationSettingsViewController *)self dismissViewControllerAnimated:1 completion:0];
  }

  v12 = *MEMORY[0x1E69E9840];
}

- (id)_promptForAuthentication
{
  v3 = objc_opt_new();
  [v3 setAuthenticationType:2];
  v4 = [(AMSUINotificationSettingsViewController *)self clientInfo];
  [v3 setClientInfo:v4];

  [v3 setDebugReason:@"Account is not present while attempting to show notification settings."];
  [v3 setEnableAccountCreation:0];
  v5 = AMSLogKey();
  [v3 setLogKey:v5];

  v6 = [AMSUIAuthenticateTask alloc];
  v7 = [(AMSUINotificationSettingsViewController *)self account];
  v8 = [(AMSUIAuthenticateTask *)v6 initWithAccount:v7 presentingViewController:self options:v3];

  v9 = [(AMSAuthenticateTask *)v8 performAuthentication];

  return v9;
}

- (void)viewModel:(id)a3 didReceiveValueChange:(id)a4 forItem:(id)a5
{
  v21 = *MEMORY[0x1E69E9840];
  v6 = a5;
  v7 = [MEMORY[0x1E698C968] sharedConfig];
  if (!v7)
  {
    v7 = [MEMORY[0x1E698C968] sharedConfig];
  }

  v8 = [v7 OSLogObject];
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    v9 = objc_opt_class();
    v10 = AMSLogKey();
    v11 = [v6 identifier];
    v15 = 138543874;
    v16 = v9;
    v17 = 2114;
    v18 = v10;
    v19 = 2112;
    v20 = v11;
    _os_log_impl(&dword_1BB036000, v8, OS_LOG_TYPE_DEFAULT, "%{public}@: [%{public}@] %@ setting changed", &v15, 0x20u);
  }

  v12 = [(AMSUINotificationSettingsViewController *)self changedItems];
  v13 = [v6 identifier];
  [v12 setObject:v6 forKeyedSubscript:v13];

  v14 = *MEMORY[0x1E69E9840];
}

- (void)tableView:(id)a3 didSelectRowAtIndexPath:(id)a4
{
  v9 = a3;
  v6 = a4;
  if (![v6 section])
  {
    v7 = [(AMSUINotificationSettingsViewController *)self model];
    v8 = [v7 showAllowNotificationsButton];

    if (v8)
    {
      [(AMSUINotificationSettingsViewController *)self _handleAllowNotificationsButton];
    }
  }

  [v9 deselectRowAtIndexPath:v6 animated:1];
}

@end