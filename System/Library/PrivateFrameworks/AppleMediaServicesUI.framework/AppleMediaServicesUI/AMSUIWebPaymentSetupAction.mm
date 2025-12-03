@interface AMSUIWebPaymentSetupAction
- (AMSUIWebPaymentSetupAction)initWithJSObject:(id)object context:(id)context;
- (id)runAction;
@end

@implementation AMSUIWebPaymentSetupAction

- (AMSUIWebPaymentSetupAction)initWithJSObject:(id)object context:(id)context
{
  objectCopy = object;
  v12.receiver = self;
  v12.super_class = AMSUIWebPaymentSetupAction;
  v7 = [(AMSUIWebAction *)&v12 initWithJSObject:objectCopy context:context];
  if (v7)
  {
    v8 = [objectCopy objectForKeyedSubscript:@"referrerIdentifier"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v9 = v8;
    }

    else
    {
      v9 = 0;
    }

    referrerIdentifier = v7->_referrerIdentifier;
    v7->_referrerIdentifier = v9;
  }

  return v7;
}

- (id)runAction
{
  v39 = *MEMORY[0x1E69E9840];
  v34.receiver = self;
  v34.super_class = AMSUIWebPaymentSetupAction;
  runAction = [(AMSUIWebAction *)&v34 runAction];
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
    *buf = 138543618;
    v36 = v6;
    v37 = 2114;
    v38 = v7;
    _os_log_impl(&dword_1BB036000, oSLogObject, OS_LOG_TYPE_DEFAULT, "%{public}@: [%{public}@] Started running.", buf, 0x16u);
  }

  context = [(AMSUIWebAction *)self context];
  v9 = [context bag];

  if ([MEMORY[0x1E698C830] shouldUseUpsellEnrollmentWithBag:v9])
  {
    ams_sharedAccountStore = [MEMORY[0x1E6959A48] ams_sharedAccountStore];
    ams_isActiveAccountCombined = [ams_sharedAccountStore ams_isActiveAccountCombined];

    if (ams_isActiveAccountCombined)
    {
      v12 = objc_alloc_init(MEMORY[0x1E698CAD0]);
      context2 = [(AMSUIWebAction *)self context];
      flowController = [context2 flowController];
      currentContainer = [flowController currentContainer];

      v16 = [AMSUIPaymentSetupTask alloc];
      referrerIdentifier = [(AMSUIWebPaymentSetupAction *)self referrerIdentifier];
      v18 = [(AMSUIPaymentSetupTask *)v16 initWithReferrerIdentifier:referrerIdentifier presentingViewController:currentContainer];

      present = [(AMSUIPaymentSetupTask *)v18 present];
      v32[0] = MEMORY[0x1E69E9820];
      v32[1] = 3221225472;
      v32[2] = __39__AMSUIWebPaymentSetupAction_runAction__block_invoke;
      v32[3] = &unk_1E7F24B50;
      v32[4] = self;
      v20 = v12;
      v33 = v20;
      [present addFinishBlock:v32];
      v21 = v33;
      v22 = v20;

      goto LABEL_18;
    }

    mEMORY[0x1E698C968]2 = [MEMORY[0x1E698C968] sharedWebUIConfig];
    if (!mEMORY[0x1E698C968]2)
    {
      mEMORY[0x1E698C968]2 = [MEMORY[0x1E698C968] sharedConfig];
    }

    oSLogObject2 = [mEMORY[0x1E698C968]2 OSLogObject];
    if (os_log_type_enabled(oSLogObject2, OS_LOG_TYPE_ERROR))
    {
      v27 = objc_opt_class();
      v28 = AMSLogKey();
      *buf = 138543618;
      v36 = v27;
      v37 = 2114;
      v38 = v28;
      _os_log_impl(&dword_1BB036000, oSLogObject2, OS_LOG_TYPE_ERROR, "%{public}@: [%{public}@] Failed for no combined account.", buf, 0x16u);
    }
  }

  else
  {
    mEMORY[0x1E698C968]2 = [MEMORY[0x1E698C968] sharedWebUIConfig];
    if (!mEMORY[0x1E698C968]2)
    {
      mEMORY[0x1E698C968]2 = [MEMORY[0x1E698C968] sharedConfig];
    }

    oSLogObject2 = [mEMORY[0x1E698C968]2 OSLogObject];
    if (os_log_type_enabled(oSLogObject2, OS_LOG_TYPE_ERROR))
    {
      v25 = objc_opt_class();
      v26 = AMSLogKey();
      *buf = 138543618;
      v36 = v25;
      v37 = 2114;
      v38 = v26;
      _os_log_impl(&dword_1BB036000, oSLogObject2, OS_LOG_TYPE_ERROR, "%{public}@: [%{public}@] Failed for feature not enabled.", buf, 0x16u);
    }
  }

  v29 = MEMORY[0x1E698CAD0];
  currentContainer = AMSError();
  v22 = [v29 promiseWithError:currentContainer];
LABEL_18:

  v30 = *MEMORY[0x1E69E9840];

  return v22;
}

void __39__AMSUIWebPaymentSetupAction_runAction__block_invoke(uint64_t a1, uint64_t a2)
{
  v23 = *MEMORY[0x1E69E9840];
  v4 = [MEMORY[0x1E698C968] sharedWebUIConfig];
  if (!v4)
  {
    v4 = [MEMORY[0x1E698C968] sharedConfig];
  }

  v5 = [v4 OSLogObject];
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v6 = *(a1 + 32);
    v7 = objc_opt_class();
    v8 = AMSLogKey();
    v9 = v8;
    v10 = @"unsuccessfully";
    *buf = 138543874;
    v18 = v7;
    v19 = 2114;
    if (a2)
    {
      v10 = @"successfully";
    }

    v20 = v8;
    v21 = 2114;
    v22 = v10;
    _os_log_impl(&dword_1BB036000, v5, OS_LOG_TYPE_DEFAULT, "%{public}@: [%{public}@] Finished %{public}@.", buf, 0x20u);
  }

  v11 = *(a1 + 40);
  v12 = [MEMORY[0x1E696AD98] numberWithBool:{a2, @"success"}];
  v16 = v12;
  v13 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v16 forKeys:&v15 count:1];
  [v11 finishWithResult:v13];

  v14 = *MEMORY[0x1E69E9840];
}

@end