@interface AKInlineSignInViewController
- (AKInlineSignInViewController)init;
- (AKInlineSignInViewController)initWithNibName:(id)name bundle:(id)bundle;
- (BOOL)textField:(id)field shouldChangeCharactersInRange:(_NSRange)range replacementString:(id)string;
- (BOOL)textFieldShouldReturn:(id)return;
- (id)_userFriendlyUsername:(id)username;
- (void)_appleIDTextFieldDidChange:(id)change;
- (void)_applyStyleForButton:(id)button;
- (void)_applyStyleForCreateOrForgot:(id)forgot;
- (void)_beginAuthenticationIfPossibleWithOption:(unint64_t)option;
- (void)_passwordFieldTapped;
- (void)_passwordTextFieldDidChange:(id)change;
- (void)_prefillAuthFields;
- (void)_presentShieldUIIfNeededWithViewController:(id)controller;
- (void)_presentShieldUIWithViewController:(id)controller;
- (void)_setButtonTitles;
- (void)_setCreateButtonEnabled:(BOOL)enabled;
- (void)_setCreateButtonHidden:(BOOL)hidden;
- (void)_setForgotButtonHidden:(BOOL)hidden;
- (void)_setPasswordFieldHidden:(BOOL)hidden animated:(BOOL)animated;
- (void)_updateFonts:(id)fonts;
- (void)_updateSignInButtonState;
- (void)_updateSignInFieldStatuses;
- (void)_updateVibrancyAndBlurInTextFields;
- (void)_usernameFieldTapped;
- (void)context:(id)context needsPasswordWithCompletion:(id)completion;
- (void)createAppleIDButtonWasTapped:(id)tapped;
- (void)dealloc;
- (void)iForgotButtonWasTapped:(id)tapped;
- (void)refreshCreateAppleIDButton;
- (void)setBlurEffectStyle:(int64_t)style;
- (void)setContext:(id)context;
- (void)setFieldBackgroundColor:(id)color;
- (void)setSecondaryButtonTarget:(id)target action:(SEL)action;
- (void)setSecondaryButtonTitle:(id)title;
- (void)setTertiaryButtonTarget:(id)target action:(SEL)action;
- (void)setTertiaryButtonTitle:(id)title;
- (void)setUsesDarkMode:(BOOL)mode;
- (void)setUsesVibrancy:(BOOL)vibrancy;
- (void)signInButtonWasTapped:(id)tapped;
- (void)startAnimating;
- (void)stopAnimating;
- (void)traitCollectionDidChange:(id)change;
- (void)viewDidAppear:(BOOL)appear;
- (void)viewDidLoad;
- (void)viewWillAppear:(BOOL)appear;
@end

@implementation AKInlineSignInViewController

- (AKInlineSignInViewController)init
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, @"AKInlineSignInViewController_iOS");
  v7 = selfCopy;
  v6 = location[0];
  v8 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
  selfCopy = 0;
  v9 = [(AKBaseSignInViewController *)v7 _initWithNibName:v6 bundle:?];
  selfCopy = v9;
  objc_storeStrong(&selfCopy, v9);
  MEMORY[0x277D82BD8](v8);
  if (v9)
  {
    objc_initWeak(&v16, selfCopy);
    queue = dispatch_get_global_queue(33, 0);
    v10 = MEMORY[0x277D85DD0];
    v11 = -1073741824;
    v12 = 0;
    v13 = __36__AKInlineSignInViewController_init__block_invoke;
    v14 = &unk_2784A6770;
    objc_copyWeak(&v15, &v16);
    dispatch_async(queue, &v10);
    *&v2 = MEMORY[0x277D82BD8](queue).n128_u64[0];
    [(AKInlineSignInViewController *)selfCopy _setButtonTitles];
    objc_destroyWeak(&v15);
    objc_destroyWeak(&v16);
  }

  v4 = MEMORY[0x277D82BE0](selfCopy);
  objc_storeStrong(location, 0);
  objc_storeStrong(&selfCopy, 0);
  return v4;
}

void __36__AKInlineSignInViewController_init__block_invoke(id *a1)
{
  location[2] = a1;
  location[1] = a1;
  location[0] = objc_opt_new();
  v2 = location[0];
  v3 = MEMORY[0x277D85DD0];
  v4 = -1073741824;
  v5 = 0;
  v6 = __36__AKInlineSignInViewController_init__block_invoke_2;
  v7 = &unk_2784A6748;
  objc_copyWeak(&v8, a1 + 4);
  [v2 isCreateAppleIDAllowedWithCompletion:&v3];
  objc_destroyWeak(&v8);
  objc_storeStrong(location, 0);
}

void __36__AKInlineSignInViewController_init__block_invoke_2(uint64_t a1, char a2, id obj)
{
  v17 = a1;
  v16 = a2;
  location = 0;
  objc_storeStrong(&location, obj);
  v14 = a1;
  v4 = MEMORY[0x277D85CD0];
  v3 = MEMORY[0x277D85CD0];
  queue = v4;
  v7 = MEMORY[0x277D85DD0];
  v8 = -1073741824;
  v9 = 0;
  v10 = __36__AKInlineSignInViewController_init__block_invoke_3;
  v11 = &unk_2784A6720;
  objc_copyWeak(&v12, (a1 + 32));
  v13 = v16 & 1;
  dispatch_async(queue, &v7);
  MEMORY[0x277D82BD8](queue);
  objc_destroyWeak(&v12);
  objc_storeStrong(&location, 0);
}

void __36__AKInlineSignInViewController_init__block_invoke_3(uint64_t a1)
{
  location[2] = a1;
  location[1] = a1;
  location[0] = objc_loadWeakRetained((a1 + 32));
  if (location[0])
  {
    *(location[0] + 1034) = *(a1 + 40) & 1;
    [location[0] refreshCreateAppleIDButton];
  }

  objc_storeStrong(location, 0);
}

- (void)dealloc
{
  selfCopy = self;
  v5 = a2;
  defaultCenter = [MEMORY[0x277CCAB98] defaultCenter];
  [defaultCenter removeObserver:selfCopy name:*MEMORY[0x277D76810] object:0];
  *&v2 = MEMORY[0x277D82BD8](defaultCenter).n128_u64[0];
  v4.receiver = selfCopy;
  v4.super_class = AKInlineSignInViewController;
  [(AKBaseSignInViewController *)&v4 dealloc];
}

- (AKInlineSignInViewController)initWithNibName:(id)name bundle:(id)bundle
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, name);
  v9 = 0;
  objc_storeStrong(&v9, bundle);
  [MEMORY[0x277CBEAD8] raise:*MEMORY[0x277CBE660] format:@"Call -init instead of -initWithNibName:bundle:"];
  v4 = selfCopy;
  selfCopy = 0;
  v8.receiver = v4;
  v8.super_class = AKInlineSignInViewController;
  selfCopy = [(AKBaseSignInViewController *)&v8 _initWithNibName:0 bundle:?];
  v7 = MEMORY[0x277D82BE0](selfCopy);
  objc_storeStrong(&v9, 0);
  objc_storeStrong(location, 0);
  objc_storeStrong(&selfCopy, 0);
  return v7;
}

- (void)setSecondaryButtonTitle:(id)title
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, title);
  if (![(NSString *)selfCopy->_secondaryButtonTitle isEqualToString:location[0]])
  {
    v3 = [location[0] copy];
    secondaryButtonTitle = selfCopy->_secondaryButtonTitle;
    selfCopy->_secondaryButtonTitle = v3;
    *&v5 = MEMORY[0x277D82BD8](secondaryButtonTitle).n128_u64[0];
    iforgotButton = [(AKInlineSignInViewController *)selfCopy iforgotButton];
    [(UIButton *)iforgotButton setTitle:selfCopy->_secondaryButtonTitle forState:0];
    *&v6 = MEMORY[0x277D82BD8](iforgotButton).n128_u64[0];
    if ([(NSString *)selfCopy->_secondaryButtonTitle length])
    {
      iforgotButton2 = [(AKInlineSignInViewController *)selfCopy iforgotButton];
      [(UIButton *)iforgotButton2 setHidden:0];
      MEMORY[0x277D82BD8](iforgotButton2);
    }

    else
    {
      [(AKInlineSignInViewController *)selfCopy _setForgotButtonHidden:1];
    }
  }

  objc_storeStrong(location, 0);
}

- (void)setTertiaryButtonTitle:(id)title
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, title);
  if (![(NSString *)selfCopy->_tertiaryButtonTitle isEqualToString:location[0]])
  {
    v3 = [location[0] copy];
    tertiaryButtonTitle = selfCopy->_tertiaryButtonTitle;
    selfCopy->_tertiaryButtonTitle = v3;
    MEMORY[0x277D82BD8](tertiaryButtonTitle);
  }

  [(AKInlineSignInViewController *)selfCopy refreshCreateAppleIDButton];
  objc_storeStrong(location, 0);
}

