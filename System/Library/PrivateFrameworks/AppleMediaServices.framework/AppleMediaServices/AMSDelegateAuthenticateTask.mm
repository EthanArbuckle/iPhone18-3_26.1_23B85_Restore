@interface AMSDelegateAuthenticateTask
+ (AMSBagKeySet)bagKeySet;
- (AMSDelegateAuthenticateTask)initWithBag:(id)a3 account:(id)a4;
- (AMSDelegateAuthenticateTask)initWithDelegateAuthenticateRequest:(id)a3 bag:(id)a4 account:(id)a5;
- (id)_delegateAuthenticateResultFromUrlResult:(id)a3;
- (id)_encodedURLRequestWithError:(id *)a3;
- (id)_parseFormDataAsStringFromResult:(id)a3;
- (id)_parseFormDataFromResult:(id)a3;
- (id)_performDelegateAuthenticationWithError:(id *)a3;
- (id)_urlRequestParameters;
- (id)delegateAuthenticateUrl;
- (id)performDelegateAuthentication;
- (void)_init;
@end

@implementation AMSDelegateAuthenticateTask

- (AMSDelegateAuthenticateTask)initWithDelegateAuthenticateRequest:(id)a3 bag:(id)a4 account:(id)a5
{
  v9 = a3;
  v10 = a4;
  v11 = a5;
  v15.receiver = self;
  v15.super_class = AMSDelegateAuthenticateTask;
  v12 = [(AMSTask *)&v15 init];
  v13 = v12;
  if (v12)
  {
    objc_storeStrong(&v12->_account, a5);
    objc_storeStrong(&v13->_bag, a4);
    objc_storeStrong(&v13->_request, a3);
    [(AMSDelegateAuthenticateTask *)v13 _init];
  }

  return v13;
}

- (AMSDelegateAuthenticateTask)initWithBag:(id)a3 account:(id)a4
{
  v7 = a3;
  v8 = a4;
  v12.receiver = self;
  v12.super_class = AMSDelegateAuthenticateTask;
  v9 = [(AMSTask *)&v12 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_account, a4);
    objc_storeStrong(&v10->_bag, a3);
    [(AMSDelegateAuthenticateTask *)v10 _init];
  }

  return v10;
}

- (void)_init
{
  v5 = [MEMORY[0x1E695AC80] ams_configurationWithProcessInfo:0 bag:0];
  v3 = [[AMSURLSession alloc] initWithConfiguration:v5 delegate:self delegateQueue:0];
  session = self->_session;
  self->_session = v3;
}

- (id)performDelegateAuthentication
{
  v3 = [AMSMutableLazyPromise alloc];
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __60__AMSDelegateAuthenticateTask_performDelegateAuthentication__block_invoke;
  v6[3] = &unk_1E73B56C8;
  v6[4] = self;
  v4 = [(AMSMutableLazyPromise *)v3 initWithBlock:v6];

  return v4;
}

