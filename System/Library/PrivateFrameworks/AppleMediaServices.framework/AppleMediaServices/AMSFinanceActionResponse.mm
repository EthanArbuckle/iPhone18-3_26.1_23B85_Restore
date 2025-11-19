@interface AMSFinanceActionResponse
+ (BOOL)_isModernURL:(id)a3 taskInfo:(id)a4;
+ (BOOL)_stashTIDContinueHeadersForTaskInfo:(id)a3;
+ (id)_URLForCommerceUIFromURL:(id)a3 taskInfo:(id)a4 tidContinue:(BOOL)a5;
+ (id)_bodyObjectFromRequest:(id)a3;
+ (id)_deepLinkForURL:(id)a3 taskInfo:(id)a4 gotoType:(int64_t)a5 isAccountURL:(BOOL)a6 tidContinue:(BOOL)a7;
+ (id)_presentEngagementForURL:(id)a3 taskInfo:(id)a4;
+ (id)actionWithActionDictionary:(id)a3 taskInfo:(id)a4;
+ (id)actionWithUpdatedCreditString:(id)a3 account:(id)a4 taskInfo:(id)a5;
+ (id)handleGotoURL:(id)a3 taskInfo:(id)a4 gotoType:(int64_t)a5 accountURL:(BOOL)a6 tidContinue:(BOOL)a7 retryOnSuccess:(BOOL)a8;
+ (void)handleExternalGotoURL:(id)a3 taskInfo:(id)a4;
- (AMSFinanceActionResponse)initWithTaskInfo:(id)a3;
- (id)_handleGotoAction;
- (id)_performCreditDisplayUpdate;
- (id)_performGotoURL;
- (id)_performOpenStandardURL;
- (id)performWithTaskInfo:(id)a3;
@end

@implementation AMSFinanceActionResponse

- (AMSFinanceActionResponse)initWithTaskInfo:(id)a3
{
  v5 = a3;
  if (v5)
  {
    v10.receiver = self;
    v10.super_class = AMSFinanceActionResponse;
    v6 = [(AMSFinanceActionResponse *)&v10 init];
    v7 = v6;
    if (v6)
    {
      objc_storeStrong(&v6->_taskInfo, a3);
    }

    self = v7;
    v8 = self;
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

+ (id)actionWithActionDictionary:(id)a3 taskInfo:(id)a4
{
  v5 = a3;
  v6 = a4;
  v7 = [[AMSFinanceActionResponse alloc] initWithTaskInfo:v6];

  v8 = [v5 objectForKeyedSubscript:@"retry"];
  if (objc_opt_respondsToSelector())
  {
    v9 = [v5 objectForKeyedSubscript:@"retry"];
    -[AMSFinanceActionResponse setShouldRetry:](v7, "setShouldRetry:", [v9 BOOLValue]);
  }

  else
  {
    [(AMSFinanceActionResponse *)v7 setShouldRetry:0];
  }

  v10 = [v5 objectForKeyedSubscript:@"tidContinue"];
  if (objc_opt_respondsToSelector())
  {
    v11 = [v5 objectForKeyedSubscript:@"tidContinue"];
    -[AMSFinanceActionResponse setTidContinue:](v7, "setTidContinue:", [v11 BOOLValue]);
  }

  else
  {
    [(AMSFinanceActionResponse *)v7 setTidContinue:0];
  }

  v12 = [v5 objectForKeyedSubscript:@"url"];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v13 = v12;

    if (v13)
    {
      v14 = [MEMORY[0x1E695DFF8] URLWithString:v13];
      [(AMSFinanceActionResponse *)v7 setURL:v14];

      goto LABEL_12;
    }
  }

  else
  {
  }

  [(AMSFinanceActionResponse *)v7 setURL:0];
  v13 = 0;
LABEL_12:
  v15 = [v5 objectForKeyedSubscript:@"kind"];
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    goto LABEL_22;
  }

  if (![v15 caseInsensitiveCompare:@"GoBack"])
  {
    v16 = v7;
    v17 = 2;
    goto LABEL_21;
  }

  if (![v15 caseInsensitiveCompare:@"RetryRestoreAll"])
  {
    v16 = v7;
    v17 = 5;
    goto LABEL_21;
  }

  if ([v15 isEqualToString:@"Goto"])
  {
    v16 = v7;
    v17 = 3;
LABEL_21:
    [(AMSFinanceActionResponse *)v16 setKind:v17];
    goto LABEL_22;
  }

  if ([v15 isEqualToString:@"OpenURL"])
  {
    v16 = v7;
    v17 = 4;
    goto LABEL_21;
  }

  if ([v15 isEqualToString:@"GotoFinance"])
  {
    [(AMSFinanceActionResponse *)v7 setKind:4];
    v19 = [(AMSFinanceActionResponse *)v7 URL];
    v20 = v19;
    v21 = @"itms-ui";
  }

  else
  {
    if (![v15 isEqualToString:@"GotoFinanceV2"])
    {
      goto LABEL_22;
    }

    [(AMSFinanceActionResponse *)v7 setKind:4];
    v19 = [(AMSFinanceActionResponse *)v7 URL];
    v20 = v19;
    v21 = @"ams-ui";
  }

  v22 = [v19 ams_URLByReplacingSchemeWithScheme:v21];
  [(AMSFinanceActionResponse *)v7 setURL:v22];

LABEL_22:

  return v7;
}

