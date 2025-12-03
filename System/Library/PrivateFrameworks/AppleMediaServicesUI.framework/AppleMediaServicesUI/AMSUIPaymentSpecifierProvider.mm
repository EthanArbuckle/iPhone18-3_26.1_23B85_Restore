@interface AMSUIPaymentSpecifierProvider
+ (BOOL)_accountsChangedFromAccount:(id)account toAccount:(id)toAccount;
- (AAUISpecifierProviderDelegate)delegate;
- (AMSUIPaymentSpecifierProvider)initWithAccountManager:(id)manager;
- (NSArray)specifiers;
- (id)_findViewController;
- (id)_grandSlamAccount;
- (void)_loadControllerForSpecifier:(id)specifier;
- (void)dealloc;
- (void)setPaymentSummaryDescription:(id)description;
- (void)webViewController:(id)controller handleAuthenticateRequest:(id)request completion:(id)completion;
- (void)webViewController:(id)controller handleDialogRequest:(id)request completion:(id)completion;
@end

@implementation AMSUIPaymentSpecifierProvider

- (void)setPaymentSummaryDescription:(id)description
{
  descriptionCopy = description;
  if (![(NSString *)self->_paymentSummaryDescription isEqualToString:?])
  {
    v4 = [descriptionCopy copy];
    paymentSummaryDescription = self->_paymentSummaryDescription;
    self->_paymentSummaryDescription = v4;

    delegate = [(AMSUIPaymentSpecifierProvider *)self delegate];
    [delegate reloadSpecifierForProvider:self identifier:@"PAYMENT_AND_SHIPPING"];
  }
}

- (AMSUIPaymentSpecifierProvider)initWithAccountManager:(id)manager
{
  managerCopy = manager;
  v12.receiver = self;
  v12.super_class = AMSUIPaymentSpecifierProvider;
  v6 = [(AMSUIPaymentSpecifierProvider *)&v12 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_accountManager, manager);
    objc_initWeak(&location, v7);
    v9[0] = MEMORY[0x1E69E9820];
    v9[1] = 3221225472;
    v9[2] = __56__AMSUIPaymentSpecifierProvider_initWithAccountManager___block_invoke;
    v9[3] = &unk_1E7F24F40;
    objc_copyWeak(&v10, &location);
    [managerCopy addAccountChangeObserver:v7 handler:v9];
    objc_destroyWeak(&v10);
    objc_destroyWeak(&location);
  }

  return v7;
}

