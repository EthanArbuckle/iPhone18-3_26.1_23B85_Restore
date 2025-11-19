@interface ASPasswordAuthenticationPaneViewController
- (ASPasswordAuthenticationPaneViewController)initWithConfiguration:(id)a3;
- (ASPasswordAuthenticationPaneViewControllerDelegate)authenticationDelegate;
- (BOOL)becomeFirstResponder;
- (BOOL)canBecomeFirstResponder;
- (BOOL)resignFirstResponder;
- (BOOL)textFieldShouldReturn:(id)a3;
- (double)_intrinsicContentHeight;
- (id)_secureTextFieldPlaceholderText;
- (id)_titleLabelFont;
- (id)_titleLabelTextColor;
- (void)_addCenteredHeaderView:(id)a3 margins:(double)a4 height:(double)a5 customSpacingAfter:(double)a6;
- (void)_completeManualPasswordCredentialEntry;
- (void)_createViews;
- (void)_keyboardHeightDidChange;
- (void)_keyboardWillShow:(id)a3;
- (void)_setConstraints;
- (void)_setUpHeader;
- (void)_setUpUsernameLabel;
- (void)_signInButtonTapped;
- (void)_textFieldChanged:(id)a3;
- (void)updateWithConfiguration:(id)a3;
- (void)viewDidLoad;
@end

@implementation ASPasswordAuthenticationPaneViewController

- (ASPasswordAuthenticationPaneViewController)initWithConfiguration:(id)a3
{
  v5 = a3;
  v10.receiver = self;
  v10.super_class = ASPasswordAuthenticationPaneViewController;
  v6 = [(ASCredentialRequestPaneViewController *)&v10 initRequiringTableView:0];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(v6 + 134, a3);
    v8 = v7;
  }

  return v7;
}

- (void)viewDidLoad
{
  v5.receiver = self;
  v5.super_class = ASPasswordAuthenticationPaneViewController;
  [(ASCredentialRequestPaneViewController *)&v5 viewDidLoad];
  [(ASPasswordAuthenticationPaneViewController *)self _createViews];
  [(ASPasswordAuthenticationPaneViewController *)self _setConstraints];
  [(ASCredentialRequestPaneViewController *)self sizeToFitPaneContent];
  v3 = [MEMORY[0x1E696AD88] defaultCenter];
  [v3 addObserver:self selector:sel__keyboardWillShow_ name:*MEMORY[0x1E69DE080] object:0];

  v4 = [MEMORY[0x1E696AD88] defaultCenter];
  [v4 addObserver:self selector:sel__keyboardWillHide_ name:*MEMORY[0x1E69DE078] object:0];
}

- (void)updateWithConfiguration:(id)a3
{
  v4 = [a3 headerConfiguration];
  headerConfiguration = self->_headerConfiguration;
  self->_headerConfiguration = v4;

  v6 = [(ASCredentialRequestPaneViewController *)self headerPaneContext];
  [v6 updateHeaderWithConfiguration:self->_headerConfiguration];

  secureTextField = self->_secureTextField;

  [(UITextField *)secureTextField as_shakeHorizontally];
}

