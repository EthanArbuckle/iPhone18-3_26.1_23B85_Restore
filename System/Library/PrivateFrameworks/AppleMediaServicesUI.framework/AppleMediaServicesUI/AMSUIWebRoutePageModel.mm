@interface AMSUIWebRoutePageModel
- (AMSUIWebClientContext)context;
- (AMSUIWebRoutePageModel)initWithJSObject:(id)object context:(id)context;
- (CGSize)windowSize;
- (NSString)description;
- (id)_webPageViewController;
@end

@implementation AMSUIWebRoutePageModel

- (AMSUIWebRoutePageModel)initWithJSObject:(id)object context:(id)context
{
  objectCopy = object;
  contextCopy = context;
  v28.receiver = self;
  v28.super_class = AMSUIWebRoutePageModel;
  v8 = [(AMSUIWebRoutePageModel *)&v28 init];
  v9 = v8;
  if (v8)
  {
    objc_storeWeak(&v8->_context, contextCopy);
    v10 = [objectCopy objectForKeyedSubscript:@"account"];
    v11 = [contextCopy iTunesAccountFromJSAccount:v10];
    account = v9->_account;
    v9->_account = v11;

    v13 = [objectCopy objectForKeyedSubscript:@"url"];
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

    v19 = [objectCopy objectForKeyedSubscript:@"clientOptions"];
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

    v22 = [objectCopy objectForKeyedSubscript:@"headers"];
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

    v25 = [objectCopy objectForKeyedSubscript:@"loadUsingWebKit"];
    if (objc_opt_respondsToSelector())
    {
      v26 = [objectCopy objectForKeyedSubscript:@"loadUsingWebKit"];
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
  disableReappearPlaceholder = [(AMSUIWebRoutePageModel *)self disableReappearPlaceholder];
  v4 = @"false";
  if (disableReappearPlaceholder)
  {
    v4 = @"true";
  }

  v22[0] = v4;
  v21[1] = @"URL";
  v5 = [(AMSUIWebRoutePageModel *)self URL];
  absoluteString = [v5 absoluteString];
  v22[1] = absoluteString;
  v21[2] = @"windowSize";
  [(AMSUIWebRoutePageModel *)self windowSize];
  v7 = NSStringFromCGSize(v24);
  v22[2] = v7;
  v8 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v22 forKeys:v21 count:3];
  v9 = [v8 mutableCopy];

  backgroundColor = [(AMSUIWebRoutePageModel *)self backgroundColor];

  if (backgroundColor)
  {
    backgroundColor2 = [(AMSUIWebRoutePageModel *)self backgroundColor];
    [v9 setObject:backgroundColor2 forKey:@"backgroundColor"];
  }

  clientOptions = [(AMSUIWebRoutePageModel *)self clientOptions];

  if (clientOptions)
  {
    clientOptions2 = [(AMSUIWebRoutePageModel *)self clientOptions];
    [v9 setObject:clientOptions2 forKey:@"clientOptions"];
  }

  impressionEvent = [(AMSUIWebRoutePageModel *)self impressionEvent];

  if (impressionEvent)
  {
    impressionEvent2 = [(AMSUIWebRoutePageModel *)self impressionEvent];
    [v9 setObject:impressionEvent2 forKey:@"impressionEvent"];
  }

  navigationBar = [(AMSUIWebRoutePageModel *)self navigationBar];

  if (navigationBar)
  {
    navigationBar2 = [(AMSUIWebRoutePageModel *)self navigationBar];
    [v9 setObject:navigationBar2 forKey:@"navigationBar"];
  }

  v18 = [v9 description];

  v19 = *MEMORY[0x1E69E9840];

  return v18;
}

- (id)_webPageViewController
{
  viewController = [(AMSUIWebRoutePageModel *)self viewController];

  if (viewController)
  {
    viewController2 = [(AMSUIWebRoutePageModel *)self viewController];
  }

  else
  {
    v5 = AMSSetLogKey();
    v6 = [AMSUIWebWrapperViewController alloc];
    context = [(AMSUIWebRoutePageModel *)self context];
    account = [(AMSUIWebRoutePageModel *)self account];
    viewController2 = [(AMSUIWebWrapperViewController *)v6 initWithContext:context account:account];

    context2 = [(AMSUIWebRoutePageModel *)self context];
    metricsOverlay = [context2 metricsOverlay];
    [(AMSUIWebViewController *)viewController2 setMetricsOverlay:metricsOverlay];

    clientOptions = [(AMSUIWebRoutePageModel *)self clientOptions];
    [(AMSUIWebViewController *)viewController2 setClientOptions:clientOptions];

    [(AMSUIWebViewController *)viewController2 setLoadUsingWebKit:[(AMSUIWebRoutePageModel *)self loadUsingWebKit]];
    v12 = objc_alloc(MEMORY[0x1E696AD68]);
    v13 = [(AMSUIWebRoutePageModel *)self URL];
    v14 = [v12 initWithURL:v13];

    headers = [(AMSUIWebRoutePageModel *)self headers];
    v16 = headers;
    if (headers)
    {
      v17 = headers;
    }

    else
    {
      v17 = MEMORY[0x1E695E0F8];
    }

    [v14 setAllHTTPHeaderFields:v17];

    v18 = [(AMSUIWebViewController *)viewController2 loadRequest:v14];
    [(AMSUIWebRoutePageModel *)self setViewController:viewController2];
  }

  return viewController2;
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