void __60__AMSDelegateAuthenticateTask_performDelegateAuthentication__block_invoke(uint64_t a1, void *a2)
{
  v30 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = AMSSetLogKeyIfNeeded();
  v5 = +[AMSLogConfig sharedConfig];
  if (!v5)
  {
    v5 = +[AMSLogConfig sharedConfig];
  }

  v6 = [v5 OSLogObject];
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138543618;
    v25 = objc_opt_class();
    v26 = 2114;
    v27 = v4;
    _os_log_impl(&dword_192869000, v6, OS_LOG_TYPE_DEFAULT, "%{public}@: [%{public}@] Starting delegate authenticate task", buf, 0x16u);
  }

  v7 = *(a1 + 32);
  v23 = 0;
  v8 = [v7 _performDelegateAuthenticationWithError:&v23];
  v9 = v23;
  v10 = +[AMSLogConfig sharedConfig];
  v11 = v10;
  if (v9)
  {
    if (!v10)
    {
      v11 = +[AMSLogConfig sharedConfig];
    }

    v12 = [v11 OSLogObject];
    if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      v13 = objc_opt_class();
      *buf = 138543874;
      v25 = v13;
      v26 = 2114;
      v27 = v4;
      v28 = 2114;
      v29 = v9;
      _os_log_impl(&dword_192869000, v12, OS_LOG_TYPE_ERROR, "%{public}@: [%{public}@] Delegate authenticate call failed with error: %{public}@", buf, 0x20u);
    }

    [v3 finishWithError:v9];
  }

  else
  {
    if (!v10)
    {
      v11 = +[AMSLogConfig sharedConfig];
    }

    v14 = [v11 OSLogObject];
    if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
    {
      v15 = objc_opt_class();
      *buf = 138543618;
      v25 = v15;
      v26 = 2114;
      v27 = v4;
      _os_log_impl(&dword_192869000, v14, OS_LOG_TYPE_DEFAULT, "%{public}@: [%{public}@] Delegate authenticate call succeeded", buf, 0x16u);
    }

    v16 = [*(a1 + 32) _delegateAuthenticateResultFromUrlResult:v8];
    v17 = [v16 token];

    if (v17)
    {
      [v3 finishWithResult:v16];
    }

    else
    {
      v18 = +[AMSLogConfig sharedConfigOversize];
      if (!v18)
      {
        v18 = +[AMSLogConfig sharedConfig];
      }

      v19 = [v18 OSLogObject];
      if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
      {
        v20 = objc_opt_class();
        v21 = AMSHashIfNeeded(v8);
        *buf = 138543874;
        v25 = v20;
        v26 = 2114;
        v27 = v4;
        v28 = 2114;
        v29 = v21;
        _os_log_impl(&dword_192869000, v19, OS_LOG_TYPE_ERROR, "%{public}@: [%{public}@] Unexpected response from server: %{public}@", buf, 0x20u);
      }

      v22 = AMSError(301, @"Delegate Authenticate Failed", @"Delegate authenticate call failed with an unexpected server response.", 0);
      [v3 finishWithError:v22];
    }
  }
}

- (id)_encodedURLRequestWithError:(id *)a3
{
  v45[1] = *MEMORY[0x1E69E9840];
  v5 = AMSSetLogKeyIfNeeded();
  v6 = +[AMSLogConfig sharedConfig];
  if (!v6)
  {
    v6 = +[AMSLogConfig sharedConfig];
  }

  v7 = [v6 OSLogObject];
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138543618;
    v37 = objc_opt_class();
    v38 = 2114;
    v39 = v5;
    _os_log_impl(&dword_192869000, v7, OS_LOG_TYPE_DEFAULT, "%{public}@: [%{public}@] Begin extracting URL endpoint from bag", buf, 0x16u);
  }

  v8 = [(AMSDelegateAuthenticateTask *)self delegateAuthenticateUrl];
  if (v8)
  {
    v9 = +[AMSLogConfig sharedConfig];
    if (!v9)
    {
      v9 = +[AMSLogConfig sharedConfig];
    }

    v10 = [v9 OSLogObject];
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
    {
      v11 = objc_opt_class();
      *buf = 138543618;
      v37 = v11;
      v38 = 2114;
      v39 = v5;
      _os_log_impl(&dword_192869000, v10, OS_LOG_TYPE_DEFAULT, "%{public}@: [%{public}@] Completed extracting URL endpoint from bag", buf, 0x16u);
    }

    v12 = objc_alloc_init(AMSKeychainOptions);
    [(AMSKeychainOptions *)v12 setStyle:+[AMSKeychainOptions preferredAttestationStyle]];
    [(AMSKeychainOptions *)v12 setPurpose:0];
    v13 = [AMSURLRequestEncoder alloc];
    v14 = [(AMSDelegateAuthenticateTask *)self bag];
    v15 = [(AMSURLRequestEncoder *)v13 initWithBag:v14];

    v16 = [(AMSDelegateAuthenticateTask *)self account];
    [(AMSURLRequestEncoder *)v15 setAccount:v16];

    [(AMSURLRequestEncoder *)v15 setDialogOptions:2];
    v34 = v5;
    [(AMSURLRequestEncoder *)v15 setLogUUID:v5];
    [(AMSURLRequestEncoder *)v15 setKeychainOptions:v12];
    [(AMSURLRequestEncoder *)v15 setUrlKnownToBeTrusted:1];
    v17 = [(AMSDelegateAuthenticateTask *)self formData];

    if (v17)
    {
      [(AMSURLRequestEncoder *)v15 setRequestEncoding:2];
    }

    v44 = @"X-Apple-TID-Action";
    v45[0] = 0x1F0721318;
    v18 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v45 forKeys:&v44 count:1];
    v19 = [(AMSDelegateAuthenticateTask *)self _urlRequestParameters];
    v33 = v8;
    v20 = [(AMSURLRequestEncoder *)v15 requestWithMethod:4 URL:v8 headers:v18 parameters:v19];

    v35 = 0;
    v21 = [v20 resultWithError:&v35];
    v22 = v35;
    if (v22)
    {
      v23 = +[AMSLogConfig sharedConfig];
      if (!v23)
      {
        v23 = +[AMSLogConfig sharedConfig];
      }

      v24 = [v23 OSLogObject];
      if (os_log_type_enabled(v24, OS_LOG_TYPE_ERROR))
      {
        v25 = objc_opt_class();
        v26 = AMSHashIfNeeded(v33);
        *buf = 138544130;
        v37 = v25;
        v38 = 2114;
        v39 = v34;
        v40 = 2112;
        v41 = v26;
        v42 = 2114;
        v43 = v22;
        _os_log_impl(&dword_192869000, v24, OS_LOG_TYPE_ERROR, "%{public}@: [%{public}@] Failed to encode request for URL: %@, error: %{public}@", buf, 0x2Au);
      }

      if (v32)
      {
        v27 = v22;
        v28 = 0;
        *v32 = v22;
      }

      else
      {
        v28 = 0;
      }
    }

    else
    {
      v28 = v21;
    }

    v8 = v33;
    v5 = v34;
  }

  else
  {
    v29 = AMSError(100, @"Delegate Authentication Failed", @"Failed to create NSURL for delegate ", 0);
    v22 = v29;
    if (a3)
    {
      v30 = v29;
      v28 = 0;
      *a3 = v22;
    }

    else
    {
      v28 = 0;
    }
  }

  return v28;
}