+ (id)actionWithUpdatedCreditString:(id)a3 account:(id)a4 taskInfo:(id)a5
{
  v7 = a5;
  v8 = a4;
  v9 = a3;
  v10 = [[AMSFinanceActionResponse alloc] initWithTaskInfo:v7];

  [(AMSFinanceActionResponse *)v10 setKind:1];
  [(AMSFinanceActionResponse *)v10 setAccount:v8];

  [(AMSFinanceActionResponse *)v10 setCreditString:v9];

  return v10;
}

+ (void)handleExternalGotoURL:(id)a3 taskInfo:(id)a4
{
  v22 = *MEMORY[0x1E69E9840];
  v7 = a3;
  v8 = a4;
  v9 = +[AMSLogConfig sharedConfig];
  if (!v9)
  {
    v9 = +[AMSLogConfig sharedConfig];
  }

  v10 = [v9 OSLogObject];
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
  {
    v11 = AMSLogKey();
    v12 = MEMORY[0x1E696AEC0];
    v13 = objc_opt_class();
    v14 = v13;
    if (v11)
    {
      v4 = AMSLogKey();
      [v12 stringWithFormat:@"%@: [%@] ", v14, v4];
    }

    else
    {
      [v12 stringWithFormat:@"%@: ", v13];
    }
    v15 = ;
    v16 = AMSLogableURL(v7);
    *buf = 138543618;
    v19 = v15;
    v20 = 2114;
    v21 = v16;
    _os_log_impl(&dword_192869000, v10, OS_LOG_TYPE_DEFAULT, "%{public}@Action opening standard URL: %{public}@", buf, 0x16u);
    if (v11)
    {

      v15 = v4;
    }
  }

  if (v8 && [a1 _stashTIDContinueHeadersForTaskInfo:v8])
  {
    v17 = [v7 ams_URLByAppendingQueryParameter:@"1" name:@"signatureResumption"];

    v7 = v17;
  }

  [AMSOpenURL openStandardURL:v7];
}

