@interface AMSAuthorizeMachineTask
+ (AMSBagKeySet)bagKeySet;
+ (id)createBagForSubProfile;
- (AMSAuthorizeMachineTask)initWithAccount:(id)account authorizeReason:(unint64_t)reason bag:(id)bag;
- (AMSAuthorizeMachineTask)initWithUsername:(id)username authorizeReason:(unint64_t)reason bag:(id)bag presentationDelegate:(id)delegate;
- (AMSRequestPresentationDelegate)presentationDelegate;
- (id)_authenticate;
- (id)_buildRequest;
- (id)_buildRequestParametersWithError:(id *)error;
- (id)_buildRequestTask;
- (id)_checkRequestThrottle;
- (id)_keybagSyncStringForAccount:(id)account withTransactionType:(unsigned int)type error:(id *)error;
- (id)_performAuthorization;
- (void)AMSURLSession:(id)session task:(id)task handleAuthenticateRequest:(id)request completion:(id)completion;
- (void)AMSURLSession:(id)session task:(id)task handleDialogRequest:(id)request completion:(id)completion;
- (void)AMSURLSession:(id)session task:(id)task handleEngagementRequest:(id)request completion:(id)completion;
@end

@implementation AMSAuthorizeMachineTask

- (AMSAuthorizeMachineTask)initWithAccount:(id)account authorizeReason:(unint64_t)reason bag:(id)bag
{
  accountCopy = account;
  bagCopy = bag;
  v16.receiver = self;
  v16.super_class = AMSAuthorizeMachineTask;
  v11 = [(AMSTask *)&v16 init];
  v12 = v11;
  if (v11)
  {
    objc_storeStrong(&v11->_validAccount, account);
    v12->_authorizeReason = reason;
    objc_storeStrong(&v12->_bag, bag);
    v13 = AMSGenerateLogCorrelationKey();
    logKey = v12->_logKey;
    v12->_logKey = v13;
  }

  return v12;
}

- (AMSAuthorizeMachineTask)initWithUsername:(id)username authorizeReason:(unint64_t)reason bag:(id)bag presentationDelegate:(id)delegate
{
  usernameCopy = username;
  delegateCopy = delegate;
  v12 = [(AMSAuthorizeMachineTask *)self initWithAccount:0 authorizeReason:reason bag:bag];
  if (v12)
  {
    v13 = objc_alloc_init(AMSAuthenticateOptions);
    [(AMSAuthenticateOptions *)v13 setAuthenticationType:2];
    [(AMSAuthenticateOptions *)v13 setCanMakeAccountActive:0];
    [(AMSAuthenticateOptions *)v13 setCredentialSource:2];
    [(AMSAuthenticateOptions *)v13 setDebugReason:@"Apple ID authentication for machine task authorization"];
    v14 = [[AMSAuthenticateRequest alloc] initWithDSID:0 altDSID:0 username:usernameCopy options:v13];
    logKey = [(AMSAuthorizeMachineTask *)v12 logKey];
    [(AMSAuthenticateRequest *)v14 setLogKey:logKey];

    authenticateRequest = v12->_authenticateRequest;
    v12->_authenticateRequest = v14;

    objc_storeWeak(&v12->_presentationDelegate, delegateCopy);
  }

  return v12;
}

- (id)_performAuthorization
{
  _checkRequestThrottle = [(AMSAuthorizeMachineTask *)self _checkRequestThrottle];
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __48__AMSAuthorizeMachineTask__performAuthorization__block_invoke;
  v7[3] = &unk_1E73B3F70;
  v7[4] = self;
  v4 = [_checkRequestThrottle thenWithBlock:v7];
  binaryPromiseAdapter = [v4 binaryPromiseAdapter];

  return binaryPromiseAdapter;
}

id __48__AMSAuthorizeMachineTask__performAuthorization__block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) _buildRequestTask];
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __48__AMSAuthorizeMachineTask__performAuthorization__block_invoke_2;
  v5[3] = &unk_1E73B3F48;
  v5[4] = *(a1 + 32);
  v3 = [v2 thenWithBlock:v5];

  return v3;
}