- (id)_parseFormDataFromResult:(id)a3
{
  v30 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = AMSSetLogKeyIfNeeded();
  v6 = +[AMSLogConfig sharedConfig];
  if (!v6)
  {
    v6 = +[AMSLogConfig sharedConfig];
  }

  v7 = [v6 OSLogObject];
  if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
  {
    v26 = 138543618;
    v27 = objc_opt_class();
    v28 = 2114;
    v29 = v5;
    _os_log_impl(&dword_192869000, v7, OS_LOG_TYPE_INFO, "%{public}@: [%{public}@] Attempting to parse form-data from URL result.", &v26, 0x16u);
  }

  v8 = [v4 object];

  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {

    goto LABEL_15;
  }

  v9 = v8;

  if (!v9)
  {
LABEL_15:
    v11 = +[AMSLogConfig sharedConfig];
    if (!v11)
    {
      v11 = +[AMSLogConfig sharedConfig];
    }

    v16 = [v11 OSLogObject];
    if (os_log_type_enabled(v16, OS_LOG_TYPE_INFO))
    {
      v17 = objc_opt_class();
      v26 = 138543618;
      v27 = v17;
      v28 = 2114;
      v29 = v5;
      _os_log_impl(&dword_192869000, v16, OS_LOG_TYPE_INFO, "%{public}@: [%{public}@] Did not find URL result object or it was not an NSDictionary.", &v26, 0x16u);
    }

    v9 = 0;
    v15 = 0;
    goto LABEL_34;
  }

  v10 = [v9 objectForKeyedSubscript:@"dialog"];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v11 = v10;

    if (v11)
    {
      v12 = [v11 objectForKeyedSubscript:@"okButtonAction"];
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v13 = v12;

        if (v13)
        {
          v14 = [v13 objectForKeyedSubscript:@"form-data"];
          objc_opt_class();
          if (objc_opt_isKindOfClass())
          {
            v15 = v14;

            if (v15)
            {
LABEL_33:

              goto LABEL_34;
            }
          }

          else
          {
          }

          v21 = +[AMSLogConfig sharedConfig];
          if (!v21)
          {
            v21 = +[AMSLogConfig sharedConfig];
          }

          v22 = [v21 OSLogObject];
          if (os_log_type_enabled(v22, OS_LOG_TYPE_INFO))
          {
            v25 = objc_opt_class();
            v26 = 138543618;
            v27 = v25;
            v28 = 2114;
            v29 = v5;
            _os_log_impl(&dword_192869000, v22, OS_LOG_TYPE_INFO, "%{public}@: [%{public}@] Did not find formData or it was not an NSDictionary", &v26, 0x16u);
          }

LABEL_32:

          v15 = 0;
          goto LABEL_33;
        }
      }

      else
      {
      }

      v21 = +[AMSLogConfig sharedConfig];
      if (!v21)
      {
        v21 = +[AMSLogConfig sharedConfig];
      }

      v22 = [v21 OSLogObject];
      if (os_log_type_enabled(v22, OS_LOG_TYPE_INFO))
      {
        v23 = objc_opt_class();
        v26 = 138543618;
        v27 = v23;
        v28 = 2114;
        v29 = v5;
        _os_log_impl(&dword_192869000, v22, OS_LOG_TYPE_INFO, "%{public}@: [%{public}@] Did not find 'okButtonAction' or it was not an NSDictionary.", &v26, 0x16u);
      }

      v13 = 0;
      goto LABEL_32;
    }
  }

  else
  {
  }

  v18 = +[AMSLogConfig sharedConfig];
  if (!v18)
  {
    v18 = +[AMSLogConfig sharedConfig];
  }

  v19 = [v18 OSLogObject];
  if (os_log_type_enabled(v19, OS_LOG_TYPE_INFO))
  {
    v20 = objc_opt_class();
    v26 = 138543618;
    v27 = v20;
    v28 = 2114;
    v29 = v5;
    _os_log_impl(&dword_192869000, v19, OS_LOG_TYPE_INFO, "%{public}@: [%{public}@] Did not find 'dialog' or it was not an NSDictionary. Attempt to locate form data as string.", &v26, 0x16u);
  }

  v15 = [(AMSDelegateAuthenticateTask *)self _parseFormDataAsStringFromResult:v9];
  v11 = 0;
