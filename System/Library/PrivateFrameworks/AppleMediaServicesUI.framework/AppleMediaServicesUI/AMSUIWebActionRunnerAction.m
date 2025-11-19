@interface AMSUIWebActionRunnerAction
- (AMSUIWebActionRunnerAction)initWithJSObject:(id)a3 context:(id)a4;
- (id)runAction;
@end

@implementation AMSUIWebActionRunnerAction

- (AMSUIWebActionRunnerAction)initWithJSObject:(id)a3 context:(id)a4
{
  v7 = a3;
  v11.receiver = self;
  v11.super_class = AMSUIWebActionRunnerAction;
  v8 = [(AMSUIWebAction *)&v11 initWithJSObject:v7 context:a4];
  v9 = v8;
  if (v8)
  {
    objc_storeStrong(&v8->_actionPayload, a3);
  }

  return v9;
}

- (id)runAction
{
  v28 = *MEMORY[0x1E69E9840];
  v23.receiver = self;
  v23.super_class = AMSUIWebActionRunnerAction;
  v3 = [(AMSUIWebAction *)&v23 runAction];
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
    v25 = v6;
    v26 = 2114;
    v27 = v7;
    _os_log_impl(&dword_1BB036000, v5, OS_LOG_TYPE_DEFAULT, "%{public}@: [%{public}@] Deferring action to UIActionRunner", buf, 0x16u);
  }

  v8 = [(AMSUIWebAction *)self context];
  v9 = [v8 flowController];
  v10 = [v9 currentContainer];

  v11 = [AMSUIActionContext alloc];
  v12 = [(AMSUIWebAction *)self context];
  v13 = [v12 account];
  v14 = [(AMSUIWebAction *)self context];
  v15 = [v14 bag];
  v16 = [(AMSUIWebAction *)self context];
  v17 = [v16 clientInfo];
  v18 = [(AMSUIActionContext *)v11 initWithAccount:v13 bag:v15 presentingViewController:v10 processInfo:v17];

  v19 = [(AMSUIWebActionRunnerAction *)self actionPayload];
  v20 = [AMSUIActionRunner handle:v19 context:v18];

  v21 = *MEMORY[0x1E69E9840];

  return v20;
}

@end