void __56__AMSUIPaymentSpecifierProvider_initWithAccountManager___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v57 = *MEMORY[0x1E69E9840];
  v5 = a2;
  v6 = a3;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v8 = 0x1E698C000uLL;
  v9 = [MEMORY[0x1E698C968] sharedAccountsConfig];
  if (!v9)
  {
    v9 = [MEMORY[0x1E698C968] sharedConfig];
  }

  v10 = [v9 OSLogObject];
  if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
  {
    v11 = AMSLogKey();
    v12 = MEMORY[0x1E696AEC0];
    v13 = objc_opt_class();
    v14 = v13;
    if (v11)
    {
      a3 = AMSLogKey();
      [v12 stringWithFormat:@"%@: [%@] ", v14, a3];
    }

    else
    {
      [v12 stringWithFormat:@"%@: ", v13];
    }
    v15 = ;
    *buf = 138543362;
    *&buf[4] = v15;
    _os_log_impl(&dword_1BB036000, v10, OS_LOG_TYPE_INFO, "%{public}@[AIDAAccountManager addAccountChangeObserver:handler:] handler called", buf, 0xCu);
    if (v11)
    {

      v15 = a3;
    }
  }

  if (WeakRetained)
  {
    v16 = getAIDAServiceTypeStore_0();
    v17 = [v5 objectForKeyedSubscript:v16];

    v18 = getAIDAServiceTypeStore_0();
    v19 = [v6 objectForKeyedSubscript:v18];

    v20 = [MEMORY[0x1E698C968] sharedAccountsConfig];
    if (!v20)
    {
      v20 = [MEMORY[0x1E698C968] sharedConfig];
    }

    v49 = v5;
    v21 = [v20 OSLogObject];
    if (os_log_type_enabled(v21, OS_LOG_TYPE_DEBUG))
    {
      v47 = v6;
      v22 = AMSLogKey();
      v23 = MEMORY[0x1E696AEC0];
      v24 = objc_opt_class();
      v25 = v24;
      if (v22)
      {
        v6 = AMSLogKey();
        [v23 stringWithFormat:@"%@: [%@] ", v25, v6];
      }

      else
      {
        [v23 stringWithFormat:@"%@: ", v24];
      }
      v26 = ;
      v27 = AMSHashIfNeeded();
      v28 = AMSHashIfNeeded();
      *buf = 138543874;
      *&buf[4] = v26;
      *&buf[12] = 2114;
      *&buf[14] = v27;
      *&buf[22] = 2114;
      v54 = v28;
      _os_log_impl(&dword_1BB036000, v21, OS_LOG_TYPE_DEBUG, "%{public}@[AIDAAccountManager addAccountChangeObserver:handler:] called with old account: %{public}@, new account: %{public}@", buf, 0x20u);
      if (v22)
      {

        v26 = v6;
      }

      v6 = v47;
      v8 = 0x1E698C000uLL;
    }

    v29 = [objc_opt_class() _accountsChangedFromAccount:v17 toAccount:v19];
    v30 = [MEMORY[0x1E698C968] sharedAccountsConfig];
    if (!v30)
    {
      v30 = [MEMORY[0x1E698C968] sharedConfig];
    }

    v31 = [v30 OSLogObject];
    if (os_log_type_enabled(v31, OS_LOG_TYPE_DEBUG))
    {
      v48 = v19;
      v32 = v17;
      v33 = v6;
      v34 = AMSLogKey();
      v35 = MEMORY[0x1E696AEC0];
      v36 = objc_opt_class();
      v37 = v36;
      if (v34)
      {
        v8 = AMSLogKey();
        [v35 stringWithFormat:@"%@: [%@] ", v37, v8];
      }

      else
      {
        [v35 stringWithFormat:@"%@: ", v36];
      }
      v38 = ;
      v39 = @"false";
      if (v29)
      {
        v39 = @"true";
      }

      *buf = 138543618;
      *&buf[4] = v38;
      *&buf[12] = 2114;
      *&buf[14] = v39;
      _os_log_impl(&dword_1BB036000, v31, OS_LOG_TYPE_DEBUG, "%{public}@didChangeAccounts: %{public}@", buf, 0x16u);
      if (v34)
      {

        v38 = v8;
      }

      v6 = v33;
      v17 = v32;
      v19 = v48;
    }

    if (v29)
    {
      v40 = [WeakRetained specifiers];
      v41 = [v40 copy];

      [WeakRetained setSpecifiers:0];
      v50[0] = MEMORY[0x1E69E9820];
      v50[1] = 3221225472;
      v50[2] = __56__AMSUIPaymentSpecifierProvider_initWithAccountManager___block_invoke_47;
      v50[3] = &unk_1E7F243C0;
      v51 = WeakRetained;
      v52 = v41;
      v42 = v50;
      v43 = v41;
      v44 = AMSLogKey();
      *buf = MEMORY[0x1E69E9820];
      *&buf[8] = 3221225472;
      *&buf[16] = __AMSDispatchAsync_block_invoke_4;
      v54 = &unk_1E7F245E0;
      v55 = v44;
      v56 = v42;
      v45 = v44;
      dispatch_async(MEMORY[0x1E69E96A0], buf);
    }

    v5 = v49;
  }

  v46 = *MEMORY[0x1E69E9840];
}

void __56__AMSUIPaymentSpecifierProvider_initWithAccountManager___block_invoke_47(uint64_t a1)
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
  accountManager = [(AMSUIPaymentSpecifierProvider *)self accountManager];
  [accountManager removeAccountChangeObserver:self];

  v4.receiver = self;
  v4.super_class = AMSUIPaymentSpecifierProvider;
  [(AMSUIPaymentSpecifierProvider *)&v4 dealloc];
}

