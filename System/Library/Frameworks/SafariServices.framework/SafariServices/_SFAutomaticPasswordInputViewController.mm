@interface _SFAutomaticPasswordInputViewController
+ (void)_inputViewControllerWithAutoFillContext:(id)a3 passwordRules:(id)a4 overrideApplicationIdentifier:(id)a5 completion:(id)a6;
- (CGSize)_currentKeyboardSize;
- (CGSize)intrinsicContentSizeForInputView:(id)a3;
- (_SFAutoFillContextProviding)autoFillContextProvider;
- (_SFAutomaticPasswordInputViewController)initWithPassword:(id)a3 keyboardType:(int64_t)a4;
- (id)_editingStrongPasswordInformationViewControllerIfNeeded;
- (id)strongPasswordIntroductionViewController:(id)a3 automaticStrongPasswordWithFormat:(unint64_t)a4;
- (id)strongPasswordIntroductionViewControllerIfNeeded;
- (void)_postButtonPressedNotificationForButton:(int64_t)a3;
- (void)_postContextProviderRequiredNotificationIfNeeded;
- (void)_updateKeyboardHeight;
- (void)_updateKeyboardMetricsAndInterfaceOrientationIfNeeded;
- (void)dismissKeyboardPreservingFirstResponderIfNecessary;
- (void)imageForStrongPasswordIntroductionViewController:(id)a3 completionHandler:(id)a4;
- (void)streamlinedStrongPasswordViewController:(id)a3 shouldFillStrongPasswordWithFormat:(unint64_t)a4;
- (void)streamlinedStrongPasswordViewControllerDeclinedStrongPassword:(id)a3;
- (void)strongPasswordIntroductionViewController:(id)a3 shouldFillPasswordWithFormat:(unint64_t)a4;
- (void)strongPasswordIntroductionViewController:(id)a3 shouldPerformAction:(unint64_t)a4 willShowAdditionalView:(BOOL)a5;
- (void)strongPasswordIntroductionViewControllerDidFinishIntroduction:(id)a3;
- (void)strongPasswordIntroductionViewControllerShowKeyboard:(id)a3;
- (void)strongPasswordIntroductionViewControllerShowOtherPasswords:(id)a3;
- (void)viewDidDisappear:(BOOL)a3;
- (void)viewDidLoad;
- (void)viewIsAppearing:(BOOL)a3;
- (void)viewWillAppear:(BOOL)a3;
- (void)viewWillTransitionToSize:(CGSize)a3 withTransitionCoordinator:(id)a4;
@end

@implementation _SFAutomaticPasswordInputViewController

+ (void)_inputViewControllerWithAutoFillContext:(id)a3 passwordRules:(id)a4 overrideApplicationIdentifier:(id)a5 completion:(id)a6
{
  v9 = a3;
  v10 = a4;
  v11 = a5;
  v12 = a6;
  if (v12)
  {
    if (v9)
    {
      if ([MEMORY[0x1E69C8880] isPasswordsAppInstalled])
      {
        v12[2](v12, 0);
        goto LABEL_12;
      }

      v15 = [v9 objectForKeyedSubscript:@"_automaticPasswordKeyboard"];
      if (v15)
      {
        v16 = v15;
        v14 = [[_SFAutomaticPasswordInputViewController alloc] initWithPassword:0 keyboardType:0];

        if (v14)
        {
          v17 = [v9 objectForKeyedSubscript:@"strongPasswordAdditionalContext"];
          v18 = [v17 objectForKeyedSubscript:@"SFAutoFillContextProviderIdentifierUserInfoKey"];
          v19 = [v18 copy];
          autoFillContextProtocolObjectUUID = v14->_autoFillContextProtocolObjectUUID;
          v14->_autoFillContextProtocolObjectUUID = v19;
        }
      }

      else
      {
        v14 = 0;
      }

      (v12)[2](v12, v14);
    }

    else
    {
      v13 = objc_alloc_init(MEMORY[0x1E69C8DC0]);
      v21[0] = MEMORY[0x1E69E9820];
      v21[1] = 3221225472;
      v21[2] = __138___SFAutomaticPasswordInputViewController__inputViewControllerWithAutoFillContext_passwordRules_overrideApplicationIdentifier_completion___block_invoke;
      v21[3] = &unk_1E8493A80;
      v22 = v13;
      v23 = v11;
      v24 = v12;
      v14 = v13;
      [(_SFAutomaticPasswordInputViewController *)v14 getAutomaticStrongPasswordForAppWithPasswordRules:v10 confirmPasswordRules:0 overrideApplicationIdentifier:v23 completion:v21];
    }
  }

LABEL_12:
}