+ (id)handleGotoURL:(id)a3 taskInfo:(id)a4 gotoType:(int64_t)a5 accountURL:(BOOL)a6 tidContinue:(BOOL)a7 retryOnSuccess:(BOOL)a8
{
  v9 = a8;
  v51 = a6;
  v53 = a7;
  v60 = *MEMORY[0x1E69E9840];
  v12 = a3;
  v13 = a4;
  v14 = +[AMSLogConfig sharedConfig];
  if (!v14)
  {
    v14 = +[AMSLogConfig sharedConfig];
  }

  v15 = [v14 OSLogObject];
  if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
  {
    v16 = AMSLogKey();
    v17 = MEMORY[0x1E696AEC0];
    v18 = objc_opt_class();
    v19 = v18;
    if (v16)
    {
      v8 = AMSLogKey();
      [v17 stringWithFormat:@"%@: [%@] ", v19, v8];
    }

    else
    {
      [v17 stringWithFormat:@"%@: ", v18];
    }
    v20 = ;
    v21 = AMSLogableURL(v12);
    *buf = 138543618;
    v57 = v20;
    v58 = 2114;
    v59 = v21;
    _os_log_impl(&dword_192869000, v15, OS_LOG_TYPE_DEFAULT, "%{public}@Action opening Goto URL: %{public}@", buf, 0x16u);
    if (v16)
    {

      v20 = v8;
    }
  }

  v22 = 0;
  if (v12 && v13)
  {
    [a1 _stashTIDContinueHeadersForTaskInfo:v13];
    v23 = [a1 _presentEngagementForURL:v12 taskInfo:v13];
    v55 = 0;
    v24 = [v23 resultWithError:&v55];
    v25 = v55;

    if (v24)
    {
      v26 = 1;
    }

    else
    {
      v27 = [v25 userInfo];
      v28 = [v27 objectForKeyedSubscript:@"AMSEngagementPresented"];
      if (objc_opt_respondsToSelector())
      {
        [v25 userInfo];
        v29 = v49 = v9;
        v30 = [v29 objectForKeyedSubscript:@"AMSEngagementPresented"];
        v31 = [v30 BOOLValue];

        v26 = v31;
        v9 = v49;
      }

      else
      {
        v26 = 0;
      }
    }

    if ([v25 code] == 4097)
    {
      v32 = [v25 domain];
      v33 = [v32 isEqualToString:*MEMORY[0x1E696A250]];
    }

    else
    {
      v33 = 0;
    }

    if (((v26 | v33) & 1) == 0)
    {
      v34 = [a1 _deepLinkForURL:v12 taskInfo:v13 gotoType:a5 isAccountURL:v51 tidContinue:v53];
      [v13 properties];
      v35 = v52 = v26;
      [v35 clientInfo];
      v54 = v24;
      v36 = v12;
      v37 = v25;
      v39 = v38 = v9;
      v40 = [v13 properties];
      v41 = [v40 bag];
      v42 = [AMSOpenURL openURL:v34 clientInfo:v39 bag:v41];

      v9 = v38;
      v25 = v37;
      v12 = v36;
      v24 = v54;

      v26 = v52;
    }

    if (!v26)
    {
      goto LABEL_28;
    }

    if (v25)
    {
      v43 = [AMSURLAction actionWithError:v25];
      goto LABEL_29;
    }

    if (v24)
    {
      v44 = [v13 task];
      v45 = [v44 originalRequest];
      v43 = [v24 ams_requestActionFromRequest:v45];
    }

    else
    {
LABEL_28:
      v43 = 0;
    }

LABEL_29:
    if (!v43 && v9)
    {
      v43 = +[AMSURLAction retryAction];
      [v43 setRetryIdentifier:@"GotoAction"];
    }

    if (!v43)
    {
      v46 = [v24 ams_buyParams];

      if (!v46 || (+[AMSURLAction retryAction], (v43 = objc_claimAutoreleasedReturnValue()) == 0))
      {
        v43 = +[AMSURLAction proceedAction];
      }
    }

    v47 = [v24 ams_buyParams];
    [v43 setUpdatedBuyParams:v47];

    v22 = objc_alloc_init(AMSOpenActionResult);
    [(AMSOpenActionResult *)v22 setEngagementPresented:v26];
    [(AMSOpenActionResult *)v22 setInterruptionResult:v24 != 0];
    [(AMSOpenActionResult *)v22 setAction:v43];
  }

  return v22;
}

- (id)performWithTaskInfo:(id)a3
{
  v4 = [(AMSFinanceActionResponse *)self kind];
  switch(v4)
  {
    case 4:
      v5 = [(AMSFinanceActionResponse *)self _performOpenStandardURL];
      break;
    case 3:
      v5 = [(AMSFinanceActionResponse *)self _handleGotoAction];
      break;
    case 1:
      v5 = [(AMSFinanceActionResponse *)self _performCreditDisplayUpdate];
      break;
    default:
      v5 = 0;
      break;
  }

  return v5;
}

