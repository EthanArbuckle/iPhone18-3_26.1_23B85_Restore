@interface AMSUIWebCameraReaderPageModel
- (AMSUIWebCameraReaderPageModel)initWithJSObject:(id)a3 context:(id)a4;
- (CGSize)windowSize;
- (NSString)description;
- (UIViewController)presentedViewController;
- (id)createViewControllerForContainer:(id)a3;
@end

@implementation AMSUIWebCameraReaderPageModel

- (AMSUIWebCameraReaderPageModel)initWithJSObject:(id)a3 context:(id)a4
{
  v6 = a3;
  v7 = a4;
  v45.receiver = self;
  v45.super_class = AMSUIWebCameraReaderPageModel;
  v8 = [(AMSUIWebCameraReaderPageModel *)&v45 init];
  v9 = v8;
  if (v8)
  {
    objc_storeStrong(&v8->_context, a4);
    v10 = [AMSUIWebModel backgroundColorFromPageModel:v6];
    backgroundColor = v9->_backgroundColor;
    v9->_backgroundColor = v10;

    v12 = [AMSUIWebModel impressionEventFromPageModel:v6 context:v7];
    impressionEvent = v9->_impressionEvent;
    v9->_impressionEvent = v12;

    v14 = [AMSUIWebModel navigationBarFromPageModel:v6 context:v7];
    navigationBar = v9->_navigationBar;
    v9->_navigationBar = v14;

    [AMSUIWebModel windowSizeFromPageModel:v6];
    v9->_windowSize.width = v16;
    v9->_windowSize.height = v17;
    v18 = [v6 objectForKeyedSubscript:@"pageType"];
    if (objc_opt_respondsToSelector())
    {
      v19 = [v18 integerValue];
    }

    else
    {
      v19 = 0;
    }

    v9->_pageType = v19;
    v20 = [v6 objectForKeyedSubscript:@"bottomLinkLabel"];
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

    v23 = [v6 objectForKeyedSubscript:@"bottomLinkAction"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v24 = v23;
    }

    else
    {
      v24 = 0;
    }

    v25 = [AMSUIWebActionMapper actionFromJSObject:v24 context:v7];
    bottomLinkAction = v9->_bottomLinkAction;
    v9->_bottomLinkAction = v25;

    v27 = [v6 objectForKeyedSubscript:@"primaryLabel"];
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

    v30 = [v6 objectForKeyedSubscript:@"secondaryLabel"];
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

    v33 = [v6 objectForKeyedSubscript:@"fullScreen"];
    if (objc_opt_respondsToSelector())
    {
      v34 = [v6 objectForKeyedSubscript:@"fullScreen"];
      v9->_fullScreen = [v34 BOOLValue];
    }

    else
    {
      v9->_fullScreen = 0;
    }

    v35 = [v6 objectForKeyedSubscript:@"allowsCameraToggle"];
    if (objc_opt_respondsToSelector())
    {
      v36 = [v6 objectForKeyedSubscript:@"allowsCameraToggle"];
      v9->_allowsCameraToggle = [v36 BOOLValue];
    }

    else
    {
      v9->_allowsCameraToggle = 0;
    }

    v37 = [v6 objectForKeyedSubscript:@"allowsTextEntry"];
    if (objc_opt_respondsToSelector())
    {
      v38 = [v6 objectForKeyedSubscript:@"allowsTextEntry"];
      v9->_allowsTextEntry = [v38 BOOLValue];
    }

    else
    {
      v9->_allowsTextEntry = 0;
    }

    v39 = [v6 objectForKeyedSubscript:@"prefersSessionTeardown"];
    if (objc_opt_respondsToSelector())
    {
      v40 = [v6 objectForKeyedSubscript:@"prefersSessionTeardown"];
      v9->_prefersSessionTeardown = [v40 BOOLValue];
    }

    else
    {
      v9->_prefersSessionTeardown = 0;
    }

    v41 = [v6 objectForKeyedSubscript:@"textFieldPlaceholder"];
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

- (id)createViewControllerForContainer:(id)a3
{
  v4 = [AMSUIWebCameraReaderViewController alloc];
  v5 = [(AMSUIWebCameraReaderPageModel *)self context];
  v6 = [(AMSUIWebCameraReaderViewController *)v4 initWithContext:v5];

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

  v12 = [(AMSUIWebCameraReaderPageModel *)self bottomLinkLabel];

  if (v12)
  {
    v13 = [(AMSUIWebCameraReaderPageModel *)self bottomLinkLabel];
    [v11 setObject:v13 forKey:@"bottomLinkLabel"];
  }

  v14 = [(AMSUIWebCameraReaderPageModel *)self bottomLinkAction];

  if (v14)
  {
    v15 = [(AMSUIWebCameraReaderPageModel *)self bottomLinkAction];
    [v11 setObject:v15 forKey:@"bottomLinkAction"];
  }

  v16 = [(AMSUIWebCameraReaderPageModel *)self backgroundColor];

  if (v16)
  {
    v17 = [(AMSUIWebCameraReaderPageModel *)self backgroundColor];
    [v11 setObject:v17 forKey:@"backgroundColor"];
  }

  v18 = [(AMSUIWebCameraReaderPageModel *)self impressionEvent];

  if (v18)
  {
    v19 = [(AMSUIWebCameraReaderPageModel *)self impressionEvent];
    [v11 setObject:v19 forKey:@"impressionEvent"];
  }

  v20 = [(AMSUIWebCameraReaderPageModel *)self navigationBar];

  if (v20)
  {
    v21 = [(AMSUIWebCameraReaderPageModel *)self navigationBar];
    [v11 setObject:v21 forKey:@"navigationBar"];
  }

  v22 = [(AMSUIWebCameraReaderPageModel *)self primaryLabel];

  if (v22)
  {
    v23 = [(AMSUIWebCameraReaderPageModel *)self primaryLabel];
    [v11 setObject:v23 forKey:@"primaryLabel"];
  }

  v24 = [(AMSUIWebCameraReaderPageModel *)self secondaryLabel];

  if (v24)
  {
    v25 = [(AMSUIWebCameraReaderPageModel *)self secondaryLabel];
    [v11 setObject:v25 forKey:@"secondaryLabel"];
  }

  v26 = [(AMSUIWebCameraReaderPageModel *)self textFieldPlaceholder];

  if (v26)
  {
    v27 = [(AMSUIWebCameraReaderPageModel *)self textFieldPlaceholder];
    [v11 setObject:v27 forKey:@"textFieldPlaceholder"];
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