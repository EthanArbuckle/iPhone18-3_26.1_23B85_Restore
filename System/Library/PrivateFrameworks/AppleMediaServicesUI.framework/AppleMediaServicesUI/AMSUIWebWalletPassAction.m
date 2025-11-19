@interface AMSUIWebWalletPassAction
- (AMSUIWebWalletPassAction)initWithJSObject:(id)a3 context:(id)a4;
- (id)_attemptLynxProvisioning;
- (id)_lookupPassForIdentifier:(unint64_t)a3;
- (id)runAction;
@end

@implementation AMSUIWebWalletPassAction

- (AMSUIWebWalletPassAction)initWithJSObject:(id)a3 context:(id)a4
{
  v6 = a3;
  v15.receiver = self;
  v15.super_class = AMSUIWebWalletPassAction;
  v7 = [(AMSUIWebAction *)&v15 initWithJSObject:v6 context:a4];
  if (v7)
  {
    v8 = [v6 objectForKeyedSubscript:@"attemptLynxProvisioning"];
    if (objc_opt_respondsToSelector())
    {
      v9 = [v6 objectForKeyedSubscript:@"attemptLynxProvisioning"];
      v7->_attemptLynxProvisioning = [v9 BOOLValue];
    }

    else
    {
      v7->_attemptLynxProvisioning = 0;
    }

    v10 = [v6 objectForKeyedSubscript:@"lookupFeatureIdentifier"];
    if (v10)
    {
      if (objc_opt_respondsToSelector())
      {
        v11 = [v10 longLongValue];
      }

      else
      {
        v11 = 0;
      }

      v12 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:v11];
      lookupFeature = v7->_lookupFeature;
      v7->_lookupFeature = v12;
    }
  }

  return v7;
}

- (id)runAction
{
  v11.receiver = self;
  v11.super_class = AMSUIWebWalletPassAction;
  v3 = [(AMSUIWebAction *)&v11 runAction];
  v4 = [MEMORY[0x1E698CAD0] promiseWithResult:MEMORY[0x1E695E0F8]];
  if ([(AMSUIWebWalletPassAction *)self attemptLynxProvisioning])
  {
    v10[0] = MEMORY[0x1E69E9820];
    v10[1] = 3221225472;
    v10[2] = __37__AMSUIWebWalletPassAction_runAction__block_invoke;
    v10[3] = &unk_1E7F262A0;
    v10[4] = self;
    v5 = [v4 thenWithBlock:v10];

    v4 = v5;
  }

  v6 = [(AMSUIWebWalletPassAction *)self lookupFeature];

  if (v6)
  {
    v9[0] = MEMORY[0x1E69E9820];
    v9[1] = 3221225472;
    v9[2] = __37__AMSUIWebWalletPassAction_runAction__block_invoke_3;
    v9[3] = &unk_1E7F262A0;
    v9[4] = self;
    v7 = [v4 thenWithBlock:v9];

    v4 = v7;
  }

  return v4;
}

id __37__AMSUIWebWalletPassAction_runAction__block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [*(a1 + 32) _attemptLynxProvisioning];
  v5 = [v4 promiseAdapter];
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __37__AMSUIWebWalletPassAction_runAction__block_invoke_2;
  v9[3] = &unk_1E7F24CD8;
  v10 = v3;
  v6 = v3;
  v7 = [v5 thenWithBlock:v9];

  return v7;
}

id __37__AMSUIWebWalletPassAction_runAction__block_invoke_2(uint64_t a1)
{
  v1 = [*(a1 + 32) ams_dictionaryByAddingEntriesFromDictionary:&unk_1F394AAA8];
  v2 = [MEMORY[0x1E698CAD0] promiseWithResult:v1];

  return v2;
}

