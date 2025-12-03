@interface AMSUIWebAuthenticateAction
- (AMSUIWebAuthenticateAction)initWithJSObject:(id)object context:(id)context;
- (id)_responseForAccount:(id)account;
- (id)runAction;
- (void)_updateContextWithAccountIfNeeded:(id)needed;
@end

@implementation AMSUIWebAuthenticateAction

- (AMSUIWebAuthenticateAction)initWithJSObject:(id)object context:(id)context
{
  objectCopy = object;
  v63.receiver = self;
  v63.super_class = AMSUIWebAuthenticateAction;
  v7 = [(AMSUIWebAction *)&v63 initWithJSObject:objectCopy context:context];
  if (v7)
  {
    v8 = [objectCopy objectForKeyedSubscript:@"pauseTimeouts"];
    if (objc_opt_respondsToSelector())
    {
      v9 = [objectCopy objectForKeyedSubscript:@"pauseTimeouts"];
      v7->_pauseTimeouts = [v9 BOOLValue];
    }

    else
    {
      v7->_pauseTimeouts = 1;
    }

    v10 = [objectCopy objectForKeyedSubscript:@"makeCurrentAccount"];
    if (objc_opt_respondsToSelector())
    {
      v11 = [objectCopy objectForKeyedSubscript:@"makeCurrentAccount"];
      v7->_makeCurrentAccount = [v11 BOOLValue];
    }

    else
    {
      v7->_makeCurrentAccount = 0;
    }

    v12 = [objectCopy objectForKeyedSubscript:@"defaultButtonText"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v13 = v12;
    }

    else
    {
      v13 = 0;
    }

    v14 = [objectCopy objectForKeyedSubscript:@"headers"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v62 = v14;
    }

    else
    {
      v62 = 0;
    }

    v15 = [objectCopy objectForKeyedSubscript:@"promptTitle"];
    objc_opt_class();
    v60 = v13;
    if (objc_opt_isKindOfClass())
    {
      v61 = v15;
    }

    else
    {
      v61 = 0;
    }

    context = [(AMSUIWebAction *)v7 context];
    v17 = [objectCopy objectForKeyedSubscript:@"account"];
    v18 = [context iTunesAccountFromJSAccount:v17];

    if (!v18 || [v18 ams_isLocalAccount])
    {
      v19 = [objectCopy objectForKeyedSubscript:@"account"];
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v20 = v19;
      }

      else
      {
        v20 = 0;
      }

      v21 = [v20 objectForKeyedSubscript:@"username"];
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v22 = v21;
      }

      else
      {
        v22 = 0;
      }

      v23 = [v20 objectForKeyedSubscript:@"DSID"];
      if (objc_opt_respondsToSelector())
      {
        v24 = [v20 objectForKeyedSubscript:@"DSID"];
        longLongValue = [v24 longLongValue];
      }

      else
      {
        longLongValue = 0;
      }

      if ([v22 isEqualToString:@"local"] && longLongValue == -1)
      {
        v26 = 0;
      }

      else
      {
        v27 = MEMORY[0x1E6959A48];
        context2 = [(AMSUIWebAction *)v7 context];
        clientInfo = [context2 clientInfo];
        accountMediaType = [clientInfo accountMediaType];
        v31 = [v27 ams_sharedAccountStoreForMediaType:accountMediaType];

        v59 = v31;
        v32 = [v31 accountTypeWithAccountTypeIdentifier:*MEMORY[0x1E6959930]];
        v26 = [objc_alloc(MEMORY[0x1E6959A28]) initWithAccountType:v32];

        [v26 setUsername:v22];
        if (longLongValue)
        {
          v33 = [MEMORY[0x1E696AD98] numberWithLongLong:longLongValue];
          [v26 ams_setDSID:v33];
        }

        else
        {
          [v26 ams_setDSID:0];
        }

        v34 = [v20 objectForKeyedSubscript:@"altDSID"];
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          v35 = v34;
        }

        else
        {
          v35 = 0;
        }

        [v26 ams_setAltDSID:v35];
        v18 = v59;
      }

      v18 = v26;
    }

    ams_DSID = [v18 ams_DSID];

    if (!ams_DSID)
    {
      v37 = [objectCopy objectForKeyedSubscript:@"dsid"];
      if (objc_opt_respondsToSelector())
      {
        v38 = [MEMORY[0x1E696AD98] numberWithLongLong:{objc_msgSend(v37, "longLongValue")}];
        [v18 ams_setDSID:v38];
      }

      else
      {
        [v18 ams_setDSID:0];
      }
    }

    ams_altDSID = [v18 ams_altDSID];

    if (!ams_altDSID)
    {
      v40 = [objectCopy objectForKeyedSubscript:@"altDSID"];
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v41 = v40;
      }

      else
      {
        v41 = 0;
      }

      [v18 ams_setAltDSID:v41];
    }

    username = [v18 username];

    if (!username)
    {
      v43 = [objectCopy objectForKeyedSubscript:@"username"];
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v44 = v43;
      }

      else
      {
        v44 = 0;
      }

      [v18 setUsername:v44];
    }

    v45 = [objectCopy objectForKeyedSubscript:@"serviceType"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v46 = v45;
    }

    else
    {
      v46 = 0;
    }

    if ([v46 isEqualToString:@"cloud"])
    {
      [(AMSUIWebAuthenticateAction *)v7 setIsAuthenticatingCloud:1];
    }

    v47 = [objectCopy objectForKeyedSubscript:@"type"];
    if (objc_opt_respondsToSelector())
    {
      unsignedIntegerValue = [v47 unsignedIntegerValue];
    }

    else
    {
      unsignedIntegerValue = 1;
    }

    v49 = objc_alloc_init(MEMORY[0x1E698C7B0]);
    context3 = [(AMSUIWebAction *)v7 context];
    clientInfo2 = [context3 clientInfo];
    [v49 setClientInfo:clientInfo2];

    [v49 setAuthenticationType:unsignedIntegerValue];
    [v49 setPromptTitle:v61];
    v52 = [objectCopy objectForKeyedSubscript:@"canMakeAccountActive"];
    if (objc_opt_respondsToSelector())
    {
      v53 = [objectCopy objectForKeyedSubscript:@"canMakeAccountActive"];
      [v49 setCanMakeAccountActive:{objc_msgSend(v53, "BOOLValue")}];
    }

    else
    {
      [v49 setCanMakeAccountActive:0];
    }

    [v49 setHTTPHeaders:v62];
    [v49 setDefaultButtonString:v60];
    v54 = [objectCopy objectForKeyedSubscript:@"ignoreAccountConversion"];
    if (objc_opt_respondsToSelector())
    {
      v55 = [objectCopy objectForKeyedSubscript:@"ignoreAccountConversion"];
      [v49 setIgnoreAccountConversion:{objc_msgSend(v55, "BOOLValue")}];
    }

    else
    {
      [v49 setIgnoreAccountConversion:0];
    }

    v56 = [objc_alloc(MEMORY[0x1E698C7B8]) initWithAccount:v18 options:v49];
    request = v7->_request;
    v7->_request = v56;
  }

  return v7;
}

