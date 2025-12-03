@interface AMSUIWebOpenApplicationAction
- (AMSUIWebOpenApplicationAction)initWithJSObject:(id)object context:(id)context;
- (id)runAction;
@end

@implementation AMSUIWebOpenApplicationAction

- (AMSUIWebOpenApplicationAction)initWithJSObject:(id)object context:(id)context
{
  objectCopy = object;
  v12.receiver = self;
  v12.super_class = AMSUIWebOpenApplicationAction;
  v7 = [(AMSUIWebAction *)&v12 initWithJSObject:objectCopy context:context];
  if (v7)
  {
    v8 = [objectCopy objectForKeyedSubscript:@"bundleIdentifier"];
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
  runAction = [(AMSUIWebAction *)&v24 runAction];
  mEMORY[0x1E698C968] = [MEMORY[0x1E698C968] sharedWebUIConfig];
  if (!mEMORY[0x1E698C968])
  {
    mEMORY[0x1E698C968] = [MEMORY[0x1E698C968] sharedConfig];
  }

  oSLogObject = [mEMORY[0x1E698C968] OSLogObject];
  if (os_log_type_enabled(oSLogObject, OS_LOG_TYPE_DEFAULT))
  {
    v6 = objc_opt_class();
    v7 = AMSLogKey();
    bundleIdentifier = [(AMSUIWebOpenApplicationAction *)self bundleIdentifier];
    *buf = 138543874;
    v26 = v6;
    v27 = 2114;
    v28 = v7;
    v29 = 2114;
    v30 = bundleIdentifier;
    _os_log_impl(&dword_1BB036000, oSLogObject, OS_LOG_TYPE_DEFAULT, "%{public}@: [%{public}@] Opening application: %{public}@", buf, 0x20u);
  }

  bundleIdentifier2 = [(AMSUIWebOpenApplicationAction *)self bundleIdentifier];

  if (bundleIdentifier2)
  {
    v10 = objc_alloc_init(MEMORY[0x1E698C7F0]);
    defaultWorkspace = [MEMORY[0x1E6963608] defaultWorkspace];
    bundleIdentifier3 = [(AMSUIWebOpenApplicationAction *)self bundleIdentifier];
    v18 = MEMORY[0x1E69E9820];
    v19 = 3221225472;
    v20 = __42__AMSUIWebOpenApplicationAction_runAction__block_invoke;
    v21 = &unk_1E7F24B50;
    selfCopy = self;
    v23 = v10;
    v13 = v10;
    [defaultWorkspace openApplicationWithBundleIdentifier:bundleIdentifier3 configuration:0 completionHandler:&v18];

    promiseAdapter = [v13 promiseAdapter];
  }

  else
  {
    v15 = MEMORY[0x1E698CAD0];
    v13 = AMSError();
    promiseAdapter = [v15 promiseWithError:v13];
  }

  v16 = *MEMORY[0x1E69E9840];

  return promiseAdapter;
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