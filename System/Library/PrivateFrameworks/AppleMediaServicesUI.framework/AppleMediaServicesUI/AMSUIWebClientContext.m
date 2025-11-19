@interface AMSUIWebClientContext
+ (BOOL)_BOOLForKey:(id)a3 defaultValue:(BOOL)a4 domain:(__CFString *)a5;
+ (id)_createClientInfoFromAccount:(id)a3 clientInfo:(id)a4;
+ (id)_sharedSnapshotCache;
- (AMSSnapshotBag)bag;
- (AMSUIWebActionRunnerDelegate)actionDelegate;
- (AMSUIWebClientContext)initWithAccount:(id)a3 clientInfo:(id)a4 backingBag:(id)a5;
- (AMSUIWebPageViewController)webPage;
- (BOOL)disableTrustedDomains;
- (NSString)URL;
- (id)JSAccountFromAccount:(id)a3 store:(id)a4;
- (id)iTunesAccountFromJSAccount:(id)a3;
- (id)iTunesAccountFromJSDSID:(id)a3;
- (id)loadSnapshot;
- (void)replaceCurrentAccount:(id)a3 clientInfo:(id)a4;
@end

@implementation AMSUIWebClientContext

- (AMSUIWebClientContext)initWithAccount:(id)a3 clientInfo:(id)a4 backingBag:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v16.receiver = self;
  v16.super_class = AMSUIWebClientContext;
  v11 = [(AMSUIWebClientContext *)&v16 init];
  v12 = v11;
  if (v11)
  {
    objc_storeStrong(&v11->_backingBag, a5);
    objc_storeStrong(&v12->_clientInfo, a4);
    v13 = +[AMSUIWebClientContext _sharedSnapshotCache];
    snapshotCache = v12->_snapshotCache;
    v12->_snapshotCache = v13;

    [(AMSUIWebClientContext *)v12 replaceCurrentAccount:v8 clientInfo:v9];
  }

  return v12;
}

- (AMSSnapshotBag)bag
{
  v15 = *MEMORY[0x1E69E9840];
  bag = self->_bag;
  if (!bag)
  {
    v4 = [MEMORY[0x1E698C968] sharedWebUIConfig];
    if (!v4)
    {
      v4 = [MEMORY[0x1E698C968] sharedConfig];
    }

    v5 = [v4 OSLogObject];
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      v6 = objc_opt_class();
      v7 = AMSLogKey();
      v11 = 138543618;
      v12 = v6;
      v13 = 2114;
      v14 = v7;
      _os_log_impl(&dword_1BB036000, v5, OS_LOG_TYPE_ERROR, "%{public}@: [%{public}@] INVALID: Use of bag before bootstrap.", &v11, 0x16u);
    }

    bag = self->_backingBag;
  }

  v8 = bag;
  v9 = *MEMORY[0x1E69E9840];

  return v8;
}

- (BOOL)disableTrustedDomains
{
  has_internal_content = os_variant_has_internal_content();
  if (has_internal_content)
  {
    v3 = objc_opt_class();

    LOBYTE(has_internal_content) = [v3 _BOOLForKey:@"AMSUIWebDisableTrustedDomains" defaultValue:0 domain:@"com.apple.AppleMediaServices"];
  }

  return has_internal_content;
}

- (id)iTunesAccountFromJSAccount:(id)a3
{
  v6 = a3;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v7 = v6;
  }

  else
  {
    v7 = 0;
  }

  if (!v7)
  {
    v9 = 0;
    goto LABEL_38;
  }

  v30 = [v7 objectForKeyedSubscript:@"DSID"];
  if (objc_opt_respondsToSelector())
  {
    v8 = [MEMORY[0x1E696AD98] numberWithLongLong:{objc_msgSend(v30, "longLongValue")}];
  }

  else
  {
    v8 = 0;
  }

  v10 = [v7 objectForKeyedSubscript:@"altDSID"];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v11 = v10;
  }

  else
  {
    v11 = 0;
  }

  v12 = [v7 objectForKeyedSubscript:@"username"];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v13 = v12;
  }

  else
  {
    v13 = 0;
  }

  if (!v8)
  {
    if (v11)
    {
      goto LABEL_18;
    }

LABEL_22:
    v27 = v4;
    v28 = v3;
    v15 = v13;
    if (!v13)
    {
      v16 = 0;
      v29 = self;
      if (v8)
      {
        goto LABEL_29;
      }

      goto LABEL_33;
    }

    goto LABEL_27;
  }

  v3 = [(AMSUIWebClientContext *)self account];
  v4 = [v3 ams_DSID];
  if ([v4 isEqualToNumber:v8])
  {
LABEL_20:

    goto LABEL_30;
  }

  if (!v11)
  {
    goto LABEL_22;
  }