- (void)refreshCreateAppleIDButton
{
  if (self->_createAppleIDAllowed && (v3 = [(AKInlineSignInViewController *)self createAppleIDButton], [(UIButton *)v3 setTitle:self->_tertiaryButtonTitle forState:0], [(NSString *)self->_tertiaryButtonTitle length]))
  {
    [(AKInlineSignInViewController *)self _setCreateButtonHidden:0];
    createAppleIDButton = [(AKInlineSignInViewController *)self createAppleIDButton];
    [(AKInlineSignInViewController *)self _applyStyleForCreateOrForgot:?];
    MEMORY[0x277D82BD8](createAppleIDButton);
  }

  else
  {
    [(AKInlineSignInViewController *)self _setCreateButtonHidden:1];
  }
}

- (void)_setCreateButtonHidden:(BOOL)hidden
{
  createAppleIDButton = [(AKInlineSignInViewController *)self createAppleIDButton];
  [(UIButton *)createAppleIDButton setHidden:hidden];
  MEMORY[0x277D82BD8](createAppleIDButton);
}

- (void)_setForgotButtonHidden:(BOOL)hidden
{
  iforgotButton = [(AKInlineSignInViewController *)self iforgotButton];
  [(UIButton *)iforgotButton setHidden:hidden];
  MEMORY[0x277D82BD8](iforgotButton);
}

- (void)_setCreateButtonEnabled:(BOOL)enabled
{
  createAppleIDButton = [(AKInlineSignInViewController *)self createAppleIDButton];
  [(UIButton *)createAppleIDButton setEnabled:enabled];
  MEMORY[0x277D82BD8](createAppleIDButton);
}

- (void)setSecondaryButtonTarget:(id)target action:(SEL)action
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, target);
  view = [(AKInlineSignInViewController *)selfCopy view];
  *&v4 = MEMORY[0x277D82BD8](view).n128_u64[0];
  if (view)
  {
    iforgotButton = [(AKInlineSignInViewController *)selfCopy iforgotButton];
    [(UIButton *)iforgotButton removeTarget:selfCopy action:sel_iForgotButtonWasTapped_ forControlEvents:?];
    *&v5 = MEMORY[0x277D82BD8](iforgotButton).n128_u64[0];
    iforgotButton2 = [(AKInlineSignInViewController *)selfCopy iforgotButton];
    [(UIButton *)iforgotButton2 addTarget:location[0] action:action forControlEvents:64];
    MEMORY[0x277D82BD8](iforgotButton2);
  }

  objc_storeStrong(location, 0);
}

- (void)setTertiaryButtonTarget:(id)target action:(SEL)action
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, target);
  view = [(AKInlineSignInViewController *)selfCopy view];
  *&v4 = MEMORY[0x277D82BD8](view).n128_u64[0];
  if (view)
  {
    createAppleIDButton = [(AKInlineSignInViewController *)selfCopy createAppleIDButton];
    [(UIButton *)createAppleIDButton removeTarget:selfCopy action:sel_createAppleIDButtonWasTapped_ forControlEvents:?];
    *&v5 = MEMORY[0x277D82BD8](createAppleIDButton).n128_u64[0];
    createAppleIDButton2 = [(AKInlineSignInViewController *)selfCopy createAppleIDButton];
    [(UIButton *)createAppleIDButton2 addTarget:location[0] action:action forControlEvents:64];
    MEMORY[0x277D82BD8](createAppleIDButton2);
  }

  objc_storeStrong(location, 0);
}

- (void)setContext:(id)context
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, context);
  objc_storeStrong(&selfCopy->_context, location[0]);
  _passwordDelegate = [(AKAppleIDAuthenticationInAppContext *)selfCopy->_context _passwordDelegate];
  *&v3 = MEMORY[0x277D82BD8](_passwordDelegate).n128_u64[0];
  if (!_passwordDelegate)
  {
    [(AKAppleIDAuthenticationInAppContext *)selfCopy->_context _setPasswordDelegate:selfCopy, v3];
  }

  [(AKInlineSignInViewController *)selfCopy _prefillAuthFields:v3];
  [(AKInlineSignInViewController *)selfCopy _updateSignInFieldStatuses];
  objc_storeStrong(location, 0);
}