+ (id)_bodyObjectFromRequest:(id)a3
{
  v23 = *MEMORY[0x1E69E9840];
  v3 = a3;
  v4 = [v3 allHTTPHeaderFields];
  v5 = [v4 objectForKeyedSubscript:@"Content-Type"];

  v6 = [v3 HTTPBody];

  if ([v5 length] && objc_msgSend(v6, "length"))
  {
    v16 = 0;
    v7 = [AMSData objectWithData:v6 encoding:[AMSData dataEncodingFromContentType:v5] error:&v16];
    v8 = v16;
    if (v8)
    {
      v9 = +[AMSLogConfig sharedConfig];
      if (!v9)
      {
        v9 = +[AMSLogConfig sharedConfig];
      }

      v10 = [v9 OSLogObject];
      if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
      {
        v11 = objc_opt_class();
        v12 = AMSLogKey();
        *buf = 138543874;
        v18 = v11;
        v19 = 2114;
        v20 = v12;
        v21 = 2114;
        v22 = v8;
        _os_log_impl(&dword_192869000, v10, OS_LOG_TYPE_ERROR, "%{public}@: [%{public}@] Failed to encode body object from request. Falling back to string encoding. %{public}@", buf, 0x20u);
      }

      v13 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithData:v6 encoding:4];
    }

    else
    {
      v13 = v7;
    }

    v14 = v13;
  }

  else
  {
    v14 = 0;
  }

  return v14;
}

- (id)_performCreditDisplayUpdate
{
  v26 = *MEMORY[0x1E69E9840];
  v3 = [(AMSFinanceActionResponse *)self account];
  if (v3)
  {
    v4 = v3;
    v5 = [(AMSFinanceActionResponse *)self creditString];

    if (v5)
    {
      v6 = +[AMSLogConfig sharedConfig];
      if (!v6)
      {
        v6 = +[AMSLogConfig sharedConfig];
      }

      v7 = [v6 OSLogObject];
      if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
      {
        v8 = objc_opt_class();
        v9 = v8;
        v10 = [(AMSFinanceActionResponse *)self taskInfo];
        v11 = [v10 properties];
        v12 = [v11 logUUID];
        v22 = 138543618;
        v23 = v8;
        v24 = 2114;
        v25 = v12;
        _os_log_impl(&dword_192869000, v7, OS_LOG_TYPE_DEFAULT, "%{public}@: [%{public}@] Performing creditDisplay response action", &v22, 0x16u);
      }

      v13 = [(AMSFinanceActionResponse *)self account];
      v14 = [(AMSFinanceActionResponse *)self creditString];
      [v13 ams_setCreditsString:v14];

      v15 = MEMORY[0x1E6959A48];
      v16 = [(AMSFinanceActionResponse *)self taskInfo];
      v17 = [v16 properties];
      v18 = [v17 clientInfo];
      v19 = [v15 ams_sharedAccountStoreForProcessInfo:v18];

      v20 = [v19 ams_saveAccount:v13 verifyCredentials:0];
    }
  }

  return 0;
}

- (id)_performGotoURL
{
  v18 = *MEMORY[0x1E69E9840];
  v3 = [(AMSFinanceActionResponse *)self URL];

  if (v3)
  {
    v4 = +[AMSLogConfig sharedConfig];
    if (!v4)
    {
      v4 = +[AMSLogConfig sharedConfig];
    }

    v5 = [v4 OSLogObject];
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      v6 = objc_opt_class();
      v7 = v6;
      v8 = [(AMSFinanceActionResponse *)self taskInfo];
      v9 = [v8 properties];
      v10 = [v9 logUUID];
      v14 = 138543618;
      v15 = v6;
      v16 = 2114;
      v17 = v10;
      _os_log_impl(&dword_192869000, v5, OS_LOG_TYPE_DEFAULT, "%{public}@: [%{public}@] Performing Goto response action", &v14, 0x16u);
    }

    v11 = [(AMSFinanceActionResponse *)self URL];
    v12 = [AMSURLAction redirectActionWithURL:v11];
  }

  else
  {
    v12 = 0;
  }

  return v12;
}

- (id)_performOpenStandardURL
{
  v3 = [(AMSFinanceActionResponse *)self URL];

  if (v3)
  {
    v4 = objc_opt_class();
    v5 = [(AMSFinanceActionResponse *)self URL];
    v6 = [(AMSFinanceActionResponse *)self taskInfo];
    [v4 handleExternalGotoURL:v5 taskInfo:v6];
  }

  return 0;
}

