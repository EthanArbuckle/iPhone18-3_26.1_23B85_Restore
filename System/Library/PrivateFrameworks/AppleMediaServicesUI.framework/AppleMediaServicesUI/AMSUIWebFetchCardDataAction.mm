@interface AMSUIWebFetchCardDataAction
- (AMSUIWebFetchCardDataAction)initWithJSObject:(id)object context:(id)context;
- (id)runAction;
@end

@implementation AMSUIWebFetchCardDataAction

- (AMSUIWebFetchCardDataAction)initWithJSObject:(id)object context:(id)context
{
  objectCopy = object;
  v15.receiver = self;
  v15.super_class = AMSUIWebFetchCardDataAction;
  v7 = [(AMSUIWebAction *)&v15 initWithJSObject:objectCopy context:context];
  if (v7)
  {
    v8 = [objectCopy objectForKeyedSubscript:@"merchantID"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v9 = v8;
    }

    else
    {
      v9 = 0;
    }

    merchantID = v7->_merchantID;
    v7->_merchantID = v9;

    v11 = [objectCopy objectForKeyedSubscript:@"storeFrontCountryCode"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v12 = v11;
    }

    else
    {
      v12 = 0;
    }

    storeFrontCountryCode = v7->_storeFrontCountryCode;
    v7->_storeFrontCountryCode = v12;
  }

  return v7;
}

- (id)runAction
{
  v39 = *MEMORY[0x1E69E9840];
  v33.receiver = self;
  v33.super_class = AMSUIWebFetchCardDataAction;
  runAction = [(AMSUIWebAction *)&v33 runAction];
  v4 = AMSLogKey();
  mEMORY[0x1E698C968] = [MEMORY[0x1E698C968] sharedWebUIConfig];
  if (!mEMORY[0x1E698C968])
  {
    mEMORY[0x1E698C968] = [MEMORY[0x1E698C968] sharedConfig];
  }

  oSLogObject = [mEMORY[0x1E698C968] OSLogObject];
  if (os_log_type_enabled(oSLogObject, OS_LOG_TYPE_DEFAULT))
  {
    v7 = objc_opt_class();
    *buf = 138543618;
    v36 = v7;
    v37 = 2114;
    v38 = v4;
    _os_log_impl(&dword_1BB036000, oSLogObject, OS_LOG_TYPE_DEFAULT, "%{public}@: [%{public}@] Fetching card data...", buf, 0x16u);
  }

  merchantID = [(AMSUIWebFetchCardDataAction *)self merchantID];
  if (merchantID)
  {
    valuePromise = [MEMORY[0x1E698CAD0] promiseWithResult:merchantID];
  }

  else
  {
    context = [(AMSUIWebAction *)self context];
    v11 = [context bag];
    v12 = [v11 stringForKey:@"applepay-merchant-id"];
    valuePromise = [v12 valuePromise];
  }

  storeFrontCountryCode = [(AMSUIWebFetchCardDataAction *)self storeFrontCountryCode];
  if (storeFrontCountryCode)
  {
    valuePromise2 = [MEMORY[0x1E698CAD0] promiseWithResult:storeFrontCountryCode];
  }

  else
  {
    context2 = [(AMSUIWebAction *)self context];
    v16 = [context2 bag];
    v17 = [v16 stringForKey:@"countryCode"];
    valuePromise2 = [v17 valuePromise];
  }

  v18 = MEMORY[0x1E698CAD0];
  v34[0] = valuePromise2;
  v34[1] = valuePromise;
  v19 = [MEMORY[0x1E695DEC8] arrayWithObjects:v34 count:2];
  v20 = [v18 promiseWithAll:v19];

  v31[0] = MEMORY[0x1E69E9820];
  v31[1] = 3221225472;
  v31[2] = __40__AMSUIWebFetchCardDataAction_runAction__block_invoke;
  v31[3] = &unk_1E7F26158;
  v31[4] = self;
  v21 = v4;
  v32 = v21;
  v22 = [v20 thenWithBlock:v31];
  v29[0] = MEMORY[0x1E69E9820];
  v29[1] = 3221225472;
  v29[2] = __40__AMSUIWebFetchCardDataAction_runAction__block_invoke_2;
  v29[3] = &unk_1E7F24990;
  v29[4] = self;
  v23 = v21;
  v30 = v23;
  [v22 addErrorBlock:v29];
  v27[0] = MEMORY[0x1E69E9820];
  v27[1] = 3221225472;
  v27[2] = __40__AMSUIWebFetchCardDataAction_runAction__block_invoke_30;
  v27[3] = &unk_1E7F249D8;
  v27[4] = self;
  v28 = v23;
  v24 = v23;
  [v22 addSuccessBlock:v27];

  v25 = *MEMORY[0x1E69E9840];

  return v22;
}

