@interface AMSUIWebRoutePageModel
- (AMSUIWebClientContext)context;
- (AMSUIWebRoutePageModel)initWithJSObject:(id)a3 context:(id)a4;
- (CGSize)windowSize;
- (NSString)description;
- (id)_webPageViewController;
@end

@implementation AMSUIWebRoutePageModel

- (AMSUIWebRoutePageModel)initWithJSObject:(id)a3 context:(id)a4
{
  v6 = a3;
  v7 = a4;
  v28.receiver = self;
  v28.super_class = AMSUIWebRoutePageModel;
  v8 = [(AMSUIWebRoutePageModel *)&v28 init];
  v9 = v8;
  if (v8)
  {
    objc_storeWeak(&v8->_context, v7);
    v10 = [v6 objectForKeyedSubscript:@"account"];
    v11 = [v7 iTunesAccountFromJSAccount:v10];
    account = v9->_account;
    v9->_account = v11;

    v13 = [v6 objectForKeyedSubscript:@"url"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v14 = v13;
    }

    else
    {
      v14 = 0;
    }

    v15 = &stru_1F3921360;
    if (v14)
    {
      v15 = v14;
    }

    v16 = v15;

    v17 = [MEMORY[0x1E695DFF8] URLWithString:v16];

    URL = v9->_URL;
    v9->_URL = v17;

    v19 = [v6 objectForKeyedSubscript:@"clientOptions"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v20 = v19;
    }

    else
    {
      v20 = 0;
    }

    clientOptions = v9->_clientOptions;
    v9->_clientOptions = v20;

    v22 = [v6 objectForKeyedSubscript:@"headers"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v23 = v22;
    }

    else
    {
      v23 = 0;
    }

    headers = v9->_headers;
    v9->_headers = v23;

    v25 = [v6 objectForKeyedSubscript:@"loadUsingWebKit"];
    if (objc_opt_respondsToSelector())
    {
      v26 = [v6 objectForKeyedSubscript:@"loadUsingWebKit"];
      v9->_loadUsingWebKit = [v26 BOOLValue];
    }

    else
    {
      v9->_loadUsingWebKit = 0;
    }
  }

  return v9;
}

- (NSString)description
{
  v22[3] = *MEMORY[0x1E69E9840];
  v21[0] = @"disableReappearPlaceholder";
  v3 = [(AMSUIWebRoutePageModel *)self disableReappearPlaceholder];
  v4 = @"false";
  if (v3)
  {
    v4 = @"true";
  }

  v22[0] = v4;
  v21[1] = @"URL";
  v5 = [(AMSUIWebRoutePageModel *)self URL];
  v6 = [v5 absoluteString];
  v22[1] = v6;
  v21[2] = @"windowSize";
  [(AMSUIWebRoutePageModel *)self windowSize];
  v7 = NSStringFromCGSize(v24);
  v22[2] = v7;
  v8 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v22 forKeys:v21 count:3];
  v9 = [v8 mutableCopy];

  v10 = [(AMSUIWebRoutePageModel *)self backgroundColor];

  if (v10)
  {
    v11 = [(AMSUIWebRoutePageModel *)self backgroundColor];
    [v9 setObject:v11 forKey:@"backgroundColor"];
  }

  v12 = [(AMSUIWebRoutePageModel *)self clientOptions];

  if (v12)
  {
    v13 = [(AMSUIWebRoutePageModel *)self clientOptions];
    [v9 setObject:v13 forKey:@"clientOptions"];
  }

  v14 = [(AMSUIWebRoutePageModel *)self impressionEvent];

  if (v14)
  {
    v15 = [(AMSUIWebRoutePageModel *)self impressionEvent];
    [v9 setObject:v15 forKey:@"impressionEvent"];
  }

  v16 = [(AMSUIWebRoutePageModel *)self navigationBar];

  if (v16)
  {
    v17 = [(AMSUIWebRoutePageModel *)self navigationBar];
    [v9 setObject:v17 forKey:@"navigationBar"];
  }

  v18 = [v9 description];

  v19 = *MEMORY[0x1E69E9840];

  return v18;
}

- (id)_webPageViewController
{
  v3 = [(AMSUIWebRoutePageModel *)self viewController];

  if (v3)
  {
    v4 = [(AMSUIWebRoutePageModel *)self viewController];
  }

  else
  {
    v5 = AMSSetLogKey();
    v6 = [AMSUIWebWrapperViewController alloc];
    v7 = [(AMSUIWebRoutePageModel *)self context];
    v8 = [(AMSUIWebRoutePageModel *)self account];
    v4 = [(AMSUIWebWrapperViewController *)v6 initWithContext:v7 account:v8];

    v9 = [(AMSUIWebRoutePageModel *)self context];
    v10 = [v9 metricsOverlay];
    [(AMSUIWebViewController *)v4 setMetricsOverlay:v10];

    v11 = [(AMSUIWebRoutePageModel *)self clientOptions];
    [(AMSUIWebViewController *)v4 setClientOptions:v11];

    [(AMSUIWebViewController *)v4 setLoadUsingWebKit:[(AMSUIWebRoutePageModel *)self loadUsingWebKit]];
    v12 = objc_alloc(MEMORY[0x1E696AD68]);
    v13 = [(AMSUIWebRoutePageModel *)self URL];
    v14 = [v12 initWithURL:v13];

    v15 = [(AMSUIWebRoutePageModel *)self headers];
    v16 = v15;
    if (v15)
    {
      v17 = v15;
    }

    else
    {
      v17 = MEMORY[0x1E695E0F8];
    }

    [v14 setAllHTTPHeaderFields:v17];

    v18 = [(AMSUIWebViewController *)v4 loadRequest:v14];
    [(AMSUIWebRoutePageModel *)self setViewController:v4];
  }

  return v4;
}

- (CGSize)windowSize
{
  width = self->_windowSize.width;
  height = self->_windowSize.height;
  result.height = height;
  result.width = width;
  return result;
}

- (AMSUIWebClientContext)context
{
  WeakRetained = objc_loadWeakRetained(&self->_context);

  return WeakRetained;
}

@end