id __37__AMSUIWebWalletPassAction_runAction__block_invoke_3(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = *(a1 + 32);
  v5 = [v4 lookupFeature];
  v6 = [v4 _lookupPassForIdentifier:{objc_msgSend(v5, "unsignedLongValue")}];

  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __37__AMSUIWebWalletPassAction_runAction__block_invoke_4;
  v10[3] = &unk_1E7F27138;
  v11 = v3;
  v7 = v3;
  v8 = [v6 thenWithBlock:v10];

  return v8;
}

id __37__AMSUIWebWalletPassAction_runAction__block_invoke_4(uint64_t a1, void *a2)
{
  v22[1] = *MEMORY[0x1E69E9840];
  v2 = *(a1 + 32);
  v21 = @"pass";
  v19[0] = @"identifier";
  v3 = a2;
  v4 = [v3 devicePassIdentifier];
  v5 = v4;
  if (v4)
  {
    v6 = v4;
  }

  else
  {
    v6 = &stru_1F3921360;
  }

  v20[0] = v6;
  v19[1] = @"terminalIdentifier";
  v7 = [v3 pairedTerminalIdentifier];
  v8 = v7;
  if (v7)
  {
    v9 = v7;
  }

  else
  {
    v9 = &stru_1F3921360;
  }

  v20[1] = v9;
  v19[2] = @"activationState";
  v10 = MEMORY[0x1E696AD98];
  v11 = [v3 passActivationState];

  v12 = [v10 numberWithInteger:v11];
  v20[2] = v12;
  v13 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v20 forKeys:v19 count:3];
  v22[0] = v13;
  v14 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v22 forKeys:&v21 count:1];
  v15 = [v2 ams_dictionaryByAddingEntriesFromDictionary:v14];

  v16 = [MEMORY[0x1E698CAD0] promiseWithResult:v15];

  v17 = *MEMORY[0x1E69E9840];

  return v16;
}

- (id)_attemptLynxProvisioning
{
  v21 = *MEMORY[0x1E69E9840];
  v3 = [MEMORY[0x1E698C968] sharedWebUIConfig];
  if (!v3)
  {
    v3 = [MEMORY[0x1E698C968] sharedConfig];
  }

  v4 = [v3 OSLogObject];
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v5 = objc_opt_class();
    v6 = [(AMSUIWebAction *)self context];
    v7 = [v6 logKey];
    *buf = 138543618;
    v18 = v5;
    v19 = 2114;
    v20 = v7;
    _os_log_impl(&dword_1BB036000, v4, OS_LOG_TYPE_DEFAULT, "%{public}@: [%{public}@] Attempting Lynx provisioning...", buf, 0x16u);
  }

  v8 = objc_alloc_init(MEMORY[0x1E698C7F0]);
  v9 = [getPKAccountServiceClass() sharedInstance];
  if (objc_opt_respondsToSelector())
  {
    v14[0] = MEMORY[0x1E69E9820];
    v14[1] = 3221225472;
    v14[2] = __52__AMSUIWebWalletPassAction__attemptLynxProvisioning__block_invoke;
    v14[3] = &unk_1E7F24990;
    v15 = v8;
    v16 = self;
    [v9 attemptAppleStoredValueSetupWithCompletion:v14];
    v10 = v15;
  }

  else
  {
    v10 = AMSError();
    [v8 finishWithError:v10];
  }

  v13[0] = MEMORY[0x1E69E9820];
  v13[1] = 3221225472;
  v13[2] = __52__AMSUIWebWalletPassAction__attemptLynxProvisioning__block_invoke_78;
  v13[3] = &unk_1E7F24410;
  v13[4] = self;
  [v8 addErrorBlock:v13];

  v11 = *MEMORY[0x1E69E9840];

  return v8;
}

