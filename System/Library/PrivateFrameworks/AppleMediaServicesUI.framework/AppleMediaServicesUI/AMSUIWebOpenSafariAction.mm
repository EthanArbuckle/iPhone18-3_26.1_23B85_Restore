@interface AMSUIWebOpenSafariAction
+ (id)resultFromURL:(id)a3 error:(id)a4;
- (AMSUIWebOpenSafariAction)initWithJSObject:(id)a3 context:(id)a4;
- (AMSUIWebSafariViewController)safariViewController;
- (BOOL)_presentViewContoller:(id)a3;
- (UIViewController)presentedViewController;
- (id)runAction;
- (void)_safariDataUpdate:(id)a3;
@end

@implementation AMSUIWebOpenSafariAction

- (AMSUIWebOpenSafariAction)initWithJSObject:(id)a3 context:(id)a4
{
  v6 = a3;
  v18.receiver = self;
  v18.super_class = AMSUIWebOpenSafariAction;
  v7 = [(AMSUIWebAction *)&v18 initWithJSObject:v6 context:a4];
  if (v7)
  {
    v8 = [v6 objectForKeyedSubscript:@"callbackScheme"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v9 = v8;
    }

    else
    {
      v9 = 0;
    }

    if (v9)
    {
      v10 = v9;
    }

    else
    {
      v10 = @"amscallback";
    }

    objc_storeStrong(&v7->_callbackScheme, v10);

    v11 = [v6 objectForKeyedSubscript:@"data"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v12 = v11;
    }

    else
    {
      v12 = 0;
    }

    data = v7->_data;
    v7->_data = v12;

    v14 = [v6 objectForKeyedSubscript:@"url"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v15 = v14;
    }

    else
    {
      v15 = 0;
    }

    if (v15)
    {
      v16 = [MEMORY[0x1E695DFF8] URLWithString:v15];
    }

    else
    {
      v16 = 0;
    }

    objc_storeStrong(&v7->_URL, v16);
    if (v15)
    {
    }
  }

  return v7;
}

+ (id)resultFromURL:(id)a3 error:(id)a4
{
  v18[3] = *MEMORY[0x1E69E9840];
  v5 = a4;
  v6 = a3;
  v7 = [v6 ams_parameters];
  v17[0] = @"callbackURL";
  v8 = [v6 absoluteString];
  v9 = v8;
  v10 = &stru_1F3921360;
  if (v8)
  {
    v10 = v8;
  }

  v11 = MEMORY[0x1E695E0F8];
  if (v7)
  {
    v11 = v7;
  }

  if (v5)
  {
    v12 = 1;
  }

  else
  {
    v12 = v6 == 0;
  }

  v18[0] = v10;
  v18[1] = v11;
  v17[1] = @"query";
  v17[2] = @"success";
  v13 = @"false";
  if (!v12)
  {
    v13 = @"true";
  }

  v18[2] = v13;
  v14 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v18 forKeys:v17 count:3];

  v15 = *MEMORY[0x1E69E9840];

  return v14;
}

