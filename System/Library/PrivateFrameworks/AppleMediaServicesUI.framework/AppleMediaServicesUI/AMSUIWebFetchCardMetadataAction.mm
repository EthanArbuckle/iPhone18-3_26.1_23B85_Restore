@interface AMSUIWebFetchCardMetadataAction
- (AMSUIWebFetchCardMetadataAction)initWithJSObject:(id)object context:(id)context;
- (id)runAction;
@end

@implementation AMSUIWebFetchCardMetadataAction

- (AMSUIWebFetchCardMetadataAction)initWithJSObject:(id)object context:(id)context
{
  objectCopy = object;
  v18.receiver = self;
  v18.super_class = AMSUIWebFetchCardMetadataAction;
  v7 = [(AMSUIWebAction *)&v18 initWithJSObject:objectCopy context:context];
  if (v7)
  {
    v8 = [objectCopy objectForKeyedSubscript:@"cardArtworkSize"];
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

    v11 = [objectCopy objectForKeyedSubscript:@"passTypeIdentifier"];
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

    v14 = [objectCopy objectForKeyedSubscript:@"serialNumber"];
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
  runAction = [(AMSUIWebAction *)&v34 runAction];
  context = [(AMSUIWebAction *)self context];
  v5 = [context bag];

  if ([MEMORY[0x1E698C830] shouldUseExtendedEnrollmentWithBag:v5])
  {
    passTypeIdentifier = [(AMSUIWebFetchCardMetadataAction *)self passTypeIdentifier];
    if ([passTypeIdentifier isEqualToString:@"com.apple.AppleMediaServices.PassTypeIdentifier.AppleCard"])
    {
      v7 = +[AMSUICardMetadata appleCardIconString];
      mEMORY[0x1E698C968] = [MEMORY[0x1E698C968] sharedWebUIConfig];
      mEMORY[0x1E698C968]2 = mEMORY[0x1E698C968];
      if (v7)
      {
        if (!mEMORY[0x1E698C968])
        {
          mEMORY[0x1E698C968]2 = [MEMORY[0x1E698C968] sharedConfig];
        }

        oSLogObject = [mEMORY[0x1E698C968]2 OSLogObject];
        if (os_log_type_enabled(oSLogObject, OS_LOG_TYPE_DEFAULT))
        {
          v11 = objc_opt_class();
          v12 = AMSLogKey();
          *buf = 138543618;
          v37 = v11;
          v38 = 2114;
          v39 = v12;
          _os_log_impl(&dword_1BB036000, oSLogObject, OS_LOG_TYPE_DEFAULT, "%{public}@: [%{public}@] Successfully retrieved the apple card icon.", buf, 0x16u);
        }

        v13 = objc_alloc_init(MEMORY[0x1E698C850]);
        [v13 setCardArtwork:v7];
        v14 = MEMORY[0x1E698CAD0];
        dictionary = [v13 dictionary];
        v35 = dictionary;
        v16 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v35 count:1];
        v17 = [v14 promiseWithResult:v16];
      }

      else
      {
        if (!mEMORY[0x1E698C968])
        {
          mEMORY[0x1E698C968]2 = [MEMORY[0x1E698C968] sharedConfig];
        }

        oSLogObject2 = [mEMORY[0x1E698C968]2 OSLogObject];
        if (os_log_type_enabled(oSLogObject2, OS_LOG_TYPE_ERROR))
        {
          v27 = objc_opt_class();
          v28 = AMSLogKey();
          *buf = 138543618;
          v37 = v27;
          v38 = 2114;
          v39 = v28;
          _os_log_impl(&dword_1BB036000, oSLogObject2, OS_LOG_TYPE_ERROR, "%{public}@: [%{public}@] Failed for no apple card icon.", buf, 0x16u);
        }

        v29 = MEMORY[0x1E698CAD0];
        v13 = AMSError();
        v17 = [v29 promiseWithError:v13];
      }
    }

    else
    {
      v23 = objc_alloc_init(MEMORY[0x1E698CAD0]);
      serialNumber = [(AMSUIWebFetchCardMetadataAction *)self serialNumber];
      cardArtworkSize = [(AMSUIWebFetchCardMetadataAction *)self cardArtworkSize];
      v32[0] = MEMORY[0x1E69E9820];
      v32[1] = 3221225472;
      v32[2] = __44__AMSUIWebFetchCardMetadataAction_runAction__block_invoke;
      v32[3] = &unk_1E7F261A0;
      v17 = v23;
      v33 = v17;
      [AMSUICardMetadata metadataForPassTypeIdentifier:passTypeIdentifier serialNumber:serialNumber cardArtworkSize:cardArtworkSize completionHandler:v32];

      v7 = v33;
    }
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
      v20 = objc_opt_class();
      v21 = AMSLogKey();
      *buf = 138543618;
      v37 = v20;
      v38 = 2114;
      v39 = v21;
      _os_log_impl(&dword_1BB036000, oSLogObject3, OS_LOG_TYPE_ERROR, "%{public}@: [%{public}@] Failed for feature not enabled.", buf, 0x16u);
    }

    v22 = MEMORY[0x1E698CAD0];
    passTypeIdentifier = AMSError();
    v17 = [v22 promiseWithError:passTypeIdentifier];
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