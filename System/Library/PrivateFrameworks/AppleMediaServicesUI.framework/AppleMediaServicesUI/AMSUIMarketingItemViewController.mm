@interface AMSUIMarketingItemViewController
+ (AMSBagKeySet)bagKeySet;
+ (id)createBagForSubProfile;
- (AMSUIMarketingItemViewController)initWithMarketingItem:(id)a3 bag:(id)a4;
- (AMSUIMarketingItemViewController)initWithServiceType:(id)a3 placement:(id)a4 account:(id)a5 bag:(id)a6;
- (AMSUIMarketingItemViewController)initWithServiceType:(id)a3 placement:(id)a4 bag:(id)a5;
- (NSString)offerHints;
- (NSString)seed;
- (id)_performCampaignAttributionWithBag:(id)a3;
- (void)_performCampaignAttributionIfNeeded;
- (void)_setInternalClientOptionsValue:(id)a3 forKey:(id)a4;
@end

@implementation AMSUIMarketingItemViewController

- (AMSUIMarketingItemViewController)initWithMarketingItem:(id)a3 bag:(id)a4
{
  v16[1] = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = a4;
  v8 = [v7 URLForKey:@"marketingItemDynamicUIUrl"];
  v14.receiver = self;
  v14.super_class = AMSUIMarketingItemViewController;
  v9 = [(AMSUIDynamicViewController *)&v14 initWithBag:v7 bagValue:v8];

  if (v9)
  {
    [(AMSUIMarketingItemViewController *)v9 setOriginalBag:v7];
    [(AMSUIMarketingItemViewController *)v9 _performCampaignAttributionIfNeeded];
    v15 = @"marketingItem";
    v10 = [v6 rawValues];
    v16[0] = v10;
    v11 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v16 forKeys:&v15 count:1];
    [(AMSUIDynamicViewController *)v9 setInternalClientOptions:v11];
  }

  v12 = *MEMORY[0x1E69E9840];
  return v9;
}

- (AMSUIMarketingItemViewController)initWithServiceType:(id)a3 placement:(id)a4 bag:(id)a5
{
  v18[2] = *MEMORY[0x1E69E9840];
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v11 = [v10 URLForKey:@"marketingItemDynamicUIUrl"];
  v16.receiver = self;
  v16.super_class = AMSUIMarketingItemViewController;
  v12 = [(AMSUIDynamicViewController *)&v16 initWithBag:v10 bagValue:v11];

  if (v12)
  {
    [(AMSUIMarketingItemViewController *)v12 setOriginalBag:v10];
    [(AMSUIMarketingItemViewController *)v12 _performCampaignAttributionIfNeeded];
    v17[0] = @"serviceType";
    v17[1] = @"placement";
    v18[0] = v8;
    v18[1] = v9;
    v13 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v18 forKeys:v17 count:2];
    [(AMSUIDynamicViewController *)v12 setInternalClientOptions:v13];
  }

  v14 = *MEMORY[0x1E69E9840];
  return v12;
}

- (NSString)offerHints
{
  v2 = [(AMSUIDynamicViewController *)self internalClientOptions];
  v3 = [v2 objectForKeyedSubscript:@"offerHints"];

  return v3;
}

- (NSString)seed
{
  v2 = [(AMSUIDynamicViewController *)self internalClientOptions];
  v3 = [v2 objectForKeyedSubscript:@"seed"];

  return v3;
}

- (void)_setInternalClientOptionsValue:(id)a3 forKey:(id)a4
{
  v6 = a4;
  v7 = a3;
  v8 = [(AMSUIDynamicViewController *)self internalClientOptions];
  v9 = [v8 mutableCopy];

  [v9 setObject:v7 forKeyedSubscript:v6];
  [(AMSUIDynamicViewController *)self setInternalClientOptions:v9];
}