- (void)viewDidLoad
{
  selfCopy = self;
  v135 = a2;
  v134.receiver = self;
  v134.super_class = AKInlineSignInViewController;
  [(AKInlineSignInViewController *)&v134 viewDidLoad];
  view = [(AKInlineSignInViewController *)selfCopy view];
  [view setTranslatesAutoresizingMaskIntoConstraints:0];
  *&v2 = MEMORY[0x277D82BD8](view).n128_u64[0];
  iforgotButton = [(AKInlineSignInViewController *)selfCopy iforgotButton];
  [(UIButton *)iforgotButton setTitle:selfCopy->_secondaryButtonTitle forState:0];
  *&v3 = MEMORY[0x277D82BD8](iforgotButton).n128_u64[0];
  v125 = selfCopy;
  iforgotButton2 = [(AKInlineSignInViewController *)selfCopy iforgotButton];
  [(AKInlineSignInViewController *)v125 _applyStyleForCreateOrForgot:?];
  *&v4 = MEMORY[0x277D82BD8](iforgotButton2).n128_u64[0];
  iforgotButton3 = [(AKInlineSignInViewController *)selfCopy iforgotButton];
  allTargets = [(UIButton *)iforgotButton3 allTargets];
  v129 = [allTargets count];
  MEMORY[0x277D82BD8](allTargets);
  v5 = MEMORY[0x277D82BD8](iforgotButton3).n128_u64[0];
  if (!v129)
  {
    iforgotButton4 = [(AKInlineSignInViewController *)selfCopy iforgotButton];
    [(UIButton *)iforgotButton4 addTarget:selfCopy action:sel_iForgotButtonWasTapped_ forControlEvents:64];
    v5 = MEMORY[0x277D82BD8](iforgotButton4).n128_u64[0];
  }

  if (![(NSString *)selfCopy->_secondaryButtonTitle length])
  {
    [(AKInlineSignInViewController *)selfCopy _setForgotButtonHidden:1];
  }

  [(AKInlineSignInViewController *)selfCopy refreshCreateAppleIDButton];
  createAppleIDButton = [(AKInlineSignInViewController *)selfCopy createAppleIDButton];
  allTargets2 = [(UIButton *)createAppleIDButton allTargets];
  v121 = [allTargets2 count];
  MEMORY[0x277D82BD8](allTargets2);
  v6 = MEMORY[0x277D82BD8](createAppleIDButton).n128_u64[0];
  if (!v121)
  {
    createAppleIDButton2 = [(AKInlineSignInViewController *)selfCopy createAppleIDButton];
    [(UIButton *)createAppleIDButton2 addTarget:selfCopy action:sel_createAppleIDButtonWasTapped_ forControlEvents:64];
    v6 = MEMORY[0x277D82BD8](createAppleIDButton2).n128_u64[0];
  }

  signInButton = [(AKInlineSignInViewController *)selfCopy signInButton];
  [(UIButton *)signInButton setTitle:selfCopy->_primaryButtonTitle forState:?];
  *&v7 = MEMORY[0x277D82BD8](signInButton).n128_u64[0];
  signInButton2 = [(AKInlineSignInViewController *)selfCopy signInButton];
  [(UIButton *)signInButton2 addTarget:selfCopy action:sel_signInButtonWasTapped_ forControlEvents:64];
  *&v8 = MEMORY[0x277D82BD8](signInButton2).n128_u64[0];
  signInButton3 = [(AKInlineSignInViewController *)selfCopy signInButton];
  [(UIButton *)signInButton3 setHidden:[(AKInlineSignInViewController *)selfCopy isPrimaryButtonHidden]];
  *&v9 = MEMORY[0x277D82BD8](signInButton3).n128_u64[0];
  v67 = selfCopy;
  signInButton4 = [(AKInlineSignInViewController *)selfCopy signInButton];
  [(AKInlineSignInViewController *)v67 _applyStyleForButton:?];
  *&v10 = MEMORY[0x277D82BD8](signInButton4).n128_u64[0];
  appleIDField = [(AKInlineSignInViewController *)selfCopy appleIDField];
  [(AKTextField *)appleIDField setRowIdentifier:?];
  *&v11 = MEMORY[0x277D82BD8](appleIDField).n128_u64[0];
  passwordField = [(AKInlineSignInViewController *)selfCopy passwordField];
  if ([(AKInlineSignInViewController *)selfCopy shouldPromptForPasswordOnly])
  {
    v12 = 3;
  }

  else
  {
    v12 = 1;
  }

  [(AKTextField *)passwordField setRowIdentifier:v12];
  *&v13 = MEMORY[0x277D82BD8](passwordField).n128_u64[0];
  appleIDField2 = [(AKInlineSignInViewController *)selfCopy appleIDField];
  entryField = [(AKTextField *)appleIDField2 entryField];
  v72 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
  v71 = [v72 localizedStringForKey:@"EMAIL_OR_PHONE_PLACEHOLDER" value:? table:?];
  [(UITextField *)entryField setPlaceholder:?];
  MEMORY[0x277D82BD8](v71);
  MEMORY[0x277D82BD8](v72);
  MEMORY[0x277D82BD8](entryField);
  *&v14 = MEMORY[0x277D82BD8](appleIDField2).n128_u64[0];
  appleIDField3 = [(AKInlineSignInViewController *)selfCopy appleIDField];
  entryField2 = [(AKTextField *)appleIDField3 entryField];
  [(UITextField *)entryField2 setKeyboardType:7];
  MEMORY[0x277D82BD8](entryField2);
  *&v15 = MEMORY[0x277D82BD8](appleIDField3).n128_u64[0];
  appleIDField4 = [(AKInlineSignInViewController *)selfCopy appleIDField];
  entryField3 = [(AKTextField *)appleIDField4 entryField];
  [(UITextField *)entryField3 setAutocapitalizationType:0];
  MEMORY[0x277D82BD8](entryField3);
  *&v16 = MEMORY[0x277D82BD8](appleIDField4).n128_u64[0];
  appleIDField5 = [(AKInlineSignInViewController *)selfCopy appleIDField];
  entryField4 = [(AKTextField *)appleIDField5 entryField];
  [(UITextField *)entryField4 setAutocorrectionType:1];
  MEMORY[0x277D82BD8](entryField4);
  *&v17 = MEMORY[0x277D82BD8](appleIDField5).n128_u64[0];
  appleIDField6 = [(AKInlineSignInViewController *)selfCopy appleIDField];
  entryField5 = [(AKTextField *)appleIDField6 entryField];
  [(UITextField *)entryField5 setAdjustsFontSizeToFitWidth:1];
  MEMORY[0x277D82BD8](entryField5);
  *&v18 = MEMORY[0x277D82BD8](appleIDField6).n128_u64[0];
  appleIDField7 = [(AKInlineSignInViewController *)selfCopy appleIDField];
  entryField6 = [(AKTextField *)appleIDField7 entryField];
  [(UITextField *)entryField6 setReturnKeyType:11];
  MEMORY[0x277D82BD8](entryField6);
  *&v19 = MEMORY[0x277D82BD8](appleIDField7).n128_u64[0];
  appleIDField8 = [(AKInlineSignInViewController *)selfCopy appleIDField];
  v20 = objc_alloc(MEMORY[0x277D75B80]);
  v85 = [v20 initWithTarget:selfCopy action:sel__usernameFieldTapped];
  [(AKTextField *)appleIDField8 addGestureRecognizer:?];
  MEMORY[0x277D82BD8](v85);
  *&v21 = MEMORY[0x277D82BD8](appleIDField8).n128_u64[0];
  appleIDField9 = [(AKInlineSignInViewController *)selfCopy appleIDField];
  entryField7 = [(AKTextField *)appleIDField9 entryField];
  [(UITextField *)entryField7 addTarget:selfCopy action:sel__appleIDTextFieldDidChange_ forControlEvents:?];
  MEMORY[0x277D82BD8](entryField7);
  *&v22 = MEMORY[0x277D82BD8](appleIDField9).n128_u64[0];
  appleIDField10 = [(AKInlineSignInViewController *)selfCopy appleIDField];
  entryField8 = [(AKTextField *)appleIDField10 entryField];
  [(UITextField *)entryField8 setDelegate:selfCopy];
  MEMORY[0x277D82BD8](entryField8);
  *&v23 = MEMORY[0x277D82BD8](appleIDField10).n128_u64[0];
  appleIDField11 = [(AKInlineSignInViewController *)selfCopy appleIDField];
  entryField9 = [(AKTextField *)appleIDField11 entryField];
  [(UITextField *)entryField9 setTextContentType:*MEMORY[0x277D77090]];
  MEMORY[0x277D82BD8](entryField9);
  *&v24 = MEMORY[0x277D82BD8](appleIDField11).n128_u64[0];
  [(AKInlineSignInViewController *)selfCopy _updateFonts:0, v24];
  [(AKInlineSignInViewController *)selfCopy _prefillAuthFields];
  passwordField2 = [(AKInlineSignInViewController *)selfCopy passwordField];
  entryField10 = [(AKTextField *)passwordField2 entryField];
  v94 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
  v93 = [v94 localizedStringForKey:@"PASSWORD_PLACEHOLDER" value:&stru_28358EF68 table:@"Localizable"];
  [(UITextField *)entryField10 setPlaceholder:?];
  MEMORY[0x277D82BD8](v93);
  MEMORY[0x277D82BD8](v94);
  MEMORY[0x277D82BD8](entryField10);
  *&v25 = MEMORY[0x277D82BD8](passwordField2).n128_u64[0];
  passwordField3 = [(AKInlineSignInViewController *)selfCopy passwordField];
  entryField11 = [(AKTextField *)passwordField3 entryField];
  [(UITextField *)entryField11 setSecureTextEntry:1];
  MEMORY[0x277D82BD8](entryField11);
  *&v26 = MEMORY[0x277D82BD8](passwordField3).n128_u64[0];
  passwordField4 = [(AKInlineSignInViewController *)selfCopy passwordField];
  entryField12 = [(AKTextField *)passwordField4 entryField];
  [(UITextField *)entryField12 setAdjustsFontSizeToFitWidth:1];
  MEMORY[0x277D82BD8](entryField12);
  *&v27 = MEMORY[0x277D82BD8](passwordField4).n128_u64[0];
  passwordField5 = [(AKInlineSignInViewController *)selfCopy passwordField];
  entryField13 = [(AKTextField *)passwordField5 entryField];
  [(UITextField *)entryField13 setAutocapitalizationType:0];
  MEMORY[0x277D82BD8](entryField13);
  *&v28 = MEMORY[0x277D82BD8](passwordField5).n128_u64[0];
  passwordField6 = [(AKInlineSignInViewController *)selfCopy passwordField];
  entryField14 = [(AKTextField *)passwordField6 entryField];
  [(UITextField *)entryField14 setAutocorrectionType:1];
  MEMORY[0x277D82BD8](entryField14);
  *&v29 = MEMORY[0x277D82BD8](passwordField6).n128_u64[0];
  passwordField7 = [(AKInlineSignInViewController *)selfCopy passwordField];
  entryField15 = [(AKTextField *)passwordField7 entryField];
  [(UITextField *)entryField15 setReturnKeyType:9];
  MEMORY[0x277D82BD8](entryField15);
  *&v30 = MEMORY[0x277D82BD8](passwordField7).n128_u64[0];
  passwordField8 = [(AKInlineSignInViewController *)selfCopy passwordField];
  entryField16 = [(AKTextField *)passwordField8 entryField];
  [(UITextField *)entryField16 setEnablesReturnKeyAutomatically:1];
  MEMORY[0x277D82BD8](entryField16);
  *&v31 = MEMORY[0x277D82BD8](passwordField8).n128_u64[0];
  passwordField9 = [(AKInlineSignInViewController *)selfCopy passwordField];
  v32 = objc_alloc(MEMORY[0x277D75B80]);
  v109 = [v32 initWithTarget:selfCopy action:sel__passwordFieldTapped];
  [(AKTextField *)passwordField9 addGestureRecognizer:?];
  MEMORY[0x277D82BD8](v109);
  *&v33 = MEMORY[0x277D82BD8](passwordField9).n128_u64[0];
  passwordField10 = [(AKInlineSignInViewController *)selfCopy passwordField];
  entryField17 = [(AKTextField *)passwordField10 entryField];
  [(UITextField *)entryField17 addTarget:selfCopy action:sel__passwordTextFieldDidChange_ forControlEvents:983040];
  MEMORY[0x277D82BD8](entryField17);
  *&v34 = MEMORY[0x277D82BD8](passwordField10).n128_u64[0];
  passwordField11 = [(AKInlineSignInViewController *)selfCopy passwordField];
  entryField18 = [(AKTextField *)passwordField11 entryField];
  [(UITextField *)entryField18 setDelegate:selfCopy];
  MEMORY[0x277D82BD8](entryField18);
  *&v35 = MEMORY[0x277D82BD8](passwordField11).n128_u64[0];
  passwordField12 = [(AKInlineSignInViewController *)selfCopy passwordField];
  entryField19 = [(AKTextField *)passwordField12 entryField];
  [(UITextField *)entryField19 setTextContentType:*MEMORY[0x277D77030]];
  MEMORY[0x277D82BD8](entryField19);
  *&v36 = MEMORY[0x277D82BD8](passwordField12).n128_u64[0];
  entryDescriptionTextColor = [(AKInlineSignInViewController *)selfCopy entryDescriptionTextColor];
  v37 = MEMORY[0x277D82BD8](entryDescriptionTextColor).n128_u64[0];
  if (entryDescriptionTextColor)
  {
    appleIDField12 = [(AKInlineSignInViewController *)selfCopy appleIDField];
    entryDescriptionTextColor2 = [(AKInlineSignInViewController *)selfCopy entryDescriptionTextColor];
    [(AKTextField *)appleIDField12 setEntryDescriptionTextColor:?];
    MEMORY[0x277D82BD8](entryDescriptionTextColor2);
    *&v38 = MEMORY[0x277D82BD8](appleIDField12).n128_u64[0];
    passwordField13 = [(AKInlineSignInViewController *)selfCopy passwordField];
    entryDescriptionTextColor3 = [(AKInlineSignInViewController *)selfCopy entryDescriptionTextColor];
    [(AKTextField *)passwordField13 setEntryDescriptionTextColor:?];
    MEMORY[0x277D82BD8](entryDescriptionTextColor3);
    v37 = MEMORY[0x277D82BD8](passwordField13).n128_u64[0];
  }

  entryFieldTextColor = [(AKInlineSignInViewController *)selfCopy entryFieldTextColor];
  v39 = MEMORY[0x277D82BD8](entryFieldTextColor).n128_u64[0];
  if (entryFieldTextColor)
  {
    appleIDField13 = [(AKInlineSignInViewController *)selfCopy appleIDField];
    entryFieldTextColor2 = [(AKInlineSignInViewController *)selfCopy entryFieldTextColor];
    [(AKTextField *)appleIDField13 setEntryFieldTextColor:?];
    MEMORY[0x277D82BD8](entryFieldTextColor2);
    *&v40 = MEMORY[0x277D82BD8](appleIDField13).n128_u64[0];
    passwordField14 = [(AKInlineSignInViewController *)selfCopy passwordField];
    entryFieldTextColor3 = [(AKInlineSignInViewController *)selfCopy entryFieldTextColor];
    [(AKTextField *)passwordField14 setEntryFieldTextColor:?];
    MEMORY[0x277D82BD8](entryFieldTextColor3);
    v39 = MEMORY[0x277D82BD8](passwordField14).n128_u64[0];
  }

  shouldPromptForPasswordOnly = [(AKInlineSignInViewController *)selfCopy shouldPromptForPasswordOnly];
  passwordField15 = [(AKInlineSignInViewController *)selfCopy passwordField];
  [(AKTextField *)passwordField15 setHidden:![(AKInlineSignInViewController *)selfCopy shouldPromptForPasswordOnly]];
  *&v41 = MEMORY[0x277D82BD8](passwordField15).n128_u64[0];
  appleIDField14 = [(AKInlineSignInViewController *)selfCopy appleIDField];
  [(AKTextField *)appleIDField14 setHidden:shouldPromptForPasswordOnly];
  v42 = MEMORY[0x277D82BD8](appleIDField14).n128_u64[0];
  if (shouldPromptForPasswordOnly)
  {
    passwordField16 = [(AKInlineSignInViewController *)selfCopy passwordField];
    entryField20 = [(AKTextField *)passwordField16 entryField];
    [(UITextField *)entryField20 becomeFirstResponder];
    MEMORY[0x277D82BD8](entryField20);
    v42 = MEMORY[0x277D82BD8](passwordField16).n128_u64[0];
  }

  context = [(AKInlineSignInViewController *)selfCopy context];
  [context _setPasswordDelegate:selfCopy];
  *&v43 = MEMORY[0x277D82BD8](context).n128_u64[0];
  [(AKInlineSignInViewController *)selfCopy _updateVibrancyAndBlurInTextFields];
  defaultCenter = [MEMORY[0x277CCAB98] defaultCenter];
  [defaultCenter addObserver:selfCopy selector:sel__updateFonts_ name:*MEMORY[0x277D76810] object:0];
  *&v44 = MEMORY[0x277D82BD8](defaultCenter).n128_u64[0];
  if ([(AKBaseSignInViewController *)selfCopy _isAccountModificationRestricted])
  {
    location = _AKLogSystem();
    v131 = OS_LOG_TYPE_DEFAULT;
    if (os_log_type_enabled(location, OS_LOG_TYPE_DEFAULT))
    {
      log = location;
      type = v131;
      __os_log_helper_16_0_0(v130);
      _os_log_impl(&dword_222379000, log, type, "MCFeatureAccountModificationAllowed is restricted. Disabling UI.", v130, 2u);
    }

    objc_storeStrong(&location, 0);
    iforgotButton5 = [(AKInlineSignInViewController *)selfCopy iforgotButton];
    [(UIButton *)iforgotButton5 setEnabled:0];
    *&v45 = MEMORY[0x277D82BD8](iforgotButton5).n128_u64[0];
    [(AKInlineSignInViewController *)selfCopy _setCreateButtonEnabled:0, v45];
    [(AKInlineSignInViewController *)selfCopy _updateSignInFieldStatuses];
  }

  [(AKInlineSignInViewController *)selfCopy _updateFonts:0];
}

