@interface AMSUIWebCampaignAttributionAction
+ (id)_campaignAttributionTaskForURL:(id)l;
- (AMSUIWebCampaignAttributionAction)initWithJSObject:(id)object context:(id)context;
- (id)runAction;
@end

@implementation AMSUIWebCampaignAttributionAction

- (AMSUIWebCampaignAttributionAction)initWithJSObject:(id)object context:(id)context
{
  v42 = *MEMORY[0x1E69E9840];
  objectCopy = object;
  v40.receiver = self;
  v40.super_class = AMSUIWebCampaignAttributionAction;
  v8 = [(AMSUIWebAction *)&v40 initWithJSObject:objectCopy context:context];
  v9 = v8;
  if (v8)
  {
    context = [(AMSUIWebAction *)v8 context];
    v11 = [objectCopy objectForKeyedSubscript:@"account"];
    v12 = [context iTunesAccountFromJSAccount:v11];
    account = v12;
    if (!v12)
    {
      context2 = [(AMSUIWebAction *)v9 context];
      account = [context2 account];
    }

    objc_storeStrong(&v9->_account, account);
    if (!v12)
    {
    }

    v14 = [objectCopy objectForKeyedSubscript:@"additionalQueryItems"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v15 = v14;
    }

    else
    {
      v15 = 0;
    }

    array = [MEMORY[0x1E695DF70] array];
    if (array)
    {
      v35 = v9;
      v38 = 0u;
      v39 = 0u;
      v36 = 0u;
      v37 = 0u;
      v34 = v15;
      v17 = v15;
      v18 = [v17 countByEnumeratingWithState:&v36 objects:v41 count:16];
      if (v18)
      {
        v19 = v18;
        v20 = *v37;
        do
        {
          for (i = 0; i != v19; ++i)
          {
            if (*v37 != v20)
            {
              objc_enumerationMutation(v17);
            }

            v22 = *(*(&v36 + 1) + 8 * i);
            v23 = [v17 objectForKeyedSubscript:v22];
            objc_opt_class();
            if (objc_opt_isKindOfClass())
            {
              v24 = v23;
            }

            else
            {
              v24 = 0;
            }

            if (v24)
            {
              v25 = [MEMORY[0x1E696AF60] queryItemWithName:v22 value:v24];
              [array addObject:v25];
            }
          }

          v19 = [v17 countByEnumeratingWithState:&v36 objects:v41 count:16];
        }

        while (v19);
      }

      v26 = [MEMORY[0x1E695DEC8] arrayWithArray:array];
      v9 = v35;
      additionalQueryItems = v35->_additionalQueryItems;
      v35->_additionalQueryItems = v26;

      v15 = v34;
    }

    v28 = [objectCopy objectForKeyedSubscript:@"url"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v29 = v28;
    }

    else
    {
      v29 = 0;
    }

    if (v29)
    {
      v30 = [MEMORY[0x1E695DFF8] URLWithString:v29];
      URL = v9->_URL;
      v9->_URL = v30;
    }
  }

  v32 = *MEMORY[0x1E69E9840];
  return v9;
}

