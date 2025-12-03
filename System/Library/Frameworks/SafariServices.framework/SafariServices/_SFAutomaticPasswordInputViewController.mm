@interface _SFAutomaticPasswordInputViewController
+ (void)_inputViewControllerWithAutoFillContext:(id)context passwordRules:(id)rules overrideApplicationIdentifier:(id)identifier completion:(id)completion;
- (CGSize)_currentKeyboardSize;
- (CGSize)intrinsicContentSizeForInputView:(id)view;
- (_SFAutoFillContextProviding)autoFillContextProvider;
- (_SFAutomaticPasswordInputViewController)initWithPassword:(id)password keyboardType:(int64_t)type;
- (id)_editingStrongPasswordInformationViewControllerIfNeeded;
- (id)strongPasswordIntroductionViewController:(id)controller automaticStrongPasswordWithFormat:(unint64_t)format;
- (id)strongPasswordIntroductionViewControllerIfNeeded;
- (void)_postButtonPressedNotificationForButton:(int64_t)button;
- (void)_postContextProviderRequiredNotificationIfNeeded;
- (void)_updateKeyboardHeight;
- (void)_updateKeyboardMetricsAndInterfaceOrientationIfNeeded;
- (void)dismissKeyboardPreservingFirstResponderIfNecessary;
- (void)imageForStrongPasswordIntroductionViewController:(id)controller completionHandler:(id)handler;
- (void)streamlinedStrongPasswordViewController:(id)controller shouldFillStrongPasswordWithFormat:(unint64_t)format;
- (void)streamlinedStrongPasswordViewControllerDeclinedStrongPassword:(id)password;
- (void)strongPasswordIntroductionViewController:(id)controller shouldFillPasswordWithFormat:(unint64_t)format;
- (void)strongPasswordIntroductionViewController:(id)controller shouldPerformAction:(unint64_t)action willShowAdditionalView:(BOOL)view;
- (void)strongPasswordIntroductionViewControllerDidFinishIntroduction:(id)introduction;
- (void)strongPasswordIntroductionViewControllerShowKeyboard:(id)keyboard;
- (void)strongPasswordIntroductionViewControllerShowOtherPasswords:(id)passwords;
- (void)viewDidDisappear:(BOOL)disappear;
- (void)viewDidLoad;
- (void)viewIsAppearing:(BOOL)appearing;
- (void)viewWillAppear:(BOOL)appear;
- (void)viewWillTransitionToSize:(CGSize)size withTransitionCoordinator:(id)coordinator;
@end

@implementation _SFAutomaticPasswordInputViewController

