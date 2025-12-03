@interface AMSUIWebOpenURLAction
+ (id)_openIgnoringOverrides:(id)overrides;
+ (id)_openUniversalLink:(id)link;
- (AMSUIWebOpenURLAction)initWithJSObject:(id)object context:(id)context;
- (id)runAction;
@end

@implementation AMSUIWebOpenURLAction

- (AMSUIWebOpenURLAction)initWithJSObject:(id)object context:(id)context
{
  objectCopy = object;
  v18.receiver = self;
  v18.super_class = AMSUIWebOpenURLAction;
  v7 = [(AMSUIWebAction *)&v18 initWithJSObject:objectCopy context:context];
  v8 = v7;
  if (v7)
  {
    v7->_type = 0;
    v9 = [objectCopy objectForKeyedSubscript:@"appLink"];
    if (objc_opt_respondsToSelector())
    {
      v10 = [objectCopy objectForKeyedSubscript:@"appLink"];
      bOOLValue = [v10 BOOLValue];

      if (bOOLValue)
      {
        v8->_type = 1;
      }
    }

    else
    {
    }

    v12 = [objectCopy objectForKeyedSubscript:@"type"];
    if (v12)
    {
      if (objc_opt_respondsToSelector())
      {
        type = [v12 longLongValue];
      }

      else
      {
        type = v8->_type;
      }

      v8->_type = type;
    }

    v14 = [objectCopy objectForKeyedSubscript:@"url"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v15 = v14;
    }

    else
    {
      v15 = 0;
    }

    if (v15)
    {
      v16 = [MEMORY[0x1E695DFF8] URLWithString:v15];
    }

    else
    {
      v16 = 0;
    }

    objc_storeStrong(&v8->_URL, v16);
    if (v15)
    {
    }
  }

  return v8;
}

- (id)runAction
{
  v43 = *MEMORY[0x1E69E9840];
  v34.receiver = self;
  v34.super_class = AMSUIWebOpenURLAction;
  runAction = [(AMSUIWebAction *)&v34 runAction];
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
    v8 = [(AMSUIWebOpenURLAction *)self URL];
    v9 = AMSLogableURL();
    type = [(AMSUIWebOpenURLAction *)self type];
    *buf = 138544130;
    v36 = v6;
    v37 = 2114;
    v38 = v7;
    v39 = 2114;
    v40 = v9;
    v41 = 2048;
    v42 = type;
    _os_log_impl(&dword_1BB036000, oSLogObject, OS_LOG_TYPE_DEFAULT, "%{public}@: [%{public}@] Opening URL: %{public}@ type: %ld", buf, 0x2Au);
  }

  v11 = [(AMSUIWebOpenURLAction *)self URL];

  if (!v11)
  {
    v20 = MEMORY[0x1E698CAD0];
    goto LABEL_25;
  }

  type2 = [(AMSUIWebOpenURLAction *)self type];
  if (type2 <= 1)
  {
    if (!type2)
    {
      goto LABEL_23;
    }

    if (type2 == 1)
    {
      v13 = MEMORY[0x1E698CA98];
      v14 = [(AMSUIWebOpenURLAction *)self URL];
      context = [(AMSUIWebAction *)self context];
      clientInfo = [context clientInfo];
      context2 = [(AMSUIWebAction *)self context];
      v18 = [context2 bag];
      v19 = [v13 openURL:v14 clientInfo:clientInfo bag:v18];

      goto LABEL_21;
    }

LABEL_14:
    mEMORY[0x1E698C968]2 = [MEMORY[0x1E698C968] sharedWebUIConfig];
    if (!mEMORY[0x1E698C968]2)
    {
      mEMORY[0x1E698C968]2 = [MEMORY[0x1E698C968] sharedConfig];
    }

    oSLogObject2 = [mEMORY[0x1E698C968]2 OSLogObject];
    if (os_log_type_enabled(oSLogObject2, OS_LOG_TYPE_ERROR))
    {
      v25 = objc_opt_class();
      v26 = AMSLogKey();
      *buf = 138543618;
      v36 = v25;
      v37 = 2114;
      v38 = v26;
      _os_log_impl(&dword_1BB036000, oSLogObject2, OS_LOG_TYPE_ERROR, "%{public}@: [%{public}@] Failed to handle unknown type", buf, 0x16u);
    }

    goto LABEL_23;
  }

  if (type2 == 2)
  {
    v27 = objc_opt_class();
    v14 = [(AMSUIWebOpenURLAction *)self URL];
    v22 = [v27 _openUniversalLink:v14];
  }

  else
  {
    if (type2 != 3)
    {
      goto LABEL_14;
    }

    v21 = objc_opt_class();
    v14 = [(AMSUIWebOpenURLAction *)self URL];
    v22 = [v21 _openIgnoringOverrides:v14];
  }

  v19 = v22;