- (id)runAction
{
  v49 = *MEMORY[0x1E69E9840];
  v42.receiver = self;
  v42.super_class = AMSUIWebAuthenticateAction;
  runAction = [(AMSUIWebAction *)&v42 runAction];
  isAuthenticatingCloud = [(AMSUIWebAuthenticateAction *)self isAuthenticatingCloud];
  mEMORY[0x1E698C968] = [MEMORY[0x1E698C968] sharedWebUIConfig];
  mEMORY[0x1E698C968]2 = mEMORY[0x1E698C968];
  if (isAuthenticatingCloud)
  {
    if (!mEMORY[0x1E698C968])
    {
      mEMORY[0x1E698C968]2 = [MEMORY[0x1E698C968] sharedConfig];
    }

    oSLogObject = [mEMORY[0x1E698C968]2 OSLogObject];
    if (os_log_type_enabled(oSLogObject, OS_LOG_TYPE_DEFAULT))
    {
      v8 = objc_opt_class();
      v9 = AMSLogKey();
      request = [(AMSUIWebAuthenticateAction *)self request];
      account = [request account];
      v12 = AMSHashIfNeeded();
      *buf = 138543874;
      v44 = v8;
      v45 = 2114;
      v46 = v9;
      v47 = 2114;
      v48 = v12;
      _os_log_impl(&dword_1BB036000, oSLogObject, OS_LOG_TYPE_DEFAULT, "%{public}@: [%{public}@] Running cloud authenticate action for account: %{public}@", buf, 0x20u);
    }

    context = [(AMSUIWebAction *)self context];
    actionDelegate = [context actionDelegate];
    pauseTimeouts = [(AMSUIWebAuthenticateAction *)self pauseTimeouts];
    request2 = [(AMSUIWebAuthenticateAction *)self request];
    v17 = [actionDelegate action:self pauseTimeouts:pauseTimeouts handleAuthenticateCloudRequest:request2];

    v37 = MEMORY[0x1E69E9820];
    v38 = 3221225472;
    v39 = __39__AMSUIWebAuthenticateAction_runAction__block_invoke;
    v40 = &unk_1E7F25AB0;
    selfCopy = self;
    v18 = &v37;
  }

  else
  {
    if (!mEMORY[0x1E698C968])
    {
      mEMORY[0x1E698C968]2 = [MEMORY[0x1E698C968] sharedConfig];
    }

    oSLogObject2 = [mEMORY[0x1E698C968]2 OSLogObject];
    if (os_log_type_enabled(oSLogObject2, OS_LOG_TYPE_DEFAULT))
    {
      v20 = objc_opt_class();
      v21 = AMSLogKey();
      request3 = [(AMSUIWebAuthenticateAction *)self request];
      account2 = [request3 account];
      v24 = AMSHashIfNeeded();
      *buf = 138543874;
      v44 = v20;
      v45 = 2114;
      v46 = v21;
      v47 = 2114;
      v48 = v24;
      _os_log_impl(&dword_1BB036000, oSLogObject2, OS_LOG_TYPE_DEFAULT, "%{public}@: [%{public}@] Running authenticate action for account: %{public}@", buf, 0x20u);
    }

    context2 = [(AMSUIWebAction *)self context];
    actionDelegate2 = [context2 actionDelegate];
    pauseTimeouts2 = [(AMSUIWebAuthenticateAction *)self pauseTimeouts];
    request4 = [(AMSUIWebAuthenticateAction *)self request];
    v17 = [actionDelegate2 action:self pauseTimeouts:pauseTimeouts2 handleAuthenticateRequest:request4];

    v32 = MEMORY[0x1E69E9820];
    v33 = 3221225472;
    v34 = __39__AMSUIWebAuthenticateAction_runAction__block_invoke_60;
    v35 = &unk_1E7F25AD8;
    selfCopy2 = self;
    v18 = &v32;
  }

  v29 = [v17 thenWithBlock:{v18, v32, v33, v34, v35, selfCopy2, v37, v38, v39, v40, selfCopy}];

  v30 = *MEMORY[0x1E69E9840];

  return v29;
}

