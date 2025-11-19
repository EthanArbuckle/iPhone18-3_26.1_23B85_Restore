@interface AMSUIWebMediaAction
- (AMSUIWebMediaAction)initWithJSObject:(id)a3 context:(id)a4;
- (id)_runMediaRequestWithType:(int64_t)a3 clientIdentifier:(id)a4 clientVersion:(id)a5;
- (id)_runMediaRequestWithURL:(id)a3 clientIdentifier:(id)a4 clientVersion:(id)a5;
- (id)runAction;
@end

@implementation AMSUIWebMediaAction

- (AMSUIWebMediaAction)initWithJSObject:(id)a3 context:(id)a4
{
  v7 = a3;
  v8 = a4;
  v35.receiver = self;
  v35.super_class = AMSUIWebMediaAction;
  v9 = [(AMSUIWebAction *)&v35 initWithJSObject:v7 context:v8];
  if (v9)
  {
    v10 = [v7 objectForKeyedSubscript:@"url"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v11 = v10;
    }

    else
    {
      v11 = 0;
    }

    if (v11)
    {
      objc_storeStrong(&v9->_urlString, v11);
    }

    v12 = [v7 objectForKeyedSubscript:@"type"];
    if (objc_opt_respondsToSelector())
    {
      v9->_type = [v12 integerValue];
    }

    v13 = [v7 objectForKeyedSubscript:@"account"];
    v14 = [v8 iTunesAccountFromJSAccount:v13];
    v15 = v14;
    if (!v14)
    {
      v4 = [(AMSUIWebAction *)v9 context];
      v15 = [v4 account];
    }

    objc_storeStrong(&v9->_account, v15);
    if (!v14)
    {
    }

    v16 = [v7 objectForKeyedSubscript:@"bundleIdentifiers"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v17 = v16;
    }

    else
    {
      v17 = 0;
    }

    bundleIdentifiers = v9->_bundleIdentifiers;
    v9->_bundleIdentifiers = v17;

    v19 = [v7 objectForKeyedSubscript:@"clientIdentifier"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v20 = v19;
    }

    else
    {
      v20 = 0;
    }

    if (v20)
    {
      v21 = v20;
    }

    else
    {
      v21 = @"appstore";
    }

    objc_storeStrong(&v9->_clientIdentifier, v21);

    v22 = [v7 objectForKeyedSubscript:@"clientVersion"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v23 = v22;
    }

    else
    {
      v23 = 0;
    }

    if (v23)
    {
      v24 = v23;
    }

    else
    {
      v24 = @"1";
    }

    objc_storeStrong(&v9->_clientVersion, v24);

    v25 = [v7 objectForKeyedSubscript:@"itemIdentifiers"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v26 = v25;
    }

    else
    {
      v26 = 0;
    }

    itemIdentifiers = v9->_itemIdentifiers;
    v9->_itemIdentifiers = v26;

    v28 = [v7 objectForKeyedSubscript:@"includedResultKeys"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v29 = v28;
    }

    else
    {
      v29 = 0;
    }

    includedResultKeys = v9->_includedResultKeys;
    v9->_includedResultKeys = v29;

    v31 = [v7 objectForKeyedSubscript:@"method"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v32 = v31;
    }

    else
    {
      v32 = 0;
    }

    method = v9->_method;
    v9->_method = v32;
  }

  return v9;
}

- (id)runAction
{
  v27 = *MEMORY[0x1E69E9840];
  v18.receiver = self;
  v18.super_class = AMSUIWebMediaAction;
  v3 = [(AMSUIWebAction *)&v18 runAction];
  v4 = [MEMORY[0x1E698C968] sharedWebUIConfig];
  if (!v4)
  {
    v4 = [MEMORY[0x1E698C968] sharedConfig];
  }

  v5 = [v4 OSLogObject];
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v6 = objc_opt_class();
    v7 = AMSLogKey();
    v8 = [(AMSUIWebMediaAction *)self bundleIdentifiers];
    v9 = [(AMSUIWebMediaAction *)self itemIdentifiers];
    *buf = 138544130;
    v20 = v6;
    v21 = 2114;
    v22 = v7;
    v23 = 2112;
    v24 = v8;
    v25 = 2112;
    v26 = v9;
    _os_log_impl(&dword_1BB036000, v5, OS_LOG_TYPE_DEFAULT, "%{public}@: [%{public}@] Running media action with identifiers: %@ %@", buf, 0x2Au);
  }

  v10 = [(AMSUIWebMediaAction *)self urlString];

  if (v10)
  {
    v11 = [(AMSUIWebMediaAction *)self urlString];
    v12 = [(AMSUIWebMediaAction *)self clientIdentifier];
    v13 = [(AMSUIWebMediaAction *)self clientVersion];
    v14 = [(AMSUIWebMediaAction *)self _runMediaRequestWithURL:v11 clientIdentifier:v12 clientVersion:v13];
  }

  else
  {
    v15 = [(AMSUIWebMediaAction *)self type];
    v11 = [(AMSUIWebMediaAction *)self clientIdentifier];
    v12 = [(AMSUIWebMediaAction *)self clientVersion];
    v14 = [(AMSUIWebMediaAction *)self _runMediaRequestWithType:v15 clientIdentifier:v11 clientVersion:v12];
  }

  v16 = *MEMORY[0x1E69E9840];

  return v14;
}

