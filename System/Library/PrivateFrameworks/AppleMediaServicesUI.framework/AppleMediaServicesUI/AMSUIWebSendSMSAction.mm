@interface AMSUIWebSendSMSAction
- (AMSUIWebSendSMSAction)initWithJSObject:(id)object context:(id)context;
- (id)runAction;
- (id)telephonyAccessPatterns;
@end

@implementation AMSUIWebSendSMSAction

- (AMSUIWebSendSMSAction)initWithJSObject:(id)object context:(id)context
{
  objectCopy = object;
  v18.receiver = self;
  v18.super_class = AMSUIWebSendSMSAction;
  v7 = [(AMSUIWebAction *)&v18 initWithJSObject:objectCopy context:context];
  if (v7)
  {
    v8 = [objectCopy objectForKeyedSubscript:@"body"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v9 = v8;
    }

    else
    {
      v9 = 0;
    }

    body = v7->_body;
    v7->_body = v9;

    v11 = [objectCopy objectForKeyedSubscript:@"countryCode"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v12 = v11;
    }

    else
    {
      v12 = 0;
    }

    countryCode = v7->_countryCode;
    v7->_countryCode = v12;

    v14 = [objectCopy objectForKeyedSubscript:@"digits"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v15 = v14;
    }

    else
    {
      v15 = 0;
    }

    digits = v7->_digits;
    v7->_digits = v15;
  }

  return v7;
}

- (id)telephonyAccessPatterns
{
  context = [(AMSUIWebAction *)self context];
  v3 = [context bag];
  v4 = [v3 arrayForKey:@"telephony-access-patterns"];
  valuePromise = [v4 valuePromise];

  return valuePromise;
}

- (id)runAction
{
  v17.receiver = self;
  v17.super_class = AMSUIWebSendSMSAction;
  runAction = [(AMSUIWebAction *)&v17 runAction];
  context = [(AMSUIWebAction *)self context];
  webPage = [context webPage];
  webView = [webPage webView];
  underlyingWebView = [webView underlyingWebView];
  v8 = [underlyingWebView URL];
  absoluteString = [v8 absoluteString];

  if (absoluteString)
  {
    telephonyAccessPatterns = [(AMSUIWebSendSMSAction *)self telephonyAccessPatterns];
    v14[0] = MEMORY[0x1E69E9820];
    v14[1] = 3221225472;
    v14[2] = __34__AMSUIWebSendSMSAction_runAction__block_invoke;
    v14[3] = &unk_1E7F26158;
    v15 = absoluteString;
    selfCopy = self;
    v11 = [telephonyAccessPatterns thenWithBlock:v14];
  }

  else
  {
    v12 = MEMORY[0x1E698CAD0];
    telephonyAccessPatterns = [MEMORY[0x1E696ABC0] errorWithDomain:*MEMORY[0x1E69D4C28] code:107 userInfo:0];
    v11 = [v12 promiseWithError:telephonyAccessPatterns];
  }

  return v11;
}

id __34__AMSUIWebSendSMSAction_runAction__block_invoke(uint64_t a1, void *a2)
{
  v31 = *MEMORY[0x1E69E9840];
  v23[0] = MEMORY[0x1E69E9820];
  v23[1] = 3221225472;
  v23[2] = __34__AMSUIWebSendSMSAction_runAction__block_invoke_2;
  v23[3] = &unk_1E7F26B10;
  v24 = *(a1 + 32);
  if ([a2 ams_anyWithTest:v23])
  {
    v4 = [MEMORY[0x1E69D4A20] sharedController];
    v5 = [*(a1 + 40) body];
    v6 = [*(a1 + 40) digits];
    v7 = [*(a1 + 40) countryCode];
    v22 = 0;
    v8 = [v4 sendSMSWithText:v5 toPhoneNumber:v6 countryCode:v7 error:&v22];
    v9 = v22;

    v10 = MEMORY[0x1E698CAD0];
    if (v8)
    {
      v11 = [MEMORY[0x1E698CAD0] promiseWithResult:MEMORY[0x1E695E118]];
      goto LABEL_10;
    }
  }

  else
  {
    v12 = [MEMORY[0x1E698C968] sharedWebUIConfig];
    if (!v12)
    {
      v12 = [MEMORY[0x1E698C968] sharedConfig];
    }

    v13 = [v12 OSLogObject];
    if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
    {
      v14 = *(a1 + 40);
      v15 = objc_opt_class();
      v16 = AMSLogKey();
      v17 = *(a1 + 32);
      *buf = 138543874;
      v26 = v15;
      v27 = 2114;
      v28 = v16;
      v29 = 2114;
      v30 = v17;
      _os_log_impl(&dword_1BB036000, v13, OS_LOG_TYPE_DEFAULT, "%{public}@: [%{public}@] Rejecting webPage: %{public}@", buf, 0x20u);
    }

    v18 = MEMORY[0x1E698CAD0];
    v9 = [MEMORY[0x1E696ABC0] errorWithDomain:*MEMORY[0x1E69D4C28] code:107 userInfo:0];
    v10 = v18;
  }

  v11 = [v10 promiseWithError:v9];
LABEL_10:
  v19 = v11;

  v20 = *MEMORY[0x1E69E9840];

  return v19;
}

BOOL __34__AMSUIWebSendSMSAction_runAction__block_invoke_2(uint64_t a1, void *a2)
{
  v3 = MEMORY[0x1E696AE70];
  v4 = a2;
  v5 = [[v3 alloc] initWithPattern:v4 options:1 error:0];

  v6 = [v5 rangeOfFirstMatchInString:*(a1 + 32) options:0 range:{0, objc_msgSend(*(a1 + 32), "length")}] != 0x7FFFFFFFFFFFFFFFLL;
  return v6;
}

@end