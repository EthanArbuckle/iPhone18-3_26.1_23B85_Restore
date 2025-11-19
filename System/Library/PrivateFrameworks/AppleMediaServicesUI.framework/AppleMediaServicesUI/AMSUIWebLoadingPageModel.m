@interface AMSUIWebLoadingPageModel
- (AMSUIWebLoadingPageModel)initWithContext:(id)a3;
- (AMSUIWebLoadingPageModel)initWithJSObject:(id)a3 context:(id)a4;
- (CGSize)windowSize;
- (NSString)description;
- (id)createViewControllerForContainer:(id)a3;
@end

@implementation AMSUIWebLoadingPageModel

- (AMSUIWebLoadingPageModel)initWithContext:(id)a3
{
  v5 = a3;
  v9.receiver = self;
  v9.super_class = AMSUIWebLoadingPageModel;
  v6 = [(AMSUIWebLoadingPageModel *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_context, a3);
  }

  return v7;
}

- (AMSUIWebLoadingPageModel)initWithJSObject:(id)a3 context:(id)a4
{
  v6 = a3;
  v7 = a4;
  if (v6 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
  {
    v9 = [(AMSUIWebLoadingPageModel *)self init];
    if (v9)
    {
      v10 = [v6 objectForKeyedSubscript:@"animateFadeIn"];
      if (objc_opt_respondsToSelector())
      {
        v11 = [v6 objectForKeyedSubscript:@"animateFadeIn"];
        v9->_animateFadeIn = [v11 BOOLValue];
      }

      else
      {
        v9->_animateFadeIn = 1;
      }

      v12 = [AMSUIWebModel backgroundColorFromPageModel:v6];
      backgroundColor = v9->_backgroundColor;
      v9->_backgroundColor = v12;

      objc_storeStrong(&v9->_context, a4);
      v14 = [v6 objectForKeyedSubscript:@"disableDelay"];
      if (objc_opt_respondsToSelector())
      {
        v15 = [v6 objectForKeyedSubscript:@"disableDelay"];
        v9->_disableDelay = [v15 BOOLValue];
      }

      else
      {
        v9->_disableDelay = 0;
      }

      v16 = [AMSUIWebModel impressionEventFromPageModel:v6 context:v7];
      impressionEvent = v9->_impressionEvent;
      v9->_impressionEvent = v16;

      v18 = [v6 objectForKeyedSubscript:@"message"];
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v19 = v18;
      }

      else
      {
        v19 = 0;
      }

      message = v9->_message;
      v9->_message = v19;

      v21 = [AMSUIWebModel navigationBarFromPageModel:v6 context:v7];
      navigationBar = v9->_navigationBar;
      v9->_navigationBar = v21;

      [AMSUIWebModel windowSizeFromPageModel:v6];
      v9->_windowSize.width = v23;
      v9->_windowSize.height = v24;
    }

    self = v9;
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
  v21[4] = *MEMORY[0x1E69E9840];
  v20[0] = @"disableReappearPlaceholder";
  if ([(AMSUIWebLoadingPageModel *)self disableReappearPlaceholder])
  {
    v3 = @"true";
  }

  else
  {
    v3 = @"false";
  }

  v21[0] = v3;
  v20[1] = @"animateFadeIn";
  if ([(AMSUIWebLoadingPageModel *)self animateFadeIn])
  {
    v4 = @"true";
  }

  else
  {
    v4 = @"false";
  }

  v21[1] = v4;
  v20[2] = @"disableDelay";
  if ([(AMSUIWebLoadingPageModel *)self disableDelay])
  {
    v5 = @"true";
  }

  else
  {
    v5 = @"false";
  }

  v21[2] = v5;
  v20[3] = @"windowSize";
  [(AMSUIWebLoadingPageModel *)self windowSize];
  v6 = NSStringFromCGSize(v23);
  v21[3] = v6;
  v7 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v21 forKeys:v20 count:4];
  v8 = [v7 mutableCopy];

  v9 = [(AMSUIWebLoadingPageModel *)self backgroundColor];

  if (v9)
  {
    v10 = [(AMSUIWebLoadingPageModel *)self backgroundColor];
    [v8 setObject:v10 forKey:@"backgroundColor"];
  }

  v11 = [(AMSUIWebLoadingPageModel *)self impressionEvent];

  if (v11)
  {
    v12 = [(AMSUIWebLoadingPageModel *)self impressionEvent];
    [v8 setObject:v12 forKey:@"impressionEvent"];
  }

  v13 = [(AMSUIWebLoadingPageModel *)self message];

  if (v13)
  {
    v14 = [(AMSUIWebLoadingPageModel *)self message];
    [v8 setObject:v14 forKey:@"message"];
  }

  v15 = [(AMSUIWebLoadingPageModel *)self navigationBar];

  if (v15)
  {
    v16 = [(AMSUIWebLoadingPageModel *)self navigationBar];
    [v8 setObject:v16 forKey:@"navigationBar"];
  }

  v17 = [v8 description];

  v18 = *MEMORY[0x1E69E9840];

  return v17;
}

- (id)createViewControllerForContainer:(id)a3
{
  v4 = [AMSUIWebPlaceholderViewController alloc];
  v5 = [(AMSUIWebLoadingPageModel *)self context];
  v6 = [(AMSUIWebPlaceholderViewController *)v4 initWithModel:self context:v5 appearance:0];

  [(AMSUIWebPlaceholderViewController *)v6 setAnimateFadeIn:[(AMSUIWebLoadingPageModel *)self animateFadeIn]];

  return v6;
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