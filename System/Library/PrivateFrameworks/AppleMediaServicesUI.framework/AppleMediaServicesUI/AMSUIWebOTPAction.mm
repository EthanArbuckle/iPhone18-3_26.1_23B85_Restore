@interface AMSUIWebOTPAction
- (AMSUIWebOTPAction)initWithJSObject:(id)object context:(id)context;
- (id)runAction;
@end

@implementation AMSUIWebOTPAction

- (AMSUIWebOTPAction)initWithJSObject:(id)object context:(id)context
{
  objectCopy = object;
  v11.receiver = self;
  v11.super_class = AMSUIWebOTPAction;
  v7 = [(AMSUIWebAction *)&v11 initWithJSObject:objectCopy context:context];
  if (v7)
  {
    v8 = [objectCopy objectForKeyedSubscript:@"enabled"];
    if (objc_opt_respondsToSelector())
    {
      v9 = [objectCopy objectForKeyedSubscript:@"enabled"];
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
  runAction = [(AMSUIWebAction *)&v20 runAction];
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
    enabled = [(AMSUIWebOTPAction *)self enabled];
    *buf = 138543874;
    v22 = v6;
    v23 = 2114;
    v24 = v7;
    v25 = 1024;
    v26 = enabled;
    _os_log_impl(&dword_1BB036000, oSLogObject, OS_LOG_TYPE_DEFAULT, "%{public}@: [%{public}@] Running action. (enabled: %d)", buf, 0x1Cu);
  }

  enabled2 = [(AMSUIWebOTPAction *)self enabled];
  context = [(AMSUIWebAction *)self context];
  dataProvider = [context dataProvider];
  v12 = dataProvider;
  if (enabled2)
  {
    startOTPListener = [dataProvider startOTPListener];
  }

  else
  {
    startOTPListener = [dataProvider stopOTPListener];
  }

  v14 = startOTPListener;

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