LABEL_18:
  v14 = [(AMSUIWebClientContext *)self account];
  v12 = [v14 ams_altDSID];
  if (![v12 isEqualToString:v11])
  {
    v26 = v14;
    v27 = v4;
    v28 = v3;
    v16 = v13;
    if (!v13)
    {
      v29 = self;
      LODWORD(v15) = 0;
      goto LABEL_32;
    }

    v15 = v13;
LABEL_27:
    v29 = self;
    v17 = [(AMSUIWebClientContext *)self account];
    v18 = [v17 username];
    v16 = v15;
    LODWORD(v15) = [v18 isEqualToString:v15];

    if (!v11)
    {
      if (v8)
      {
        goto LABEL_29;
      }

      goto LABEL_33;
    }

LABEL_32:

    if (v8)
    {
LABEL_29:

      self = v29;
      v13 = v16;
      if (v15)
      {
        goto LABEL_30;
      }

LABEL_34:
      v20 = MEMORY[0x1E6959A48];
      [(AMSUIWebClientContext *)self clientInfo];
      v22 = v21 = v13;
      v23 = [v22 accountMediaType];
      v24 = [v20 ams_sharedAccountStoreForMediaType:v23];

      v13 = v21;
      v9 = [v24 ams_iTunesAccountWithAltDSID:v11 DSID:v8 username:v21];
      if (!v9)
      {
        v9 = [v24 ams_localiTunesAccount];
      }

      goto LABEL_37;
    }

LABEL_33:
    self = v29;
    v13 = v16;
    if (v15)
    {
      goto LABEL_30;
    }

    goto LABEL_34;
  }

  if (v8)
  {
    goto LABEL_20;
  }

LABEL_30:
  v19 = [(AMSUIWebClientContext *)self account];
  [v19 reload];

  v9 = [(AMSUIWebClientContext *)self account];
LABEL_37:

LABEL_38:

  return v9;
}

- (id)iTunesAccountFromJSDSID:(id)a3
{
  v11[1] = *MEMORY[0x1E69E9840];
  v4 = a3;
  if (objc_opt_respondsToSelector())
  {
    v10 = @"DSID";
    v5 = [MEMORY[0x1E696AD98] numberWithLongLong:{objc_msgSend(v4, "longLongValue")}];
    v11[0] = v5;
    v6 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v11 forKeys:&v10 count:1];
  }

  else
  {
    v6 = 0;
  }

  v7 = [(AMSUIWebClientContext *)self iTunesAccountFromJSAccount:v6];

  v8 = *MEMORY[0x1E69E9840];

  return v7;
}

