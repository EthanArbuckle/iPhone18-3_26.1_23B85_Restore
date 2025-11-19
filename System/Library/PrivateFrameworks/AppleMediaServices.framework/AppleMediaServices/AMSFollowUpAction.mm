@interface AMSFollowUpAction
- (AMSFollowUpAction)initWithAction:(id)a3 parentIdentifier:(id)a4;
- (AMSFollowUpAction)initWithItem:(id)a3 action:(id)a4;
- (AMSFollowUpAction)initWithJSONDictionary:(id)a3 parentIdentifier:(id)a4;
- (AMSFollowUpAction)initWithLabel:(id)a3 parentIdentifier:(id)a4;
- (BOOL)requiresFollowUpUI;
- (BOOL)shouldClear;
- (NSMutableDictionary)userInfo;
- (NSString)logKey;
- (NSString)parentIdentifier;
- (NSString)preferredClient;
- (NSURLRequest)request;
- (id)generateAction;
- (id)performActionsWithBag:(id)a3 account:(id)a4;
- (id)performActionsWithContract:(id)a3 account:(id)a4;
- (id)postMetricsWithBag:(id)a3;
- (id)postMetricsWithBagContract:(id)a3;
- (void)_setUserInfoProperty:(id)a3 forKey:(id)a4;
- (void)setRequest:(id)a3;
- (void)setRequiresFollowUpUI:(BOOL)a3;
- (void)setShouldClear:(BOOL)a3;
- (void)setUserInfo:(id)a3;
@end

@implementation AMSFollowUpAction

- (AMSFollowUpAction)initWithLabel:(id)a3 parentIdentifier:(id)a4
{
  v7 = a3;
  v8 = a4;
  v18.receiver = self;
  v18.super_class = AMSFollowUpAction;
  v9 = [(AMSFollowUpAction *)&v18 init];
  if (v9)
  {
    v10 = dispatch_queue_create("com.apple.AppleMediaServices.followUpAction", 0);
    actionQueue = v9->_actionQueue;
    v9->_actionQueue = v10;

    v12 = dispatch_queue_create("com.apple.AppleMediaServices.followUpActionInternal", 0);
    internalQueue = v9->_internalQueue;
    v9->_internalQueue = v12;

    objc_storeStrong(&v9->_label, a3);
    v14 = objc_alloc_init(MEMORY[0x1E695DF90]);
    v15 = v14;
    if (v8)
    {
      [(NSMutableDictionary *)v14 setObject:v8 forKey:@"AMSParentIdentifier"];
    }

    userInfo = v9->_userInfo;
    v9->_userInfo = v15;
  }

  return v9;
}

- (AMSFollowUpAction)initWithAction:(id)a3 parentIdentifier:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [v6 label];
  v9 = [(AMSFollowUpAction *)self initWithLabel:v8 parentIdentifier:v7];

  if (v9)
  {
    v10 = [v6 url];
    url = v9->_url;
    v9->_url = v10;

    v12 = [v6 userInfo];

    if (v12)
    {
      v13 = [v6 userInfo];
      v14 = [v13 mutableCopy];

      v15 = [(NSMutableDictionary *)v14 objectForKeyedSubscript:@"AMSMetrics"];
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v16 = v15;

        if (v16)
        {
          v17 = [[AMSMetricsEvent alloc] initWithUnderlyingDictionary:v16];
          metricsEvent = v9->_metricsEvent;
          v9->_metricsEvent = v17;

          [(NSMutableDictionary *)v14 removeObjectForKey:@"AMSMetrics"];
        }
      }

      else
      {

        v16 = 0;
      }

      userInfo = v9->_userInfo;
      v9->_userInfo = v14;
    }
  }

  return v9;
}

- (AMSFollowUpAction)initWithItem:(id)a3 action:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [[AMSFollowUpItem alloc] initWithFollowUpItem:v6];
  v9 = [(AMSFollowUpItem *)v8 identifier];
  v10 = [(AMSFollowUpAction *)self initWithAction:v7 parentIdentifier:v9];

  if (v10)
  {
    v11 = [v6 uniqueIdentifier];
    backingIdentifier = v10->_backingIdentifier;
    v10->_backingIdentifier = v11;
  }

  return v10;
}

