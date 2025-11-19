@interface AMSUIWebAuthorizeApplePayEnrollmentAction
- (AMSUIWebAuthorizeApplePayEnrollmentAction)initWithJSObject:(id)a3 context:(id)a4;
- (id)runAction;
@end

@implementation AMSUIWebAuthorizeApplePayEnrollmentAction

- (AMSUIWebAuthorizeApplePayEnrollmentAction)initWithJSObject:(id)a3 context:(id)a4
{
  v6 = a3;
  v21.receiver = self;
  v21.super_class = AMSUIWebAuthorizeApplePayEnrollmentAction;
  v7 = [(AMSUIWebAction *)&v21 initWithJSObject:v6 context:a4];
  if (v7)
  {
    v8 = [v6 objectForKeyedSubscript:@"confirmationStyle"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v9 = v8;
    }

    else
    {
      v9 = 0;
    }

    confirmationStyle = v7->_confirmationStyle;
    v7->_confirmationStyle = v9;

    v11 = [v6 objectForKeyedSubscript:@"passSerialNumber"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v12 = v11;
    }

    else
    {
      v12 = 0;
    }

    passSerialNumber = v7->_passSerialNumber;
    v7->_passSerialNumber = v12;

    v14 = [v6 objectForKeyedSubscript:@"passTypeIdentifier"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v15 = v14;
    }

    else
    {
      v15 = 0;
    }

    passTypeIdentifier = v7->_passTypeIdentifier;
    v7->_passTypeIdentifier = v15;

    v17 = [v6 objectForKeyedSubscript:@"paymentSession"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v18 = v17;
    }

    else
    {
      v18 = 0;
    }

    paymentSession = v7->_paymentSession;
    v7->_paymentSession = v18;
  }

  return v7;
}

- (id)runAction
{
  v31 = *MEMORY[0x1E69E9840];
  v26.receiver = self;
  v26.super_class = AMSUIWebAuthorizeApplePayEnrollmentAction;
  v3 = [(AMSUIWebAction *)&v26 runAction];
  v4 = [(AMSUIWebAction *)self context];
  v5 = [v4 bag];

  if ([MEMORY[0x1E698C830] shouldUseExtendedEnrollmentWithBag:v5])
  {
    v6 = [(AMSUIWebAuthorizeApplePayEnrollmentAction *)self paymentSession];
    if (v6)
    {
      v7 = [v5 stringForKey:@"currentStorefrontCountryCodeISO2A"];
      v8 = [v7 valuePromise];

      v22[0] = MEMORY[0x1E69E9820];
      v22[1] = 3221225472;
      v22[2] = __54__AMSUIWebAuthorizeApplePayEnrollmentAction_runAction__block_invoke;
      v22[3] = &unk_1E7F25B78;
      v23 = v5;
      v24 = self;
      v25 = v6;
      v9 = [v8 thenWithBlock:v22];
    }

    else
    {
      v15 = [MEMORY[0x1E698C968] sharedWebUIConfig];
      if (!v15)
      {
        v15 = [MEMORY[0x1E698C968] sharedConfig];
      }

      v16 = [v15 OSLogObject];
      if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
      {
        v17 = objc_opt_class();
        v18 = AMSLogKey();
        *buf = 138543618;
        v28 = v17;
        v29 = 2114;
        v30 = v18;
        _os_log_impl(&dword_1BB036000, v16, OS_LOG_TYPE_ERROR, "%{public}@: [%{public}@] Failed for bad arguments.", buf, 0x16u);
      }

      v19 = MEMORY[0x1E698CAD0];
      v8 = AMSError();
      v9 = [v19 promiseWithError:v8];
    }
  }

  else
  {
    v10 = [MEMORY[0x1E698C968] sharedWebUIConfig];
    if (!v10)
    {
      v10 = [MEMORY[0x1E698C968] sharedConfig];
    }

    v11 = [v10 OSLogObject];
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      v12 = objc_opt_class();
      v13 = AMSLogKey();
      *buf = 138543618;
      v28 = v12;
      v29 = 2114;
      v30 = v13;
      _os_log_impl(&dword_1BB036000, v11, OS_LOG_TYPE_ERROR, "%{public}@: [%{public}@] Failed for feature not enabled.", buf, 0x16u);
    }

    v14 = MEMORY[0x1E698CAD0];
    v6 = AMSError();
    v9 = [v14 promiseWithError:v6];
  }

  v20 = *MEMORY[0x1E69E9840];

  return v9;
}

id __54__AMSUIWebAuthorizeApplePayEnrollmentAction_runAction__block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = objc_alloc_init(MEMORY[0x1E698CAD0]);
  v5 = [*(a1 + 32) stringForKey:@"currencyCode"];
  v6 = [v5 valuePromise];

  v12[0] = MEMORY[0x1E69E9820];
  v12[1] = 3221225472;
  v12[2] = __54__AMSUIWebAuthorizeApplePayEnrollmentAction_runAction__block_invoke_2;
  v12[3] = &unk_1E7F25B50;
  v12[4] = *(a1 + 40);
  v7 = v4;
  v13 = v7;
  v14 = *(a1 + 48);
  v15 = v3;
  v8 = v3;
  [v6 addFinishBlock:v12];
  v9 = v15;
  v10 = v7;

  return v7;
}