- (id)_handleGotoAction
{
  v21 = *MEMORY[0x1E69E9840];
  v3 = [(AMSFinanceActionResponse *)self URL];

  if (v3)
  {
    v4 = +[AMSLogConfig sharedConfig];
    if (!v4)
    {
      v4 = +[AMSLogConfig sharedConfig];
    }

    v5 = [v4 OSLogObject];
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      v6 = objc_opt_class();
      v7 = v6;
      v8 = [(AMSFinanceActionResponse *)self taskInfo];
      v9 = [v8 properties];
      v10 = [v9 logUUID];
      v17 = 138543618;
      v18 = v6;
      v19 = 2114;
      v20 = v10;
      _os_log_impl(&dword_192869000, v5, OS_LOG_TYPE_DEFAULT, "%{public}@: [%{public}@] Action opening app URL", &v17, 0x16u);
    }

    v11 = objc_opt_class();
    v12 = [(AMSFinanceActionResponse *)self URL];
    v13 = [(AMSFinanceActionResponse *)self taskInfo];
    v14 = [v11 handleGotoURL:v12 taskInfo:v13 gotoType:1 accountURL:0 tidContinue:-[AMSFinanceActionResponse tidContinue](self retryOnSuccess:{"tidContinue"), -[AMSFinanceActionResponse shouldRetry](self, "shouldRetry")}];

    v15 = [v14 action];
  }

  else
  {
    v15 = 0;
  }

  return v15;
}

