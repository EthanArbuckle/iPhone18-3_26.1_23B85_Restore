@interface AMSUIWebCameraReaderViewController
- (AMSUIWebCameraReaderViewController)initWithContext:(id)context;
- (CGRect)keyboardRect;
- (id)_cameraReader;
- (id)_makeTextFieldWithPlaceholderColor:(id)color;
- (id)_outputForCreditCardReaderObjects:(id)objects;
- (id)_outputForGiftCardReaderCode:(id)code;
- (id)_outputForGiftCardReaderObjects:(id)objects;
- (id)_outputForIDCardReaderObjects:(id)objects;
- (void)_applyAppearance;
- (void)_commitNavigationBarModel;
- (void)_handleCameraOutput:(id)output error:(id)error;
- (void)_layoutFullScreen;
- (void)_layoutHalfScreen;
- (void)_layoutPage;
- (void)_layoutTextField;
- (void)_redeemAction;
- (void)_setCameraToggleButton;
- (void)_setCancelButton;
- (void)_setChild:(id)child;
- (void)_setRedeemButton;
- (void)_setupCameraReader;
- (void)_setupCameraToggle;
- (void)_setupInfoView;
- (void)_setupNavigationModel;
- (void)_setupPage;
- (void)_setupPageForCreditCard;
- (void)_setupPageForGiftCard;
- (void)_setupPageForIDCard;
- (void)_setupTextEntry;
- (void)cameraReader:(id)reader didRecognizeObjects:(id)objects;
- (void)cameraReaderDidCancel:(id)cancel;
- (void)cameraReaderDidEnd:(id)end;
- (void)codeRedeemerController:(id)controller didEndWithInfo:(id)info;
- (void)codeRedeemerControllerDidCancel:(id)cancel;
- (void)dealloc;
- (void)keyboardDidHide:(id)hide;
- (void)keyboardWillHide:(id)hide;
- (void)keyboardWillShow:(id)show;
- (void)loadView;
- (void)textFieldDidBeginEditing:(id)editing;
- (void)textFieldDidEndEditing:(id)editing;
- (void)viewWillLayoutSubviews;
- (void)willPresentPageModel:(id)model appearance:(id)appearance;
@end

@implementation AMSUIWebCameraReaderViewController

- (AMSUIWebCameraReaderViewController)initWithContext:(id)context
{
  contextCopy = context;
  v11.receiver = self;
  v11.super_class = AMSUIWebCameraReaderViewController;
  v6 = [(AMSUICommonViewController *)&v11 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_context, context);
    v8 = objc_alloc_init(AMSUIWebNavigationBarModel);
    navigationBarModel = v7->_navigationBarModel;
    v7->_navigationBarModel = v8;
  }

  return v7;
}

- (void)dealloc
{
  defaultCenter = [MEMORY[0x1E696AD88] defaultCenter];
  [defaultCenter removeObserver:self name:*MEMORY[0x1E69DE080] object:0];
  [defaultCenter removeObserver:self name:*MEMORY[0x1E69DE078] object:0];
  [defaultCenter removeObserver:self name:*MEMORY[0x1E69DDF70] object:0];

  v4.receiver = self;
  v4.super_class = AMSUIWebCameraReaderViewController;
  [(AMSUIWebCameraReaderViewController *)&v4 dealloc];
}

- (void)loadView
{
  v3.receiver = self;
  v3.super_class = AMSUIWebCameraReaderViewController;
  [(AMSUICommonViewController *)&v3 loadView];
  [(AMSUIWebCameraReaderViewController *)self _applyAppearance];
  [(AMSUIWebCameraReaderViewController *)self _setupPage];
}

- (void)viewWillLayoutSubviews
{
  v3.receiver = self;
  v3.super_class = AMSUIWebCameraReaderViewController;
  [(AMSUIWebCameraReaderViewController *)&v3 viewWillLayoutSubviews];
  [(AMSUIWebCameraReaderViewController *)self _layoutPage];
}

void __52__AMSUIWebCameraReaderViewController_viewDidAppear___block_invoke(uint64_t a1, char a2)
{
  v18 = *MEMORY[0x1E69E9840];
  if (a2)
  {
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __52__AMSUIWebCameraReaderViewController_viewDidAppear___block_invoke_35;
    block[3] = &unk_1E7F242D0;
    block[4] = *(a1 + 32);
    dispatch_async(MEMORY[0x1E69E96A0], block);
  }

  else
  {
    v3 = [MEMORY[0x1E698C968] sharedWebUIConfig];
    if (!v3)
    {
      v3 = [MEMORY[0x1E698C968] sharedConfig];
    }

    v4 = [v3 OSLogObject];
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      v5 = *(a1 + 32);
      v6 = objc_opt_class();
      v7 = [*(a1 + 32) context];
      v8 = [v7 logKey];
      *buf = 138543618;
      v15 = v6;
      v16 = 2114;
      v17 = v8;
      _os_log_impl(&dword_1BB036000, v4, OS_LOG_TYPE_ERROR, "%{public}@: [%{public}@] denied camera access", buf, 0x16u);
    }

    v9 = [*(a1 + 32) context];
    v10 = [v9 dataProvider];
    v11 = [v10 postEvent:@"VideoAuthorizationDenied" options:MEMORY[0x1E695E0F8]];
  }

  v12 = *MEMORY[0x1E69E9840];
}