- (void)_createViews
{
  v31[1] = *MEMORY[0x1E69E9840];
  v3 = [MEMORY[0x1E69DC888] clearColor];
  v4 = [(ASPasswordAuthenticationPaneViewController *)self view];
  [v4 setBackgroundColor:v3];

  if ([(ASPasswordAuthenticationPaneViewControllerConfiguration *)self->_configuration persona]== 3)
  {
    [(ASPasswordAuthenticationPaneViewController *)self _setUpUsernameLabel];
  }

  v5 = [_ASInsetTextField alloc];
  v6 = *MEMORY[0x1E695F058];
  v7 = *(MEMORY[0x1E695F058] + 8);
  v8 = *(MEMORY[0x1E695F058] + 16);
  v9 = *(MEMORY[0x1E695F058] + 24);
  v10 = [(_ASInsetTextField *)v5 initWithFrame:*MEMORY[0x1E695F058], v7, v8, v9];
  [(_ASInsetTextField *)v10 setTranslatesAutoresizingMaskIntoConstraints:0];
  v11 = [MEMORY[0x1E69DC888] colorWithRed:0.0156862745 green:0.0156862745 blue:0.0588235294 alpha:0.15];
  [(_ASInsetTextField *)v10 setBackgroundColor:v11];

  v12 = [(_ASInsetTextField *)v10 layer];
  [v12 setCornerRadius:8.0];

  v13 = [(ASPasswordAuthenticationPaneViewController *)self _secureTextFieldPlaceholderText];
  [(_ASInsetTextField *)v10 setPlaceholder:v13];

  [(_ASInsetTextField *)v10 setSecureTextEntry:1];
  [(_ASInsetTextField *)v10 setReturnKeyType:9];
  [(_ASInsetTextField *)v10 setEnablesReturnKeyAutomatically:1];
  [(_ASInsetTextField *)v10 setTextContentType:*MEMORY[0x1E69DE528]];
  [(_ASInsetTextField *)v10 setDelegate:self];
  v14 = +[ASViewServiceInterfaceUtilities headerMessageFont];
  [(_ASInsetTextField *)v10 setFont:v14];

  if ([(ASPasswordAuthenticationPaneViewControllerConfiguration *)self->_configuration persona]== 3)
  {
    [(_ASInsetTextField *)v10 addTarget:self action:sel__textFieldChanged_ forControlEvents:0x20000];
  }

  objc_storeStrong(&self->_secureTextField, v10);
  v15 = [[ASCredentialRequestButtonContinue alloc] initWithFrame:v6, v7, v8, v9];
  [(ASCredentialRequestButtonContinue *)v15 setTranslatesAutoresizingMaskIntoConstraints:0];
  [(ASCredentialRequestButton *)v15 addTarget:self action:sel__signInButtonTapped];
  v16 = [(ASPasswordAuthenticationPaneViewControllerConfiguration *)self->_configuration persona];
  if (v16 >= 3)
  {
    if (v16 == 3)
    {
      v19 = _WBSLocalizedString();
      [(ASCredentialRequestButton *)v15 setButtonText:v19];

      [(ASCredentialRequestButtonContinue *)v15 setEnabled:0];
    }
  }

  else
  {
    v18 = _WBSLocalizedString();
    [(ASCredentialRequestButton *)v15 setButtonText:v18];
  }

  LODWORD(v17) = 1148846080;
  [(ASCredentialRequestButtonContinue *)v15 setContentCompressionResistancePriority:0 forAxis:v17];
  objc_storeStrong(&self->_signInButton, v15);
  [(ASPasswordAuthenticationPaneViewController *)self _setUpHeader];
  if ([(ASPasswordAuthenticationPaneViewControllerConfiguration *)self->_configuration persona]== 3)
  {
    usernameField = self->_usernameField;
    [(ASPasswordAuthenticationPaneViewController *)self _secureTextFieldInsetMargin];
    [ASPasswordAuthenticationPaneViewController _addCenteredHeaderView:"_addCenteredHeaderView:margins:height:customSpacingAfter:" margins:usernameField height:? customSpacingAfter:?];
  }

  secureTextField = self->_secureTextField;
  [(ASPasswordAuthenticationPaneViewController *)self _secureTextFieldInsetMargin];
  [ASPasswordAuthenticationPaneViewController _addCenteredHeaderView:"_addCenteredHeaderView:margins:height:customSpacingAfter:" margins:secureTextField height:? customSpacingAfter:?];
  signInButton = self->_signInButton;
  [(ASPasswordAuthenticationPaneViewController *)self _signInButtonInsetMargin];
  v24 = v23;
  +[ASViewServiceInterfaceUtilities continueButtonHeight];
  [(ASPasswordAuthenticationPaneViewController *)self _addCenteredHeaderView:signInButton margins:v24 height:v25 customSpacingAfter:32.0];
  v26 = [(ASCredentialRequestPaneViewController *)self cancelBarButtonItem];
  v31[0] = v26;
  v27 = [MEMORY[0x1E695DEC8] arrayWithObjects:v31 count:1];
  v28 = [(UIViewController *)self as_navigationItem];
  [v28 setRightBarButtonItems:v27];

  v29 = [(ASCredentialRequestPaneViewController *)self headerPaneContext];
  [v29 addEmptyViewWithSpacing:0.0];

  v30 = *MEMORY[0x1E69E9840];
}