- (_SFAutomaticPasswordInputViewController)initWithPassword:(id)a3 keyboardType:(int64_t)a4
{
  v6 = a3;
  v12.receiver = self;
  v12.super_class = _SFAutomaticPasswordInputViewController;
  v7 = [(UIInputViewController *)&v12 initWithNibName:0 bundle:0];
  if (v7)
  {
    v8 = [v6 copy];
    password = v7->_password;
    v7->_password = v8;

    v7->_keyboardType = a4;
    v10 = v7;
  }

  return v7;
}

- (void)_updateKeyboardMetricsAndInterfaceOrientationIfNeeded
{
  v3 = [*MEMORY[0x1E69DDA98] interfaceOrientation];
  if (v3 != self->_currentInterfaceOrientation)
  {
    self->_currentInterfaceOrientation = v3;
    v4 = [_SFKeyboardGeometry keyboardGeometryForInterfaceOrientation:1];
    [v4 sizeWithBar];
    self->_portraitKeyboardSize.width = v5;
    self->_portraitKeyboardSize.height = v6;

    v10 = [_SFKeyboardGeometry keyboardGeometryForInterfaceOrientation:4];
    p_landscapeKeyboardSize = &self->_landscapeKeyboardSize;
    if (_SFDeviceIsPad())
    {
      [v10 sizeWithoutBar];
    }

    else
    {
      [v10 sizeWithBar];
    }

    p_landscapeKeyboardSize->width = v8;
    p_landscapeKeyboardSize->height = v9;
  }
}

- (void)viewDidLoad
{
  v22.receiver = self;
  v22.super_class = _SFAutomaticPasswordInputViewController;
  [(UIInputViewController *)&v22 viewDidLoad];
  v3 = [(_SFAutomaticPasswordInputViewController *)self strongPasswordIntroductionViewControllerIfNeeded];
  if (v3)
  {
    [(_SFAutomaticPasswordInputViewController *)self addChildViewController:v3];
    v4 = [SFAutoFillStrongPasswordContainerInputView alloc];
    v5 = [(UIInputViewController *)self inputView];
    v6 = [v5 inputViewStyle];
    v7 = [v3 view];
    v8 = [(SFAutoFillStrongPasswordContainerInputView *)v4 initWithInputViewStyle:v6 containingView:v7];

    [(SFAutoFillStrongPasswordContainerInputView *)v8 setInputViewSizing:self];
    [(UIInputViewController *)self setInputView:v8];
    v9 = [(SFAutoFillStrongPasswordContainerInputView *)v8 heightAnchor];
    v10 = [v9 constraintEqualToConstant:100.0];
    heightConstraint = self->_heightConstraint;
    self->_heightConstraint = v10;

    [(NSLayoutConstraint *)self->_heightConstraint setActive:1];
    [v3 didMoveToParentViewController:self];
    v12 = v3;
    passwordManagerIntroductionViewController = self->_passwordManagerIntroductionViewController;
    self->_passwordManagerIntroductionViewController = v12;
  }

  else
  {
    v14 = [objc_alloc(MEMORY[0x1E69BC7E8]) initForApp];
    [(_SFAutomaticPasswordInputViewController *)self addChildViewController:v14];
    v15 = [SFAutoFillStrongPasswordContainerInputView alloc];
    v16 = [(UIInputViewController *)self inputView];
    v17 = [v16 inputViewStyle];
    v18 = [(UIViewController *)v14 view];
    v8 = [(SFAutoFillStrongPasswordContainerInputView *)v15 initWithInputViewStyle:v17 containingView:v18];

    [(SFAutoFillStrongPasswordContainerInputView *)v8 setInputViewSizing:self];
    [(UIInputView *)v8 setAllowsSelfSizing:1];
    [(UIInputViewController *)self setInputView:v8];
    v19 = [(SFAutoFillStrongPasswordContainerInputView *)v8 heightAnchor];
    v20 = [v19 constraintEqualToConstant:100.0];
    v21 = self->_heightConstraint;
    self->_heightConstraint = v20;

    [(NSLayoutConstraint *)self->_heightConstraint setActive:1];
    [(UIViewController *)v14 didMoveToParentViewController:self];
    [(UIViewController *)v14 setDelegate:self];
    passwordManagerIntroductionViewController = self->_strongPasswordViewController;
    self->_strongPasswordViewController = v14;
  }
}

