@interface AMSUIWebODIAssessmentFeedbackAction
- (AMSUIWebODIAssessmentFeedbackAction)initWithJSObject:(id)object context:(id)context;
- (id)runAction;
@end

@implementation AMSUIWebODIAssessmentFeedbackAction

- (AMSUIWebODIAssessmentFeedbackAction)initWithJSObject:(id)object context:(id)context
{
  v25 = *MEMORY[0x1E69E9840];
  objectCopy = object;
  v20.receiver = self;
  v20.super_class = AMSUIWebODIAssessmentFeedbackAction;
  v7 = [(AMSUIWebAction *)&v20 initWithJSObject:objectCopy context:context];
  if (v7)
  {
    v8 = [objectCopy objectForKeyedSubscript:@"cacheIdentifier"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v9 = v8;
    }

    else
    {
      v9 = 0;
    }

    cacheIdentifier = v7->_cacheIdentifier;
    v7->_cacheIdentifier = v9;

    v11 = [objectCopy objectForKeyedSubscript:@"outcome"];
    v12 = v11;
    if (v11)
    {
      integerValue = [v11 integerValue];
    }

    else
    {
      mEMORY[0x1E698C968] = [MEMORY[0x1E698C968] sharedWebUIConfig];
      if (!mEMORY[0x1E698C968])
      {
        mEMORY[0x1E698C968] = [MEMORY[0x1E698C968] sharedConfig];
      }

      oSLogObject = [mEMORY[0x1E698C968] OSLogObject];
      if (os_log_type_enabled(oSLogObject, OS_LOG_TYPE_DEFAULT))
      {
        v16 = objc_opt_class();
        v17 = AMSLogKey();
        *buf = 138543618;
        v22 = v16;
        v23 = 2114;
        v24 = v17;
        _os_log_impl(&dword_1BB036000, oSLogObject, OS_LOG_TYPE_DEFAULT, "%{public}@: [%{public}@] Failed to parse outcome. Falling back to discarded outcome.", buf, 0x16u);
      }

      integerValue = 1;
    }

    v7->_outcome = integerValue;
  }

  v18 = *MEMORY[0x1E69E9840];
  return v7;
}

- (id)runAction
{
  v12.receiver = self;
  v12.super_class = AMSUIWebODIAssessmentFeedbackAction;
  runAction = [(AMSUIWebAction *)&v12 runAction];
  v4 = MEMORY[0x1E698CA90];
  outcome = [(AMSUIWebODIAssessmentFeedbackAction *)self outcome];
  cacheIdentifier = [(AMSUIWebODIAssessmentFeedbackAction *)self cacheIdentifier];
  context = [(AMSUIWebAction *)self context];
  v8 = [context bag];
  v9 = [v4 provideFeedbackWithOutcome:outcome cacheIdentifier:cacheIdentifier bag:v8];
  v10 = [v9 thenWithBlock:&__block_literal_global_30];

  return v10;
}

id __48__AMSUIWebODIAssessmentFeedbackAction_runAction__block_invoke(uint64_t a1, void *a2)
{
  v10[1] = *MEMORY[0x1E69E9840];
  v2 = MEMORY[0x1E698CAD0];
  v9 = @"status";
  v10[0] = a2;
  v3 = MEMORY[0x1E695DF20];
  v4 = a2;
  v5 = [v3 dictionaryWithObjects:v10 forKeys:&v9 count:1];
  v6 = [v2 promiseWithResult:v5];

  v7 = *MEMORY[0x1E69E9840];

  return v6;
}

@end