void __52__AMSUIWebCameraReaderViewController_viewDidAppear___block_invoke_35(uint64_t a1)
{
  v14 = *MEMORY[0x1E69E9840];
  v2 = [MEMORY[0x1E698C968] sharedWebUIConfig];
  if (!v2)
  {
    v2 = [MEMORY[0x1E698C968] sharedConfig];
  }

  v3 = [v2 OSLogObject];
  if (os_log_type_enabled(v3, OS_LOG_TYPE_INFO))
  {
    v4 = *(a1 + 32);
    v5 = objc_opt_class();
    v6 = [*(a1 + 32) context];
    v7 = [v6 logKey];
    v10 = 138543618;
    v11 = v5;
    v12 = 2114;
    v13 = v7;
    _os_log_impl(&dword_1BB036000, v3, OS_LOG_TYPE_INFO, "%{public}@: [%{public}@] starting camera session", &v10, 0x16u);
  }

  v8 = [*(a1 + 32) _cameraReader];
  [v8 start];

  v9 = *MEMORY[0x1E69E9840];
}

- (void)_setChild:(id)child
{
  childCopy = child;
  [(AMSUIWebCameraReaderViewController *)self setChildController:childCopy];
  [(UIViewController *)self ams_setChildViewController:childCopy];
}

- (void)_setupPage
{
  [(AMSUIWebCameraReaderViewController *)self _setupCameraReader];
  [(AMSUIWebCameraReaderViewController *)self _setupInfoView];
  [(AMSUIWebCameraReaderViewController *)self _setupCameraToggle];
  [(AMSUIWebCameraReaderViewController *)self _setupTextEntry];
  model = [(AMSUIWebCameraReaderViewController *)self model];
  if ([model isFullScreen])
  {
    model2 = [(AMSUIWebCameraReaderViewController *)self model];
    navigationBar = [model2 navigationBar];
    style = [navigationBar style];

    if (style != 9)
    {
      [(AMSUIWebCameraReaderViewController *)self _setupNavigationModel];

      [(AMSUIWebCameraReaderViewController *)self _commitNavigationBarModel];
    }
  }

  else
  {
  }
}

- (void)_setupCameraReader
{
  model = [(AMSUIWebCameraReaderViewController *)self model];
  pageType = [model pageType];

  switch(pageType)
  {
    case 2:

      [(AMSUIWebCameraReaderViewController *)self _setupPageForIDCard];
      break;
    case 1:

      [(AMSUIWebCameraReaderViewController *)self _setupPageForGiftCard];
      break;
    case 0:

      [(AMSUIWebCameraReaderViewController *)self _setupPageForCreditCard];
      break;
  }
}

- (void)_setupInfoView
{
  model = [(AMSUIWebCameraReaderViewController *)self model];
  isFullScreen = [model isFullScreen];

  if ((isFullScreen & 1) == 0)
  {
    v5 = [AMSUIWebCameraReaderInfoView alloc];
    v6 = [(AMSUIWebCameraReaderInfoView *)v5 initWithFrame:*MEMORY[0x1E695F058], *(MEMORY[0x1E695F058] + 8), *(MEMORY[0x1E695F058] + 16), *(MEMORY[0x1E695F058] + 24)];
    [(AMSUIWebCameraReaderViewController *)self setInfoView:v6];

    model2 = [(AMSUIWebCameraReaderViewController *)self model];
    primaryLabel = [model2 primaryLabel];
    infoView = [(AMSUIWebCameraReaderViewController *)self infoView];
    primaryLabel2 = [infoView primaryLabel];
    [primaryLabel2 setText:primaryLabel];

    model3 = [(AMSUIWebCameraReaderViewController *)self model];
    secondaryLabel = [model3 secondaryLabel];
    infoView2 = [(AMSUIWebCameraReaderViewController *)self infoView];
    secondaryLabel2 = [infoView2 secondaryLabel];
    [secondaryLabel2 setText:secondaryLabel];

    infoView3 = [(AMSUIWebCameraReaderViewController *)self infoView];
    bottomLink = [infoView3 bottomLink];
    model4 = [(AMSUIWebCameraReaderViewController *)self model];
    bottomLinkLabel = [model4 bottomLinkLabel];
    v19 = bottomLinkLabel;
    if (bottomLinkLabel)
    {
      v20 = bottomLinkLabel;
    }

    else
    {
      v20 = &stru_1F3921360;
    }

    [bottomLink setTitle:v20 forState:0];

    model5 = [(AMSUIWebCameraReaderViewController *)self model];
    bottomLinkAction = [model5 bottomLinkAction];
    infoView4 = [(AMSUIWebCameraReaderViewController *)self infoView];
    [infoView4 setBottomLinkAction:bottomLinkAction];

    view = [(AMSUICommonViewController *)self view];
    [view addSubview:self->_infoView];
  }
}