+ (void)_inputViewControllerWithAutoFillContext:(id)context passwordRules:(id)rules overrideApplicationIdentifier:(id)identifier completion:(id)completion
{
  contextCopy = context;
  rulesCopy = rules;
  identifierCopy = identifier;
  completionCopy = completion;
  if (completionCopy)
  {
    if (contextCopy)
    {
      if ([MEMORY[0x1E69C8880] isPasswordsAppInstalled])
      {
        completionCopy[2](completionCopy, 0);
        goto LABEL_12;
      }

      v15 = [contextCopy objectForKeyedSubscript:@"_automaticPasswordKeyboard"];
      if (v15)
      {
        v16 = v15;
        v14 = [[_SFAutomaticPasswordInputViewController alloc] initWithPassword:0 keyboardType:0];

        if (v14)
        {
          v17 = [contextCopy objectForKeyedSubscript:@"strongPasswordAdditionalContext"];
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

      (completionCopy)[2](completionCopy, v14);
    }

    else
    {
      v13 = objc_alloc_init(MEMORY[0x1E69C8DC0]);
      v21[0] = MEMORY[0x1E69E9820];
      v21[1] = 3221225472;
      v21[2] = __138___SFAutomaticPasswordInputViewController__inputViewControllerWithAutoFillContext_passwordRules_overrideApplicationIdentifier_completion___block_invoke;
      v21[3] = &unk_1E8493A80;
      v22 = v13;
      v23 = identifierCopy;
      v24 = completionCopy;
      v14 = v13;
      [(_SFAutomaticPasswordInputViewController *)v14 getAutomaticStrongPasswordForAppWithPasswordRules:rulesCopy confirmPasswordRules:0 overrideApplicationIdentifier:v23 completion:v21];
    }
  }

LABEL_12:
}

- (_SFAutomaticPasswordInputViewController)initWithPassword:(id)password keyboardType:(int64_t)type
{
  passwordCopy = password;
  v12.receiver = self;
  v12.super_class = _SFAutomaticPasswordInputViewController;
  v7 = [(UIInputViewController *)&v12 initWithNibName:0 bundle:0];
  if (v7)
  {
    v8 = [passwordCopy copy];
    password = v7->_password;
    v7->_password = v8;

    v7->_keyboardType = type;
    v10 = v7;
  }

  return v7;
}

- (void)_updateKeyboardMetricsAndInterfaceOrientationIfNeeded
{
  interfaceOrientation = [*MEMORY[0x1E69DDA98] interfaceOrientation];
  if (interfaceOrientation != self->_currentInterfaceOrientation)
  {
    self->_currentInterfaceOrientation = interfaceOrientation;
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
  strongPasswordIntroductionViewControllerIfNeeded = [(_SFAutomaticPasswordInputViewController *)self strongPasswordIntroductionViewControllerIfNeeded];
  if (strongPasswordIntroductionViewControllerIfNeeded)
  {
    [(_SFAutomaticPasswordInputViewController *)self addChildViewController:strongPasswordIntroductionViewControllerIfNeeded];
    v4 = [SFAutoFillStrongPasswordContainerInputView alloc];
    inputView = [(UIInputViewController *)self inputView];
    inputViewStyle = [inputView inputViewStyle];
    view = [strongPasswordIntroductionViewControllerIfNeeded view];
    v8 = [(SFAutoFillStrongPasswordContainerInputView *)v4 initWithInputViewStyle:inputViewStyle containingView:view];

    [(SFAutoFillStrongPasswordContainerInputView *)v8 setInputViewSizing:self];
    [(UIInputViewController *)self setInputView:v8];
    heightAnchor = [(SFAutoFillStrongPasswordContainerInputView *)v8 heightAnchor];
    v10 = [heightAnchor constraintEqualToConstant:100.0];
    heightConstraint = self->_heightConstraint;
    self->_heightConstraint = v10;

    [(NSLayoutConstraint *)self->_heightConstraint setActive:1];
    [strongPasswordIntroductionViewControllerIfNeeded didMoveToParentViewController:self];
    v12 = strongPasswordIntroductionViewControllerIfNeeded;
    passwordManagerIntroductionViewController = self->_passwordManagerIntroductionViewController;
    self->_passwordManagerIntroductionViewController = v12;
  }

  else
  {
    initForApp = [objc_alloc(MEMORY[0x1E69BC7E8]) initForApp];
    [(_SFAutomaticPasswordInputViewController *)self addChildViewController:initForApp];
    v15 = [SFAutoFillStrongPasswordContainerInputView alloc];
    inputView2 = [(UIInputViewController *)self inputView];
    inputViewStyle2 = [inputView2 inputViewStyle];
    view2 = [(UIViewController *)initForApp view];
    v8 = [(SFAutoFillStrongPasswordContainerInputView *)v15 initWithInputViewStyle:inputViewStyle2 containingView:view2];

    [(SFAutoFillStrongPasswordContainerInputView *)v8 setInputViewSizing:self];
    [(UIInputView *)v8 setAllowsSelfSizing:1];
    [(UIInputViewController *)self setInputView:v8];
    heightAnchor2 = [(SFAutoFillStrongPasswordContainerInputView *)v8 heightAnchor];
    v20 = [heightAnchor2 constraintEqualToConstant:100.0];
    v21 = self->_heightConstraint;
    self->_heightConstraint = v20;

    [(NSLayoutConstraint *)self->_heightConstraint setActive:1];
    [(UIViewController *)initForApp didMoveToParentViewController:self];
    [(UIViewController *)initForApp setDelegate:self];
    passwordManagerIntroductionViewController = self->_strongPasswordViewController;
    self->_strongPasswordViewController = initForApp;
  }
}

- (void)_postButtonPressedNotificationForButton:(int64_t)button
{
  v9[2] = *MEMORY[0x1E69E9840];
  if (!self->_autoFillContextProtocolObjectUUID)
  {
    self->_autoFillContextProtocolObjectUUID = &stru_1F4FE9E38;
  }

  defaultCenter = [MEMORY[0x1E696AD88] defaultCenter];
  v8[0] = @"_SFAutomaticPasswordInputViewNotificationPressedButtonUserInfoKey";
  v6 = [MEMORY[0x1E696AD98] numberWithInteger:button];
  v8[1] = @"SFAutoFillContextProviderIdentifierUserInfoKey";
  v9[0] = v6;
  v9[1] = self->_autoFillContextProtocolObjectUUID;
  v7 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v9 forKeys:v8 count:2];
  [defaultCenter postNotificationName:@"_SFAutomaticPasswordInputViewButtonPressedNotification" object:self userInfo:v7];
}

- (void)viewWillAppear:(BOOL)appear
{
  v7.receiver = self;
  v7.super_class = _SFAutomaticPasswordInputViewController;
  [(_SFAutomaticPasswordInputViewController *)&v7 viewWillAppear:appear];
  [(_SFAutomaticPasswordInputViewController *)self _updateKeyboardHeight];
  defaultCenter = [MEMORY[0x1E696AD88] defaultCenter];
  [defaultCenter addObserver:self selector:sel__dismissKeyboard_ name:@"_SFAutomaticPasswordDismissedByUser" object:0];

  if ([MEMORY[0x1E69C8880] isPasswordsAppInstalled])
  {
    if (self->_passwordManagerIntroductionViewController)
    {
      [(_SFAutomaticPasswordInputViewController *)self _postContextProviderRequiredNotificationIfNeeded];
      autoFillContextProvider = [(_SFAutomaticPasswordInputViewController *)self autoFillContextProvider];
      autoFillController = [autoFillContextProvider autoFillController];
      [autoFillController hideInputAccessoryView];
    }
  }
}

- (void)viewIsAppearing:(BOOL)appearing
{
  v4.receiver = self;
  v4.super_class = _SFAutomaticPasswordInputViewController;
  [(_SFAutomaticPasswordInputViewController *)&v4 viewIsAppearing:appearing];
  [(_SFAutomaticPasswordInputViewController *)self _updateKeyboardHeight];
}

- (void)viewDidDisappear:(BOOL)disappear
{
  v4.receiver = self;
  v4.super_class = _SFAutomaticPasswordInputViewController;
  [(_SFAutomaticPasswordInputViewController *)&v4 viewDidDisappear:disappear];
  defaultCenter = [MEMORY[0x1E696AD88] defaultCenter];
  [defaultCenter removeObserver:@"_SFAutomaticPasswordDismissedByUser"];
}

- (void)viewWillTransitionToSize:(CGSize)size withTransitionCoordinator:(id)coordinator
{
  v5.receiver = self;
  v5.super_class = _SFAutomaticPasswordInputViewController;
  [(_SFAutomaticPasswordInputViewController *)&v5 viewWillTransitionToSize:coordinator withTransitionCoordinator:size.width, size.height];
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
    view = [(UIViewController *)passwordManagerIntroductionViewController view];
    [view setNeedsUpdateConstraints];

    view2 = [(UIViewController *)*p_passwordManagerIntroductionViewController view];
    [view2 layoutIfNeeded];

    view3 = [(UIViewController *)*p_passwordManagerIntroductionViewController view];
    LODWORD(v12) = 1144750080;
    LODWORD(v13) = 1112014848;
    [view3 systemLayoutSizeFittingSize:v6 withHorizontalFittingPriority:1.79769313e308 verticalFittingPriority:{v12, v13}];
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
  autoFillContextProvider = [(_SFAutomaticPasswordInputViewController *)self autoFillContextProvider];
  autoFillFormType = [autoFillContextProvider autoFillFormType];
  autoFillController = [autoFillContextProvider autoFillController];
  [autoFillController hideInputAccessoryView];

  if (autoFillFormType == 3)
  {
    if ([MEMORY[0x1E69BC7D8] shouldShowLoginIntroduction])
    {
      v10 = 0;
      v9 = MEMORY[0x1E69BC7D8];
      goto LABEL_14;
    }
  }

  else if (autoFillFormType == 4)
  {
    shouldShowLoginIntroduction = [MEMORY[0x1E69BC7D8] shouldShowLoginIntroduction];
    v9 = MEMORY[0x1E69BC7D8];
    if (shouldShowLoginIntroduction)
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
  autoFillContextProvider = [(_SFAutomaticPasswordInputViewController *)self autoFillContextProvider];
  v4 = [autoFillContextProvider url];
  v5 = objc_alloc(MEMORY[0x1E69BC7D0]);
  host = [v4 host];
  safari_highLevelDomainForPasswordManager = [host safari_highLevelDomainForPasswordManager];
  v8 = [v5 initWithWebsiteTitle:safari_highLevelDomainForPasswordManager url:v4];

  [v8 setDelegate:self];

  return v8;
}

- (CGSize)intrinsicContentSizeForInputView:(id)view
{
  [(_SFAutomaticPasswordInputViewController *)self _updateKeyboardMetricsAndInterfaceOrientationIfNeeded];

  [(_SFAutomaticPasswordInputViewController *)self _currentKeyboardSize];
  result.height = v5;
  result.width = v4;
  return result;
}

- (void)dismissKeyboardPreservingFirstResponderIfNecessary
{
  activeInstance = [MEMORY[0x1E69DCBE0] activeInstance];
  inputDelegate = [activeInstance inputDelegate];

  if (objc_opt_respondsToSelector())
  {
    [inputDelegate accessoryDone];
  }

  else
  {
    [(UIInputViewController *)self dismissKeyboard];
  }

  if (!self->_keyboardType && [MEMORY[0x1E69C8880] isPasswordsAppInstalled])
  {
    autoFillContextProvider = [(_SFAutomaticPasswordInputViewController *)self autoFillContextProvider];
    [autoFillContextProvider makeStrongPasswordFieldViewable:0];
  }
}

- (void)_postContextProviderRequiredNotificationIfNeeded
{
  v8[2] = *MEMORY[0x1E69E9840];
  if (!self->_keyboardType && !self->_hasPostedContextProviderRequiredNotification)
  {
    if (self->_autoFillContextProtocolObjectUUID)
    {
      defaultCenter = [MEMORY[0x1E696AD88] defaultCenter];
      v7[0] = @"SFAutomaticPasswordInputViewControllerKey";
      v7[1] = @"SFAutoFillContextProviderIdentifierUserInfoKey";
      autoFillContextProtocolObjectUUID = self->_autoFillContextProtocolObjectUUID;
      v8[0] = self;
      v8[1] = autoFillContextProtocolObjectUUID;
      v5 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v8 forKeys:v7 count:2];
      [defaultCenter postNotificationName:@"SFAutomaticPasswordInputViewAutoFillContextProviderRequiredNotification" object:self userInfo:v5];

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

- (void)strongPasswordIntroductionViewController:(id)controller shouldPerformAction:(unint64_t)action willShowAdditionalView:(BOOL)view
{
  [(_SFAutomaticPasswordInputViewController *)self _postContextProviderRequiredNotificationIfNeeded];
  autoFillContextProvider = [(_SFAutomaticPasswordInputViewController *)self autoFillContextProvider];
  if (action - 2 < 2)
  {
    v8 = *MEMORY[0x1E69DDA98];
    passwordManagerURL = [MEMORY[0x1E69C8978] passwordManagerURL];
    [v8 openURL:passwordManagerURL options:MEMORY[0x1E695E0F8] completionHandler:0];

    goto LABEL_5;
  }

  if (action)
  {
LABEL_5:
    if (view)
    {
      goto LABEL_7;
    }

    goto LABEL_6;
  }

  autoFillController = [autoFillContextProvider autoFillController];
  [autoFillController setDidCloseStrongPasswordIntroductionView:1];

LABEL_6:
  [(_SFAutomaticPasswordInputViewController *)self dismissKeyboardPreservingFirstResponderIfNecessary];
LABEL_7:
}

- (void)imageForStrongPasswordIntroductionViewController:(id)controller completionHandler:(id)handler
{
  handlerCopy = handler;
  autoFillContextProvider = [(_SFAutomaticPasswordInputViewController *)self autoFillContextProvider];
  autoFillController = [autoFillContextProvider autoFillController];
  [autoFillController fetchIconForURLWithCompletionHandler:handlerCopy];
}

- (void)strongPasswordIntroductionViewController:(id)controller shouldFillPasswordWithFormat:(unint64_t)format
{
  v5 = [(_SFAutomaticPasswordInputViewController *)self autoFillContextProvider:controller];
  autoFillController = [v5 autoFillController];
  [autoFillController generateAndFillStrongPassword];
}

- (id)strongPasswordIntroductionViewController:(id)controller automaticStrongPasswordWithFormat:(unint64_t)format
{
  autoFillContextProvider = [(_SFAutomaticPasswordInputViewController *)self autoFillContextProvider];
  v7 = autoFillContextProvider;
  if (format == 1)
  {
    alphanumericStrongPassword = [autoFillContextProvider alphanumericStrongPassword];
  }

  else
  {
    if (format)
    {
      goto LABEL_6;
    }

    alphanumericStrongPassword = [autoFillContextProvider defaultStrongPassword];
  }

  v4 = alphanumericStrongPassword;
LABEL_6:

  return v4;
}

- (void)strongPasswordIntroductionViewControllerDidFinishIntroduction:(id)introduction
{
  autoFillContextProvider = [(_SFAutomaticPasswordInputViewController *)self autoFillContextProvider];
  autoFillController = [autoFillContextProvider autoFillController];
  [autoFillController reloadFirstResponderInputViews];
}

- (void)strongPasswordIntroductionViewControllerShowOtherPasswords:(id)passwords
{
  autoFillContextProvider = [(_SFAutomaticPasswordInputViewController *)self autoFillContextProvider];
  autoFillController = [autoFillContextProvider autoFillController];
  [autoFillController userDidSelectShowMorePasswords];
}

- (void)strongPasswordIntroductionViewControllerShowKeyboard:(id)keyboard
{
  autoFillContextProvider = [(_SFAutomaticPasswordInputViewController *)self autoFillContextProvider];
  autoFillController = [autoFillContextProvider autoFillController];
  [autoFillController userDidSelectUseKeyboard];
}

- (void)streamlinedStrongPasswordViewController:(id)controller shouldFillStrongPasswordWithFormat:(unint64_t)format
{
  v5 = [(UIInputViewController *)self textDocumentProxy:controller];
  [v5 insertText:self->_password];

  [(_SFAutomaticPasswordInputViewController *)self _postButtonPressedNotificationForButton:0];

  [(_SFAutomaticPasswordInputViewController *)self dismissKeyboardPreservingFirstResponderIfNecessary];
}

- (void)streamlinedStrongPasswordViewControllerDeclinedStrongPassword:(id)password
{
  [(_SFAutomaticPasswordInputViewController *)self _postButtonPressedNotificationForButton:1];
  mEMORY[0x1E69C8810] = [MEMORY[0x1E69C8810] sharedLogger];
  [mEMORY[0x1E69C8810] didChooseCustomPassword];

  [(UIInputViewController *)self advanceToNextInputMode];
}

- (_SFAutoFillContextProviding)autoFillContextProvider
{
  WeakRetained = objc_loadWeakRetained(&self->_autoFillContextProvider);

  return WeakRetained;
}

@end