- (NSArray)specifiers
{
  specifiers = self->_specifiers;
  if (!specifiers)
  {
    v4 = MEMORY[0x1E69C5748];
    v5 = [MEMORY[0x1E696AAE8] bundleWithIdentifier:@"com.apple.AppleMediaServicesUI"];
    v6 = AMSUILocalizedStringFromBundle(@"APPLEID_PAYMENT_CELL_TITLE", 0, v5);
    v7 = [v4 preferenceSpecifierNamed:v6 target:self set:0 get:sel__paymentSummaryDescriptionForSpecifier_ detail:0 cell:2 edit:0];

    [v7 setControllerLoadAction:sel__loadControllerForSpecifier_];
    [v7 setIdentifier:@"PAYMENT_AND_SHIPPING"];
    v8 = [objc_alloc(MEMORY[0x1E695DEC8]) initWithObjects:{v7, 0}];
    v9 = self->_specifiers;
    self->_specifiers = v8;

    specifiers = self->_specifiers;
  }

  return specifiers;
}

- (void)webViewController:(id)controller handleAuthenticateRequest:(id)request completion:(id)completion
{
  completionCopy = completion;
  requestCopy = request;
  v9 = [AMSUIAuthenticateTask alloc];
  _findViewController = [(AMSUIPaymentSpecifierProvider *)self _findViewController];
  v12 = [(AMSUIAuthenticateTask *)v9 initWithRequest:requestCopy presentingViewController:_findViewController];

  performAuthentication = [(AMSAuthenticateTask *)v12 performAuthentication];
  [performAuthentication addFinishBlock:completionCopy];
}

- (void)webViewController:(id)controller handleDialogRequest:(id)request completion:(id)completion
{
  completionCopy = completion;
  requestCopy = request;
  v9 = [AMSUIAlertDialogTask alloc];
  _findViewController = [(AMSUIPaymentSpecifierProvider *)self _findViewController];
  v12 = [(AMSUIAlertDialogTask *)v9 initWithRequest:requestCopy presentingViewController:_findViewController];

  present = [(AMSUIAlertDialogTask *)v12 present];
  [present addFinishBlock:completionCopy];
}

+ (BOOL)_accountsChangedFromAccount:(id)account toAccount:(id)toAccount
{
  accountCopy = account;
  toAccountCopy = toAccount;
  v7 = toAccountCopy;
  if (accountCopy | toAccountCopy)
  {
    if ((accountCopy != 0) != (toAccountCopy != 0))
    {
      LOBYTE(v8) = 1;
    }

    else
    {
      ams_DSID = [accountCopy ams_DSID];
      ams_DSID2 = [v7 ams_DSID];
      v11 = ams_DSID2;
      if (ams_DSID | ams_DSID2)
      {
        if (ams_DSID2)
        {
          v12 = ams_DSID == 0;
        }

        else
        {
          v12 = 0;
        }

        if (ams_DSID2)
        {
          v13 = 1;
        }

        else
        {
          v13 = ams_DSID == 0;
        }

        LOBYTE(v8) = 1;
        if (v13 && !v12)
        {
          v8 = [ams_DSID isEqualToNumber:ams_DSID2] ^ 1;
        }
      }

      else
      {
        LOBYTE(v8) = 0;
      }
    }
  }

  else
  {
    LOBYTE(v8) = 0;
  }

  return v8;
}

- (id)_findViewController
{
  mEMORY[0x1E69DC668] = [MEMORY[0x1E69DC668] sharedApplication];
  windows = [mEMORY[0x1E69DC668] windows];
  firstObject = [windows firstObject];
  rootViewController = [firstObject rootViewController];

  return rootViewController;
}