- (id)JSAccountFromAccount:(id)a3 store:(id)a4
{
  v54[11] = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = a4;
  v8 = MEMORY[0x1E695E0F8];
  if (!v6)
  {
    goto LABEL_37;
  }

  if ([v6 ams_isiTunesAccount])
  {
    v9 = [v6 ams_isSandboxAccount];
    v10 = @"iTunes";
    v11 = @"iTunes.sandbox";
    goto LABEL_4;
  }

  if ([v6 ams_isLocalAccount])
  {
    v10 = @"local";
  }

  else
  {
    if (([v6 ams_isiCloudAccount] & 1) == 0)
    {
      v9 = [v6 ams_isIDMSAccount];
      v10 = @"unknown";
      v11 = @"IDMS";
LABEL_4:
      if (v9)
      {
        v10 = v11;
      }

      goto LABEL_11;
    }

    v10 = @"iCloud";
  }

LABEL_11:
  v49 = v10;
  v12 = v8;
  v13 = [v6 ams_DSID];
  v14 = v13;
  v15 = &unk_1F394A678;
  if (v13)
  {
    v15 = v13;
  }

  v48 = v15;

  v16 = [v6 ams_altDSID];
  v17 = v16;
  v18 = &stru_1F3921360;
  if (v16)
  {
    v18 = v16;
  }

  v52 = v18;

  if (!v7)
  {
    v19 = MEMORY[0x1E6959A48];
    v20 = [(AMSUIWebClientContext *)self clientInfo];
    v21 = [v20 accountMediaType];
    v7 = [v19 ams_sharedAccountStoreForMediaType:v21];
  }

  v50 = v7;
  v22 = [v7 ams_iTunesAccountForAccount:v6];
  v23 = v22;
  if (v22)
  {
    v24 = v22;
  }

  else
  {
    v24 = v6;
  }

  v25 = v24;

  v26 = [v25 ams_creditsString];
  v27 = [v25 ams_firstName];
  v51 = [v25 ams_lastName];
  v28 = [v25 ams_storefront];
  v29 = [v25 username];
  v53[0] = @"accountFlags";
  v30 = [v6 ams_accountFlags];
  v31 = v30;
  if (v30)
  {
    v32 = v30;
  }

  else
  {
    v32 = v12;
  }

  v54[0] = v32;
  v53[1] = @"active";
  v33 = [MEMORY[0x1E696AD98] numberWithBool:{objc_msgSend(v6, "isActive")}];
  v54[1] = v33;
  v54[2] = v52;
  v53[2] = @"altDSID";
  v53[3] = @"credits";
  v34 = v26;
  if (!v26)
  {
    v34 = &stru_1F3921360;
  }

  v54[3] = v34;
  v53[4] = @"DSID";
  v35 = [v48 stringValue];

  v47 = v27;
  if (v27)
  {
    v36 = v27;
  }

  else
  {
    v36 = &stru_1F3921360;
  }

  v54[4] = v35;
  v54[5] = v36;
  v53[5] = @"firstName";
  v53[6] = @"lastName";
  v37 = v51;
  if (!v51)
  {
    v37 = &stru_1F3921360;
  }

  v54[6] = v37;
  v53[7] = @"isManagedAppleID";
  v38 = MEMORY[0x1E696AD98];
  v39 = [v6 ams_isManagedAppleID];

  v40 = v38;
  v7 = v50;
  v41 = [v40 numberWithBool:v39];
  v42 = v41;
  if (v28)
  {
    v43 = v28;
  }

  else
  {
    v43 = &stru_1F3921360;
  }

  v54[7] = v41;
  v54[8] = v43;
  v53[8] = @"storefront";
  v53[9] = @"type";
  v53[10] = @"username";
  if (v29)
  {
    v44 = v29;
  }

  else
  {
    v44 = &stru_1F3921360;
  }

  v54[9] = v49;
  v54[10] = v44;
  v8 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v54 forKeys:v53 count:11];

LABEL_37:
  v45 = *MEMORY[0x1E69E9840];

  return v8;
}

- (id)loadSnapshot
{
  v18 = *MEMORY[0x1E69E9840];
  v3 = objc_alloc_init(MEMORY[0x1E698C7F0]);
  if (self->_bag)
  {
    v4 = [MEMORY[0x1E698C968] sharedWebUIConfig];
    if (!v4)
    {
      v4 = [MEMORY[0x1E698C968] sharedConfig];
    }

    v5 = [v4 OSLogObject];
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      v6 = objc_opt_class();
      v7 = AMSLogKey();
      *buf = 138543618;
      v15 = v6;
      v16 = 2114;
      v17 = v7;
      _os_log_impl(&dword_1BB036000, v5, OS_LOG_TYPE_DEFAULT, "%{public}@: [%{public}@] Snapshot already loaded.", buf, 0x16u);
    }

    [v3 finishWithSuccess];
  }

  else
  {
    objc_initWeak(buf, self);
    v8 = [(AMSUIWebClientContext *)self backingBag];
    v11[0] = MEMORY[0x1E69E9820];
    v11[1] = 3221225472;
    v11[2] = __37__AMSUIWebClientContext_loadSnapshot__block_invoke;
    v11[3] = &unk_1E7F25E80;
    objc_copyWeak(&v13, buf);
    v12 = v3;
    [v8 createSnapshotWithCompletion:v11];

    objc_destroyWeak(&v13);
    objc_destroyWeak(buf);
  }

  v9 = *MEMORY[0x1E69E9840];

  return v3;
}

