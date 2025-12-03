@interface AMSUIWebVerifyCredentialsAction
+ (id)_authenticationTypeFromStringedType:(id)type;
+ (int64_t)_serviceTypeFromType:(int64_t)type;
- (AMSUIWebVerifyCredentialsAction)initWithJSObject:(id)object context:(id)context;
- (id)runAction;
@end

@implementation AMSUIWebVerifyCredentialsAction

- (AMSUIWebVerifyCredentialsAction)initWithJSObject:(id)object context:(id)context
{
  objectCopy = object;
  v53.receiver = self;
  v53.super_class = AMSUIWebVerifyCredentialsAction;
  contextCopy = context;
  v7 = [(AMSUIWebAction *)&v53 initWithJSObject:objectCopy context:?];
  if (!v7)
  {
    goto LABEL_44;
  }

  v8 = [objectCopy objectForKeyedSubscript:@"account"];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v9 = v8;
  }

  else
  {
    v9 = 0;
  }

  v10 = [contextCopy iTunesAccountFromJSAccount:v9];
  account = v7->_account;
  v7->_account = v10;

  v12 = v7->_account;
  if (!v12 || [(ACAccount *)v12 ams_isLocalAccount])
  {
    v13 = MEMORY[0x1E6959A48];
    context = [(AMSUIWebAction *)v7 context];
    clientInfo = [context clientInfo];
    accountMediaType = [clientInfo accountMediaType];
    v17 = [v13 ams_sharedAccountStoreForMediaType:accountMediaType];

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
      longLongValue = [v25 longLongValue];

      if (longLongValue)
      {
        v27 = [MEMORY[0x1E696AD98] numberWithLongLong:longLongValue];
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
  v30 = [objectCopy objectForKeyedSubscript:@"authenticationType"];
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

  v33 = [objectCopy objectForKeyedSubscript:@"buttonText"];
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

  v36 = [objectCopy objectForKeyedSubscript:@"ephemeral"];
  if (objc_opt_respondsToSelector())
  {
    v37 = [objectCopy objectForKeyedSubscript:@"ephemeral"];
    v7->_ephemeral = [v37 BOOLValue];
  }

  else
  {
    v7->_ephemeral = 0;
  }

  v38 = [objectCopy objectForKeyedSubscript:@"serviceIdentifier"];
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

  v41 = [objectCopy objectForKeyedSubscript:@"serviceType"];
  if (objc_opt_respondsToSelector())
  {
    v42 = [objectCopy objectForKeyedSubscript:@"serviceType"];
    v7->_serviceType = [v42 longLongValue];
  }

  else
  {
    v7->_serviceType = 0;
  }

  v43 = [objectCopy objectForKeyedSubscript:@"subtitle"];
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

  v46 = [objectCopy objectForKeyedSubscript:@"title"];
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

  v49 = [objectCopy objectForKeyedSubscript:@"usernameEditable"];
  if (objc_opt_respondsToSelector())
  {
    v50 = [objectCopy objectForKeyedSubscript:@"usernameEditable"];
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
  runAction = [(AMSUIWebAction *)&v30 runAction];
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
    account = [(AMSUIWebVerifyCredentialsAction *)self account];
    v9 = AMSHashIfNeeded();
    *buf = 138543874;
    v32 = v6;
    v33 = 2114;
    v34 = v7;
    v35 = 2114;
    v36 = v9;
    _os_log_impl(&dword_1BB036000, oSLogObject, OS_LOG_TYPE_DEFAULT, "%{public}@: [%{public}@] Running AuthKit action for account: %{public}@", buf, 0x20u);
  }

  v10 = objc_alloc_init(MEMORY[0x1E698C7B0]);
  buttonText = [(AMSUIWebVerifyCredentialsAction *)self buttonText];
  [v10 setDefaultButtonString:buttonText];

  [v10 setEphemeral:{-[AMSUIWebVerifyCredentialsAction ephemeral](self, "ephemeral")}];
  title = [(AMSUIWebVerifyCredentialsAction *)self title];
  [v10 setPromptTitle:title];

  subtitle = [(AMSUIWebVerifyCredentialsAction *)self subtitle];
  [v10 setReason:subtitle];

  [v10 setServiceType:{objc_msgSend(objc_opt_class(), "_serviceTypeFromType:", -[AMSUIWebVerifyCredentialsAction serviceType](self, "serviceType"))}];
  serviceIdentifier = [(AMSUIWebVerifyCredentialsAction *)self serviceIdentifier];
  [v10 setServiceIdentifier:serviceIdentifier];

  v15 = objc_opt_class();
  authenticationType = [(AMSUIWebVerifyCredentialsAction *)self authenticationType];
  v17 = [v15 _authenticationTypeFromStringedType:authenticationType];

  authenticationType2 = [(AMSUIWebVerifyCredentialsAction *)self authenticationType];

  if (authenticationType2)
  {
    unsignedIntegerValue = [v17 unsignedIntegerValue];
  }

  else
  {
    unsignedIntegerValue = 0;
  }

  [v10 setAuthenticationType:unsignedIntegerValue];
  context = [(AMSUIWebAction *)self context];
  flowController = [context flowController];
  currentContainer = [flowController currentContainer];

  v23 = [AMSUIAuthKitUpdateTask alloc];
  account2 = [(AMSUIWebVerifyCredentialsAction *)self account];
  v25 = [(AMSUIAuthKitUpdateTask *)v23 initWithAccount:account2 presentingViewController:currentContainer options:v10];

  performAuthKitUpdate = [(AMSAuthKitUpdateTask *)v25 performAuthKitUpdate];
  v27 = [performAuthKitUpdate thenWithBlock:&__block_literal_global_35];

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

+ (int64_t)_serviceTypeFromType:(int64_t)type
{
  v16 = *MEMORY[0x1E69E9840];
  if (!type)
  {
LABEL_9:
    result = 2;
    goto LABEL_10;
  }

  if (type != 1)
  {
    mEMORY[0x1E698C968] = [MEMORY[0x1E698C968] sharedWebUIConfig];
    if (!mEMORY[0x1E698C968])
    {
      mEMORY[0x1E698C968] = [MEMORY[0x1E698C968] sharedConfig];
    }

    oSLogObject = [mEMORY[0x1E698C968] OSLogObject];
    if (os_log_type_enabled(oSLogObject, OS_LOG_TYPE_ERROR))
    {
      v7 = objc_opt_class();
      v8 = AMSLogKey();
      v10 = 138543874;
      v11 = v7;
      v12 = 2114;
      v13 = v8;
      v14 = 2048;
      typeCopy = type;
      _os_log_impl(&dword_1BB036000, oSLogObject, OS_LOG_TYPE_ERROR, "%{public}@: [%{public}@] Defaulting to STORE service type. (%ld)", &v10, 0x20u);
    }

    goto LABEL_9;
  }

  result = 1;
LABEL_10:
  v9 = *MEMORY[0x1E69E9840];
  return result;
}

+ (id)_authenticationTypeFromStringedType:(id)type
{
  if (type)
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