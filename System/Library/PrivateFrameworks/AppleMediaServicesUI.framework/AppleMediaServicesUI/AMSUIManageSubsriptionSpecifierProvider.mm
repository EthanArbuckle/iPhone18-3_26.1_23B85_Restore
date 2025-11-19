@interface AMSUIManageSubsriptionSpecifierProvider
- (AAUISpecifierProviderDelegate)delegate;
- (AMSUIManageSubsriptionSpecifierProvider)initWithAccountManager:(id)a3;
- (BOOL)_isSingleIdentity;
- (NSArray)specifiers;
- (id)_appleAccount;
- (id)_bag;
- (id)_findViewController;
- (id)_storeAccount;
- (void)_loadManageSubsWithSpecifier:(id)a3;
- (void)_subscriptionsSpecifierWasTapped:(id)a3;
- (void)dealloc;
- (void)webViewController:(id)a3 handleAuthenticateRequest:(id)a4 completion:(id)a5;
- (void)webViewController:(id)a3 handleDialogRequest:(id)a4 completion:(id)a5;
@end

@implementation AMSUIManageSubsriptionSpecifierProvider

- (AMSUIManageSubsriptionSpecifierProvider)initWithAccountManager:(id)a3
{
  v5 = a3;
  v12.receiver = self;
  v12.super_class = AMSUIManageSubsriptionSpecifierProvider;
  v6 = [(AMSUIManageSubsriptionSpecifierProvider *)&v12 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_accountManager, a3);
    objc_initWeak(&location, v7);
    v9[0] = MEMORY[0x1E69E9820];
    v9[1] = 3221225472;
    v9[2] = __66__AMSUIManageSubsriptionSpecifierProvider_initWithAccountManager___block_invoke;
    v9[3] = &unk_1E7F24F40;
    objc_copyWeak(&v10, &location);
    [v5 addAccountChangeObserver:v7 handler:v9];
    objc_destroyWeak(&v10);
    objc_destroyWeak(&location);
  }

  return v7;
}

