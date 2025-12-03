@interface AMSUIWebSafariPageModel
- (AMSUIWebSafariPageModel)initWithJSObject:(id)object context:(id)context;
- (CGSize)windowSize;
- (NSString)description;
- (id)createViewControllerForContainer:(id)container;
@end

@implementation AMSUIWebSafariPageModel

- (AMSUIWebSafariPageModel)initWithJSObject:(id)object context:(id)context
{
  objectCopy = object;
  contextCopy = context;
  if (objectCopy && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
  {
    v40.receiver = self;
    v40.super_class = AMSUIWebSafariPageModel;
    v9 = [(AMSUIWebSafariPageModel *)&v40 init];
    v10 = v9;
    if (v9)
    {
      objc_storeStrong(&v9->_context, context);
      v11 = [AMSUIWebModel backgroundColorFromPageModel:objectCopy];
      backgroundColor = v10->_backgroundColor;
      v10->_backgroundColor = v11;

      v13 = [AMSUIWebModel impressionEventFromPageModel:objectCopy context:contextCopy];
      impressionEvent = v10->_impressionEvent;
      v10->_impressionEvent = v13;

      v15 = [AMSUIWebModel navigationBarFromPageModel:objectCopy context:contextCopy];
      navigationBar = v10->_navigationBar;
      v10->_navigationBar = v15;

      [AMSUIWebModel windowSizeFromPageModel:objectCopy];
      v10->_windowSize.width = v17;
      v10->_windowSize.height = v18;
      v19 = [objectCopy objectForKeyedSubscript:@"callbackScheme"];
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

      v22 = [objectCopy objectForKeyedSubscript:@"data"];
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

      v25 = [objectCopy objectForKeyedSubscript:@"hideToolbar"];
      if (objc_opt_respondsToSelector())
      {
        v26 = [objectCopy objectForKeyedSubscript:@"hideToolbar"];
        v10->_hideToolBar = [v26 BOOLValue];
      }

      else
      {
        v10->_hideToolBar = 0;
      }

      v27 = [objectCopy objectForKeyedSubscript:@"loadingPage"];
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v28 = v27;
      }

      else
      {
        v28 = 0;
      }

      v29 = [[AMSUIWebLoadingPageModel alloc] initWithJSObject:v28 context:contextCopy];
      loadingModel = v10->_loadingModel;
      v10->_loadingModel = v29;

      v31 = [objectCopy objectForKeyedSubscript:@"hideShareButton"];
      if (objc_opt_respondsToSelector())
      {
        v32 = [objectCopy objectForKeyedSubscript:@"hideShareButton"];
        v10->_showShareButton = [v32 BOOLValue] ^ 1;
      }

      else
      {
        v10->_showShareButton = 1;
      }

      v33 = [objectCopy objectForKeyedSubscript:@"hideRefreshButton"];
      if (objc_opt_respondsToSelector())
      {
        v34 = [objectCopy objectForKeyedSubscript:@"hideRefreshButton"];
        v10->_hideRefreshButton = [v34 BOOLValue];
      }

      else
      {
        v10->_hideRefreshButton = 0;
      }

      v35 = [objectCopy objectForKeyedSubscript:@"url"];
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
    selfCopy = self;
  }

  else
  {
    selfCopy = 0;
  }

  return selfCopy;
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

  backgroundColor = [(AMSUIWebSafariPageModel *)self backgroundColor];

  if (backgroundColor)
  {
    backgroundColor2 = [(AMSUIWebSafariPageModel *)self backgroundColor];
    [v8 setObject:backgroundColor2 forKey:@"backgroundColor"];
  }

  callbackScheme = [(AMSUIWebSafariPageModel *)self callbackScheme];

  if (callbackScheme)
  {
    callbackScheme2 = [(AMSUIWebSafariPageModel *)self callbackScheme];
    [v8 setObject:callbackScheme2 forKey:@"callbackScheme"];
  }

  data = [(AMSUIWebSafariPageModel *)self data];

  if (data)
  {
    data2 = [(AMSUIWebSafariPageModel *)self data];
    [v8 setObject:data2 forKey:@"data"];
  }

  impressionEvent = [(AMSUIWebSafariPageModel *)self impressionEvent];

  if (impressionEvent)
  {
    impressionEvent2 = [(AMSUIWebSafariPageModel *)self impressionEvent];
    [v8 setObject:impressionEvent2 forKey:@"impressionEvent"];
  }

  loadingModel = [(AMSUIWebSafariPageModel *)self loadingModel];

  if (loadingModel)
  {
    loadingModel2 = [(AMSUIWebSafariPageModel *)self loadingModel];
    [v8 setObject:loadingModel2 forKey:@"loadingModel"];
  }

  navigationBar = [(AMSUIWebSafariPageModel *)self navigationBar];

  if (navigationBar)
  {
    navigationBar2 = [(AMSUIWebSafariPageModel *)self navigationBar];
    [v8 setObject:navigationBar2 forKey:@"navigationBar"];
  }

  v21 = [(AMSUIWebSafariPageModel *)self URL];

  if (v21)
  {
    v22 = [(AMSUIWebSafariPageModel *)self URL];
    absoluteString = [v22 absoluteString];
    [v8 setObject:absoluteString forKey:@"URL"];
  }

  v24 = [v8 description];

  v25 = *MEMORY[0x1E69E9840];

  return v24;
}

- (id)createViewControllerForContainer:(id)container
{
  containedViewController = [container containedViewController];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = containedViewController;
  }

  else
  {
    v5 = 0;
  }

  if (!v5)
  {
    goto LABEL_8;
  }

  originalURL = [v5 originalURL];
  if (!originalURL)
  {
    goto LABEL_8;
  }

  v7 = originalURL;
  v8 = [(AMSUIWebSafariPageModel *)self URL];
  absoluteString = [v8 absoluteString];
  originalURL2 = [v5 originalURL];
  absoluteString2 = [originalURL2 absoluteString];
  v12 = [absoluteString isEqualToString:absoluteString2];

  if (v12)
  {
    v13 = v5;
  }

  else
  {
LABEL_8:
    v14 = [AMSUIWebSafariViewController alloc];
    context = [(AMSUIWebSafariPageModel *)self context];
    v13 = [(AMSUIWebSafariViewController *)v14 initWithContext:context];
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