- (void)_postButtonPressedNotificationForButton:(int64_t)a3
{
  v9[2] = *MEMORY[0x1E69E9840];
  if (!self->_autoFillContextProtocolObjectUUID)
  {
    self->_autoFillContextProtocolObjectUUID = &stru_1F4FE9E38;
  }

  v5 = [MEMORY[0x1E696AD88] defaultCenter];
  v8[0] = @"_SFAutomaticPasswordInputViewNotificationPressedButtonUserInfoKey";
  v6 = [MEMORY[0x1E696AD98] numberWithInteger:a3];
  v8[1] = @"SFAutoFillContextProviderIdentifierUserInfoKey";
  v9[0] = v6;
  v9[1] = self->_autoFillContextProtocolObjectUUID;
  v7 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v9 forKeys:v8 count:2];
  [v5 postNotificationName:@"_SFAutomaticPasswordInputViewButtonPressedNotification" object:self userInfo:v7];
}

- (void)viewWillAppear:(BOOL)a3
{
  v7.receiver = self;
  v7.super_class = _SFAutomaticPasswordInputViewController;
  [(_SFAutomaticPasswordInputViewController *)&v7 viewWillAppear:a3];
  [(_SFAutomaticPasswordInputViewController *)self _updateKeyboardHeight];
  v4 = [MEMORY[0x1E696AD88] defaultCenter];
  [v4 addObserver:self selector:sel__dismissKeyboard_ name:@"_SFAutomaticPasswordDismissedByUser" object:0];

  if ([MEMORY[0x1E69C8880] isPasswordsAppInstalled])
  {
    if (self->_passwordManagerIntroductionViewController)
    {
      [(_SFAutomaticPasswordInputViewController *)self _postContextProviderRequiredNotificationIfNeeded];
      v5 = [(_SFAutomaticPasswordInputViewController *)self autoFillContextProvider];
      v6 = [v5 autoFillController];
      [v6 hideInputAccessoryView];
    }
  }
}

- (void)viewIsAppearing:(BOOL)a3
{
  v4.receiver = self;
  v4.super_class = _SFAutomaticPasswordInputViewController;
  [(_SFAutomaticPasswordInputViewController *)&v4 viewIsAppearing:a3];
  [(_SFAutomaticPasswordInputViewController *)self _updateKeyboardHeight];
}

- (void)viewDidDisappear:(BOOL)a3
{
  v4.receiver = self;
  v4.super_class = _SFAutomaticPasswordInputViewController;
  [(_SFAutomaticPasswordInputViewController *)&v4 viewDidDisappear:a3];
  v3 = [MEMORY[0x1E696AD88] defaultCenter];
  [v3 removeObserver:@"_SFAutomaticPasswordDismissedByUser"];
}

