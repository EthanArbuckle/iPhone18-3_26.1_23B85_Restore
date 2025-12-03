@interface AMSUIWebAccountAction
- (AMSUIWebAccountAction)initWithJSObject:(id)object context:(id)context;
- (id)runAction;
@end

@implementation AMSUIWebAccountAction

- (AMSUIWebAccountAction)initWithJSObject:(id)object context:(id)context
{
  objectCopy = object;
  contextCopy = context;
  v16.receiver = self;
  v16.super_class = AMSUIWebAccountAction;
  v8 = [(AMSUIWebAction *)&v16 initWithJSObject:objectCopy context:contextCopy];
  if (v8)
  {
    v9 = [objectCopy objectForKeyedSubscript:@"account"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v10 = v9;
    }

    else
    {
      v10 = 0;
    }

    accountObject = v8->_accountObject;
    v8->_accountObject = v10;

    v12 = [contextCopy iTunesAccountFromJSAccount:v8->_accountObject];
    v13 = [v12 copy];
    account = v8->_account;
    v8->_account = v13;
  }

  return v8;
}

- (id)runAction
{
  v36 = *MEMORY[0x1E69E9840];
  v29.receiver = self;
  v29.super_class = AMSUIWebAccountAction;
  runAction = [(AMSUIWebAction *)&v29 runAction];
  account = [(AMSUIWebAccountAction *)self account];
  accountObject = [(AMSUIWebAccountAction *)self accountObject];
  v6 = [accountObject objectForKeyedSubscript:@"accountFlags"];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v7 = v6;
  }

  else
  {
    v7 = 0;
  }

  v27[0] = MEMORY[0x1E69E9820];
  v27[1] = 3221225472;
  v27[2] = __34__AMSUIWebAccountAction_runAction__block_invoke;
  v27[3] = &unk_1E7F25A18;
  v8 = account;
  v28 = v8;
  [v7 enumerateKeysAndObjectsUsingBlock:v27];
  v9 = [accountObject objectForKeyedSubscript:@"active"];
  if (objc_opt_respondsToSelector())
  {
    v10 = [accountObject objectForKeyedSubscript:@"active"];
    [v8 setActive:{objc_msgSend(v10, "BOOLValue")}];
  }

  else
  {
    [v8 setActive:0];
  }

  v11 = [accountObject objectForKeyedSubscript:@"credits"];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v12 = v11;
  }

  else
  {
    v12 = 0;
  }

  [v8 ams_setCreditsString:v12];
  mEMORY[0x1E698C968] = [MEMORY[0x1E698C968] sharedWebUIConfig];
  if (!mEMORY[0x1E698C968])
  {
    mEMORY[0x1E698C968] = [MEMORY[0x1E698C968] sharedConfig];
  }

  oSLogObject = [mEMORY[0x1E698C968] OSLogObject];
  if (os_log_type_enabled(oSLogObject, OS_LOG_TYPE_DEFAULT))
  {
    v15 = objc_opt_class();
    v16 = AMSLogKey();
    dirtyProperties = [v8 dirtyProperties];
    *buf = 138543874;
    v31 = v15;
    v32 = 2114;
    v33 = v16;
    v34 = 2114;
    v35 = dirtyProperties;
    _os_log_impl(&dword_1BB036000, oSLogObject, OS_LOG_TYPE_DEFAULT, "%{public}@: [%{public}@] Updating account keys: %{public}@", buf, 0x20u);
  }

  v18 = MEMORY[0x1E6959A48];
  context = [(AMSUIWebAction *)self context];
  clientInfo = [context clientInfo];
  accountMediaType = [clientInfo accountMediaType];
  v22 = [v18 ams_sharedAccountStoreForMediaType:accountMediaType];

  v23 = [v22 ams_saveAccount:v8 verifyCredentials:0];
  promiseAdapter = [v23 promiseAdapter];

  v25 = *MEMORY[0x1E69E9840];

  return promiseAdapter;
}

@end