- (void)viewWillAppear:(BOOL)appear
{
  selfCopy = self;
  v5 = a2;
  appearCopy = appear;
  v3.receiver = self;
  v3.super_class = AKInlineSignInViewController;
  [(AKInlineSignInViewController *)&v3 viewWillAppear:appear];
  [(AKInlineSignInViewController *)selfCopy _updateSignInButtonState];
}

- (void)viewDidAppear:(BOOL)appear
{
  selfCopy = self;
  v8 = a2;
  appearCopy = appear;
  v6.receiver = self;
  v6.super_class = AKInlineSignInViewController;
  [(AKBaseSignInViewController *)&v6 viewDidAppear:appear];
  v4 = selfCopy;
  navigationController = [(AKInlineSignInViewController *)selfCopy navigationController];
  if (navigationController)
  {
    v3 = navigationController;
  }

  else
  {
    v3 = selfCopy;
  }

  [(AKInlineSignInViewController *)v4 _presentShieldUIIfNeededWithViewController:v3];
  MEMORY[0x277D82BD8](navigationController);
}

- (void)_presentShieldUIIfNeededWithViewController:(id)controller
{
  v15 = *MEMORY[0x277D85DE8];
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, controller);
  v9 = _AKLogSystem();
  v8 = OS_LOG_TYPE_DEBUG;
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEBUG))
  {
    __os_log_helper_16_2_2_8_32_4_0(v14, "[AKInlineSignInViewController _presentShieldUIIfNeededWithViewController:]", 322);
    _os_log_debug_impl(&dword_222379000, v9, v8, "%s (%d) called", v14, 0x12u);
  }

  objc_storeStrong(&v9, 0);
  mEMORY[0x277CF0130] = [MEMORY[0x277CF0130] sharedInstance];
  shieldSignInOrCreateFlows = [mEMORY[0x277CF0130] shieldSignInOrCreateFlows];
  MEMORY[0x277D82BD8](mEMORY[0x277CF0130]);
  if (shieldSignInOrCreateFlows)
  {
    oslog = _AKLogSystem();
    v6 = OS_LOG_TYPE_DEFAULT;
    if (os_log_type_enabled(oslog, OS_LOG_TYPE_DEFAULT))
    {
      __os_log_helper_16_2_2_8_64_8_64(v13, selfCopy, location[0]);
      _os_log_impl(&dword_222379000, oslog, v6, "%@: Shielding sign in / create flows by presenting shield UI with view controller: %@", v13, 0x16u);
    }

    objc_storeStrong(&oslog, 0);
    [(AKInlineSignInViewController *)selfCopy _presentShieldUIWithViewController:location[0]];
  }

  else
  {
    v5 = _AKLogSystem();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
    {
      __os_log_helper_16_2_1_8_64(v12, selfCopy);
      _os_log_debug_impl(&dword_222379000, v5, OS_LOG_TYPE_DEBUG, "%@: Not presenting shield UI, not needed", v12, 0xCu);
    }

    objc_storeStrong(&v5, 0);
  }

  objc_storeStrong(location, 0);
  *MEMORY[0x277D85DE8];
}