- (AMSFollowUpAction)initWithJSONDictionary:(id)a3 parentIdentifier:(id)a4
{
  v48 = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = a4;
  v8 = [v6 objectForKeyedSubscript:@"title"];
  v9 = [(AMSFollowUpAction *)self initWithLabel:v8 parentIdentifier:v7];

  if (v9)
  {
    v44 = [v6 objectForKeyedSubscript:@"clear"];
    if (objc_opt_respondsToSelector())
    {
      v10 = [v44 BOOLValue];
    }

    else
    {
      v10 = 0;
    }

    v45 = [v6 objectForKeyedSubscript:@"clientActionDeepLink"];
    v11 = [v6 objectForKeyedSubscript:@"financeLink"];
    v12 = [v6 objectForKeyedSubscript:@"metrics"];
    v13 = [v6 objectForKeyedSubscript:@"serverActionUrl"];
    v14 = v13;
    v15 = 0x1E695D000uLL;
    if (v13)
    {
      v41 = v10;
      v42 = v12;
      v16 = [v13 objectForKeyedSubscript:@"url"];
      v17 = [v14 objectForKeyedSubscript:@"method"];
      v18 = [v14 objectForKeyedSubscript:@"body"];
      if (v16)
      {
        v40 = v11;
        v19 = [MEMORY[0x1E695DFF8] URLWithString:v16];
        if (v19)
        {
          v20 = v19;
          v21 = [objc_alloc(MEMORY[0x1E695AC18]) initWithURL:v19];
          v22 = v21;
          if (v17)
          {
            v23 = v17;
          }

          else
          {
            v23 = @"GET";
          }

          [v21 setHTTPMethod:v23];
          [v18 dataUsingEncoding:4];
          v24 = v39 = v8;
          v25 = v22;
          v26 = v22;
          v15 = 0x1E695D000;
          [v26 setHTTPBody:v24];

          v8 = v39;
        }

        else
        {
          v25 = 0;
        }

        v11 = v40;
      }

      else
      {
        v25 = 0;
      }

      v12 = v42;
      v10 = v41;
    }

    else
    {
      v25 = 0;
    }

    [(AMSFollowUpAction *)v9 setRequest:v25];
    [(AMSFollowUpAction *)v9 setShouldClear:v10];
    if (v12)
    {
      v27 = [[AMSMetricsEvent alloc] initWithUnderlyingDictionary:v12];
      metricsEvent = v9->_metricsEvent;
      v9->_metricsEvent = v27;
    }

    if (v11)
    {
      [(AMSFollowUpAction *)v9 setRequiresFollowUpUI:1];
      v29 = [*(v15 + 4088) URLWithString:v11];
      url = v9->_url;
      v9->_url = v29;

      if (v45)
      {
        v31 = v25;
        v32 = +[AMSLogConfig sharedFollowUpConfig];
        if (!v32)
        {
          v32 = +[AMSLogConfig sharedConfig];
        }

        v33 = [v32 OSLogObject];
        if (os_log_type_enabled(v33, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 138543362;
          v47 = objc_opt_class();
          v43 = v12;
          v34 = v11;
          v35 = v47;
          _os_log_impl(&dword_192869000, v33, OS_LOG_TYPE_DEFAULT, "%{public}@: Ignoring clientActionDeepLink due to existance of financeLink", buf, 0xCu);

          v11 = v34;
          v12 = v43;
        }

        v25 = v31;
      }
    }

    else if (v45)
    {
      v36 = [*(v15 + 4088) URLWithString:v45];
      v37 = v9->_url;
      v9->_url = v36;
    }
  }

  return v9;
}

- (NSString)logKey
{
  v7 = 0;
  v8 = &v7;
  v9 = 0x3032000000;
  v10 = __Block_byref_object_copy__31;
  v11 = __Block_byref_object_dispose__31;
  v12 = 0;
  v3 = [(AMSFollowUpAction *)self internalQueue];
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __27__AMSFollowUpAction_logKey__block_invoke;
  v6[3] = &unk_1E73B3EA8;
  v6[4] = self;
  v6[5] = &v7;
  dispatch_sync(v3, v6);

  v4 = v8[5];
  _Block_object_dispose(&v7, 8);

  return v4;
}

void __27__AMSFollowUpAction_logKey__block_invoke(uint64_t a1)
{
  v2 = [*(*(a1 + 32) + 8) objectForKeyedSubscript:@"AMSLogKey"];
  v3 = *(*(a1 + 40) + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;

  if (!*(*(*(a1 + 40) + 8) + 40))
  {
    v5 = AMSGenerateLogCorrelationKey();
    [*(*(a1 + 32) + 8) setObject:v5 forKeyedSubscript:@"AMSLogKey"];

    *(*(*(a1 + 40) + 8) + 40) = [*(*(a1 + 32) + 8) objectForKeyedSubscript:@"AMSLogKey"];

    MEMORY[0x1EEE66BB8]();
  }
}

- (NSString)parentIdentifier
{
  v7 = 0;
  v8 = &v7;
  v9 = 0x3032000000;
  v10 = __Block_byref_object_copy__31;
  v11 = __Block_byref_object_dispose__31;
  v12 = 0;
  v3 = [(AMSFollowUpAction *)self internalQueue];
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __37__AMSFollowUpAction_parentIdentifier__block_invoke;
  v6[3] = &unk_1E73B3EA8;
  v6[4] = self;
  v6[5] = &v7;
  dispatch_sync(v3, v6);

  v4 = v8[5];
  _Block_object_dispose(&v7, 8);

  return v4;
}

uint64_t __37__AMSFollowUpAction_parentIdentifier__block_invoke(uint64_t a1)
{
  *(*(*(a1 + 40) + 8) + 40) = [*(*(a1 + 32) + 8) objectForKeyedSubscript:@"AMSParentIdentifier"];

  return MEMORY[0x1EEE66BB8]();
}

- (NSString)preferredClient
{
  v7 = 0;
  v8 = &v7;
  v9 = 0x3032000000;
  v10 = __Block_byref_object_copy__31;
  v11 = __Block_byref_object_dispose__31;
  v12 = 0;
  v3 = [(AMSFollowUpAction *)self internalQueue];
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __36__AMSFollowUpAction_preferredClient__block_invoke;
  v6[3] = &unk_1E73B3EA8;
  v6[4] = self;
  v6[5] = &v7;
  dispatch_sync(v3, v6);

  v4 = v8[5];
  _Block_object_dispose(&v7, 8);

  return v4;
}

uint64_t __36__AMSFollowUpAction_preferredClient__block_invoke(uint64_t a1)
{
  *(*(*(a1 + 40) + 8) + 40) = [*(*(a1 + 32) + 8) objectForKeyedSubscript:@"AMSPreferredClient"];

  return MEMORY[0x1EEE66BB8]();
}

- (NSURLRequest)request
{
  v7 = 0;
  v8 = &v7;
  v9 = 0x3032000000;
  v10 = __Block_byref_object_copy__31;
  v11 = __Block_byref_object_dispose__31;
  v12 = 0;
  v3 = [(AMSFollowUpAction *)self internalQueue];
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __28__AMSFollowUpAction_request__block_invoke;
  v6[3] = &unk_1E73B82D0;
  v6[4] = self;
  v6[5] = &v7;
  dispatch_sync(v3, v6);

  v4 = v8[5];
  _Block_object_dispose(&v7, 8);

  return v4;
}

void __28__AMSFollowUpAction_request__block_invoke(uint64_t a1)
{
  v2 = [*(*(a1 + 32) + 8) objectForKeyedSubscript:@"AMSRequest"];
  if (v2)
  {
    v11 = v2;
    v3 = [v2 objectForKeyedSubscript:@"AMSRequestURL"];
    v4 = [v11 objectForKeyedSubscript:@"AMSRequestBody"];
    v5 = [v11 objectForKeyedSubscript:@"AMSRequestMethod"];
    v6 = [MEMORY[0x1E695DFF8] URLWithString:v3];
    if (v6)
    {
      v7 = [objc_alloc(MEMORY[0x1E695AC18]) initWithURL:v6];
      v8 = *(*(a1 + 40) + 8);
      v9 = *(v8 + 40);
      *(v8 + 40) = v7;

      if (v5)
      {
        [*(*(*(a1 + 40) + 8) + 40) setHTTPMethod:v5];
      }

      if (v4)
      {
        v10 = [v4 dataUsingEncoding:4];
        [*(*(*(a1 + 40) + 8) + 40) setHTTPBody:v10];
      }
    }

    v2 = v11;
  }
}

- (BOOL)requiresFollowUpUI
{
  v2 = self;
  v6 = 0;
  v7 = &v6;
  v8 = 0x2020000000;
  v9 = 0;
  v3 = [(AMSFollowUpAction *)self internalQueue];
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __39__AMSFollowUpAction_requiresFollowUpUI__block_invoke;
  v5[3] = &unk_1E73B82D0;
  v5[4] = v2;
  v5[5] = &v6;
  dispatch_sync(v3, v5);

  LOBYTE(v2) = *(v7 + 24);
  _Block_object_dispose(&v6, 8);
  return v2;
}

void __39__AMSFollowUpAction_requiresFollowUpUI__block_invoke(uint64_t a1)
{
  v3 = [*(*(a1 + 32) + 8) objectForKeyedSubscript:@"AMSRequiresFollowUpUI"];
  if (objc_opt_respondsToSelector())
  {
    v2 = [v3 BOOLValue];
  }

  else
  {
    v2 = 0;
  }

  *(*(*(a1 + 40) + 8) + 24) = v2;
}

- (BOOL)shouldClear
{
  v2 = self;
  v6 = 0;
  v7 = &v6;
  v8 = 0x2020000000;
  v9 = 0;
  v3 = [(AMSFollowUpAction *)self internalQueue];
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __32__AMSFollowUpAction_shouldClear__block_invoke;
  v5[3] = &unk_1E73B82D0;
  v5[4] = v2;
  v5[5] = &v6;
  dispatch_sync(v3, v5);

  LOBYTE(v2) = *(v7 + 24);
  _Block_object_dispose(&v6, 8);
  return v2;
}

void __32__AMSFollowUpAction_shouldClear__block_invoke(uint64_t a1)
{
  v3 = [*(*(a1 + 32) + 8) objectForKeyedSubscript:@"AMSShouldClear"];
  if (objc_opt_respondsToSelector())
  {
    v2 = [v3 BOOLValue];
  }

  else
  {
    v2 = 0;
  }

  *(*(*(a1 + 40) + 8) + 24) = v2;
}

- (NSMutableDictionary)userInfo
{
  v7 = 0;
  v8 = &v7;
  v9 = 0x3032000000;
  v10 = __Block_byref_object_copy__31;
  v11 = __Block_byref_object_dispose__31;
  v12 = 0;
  v3 = [(AMSFollowUpAction *)self internalQueue];
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __29__AMSFollowUpAction_userInfo__block_invoke;
  v6[3] = &unk_1E73B3EA8;
  v6[4] = self;
  v6[5] = &v7;
  dispatch_sync(v3, v6);

  v4 = v8[5];
  _Block_object_dispose(&v7, 8);

  return v4;
}

- (void)setRequest:(id)a3
{
  v13 = a3;
  v4 = objc_alloc_init(MEMORY[0x1E695DF90]);
  if (v13)
  {
    v5 = [v13 HTTPMethod];
    v6 = objc_alloc(MEMORY[0x1E696AEC0]);
    v7 = [v13 HTTPBody];
    v8 = [v6 initWithData:v7 encoding:4];

    v9 = [v13 URL];
    v10 = [v9 absoluteString];

    if (v10)
    {
      [v4 setObject:v10 forKeyedSubscript:@"AMSRequestURL"];
    }

    if (v8)
    {
      [v4 setObject:v8 forKeyedSubscript:@"AMSRequestBody"];
    }

    if (v5)
    {
      [v4 setObject:v5 forKeyedSubscript:@"AMSRequestMethod"];
    }
  }

  if ([v4 count])
  {
    v11 = v4;
  }

  else
  {
    v11 = 0;
  }

  v12 = v11;

  [(AMSFollowUpAction *)self _setUserInfoProperty:v12 forKey:@"AMSRequest"];
}

- (void)setRequiresFollowUpUI:(BOOL)a3
{
  v4 = [MEMORY[0x1E696AD98] numberWithBool:a3];
  [(AMSFollowUpAction *)self _setUserInfoProperty:v4 forKey:@"AMSRequiresFollowUpUI"];
}

- (void)setShouldClear:(BOOL)a3
{
  v4 = [MEMORY[0x1E696AD98] numberWithBool:a3];
  [(AMSFollowUpAction *)self _setUserInfoProperty:v4 forKey:@"AMSShouldClear"];
}

- (void)setUserInfo:(id)a3
{
  v4 = a3;
  v5 = [(AMSFollowUpAction *)self internalQueue];
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __33__AMSFollowUpAction_setUserInfo___block_invoke;
  v7[3] = &unk_1E73B3DE0;
  v7[4] = self;
  v8 = v4;
  v6 = v4;
  dispatch_sync(v5, v7);
}

- (id)generateAction
{
  v16 = 0;
  v17 = &v16;
  v18 = 0x2050000000;
  v3 = _MergedGlobals_114;
  v19 = _MergedGlobals_114;
  if (!_MergedGlobals_114)
  {
    v15[0] = MEMORY[0x1E69E9820];
    v15[1] = 3221225472;
    v15[2] = __getFLFollowUpActionClass_block_invoke;
    v15[3] = &unk_1E73B3880;
    v15[4] = &v16;
    __getFLFollowUpActionClass_block_invoke(v15);
    v3 = v17[3];
  }

  v4 = v3;
  _Block_object_dispose(&v16, 8);
  v5 = [(AMSFollowUpAction *)self label];
  v6 = [(AMSFollowUpAction *)self url];
  v7 = [v3 actionWithLabel:v5 url:v6];

  v8 = [(AMSFollowUpAction *)self identifier];
  [v7 setIdentifier:v8];

  v9 = [(AMSFollowUpAction *)self userInfo];
  v10 = [v9 mutableCopy];

  v11 = [(AMSFollowUpAction *)self metricsEvent];

  if (v11)
  {
    v12 = [(AMSFollowUpAction *)self metricsEvent];
    v13 = [v12 underlyingDictionary];
    [v10 setObject:v13 forKeyedSubscript:@"AMSMetrics"];
  }

  [v7 setUserInfo:v10];

  return v7;
}

- (id)performActionsWithBag:(id)a3 account:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = objc_alloc_init(AMSMutableBinaryPromise);
  v9 = [(AMSFollowUpAction *)self actionQueue];
  v16[0] = MEMORY[0x1E69E9820];
  v16[1] = 3221225472;
  v16[2] = __51__AMSFollowUpAction_performActionsWithBag_account___block_invoke;
  v16[3] = &unk_1E73B72B8;
  v16[4] = self;
  v17 = v6;
  v18 = v7;
  v10 = v8;
  v19 = v10;
  v11 = v7;
  v12 = v6;
  dispatch_async(v9, v16);

  v13 = v19;
  v14 = v10;

  return v10;
}

void __51__AMSFollowUpAction_performActionsWithBag_account___block_invoke(uint64_t a1)
{
  v45 = *MEMORY[0x1E69E9840];
  v2 = [*(a1 + 32) request];
  if (v2)
  {
    v3 = v2;
    v4 = +[AMSLogConfig sharedFollowUpConfig];
    if (!v4)
    {
      v4 = +[AMSLogConfig sharedConfig];
    }

    v5 = [v4 OSLogObject];
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      v6 = objc_opt_class();
      v7 = *(a1 + 32);
      v8 = v6;
      v9 = [v7 logKey];
      *buf = 138543618;
      v40 = v6;
      v41 = 2114;
      v42 = v9;
      _os_log_impl(&dword_192869000, v5, OS_LOG_TYPE_DEFAULT, "%{public}@: [%{public}@] Performing request", buf, 0x16u);
    }

    v10 = [[AMSURLRequestEncoder alloc] initWithBag:*(a1 + 40)];
    [(AMSURLRequestEncoder *)v10 setAccount:*(a1 + 48)];
    v11 = [*(a1 + 32) logKey];
    [(AMSURLRequestEncoder *)v10 setLogUUID:v11];

    v12 = [*(a1 + 32) request];
    v13 = [(AMSURLRequestEncoder *)v10 requestByEncodingRequest:v12 parameters:0];
    v38 = 0;
    v14 = [v13 resultWithError:&v38];
    v15 = v38;

    if (!v15)
    {
      v16 = +[AMSURLSession defaultSession];
      v17 = [v16 dataTaskPromiseWithRequest:v14];
      v37 = 0;
      v18 = [v17 resultWithError:&v37];
      v15 = v37;
    }
  }

  else
  {
    v14 = 0;
    v15 = 0;
  }

  v19 = [*(a1 + 32) url];
  if (v19)
  {
    v20 = v19;
    v21 = [*(a1 + 32) requiresFollowUpUI];

    if ((v21 & 1) == 0)
    {
      v22 = +[AMSLogConfig sharedFollowUpConfig];
      if (!v22)
      {
        v22 = +[AMSLogConfig sharedConfig];
      }

      v23 = [v22 OSLogObject];
      if (os_log_type_enabled(v23, OS_LOG_TYPE_DEFAULT))
      {
        v24 = objc_opt_class();
        v25 = *(a1 + 32);
        v26 = v24;
        v27 = [v25 logKey];
        v28 = [*(a1 + 32) url];
        *buf = 138543874;
        v40 = v24;
        v41 = 2114;
        v42 = v27;
        v43 = 2112;
        v44 = v28;
        _os_log_impl(&dword_192869000, v23, OS_LOG_TYPE_DEFAULT, "%{public}@: [%{public}@] Opening url: %@", buf, 0x20u);
      }

      v29 = [*(a1 + 32) url];
      [AMSOpenURL openStandardURL:v29];
    }
  }

  if ([*(a1 + 32) shouldClear] && (objc_msgSend(*(a1 + 32), "requiresFollowUpUI") & 1) == 0)
  {
    v30 = [*(a1 + 32) backingIdentifier];

    if (v30)
    {
      v31 = objc_alloc_init(AMSFollowUp);
      v32 = [*(a1 + 32) backingIdentifier];
      v33 = [(AMSFollowUp *)v31 clearFollowUpWithBackingIdentifier:v32];
    }

    else
    {
      v34 = [*(a1 + 32) parentIdentifier];

      if (!v34)
      {
        goto LABEL_24;
      }

      v31 = objc_alloc_init(AMSFollowUp);
      v32 = [*(a1 + 32) parentIdentifier];
      v35 = [(AMSFollowUp *)v31 clearFollowUpWithIdentifier:v32 account:*(a1 + 48)];
    }
  }

LABEL_24:
  v36 = *(a1 + 56);
  if (v15)
  {
    [v36 finishWithError:v15];
  }

  else
  {
    [v36 finishWithSuccess];
  }
}