void __37__AMSUIWebClientContext_loadSnapshot__block_invoke(uint64_t a1, void *a2, void *a3)
{
  v22 = *MEMORY[0x1E69E9840];
  v6 = a2;
  v7 = a3;
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v9 = WeakRetained;
  if (WeakRetained)
  {
    objc_storeStrong(WeakRetained + 2, a2);
    v10 = [v6 BOOLForKey:@"disableSettingsNavigationProxy"];
    v11 = [v10 valueWithError:0];
    if (objc_opt_respondsToSelector())
    {
      v12 = [v6 BOOLForKey:@"disableSettingsNavigationProxy"];
      v13 = [v12 valueWithError:0];
      v9[9] = [v13 BOOLValue];
    }

    else
    {
      v9[9] = 0;
    }

    if ([v9 disableSettingsNavigationProxy])
    {
      v16 = [MEMORY[0x1E698C968] sharedWebUIConfig];
      if (!v16)
      {
        v16 = [MEMORY[0x1E698C968] sharedConfig];
      }

      v17 = [v16 OSLogObject];
      if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
      {
        v18 = AMSLogKey();
        v20 = 138543362;
        v21 = v18;
        _os_log_impl(&dword_1BB036000, v17, OS_LOG_TYPE_DEFAULT, "[%{public}@] DisableSettingsNavigationProxy present, Settings nav proxy will be disabled.", &v20, 0xCu);
      }
    }

    [*(a1 + 32) finishWithSuccess:v7 == 0 error:v7];
  }

  else
  {
    v14 = *(a1 + 32);
    v15 = AMSError();
    [v14 finishWithError:v15];
  }

  v19 = *MEMORY[0x1E69E9840];
}

