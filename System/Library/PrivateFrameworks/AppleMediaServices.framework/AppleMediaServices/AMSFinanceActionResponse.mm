@interface AMSFinanceActionResponse
+ (BOOL)_isModernURL:(id)l taskInfo:(id)info;
+ (BOOL)_stashTIDContinueHeadersForTaskInfo:(id)info;
+ (id)_URLForCommerceUIFromURL:(id)l taskInfo:(id)info tidContinue:(BOOL)continue;
+ (id)_bodyObjectFromRequest:(id)request;
+ (id)_deepLinkForURL:(id)l taskInfo:(id)info gotoType:(int64_t)type isAccountURL:(BOOL)rL tidContinue:(BOOL)continue;
+ (id)_presentEngagementForURL:(id)l taskInfo:(id)info;
+ (id)actionWithActionDictionary:(id)dictionary taskInfo:(id)info;
+ (id)actionWithUpdatedCreditString:(id)string account:(id)account taskInfo:(id)info;
+ (id)handleGotoURL:(id)l taskInfo:(id)info gotoType:(int64_t)type accountURL:(BOOL)rL tidContinue:(BOOL)continue retryOnSuccess:(BOOL)success;
+ (void)handleExternalGotoURL:(id)l taskInfo:(id)info;
- (AMSFinanceActionResponse)initWithTaskInfo:(id)info;
- (id)_handleGotoAction;
- (id)_performCreditDisplayUpdate;
- (id)_performGotoURL;
- (id)_performOpenStandardURL;
- (id)performWithTaskInfo:(id)info;
@end

@implementation AMSFinanceActionResponse

- (AMSFinanceActionResponse)initWithTaskInfo:(id)info
{
  infoCopy = info;
  if (infoCopy)
  {
    v10.receiver = self;
    v10.super_class = AMSFinanceActionResponse;
    v6 = [(AMSFinanceActionResponse *)&v10 init];
    v7 = v6;
    if (v6)
    {
      objc_storeStrong(&v6->_taskInfo, info);
    }

    self = v7;
    selfCopy = self;
  }

  else
  {
    selfCopy = 0;
  }

  return selfCopy;
}

+ (id)actionWithActionDictionary:(id)dictionary taskInfo:(id)info
{
  dictionaryCopy = dictionary;
  infoCopy = info;
  v7 = [[AMSFinanceActionResponse alloc] initWithTaskInfo:infoCopy];

  v8 = [dictionaryCopy objectForKeyedSubscript:@"retry"];
  if (objc_opt_respondsToSelector())
  {
    v9 = [dictionaryCopy objectForKeyedSubscript:@"retry"];
    -[AMSFinanceActionResponse setShouldRetry:](v7, "setShouldRetry:", [v9 BOOLValue]);
  }

  else
  {
    [(AMSFinanceActionResponse *)v7 setShouldRetry:0];
  }

  v10 = [dictionaryCopy objectForKeyedSubscript:@"tidContinue"];
  if (objc_opt_respondsToSelector())
  {
    v11 = [dictionaryCopy objectForKeyedSubscript:@"tidContinue"];
    -[AMSFinanceActionResponse setTidContinue:](v7, "setTidContinue:", [v11 BOOLValue]);
  }

  else
  {
    [(AMSFinanceActionResponse *)v7 setTidContinue:0];
  }

  v12 = [dictionaryCopy objectForKeyedSubscript:@"url"];
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
  v15 = [dictionaryCopy objectForKeyedSubscript:@"kind"];
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

+ (id)actionWithUpdatedCreditString:(id)string account:(id)account taskInfo:(id)info
{
  infoCopy = info;
  accountCopy = account;
  stringCopy = string;
  v10 = [[AMSFinanceActionResponse alloc] initWithTaskInfo:infoCopy];

  [(AMSFinanceActionResponse *)v10 setKind:1];
  [(AMSFinanceActionResponse *)v10 setAccount:accountCopy];

  [(AMSFinanceActionResponse *)v10 setCreditString:stringCopy];

  return v10;
}

+ (void)handleExternalGotoURL:(id)l taskInfo:(id)info
{
  v22 = *MEMORY[0x1E69E9840];
  lCopy = l;
  infoCopy = info;
  v9 = +[AMSLogConfig sharedConfig];
  if (!v9)
  {
    v9 = +[AMSLogConfig sharedConfig];
  }

  oSLogObject = [v9 OSLogObject];
  if (os_log_type_enabled(oSLogObject, OS_LOG_TYPE_DEFAULT))
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
    v16 = AMSLogableURL(lCopy);
    *buf = 138543618;
    v19 = v15;
    v20 = 2114;
    v21 = v16;
    _os_log_impl(&dword_192869000, oSLogObject, OS_LOG_TYPE_DEFAULT, "%{public}@Action opening standard URL: %{public}@", buf, 0x16u);
    if (v11)
    {

      v15 = v4;
    }
  }

  if (infoCopy && [self _stashTIDContinueHeadersForTaskInfo:infoCopy])
  {
    v17 = [lCopy ams_URLByAppendingQueryParameter:@"1" name:@"signatureResumption"];

    lCopy = v17;
  }

  [AMSOpenURL openStandardURL:lCopy];
}