- (void)_setupTextEntry
{
  model = [(AMSUIWebCameraReaderViewController *)self model];
  if ([model allowsTextEntry])
  {
    model2 = [(AMSUIWebCameraReaderViewController *)self model];
    isFullScreen = [model2 isFullScreen];

    if (!isFullScreen)
    {
      return;
    }

    model = [MEMORY[0x1E69DC730] effectWithStyle:10];
    v5 = [objc_alloc(MEMORY[0x1E69DD298]) initWithEffect:model];
    [(AMSUIWebCameraReaderViewController *)self setTextFieldSafeAreaBackdrop:v5];
    view = [(AMSUICommonViewController *)self view];
    textFieldSafeAreaBackdrop = [(AMSUIWebCameraReaderViewController *)self textFieldSafeAreaBackdrop];
    [view addSubview:textFieldSafeAreaBackdrop];

    v8 = objc_alloc_init(MEMORY[0x1E69DD060]);
    [v8 addTarget:self action:sel__overlayTapGestureAction_];
    v9 = objc_alloc_init(MEMORY[0x1E69DD250]);
    [(AMSUIWebCameraReaderViewController *)self setOverlay:v9];

    overlay = [(AMSUIWebCameraReaderViewController *)self overlay];
    v11 = [MEMORY[0x1E69DC888] colorWithWhite:0.0 alpha:1.0];
    [overlay setBackgroundColor:v11];

    overlay2 = [(AMSUIWebCameraReaderViewController *)self overlay];
    [overlay2 setAlpha:0.0];

    overlay3 = [(AMSUIWebCameraReaderViewController *)self overlay];
    [overlay3 addGestureRecognizer:v8];

    view2 = [(AMSUICommonViewController *)self view];
    tintColor = [view2 tintColor];
    v16 = [(AMSUIWebCameraReaderViewController *)self _makeTextFieldWithPlaceholderColor:tintColor];

    [v16 setClearsPlaceholderOnBeginEditing:0];
    [v16 setDelegate:self];
    model3 = [(AMSUIWebCameraReaderViewController *)self model];
    textFieldPlaceholder = [model3 textFieldPlaceholder];
    [v16 setPlaceholder:textFieldPlaceholder];

    [(AMSUIWebCameraReaderViewController *)self setTextField:v16];
    view3 = [(AMSUICommonViewController *)self view];
    [view3 addSubview:v16];

    defaultCenter = [MEMORY[0x1E696AD88] defaultCenter];
    [defaultCenter addObserver:self selector:sel_keyboardWillShow_ name:*MEMORY[0x1E69DE080] object:0];
    [defaultCenter addObserver:self selector:sel_keyboardWillHide_ name:*MEMORY[0x1E69DE078] object:0];
    [defaultCenter addObserver:self selector:sel_keyboardDidHide_ name:*MEMORY[0x1E69DDF70] object:0];
  }
}

- (id)_makeTextFieldWithPlaceholderColor:(id)color
{
  v20[2] = *MEMORY[0x1E69E9840];
  colorCopy = color;
  v5 = [MEMORY[0x1E69DB878] systemFontOfSize:16.0];
  v6 = *MEMORY[0x1E69DB648];
  v20[0] = v5;
  v7 = *MEMORY[0x1E69DB650];
  v19[0] = v6;
  v19[1] = v7;
  v8 = colorCopy;
  if (!colorCopy)
  {
    v8 = [MEMORY[0x1E69DC888] colorWithWhite:0.7 alpha:1.0];
  }

  v20[1] = v8;
  v9 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v20 forKeys:v19 count:2];
  if (!colorCopy)
  {
  }

  v10 = objc_alloc(MEMORY[0x1E696AAB0]);
  model = [(AMSUIWebCameraReaderViewController *)self model];
  textFieldPlaceholder = [model textFieldPlaceholder];
  v13 = textFieldPlaceholder;
  if (textFieldPlaceholder)
  {
    v14 = textFieldPlaceholder;
  }

  else
  {
    v14 = &stru_1F3921360;
  }

  v15 = [v10 initWithString:v14 attributes:v9];

  v16 = [[AMSUIWebCameraTextField alloc] initWithFrame:0.0, 0.0, 1.0, 44.0];
  [(AMSUIWebCameraTextField *)v16 setAutocorrectionType:1];
  [(AMSUIWebCameraTextField *)v16 setAutocapitalizationType:3];
  [(AMSUIWebCameraTextField *)v16 setFont:v5];
  [(AMSUIWebCameraTextField *)v16 setAttributedPlaceholder:v15];

  v17 = *MEMORY[0x1E69E9840];

  return v16;
}

- (void)_layoutPage
{
  model = [(AMSUIWebCameraReaderViewController *)self model];
  isFullScreen = [model isFullScreen];

  if (isFullScreen)
  {
    [(AMSUIWebCameraReaderViewController *)self _layoutFullScreen];
  }

  else
  {
    [(AMSUIWebCameraReaderViewController *)self _layoutHalfScreen];
  }

  [(AMSUIWebCameraReaderViewController *)self _layoutTextField];
}

- (void)_layoutHalfScreen
{
  view = [(AMSUICommonViewController *)self view];
  [view bounds];
  v5 = v4;
  v7 = v6;
  v9 = v8;
  v11 = v10;

  v12 = v11 * 0.66;
  childController = [(AMSUIWebCameraReaderViewController *)self childController];
  view2 = [childController view];
  [view2 setFrame:{v5, v7, v9, v12}];

  view3 = [(AMSUICommonViewController *)self view];
  [view3 bounds];
  v17 = v16;
  v19 = v18;
  v21 = v20;

  infoView = [(AMSUIWebCameraReaderViewController *)self infoView];
  [infoView setFrame:{v17, v12, v19, v21 - v12}];
}

- (void)_layoutFullScreen
{
  view = [(AMSUICommonViewController *)self view];
  [view bounds];
  v5 = v4;
  v7 = v6;
  v9 = v8;
  v11 = v10;
  childController = [(AMSUIWebCameraReaderViewController *)self childController];
  view2 = [childController view];
  [view2 setFrame:{v5, v7, v9, v11}];

  infoView = [(AMSUIWebCameraReaderViewController *)self infoView];
  [infoView setHidden:1];
}