id __39__AMSUIWebAuthenticateAction_runAction__block_invoke(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);
  v4 = a2;
  v5 = [v4 account];
  [v3 _updateContextWithAccountIfNeeded:v5];

  v6 = MEMORY[0x1E698CAD0];
  v7 = *(a1 + 32);
  v8 = [v4 account];

  v9 = [v7 _responseForAccount:v8];
  v10 = [v6 promiseWithResult:v9];

  return v10;
}

id __39__AMSUIWebAuthenticateAction_runAction__block_invoke_60(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);
  v4 = a2;
  v5 = [v4 account];
  [v3 _updateContextWithAccountIfNeeded:v5];

  v6 = MEMORY[0x1E698CAD0];
  v7 = *(a1 + 32);
  v8 = [v4 account];

  v9 = [v7 _responseForAccount:v8];
  v10 = [v6 promiseWithResult:v9];

  return v10;
}

- (void)_updateContextWithAccountIfNeeded:(id)needed
{
  neededCopy = needed;
  if (-[AMSUIWebAuthenticateAction makeCurrentAccount](self, "makeCurrentAccount") || (-[AMSUIWebAction context](self, "context"), v4 = objc_claimAutoreleasedReturnValue(), [v4 account], v5 = objc_claimAutoreleasedReturnValue(), v6 = objc_msgSend(neededCopy, "web_matchAccount:", v5), v5, v4, v6))
  {
    context = [(AMSUIWebAction *)self context];
    context2 = [(AMSUIWebAction *)self context];
    clientInfo = [context2 clientInfo];
    [context replaceCurrentAccount:neededCopy clientInfo:clientInfo];
  }
}

- (id)_responseForAccount:(id)account
{
  v16[2] = *MEMORY[0x1E69E9840];
  accountCopy = account;
  ams_DSID = [accountCopy ams_DSID];
  v6 = ams_DSID;
  v7 = &unk_1F394A660;
  if (ams_DSID)
  {
    v7 = ams_DSID;
  }

  v8 = v7;

  v15[0] = @"dsid";
  stringValue = [v8 stringValue];

  v15[1] = @"account";
  v16[0] = stringValue;
  context = [(AMSUIWebAction *)self context];
  v11 = [context JSAccountFromAccount:accountCopy store:0];

  v16[1] = v11;
  v12 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v16 forKeys:v15 count:2];

  v13 = *MEMORY[0x1E69E9840];

  return v12;
}

@end