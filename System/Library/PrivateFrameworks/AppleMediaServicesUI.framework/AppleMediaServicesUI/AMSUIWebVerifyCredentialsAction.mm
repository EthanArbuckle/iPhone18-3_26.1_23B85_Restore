@interface AMSUIWebVerifyCredentialsAction
+ (id)_authenticationTypeFromStringedType:(id)a3;
+ (int64_t)_serviceTypeFromType:(int64_t)a3;
- (AMSUIWebVerifyCredentialsAction)initWithJSObject:(id)a3 context:(id)a4;
- (id)runAction;
@end

@implementation AMSUIWebVerifyCredentialsAction

- (AMSUIWebVerifyCredentialsAction)initWithJSObject:(id)a3 context:(id)a4
{
  v6 = a3;
  v53.receiver = self;
  v53.super_class = AMSUIWebVerifyCredentialsAction;
  v52 = a4;
  v7 = [(AMSUIWebAction *)&v53 initWithJSObject:v6 context:?];
  if (!v7)
  {
    goto LABEL_44;
  }

  v8 = [v6 objectForKeyedSubscript:@"account"];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v9 = v8;
  }

  else
  {
    v9 = 0;
  }

  v10 = [v52 iTunesAccountFromJSAccount:v9];
  account = v7->_account;
  v7->_account = v10;

  v12 = v7->_account;
  if (!v12 || [(ACAccount *)v12 ams_isLocalAccount])
  {
    v13 = MEMORY[0x1E6959A48];
    v14 = [(AMSUIWebAction *)v7 context];
    v15 = [v14 clientInfo];
    v16 = [v15 accountMediaType];
    v17 = [v13 ams_sharedAccountStoreForMediaType:v16];

    v18 = [v17 accountTypeWithAccountTypeIdentifier:*MEMORY[0x1E6959930]];
    v19 = [objc_alloc(MEMORY[0x1E6959A28]) initWithAccountType:v18];
    v20 = v7->_account;
    v7->_account = v19;

    v21 = [v9 objectForKeyedSubscript:@"username"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v22 = v21;
    }

    else
    {
      v22 = 0;
    }

    [(ACAccount *)v7->_account setUsername:v22];
    v23 = [v9 objectForKeyedSubscript:@"DSID"];
    if (objc_opt_respondsToSelector())
    {
      v24 = v9;
      v25 = [v9 objectForKeyedSubscript:@"DSID"];
      v26 = [v25 longLongValue];

      if (v26)
      {
        v27 = [MEMORY[0x1E696AD98] numberWithLongLong:v26];
        [(ACAccount *)v7->_account ams_setDSID:v27];

LABEL_15:
        v9 = v24;
        v28 = [v24 objectForKeyedSubscript:@"altDSID"];
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          v29 = v28;
        }

        else
        {
          v29 = 0;
        }

        [(ACAccount *)v7->_account ams_setAltDSID:v29];
        goto LABEL_19;
      }
    }

    else
    {
      v24 = v9;
    }

    [(ACAccount *)v7->_account ams_setDSID:0];
    goto LABEL_15;
  }

LABEL_19:
  v30 = [v6 objectForKeyedSubscript:@"authenticationType"];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v31 = v30;
  }

  else
  {
    v31 = 0;
  }

  authenticationType = v7->_authenticationType;
  v7->_authenticationType = v31;

  v33 = [v6 objectForKeyedSubscript:@"buttonText"];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v34 = v33;
  }

  else
  {
    v34 = 0;
  }

  buttonText = v7->_buttonText;
  v7->_buttonText = v34;

  v36 = [v6 objectForKeyedSubscript:@"ephemeral"];
  if (objc_opt_respondsToSelector())
  {
    v37 = [v6 objectForKeyedSubscript:@"ephemeral"];
    v7->_ephemeral = [v37 BOOLValue];
  }

  else
  {
    v7->_ephemeral = 0;
  }

  v38 = [v6 objectForKeyedSubscript:@"serviceIdentifier"];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v39 = v38;
  }

  else
  {
    v39 = 0;
  }

  serviceIdentifier = v7->_serviceIdentifier;
  v7->_serviceIdentifier = v39;

  v41 = [v6 objectForKeyedSubscript:@"serviceType"];
  if (objc_opt_respondsToSelector())
  {
    v42 = [v6 objectForKeyedSubscript:@"serviceType"];
    v7->_serviceType = [v42 longLongValue];
  }

  else
  {
    v7->_serviceType = 0;
  }

  v43 = [v6 objectForKeyedSubscript:@"subtitle"];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v44 = v43;
  }

  else
  {
    v44 = 0;
  }

  subtitle = v7->_subtitle;
  v7->_subtitle = v44;

  v46 = [v6 objectForKeyedSubscript:@"title"];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v47 = v46;
  }

  else
  {
    v47 = 0;
  }

  title = v7->_title;
  v7->_title = v47;

  v49 = [v6 objectForKeyedSubscript:@"usernameEditable"];
  if (objc_opt_respondsToSelector())
  {
    v50 = [v6 objectForKeyedSubscript:@"usernameEditable"];
    v7->_usernameEditable = [v50 BOOLValue];
  }

  else
  {
    v7->_usernameEditable = 0;
  }