+ (id)handleGotoURL:(id)l taskInfo:(id)info gotoType:(int64_t)type accountURL:(BOOL)rL tidContinue:(BOOL)continue retryOnSuccess:(BOOL)success
{
  successCopy = success;
  rLCopy = rL;
  continueCopy = continue;
  v60 = *MEMORY[0x1E69E9840];
  lCopy = l;
  infoCopy = info;
  v14 = +[AMSLogConfig sharedConfig];
  if (!v14)
  {
    v14 = +[AMSLogConfig sharedConfig];
  }

  oSLogObject = [v14 OSLogObject];
  if (os_log_type_enabled(oSLogObject, OS_LOG_TYPE_DEFAULT))
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
    v21 = AMSLogableURL(lCopy);
    *buf = 138543618;
    v57 = v20;
    v58 = 2114;
    v59 = v21;
    _os_log_impl(&dword_192869000, oSLogObject, OS_LOG_TYPE_DEFAULT, "%{public}@Action opening Goto URL: %{public}@", buf, 0x16u);
    if (v16)
    {

      v20 = v8;
    }
  }

  v22 = 0;
  if (lCopy && infoCopy)
  {
    [self _stashTIDContinueHeadersForTaskInfo:infoCopy];
    v23 = [self _presentEngagementForURL:lCopy taskInfo:infoCopy];
    v55 = 0;
    v24 = [v23 resultWithError:&v55];
    v25 = v55;

    if (v24)
    {
      v26 = 1;
    }

    else
    {
      userInfo = [v25 userInfo];
      v28 = [userInfo objectForKeyedSubscript:@"AMSEngagementPresented"];
      if (objc_opt_respondsToSelector())
      {
        [v25 userInfo];
        v29 = v49 = successCopy;
        v30 = [v29 objectForKeyedSubscript:@"AMSEngagementPresented"];
        bOOLValue = [v30 BOOLValue];

        v26 = bOOLValue;
        successCopy = v49;
      }

      else
      {
        v26 = 0;
      }
    }

    if ([v25 code] == 4097)
    {
      domain = [v25 domain];
      v33 = [domain isEqualToString:*MEMORY[0x1E696A250]];
    }

    else
    {
      v33 = 0;
    }

    if (((v26 | v33) & 1) == 0)
    {
      v34 = [self _deepLinkForURL:lCopy taskInfo:infoCopy gotoType:type isAccountURL:rLCopy tidContinue:continueCopy];
      [infoCopy properties];
      v35 = v52 = v26;
      [v35 clientInfo];
      v54 = v24;
      v36 = lCopy;
      v37 = v25;
      v39 = v38 = successCopy;
      properties = [infoCopy properties];
      v41 = [properties bag];
      v42 = [AMSOpenURL openURL:v34 clientInfo:v39 bag:v41];

      successCopy = v38;
      v25 = v37;
      lCopy = v36;
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
      task = [infoCopy task];
      originalRequest = [task originalRequest];
      v43 = [v24 ams_requestActionFromRequest:originalRequest];
    }

    else
    {
LABEL_28:
      v43 = 0;
    }

LABEL_29:
    if (!v43 && successCopy)
    {
      v43 = +[AMSURLAction retryAction];
      [v43 setRetryIdentifier:@"GotoAction"];
    }

    if (!v43)
    {
      ams_buyParams = [v24 ams_buyParams];

      if (!ams_buyParams || (+[AMSURLAction retryAction], (v43 = objc_claimAutoreleasedReturnValue()) == 0))
      {
        v43 = +[AMSURLAction proceedAction];
      }
    }

    ams_buyParams2 = [v24 ams_buyParams];
    [v43 setUpdatedBuyParams:ams_buyParams2];

    v22 = objc_alloc_init(AMSOpenActionResult);
    [(AMSOpenActionResult *)v22 setEngagementPresented:v26];
    [(AMSOpenActionResult *)v22 setInterruptionResult:v24 != 0];
    [(AMSOpenActionResult *)v22 setAction:v43];
  }

  return v22;
}

