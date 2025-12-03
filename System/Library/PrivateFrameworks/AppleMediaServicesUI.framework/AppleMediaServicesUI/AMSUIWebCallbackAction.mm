@interface AMSUIWebCallbackAction
- (AMSUIWebCallbackAction)initWithJSObject:(id)object context:(id)context;
- (id)runAction;
@end

@implementation AMSUIWebCallbackAction

- (AMSUIWebCallbackAction)initWithJSObject:(id)object context:(id)context
{
  objectCopy = object;
  v15.receiver = self;
  v15.super_class = AMSUIWebCallbackAction;
  v7 = [(AMSUIWebAction *)&v15 initWithJSObject:objectCopy context:context];
  if (v7)
  {
    v8 = [objectCopy objectForKeyedSubscript:@"service"];
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

    v11 = [objectCopy objectForKeyedSubscript:@"data"];
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
  runAction = [(AMSUIWebAction *)&v27 runAction];
  v4 = AMSGenerateLogCorrelationKey();
  mEMORY[0x1E698C968] = [MEMORY[0x1E698C968] sharedWebUIConfig];
  if (!mEMORY[0x1E698C968])
  {
    mEMORY[0x1E698C968] = [MEMORY[0x1E698C968] sharedConfig];
  }

  oSLogObject = [mEMORY[0x1E698C968] OSLogObject];
  if (os_log_type_enabled(oSLogObject, OS_LOG_TYPE_DEFAULT))
  {
    v7 = objc_opt_class();
    context = [(AMSUIWebAction *)self context];
    logKey = [context logKey];
    service = [(AMSUIWebCallbackAction *)self service];
    *buf = 138544130;
    v29 = v7;
    v30 = 2114;
    v31 = logKey;
    v32 = 2114;
    v33 = service;
    v34 = 2114;
    v35 = v4;
    _os_log_impl(&dword_1BB036000, oSLogObject, OS_LOG_TYPE_DEFAULT, "%{public}@: [%{public}@] Calling back to the JS service: %{public}@ key: %{public}@", buf, 0x2Au);
  }

  context2 = [(AMSUIWebAction *)self context];
  logKey2 = [context2 logKey];
  v13 = AMSUIWebSetSubLogKey(logKey2, 0);

  v14 = objc_alloc_init(MEMORY[0x1E698CAD0]);
  v15 = [AMSUIWebJSRequest alloc];
  service2 = [(AMSUIWebCallbackAction *)self service];
  v17 = [(AMSUIWebJSRequest *)v15 initWithServiceName:service2 logKey:v13];

  data = [(AMSUIWebCallbackAction *)self data];
  [(AMSUIWebJSRequest *)v17 setOptions:data];

  context3 = [(AMSUIWebAction *)self context];
  dataProvider = [context3 dataProvider];
  v21 = [dataProvider runJSRequest:v17];

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