- (id)runAction
{
  v43 = *MEMORY[0x1E69E9840];
  v38.receiver = self;
  v38.super_class = AMSUIWebOpenSafariAction;
  v3 = [(AMSUIWebAction *)&v38 runAction];
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
    v8 = [(AMSUIWebOpenSafariAction *)self URL];
    v9 = AMSLogableURL();
    *buf = 138543874;
    *&buf[4] = v6;
    *&buf[12] = 2114;
    *&buf[14] = v7;
    *&buf[22] = 2114;
    v40 = v9;
    _os_log_impl(&dword_1BB036000, v5, OS_LOG_TYPE_DEFAULT, "%{public}@: [%{public}@] Running safari action with URL: %{public}@", buf, 0x20u);
  }

  v10 = [(AMSUIWebOpenSafariAction *)self URL];
  v11 = v10 == 0;

  if (v11)
  {
    v27 = MEMORY[0x1E698CAD0];
    v22 = AMSError();
    v26 = [v27 promiseWithError:v22];
  }

  else
  {
    v12 = [MEMORY[0x1E696AD88] defaultCenter];
    [v12 addObserver:self selector:sel__safariDataUpdate_ name:@"SSScriptSafariViewControllerDataUpdateNotification" object:0];

    v13 = objc_alloc_init(MEMORY[0x1E698CAD0]);
    v14 = AMSLogKey();
    v15 = [AMSUIWebSafariViewController alloc];
    v16 = [(AMSUIWebAction *)self context];
    v17 = [(AMSUIWebSafariViewController *)v15 initWithContext:v16];

    [(AMSUIWebSafariViewController *)v17 setShouldDismissOnCallback:1];
    *buf = 0;
    *&buf[8] = buf;
    *&buf[16] = 0x3032000000;
    v40 = __Block_byref_object_copy__9;
    v41 = __Block_byref_object_dispose__9;
    v18 = self;
    v42 = v18;
    v19 = [(AMSUIWebOpenSafariAction *)v18 URL];
    v20 = [(AMSUIWebOpenSafariAction *)v18 data];
    v21 = [(AMSUIWebOpenSafariAction *)v18 callbackScheme];
    v30 = MEMORY[0x1E69E9820];
    v31 = 3221225472;
    v32 = __37__AMSUIWebOpenSafariAction_runAction__block_invoke;
    v33 = &unk_1E7F269A8;
    v22 = v14;
    v34 = v22;
    v35 = v18;
    v23 = v13;
    v36 = v23;
    v37 = buf;
    [(AMSUIWebSafariViewController *)v17 loadActionURL:v19 data:v20 callbackScheme:v21 actionHandler:&v30];

    if (![(AMSUIWebOpenSafariAction *)v18 _presentViewContoller:v17, v30, v31, v32, v33])
    {
      v24 = AMSError();
      [v23 finishWithError:v24];
    }

    v25 = v36;
    v26 = v23;

    _Block_object_dispose(buf, 8);
  }

  v28 = *MEMORY[0x1E69E9840];

  return v26;
}

void __37__AMSUIWebOpenSafariAction_runAction__block_invoke(uint64_t a1, void *a2, void *a3)
{
  v28 = *MEMORY[0x1E69E9840];
  v5 = a3;
  v6 = *(a1 + 32);
  v7 = a2;
  v8 = AMSSetLogKey();
  v9 = [MEMORY[0x1E698C968] sharedWebUIConfig];
  if (!v9)
  {
    v9 = [MEMORY[0x1E698C968] sharedConfig];
  }

  v10 = [v9 OSLogObject];
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
  {
    v11 = *(a1 + 40);
    v12 = objc_opt_class();
    v13 = AMSLogKey();
    v14 = v13;
    v15 = &stru_1F3921360;
    *v25 = 138543874;
    *&v25[4] = v12;
    if (v5)
    {
      v15 = v5;
    }

    *&v25[12] = 2114;
    *&v25[14] = v13;
    v26 = 2114;
    v27 = v15;
    _os_log_impl(&dword_1BB036000, v10, OS_LOG_TYPE_DEFAULT, "%{public}@: [%{public}@] Received safari callback. %{public}@", v25, 0x20u);
  }

  v16 = *(a1 + 40);
  v17 = [objc_opt_class() resultFromURL:v7 error:v5];

  v18 = [*(a1 + 40) context];
  v19 = [v18 dataProvider];
  v20 = [v19 postEvent:@"SafariDataUpdate" options:v17];

  v21 = *(a1 + 48);
  if (v5)
  {
    [v21 finishWithError:v5];
  }

  else
  {
    [v21 finishWithResult:v17];
  }

  [*(a1 + 40) setSafariViewController:{0, *v25}];
  v22 = *(*(a1 + 56) + 8);
  v23 = *(v22 + 40);
  *(v22 + 40) = 0;

  v24 = *MEMORY[0x1E69E9840];
}

