@interface AMSMediaInvokeAuthenticationHandler
+ (id)_authenticateRequestWithAuthType:(unint64_t)type taskInfo:(id)info;
+ (id)_performAuthRequest:(id)request redirectURL:(id)l taskInfo:(id)info;
+ (id)_presentAuthRequest:(id)request taskInfo:(id)info;
+ (id)performAuthFromResponse:(id)response taskInfo:(id)info;
+ (unint64_t)_authenticationTypeForResponse:(id)response;
@end

@implementation AMSMediaInvokeAuthenticationHandler

+ (id)performAuthFromResponse:(id)response taskInfo:(id)info
{
  v26 = *MEMORY[0x1E69E9840];
  responseCopy = response;
  infoCopy = info;
  v8 = [self _authenticationTypeForResponse:responseCopy];
  if (v8 == 0x7FFFFFFFFFFFFFFFLL)
  {
    v9 = +[AMSLogConfig sharedConfig];
    if (!v9)
    {
      v9 = +[AMSLogConfig sharedConfig];
    }

    oSLogObject = [v9 OSLogObject];
    if (os_log_type_enabled(oSLogObject, OS_LOG_TYPE_ERROR))
    {
      v11 = objc_opt_class();
      v12 = v11;
      v13 = AMSSetLogKeyIfNeeded();
      v14 = [responseCopy ams_valueForHTTPHeaderField:@"X-Apple-Invoke-Auth"];
      v20 = 138543874;
      v21 = v11;
      v22 = 2114;
      v23 = v13;
      v24 = 2114;
      v25 = v14;
      _os_log_impl(&dword_192869000, oSLogObject, OS_LOG_TYPE_ERROR, "%{public}@: [%{public}@] Unexpected invoke auth type: %{public}@", &v20, 0x20u);
    }

    v15 = +[AMSOptional optionalWithNil];
    v16 = [AMSPromise promiseWithResult:v15];
  }

  else
  {
    v15 = [self _authenticateRequestWithAuthType:v8 taskInfo:infoCopy];
    v17 = [responseCopy ams_valueForHTTPHeaderField:@"Location"];
    if (v17)
    {
      v18 = [MEMORY[0x1E695DFF8] URLWithString:v17];
    }

    else
    {
      v18 = 0;
    }

    v16 = [self _performAuthRequest:v15 redirectURL:v18 taskInfo:infoCopy];
  }

  return v16;
}

+ (unint64_t)_authenticationTypeForResponse:(id)response
{
  v3 = [response ams_valueForHTTPHeaderField:@"X-Apple-Invoke-Auth"];
  v4 = MEMORY[0x1E695DFD8];
  v5 = [v3 componentsSeparatedByString:@" "];
  v6 = [v4 setWithArray:v5];

  v7 = [v6 containsObject:@"loud"];
  v8 = [v6 containsObject:@"silent"];
  v9 = 0x7FFFFFFFFFFFFFFFLL;
  if (v8)
  {
    v9 = 1;
  }

  v10 = 2;
  if (v8)
  {
    v10 = 0;
  }

  if (v7)
  {
    v11 = v10;
  }

  else
  {
    v11 = v9;
  }

  return v11;
}

+ (id)_authenticateRequestWithAuthType:(unint64_t)type taskInfo:(id)info
{
  infoCopy = info;
  v6 = objc_alloc_init(AMSAuthenticateOptions);
  [(AMSAuthenticateOptions *)v6 setAuthenticationType:type];
  [(AMSAuthenticateOptions *)v6 setAllowServerDialogs:type != 1];
  [(AMSAuthenticateOptions *)v6 setAllowSecondaryCredentialSource:0];
  [(AMSAuthenticateOptions *)v6 setCanMakeAccountActive:0];
  properties = [infoCopy properties];
  clientInfo = [properties clientInfo];
  [(AMSAuthenticateOptions *)v6 setClientInfo:clientInfo];

  properties2 = [infoCopy properties];
  account = [properties2 account];
  ams_isLocalAccount = [account ams_isLocalAccount];

  if (ams_isLocalAccount)
  {
    account2 = 0;
  }

  else
  {
    properties3 = [infoCopy properties];
    account2 = [properties3 account];
  }

  v14 = [[AMSAuthenticateRequest alloc] initWithAccount:account2 options:v6];
  properties4 = [infoCopy properties];
  logUUID = [properties4 logUUID];
  [(AMSAuthenticateRequest *)v14 setLogKey:logUUID];

  return v14;
}

