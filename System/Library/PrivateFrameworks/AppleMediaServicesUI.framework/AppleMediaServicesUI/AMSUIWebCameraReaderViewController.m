@interface AMSUIWebCameraReaderViewController
- (AMSUIWebCameraReaderViewController)initWithContext:(id)a3;
- (CGRect)keyboardRect;
- (id)_cameraReader;
- (id)_makeTextFieldWithPlaceholderColor:(id)a3;
- (id)_outputForCreditCardReaderObjects:(id)a3;
- (id)_outputForGiftCardReaderCode:(id)a3;
- (id)_outputForGiftCardReaderObjects:(id)a3;
- (id)_outputForIDCardReaderObjects:(id)a3;
- (void)_applyAppearance;
- (void)_commitNavigationBarModel;
- (void)_handleCameraOutput:(id)a3 error:(id)a4;
- (void)_layoutFullScreen;
- (void)_layoutHalfScreen;
- (void)_layoutPage;
- (void)_layoutTextField;
- (void)_redeemAction;
- (void)_setCameraToggleButton;
- (void)_setCancelButton;
- (void)_setChild:(id)a3;
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
- (void)cameraReader:(id)a3 didRecognizeObjects:(id)a4;
- (void)cameraReaderDidCancel:(id)a3;
- (void)cameraReaderDidEnd:(id)a3;
- (void)codeRedeemerController:(id)a3 didEndWithInfo:(id)a4;
- (void)codeRedeemerControllerDidCancel:(id)a3;
- (void)dealloc;
- (void)keyboardDidHide:(id)a3;
- (void)keyboardWillHide:(id)a3;
- (void)keyboardWillShow:(id)a3;
- (void)loadView;
- (void)textFieldDidBeginEditing:(id)a3;
- (void)textFieldDidEndEditing:(id)a3;
- (void)viewWillLayoutSubviews;
- (void)willPresentPageModel:(id)a3 appearance:(id)a4;
@end

@implementation AMSUIWebCameraReaderViewController

- (AMSUIWebCameraReaderViewController)initWithContext:(id)a3
{
  v5 = a3;
  v11.receiver = self;
  v11.super_class = AMSUIWebCameraReaderViewController;
  v6 = [(AMSUICommonViewController *)&v11 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_context, a3);
    v8 = objc_alloc_init(AMSUIWebNavigationBarModel);
    navigationBarModel = v7->_navigationBarModel;
    v7->_navigationBarModel = v8;
  }

  return v7;
}