void __54__AMSUIWebAuthorizeApplePayEnrollmentAction_runAction__block_invoke_2(id *a1, void *a2, void *a3)
{
  v40 = *MEMORY[0x1E69E9840];
  v5 = a2;
  v6 = a3;
  if (v5)
  {
    goto LABEL_7;
  }

  v7 = [MEMORY[0x1E698C968] sharedWebUIConfig];
  if (!v7)
  {
    v7 = [MEMORY[0x1E698C968] sharedConfig];
  }

  v8 = [v7 OSLogObject];
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    v9 = a1[4];
    v10 = objc_opt_class();
    v11 = AMSLogKey();
    *buf = 138543618;
    v37 = v10;
    v38 = 2114;
    v39 = v11;
    _os_log_impl(&dword_1BB036000, v8, OS_LOG_TYPE_DEFAULT, "%{public}@: [%{public}@] No currency code, falling back to device locale", buf, 0x16u);
  }

  v12 = [MEMORY[0x1E695DF58] currentLocale];
  v5 = [v12 currencyCode];

  if (v5)
  {
LABEL_7:
    v13 = [a1[4] presentingSceneIdentifierPromise];
    v14 = [a1[4] presentingSceneBundleIdentifierPromise];
    v15 = MEMORY[0x1E698CAD0];
    v35[0] = v13;
    v35[1] = v14;
    v16 = [MEMORY[0x1E695DEC8] arrayWithObjects:v35 count:2];
    v17 = [v15 promiseWithAll:v16];

    v29[0] = MEMORY[0x1E69E9820];
    v29[1] = 3221225472;
    v29[2] = __54__AMSUIWebAuthorizeApplePayEnrollmentAction_runAction__block_invoke_37;
    v29[3] = &unk_1E7F25B28;
    v18 = a1[6];
    v19 = a1[4];
    v30 = v18;
    v31 = v19;
    v32 = a1[7];
    v33 = v5;
    v34 = a1[5];
    v20 = v5;
    v21 = [v17 thenWithBlock:v29];
  }

  else
  {
    v23 = [MEMORY[0x1E698C968] sharedWebUIConfig];
    if (!v23)
    {
      v23 = [MEMORY[0x1E698C968] sharedConfig];
    }

    v24 = [v23 OSLogObject];
    if (os_log_type_enabled(v24, OS_LOG_TYPE_ERROR))
    {
      v25 = a1[4];
      v26 = objc_opt_class();
      v27 = AMSLogKey();
      *buf = 138543618;
      v37 = v26;
      v38 = 2114;
      v39 = v27;
      _os_log_impl(&dword_1BB036000, v24, OS_LOG_TYPE_ERROR, "%{public}@: [%{public}@] Failed for bad arguments.", buf, 0x16u);
    }

    v28 = a1[5];
    v20 = AMSError();
    [v28 finishWithError:v20];
  }

  v22 = *MEMORY[0x1E69E9840];
}

id __54__AMSUIWebAuthorizeApplePayEnrollmentAction_runAction__block_invoke_37(uint64_t a1, void *a2)
{
  v3 = MEMORY[0x1E698C828];
  v4 = a2;
  v5 = [[v3 alloc] initWithPaymentSession:*(a1 + 32)];
  v6 = [*(a1 + 40) confirmationStyle];
  [v5 setConfirmationStyle:{objc_msgSend(v6, "integerValue")}];

  [v5 setCountryCode:*(a1 + 48)];
  [v5 setCurrencyCode:*(a1 + 56)];
  v7 = [*(a1 + 40) passSerialNumber];
  [v5 setPassSerialNumber:v7];

  v8 = [*(a1 + 40) passTypeIdentifier];
  [v5 setPassTypeIdentifier:v8];

  v9 = [v4 objectAtIndexedSubscript:0];
  v10 = [v9 value];
  [v5 setPresentationSceneIdentifier:v10];

  v11 = [v4 objectAtIndexedSubscript:1];

  v12 = [v11 value];
  [v5 setPresentationSceneBundleIdentifier:v12];

  v13 = [v5 performCardAuthorization];
  v17[0] = MEMORY[0x1E69E9820];
  v17[1] = 3221225472;
  v17[2] = __54__AMSUIWebAuthorizeApplePayEnrollmentAction_runAction__block_invoke_2_39;
  v17[3] = &unk_1E7F25B00;
  v18 = *(a1 + 64);
  [v13 addSuccessBlock:v17];
  v15[0] = MEMORY[0x1E69E9820];
  v15[1] = 3221225472;
  v15[2] = __54__AMSUIWebAuthorizeApplePayEnrollmentAction_runAction__block_invoke_3;
  v15[3] = &unk_1E7F24410;
  v16 = *(a1 + 64);
  [v13 addErrorBlock:v15];

  return v13;
}

void __54__AMSUIWebAuthorizeApplePayEnrollmentAction_runAction__block_invoke_2_39(uint64_t a1, void *a2)
{
  v10[1] = *MEMORY[0x1E69E9840];
  v3 = [a2 token];
  v4 = [v3 paymentData];

  v5 = [v4 base64EncodedStringWithOptions:0];
  v6 = *(a1 + 32);
  v9 = @"payment";
  v10[0] = v5;
  v7 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v10 forKeys:&v9 count:1];
  [v6 finishWithResult:v7];

  v8 = *MEMORY[0x1E69E9840];
}

@end