void __66__AMSUIManageSubsriptionSpecifierProvider_initWithAccountManager___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v58 = *MEMORY[0x1E69E9840];
  v5 = a2;
  v6 = a3;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v8 = [MEMORY[0x1E698C968] sharedAccountsConfig];
  if (!v8)
  {
    v8 = [MEMORY[0x1E698C968] sharedConfig];
  }

  v9 = [v8 OSLogObject];
  if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
  {
    v10 = AMSLogKey();
    v11 = MEMORY[0x1E696AEC0];
    v12 = objc_opt_class();
    v13 = v12;
    if (v10)
    {
      a3 = AMSLogKey();
      [v11 stringWithFormat:@"%@: [%@] ", v13, a3];
    }

    else
    {
      [v11 stringWithFormat:@"%@: ", v12];
    }
    v14 = ;
    *buf = 138543362;
    *&buf[4] = v14;
    _os_log_impl(&dword_1BB036000, v9, OS_LOG_TYPE_INFO, "%{public}@[AIDAAccountManager addAccountChangeObserver:handler:] handler called", buf, 0xCu);
    if (v10)
    {

      v14 = a3;
    }
  }

  if (WeakRetained)
  {
    v15 = getAIDAServiceTypeStore();
    v16 = [v5 objectForKeyedSubscript:v15];

    v17 = getAIDAServiceTypeStore();
    v18 = [v6 objectForKeyedSubscript:v17];

    v19 = [MEMORY[0x1E698C968] sharedAccountsConfig];
    if (!v19)
    {
      v19 = [MEMORY[0x1E698C968] sharedConfig];
    }

    v20 = [v19 OSLogObject];
    v50 = v6;
    if (os_log_type_enabled(v20, OS_LOG_TYPE_DEBUG))
    {
      v48 = v5;
      v21 = AMSLogKey();
      v22 = MEMORY[0x1E696AEC0];
      v23 = objc_opt_class();
      v24 = v23;
      if (v21)
      {
        v6 = AMSLogKey();
        [v22 stringWithFormat:@"%@: [%@] ", v24, v6];
      }

      else
      {
        [v22 stringWithFormat:@"%@: ", v23];
      }
      v25 = ;
      v26 = AMSHashIfNeeded();
      v27 = AMSHashIfNeeded();
      *buf = 138543874;
      *&buf[4] = v25;
      *&buf[12] = 2114;
      *&buf[14] = v26;
      *&buf[22] = 2114;
      v55 = v27;
      _os_log_impl(&dword_1BB036000, v20, OS_LOG_TYPE_DEBUG, "%{public}@[AIDAAccountManager addAccountChangeObserver:handler:] called with old account: %{public}@, new account: %{public}@", buf, 0x20u);
      if (v21)
      {

        v25 = v6;
      }

      v5 = v48;
      v6 = v50;
    }

    if ((v18 != 0) != (v16 != 0))
    {
      v28 = 1;
    }

    else
    {
      v29 = [v16 ams_DSID];
      v30 = [v18 ams_DSID];
      v31 = v30;
      if (v29 && v30)
      {
        if (v18)
        {
          v28 = [v29 isEqualToNumber:v30] ^ 1;
        }

        else
        {
          v28 = 0;
        }
      }

      else
      {
        v28 = (v29 | v30) != 0;
      }
    }

    v32 = [MEMORY[0x1E698C968] sharedAccountsConfig];
    if (!v32)
    {
      v32 = [MEMORY[0x1E698C968] sharedConfig];
    }

    v33 = [v32 OSLogObject];
    if (os_log_type_enabled(v33, OS_LOG_TYPE_DEBUG))
    {
      v49 = v16;
      v34 = v5;
      v35 = AMSLogKey();
      v36 = MEMORY[0x1E696AEC0];
      v37 = objc_opt_class();
      v38 = v37;
      if (v35)
      {
        v6 = AMSLogKey();
        [v36 stringWithFormat:@"%@: [%@] ", v38, v6];
      }

      else
      {
        [v36 stringWithFormat:@"%@: ", v37];
      }
      v39 = ;
      v40 = @"false";
      if (v28)
      {
        v40 = @"true";
      }

      *buf = 138543618;
      *&buf[4] = v39;
      *&buf[12] = 2114;
      *&buf[14] = v40;
      _os_log_impl(&dword_1BB036000, v33, OS_LOG_TYPE_DEBUG, "%{public}@didChangeAccounts: %{public}@", buf, 0x16u);
      if (v35)
      {

        v39 = v6;
      }

      v5 = v34;
      v16 = v49;
      v6 = v50;
    }

    if (v28)
    {
      v41 = [WeakRetained specifiers];
      v42 = [v41 copy];

      [WeakRetained setSpecifiers:0];
      v51[0] = MEMORY[0x1E69E9820];
      v51[1] = 3221225472;
      v51[2] = __66__AMSUIManageSubsriptionSpecifierProvider_initWithAccountManager___block_invoke_50;
      v51[3] = &unk_1E7F243C0;
      v52 = WeakRetained;
      v53 = v42;
      v43 = v51;
      v44 = v42;
      v45 = AMSLogKey();
      *buf = MEMORY[0x1E69E9820];
      *&buf[8] = 3221225472;
      *&buf[16] = __AMSDispatchAsync_block_invoke_3;
      v55 = &unk_1E7F245E0;
      v56 = v45;
      v57 = v43;
      v46 = v45;
      dispatch_async(MEMORY[0x1E69E96A0], buf);
    }
  }

  v47 = *MEMORY[0x1E69E9840];
}