- (void)viewWillTransitionToSize:(CGSize)a3 withTransitionCoordinator:(id)a4
{
  v5.receiver = self;
  v5.super_class = _SFAutomaticPasswordInputViewController;
  [(_SFAutomaticPasswordInputViewController *)&v5 viewWillTransitionToSize:a4 withTransitionCoordinator:a3.width, a3.height];
  [(_SFAutomaticPasswordInputViewController *)self _updateKeyboardHeight];
}

- (CGSize)_currentKeyboardSize
{
  if (([*MEMORY[0x1E69DDA98] interfaceOrientation] - 3) >= 2)
  {
    v3 = &OBJC_IVAR____SFAutomaticPasswordInputViewController__portraitKeyboardSize;
  }

  else
  {
    v3 = &OBJC_IVAR____SFAutomaticPasswordInputViewController__landscapeKeyboardSize;
  }

  v4 = (self + *v3);
  v6 = *v4;
  v5 = v4[1];
  p_passwordManagerIntroductionViewController = &self->_passwordManagerIntroductionViewController;
  passwordManagerIntroductionViewController = self->_passwordManagerIntroductionViewController;
  if (passwordManagerIntroductionViewController || (p_passwordManagerIntroductionViewController = &self->_strongPasswordViewController, (passwordManagerIntroductionViewController = self->_strongPasswordViewController) != 0))
  {
    v9 = [(UIViewController *)passwordManagerIntroductionViewController view];
    [v9 setNeedsUpdateConstraints];

    v10 = [(UIViewController *)*p_passwordManagerIntroductionViewController view];
    [v10 layoutIfNeeded];

    v11 = [(UIViewController *)*p_passwordManagerIntroductionViewController view];
    LODWORD(v12) = 1144750080;
    LODWORD(v13) = 1112014848;
    [v11 systemLayoutSizeFittingSize:v6 withHorizontalFittingPriority:1.79769313e308 verticalFittingPriority:{v12, v13}];
    v6 = v14;
    v16 = v15;

    v17 = v5 * 1.5;
    if (v16 <= v5 * 1.5)
    {
      v17 = v16;
    }

    v5 = fmax(v17, v5);
  }

  v18 = v6;
  v19 = v5;
  result.height = v19;
  result.width = v18;
  return result;
}

- (void)_updateKeyboardHeight
{
  [(_SFAutomaticPasswordInputViewController *)self _updateKeyboardMetricsAndInterfaceOrientationIfNeeded];
  [(_SFAutomaticPasswordInputViewController *)self _currentKeyboardSize];
  heightConstraint = self->_heightConstraint;

  [(NSLayoutConstraint *)heightConstraint setConstant:v3];
}

- (id)strongPasswordIntroductionViewControllerIfNeeded
{
  if (![MEMORY[0x1E69C8880] isPasswordsAppInstalled])
  {
    v4 = 0;
    goto LABEL_17;
  }

  passwordManagerIntroductionViewController = self->_passwordManagerIntroductionViewController;
  if (passwordManagerIntroductionViewController)
  {
    v4 = passwordManagerIntroductionViewController;
    goto LABEL_17;
  }

  [(_SFAutomaticPasswordInputViewController *)self _postContextProviderRequiredNotificationIfNeeded];
  v5 = [(_SFAutomaticPasswordInputViewController *)self autoFillContextProvider];
  v6 = [v5 autoFillFormType];
  v7 = [v5 autoFillController];
  [v7 hideInputAccessoryView];

  if (v6 == 3)
  {
    if ([MEMORY[0x1E69BC7D8] shouldShowLoginIntroduction])
    {
      v10 = 0;
      v9 = MEMORY[0x1E69BC7D8];
      goto LABEL_14;
    }
  }

  else if (v6 == 4)
  {
    v8 = [MEMORY[0x1E69BC7D8] shouldShowLoginIntroduction];
    v9 = MEMORY[0x1E69BC7D8];
    if (v8)
    {
      v10 = 0;
    }

    else
    {
      if (![MEMORY[0x1E69BC7D8] shouldShowStrongPasswordIntroduction])
      {
        v4 = 0;
        goto LABEL_15;
      }

      v9 = MEMORY[0x1E69BC7D8];
      v10 = 1;
    }

LABEL_14:
    v4 = [[v9 alloc] initWithMode:v10];
LABEL_15:
    [(UIViewController *)v4 setDelegate:self];
    goto LABEL_16;
  }

  v4 = 0;
LABEL_16:

LABEL_17:

  return v4;
}

