@interface AMSUIWebPageModel
- (AMSUIWebPageModel)initWithJSObject:(id)a3 context:(id)a4;
- (CGSize)windowSize;
- (NSString)description;
- (id)createViewControllerForContainer:(id)a3;
@end

@implementation AMSUIWebPageModel

- (AMSUIWebPageModel)initWithJSObject:(id)a3 context:(id)a4
{
  v6 = a3;
  v7 = a4;
  if (v6 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
  {
    v36.receiver = self;
    v36.super_class = AMSUIWebPageModel;
    v9 = [(AMSUIWebPageModel *)&v36 init];
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
      v19 = [v6 objectForKeyedSubscript:@"ignoreBottomSafeArea"];
      if (objc_opt_respondsToSelector())
      {
        v20 = [v6 objectForKeyedSubscript:@"ignoreBottomSafeArea"];
        v10->_ignoreBottomSafeArea = [v20 BOOLValue];
      }

      else
      {
        v10->_ignoreBottomSafeArea = 0;
      }

      v21 = [v6 objectForKeyedSubscript:@"ignoreTopSafeArea"];
      if (objc_opt_respondsToSelector())
      {
        v22 = [v6 objectForKeyedSubscript:@"ignoreTopSafeArea"];
        v10->_ignoreTopSafeArea = [v22 BOOLValue];
      }

      else
      {
        v10->_ignoreTopSafeArea = 0;
      }

      v23 = [v6 objectForKeyedSubscript:@"supportsRefresh"];
      if (objc_opt_respondsToSelector())
      {
        v24 = [v6 objectForKeyedSubscript:@"supportsRefresh"];
        v10->_supportsRefresh = [v24 BOOLValue];
      }

      else
      {
        v10->_supportsRefresh = 0;
      }

      v25 = [v6 objectForKeyedSubscript:@"swipeToDismissAction"];
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
        v28 = [(AMSUIWebPageModel *)v10 context];
        v29 = [(AMSUIWebAction *)v27 initWithJSObject:v26 context:v28];
        swipeToDismissAction = v10->_swipeToDismissAction;
        v10->_swipeToDismissAction = v29;
      }

      v31 = [v6 objectForKeyedSubscript:@"toolbar"];
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
        v33 = [[AMSUIWebToolbarModel alloc] initWithJSObject:v32 context:v7];
        toolbar = v10->_toolbar;
        v10->_toolbar = v33;
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

- (id)createViewControllerForContainer:(id)a3
{
  v3 = [(AMSUIWebPageModel *)self context];
  v4 = [v3 webPage];

  return v4;
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

  v9 = [(AMSUIWebPageModel *)self backgroundColor];

  if (v9)
  {
    v10 = [(AMSUIWebPageModel *)self backgroundColor];
    [v8 setObject:v10 forKey:@"backgroundColor"];
  }

  v11 = [(AMSUIWebPageModel *)self impressionEvent];

  if (v11)
  {
    v12 = [(AMSUIWebPageModel *)self impressionEvent];
    [v8 setObject:v12 forKey:@"impressionEvent"];
  }

  v13 = [(AMSUIWebPageModel *)self navigationBar];

  if (v13)
  {
    v14 = [(AMSUIWebPageModel *)self navigationBar];
    [v8 setObject:v14 forKey:@"navigationBar"];
  }

  v15 = [(AMSUIWebPageModel *)self toolbar];

  if (v15)
  {
    v16 = [(AMSUIWebPageModel *)self toolbar];
    [v8 setObject:v16 forKey:@"toolbar"];
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