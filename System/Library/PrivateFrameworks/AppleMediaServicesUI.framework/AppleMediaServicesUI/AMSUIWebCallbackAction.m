@interface AMSUIWebCallbackAction
- (AMSUIWebCallbackAction)initWithJSObject:(id)a3 context:(id)a4;
- (id)runAction;
@end

@implementation AMSUIWebCallbackAction

- (AMSUIWebCallbackAction)initWithJSObject:(id)a3 context:(id)a4
{
  v6 = a3;
  v15.receiver = self;
  v15.super_class = AMSUIWebCallbackAction;
  v7 = [(AMSUIWebAction *)&v15 initWithJSObject:v6 context:a4];
  if (v7)
  {
    v8 = [v6 objectForKeyedSubscript:@"service"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v9 = v8;
    }

    else
    {
      v9 = 0;
    }

    service = v7->_service;
    v7->_service = v9;

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
  }

  return v7;
}

- (id)runAction
{
  v36 = *MEMORY[0x1E69E9840];
  v27.receiver = self;
  v27.super_class = AMSUIWebCallbackAction;
  v3 = [(AMSUIWebAction *)&v27 runAction];
  v4 = AMSGenerateLogCorrelationKey();
  v5 = [MEMORY[0x1E698C968] sharedWebUIConfig];
  if (!v5)
  {
    v5 = [MEMORY[0x1E698C968] sharedConfig];
  }

  v6 = [v5 OSLogObject];
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    v7 = objc_opt_class();
    v8 = [(AMSUIWebAction *)self context];
    v9 = [v8 logKey];
    v10 = [(AMSUIWebCallbackAction *)self service];
    *buf = 138544130;
    v29 = v7;
    v30 = 2114;
    v31 = v9;
    v32 = 2114;
    v33 = v10;
    v34 = 2114;
    v35 = v4;
    _os_log_impl(&dword_1BB036000, v6, OS_LOG_TYPE_DEFAULT, "%{public}@: [%{public}@] Calling back to the JS service: %{public}@ key: %{public}@", buf, 0x2Au);
  }

  v11 = [(AMSUIWebAction *)self context];
  v12 = [v11 logKey];
  v13 = AMSUIWebSetSubLogKey(v12, 0);

  v14 = objc_alloc_init(MEMORY[0x1E698CAD0]);
  v15 = [AMSUIWebJSRequest alloc];
  v16 = [(AMSUIWebCallbackAction *)self service];
  v17 = [(AMSUIWebJSRequest *)v15 initWithServiceName:v16 logKey:v13];

  v18 = [(AMSUIWebCallbackAction *)self data];
  [(AMSUIWebJSRequest *)v17 setOptions:v18];

  v19 = [(AMSUIWebAction *)self context];
  v20 = [v19 dataProvider];
  v21 = [v20 runJSRequest:v17];

  v25[0] = MEMORY[0x1E69E9820];
  v25[1] = 3221225472;
  v25[2] = __35__AMSUIWebCallbackAction_runAction__block_invoke;
  v25[3] = &unk_1E7F25DF0;
  v22 = v14;
  v26 = v22;
  [v21 addFinishBlock:v25];

  v23 = *MEMORY[0x1E69E9840];

  return v22;
}

void __35__AMSUIWebCallbackAction_runAction__block_invoke(uint64_t a1, void *a2, uint64_t a3)
{
  v3 = *(a1 + 32);
  if (a3)
  {
    v4 = *(a1 + 32);

    [v4 finishWithError:?];
  }

  else
  {
    v5 = [a2 body];
    v7 = v5;
    if (v5)
    {
      v6 = v5;
    }

    else
    {
      v6 = MEMORY[0x1E695E0F8];
    }

    [v3 finishWithResult:v6];
  }
}

@end