LABEL_34:

  return v15;
}

- (id)_parseFormDataAsStringFromResult:(id)a3
{
  v38 = *MEMORY[0x1E69E9840];
  v3 = a3;
  v4 = AMSSetLogKeyIfNeeded();
  v5 = +[AMSLogConfig sharedConfig];
  if (!v5)
  {
    v5 = +[AMSLogConfig sharedConfig];
  }

  v6 = [v5 OSLogObject];
  if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
  {
    *buf = 138543618;
    v33 = objc_opt_class();
    v34 = 2114;
    v35 = v4;
    _os_log_impl(&dword_192869000, v6, OS_LOG_TYPE_INFO, "%{public}@: [%{public}@] Attempting to parse form-data as string from URL result.", buf, 0x16u);
  }

  v7 = [v3 objectForKeyedSubscript:@"okButtonAction"];

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v8 = v7;

    if (v8)
    {
      v9 = [v8 objectForKeyedSubscript:@"form-data"];
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v10 = v9;

        if (v10)
        {
          v11 = [MEMORY[0x1E696AB08] whitespaceAndNewlineCharacterSet];
          v12 = [v10 stringByTrimmingCharactersInSet:v11];
          v13 = [v12 mutableCopy];

          if (([v13 containsString:@"<dict>"]& 1) == 0)
          {
            [v13 insertString:@"<dict>" atIndex:0];
          }

          if (([v13 containsString:@"</dict>"]& 1) == 0)
          {
            [v13 appendString:@"</dict>"];
          }

          v14 = [v13 dataUsingEncoding:4];
          if (!v14)
          {
            v21 = +[AMSLogConfig sharedConfig];
            if (!v21)
            {
              v21 = +[AMSLogConfig sharedConfig];
            }

            v17 = [v21 OSLogObject];
            if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
            {
              v22 = objc_opt_class();
              *buf = 138543618;
              v33 = v22;
              v34 = 2114;
              v35 = v4;
              _os_log_impl(&dword_192869000, v17, OS_LOG_TYPE_ERROR, "%{public}@: [%{public}@] Could not convert 'formData' from NSString to NSData.", buf, 0x16u);
            }

            v18 = 0;
            goto LABEL_47;
          }

          v31 = 0;
          v15 = [MEMORY[0x1E696AE40] propertyListWithData:v14 options:0 format:0 error:&v31];
          v30 = v31;
          if (!v15)
          {
            v16 = +[AMSLogConfig sharedConfig];
            if (!v16)
            {
              v16 = +[AMSLogConfig sharedConfig];
            }

            log = [v16 OSLogObject];
            if (os_log_type_enabled(log, OS_LOG_TYPE_ERROR))
            {
              v27 = objc_opt_class();
              v28 = AMSLogableError(v30);
              *buf = 138543874;
              v33 = v27;
              v34 = 2114;
              v35 = v4;
              v36 = 2114;
              v37 = v28;
              _os_log_impl(&dword_192869000, log, OS_LOG_TYPE_ERROR, "%{public}@: [%{public}@] Error parsing property list from data. error = %{public}@", buf, 0x20u);
            }
          }

          v17 = v15;
          objc_opt_class();
          if (objc_opt_isKindOfClass())
          {
            v18 = v17;

            if (v15)
            {
              v17 = v18;
LABEL_46:
              v21 = v30;
LABEL_47:

LABEL_48:
              goto LABEL_49;
            }
          }

          else
          {
          }

          v23 = +[AMSLogConfig sharedConfig];
          if (!v23)
          {
            v23 = +[AMSLogConfig sharedConfig];
          }

          v24 = [v23 OSLogObject];
          if (os_log_type_enabled(v24, OS_LOG_TYPE_INFO))
          {
            v25 = objc_opt_class();
            *buf = 138543618;
            v33 = v25;
            v34 = 2114;
            v35 = v4;
            _os_log_impl(&dword_192869000, v24, OS_LOG_TYPE_INFO, "%{public}@: [%{public}@] Parsed formData was not an NSDictionary", buf, 0x16u);
          }

          v18 = 0;
          goto LABEL_46;
        }
      }

      else
      {
      }

      v13 = +[AMSLogConfig sharedConfig];
      if (!v13)
      {
        v13 = +[AMSLogConfig sharedConfig];
      }

      v14 = [v13 OSLogObject];
      if (os_log_type_enabled(v14, OS_LOG_TYPE_INFO))
      {
        v20 = objc_opt_class();
        *buf = 138543618;
        v33 = v20;
        v34 = 2114;
        v35 = v4;
        _os_log_impl(&dword_192869000, v14, OS_LOG_TYPE_INFO, "%{public}@: [%{public}@] Did not find 'formData' or it was not an NSString.", buf, 0x16u);
      }

      v10 = 0;
      v18 = 0;
      goto LABEL_48;
    }
  }

  else
  {
  }

  v10 = +[AMSLogConfig sharedConfig];
  if (!v10)
  {
    v10 = +[AMSLogConfig sharedConfig];
  }

  v13 = [v10 OSLogObject];
  if (os_log_type_enabled(v13, OS_LOG_TYPE_INFO))
  {
    v19 = objc_opt_class();
    *buf = 138543618;
    v33 = v19;
    v34 = 2114;
    v35 = v4;
    _os_log_impl(&dword_192869000, v13, OS_LOG_TYPE_INFO, "%{public}@: [%{public}@] Did not find 'okButtonAction' or it was not an NSDictionary.", buf, 0x16u);
  }

  v8 = 0;
  v18 = 0;
