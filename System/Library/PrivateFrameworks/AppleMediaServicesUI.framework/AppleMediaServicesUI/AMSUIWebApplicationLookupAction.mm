@interface AMSUIWebApplicationLookupAction
- (AMSUIWebApplicationLookupAction)initWithJSObject:(id)a3 context:(id)a4;
- (id)runAction;
@end

@implementation AMSUIWebApplicationLookupAction

- (AMSUIWebApplicationLookupAction)initWithJSObject:(id)a3 context:(id)a4
{
  v6 = a3;
  v12.receiver = self;
  v12.super_class = AMSUIWebApplicationLookupAction;
  v7 = [(AMSUIWebAction *)&v12 initWithJSObject:v6 context:a4];
  if (v7)
  {
    v8 = [v6 objectForKeyedSubscript:@"bundleIdentifier"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v9 = v8;
    }

    else
    {
      v9 = 0;
    }

    bundleIdentifier = v7->_bundleIdentifier;
    v7->_bundleIdentifier = v9;
  }

  return v7;
}

- (id)runAction
{
  v19.receiver = self;
  v19.super_class = AMSUIWebApplicationLookupAction;
  v3 = [(AMSUIWebAction *)&v19 runAction];
  v4 = [(AMSUIWebApplicationLookupAction *)self bundleIdentifier];
  v5 = [v4 length];

  v6 = MEMORY[0x1E698CAD0];
  if (v5)
  {
    v7 = objc_alloc_init(MEMORY[0x1E698CAD0]);
    v8 = dispatch_get_global_queue(-32768, 0);
    v17[0] = MEMORY[0x1E69E9820];
    v17[1] = 3221225472;
    v17[2] = __44__AMSUIWebApplicationLookupAction_runAction__block_invoke;
    v17[3] = &unk_1E7F243C0;
    v17[4] = self;
    v9 = v7;
    v18 = v9;
    v10 = v17;
    v11 = AMSLogKey();
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __AMSDispatchAsync_block_invoke_6;
    block[3] = &unk_1E7F245E0;
    v21 = v11;
    v22 = v10;
    v12 = v11;
    dispatch_async(v8, block);

    v13 = v18;
    v14 = v9;

    v15 = v14;
  }

  else
  {
    v14 = AMSError();
    v15 = [v6 promiseWithError:v14];
  }

  return v15;
}

void __44__AMSUIWebApplicationLookupAction_runAction__block_invoke(uint64_t a1)
{
  v39 = *MEMORY[0x1E69E9840];
  v2 = [MEMORY[0x1E698C968] sharedWebUIConfig];
  if (!v2)
  {
    v2 = [MEMORY[0x1E698C968] sharedConfig];
  }

  v3 = [v2 OSLogObject];
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    v4 = *(a1 + 32);
    v5 = objc_opt_class();
    v6 = AMSLogKey();
    v7 = [*(a1 + 32) bundleIdentifier];
    *buf = 138543874;
    v34 = v5;
    v35 = 2114;
    v36 = v6;
    v37 = 2114;
    v38 = v7;
    _os_log_impl(&dword_1BB036000, v3, OS_LOG_TYPE_DEFAULT, "%{public}@: [%{public}@] Looking up application record: %{public}@", buf, 0x20u);
  }

  v8 = objc_alloc(MEMORY[0x1E69635F8]);
  v9 = [*(a1 + 32) bundleIdentifier];
  v32 = 0;
  v10 = [v8 initWithBundleIdentifier:v9 allowPlaceholder:0 error:&v32];
  v11 = v32;

  if (!v10 || v11)
  {
    if (!v11)
    {
      v11 = AMSError();
    }

    v26 = [MEMORY[0x1E698C968] sharedWebUIConfig];
    if (!v26)
    {
      v26 = [MEMORY[0x1E698C968] sharedConfig];
    }

    v27 = [v26 OSLogObject];
    if (os_log_type_enabled(v27, OS_LOG_TYPE_ERROR))
    {
      v28 = *(a1 + 32);
      v29 = objc_opt_class();
      v30 = AMSLogKey();
      *buf = 138543874;
      v34 = v29;
      v35 = 2114;
      v36 = v30;
      v37 = 2114;
      v38 = v11;
      _os_log_impl(&dword_1BB036000, v27, OS_LOG_TYPE_ERROR, "%{public}@: [%{public}@] Failed to lookup application record. %{public}@", buf, 0x20u);
    }

    [*(a1 + 40) finishWithError:v11];
  }

  else
  {
    v12 = objc_alloc_init(MEMORY[0x1E695DF90]);
    v13 = [v10 bundleIdentifier];
    [v12 setObject:v13 forKeyedSubscript:@"bundleIdentifier"];

    v14 = [v10 bundleVersion];
    [v12 setObject:v14 forKeyedSubscript:@"bundleVersion"];

    v15 = [MEMORY[0x1E696AD98] numberWithBool:{objc_msgSend(v10, "isBeta")}];
    [v12 setObject:v15 forKeyedSubscript:@"beta"];

    v16 = [MEMORY[0x1E696AD98] numberWithBool:{objc_msgSend(v10, "isPlaceholder")}];
    [v12 setObject:v16 forKeyedSubscript:@"placeholder"];

    v17 = [MEMORY[0x1E696AD98] numberWithBool:{objc_msgSend(v10, "isArcadeApp")}];
    [v12 setObject:v17 forKeyedSubscript:@"arcadeApp"];

    v18 = MEMORY[0x1E696AD98];
    v19 = [v10 applicationState];
    v20 = [v18 numberWithBool:{objc_msgSend(v19, "isInstalled")}];
    [v12 setObject:v20 forKeyedSubscript:@"installed"];

    v21 = [MEMORY[0x1E698C968] sharedWebUIConfig];
    if (!v21)
    {
      v21 = [MEMORY[0x1E698C968] sharedConfig];
    }

    v22 = [v21 OSLogObject];
    if (os_log_type_enabled(v22, OS_LOG_TYPE_DEFAULT))
    {
      v23 = *(a1 + 32);
      v24 = objc_opt_class();
      v25 = AMSLogKey();
      *buf = 138543874;
      v34 = v24;
      v35 = 2114;
      v36 = v25;
      v37 = 2114;
      v38 = v10;
      _os_log_impl(&dword_1BB036000, v22, OS_LOG_TYPE_DEFAULT, "%{public}@: [%{public}@] Found application: %{public}@", buf, 0x20u);
    }

    [*(a1 + 40) finishWithResult:v12];
    v11 = 0;
  }

  v31 = *MEMORY[0x1E69E9840];
}

@end