id __48__AMSAuthorizeMachineTask__performAuthorization__block_invoke_2(uint64_t a1, void *a2)
{
  v23 = *MEMORY[0x1E69E9840];
  v2 = a2;
  v3 = AMSLogKey();
  v4 = [v2 object];
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();

  if (isKindOfClass)
  {
    v6 = [v2 object];
  }

  else
  {
    v6 = 0;
  }

  v7 = [v6 objectForKeyedSubscript:@"keybag"];
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {

    v8 = 0;
    goto LABEL_13;
  }

  v8 = v7;

  if (!v8)
  {
LABEL_13:
    v10 = 0;
    goto LABEL_14;
  }

  v9 = +[AMSKeybag sharedInstance];
  v16 = 0;
  [v9 importKeybagWithData:v8 error:&v16];
  v10 = v16;

  if (v10)
  {
    v11 = +[AMSLogConfig sharedConfig];
    if (!v11)
    {
      v11 = +[AMSLogConfig sharedConfig];
    }

    v12 = [v11 OSLogObject];
    if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      v13 = objc_opt_class();
      *buf = 138543874;
      v18 = v13;
      v19 = 2114;
      v20 = v3;
      v21 = 2114;
      v22 = v10;
      _os_log_impl(&dword_192869000, v12, OS_LOG_TYPE_ERROR, "%{public}@: [%{public}@] Failed to import keybag data error: %{public}@", buf, 0x20u);
    }
  }

LABEL_14:
  v14 = [AMSPromise promiseWithResult:MEMORY[0x1E695E118]];

  return v14;
}

+ (id)createBagForSubProfile
{
  bagSubProfile = [objc_opt_class() bagSubProfile];
  bagSubProfileVersion = [objc_opt_class() bagSubProfileVersion];
  v4 = [AMSBag bagForProfile:bagSubProfile profileVersion:bagSubProfileVersion];

  return v4;
}

- (void)AMSURLSession:(id)session task:(id)task handleAuthenticateRequest:(id)request completion:(id)completion
{
  completionCopy = completion;
  requestCopy = request;
  presentationDelegate = [(AMSAuthorizeMachineTask *)self presentationDelegate];
  [presentationDelegate handleAuthenticateRequest:requestCopy completion:completionCopy];
}

- (void)AMSURLSession:(id)session task:(id)task handleDialogRequest:(id)request completion:(id)completion
{
  completionCopy = completion;
  requestCopy = request;
  presentationDelegate = [(AMSAuthorizeMachineTask *)self presentationDelegate];
  [presentationDelegate handleDialogRequest:requestCopy completion:completionCopy];
}

- (void)AMSURLSession:(id)session task:(id)task handleEngagementRequest:(id)request completion:(id)completion
{
  if (completion)
  {
    completionCopy = completion;
    v7 = AMSError(12, @"Engagement request not supported", @"Engagement request not supported on authorize machine calls.", 0);
    completionCopy[2](completionCopy, 0, v7);
  }
}

- (id)_buildRequest
{
  v18 = 0;
  v3 = [(AMSAuthorizeMachineTask *)self _buildRequestParametersWithError:&v18];
  v4 = v18;
  if (v3)
  {
    v5 = [AMSURLRequestEncoder alloc];
    v6 = [(AMSAuthorizeMachineTask *)self bag];
    v7 = [(AMSURLRequestEncoder *)v5 initWithBag:v6];

    validAccount = [(AMSAuthorizeMachineTask *)self validAccount];
    [(AMSURLRequestEncoder *)v7 setAccount:validAccount];

    clientInfo = [(AMSAuthorizeMachineTask *)self clientInfo];
    [(AMSURLRequestEncoder *)v7 setClientInfo:clientInfo];

    [(AMSURLRequestEncoder *)v7 setAnisetteType:1];
    v10 = [(AMSAuthorizeMachineTask *)self bag];
    isDeauthorize = [(AMSAuthorizeMachineTask *)self isDeauthorize];
    v12 = AMSBagKeyDeauthorizeMachineURL;
    if (!isDeauthorize)
    {
      v12 = AMSBagKeyAuthorizeMachineURL;
    }

    v13 = [v10 URLForKey:*v12];

    v14 = [(AMSURLRequestEncoder *)v7 requestWithMethod:4 bagURL:v13 parameters:v3];
    v17[0] = MEMORY[0x1E69E9820];
    v17[1] = 3221225472;
    v17[2] = __40__AMSAuthorizeMachineTask__buildRequest__block_invoke;
    v17[3] = &unk_1E73B3510;
    v17[4] = self;
    v15 = [v14 thenWithBlock:v17];
  }

  else
  {
    v15 = [AMSPromise promiseWithError:v4];
  }

  return v15;
}

