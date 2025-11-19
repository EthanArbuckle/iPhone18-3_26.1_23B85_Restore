@interface AMSUIWebODIAssessmentAction
- (AMSUIWebODIAssessmentAction)initWithJSObject:(id)a3 context:(id)a4;
- (id)runAction;
- (id)sessionIdentifierForString:(id)a3;
- (unint64_t)accountTypeForString:(id)a3;
@end

@implementation AMSUIWebODIAssessmentAction

- (AMSUIWebODIAssessmentAction)initWithJSObject:(id)a3 context:(id)a4
{
  v6 = a3;
  v21.receiver = self;
  v21.super_class = AMSUIWebODIAssessmentAction;
  v7 = [(AMSUIWebAction *)&v21 initWithJSObject:v6 context:a4];
  if (v7)
  {
    v8 = [v6 objectForKeyedSubscript:@"additionalAttributes"];
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

    v11 = [v6 objectForKeyedSubscript:@"accountType"];
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

    v14 = [v6 objectForKeyedSubscript:@"bundleIdentifier"];
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

    v17 = [v6 objectForKeyedSubscript:@"sessionIdentifer"];
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
  v3 = [(AMSUIWebAction *)&v41 runAction];
  v4 = [(AMSUIWebODIAssessmentAction *)self rawAccountType];
  v5 = [(AMSUIWebODIAssessmentAction *)self accountTypeForString:v4];

  v6 = [(AMSUIWebODIAssessmentAction *)self rawSessionIdentifer];
  v7 = [(AMSUIWebODIAssessmentAction *)self sessionIdentifierForString:v6];

  v8 = [(AMSUIWebODIAssessmentAction *)self rawBundleIdentifer];
  if (v8)
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

  v19 = [MEMORY[0x1E698C968] sharedWebUIConfig];
  if (!v19)
  {
    v19 = [MEMORY[0x1E698C968] sharedConfig];
  }

  v20 = [v19 OSLogObject];
  if (os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT))
  {
    v21 = objc_opt_class();
    v22 = AMSLogKey();
    *buf = 138543618;
    v43 = v21;
    v44 = 2114;
    v45 = v22;
    _os_log_impl(&dword_1BB036000, v20, OS_LOG_TYPE_DEFAULT, "%{public}@: [%{public}@] No bundle identifier passed. Will fallback to process bundle identifier.", buf, 0x16u);
  }

  v23 = [MEMORY[0x1E698CAC8] currentProcess];
  v8 = [v23 bundleIdentifier];

  if (!v7)
  {
    goto LABEL_11;
  }

LABEL_3:
  if (!v8)
  {
    v25 = [MEMORY[0x1E698C968] sharedWebUIConfig];
    if (!v25)
    {
      v25 = [MEMORY[0x1E698C968] sharedConfig];
    }

    v26 = [v25 OSLogObject];
    if (os_log_type_enabled(v26, OS_LOG_TYPE_DEFAULT))
    {
      v27 = objc_opt_class();
      v28 = AMSLogKey();
      *buf = 138543618;
      v43 = v27;
      v44 = 2114;
      v45 = v28;
      _os_log_impl(&dword_1BB036000, v26, OS_LOG_TYPE_DEFAULT, "%{public}@: [%{public}@] No bundle identifier found. Terminating assessment action.", buf, 0x16u);
    }

    v24 = MEMORY[0x1E698CAD0];
    goto LABEL_17;
  }

  v9 = objc_alloc(MEMORY[0x1E698CA90]);
  v10 = [(AMSUIWebAction *)self context];
  v11 = [v10 bag];
  v12 = [v9 initWithSessionIdentifier:v7 accountType:v5 bundleIdentifier:v8 bag:v11];

  v13 = [(AMSUIWebODIAssessmentAction *)self additionalAttributes];

  if (v13)
  {
    v14 = objc_alloc(MEMORY[0x1E698CA88]);
    v15 = [(AMSUIWebODIAssessmentAction *)self additionalAttributes];
    v16 = [v14 initWithAttributes:v15];

    v17 = [v12 provideUpdateWithAttributes:v16];
    v39[0] = MEMORY[0x1E69E9820];
    v39[1] = 3221225472;
    v39[2] = __40__AMSUIWebODIAssessmentAction_runAction__block_invoke;
    v39[3] = &unk_1E7F26898;
    v39[4] = self;
    v40 = v12;
    v18 = [v17 continueWithBlock:v39];
  }

  else
  {
    v31 = [MEMORY[0x1E698C968] sharedWebUIConfig];
    if (!v31)
    {
      v31 = [MEMORY[0x1E698C968] sharedConfig];
    }

    v32 = [v31 OSLogObject];
    if (os_log_type_enabled(v32, OS_LOG_TYPE_DEFAULT))
    {
      v33 = objc_opt_class();
      v34 = AMSLogKey();
      *buf = 138543618;
      v43 = v33;
      v44 = 2114;
      v45 = v34;
      _os_log_impl(&dword_1BB036000, v32, OS_LOG_TYPE_DEFAULT, "%{public}@: [%{public}@] Running ODISession to get assessment.", buf, 0x16u);
    }

    v18 = [v12 getAssessment];
  }

  v37[0] = MEMORY[0x1E69E9820];
  v37[1] = 3221225472;
  v37[2] = __40__AMSUIWebODIAssessmentAction_runAction__block_invoke_28;
  v37[3] = &unk_1E7F268C0;
  v37[4] = self;
  v38 = v12;
  v29 = v12;
  v30 = [v18 thenWithBlock:v37];

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

- (unint64_t)accountTypeForString:(id)a3
{
  v3 = a3;
  v4 = [&unk_1F394AA30 objectForKeyedSubscript:v3];

  if (v4)
  {
    v5 = [&unk_1F394AA30 objectForKeyedSubscript:v3];
    v6 = [v5 integerValue];
  }

  else
  {
    v6 = 1;
  }

  return v6;
}

- (id)sessionIdentifierForString:(id)a3
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
  v6 = a3;
  v7 = [v5 dictionaryWithObjects:v12 forKeys:v11 count:3];
  v8 = [v7 objectForKeyedSubscript:v6];

  v9 = *MEMORY[0x1E69E9840];

  return v8;
}

@end