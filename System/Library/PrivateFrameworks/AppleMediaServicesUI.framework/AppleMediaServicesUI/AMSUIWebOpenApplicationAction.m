@interface AMSUIWebOpenApplicationAction
- (AMSUIWebOpenApplicationAction)initWithJSObject:(id)a3 context:(id)a4;
- (id)runAction;
@end

@implementation AMSUIWebOpenApplicationAction

- (AMSUIWebOpenApplicationAction)initWithJSObject:(id)a3 context:(id)a4
{
  v6 = a3;
  v12.receiver = self;
  v12.super_class = AMSUIWebOpenApplicationAction;
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
  v31 = *MEMORY[0x1E69E9840];
  v24.receiver = self;
  v24.super_class = AMSUIWebOpenApplicationAction;
  v3 = [(AMSUIWebAction *)&v24 runAction];
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
    v8 = [(AMSUIWebOpenApplicationAction *)self bundleIdentifier];
    *buf = 138543874;
    v26 = v6;
    v27 = 2114;
    v28 = v7;
    v29 = 2114;
    v30 = v8;
    _os_log_impl(&dword_1BB036000, v5, OS_LOG_TYPE_DEFAULT, "%{public}@: [%{public}@] Opening application: %{public}@", buf, 0x20u);
  }

  v9 = [(AMSUIWebOpenApplicationAction *)self bundleIdentifier];

  if (v9)
  {
    v10 = objc_alloc_init(MEMORY[0x1E698C7F0]);
    v11 = [MEMORY[0x1E6963608] defaultWorkspace];
    v12 = [(AMSUIWebOpenApplicationAction *)self bundleIdentifier];
    v18 = MEMORY[0x1E69E9820];
    v19 = 3221225472;
    v20 = __42__AMSUIWebOpenApplicationAction_runAction__block_invoke;
    v21 = &unk_1E7F24B50;
    v22 = self;
    v23 = v10;
    v13 = v10;
    [v11 openApplicationWithBundleIdentifier:v12 configuration:0 completionHandler:&v18];

    v14 = [v13 promiseAdapter];
  }

  else
  {
    v15 = MEMORY[0x1E698CAD0];
    v13 = AMSError();
    v14 = [v15 promiseWithError:v13];
  }

  v16 = *MEMORY[0x1E69E9840];

  return v14;
}

void __42__AMSUIWebOpenApplicationAction_runAction__block_invoke(uint64_t a1, uint64_t a2, void *a3)
{
  v28 = *MEMORY[0x1E69E9840];
  v5 = a3;
  v6 = [MEMORY[0x1E698C968] sharedWebUIConfig];
  v7 = v6;
  if (v5)
  {
    if (!v6)
    {
      v7 = [MEMORY[0x1E698C968] sharedConfig];
    }

    v8 = [v7 OSLogObject];
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      v9 = *(a1 + 32);
      v10 = objc_opt_class();
      v11 = AMSLogKey();
      v12 = [*(a1 + 32) bundleIdentifier];
      v13 = AMSLogableError();
      v20 = 138544130;
      v21 = v10;
      v22 = 2114;
      v23 = v11;
      v24 = 2114;
      v25 = v12;
      v26 = 2114;
      v27 = v13;
      _os_log_impl(&dword_1BB036000, v8, OS_LOG_TYPE_ERROR, "%{public}@: [%{public}@] Error opening application with bundle identifier %{public}@ : %{public}@", &v20, 0x2Au);
    }

    [*(a1 + 40) finishWithError:v5];
  }

  else
  {
    if (!v6)
    {
      v7 = [MEMORY[0x1E698C968] sharedConfig];
    }

    v14 = [v7 OSLogObject];
    if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
    {
      v15 = *(a1 + 32);
      v16 = objc_opt_class();
      v17 = AMSLogKey();
      v18 = [*(a1 + 32) bundleIdentifier];
      v20 = 138543874;
      v21 = v16;
      v22 = 2114;
      v23 = v17;
      v24 = 2114;
      v25 = v18;
      _os_log_impl(&dword_1BB036000, v14, OS_LOG_TYPE_DEFAULT, "%{public}@: [%{public}@] Successfully opened application with bundle identifier %{public}@", &v20, 0x20u);
    }

    [*(a1 + 40) finishWithSuccess:a2 error:0];
  }

  v19 = *MEMORY[0x1E69E9840];
}

@end