- (void)dealloc
{
  v3 = [MEMORY[0x1E696AD88] defaultCenter];
  [v3 removeObserver:self name:*MEMORY[0x1E69DE080] object:0];
  [v3 removeObserver:self name:*MEMORY[0x1E69DE078] object:0];
  [v3 removeObserver:self name:*MEMORY[0x1E69DDF70] object:0];

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

- (void)_setChild:(id)a3
{
  v4 = a3;
  [(AMSUIWebCameraReaderViewController *)self setChildController:v4];
  [(UIViewController *)self ams_setChildViewController:v4];
}

- (void)_setupPage
{
  [(AMSUIWebCameraReaderViewController *)self _setupCameraReader];
  [(AMSUIWebCameraReaderViewController *)self _setupInfoView];
  [(AMSUIWebCameraReaderViewController *)self _setupCameraToggle];
  [(AMSUIWebCameraReaderViewController *)self _setupTextEntry];
  v6 = [(AMSUIWebCameraReaderViewController *)self model];
  if ([v6 isFullScreen])
  {
    v3 = [(AMSUIWebCameraReaderViewController *)self model];
    v4 = [v3 navigationBar];
    v5 = [v4 style];

    if (v5 != 9)
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
  v3 = [(AMSUIWebCameraReaderViewController *)self model];
  v4 = [v3 pageType];

  switch(v4)
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
  v3 = [(AMSUIWebCameraReaderViewController *)self model];
  v4 = [v3 isFullScreen];

  if ((v4 & 1) == 0)
  {
    v5 = [AMSUIWebCameraReaderInfoView alloc];
    v6 = [(AMSUIWebCameraReaderInfoView *)v5 initWithFrame:*MEMORY[0x1E695F058], *(MEMORY[0x1E695F058] + 8), *(MEMORY[0x1E695F058] + 16), *(MEMORY[0x1E695F058] + 24)];
    [(AMSUIWebCameraReaderViewController *)self setInfoView:v6];

    v7 = [(AMSUIWebCameraReaderViewController *)self model];
    v8 = [v7 primaryLabel];
    v9 = [(AMSUIWebCameraReaderViewController *)self infoView];
    v10 = [v9 primaryLabel];
    [v10 setText:v8];

    v11 = [(AMSUIWebCameraReaderViewController *)self model];
    v12 = [v11 secondaryLabel];
    v13 = [(AMSUIWebCameraReaderViewController *)self infoView];
    v14 = [v13 secondaryLabel];
    [v14 setText:v12];

    v15 = [(AMSUIWebCameraReaderViewController *)self infoView];
    v16 = [v15 bottomLink];
    v17 = [(AMSUIWebCameraReaderViewController *)self model];
    v18 = [v17 bottomLinkLabel];
    v19 = v18;
    if (v18)
    {
      v20 = v18;
    }

    else
    {
      v20 = &stru_1F3921360;
    }

    [v16 setTitle:v20 forState:0];

    v21 = [(AMSUIWebCameraReaderViewController *)self model];
    v22 = [v21 bottomLinkAction];
    v23 = [(AMSUIWebCameraReaderViewController *)self infoView];
    [v23 setBottomLinkAction:v22];

    v24 = [(AMSUICommonViewController *)self view];
    [v24 addSubview:self->_infoView];
  }
}

- (void)_setupTextEntry
{
  v21 = [(AMSUIWebCameraReaderViewController *)self model];
  if ([v21 allowsTextEntry])
  {
    v3 = [(AMSUIWebCameraReaderViewController *)self model];
    v4 = [v3 isFullScreen];

    if (!v4)
    {
      return;
    }

    v21 = [MEMORY[0x1E69DC730] effectWithStyle:10];
    v5 = [objc_alloc(MEMORY[0x1E69DD298]) initWithEffect:v21];
    [(AMSUIWebCameraReaderViewController *)self setTextFieldSafeAreaBackdrop:v5];
    v6 = [(AMSUICommonViewController *)self view];
    v7 = [(AMSUIWebCameraReaderViewController *)self textFieldSafeAreaBackdrop];
    [v6 addSubview:v7];

    v8 = objc_alloc_init(MEMORY[0x1E69DD060]);
    [v8 addTarget:self action:sel__overlayTapGestureAction_];
    v9 = objc_alloc_init(MEMORY[0x1E69DD250]);
    [(AMSUIWebCameraReaderViewController *)self setOverlay:v9];

    v10 = [(AMSUIWebCameraReaderViewController *)self overlay];
    v11 = [MEMORY[0x1E69DC888] colorWithWhite:0.0 alpha:1.0];
    [v10 setBackgroundColor:v11];

    v12 = [(AMSUIWebCameraReaderViewController *)self overlay];
    [v12 setAlpha:0.0];

    v13 = [(AMSUIWebCameraReaderViewController *)self overlay];
    [v13 addGestureRecognizer:v8];

    v14 = [(AMSUICommonViewController *)self view];
    v15 = [v14 tintColor];
    v16 = [(AMSUIWebCameraReaderViewController *)self _makeTextFieldWithPlaceholderColor:v15];

    [v16 setClearsPlaceholderOnBeginEditing:0];
    [v16 setDelegate:self];
    v17 = [(AMSUIWebCameraReaderViewController *)self model];
    v18 = [v17 textFieldPlaceholder];
    [v16 setPlaceholder:v18];

    [(AMSUIWebCameraReaderViewController *)self setTextField:v16];
    v19 = [(AMSUICommonViewController *)self view];
    [v19 addSubview:v16];

    v20 = [MEMORY[0x1E696AD88] defaultCenter];
    [v20 addObserver:self selector:sel_keyboardWillShow_ name:*MEMORY[0x1E69DE080] object:0];
    [v20 addObserver:self selector:sel_keyboardWillHide_ name:*MEMORY[0x1E69DE078] object:0];
    [v20 addObserver:self selector:sel_keyboardDidHide_ name:*MEMORY[0x1E69DDF70] object:0];
  }
}

- (id)_makeTextFieldWithPlaceholderColor:(id)a3
{
  v20[2] = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = [MEMORY[0x1E69DB878] systemFontOfSize:16.0];
  v6 = *MEMORY[0x1E69DB648];
  v20[0] = v5;
  v7 = *MEMORY[0x1E69DB650];
  v19[0] = v6;
  v19[1] = v7;
  v8 = v4;
  if (!v4)
  {
    v8 = [MEMORY[0x1E69DC888] colorWithWhite:0.7 alpha:1.0];
  }

  v20[1] = v8;
  v9 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v20 forKeys:v19 count:2];
  if (!v4)
  {
  }

  v10 = objc_alloc(MEMORY[0x1E696AAB0]);
  v11 = [(AMSUIWebCameraReaderViewController *)self model];
  v12 = [v11 textFieldPlaceholder];
  v13 = v12;
  if (v12)
  {
    v14 = v12;
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
  v3 = [(AMSUIWebCameraReaderViewController *)self model];
  v4 = [v3 isFullScreen];

  if (v4)
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
  v3 = [(AMSUICommonViewController *)self view];
  [v3 bounds];
  v5 = v4;
  v7 = v6;
  v9 = v8;
  v11 = v10;

  v12 = v11 * 0.66;
  v13 = [(AMSUIWebCameraReaderViewController *)self childController];
  v14 = [v13 view];
  [v14 setFrame:{v5, v7, v9, v12}];

  v15 = [(AMSUICommonViewController *)self view];
  [v15 bounds];
  v17 = v16;
  v19 = v18;
  v21 = v20;

  v22 = [(AMSUIWebCameraReaderViewController *)self infoView];
  [v22 setFrame:{v17, v12, v19, v21 - v12}];
}

- (void)_layoutFullScreen
{
  v3 = [(AMSUICommonViewController *)self view];
  [v3 bounds];
  v5 = v4;
  v7 = v6;
  v9 = v8;
  v11 = v10;
  v12 = [(AMSUIWebCameraReaderViewController *)self childController];
  v13 = [v12 view];
  [v13 setFrame:{v5, v7, v9, v11}];

  v14 = [(AMSUIWebCameraReaderViewController *)self infoView];
  [v14 setHidden:1];
}

- (void)_layoutTextField
{
  v3 = [(AMSUIWebCameraReaderViewController *)self textField];

  if (!v3)
  {
    return;
  }

  v4 = [(AMSUICommonViewController *)self view];
  [v4 safeAreaInsets];
  v6 = v5;

  v7 = [(AMSUIWebCameraReaderViewController *)self textField];
  if (![v7 isFirstResponder])
  {

    goto LABEL_7;
  }

  [(AMSUIWebCameraReaderViewController *)self keyboardRect];
  v8 = CGRectEqualToRect(v24, *MEMORY[0x1E695F058]);

  if (v8)
  {
LABEL_7:
    v14 = [(AMSUIWebCameraReaderViewController *)self textField];
    v15 = [(AMSUICommonViewController *)self view];
    [v15 bounds];
    v17 = v16 + -44.0 - v6;
    v18 = [(AMSUICommonViewController *)self view];
    [v18 bounds];
    [v14 setFrame:{0.0, v17}];

    v22 = [(AMSUIWebCameraReaderViewController *)self textFieldSafeAreaBackdrop];
    v13 = [(AMSUICommonViewController *)self view];
    [v13 bounds];
    v20 = v19 + -44.0 - v6;
    v21 = [(AMSUICommonViewController *)self view];
    [v21 bounds];
    [v22 setFrame:{0.0, v20}];

    goto LABEL_8;
  }

  v9 = [(AMSUIWebCameraReaderViewController *)self textField];
  v10 = CGRectGetMinY(self->_keyboardRect) + -44.0;
  v11 = [(AMSUICommonViewController *)self view];
  [v11 bounds];
  [v9 setFrame:{0.0, v10}];

  v22 = [(AMSUIWebCameraReaderViewController *)self textFieldSafeAreaBackdrop];
  v12 = CGRectGetMinY(self->_keyboardRect) + -44.0;
  v13 = [(AMSUICommonViewController *)self view];
  [v13 bounds];
  [v22 setFrame:{0.0, v12}];
LABEL_8:
}

- (void)_commitNavigationBarModel
{
  v3 = [(AMSUIWebCameraReaderViewController *)self navigationBarModel];
  [v3 setStyle:5];

  v4 = [(AMSUIWebCameraReaderViewController *)self context];
  v5 = [v4 flowController];
  v7 = [v5 currentContainer];

  v6 = [(AMSUIWebCameraReaderViewController *)self navigationBarModel];
  [v7 applyNavigationModel:v6];
}

- (void)_setupNavigationModel
{
  v5 = [(AMSUIWebCameraReaderViewController *)self model];
  v3 = [v5 primaryLabel];
  v4 = [(AMSUIWebCameraReaderViewController *)self navigationBarModel];
  [v4 setTitle:v3];
}

- (void)_setupCameraToggle
{
  v3 = [(AMSUIWebCameraReaderViewController *)self model];
  v4 = [v3 allowsCameraToggle];

  if (v4)
  {
    [(AMSUIWebCameraReaderViewController *)self _setCameraToggleButton];
    [(AMSUIWebCameraReaderViewController *)self _setCancelButton];

    [(AMSUIWebCameraReaderViewController *)self _commitNavigationBarModel];
  }
}

- (void)_setCancelButton
{
  v3 = [AMSUIWebFlowAction alloc];
  v4 = [(AMSUIWebCameraReaderViewController *)self context];
  v10 = [(AMSUIWebFlowAction *)v3 initWithContext:v4];

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
  v9 = [(AMSUIWebCameraReaderViewController *)self navigationBarModel];
  [v9 setLeftBarButtonItemModel:v8];
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
  v7 = [(AMSUIWebCameraReaderViewController *)self navigationBarModel];
  [v7 setRightBarButtonItemModel:v6];

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
  v5 = [(AMSUIWebCameraReaderViewController *)self navigationBarModel];
  [v5 setRightBarButtonItemModel:v4];

  objc_destroyWeak(&v10);
  objc_destroyWeak(&location);
}

void __60__AMSUIWebCameraReaderViewController__setCameraToggleButton__block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v1 = [WeakRetained _cameraReader];
  [v1 toggleCamera];
}

- (id)_outputForCreditCardReaderObjects:(id)a3
{
  v34 = *MEMORY[0x1E69E9840];
  v3 = a3;
  v4 = objc_alloc_init(MEMORY[0x1E695DF90]);
  v29 = 0u;
  v30 = 0u;
  v31 = 0u;
  v32 = 0u;
  obj = v3;
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
        v13 = [v12 type];
        v14 = [v13 isEqual:v8];

        if (v14)
        {
          v15 = [v12 stringValue];
          [v4 setObject:v15 forKeyedSubscript:@"cardNumber"];
        }

        v16 = [v12 type];
        v17 = [v16 isEqual:v9];

        if (v17)
        {
          v18 = [v12 stringValue];
          [v4 setObject:v18 forKeyedSubscript:@"cardholderName"];
        }

        v19 = [v12 type];
        v20 = [v19 isEqual:v10];

        if (v20)
        {
          v21 = v12;
          v22 = [v21 dayValue];
          [v4 setObject:v22 forKeyedSubscript:@"cardExpirationDay"];

          v23 = [v21 monthValue];
          [v4 setObject:v23 forKeyedSubscript:@"cardExpirationMonth"];

          v24 = [v21 yearValue];
          [v4 setObject:v24 forKeyedSubscript:@"cardExpirationYear"];

          v25 = [v21 stringValue];

          [v4 setObject:v25 forKeyedSubscript:@"cardExpirationString"];
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

- (id)_outputForGiftCardReaderObjects:(id)a3
{
  v4 = [a3 valueForKey:*MEMORY[0x1E6998FE0]];
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

- (id)_outputForGiftCardReaderCode:(id)a3
{
  v3 = a3;
  v4 = objc_alloc_init(MEMORY[0x1E695DF90]);
  v5 = v4;
  if (v3)
  {
    [v4 setObject:v3 forKeyedSubscript:@"giftCardCode"];
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

- (id)_outputForIDCardReaderObjects:(id)a3
{
  v26 = *MEMORY[0x1E69E9840];
  v3 = a3;
  v4 = objc_alloc_init(MEMORY[0x1E695DF90]);
  v21 = 0u;
  v22 = 0u;
  v23 = 0u;
  v24 = 0u;
  v5 = v3;
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
        v12 = [v11 type];
        v13 = [v12 isEqual:v9];

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
            v16 = [v15 imageValue];
            v17 = UIImagePNGRepresentation(v16);
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
  v9 = [(AMSUIWebCameraReaderViewController *)self appearance];
  v3 = [v9 backgroundColor];
  v4 = v3;
  if (!v3)
  {
    v4 = +[AMSUIWebAppearance defaultPlatformBackgroundColor];
  }

  v5 = [(AMSUICommonViewController *)self view];
  [v5 ams_setBackgroundColor:v4];

  if (!v3)
  {
  }

  v6 = [v9 backgroundColor];
  v7 = v6;
  if (!v6)
  {
    v7 = +[AMSUIWebAppearance defaultPlatformBackgroundColor];
  }

  v8 = [(AMSUIWebCameraReaderViewController *)self infoView];
  [v8 ams_setBackgroundColor:v7];

  if (!v6)
  {
  }
}

- (id)_cameraReader
{
  v2 = [(AMSUIWebCameraReaderViewController *)self childController];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v3 = v2;
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (void)_handleCameraOutput:(id)a3 error:(id)a4
{
  v29 = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = a4;
  v8 = [v6 count];
  if (!v7 && !v8)
  {
    v7 = AMSError();
  }

  v9 = [(AMSUIWebCameraReaderViewController *)self context];
  v10 = [v9 logKey];
  v11 = AMSUIWebSetSubLogKey(v10, 0);

  v12 = [MEMORY[0x1E698C968] sharedWebUIConfig];
  if (!v12)
  {
    v12 = [MEMORY[0x1E698C968] sharedConfig];
  }

  v13 = [v12 OSLogObject];
  if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138543618;
    v26 = objc_opt_class();
    v27 = 2114;
    v28 = v11;
    _os_log_impl(&dword_1BB036000, v13, OS_LOG_TYPE_DEFAULT, "%{public}@: [%{public}@] Sending event", buf, 0x16u);
  }

  v23[0] = @"output";
  v14 = v6;
  if (!v6)
  {
    v14 = [MEMORY[0x1E695DFB0] null];
  }

  v23[1] = @"error";
  v24[0] = v14;
  v15 = AMSUIWebJSError(v7);
  v16 = v15;
  if (!v15)
  {
    v16 = [MEMORY[0x1E695DFB0] null];
  }

  v24[1] = v16;
  v17 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v24 forKeys:v23 count:2];
  if (!v15)
  {
  }

  if (!v6)
  {
  }

  v18 = [[AMSUIWebJSRequest alloc] initWithServiceName:@"CameraReaderInfo" logKey:v11];
  [(AMSUIWebJSRequest *)v18 setOptions:v17];
  v19 = [(AMSUIWebCameraReaderViewController *)self context];
  v20 = [v19 dataProvider];
  v21 = [v20 runJSRequest:v18];

  v22 = *MEMORY[0x1E69E9840];
}

- (void)willPresentPageModel:(id)a3 appearance:(id)a4
{
  v22 = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = a4;
  v8 = v6;
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
    objc_storeStrong(&self->_appearance, a4);
  }

  else
  {
    v10 = [MEMORY[0x1E698C968] sharedWebUIConfig];
    if (!v10)
    {
      v10 = [MEMORY[0x1E698C968] sharedConfig];
    }

    v11 = [v10 OSLogObject];
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      v12 = objc_opt_class();
      v13 = [(AMSUIWebCameraReaderViewController *)self context];
      v14 = [v13 logKey];
      v16 = 138543874;
      v17 = v12;
      v18 = 2114;
      v19 = v14;
      v20 = 2114;
      v21 = v8;
      _os_log_impl(&dword_1BB036000, v11, OS_LOG_TYPE_ERROR, "%{public}@: [%{public}@] Invalid camera page model: %{public}@", &v16, 0x20u);
    }
  }

  v15 = *MEMORY[0x1E69E9840];
}

- (void)cameraReaderDidCancel:(id)a3
{
  v4 = AMSError();
  [(AMSUIWebCameraReaderViewController *)self _handleCameraOutput:0 error:v4];
}

- (void)cameraReader:(id)a3 didRecognizeObjects:(id)a4
{
  v9 = a4;
  v5 = [(AMSUIWebCameraReaderViewController *)self model];
  v6 = [v5 pageType];

  if (v6 == 2)
  {
    v7 = [(AMSUIWebCameraReaderViewController *)self _outputForIDCardReaderObjects:v9];
    goto LABEL_5;
  }

  if (!v6)
  {
    v7 = [(AMSUIWebCameraReaderViewController *)self _outputForCreditCardReaderObjects:v9];
LABEL_5:
    v8 = v7;
    goto LABEL_7;
  }

  v8 = 0;
LABEL_7:
  [(AMSUIWebCameraReaderViewController *)self setOutput:v8];
}

- (void)cameraReaderDidEnd:(id)a3
{
  v4 = [(AMSUIWebCameraReaderViewController *)self output];
  [(AMSUIWebCameraReaderViewController *)self _handleCameraOutput:v4 error:0];
}

- (void)codeRedeemerControllerDidCancel:(id)a3
{
  v4 = AMSError();
  [(AMSUIWebCameraReaderViewController *)self _handleCameraOutput:0 error:v4];
}

- (void)codeRedeemerController:(id)a3 didEndWithInfo:(id)a4
{
  v5 = *MEMORY[0x1E6998FE8];
  v6 = a4;
  v8 = [v6 valueForKey:v5];
  v7 = [(AMSUIWebCameraReaderViewController *)self _outputForGiftCardReaderObjects:v6];

  [(AMSUIWebCameraReaderViewController *)self _handleCameraOutput:v7 error:v8];
}

- (void)textFieldDidBeginEditing:(id)a3
{
  [(AMSUIWebCameraReaderViewController *)self _setRedeemButton];
  [(AMSUIWebCameraReaderViewController *)self _commitNavigationBarModel];
  v4 = [(AMSUICommonViewController *)self view];
  v5 = [(AMSUIWebCameraReaderViewController *)self overlay];
  [v4 insertSubview:v5 belowSubview:self->_textField];

  v6 = [(AMSUIWebCameraReaderViewController *)self overlay];
  v7 = [(AMSUICommonViewController *)self view];
  [v7 bounds];
  [v6 setFrame:?];

  v8 = [(AMSUIWebCameraReaderViewController *)self overlay];
  v9 = [MEMORY[0x1E69DC888] blackColor];
  [v8 setBackgroundColor:v9];

  v10 = [(AMSUIWebCameraReaderViewController *)self overlay];
  [v10 setAlpha:0.0];

  v12[0] = MEMORY[0x1E69E9820];
  v12[1] = 3221225472;
  v12[2] = __63__AMSUIWebCameraReaderViewController_textFieldDidBeginEditing___block_invoke;
  v12[3] = &unk_1E7F242D0;
  v12[4] = self;
  [MEMORY[0x1E69DD250] animateWithDuration:v12 animations:0.2];
  v11 = [(AMSUIWebCameraReaderViewController *)self _cameraReader];
  [v11 cancel];
}

void __63__AMSUIWebCameraReaderViewController_textFieldDidBeginEditing___block_invoke(uint64_t a1)
{
  v1 = [*(a1 + 32) overlay];
  [v1 setAlpha:0.4];
}

- (void)textFieldDidEndEditing:(id)a3
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
  v4 = [(AMSUIWebCameraReaderViewController *)self _cameraReader];
  [v4 start];

  v5 = [(AMSUIWebCameraReaderViewController *)self textField];
  [v5 setText:0];
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

- (void)keyboardWillShow:(id)a3
{
  v12 = 0u;
  v13 = 0u;
  v10 = 0;
  v11 = 0.0;
  v4 = [a3 userInfo];
  v5 = [v4 objectForKey:*MEMORY[0x1E69DDFA0]];
  [v5 getValue:&v12];

  v6 = [v4 objectForKey:*MEMORY[0x1E69DDF38]];
  [v6 getValue:&v10];

  v7 = [v4 objectForKey:*MEMORY[0x1E69DDF40]];
  [v7 getValue:&v11];

  v8 = [(AMSUICommonViewController *)self view];
  [v8 convertRect:0 fromView:{v12, v13}];
  [(AMSUIWebCameraReaderViewController *)self setKeyboardRect:?];

  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __55__AMSUIWebCameraReaderViewController_keyboardWillShow___block_invoke;
  v9[3] = &unk_1E7F242D0;
  v9[4] = self;
  [MEMORY[0x1E69DD250] animateWithDuration:v10 << 16 delay:v9 options:0 animations:v11 completion:0.0];
}

- (void)keyboardWillHide:(id)a3
{
  v12 = 0u;
  v13 = 0u;
  v10 = 0;
  v11 = 0.0;
  v4 = [a3 userInfo];
  v5 = [v4 objectForKey:*MEMORY[0x1E69DDFA0]];
  [v5 getValue:&v12];

  v6 = [v4 objectForKey:*MEMORY[0x1E69DDF38]];
  [v6 getValue:&v10];

  v7 = [v4 objectForKey:*MEMORY[0x1E69DDF40]];
  [v7 getValue:&v11];

  v8 = [(AMSUICommonViewController *)self view];
  [v8 convertRect:0 fromView:{v12, v13}];
  [(AMSUIWebCameraReaderViewController *)self setKeyboardRect:?];

  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __55__AMSUIWebCameraReaderViewController_keyboardWillHide___block_invoke;
  v9[3] = &unk_1E7F242D0;
  v9[4] = self;
  [MEMORY[0x1E69DD250] animateWithDuration:v10 << 16 delay:v9 options:0 animations:v11 completion:0.0];
}

- (void)keyboardDidHide:(id)a3
{
  v4 = *(MEMORY[0x1E695F058] + 16);
  self->_keyboardRect.origin = *MEMORY[0x1E695F058];
  self->_keyboardRect.size = v4;
  v5 = [(AMSUIWebCameraReaderViewController *)self model];
  v6 = [v5 allowsCameraToggle];

  if (v6)
  {
    [(AMSUIWebCameraReaderViewController *)self _setCameraToggleButton];
  }

  else
  {
    v7 = [(AMSUIWebCameraReaderViewController *)self navigationBarModel];
    [v7 setRightBarButtonItemModel:0];
  }

  [(AMSUIWebCameraReaderViewController *)self _commitNavigationBarModel];
}

- (void)_redeemAction
{
  v3 = [(AMSUIWebCameraReaderViewController *)self textField];
  v4 = [v3 text];
  v5 = [v4 length];

  if (v5)
  {
    v6 = [(AMSUIWebCameraReaderViewController *)self textField];
    v8 = [v6 text];

    v7 = [(AMSUIWebCameraReaderViewController *)self _outputForGiftCardReaderCode:v8];
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