- (void)replaceCurrentAccount:(id)a3 clientInfo:(id)a4
{
  v63 = *MEMORY[0x1E69E9840];
  v7 = a3;
  v8 = a4;
  v9 = [MEMORY[0x1E698C968] sharedWebUIConfig];
  if (!v9)
  {
    v9 = [MEMORY[0x1E698C968] sharedConfig];
  }

  v10 = [v9 OSLogObject];
  v56 = v8;
  if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
  {
    v11 = AMSLogKey();
    v12 = MEMORY[0x1E696AEC0];
    v13 = objc_opt_class();
    v14 = v13;
    if (v11)
    {
      v4 = AMSLogKey();
      [v12 stringWithFormat:@"%@: [%@] ", v14, v4];
    }

    else
    {
      [v12 stringWithFormat:@"%@: ", v13];
    }
    v15 = ;
    v16 = AMSHashIfNeeded();
    v17 = AMSHashIfNeeded();
    *buf = 138543874;
    v58 = v15;
    v59 = 2114;
    v60 = v16;
    v61 = 2114;
    v62 = v17;
    _os_log_impl(&dword_1BB036000, v10, OS_LOG_TYPE_INFO, "%{public}@Replacing current account with account: %{public}@ | clientInfo: %{public}@", buf, 0x20u);
    if (v11)
    {

      v15 = v4;
    }

    v8 = v56;
  }

  v18 = [(AMSUIWebClientContext *)self clientInfo];
  v55 = [objc_opt_class() _createClientInfoFromAccount:v7 clientInfo:v8];
  objc_storeStrong(&self->_clientInfo, v55);
  if (v7)
  {
    v19 = v7;
    account = self->_account;
    self->_account = v19;
  }

  else
  {
    v21 = MEMORY[0x1E6959A48];
    account = [(AMSUIWebClientContext *)self clientInfo];
    v22 = [v21 ams_sharedAccountStoreForClient:account];
    v23 = [v22 ams_localiTunesAccount];
    v24 = self->_account;
    self->_account = v23;
  }

  v25 = [(AMSUIWebClientContext *)self backingBag];
  v26 = objc_opt_respondsToSelector();

  if ((v26 & 1) == 0)
  {
    goto LABEL_17;
  }

  v27 = [(AMSUIWebClientContext *)self backingBag];
  v28 = [v27 processInfo];

  v29 = [v28 accountMediaType];

  if (v29)
  {
    v30 = 0;
    if (!v18)
    {
      goto LABEL_31;
    }
  }

  else
  {
LABEL_17:
    v31 = [MEMORY[0x1E698C968] sharedWebUIConfig];
    if (!v31)
    {
      v31 = [MEMORY[0x1E698C968] sharedConfig];
    }

    v32 = [v31 OSLogObject];
    if (os_log_type_enabled(v32, OS_LOG_TYPE_DEFAULT))
    {
      v33 = objc_opt_class();
      v34 = AMSLogKey();
      *buf = 138543618;
      v58 = v33;
      v59 = 2114;
      v60 = v34;
      _os_log_impl(&dword_1BB036000, v32, OS_LOG_TYPE_DEFAULT, "%{public}@: [%{public}@] Unable to locate bag media type", buf, 0x16u);
    }

    v29 = 0;
    v30 = 1;
    if (!v18)
    {
      goto LABEL_31;
    }
  }

  v35 = [(AMSUIWebClientContext *)self clientInfo];
  v36 = [v35 accountMediaType];
  v37 = v36;
  if (v30)
  {
    v38 = [v18 accountMediaType];
    v39 = [v37 isEqualToString:v38];

    if (v39)
    {
      goto LABEL_31;
    }
  }

  else
  {
    v40 = [v36 isEqualToString:v29];

    if (v40)
    {
      goto LABEL_31;
    }
  }

  v41 = [MEMORY[0x1E698C968] sharedWebUIConfig];
  if (!v41)
  {
    v41 = [MEMORY[0x1E698C968] sharedConfig];
  }

  v42 = [v41 OSLogObject];
  if (os_log_type_enabled(v42, OS_LOG_TYPE_DEFAULT))
  {
    v43 = objc_opt_class();
    v44 = AMSLogKey();
    *buf = 138543618;
    v58 = v43;
    v59 = 2114;
    v60 = v44;
    _os_log_impl(&dword_1BB036000, v42, OS_LOG_TYPE_DEFAULT, "%{public}@: [%{public}@] Updating bag to match new account type", buf, 0x16u);
  }

  v45 = MEMORY[0x1E698C7D8];
  v46 = [(AMSUIWebClientContext *)self backingBag];
  v47 = [v46 profile];
  v48 = [(AMSUIWebClientContext *)self backingBag];
  v49 = [v48 profileVersion];
  v50 = [(AMSUIWebClientContext *)self clientInfo];
  v51 = [v45 bagForProfile:v47 profileVersion:v49 processInfo:v50];
  [(AMSUIWebClientContext *)self updateBackingBag:v51];

LABEL_31:
  v52 = [(AMSUIWebClientContext *)self dataProvider];
  v53 = [v52 syncProperties];

  v54 = *MEMORY[0x1E69E9840];
}

+ (id)_sharedSnapshotCache
{
  if (_sharedSnapshotCache_ams_once_token___COUNTER__ != -1)
  {
    +[AMSUIWebClientContext _sharedSnapshotCache];
  }

  v3 = _sharedSnapshotCache_ams_once_object___COUNTER__;

  return v3;
}

uint64_t __45__AMSUIWebClientContext__sharedSnapshotCache__block_invoke()
{
  _sharedSnapshotCache_ams_once_object___COUNTER__ = [objc_alloc(MEMORY[0x1E698C950]) initWithMaxSize:5];

  return MEMORY[0x1EEE66BB8]();
}