- (id)_grandSlamAccount
{
  selfCopy = self;
  v55 = *MEMORY[0x1E69E9840];
  p_grandSlamAccount = &self->_grandSlamAccount;
  grandSlamAccount = self->_grandSlamAccount;
  if (!grandSlamAccount)
  {
    accountManager = [selfCopy accountManager];
    accountStore = [accountManager accountStore];
    accounts = [accountManager accounts];
    v47 = 0;
    v48 = &v47;
    v49 = 0x2020000000;
    v7 = getAIDAServiceTypeCloudSymbolLoc_ptr_2;
    v50 = getAIDAServiceTypeCloudSymbolLoc_ptr_2;
    if (!getAIDAServiceTypeCloudSymbolLoc_ptr_2)
    {
      *&buf = MEMORY[0x1E69E9820];
      *(&buf + 1) = 3221225472;
      v52 = __getAIDAServiceTypeCloudSymbolLoc_block_invoke_2;
      v53 = &unk_1E7F241B0;
      v54 = &v47;
      v8 = AppleIDSSOAuthenticationLibrary_1();
      v9 = dlsym(v8, "AIDAServiceTypeCloud");
      *(v54[1] + 24) = v9;
      getAIDAServiceTypeCloudSymbolLoc_ptr_2 = *(v54[1] + 24);
      v7 = v48[3];
    }

    _Block_object_dispose(&v47, 8);
    if (!v7)
    {
      [AIDAMutableServiceContext(AppleMediaServicesUI) _ams_installCDPUIWithCDPUIController:flowControllerDelegate:];
      __break(1u);
    }

    v10 = [accounts objectForKeyedSubscript:*v7];

    if (v10)
    {
      mEMORY[0x1E698C968] = [MEMORY[0x1E698C968] sharedConfig];
      if (!mEMORY[0x1E698C968])
      {
        mEMORY[0x1E698C968] = [MEMORY[0x1E698C968] sharedConfig];
      }

      oSLogObject = [mEMORY[0x1E698C968] OSLogObject];
      if (os_log_type_enabled(oSLogObject, OS_LOG_TYPE_DEFAULT))
      {
        v13 = AMSLogKey();
        v14 = v13 == 0;
        v15 = MEMORY[0x1E696AEC0];
        v16 = objc_opt_class();
        v17 = v16;
        if (v13)
        {
          v14 = AMSLogKey();
          [v15 stringWithFormat:@"%@: [%@] ", v17, v14];
        }

        else
        {
          [v15 stringWithFormat:@"%@: ", v16];
        }
        v18 = ;
        LODWORD(buf) = 138543362;
        *(&buf + 4) = v18;
        _os_log_impl(&dword_1BB036000, oSLogObject, OS_LOG_TYPE_DEFAULT, "%{public}@Fetching AIDA account from iCloud account", &buf, 0xCu);
        if (v13)
        {

          v18 = v14;
        }
      }

      v29 = [accountStore aida_accountForiCloudAccount:v10];
      v21 = *p_grandSlamAccount;
      *p_grandSlamAccount = v29;
    }

    else
    {
      accounts2 = [accountManager accounts];
      v20 = getAIDAServiceTypeStore_0();
      v21 = [accounts2 objectForKeyedSubscript:v20];

      if (v21)
      {
        mEMORY[0x1E698C968]2 = [MEMORY[0x1E698C968] sharedConfig];
        if (!mEMORY[0x1E698C968]2)
        {
          mEMORY[0x1E698C968]2 = [MEMORY[0x1E698C968] sharedConfig];
        }

        oSLogObject2 = [mEMORY[0x1E698C968]2 OSLogObject];
        if (os_log_type_enabled(oSLogObject2, OS_LOG_TYPE_DEFAULT))
        {
          v45 = AMSLogKey();
          v24 = v45 == 0;
          v25 = MEMORY[0x1E696AEC0];
          v26 = objc_opt_class();
          v27 = v26;
          if (v45)
          {
            v24 = AMSLogKey();
            [v25 stringWithFormat:@"%@: [%@] ", v27, v24];
          }

          else
          {
            [v25 stringWithFormat:@"%@: ", v26];
          }
          v28 = ;
          LODWORD(buf) = 138543362;
          *(&buf + 4) = v28;
          _os_log_impl(&dword_1BB036000, oSLogObject2, OS_LOG_TYPE_DEFAULT, "%{public}@Fetching AIDA account from store account", &buf, 0xCu);
          if (v45)
          {

            v28 = v24;
          }
        }

        v30 = [objc_alloc(MEMORY[0x1E698C268]) initWithAccountStore:accountStore];
        v31 = getAIDAServiceTypeStore_0();
        v32 = [v30 altDSIDForAccount:v21 service:v31];

        v33 = [accountStore aida_accountForAltDSID:v32];
        v34 = *p_grandSlamAccount;
        *p_grandSlamAccount = v33;
      }
    }

    if (*p_grandSlamAccount)
    {
      ams_sharedAccountStore = [MEMORY[0x1E6959A48] ams_sharedAccountStore];
      oSLogObject3 = [ams_sharedAccountStore ams_iTunesAccountForAccount:*p_grandSlamAccount];
      v37 = oSLogObject3;
      if (!oSLogObject3)
      {
        v37 = *p_grandSlamAccount;
      }

      objc_storeStrong(p_grandSlamAccount, v37);
    }

    else
    {
      ams_sharedAccountStore = [MEMORY[0x1E698C968] sharedConfig];
      if (!ams_sharedAccountStore)
      {
        ams_sharedAccountStore = [MEMORY[0x1E698C968] sharedConfig];
      }

      oSLogObject3 = [ams_sharedAccountStore OSLogObject];
      if (os_log_type_enabled(oSLogObject3, OS_LOG_TYPE_ERROR))
      {
        v38 = AMSLogKey();
        v39 = MEMORY[0x1E696AEC0];
        v40 = objc_opt_class();
        v41 = v40;
        if (v38)
        {
          selfCopy = AMSLogKey();
          [v39 stringWithFormat:@"%@: [%@] ", v41, selfCopy];
        }

        else
        {
          [v39 stringWithFormat:@"%@: ", v40];
        }
        v42 = ;
        LODWORD(buf) = 138543362;
        *(&buf + 4) = v42;
        _os_log_impl(&dword_1BB036000, oSLogObject3, OS_LOG_TYPE_ERROR, "%{public}@Could not fetch AIDA Account, we’re destined for failure!", &buf, 0xCu);
        if (v38)
        {

          v42 = selfCopy;
        }
      }
    }

    grandSlamAccount = *p_grandSlamAccount;
  }

  v43 = *MEMORY[0x1E69E9840];

  return grandSlamAccount;
}

