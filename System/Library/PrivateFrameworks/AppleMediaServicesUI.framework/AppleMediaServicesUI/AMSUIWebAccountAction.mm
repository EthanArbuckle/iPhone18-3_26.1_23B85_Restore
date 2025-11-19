@interface AMSUIWebAccountAction
- (AMSUIWebAccountAction)initWithJSObject:(id)a3 context:(id)a4;
- (id)runAction;
@end

@implementation AMSUIWebAccountAction

- (AMSUIWebAccountAction)initWithJSObject:(id)a3 context:(id)a4
{
  v6 = a3;
  v7 = a4;
  v16.receiver = self;
  v16.super_class = AMSUIWebAccountAction;
  v8 = [(AMSUIWebAction *)&v16 initWithJSObject:v6 context:v7];
  if (v8)
  {
    v9 = [v6 objectForKeyedSubscript:@"account"];
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

    v12 = [v7 iTunesAccountFromJSAccount:v8->_accountObject];
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
  v3 = [(AMSUIWebAction *)&v29 runAction];
  v4 = [(AMSUIWebAccountAction *)self account];
  v5 = [(AMSUIWebAccountAction *)self accountObject];
  v6 = [v5 objectForKeyedSubscript:@"accountFlags"];
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
  v8 = v4;
  v28 = v8;
  [v7 enumerateKeysAndObjectsUsingBlock:v27];
  v9 = [v5 objectForKeyedSubscript:@"active"];
  if (objc_opt_respondsToSelector())
  {
    v10 = [v5 objectForKeyedSubscript:@"active"];
    [v8 setActive:{objc_msgSend(v10, "BOOLValue")}];
  }

  else
  {
    [v8 setActive:0];
  }

  v11 = [v5 objectForKeyedSubscript:@"credits"];
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
  v13 = [MEMORY[0x1E698C968] sharedWebUIConfig];
  if (!v13)
  {
    v13 = [MEMORY[0x1E698C968] sharedConfig];
  }

  v14 = [v13 OSLogObject];
  if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
  {
    v15 = objc_opt_class();
    v16 = AMSLogKey();
    v17 = [v8 dirtyProperties];
    *buf = 138543874;
    v31 = v15;
    v32 = 2114;
    v33 = v16;
    v34 = 2114;
    v35 = v17;
    _os_log_impl(&dword_1BB036000, v14, OS_LOG_TYPE_DEFAULT, "%{public}@: [%{public}@] Updating account keys: %{public}@", buf, 0x20u);
  }

  v18 = MEMORY[0x1E6959A48];
  v19 = [(AMSUIWebAction *)self context];
  v20 = [v19 clientInfo];
  v21 = [v20 accountMediaType];
  v22 = [v18 ams_sharedAccountStoreForMediaType:v21];

  v23 = [v22 ams_saveAccount:v8 verifyCredentials:0];
  v24 = [v23 promiseAdapter];

  v25 = *MEMORY[0x1E69E9840];

  return v24;
}

@end