void __66__AMSUIManageSubsriptionSpecifierProvider_initWithAccountManager___block_invoke_50(uint64_t a1)
{
  v29 = *MEMORY[0x1E69E9840];
  v3 = [MEMORY[0x1E698C968] sharedAccountsConfig];
  if (!v3)
  {
    v3 = [MEMORY[0x1E698C968] sharedConfig];
  }

  v4 = [v3 OSLogObject];
  if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
  {
    v5 = AMSLogKey();
    v6 = MEMORY[0x1E696AEC0];
    v7 = *(a1 + 32);
    v8 = objc_opt_class();
    v9 = v8;
    if (v5)
    {
      v1 = AMSLogKey();
      [v6 stringWithFormat:@"%@: [%@] ", v9, v1];
    }

    else
    {
      [v6 stringWithFormat:@"%@: ", v8];
    }
    v10 = ;
    v11 = [*(a1 + 32) delegate];
    v12 = AMSHashIfNeeded();
    v13 = *(a1 + 32);
    v14 = AMSHashIfNeeded();
    v15 = *(a1 + 40);
    v16 = AMSHashIfNeeded();
    *buf = 138544386;
    v20 = v10;
    v21 = 2114;
    v22 = v12;
    v23 = 2114;
    v24 = v14;
    v25 = 2114;
    v26 = v16;
    v27 = 2114;
    v28 = @"false";
    _os_log_impl(&dword_1BB036000, v4, OS_LOG_TYPE_INFO, "%{public}@Calling [AAUISpecifierProviderDelegate reloadSpecifiersForProvider:oldSpecifiers:animated:] on delegate: %{public}@ with provider: %{public}@, oldSpecifiers: %{public}@, animated: %{public}@", buf, 0x34u);

    if (v5)
    {

      v10 = v1;
    }
  }

  v17 = [*(a1 + 32) delegate];
  [v17 reloadSpecifiersForProvider:*(a1 + 32) oldSpecifiers:*(a1 + 40) animated:0];

  v18 = *MEMORY[0x1E69E9840];
}

- (void)dealloc
{
  v3 = [(AMSUIManageSubsriptionSpecifierProvider *)self accountManager];
  [v3 removeAccountChangeObserver:self];

  v4.receiver = self;
  v4.super_class = AMSUIManageSubsriptionSpecifierProvider;
  [(AMSUIManageSubsriptionSpecifierProvider *)&v4 dealloc];
}

- (NSArray)specifiers
{
  v18[1] = *MEMORY[0x1E69E9840];
  specifiers = self->_specifiers;
  if (specifiers)
  {
    goto LABEL_2;
  }

  v5 = [(AMSUIManageSubsriptionSpecifierProvider *)self _storeAccount];

  if (!v5)
  {
    v17 = self->_specifiers;
    self->_specifiers = MEMORY[0x1E695E0F0];

    specifiers = self->_specifiers;
LABEL_2:
    v3 = specifiers;
    goto LABEL_9;
  }

  v6 = [MEMORY[0x1E696AAE8] bundleWithIdentifier:@"com.apple.AppleMediaServicesUI"];
  v7 = AMSUILocalizedStringFromBundle(@"APPLEID_SUBSCRIPTIONS_CELL_TITLE", 0, v6);

  v8 = [MEMORY[0x1E69C5748] preferenceSpecifierNamed:v7 target:self set:0 get:0 detail:0 cell:2 edit:0];
  [v8 setControllerLoadAction:sel__subscriptionsSpecifierWasTapped_];
  [v8 setIdentifier:@"SUBSCRIPTIONS"];
  v9 = [MEMORY[0x1E698DDA0] sharedNetworkObserver];
  v10 = [v9 isNetworkReachable];

  if ((v10 & 1) == 0)
  {
    [v8 setProperty:MEMORY[0x1E695E110] forKey:*MEMORY[0x1E69C58C8]];
  }

  if (![(AMSUIManageSubsriptionSpecifierProvider *)self _isSingleIdentity])
  {
    [v8 setProperty:objc_opt_class() forKey:*MEMORY[0x1E69C5860]];
    [v8 setProperty:v7 forKey:*MEMORY[0x1E69C59A8]];
    v11 = [(AMSUIManageSubsriptionSpecifierProvider *)self _storeAccount];
    v12 = [v11 aa_formattedUsername];
    [v8 setProperty:v12 forKey:*MEMORY[0x1E69C59A0]];
  }

  v18[0] = v8;
  v13 = [MEMORY[0x1E695DEC8] arrayWithObjects:v18 count:1];
  v14 = self->_specifiers;
  self->_specifiers = v13;

  v3 = self->_specifiers;
LABEL_9:
  v15 = *MEMORY[0x1E69E9840];

  return v3;
}