- (void)_layoutTextField
{
  textField = [(AMSUIWebCameraReaderViewController *)self textField];

  if (!textField)
  {
    return;
  }

  view = [(AMSUICommonViewController *)self view];
  [view safeAreaInsets];
  v6 = v5;

  textField2 = [(AMSUIWebCameraReaderViewController *)self textField];
  if (![textField2 isFirstResponder])
  {

    goto LABEL_7;
  }

  [(AMSUIWebCameraReaderViewController *)self keyboardRect];
  v8 = CGRectEqualToRect(v24, *MEMORY[0x1E695F058]);

  if (v8)
  {
LABEL_7:
    textField3 = [(AMSUIWebCameraReaderViewController *)self textField];
    view2 = [(AMSUICommonViewController *)self view];
    [view2 bounds];
    v17 = v16 + -44.0 - v6;
    view3 = [(AMSUICommonViewController *)self view];
    [view3 bounds];
    [textField3 setFrame:{0.0, v17}];

    textFieldSafeAreaBackdrop = [(AMSUIWebCameraReaderViewController *)self textFieldSafeAreaBackdrop];
    view4 = [(AMSUICommonViewController *)self view];
    [view4 bounds];
    v20 = v19 + -44.0 - v6;
    view5 = [(AMSUICommonViewController *)self view];
    [view5 bounds];
    [textFieldSafeAreaBackdrop setFrame:{0.0, v20}];

    goto LABEL_8;
  }

  textField4 = [(AMSUIWebCameraReaderViewController *)self textField];
  v10 = CGRectGetMinY(self->_keyboardRect) + -44.0;
  view6 = [(AMSUICommonViewController *)self view];
  [view6 bounds];
  [textField4 setFrame:{0.0, v10}];

  textFieldSafeAreaBackdrop = [(AMSUIWebCameraReaderViewController *)self textFieldSafeAreaBackdrop];
  v12 = CGRectGetMinY(self->_keyboardRect) + -44.0;
  view4 = [(AMSUICommonViewController *)self view];
  [view4 bounds];
  [textFieldSafeAreaBackdrop setFrame:{0.0, v12}];
LABEL_8:
}

- (void)_commitNavigationBarModel
{
  navigationBarModel = [(AMSUIWebCameraReaderViewController *)self navigationBarModel];
  [navigationBarModel setStyle:5];

  context = [(AMSUIWebCameraReaderViewController *)self context];
  flowController = [context flowController];
  currentContainer = [flowController currentContainer];

  navigationBarModel2 = [(AMSUIWebCameraReaderViewController *)self navigationBarModel];
  [currentContainer applyNavigationModel:navigationBarModel2];
}

- (void)_setupNavigationModel
{
  model = [(AMSUIWebCameraReaderViewController *)self model];
  primaryLabel = [model primaryLabel];
  navigationBarModel = [(AMSUIWebCameraReaderViewController *)self navigationBarModel];
  [navigationBarModel setTitle:primaryLabel];
}

- (void)_setupCameraToggle
{
  model = [(AMSUIWebCameraReaderViewController *)self model];
  allowsCameraToggle = [model allowsCameraToggle];

  if (allowsCameraToggle)
  {
    [(AMSUIWebCameraReaderViewController *)self _setCameraToggleButton];
    [(AMSUIWebCameraReaderViewController *)self _setCancelButton];

    [(AMSUIWebCameraReaderViewController *)self _commitNavigationBarModel];
  }
}

- (void)_setCancelButton
{
  v3 = [AMSUIWebFlowAction alloc];
  context = [(AMSUIWebCameraReaderViewController *)self context];
  v10 = [(AMSUIWebFlowAction *)v3 initWithContext:context];

  [(AMSUIWebFlowAction *)v10 setPresentationType:4];
  v5 = objc_alloc_init(AMSUIWebButtonModel);
  if (!_os_feature_enabled_impl() || (_os_feature_enabled_impl() & 1) == 0)
  {
    v6 = [MEMORY[0x1E696AAE8] bundleWithIdentifier:@"com.apple.AppleMediaServicesUI"];
    v7 = AMSUILocalizedStringFromBundle(@"CANCEL", 0, v6);
    [(AMSUIWebButtonModel *)v5 setTitle:v7];
  }

  [(AMSUIWebButtonModel *)v5 setAction:v10];
  [(AMSUIWebButtonModel *)v5 setEnabled:1];
  [(AMSUIWebButtonModel *)v5 setStyle:3];
  v8 = objc_alloc_init(AMSUIWebBarButtonItemModel);
  [(AMSUIWebBarButtonItemModel *)v8 setButtonModel:v5];
  navigationBarModel = [(AMSUIWebCameraReaderViewController *)self navigationBarModel];
  [navigationBarModel setLeftBarButtonItemModel:v8];
}

