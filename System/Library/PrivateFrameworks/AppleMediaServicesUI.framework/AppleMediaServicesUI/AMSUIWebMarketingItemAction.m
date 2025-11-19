@interface AMSUIWebMarketingItemAction
- (AMSUIWebMarketingItemAction)initWithJSObject:(id)a3 context:(id)a4;
- (id)runAction;
@end

@implementation AMSUIWebMarketingItemAction

- (AMSUIWebMarketingItemAction)initWithJSObject:(id)a3 context:(id)a4
{
  v6 = a3;
  v35.receiver = self;
  v35.super_class = AMSUIWebMarketingItemAction;
  v7 = [(AMSUIWebAction *)&v35 initWithJSObject:v6 context:a4];
  if (v7)
  {
    v8 = [v6 objectForKeyedSubscript:@"clientIdentifier"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v9 = v8;
    }

    else
    {
      v9 = 0;
    }

    clientIdentifier = v7->_clientIdentifier;
    v7->_clientIdentifier = v9;

    v11 = [v6 objectForKeyedSubscript:@"clientVersion"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v12 = v11;
    }

    else
    {
      v12 = 0;
    }

    clientVersion = v7->_clientVersion;
    v7->_clientVersion = v12;

    v14 = [v6 objectForKeyedSubscript:@"contextInfo"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v15 = v14;
    }

    else
    {
      v15 = 0;
    }

    contextInfo = v7->_contextInfo;
    v7->_contextInfo = v15;

    v17 = [v6 objectForKeyedSubscript:@"offerHints"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v18 = v17;
    }

    else
    {
      v18 = 0;
    }

    offerHints = v7->_offerHints;
    v7->_offerHints = v18;

    v20 = [v6 objectForKeyedSubscript:@"placement"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v21 = v20;
    }

    else
    {
      v21 = 0;
    }

    placement = v7->_placement;
    v7->_placement = v21;

    v23 = [v6 objectForKeyedSubscript:@"serviceType"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v24 = v23;
    }

    else
    {
      v24 = 0;
    }

    serviceType = v7->_serviceType;
    v7->_serviceType = v24;

    v26 = [(AMSUIWebAction *)v7 context];
    v27 = [v6 objectForKeyedSubscript:@"account"];
    v28 = [v26 iTunesAccountFromJSAccount:v27];
    account = v7->_account;
    v7->_account = v28;

    if (!v7->_account)
    {
      v30 = [(AMSUIWebAction *)v7 context];
      v31 = [v6 objectForKeyedSubscript:@"dsid"];
      v32 = [v30 iTunesAccountFromJSDSID:v31];
      v33 = v7->_account;
      v7->_account = v32;
    }
  }

  return v7;
}

- (id)runAction
{
  v47 = *MEMORY[0x1E69E9840];
  v36.receiver = self;
  v36.super_class = AMSUIWebMarketingItemAction;
  v3 = [(AMSUIWebAction *)&v36 runAction];
  v4 = objc_alloc_init(MEMORY[0x1E698CAD0]);
  v5 = AMSLogKey();
  v6 = [MEMORY[0x1E698C968] sharedWebUIConfig];
  if (!v6)
  {
    v6 = [MEMORY[0x1E698C968] sharedConfig];
  }

  v7 = [v6 OSLogObject];
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    v8 = objc_opt_class();
    v9 = AMSLogKey();
    v10 = [(AMSUIWebMarketingItemAction *)self clientIdentifier];
    v11 = [(AMSUIWebMarketingItemAction *)self clientVersion];
    v12 = [(AMSUIWebMarketingItemAction *)self account];
    *buf = 138544386;
    v38 = v8;
    v39 = 2114;
    v40 = v9;
    v41 = 2114;
    v42 = v10;
    v43 = 2114;
    v44 = v11;
    v45 = 2114;
    v46 = v12;
    _os_log_impl(&dword_1BB036000, v7, OS_LOG_TYPE_DEFAULT, "%{public}@: [%{public}@] Running marketing item action with clientID: %{public}@ clientVersion: %{public}@ account: %{public}@", buf, 0x34u);
  }

  v13 = objc_alloc(MEMORY[0x1E698C9A0]);
  v14 = [(AMSUIWebAction *)self context];
  v15 = [v14 bag];
  v16 = [(AMSUIWebMarketingItemAction *)self clientIdentifier];
  v17 = [(AMSUIWebMarketingItemAction *)self clientVersion];
  v18 = [(AMSUIWebMarketingItemAction *)self placement];
  v19 = [(AMSUIWebMarketingItemAction *)self serviceType];
  v20 = [v13 initWithBag:v15 clientIdentifier:v16 clientVersion:v17 placement:v18 serviceType:v19];

  v21 = [(AMSUIWebAction *)self context];
  v22 = [v21 account];
  [v20 setAccount:v22];

  v23 = [(AMSUIWebMarketingItemAction *)self contextInfo];
  [v20 setContextInfo:v23];

  v24 = [(AMSUIWebMarketingItemAction *)self offerHints];
  [v20 setOfferHints:v24];

  [v20 setLogKey:v5];
  v25 = [v20 perform];
  v32[0] = MEMORY[0x1E69E9820];
  v32[1] = 3221225472;
  v32[2] = __40__AMSUIWebMarketingItemAction_runAction__block_invoke;
  v32[3] = &unk_1E7F26750;
  v33 = v5;
  v34 = self;
  v26 = v4;
  v35 = v26;
  v27 = v5;
  [v25 addFinishBlock:v32];

  v28 = v35;
  v29 = v26;

  v30 = *MEMORY[0x1E69E9840];
  return v26;
}

void __40__AMSUIWebMarketingItemAction_runAction__block_invoke(uint64_t a1, void *a2, void *a3)
{
  v28 = *MEMORY[0x1E69E9840];
  v5 = a2;
  v6 = a3;
  v7 = *(a1 + 32);
  v8 = AMSSetLogKey();
  v9 = [MEMORY[0x1E698C968] sharedWebUIConfig];
  v10 = v9;
  if (v6)
  {
    if (!v9)
    {
      v10 = [MEMORY[0x1E698C968] sharedConfig];
    }

    v11 = [v10 OSLogObject];
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      v12 = *(a1 + 40);
      v13 = objc_opt_class();
      v14 = AMSLogKey();
      v22 = 138543874;
      v23 = v13;
      v24 = 2114;
      v25 = v14;
      v26 = 2114;
      v27 = v6;
      _os_log_impl(&dword_1BB036000, v11, OS_LOG_TYPE_ERROR, "%{public}@: [%{public}@] Marketing item task failed. %{public}@", &v22, 0x20u);
    }

    [*(a1 + 48) finishWithError:v6];
  }

  else
  {
    if (!v9)
    {
      v10 = [MEMORY[0x1E698C968] sharedConfig];
    }

    v15 = [v10 OSLogObject];
    if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
    {
      v16 = *(a1 + 40);
      v17 = objc_opt_class();
      v18 = AMSLogKey();
      v22 = 138543618;
      v23 = v17;
      v24 = 2114;
      v25 = v18;
      _os_log_impl(&dword_1BB036000, v15, OS_LOG_TYPE_DEFAULT, "%{public}@: [%{public}@] Marketing item task completed successfully.", &v22, 0x16u);
    }

    v19 = *(a1 + 48);
    v20 = [v5 rawValues];
    [v19 finishWithResult:v20];
  }

  v21 = *MEMORY[0x1E69E9840];
}

@end