- (BOOL)_isSingleIdentity
{
  v3 = [(AMSUIManageSubsriptionSpecifierProvider *)self _appleAccount];
  v4 = [(AMSUIManageSubsriptionSpecifierProvider *)self _storeAccount];
  v5 = v4;
  v6 = 1;
  if (v3 && v4)
  {
    v7 = [v3 ams_altDSID];
    v8 = [v5 ams_altDSID];
    if ([v7 length] && objc_msgSend(v8, "length"))
    {
      v6 = [v7 isEqualToString:v8];
    }

    else
    {
      v9 = [v3 ams_DSID];
      v10 = [v5 ams_DSID];
      v11 = v10;
      if (v10)
      {
        v12 = v10;
      }

      else
      {
        v12 = &unk_1F394A5E8;
      }

      v6 = [v9 isEqualToNumber:v12];
    }
  }

  return v6;
}

- (id)_appleAccount
{
  v2 = [(AIDAAccountManager *)self->_accountManager accounts];
  v8 = 0;
  v9 = &v8;
  v10 = 0x2020000000;
  v3 = getAIDAServiceTypeCloudSymbolLoc_ptr_1;
  v11 = getAIDAServiceTypeCloudSymbolLoc_ptr_1;
  if (!getAIDAServiceTypeCloudSymbolLoc_ptr_1)
  {
    v4 = AppleIDSSOAuthenticationLibrary_0();
    v9[3] = dlsym(v4, "AIDAServiceTypeCloud");
    getAIDAServiceTypeCloudSymbolLoc_ptr_1 = v9[3];
    v3 = v9[3];
  }

  _Block_object_dispose(&v8, 8);
  if (!v3)
  {
    v7 = [AIDAMutableServiceContext(AppleMediaServicesUI) _ams_installCDPUIWithCDPUIController:flowControllerDelegate:];
    _Block_object_dispose(&v8, 8);
    _Unwind_Resume(v7);
  }

  v5 = [v2 objectForKeyedSubscript:*v3];

  return v5;
}

- (id)_storeAccount
{
  v2 = [(AIDAAccountManager *)self->_accountManager accounts];
  v3 = getAIDAServiceTypeStore();
  v4 = [v2 objectForKeyedSubscript:v3];

  return v4;
}

- (void)_subscriptionsSpecifierWasTapped:(id)a3
{
  v4 = a3;
  v5 = [(AMSUIManageSubsriptionSpecifierProvider *)self delegate];
  [v5 specifierProvider:self willBeginLoadingSpecifier:v4];

  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __76__AMSUIManageSubsriptionSpecifierProvider__subscriptionsSpecifierWasTapped___block_invoke;
  v10[3] = &unk_1E7F243C0;
  v10[4] = self;
  v11 = v4;
  v6 = v10;
  v7 = v4;
  v8 = AMSLogKey();
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __AMSDispatchAsync_block_invoke_3;
  block[3] = &unk_1E7F245E0;
  v13 = v8;
  v14 = v6;
  v9 = v8;
  dispatch_async(MEMORY[0x1E69E96A0], block);
}

- (void)webViewController:(id)a3 handleAuthenticateRequest:(id)a4 completion:(id)a5
{
  v7 = a5;
  v8 = a4;
  v9 = [AMSUIAuthenticateTask alloc];
  v10 = [(AMSUIManageSubsriptionSpecifierProvider *)self _findViewController];
  v12 = [(AMSUIAuthenticateTask *)v9 initWithRequest:v8 presentingViewController:v10];

  v11 = [(AMSAuthenticateTask *)v12 performAuthentication];
  [v11 addFinishBlock:v7];
}

