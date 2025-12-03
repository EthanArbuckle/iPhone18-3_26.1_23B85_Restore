@interface AMSUIWebLocalApproveAction
- (AMSUIWebLocalApproveAction)initWithJSObject:(id)object context:(id)context;
- (id)runAction;
@end

@implementation AMSUIWebLocalApproveAction

- (AMSUIWebLocalApproveAction)initWithJSObject:(id)object context:(id)context
{
  objectCopy = object;
  v12.receiver = self;
  v12.super_class = AMSUIWebLocalApproveAction;
  v7 = [(AMSUIWebAction *)&v12 initWithJSObject:objectCopy context:context];
  if (v7)
  {
    v8 = [objectCopy objectForKeyedSubscript:@"itemIdentifier"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v9 = v8;
    }

    else
    {
      v9 = 0;
    }

    itemIdentifier = v7->_itemIdentifier;
    v7->_itemIdentifier = v9;
  }

  return v7;
}

- (id)runAction
{
  v31 = *MEMORY[0x1E69E9840];
  v23.receiver = self;
  v23.super_class = AMSUIWebLocalApproveAction;
  runAction = [(AMSUIWebAction *)&v23 runAction];
  itemIdentifier = [(AMSUIWebLocalApproveAction *)self itemIdentifier];
  v5 = itemIdentifier == 0;

  if (v5)
  {
    mEMORY[0x1E698C968] = [MEMORY[0x1E698C968] sharedWebUIConfig];
    if (!mEMORY[0x1E698C968])
    {
      mEMORY[0x1E698C968] = [MEMORY[0x1E698C968] sharedConfig];
    }

    oSLogObject = [mEMORY[0x1E698C968] OSLogObject];
    if (os_log_type_enabled(oSLogObject, OS_LOG_TYPE_ERROR))
    {
      v16 = objc_opt_class();
      v17 = AMSLogKey();
      *buf = 138543618;
      *&buf[4] = v16;
      *&buf[12] = 2114;
      *&buf[14] = v17;
      _os_log_impl(&dword_1BB036000, oSLogObject, OS_LOG_TYPE_ERROR, "%{public}@: [%{public}@] No itemIdentifier found", buf, 0x16u);
    }

    v18 = MEMORY[0x1E698CAD0];
    v12 = AMSError();
    v13 = [v18 promiseWithError:v12];
  }

  else
  {
    v6 = objc_alloc_init(MEMORY[0x1E698CAD0]);
    v24 = 0;
    v25 = &v24;
    v26 = 0x2050000000;
    v7 = getAPRequestHandlerClass_softClass_0;
    v27 = getAPRequestHandlerClass_softClass_0;
    if (!getAPRequestHandlerClass_softClass_0)
    {
      *buf = MEMORY[0x1E69E9820];
      *&buf[8] = 3221225472;
      *&buf[16] = __getAPRequestHandlerClass_block_invoke_0;
      v29 = &unk_1E7F241B0;
      v30 = &v24;
      __getAPRequestHandlerClass_block_invoke_0(buf);
      v7 = v25[3];
    }

    v8 = v7;
    _Block_object_dispose(&v24, 8);
    itemIdentifier2 = [(AMSUIWebLocalApproveAction *)self itemIdentifier];
    v21[0] = MEMORY[0x1E69E9820];
    v21[1] = 3221225472;
    v21[2] = __39__AMSUIWebLocalApproveAction_runAction__block_invoke;
    v21[3] = &unk_1E7F24990;
    v21[4] = self;
    v10 = v6;
    v22 = v10;
    [v7 localApproveRequestWithItemIdentifier:itemIdentifier2 completion:v21];

    v11 = v22;
    v12 = v10;

    v13 = v12;
  }

  v19 = *MEMORY[0x1E69E9840];

  return v13;
}

void __39__AMSUIWebLocalApproveAction_runAction__block_invoke(uint64_t a1, void *a2)
{
  v21 = *MEMORY[0x1E69E9840];
  v3 = a2;
  if (v3)
  {
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
      v8 = AMSLogKey();
      *buf = 138543874;
      v16 = v7;
      v17 = 2114;
      v18 = v8;
      v19 = 2114;
      v20 = v3;
      _os_log_impl(&dword_1BB036000, v5, OS_LOG_TYPE_ERROR, "%{public}@: [%{public}@] APRequestHandler encountered error: %{public}@", buf, 0x20u);
    }
  }

  v9 = [MEMORY[0x1E696AD98] numberWithBool:{v3 == 0, @"approved"}];
  v13[1] = @"itemIdentifier";
  v14[0] = v9;
  v10 = [*(a1 + 32) itemIdentifier];
  v14[1] = v10;
  v11 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v14 forKeys:v13 count:2];

  [*(a1 + 40) finishWithResult:v11];
  v12 = *MEMORY[0x1E69E9840];
}

@end