- (id)postMetricsWithBag:(id)a3
{
  v4 = a3;
  v5 = objc_alloc_init(AMSMutablePromise);
  v6 = [(AMSFollowUpAction *)self metricsEvent];

  if (v6)
  {
    v7 = [(AMSFollowUpAction *)self metricsEvent];
    v8 = [v7 underlyingDictionary];
    v9 = [AMSFollowUpMetricsEvent eventFromMetricsDictionary:v8];

    v10 = [AMSMetrics internalInstanceUsingBag:v4];
    [v10 enqueueEvent:v9];
    v11 = [v10 flush];
    v13[0] = MEMORY[0x1E69E9820];
    v13[1] = 3221225472;
    v13[2] = __40__AMSFollowUpAction_postMetricsWithBag___block_invoke;
    v13[3] = &unk_1E73B3A88;
    v14 = v5;
    [v11 addFinishBlock:v13];
  }

  else
  {
    [(AMSMutablePromise *)v5 finishWithResult:MEMORY[0x1E695E110]];
  }

  return v5;
}

uint64_t __40__AMSFollowUpAction_postMetricsWithBag___block_invoke(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2)
  {
    v4 = MEMORY[0x1E695E118];
  }

  else
  {
    v4 = 0;
  }

  return [*(a1 + 32) finishWithResult:v4 error:a3];
}