- (void)webViewController:(id)a3 handleDialogRequest:(id)a4 completion:(id)a5
{
  v7 = a5;
  v8 = a4;
  v9 = [AMSUIAlertDialogTask alloc];
  v10 = [(AMSUIManageSubsriptionSpecifierProvider *)self _findViewController];
  v12 = [(AMSUIAlertDialogTask *)v9 initWithRequest:v8 presentingViewController:v10];

  v11 = [(AMSUIAlertDialogTask *)v12 present];
  [v11 addFinishBlock:v7];
}

- (id)_bag
{
  v2 = objc_alloc_init(MEMORY[0x1E698CA40]);
  v3 = +[AMSUISubscriptionsViewController bagKeySet];
  [v2 unionBagKeySet:v3];

  v4 = [MEMORY[0x1E695DFF8] URLWithString:@"https://apps.mzstatic.com/content/54a1317a0ad442d3965d64ef6bfaae1c/"];
  [v2 addBagKey:@"manageSubscriptionsV2Url" valueType:5 defaultValue:v4];

  v5 = +[AMSUISubscriptionsViewController bagSubProfile];
  v6 = +[AMSUISubscriptionsViewController bagSubProfileVersion];
  [MEMORY[0x1E698C7E0] registerBagKeySet:v2 forProfile:v5 profileVersion:v6];
  v7 = [MEMORY[0x1E698C7D8] bagForProfile:v5 profileVersion:v6];

  return v7;
}

- (id)_findViewController
{
  v2 = [MEMORY[0x1E69DC668] sharedApplication];
  v3 = [v2 windows];
  v4 = [v3 firstObject];
  v5 = [v4 rootViewController];

  return v5;
}

- (void)_loadManageSubsWithSpecifier:(id)a3
{
  v4 = a3;
  dispatch_assert_queue_V2(MEMORY[0x1E69E96A0]);
  v5 = [(AMSUIManageSubsriptionSpecifierProvider *)self _bag];
  v6 = AMSSetLogKey();
  v7 = [v5 URLForKey:@"manageSubscriptionsV2Url"];
  v8 = [AMSUIWebViewController alloc];
  v9 = [(AMSUIManageSubsriptionSpecifierProvider *)self _storeAccount];
  v10 = [(AMSUIWebViewController *)v8 initWithBag:v5 account:v9 clientInfo:0];

  v11 = +[AMSUIWebAppearance tableViewAppearance];
  [(AMSUIWebViewController *)v10 setAppearance:v11];

  [(AMSUIWebViewController *)v10 setDelegate:self];
  v12 = [(AMSUIWebViewController *)v10 loadBagValue:v7];
  v18[0] = MEMORY[0x1E69E9820];
  v18[1] = 3221225472;
  v18[2] = __72__AMSUIManageSubsriptionSpecifierProvider__loadManageSubsWithSpecifier___block_invoke;
  v18[3] = &unk_1E7F24B50;
  v18[4] = self;
  v19 = v4;
  v13 = v4;
  [v12 addFinishBlock:v18];
  v16[0] = MEMORY[0x1E69E9820];
  v16[1] = 3221225472;
  v16[2] = __72__AMSUIManageSubsriptionSpecifierProvider__loadManageSubsWithSpecifier___block_invoke_3;
  v16[3] = &unk_1E7F243C0;
  v16[4] = self;
  v17 = v10;
  v14 = v10;
  [v12 addSuccessBlock:v16];
  v15[0] = MEMORY[0x1E69E9820];
  v15[1] = 3221225472;
  v15[2] = __72__AMSUIManageSubsriptionSpecifierProvider__loadManageSubsWithSpecifier___block_invoke_80;
  v15[3] = &unk_1E7F24410;
  v15[4] = self;
  [v12 addErrorBlock:v15];
}

void __72__AMSUIManageSubsriptionSpecifierProvider__loadManageSubsWithSpecifier___block_invoke(uint64_t a1)
{
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __72__AMSUIManageSubsriptionSpecifierProvider__loadManageSubsWithSpecifier___block_invoke_2;
  v5[3] = &unk_1E7F243C0;
  v1 = *(a1 + 40);
  v5[4] = *(a1 + 32);
  v6 = v1;
  v2 = v5;
  v3 = AMSLogKey();
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __AMSDispatchAsync_block_invoke_3;
  block[3] = &unk_1E7F245E0;
  v8 = v3;
  v9 = v2;
  v4 = v3;
  dispatch_async(MEMORY[0x1E69E96A0], block);
}

