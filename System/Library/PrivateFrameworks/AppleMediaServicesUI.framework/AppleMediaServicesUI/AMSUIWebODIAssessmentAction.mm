@interface AMSUIWebODIAssessmentAction
- (AMSUIWebODIAssessmentAction)initWithJSObject:(id)object context:(id)context;
- (id)runAction;
- (id)sessionIdentifierForString:(id)string;
- (unint64_t)accountTypeForString:(id)string;
@end

@implementation AMSUIWebODIAssessmentAction

- (AMSUIWebODIAssessmentAction)initWithJSObject:(id)object context:(id)context
{
  objectCopy = object;
  v21.receiver = self;
  v21.super_class = AMSUIWebODIAssessmentAction;
  v7 = [(AMSUIWebAction *)&v21 initWithJSObject:objectCopy context:context];
  if (v7)
  {
    v8 = [objectCopy objectForKeyedSubscript:@"additionalAttributes"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v9 = v8;
    }

    else
    {
      v9 = 0;
    }

    additionalAttributes = v7->_additionalAttributes;
    v7->_additionalAttributes = v9;

    v11 = [objectCopy objectForKeyedSubscript:@"accountType"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v12 = v11;
    }

    else
    {
      v12 = 0;
    }

    rawAccountType = v7->_rawAccountType;
    v7->_rawAccountType = v12;

    v14 = [objectCopy objectForKeyedSubscript:@"bundleIdentifier"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v15 = v14;
    }

    else
    {
      v15 = 0;
    }

    rawBundleIdentifer = v7->_rawBundleIdentifer;
    v7->_rawBundleIdentifer = v15;

    v17 = [objectCopy objectForKeyedSubscript:@"sessionIdentifer"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v18 = v17;
    }

    else
    {
      v18 = 0;
    }

    rawSessionIdentifer = v7->_rawSessionIdentifer;
    v7->_rawSessionIdentifer = v18;
  }

  return v7;
}

- (id)runAction
{
  v46 = *MEMORY[0x1E69E9840];
  v41.receiver = self;
  v41.super_class = AMSUIWebODIAssessmentAction;
  runAction = [(AMSUIWebAction *)&v41 runAction];
  rawAccountType = [(AMSUIWebODIAssessmentAction *)self rawAccountType];
  v5 = [(AMSUIWebODIAssessmentAction *)self accountTypeForString:rawAccountType];

  rawSessionIdentifer = [(AMSUIWebODIAssessmentAction *)self rawSessionIdentifer];
  v7 = [(AMSUIWebODIAssessmentAction *)self sessionIdentifierForString:rawSessionIdentifer];

  rawBundleIdentifer = [(AMSUIWebODIAssessmentAction *)self rawBundleIdentifer];
  if (rawBundleIdentifer)
  {
    if (v7)
    {
      goto LABEL_3;
    }

LABEL_11:
    v24 = MEMORY[0x1E698CAD0];
LABEL_17:
    v29 = AMSError();
    v30 = [v24 promiseWithError:v29];
    goto LABEL_24;
  }

  mEMORY[0x1E698C968] = [MEMORY[0x1E698C968] sharedWebUIConfig];
  if (!mEMORY[0x1E698C968])
  {
    mEMORY[0x1E698C968] = [MEMORY[0x1E698C968] sharedConfig];
  }

  oSLogObject = [mEMORY[0x1E698C968] OSLogObject];
  if (os_log_type_enabled(oSLogObject, OS_LOG_TYPE_DEFAULT))
  {
    v21 = objc_opt_class();
    v22 = AMSLogKey();
    *buf = 138543618;
    v43 = v21;
    v44 = 2114;
    v45 = v22;
    _os_log_impl(&dword_1BB036000, oSLogObject, OS_LOG_TYPE_DEFAULT, "%{public}@: [%{public}@] No bundle identifier passed. Will fallback to process bundle identifier.", buf, 0x16u);
  }

  currentProcess = [MEMORY[0x1E698CAC8] currentProcess];
  rawBundleIdentifer = [currentProcess bundleIdentifier];

  if (!v7)
  {
    goto LABEL_11;
  }

LABEL_3:
  if (!rawBundleIdentifer)
  {
    mEMORY[0x1E698C968]2 = [MEMORY[0x1E698C968] sharedWebUIConfig];
    if (!mEMORY[0x1E698C968]2)
    {
      mEMORY[0x1E698C968]2 = [MEMORY[0x1E698C968] sharedConfig];
    }

    oSLogObject2 = [mEMORY[0x1E698C968]2 OSLogObject];
    if (os_log_type_enabled(oSLogObject2, OS_LOG_TYPE_DEFAULT))
    {
      v27 = objc_opt_class();
      v28 = AMSLogKey();
      *buf = 138543618;
      v43 = v27;
      v44 = 2114;
      v45 = v28;
      _os_log_impl(&dword_1BB036000, oSLogObject2, OS_LOG_TYPE_DEFAULT, "%{public}@: [%{public}@] No bundle identifier found. Terminating assessment action.", buf, 0x16u);
    }

    v24 = MEMORY[0x1E698CAD0];
    goto LABEL_17;
  }

  v9 = objc_alloc(MEMORY[0x1E698CA90]);
  context = [(AMSUIWebAction *)self context];
  v11 = [context bag];
  v12 = [v9 initWithSessionIdentifier:v7 accountType:v5 bundleIdentifier:rawBundleIdentifer bag:v11];

  additionalAttributes = [(AMSUIWebODIAssessmentAction *)self additionalAttributes];

  if (additionalAttributes)
  {
    v14 = objc_alloc(MEMORY[0x1E698CA88]);
    additionalAttributes2 = [(AMSUIWebODIAssessmentAction *)self additionalAttributes];
    v16 = [v14 initWithAttributes:additionalAttributes2];

    v17 = [v12 provideUpdateWithAttributes:v16];
    v39[0] = MEMORY[0x1E69E9820];
    v39[1] = 3221225472;
    v39[2] = __40__AMSUIWebODIAssessmentAction_runAction__block_invoke;
    v39[3] = &unk_1E7F26898;
    v39[4] = self;
    v40 = v12;
    getAssessment = [v17 continueWithBlock:v39];
  }

  else
  {
    mEMORY[0x1E698C968]3 = [MEMORY[0x1E698C968] sharedWebUIConfig];
    if (!mEMORY[0x1E698C968]3)
    {
      mEMORY[0x1E698C968]3 = [MEMORY[0x1E698C968] sharedConfig];
    }

    oSLogObject3 = [mEMORY[0x1E698C968]3 OSLogObject];
    if (os_log_type_enabled(oSLogObject3, OS_LOG_TYPE_DEFAULT))
    {
      v33 = objc_opt_class();
      v34 = AMSLogKey();
      *buf = 138543618;
      v43 = v33;
      v44 = 2114;
      v45 = v34;
      _os_log_impl(&dword_1BB036000, oSLogObject3, OS_LOG_TYPE_DEFAULT, "%{public}@: [%{public}@] Running ODISession to get assessment.", buf, 0x16u);
    }

    getAssessment = [v12 getAssessment];
  }

  v37[0] = MEMORY[0x1E69E9820];
  v37[1] = 3221225472;
  v37[2] = __40__AMSUIWebODIAssessmentAction_runAction__block_invoke_28;
  v37[3] = &unk_1E7F268C0;
  v37[4] = self;
  v38 = v12;
  v29 = v12;
  v30 = [getAssessment thenWithBlock:v37];

LABEL_24:
  v35 = *MEMORY[0x1E69E9840];

  return v30;
}