- (void)_presentShieldUIWithViewController:(id)controller
{
  v7 = *MEMORY[0x277D85DE8];
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, controller);
  oslog = _AKLogSystem();
  if (os_log_type_enabled(oslog, OS_LOG_TYPE_DEBUG))
  {
    __os_log_helper_16_2_2_8_32_4_0(v6, "[AKInlineSignInViewController _presentShieldUIWithViewController:]", 332);
    _os_log_debug_impl(&dword_222379000, oslog, OS_LOG_TYPE_DEBUG, "%s (%d) called", v6, 0x12u);
  }

  objc_storeStrong(&oslog, 0);
  [(AKInlineSignInViewController *)selfCopy _beginAuthenticationIfPossibleWithOption:1];
  objc_storeStrong(location, 0);
  *MEMORY[0x277D85DE8];
}

- (void)_setButtonTitles
{
  v8 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
  v2 = [v8 localizedStringForKey:@"SIGN_IN_BUTTON_TITLE" value:? table:?];
  primaryButtonTitle = self->_primaryButtonTitle;
  self->_primaryButtonTitle = v2;
  MEMORY[0x277D82BD8](primaryButtonTitle);
  MEMORY[0x277D82BD8](v8);
  v9 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
  v4 = [v9 localizedStringForKey:@"IFORGOT_BUTTON_TITLE" value:&stru_28358EF68 table:@"Localizable"];
  secondaryButtonTitle = self->_secondaryButtonTitle;
  self->_secondaryButtonTitle = v4;
  MEMORY[0x277D82BD8](secondaryButtonTitle);
  MEMORY[0x277D82BD8](v9);
  v10 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
  v6 = [v10 localizedStringForKey:@"CREATE_APPLE_ID_BUTTON_TITLE_REBRAND" value:&stru_28358EF68 table:@"Localizable"];
  tertiaryButtonTitle = self->_tertiaryButtonTitle;
  self->_tertiaryButtonTitle = v6;
  MEMORY[0x277D82BD8](tertiaryButtonTitle);
  MEMORY[0x277D82BD8](v10);
}

- (void)_updateSignInFieldStatuses
{
  _isSignInAllowed = [(AKBaseSignInViewController *)self _isSignInAllowed];
  appleIDField = [(AKInlineSignInViewController *)self appleIDField];
  [(AKTextField *)appleIDField setEnabled:_isSignInAllowed];
  passwordField = [(AKInlineSignInViewController *)self passwordField];
  [(AKTextField *)passwordField setEnabled:_isSignInAllowed];
  signInButton = [(AKInlineSignInViewController *)self signInButton];
  [(UIButton *)signInButton setEnabled:_isSignInAllowed];
  MEMORY[0x277D82BD8](signInButton);
}

- (void)_prefillAuthFields
{
  appleIDField = [(AKInlineSignInViewController *)self appleIDField];
  entryField = [(AKTextField *)appleIDField entryField];
  context = [(AKInlineSignInViewController *)self context];
  username = [context username];
  [(UITextField *)entryField setText:?];
  MEMORY[0x277D82BD8](username);
  MEMORY[0x277D82BD8](context);
  MEMORY[0x277D82BD8](entryField);
  context2 = [(AKInlineSignInViewController *)self context];
  username2 = [context2 username];
  MEMORY[0x277D82BD8](username2);
  *&v2 = MEMORY[0x277D82BD8](context2).n128_u64[0];
  if (username2)
  {
    appleIDField2 = [(AKInlineSignInViewController *)self appleIDField];
    context3 = [(AKInlineSignInViewController *)self context];
    -[AKTextField setEnabled:](appleIDField2, "setEnabled:", [context3 isUsernameEditable]);
    MEMORY[0x277D82BD8](context3);
    MEMORY[0x277D82BD8](appleIDField2);
  }
}

- (void)_updateVibrancyAndBlurInTextFields
{
  selfCopy = self;
  location[1] = a2;
  fieldBackgroundColor = [(AKInlineSignInViewController *)self fieldBackgroundColor];
  *&v2 = MEMORY[0x277D82BD8](fieldBackgroundColor).n128_u64[0];
  if (fieldBackgroundColor)
  {
    location[0] = _AKLogSystem();
    v22 = OS_LOG_TYPE_DEFAULT;
    if (os_log_type_enabled(location[0], OS_LOG_TYPE_DEFAULT))
    {
      v18 = location[0];
      v19 = v22;
      __os_log_helper_16_0_0(v21);
      _os_log_impl(&dword_222379000, v18, v19, "AKInlineSignInViewController - background color provided", v21, 2u);
    }

    objc_storeStrong(location, 0);
    appleIDField = [(AKInlineSignInViewController *)selfCopy appleIDField];
    [(AKTextField *)appleIDField setUsesVibrancy:0];
    *&v3 = MEMORY[0x277D82BD8](appleIDField).n128_u64[0];
    passwordField = [(AKInlineSignInViewController *)selfCopy passwordField];
    [(AKTextField *)passwordField setUsesVibrancy:0];
    *&v4 = MEMORY[0x277D82BD8](passwordField).n128_u64[0];
    appleIDField2 = [(AKInlineSignInViewController *)selfCopy appleIDField];
    [(AKTextField *)appleIDField2 setBlurEffectStyle:?];
    *&v5 = MEMORY[0x277D82BD8](appleIDField2).n128_u64[0];
    passwordField2 = [(AKInlineSignInViewController *)selfCopy passwordField];
    [(AKTextField *)passwordField2 setBlurEffectStyle:4];
    *&v6 = MEMORY[0x277D82BD8](passwordField2).n128_u64[0];
    appleIDField3 = [(AKInlineSignInViewController *)selfCopy appleIDField];
    [(AKTextField *)appleIDField3 setFieldBackgroundColor:selfCopy->_fieldBackgroundColor];
    *&v7 = MEMORY[0x277D82BD8](appleIDField3).n128_u64[0];
    passwordField3 = [(AKInlineSignInViewController *)selfCopy passwordField];
    [(AKTextField *)passwordField3 setFieldBackgroundColor:selfCopy->_fieldBackgroundColor];
    MEMORY[0x277D82BD8](passwordField3);
  }

  else
  {
    appleIDField4 = [(AKInlineSignInViewController *)selfCopy appleIDField];
    [(AKTextField *)appleIDField4 setUsesVibrancy:selfCopy->_usesVibrancy];
    passwordField4 = [(AKInlineSignInViewController *)selfCopy passwordField];
    [(AKTextField *)passwordField4 setUsesVibrancy:selfCopy->_usesVibrancy];
    appleIDField5 = [(AKInlineSignInViewController *)selfCopy appleIDField];
    [(AKTextField *)appleIDField5 setBlurEffectStyle:selfCopy->_blurEffectStyle];
    passwordField5 = [(AKInlineSignInViewController *)selfCopy passwordField];
    [(AKTextField *)passwordField5 setBlurEffectStyle:selfCopy->_blurEffectStyle];
    MEMORY[0x277D82BD8](passwordField5);
  }
}

- (void)_applyStyleForButton:(id)button
{
  location[2] = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, button);
  objc_storeStrong(location, 0);
}

- (void)_applyStyleForCreateOrForgot:(id)forgot
{
  location[2] = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, forgot);
  objc_storeStrong(location, 0);
}

- (void)traitCollectionDidChange:(id)change
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, change);
  traitCollection = [(AKInlineSignInViewController *)selfCopy traitCollection];
  userInterfaceStyle = [traitCollection userInterfaceStyle];
  userInterfaceStyle2 = [location[0] userInterfaceStyle];
  *&v3 = MEMORY[0x277D82BD8](traitCollection).n128_u64[0];
  if (userInterfaceStyle != userInterfaceStyle2)
  {
    [(AKInlineSignInViewController *)selfCopy _updateVibrancyAndBlurInTextFields];
  }

  objc_storeStrong(location, 0);
}

- (void)signInButtonWasTapped:(id)tapped
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, tapped);
  [(AKInlineSignInViewController *)selfCopy _beginAuthenticationIfPossibleWithOption:1];
  objc_storeStrong(location, 0);
}

- (void)iForgotButtonWasTapped:(id)tapped
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, tapped);
  iforgotButton = [(AKInlineSignInViewController *)selfCopy iforgotButton];
  isHidden = [(UIButton *)iforgotButton isHidden];
  *&v3 = MEMORY[0x277D82BD8](iforgotButton).n128_u64[0];
  if (!isHidden)
  {
    [(AKInlineSignInViewController *)selfCopy _beginAuthenticationIfPossibleWithOption:2, v3];
  }

  objc_storeStrong(location, 0);
}

- (void)createAppleIDButtonWasTapped:(id)tapped
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, tapped);
  createAppleIDButton = [(AKInlineSignInViewController *)selfCopy createAppleIDButton];
  isHidden = [(UIButton *)createAppleIDButton isHidden];
  *&v3 = MEMORY[0x277D82BD8](createAppleIDButton).n128_u64[0];
  if (!isHidden)
  {
    [(AKInlineSignInViewController *)selfCopy _beginAuthenticationIfPossibleWithOption:3, v3];
  }

  objc_storeStrong(location, 0);
}