- (id)performWithTaskInfo:(id)info
{
  kind = [(AMSFinanceActionResponse *)self kind];
  switch(kind)
  {
    case 4:
      _performOpenStandardURL = [(AMSFinanceActionResponse *)self _performOpenStandardURL];
      break;
    case 3:
      _performOpenStandardURL = [(AMSFinanceActionResponse *)self _handleGotoAction];
      break;
    case 1:
      _performOpenStandardURL = [(AMSFinanceActionResponse *)self _performCreditDisplayUpdate];
      break;
    default:
      _performOpenStandardURL = 0;
      break;
  }

  return _performOpenStandardURL;
}

+ (id)_bodyObjectFromRequest:(id)request
{
  v23 = *MEMORY[0x1E69E9840];
  requestCopy = request;
  allHTTPHeaderFields = [requestCopy allHTTPHeaderFields];
  v5 = [allHTTPHeaderFields objectForKeyedSubscript:@"Content-Type"];

  hTTPBody = [requestCopy HTTPBody];

  if ([v5 length] && objc_msgSend(hTTPBody, "length"))
  {
    v16 = 0;
    v7 = [AMSData objectWithData:hTTPBody encoding:[AMSData dataEncodingFromContentType:v5] error:&v16];
    v8 = v16;
    if (v8)
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
        v12 = AMSLogKey();
        *buf = 138543874;
        v18 = v11;
        v19 = 2114;
        v20 = v12;
        v21 = 2114;
        v22 = v8;
        _os_log_impl(&dword_192869000, oSLogObject, OS_LOG_TYPE_ERROR, "%{public}@: [%{public}@] Failed to encode body object from request. Falling back to string encoding. %{public}@", buf, 0x20u);
      }

      v13 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithData:hTTPBody encoding:4];
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
  account = [(AMSFinanceActionResponse *)self account];
  if (account)
  {
    v4 = account;
    creditString = [(AMSFinanceActionResponse *)self creditString];

    if (creditString)
    {
      v6 = +[AMSLogConfig sharedConfig];
      if (!v6)
      {
        v6 = +[AMSLogConfig sharedConfig];
      }

      oSLogObject = [v6 OSLogObject];
      if (os_log_type_enabled(oSLogObject, OS_LOG_TYPE_DEFAULT))
      {
        v8 = objc_opt_class();
        v9 = v8;
        taskInfo = [(AMSFinanceActionResponse *)self taskInfo];
        properties = [taskInfo properties];
        logUUID = [properties logUUID];
        v22 = 138543618;
        v23 = v8;
        v24 = 2114;
        v25 = logUUID;
        _os_log_impl(&dword_192869000, oSLogObject, OS_LOG_TYPE_DEFAULT, "%{public}@: [%{public}@] Performing creditDisplay response action", &v22, 0x16u);
      }

      account2 = [(AMSFinanceActionResponse *)self account];
      creditString2 = [(AMSFinanceActionResponse *)self creditString];
      [account2 ams_setCreditsString:creditString2];

      v15 = MEMORY[0x1E6959A48];
      taskInfo2 = [(AMSFinanceActionResponse *)self taskInfo];
      properties2 = [taskInfo2 properties];
      clientInfo = [properties2 clientInfo];
      v19 = [v15 ams_sharedAccountStoreForProcessInfo:clientInfo];

      v20 = [v19 ams_saveAccount:account2 verifyCredentials:0];
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

    oSLogObject = [v4 OSLogObject];
    if (os_log_type_enabled(oSLogObject, OS_LOG_TYPE_DEFAULT))
    {
      v6 = objc_opt_class();
      v7 = v6;
      taskInfo = [(AMSFinanceActionResponse *)self taskInfo];
      properties = [taskInfo properties];
      logUUID = [properties logUUID];
      v14 = 138543618;
      v15 = v6;
      v16 = 2114;
      v17 = logUUID;
      _os_log_impl(&dword_192869000, oSLogObject, OS_LOG_TYPE_DEFAULT, "%{public}@: [%{public}@] Performing Goto response action", &v14, 0x16u);
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
    taskInfo = [(AMSFinanceActionResponse *)self taskInfo];
    [v4 handleExternalGotoURL:v5 taskInfo:taskInfo];
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

    oSLogObject = [v4 OSLogObject];
    if (os_log_type_enabled(oSLogObject, OS_LOG_TYPE_DEFAULT))
    {
      v6 = objc_opt_class();
      v7 = v6;
      taskInfo = [(AMSFinanceActionResponse *)self taskInfo];
      properties = [taskInfo properties];
      logUUID = [properties logUUID];
      v17 = 138543618;
      v18 = v6;
      v19 = 2114;
      v20 = logUUID;
      _os_log_impl(&dword_192869000, oSLogObject, OS_LOG_TYPE_DEFAULT, "%{public}@: [%{public}@] Action opening app URL", &v17, 0x16u);
    }

    v11 = objc_opt_class();
    v12 = [(AMSFinanceActionResponse *)self URL];
    taskInfo2 = [(AMSFinanceActionResponse *)self taskInfo];
    v14 = [v11 handleGotoURL:v12 taskInfo:taskInfo2 gotoType:1 accountURL:0 tidContinue:-[AMSFinanceActionResponse tidContinue](self retryOnSuccess:{"tidContinue"), -[AMSFinanceActionResponse shouldRetry](self, "shouldRetry")}];

    action = [v14 action];
  }

  else
  {
    action = 0;
  }

  return action;
}

+ (id)_presentEngagementForURL:(id)l taskInfo:(id)info
{
  v49 = *MEMORY[0x1E69E9840];
  lCopy = l;
  infoCopy = info;
  v8 = +[AMSLogConfig sharedConfig];
  if (!v8)
  {
    v8 = +[AMSLogConfig sharedConfig];
  }

  oSLogObject = [v8 OSLogObject];
  if (os_log_type_enabled(oSLogObject, OS_LOG_TYPE_DEFAULT))
  {
    v10 = objc_opt_class();
    v11 = AMSLogKey();
    *buf = 138543618;
    v44 = v10;
    v45 = 2114;
    v46 = v11;
    _os_log_impl(&dword_192869000, oSLogObject, OS_LOG_TYPE_DEFAULT, "%{public}@: [%{public}@] Attempting inline engagement.", buf, 0x16u);
  }

  session = [infoCopy session];
  delegate = [session delegate];

  if ((objc_opt_respondsToSelector() & 1) == 0)
  {
    v14 = AMSError(2, @"Finance Engagement Error", @"No delegate to present the engagement", 0);
    v32 = +[AMSLogConfig sharedConfig];
    if (!v32)
    {
      v32 = +[AMSLogConfig sharedConfig];
    }

    oSLogObject2 = [v32 OSLogObject];
    if (!os_log_type_enabled(oSLogObject2, OS_LOG_TYPE_ERROR))
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

  if (!lCopy)
  {
    v14 = AMSError(2, @"Finance Engagement Error", @"No URL for engagement", 0);
    v32 = +[AMSLogConfig sharedConfig];
    if (!v32)
    {
      v32 = +[AMSLogConfig sharedConfig];
    }

    oSLogObject2 = [v32 OSLogObject];
    if (!os_log_type_enabled(oSLogObject2, OS_LOG_TYPE_ERROR))
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

  if ([self _isModernURL:lCopy taskInfo:infoCopy])
  {
    v14 = objc_alloc_init(MEMORY[0x1E695DF90]);
    task = [infoCopy task];
    originalRequest = [task originalRequest];
    v17 = [originalRequest URL];
    absoluteString = [v17 absoluteString];
    [v14 setObject:absoluteString forKeyedSubscript:@"url"];

    task2 = [infoCopy task];
    originalRequest2 = [task2 originalRequest];
    v21 = [self _bodyObjectFromRequest:originalRequest2];
    [v14 setObject:v21 forKeyedSubscript:@"body"];

    v22 = objc_alloc_init(AMSEngagementRequest);
    properties = [infoCopy properties];
    account = [properties account];
    [(AMSEngagementRequest *)v22 setAccount:account];

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

    v27 = [lCopy ams_URLByReplacingSchemeWithScheme:@"https"];
    [(AMSEngagementRequest *)v22 setURL:v27];

    v28 = objc_alloc_init(AMSPromise);
    session2 = [infoCopy session];
    task3 = [infoCopy task];
    completionHandlerAdapter = [(AMSPromise *)v28 completionHandlerAdapter];
    [delegate AMSURLSession:session2 task:task3 handleEngagementRequest:v22 completion:completionHandlerAdapter];

    v40[0] = MEMORY[0x1E69E9820];
    v40[1] = 3221225472;
    v40[2] = __62__AMSFinanceActionResponse__presentEngagementForURL_taskInfo___block_invoke;
    v40[3] = &__block_descriptor_40_e41_v24__0__AMSEngagementResult_8__NSError_16l;
    v40[4] = self;
    [(AMSPromise *)v28 addFinishBlock:v40];

    goto LABEL_23;
  }

  v14 = AMSError(2, @"Finance Engagement Error", @"URL does not match patterns", 0);
  v32 = +[AMSLogConfig sharedConfig];
  if (!v32)
  {
    v32 = +[AMSLogConfig sharedConfig];
  }

  oSLogObject2 = [v32 OSLogObject];
  if (os_log_type_enabled(oSLogObject2, OS_LOG_TYPE_ERROR))
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
    _os_log_impl(&dword_192869000, oSLogObject2, OS_LOG_TYPE_ERROR, v36, buf, 0x20u);
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

+ (BOOL)_stashTIDContinueHeadersForTaskInfo:(id)info
{
  task = [info task];
  currentRequest = [task currentRequest];
  v5 = [AMSBiometrics resumptionHeadersFromRequest:currentRequest];

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

+ (id)_deepLinkForURL:(id)l taskInfo:(id)info gotoType:(int64_t)type isAccountURL:(BOOL)rL tidContinue:(BOOL)continue
{
  continueCopy = continue;
  rLCopy = rL;
  lCopy = l;
  infoCopy = info;
  v14 = lCopy;
  v15 = v14;
  if (rLCopy)
  {
    v15 = [self _URLForCommerceUIFromURL:v14 taskInfo:infoCopy tidContinue:continueCopy];
  }

  if (type == 3)
  {
    v16 = &AMSUIURLScheme;
  }

  else
  {
    if (type != 2)
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

+ (BOOL)_isModernURL:(id)l taskInfo:(id)info
{
  v28 = *MEMORY[0x1E69E9840];
  infoCopy = info;
  lCopy = l;
  v7 = [AMSURLParser alloc];
  properties = [infoCopy properties];
  v9 = [properties bag];
  v10 = [(AMSURLParser *)v7 initWithBag:v9];

  v11 = [(AMSURLParser *)v10 typeForURL:lCopy];

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

    oSLogObject = [v15 OSLogObject];
    if (os_log_type_enabled(oSLogObject, OS_LOG_TYPE_ERROR))
    {
      v17 = objc_opt_class();
      properties2 = [infoCopy properties];
      logUUID = [properties2 logUUID];
      *buf = 138543874;
      v23 = v17;
      v24 = 2114;
      v25 = logUUID;
      v26 = 2114;
      v27 = v13;
      _os_log_impl(&dword_192869000, oSLogObject, OS_LOG_TYPE_ERROR, "%{public}@: [%{public}@] Failed to parse URL. %{public}@", buf, 0x20u);
    }

    v14 = 0;
  }

  else
  {
    v14 = [v12 integerValue] != 1;
  }

  return v14;
}

+ (id)_URLForCommerceUIFromURL:(id)l taskInfo:(id)info tidContinue:(BOOL)continue
{
  continueCopy = continue;
  v7 = MEMORY[0x1E695DF90];
  infoCopy = info;
  lCopy = l;
  v10 = objc_alloc_init(v7);
  [v10 setObject:@"account" forKeyedSubscript:@"action"];
  properties = [infoCopy properties];
  account = [properties account];
  accountType = [account accountType];
  identifier = [accountType identifier];
  [v10 setObject:identifier forKeyedSubscript:@"accountType"];

  properties2 = [infoCopy properties];
  account2 = [properties2 account];
  ams_DSID = [account2 ams_DSID];
  stringValue = [ams_DSID stringValue];
  [v10 setObject:stringValue forKeyedSubscript:@"dsid"];

  properties3 = [infoCopy properties];

  account3 = [properties3 account];
  username = [account3 username];
  [v10 setObject:username forKeyedSubscript:@"username"];

  if (continueCopy)
  {
    [v10 setObject:@"1" forKeyedSubscript:@"signatureResumption"];
  }

  v22 = [MEMORY[0x1E695DFF8] URLWithString:@"http://"];
  v23 = [v22 ams_URLByReplacingQueryParameters:v10];

  absoluteString = [lCopy absoluteString];

  v25 = [v23 ams_URLByAppendingQueryParameter:absoluteString name:@"url"];

  return v25;
}

@end