id __40__AMSUIWebODIAssessmentAction_runAction__block_invoke(uint64_t a1)
{
  v14 = *MEMORY[0x1E69E9840];
  v2 = [MEMORY[0x1E698C968] sharedWebUIConfig];
  if (!v2)
  {
    v2 = [MEMORY[0x1E698C968] sharedConfig];
  }

  v3 = [v2 OSLogObject];
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    v4 = *(a1 + 32);
    v5 = objc_opt_class();
    v6 = AMSLogKey();
    v10 = 138543618;
    v11 = v5;
    v12 = 2114;
    v13 = v6;
    _os_log_impl(&dword_1BB036000, v3, OS_LOG_TYPE_DEFAULT, "%{public}@: [%{public}@] Running ODISession to get assessment.", &v10, 0x16u);
  }

  v7 = [*(a1 + 40) getAssessment];
  v8 = *MEMORY[0x1E69E9840];

  return v7;
}

id __40__AMSUIWebODIAssessmentAction_runAction__block_invoke_28(uint64_t a1, void *a2)
{
  v23 = *MEMORY[0x1E69E9840];
  v3 = MEMORY[0x1E698C968];
  v4 = a2;
  v5 = [v3 sharedWebUIConfig];
  if (!v5)
  {
    v5 = [MEMORY[0x1E698C968] sharedConfig];
  }

  v6 = [v5 OSLogObject];
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    v7 = *(a1 + 32);
    v8 = objc_opt_class();
    v9 = AMSLogKey();
    *buf = 138543618;
    v20 = v8;
    v21 = 2114;
    v22 = v9;
    _os_log_impl(&dword_1BB036000, v6, OS_LOG_TYPE_DEFAULT, "%{public}@: [%{public}@] Successfully fetched assessment", buf, 0x16u);
  }

  v10 = MEMORY[0x1E698CAD0];
  v11 = [v4 stringValue];

  v17[1] = @"cacheIdentifier";
  v18[0] = v11;
  v12 = [*(a1 + 40) cacheIdentifier];
  v18[1] = v12;
  v13 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v18 forKeys:v17 count:2];
  v14 = [v10 promiseWithResult:v13];

  v15 = *MEMORY[0x1E69E9840];

  return v14;
}

- (unint64_t)accountTypeForString:(id)string
{
  stringCopy = string;
  v4 = [&unk_1F394AA30 objectForKeyedSubscript:stringCopy];

  if (v4)
  {
    v5 = [&unk_1F394AA30 objectForKeyedSubscript:stringCopy];
    integerValue = [v5 integerValue];
  }

  else
  {
    integerValue = 1;
  }

  return integerValue;
}

- (id)sessionIdentifierForString:(id)string
{
  v12[3] = *MEMORY[0x1E69E9840];
  v3 = *MEMORY[0x1E698C710];
  v11[0] = @"create";
  v11[1] = @"submit";
  v4 = *MEMORY[0x1E698C718];
  v12[0] = v3;
  v12[1] = v4;
  v11[2] = @"idUpdate";
  v12[2] = *MEMORY[0x1E698C720];
  v5 = MEMORY[0x1E695DF20];
  stringCopy = string;
  v7 = [v5 dictionaryWithObjects:v12 forKeys:v11 count:3];
  v8 = [v7 objectForKeyedSubscript:stringCopy];

  v9 = *MEMORY[0x1E69E9840];

  return v8;
}

@end