- (id)_runMediaRequestWithURL:(id)a3 clientIdentifier:(id)a4 clientVersion:(id)a5
{
  v7 = a4;
  v8 = MEMORY[0x1E696AF20];
  v9 = a3;
  v10 = [[v8 alloc] initWithString:v9];

  if (v10)
  {
    v11 = objc_alloc(MEMORY[0x1E698C9E8]);
    v12 = [(AMSUIWebAction *)self context];
    v13 = [v12 bag];
    v14 = [v11 initWithClientIdentifier:v7 bag:v13];

    v15 = objc_alloc(MEMORY[0x1E698C9C0]);
    v16 = [(AMSUIWebAction *)self context];
    v17 = [v16 bag];
    v18 = [v15 initWithTokenService:v14 bag:v17];

    v19 = objc_alloc_init(MEMORY[0x1E698C9C8]);
    [v18 setResponseDecoder:v19];

    v20 = [(AMSUIWebMediaAction *)self account];
    [v18 setAccount:v20];

    v21 = AMSLogKey();
    [v18 setLogKey:v21];

    v22 = [(AMSUIWebAction *)self context];
    v23 = [v22 URLSession];

    v24 = [objc_alloc(MEMORY[0x1E698C9B8]) initWithTokenService:v14];
    [v23 setProtocolHandler:v24];

    v25 = [v18 requestWithComponents:v10];
    v26 = [(AMSUIWebMediaAction *)self method];
    v37[0] = MEMORY[0x1E69E9820];
    v37[1] = 3221225472;
    v37[2] = __78__AMSUIWebMediaAction__runMediaRequestWithURL_clientIdentifier_clientVersion___block_invoke;
    v37[3] = &unk_1E7F25780;
    v38 = v26;
    v39 = v23;
    v27 = v23;
    v28 = v26;
    v29 = [v25 thenWithBlock:v37];
    v30 = objc_alloc_init(MEMORY[0x1E698CAD0]);
    v35[0] = MEMORY[0x1E69E9820];
    v35[1] = 3221225472;
    v35[2] = __78__AMSUIWebMediaAction__runMediaRequestWithURL_clientIdentifier_clientVersion___block_invoke_2;
    v35[3] = &unk_1E7F26778;
    v31 = v30;
    v36 = v31;
    [v29 addFinishBlock:v35];
  }

  else
  {
    v32 = MEMORY[0x1E698CAD0];
    v33 = AMSError();
    v31 = [v32 promiseWithError:v33];
  }

  return v31;
}

id __78__AMSUIWebMediaAction__runMediaRequestWithURL_clientIdentifier_clientVersion___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = v3;
  if (*(a1 + 32))
  {
    [v3 setHTTPMethod:?];
  }

  v5 = [*(a1 + 40) dataTaskPromiseWithRequest:v4 activity:0];

  return v5;
}

void __78__AMSUIWebMediaAction__runMediaRequestWithURL_clientIdentifier_clientVersion___block_invoke_2(uint64_t a1, void *a2, void *a3)
{
  v10 = a2;
  v5 = a3;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v6 = v10;
  }

  else
  {
    v6 = [objc_alloc(MEMORY[0x1E698C9D0]) initWithResult:v10];
  }

  v7 = v6;
  v8 = *(a1 + 32);
  v9 = [v6 responseDictionary];
  [v8 finishWithResult:v9 error:v5];
}

- (id)_runMediaRequestWithType:(int64_t)a3 clientIdentifier:(id)a4 clientVersion:(id)a5
{
  v6 = objc_alloc_init(MEMORY[0x1E698CAD0]);
  v7 = objc_alloc(MEMORY[0x1E698C9E0]);
  v8 = [(AMSUIWebMediaAction *)self type];
  v9 = [(AMSUIWebMediaAction *)self clientIdentifier];
  v10 = [(AMSUIWebMediaAction *)self clientVersion];
  v11 = [(AMSUIWebAction *)self context];
  v12 = [v11 bag];
  v13 = [v7 initWithType:v8 clientIdentifier:v9 clientVersion:v10 bag:v12];

  v14 = [(AMSUIWebMediaAction *)self account];
  [v13 setAccount:v14];

  v15 = [(AMSUIWebMediaAction *)self bundleIdentifiers];
  [v13 setBundleIdentifiers:v15];

  v16 = [(AMSUIWebMediaAction *)self itemIdentifiers];
  [v13 setItemIdentifiers:v16];

  v17 = [(AMSUIWebMediaAction *)self includedResultKeys];
  [v13 setIncludedResultKeys:v17];

  v18 = [v13 perform];
  v21[0] = MEMORY[0x1E69E9820];
  v21[1] = 3221225472;
  v21[2] = __79__AMSUIWebMediaAction__runMediaRequestWithType_clientIdentifier_clientVersion___block_invoke;
  v21[3] = &unk_1E7F267A0;
  v19 = v6;
  v22 = v19;
  [v18 addFinishBlock:v21];

  return v19;
}

void __79__AMSUIWebMediaAction__runMediaRequestWithType_clientIdentifier_clientVersion___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v4 = *(a1 + 32);
  v5 = a3;
  v6 = [a2 responseDictionary];
  [v4 finishWithResult:v6 error:v5];
}

@end