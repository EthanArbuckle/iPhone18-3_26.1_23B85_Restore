@interface AMSUIWebLoadingPageModel
- (AMSUIWebLoadingPageModel)initWithContext:(id)context;
- (AMSUIWebLoadingPageModel)initWithJSObject:(id)object context:(id)context;
- (CGSize)windowSize;
- (NSString)description;
- (id)createViewControllerForContainer:(id)container;
@end

@implementation AMSUIWebLoadingPageModel

- (AMSUIWebLoadingPageModel)initWithContext:(id)context
{
  contextCopy = context;
  v9.receiver = self;
  v9.super_class = AMSUIWebLoadingPageModel;
  v6 = [(AMSUIWebLoadingPageModel *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_context, context);
  }

  return v7;
}

- (AMSUIWebLoadingPageModel)initWithJSObject:(id)object context:(id)context
{
  objectCopy = object;
  contextCopy = context;
  if (objectCopy && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
  {
    v9 = [(AMSUIWebLoadingPageModel *)self init];
    if (v9)
    {
      v10 = [objectCopy objectForKeyedSubscript:@"animateFadeIn"];
      if (objc_opt_respondsToSelector())
      {
        v11 = [objectCopy objectForKeyedSubscript:@"animateFadeIn"];
        v9->_animateFadeIn = [v11 BOOLValue];
      }

      else
      {
        v9->_animateFadeIn = 1;
      }

      v12 = [AMSUIWebModel backgroundColorFromPageModel:objectCopy];
      backgroundColor = v9->_backgroundColor;
      v9->_backgroundColor = v12;

      objc_storeStrong(&v9->_context, context);
      v14 = [objectCopy objectForKeyedSubscript:@"disableDelay"];
      if (objc_opt_respondsToSelector())
      {
        v15 = [objectCopy objectForKeyedSubscript:@"disableDelay"];
        v9->_disableDelay = [v15 BOOLValue];
      }

      else
      {
        v9->_disableDelay = 0;
      }

      v16 = [AMSUIWebModel impressionEventFromPageModel:objectCopy context:contextCopy];
      impressionEvent = v9->_impressionEvent;
      v9->_impressionEvent = v16;

      v18 = [objectCopy objectForKeyedSubscript:@"message"];
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

      v21 = [AMSUIWebModel navigationBarFromPageModel:objectCopy context:contextCopy];
      navigationBar = v9->_navigationBar;
      v9->_navigationBar = v21;

      [AMSUIWebModel windowSizeFromPageModel:objectCopy];
      v9->_windowSize.width = v23;
      v9->_windowSize.height = v24;
    }

    self = v9;
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

  backgroundColor = [(AMSUIWebLoadingPageModel *)self backgroundColor];

  if (backgroundColor)
  {
    backgroundColor2 = [(AMSUIWebLoadingPageModel *)self backgroundColor];
    [v8 setObject:backgroundColor2 forKey:@"backgroundColor"];
  }

  impressionEvent = [(AMSUIWebLoadingPageModel *)self impressionEvent];

  if (impressionEvent)
  {
    impressionEvent2 = [(AMSUIWebLoadingPageModel *)self impressionEvent];
    [v8 setObject:impressionEvent2 forKey:@"impressionEvent"];
  }

  message = [(AMSUIWebLoadingPageModel *)self message];

  if (message)
  {
    message2 = [(AMSUIWebLoadingPageModel *)self message];
    [v8 setObject:message2 forKey:@"message"];
  }

  navigationBar = [(AMSUIWebLoadingPageModel *)self navigationBar];

  if (navigationBar)
  {
    navigationBar2 = [(AMSUIWebLoadingPageModel *)self navigationBar];
    [v8 setObject:navigationBar2 forKey:@"navigationBar"];
  }

  v17 = [v8 description];

  v18 = *MEMORY[0x1E69E9840];

  return v17;
}

- (id)createViewControllerForContainer:(id)container
{
  v4 = [AMSUIWebPlaceholderViewController alloc];
  context = [(AMSUIWebLoadingPageModel *)self context];
  v6 = [(AMSUIWebPlaceholderViewController *)v4 initWithModel:self context:context appearance:0];

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