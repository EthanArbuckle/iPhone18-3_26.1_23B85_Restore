@interface AMSUIWebActionRunnerAction
- (AMSUIWebActionRunnerAction)initWithJSObject:(id)object context:(id)context;
- (id)runAction;
@end

@implementation AMSUIWebActionRunnerAction

- (AMSUIWebActionRunnerAction)initWithJSObject:(id)object context:(id)context
{
  objectCopy = object;
  v11.receiver = self;
  v11.super_class = AMSUIWebActionRunnerAction;
  v8 = [(AMSUIWebAction *)&v11 initWithJSObject:objectCopy context:context];
  v9 = v8;
  if (v8)
  {
    objc_storeStrong(&v8->_actionPayload, object);
  }

  return v9;
}

- (id)runAction
{
  v28 = *MEMORY[0x1E69E9840];
  v23.receiver = self;
  v23.super_class = AMSUIWebActionRunnerAction;
  runAction = [(AMSUIWebAction *)&v23 runAction];
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
    *buf = 138543618;
    v25 = v6;
    v26 = 2114;
    v27 = v7;
    _os_log_impl(&dword_1BB036000, oSLogObject, OS_LOG_TYPE_DEFAULT, "%{public}@: [%{public}@] Deferring action to UIActionRunner", buf, 0x16u);
  }

  context = [(AMSUIWebAction *)self context];
  flowController = [context flowController];
  currentContainer = [flowController currentContainer];

  v11 = [AMSUIActionContext alloc];
  context2 = [(AMSUIWebAction *)self context];
  account = [context2 account];
  context3 = [(AMSUIWebAction *)self context];
  v15 = [context3 bag];
  context4 = [(AMSUIWebAction *)self context];
  clientInfo = [context4 clientInfo];
  v18 = [(AMSUIActionContext *)v11 initWithAccount:account bag:v15 presentingViewController:currentContainer processInfo:clientInfo];

  actionPayload = [(AMSUIWebActionRunnerAction *)self actionPayload];
  v20 = [AMSUIActionRunner handle:actionPayload context:v18];

  v21 = *MEMORY[0x1E69E9840];

  return v20;
}

@end