- (void)_setConstraints
{
  v3 = [(ASPasswordAuthenticationPaneViewController *)self view];
  v4 = [v3 bottomAnchor];
  v5 = [(ASCredentialRequestPaneViewController *)self paneHeaderStackView];
  v6 = [v5 superview];
  v7 = [v6 bottomAnchor];
  v8 = [v4 constraintGreaterThanOrEqualToAnchor:v7];
  paneHeaderStackViewBottomKeyboardConstraint = self->_paneHeaderStackViewBottomKeyboardConstraint;
  self->_paneHeaderStackViewBottomKeyboardConstraint = v8;

  LODWORD(v10) = 1144766464;
  [(NSLayoutConstraint *)self->_paneHeaderStackViewBottomKeyboardConstraint setPriority:v10];
  v11 = self->_paneHeaderStackViewBottomKeyboardConstraint;

  [(NSLayoutConstraint *)v11 setActive:1];
}

- (void)_addCenteredHeaderView:(id)a3 margins:(double)a4 height:(double)a5 customSpacingAfter:(double)a6
{
  v33[5] = *MEMORY[0x1E69E9840];
  v10 = a3;
  v32 = [(ASCredentialRequestPaneViewController *)self paneHeaderStackView];
  v11 = objc_alloc_init(MEMORY[0x1E69DD250]);
  [v11 setTranslatesAutoresizingMaskIntoConstraints:0];
  [v11 addSubview:v10];
  [v32 addArrangedSubview:v11];
  v25 = MEMORY[0x1E696ACD8];
  v31 = [v10 centerXAnchor];
  v30 = [v11 centerXAnchor];
  v29 = [v31 constraintEqualToAnchor:v30];
  v33[0] = v29;
  v28 = [v10 centerYAnchor];
  v27 = [v11 centerYAnchor];
  v26 = [v28 constraintEqualToAnchor:v27];
  v33[1] = v26;
  v12 = [v11 widthAnchor];
  v13 = [v10 widthAnchor];
  v14 = [v12 constraintEqualToAnchor:v13 constant:a4 + a4];
  v33[2] = v14;
  v15 = [v11 heightAnchor];
  v16 = [v10 heightAnchor];
  v17 = [v15 constraintEqualToAnchor:v16];
  v33[3] = v17;
  v18 = [v10 heightAnchor];

  v19 = [v18 constraintEqualToConstant:a5];
  v33[4] = v19;
  v20 = [MEMORY[0x1E695DEC8] arrayWithObjects:v33 count:5];
  [v25 activateConstraints:v20];

  v21 = [v11 widthAnchor];
  v22 = [v32 widthAnchor];
  v23 = [v21 constraintEqualToAnchor:v22];
  [v23 setActive:1];

  [v32 setCustomSpacing:v11 afterView:a6];
  v24 = *MEMORY[0x1E69E9840];
}

- (void)_setUpHeader
{
  v3 = [(ASPasswordAuthenticationPaneViewControllerConfiguration *)self->_configuration headerConfiguration];
  headerConfiguration = self->_headerConfiguration;
  self->_headerConfiguration = v3;

  v5 = [(ASCredentialRequestPaneViewController *)self headerPaneContext];
  [v5 addHeaderWithConfiguration:self->_headerConfiguration];
}

- (void)_setUpUsernameLabel
{
  v3 = [_ASInsetTextField alloc];
  v4 = [(_ASInsetTextField *)v3 initWithFrame:*MEMORY[0x1E695F058], *(MEMORY[0x1E695F058] + 8), *(MEMORY[0x1E695F058] + 16), *(MEMORY[0x1E695F058] + 24)];
  [(UITextField *)v4 setTranslatesAutoresizingMaskIntoConstraints:0];
  v5 = [MEMORY[0x1E69DC888] colorWithRed:0.0156862745 green:0.0156862745 blue:0.0588235294 alpha:0.15];
  [(UITextField *)v4 setBackgroundColor:v5];

  v6 = [MEMORY[0x1E69DB878] defaultFontForTextStyle:*MEMORY[0x1E69DDD78]];
  [(UITextField *)v4 setFont:v6];

  v7 = [(UITextField *)v4 layer];
  [v7 setCornerRadius:8.0];

  v8 = _WBSLocalizedString();
  [(UITextField *)v4 setPlaceholder:v8];

  [(UITextField *)v4 setReturnKeyType:4];
  [(UITextField *)v4 setEnablesReturnKeyAutomatically:1];
  [(UITextField *)v4 setTextContentType:*MEMORY[0x1E69DE588]];
  [(UITextField *)v4 setDelegate:self];
  [(UITextField *)v4 addTarget:self action:sel__textFieldChanged_ forControlEvents:0x20000];
  usernameField = self->_usernameField;
  self->_usernameField = v4;
}

