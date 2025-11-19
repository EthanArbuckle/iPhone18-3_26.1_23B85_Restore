@interface AMSMarketingItemParser
+ (id)_rawMarketingItemSelectionFromRawMarketingItems:(id)a3 serviceType:(id)a4 placement:(id)a5 engagementService:(id)a6;
+ (id)selectionFromMarketingItems:(id)a3;
+ (id)selectionFromRawMarketingItems:(id)a3 serviceType:(id)a4 placement:(id)a5;
@end

@implementation AMSMarketingItemParser

+ (id)selectionFromMarketingItems:(id)a3
{
  v19 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = objc_alloc_init(MEMORY[0x1E695DF70]);
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v6 = v4;
  v7 = [v6 countByEnumeratingWithState:&v14 objects:v18 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v15;
    do
    {
      for (i = 0; i != v8; ++i)
      {
        if (*v15 != v9)
        {
          objc_enumerationMutation(v6);
        }

        v11 = [*(*(&v14 + 1) + 8 * i) rawValues];
        [v5 addObject:v11];
      }

      v8 = [v6 countByEnumeratingWithState:&v14 objects:v18 count:16];
    }

    while (v8);
  }

  v12 = [a1 selectionFromRawMarketingItems:v5];

  return v12;
}

+ (id)selectionFromRawMarketingItems:(id)a3 serviceType:(id)a4 placement:(id)a5
{
  v8 = a5;
  v9 = a4;
  v10 = a3;
  v11 = objc_alloc_init(AMSEngagement);
  v12 = [a1 _rawMarketingItemSelectionFromRawMarketingItems:v10 serviceType:v9 placement:v8 engagementService:v11];

  return v12;
}

+ (id)_rawMarketingItemSelectionFromRawMarketingItems:(id)a3 serviceType:(id)a4 placement:(id)a5 engagementService:(id)a6
{
  v36[4] = *MEMORY[0x1E69E9840];
  v10 = a3;
  v11 = a4;
  v12 = a5;
  v13 = a6;
  if ([v10 count])
  {
    v35[0] = @"kind";
    v35[1] = @"serviceType";
    v14 = &stru_1F071BA78;
    if (v11)
    {
      v15 = v11;
    }

    else
    {
      v15 = &stru_1F071BA78;
    }

    v36[0] = @"AMSMarketingItemParser";
    v36[1] = v15;
    if (v12)
    {
      v14 = v12;
    }

    v35[2] = @"placement";
    v35[3] = @"items";
    v36[2] = v14;
    v36[3] = v10;
    v16 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v36 forKeys:v35 count:4];
    v17 = +[AMSLogConfig sharedConfig];
    if (!v17)
    {
      v17 = +[AMSLogConfig sharedConfig];
    }

    v18 = [v17 OSLogObject];
    if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
    {
      v19 = objc_opt_class();
      v20 = AMSLogKey();
      *buf = 138543618;
      v32 = v19;
      v33 = 2114;
      v34 = v20;
      _os_log_impl(&dword_192869000, v18, OS_LOG_TYPE_DEFAULT, "%{public}@: [%{public}@] Parsing marketing items", buf, 0x16u);
    }

    v21 = [v13 enqueueData:v16];
    v22 = objc_alloc_init(AMSMutablePromise);
    v27[0] = MEMORY[0x1E69E9820];
    v27[1] = 3221225472;
    v27[2] = __114__AMSMarketingItemParser__rawMarketingItemSelectionFromRawMarketingItems_serviceType_placement_engagementService___block_invoke;
    v27[3] = &unk_1E73B8C28;
    v28 = v10;
    v30 = a1;
    v23 = v22;
    v29 = v23;
    [v21 addFinishBlock:v27];
    v24 = v29;
    v25 = v23;
  }

  else
  {
    v16 = AMSError(7, @"No marketing items found", @"Found no marketing items for the given account", 0);
    v25 = [AMSPromise promiseWithError:v16];
  }

  return v25;
}

void __114__AMSMarketingItemParser__rawMarketingItemSelectionFromRawMarketingItems_serviceType_placement_engagementService___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v42 = *MEMORY[0x1E69E9840];
  v5 = a3;
  v6 = [a2 data];
  v7 = [v6 objectForKeyedSubscript:@"item"];

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v8 = v7;

    v9 = v5 != 0;
    if (!v5 && v8)
    {
      v10 = [v8 count];
      v11 = +[AMSLogConfig sharedConfig];
      v12 = v11;
      if (v10)
      {
        if (!v11)
        {
          v12 = +[AMSLogConfig sharedConfig];
        }

        v13 = [v12 OSLogObject];
        if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
        {
          v14 = objc_opt_class();
          v15 = AMSLogKey();
          v34 = 138543618;
          v35 = v14;
          v36 = 2114;
          v37 = v15;
          _os_log_impl(&dword_192869000, v13, OS_LOG_TYPE_DEFAULT, "%{public}@: [%{public}@] Marketing item selected", &v34, 0x16u);
        }

        v16 = *(a1 + 40);
        v17 = [[AMSMarketingItem alloc] initWithDictionary:v8];
        [v16 finishWithResult:v17];
      }

      else
      {
        if (!v11)
        {
          v12 = +[AMSLogConfig sharedConfig];
        }

        v30 = [v12 OSLogObject];
        if (os_log_type_enabled(v30, OS_LOG_TYPE_DEFAULT))
        {
          v31 = objc_opt_class();
          v32 = AMSLogKey();
          v34 = 138543618;
          v35 = v31;
          v36 = 2114;
          v37 = v32;
          _os_log_impl(&dword_192869000, v30, OS_LOG_TYPE_DEFAULT, "%{public}@: [%{public}@] No marketing item selected", &v34, 0x16u);
        }

        v33 = *(a1 + 40);
        v17 = AMSError(7, @"No marketing item", @"Engagement did not select a marketing item", 0);
        [v33 finishWithError:v17];
      }

      goto LABEL_26;
    }
  }

  else
  {

    v8 = 0;
    v9 = v5 != 0;
  }

  if ([*(a1 + 32) count])
  {
    v18 = [AMSMarketingItem alloc];
    v19 = [*(a1 + 32) firstObject];
    v17 = [(AMSMarketingItem *)v18 initWithDictionary:v19];
  }

  else
  {
    v17 = 0;
  }

  v20 = &stru_1F071BA78;
  if (!v17)
  {
    v20 = @" NOT";
  }

  v21 = v20;
  v22 = +[AMSLogConfig sharedConfig];
  if (!v22)
  {
    v22 = +[AMSLogConfig sharedConfig];
  }

  v23 = [v22 OSLogObject];
  if (os_log_type_enabled(v23, OS_LOG_TYPE_ERROR))
  {
    v24 = objc_opt_class();
    v25 = AMSLogKey();
    v26 = v25;
    v34 = 138544130;
    v27 = @"<noerror>";
    v35 = v24;
    if (v9)
    {
      v27 = v5;
    }

    v36 = 2114;
    v37 = v25;
    v38 = 2114;
    v39 = v21;
    v40 = 2114;
    v41 = v27;
    _os_log_impl(&dword_192869000, v23, OS_LOG_TYPE_ERROR, "%{public}@: [%{public}@] Parsing failed. Will%{public}@ fall back to first item. %{public}@", &v34, 0x2Au);
  }

  v28 = *(a1 + 40);
  if (v17)
  {
    [v28 finishWithResult:v17];
  }

  else
  {
    v29 = AMSError(7, @"No marketing item", @"Engagement did not select a marketing item", 0);
    [v28 finishWithError:v29];
  }

LABEL_26:
}

@end