id __40__AMSAuthorizeMachineTask__buildRequest__block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  [v3 setCachePolicy:1];
  v4 = [*(a1 + 32) familyMemberAccountDSID];
  v5 = v4;
  if (v4)
  {
    v6 = [v4 stringValue];
    [v3 setValue:v6 forHTTPHeaderField:@"X-FM-Dsid"];
  }

  if ([*(a1 + 32) authorizeReason] == 2)
  {
    [v3 setTimeoutInterval:15.0];
  }

  v7 = [AMSPromise promiseWithResult:v3];

  return v7;
}

- (id)_buildRequestParametersWithError:(id *)error
{
  v5 = objc_alloc_init(MEMORY[0x1E695DF90]);
  if ([(AMSAuthorizeMachineTask *)self authorizeReason]== 2)
  {
    v6 = 8;
  }

  else
  {
    v6 = 1;
  }

  validAccount = [(AMSAuthorizeMachineTask *)self validAccount];
  v8 = [(AMSAuthorizeMachineTask *)self _keybagSyncStringForAccount:validAccount withTransactionType:v6 error:error];

  if (v8)
  {
    [v5 setObject:v8 forKeyedSubscript:@"kbsync"];
    v9 = +[AMSDevice deviceGUID];
    uppercaseString = [v9 uppercaseString];
    [v5 setObject:uppercaseString forKeyedSubscript:@"guid"];

    v11 = +[AMSDevice deviceName];
    [v5 setObject:v11 forKeyedSubscript:@"machineName"];

    validAccount2 = [(AMSAuthorizeMachineTask *)self validAccount];
    ams_DSID = [validAccount2 ams_DSID];
    [v5 setObject:ams_DSID forKeyedSubscript:@"ownerDsid"];

    authorizeReason = [(AMSAuthorizeMachineTask *)self authorizeReason];
    if (authorizeReason == 1)
    {
      v15 = @"family";
    }

    else
    {
      v15 = 0;
    }

    if (authorizeReason == 2)
    {
      v15 = @"refetch";
    }

    if (v15)
    {
      v16 = v15;
      authorizeReason2 = [(AMSAuthorizeMachineTask *)self authorizeReason];
      if (authorizeReason2 == 1)
      {
        v18 = @"family";
      }

      else
      {
        v18 = 0;
      }

      if (authorizeReason2 == 2)
      {
        v19 = @"refetch";
      }

      else
      {
        v19 = v18;
      }

      [v5 setObject:v19 forKeyedSubscript:@"reason"];
    }

    v20 = v5;
  }

  else
  {
    v20 = 0;
  }

  return v20;
}

- (id)_authenticate
{
  presentationDelegate = [(AMSAuthorizeMachineTask *)self presentationDelegate];
  if (presentationDelegate && (v4 = presentationDelegate, [(AMSAuthorizeMachineTask *)self authenticateRequest], v5 = objc_claimAutoreleasedReturnValue(), v5, v4, v5))
  {
    v6 = objc_alloc_init(AMSPromise);
    presentationDelegate2 = [(AMSAuthorizeMachineTask *)self presentationDelegate];
    authenticateRequest = [(AMSAuthorizeMachineTask *)self authenticateRequest];
    completionHandlerAdapter = [(AMSPromise *)v6 completionHandlerAdapter];
    [presentationDelegate2 handleAuthenticateRequest:authenticateRequest completion:completionHandlerAdapter];

    v12[0] = MEMORY[0x1E69E9820];
    v12[1] = 3221225472;
    v12[2] = __40__AMSAuthorizeMachineTask__authenticate__block_invoke;
    v12[3] = &unk_1E73B3D68;
    v12[4] = self;
    [(AMSPromise *)v6 addFinishBlock:v12];
  }

  else
  {
    v10 = AMSError(12, @"Interactive Authorization Failed", @"Could not present authenticate request, presentation delegate not set", 0);
    v6 = [AMSPromise promiseWithError:v10];
  }

  return v6;
}