+ (id)_performAuthRequest:(id)request redirectURL:(id)l taskInfo:(id)info
{
  lCopy = l;
  infoCopy = info;
  v10 = [self _presentAuthRequest:request taskInfo:infoCopy];
  v15[0] = MEMORY[0x1E69E9820];
  v15[1] = 3221225472;
  v15[2] = __80__AMSMediaInvokeAuthenticationHandler__performAuthRequest_redirectURL_taskInfo___block_invoke;
  v15[3] = &unk_1E73B8D48;
  v17 = lCopy;
  selfCopy = self;
  v16 = infoCopy;
  v11 = lCopy;
  v12 = infoCopy;
  v13 = [v10 continueWithBlock:v15];

  return v13;
}

id __80__AMSMediaInvokeAuthenticationHandler__performAuthRequest_redirectURL_taskInfo___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v25 = *MEMORY[0x1E69E9840];
  v5 = a2;
  v6 = a3;
  v7 = +[AMSLogConfig sharedAccountsConfig];
  if (!v7)
  {
    v7 = +[AMSLogConfig sharedConfig];
  }

  v8 = [v7 OSLogObject];
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    v9 = objc_opt_class();
    v10 = *(a1 + 32);
    v11 = v9;
    v12 = [v10 properties];
    v13 = [v12 logUUID];
    *v20 = 138543874;
    *&v20[4] = v9;
    v21 = 2114;
    v22 = v13;
    v23 = 1024;
    v24 = v5 != 0;
    _os_log_impl(&dword_192869000, v8, OS_LOG_TYPE_DEFAULT, "%{public}@: [%{public}@] Authentication finished (success: %d)", v20, 0x1Cu);
  }

  if (!v6)
  {
    v15 = 0;
    goto LABEL_10;
  }

  v14 = [AMSURLAction actionWithError:v6];
  v15 = v14;
  if (!v14 || ![v14 actionType])
  {
LABEL_10:
    if (*(a1 + 40))
    {
      [AMSURLAction redirectActionWithURL:?];
    }

    else
    {
      +[AMSURLAction retryAction];
    }
    v16 = ;

    v15 = v16;
  }

  [v15 setRetryIdentifier:{0x1F071ED58, *v20}];
  [v15 setReason:@"authentication"];
  [v15 setAuthenticateResult:v5];
  v17 = [[AMSOptional alloc] initWithValue:v15];
  v18 = [AMSPromise promiseWithResult:v17];

  return v18;
}

+ (id)_presentAuthRequest:(id)request taskInfo:(id)info
{
  v36 = *MEMORY[0x1E69E9840];
  requestCopy = request;
  infoCopy = info;
  session = [infoCopy session];
  delegate = [session delegate];
  v9 = objc_opt_respondsToSelector();
  v10 = objc_opt_respondsToSelector();
  if (v9 & 1) != 0 || (v10)
  {
    v18 = +[AMSLogConfig sharedAccountsConfig];
    if (!v18)
    {
      v18 = +[AMSLogConfig sharedConfig];
    }

    oSLogObject = [v18 OSLogObject];
    if (os_log_type_enabled(oSLogObject, OS_LOG_TYPE_DEFAULT))
    {
      v20 = objc_opt_class();
      v30 = v20;
      properties = [infoCopy properties];
      logUUID = [properties logUUID];
      *buf = 138543618;
      v33 = v20;
      v34 = 2114;
      v35 = logUUID;
      _os_log_impl(&dword_192869000, oSLogObject, OS_LOG_TYPE_DEFAULT, "%{public}@: [%{public}@] Performing authentication", buf, 0x16u);
    }

    v17 = objc_alloc_init(AMSPromise);
    if (v9)
    {
      task = [infoCopy task];
      completionHandlerAdapter = [(AMSPromise *)v17 completionHandlerAdapter];
      [delegate AMSURLSession:session task:task handleAuthenticateRequest:requestCopy completion:completionHandlerAdapter];
    }

    else
    {
      v24 = +[AMSLogConfig sharedAccountsConfig];
      if (!v24)
      {
        v24 = +[AMSLogConfig sharedConfig];
      }

      oSLogObject2 = [v24 OSLogObject];
      if (os_log_type_enabled(oSLogObject2, OS_LOG_TYPE_ERROR))
      {
        v26 = objc_opt_class();
        v31 = v26;
        properties2 = [infoCopy properties];
        logUUID2 = [properties2 logUUID];
        *buf = 138543618;
        v33 = v26;
        v34 = 2114;
        v35 = logUUID2;
        _os_log_impl(&dword_192869000, oSLogObject2, OS_LOG_TYPE_ERROR, "%{public}@: [%{public}@] Calling legacy delegate for authentication handling", buf, 0x16u);
      }

      task = [(AMSPromise *)v17 completionHandlerAdapter];
      [delegate AMSURLSession:session handleAuthenticateRequest:requestCopy completion:task];
    }
  }

  else
  {
    task = AMSErrorWithFormat(2, @"Media Authentication Error", @"No delegate to perform authentication: %@", v11, v12, v13, v14, v15, requestCopy);
    v17 = [AMSPromise promiseWithError:task];
  }

  return v17;
}

@end