- (void)_setUserInfoProperty:(id)a3 forKey:(id)a4
{
  v6 = a3;
  v7 = a4;
  objc_initWeak(&location, self);
  v8 = [(AMSFollowUpAction *)self internalQueue];
  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 3221225472;
  v11[2] = __49__AMSFollowUpAction__setUserInfoProperty_forKey___block_invoke;
  v11[3] = &unk_1E73B5E28;
  objc_copyWeak(&v14, &location);
  v12 = v6;
  v13 = v7;
  v9 = v7;
  v10 = v6;
  dispatch_sync(v8, v11);

  objc_destroyWeak(&v14);
  objc_destroyWeak(&location);
}

void __49__AMSFollowUpAction__setUserInfoProperty_forKey___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  v2 = WeakRetained[1];
  v3 = *(a1 + 32);
  if (v3)
  {
    [v2 setObject:v3 forKeyedSubscript:*(a1 + 40)];
  }

  else
  {
    [v2 removeObjectForKey:*(a1 + 40)];
  }
}

- (id)performActionsWithContract:(id)a3 account:(id)a4
{
  v6 = a4;
  v7 = a3;
  v8 = [[AMSContractBagShim alloc] initWithBagContract:v7];

  v9 = [(AMSFollowUpAction *)self performActionsWithBag:v8 account:v6];

  return v9;
}

