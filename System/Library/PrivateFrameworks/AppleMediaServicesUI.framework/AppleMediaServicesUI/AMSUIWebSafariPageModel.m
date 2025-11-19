@interface AMSUIWebSafariPageModel
- (AMSUIWebSafariPageModel)initWithJSObject:(id)a3 context:(id)a4;
- (CGSize)windowSize;
- (NSString)description;
- (id)createViewControllerForContainer:(id)a3;
@end

@implementation AMSUIWebSafariPageModel

- (AMSUIWebSafariPageModel)initWithJSObject:(id)a3 context:(id)a4
{
  v6 = a3;
  v7 = a4;
  if (v6 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
  {
    v40.receiver = self;
    v40.super_class = AMSUIWebSafariPageModel;
    v9 = [(AMSUIWebSafariPageModel *)&v40 init];
    v10 = v9;
    if (v9)
    {
      objc_storeStrong(&v9->_context, a4);
      v11 = [AMSUIWebModel backgroundColorFromPageModel:v6];
      backgroundColor = v10->_backgroundColor;
      v10->_backgroundColor = v11;

      v13 = [AMSUIWebModel impressionEventFromPageModel:v6 context:v7];
      impressionEvent = v10->_impressionEvent;
      v10->_impressionEvent = v13;

      v15 = [AMSUIWebModel navigationBarFromPageModel:v6 context:v7];
      navigationBar = v10->_navigationBar;
      v10->_navigationBar = v15;

      [AMSUIWebModel windowSizeFromPageModel:v6];
      v10->_windowSize.width = v17;
      v10->_windowSize.height = v18;
      v19 = [v6 objectForKeyedSubscript:@"callbackScheme"];
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v20 = v19;
      }

      else
      {
        v20 = 0;
      }

      callbackScheme = v10->_callbackScheme;
      v10->_callbackScheme = v20;

      v22 = [v6 objectForKeyedSubscript:@"data"];
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v23 = v22;
      }

      else
      {
        v23 = 0;
      }

      data = v10->_data;
      v10->_data = v23;

      v25 = [v6 objectForKeyedSubscript:@"hideToolbar"];
      if (objc_opt_respondsToSelector())
      {
        v26 = [v6 objectForKeyedSubscript:@"hideToolbar"];
        v10->_hideToolBar = [v26 BOOLValue];
      }

      else
      {
        v10->_hideToolBar = 0;
      }

      v27 = [v6 objectForKeyedSubscript:@"loadingPage"];
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v28 = v27;
      }

      else
      {
        v28 = 0;
      }

      v29 = [[AMSUIWebLoadingPageModel alloc] initWithJSObject:v28 context:v7];
      loadingModel = v10->_loadingModel;
      v10->_loadingModel = v29;

      v31 = [v6 objectForKeyedSubscript:@"hideShareButton"];
      if (objc_opt_respondsToSelector())
      {
        v32 = [v6 objectForKeyedSubscript:@"hideShareButton"];
        v10->_showShareButton = [v32 BOOLValue] ^ 1;
      }

      else
      {
        v10->_showShareButton = 1;
      }

      v33 = [v6 objectForKeyedSubscript:@"hideRefreshButton"];
      if (objc_opt_respondsToSelector())
      {
        v34 = [v6 objectForKeyedSubscript:@"hideRefreshButton"];
        v10->_hideRefreshButton = [v34 BOOLValue];
      }

      else
      {
        v10->_hideRefreshButton = 0;
      }

      v35 = [v6 objectForKeyedSubscript:@"url"];
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v36 = v35;
      }

      else
      {
        v36 = 0;
      }

      if (v36)
      {
        v37 = [MEMORY[0x1E695DFF8] URLWithString:v36];
        URL = v10->_URL;
        v10->_URL = v37;
      }
    }

    self = v10;
    v8 = self;
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

- (NSString)description
{
  v28[4] = *MEMORY[0x1E69E9840];
  v27[0] = @"disableReappearPlaceholder";
  if ([(AMSUIWebSafariPageModel *)self disableReappearPlaceholder])
  {
    v3 = @"true";
  }

  else
  {
    v3 = @"false";
  }

  v28[0] = v3;
  v27[1] = @"hideToolBar";
  if ([(AMSUIWebSafariPageModel *)self hideToolBar])
  {
    v4 = @"true";
  }

  else
  {
    v4 = @"false";
  }

  v28[1] = v4;
  v27[2] = @"showShareButton";
  if ([(AMSUIWebSafariPageModel *)self showShareButton])
  {
    v5 = @"true";
  }

  else
  {
    v5 = @"false";
  }

  v28[2] = v5;
  v27[3] = @"windowSize";
  [(AMSUIWebSafariPageModel *)self windowSize];
  v6 = NSStringFromCGSize(v30);
  v28[3] = v6;
  v7 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v28 forKeys:v27 count:4];
  v8 = [v7 mutableCopy];

  v9 = [(AMSUIWebSafariPageModel *)self backgroundColor];

  if (v9)
  {
    v10 = [(AMSUIWebSafariPageModel *)self backgroundColor];
    [v8 setObject:v10 forKey:@"backgroundColor"];
  }

  v11 = [(AMSUIWebSafariPageModel *)self callbackScheme];

  if (v11)
  {
    v12 = [(AMSUIWebSafariPageModel *)self callbackScheme];
    [v8 setObject:v12 forKey:@"callbackScheme"];
  }

  v13 = [(AMSUIWebSafariPageModel *)self data];

  if (v13)
  {
    v14 = [(AMSUIWebSafariPageModel *)self data];
    [v8 setObject:v14 forKey:@"data"];
  }

  v15 = [(AMSUIWebSafariPageModel *)self impressionEvent];

  if (v15)
  {
    v16 = [(AMSUIWebSafariPageModel *)self impressionEvent];
    [v8 setObject:v16 forKey:@"impressionEvent"];
  }

  v17 = [(AMSUIWebSafariPageModel *)self loadingModel];

  if (v17)
  {
    v18 = [(AMSUIWebSafariPageModel *)self loadingModel];
    [v8 setObject:v18 forKey:@"loadingModel"];
  }

  v19 = [(AMSUIWebSafariPageModel *)self navigationBar];

  if (v19)
  {
    v20 = [(AMSUIWebSafariPageModel *)self navigationBar];
    [v8 setObject:v20 forKey:@"navigationBar"];
  }

  v21 = [(AMSUIWebSafariPageModel *)self URL];

  if (v21)
  {
    v22 = [(AMSUIWebSafariPageModel *)self URL];
    v23 = [v22 absoluteString];
    [v8 setObject:v23 forKey:@"URL"];
  }

  v24 = [v8 description];

  v25 = *MEMORY[0x1E69E9840];

  return v24;
}

- (id)createViewControllerForContainer:(id)a3
{
  v4 = [a3 containedViewController];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (!v5)
  {
    goto LABEL_8;
  }

  v6 = [v5 originalURL];
  if (!v6)
  {
    goto LABEL_8;
  }

  v7 = v6;
  v8 = [(AMSUIWebSafariPageModel *)self URL];
  v9 = [v8 absoluteString];
  v10 = [v5 originalURL];
  v11 = [v10 absoluteString];
  v12 = [v9 isEqualToString:v11];

  if (v12)
  {
    v13 = v5;
  }

  else
  {
LABEL_8:
    v14 = [AMSUIWebSafariViewController alloc];
    v15 = [(AMSUIWebSafariPageModel *)self context];
    v13 = [(AMSUIWebSafariViewController *)v14 initWithContext:v15];
  }

  return v13;
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