void __40__AMSAuthorizeMachineTask__authenticate__block_invoke(uint64_t a1, void *a2, void *a3)
{
  v14 = *MEMORY[0x1E69E9840];
  v5 = a2;
  v6 = a3;
  if (v6)
  {
    v7 = +[AMSLogConfig sharedConfig];
    if (!v7)
    {
      v7 = +[AMSLogConfig sharedConfig];
    }

    v8 = [v7 OSLogObject];
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      v9 = [*(a1 + 32) logKey];
      v10 = 138543618;
      v11 = v9;
      v12 = 2114;
      v13 = v6;
      _os_log_impl(&dword_192869000, v8, OS_LOG_TYPE_ERROR, "[%{public}@] Machine authorization/deauthorization account authentication failed: %{public}@", &v10, 0x16u);
    }

    goto LABEL_9;
  }

  if (v5)
  {
    v7 = [v5 account];
    [*(a1 + 32) setValidAccount:v7];
LABEL_9:
  }
}

- (id)_buildRequestTask
{
  authenticateRequest = [(AMSAuthorizeMachineTask *)self authenticateRequest];

  if (authenticateRequest)
  {
    _authenticate = [(AMSAuthorizeMachineTask *)self _authenticate];
    v9[0] = MEMORY[0x1E69E9820];
    v9[1] = 3221225472;
    v9[2] = __44__AMSAuthorizeMachineTask__buildRequestTask__block_invoke;
    v9[3] = &unk_1E73B3F98;
    v9[4] = self;
    _buildRequest = [_authenticate thenWithBlock:v9];
  }

  else
  {
    _buildRequest = [(AMSAuthorizeMachineTask *)self _buildRequest];
  }

  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __44__AMSAuthorizeMachineTask__buildRequestTask__block_invoke_2;
  v8[3] = &unk_1E73B3510;
  v8[4] = self;
  v6 = [_buildRequest thenWithBlock:v8];

  return v6;
}

id __44__AMSAuthorizeMachineTask__buildRequestTask__block_invoke_2(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = +[AMSURLSession defaultSession];
  v5 = [v4 configuration];

  v6 = [[AMSURLSession alloc] initWithConfiguration:v5 delegate:*(a1 + 32) delegateQueue:0];
  [*(a1 + 32) setSession:v6];

  v7 = objc_opt_new();
  v12[0] = MEMORY[0x1E69E9820];
  v12[1] = 3221225472;
  v12[2] = __44__AMSAuthorizeMachineTask__buildRequestTask__block_invoke_3;
  v12[3] = &unk_1E73B3FC0;
  v12[4] = *(a1 + 32);
  [v7 setReconfigureRequestHandler:v12];
  v8 = [*(a1 + 32) session];
  [v8 setProtocolHandler:v7];

  v9 = [*(a1 + 32) session];
  v10 = [v9 dataTaskPromiseWithRequest:v3];

  return v10;
}

void __44__AMSAuthorizeMachineTask__buildRequestTask__block_invoke_3(uint64_t a1, void *a2)
{
  v23 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = *(a1 + 32);
  v18 = 0;
  v5 = [v4 _buildRequestParametersWithError:&v18];
  v6 = v18;
  if (v5)
  {
    v17 = 0;
    v7 = [MEMORY[0x1E696AE40] dataWithPropertyList:v5 format:100 options:0 error:&v17];
    v8 = v17;

    v9 = +[AMSLogConfig sharedConfig];
    v10 = v9;
    if (v7)
    {
      if (!v9)
      {
        v10 = +[AMSLogConfig sharedConfig];
      }

      v11 = [v10 OSLogObject];
      if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
      {
        v12 = [*(a1 + 32) logKey];
        v13 = [v7 length];
        *buf = 138543618;
        v20 = v12;
        v21 = 2048;
        v22 = v13;
        _os_log_impl(&dword_192869000, v11, OS_LOG_TYPE_DEFAULT, "[%{public}@] Setting updated request parameters for authorization/deauthorization, %lu bytes", buf, 0x16u);
      }

      [v3 setHTTPBody:v7];
      v10 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:{objc_msgSend(v7, "length")}];
      v14 = [v10 stringValue];
      [v3 setValue:v14 forHTTPHeaderField:@"Content-Length"];
    }

    else
    {
      if (!v9)
      {
        v10 = +[AMSLogConfig sharedConfig];
      }

      v14 = [v10 OSLogObject];
      if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
      {
        v16 = [*(a1 + 32) logKey];
        *buf = 138543618;
        v20 = v16;
        v21 = 2114;
        v22 = v8;
        _os_log_impl(&dword_192869000, v14, OS_LOG_TYPE_ERROR, "[%{public}@] Serializing reconfigured request parameters for authorization/deauthorization failed: %{public}@", buf, 0x16u);
      }
    }
  }

  else
  {
    v7 = +[AMSLogConfig sharedConfig];
    if (!v7)
    {
      v7 = +[AMSLogConfig sharedConfig];
    }

    v10 = [v7 OSLogObject];
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      v15 = [*(a1 + 32) logKey];
      *buf = 138543618;
      v20 = v15;
      v21 = 2114;
      v22 = v6;
      _os_log_impl(&dword_192869000, v10, OS_LOG_TYPE_ERROR, "[%{public}@] Building reconfigured request parameters for authorization/deauthorization failed: %{public}@", buf, 0x16u);
    }

    v8 = v6;
  }
}