- (id)runAction
{
  v53 = *MEMORY[0x1E69E9840];
  v47.receiver = self;
  v47.super_class = AMSUIWebCampaignAttributionAction;
  runAction = [(AMSUIWebAction *)&v47 runAction];
  v4 = [(AMSUIWebCampaignAttributionAction *)self URL];

  if (v4)
  {
    if (runAction_ams_once_token___COUNTER__ != -1)
    {
      [AMSUIWebCampaignAttributionAction runAction];
    }

    v5 = runAction_ams_once_object___COUNTER__;
    v6 = objc_alloc(MEMORY[0x1E696AF20]);
    v7 = [(AMSUIWebCampaignAttributionAction *)self URL];
    v8 = [v6 initWithURL:v7 resolvingAgainstBaseURL:0];

    if (v8)
    {
      v45 = 0u;
      v46 = 0u;
      v43 = 0u;
      v44 = 0u;
      queryItems = [v8 queryItems];
      v10 = [queryItems countByEnumeratingWithState:&v43 objects:v48 count:16];
      if (v10)
      {
        v11 = v10;
        v12 = *v44;
        while (2)
        {
          for (i = 0; i != v11; ++i)
          {
            if (*v44 != v12)
            {
              objc_enumerationMutation(queryItems);
            }

            name = [*(*(&v43 + 1) + 8 * i) name];
            v15 = [v5 containsObject:name];

            if (v15)
            {

              mEMORY[0x1E698C968] = [MEMORY[0x1E698C968] sharedWebUIConfig];
              if (!mEMORY[0x1E698C968])
              {
                mEMORY[0x1E698C968] = [MEMORY[0x1E698C968] sharedConfig];
              }

              oSLogObject = [mEMORY[0x1E698C968] OSLogObject];
              if (os_log_type_enabled(oSLogObject, OS_LOG_TYPE_DEFAULT))
              {
                v29 = objc_opt_class();
                v30 = AMSLogKey();
                *buf = 138543618;
                v50 = v29;
                v51 = 2114;
                v52 = v30;
                _os_log_impl(&dword_1BB036000, oSLogObject, OS_LOG_TYPE_DEFAULT, "%{public}@: [%{public}@] Beginning campaign attribution task", buf, 0x16u);
              }

              v31 = objc_opt_class();
              v32 = [(AMSUIWebCampaignAttributionAction *)self URL];
              v33 = [v31 _campaignAttributionTaskForURL:v32];

              account = [(AMSUIWebCampaignAttributionAction *)self account];
              [v33 setAccount:account];

              additionalQueryItems = [(AMSUIWebCampaignAttributionAction *)self additionalQueryItems];
              [v33 setAdditionalQueryItems:additionalQueryItems];

              perform = [v33 perform];
              v26 = [perform thenWithBlock:&__block_literal_global_82];

              goto LABEL_34;
            }
          }

          v11 = [queryItems countByEnumeratingWithState:&v43 objects:v48 count:16];
          if (v11)
          {
            continue;
          }

          break;
        }
      }

      mEMORY[0x1E698C968]2 = [MEMORY[0x1E698C968] sharedWebUIConfig];
      if (!mEMORY[0x1E698C968]2)
      {
        mEMORY[0x1E698C968]2 = [MEMORY[0x1E698C968] sharedConfig];
      }

      oSLogObject2 = [mEMORY[0x1E698C968]2 OSLogObject];
      if (os_log_type_enabled(oSLogObject2, OS_LOG_TYPE_ERROR))
      {
        v18 = objc_opt_class();
        v19 = AMSLogKey();
        *buf = 138543618;
        v50 = v18;
        v51 = 2114;
        v52 = v19;
        _os_log_impl(&dword_1BB036000, oSLogObject2, OS_LOG_TYPE_ERROR, "%{public}@: [%{public}@] URL does not contain any known campaign or affiliate query parameters", buf, 0x16u);
      }

      v20 = MEMORY[0x1E698CAD0];
    }

    else
    {
      mEMORY[0x1E698C968]3 = [MEMORY[0x1E698C968] sharedWebUIConfig];
      if (!mEMORY[0x1E698C968]3)
      {
        mEMORY[0x1E698C968]3 = [MEMORY[0x1E698C968] sharedConfig];
      }

      oSLogObject3 = [mEMORY[0x1E698C968]3 OSLogObject];
      if (os_log_type_enabled(oSLogObject3, OS_LOG_TYPE_ERROR))
      {
        v39 = objc_opt_class();
        v40 = AMSLogKey();
        *buf = 138543618;
        v50 = v39;
        v51 = 2114;
        v52 = v40;
        _os_log_impl(&dword_1BB036000, oSLogObject3, OS_LOG_TYPE_ERROR, "%{public}@: [%{public}@] Failed to convert URL to components", buf, 0x16u);
      }

      v20 = MEMORY[0x1E698CAD0];
    }

    v33 = AMSError();
    v26 = [v20 promiseWithError:v33];
LABEL_34:
  }

  else
  {
    mEMORY[0x1E698C968]4 = [MEMORY[0x1E698C968] sharedWebUIConfig];
    if (!mEMORY[0x1E698C968]4)
    {
      mEMORY[0x1E698C968]4 = [MEMORY[0x1E698C968] sharedConfig];
    }

    oSLogObject4 = [mEMORY[0x1E698C968]4 OSLogObject];
    if (os_log_type_enabled(oSLogObject4, OS_LOG_TYPE_ERROR))
    {
      v23 = objc_opt_class();
      v24 = AMSLogKey();
      *buf = 138543618;
      v50 = v23;
      v51 = 2114;
      v52 = v24;
      _os_log_impl(&dword_1BB036000, oSLogObject4, OS_LOG_TYPE_ERROR, "%{public}@: [%{public}@] Invalid URL passed", buf, 0x16u);
    }

    v25 = MEMORY[0x1E698CAD0];
    v5 = AMSError();
    v26 = [v25 promiseWithError:v5];
  }

  v41 = *MEMORY[0x1E69E9840];

  return v26;
}

uint64_t __46__AMSUIWebCampaignAttributionAction_runAction__block_invoke()
{
  runAction_ams_once_object___COUNTER__ = [MEMORY[0x1E695DFD8] setWithArray:&unk_1F394ABC0];

  return MEMORY[0x1EEE66BB8]();
}

id __46__AMSUIWebCampaignAttributionAction_runAction__block_invoke_79(uint64_t a1, void *a2)
{
  v15[1] = *MEMORY[0x1E69E9840];
  v2 = MEMORY[0x1E695DF90];
  v14 = @"success";
  v15[0] = MEMORY[0x1E695E118];
  v3 = MEMORY[0x1E695DF20];
  v4 = a2;
  v5 = [v3 dictionaryWithObjects:v15 forKeys:&v14 count:1];
  v6 = [v2 dictionaryWithDictionary:v5];

  v7 = [v4 redirectURL];

  v8 = [v7 absoluteString];

  if (v8)
  {
    [v6 setObject:v8 forKeyedSubscript:@"redirectURL"];
  }

  v9 = MEMORY[0x1E698CAD0];
  v10 = [MEMORY[0x1E695DF20] dictionaryWithDictionary:v6];
  v11 = [v9 promiseWithResult:v10];

  v12 = *MEMORY[0x1E69E9840];

  return v11;
}

+ (id)_campaignAttributionTaskForURL:(id)l
{
  v3 = MEMORY[0x1E698C820];
  lCopy = l;
  createBagForSubProfile = [v3 createBagForSubProfile];
  v6 = [objc_alloc(MEMORY[0x1E698C820]) initWithURL:lCopy bag:createBagForSubProfile];

  return v6;
}

@end