- (id)_secureTextFieldPlaceholderText
{
  if ([(ASPasswordAuthenticationPaneViewControllerConfiguration *)self->_configuration persona]< 4)
  {
    v2 = _WBSLocalizedString();
  }

  return v2;
}

- (id)_titleLabelFont
{
  v2 = [(ASPasswordAuthenticationPaneViewControllerConfiguration *)self->_configuration persona];
  if (v2 >= 3)
  {
    if (v2 == 3)
    {
      v2 = +[ASViewServiceInterfaceUtilities headerTitleFont];
    }
  }

  else
  {
    v2 = [MEMORY[0x1E69DB878] _preferredFontForTextStyle:*MEMORY[0x1E69DDDC0] weight:*MEMORY[0x1E69DB958]];
  }

  return v2;
}

- (id)_titleLabelTextColor
{
  v2 = [(ASPasswordAuthenticationPaneViewControllerConfiguration *)self->_configuration persona];
  if (v2 >= 3)
  {
    if (v2 == 3)
    {
      v2 = +[ASViewServiceInterfaceUtilities headerTitleColor];
    }
  }

  else
  {
    v2 = [MEMORY[0x1E69DC888] labelColor];
  }

  return v2;
}

- (void)_signInButtonTapped
{
  if ([(ASPasswordAuthenticationPaneViewControllerConfiguration *)self->_configuration persona]== 3)
  {

    [(ASPasswordAuthenticationPaneViewController *)self _completeManualPasswordCredentialEntry];
    return;
  }

  obj = [(UITextField *)self->_secureTextField text];
  if ([(ASPasswordAuthenticationPaneViewControllerConfiguration *)self->_configuration persona]== 2)
  {
    if (!self->_firstPINForNewPINEntry)
    {
      objc_storeStrong(&self->_firstPINForNewPINEntry, obj);
      v4 = _WBSLocalizedString();
      [(ASCredentialRequestPaneHeaderConfiguration *)self->_headerConfiguration setSubtitle:v4];

      [(UITextField *)self->_secureTextField setText:&stru_1F28DE020];
      goto LABEL_11;
    }

    if (([obj isEqualToString:?] & 1) == 0)
    {
      v5 = _WBSLocalizedString();
      [(ASCredentialRequestPaneHeaderConfiguration *)self->_headerConfiguration setSubtitle:v5];

      [(UITextField *)self->_secureTextField setText:&stru_1F28DE020];
      firstPINForNewPINEntry = self->_firstPINForNewPINEntry;
      self->_firstPINForNewPINEntry = 0;

      goto LABEL_11;
    }
  }

  WeakRetained = objc_loadWeakRetained(&self->_authenticationDelegate);
  [WeakRetained passwordAuthenticationViewController:self completedWithUserEnteredPIN:obj];

LABEL_11:
}

- (double)_intrinsicContentHeight
{
  v3 = [(ASCredentialRequestPaneViewController *)self paneHeaderStackView];
  [v3 bounds];
  v5 = v4;
  LODWORD(v4) = 1148846080;
  LODWORD(v6) = 1112014848;
  [v3 systemLayoutSizeFittingSize:v5 withHorizontalFittingPriority:0.0 verticalFittingPriority:{v4, v6}];
  v8 = v7 + self->_keyboardHeight;

  return v8;
}

- (void)_textFieldChanged:(id)a3
{
  v5 = [(UITextField *)self->_secureTextField text];
  if ([v5 length])
  {
    v4 = [(UITextField *)self->_usernameField text];
    -[ASCredentialRequestButtonContinue setEnabled:](self->_signInButton, "setEnabled:", [v4 length] != 0);
  }

  else
  {
    [(ASCredentialRequestButtonContinue *)self->_signInButton setEnabled:0];
  }
}

