@interface AMSUIWebAcknowledgePrivacyAction
- (AMSUIWebAcknowledgePrivacyAction)initWithJSObject:(id)object context:(id)context;
- (id)runAction;
@end

@implementation AMSUIWebAcknowledgePrivacyAction

- (AMSUIWebAcknowledgePrivacyAction)initWithJSObject:(id)object context:(id)context
{
  objectCopy = object;
  contextCopy = context;
  v36.receiver = self;
  v36.super_class = AMSUIWebAcknowledgePrivacyAction;
  v8 = [(AMSUIWebAction *)&v36 initWithJSObject:objectCopy context:contextCopy];
  if (v8)
  {
    v9 = [objectCopy objectForKeyedSubscript:@"privacyIdentifier"];
    v10 = 0x1E696A000uLL;
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v11 = v9;
    }

    else
    {
      v11 = 0;
    }

    privacyIdentifier = v8->_privacyIdentifier;
    v8->_privacyIdentifier = v11;

    v13 = [objectCopy objectForKeyedSubscript:@"account"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v14 = v13;
    }

    else
    {
      v14 = 0;
    }

    v15 = [contextCopy iTunesAccountFromJSAccount:v14];
    account = v8->_account;
    v8->_account = v15;

    v17 = v8->_account;
    if (v17 && ![(ACAccount *)v17 ams_isLocalAccount])
    {
      goto LABEL_22;
    }

    v18 = MEMORY[0x1E6959A48];
    context = [(AMSUIWebAction *)v8 context];
    clientInfo = [context clientInfo];
    accountMediaType = [clientInfo accountMediaType];
    v22 = [v18 ams_sharedAccountStoreForMediaType:accountMediaType];

    v23 = [v22 accountTypeWithAccountTypeIdentifier:*MEMORY[0x1E6959930]];
    v24 = [objc_alloc(MEMORY[0x1E6959A28]) initWithAccountType:v23];
    v25 = v8->_account;
    v8->_account = v24;

    v26 = [v14 objectForKeyedSubscript:@"username"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v27 = v26;
    }

    else
    {
      v27 = 0;
    }

    [(ACAccount *)v8->_account setUsername:v27];
    v28 = [v14 objectForKeyedSubscript:@"DSID"];
    if (objc_opt_respondsToSelector())
    {
      v29 = [v14 objectForKeyedSubscript:@"DSID"];
      longLongValue = [v29 longLongValue];

      v10 = 0x1E696A000;
      if (longLongValue)
      {
        v31 = [MEMORY[0x1E696AD98] numberWithLongLong:longLongValue];
        [(ACAccount *)v8->_account ams_setDSID:v31];

LABEL_18:
        v32 = [v14 objectForKeyedSubscript:@"altDSID"];
        v33 = *(v10 + 3776);
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          v34 = v32;
        }

        else
        {
          v34 = 0;
        }

        [(ACAccount *)v8->_account ams_setAltDSID:v34];
LABEL_22:

        goto LABEL_23;
      }
    }

    else
    {
    }

    [(ACAccount *)v8->_account ams_setDSID:0];
    goto LABEL_18;
  }

LABEL_23:

  return v8;
}

- (id)runAction
{
  v29 = *MEMORY[0x1E69E9840];
  v22.receiver = self;
  v22.super_class = AMSUIWebAcknowledgePrivacyAction;
  runAction = [(AMSUIWebAction *)&v22 runAction];
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
    privacyIdentifier = [(AMSUIWebAcknowledgePrivacyAction *)self privacyIdentifier];
    *buf = 138543874;
    v24 = v6;
    v25 = 2114;
    v26 = v7;
    v27 = 2114;
    v28 = privacyIdentifier;
    _os_log_impl(&dword_1BB036000, oSLogObject, OS_LOG_TYPE_DEFAULT, "%{public}@: [%{public}@] Acknowledging privacy for ID: %{public}@", buf, 0x20u);
  }

  privacyIdentifier2 = [(AMSUIWebAcknowledgePrivacyAction *)self privacyIdentifier];
  v10 = [privacyIdentifier2 length];

  if (v10)
  {
    account = [(AMSUIWebAcknowledgePrivacyAction *)self account];

    if (account)
    {
      v12 = objc_alloc(MEMORY[0x1E698C790]);
      privacyIdentifier3 = [(AMSUIWebAcknowledgePrivacyAction *)self privacyIdentifier];
      account2 = [(AMSUIWebAcknowledgePrivacyAction *)self account];
      v15 = [v12 initWithPrivacyIdentifier:privacyIdentifier3 account:account2];

      acknowledgePrivacy = [v15 acknowledgePrivacy];
      promiseAdapter = [acknowledgePrivacy promiseAdapter];
      v18 = [promiseAdapter thenWithBlock:&__block_literal_global_17];

      goto LABEL_11;
    }

    v19 = MEMORY[0x1E698CAD0];
  }

  else
  {
    v19 = MEMORY[0x1E698CAD0];
  }

  v15 = AMSError();
  v18 = [v19 promiseWithError:v15];
LABEL_11:

  v20 = *MEMORY[0x1E69E9840];

  return v18;
}

@end