- (void)_beginAuthenticationIfPossibleWithOption:(unint64_t)option
{
  selfCopy = self;
  v22 = a2;
  optionCopy = option;
  if (self->_passwordRequiredCompletion)
  {
    [(AKInlineSignInViewController *)selfCopy startAnimating];
    v20 = 0;
    if (optionCopy > 1)
    {
      if (optionCopy == 2)
      {
        v3 = [MEMORY[0x277CCA9B8] ak_errorWithCode:-7017];
        v4 = v20;
        v20 = v3;
        MEMORY[0x277D82BD8](v4);
      }

      else if (optionCopy == 3)
      {
        v5 = [MEMORY[0x277CCA9B8] ak_errorWithCode:-7016];
        v6 = v20;
        v20 = v5;
        MEMORY[0x277D82BD8](v6);
      }
    }

    v16 = (selfCopy->_passwordRequiredCompletion + 16);
    passwordField = [(AKInlineSignInViewController *)selfCopy passwordField];
    entryField = [(AKTextField *)passwordField entryField];
    text = [(UITextField *)entryField text];
    (*v16)();
    MEMORY[0x277D82BD8](text);
    MEMORY[0x277D82BD8](entryField);
    MEMORY[0x277D82BD8](passwordField);
    passwordRequiredCompletion = selfCopy->_passwordRequiredCompletion;
    selfCopy->_passwordRequiredCompletion = 0;
    MEMORY[0x277D82BD8](passwordRequiredCompletion);
    objc_storeStrong(&v20, 0);
  }

  else
  {
    appleIDField = [(AKInlineSignInViewController *)selfCopy appleIDField];
    entryField2 = [(AKTextField *)appleIDField entryField];
    text2 = [(UITextField *)entryField2 text];
    whitespaceAndNewlineCharacterSet = [MEMORY[0x277CCA900] whitespaceAndNewlineCharacterSet];
    v11 = [(NSString *)text2 stringByTrimmingCharactersInSet:?];
    passwordField2 = [(AKInlineSignInViewController *)selfCopy passwordField];
    entryField3 = [(AKTextField *)passwordField2 entryField];
    text3 = [(UITextField *)entryField3 text];
    [(AKBaseSignInViewController *)selfCopy _beginAuthenticationIfPossibleWithOption:optionCopy withUsername:v11 password:?];
    MEMORY[0x277D82BD8](text3);
    MEMORY[0x277D82BD8](entryField3);
    MEMORY[0x277D82BD8](passwordField2);
    MEMORY[0x277D82BD8](v11);
    MEMORY[0x277D82BD8](whitespaceAndNewlineCharacterSet);
    MEMORY[0x277D82BD8](text2);
    MEMORY[0x277D82BD8](entryField2);
    MEMORY[0x277D82BD8](appleIDField);
  }
}

- (void)startAnimating
{
  if ([(AKInlineSignInViewController *)self wantsAuthenticationProgress])
  {
    spinner = [(AKInlineSignInViewController *)self spinner];
    [(UIActivityIndicatorView *)spinner startAnimating];
    signInButton = [(AKInlineSignInViewController *)self signInButton];
    [(UIButton *)signInButton setHidden:1];
    [(AKInlineSignInViewController *)self _setCreateButtonHidden:1, MEMORY[0x277D82BD8](signInButton).n128_f64[0]];
    iforgotButton = [(AKInlineSignInViewController *)self iforgotButton];
    [(UIButton *)iforgotButton setHidden:1];
    v2 = MEMORY[0x277D82BD8](iforgotButton).n128_u64[0];
  }

  else
  {
    signInButton2 = [(AKInlineSignInViewController *)self signInButton];
    [(UIButton *)signInButton2 setEnabled:0];
    [(AKInlineSignInViewController *)self _setCreateButtonEnabled:0, MEMORY[0x277D82BD8](signInButton2).n128_f64[0]];
    iforgotButton2 = [(AKInlineSignInViewController *)self iforgotButton];
    [(UIButton *)iforgotButton2 setEnabled:0];
    v2 = MEMORY[0x277D82BD8](iforgotButton2).n128_u64[0];
  }

  appleIDField = [(AKInlineSignInViewController *)self appleIDField];
  [(AKTextField *)appleIDField setEnabled:0];
  passwordField = [(AKInlineSignInViewController *)self passwordField];
  [(AKTextField *)passwordField setEnabled:0];
  MEMORY[0x277D82BD8](passwordField);
}

- (void)stopAnimating
{
  if ([(AKInlineSignInViewController *)self wantsAuthenticationProgress])
  {
    spinner = [(AKInlineSignInViewController *)self spinner];
    [(UIActivityIndicatorView *)spinner stopAnimating];
    signInButton = [(AKInlineSignInViewController *)self signInButton];
    [(UIButton *)signInButton setHidden:[(AKInlineSignInViewController *)self isPrimaryButtonHidden]];
    iforgotButton = [(AKInlineSignInViewController *)self iforgotButton];
    [(UIButton *)iforgotButton setHidden:0];
    v2 = MEMORY[0x277D82BD8](iforgotButton).n128_u64[0];
    if (self->_createAppleIDAllowed)
    {
      [(AKInlineSignInViewController *)self _setCreateButtonHidden:0, *&v2];
    }
  }

  else
  {
    [(AKInlineSignInViewController *)self _updateSignInButtonState];
    [(AKInlineSignInViewController *)self _setCreateButtonEnabled:1];
    iforgotButton2 = [(AKInlineSignInViewController *)self iforgotButton];
    [(UIButton *)iforgotButton2 setEnabled:1];
    v2 = MEMORY[0x277D82BD8](iforgotButton2).n128_u64[0];
  }

  appleIDField = [(AKInlineSignInViewController *)self appleIDField];
  context = [(AKInlineSignInViewController *)self context];
  -[AKTextField setEnabled:](appleIDField, "setEnabled:", [context isUsernameEditable]);
  MEMORY[0x277D82BD8](context);
  passwordField = [(AKInlineSignInViewController *)self passwordField];
  [(AKTextField *)passwordField setEnabled:1];
  MEMORY[0x277D82BD8](passwordField);
}

- (void)_setPasswordFieldHidden:(BOOL)hidden animated:(BOOL)animated
{
  selfCopy = self;
  v18 = a2;
  hiddenCopy = hidden;
  animatedCopy = animated;
  v6 = MEMORY[0x277D75D18];
  v4 = 0.7;
  if (!animated)
  {
    v4 = 0.0;
  }

  v5 = v4;
  v9 = MEMORY[0x277D85DD0];
  v10 = -1073741824;
  v11 = 0;
  v12 = __65__AKInlineSignInViewController__setPasswordFieldHidden_animated___block_invoke;
  v13 = &unk_2784A5EC8;
  v14 = MEMORY[0x277D82BE0](selfCopy);
  v15 = hiddenCopy;
  v8 = hiddenCopy;
  v7 = MEMORY[0x277D82BE0](selfCopy);
  [v6 animateWithDuration:&v9 animations:v5 completion:?];
  objc_storeStrong(&v7, 0);
  objc_storeStrong(&v14, 0);
}

double __65__AKInlineSignInViewController__setPasswordFieldHidden_animated___block_invoke(uint64_t a1)
{
  v1 = [*(a1 + 32) appleIDField];
  if (*(a1 + 40))
  {
    v2 = 3;
  }

  else
  {
    v2 = 0;
  }

  [v1 setRowIdentifier:{v2, v1}];
  v6 = [*(a1 + 32) passwordField];
  [v6 setHidden:*(a1 + 40) & 1];
  *&result = MEMORY[0x277D82BD8](v6).n128_u64[0];
  return result;
}

double __65__AKInlineSignInViewController__setPasswordFieldHidden_animated___block_invoke_2(uint64_t a1)
{
  if (*(a1 + 40))
  {
    v3 = [*(a1 + 32) appleIDField];
    v2 = [v3 entryField];
    [v2 becomeFirstResponder];
    MEMORY[0x277D82BD8](v2);
    v5 = [*(a1 + 32) passwordField];
    v4 = [v5 entryField];
    [v4 setText:0];
    MEMORY[0x277D82BD8](v4);
    *&result = MEMORY[0x277D82BD8](v5).n128_u64[0];
  }

  else
  {
    v7 = [*(a1 + 32) passwordField];
    v6 = [v7 entryField];
    [v6 becomeFirstResponder];
    MEMORY[0x277D82BD8](v6);
    *&result = MEMORY[0x277D82BD8](v7).n128_u64[0];
  }

  return result;
}