- (void)_loadControllerForSpecifier:(id)specifier
{
  v29 = *MEMORY[0x1E69E9840];
  specifierCopy = specifier;
  v6 = AMSSetLogKeyIfNeeded();
  mEMORY[0x1E698C968] = [MEMORY[0x1E698C968] sharedConfig];
  if (!mEMORY[0x1E698C968])
  {
    mEMORY[0x1E698C968] = [MEMORY[0x1E698C968] sharedConfig];
  }

  oSLogObject = [mEMORY[0x1E698C968] OSLogObject];
  if (os_log_type_enabled(oSLogObject, OS_LOG_TYPE_DEFAULT))
  {
    v9 = AMSLogKey();
    v10 = MEMORY[0x1E696AEC0];
    v11 = objc_opt_class();
    v12 = v11;
    if (v9)
    {
      v3 = AMSLogKey();
      [v10 stringWithFormat:@"%@: [%@] ", v12, v3];
    }

    else
    {
      [v10 stringWithFormat:@"%@: ", v11];
    }
    v13 = ;
    v14 = AMSHashIfNeeded();
    delegate = [(AMSUIPaymentSpecifierProvider *)self delegate];
    v16 = AMSHashIfNeeded();
    *buf = 138543874;
    *&buf[4] = v13;
    *&buf[12] = 2114;
    *&buf[14] = v14;
    *&buf[22] = 2114;
    v26 = v16;
    _os_log_impl(&dword_1BB036000, oSLogObject, OS_LOG_TYPE_DEFAULT, "%{public}@specifier: %{public}@ | delegate: %{public}@", buf, 0x20u);

    if (v9)
    {

      v13 = v3;
    }
  }

  delegate2 = [(AMSUIPaymentSpecifierProvider *)self delegate];
  [delegate2 specifierProvider:self willBeginLoadingSpecifier:specifierCopy];

  v23[0] = MEMORY[0x1E69E9820];
  v23[1] = 3221225472;
  v23[2] = __61__AMSUIPaymentSpecifierProvider__loadControllerForSpecifier___block_invoke;
  v23[3] = &unk_1E7F243C0;
  v23[4] = self;
  v24 = specifierCopy;
  v18 = v23;
  v19 = specifierCopy;
  v20 = AMSLogKey();
  *buf = MEMORY[0x1E69E9820];
  *&buf[8] = 3221225472;
  *&buf[16] = __AMSDispatchAsync_block_invoke_4;
  v26 = &unk_1E7F245E0;
  v27 = v20;
  v28 = v18;
  v21 = v20;
  dispatch_async(MEMORY[0x1E69E96A0], buf);

  v22 = *MEMORY[0x1E69E9840];
}

