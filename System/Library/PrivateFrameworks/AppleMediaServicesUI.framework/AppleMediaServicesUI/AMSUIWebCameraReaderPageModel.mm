@interface AMSUIWebCameraReaderPageModel
- (AMSUIWebCameraReaderPageModel)initWithJSObject:(id)object context:(id)context;
- (CGSize)windowSize;
- (NSString)description;
- (UIViewController)presentedViewController;
- (id)createViewControllerForContainer:(id)container;
@end

@implementation AMSUIWebCameraReaderPageModel

- (AMSUIWebCameraReaderPageModel)initWithJSObject:(id)object context:(id)context
{
  objectCopy = object;
  contextCopy = context;
  v45.receiver = self;
  v45.super_class = AMSUIWebCameraReaderPageModel;
  v8 = [(AMSUIWebCameraReaderPageModel *)&v45 init];
  v9 = v8;
  if (v8)
  {
    objc_storeStrong(&v8->_context, context);
    v10 = [AMSUIWebModel backgroundColorFromPageModel:objectCopy];
    backgroundColor = v9->_backgroundColor;
    v9->_backgroundColor = v10;

    v12 = [AMSUIWebModel impressionEventFromPageModel:objectCopy context:contextCopy];
    impressionEvent = v9->_impressionEvent;
    v9->_impressionEvent = v12;

    v14 = [AMSUIWebModel navigationBarFromPageModel:objectCopy context:contextCopy];
    navigationBar = v9->_navigationBar;
    v9->_navigationBar = v14;

    [AMSUIWebModel windowSizeFromPageModel:objectCopy];
    v9->_windowSize.width = v16;
    v9->_windowSize.height = v17;
    v18 = [objectCopy objectForKeyedSubscript:@"pageType"];
    if (objc_opt_respondsToSelector())
    {
      integerValue = [v18 integerValue];
    }

    else
    {
      integerValue = 0;
    }

    v9->_pageType = integerValue;
    v20 = [objectCopy objectForKeyedSubscript:@"bottomLinkLabel"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v21 = v20;
    }

    else
    {
      v21 = 0;
    }

    bottomLinkLabel = v9->_bottomLinkLabel;
    v9->_bottomLinkLabel = v21;

    v23 = [objectCopy objectForKeyedSubscript:@"bottomLinkAction"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v24 = v23;
    }

    else
    {
      v24 = 0;
    }

    v25 = [AMSUIWebActionMapper actionFromJSObject:v24 context:contextCopy];
    bottomLinkAction = v9->_bottomLinkAction;
    v9->_bottomLinkAction = v25;

    v27 = [objectCopy objectForKeyedSubscript:@"primaryLabel"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v28 = v27;
    }

    else
    {
      v28 = 0;
    }

    primaryLabel = v9->_primaryLabel;
    v9->_primaryLabel = v28;

    v30 = [objectCopy objectForKeyedSubscript:@"secondaryLabel"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v31 = v30;
    }

    else
    {
      v31 = 0;
    }

    secondaryLabel = v9->_secondaryLabel;
    v9->_secondaryLabel = v31;

    v33 = [objectCopy objectForKeyedSubscript:@"fullScreen"];
    if (objc_opt_respondsToSelector())
    {
      v34 = [objectCopy objectForKeyedSubscript:@"fullScreen"];
      v9->_fullScreen = [v34 BOOLValue];
    }

    else
    {
      v9->_fullScreen = 0;
    }

    v35 = [objectCopy objectForKeyedSubscript:@"allowsCameraToggle"];
    if (objc_opt_respondsToSelector())
    {
      v36 = [objectCopy objectForKeyedSubscript:@"allowsCameraToggle"];
      v9->_allowsCameraToggle = [v36 BOOLValue];
    }

    else
    {
      v9->_allowsCameraToggle = 0;
    }

    v37 = [objectCopy objectForKeyedSubscript:@"allowsTextEntry"];
    if (objc_opt_respondsToSelector())
    {
      v38 = [objectCopy objectForKeyedSubscript:@"allowsTextEntry"];
      v9->_allowsTextEntry = [v38 BOOLValue];
    }

    else
    {
      v9->_allowsTextEntry = 0;
    }

    v39 = [objectCopy objectForKeyedSubscript:@"prefersSessionTeardown"];
    if (objc_opt_respondsToSelector())
    {
      v40 = [objectCopy objectForKeyedSubscript:@"prefersSessionTeardown"];
      v9->_prefersSessionTeardown = [v40 BOOLValue];
    }

    else
    {
      v9->_prefersSessionTeardown = 0;
    }

    v41 = [objectCopy objectForKeyedSubscript:@"textFieldPlaceholder"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v42 = v41;
    }

    else
    {
      v42 = 0;
    }

    textFieldPlaceholder = v9->_textFieldPlaceholder;
    v9->_textFieldPlaceholder = v42;
  }

  return v9;
}

- (id)createViewControllerForContainer:(id)container
{
  v4 = [AMSUIWebCameraReaderViewController alloc];
  context = [(AMSUIWebCameraReaderPageModel *)self context];
  v6 = [(AMSUIWebCameraReaderViewController *)v4 initWithContext:context];

  return v6;
}