- (void)_appleIDTextFieldDidChange:(id)change
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, change);
  [(AKInlineSignInViewController *)selfCopy _updateSignInButtonState];
  objc_storeStrong(location, 0);
}

- (void)_passwordTextFieldDidChange:(id)change
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, change);
  [(AKInlineSignInViewController *)selfCopy _updateSignInButtonState];
  objc_storeStrong(location, 0);
}

- (void)_passwordFieldTapped
{
  passwordField = [(AKInlineSignInViewController *)self passwordField];
  entryField = [(AKTextField *)passwordField entryField];
  [(UITextField *)entryField becomeFirstResponder];
  MEMORY[0x277D82BD8](entryField);
  MEMORY[0x277D82BD8](passwordField);
}

- (void)_usernameFieldTapped
{
  appleIDField = [(AKInlineSignInViewController *)self appleIDField];
  entryField = [(AKTextField *)appleIDField entryField];
  [(UITextField *)entryField becomeFirstResponder];
  MEMORY[0x277D82BD8](entryField);
  MEMORY[0x277D82BD8](appleIDField);
}

- (void)_updateSignInButtonState
{
  if ([(AKBaseSignInViewController *)self _isSignInAllowed])
  {
    appleIDField = [(AKInlineSignInViewController *)self appleIDField];
    entryField = [(AKTextField *)appleIDField entryField];
    text = [(UITextField *)entryField text];
    whitespaceAndNewlineCharacterSet = [MEMORY[0x277CCA900] whitespaceAndNewlineCharacterSet];
    v5 = [(NSString *)text stringByTrimmingCharactersInSet:?];
    v10 = [(NSString *)v5 length]!= 0;
    MEMORY[0x277D82BD8](v5);
    MEMORY[0x277D82BD8](whitespaceAndNewlineCharacterSet);
    MEMORY[0x277D82BD8](text);
    MEMORY[0x277D82BD8](entryField);
    passwordField = [(AKInlineSignInViewController *)self passwordField];
    v18 = 0;
    v16 = 0;
    v14 = 0;
    v12 = 1;
    if (([(AKTextField *)passwordField isHidden]& 1) == 0)
    {
      passwordField2 = [(AKInlineSignInViewController *)self passwordField];
      v18 = 1;
      entryField2 = [(AKTextField *)passwordField2 entryField];
      v16 = 1;
      text2 = [(UITextField *)entryField2 text];
      v14 = 1;
      v12 = [(NSString *)text2 length]!= 0;
    }

    if (v14)
    {
      MEMORY[0x277D82BD8](text2);
    }

    if (v16)
    {
      MEMORY[0x277D82BD8](entryField2);
    }

    if (v18)
    {
      MEMORY[0x277D82BD8](passwordField2);
    }

    signInButton = [(AKInlineSignInViewController *)self signInButton];
    v4 = 0;
    if (v10)
    {
      v4 = v12;
    }

    [(UIButton *)signInButton setEnabled:v4, signInButton];
    MEMORY[0x277D82BD8](v3);
  }

  else
  {
    signInButton2 = [(AKInlineSignInViewController *)self signInButton];
    [(UIButton *)signInButton2 setEnabled:0];
    MEMORY[0x277D82BD8](signInButton2);
  }
}

- (void)_updateFonts:(id)fonts
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, fonts);
  v16 = [MEMORY[0x277D74310] preferredFontDescriptorWithTextStyle:*MEMORY[0x277D76968] addingSymbolicTraits:? options:?];
  v15 = [MEMORY[0x277D74300] fontWithDescriptor:v16 size:?];
  v14 = [MEMORY[0x277D74310] preferredFontDescriptorWithTextStyle:*MEMORY[0x277D76A20] addingSymbolicTraits:0 options:2];
  v13 = [MEMORY[0x277D74300] fontWithDescriptor:v14 size:0.0];
  createAppleIDButton = [(AKInlineSignInViewController *)selfCopy createAppleIDButton];
  titleLabel = [(UIButton *)createAppleIDButton titleLabel];
  [(UILabel *)titleLabel setFont:v15];
  MEMORY[0x277D82BD8](titleLabel);
  *&v3 = MEMORY[0x277D82BD8](createAppleIDButton).n128_u64[0];
  iforgotButton = [(AKInlineSignInViewController *)selfCopy iforgotButton];
  titleLabel2 = [(UIButton *)iforgotButton titleLabel];
  [(UILabel *)titleLabel2 setFont:v15];
  MEMORY[0x277D82BD8](titleLabel2);
  *&v4 = MEMORY[0x277D82BD8](iforgotButton).n128_u64[0];
  signInButton = [(AKInlineSignInViewController *)selfCopy signInButton];
  titleLabel3 = [(UIButton *)signInButton titleLabel];
  [(UILabel *)titleLabel3 setFont:v13];
  MEMORY[0x277D82BD8](titleLabel3);
  *&v5 = MEMORY[0x277D82BD8](signInButton).n128_u64[0];
  view = [(AKInlineSignInViewController *)selfCopy view];
  [view setNeedsUpdateConstraints];
  MEMORY[0x277D82BD8](view);
  objc_storeStrong(&v13, 0);
  objc_storeStrong(&v14, 0);
  objc_storeStrong(&v15, 0);
  objc_storeStrong(&v16, 0);
  objc_storeStrong(location, 0);
}

- (void)setUsesVibrancy:(BOOL)vibrancy
{
  v8 = *MEMORY[0x277D85DE8];
  selfCopy = self;
  v5 = a2;
  vibrancyCopy = vibrancy;
  self->_usesVibrancy = vibrancy;
  oslog = _AKLogSystem();
  if (os_log_type_enabled(oslog, OS_LOG_TYPE_DEFAULT))
  {
    __os_log_helper_16_0_1_4_0(v7, vibrancyCopy);
    _os_log_impl(&dword_222379000, oslog, OS_LOG_TYPE_DEFAULT, "AKInlineSignInViewController - setUsesVibrancy %d", v7, 8u);
  }

  objc_storeStrong(&oslog, 0);
  [(AKInlineSignInViewController *)selfCopy _updateVibrancyAndBlurInTextFields];
  *MEMORY[0x277D85DE8];
}

- (void)setBlurEffectStyle:(int64_t)style
{
  v9 = *MEMORY[0x277D85DE8];
  selfCopy = self;
  v6 = a2;
  styleCopy = style;
  self->_blurEffectStyle = style;
  oslog = _AKLogSystem();
  if (os_log_type_enabled(oslog, OS_LOG_TYPE_DEFAULT))
  {
    v3 = [MEMORY[0x277CCABB0] numberWithInteger:styleCopy];
    __os_log_helper_16_2_1_8_64(v8, v3);
    _os_log_impl(&dword_222379000, oslog, OS_LOG_TYPE_DEFAULT, "AKInlineSignInViewController - setBlurEffectStyle %@", v8, 0xCu);
    MEMORY[0x277D82BD8](v3);
  }

  objc_storeStrong(&oslog, 0);
  [(AKInlineSignInViewController *)selfCopy _updateVibrancyAndBlurInTextFields];
  *MEMORY[0x277D85DE8];
}

- (void)setFieldBackgroundColor:(id)color
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, color);
  objc_storeStrong(&selfCopy->_fieldBackgroundColor, location[0]);
  [(AKInlineSignInViewController *)selfCopy _updateVibrancyAndBlurInTextFields];
  objc_storeStrong(location, 0);
}

- (id)_userFriendlyUsername:(id)username
{
  location[2] = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, username);
  if ([location[0] containsString:@"@"])
  {
    v7 = MEMORY[0x277D82BE0](location[0]);
  }

  else
  {
    v5 = objc_opt_new();
    v7 = [v5 displayFormatFor:location[0]];
    objc_storeStrong(&v5, 0);
  }

  objc_storeStrong(location, 0);
  v3 = v7;

  return v3;
}

- (void)context:(id)context needsPasswordWithCompletion:(id)completion
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, context);
  v8 = 0;
  objc_storeStrong(&v8, completion);
  v4 = MEMORY[0x223DB6C90](v8);
  passwordRequiredCompletion = selfCopy->_passwordRequiredCompletion;
  selfCopy->_passwordRequiredCompletion = v4;
  *&v6 = MEMORY[0x277D82BD8](passwordRequiredCompletion).n128_u64[0];
  [(AKInlineSignInViewController *)selfCopy stopAnimating];
  [(AKInlineSignInViewController *)selfCopy _setPasswordFieldHidden:0 animated:1];
  objc_storeStrong(&v8, 0);
  objc_storeStrong(location, 0);
}