void __61__AMSUIPaymentSpecifierProvider__loadControllerForSpecifier___block_invoke(uint64_t a1)
{
  v26 = *MEMORY[0x1E69E9840];
  v3 = +[AMSUIWebViewController createBagForSubProfile];
  v4 = [v3 URLForKey:@"paymentsAndShippingUrl"];
  v5 = [v4 valuePromise];

  v21[0] = MEMORY[0x1E69E9820];
  v21[1] = 3221225472;
  v21[2] = __61__AMSUIPaymentSpecifierProvider__loadControllerForSpecifier___block_invoke_2;
  v21[3] = &unk_1E7F24348;
  v6 = v3;
  v7 = *(a1 + 32);
  v22 = v6;
  v23 = v7;
  v8 = [v5 thenWithBlock:v21];
  v9 = [MEMORY[0x1E698C968] sharedConfig];
  if (!v9)
  {
    v9 = [MEMORY[0x1E698C968] sharedConfig];
  }

  v10 = [v9 OSLogObject];
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
  {
    v11 = AMSLogKey();
    v12 = MEMORY[0x1E696AEC0];
    v13 = *(a1 + 32);
    v14 = objc_opt_class();
    v15 = v14;
    if (v11)
    {
      v1 = AMSLogKey();
      [v12 stringWithFormat:@"%@: [%@] ", v15, v1];
    }

    else
    {
      [v12 stringWithFormat:@"%@: ", v14];
    }
    v16 = ;
    *buf = 138543362;
    v25 = v16;
    _os_log_impl(&dword_1BB036000, v10, OS_LOG_TYPE_DEFAULT, "%{public}@Loading payment & shipping", buf, 0xCu);
    if (v11)
    {

      v16 = v1;
    }
  }

  v19[0] = MEMORY[0x1E69E9820];
  v19[1] = 3221225472;
  v19[2] = __61__AMSUIPaymentSpecifierProvider__loadControllerForSpecifier___block_invoke_78;
  v19[3] = &unk_1E7F24AB0;
  v17 = *(a1 + 40);
  v19[4] = *(a1 + 32);
  v20 = v17;
  [v8 addFinishBlock:v19];

  v18 = *MEMORY[0x1E69E9840];
}

id __61__AMSUIPaymentSpecifierProvider__loadControllerForSpecifier___block_invoke_2(int8x16_t *a1, void *a2)
{
  v3 = a2;
  v4 = [objc_alloc(MEMORY[0x1E698CB70]) initWithBag:a1[2].i64[0]];
  v5 = [v4 typeForURL:v3];
  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 3221225472;
  v11[2] = __61__AMSUIPaymentSpecifierProvider__loadControllerForSpecifier___block_invoke_3;
  v11[3] = &unk_1E7F25660;
  v10 = a1[2];
  v6 = v10.i64[0];
  v12 = vextq_s8(v10, v10, 8uLL);
  v13 = v3;
  v7 = v3;
  v8 = [v5 thenWithBlock:v11];

  return v8;
}