- (id)_checkRequestThrottle
{
  if ([(AMSAuthorizeMachineTask *)self isDeauthorize])
  {
    v3 = [AMSPromise promiseWithResult:MEMORY[0x1E695E118]];
  }

  else
  {
    v4 = [(AMSBagProtocol *)self->_bag integerForKey:@"min-keybag-repair-interval-seconds"];
    valuePromise = [v4 valuePromise];

    v3 = [valuePromise thenWithBlock:&__block_literal_global_13];
  }

  return v3;
}

id __48__AMSAuthorizeMachineTask__checkRequestThrottle__block_invoke(uint64_t a1, void *a2)
{
  v2 = a2;
  v3 = [v2 integerValue];
  os_unfair_lock_lock(&_MergedGlobals_1_1);
  v4 = [MEMORY[0x1E696AE30] processInfo];
  [v4 systemUptime];
  v6 = v5;

  if (v6 - qword_1ED6E1DB8 >= v3)
  {
    qword_1ED6E1DB8 = v6;
    os_unfair_lock_unlock(&_MergedGlobals_1_1);
    v9 = [AMSPromise promiseWithResult:MEMORY[0x1E695E118]];
  }

  else
  {
    os_unfair_lock_unlock(&_MergedGlobals_1_1);
    v7 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Previous request was within %@s of this one", v2];
    v8 = AMSError(308, @"Request Throttled", v7, 0);

    v9 = [AMSPromise promiseWithError:v8];
  }

  return v9;
}

- (id)_keybagSyncStringForAccount:(id)account withTransactionType:(unsigned int)type error:(id *)error
{
  v6 = *&type;
  v27 = *MEMORY[0x1E69E9840];
  accountCopy = account;
  v8 = +[AMSKeybag sharedInstance];
  ams_DSID = [accountCopy ams_DSID];

  if (ams_DSID)
  {
    v10 = ams_DSID;
  }

  else
  {
    v10 = &unk_1F0778FE0;
  }

  v20 = 0;
  v11 = [v8 keybagSyncDataWithAccountID:v10 transactionType:v6 error:&v20];
  v12 = v20;

  if (!v11)
  {
    v13 = +[AMSLogConfig sharedConfig];
    if (!v13)
    {
      v13 = +[AMSLogConfig sharedConfig];
    }

    oSLogObject = [v13 OSLogObject];
    if (os_log_type_enabled(oSLogObject, OS_LOG_TYPE_ERROR))
    {
      v15 = objc_opt_class();
      v16 = AMSLogKey();
      *buf = 138543874;
      v22 = v15;
      v23 = 2114;
      v24 = v16;
      v25 = 2114;
      v26 = v12;
      _os_log_impl(&dword_192869000, oSLogObject, OS_LOG_TYPE_ERROR, "%{public}@: [%{public}@] Failed to obtain keybag data for account error: %{public}@", buf, 0x20u);
    }

    if (error)
    {
      v17 = v12;
      *error = v12;
    }
  }

  v18 = [v11 base64EncodedStringWithOptions:0];

  return v18;
}

+ (AMSBagKeySet)bagKeySet
{
  v2 = objc_alloc_init(AMSBagKeySet);

  return v2;
}

- (AMSRequestPresentationDelegate)presentationDelegate
{
  WeakRetained = objc_loadWeakRetained(&self->_presentationDelegate);

  return WeakRetained;
}

@end