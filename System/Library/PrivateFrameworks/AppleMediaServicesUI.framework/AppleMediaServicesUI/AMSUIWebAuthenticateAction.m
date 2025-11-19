@interface AMSUIWebAuthenticateAction
- (AMSUIWebAuthenticateAction)initWithJSObject:(id)a3 context:(id)a4;
- (id)_responseForAccount:(id)a3;
- (id)runAction;
- (void)_updateContextWithAccountIfNeeded:(id)a3;
@end

@implementation AMSUIWebAuthenticateAction

- (AMSUIWebAuthenticateAction)initWithJSObject:(id)a3 context:(id)a4
{
  v6 = a3;
  v63.receiver = self;
  v63.super_class = AMSUIWebAuthenticateAction;
  v7 = [(AMSUIWebAction *)&v63 initWithJSObject:v6 context:a4];
  if (v7)
  {
    v8 = [v6 objectForKeyedSubscript:@"pauseTimeouts"];
    if (objc_opt_respondsToSelector())
    {
      v9 = [v6 objectForKeyedSubscript:@"pauseTimeouts"];
      v7->_pauseTimeouts = [v9 BOOLValue];
    }

    else
    {
      v7->_pauseTimeouts = 1;
    }

    v10 = [v6 objectForKeyedSubscript:@"makeCurrentAccount"];
    if (objc_opt_respondsToSelector())
    {
      v11 = [v6 objectForKeyedSubscript:@"makeCurrentAccount"];
      v7->_makeCurrentAccount = [v11 BOOLValue];
    }

    else
    {
      v7->_makeCurrentAccount = 0;
    }

    v12 = [v6 objectForKeyedSubscript:@"defaultButtonText"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v13 = v12;
    }

    else
    {
      v13 = 0;
    }

    v14 = [v6 objectForKeyedSubscript:@"headers"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v62 = v14;
    }

    else
    {
      v62 = 0;
    }

    v15 = [v6 objectForKeyedSubscript:@"promptTitle"];
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

    v16 = [(AMSUIWebAction *)v7 context];
    v17 = [v6 objectForKeyedSubscript:@"account"];
    v18 = [v16 iTunesAccountFromJSAccount:v17];

    if (!v18 || [v18 ams_isLocalAccount])
    {
      v19 = [v6 objectForKeyedSubscript:@"account"];
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
        v25 = [v24 longLongValue];
      }

      else
      {
        v25 = 0;
      }

      if ([v22 isEqualToString:@"local"] && v25 == -1)
      {
        v26 = 0;
      }

      else
      {
        v27 = MEMORY[0x1E6959A48];
        v28 = [(AMSUIWebAction *)v7 context];
        v29 = [v28 clientInfo];
        v30 = [v29 accountMediaType];
        v31 = [v27 ams_sharedAccountStoreForMediaType:v30];

        v59 = v31;
        v32 = [v31 accountTypeWithAccountTypeIdentifier:*MEMORY[0x1E6959930]];
        v26 = [objc_alloc(MEMORY[0x1E6959A28]) initWithAccountType:v32];

        [v26 setUsername:v22];
        if (v25)
        {
          v33 = [MEMORY[0x1E696AD98] numberWithLongLong:v25];
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

    v36 = [v18 ams_DSID];

    if (!v36)
    {
      v37 = [v6 objectForKeyedSubscript:@"dsid"];
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

    v39 = [v18 ams_altDSID];

    if (!v39)
    {
      v40 = [v6 objectForKeyedSubscript:@"altDSID"];
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

    v42 = [v18 username];

    if (!v42)
    {
      v43 = [v6 objectForKeyedSubscript:@"username"];
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

    v45 = [v6 objectForKeyedSubscript:@"serviceType"];
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

    v47 = [v6 objectForKeyedSubscript:@"type"];
    if (objc_opt_respondsToSelector())
    {
      v48 = [v47 unsignedIntegerValue];
    }

    else
    {
      v48 = 1;
    }

    v49 = objc_alloc_init(MEMORY[0x1E698C7B0]);
    v50 = [(AMSUIWebAction *)v7 context];
    v51 = [v50 clientInfo];
    [v49 setClientInfo:v51];

    [v49 setAuthenticationType:v48];
    [v49 setPromptTitle:v61];
    v52 = [v6 objectForKeyedSubscript:@"canMakeAccountActive"];
    if (objc_opt_respondsToSelector())
    {
      v53 = [v6 objectForKeyedSubscript:@"canMakeAccountActive"];
      [v49 setCanMakeAccountActive:{objc_msgSend(v53, "BOOLValue")}];
    }

    else
    {
      [v49 setCanMakeAccountActive:0];
    }

    [v49 setHTTPHeaders:v62];
    [v49 setDefaultButtonString:v60];
    v54 = [v6 objectForKeyedSubscript:@"ignoreAccountConversion"];
    if (objc_opt_respondsToSelector())
    {
      v55 = [v6 objectForKeyedSubscript:@"ignoreAccountConversion"];
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
  v3 = [(AMSUIWebAction *)&v42 runAction];
  v4 = [(AMSUIWebAuthenticateAction *)self isAuthenticatingCloud];
  v5 = [MEMORY[0x1E698C968] sharedWebUIConfig];
  v6 = v5;
  if (v4)
  {
    if (!v5)
    {
      v6 = [MEMORY[0x1E698C968] sharedConfig];
    }

    v7 = [v6 OSLogObject];
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      v8 = objc_opt_class();
      v9 = AMSLogKey();
      v10 = [(AMSUIWebAuthenticateAction *)self request];
      v11 = [v10 account];
      v12 = AMSHashIfNeeded();
      *buf = 138543874;
      v44 = v8;
      v45 = 2114;
      v46 = v9;
      v47 = 2114;
      v48 = v12;
      _os_log_impl(&dword_1BB036000, v7, OS_LOG_TYPE_DEFAULT, "%{public}@: [%{public}@] Running cloud authenticate action for account: %{public}@", buf, 0x20u);
    }

    v13 = [(AMSUIWebAction *)self context];
    v14 = [v13 actionDelegate];
    v15 = [(AMSUIWebAuthenticateAction *)self pauseTimeouts];
    v16 = [(AMSUIWebAuthenticateAction *)self request];
    v17 = [v14 action:self pauseTimeouts:v15 handleAuthenticateCloudRequest:v16];

    v37 = MEMORY[0x1E69E9820];
    v38 = 3221225472;
    v39 = __39__AMSUIWebAuthenticateAction_runAction__block_invoke;
    v40 = &unk_1E7F25AB0;
    v41 = self;
    v18 = &v37;
  }

  else
  {
    if (!v5)
    {
      v6 = [MEMORY[0x1E698C968] sharedConfig];
    }

    v19 = [v6 OSLogObject];
    if (os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
    {
      v20 = objc_opt_class();
      v21 = AMSLogKey();
      v22 = [(AMSUIWebAuthenticateAction *)self request];
      v23 = [v22 account];
      v24 = AMSHashIfNeeded();
      *buf = 138543874;
      v44 = v20;
      v45 = 2114;
      v46 = v21;
      v47 = 2114;
      v48 = v24;
      _os_log_impl(&dword_1BB036000, v19, OS_LOG_TYPE_DEFAULT, "%{public}@: [%{public}@] Running authenticate action for account: %{public}@", buf, 0x20u);
    }

    v25 = [(AMSUIWebAction *)self context];
    v26 = [v25 actionDelegate];
    v27 = [(AMSUIWebAuthenticateAction *)self pauseTimeouts];
    v28 = [(AMSUIWebAuthenticateAction *)self request];
    v17 = [v26 action:self pauseTimeouts:v27 handleAuthenticateRequest:v28];

    v32 = MEMORY[0x1E69E9820];
    v33 = 3221225472;
    v34 = __39__AMSUIWebAuthenticateAction_runAction__block_invoke_60;
    v35 = &unk_1E7F25AD8;
    v36 = self;
    v18 = &v32;
  }

  v29 = [v17 thenWithBlock:{v18, v32, v33, v34, v35, v36, v37, v38, v39, v40, v41}];

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

- (void)_updateContextWithAccountIfNeeded:(id)a3
{
  v10 = a3;
  if (-[AMSUIWebAuthenticateAction makeCurrentAccount](self, "makeCurrentAccount") || (-[AMSUIWebAction context](self, "context"), v4 = objc_claimAutoreleasedReturnValue(), [v4 account], v5 = objc_claimAutoreleasedReturnValue(), v6 = objc_msgSend(v10, "web_matchAccount:", v5), v5, v4, v6))
  {
    v7 = [(AMSUIWebAction *)self context];
    v8 = [(AMSUIWebAction *)self context];
    v9 = [v8 clientInfo];
    [v7 replaceCurrentAccount:v10 clientInfo:v9];
  }
}

- (id)_responseForAccount:(id)a3
{
  v16[2] = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = [v4 ams_DSID];
  v6 = v5;
  v7 = &unk_1F394A660;
  if (v5)
  {
    v7 = v5;
  }

  v8 = v7;

  v15[0] = @"dsid";
  v9 = [v8 stringValue];

  v15[1] = @"account";
  v16[0] = v9;
  v10 = [(AMSUIWebAction *)self context];
  v11 = [v10 JSAccountFromAccount:v4 store:0];

  v16[1] = v11;
  v12 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v16 forKeys:v15 count:2];

  v13 = *MEMORY[0x1E69E9840];

  return v12;
}

@end