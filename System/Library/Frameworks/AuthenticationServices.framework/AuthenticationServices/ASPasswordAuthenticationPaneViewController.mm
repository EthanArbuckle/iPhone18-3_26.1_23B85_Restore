@interface ASPasswordAuthenticationPaneViewController
- (ASPasswordAuthenticationPaneViewController)initWithConfiguration:(id)configuration;
- (ASPasswordAuthenticationPaneViewControllerDelegate)authenticationDelegate;
- (BOOL)becomeFirstResponder;
- (BOOL)canBecomeFirstResponder;
- (BOOL)resignFirstResponder;
- (BOOL)textFieldShouldReturn:(id)return;
- (double)_intrinsicContentHeight;
- (id)_secureTextFieldPlaceholderText;
- (id)_titleLabelFont;
- (id)_titleLabelTextColor;
- (void)_addCenteredHeaderView:(id)view margins:(double)margins height:(double)height customSpacingAfter:(double)after;
- (void)_completeManualPasswordCredentialEntry;
- (void)_createViews;
- (void)_keyboardHeightDidChange;
- (void)_keyboardWillShow:(id)show;
- (void)_setConstraints;
- (void)_setUpHeader;
- (void)_setUpUsernameLabel;
- (void)_signInButtonTapped;
- (void)_textFieldChanged:(id)changed;
- (void)updateWithConfiguration:(id)configuration;
- (void)viewDidLoad;
@end

@implementation ASPasswordAuthenticationPaneViewController

- (ASPasswordAuthenticationPaneViewController)initWithConfiguration:(id)configuration
{
  configurationCopy = configuration;
  v10.receiver = self;
  v10.super_class = ASPasswordAuthenticationPaneViewController;
  v6 = [(ASCredentialRequestPaneViewController *)&v10 initRequiringTableView:0];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(v6 + 134, configuration);
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
  defaultCenter = [MEMORY[0x1E696AD88] defaultCenter];
  [defaultCenter addObserver:self selector:sel__keyboardWillShow_ name:*MEMORY[0x1E69DE080] object:0];

  defaultCenter2 = [MEMORY[0x1E696AD88] defaultCenter];
  [defaultCenter2 addObserver:self selector:sel__keyboardWillHide_ name:*MEMORY[0x1E69DE078] object:0];
}

- (void)updateWithConfiguration:(id)configuration
{
  headerConfiguration = [configuration headerConfiguration];
  headerConfiguration = self->_headerConfiguration;
  self->_headerConfiguration = headerConfiguration;

  headerPaneContext = [(ASCredentialRequestPaneViewController *)self headerPaneContext];
  [headerPaneContext updateHeaderWithConfiguration:self->_headerConfiguration];

  secureTextField = self->_secureTextField;

  [(UITextField *)secureTextField as_shakeHorizontally];
}