- (BOOL)textFieldShouldReturn:(id)return
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, return);
  v63 = 1;
  v43 = location[0];
  appleIDField = [(AKInlineSignInViewController *)selfCopy appleIDField];
  entryField = [(AKTextField *)appleIDField entryField];
  v46 = [v43 isEqual:?];
  MEMORY[0x277D82BD8](entryField);
  *&v3 = MEMORY[0x277D82BD8](appleIDField).n128_u64[0];
  if (v46)
  {
    appleIDField2 = [(AKInlineSignInViewController *)selfCopy appleIDField];
    entryField2 = [(AKTextField *)appleIDField2 entryField];
    text = [(UITextField *)entryField2 text];
    MEMORY[0x277D82BD8](entryField2);
    *&v4 = MEMORY[0x277D82BD8](appleIDField2).n128_u64[0];
    v61 = [(AKInlineSignInViewController *)selfCopy _userFriendlyUsername:text, v4];
    appleIDField3 = [(AKInlineSignInViewController *)selfCopy appleIDField];
    entryField3 = [(AKTextField *)appleIDField3 entryField];
    [(UITextField *)entryField3 setText:v61];
    MEMORY[0x277D82BD8](entryField3);
    *&v5 = MEMORY[0x277D82BD8](appleIDField3).n128_u64[0];
    appleIDField4 = [(AKInlineSignInViewController *)selfCopy appleIDField];
    entryField4 = [(AKTextField *)appleIDField4 entryField];
    [(UITextField *)entryField4 resignFirstResponder];
    MEMORY[0x277D82BD8](entryField4);
    *&v6 = MEMORY[0x277D82BD8](appleIDField4).n128_u64[0];
    passwordField = [(AKInlineSignInViewController *)selfCopy passwordField];
    isHidden = [(AKTextField *)passwordField isHidden];
    *&v7 = MEMORY[0x277D82BD8](passwordField).n128_u64[0];
    if (isHidden)
    {
      when = dispatch_time(0, 500000000);
      v30 = MEMORY[0x277D85CD0];
      v8 = MEMORY[0x277D85CD0];
      queue = v30;
      v55 = MEMORY[0x277D85DD0];
      v56 = -1073741824;
      v57 = 0;
      v58 = __54__AKInlineSignInViewController_textFieldShouldReturn___block_invoke;
      v59 = &unk_2784A5C90;
      v60 = MEMORY[0x277D82BE0](selfCopy);
      dispatch_after(when, queue, &v55);
      MEMORY[0x277D82BD8](queue);
      objc_storeStrong(&v60, 0);
    }

    else
    {
      passwordField2 = [(AKInlineSignInViewController *)selfCopy passwordField];
      entryField5 = [(AKTextField *)passwordField2 entryField];
      [(UITextField *)entryField5 becomeFirstResponder];
      MEMORY[0x277D82BD8](entryField5);
      MEMORY[0x277D82BD8](passwordField2);
    }

    v63 = 0;
    objc_storeStrong(&v61, 0);
    objc_storeStrong(&text, 0);
  }

  else
  {
    v26 = location[0];
    passwordField3 = [(AKInlineSignInViewController *)selfCopy passwordField];
    entryField6 = [(AKTextField *)passwordField3 entryField];
    v29 = [v26 isEqual:?];
    MEMORY[0x277D82BD8](entryField6);
    *&v9 = MEMORY[0x277D82BD8](passwordField3).n128_u64[0];
    if (v29)
    {
      appleIDField5 = [(AKInlineSignInViewController *)selfCopy appleIDField];
      entryField7 = [(AKTextField *)appleIDField5 entryField];
      text2 = [(UITextField *)entryField7 text];
      v53 = 0;
      v25 = 0;
      if (![(NSString *)text2 length])
      {
        appleIDField6 = [(AKInlineSignInViewController *)selfCopy appleIDField];
        v53 = 1;
        v25 = [(AKTextField *)appleIDField6 isHidden]== 0;
      }

      if (v53)
      {
        MEMORY[0x277D82BD8](appleIDField6);
      }

      MEMORY[0x277D82BD8](text2);
      MEMORY[0x277D82BD8](entryField7);
      *&v10 = MEMORY[0x277D82BD8](appleIDField5).n128_u64[0];
      if (v25)
      {
        passwordField4 = [(AKInlineSignInViewController *)selfCopy passwordField];
        entryField8 = [(AKTextField *)passwordField4 entryField];
        [(UITextField *)entryField8 resignFirstResponder];
        MEMORY[0x277D82BD8](entryField8);
        *&v11 = MEMORY[0x277D82BD8](passwordField4).n128_u64[0];
        appleIDField7 = [(AKInlineSignInViewController *)selfCopy appleIDField];
        entryField9 = [(AKTextField *)appleIDField7 entryField];
        [(UITextField *)entryField9 becomeFirstResponder];
        MEMORY[0x277D82BD8](entryField9);
        MEMORY[0x277D82BD8](appleIDField7);
        v63 = 0;
      }

      else
      {
        v16 = dispatch_time(0, 500000000);
        v15 = MEMORY[0x277D85CD0];
        v12 = MEMORY[0x277D85CD0];
        v17 = v15;
        v47 = MEMORY[0x277D85DD0];
        v48 = -1073741824;
        v49 = 0;
        v50 = __54__AKInlineSignInViewController_textFieldShouldReturn___block_invoke_2;
        v51 = &unk_2784A5C90;
        v52 = MEMORY[0x277D82BE0](selfCopy);
        dispatch_after(v16, v17, &v47);
        MEMORY[0x277D82BD8](v17);
        objc_storeStrong(&v52, 0);
      }
    }
  }

  v14 = v63;
  objc_storeStrong(location, 0);
  return v14 & 1;
}

double __54__AKInlineSignInViewController_textFieldShouldReturn___block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = [v2 signInButton];
  [v2 signInButtonWasTapped:?];
  *&result = MEMORY[0x277D82BD8](v3).n128_u64[0];
  return result;
}

double __54__AKInlineSignInViewController_textFieldShouldReturn___block_invoke_2(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = [v2 signInButton];
  [v2 signInButtonWasTapped:?];
  *&result = MEMORY[0x277D82BD8](v3).n128_u64[0];
  return result;
}

- (BOOL)textField:(id)field shouldChangeCharactersInRange:(_NSRange)range replacementString:(id)string
{
  rangeCopy = range;
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, field);
  v20 = 0;
  objc_storeStrong(&v20, string);
  v13 = location[0];
  appleIDField = [(AKInlineSignInViewController *)selfCopy appleIDField];
  entryField = [(AKTextField *)appleIDField entryField];
  v18 = 0;
  v16 = 0;
  v15 = 0;
  if ([v13 isEqual:?])
  {
    passwordField = [(AKInlineSignInViewController *)selfCopy passwordField];
    v18 = 1;
    v15 = 0;
    if (![(AKTextField *)passwordField isHidden])
    {
      text = [location[0] text];
      v16 = 1;
      v15 = 0;
      if (![text isEqualToString:v20])
      {
        v28 = 0;
        v27 = 0;
        v29 = 0;
        v30 = 0;
        v26 = rangeCopy;
        v24 = 0;
        v25 = 0;
        v10 = 0;
        if (!rangeCopy.location)
        {
          v10 = v26.length == v25;
        }

        v15 = !v10;
      }
    }
  }

  if (v16)
  {
    MEMORY[0x277D82BD8](text);
  }

  if (v18)
  {
    MEMORY[0x277D82BD8](passwordField);
  }

  MEMORY[0x277D82BD8](entryField);
  *&v5 = MEMORY[0x277D82BD8](appleIDField).n128_u64[0];
  if (v15)
  {
    [(AKInlineSignInViewController *)selfCopy _setPasswordFieldHidden:1 animated:0, v5];
    if (selfCopy->_passwordRequiredCompletion)
    {
      passwordRequiredCompletion = selfCopy->_passwordRequiredCompletion;
      v9 = [MEMORY[0x277CCA9B8] ak_errorWithCode:-7003];
      passwordRequiredCompletion[2](passwordRequiredCompletion, 0);
      MEMORY[0x277D82BD8](v9);
      v6 = selfCopy->_passwordRequiredCompletion;
      selfCopy->_passwordRequiredCompletion = 0;
      MEMORY[0x277D82BD8](v6);
    }
  }

  objc_storeStrong(&v20, 0);
  objc_storeStrong(location, 0);
  return 1;
}

- (void)setUsesDarkMode:(BOOL)mode
{
  if (mode != self->_usesDarkMode)
  {
    self->_usesDarkMode = mode;
    if (self->_usesDarkMode)
    {
      self->_usesVibrancy = 1;
      self->_blurEffectStyle = 2;
    }

    else
    {
      self->_usesVibrancy = 0;
      self->_blurEffectStyle = 1;
    }

    [(AKInlineSignInViewController *)self _updateVibrancyAndBlurInTextFields];
  }
}

@end