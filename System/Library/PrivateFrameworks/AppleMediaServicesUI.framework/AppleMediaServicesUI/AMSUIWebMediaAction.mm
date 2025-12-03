@interface AMSUIWebMediaAction
- (AMSUIWebMediaAction)initWithJSObject:(id)object context:(id)context;
- (id)_runMediaRequestWithType:(int64_t)type clientIdentifier:(id)identifier clientVersion:(id)version;
- (id)_runMediaRequestWithURL:(id)l clientIdentifier:(id)identifier clientVersion:(id)version;
- (id)runAction;
@end

@implementation AMSUIWebMediaAction

- (AMSUIWebMediaAction)initWithJSObject:(id)object context:(id)context
{
  objectCopy = object;
  contextCopy = context;
  v35.receiver = self;
  v35.super_class = AMSUIWebMediaAction;
  v9 = [(AMSUIWebAction *)&v35 initWithJSObject:objectCopy context:contextCopy];
  if (v9)
  {
    v10 = [objectCopy objectForKeyedSubscript:@"url"];
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

    v12 = [objectCopy objectForKeyedSubscript:@"type"];
    if (objc_opt_respondsToSelector())
    {
      v9->_type = [v12 integerValue];
    }

    v13 = [objectCopy objectForKeyedSubscript:@"account"];
    v14 = [contextCopy iTunesAccountFromJSAccount:v13];
    account = v14;
    if (!v14)
    {
      context = [(AMSUIWebAction *)v9 context];
      account = [context account];
    }

    objc_storeStrong(&v9->_account, account);
    if (!v14)
    {
    }

    v16 = [objectCopy objectForKeyedSubscript:@"bundleIdentifiers"];
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

    v19 = [objectCopy objectForKeyedSubscript:@"clientIdentifier"];
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

    v22 = [objectCopy objectForKeyedSubscript:@"clientVersion"];
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

    v25 = [objectCopy objectForKeyedSubscript:@"itemIdentifiers"];
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

    v28 = [objectCopy objectForKeyedSubscript:@"includedResultKeys"];
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

    v31 = [objectCopy objectForKeyedSubscript:@"method"];
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
  runAction = [(AMSUIWebAction *)&v18 runAction];
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
    bundleIdentifiers = [(AMSUIWebMediaAction *)self bundleIdentifiers];
    itemIdentifiers = [(AMSUIWebMediaAction *)self itemIdentifiers];
    *buf = 138544130;
    v20 = v6;
    v21 = 2114;
    v22 = v7;
    v23 = 2112;
    v24 = bundleIdentifiers;
    v25 = 2112;
    v26 = itemIdentifiers;
    _os_log_impl(&dword_1BB036000, oSLogObject, OS_LOG_TYPE_DEFAULT, "%{public}@: [%{public}@] Running media action with identifiers: %@ %@", buf, 0x2Au);
  }

  urlString = [(AMSUIWebMediaAction *)self urlString];

  if (urlString)
  {
    urlString2 = [(AMSUIWebMediaAction *)self urlString];
    clientIdentifier = [(AMSUIWebMediaAction *)self clientIdentifier];
    clientVersion = [(AMSUIWebMediaAction *)self clientVersion];
    v14 = [(AMSUIWebMediaAction *)self _runMediaRequestWithURL:urlString2 clientIdentifier:clientIdentifier clientVersion:clientVersion];
  }

  else
  {
    type = [(AMSUIWebMediaAction *)self type];
    urlString2 = [(AMSUIWebMediaAction *)self clientIdentifier];
    clientIdentifier = [(AMSUIWebMediaAction *)self clientVersion];
    v14 = [(AMSUIWebMediaAction *)self _runMediaRequestWithType:type clientIdentifier:urlString2 clientVersion:clientIdentifier];
  }

  v16 = *MEMORY[0x1E69E9840];

  return v14;
}

- (id)_runMediaRequestWithURL:(id)l clientIdentifier:(id)identifier clientVersion:(id)version
{
  identifierCopy = identifier;
  v8 = MEMORY[0x1E696AF20];
  lCopy = l;
  v10 = [[v8 alloc] initWithString:lCopy];

  if (v10)
  {
    v11 = objc_alloc(MEMORY[0x1E698C9E8]);
    context = [(AMSUIWebAction *)self context];
    v13 = [context bag];
    v14 = [v11 initWithClientIdentifier:identifierCopy bag:v13];

    v15 = objc_alloc(MEMORY[0x1E698C9C0]);
    context2 = [(AMSUIWebAction *)self context];
    v17 = [context2 bag];
    v18 = [v15 initWithTokenService:v14 bag:v17];

    v19 = objc_alloc_init(MEMORY[0x1E698C9C8]);
    [v18 setResponseDecoder:v19];

    account = [(AMSUIWebMediaAction *)self account];
    [v18 setAccount:account];

    v21 = AMSLogKey();
    [v18 setLogKey:v21];

    context3 = [(AMSUIWebAction *)self context];
    uRLSession = [context3 URLSession];

    v24 = [objc_alloc(MEMORY[0x1E698C9B8]) initWithTokenService:v14];
    [uRLSession setProtocolHandler:v24];

    v25 = [v18 requestWithComponents:v10];
    method = [(AMSUIWebMediaAction *)self method];
    v37[0] = MEMORY[0x1E69E9820];
    v37[1] = 3221225472;
    v37[2] = __78__AMSUIWebMediaAction__runMediaRequestWithURL_clientIdentifier_clientVersion___block_invoke;
    v37[3] = &unk_1E7F25780;
    v38 = method;
    v39 = uRLSession;
    v27 = uRLSession;
    v28 = method;
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

- (id)_runMediaRequestWithType:(int64_t)type clientIdentifier:(id)identifier clientVersion:(id)version
{
  v6 = objc_alloc_init(MEMORY[0x1E698CAD0]);
  v7 = objc_alloc(MEMORY[0x1E698C9E0]);
  type = [(AMSUIWebMediaAction *)self type];
  clientIdentifier = [(AMSUIWebMediaAction *)self clientIdentifier];
  clientVersion = [(AMSUIWebMediaAction *)self clientVersion];
  context = [(AMSUIWebAction *)self context];
  v12 = [context bag];
  v13 = [v7 initWithType:type clientIdentifier:clientIdentifier clientVersion:clientVersion bag:v12];

  account = [(AMSUIWebMediaAction *)self account];
  [v13 setAccount:account];

  bundleIdentifiers = [(AMSUIWebMediaAction *)self bundleIdentifiers];
  [v13 setBundleIdentifiers:bundleIdentifiers];

  itemIdentifiers = [(AMSUIWebMediaAction *)self itemIdentifiers];
  [v13 setItemIdentifiers:itemIdentifiers];

  includedResultKeys = [(AMSUIWebMediaAction *)self includedResultKeys];
  [v13 setIncludedResultKeys:includedResultKeys];

  perform = [v13 perform];
  v21[0] = MEMORY[0x1E69E9820];
  v21[1] = 3221225472;
  v21[2] = __79__AMSUIWebMediaAction__runMediaRequestWithType_clientIdentifier_clientVersion___block_invoke;
  v21[3] = &unk_1E7F267A0;
  v19 = v6;
  v22 = v19;
  [perform addFinishBlock:v21];

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