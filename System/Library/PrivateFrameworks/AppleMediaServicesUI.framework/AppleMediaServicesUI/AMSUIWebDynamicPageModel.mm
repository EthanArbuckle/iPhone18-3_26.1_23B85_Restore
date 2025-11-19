@interface AMSUIWebDynamicPageModel
- (AMSUIWebDynamicPageModel)initWithJSObject:(id)a3 context:(id)a4;
- (CGSize)windowSize;
- (NSString)description;
- (id)createViewControllerForContainer:(id)a3;
@end

@implementation AMSUIWebDynamicPageModel

- (AMSUIWebDynamicPageModel)initWithJSObject:(id)a3 context:(id)a4
{
  v6 = a3;
  v7 = a4;
  v37.receiver = self;
  v37.super_class = AMSUIWebDynamicPageModel;
  v8 = [(AMSUIWebDynamicPageModel *)&v37 init];
  if (v8)
  {
    v9 = [v6 objectForKeyedSubscript:@"account"];
    v10 = [v7 iTunesAccountFromJSAccount:v9];
    account = v8->_account;
    v8->_account = v10;

    v12 = [AMSUIWebModel backgroundColorFromPageModel:v6];
    backgroundColor = v8->_backgroundColor;
    v8->_backgroundColor = v12;

    v14 = [AMSUIWebModel impressionEventFromPageModel:v6 context:v7];
    impressionEvent = v8->_impressionEvent;
    v8->_impressionEvent = v14;

    v16 = [AMSUIWebModel navigationBarFromPageModel:v6 context:v7];
    navigationBar = v8->_navigationBar;
    v8->_navigationBar = v16;

    [AMSUIWebModel windowSizeFromPageModel:v6];
    v8->_windowSize.width = v18;
    v8->_windowSize.height = v19;
    objc_storeStrong(&v8->_context, a4);
    v20 = [v6 objectForKeyedSubscript:@"clientOptions"];
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

    v23 = [v6 objectForKeyedSubscript:@"metricsOverlay"];
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

    v27 = [v7 metricsOverlay];

    if (v27)
    {
      v28 = [v26 mutableCopy];
      v29 = [v7 metricsOverlay];
      [v28 addEntriesFromDictionary:v29];

      v26 = v28;
    }

    objc_storeStrong(&v8->_metricsOverlay, v26);
    v30 = [v6 objectForKeyedSubscript:@"url"];
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

- (id)createViewControllerForContainer:(id)a3
{
  v4 = [AMSUIWebDynamicViewController alloc];
  v5 = [(AMSUIWebDynamicPageModel *)self context];
  v6 = [(AMSUIWebDynamicPageModel *)self URL];
  v7 = [(AMSUIWebDynamicViewController *)v4 initWithContext:v5 URL:v6];

  v8 = [(AMSUIWebDynamicPageModel *)self account];
  [(AMSUIDynamicViewController *)v7 setAccount:v8];

  v9 = [(AMSUIWebDynamicPageModel *)self context];
  v10 = [v9 clientInfo];
  [(AMSUIDynamicViewController *)v7 setClientInfo:v10];

  v11 = [(AMSUIWebDynamicPageModel *)self clientOptions];
  [(AMSUIDynamicViewController *)v7 setClientOptions:v11];

  v12 = [(AMSUIWebDynamicPageModel *)self metricsOverlay];
  [(AMSUIDynamicViewController *)v7 setMetricsOverlay:v12];

  [(AMSUIDynamicViewController *)v7 setDelegate:v7];

  return v7;
}

- (NSString)description
{
  v27[3] = *MEMORY[0x1E69E9840];
  v26[0] = @"disableReappearPlaceholder";
  v3 = [(AMSUIWebDynamicPageModel *)self disableReappearPlaceholder];
  v4 = @"false";
  if (v3)
  {
    v4 = @"true";
  }

  v27[0] = v4;
  v26[1] = @"URL";
  v5 = [(AMSUIWebDynamicPageModel *)self URL];
  v6 = [v5 absoluteString];
  v27[1] = v6;
  v26[2] = @"windowSize";
  [(AMSUIWebDynamicPageModel *)self windowSize];
  v7 = NSStringFromCGSize(v29);
  v27[2] = v7;
  v8 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v27 forKeys:v26 count:3];
  v9 = [v8 mutableCopy];

  v10 = [(AMSUIWebDynamicPageModel *)self account];

  if (v10)
  {
    v11 = [(AMSUIWebDynamicPageModel *)self account];
    v12 = [v11 username];
    [v9 setObject:v12 forKey:@"account"];
  }

  v13 = [(AMSUIWebDynamicPageModel *)self backgroundColor];

  if (v13)
  {
    v14 = [(AMSUIWebDynamicPageModel *)self backgroundColor];
    [v9 setObject:v14 forKey:@"backgroundColor"];
  }

  v15 = [(AMSUIWebDynamicPageModel *)self clientOptions];

  if (v15)
  {
    v16 = [(AMSUIWebDynamicPageModel *)self clientOptions];
    [v9 setObject:v16 forKey:@"clientOptions"];
  }

  v17 = [(AMSUIWebDynamicPageModel *)self impressionEvent];

  if (v17)
  {
    v18 = [(AMSUIWebDynamicPageModel *)self impressionEvent];
    [v9 setObject:v18 forKey:@"impressionEvent"];
  }

  v19 = [(AMSUIWebDynamicPageModel *)self metricsOverlay];

  if (v19)
  {
    v20 = [(AMSUIWebDynamicPageModel *)self metricsOverlay];
    [v9 setObject:v20 forKey:@"metricsOverlay"];
  }

  v21 = [(AMSUIWebDynamicPageModel *)self navigationBar];

  if (v21)
  {
    v22 = [(AMSUIWebDynamicPageModel *)self navigationBar];
    [v9 setObject:v22 forKey:@"navigationBar"];
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