+ (id)_presentEngagementForURL:(id)a3 taskInfo:(id)a4
{
  v49 = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = a4;
  v8 = +[AMSLogConfig sharedConfig];
  if (!v8)
  {
    v8 = +[AMSLogConfig sharedConfig];
  }

  v9 = [v8 OSLogObject];
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
  {
    v10 = objc_opt_class();
    v11 = AMSLogKey();
    *buf = 138543618;
    v44 = v10;
    v45 = 2114;
    v46 = v11;
    _os_log_impl(&dword_192869000, v9, OS_LOG_TYPE_DEFAULT, "%{public}@: [%{public}@] Attempting inline engagement.", buf, 0x16u);
  }

  v12 = [v7 session];
  v13 = [v12 delegate];

  if ((objc_opt_respondsToSelector() & 1) == 0)
  {
    v14 = AMSError(2, @"Finance Engagement Error", @"No delegate to present the engagement", 0);
    v32 = +[AMSLogConfig sharedConfig];
    if (!v32)
    {
      v32 = +[AMSLogConfig sharedConfig];
    }

    v33 = [v32 OSLogObject];
    if (!os_log_type_enabled(v33, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_22;
    }

    v34 = objc_opt_class();
    v35 = AMSLogKey();
    *buf = 138543874;
    v44 = v34;
    v45 = 2114;
    v46 = v35;
    v47 = 2114;
    v48 = v14;
    v36 = "%{public}@: [%{public}@] Failed to present engagement (no delegate). %{public}@";
    goto LABEL_21;
  }

  if (!v6)
  {
    v14 = AMSError(2, @"Finance Engagement Error", @"No URL for engagement", 0);
    v32 = +[AMSLogConfig sharedConfig];
    if (!v32)
    {
      v32 = +[AMSLogConfig sharedConfig];
    }

    v33 = [v32 OSLogObject];
    if (!os_log_type_enabled(v33, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_22;
    }

    v37 = objc_opt_class();
    v35 = AMSLogKey();
    *buf = 138543874;
    v44 = v37;
    v45 = 2114;
    v46 = v35;
    v47 = 2114;
    v48 = v14;
    v36 = "%{public}@: [%{public}@] Failed to present engagement (no URL). %{public}@";
    goto LABEL_21;
  }

  if ([a1 _isModernURL:v6 taskInfo:v7])
  {
    v14 = objc_alloc_init(MEMORY[0x1E695DF90]);
    v15 = [v7 task];
    v16 = [v15 originalRequest];
    v17 = [v16 URL];
    v18 = [v17 absoluteString];
    [v14 setObject:v18 forKeyedSubscript:@"url"];

    v19 = [v7 task];
    v20 = [v19 originalRequest];
    v21 = [a1 _bodyObjectFromRequest:v20];
    [v14 setObject:v21 forKeyedSubscript:@"body"];

    v22 = objc_alloc_init(AMSEngagementRequest);
    v23 = [v7 properties];
    v24 = [v23 account];
    [(AMSEngagementRequest *)v22 setAccount:v24];

    v25 = AMSLogKey();
    [(AMSEngagementRequest *)v22 setLogKey:v25];

    [(AMSEngagementRequest *)v22 setFailOnDismiss:1];
    [(AMSEngagementRequest *)v22 setSilentlyCheckURL:1];
    v41[0] = @"inlineInterrupt";
    v41[1] = @"request";
    v42[0] = MEMORY[0x1E695E118];
    v42[1] = v14;
    v26 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v42 forKeys:v41 count:2];
    [(AMSEngagementRequest *)v22 setClientData:v26];

    v27 = [v6 ams_URLByReplacingSchemeWithScheme:@"https"];
    [(AMSEngagementRequest *)v22 setURL:v27];

    v28 = objc_alloc_init(AMSPromise);
    v29 = [v7 session];
    v30 = [v7 task];
    v31 = [(AMSPromise *)v28 completionHandlerAdapter];
    [v13 AMSURLSession:v29 task:v30 handleEngagementRequest:v22 completion:v31];

    v40[0] = MEMORY[0x1E69E9820];
    v40[1] = 3221225472;
    v40[2] = __62__AMSFinanceActionResponse__presentEngagementForURL_taskInfo___block_invoke;
    v40[3] = &__block_descriptor_40_e41_v24__0__AMSEngagementResult_8__NSError_16l;
    v40[4] = a1;
    [(AMSPromise *)v28 addFinishBlock:v40];

    goto LABEL_23;
  }

  v14 = AMSError(2, @"Finance Engagement Error", @"URL does not match patterns", 0);
  v32 = +[AMSLogConfig sharedConfig];
  if (!v32)
  {
    v32 = +[AMSLogConfig sharedConfig];
  }

  v33 = [v32 OSLogObject];
  if (os_log_type_enabled(v33, OS_LOG_TYPE_ERROR))
  {
    v38 = objc_opt_class();
    v35 = AMSLogKey();
    *buf = 138543874;
    v44 = v38;
    v45 = 2114;
    v46 = v35;
    v47 = 2114;
    v48 = v14;
    v36 = "%{public}@: [%{public}@] Failed to present engagement (patterns). %{public}@";
LABEL_21:
    _os_log_impl(&dword_192869000, v33, OS_LOG_TYPE_ERROR, v36, buf, 0x20u);
  }

LABEL_22:

  v28 = [AMSPromise promiseWithError:v14];
LABEL_23:

  return v28;
}

void __62__AMSFinanceActionResponse__presentEngagementForURL_taskInfo___block_invoke(uint64_t a1, uint64_t a2, void *a3)
{
  v21 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = +[AMSLogConfig sharedConfig];
  v6 = v5;
  if (a2)
  {
    if (!v5)
    {
      v6 = +[AMSLogConfig sharedConfig];
    }

    v7 = [v6 OSLogObject];
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      v8 = objc_opt_class();
      v9 = AMSLogKey();
      v15 = 138543618;
      v16 = v8;
      v17 = 2114;
      v18 = v9;
      v10 = "%{public}@: [%{public}@] Engagement succeeded.";
      v11 = v7;
      v12 = OS_LOG_TYPE_DEFAULT;
      v13 = 22;
LABEL_10:
      _os_log_impl(&dword_192869000, v11, v12, v10, &v15, v13);
    }
  }

  else
  {
    if (!v5)
    {
      v6 = +[AMSLogConfig sharedConfig];
    }

    v7 = [v6 OSLogObject];
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      v14 = objc_opt_class();
      v9 = AMSLogKey();
      v15 = 138543874;
      v16 = v14;
      v17 = 2114;
      v18 = v9;
      v19 = 2114;
      v20 = v4;
      v10 = "%{public}@: [%{public}@] Engagement failed. %{public}@";
      v11 = v7;
      v12 = OS_LOG_TYPE_ERROR;
      v13 = 32;
      goto LABEL_10;
    }
  }
}

