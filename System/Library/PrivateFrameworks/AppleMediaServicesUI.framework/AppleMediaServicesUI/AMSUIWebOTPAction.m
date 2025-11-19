@interface AMSUIWebOTPAction
- (AMSUIWebOTPAction)initWithJSObject:(id)a3 context:(id)a4;
- (id)runAction;
@end

@implementation AMSUIWebOTPAction

- (AMSUIWebOTPAction)initWithJSObject:(id)a3 context:(id)a4
{
  v6 = a3;
  v11.receiver = self;
  v11.super_class = AMSUIWebOTPAction;
  v7 = [(AMSUIWebAction *)&v11 initWithJSObject:v6 context:a4];
  if (v7)
  {
    v8 = [v6 objectForKeyedSubscript:@"enabled"];
    if (objc_opt_respondsToSelector())
    {
      v9 = [v6 objectForKeyedSubscript:@"enabled"];
      v7->_enabled = [v9 BOOLValue];
    }

    else
    {
      v7->_enabled = 0;
    }
  }

  return v7;
}

- (id)runAction
{
  v27 = *MEMORY[0x1E69E9840];
  v20.receiver = self;
  v20.super_class = AMSUIWebOTPAction;
  v3 = [(AMSUIWebAction *)&v20 runAction];
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
    v8 = [(AMSUIWebOTPAction *)self enabled];
    *buf = 138543874;
    v22 = v6;
    v23 = 2114;
    v24 = v7;
    v25 = 1024;
    v26 = v8;
    _os_log_impl(&dword_1BB036000, v5, OS_LOG_TYPE_DEFAULT, "%{public}@: [%{public}@] Running action. (enabled: %d)", buf, 0x1Cu);
  }

  v9 = [(AMSUIWebOTPAction *)self enabled];
  v10 = [(AMSUIWebAction *)self context];
  v11 = [v10 dataProvider];
  v12 = v11;
  if (v9)
  {
    v13 = [v11 startOTPListener];
  }

  else
  {
    v13 = [v11 stopOTPListener];
  }

  v14 = v13;

  if (v14)
  {
    v15 = [MEMORY[0x1E698CAD0] promiseWithResult:MEMORY[0x1E695E118]];
  }

  else
  {
    v16 = MEMORY[0x1E698CAD0];
    v17 = AMSError();
    v15 = [v16 promiseWithError:v17];
  }

  v18 = *MEMORY[0x1E69E9840];

  return v15;
}

@end