+ (BOOL)_BOOLForKey:(id)a3 defaultValue:(BOOL)a4 domain:(__CFString *)a5
{
  v7 = a3;
  CFPreferencesAppSynchronize(a5);
  keyExistsAndHasValidFormat = 0;
  AppBooleanValue = CFPreferencesGetAppBooleanValue(v7, a5, &keyExistsAndHasValidFormat);

  if (keyExistsAndHasValidFormat)
  {
    return AppBooleanValue != 0;
  }

  else
  {
    return a4;
  }
}

+ (id)_createClientInfoFromAccount:(id)a3 clientInfo:(id)a4
{
  v36 = *MEMORY[0x1E69E9840];
  v5 = a3;
  v6 = a4;
  v7 = [v6 copy];
  v8 = v7;
  if (v7)
  {
    v9 = v7;
  }

  else
  {
    v9 = [MEMORY[0x1E698CAC8] currentProcess];
  }

  v10 = v9;

  if ([v5 ams_isSandboxAccount])
  {
    [v10 setAccountMediaType:*MEMORY[0x1E698C4C8]];
    v11 = [MEMORY[0x1E698C968] sharedWebUIConfig];
    if (!v11)
    {
      v11 = [MEMORY[0x1E698C968] sharedConfig];
    }

    v12 = [v11 OSLogObject];
    if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
    {
      v13 = objc_opt_class();
      v14 = AMSLogKey();
      v30 = 138543618;
      v31 = v13;
      v32 = 2114;
      v33 = v14;
      _os_log_impl(&dword_1BB036000, v12, OS_LOG_TYPE_DEFAULT, "%{public}@: [%{public}@] Switching to sandbox media type", &v30, 0x16u);
    }
  }

  v15 = [v10 accountMediaType];
  if (!v15)
  {
LABEL_14:
    v19 = objc_alloc(MEMORY[0x1E698CAC8]);
    v20 = [v6 bundleIdentifier];
    v16 = [v19 initWithBundleIdentifier:v20];

    v21 = [v16 accountMediaType];
    if (v21)
    {
      [v10 setAccountMediaType:v21];
    }

    else
    {
      v22 = [MEMORY[0x1E698CAC8] defaultMediaTypeForCurrentProcess];
      [v10 setAccountMediaType:v22];
    }

    v23 = [MEMORY[0x1E698C968] sharedWebUIConfig];
    if (!v23)
    {
      v23 = [MEMORY[0x1E698C968] sharedConfig];
    }

    v24 = [v23 OSLogObject];
    if (os_log_type_enabled(v24, OS_LOG_TYPE_DEFAULT))
    {
      v25 = objc_opt_class();
      v26 = AMSLogKey();
      v27 = [v10 accountMediaType];
      v30 = 138543874;
      v31 = v25;
      v32 = 2114;
      v33 = v26;
      v34 = 2114;
      v35 = v27;
      _os_log_impl(&dword_1BB036000, v24, OS_LOG_TYPE_DEFAULT, "%{public}@: [%{public}@] Switching to media type: %{public}@", &v30, 0x20u);
    }

    goto LABEL_22;
  }

  v16 = v15;
  if (v5 && ([v5 ams_isSandboxAccount] & 1) == 0)
  {
    v17 = [v6 accountMediaType];
    v18 = [v17 isEqualToString:*MEMORY[0x1E698C4C8]];

    if (!v18)
    {
      goto LABEL_23;
    }

    goto LABEL_14;
  }

LABEL_22:

LABEL_23:
  v28 = *MEMORY[0x1E69E9840];

  return v10;
}

- (AMSUIWebActionRunnerDelegate)actionDelegate
{
  WeakRetained = objc_loadWeakRetained(&self->_actionDelegate);

  return WeakRetained;
}

- (AMSUIWebPageViewController)webPage
{
  WeakRetained = objc_loadWeakRetained(&self->_webPage);

  return WeakRetained;
}

- (NSString)URL
{
  WeakRetained = objc_loadWeakRetained(&self->_URL);

  return WeakRetained;
}

@end