- (BOOL)_presentViewContoller:(id)a3
{
  v4 = a3;
  v5 = [(AMSUIWebAction *)self context];
  v6 = [v5 flowController];
  v7 = [v6 currentContainer];

  if (v7)
  {
    [v4 setShouldSetPresentationDelegate:1];
    v8 = [objc_alloc(MEMORY[0x1E69DCCD8]) initWithRootViewController:v4];
    [(AMSUIWebOpenSafariAction *)self setSafariViewController:v4];
    [(AMSUIWebOpenSafariAction *)self setPresentedViewController:v8];
    v9 = objc_alloc_init(MEMORY[0x1E69DCCC8]);
    [v9 configureWithDefaultBackground];
    v10 = [v4 navigationItem];
    [v10 setStandardAppearance:v9];

    v11 = [v4 navigationItem];
    [v11 setCompactAppearance:v9];

    v12 = [v4 navigationItem];
    [v12 setScrollEdgeAppearance:v9];

    [v7 presentViewController:v8 animated:1 completion:0];
  }

  return v7 != 0;
}

- (void)_safariDataUpdate:(id)a3
{
  v32 = *MEMORY[0x1E69E9840];
  v4 = [a3 object];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (!v5)
  {
    v12 = [MEMORY[0x1E698C968] sharedConfig];
    if (!v12)
    {
      v12 = [MEMORY[0x1E698C968] sharedConfig];
    }

    v16 = [v12 OSLogObject];
    if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
    {
      v17 = objc_opt_class();
      v18 = AMSLogKey();
      v24 = 138543618;
      v25 = v17;
      v26 = 2114;
      v27 = v18;
      _os_log_impl(&dword_1BB036000, v16, OS_LOG_TYPE_ERROR, "%{public}@: [%{public}@] Safari data update called without a URL", &v24, 0x16u);
    }

    goto LABEL_22;
  }

  v6 = [v5 scheme];
  v7 = [(AMSUIWebOpenSafariAction *)self callbackScheme];
  v8 = v7;
  if (v7)
  {
    v9 = v7;
  }

  else
  {
    v9 = &stru_1F3921360;
  }

  v10 = [v6 isEqualToString:v9];

  v11 = [MEMORY[0x1E698C968] sharedConfig];
  v12 = v11;
  if ((v10 & 1) == 0)
  {
    if (!v11)
    {
      v12 = [MEMORY[0x1E698C968] sharedConfig];
    }

    v16 = [v12 OSLogObject];
    if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
    {
      v19 = objc_opt_class();
      v20 = AMSLogKey();
      v21 = [(AMSUIWebOpenSafariAction *)self callbackScheme];
      v22 = AMSLogableURL();
      v24 = 138544130;
      v25 = v19;
      v26 = 2114;
      v27 = v20;
      v28 = 2114;
      v29 = v21;
      v30 = 2114;
      v31 = v22;
      _os_log_impl(&dword_1BB036000, v16, OS_LOG_TYPE_DEFAULT, "%{public}@: [%{public}@] ScriptDataUpdate scheme does not match callbackScheme (%{public}@): %{public}@", &v24, 0x2Au);
    }

LABEL_22:

    goto LABEL_23;
  }

  if (!v11)
  {
    v12 = [MEMORY[0x1E698C968] sharedConfig];
  }

  v13 = [v12 OSLogObject];
  if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
  {
    v14 = objc_opt_class();
    v15 = AMSLogKey();
    v24 = 138543618;
    v25 = v14;
    v26 = 2114;
    v27 = v15;
    _os_log_impl(&dword_1BB036000, v13, OS_LOG_TYPE_DEFAULT, "%{public}@: [%{public}@] Received ScriptDataUpdate notification", &v24, 0x16u);
  }

  v12 = [(AMSUIWebOpenSafariAction *)self safariViewController];
  [v12 receiveCallbackURL:v5];
LABEL_23:

  v23 = *MEMORY[0x1E69E9840];
}

- (UIViewController)presentedViewController
{
  WeakRetained = objc_loadWeakRetained(&self->_presentedViewController);

  return WeakRetained;
}

- (AMSUIWebSafariViewController)safariViewController
{
  WeakRetained = objc_loadWeakRetained(&self->_safariViewController);

  return WeakRetained;
}

@end