id __40__AMSUIWebFetchCardDataAction_runAction__block_invoke(uint64_t a1, void *a2)
{
  v24 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = [v3 objectAtIndexedSubscript:0];
  v5 = [v3 objectAtIndexedSubscript:1];

  v6 = [MEMORY[0x1E698C968] sharedWebUIConfig];
  if (!v6)
  {
    v6 = [MEMORY[0x1E698C968] sharedConfig];
  }

  v7 = [v6 OSLogObject];
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    v8 = *(a1 + 32);
    v9 = objc_opt_class();
    v10 = *(a1 + 40);
    v16 = 138544130;
    v17 = v9;
    v18 = 2114;
    v19 = v10;
    v20 = 2114;
    v21 = v4;
    v22 = 2114;
    v23 = v5;
    _os_log_impl(&dword_1BB036000, v7, OS_LOG_TYPE_DEFAULT, "%{public}@: [%{public}@] countryCode: %{public}@, merchantIdentifier: %{public}@", &v16, 0x2Au);
  }

  v11 = [objc_alloc(MEMORY[0x1E698C858]) initWithCountryCode:v4 merchantIdentifier:v5];
  v12 = [v11 performCardRegistration];
  v13 = [v12 thenWithBlock:&__block_literal_global_24];

  v14 = *MEMORY[0x1E69E9840];

  return v13;
}

id __40__AMSUIWebFetchCardDataAction_runAction__block_invoke_16(uint64_t a1, void *a2)
{
  v2 = a2;
  v3 = objc_alloc_init(MEMORY[0x1E695DF90]);
  v4 = [v2 cardData];
  if (v4)
  {
    v5 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithData:v4 encoding:4];
    [v3 setObject:v5 forKeyedSubscript:@"cardData"];
  }

  v6 = [v2 brokerURL];
  v7 = [v6 absoluteString];
  [v3 setObject:v7 forKeyedSubscript:@"brokerURL"];

  v8 = [v2 paymentServicesURL];
  v9 = [v8 absoluteString];
  [v3 setObject:v9 forKeyedSubscript:@"paymentServicesURL"];

  v10 = [MEMORY[0x1E698CAD0] promiseWithResult:v3];

  return v10;
}

void __40__AMSUIWebFetchCardDataAction_runAction__block_invoke_2(uint64_t a1, void *a2)
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
    v8 = *(a1 + 40);
    v9 = AMSLogableError();
    v11 = 138543874;
    v12 = v7;
    v13 = 2114;
    v14 = v8;
    v15 = 2114;
    v16 = v9;
    _os_log_impl(&dword_1BB036000, v5, OS_LOG_TYPE_ERROR, "%{public}@: [%{public}@] Failed with error: %{public}@", &v11, 0x20u);
  }

  v10 = *MEMORY[0x1E69E9840];
}

void __40__AMSUIWebFetchCardDataAction_runAction__block_invoke_30(uint64_t a1, void *a2)
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
    v8 = *(a1 + 40);
    v10 = 138543875;
    v11 = v7;
    v12 = 2114;
    v13 = v8;
    v14 = 2113;
    v15 = v3;
    _os_log_impl(&dword_1BB036000, v5, OS_LOG_TYPE_DEFAULT, "%{public}@: [%{public}@] Successfully fetched card data: %{private}@", &v10, 0x20u);
  }

  v9 = *MEMORY[0x1E69E9840];
}

@end