- (id)_editingStrongPasswordInformationViewControllerIfNeeded
{
  [(_SFAutomaticPasswordInputViewController *)self _postContextProviderRequiredNotificationIfNeeded];
  v3 = [(_SFAutomaticPasswordInputViewController *)self autoFillContextProvider];
  v4 = [v3 url];
  v5 = objc_alloc(MEMORY[0x1E69BC7D0]);
  v6 = [v4 host];
  v7 = [v6 safari_highLevelDomainForPasswordManager];
  v8 = [v5 initWithWebsiteTitle:v7 url:v4];

  [v8 setDelegate:self];

  return v8;
}

- (CGSize)intrinsicContentSizeForInputView:(id)a3
{
  [(_SFAutomaticPasswordInputViewController *)self _updateKeyboardMetricsAndInterfaceOrientationIfNeeded];

  [(_SFAutomaticPasswordInputViewController *)self _currentKeyboardSize];
  result.height = v5;
  result.width = v4;
  return result;
}

- (void)dismissKeyboardPreservingFirstResponderIfNecessary
{
  v3 = [MEMORY[0x1E69DCBE0] activeInstance];
  v5 = [v3 inputDelegate];

  if (objc_opt_respondsToSelector())
  {
    [v5 accessoryDone];
  }

  else
  {
    [(UIInputViewController *)self dismissKeyboard];
  }

  if (!self->_keyboardType && [MEMORY[0x1E69C8880] isPasswordsAppInstalled])
  {
    v4 = [(_SFAutomaticPasswordInputViewController *)self autoFillContextProvider];
    [v4 makeStrongPasswordFieldViewable:0];
  }
}

- (void)_postContextProviderRequiredNotificationIfNeeded
{
  v8[2] = *MEMORY[0x1E69E9840];
  if (!self->_keyboardType && !self->_hasPostedContextProviderRequiredNotification)
  {
    if (self->_autoFillContextProtocolObjectUUID)
    {
      v3 = [MEMORY[0x1E696AD88] defaultCenter];
      v7[0] = @"SFAutomaticPasswordInputViewControllerKey";
      v7[1] = @"SFAutoFillContextProviderIdentifierUserInfoKey";
      autoFillContextProtocolObjectUUID = self->_autoFillContextProtocolObjectUUID;
      v8[0] = self;
      v8[1] = autoFillContextProtocolObjectUUID;
      v5 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v8 forKeys:v7 count:2];
      [v3 postNotificationName:@"SFAutomaticPasswordInputViewAutoFillContextProviderRequiredNotification" object:self userInfo:v5];

      self->_hasPostedContextProviderRequiredNotification = 1;
    }

    else
    {
      v6 = WBS_LOG_CHANNEL_PREFIXAutoFill();
      if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
      {
        [(_SFAutomaticPasswordInputViewController *)v6 _postContextProviderRequiredNotificationIfNeeded];
      }
    }
  }
}