id __61__AMSUIPaymentSpecifierProvider__loadControllerForSpecifier___block_invoke_3(id *a1, void *a2)
{
  v3 = a2;
  v4 = [a1[4] _grandSlamAccount];
  v5 = objc_alloc_init(MEMORY[0x1E698CAD0]);
  v6 = [v3 integerValue];
  if (v6)
  {
    if (v6 == 2)
    {
      v7 = [[AMSUIDynamicViewController alloc] initWithBag:a1[5] URL:a1[6]];
      [(AMSUIDynamicViewController *)v7 setAccount:v4];
      [v5 finishWithResult:v7];
    }

    else
    {
      v24 = 0;
      v25 = &v24;
      v26 = 0x2050000000;
      v10 = getSKAccountPageViewControllerClass_softClass;
      v27 = getSKAccountPageViewControllerClass_softClass;
      if (!getSKAccountPageViewControllerClass_softClass)
      {
        v23[0] = MEMORY[0x1E69E9820];
        v23[1] = 3221225472;
        v23[2] = __getSKAccountPageViewControllerClass_block_invoke;
        v23[3] = &unk_1E7F241B0;
        v23[4] = &v24;
        __getSKAccountPageViewControllerClass_block_invoke(v23);
        v10 = v25[3];
      }

      v11 = v10;
      _Block_object_dispose(&v24, 8);
      v12 = [[v10 alloc] initWithAccountURL:a1[6]];
      [v12 setAccount:v4];
      v14[0] = MEMORY[0x1E69E9820];
      v14[1] = 3221225472;
      v14[2] = __61__AMSUIPaymentSpecifierProvider__loadControllerForSpecifier___block_invoke_6;
      v14[3] = &unk_1E7F243C0;
      v15 = v5;
      v16 = v12;
      v7 = v12;
      [(AMSUIDynamicViewController *)v7 loadWithCompletionBlock:v14];
    }
  }

  else
  {
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __61__AMSUIPaymentSpecifierProvider__loadControllerForSpecifier___block_invoke_4;
    block[3] = &unk_1E7F25638;
    v18 = a1[5];
    v8 = v4;
    v9 = a1[4];
    v19 = v8;
    v20 = v9;
    v21 = a1[6];
    v22 = v5;
    dispatch_async(MEMORY[0x1E69E96A0], block);
  }

  return v5;
}

void __61__AMSUIPaymentSpecifierProvider__loadControllerForSpecifier___block_invoke_4(uint64_t a1)
{
  v2 = [[AMSUIWebViewController alloc] initWithBag:*(a1 + 32) account:*(a1 + 40) clientInfo:0];
  v3 = +[AMSUIWebAppearance tableViewAppearance];
  [(AMSUIWebViewController *)v2 setAppearance:v3];

  [(AMSUIWebViewController *)v2 setDelegate:*(a1 + 48)];
  v4 = [(AMSUIWebViewController *)v2 loadURL:*(a1 + 56)];
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __61__AMSUIPaymentSpecifierProvider__loadControllerForSpecifier___block_invoke_5;
  v6[3] = &unk_1E7F24B50;
  v7 = *(a1 + 64);
  v8 = v2;
  v5 = v2;
  [v4 addFinishBlock:v6];
}

uint64_t __61__AMSUIPaymentSpecifierProvider__loadControllerForSpecifier___block_invoke_5(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = *(a1 + 32);
  if (a3)
  {
    return [v4 finishWithError:?];
  }

  else
  {
    return [v4 finishWithResult:*(a1 + 40)];
  }
}