- (void)_performCampaignAttributionIfNeeded
{
  v15 = *MEMORY[0x1E69E9840];
  v3 = [(AMSUIMarketingItemViewController *)self campaignQueryParameters];
  v4 = [v3 count];

  if (v4)
  {
    v5 = [(AMSUIMarketingItemViewController *)self originalBag];
    v6 = [(AMSUIMarketingItemViewController *)self _performCampaignAttributionWithBag:v5];
    v10[0] = MEMORY[0x1E69E9820];
    v10[1] = 3221225472;
    v10[2] = __71__AMSUIMarketingItemViewController__performCampaignAttributionIfNeeded__block_invoke;
    v10[3] = &unk_1E7F24FB0;
    v10[4] = self;
    [v6 addFinishBlock:v10];
  }

  else
  {
    v5 = [MEMORY[0x1E698C968] sharedConfig];
    if (!v5)
    {
      v5 = [MEMORY[0x1E698C968] sharedConfig];
    }

    v6 = [v5 OSLogObject];
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      v7 = objc_opt_class();
      v8 = AMSLogKey();
      *buf = 138543618;
      v12 = v7;
      v13 = 2114;
      v14 = v8;
      _os_log_impl(&dword_1BB036000, v6, OS_LOG_TYPE_DEFAULT, "%{public}@: [%{public}@] No campaign query parameters provided", buf, 0x16u);
    }
  }

  v9 = *MEMORY[0x1E69E9840];
}

void __71__AMSUIMarketingItemViewController__performCampaignAttributionIfNeeded__block_invoke(uint64_t a1, uint64_t a2, void *a3)
{
  v21 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = [MEMORY[0x1E698C968] sharedConfig];
  v6 = v5;
  if (v4)
  {
    if (!v5)
    {
      v6 = [MEMORY[0x1E698C968] sharedConfig];
    }

    v7 = [v6 OSLogObject];
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      v8 = *(a1 + 32);
      v9 = objc_opt_class();
      v10 = AMSLogKey();
      v11 = AMSLogableError();
      v15 = 138543874;
      v16 = v9;
      v17 = 2114;
      v18 = v10;
      v19 = 2114;
      v20 = v11;
      _os_log_impl(&dword_1BB036000, v7, OS_LOG_TYPE_ERROR, "%{public}@: [%{public}@] Campaign attribution failed with error: %{public}@", &v15, 0x20u);

LABEL_10:
    }
  }

  else
  {
    if (!v5)
    {
      v6 = [MEMORY[0x1E698C968] sharedConfig];
    }

    v7 = [v6 OSLogObject];
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      v12 = *(a1 + 32);
      v13 = objc_opt_class();
      v10 = AMSLogKey();
      v15 = 138543618;
      v16 = v13;
      v17 = 2114;
      v18 = v10;
      _os_log_impl(&dword_1BB036000, v7, OS_LOG_TYPE_DEFAULT, "%{public}@: [%{public}@] Campaign attribution completed successfully", &v15, 0x16u);
      goto LABEL_10;
    }
  }

  v14 = *MEMORY[0x1E69E9840];
}

- (id)_performCampaignAttributionWithBag:(id)a3
{
  v25 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = AMSLogKey();
  v6 = [MEMORY[0x1E698C968] sharedConfig];
  if (!v6)
  {
    v6 = [MEMORY[0x1E698C968] sharedConfig];
  }

  v7 = [v6 OSLogObject];
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    v8 = objc_opt_class();
    v9 = AMSLogKey();
    v10 = [(AMSUIMarketingItemViewController *)self campaignQueryParameters];
    *buf = 138543874;
    v20 = v8;
    v21 = 2114;
    v22 = v9;
    v23 = 2112;
    v24 = v10;
    _os_log_impl(&dword_1BB036000, v7, OS_LOG_TYPE_DEFAULT, "%{public}@: [%{public}@] Found campaign query parameters, kicking off Campaign Attribution: %@", buf, 0x20u);
  }

  v11 = [v4 URLForKey:@"marketingItemDynamicUIUrl"];
  v12 = [v11 valuePromise];
  v17[0] = MEMORY[0x1E69E9820];
  v17[1] = 3221225472;
  v17[2] = __71__AMSUIMarketingItemViewController__performCampaignAttributionWithBag___block_invoke;
  v17[3] = &unk_1E7F24FD8;
  v17[4] = self;
  v18 = v4;
  v13 = v4;
  v14 = [v12 continueWithBlock:v17];

  v15 = *MEMORY[0x1E69E9840];

  return v14;
}

