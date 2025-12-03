@interface AMSUIWebCheckDownloadQueueAction
- (AMSUIWebCheckDownloadQueueAction)initWithJSObject:(id)object context:(id)context;
- (id)runAction;
@end

@implementation AMSUIWebCheckDownloadQueueAction

- (AMSUIWebCheckDownloadQueueAction)initWithJSObject:(id)object context:(id)context
{
  objectCopy = object;
  v11.receiver = self;
  v11.super_class = AMSUIWebCheckDownloadQueueAction;
  v7 = [(AMSUIWebAction *)&v11 initWithJSObject:objectCopy context:context];
  if (v7)
  {
    v8 = [objectCopy objectForKeyedSubscript:@"contentType"];
    contentType = v7->_contentType;
    v7->_contentType = v8;
  }

  return v7;
}

- (id)runAction
{
  v29 = *MEMORY[0x1E69E9840];
  v21.receiver = self;
  v21.super_class = AMSUIWebCheckDownloadQueueAction;
  runAction = [(AMSUIWebAction *)&v21 runAction];
  contentType = [(AMSUIWebCheckDownloadQueueAction *)self contentType];
  mEMORY[0x1E698C968] = [MEMORY[0x1E698C968] sharedWebUIConfig];
  mEMORY[0x1E698C968]2 = mEMORY[0x1E698C968];
  if (contentType)
  {
    if (!mEMORY[0x1E698C968])
    {
      mEMORY[0x1E698C968]2 = [MEMORY[0x1E698C968] sharedConfig];
    }

    oSLogObject = [mEMORY[0x1E698C968]2 OSLogObject];
    if (os_log_type_enabled(oSLogObject, OS_LOG_TYPE_DEFAULT))
    {
      v8 = objc_opt_class();
      v9 = AMSLogKey();
      *buf = 138543618;
      *&buf[4] = v8;
      *&buf[12] = 2114;
      *&buf[14] = v9;
      _os_log_impl(&dword_1BB036000, oSLogObject, OS_LOG_TYPE_DEFAULT, "%{public}@: [%{public}@] Checking download queue", buf, 0x16u);
    }

    v22 = 0;
    v23 = &v22;
    v24 = 0x2050000000;
    v10 = getAPRequestHandlerClass_softClass;
    v25 = getAPRequestHandlerClass_softClass;
    if (!getAPRequestHandlerClass_softClass)
    {
      *buf = MEMORY[0x1E69E9820];
      *&buf[8] = 3221225472;
      *&buf[16] = __getAPRequestHandlerClass_block_invoke;
      v27 = &unk_1E7F241B0;
      v28 = &v22;
      __getAPRequestHandlerClass_block_invoke(buf);
      v10 = v23[3];
    }

    v11 = v10;
    _Block_object_dispose(&v22, 8);
    if (objc_opt_respondsToSelector())
    {
      longLongValue = [contentType longLongValue];
    }

    else
    {
      longLongValue = 0;
    }

    [v10 checkDownloadQueueWithContentType:longLongValue];
    v18 = [MEMORY[0x1E698CAD0] promiseWithResult:MEMORY[0x1E695E118]];
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
      v14 = objc_opt_class();
      v15 = AMSLogKey();
      *buf = 138543618;
      *&buf[4] = v14;
      *&buf[12] = 2114;
      *&buf[14] = v15;
      _os_log_impl(&dword_1BB036000, oSLogObject2, OS_LOG_TYPE_ERROR, "%{public}@: [%{public}@] Failed to check download queue. Content type is missing", buf, 0x16u);
    }

    v16 = MEMORY[0x1E698CAD0];
    v17 = AMSError();
    v18 = [v16 promiseWithError:v17];
  }

  v19 = *MEMORY[0x1E69E9840];

  return v18;
}

@end