- (NSString)description
{
  v32[7] = *MEMORY[0x1E69E9840];
  v31[0] = @"allowsCameraToggle";
  if ([(AMSUIWebCameraReaderPageModel *)self allowsCameraToggle])
  {
    v3 = @"true";
  }

  else
  {
    v3 = @"false";
  }

  v32[0] = v3;
  v31[1] = @"allowsTextEntry";
  if ([(AMSUIWebCameraReaderPageModel *)self allowsTextEntry])
  {
    v4 = @"true";
  }

  else
  {
    v4 = @"false";
  }

  v32[1] = v4;
  v31[2] = @"disableReappearPlaceholder";
  if ([(AMSUIWebCameraReaderPageModel *)self disableReappearPlaceholder])
  {
    v5 = @"true";
  }

  else
  {
    v5 = @"false";
  }

  v32[2] = v5;
  v31[3] = @"fullScreen";
  if ([(AMSUIWebCameraReaderPageModel *)self isFullScreen])
  {
    v6 = @"true";
  }

  else
  {
    v6 = @"false";
  }

  v32[3] = v6;
  v31[4] = @"prefersSessionTeardown";
  if ([(AMSUIWebCameraReaderPageModel *)self prefersSessionTeardown])
  {
    v7 = @"true";
  }

  else
  {
    v7 = @"false";
  }

  v32[4] = v7;
  v31[5] = @"pageType";
  v8 = [MEMORY[0x1E696AD98] numberWithInteger:{-[AMSUIWebCameraReaderPageModel pageType](self, "pageType")}];
  v32[5] = v8;
  v31[6] = @"windowSize";
  [(AMSUIWebCameraReaderPageModel *)self windowSize];
  v9 = NSStringFromCGSize(v34);
  v32[6] = v9;
  v10 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v32 forKeys:v31 count:7];
  v11 = [v10 mutableCopy];

  bottomLinkLabel = [(AMSUIWebCameraReaderPageModel *)self bottomLinkLabel];

  if (bottomLinkLabel)
  {
    bottomLinkLabel2 = [(AMSUIWebCameraReaderPageModel *)self bottomLinkLabel];
    [v11 setObject:bottomLinkLabel2 forKey:@"bottomLinkLabel"];
  }

  bottomLinkAction = [(AMSUIWebCameraReaderPageModel *)self bottomLinkAction];

  if (bottomLinkAction)
  {
    bottomLinkAction2 = [(AMSUIWebCameraReaderPageModel *)self bottomLinkAction];
    [v11 setObject:bottomLinkAction2 forKey:@"bottomLinkAction"];
  }

  backgroundColor = [(AMSUIWebCameraReaderPageModel *)self backgroundColor];

  if (backgroundColor)
  {
    backgroundColor2 = [(AMSUIWebCameraReaderPageModel *)self backgroundColor];
    [v11 setObject:backgroundColor2 forKey:@"backgroundColor"];
  }

  impressionEvent = [(AMSUIWebCameraReaderPageModel *)self impressionEvent];

  if (impressionEvent)
  {
    impressionEvent2 = [(AMSUIWebCameraReaderPageModel *)self impressionEvent];
    [v11 setObject:impressionEvent2 forKey:@"impressionEvent"];
  }

  navigationBar = [(AMSUIWebCameraReaderPageModel *)self navigationBar];

  if (navigationBar)
  {
    navigationBar2 = [(AMSUIWebCameraReaderPageModel *)self navigationBar];
    [v11 setObject:navigationBar2 forKey:@"navigationBar"];
  }

  primaryLabel = [(AMSUIWebCameraReaderPageModel *)self primaryLabel];

  if (primaryLabel)
  {
    primaryLabel2 = [(AMSUIWebCameraReaderPageModel *)self primaryLabel];
    [v11 setObject:primaryLabel2 forKey:@"primaryLabel"];
  }

  secondaryLabel = [(AMSUIWebCameraReaderPageModel *)self secondaryLabel];

  if (secondaryLabel)
  {
    secondaryLabel2 = [(AMSUIWebCameraReaderPageModel *)self secondaryLabel];
    [v11 setObject:secondaryLabel2 forKey:@"secondaryLabel"];
  }

  textFieldPlaceholder = [(AMSUIWebCameraReaderPageModel *)self textFieldPlaceholder];

  if (textFieldPlaceholder)
  {
    textFieldPlaceholder2 = [(AMSUIWebCameraReaderPageModel *)self textFieldPlaceholder];
    [v11 setObject:textFieldPlaceholder2 forKey:@"textFieldPlaceholder"];
  }

  v28 = [v11 description];

  v29 = *MEMORY[0x1E69E9840];

  return v28;
}

- (CGSize)windowSize
{
  width = self->_windowSize.width;
  height = self->_windowSize.height;
  result.height = height;
  result.width = width;
  return result;
}

- (UIViewController)presentedViewController
{
  WeakRetained = objc_loadWeakRetained(&self->_presentedViewController);

  return WeakRetained;
}

@end