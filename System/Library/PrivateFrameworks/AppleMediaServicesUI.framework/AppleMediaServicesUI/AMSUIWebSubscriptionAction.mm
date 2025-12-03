@interface AMSUIWebSubscriptionAction
- (AMSUIWebSubscriptionAction)initWithJSObject:(id)object context:(id)context;
- (id)runAction;
@end

@implementation AMSUIWebSubscriptionAction

- (AMSUIWebSubscriptionAction)initWithJSObject:(id)object context:(id)context
{
  objectCopy = object;
  v15.receiver = self;
  v15.super_class = AMSUIWebSubscriptionAction;
  v7 = [(AMSUIWebAction *)&v15 initWithJSObject:objectCopy context:context];
  if (v7)
  {
    v8 = [objectCopy objectForKeyedSubscript:@"cachePolicy"];
    if (objc_opt_respondsToSelector())
    {
      v9 = [objectCopy objectForKeyedSubscript:@"cachePolicy"];
      v7->_cachePolicy = [v9 longLongValue];
    }

    else
    {
      v7->_cachePolicy = 0;
    }

    v10 = [objectCopy objectForKeyedSubscript:@"extendedCarrierCheck"];
    if (objc_opt_respondsToSelector())
    {
      v11 = [objectCopy objectForKeyedSubscript:@"extendedCarrierCheck"];
      v7->_extendedCarrierCheck = [v11 BOOLValue];
    }

    else
    {
      v7->_extendedCarrierCheck = 0;
    }

    v12 = [objectCopy objectForKeyedSubscript:@"mediaType"];
    if (objc_opt_respondsToSelector())
    {
      v13 = [objectCopy objectForKeyedSubscript:@"mediaType"];
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
  runAction = [(AMSUIWebAction *)&v14 runAction];
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
    mediaType = [(AMSUIWebSubscriptionAction *)self mediaType];
    *buf = 138543874;
    v16 = v6;
    v17 = 2114;
    v18 = v7;
    v19 = 2048;
    v20 = mediaType;
    _os_log_impl(&dword_1BB036000, oSLogObject, OS_LOG_TYPE_DEFAULT, "%{public}@: [%{public}@] Started subscription lookup for media type: %ld", buf, 0x20u);
  }

  v9 = [objc_alloc(MEMORY[0x1E698CB40]) initWithMediaType:{-[AMSUIWebSubscriptionAction mediaType](self, "mediaType")}];
  [v9 setCachePolicy:{-[AMSUIWebSubscriptionAction cachePolicy](self, "cachePolicy")}];
  [v9 setExtendedCarrierCheck:{-[AMSUIWebSubscriptionAction extendedCarrierCheck](self, "extendedCarrierCheck")}];
  performExternalLookup = [v9 performExternalLookup];
  v11 = [performExternalLookup thenWithBlock:&__block_literal_global_33];

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