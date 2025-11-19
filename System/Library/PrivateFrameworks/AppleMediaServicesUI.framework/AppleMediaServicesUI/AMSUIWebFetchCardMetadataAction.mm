@interface AMSUIWebFetchCardMetadataAction
- (AMSUIWebFetchCardMetadataAction)initWithJSObject:(id)a3 context:(id)a4;
- (id)runAction;
@end

@implementation AMSUIWebFetchCardMetadataAction

- (AMSUIWebFetchCardMetadataAction)initWithJSObject:(id)a3 context:(id)a4
{
  v6 = a3;
  v18.receiver = self;
  v18.super_class = AMSUIWebFetchCardMetadataAction;
  v7 = [(AMSUIWebAction *)&v18 initWithJSObject:v6 context:a4];
  if (v7)
  {
    v8 = [v6 objectForKeyedSubscript:@"cardArtworkSize"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v9 = v8;
    }

    else
    {
      v9 = 0;
    }

    cardArtworkSize = v7->_cardArtworkSize;
    v7->_cardArtworkSize = v9;

    v11 = [v6 objectForKeyedSubscript:@"passTypeIdentifier"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v12 = v11;
    }

    else
    {
      v12 = 0;
    }

    passTypeIdentifier = v7->_passTypeIdentifier;
    v7->_passTypeIdentifier = v12;

    v14 = [v6 objectForKeyedSubscript:@"serialNumber"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v15 = v14;
    }

    else
    {
      v15 = 0;
    }

    serialNumber = v7->_serialNumber;
    v7->_serialNumber = v15;
  }

  return v7;
}

- (id)runAction
{
  v40 = *MEMORY[0x1E69E9840];
  v34.receiver = self;
  v34.super_class = AMSUIWebFetchCardMetadataAction;
  v3 = [(AMSUIWebAction *)&v34 runAction];
  v4 = [(AMSUIWebAction *)self context];
  v5 = [v4 bag];

  if ([MEMORY[0x1E698C830] shouldUseExtendedEnrollmentWithBag:v5])
  {
    v6 = [(AMSUIWebFetchCardMetadataAction *)self passTypeIdentifier];
    if ([v6 isEqualToString:@"com.apple.AppleMediaServices.PassTypeIdentifier.AppleCard"])
    {
      v7 = +[AMSUICardMetadata appleCardIconString];
      v8 = [MEMORY[0x1E698C968] sharedWebUIConfig];
      v9 = v8;
      if (v7)
      {
        if (!v8)
        {
          v9 = [MEMORY[0x1E698C968] sharedConfig];
        }

        v10 = [v9 OSLogObject];
        if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
        {
          v11 = objc_opt_class();
          v12 = AMSLogKey();
          *buf = 138543618;
          v37 = v11;
          v38 = 2114;
          v39 = v12;
          _os_log_impl(&dword_1BB036000, v10, OS_LOG_TYPE_DEFAULT, "%{public}@: [%{public}@] Successfully retrieved the apple card icon.", buf, 0x16u);
        }

        v13 = objc_alloc_init(MEMORY[0x1E698C850]);
        [v13 setCardArtwork:v7];
        v14 = MEMORY[0x1E698CAD0];
        v15 = [v13 dictionary];
        v35 = v15;
        v16 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v35 count:1];
        v17 = [v14 promiseWithResult:v16];
      }

      else
      {
        if (!v8)
        {
          v9 = [MEMORY[0x1E698C968] sharedConfig];
        }

        v26 = [v9 OSLogObject];
        if (os_log_type_enabled(v26, OS_LOG_TYPE_ERROR))
        {
          v27 = objc_opt_class();
          v28 = AMSLogKey();
          *buf = 138543618;
          v37 = v27;
          v38 = 2114;
          v39 = v28;
          _os_log_impl(&dword_1BB036000, v26, OS_LOG_TYPE_ERROR, "%{public}@: [%{public}@] Failed for no apple card icon.", buf, 0x16u);
        }

        v29 = MEMORY[0x1E698CAD0];
        v13 = AMSError();
        v17 = [v29 promiseWithError:v13];
      }
    }

    else
    {
      v23 = objc_alloc_init(MEMORY[0x1E698CAD0]);
      v24 = [(AMSUIWebFetchCardMetadataAction *)self serialNumber];
      v25 = [(AMSUIWebFetchCardMetadataAction *)self cardArtworkSize];
      v32[0] = MEMORY[0x1E69E9820];
      v32[1] = 3221225472;
      v32[2] = __44__AMSUIWebFetchCardMetadataAction_runAction__block_invoke;
      v32[3] = &unk_1E7F261A0;
      v17 = v23;
      v33 = v17;
      [AMSUICardMetadata metadataForPassTypeIdentifier:v6 serialNumber:v24 cardArtworkSize:v25 completionHandler:v32];

      v7 = v33;
    }
  }

  else
  {
    v18 = [MEMORY[0x1E698C968] sharedWebUIConfig];
    if (!v18)
    {
      v18 = [MEMORY[0x1E698C968] sharedConfig];
    }

    v19 = [v18 OSLogObject];
    if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
    {
      v20 = objc_opt_class();
      v21 = AMSLogKey();
      *buf = 138543618;
      v37 = v20;
      v38 = 2114;
      v39 = v21;
      _os_log_impl(&dword_1BB036000, v19, OS_LOG_TYPE_ERROR, "%{public}@: [%{public}@] Failed for feature not enabled.", buf, 0x16u);
    }

    v22 = MEMORY[0x1E698CAD0];
    v6 = AMSError();
    v17 = [v22 promiseWithError:v6];
  }

  v30 = *MEMORY[0x1E69E9840];

  return v17;
}

void __44__AMSUIWebFetchCardMetadataAction_runAction__block_invoke(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = [a2 ams_mapWithTransform:&__block_literal_global_25];
  [v2 finishWithResult:v3];
}

@end