- (void)_createViews
{
  v31[1] = *MEMORY[0x1E69E9840];
  clearColor = [MEMORY[0x1E69DC888] clearColor];
  view = [(ASPasswordAuthenticationPaneViewController *)self view];
  [view setBackgroundColor:clearColor];

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

  layer = [(_ASInsetTextField *)v10 layer];
  [layer setCornerRadius:8.0];

  _secureTextFieldPlaceholderText = [(ASPasswordAuthenticationPaneViewController *)self _secureTextFieldPlaceholderText];
  [(_ASInsetTextField *)v10 setPlaceholder:_secureTextFieldPlaceholderText];

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
  persona = [(ASPasswordAuthenticationPaneViewControllerConfiguration *)self->_configuration persona];
  if (persona >= 3)
  {
    if (persona == 3)
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
  cancelBarButtonItem = [(ASCredentialRequestPaneViewController *)self cancelBarButtonItem];
  v31[0] = cancelBarButtonItem;
  v27 = [MEMORY[0x1E695DEC8] arrayWithObjects:v31 count:1];
  as_navigationItem = [(UIViewController *)self as_navigationItem];
  [as_navigationItem setRightBarButtonItems:v27];

  headerPaneContext = [(ASCredentialRequestPaneViewController *)self headerPaneContext];
  [headerPaneContext addEmptyViewWithSpacing:0.0];

  v30 = *MEMORY[0x1E69E9840];
}

- (void)_setConstraints
{
  view = [(ASPasswordAuthenticationPaneViewController *)self view];
  bottomAnchor = [view bottomAnchor];
  paneHeaderStackView = [(ASCredentialRequestPaneViewController *)self paneHeaderStackView];
  superview = [paneHeaderStackView superview];
  bottomAnchor2 = [superview bottomAnchor];
  v8 = [bottomAnchor constraintGreaterThanOrEqualToAnchor:bottomAnchor2];
  paneHeaderStackViewBottomKeyboardConstraint = self->_paneHeaderStackViewBottomKeyboardConstraint;
  self->_paneHeaderStackViewBottomKeyboardConstraint = v8;

  LODWORD(v10) = 1144766464;
  [(NSLayoutConstraint *)self->_paneHeaderStackViewBottomKeyboardConstraint setPriority:v10];
  v11 = self->_paneHeaderStackViewBottomKeyboardConstraint;

  [(NSLayoutConstraint *)v11 setActive:1];
}

- (void)_addCenteredHeaderView:(id)view margins:(double)margins height:(double)height customSpacingAfter:(double)after
{
  v33[5] = *MEMORY[0x1E69E9840];
  viewCopy = view;
  paneHeaderStackView = [(ASCredentialRequestPaneViewController *)self paneHeaderStackView];
  v11 = objc_alloc_init(MEMORY[0x1E69DD250]);
  [v11 setTranslatesAutoresizingMaskIntoConstraints:0];
  [v11 addSubview:viewCopy];
  [paneHeaderStackView addArrangedSubview:v11];
  v25 = MEMORY[0x1E696ACD8];
  centerXAnchor = [viewCopy centerXAnchor];
  centerXAnchor2 = [v11 centerXAnchor];
  v29 = [centerXAnchor constraintEqualToAnchor:centerXAnchor2];
  v33[0] = v29;
  centerYAnchor = [viewCopy centerYAnchor];
  centerYAnchor2 = [v11 centerYAnchor];
  v26 = [centerYAnchor constraintEqualToAnchor:centerYAnchor2];
  v33[1] = v26;
  widthAnchor = [v11 widthAnchor];
  widthAnchor2 = [viewCopy widthAnchor];
  margins = [widthAnchor constraintEqualToAnchor:widthAnchor2 constant:margins + margins];
  v33[2] = margins;
  heightAnchor = [v11 heightAnchor];
  heightAnchor2 = [viewCopy heightAnchor];
  v17 = [heightAnchor constraintEqualToAnchor:heightAnchor2];
  v33[3] = v17;
  heightAnchor3 = [viewCopy heightAnchor];

  v19 = [heightAnchor3 constraintEqualToConstant:height];
  v33[4] = v19;
  v20 = [MEMORY[0x1E695DEC8] arrayWithObjects:v33 count:5];
  [v25 activateConstraints:v20];

  widthAnchor3 = [v11 widthAnchor];
  widthAnchor4 = [paneHeaderStackView widthAnchor];
  v23 = [widthAnchor3 constraintEqualToAnchor:widthAnchor4];
  [v23 setActive:1];

  [paneHeaderStackView setCustomSpacing:v11 afterView:after];
  v24 = *MEMORY[0x1E69E9840];
}

- (void)_setUpHeader
{
  headerConfiguration = [(ASPasswordAuthenticationPaneViewControllerConfiguration *)self->_configuration headerConfiguration];
  headerConfiguration = self->_headerConfiguration;
  self->_headerConfiguration = headerConfiguration;

  headerPaneContext = [(ASCredentialRequestPaneViewController *)self headerPaneContext];
  [headerPaneContext addHeaderWithConfiguration:self->_headerConfiguration];
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

  layer = [(UITextField *)v4 layer];
  [layer setCornerRadius:8.0];

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
  persona = [(ASPasswordAuthenticationPaneViewControllerConfiguration *)self->_configuration persona];
  if (persona >= 3)
  {
    if (persona == 3)
    {
      persona = +[ASViewServiceInterfaceUtilities headerTitleFont];
    }
  }

  else
  {
    persona = [MEMORY[0x1E69DB878] _preferredFontForTextStyle:*MEMORY[0x1E69DDDC0] weight:*MEMORY[0x1E69DB958]];
  }

  return persona;
}

- (id)_titleLabelTextColor
{
  persona = [(ASPasswordAuthenticationPaneViewControllerConfiguration *)self->_configuration persona];
  if (persona >= 3)
  {
    if (persona == 3)
    {
      persona = +[ASViewServiceInterfaceUtilities headerTitleColor];
    }
  }

  else
  {
    persona = [MEMORY[0x1E69DC888] labelColor];
  }

  return persona;
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
  paneHeaderStackView = [(ASCredentialRequestPaneViewController *)self paneHeaderStackView];
  [paneHeaderStackView bounds];
  v5 = v4;
  LODWORD(v4) = 1148846080;
  LODWORD(v6) = 1112014848;
  [paneHeaderStackView systemLayoutSizeFittingSize:v5 withHorizontalFittingPriority:0.0 verticalFittingPriority:{v4, v6}];
  v8 = v7 + self->_keyboardHeight;

  return v8;
}

- (void)_textFieldChanged:(id)changed
{
  text = [(UITextField *)self->_secureTextField text];
  if ([text length])
  {
    text2 = [(UITextField *)self->_usernameField text];
    -[ASCredentialRequestButtonContinue setEnabled:](self->_signInButton, "setEnabled:", [text2 length] != 0);
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
  passwordCredentialSite = [(ASPasswordAuthenticationPaneViewControllerConfiguration *)self->_configuration passwordCredentialSite];
  v4 = passwordCredentialSite;
  v5 = &stru_1F28DE020;
  if (passwordCredentialSite)
  {
    v5 = passwordCredentialSite;
  }

  v6 = v5;

  v7 = objc_alloc(MEMORY[0x1E698DFC8]);
  text = [(UITextField *)self->_usernameField text];
  text2 = [(UITextField *)self->_secureTextField text];
  v10 = [MEMORY[0x1E695DF00] now];
  v12 = [v7 initWithUser:text password:text2 site:v6 creationDate:v10 externalProviderBundleIdentifier:0];

  WeakRetained = objc_loadWeakRetained(&self->_authenticationDelegate);
  [WeakRetained passwordAuthenticationViewController:self completedWithManuallyEnteredPasswordCredential:v12];
}

- (void)_keyboardWillShow:(id)show
{
  userInfo = [show userInfo];
  v5 = [userInfo objectForKeyedSubscript:*MEMORY[0x1E69DDFA0]];

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
  persona = [(ASPasswordAuthenticationPaneViewControllerConfiguration *)self->_configuration persona];
  if (persona < 3)
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

  if (persona != 3)
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
  persona = [(ASPasswordAuthenticationPaneViewControllerConfiguration *)self->_configuration persona];
  if (persona >= 3)
  {
    if (persona == 3)
    {
      v6.receiver = self;
      v6.super_class = ASPasswordAuthenticationPaneViewController;
      LOBYTE(persona) = [(ASPasswordAuthenticationPaneViewController *)&v6 resignFirstResponder];
    }

    return persona & 1;
  }

  else
  {
    secureTextField = self->_secureTextField;

    return [(UITextField *)secureTextField resignFirstResponder];
  }
}

- (BOOL)canBecomeFirstResponder
{
  persona = [(ASPasswordAuthenticationPaneViewControllerConfiguration *)self->_configuration persona];
  if (persona > 3)
  {
    return 0;
  }

  v4 = *(&self->super.super.super.super.isa + *off_1E7AF8DD0[persona]);

  return [v4 canBecomeFirstResponder];
}

- (BOOL)textFieldShouldReturn:(id)return
{
  if (self->_usernameField == return)
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