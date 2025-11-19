@interface AMSUIWebVerifyPaymentSetupFeatureAction
- (AMSUIWebVerifyPaymentSetupFeatureAction)initWithJSObject:(id)a3 context:(id)a4;
- (id)_checkCombinedAccount;
- (id)_checkUpsellCardEnrollment;
- (id)runAction;
@end

@implementation AMSUIWebVerifyPaymentSetupFeatureAction

- (AMSUIWebVerifyPaymentSetupFeatureAction)initWithJSObject:(id)a3 context:(id)a4
{
  v6 = a3;
  v12.receiver = self;
  v12.super_class = AMSUIWebVerifyPaymentSetupFeatureAction;
  v7 = [(AMSUIWebAction *)&v12 initWithJSObject:v6 context:a4];
  if (v7)
  {
    v8 = [v6 objectForKeyedSubscript:@"referrerIdentifier"];
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
  v26 = *MEMORY[0x1E69E9840];
  v20.receiver = self;
  v20.super_class = AMSUIWebVerifyPaymentSetupFeatureAction;
  v3 = [(AMSUIWebAction *)&v20 runAction];
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
    *buf = 138543618;
    v23 = v6;
    v24 = 2114;
    v25 = v7;
    _os_log_impl(&dword_1BB036000, v5, OS_LOG_TYPE_DEFAULT, "%{public}@: [%{public}@] Verifying payment setup.", buf, 0x16u);
  }

  v8 = MEMORY[0x1E698C7F0];
  v9 = [(AMSUIWebVerifyPaymentSetupFeatureAction *)self _checkUpsellCardEnrollment];
  v21[0] = v9;
  v10 = [(AMSUIWebVerifyPaymentSetupFeatureAction *)self _checkCombinedAccount];
  v21[1] = v10;
  v11 = [MEMORY[0x1E695DEC8] arrayWithObjects:v21 count:2];
  v12 = [v8 promiseWithAll:v11];

  v13 = [v12 promiseAdapter];
  v19[0] = MEMORY[0x1E69E9820];
  v19[1] = 3221225472;
  v19[2] = __52__AMSUIWebVerifyPaymentSetupFeatureAction_runAction__block_invoke;
  v19[3] = &unk_1E7F24CD8;
  v19[4] = self;
  v14 = [v13 thenWithBlock:v19];

  v18[0] = MEMORY[0x1E69E9820];
  v18[1] = 3221225472;
  v18[2] = __52__AMSUIWebVerifyPaymentSetupFeatureAction_runAction__block_invoke_3;
  v18[3] = &unk_1E7F261F0;
  v18[4] = self;
  [v14 addSuccessBlock:v18];
  v17[0] = MEMORY[0x1E69E9820];
  v17[1] = 3221225472;
  v17[2] = __52__AMSUIWebVerifyPaymentSetupFeatureAction_runAction__block_invoke_16;
  v17[3] = &unk_1E7F24410;
  v17[4] = self;
  [v14 addErrorBlock:v17];

  v15 = *MEMORY[0x1E69E9840];

  return v14;
}

id __52__AMSUIWebVerifyPaymentSetupFeatureAction_runAction__block_invoke(uint64_t a1)
{
  v2 = objc_alloc(MEMORY[0x1E698CAB8]);
  v3 = [*(a1 + 32) referrerIdentifier];
  v4 = [v2 initWithIdentifier:v3];

  v5 = [v4 performPaymentSetupFeatureLookup];
  v6 = [v5 thenWithBlock:&__block_literal_global_36];

  return v6;
}

id __52__AMSUIWebVerifyPaymentSetupFeatureAction_runAction__block_invoke_2(uint64_t a1, void *a2)
{
  v9[1] = *MEMORY[0x1E69E9840];
  v2 = MEMORY[0x1E698CAD0];
  v8 = @"supported";
  v3 = [MEMORY[0x1E696AD98] numberWithInt:{objc_msgSend(a2, "state") == 1}];
  v9[0] = v3;
  v4 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v9 forKeys:&v8 count:1];
  v5 = [v2 promiseWithResult:v4];

  v6 = *MEMORY[0x1E69E9840];

  return v5;
}

void __52__AMSUIWebVerifyPaymentSetupFeatureAction_runAction__block_invoke_3(uint64_t a1, void *a2)
{
  v16 = *MEMORY[0x1E69E9840];
  v3 = a2;
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
    v10 = 138543874;
    v11 = v7;
    v12 = 2114;
    v13 = v8;
    v14 = 2114;
    v15 = v3;
    _os_log_impl(&dword_1BB036000, v5, OS_LOG_TYPE_DEFAULT, "%{public}@: [%{public}@] Verified payment setup: %{public}@", &v10, 0x20u);
  }

  v9 = *MEMORY[0x1E69E9840];
}

void __52__AMSUIWebVerifyPaymentSetupFeatureAction_runAction__block_invoke_16(uint64_t a1, void *a2)
{
  v17 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = [MEMORY[0x1E698C968] sharedWebUIConfig];
  if (!v4)
  {
    v4 = [MEMORY[0x1E698C968] sharedConfig];
  }

  v5 = [v4 OSLogObject];
  if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
  {
    v6 = *(a1 + 32);
    v7 = objc_opt_class();
    v8 = AMSLogKey();
    v9 = AMSLogableError();
    v11 = 138543874;
    v12 = v7;
    v13 = 2114;
    v14 = v8;
    v15 = 2114;
    v16 = v9;
    _os_log_impl(&dword_1BB036000, v5, OS_LOG_TYPE_ERROR, "%{public}@: [%{public}@] Failed to verify payment setup: %{public}@", &v11, 0x20u);
  }

  v10 = *MEMORY[0x1E69E9840];
}

- (id)_checkCombinedAccount
{
  v2 = [MEMORY[0x1E6959A48] ams_sharedAccountStore];
  v3 = [v2 ams_isActiveAccountCombined];

  v4 = MEMORY[0x1E698C7F0];
  if (v3)
  {
    v5 = [MEMORY[0x1E698C7F0] promiseWithSuccess];
  }

  else
  {
    v6 = AMSError();
    v5 = [v4 promiseWithError:v6];
  }

  return v5;
}

- (id)_checkUpsellCardEnrollment
{
  v3 = objc_alloc_init(MEMORY[0x1E698C7F0]);
  v4 = dispatch_get_global_queue(0, 0);
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __69__AMSUIWebVerifyPaymentSetupFeatureAction__checkUpsellCardEnrollment__block_invoke;
  v9[3] = &unk_1E7F243C0;
  v9[4] = self;
  v5 = v3;
  v10 = v5;
  dispatch_async(v4, v9);

  v6 = v10;
  v7 = v5;

  return v5;
}

void __69__AMSUIWebVerifyPaymentSetupFeatureAction__checkUpsellCardEnrollment__block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) context];
  v6 = [v2 bag];

  v3 = [MEMORY[0x1E698C830] shouldUseUpsellEnrollmentWithBag:v6];
  v4 = *(a1 + 40);
  if (v3)
  {
    [v4 finishWithSuccess];
  }

  else
  {
    v5 = AMSError();
    [v4 finishWithError:v5];
  }
}

@end