id __71__AMSUIMarketingItemViewController__performCampaignAttributionWithBag___block_invoke(uint64_t a1, uint64_t a2, void *a3)
{
  v66 = *MEMORY[0x1E69E9840];
  v5 = a3;
  v6 = v5;
  if (!a2 || v5)
  {
    v13 = [MEMORY[0x1E698C968] sharedConfig];
    if (!v13)
    {
      v13 = [MEMORY[0x1E698C968] sharedConfig];
    }

    v14 = [v13 OSLogObject];
    if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
    {
      v15 = *(a1 + 32);
      v16 = objc_opt_class();
      v17 = AMSLogKey();
      v18 = AMSLogableError();
      *buf = 138543874;
      v61 = v16;
      v62 = 2114;
      v63 = v17;
      v64 = 2114;
      v65 = v18;
      _os_log_impl(&dword_1BB036000, v14, OS_LOG_TYPE_ERROR, "%{public}@: [%{public}@] Failed to get dynamic UI URL for campaign attribution: %{public}@", buf, 0x20u);
    }

    v19 = [MEMORY[0x1E698CAD0] promiseWithError:v6];
  }

  else
  {
    v7 = [MEMORY[0x1E696AF20] componentsWithURL:a2 resolvingAgainstBaseURL:0];
    v8 = v7;
    if (v7)
    {
      v9 = [v7 queryItems];
      v10 = [v9 mutableCopy];
      v11 = v10;
      v54 = v8;
      if (v10)
      {
        v12 = v10;
      }

      else
      {
        v12 = [MEMORY[0x1E695DF70] array];
      }

      v27 = v12;

      v57 = 0u;
      v58 = 0u;
      v55 = 0u;
      v56 = 0u;
      v28 = [*(a1 + 32) campaignQueryParameters];
      v29 = [v28 countByEnumeratingWithState:&v55 objects:v59 count:16];
      if (v29)
      {
        v30 = v29;
        v31 = *v56;
        do
        {
          for (i = 0; i != v30; ++i)
          {
            if (*v56 != v31)
            {
              objc_enumerationMutation(v28);
            }

            v33 = *(*(&v55 + 1) + 8 * i);
            v34 = [*(a1 + 32) campaignQueryParameters];
            v35 = [v34 objectForKeyedSubscript:v33];

            objc_opt_class();
            if (objc_opt_isKindOfClass())
            {
              v36 = [MEMORY[0x1E696AF60] queryItemWithName:v33 value:v35];
              [v27 addObject:v36];
            }
          }

          v30 = [v28 countByEnumeratingWithState:&v55 objects:v59 count:16];
        }

        while (v30);
      }

      v8 = v54;
      v26 = v27;
      [v54 setQueryItems:v27];
      v37 = [v54 URL];
      v38 = [MEMORY[0x1E698C968] sharedConfig];
      v39 = v38;
      if (v37)
      {
        if (!v38)
        {
          v39 = [MEMORY[0x1E698C968] sharedConfig];
        }

        v40 = [v39 OSLogObject];
        if (os_log_type_enabled(v40, OS_LOG_TYPE_DEFAULT))
        {
          v41 = *(a1 + 32);
          v42 = objc_opt_class();
          v43 = AMSLogKey();
          *buf = 138543874;
          v61 = v42;
          v62 = 2114;
          v63 = v43;
          v64 = 2112;
          v65 = v37;
          _os_log_impl(&dword_1BB036000, v40, OS_LOG_TYPE_DEFAULT, "%{public}@: [%{public}@] Calling campaign task with URL: %@", buf, 0x20u);
        }

        v44 = [objc_alloc(MEMORY[0x1E698C820]) initWithURL:v37 bag:*(a1 + 40)];
        v45 = [*(a1 + 32) account];
        [v44 setAccount:v45];

        v46 = [v44 perform];
      }

      else
      {
        if (!v38)
        {
          v39 = [MEMORY[0x1E698C968] sharedConfig];
        }

        v47 = [v39 OSLogObject];
        if (os_log_type_enabled(v47, OS_LOG_TYPE_ERROR))
        {
          v48 = *(a1 + 32);
          v49 = objc_opt_class();
          v50 = AMSLogKey();
          *buf = 138543618;
          v61 = v49;
          v62 = 2114;
          v63 = v50;
          _os_log_impl(&dword_1BB036000, v47, OS_LOG_TYPE_ERROR, "%{public}@: [%{public}@] Failed to construct URL with campaign attribution query parameters", buf, 0x16u);
        }

        v51 = MEMORY[0x1E698CAD0];
        v44 = AMSError();
        v46 = [v51 promiseWithError:v44];
      }

      v19 = v46;

      v6 = 0;
    }

    else
    {
      v20 = [MEMORY[0x1E698C968] sharedConfig];
      if (!v20)
      {
        v20 = [MEMORY[0x1E698C968] sharedConfig];
      }

      v21 = [v20 OSLogObject];
      if (os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
      {
        v22 = *(a1 + 32);
        v23 = objc_opt_class();
        v24 = AMSLogKey();
        *buf = 138543618;
        v61 = v23;
        v62 = 2114;
        v63 = v24;
        _os_log_impl(&dword_1BB036000, v21, OS_LOG_TYPE_ERROR, "%{public}@: [%{public}@] Failed to create URL components for campaign attribution", buf, 0x16u);
      }

      v25 = MEMORY[0x1E698CAD0];
      v26 = AMSError();
      v19 = [v25 promiseWithError:v26];
    }
  }

  v52 = *MEMORY[0x1E69E9840];

  return v19;
}

+ (AMSBagKeySet)bagKeySet
{
  v2 = objc_alloc_init(MEMORY[0x1E698CA40]);
  [v2 addBagKey:@"marketingItemDynamicUIUrl" valueType:5 defaultValue:@"https://amsui.apple.com/dynamic/marketing#route=marketingItem"];
  v3 = +[AMSUIDynamicViewController bagKeySet];
  [v2 unionBagKeySet:v3];

  return v2;
}

+ (id)createBagForSubProfile
{
  v2 = MEMORY[0x1E698C7E0];
  v3 = [objc_opt_class() bagKeySet];
  v4 = [objc_opt_class() bagSubProfile];
  v5 = [objc_opt_class() bagSubProfileVersion];
  [v2 registerBagKeySet:v3 forProfile:v4 profileVersion:v5];

  v6 = MEMORY[0x1E698C7D8];
  v7 = [objc_opt_class() bagSubProfile];
  v8 = [objc_opt_class() bagSubProfileVersion];
  v9 = [v6 bagForProfile:v7 profileVersion:v8];

  return v9;
}

- (AMSUIMarketingItemViewController)initWithServiceType:(id)a3 placement:(id)a4 account:(id)a5 bag:(id)a6
{
  v10 = a5;
  v11 = [(AMSUIMarketingItemViewController *)self initWithServiceType:a3 placement:a4 bag:a6];
  v12 = v11;
  if (v11)
  {
    [(AMSUIDynamicViewController *)v11 setAccount:v10];
  }

  return v12;
}

@end