LABEL_44:
  return v7;
}

- (id)runAction
{
  v37 = *MEMORY[0x1E69E9840];
  v30.receiver = self;
  v30.super_class = AMSUIWebVerifyCredentialsAction;
  v3 = [(AMSUIWebAction *)&v30 runAction];
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
    v8 = [(AMSUIWebVerifyCredentialsAction *)self account];
    v9 = AMSHashIfNeeded();
    *buf = 138543874;
    v32 = v6;
    v33 = 2114;
    v34 = v7;
    v35 = 2114;
    v36 = v9;
    _os_log_impl(&dword_1BB036000, v5, OS_LOG_TYPE_DEFAULT, "%{public}@: [%{public}@] Running AuthKit action for account: %{public}@", buf, 0x20u);
  }

  v10 = objc_alloc_init(MEMORY[0x1E698C7B0]);
  v11 = [(AMSUIWebVerifyCredentialsAction *)self buttonText];
  [v10 setDefaultButtonString:v11];

  [v10 setEphemeral:{-[AMSUIWebVerifyCredentialsAction ephemeral](self, "ephemeral")}];
  v12 = [(AMSUIWebVerifyCredentialsAction *)self title];
  [v10 setPromptTitle:v12];

  v13 = [(AMSUIWebVerifyCredentialsAction *)self subtitle];
  [v10 setReason:v13];

  [v10 setServiceType:{objc_msgSend(objc_opt_class(), "_serviceTypeFromType:", -[AMSUIWebVerifyCredentialsAction serviceType](self, "serviceType"))}];
  v14 = [(AMSUIWebVerifyCredentialsAction *)self serviceIdentifier];
  [v10 setServiceIdentifier:v14];

  v15 = objc_opt_class();
  v16 = [(AMSUIWebVerifyCredentialsAction *)self authenticationType];
  v17 = [v15 _authenticationTypeFromStringedType:v16];

  v18 = [(AMSUIWebVerifyCredentialsAction *)self authenticationType];

  if (v18)
  {
    v19 = [v17 unsignedIntegerValue];
  }

  else
  {
    v19 = 0;
  }

  [v10 setAuthenticationType:v19];
  v20 = [(AMSUIWebAction *)self context];
  v21 = [v20 flowController];
  v22 = [v21 currentContainer];

  v23 = [AMSUIAuthKitUpdateTask alloc];
  v24 = [(AMSUIWebVerifyCredentialsAction *)self account];
  v25 = [(AMSUIAuthKitUpdateTask *)v23 initWithAccount:v24 presentingViewController:v22 options:v10];

  v26 = [(AMSAuthKitUpdateTask *)v25 performAuthKitUpdate];
  v27 = [v26 thenWithBlock:&__block_literal_global_35];

  v28 = *MEMORY[0x1E69E9840];

  return v27;
}

id __44__AMSUIWebVerifyCredentialsAction_runAction__block_invoke(uint64_t a1, void *a2)
{
  v2 = [a2 authenticationResults];
  v3 = [v2 mutableCopy];

  [v3 setObject:0 forKeyedSubscript:*MEMORY[0x1E698DBD0]];
  v4 = [MEMORY[0x1E698CAD0] promiseWithResult:v3];

  return v4;
}

+ (int64_t)_serviceTypeFromType:(int64_t)a3
{
  v16 = *MEMORY[0x1E69E9840];
  if (!a3)
  {
LABEL_9:
    result = 2;
    goto LABEL_10;
  }

  if (a3 != 1)
  {
    v5 = [MEMORY[0x1E698C968] sharedWebUIConfig];
    if (!v5)
    {
      v5 = [MEMORY[0x1E698C968] sharedConfig];
    }

    v6 = [v5 OSLogObject];
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      v7 = objc_opt_class();
      v8 = AMSLogKey();
      v10 = 138543874;
      v11 = v7;
      v12 = 2114;
      v13 = v8;
      v14 = 2048;
      v15 = a3;
      _os_log_impl(&dword_1BB036000, v6, OS_LOG_TYPE_ERROR, "%{public}@: [%{public}@] Defaulting to STORE service type. (%ld)", &v10, 0x20u);
    }

    goto LABEL_9;
  }

  result = 1;
LABEL_10:
  v9 = *MEMORY[0x1E69E9840];
  return result;
}

+ (id)_authenticationTypeFromStringedType:(id)a3
{
  if (a3)
  {
    v4 = [&unk_1F394AA58 objectForKeyedSubscript:?];
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

@end