- (void)strongPasswordIntroductionViewController:(id)a3 shouldPerformAction:(unint64_t)a4 willShowAdditionalView:(BOOL)a5
{
  [(_SFAutomaticPasswordInputViewController *)self _postContextProviderRequiredNotificationIfNeeded];
  v11 = [(_SFAutomaticPasswordInputViewController *)self autoFillContextProvider];
  if (a4 - 2 < 2)
  {
    v8 = *MEMORY[0x1E69DDA98];
    v9 = [MEMORY[0x1E69C8978] passwordManagerURL];
    [v8 openURL:v9 options:MEMORY[0x1E695E0F8] completionHandler:0];

    goto LABEL_5;
  }

  if (a4)
  {
LABEL_5:
    if (a5)
    {
      goto LABEL_7;
    }

    goto LABEL_6;
  }

  v10 = [v11 autoFillController];
  [v10 setDidCloseStrongPasswordIntroductionView:1];

LABEL_6:
  [(_SFAutomaticPasswordInputViewController *)self dismissKeyboardPreservingFirstResponderIfNecessary];
LABEL_7:
}

- (void)imageForStrongPasswordIntroductionViewController:(id)a3 completionHandler:(id)a4
{
  v5 = a4;
  v7 = [(_SFAutomaticPasswordInputViewController *)self autoFillContextProvider];
  v6 = [v7 autoFillController];
  [v6 fetchIconForURLWithCompletionHandler:v5];
}

- (void)strongPasswordIntroductionViewController:(id)a3 shouldFillPasswordWithFormat:(unint64_t)a4
{
  v5 = [(_SFAutomaticPasswordInputViewController *)self autoFillContextProvider:a3];
  v4 = [v5 autoFillController];
  [v4 generateAndFillStrongPassword];
}

- (id)strongPasswordIntroductionViewController:(id)a3 automaticStrongPasswordWithFormat:(unint64_t)a4
{
  v6 = [(_SFAutomaticPasswordInputViewController *)self autoFillContextProvider];
  v7 = v6;
  if (a4 == 1)
  {
    v8 = [v6 alphanumericStrongPassword];
  }

  else
  {
    if (a4)
    {
      goto LABEL_6;
    }

    v8 = [v6 defaultStrongPassword];
  }

  v4 = v8;
LABEL_6:

  return v4;
}

- (void)strongPasswordIntroductionViewControllerDidFinishIntroduction:(id)a3
{
  v4 = [(_SFAutomaticPasswordInputViewController *)self autoFillContextProvider];
  v3 = [v4 autoFillController];
  [v3 reloadFirstResponderInputViews];
}

- (void)strongPasswordIntroductionViewControllerShowOtherPasswords:(id)a3
{
  v4 = [(_SFAutomaticPasswordInputViewController *)self autoFillContextProvider];
  v3 = [v4 autoFillController];
  [v3 userDidSelectShowMorePasswords];
}

- (void)strongPasswordIntroductionViewControllerShowKeyboard:(id)a3
{
  v4 = [(_SFAutomaticPasswordInputViewController *)self autoFillContextProvider];
  v3 = [v4 autoFillController];
  [v3 userDidSelectUseKeyboard];
}

- (void)streamlinedStrongPasswordViewController:(id)a3 shouldFillStrongPasswordWithFormat:(unint64_t)a4
{
  v5 = [(UIInputViewController *)self textDocumentProxy:a3];
  [v5 insertText:self->_password];

  [(_SFAutomaticPasswordInputViewController *)self _postButtonPressedNotificationForButton:0];

  [(_SFAutomaticPasswordInputViewController *)self dismissKeyboardPreservingFirstResponderIfNecessary];
}

- (void)streamlinedStrongPasswordViewControllerDeclinedStrongPassword:(id)a3
{
  [(_SFAutomaticPasswordInputViewController *)self _postButtonPressedNotificationForButton:1];
  v4 = [MEMORY[0x1E69C8810] sharedLogger];
  [v4 didChooseCustomPassword];

  [(UIInputViewController *)self advanceToNextInputMode];
}

- (_SFAutoFillContextProviding)autoFillContextProvider
{
  WeakRetained = objc_loadWeakRetained(&self->_autoFillContextProvider);

  return WeakRetained;
}

@end