- (id)postMetricsWithBagContract:(id)a3
{
  v4 = a3;
  v5 = objc_alloc_init(AMSPromise);
  v6 = [(AMSFollowUpAction *)self metricsEvent];

  if (v6)
  {
    v7 = [(AMSFollowUpAction *)self metricsEvent];
    v8 = [v7 underlyingDictionary];
    v9 = [AMSFollowUpMetricsEvent eventFromMetricsDictionary:v8];

    v10 = [[AMSContractBagShim alloc] initWithBagContract:v4];
    v11 = [AMSMetrics internalInstanceUsingBag:v10];
    [v11 enqueueEvent:v9];
    v12 = [v11 flush];
    v14[0] = MEMORY[0x1E69E9820];
    v14[1] = 3221225472;
    v14[2] = __48__AMSFollowUpAction_postMetricsWithBagContract___block_invoke;
    v14[3] = &unk_1E73B3A88;
    v15 = v5;
    [v12 addFinishBlock:v14];
  }

  else
  {
    [(AMSPromise *)v5 finishWithResult:MEMORY[0x1E695E110]];
  }

  return v5;
}

uint64_t __48__AMSFollowUpAction_postMetricsWithBagContract___block_invoke(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2)
  {
    v4 = MEMORY[0x1E695E118];
  }

  else
  {
    v4 = 0;
  }

  return [*(a1 + 32) finishWithResult:v4 error:a3];
}

@end