- (void)_setRedeemButton
{
  v3 = objc_alloc_init(AMSUIWebButtonModel);
  v4 = [MEMORY[0x1E696AAE8] bundleWithIdentifier:@"com.apple.AppleMediaServicesUI"];
  v5 = AMSUILocalizedStringFromBundle(@"REDEEM", 0, v4);
  [(AMSUIWebButtonModel *)v3 setTitle:v5];

  [(AMSUIWebButtonModel *)v3 setEnabled:1];
  [(AMSUIWebButtonModel *)v3 setStyle:0];
  objc_initWeak(&location, self);
  v8 = MEMORY[0x1E69E9820];
  v9 = 3221225472;
  v10 = __54__AMSUIWebCameraReaderViewController__setRedeemButton__block_invoke;
  v11 = &unk_1E7F24968;
  objc_copyWeak(&v12, &location);
  [(AMSUIWebButtonModel *)v3 setActionBlock:&v8];
  v6 = objc_alloc_init(AMSUIWebBarButtonItemModel);
  [(AMSUIWebBarButtonItemModel *)v6 setButtonModel:v3, v8, v9, v10, v11];
  navigationBarModel = [(AMSUIWebCameraReaderViewController *)self navigationBarModel];
  [navigationBarModel setRightBarButtonItemModel:v6];

  objc_destroyWeak(&v12);
  objc_destroyWeak(&location);
}

void __54__AMSUIWebCameraReaderViewController__setRedeemButton__block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained _redeemAction];
}

- (void)_setCameraToggleButton
{
  v3 = objc_alloc_init(AMSUIWebButtonModel);
  [(AMSUIWebButtonModel *)v3 setSystemImageName:@"arrow.triangle.2.circlepath.camera"];
  [(AMSUIWebButtonModel *)v3 setEnabled:1];
  [(AMSUIWebButtonModel *)v3 setStyle:0];
  objc_initWeak(&location, self);
  v6 = MEMORY[0x1E69E9820];
  v7 = 3221225472;
  v8 = __60__AMSUIWebCameraReaderViewController__setCameraToggleButton__block_invoke;
  v9 = &unk_1E7F24968;
  objc_copyWeak(&v10, &location);
  [(AMSUIWebButtonModel *)v3 setActionBlock:&v6];
  v4 = objc_alloc_init(AMSUIWebBarButtonItemModel);
  [(AMSUIWebBarButtonItemModel *)v4 setButtonModel:v3, v6, v7, v8, v9];
  navigationBarModel = [(AMSUIWebCameraReaderViewController *)self navigationBarModel];
  [navigationBarModel setRightBarButtonItemModel:v4];

  objc_destroyWeak(&v10);
  objc_destroyWeak(&location);
}

void __60__AMSUIWebCameraReaderViewController__setCameraToggleButton__block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v1 = [WeakRetained _cameraReader];
  [v1 toggleCamera];
}

- (id)_outputForCreditCardReaderObjects:(id)objects
{
  v34 = *MEMORY[0x1E69E9840];
  objectsCopy = objects;
  v4 = objc_alloc_init(MEMORY[0x1E695DF90]);
  v29 = 0u;
  v30 = 0u;
  v31 = 0u;
  v32 = 0u;
  obj = objectsCopy;
  v5 = [obj countByEnumeratingWithState:&v29 objects:v33 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v30;
    v8 = *MEMORY[0x1E6999000];
    v9 = *MEMORY[0x1E6998FF0];
    v10 = *MEMORY[0x1E6998FF8];
    do
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v30 != v7)
        {
          objc_enumerationMutation(obj);
        }

        v12 = *(*(&v29 + 1) + 8 * i);
        type = [v12 type];
        v14 = [type isEqual:v8];

        if (v14)
        {
          stringValue = [v12 stringValue];
          [v4 setObject:stringValue forKeyedSubscript:@"cardNumber"];
        }

        type2 = [v12 type];
        v17 = [type2 isEqual:v9];

        if (v17)
        {
          stringValue2 = [v12 stringValue];
          [v4 setObject:stringValue2 forKeyedSubscript:@"cardholderName"];
        }

        type3 = [v12 type];
        v20 = [type3 isEqual:v10];

        if (v20)
        {
          v21 = v12;
          dayValue = [v21 dayValue];
          [v4 setObject:dayValue forKeyedSubscript:@"cardExpirationDay"];

          monthValue = [v21 monthValue];
          [v4 setObject:monthValue forKeyedSubscript:@"cardExpirationMonth"];

          yearValue = [v21 yearValue];
          [v4 setObject:yearValue forKeyedSubscript:@"cardExpirationYear"];

          stringValue3 = [v21 stringValue];

          [v4 setObject:stringValue3 forKeyedSubscript:@"cardExpirationString"];
        }
      }

      v6 = [obj countByEnumeratingWithState:&v29 objects:v33 count:16];
    }

    while (v6);
  }

  v26 = *MEMORY[0x1E69E9840];

  return v4;
}

- (void)_setupPageForCreditCard
{
  v7[3] = *MEMORY[0x1E69E9840];
  if ([objc_opt_class() cameraSupported])
  {
    v3 = objc_alloc_init(MEMORY[0x1E6999018]);
    [v3 setHidePlacementText:1];
    [v3 setDelegate:self];
    v4 = *MEMORY[0x1E6998FF0];
    v7[0] = *MEMORY[0x1E6999000];
    v7[1] = v4;
    v7[2] = *MEMORY[0x1E6998FF8];
    v5 = [MEMORY[0x1E695DEC8] arrayWithObjects:v7 count:3];
    [v3 setOutputObjectTypes:v5];

    [(AMSUIWebCameraReaderViewController *)self _setChild:v3];
  }

  v6 = *MEMORY[0x1E69E9840];
}