void __72__AMSUIManageSubsriptionSpecifierProvider__loadManageSubsWithSpecifier___block_invoke_2(uint64_t a1)
{
  v2 = [*(a1 + 32) delegate];
  [v2 specifierProvider:*(a1 + 32) didFinishLoadingSpecifier:*(a1 + 40)];
}

void __72__AMSUIManageSubsriptionSpecifierProvider__loadManageSubsWithSpecifier___block_invoke_3(uint64_t a1)
{
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __72__AMSUIManageSubsriptionSpecifierProvider__loadManageSubsWithSpecifier___block_invoke_4;
  v5[3] = &unk_1E7F243C0;
  v1 = *(a1 + 40);
  v5[4] = *(a1 + 32);
  v6 = v1;
  v2 = v5;
  v3 = AMSLogKey();
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __AMSDispatchAsync_block_invoke_3;
  block[3] = &unk_1E7F245E0;
  v8 = v3;
  v9 = v2;
  v4 = v3;
  dispatch_async(MEMORY[0x1E69E96A0], block);
}

void __72__AMSUIManageSubsriptionSpecifierProvider__loadManageSubsWithSpecifier___block_invoke_4(uint64_t a1)
{
  v15 = *MEMORY[0x1E69E9840];
  v3 = [MEMORY[0x1E698C968] sharedConfig];
  if (!v3)
  {
    v3 = [MEMORY[0x1E698C968] sharedConfig];
  }

  v4 = [v3 OSLogObject];
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v5 = AMSLogKey();
    v6 = MEMORY[0x1E696AEC0];
    v7 = *(a1 + 32);
    v8 = objc_opt_class();
    v9 = v8;
    if (v5)
    {
      v1 = AMSLogKey();
      [v6 stringWithFormat:@"%@: [%@] ", v9, v1];
    }

    else
    {
      [v6 stringWithFormat:@"%@: ", v8];
    }
    v10 = ;
    *buf = 138543362;
    v14 = v10;
    _os_log_impl(&dword_1BB036000, v4, OS_LOG_TYPE_DEFAULT, "%{public}@Presenting manage subs", buf, 0xCu);
    if (v5)
    {

      v10 = v1;
    }
  }

  v11 = [*(a1 + 32) delegate];
  [v11 specifierProvider:*(a1 + 32) showViewController:*(a1 + 40)];

  v12 = *MEMORY[0x1E69E9840];
}

void __72__AMSUIManageSubsriptionSpecifierProvider__loadManageSubsWithSpecifier___block_invoke_80(uint64_t a1, void *a2)
{
  v18 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = [MEMORY[0x1E698C968] sharedConfig];
  if (!v4)
  {
    v4 = [MEMORY[0x1E698C968] sharedConfig];
  }

  v5 = [v4 OSLogObject];
  if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
  {
    v6 = AMSLogKey();
    v7 = MEMORY[0x1E696AEC0];
    v8 = *(a1 + 32);
    v9 = objc_opt_class();
    v10 = v9;
    if (v6)
    {
      a1 = AMSLogKey();
      [v7 stringWithFormat:@"%@: [%@] ", v10, a1];
    }

    else
    {
      [v7 stringWithFormat:@"%@: ", v9];
    }
    v11 = ;
    v12 = AMSLogableError();
    *buf = 138543618;
    v15 = v11;
    v16 = 2114;
    v17 = v12;
    _os_log_impl(&dword_1BB036000, v5, OS_LOG_TYPE_ERROR, "%{public}@Failed to load manage subs. error = %{public}@", buf, 0x16u);
    if (v6)
    {

      v11 = a1;
    }
  }

  v13 = *MEMORY[0x1E69E9840];
}

- (AAUISpecifierProviderDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end