LABEL_21:

  if (v19)
  {
    promiseAdapter = [v19 promiseAdapter];

    goto LABEL_26;
  }

LABEL_23:
  v29 = MEMORY[0x1E698CA98];
  v30 = [(AMSUIWebOpenURLAction *)self URL];
  LODWORD(v29) = [v29 openStandardURL:v30];

  v20 = MEMORY[0x1E698CAD0];
  if (v29)
  {
    promiseAdapter = [MEMORY[0x1E698CAD0] promiseWithResult:MEMORY[0x1E695E118]];
    goto LABEL_26;
  }

LABEL_25:
  v31 = AMSError();
  promiseAdapter = [v20 promiseWithError:v31];

LABEL_26:
  v32 = *MEMORY[0x1E69E9840];

  return promiseAdapter;
}

+ (id)_openUniversalLink:(id)link
{
  v24 = *MEMORY[0x1E69E9840];
  linkCopy = link;
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
    *buf = 138543874;
    v19 = v6;
    v20 = 2114;
    v21 = v7;
    v22 = 2112;
    v23 = linkCopy;
    _os_log_impl(&dword_1BB036000, oSLogObject, OS_LOG_TYPE_DEFAULT, "%{public}@: [%{public}@] Opening universal link: %@", buf, 0x20u);
  }

  v8 = objc_alloc_init(MEMORY[0x1E698C7F0]);
  mEMORY[0x1E69DC668] = [MEMORY[0x1E69DC668] sharedApplication];
  v16 = *MEMORY[0x1E69DDB50];
  v17 = MEMORY[0x1E695E118];
  v10 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v17 forKeys:&v16 count:1];
  v14[0] = MEMORY[0x1E69E9820];
  v14[1] = 3221225472;
  v14[2] = __44__AMSUIWebOpenURLAction__openUniversalLink___block_invoke;
  v14[3] = &unk_1E7F25888;
  v11 = v8;
  v15 = v11;
  [mEMORY[0x1E69DC668] openURL:linkCopy options:v10 completionHandler:v14];

  v12 = *MEMORY[0x1E69E9840];

  return v11;
}

void __44__AMSUIWebOpenURLAction__openUniversalLink___block_invoke(uint64_t a1, int a2)
{
  v2 = *(a1 + 32);
  if (a2)
  {
    v3 = *(a1 + 32);

    [v3 finishWithSuccess];
  }

  else
  {
    v4 = AMSError();
    [v2 finishWithError:v4];
  }
}

+ (id)_openIgnoringOverrides:(id)overrides
{
  overridesCopy = overrides;
  v4 = objc_opt_new();
  v5 = objc_opt_new();
  [v5 setAllowURLOverrides:0];
  [v5 setIgnoreAppLinkEnabledProperty:1];
  defaultWorkspace = [MEMORY[0x1E6963608] defaultWorkspace];
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __48__AMSUIWebOpenURLAction__openIgnoringOverrides___block_invoke;
  v9[3] = &unk_1E7F25BA0;
  v7 = v4;
  v10 = v7;
  [defaultWorkspace openURL:overridesCopy configuration:v5 completionHandler:v9];

  return v7;
}

void __48__AMSUIWebOpenURLAction__openIgnoringOverrides___block_invoke(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = *(a1 + 32);
  if (a3)
  {
    v5 = AMSError();
    [v3 finishWithError:v5];
  }

  else
  {
    v4 = *(a1 + 32);

    [v4 finishWithSuccess];
  }
}

@end