- (void)_setupPageForGiftCard
{
  if ([MEMORY[0x1E6999038] isCRCodeRedeemerAvailable])
  {
    v3 = objc_alloc_init(MEMORY[0x1E6999038]);
    [v3 setDelegate:self];
    [(AMSUIWebCameraReaderViewController *)self _setChild:v3];
  }
}

- (id)_outputForGiftCardReaderObjects:(id)objects
{
  v4 = [objects valueForKey:*MEMORY[0x1E6998FE0]];
  if (v4)
  {
    v5 = [(AMSUIWebCameraReaderViewController *)self _outputForGiftCardReaderCode:v4];
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (id)_outputForGiftCardReaderCode:(id)code
{
  codeCopy = code;
  v4 = objc_alloc_init(MEMORY[0x1E695DF90]);
  v5 = v4;
  if (codeCopy)
  {
    [v4 setObject:codeCopy forKeyedSubscript:@"giftCardCode"];
  }

  if ([v5 count])
  {
    v6 = v5;
  }

  else
  {
    v6 = 0;
  }

  v7 = v6;

  return v6;
}

- (void)_setupPageForIDCard
{
  v7[2] = *MEMORY[0x1E69E9840];
  if ([objc_opt_class() cameraSupported])
  {
    v3 = objc_alloc_init(MEMORY[0x1E6999018]);
    [v3 setHidePlacementText:1];
    [v3 setDelegate:self];
    v4 = *MEMORY[0x1E6999008];
    v7[0] = *MEMORY[0x1E6999010];
    v7[1] = v4;
    v5 = [MEMORY[0x1E695DEC8] arrayWithObjects:v7 count:2];
    [v3 setOutputObjectTypes:v5];

    [(AMSUIWebCameraReaderViewController *)self _setChild:v3];
  }

  v6 = *MEMORY[0x1E69E9840];
}

- (id)_outputForIDCardReaderObjects:(id)objects
{
  v26 = *MEMORY[0x1E69E9840];
  objectsCopy = objects;
  v4 = objc_alloc_init(MEMORY[0x1E695DF90]);
  v21 = 0u;
  v22 = 0u;
  v23 = 0u;
  v24 = 0u;
  v5 = objectsCopy;
  v6 = [v5 countByEnumeratingWithState:&v21 objects:v25 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v22;
    v9 = *MEMORY[0x1E6999010];
    do
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v22 != v8)
        {
          objc_enumerationMutation(v5);
        }

        v11 = *(*(&v21 + 1) + 8 * i);
        type = [v11 type];
        v13 = [type isEqual:v9];

        if (v13)
        {
          v14 = v11;
          objc_opt_class();
          if (objc_opt_isKindOfClass())
          {
            v15 = v14;
          }

          else
          {
            v15 = 0;
          }

          if (v15)
          {
            imageValue = [v15 imageValue];
            v17 = UIImagePNGRepresentation(imageValue);
            v18 = [v17 base64EncodedStringWithOptions:0];
            [v4 setObject:v18 forKeyedSubscript:@"cardImage"];
            [v4 setObject:@"image/png" forKeyedSubscript:@"mimeType"];
          }
        }
      }

      v7 = [v5 countByEnumeratingWithState:&v21 objects:v25 count:16];
    }

    while (v7);
  }

  v19 = *MEMORY[0x1E69E9840];

  return v4;
}

- (void)_applyAppearance
{
  appearance = [(AMSUIWebCameraReaderViewController *)self appearance];
  backgroundColor = [appearance backgroundColor];
  v4 = backgroundColor;
  if (!backgroundColor)
  {
    v4 = +[AMSUIWebAppearance defaultPlatformBackgroundColor];
  }

  view = [(AMSUICommonViewController *)self view];
  [view ams_setBackgroundColor:v4];

  if (!backgroundColor)
  {
  }

  backgroundColor2 = [appearance backgroundColor];
  v7 = backgroundColor2;
  if (!backgroundColor2)
  {
    v7 = +[AMSUIWebAppearance defaultPlatformBackgroundColor];
  }

  infoView = [(AMSUIWebCameraReaderViewController *)self infoView];
  [infoView ams_setBackgroundColor:v7];

  if (!backgroundColor2)
  {
  }
}