LABEL_49:

  return v18;
}

- (id)_performDelegateAuthenticationWithError:(id *)a3
{
  v33 = *MEMORY[0x1E69E9840];
  v26 = 0;
  v5 = [(AMSDelegateAuthenticateTask *)self _encodedURLRequestWithError:&v26];
  v6 = v26;
  if (v6)
  {
    v7 = v6;
    if (a3)
    {
      v8 = v6;
      v9 = 0;
      *a3 = v7;
    }

    else
    {
      v9 = 0;
    }
  }

  else
  {
    v10 = [(AMSDelegateAuthenticateTask *)self signatureResult];

    if (v10)
    {
      v11 = [(AMSDelegateAuthenticateTask *)self account];
      v12 = [v5 properties];
      v13 = [v12 keychainOptions];
      v14 = [(AMSDelegateAuthenticateTask *)self signatureResult];
      v15 = [AMSBiometrics headersWithAccount:v11 options:v13 signatureResult:v14];
      [v5 ams_addHeaders:v15];
    }

    v16 = [(AMSDelegateAuthenticateTask *)self session];
    v17 = [v16 dataTaskPromiseWithRequest:v5];
    v25 = 0;
    v18 = [v17 resultWithError:&v25];
    v7 = v25;

    if (v7)
    {
      v19 = +[AMSLogConfig sharedConfig];
      if (!v19)
      {
        v19 = +[AMSLogConfig sharedConfig];
      }

      v20 = [v19 OSLogObject];
      if (os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
      {
        v21 = objc_opt_class();
        v22 = AMSSetLogKeyIfNeeded();
        *buf = 138543874;
        v28 = v21;
        v29 = 2114;
        v30 = v22;
        v31 = 2114;
        v32 = v7;
        _os_log_impl(&dword_192869000, v20, OS_LOG_TYPE_ERROR, "%{public}@: [%{public}@] URL request failed with error: %{public}@", buf, 0x20u);
      }

      if (a3)
      {
        v23 = v7;
        v9 = 0;
        *a3 = v7;
      }

      else
      {
        v9 = 0;
      }
    }

    else
    {
      v9 = v18;
    }
  }

  return v9;
}

- (id)_urlRequestParameters
{
  v3 = [(AMSDelegateAuthenticateTask *)self formData];

  if (v3)
  {
    v4 = [(AMSDelegateAuthenticateTask *)self formData];
  }

  else
  {
    v5 = objc_alloc_init(MEMORY[0x1E695DF90]);
    v6 = [(AMSDelegateAuthenticateTask *)self request];
    v7 = [v6 challenge];
    [v5 ams_setNullableObject:v7 forKey:@"challenge"];

    v8 = [(AMSDelegateAuthenticateTask *)self request];
    v9 = [v8 userAgent];
    [v5 ams_setNullableObject:v9 forKey:@"requesterUserAgent"];

    v4 = [v5 copy];
  }

  return v4;
}

- (id)_delegateAuthenticateResultFromUrlResult:(id)a3
{
  v3 = [a3 object];
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    v4 = 0;
LABEL_6:

    goto LABEL_7;
  }

  v4 = v3;

  if (v4)
  {
    v3 = [[AMSDelegateAuthenticateResult alloc] initWithServerResponse:v4];
    v5 = [(AMSDelegateAuthenticateResult *)v3 token];

    if (v5)
    {
      goto LABEL_8;
    }

    goto LABEL_6;
  }

LABEL_7:
  v3 = 0;
LABEL_8:

  return v3;
}