uint64_t __52__AMSUIWebWalletPassAction__attemptLynxProvisioning__block_invoke(uint64_t a1, uint64_t a2)
{
  v17 = *MEMORY[0x1E69E9840];
  if (a2)
  {
    v3 = *(a1 + 32);
    v4 = *MEMORY[0x1E69E9840];

    return [v3 finishWithError:a2];
  }

  else
  {
    v6 = [MEMORY[0x1E698C968] sharedWebUIConfig];
    if (!v6)
    {
      v6 = [MEMORY[0x1E698C968] sharedConfig];
    }

    v7 = [v6 OSLogObject];
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      v8 = *(a1 + 40);
      v9 = objc_opt_class();
      v10 = [*(a1 + 40) context];
      v11 = [v10 logKey];
      v13 = 138543618;
      v14 = v9;
      v15 = 2114;
      v16 = v11;
      _os_log_impl(&dword_1BB036000, v7, OS_LOG_TYPE_DEFAULT, "%{public}@: [%{public}@] Provisioning Lynx succeeded", &v13, 0x16u);
    }

    result = [*(a1 + 32) finishWithSuccess];
    v12 = *MEMORY[0x1E69E9840];
  }

  return result;
}

void __52__AMSUIWebWalletPassAction__attemptLynxProvisioning__block_invoke_78(uint64_t a1, void *a2)
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
    v8 = [*(a1 + 32) context];
    v9 = [v8 logKey];
    v11 = 138543874;
    v12 = v7;
    v13 = 2114;
    v14 = v9;
    v15 = 2114;
    v16 = v3;
    _os_log_impl(&dword_1BB036000, v5, OS_LOG_TYPE_ERROR, "%{public}@: [%{public}@] Provisioning Lynx failed. %{public}@", &v11, 0x20u);
  }

  v10 = *MEMORY[0x1E69E9840];
}

- (id)_lookupPassForIdentifier:(unint64_t)a3
{
  v25 = *MEMORY[0x1E69E9840];
  v5 = [MEMORY[0x1E698C968] sharedWebUIConfig];
  if (!v5)
  {
    v5 = [MEMORY[0x1E698C968] sharedConfig];
  }

  v6 = [v5 OSLogObject];
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    v7 = objc_opt_class();
    v8 = [(AMSUIWebAction *)self context];
    v9 = [v8 logKey];
    *buf = 138543874;
    v20 = v7;
    v21 = 2114;
    v22 = v9;
    v23 = 2048;
    v24 = a3;
    _os_log_impl(&dword_1BB036000, v6, OS_LOG_TYPE_DEFAULT, "%{public}@: [%{public}@] Looking up pass: %ld", buf, 0x20u);
  }

  v10 = [objc_alloc(MEMORY[0x1E698CAD0]) initWithTimeout:30.0];
  v11 = [getPKAccountServiceClass() sharedInstance];
  v17[0] = MEMORY[0x1E69E9820];
  v17[1] = 3221225472;
  v17[2] = __53__AMSUIWebWalletPassAction__lookupPassForIdentifier___block_invoke;
  v17[3] = &unk_1E7F27188;
  v17[4] = self;
  v12 = v10;
  v18 = v12;
  [v11 defaultAccountForFeature:a3 completion:v17];

  v13 = v18;
  v14 = v12;

  v15 = *MEMORY[0x1E69E9840];
  return v12;
}