- (void)_completeManualPasswordCredentialEntry
{
  [(UITextField *)self->_usernameField setEnabled:0];
  [(UITextField *)self->_secureTextField setEnabled:0];
  v3 = [(ASPasswordAuthenticationPaneViewControllerConfiguration *)self->_configuration passwordCredentialSite];
  v4 = v3;
  v5 = &stru_1F28DE020;
  if (v3)
  {
    v5 = v3;
  }

  v6 = v5;

  v7 = objc_alloc(MEMORY[0x1E698DFC8]);
  v8 = [(UITextField *)self->_usernameField text];
  v9 = [(UITextField *)self->_secureTextField text];
  v10 = [MEMORY[0x1E695DF00] now];
  v12 = [v7 initWithUser:v8 password:v9 site:v6 creationDate:v10 externalProviderBundleIdentifier:0];

  WeakRetained = objc_loadWeakRetained(&self->_authenticationDelegate);
  [WeakRetained passwordAuthenticationViewController:self completedWithManuallyEnteredPasswordCredential:v12];
}

- (void)_keyboardWillShow:(id)a3
{
  v4 = [a3 userInfo];
  v5 = [v4 objectForKeyedSubscript:*MEMORY[0x1E69DDFA0]];

  [v5 CGRectValue];
  self->_keyboardHeight = CGRectGetHeight(v7);
  [(ASPasswordAuthenticationPaneViewController *)self _keyboardHeightDidChange];
}

- (void)_keyboardHeightDidChange
{
  [(NSLayoutConstraint *)self->_paneHeaderStackViewBottomKeyboardConstraint setConstant:self->_keyboardHeight];

  [(ASCredentialRequestPaneViewController *)self sizeToFitPaneContent];
}

- (BOOL)becomeFirstResponder
{
  v3 = [(ASPasswordAuthenticationPaneViewControllerConfiguration *)self->_configuration persona];
  if (v3 < 3)
  {
    if ([(UITextField *)self->_secureTextField becomeFirstResponder])
    {
      v5 = dispatch_time(0, 20000000);
      block[0] = MEMORY[0x1E69E9820];
      block[1] = 3221225472;
      block[2] = __66__ASPasswordAuthenticationPaneViewController_becomeFirstResponder__block_invoke;
      block[3] = &unk_1E7AF7608;
      block[4] = self;
      dispatch_after(v5, MEMORY[0x1E69E96A0], block);
      v4 = 1;
    }

    else
    {
      v4 = 0;
    }

    return v4 & 1;
  }

  if (v3 != 3)
  {
    return v4 & 1;
  }

  usernameField = self->_usernameField;

  return [(UITextField *)usernameField becomeFirstResponder];
}

void __66__ASPasswordAuthenticationPaneViewController_becomeFirstResponder__block_invoke(uint64_t a1)
{
  if ((UIKeyboardAutomaticIsOnScreen() & 1) == 0)
  {
    *(*(a1 + 32) + 1136) = 1;
    v2 = [MEMORY[0x1E69DCBE0] activeInstance];
    [v2 ejectKeyDown];
  }
}

- (BOOL)resignFirstResponder
{
  v3 = [(ASPasswordAuthenticationPaneViewControllerConfiguration *)self->_configuration persona];
  if (v3 >= 3)
  {
    if (v3 == 3)
    {
      v6.receiver = self;
      v6.super_class = ASPasswordAuthenticationPaneViewController;
      LOBYTE(v3) = [(ASPasswordAuthenticationPaneViewController *)&v6 resignFirstResponder];
    }

    return v3 & 1;
  }

  else
  {
    secureTextField = self->_secureTextField;

    return [(UITextField *)secureTextField resignFirstResponder];
  }
}

- (BOOL)canBecomeFirstResponder
{
  v3 = [(ASPasswordAuthenticationPaneViewControllerConfiguration *)self->_configuration persona];
  if (v3 > 3)
  {
    return 0;
  }

  v4 = *(&self->super.super.super.super.isa + *off_1E7AF8DD0[v3]);

  return [v4 canBecomeFirstResponder];
}

- (BOOL)textFieldShouldReturn:(id)a3
{
  if (self->_usernameField == a3)
  {
    [(UITextField *)self->_secureTextField becomeFirstResponder];
  }

  else
  {
    [(ASPasswordAuthenticationPaneViewController *)self _signInButtonTapped];
  }

  return 0;
}

- (ASPasswordAuthenticationPaneViewControllerDelegate)authenticationDelegate
{
  WeakRetained = objc_loadWeakRetained(&self->_authenticationDelegate);

  return WeakRetained;
}

@end