void __61__AMSUIPaymentSpecifierProvider__loadControllerForSpecifier___block_invoke_78(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v13[0] = MEMORY[0x1E69E9820];
  v13[1] = 3221225472;
  v13[2] = __61__AMSUIPaymentSpecifierProvider__loadControllerForSpecifier___block_invoke_2_79;
  v13[3] = &unk_1E7F24A88;
  v7 = *(a1 + 40);
  v13[4] = *(a1 + 32);
  v14 = v7;
  v15 = v6;
  v16 = v5;
  v8 = v13;
  v9 = v5;
  v10 = v6;
  v11 = AMSLogKey();
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __AMSDispatchAsync_block_invoke_4;
  block[3] = &unk_1E7F245E0;
  v18 = v11;
  v19 = v8;
  v12 = v11;
  dispatch_async(MEMORY[0x1E69E96A0], block);
}

void __61__AMSUIPaymentSpecifierProvider__loadControllerForSpecifier___block_invoke_2_79(uint64_t a1)
{
  v2 = a1;
  v34 = *MEMORY[0x1E69E9840];
  v3 = [*(a1 + 32) delegate];
  [v3 specifierProvider:*(v2 + 32) didFinishLoadingSpecifier:*(v2 + 40)];

  if (*(v2 + 48))
  {
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
      v8 = *(v2 + 32);
      v9 = objc_opt_class();
      v10 = v9;
      if (v6)
      {
        v1 = AMSLogKey();
        [v7 stringWithFormat:@"%@: [%@] ", v10, v1];
      }

      else
      {
        [v7 stringWithFormat:@"%@: ", v9];
      }
      v11 = ;
      v27 = *(v2 + 48);
      v28 = AMSLogableError();
      *buf = 138543618;
      v31 = v11;
      v32 = 2114;
      v33 = v28;
      _os_log_impl(&dword_1BB036000, v5, OS_LOG_TYPE_ERROR, "%{public}@Failed to load payment & shipping. error: %{public}@", buf, 0x16u);
      if (v6)
      {

        v11 = v1;
      }
    }

LABEL_22:

    goto LABEL_28;
  }

  v12 = *(v2 + 56);
  v13 = [MEMORY[0x1E698C968] sharedConfig];
  v4 = v13;
  if (!v12)
  {
    if (!v13)
    {
      v4 = [MEMORY[0x1E698C968] sharedConfig];
    }

    v5 = [v4 OSLogObject];
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      v21 = AMSLogKey();
      v22 = MEMORY[0x1E696AEC0];
      v23 = *(v2 + 32);
      v24 = objc_opt_class();
      v25 = v24;
      if (v21)
      {
        v2 = AMSLogKey();
        [v22 stringWithFormat:@"%@: [%@] ", v25, v2];
      }

      else
      {
        [v22 stringWithFormat:@"%@: ", v24];
      }
      v26 = ;
      *buf = 138543362;
      v31 = v26;
      _os_log_impl(&dword_1BB036000, v5, OS_LOG_TYPE_ERROR, "%{public}@Failed to load payment & shipping, but did not receive an error.", buf, 0xCu);
      if (v21)
      {

        v26 = v2;
      }
    }

    goto LABEL_22;
  }

  if (!v13)
  {
    v4 = [MEMORY[0x1E698C968] sharedConfig];
  }

  v14 = [v4 OSLogObject];
  if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
  {
    v15 = AMSLogKey();
    v16 = MEMORY[0x1E696AEC0];
    v17 = *(v2 + 32);
    v18 = objc_opt_class();
    v19 = v18;
    if (v15)
    {
      v1 = AMSLogKey();
      [v16 stringWithFormat:@"%@: [%@] ", v19, v1];
    }

    else
    {
      [v16 stringWithFormat:@"%@: ", v18];
    }
    v20 = ;
    *buf = 138543362;
    v31 = v20;
    _os_log_impl(&dword_1BB036000, v14, OS_LOG_TYPE_DEFAULT, "%{public}@Presenting payment & shipping", buf, 0xCu);
    if (v15)
    {

      v20 = v1;
    }
  }

  v4 = [*(v2 + 32) delegate];
  [v4 specifierProvider:*(v2 + 32) showViewController:*(v2 + 56)];
LABEL_28:

  v29 = *MEMORY[0x1E69E9840];
}

- (AAUISpecifierProviderDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end