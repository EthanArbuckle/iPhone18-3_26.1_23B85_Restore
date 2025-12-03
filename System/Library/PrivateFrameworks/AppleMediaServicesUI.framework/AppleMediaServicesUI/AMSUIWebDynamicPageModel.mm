@interface AMSUIWebDynamicPageModel
- (AMSUIWebDynamicPageModel)initWithJSObject:(id)object context:(id)context;
- (CGSize)windowSize;
- (NSString)description;
- (id)createViewControllerForContainer:(id)container;
@end

@implementation AMSUIWebDynamicPageModel

- (AMSUIWebDynamicPageModel)initWithJSObject:(id)object context:(id)context
{
  objectCopy = object;
  contextCopy = context;
  v37.receiver = self;
  v37.super_class = AMSUIWebDynamicPageModel;
  v8 = [(AMSUIWebDynamicPageModel *)&v37 init];
  if (v8)
  {
    v9 = [objectCopy objectForKeyedSubscript:@"account"];
    v10 = [contextCopy iTunesAccountFromJSAccount:v9];
    account = v8->_account;
    v8->_account = v10;

    v12 = [AMSUIWebModel backgroundColorFromPageModel:objectCopy];
    backgroundColor = v8->_backgroundColor;
    v8->_backgroundColor = v12;

    v14 = [AMSUIWebModel impressionEventFromPageModel:objectCopy context:contextCopy];
    impressionEvent = v8->_impressionEvent;
    v8->_impressionEvent = v14;

    v16 = [AMSUIWebModel navigationBarFromPageModel:objectCopy context:contextCopy];
    navigationBar = v8->_navigationBar;
    v8->_navigationBar = v16;

    [AMSUIWebModel windowSizeFromPageModel:objectCopy];
    v8->_windowSize.width = v18;
    v8->_windowSize.height = v19;
    objc_storeStrong(&v8->_context, context);
    v20 = [objectCopy objectForKeyedSubscript:@"clientOptions"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v21 = v20;
    }

    else
    {
      v21 = 0;
    }

    clientOptions = v8->_clientOptions;
    v8->_clientOptions = v21;

    v23 = [objectCopy objectForKeyedSubscript:@"metricsOverlay"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v24 = v23;
    }

    else
    {
      v24 = 0;
    }

    v25 = MEMORY[0x1E695E0F8];
    if (v24)
    {
      v25 = v24;
    }

    v26 = v25;

    metricsOverlay = [contextCopy metricsOverlay];

    if (metricsOverlay)
    {
      v28 = [v26 mutableCopy];
      metricsOverlay2 = [contextCopy metricsOverlay];
      [v28 addEntriesFromDictionary:metricsOverlay2];

      v26 = v28;
    }

    objc_storeStrong(&v8->_metricsOverlay, v26);
    v30 = [objectCopy objectForKeyedSubscript:@"url"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v31 = v30;
    }

    else
    {
      v31 = 0;
    }

    v32 = &stru_1F3921360;
    if (v31)
    {
      v32 = v31;
    }

    v33 = v32;

    v34 = [MEMORY[0x1E695DFF8] URLWithString:v33];

    URL = v8->_URL;
    v8->_URL = v34;
  }

  return v8;
}

- (id)createViewControllerForContainer:(id)container
{
  v4 = [AMSUIWebDynamicViewController alloc];
  context = [(AMSUIWebDynamicPageModel *)self context];
  v6 = [(AMSUIWebDynamicPageModel *)self URL];
  v7 = [(AMSUIWebDynamicViewController *)v4 initWithContext:context URL:v6];

  account = [(AMSUIWebDynamicPageModel *)self account];
  [(AMSUIDynamicViewController *)v7 setAccount:account];

  context2 = [(AMSUIWebDynamicPageModel *)self context];
  clientInfo = [context2 clientInfo];
  [(AMSUIDynamicViewController *)v7 setClientInfo:clientInfo];

  clientOptions = [(AMSUIWebDynamicPageModel *)self clientOptions];
  [(AMSUIDynamicViewController *)v7 setClientOptions:clientOptions];

  metricsOverlay = [(AMSUIWebDynamicPageModel *)self metricsOverlay];
  [(AMSUIDynamicViewController *)v7 setMetricsOverlay:metricsOverlay];

  [(AMSUIDynamicViewController *)v7 setDelegate:v7];

  return v7;
}

- (NSString)description
{
  v27[3] = *MEMORY[0x1E69E9840];
  v26[0] = @"disableReappearPlaceholder";
  disableReappearPlaceholder = [(AMSUIWebDynamicPageModel *)self disableReappearPlaceholder];
  v4 = @"false";
  if (disableReappearPlaceholder)
  {
    v4 = @"true";
  }

  v27[0] = v4;
  v26[1] = @"URL";
  v5 = [(AMSUIWebDynamicPageModel *)self URL];
  absoluteString = [v5 absoluteString];
  v27[1] = absoluteString;
  v26[2] = @"windowSize";
  [(AMSUIWebDynamicPageModel *)self windowSize];
  v7 = NSStringFromCGSize(v29);
  v27[2] = v7;
  v8 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v27 forKeys:v26 count:3];
  v9 = [v8 mutableCopy];

  account = [(AMSUIWebDynamicPageModel *)self account];

  if (account)
  {
    account2 = [(AMSUIWebDynamicPageModel *)self account];
    username = [account2 username];
    [v9 setObject:username forKey:@"account"];
  }

  backgroundColor = [(AMSUIWebDynamicPageModel *)self backgroundColor];

  if (backgroundColor)
  {
    backgroundColor2 = [(AMSUIWebDynamicPageModel *)self backgroundColor];
    [v9 setObject:backgroundColor2 forKey:@"backgroundColor"];
  }

  clientOptions = [(AMSUIWebDynamicPageModel *)self clientOptions];

  if (clientOptions)
  {
    clientOptions2 = [(AMSUIWebDynamicPageModel *)self clientOptions];
    [v9 setObject:clientOptions2 forKey:@"clientOptions"];
  }

  impressionEvent = [(AMSUIWebDynamicPageModel *)self impressionEvent];

  if (impressionEvent)
  {
    impressionEvent2 = [(AMSUIWebDynamicPageModel *)self impressionEvent];
    [v9 setObject:impressionEvent2 forKey:@"impressionEvent"];
  }

  metricsOverlay = [(AMSUIWebDynamicPageModel *)self metricsOverlay];

  if (metricsOverlay)
  {
    metricsOverlay2 = [(AMSUIWebDynamicPageModel *)self metricsOverlay];
    [v9 setObject:metricsOverlay2 forKey:@"metricsOverlay"];
  }

  navigationBar = [(AMSUIWebDynamicPageModel *)self navigationBar];

  if (navigationBar)
  {
    navigationBar2 = [(AMSUIWebDynamicPageModel *)self navigationBar];
    [v9 setObject:navigationBar2 forKey:@"navigationBar"];
  }

  v23 = [v9 description];

  v24 = *MEMORY[0x1E69E9840];

  return v23;
}

- (CGSize)windowSize
{
  width = self->_windowSize.width;
  height = self->_windowSize.height;
  result.height = height;
  result.width = width;
  return result;
}

@end