+ (BOOL)_stashTIDContinueHeadersForTaskInfo:(id)a3
{
  v3 = [a3 task];
  v4 = [v3 currentRequest];
  v5 = [AMSBiometrics resumptionHeadersFromRequest:v4];

  if (v5)
  {
    v6 = [AMSKeychain stashResumptionHeaders:v5 error:0];
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

+ (id)_deepLinkForURL:(id)a3 taskInfo:(id)a4 gotoType:(int64_t)a5 isAccountURL:(BOOL)a6 tidContinue:(BOOL)a7
{
  v7 = a7;
  v8 = a6;
  v12 = a3;
  v13 = a4;
  v14 = v12;
  v15 = v14;
  if (v8)
  {
    v15 = [a1 _URLForCommerceUIFromURL:v14 taskInfo:v13 tidContinue:v7];
  }

  if (a5 == 3)
  {
    v16 = &AMSUIURLScheme;
  }

  else
  {
    if (a5 != 2)
    {
      goto LABEL_8;
    }

    v16 = ITMSUIURLScheme;
  }

  v17 = [v15 ams_URLByReplacingSchemeWithScheme:*v16];

  v15 = v17;
LABEL_8:

  return v15;
}

+ (BOOL)_isModernURL:(id)a3 taskInfo:(id)a4
{
  v28 = *MEMORY[0x1E69E9840];
  v5 = a4;
  v6 = a3;
  v7 = [AMSURLParser alloc];
  v8 = [v5 properties];
  v9 = [v8 bag];
  v10 = [(AMSURLParser *)v7 initWithBag:v9];

  v11 = [(AMSURLParser *)v10 typeForURL:v6];

  v21 = 0;
  v12 = [v11 resultWithError:&v21];
  v13 = v21;

  if (v13 || !v12)
  {
    v15 = +[AMSLogConfig sharedConfig];
    if (!v15)
    {
      v15 = +[AMSLogConfig sharedConfig];
    }

    v16 = [v15 OSLogObject];
    if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
    {
      v17 = objc_opt_class();
      v18 = [v5 properties];
      v19 = [v18 logUUID];
      *buf = 138543874;
      v23 = v17;
      v24 = 2114;
      v25 = v19;
      v26 = 2114;
      v27 = v13;
      _os_log_impl(&dword_192869000, v16, OS_LOG_TYPE_ERROR, "%{public}@: [%{public}@] Failed to parse URL. %{public}@", buf, 0x20u);
    }

    v14 = 0;
  }

  else
  {
    v14 = [v12 integerValue] != 1;
  }

  return v14;
}

+ (id)_URLForCommerceUIFromURL:(id)a3 taskInfo:(id)a4 tidContinue:(BOOL)a5
{
  v5 = a5;
  v7 = MEMORY[0x1E695DF90];
  v8 = a4;
  v9 = a3;
  v10 = objc_alloc_init(v7);
  [v10 setObject:@"account" forKeyedSubscript:@"action"];
  v11 = [v8 properties];
  v12 = [v11 account];
  v13 = [v12 accountType];
  v14 = [v13 identifier];
  [v10 setObject:v14 forKeyedSubscript:@"accountType"];

  v15 = [v8 properties];
  v16 = [v15 account];
  v17 = [v16 ams_DSID];
  v18 = [v17 stringValue];
  [v10 setObject:v18 forKeyedSubscript:@"dsid"];

  v19 = [v8 properties];

  v20 = [v19 account];
  v21 = [v20 username];
  [v10 setObject:v21 forKeyedSubscript:@"username"];

  if (v5)
  {
    [v10 setObject:@"1" forKeyedSubscript:@"signatureResumption"];
  }

  v22 = [MEMORY[0x1E695DFF8] URLWithString:@"http://"];
  v23 = [v22 ams_URLByReplacingQueryParameters:v10];

  v24 = [v9 absoluteString];

  v25 = [v23 ams_URLByAppendingQueryParameter:v24 name:@"url"];

  return v25;
}

@end