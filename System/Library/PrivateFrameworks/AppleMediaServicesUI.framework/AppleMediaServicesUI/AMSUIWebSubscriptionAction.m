@interface AMSUIWebSubscriptionAction
- (AMSUIWebSubscriptionAction)initWithJSObject:(id)a3 context:(id)a4;
- (id)runAction;
@end

@implementation AMSUIWebSubscriptionAction

- (AMSUIWebSubscriptionAction)initWithJSObject:(id)a3 context:(id)a4
{
  v6 = a3;
  v15.receiver = self;
  v15.super_class = AMSUIWebSubscriptionAction;
  v7 = [(AMSUIWebAction *)&v15 initWithJSObject:v6 context:a4];
  if (v7)
  {
    v8 = [v6 objectForKeyedSubscript:@"cachePolicy"];
    if (objc_opt_respondsToSelector())
    {
      v9 = [v6 objectForKeyedSubscript:@"cachePolicy"];
      v7->_cachePolicy = [v9 longLongValue];
    }

    else
    {
      v7->_cachePolicy = 0;
    }

    v10 = [v6 objectForKeyedSubscript:@"extendedCarrierCheck"];
    if (objc_opt_respondsToSelector())
    {
      v11 = [v6 objectForKeyedSubscript:@"extendedCarrierCheck"];
      v7->_extendedCarrierCheck = [v11 BOOLValue];
    }

    else
    {
      v7->_extendedCarrierCheck = 0;
    }

    v12 = [v6 objectForKeyedSubscript:@"mediaType"];
    if (objc_opt_respondsToSelector())
    {
      v13 = [v6 objectForKeyedSubscript:@"mediaType"];
      v7->_mediaType = [v13 longLongValue];
    }

    else
    {
      v7->_mediaType = 1;
    }
  }

  return v7;
}

- (id)runAction
{
  v21 = *MEMORY[0x1E69E9840];
  v14.receiver = self;
  v14.super_class = AMSUIWebSubscriptionAction;
  v3 = [(AMSUIWebAction *)&v14 runAction];
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
    v8 = [(AMSUIWebSubscriptionAction *)self mediaType];
    *buf = 138543874;
    v16 = v6;
    v17 = 2114;
    v18 = v7;
    v19 = 2048;
    v20 = v8;
    _os_log_impl(&dword_1BB036000, v5, OS_LOG_TYPE_DEFAULT, "%{public}@: [%{public}@] Started subscription lookup for media type: %ld", buf, 0x20u);
  }

  v9 = [objc_alloc(MEMORY[0x1E698CB40]) initWithMediaType:{-[AMSUIWebSubscriptionAction mediaType](self, "mediaType")}];
  [v9 setCachePolicy:{-[AMSUIWebSubscriptionAction cachePolicy](self, "cachePolicy")}];
  [v9 setExtendedCarrierCheck:{-[AMSUIWebSubscriptionAction extendedCarrierCheck](self, "extendedCarrierCheck")}];
  v10 = [v9 performExternalLookup];
  v11 = [v10 thenWithBlock:&__block_literal_global_33];

  v12 = *MEMORY[0x1E69E9840];

  return v11;
}

id __39__AMSUIWebSubscriptionAction_runAction__block_invoke(uint64_t a1, void *a2)
{
  v2 = MEMORY[0x1E698CAD0];
  v3 = [a2 exportObject];
  v4 = [v2 promiseWithResult:v3];

  return v4;
}

@end