- (id)delegateAuthenticateUrl
{
  v23 = *MEMORY[0x1E69E9840];
  v3 = AMSSetLogKeyIfNeeded();
  v4 = [(AMSDelegateAuthenticateTask *)self bag];
  v5 = [v4 URLForKey:@"delegateAuthenticateAccount"];
  v14 = 0;
  v6 = [v5 valueWithError:&v14];
  v7 = v14;

  if (v7)
  {
    v8 = +[AMSLogConfig sharedConfig];
    if (!v8)
    {
      v8 = +[AMSLogConfig sharedConfig];
    }

    v9 = [v8 OSLogObject];
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      v10 = objc_opt_class();
      v11 = AMSHashIfNeeded(@"delegateAuthenticateAccount");
      *buf = 138544130;
      v16 = v10;
      v17 = 2114;
      v18 = v3;
      v19 = 2112;
      v20 = v11;
      v21 = 2114;
      v22 = v7;
      _os_log_impl(&dword_192869000, v9, OS_LOG_TYPE_ERROR, "%{public}@: [%{public}@] Failed to find key: %@, error: %{public}@", buf, 0x2Au);
    }

    v12 = 0;
  }

  else
  {
    v12 = v6;
  }

  return v12;
}

+ (AMSBagKeySet)bagKeySet
{
  v2 = objc_alloc_init(AMSBagKeySet);

  return v2;
}

@end