- (id)_cameraReader
{
  childController = [(AMSUIWebCameraReaderViewController *)self childController];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v3 = childController;
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (void)_handleCameraOutput:(id)output error:(id)error
{
  v29 = *MEMORY[0x1E69E9840];
  outputCopy = output;
  errorCopy = error;
  v8 = [outputCopy count];
  if (!errorCopy && !v8)
  {
    errorCopy = AMSError();
  }

  context = [(AMSUIWebCameraReaderViewController *)self context];
  logKey = [context logKey];
  v11 = AMSUIWebSetSubLogKey(logKey, 0);

  mEMORY[0x1E698C968] = [MEMORY[0x1E698C968] sharedWebUIConfig];
  if (!mEMORY[0x1E698C968])
  {
    mEMORY[0x1E698C968] = [MEMORY[0x1E698C968] sharedConfig];
  }

  oSLogObject = [mEMORY[0x1E698C968] OSLogObject];
  if (os_log_type_enabled(oSLogObject, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138543618;
    v26 = objc_opt_class();
    v27 = 2114;
    v28 = v11;
    _os_log_impl(&dword_1BB036000, oSLogObject, OS_LOG_TYPE_DEFAULT, "%{public}@: [%{public}@] Sending event", buf, 0x16u);
  }

  v23[0] = @"output";
  null = outputCopy;
  if (!outputCopy)
  {
    null = [MEMORY[0x1E695DFB0] null];
  }

  v23[1] = @"error";
  v24[0] = null;
  v15 = AMSUIWebJSError(errorCopy);
  null2 = v15;
  if (!v15)
  {
    null2 = [MEMORY[0x1E695DFB0] null];
  }

  v24[1] = null2;
  v17 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v24 forKeys:v23 count:2];
  if (!v15)
  {
  }

  if (!outputCopy)
  {
  }

  v18 = [[AMSUIWebJSRequest alloc] initWithServiceName:@"CameraReaderInfo" logKey:v11];
  [(AMSUIWebJSRequest *)v18 setOptions:v17];
  context2 = [(AMSUIWebCameraReaderViewController *)self context];
  dataProvider = [context2 dataProvider];
  v21 = [dataProvider runJSRequest:v18];

  v22 = *MEMORY[0x1E69E9840];
}

- (void)willPresentPageModel:(id)model appearance:(id)appearance
{
  v22 = *MEMORY[0x1E69E9840];
  modelCopy = model;
  appearanceCopy = appearance;
  v8 = modelCopy;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v9 = v8;
  }

  else
  {
    v9 = 0;
  }

  if (v9)
  {
    objc_storeStrong(&self->_model, v9);
    objc_storeStrong(&self->_appearance, appearance);
  }

  else
  {
    mEMORY[0x1E698C968] = [MEMORY[0x1E698C968] sharedWebUIConfig];
    if (!mEMORY[0x1E698C968])
    {
      mEMORY[0x1E698C968] = [MEMORY[0x1E698C968] sharedConfig];
    }

    oSLogObject = [mEMORY[0x1E698C968] OSLogObject];
    if (os_log_type_enabled(oSLogObject, OS_LOG_TYPE_ERROR))
    {
      v12 = objc_opt_class();
      context = [(AMSUIWebCameraReaderViewController *)self context];
      logKey = [context logKey];
      v16 = 138543874;
      v17 = v12;
      v18 = 2114;
      v19 = logKey;
      v20 = 2114;
      v21 = v8;
      _os_log_impl(&dword_1BB036000, oSLogObject, OS_LOG_TYPE_ERROR, "%{public}@: [%{public}@] Invalid camera page model: %{public}@", &v16, 0x20u);
    }
  }

  v15 = *MEMORY[0x1E69E9840];
}

- (void)cameraReaderDidCancel:(id)cancel
{
  v4 = AMSError();
  [(AMSUIWebCameraReaderViewController *)self _handleCameraOutput:0 error:v4];
}

- (void)cameraReader:(id)reader didRecognizeObjects:(id)objects
{
  objectsCopy = objects;
  model = [(AMSUIWebCameraReaderViewController *)self model];
  pageType = [model pageType];

  if (pageType == 2)
  {
    v7 = [(AMSUIWebCameraReaderViewController *)self _outputForIDCardReaderObjects:objectsCopy];
    goto LABEL_5;
  }

  if (!pageType)
  {
    v7 = [(AMSUIWebCameraReaderViewController *)self _outputForCreditCardReaderObjects:objectsCopy];
LABEL_5:
    v8 = v7;
    goto LABEL_7;
  }

  v8 = 0;
LABEL_7:
  [(AMSUIWebCameraReaderViewController *)self setOutput:v8];
}

- (void)cameraReaderDidEnd:(id)end
{
  output = [(AMSUIWebCameraReaderViewController *)self output];
  [(AMSUIWebCameraReaderViewController *)self _handleCameraOutput:output error:0];
}

- (void)codeRedeemerControllerDidCancel:(id)cancel
{
  v4 = AMSError();
  [(AMSUIWebCameraReaderViewController *)self _handleCameraOutput:0 error:v4];
}

- (void)codeRedeemerController:(id)controller didEndWithInfo:(id)info
{
  v5 = *MEMORY[0x1E6998FE8];
  infoCopy = info;
  v8 = [infoCopy valueForKey:v5];
  v7 = [(AMSUIWebCameraReaderViewController *)self _outputForGiftCardReaderObjects:infoCopy];

  [(AMSUIWebCameraReaderViewController *)self _handleCameraOutput:v7 error:v8];
}

- (void)textFieldDidBeginEditing:(id)editing
{
  [(AMSUIWebCameraReaderViewController *)self _setRedeemButton];
  [(AMSUIWebCameraReaderViewController *)self _commitNavigationBarModel];
  view = [(AMSUICommonViewController *)self view];
  overlay = [(AMSUIWebCameraReaderViewController *)self overlay];
  [view insertSubview:overlay belowSubview:self->_textField];

  overlay2 = [(AMSUIWebCameraReaderViewController *)self overlay];
  view2 = [(AMSUICommonViewController *)self view];
  [view2 bounds];
  [overlay2 setFrame:?];

  overlay3 = [(AMSUIWebCameraReaderViewController *)self overlay];
  blackColor = [MEMORY[0x1E69DC888] blackColor];
  [overlay3 setBackgroundColor:blackColor];

  overlay4 = [(AMSUIWebCameraReaderViewController *)self overlay];
  [overlay4 setAlpha:0.0];

  v12[0] = MEMORY[0x1E69E9820];
  v12[1] = 3221225472;
  v12[2] = __63__AMSUIWebCameraReaderViewController_textFieldDidBeginEditing___block_invoke;
  v12[3] = &unk_1E7F242D0;
  v12[4] = self;
  [MEMORY[0x1E69DD250] animateWithDuration:v12 animations:0.2];
  _cameraReader = [(AMSUIWebCameraReaderViewController *)self _cameraReader];
  [_cameraReader cancel];
}