void __53__AMSUIWebWalletPassAction__lookupPassForIdentifier___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v35 = *MEMORY[0x1E69E9840];
  v5 = a2;
  v6 = a3;
  v7 = [MEMORY[0x1E698C968] sharedWebUIConfig];
  v8 = v7;
  if (v6)
  {
    if (!v7)
    {
      v8 = [MEMORY[0x1E698C968] sharedConfig];
    }

    v9 = [v8 OSLogObject];
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      v10 = *(a1 + 32);
      v11 = objc_opt_class();
      v12 = [*(a1 + 32) context];
      v13 = [v12 logKey];
      *buf = 138543874;
      *&buf[4] = v11;
      *&buf[12] = 2114;
      *&buf[14] = v13;
      *&buf[22] = 2114;
      v33 = v6;
      _os_log_impl(&dword_1BB036000, v9, OS_LOG_TYPE_ERROR, "%{public}@: [%{public}@] Pass lookup failed to locate account. %{public}@", buf, 0x20u);
    }

    [*(a1 + 40) finishWithError:v6];
  }

  else
  {
    if (!v7)
    {
      v8 = [MEMORY[0x1E698C968] sharedConfig];
    }

    v14 = [v8 OSLogObject];
    if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
    {
      v15 = *(a1 + 32);
      v16 = objc_opt_class();
      v17 = [*(a1 + 32) context];
      v18 = [v17 logKey];
      v19 = [v5 accountIdentifier];
      *buf = 138543874;
      *&buf[4] = v16;
      *&buf[12] = 2114;
      *&buf[14] = v18;
      *&buf[22] = 2112;
      v33 = v19;
      _os_log_impl(&dword_1BB036000, v14, OS_LOG_TYPE_DEFAULT, "%{public}@: [%{public}@] Pass lookup located the account: %@", buf, 0x20u);
    }

    v28 = 0;
    v29 = &v28;
    v30 = 0x2050000000;
    v20 = getPKPassLibraryClass_softClass_1;
    v31 = getPKPassLibraryClass_softClass_1;
    if (!getPKPassLibraryClass_softClass_1)
    {
      *buf = MEMORY[0x1E69E9820];
      *&buf[8] = 3221225472;
      *&buf[16] = __getPKPassLibraryClass_block_invoke_1;
      v33 = &unk_1E7F241B0;
      v34 = &v28;
      __getPKPassLibraryClass_block_invoke_1(buf);
      v20 = v29[3];
    }

    v21 = v20;
    _Block_object_dispose(&v28, 8);
    v22 = [v20 sharedInstance];
    v23 = [v5 accountIdentifier];
    v26[0] = MEMORY[0x1E69E9820];
    v26[1] = 3221225472;
    v26[2] = __53__AMSUIWebWalletPassAction__lookupPassForIdentifier___block_invoke_79;
    v26[3] = &unk_1E7F27160;
    v24 = *(a1 + 40);
    v26[4] = *(a1 + 32);
    v27 = v24;
    [v22 paymentPassWithAssociatedAccountIdentifier:v23 completion:v26];
  }

  v25 = *MEMORY[0x1E69E9840];
}

void __53__AMSUIWebWalletPassAction__lookupPassForIdentifier___block_invoke_79(uint64_t a1, void *a2)
{
  v23 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = [MEMORY[0x1E698C968] sharedWebUIConfig];
  v5 = v4;
  if (v3)
  {
    if (!v4)
    {
      v5 = [MEMORY[0x1E698C968] sharedConfig];
    }

    v6 = [v5 OSLogObject];
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      v7 = *(a1 + 32);
      v8 = objc_opt_class();
      v9 = [*(a1 + 32) context];
      v10 = [v9 logKey];
      v19 = 138543618;
      v20 = v8;
      v21 = 2114;
      v22 = v10;
      _os_log_impl(&dword_1BB036000, v6, OS_LOG_TYPE_DEFAULT, "%{public}@: [%{public}@] Pass fetched successfully", &v19, 0x16u);
    }

    [*(a1 + 40) finishWithResult:v3];
  }

  else
  {
    if (!v4)
    {
      v5 = [MEMORY[0x1E698C968] sharedConfig];
    }

    v11 = [v5 OSLogObject];
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      v12 = *(a1 + 32);
      v13 = objc_opt_class();
      v14 = [*(a1 + 32) context];
      v15 = [v14 logKey];
      v19 = 138543618;
      v20 = v13;
      v21 = 2114;
      v22 = v15;
      _os_log_impl(&dword_1BB036000, v11, OS_LOG_TYPE_ERROR, "%{public}@: [%{public}@] Pass not found", &v19, 0x16u);
    }

    v16 = *(a1 + 40);
    v17 = AMSError();
    [v16 finishWithError:v17];
  }

  v18 = *MEMORY[0x1E69E9840];
}

@end