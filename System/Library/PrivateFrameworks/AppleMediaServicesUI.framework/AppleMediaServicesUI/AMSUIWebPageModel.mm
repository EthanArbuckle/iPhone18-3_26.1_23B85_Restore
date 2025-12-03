@interface AMSUIWebPageModel
- (AMSUIWebPageModel)initWithJSObject:(id)object context:(id)context;
- (CGSize)windowSize;
- (NSString)description;
- (id)createViewControllerForContainer:(id)container;
@end

@implementation AMSUIWebPageModel

- (AMSUIWebPageModel)initWithJSObject:(id)object context:(id)context
{
  objectCopy = object;
  contextCopy = context;
  if (objectCopy && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
  {
    v36.receiver = self;
    v36.super_class = AMSUIWebPageModel;
    v9 = [(AMSUIWebPageModel *)&v36 init];
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
      v19 = [objectCopy objectForKeyedSubscript:@"ignoreBottomSafeArea"];
      if (objc_opt_respondsToSelector())
      {
        v20 = [objectCopy objectForKeyedSubscript:@"ignoreBottomSafeArea"];
        v10->_ignoreBottomSafeArea = [v20 BOOLValue];
      }

      else
      {
        v10->_ignoreBottomSafeArea = 0;
      }

      v21 = [objectCopy objectForKeyedSubscript:@"ignoreTopSafeArea"];
      if (objc_opt_respondsToSelector())
      {
        v22 = [objectCopy objectForKeyedSubscript:@"ignoreTopSafeArea"];
        v10->_ignoreTopSafeArea = [v22 BOOLValue];
      }

      else
      {
        v10->_ignoreTopSafeArea = 0;
      }

      v23 = [objectCopy objectForKeyedSubscript:@"supportsRefresh"];
      if (objc_opt_respondsToSelector())
      {
        v24 = [objectCopy objectForKeyedSubscript:@"supportsRefresh"];
        v10->_supportsRefresh = [v24 BOOLValue];
      }

      else
      {
        v10->_supportsRefresh = 0;
      }

      v25 = [objectCopy objectForKeyedSubscript:@"swipeToDismissAction"];
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v26 = v25;
      }

      else
      {
        v26 = 0;
      }

      if (v26)
      {
        v27 = [AMSUIWebAction alloc];
        context = [(AMSUIWebPageModel *)v10 context];
        v29 = [(AMSUIWebAction *)v27 initWithJSObject:v26 context:context];
        swipeToDismissAction = v10->_swipeToDismissAction;
        v10->_swipeToDismissAction = v29;
      }

      v31 = [objectCopy objectForKeyedSubscript:@"toolbar"];
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v32 = v31;
      }

      else
      {
        v32 = 0;
      }

      if (v32)
      {
        v33 = [[AMSUIWebToolbarModel alloc] initWithJSObject:v32 context:contextCopy];
        toolbar = v10->_toolbar;
        v10->_toolbar = v33;
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

- (id)createViewControllerForContainer:(id)container
{
  context = [(AMSUIWebPageModel *)self context];
  webPage = [context webPage];

  return webPage;
}

- (NSString)description
{
  v21[4] = *MEMORY[0x1E69E9840];
  v20[0] = @"disableReappearPlaceholder";
  if ([(AMSUIWebPageModel *)self disableReappearPlaceholder])
  {
    v3 = @"true";
  }

  else
  {
    v3 = @"false";
  }

  v21[0] = v3;
  v20[1] = @"ignoreBottomSafeArea";
  if ([(AMSUIWebPageModel *)self ignoreBottomSafeArea])
  {
    v4 = @"true";
  }

  else
  {
    v4 = @"false";
  }

  v21[1] = v4;
  v20[2] = @"ignoreTopSafeArea";
  if ([(AMSUIWebPageModel *)self ignoreTopSafeArea])
  {
    v5 = @"true";
  }

  else
  {
    v5 = @"false";
  }

  v21[2] = v5;
  v20[3] = @"windowSize";
  [(AMSUIWebPageModel *)self windowSize];
  v6 = NSStringFromCGSize(v23);
  v21[3] = v6;
  v7 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v21 forKeys:v20 count:4];
  v8 = [v7 mutableCopy];

  backgroundColor = [(AMSUIWebPageModel *)self backgroundColor];

  if (backgroundColor)
  {
    backgroundColor2 = [(AMSUIWebPageModel *)self backgroundColor];
    [v8 setObject:backgroundColor2 forKey:@"backgroundColor"];
  }

  impressionEvent = [(AMSUIWebPageModel *)self impressionEvent];

  if (impressionEvent)
  {
    impressionEvent2 = [(AMSUIWebPageModel *)self impressionEvent];
    [v8 setObject:impressionEvent2 forKey:@"impressionEvent"];
  }

  navigationBar = [(AMSUIWebPageModel *)self navigationBar];

  if (navigationBar)
  {
    navigationBar2 = [(AMSUIWebPageModel *)self navigationBar];
    [v8 setObject:navigationBar2 forKey:@"navigationBar"];
  }

  toolbar = [(AMSUIWebPageModel *)self toolbar];

  if (toolbar)
  {
    toolbar2 = [(AMSUIWebPageModel *)self toolbar];
    [v8 setObject:toolbar2 forKey:@"toolbar"];
  }

  v17 = [v8 description];

  v18 = *MEMORY[0x1E69E9840];

  return v17;
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