void __63__AMSUIWebCameraReaderViewController_textFieldDidBeginEditing___block_invoke(uint64_t a1)
{
  v1 = [*(a1 + 32) overlay];
  [v1 setAlpha:0.4];
}

- (void)textFieldDidEndEditing:(id)editing
{
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __61__AMSUIWebCameraReaderViewController_textFieldDidEndEditing___block_invoke;
  v7[3] = &unk_1E7F242D0;
  v7[4] = self;
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __61__AMSUIWebCameraReaderViewController_textFieldDidEndEditing___block_invoke_2;
  v6[3] = &unk_1E7F25888;
  v6[4] = self;
  [MEMORY[0x1E69DD250] animateWithDuration:v7 animations:v6 completion:0.2];
  UIKeyboardOrderOutAutomatic();
  _cameraReader = [(AMSUIWebCameraReaderViewController *)self _cameraReader];
  [_cameraReader start];

  textField = [(AMSUIWebCameraReaderViewController *)self textField];
  [textField setText:0];
}

void __61__AMSUIWebCameraReaderViewController_textFieldDidEndEditing___block_invoke(uint64_t a1)
{
  v1 = [*(a1 + 32) overlay];
  [v1 setAlpha:0.0];
}

void __61__AMSUIWebCameraReaderViewController_textFieldDidEndEditing___block_invoke_2(uint64_t a1)
{
  v1 = [*(a1 + 32) overlay];
  [v1 removeFromSuperview];
}

- (void)keyboardWillShow:(id)show
{
  v12 = 0u;
  v13 = 0u;
  v10 = 0;
  v11 = 0.0;
  userInfo = [show userInfo];
  v5 = [userInfo objectForKey:*MEMORY[0x1E69DDFA0]];
  [v5 getValue:&v12];

  v6 = [userInfo objectForKey:*MEMORY[0x1E69DDF38]];
  [v6 getValue:&v10];

  v7 = [userInfo objectForKey:*MEMORY[0x1E69DDF40]];
  [v7 getValue:&v11];

  view = [(AMSUICommonViewController *)self view];
  [view convertRect:0 fromView:{v12, v13}];
  [(AMSUIWebCameraReaderViewController *)self setKeyboardRect:?];

  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __55__AMSUIWebCameraReaderViewController_keyboardWillShow___block_invoke;
  v9[3] = &unk_1E7F242D0;
  v9[4] = self;
  [MEMORY[0x1E69DD250] animateWithDuration:v10 << 16 delay:v9 options:0 animations:v11 completion:0.0];
}

- (void)keyboardWillHide:(id)hide
{
  v12 = 0u;
  v13 = 0u;
  v10 = 0;
  v11 = 0.0;
  userInfo = [hide userInfo];
  v5 = [userInfo objectForKey:*MEMORY[0x1E69DDFA0]];
  [v5 getValue:&v12];

  v6 = [userInfo objectForKey:*MEMORY[0x1E69DDF38]];
  [v6 getValue:&v10];

  v7 = [userInfo objectForKey:*MEMORY[0x1E69DDF40]];
  [v7 getValue:&v11];

  view = [(AMSUICommonViewController *)self view];
  [view convertRect:0 fromView:{v12, v13}];
  [(AMSUIWebCameraReaderViewController *)self setKeyboardRect:?];

  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __55__AMSUIWebCameraReaderViewController_keyboardWillHide___block_invoke;
  v9[3] = &unk_1E7F242D0;
  v9[4] = self;
  [MEMORY[0x1E69DD250] animateWithDuration:v10 << 16 delay:v9 options:0 animations:v11 completion:0.0];
}

- (void)keyboardDidHide:(id)hide
{
  v4 = *(MEMORY[0x1E695F058] + 16);
  self->_keyboardRect.origin = *MEMORY[0x1E695F058];
  self->_keyboardRect.size = v4;
  model = [(AMSUIWebCameraReaderViewController *)self model];
  allowsCameraToggle = [model allowsCameraToggle];

  if (allowsCameraToggle)
  {
    [(AMSUIWebCameraReaderViewController *)self _setCameraToggleButton];
  }

  else
  {
    navigationBarModel = [(AMSUIWebCameraReaderViewController *)self navigationBarModel];
    [navigationBarModel setRightBarButtonItemModel:0];
  }

  [(AMSUIWebCameraReaderViewController *)self _commitNavigationBarModel];
}

- (void)_redeemAction
{
  textField = [(AMSUIWebCameraReaderViewController *)self textField];
  text = [textField text];
  v5 = [text length];

  if (v5)
  {
    textField2 = [(AMSUIWebCameraReaderViewController *)self textField];
    text2 = [textField2 text];

    v7 = [(AMSUIWebCameraReaderViewController *)self _outputForGiftCardReaderCode:text2];
    [(AMSUIWebCameraReaderViewController *)self _handleCameraOutput:v7 error:0];
  }
}

- (CGRect)keyboardRect
{
  x = self->_keyboardRect.origin.x;
  y = self->_keyboardRect.origin.y;
  width = self->_keyboardRect.size.width;
  height = self->_keyboardRect.size.height;
  result.size.height = height;
  result.size.width = width;
  result.origin.y = y;
  result.origin.x = x;
  return result;
}

@end