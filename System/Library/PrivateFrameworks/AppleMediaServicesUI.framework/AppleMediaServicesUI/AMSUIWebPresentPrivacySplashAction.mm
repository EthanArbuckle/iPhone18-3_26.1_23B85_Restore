@interface AMSUIWebPresentPrivacySplashAction
- (AMSUIWebPresentPrivacySplashAction)initWithJSObject:(id)object context:(id)context;
- (id)runAction;
@end

@implementation AMSUIWebPresentPrivacySplashAction

- (AMSUIWebPresentPrivacySplashAction)initWithJSObject:(id)object context:(id)context
{
  objectCopy = object;
  v12.receiver = self;
  v12.super_class = AMSUIWebPresentPrivacySplashAction;
  v7 = [(AMSUIWebAction *)&v12 initWithJSObject:objectCopy context:context];
  if (v7)
  {
    v8 = [objectCopy objectForKeyedSubscript:@"privacyIdentifier"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v9 = v8;
    }

    else
    {
      v9 = 0;
    }

    privacyIdentifier = v7->_privacyIdentifier;
    v7->_privacyIdentifier = v9;
  }

  return v7;
}

- (id)runAction
{
  v28 = *MEMORY[0x1E69E9840];
  v23.receiver = self;
  v23.super_class = AMSUIWebPresentPrivacySplashAction;
  runAction = [(AMSUIWebAction *)&v23 runAction];
  privacyIdentifier = [(AMSUIWebPresentPrivacySplashAction *)self privacyIdentifier];

  mEMORY[0x1E698C968] = [MEMORY[0x1E698C968] sharedWebUIConfig];
  mEMORY[0x1E698C968]2 = mEMORY[0x1E698C968];
  if (privacyIdentifier)
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
      *buf = 138543618;
      v25 = v8;
      v26 = 2114;
      v27 = v9;
      _os_log_impl(&dword_1BB036000, oSLogObject, OS_LOG_TYPE_DEFAULT, "%{public}@: [%{public}@] Presenting OBPrivacyPresenter", buf, 0x16u);
    }

    v10 = objc_alloc_init(MEMORY[0x1E698CAD0]);
    v21[0] = MEMORY[0x1E69E9820];
    v21[1] = 3221225472;
    v21[2] = __47__AMSUIWebPresentPrivacySplashAction_runAction__block_invoke;
    v21[3] = &unk_1E7F243C0;
    v21[4] = self;
    v11 = v10;
    v22 = v11;
    dispatch_async(MEMORY[0x1E69E96A0], v21);
    v12 = v22;
    v13 = v11;

    v14 = v13;
  }

  else
  {
    if (!mEMORY[0x1E698C968])
    {
      mEMORY[0x1E698C968]2 = [MEMORY[0x1E698C968] sharedConfig];
    }

    oSLogObject2 = [mEMORY[0x1E698C968]2 OSLogObject];
    if (os_log_type_enabled(oSLogObject2, OS_LOG_TYPE_ERROR))
    {
      v16 = objc_opt_class();
      v17 = AMSLogKey();
      *buf = 138543618;
      v25 = v16;
      v26 = 2114;
      v27 = v17;
      _os_log_impl(&dword_1BB036000, oSLogObject2, OS_LOG_TYPE_ERROR, "%{public}@: [%{public}@] No privacyIdentifier found", buf, 0x16u);
    }

    v18 = MEMORY[0x1E698CAD0];
    v13 = AMSError();
    v14 = [v18 promiseWithError:v13];
  }

  v19 = *MEMORY[0x1E69E9840];

  return v14;
}

void __47__AMSUIWebPresentPrivacySplashAction_runAction__block_invoke(uint64_t a1)
{
  v2 = MEMORY[0x1E69B7D58];
  v3 = [*(a1 + 32) privacyIdentifier];
  v4 = [v2 presenterForPrivacySplashWithIdentifier:v3];

  v5 = [*(a1 + 32) context];
  v6 = [v5 flowController];
  v7 = [v6 currentContainer];
  [v4 setPresentingViewController:v7];

  v9 = MEMORY[0x1E69E9820];
  v10 = 3221225472;
  v11 = __47__AMSUIWebPresentPrivacySplashAction_runAction__block_invoke_2;
  v12 = &unk_1E7F243C0;
  v8 = *(a1 + 40);
  v13 = *(a1 + 32);
  v14 = v8;
  [v4 setDismissHandler:&v9];
  [v4 present];
}

void __47__AMSUIWebPresentPrivacySplashAction_runAction__block_invoke_2(uint64_t a1)
{
  v9[1] = *MEMORY[0x1E69E9840];
  v2 = MEMORY[0x1E698C790];
  v3 = [*(a1 + 32) privacyIdentifier];
  LODWORD(v2) = [v2 acknowledgementNeededForPrivacyIdentifier:v3];

  v4 = *(a1 + 40);
  v8 = @"acknowledged";
  v5 = [MEMORY[0x1E696AD98] numberWithBool:v2 ^ 1];
  v9[0] = v5;
  v6 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v9 forKeys:&v8 count:1];
  [v4 finishWithResult:v6];

  v7 = *MEMORY[0x1E69E9840];
}

@end