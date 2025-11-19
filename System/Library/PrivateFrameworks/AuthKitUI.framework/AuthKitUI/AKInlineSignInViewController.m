@interface AKInlineSignInViewController
- (AKInlineSignInViewController)init;
- (AKInlineSignInViewController)initWithNibName:(id)a3 bundle:(id)a4;
- (BOOL)textField:(id)a3 shouldChangeCharactersInRange:(_NSRange)a4 replacementString:(id)a5;
- (BOOL)textFieldShouldReturn:(id)a3;
- (id)_userFriendlyUsername:(id)a3;
- (void)_appleIDTextFieldDidChange:(id)a3;
- (void)_applyStyleForButton:(id)a3;
- (void)_applyStyleForCreateOrForgot:(id)a3;
- (void)_beginAuthenticationIfPossibleWithOption:(unint64_t)a3;
- (void)_passwordFieldTapped;
- (void)_passwordTextFieldDidChange:(id)a3;
- (void)_prefillAuthFields;
- (void)_presentShieldUIIfNeededWithViewController:(id)a3;
- (void)_presentShieldUIWithViewController:(id)a3;
- (void)_setButtonTitles;
- (void)_setCreateButtonEnabled:(BOOL)a3;
- (void)_setCreateButtonHidden:(BOOL)a3;
- (void)_setForgotButtonHidden:(BOOL)a3;
- (void)_setPasswordFieldHidden:(BOOL)a3 animated:(BOOL)a4;
- (void)_updateFonts:(id)a3;
- (void)_updateSignInButtonState;
- (void)_updateSignInFieldStatuses;
- (void)_updateVibrancyAndBlurInTextFields;
- (void)_usernameFieldTapped;
- (void)context:(id)a3 needsPasswordWithCompletion:(id)a4;
- (void)createAppleIDButtonWasTapped:(id)a3;
- (void)dealloc;
- (void)iForgotButtonWasTapped:(id)a3;
- (void)refreshCreateAppleIDButton;
- (void)setBlurEffectStyle:(int64_t)a3;
- (void)setContext:(id)a3;
- (void)setFieldBackgroundColor:(id)a3;
- (void)setSecondaryButtonTarget:(id)a3 action:(SEL)a4;
- (void)setSecondaryButtonTitle:(id)a3;
- (void)setTertiaryButtonTarget:(id)a3 action:(SEL)a4;
- (void)setTertiaryButtonTitle:(id)a3;
- (void)setUsesDarkMode:(BOOL)a3;
- (void)setUsesVibrancy:(BOOL)a3;
- (void)signInButtonWasTapped:(id)a3;
- (void)startAnimating;
- (void)stopAnimating;
- (void)traitCollectionDidChange:(id)a3;
- (void)viewDidAppear:(BOOL)a3;
- (void)viewDidLoad;
- (void)viewWillAppear:(BOOL)a3;
@end

@implementation AKInlineSignInViewController

- (AKInlineSignInViewController)init
{
  v18 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, @"AKInlineSignInViewController_iOS");
  v7 = v18;
  v6 = location[0];
  v8 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
  v18 = 0;
  v9 = [(AKBaseSignInViewController *)v7 _initWithNibName:v6 bundle:?];
  v18 = v9;
  objc_storeStrong(&v18, v9);
  MEMORY[0x277D82BD8](v8);
  if (v9)
  {
    objc_initWeak(&v16, v18);
    queue = dispatch_get_global_queue(33, 0);
    v10 = MEMORY[0x277D85DD0];
    v11 = -1073741824;
    v12 = 0;
    v13 = __36__AKInlineSignInViewController_init__block_invoke;
    v14 = &unk_2784A6770;
    objc_copyWeak(&v15, &v16);
    dispatch_async(queue, &v10);
    *&v2 = MEMORY[0x277D82BD8](queue).n128_u64[0];
    [(AKInlineSignInViewController *)v18 _setButtonTitles];
    objc_destroyWeak(&v15);
    objc_destroyWeak(&v16);
  }

  v4 = MEMORY[0x277D82BE0](v18);
  objc_storeStrong(location, 0);
  objc_storeStrong(&v18, 0);
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
  v6 = self;
  v5 = a2;
  v3 = [MEMORY[0x277CCAB98] defaultCenter];
  [v3 removeObserver:v6 name:*MEMORY[0x277D76810] object:0];
  *&v2 = MEMORY[0x277D82BD8](v3).n128_u64[0];
  v4.receiver = v6;
  v4.super_class = AKInlineSignInViewController;
  [(AKBaseSignInViewController *)&v4 dealloc];
}

- (AKInlineSignInViewController)initWithNibName:(id)a3 bundle:(id)a4
{
  v11 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  v9 = 0;
  objc_storeStrong(&v9, a4);
  [MEMORY[0x277CBEAD8] raise:*MEMORY[0x277CBE660] format:@"Call -init instead of -initWithNibName:bundle:"];
  v4 = v11;
  v11 = 0;
  v8.receiver = v4;
  v8.super_class = AKInlineSignInViewController;
  v11 = [(AKBaseSignInViewController *)&v8 _initWithNibName:0 bundle:?];
  v7 = MEMORY[0x277D82BE0](v11);
  objc_storeStrong(&v9, 0);
  objc_storeStrong(location, 0);
  objc_storeStrong(&v11, 0);
  return v7;
}

- (void)setSecondaryButtonTitle:(id)a3
{
  v10 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  if (![(NSString *)v10->_secondaryButtonTitle isEqualToString:location[0]])
  {
    v3 = [location[0] copy];
    secondaryButtonTitle = v10->_secondaryButtonTitle;
    v10->_secondaryButtonTitle = v3;
    *&v5 = MEMORY[0x277D82BD8](secondaryButtonTitle).n128_u64[0];
    v8 = [(AKInlineSignInViewController *)v10 iforgotButton];
    [(UIButton *)v8 setTitle:v10->_secondaryButtonTitle forState:0];
    *&v6 = MEMORY[0x277D82BD8](v8).n128_u64[0];
    if ([(NSString *)v10->_secondaryButtonTitle length])
    {
      v7 = [(AKInlineSignInViewController *)v10 iforgotButton];
      [(UIButton *)v7 setHidden:0];
      MEMORY[0x277D82BD8](v7);
    }

    else
    {
      [(AKInlineSignInViewController *)v10 _setForgotButtonHidden:1];
    }
  }

  objc_storeStrong(location, 0);
}

- (void)setTertiaryButtonTitle:(id)a3
{
  v6 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  if (![(NSString *)v6->_tertiaryButtonTitle isEqualToString:location[0]])
  {
    v3 = [location[0] copy];
    tertiaryButtonTitle = v6->_tertiaryButtonTitle;
    v6->_tertiaryButtonTitle = v3;
    MEMORY[0x277D82BD8](tertiaryButtonTitle);
  }

  [(AKInlineSignInViewController *)v6 refreshCreateAppleIDButton];
  objc_storeStrong(location, 0);
}

- (void)refreshCreateAppleIDButton
{
  if (self->_createAppleIDAllowed && (v3 = [(AKInlineSignInViewController *)self createAppleIDButton], [(UIButton *)v3 setTitle:self->_tertiaryButtonTitle forState:0], [(NSString *)self->_tertiaryButtonTitle length]))
  {
    [(AKInlineSignInViewController *)self _setCreateButtonHidden:0];
    v2 = [(AKInlineSignInViewController *)self createAppleIDButton];
    [(AKInlineSignInViewController *)self _applyStyleForCreateOrForgot:?];
    MEMORY[0x277D82BD8](v2);
  }

  else
  {
    [(AKInlineSignInViewController *)self _setCreateButtonHidden:1];
  }
}

- (void)_setCreateButtonHidden:(BOOL)a3
{
  v3 = [(AKInlineSignInViewController *)self createAppleIDButton];
  [(UIButton *)v3 setHidden:a3];
  MEMORY[0x277D82BD8](v3);
}

- (void)_setForgotButtonHidden:(BOOL)a3
{
  v3 = [(AKInlineSignInViewController *)self iforgotButton];
  [(UIButton *)v3 setHidden:a3];
  MEMORY[0x277D82BD8](v3);
}

- (void)_setCreateButtonEnabled:(BOOL)a3
{
  v3 = [(AKInlineSignInViewController *)self createAppleIDButton];
  [(UIButton *)v3 setEnabled:a3];
  MEMORY[0x277D82BD8](v3);
}

- (void)setSecondaryButtonTarget:(id)a3 action:(SEL)a4
{
  v11 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  v9 = [(AKInlineSignInViewController *)v11 view];
  *&v4 = MEMORY[0x277D82BD8](v9).n128_u64[0];
  if (v9)
  {
    v6 = [(AKInlineSignInViewController *)v11 iforgotButton];
    [(UIButton *)v6 removeTarget:v11 action:sel_iForgotButtonWasTapped_ forControlEvents:?];
    *&v5 = MEMORY[0x277D82BD8](v6).n128_u64[0];
    v7 = [(AKInlineSignInViewController *)v11 iforgotButton];
    [(UIButton *)v7 addTarget:location[0] action:a4 forControlEvents:64];
    MEMORY[0x277D82BD8](v7);
  }

  objc_storeStrong(location, 0);
}

- (void)setTertiaryButtonTarget:(id)a3 action:(SEL)a4
{
  v11 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  v9 = [(AKInlineSignInViewController *)v11 view];
  *&v4 = MEMORY[0x277D82BD8](v9).n128_u64[0];
  if (v9)
  {
    v6 = [(AKInlineSignInViewController *)v11 createAppleIDButton];
    [(UIButton *)v6 removeTarget:v11 action:sel_createAppleIDButtonWasTapped_ forControlEvents:?];
    *&v5 = MEMORY[0x277D82BD8](v6).n128_u64[0];
    v7 = [(AKInlineSignInViewController *)v11 createAppleIDButton];
    [(UIButton *)v7 addTarget:location[0] action:a4 forControlEvents:64];
    MEMORY[0x277D82BD8](v7);
  }

  objc_storeStrong(location, 0);
}

- (void)setContext:(id)a3
{
  v6 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  objc_storeStrong(&v6->_context, location[0]);
  v4 = [(AKAppleIDAuthenticationInAppContext *)v6->_context _passwordDelegate];
  *&v3 = MEMORY[0x277D82BD8](v4).n128_u64[0];
  if (!v4)
  {
    [(AKAppleIDAuthenticationInAppContext *)v6->_context _setPasswordDelegate:v6, v3];
  }

  [(AKInlineSignInViewController *)v6 _prefillAuthFields:v3];
  [(AKInlineSignInViewController *)v6 _updateSignInFieldStatuses];
  objc_storeStrong(location, 0);
}

- (void)viewDidLoad
{
  v136 = self;
  v135 = a2;
  v134.receiver = self;
  v134.super_class = AKInlineSignInViewController;
  [(AKInlineSignInViewController *)&v134 viewDidLoad];
  v123 = [(AKInlineSignInViewController *)v136 view];
  [v123 setTranslatesAutoresizingMaskIntoConstraints:0];
  *&v2 = MEMORY[0x277D82BD8](v123).n128_u64[0];
  v124 = [(AKInlineSignInViewController *)v136 iforgotButton];
  [(UIButton *)v124 setTitle:v136->_secondaryButtonTitle forState:0];
  *&v3 = MEMORY[0x277D82BD8](v124).n128_u64[0];
  v125 = v136;
  v126 = [(AKInlineSignInViewController *)v136 iforgotButton];
  [(AKInlineSignInViewController *)v125 _applyStyleForCreateOrForgot:?];
  *&v4 = MEMORY[0x277D82BD8](v126).n128_u64[0];
  v128 = [(AKInlineSignInViewController *)v136 iforgotButton];
  v127 = [(UIButton *)v128 allTargets];
  v129 = [v127 count];
  MEMORY[0x277D82BD8](v127);
  v5 = MEMORY[0x277D82BD8](v128).n128_u64[0];
  if (!v129)
  {
    v122 = [(AKInlineSignInViewController *)v136 iforgotButton];
    [(UIButton *)v122 addTarget:v136 action:sel_iForgotButtonWasTapped_ forControlEvents:64];
    v5 = MEMORY[0x277D82BD8](v122).n128_u64[0];
  }

  if (![(NSString *)v136->_secondaryButtonTitle length])
  {
    [(AKInlineSignInViewController *)v136 _setForgotButtonHidden:1];
  }

  [(AKInlineSignInViewController *)v136 refreshCreateAppleIDButton];
  v120 = [(AKInlineSignInViewController *)v136 createAppleIDButton];
  v119 = [(UIButton *)v120 allTargets];
  v121 = [v119 count];
  MEMORY[0x277D82BD8](v119);
  v6 = MEMORY[0x277D82BD8](v120).n128_u64[0];
  if (!v121)
  {
    v118 = [(AKInlineSignInViewController *)v136 createAppleIDButton];
    [(UIButton *)v118 addTarget:v136 action:sel_createAppleIDButtonWasTapped_ forControlEvents:64];
    v6 = MEMORY[0x277D82BD8](v118).n128_u64[0];
  }

  v64 = [(AKInlineSignInViewController *)v136 signInButton];
  [(UIButton *)v64 setTitle:v136->_primaryButtonTitle forState:?];
  *&v7 = MEMORY[0x277D82BD8](v64).n128_u64[0];
  v65 = [(AKInlineSignInViewController *)v136 signInButton];
  [(UIButton *)v65 addTarget:v136 action:sel_signInButtonWasTapped_ forControlEvents:64];
  *&v8 = MEMORY[0x277D82BD8](v65).n128_u64[0];
  v66 = [(AKInlineSignInViewController *)v136 signInButton];
  [(UIButton *)v66 setHidden:[(AKInlineSignInViewController *)v136 isPrimaryButtonHidden]];
  *&v9 = MEMORY[0x277D82BD8](v66).n128_u64[0];
  v67 = v136;
  v68 = [(AKInlineSignInViewController *)v136 signInButton];
  [(AKInlineSignInViewController *)v67 _applyStyleForButton:?];
  *&v10 = MEMORY[0x277D82BD8](v68).n128_u64[0];
  v69 = [(AKInlineSignInViewController *)v136 appleIDField];
  [(AKTextField *)v69 setRowIdentifier:?];
  *&v11 = MEMORY[0x277D82BD8](v69).n128_u64[0];
  v70 = [(AKInlineSignInViewController *)v136 passwordField];
  if ([(AKInlineSignInViewController *)v136 shouldPromptForPasswordOnly])
  {
    v12 = 3;
  }

  else
  {
    v12 = 1;
  }

  [(AKTextField *)v70 setRowIdentifier:v12];
  *&v13 = MEMORY[0x277D82BD8](v70).n128_u64[0];
  v74 = [(AKInlineSignInViewController *)v136 appleIDField];
  v73 = [(AKTextField *)v74 entryField];
  v72 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
  v71 = [v72 localizedStringForKey:@"EMAIL_OR_PHONE_PLACEHOLDER" value:? table:?];
  [(UITextField *)v73 setPlaceholder:?];
  MEMORY[0x277D82BD8](v71);
  MEMORY[0x277D82BD8](v72);
  MEMORY[0x277D82BD8](v73);
  *&v14 = MEMORY[0x277D82BD8](v74).n128_u64[0];
  v76 = [(AKInlineSignInViewController *)v136 appleIDField];
  v75 = [(AKTextField *)v76 entryField];
  [(UITextField *)v75 setKeyboardType:7];
  MEMORY[0x277D82BD8](v75);
  *&v15 = MEMORY[0x277D82BD8](v76).n128_u64[0];
  v78 = [(AKInlineSignInViewController *)v136 appleIDField];
  v77 = [(AKTextField *)v78 entryField];
  [(UITextField *)v77 setAutocapitalizationType:0];
  MEMORY[0x277D82BD8](v77);
  *&v16 = MEMORY[0x277D82BD8](v78).n128_u64[0];
  v80 = [(AKInlineSignInViewController *)v136 appleIDField];
  v79 = [(AKTextField *)v80 entryField];
  [(UITextField *)v79 setAutocorrectionType:1];
  MEMORY[0x277D82BD8](v79);
  *&v17 = MEMORY[0x277D82BD8](v80).n128_u64[0];
  v82 = [(AKInlineSignInViewController *)v136 appleIDField];
  v81 = [(AKTextField *)v82 entryField];
  [(UITextField *)v81 setAdjustsFontSizeToFitWidth:1];
  MEMORY[0x277D82BD8](v81);
  *&v18 = MEMORY[0x277D82BD8](v82).n128_u64[0];
  v84 = [(AKInlineSignInViewController *)v136 appleIDField];
  v83 = [(AKTextField *)v84 entryField];
  [(UITextField *)v83 setReturnKeyType:11];
  MEMORY[0x277D82BD8](v83);
  *&v19 = MEMORY[0x277D82BD8](v84).n128_u64[0];
  v86 = [(AKInlineSignInViewController *)v136 appleIDField];
  v20 = objc_alloc(MEMORY[0x277D75B80]);
  v85 = [v20 initWithTarget:v136 action:sel__usernameFieldTapped];
  [(AKTextField *)v86 addGestureRecognizer:?];
  MEMORY[0x277D82BD8](v85);
  *&v21 = MEMORY[0x277D82BD8](v86).n128_u64[0];
  v88 = [(AKInlineSignInViewController *)v136 appleIDField];
  v87 = [(AKTextField *)v88 entryField];
  [(UITextField *)v87 addTarget:v136 action:sel__appleIDTextFieldDidChange_ forControlEvents:?];
  MEMORY[0x277D82BD8](v87);
  *&v22 = MEMORY[0x277D82BD8](v88).n128_u64[0];
  v90 = [(AKInlineSignInViewController *)v136 appleIDField];
  v89 = [(AKTextField *)v90 entryField];
  [(UITextField *)v89 setDelegate:v136];
  MEMORY[0x277D82BD8](v89);
  *&v23 = MEMORY[0x277D82BD8](v90).n128_u64[0];
  v92 = [(AKInlineSignInViewController *)v136 appleIDField];
  v91 = [(AKTextField *)v92 entryField];
  [(UITextField *)v91 setTextContentType:*MEMORY[0x277D77090]];
  MEMORY[0x277D82BD8](v91);
  *&v24 = MEMORY[0x277D82BD8](v92).n128_u64[0];
  [(AKInlineSignInViewController *)v136 _updateFonts:0, v24];
  [(AKInlineSignInViewController *)v136 _prefillAuthFields];
  v96 = [(AKInlineSignInViewController *)v136 passwordField];
  v95 = [(AKTextField *)v96 entryField];
  v94 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
  v93 = [v94 localizedStringForKey:@"PASSWORD_PLACEHOLDER" value:&stru_28358EF68 table:@"Localizable"];
  [(UITextField *)v95 setPlaceholder:?];
  MEMORY[0x277D82BD8](v93);
  MEMORY[0x277D82BD8](v94);
  MEMORY[0x277D82BD8](v95);
  *&v25 = MEMORY[0x277D82BD8](v96).n128_u64[0];
  v98 = [(AKInlineSignInViewController *)v136 passwordField];
  v97 = [(AKTextField *)v98 entryField];
  [(UITextField *)v97 setSecureTextEntry:1];
  MEMORY[0x277D82BD8](v97);
  *&v26 = MEMORY[0x277D82BD8](v98).n128_u64[0];
  v100 = [(AKInlineSignInViewController *)v136 passwordField];
  v99 = [(AKTextField *)v100 entryField];
  [(UITextField *)v99 setAdjustsFontSizeToFitWidth:1];
  MEMORY[0x277D82BD8](v99);
  *&v27 = MEMORY[0x277D82BD8](v100).n128_u64[0];
  v102 = [(AKInlineSignInViewController *)v136 passwordField];
  v101 = [(AKTextField *)v102 entryField];
  [(UITextField *)v101 setAutocapitalizationType:0];
  MEMORY[0x277D82BD8](v101);
  *&v28 = MEMORY[0x277D82BD8](v102).n128_u64[0];
  v104 = [(AKInlineSignInViewController *)v136 passwordField];
  v103 = [(AKTextField *)v104 entryField];
  [(UITextField *)v103 setAutocorrectionType:1];
  MEMORY[0x277D82BD8](v103);
  *&v29 = MEMORY[0x277D82BD8](v104).n128_u64[0];
  v106 = [(AKInlineSignInViewController *)v136 passwordField];
  v105 = [(AKTextField *)v106 entryField];
  [(UITextField *)v105 setReturnKeyType:9];
  MEMORY[0x277D82BD8](v105);
  *&v30 = MEMORY[0x277D82BD8](v106).n128_u64[0];
  v108 = [(AKInlineSignInViewController *)v136 passwordField];
  v107 = [(AKTextField *)v108 entryField];
  [(UITextField *)v107 setEnablesReturnKeyAutomatically:1];
  MEMORY[0x277D82BD8](v107);
  *&v31 = MEMORY[0x277D82BD8](v108).n128_u64[0];
  v110 = [(AKInlineSignInViewController *)v136 passwordField];
  v32 = objc_alloc(MEMORY[0x277D75B80]);
  v109 = [v32 initWithTarget:v136 action:sel__passwordFieldTapped];
  [(AKTextField *)v110 addGestureRecognizer:?];
  MEMORY[0x277D82BD8](v109);
  *&v33 = MEMORY[0x277D82BD8](v110).n128_u64[0];
  v112 = [(AKInlineSignInViewController *)v136 passwordField];
  v111 = [(AKTextField *)v112 entryField];
  [(UITextField *)v111 addTarget:v136 action:sel__passwordTextFieldDidChange_ forControlEvents:983040];
  MEMORY[0x277D82BD8](v111);
  *&v34 = MEMORY[0x277D82BD8](v112).n128_u64[0];
  v114 = [(AKInlineSignInViewController *)v136 passwordField];
  v113 = [(AKTextField *)v114 entryField];
  [(UITextField *)v113 setDelegate:v136];
  MEMORY[0x277D82BD8](v113);
  *&v35 = MEMORY[0x277D82BD8](v114).n128_u64[0];
  v116 = [(AKInlineSignInViewController *)v136 passwordField];
  v115 = [(AKTextField *)v116 entryField];
  [(UITextField *)v115 setTextContentType:*MEMORY[0x277D77030]];
  MEMORY[0x277D82BD8](v115);
  *&v36 = MEMORY[0x277D82BD8](v116).n128_u64[0];
  v117 = [(AKInlineSignInViewController *)v136 entryDescriptionTextColor];
  v37 = MEMORY[0x277D82BD8](v117).n128_u64[0];
  if (v117)
  {
    v61 = [(AKInlineSignInViewController *)v136 appleIDField];
    v60 = [(AKInlineSignInViewController *)v136 entryDescriptionTextColor];
    [(AKTextField *)v61 setEntryDescriptionTextColor:?];
    MEMORY[0x277D82BD8](v60);
    *&v38 = MEMORY[0x277D82BD8](v61).n128_u64[0];
    v63 = [(AKInlineSignInViewController *)v136 passwordField];
    v62 = [(AKInlineSignInViewController *)v136 entryDescriptionTextColor];
    [(AKTextField *)v63 setEntryDescriptionTextColor:?];
    MEMORY[0x277D82BD8](v62);
    v37 = MEMORY[0x277D82BD8](v63).n128_u64[0];
  }

  v59 = [(AKInlineSignInViewController *)v136 entryFieldTextColor];
  v39 = MEMORY[0x277D82BD8](v59).n128_u64[0];
  if (v59)
  {
    v56 = [(AKInlineSignInViewController *)v136 appleIDField];
    v55 = [(AKInlineSignInViewController *)v136 entryFieldTextColor];
    [(AKTextField *)v56 setEntryFieldTextColor:?];
    MEMORY[0x277D82BD8](v55);
    *&v40 = MEMORY[0x277D82BD8](v56).n128_u64[0];
    v58 = [(AKInlineSignInViewController *)v136 passwordField];
    v57 = [(AKInlineSignInViewController *)v136 entryFieldTextColor];
    [(AKTextField *)v58 setEntryFieldTextColor:?];
    MEMORY[0x277D82BD8](v57);
    v39 = MEMORY[0x277D82BD8](v58).n128_u64[0];
  }

  v133 = [(AKInlineSignInViewController *)v136 shouldPromptForPasswordOnly];
  v53 = [(AKInlineSignInViewController *)v136 passwordField];
  [(AKTextField *)v53 setHidden:![(AKInlineSignInViewController *)v136 shouldPromptForPasswordOnly]];
  *&v41 = MEMORY[0x277D82BD8](v53).n128_u64[0];
  v54 = [(AKInlineSignInViewController *)v136 appleIDField];
  [(AKTextField *)v54 setHidden:v133];
  v42 = MEMORY[0x277D82BD8](v54).n128_u64[0];
  if (v133)
  {
    v52 = [(AKInlineSignInViewController *)v136 passwordField];
    v51 = [(AKTextField *)v52 entryField];
    [(UITextField *)v51 becomeFirstResponder];
    MEMORY[0x277D82BD8](v51);
    v42 = MEMORY[0x277D82BD8](v52).n128_u64[0];
  }

  v49 = [(AKInlineSignInViewController *)v136 context];
  [v49 _setPasswordDelegate:v136];
  *&v43 = MEMORY[0x277D82BD8](v49).n128_u64[0];
  [(AKInlineSignInViewController *)v136 _updateVibrancyAndBlurInTextFields];
  v50 = [MEMORY[0x277CCAB98] defaultCenter];
  [v50 addObserver:v136 selector:sel__updateFonts_ name:*MEMORY[0x277D76810] object:0];
  *&v44 = MEMORY[0x277D82BD8](v50).n128_u64[0];
  if ([(AKBaseSignInViewController *)v136 _isAccountModificationRestricted])
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
    v46 = [(AKInlineSignInViewController *)v136 iforgotButton];
    [(UIButton *)v46 setEnabled:0];
    *&v45 = MEMORY[0x277D82BD8](v46).n128_u64[0];
    [(AKInlineSignInViewController *)v136 _setCreateButtonEnabled:0, v45];
    [(AKInlineSignInViewController *)v136 _updateSignInFieldStatuses];
  }

  [(AKInlineSignInViewController *)v136 _updateFonts:0];
}

- (void)viewWillAppear:(BOOL)a3
{
  v6 = self;
  v5 = a2;
  v4 = a3;
  v3.receiver = self;
  v3.super_class = AKInlineSignInViewController;
  [(AKInlineSignInViewController *)&v3 viewWillAppear:a3];
  [(AKInlineSignInViewController *)v6 _updateSignInButtonState];
}

- (void)viewDidAppear:(BOOL)a3
{
  v9 = self;
  v8 = a2;
  v7 = a3;
  v6.receiver = self;
  v6.super_class = AKInlineSignInViewController;
  [(AKBaseSignInViewController *)&v6 viewDidAppear:a3];
  v4 = v9;
  v5 = [(AKInlineSignInViewController *)v9 navigationController];
  if (v5)
  {
    v3 = v5;
  }

  else
  {
    v3 = v9;
  }

  [(AKInlineSignInViewController *)v4 _presentShieldUIIfNeededWithViewController:v3];
  MEMORY[0x277D82BD8](v5);
}

- (void)_presentShieldUIIfNeededWithViewController:(id)a3
{
  v15 = *MEMORY[0x277D85DE8];
  v11 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  v9 = _AKLogSystem();
  v8 = OS_LOG_TYPE_DEBUG;
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEBUG))
  {
    __os_log_helper_16_2_2_8_32_4_0(v14, "[AKInlineSignInViewController _presentShieldUIIfNeededWithViewController:]", 322);
    _os_log_debug_impl(&dword_222379000, v9, v8, "%s (%d) called", v14, 0x12u);
  }

  objc_storeStrong(&v9, 0);
  v3 = [MEMORY[0x277CF0130] sharedInstance];
  v4 = [v3 shieldSignInOrCreateFlows];
  MEMORY[0x277D82BD8](v3);
  if (v4)
  {
    oslog = _AKLogSystem();
    v6 = OS_LOG_TYPE_DEFAULT;
    if (os_log_type_enabled(oslog, OS_LOG_TYPE_DEFAULT))
    {
      __os_log_helper_16_2_2_8_64_8_64(v13, v11, location[0]);
      _os_log_impl(&dword_222379000, oslog, v6, "%@: Shielding sign in / create flows by presenting shield UI with view controller: %@", v13, 0x16u);
    }

    objc_storeStrong(&oslog, 0);
    [(AKInlineSignInViewController *)v11 _presentShieldUIWithViewController:location[0]];
  }

  else
  {
    v5 = _AKLogSystem();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
    {
      __os_log_helper_16_2_1_8_64(v12, v11);
      _os_log_debug_impl(&dword_222379000, v5, OS_LOG_TYPE_DEBUG, "%@: Not presenting shield UI, not needed", v12, 0xCu);
    }

    objc_storeStrong(&v5, 0);
  }

  objc_storeStrong(location, 0);
  *MEMORY[0x277D85DE8];
}

- (void)_presentShieldUIWithViewController:(id)a3
{
  v7 = *MEMORY[0x277D85DE8];
  v5 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  oslog = _AKLogSystem();
  if (os_log_type_enabled(oslog, OS_LOG_TYPE_DEBUG))
  {
    __os_log_helper_16_2_2_8_32_4_0(v6, "[AKInlineSignInViewController _presentShieldUIWithViewController:]", 332);
    _os_log_debug_impl(&dword_222379000, oslog, OS_LOG_TYPE_DEBUG, "%s (%d) called", v6, 0x12u);
  }

  objc_storeStrong(&oslog, 0);
  [(AKInlineSignInViewController *)v5 _beginAuthenticationIfPossibleWithOption:1];
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
  v5 = [(AKBaseSignInViewController *)self _isSignInAllowed];
  v2 = [(AKInlineSignInViewController *)self appleIDField];
  [(AKTextField *)v2 setEnabled:v5];
  v3 = [(AKInlineSignInViewController *)self passwordField];
  [(AKTextField *)v3 setEnabled:v5];
  v4 = [(AKInlineSignInViewController *)self signInButton];
  [(UIButton *)v4 setEnabled:v5];
  MEMORY[0x277D82BD8](v4);
}

- (void)_prefillAuthFields
{
  v8 = [(AKInlineSignInViewController *)self appleIDField];
  v7 = [(AKTextField *)v8 entryField];
  v6 = [(AKInlineSignInViewController *)self context];
  v5 = [v6 username];
  [(UITextField *)v7 setText:?];
  MEMORY[0x277D82BD8](v5);
  MEMORY[0x277D82BD8](v6);
  MEMORY[0x277D82BD8](v7);
  v9 = [(AKInlineSignInViewController *)self context];
  v10 = [v9 username];
  MEMORY[0x277D82BD8](v10);
  *&v2 = MEMORY[0x277D82BD8](v9).n128_u64[0];
  if (v10)
  {
    v4 = [(AKInlineSignInViewController *)self appleIDField];
    v3 = [(AKInlineSignInViewController *)self context];
    -[AKTextField setEnabled:](v4, "setEnabled:", [v3 isUsernameEditable]);
    MEMORY[0x277D82BD8](v3);
    MEMORY[0x277D82BD8](v4);
  }
}

- (void)_updateVibrancyAndBlurInTextFields
{
  v24 = self;
  location[1] = a2;
  v20 = [(AKInlineSignInViewController *)self fieldBackgroundColor];
  *&v2 = MEMORY[0x277D82BD8](v20).n128_u64[0];
  if (v20)
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
    v12 = [(AKInlineSignInViewController *)v24 appleIDField];
    [(AKTextField *)v12 setUsesVibrancy:0];
    *&v3 = MEMORY[0x277D82BD8](v12).n128_u64[0];
    v13 = [(AKInlineSignInViewController *)v24 passwordField];
    [(AKTextField *)v13 setUsesVibrancy:0];
    *&v4 = MEMORY[0x277D82BD8](v13).n128_u64[0];
    v14 = [(AKInlineSignInViewController *)v24 appleIDField];
    [(AKTextField *)v14 setBlurEffectStyle:?];
    *&v5 = MEMORY[0x277D82BD8](v14).n128_u64[0];
    v15 = [(AKInlineSignInViewController *)v24 passwordField];
    [(AKTextField *)v15 setBlurEffectStyle:4];
    *&v6 = MEMORY[0x277D82BD8](v15).n128_u64[0];
    v16 = [(AKInlineSignInViewController *)v24 appleIDField];
    [(AKTextField *)v16 setFieldBackgroundColor:v24->_fieldBackgroundColor];
    *&v7 = MEMORY[0x277D82BD8](v16).n128_u64[0];
    v17 = [(AKInlineSignInViewController *)v24 passwordField];
    [(AKTextField *)v17 setFieldBackgroundColor:v24->_fieldBackgroundColor];
    MEMORY[0x277D82BD8](v17);
  }

  else
  {
    v8 = [(AKInlineSignInViewController *)v24 appleIDField];
    [(AKTextField *)v8 setUsesVibrancy:v24->_usesVibrancy];
    v9 = [(AKInlineSignInViewController *)v24 passwordField];
    [(AKTextField *)v9 setUsesVibrancy:v24->_usesVibrancy];
    v10 = [(AKInlineSignInViewController *)v24 appleIDField];
    [(AKTextField *)v10 setBlurEffectStyle:v24->_blurEffectStyle];
    v11 = [(AKInlineSignInViewController *)v24 passwordField];
    [(AKTextField *)v11 setBlurEffectStyle:v24->_blurEffectStyle];
    MEMORY[0x277D82BD8](v11);
  }
}

- (void)_applyStyleForButton:(id)a3
{
  location[2] = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  objc_storeStrong(location, 0);
}

- (void)_applyStyleForCreateOrForgot:(id)a3
{
  location[2] = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  objc_storeStrong(location, 0);
}

- (void)traitCollectionDidChange:(id)a3
{
  v8 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  v4 = [(AKInlineSignInViewController *)v8 traitCollection];
  v6 = [v4 userInterfaceStyle];
  v5 = [location[0] userInterfaceStyle];
  *&v3 = MEMORY[0x277D82BD8](v4).n128_u64[0];
  if (v6 != v5)
  {
    [(AKInlineSignInViewController *)v8 _updateVibrancyAndBlurInTextFields];
  }

  objc_storeStrong(location, 0);
}

- (void)signInButtonWasTapped:(id)a3
{
  v4 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  [(AKInlineSignInViewController *)v4 _beginAuthenticationIfPossibleWithOption:1];
  objc_storeStrong(location, 0);
}

- (void)iForgotButtonWasTapped:(id)a3
{
  v7 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  v4 = [(AKInlineSignInViewController *)v7 iforgotButton];
  v5 = [(UIButton *)v4 isHidden];
  *&v3 = MEMORY[0x277D82BD8](v4).n128_u64[0];
  if (!v5)
  {
    [(AKInlineSignInViewController *)v7 _beginAuthenticationIfPossibleWithOption:2, v3];
  }

  objc_storeStrong(location, 0);
}

- (void)createAppleIDButtonWasTapped:(id)a3
{
  v7 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  v4 = [(AKInlineSignInViewController *)v7 createAppleIDButton];
  v5 = [(UIButton *)v4 isHidden];
  *&v3 = MEMORY[0x277D82BD8](v4).n128_u64[0];
  if (!v5)
  {
    [(AKInlineSignInViewController *)v7 _beginAuthenticationIfPossibleWithOption:3, v3];
  }

  objc_storeStrong(location, 0);
}

- (void)_beginAuthenticationIfPossibleWithOption:(unint64_t)a3
{
  v23 = self;
  v22 = a2;
  v21 = a3;
  if (self->_passwordRequiredCompletion)
  {
    [(AKInlineSignInViewController *)v23 startAnimating];
    v20 = 0;
    if (v21 > 1)
    {
      if (v21 == 2)
      {
        v3 = [MEMORY[0x277CCA9B8] ak_errorWithCode:-7017];
        v4 = v20;
        v20 = v3;
        MEMORY[0x277D82BD8](v4);
      }

      else if (v21 == 3)
      {
        v5 = [MEMORY[0x277CCA9B8] ak_errorWithCode:-7016];
        v6 = v20;
        v20 = v5;
        MEMORY[0x277D82BD8](v6);
      }
    }

    v16 = (v23->_passwordRequiredCompletion + 16);
    v19 = [(AKInlineSignInViewController *)v23 passwordField];
    v18 = [(AKTextField *)v19 entryField];
    v17 = [(UITextField *)v18 text];
    (*v16)();
    MEMORY[0x277D82BD8](v17);
    MEMORY[0x277D82BD8](v18);
    MEMORY[0x277D82BD8](v19);
    passwordRequiredCompletion = v23->_passwordRequiredCompletion;
    v23->_passwordRequiredCompletion = 0;
    MEMORY[0x277D82BD8](passwordRequiredCompletion);
    objc_storeStrong(&v20, 0);
  }

  else
  {
    v15 = [(AKInlineSignInViewController *)v23 appleIDField];
    v14 = [(AKTextField *)v15 entryField];
    v13 = [(UITextField *)v14 text];
    v12 = [MEMORY[0x277CCA900] whitespaceAndNewlineCharacterSet];
    v11 = [(NSString *)v13 stringByTrimmingCharactersInSet:?];
    v10 = [(AKInlineSignInViewController *)v23 passwordField];
    v9 = [(AKTextField *)v10 entryField];
    v8 = [(UITextField *)v9 text];
    [(AKBaseSignInViewController *)v23 _beginAuthenticationIfPossibleWithOption:v21 withUsername:v11 password:?];
    MEMORY[0x277D82BD8](v8);
    MEMORY[0x277D82BD8](v9);
    MEMORY[0x277D82BD8](v10);
    MEMORY[0x277D82BD8](v11);
    MEMORY[0x277D82BD8](v12);
    MEMORY[0x277D82BD8](v13);
    MEMORY[0x277D82BD8](v14);
    MEMORY[0x277D82BD8](v15);
  }
}

- (void)startAnimating
{
  if ([(AKInlineSignInViewController *)self wantsAuthenticationProgress])
  {
    v7 = [(AKInlineSignInViewController *)self spinner];
    [(UIActivityIndicatorView *)v7 startAnimating];
    v8 = [(AKInlineSignInViewController *)self signInButton];
    [(UIButton *)v8 setHidden:1];
    [(AKInlineSignInViewController *)self _setCreateButtonHidden:1, MEMORY[0x277D82BD8](v8).n128_f64[0]];
    v9 = [(AKInlineSignInViewController *)self iforgotButton];
    [(UIButton *)v9 setHidden:1];
    v2 = MEMORY[0x277D82BD8](v9).n128_u64[0];
  }

  else
  {
    v5 = [(AKInlineSignInViewController *)self signInButton];
    [(UIButton *)v5 setEnabled:0];
    [(AKInlineSignInViewController *)self _setCreateButtonEnabled:0, MEMORY[0x277D82BD8](v5).n128_f64[0]];
    v6 = [(AKInlineSignInViewController *)self iforgotButton];
    [(UIButton *)v6 setEnabled:0];
    v2 = MEMORY[0x277D82BD8](v6).n128_u64[0];
  }

  v3 = [(AKInlineSignInViewController *)self appleIDField];
  [(AKTextField *)v3 setEnabled:0];
  v4 = [(AKInlineSignInViewController *)self passwordField];
  [(AKTextField *)v4 setEnabled:0];
  MEMORY[0x277D82BD8](v4);
}

- (void)stopAnimating
{
  if ([(AKInlineSignInViewController *)self wantsAuthenticationProgress])
  {
    v7 = [(AKInlineSignInViewController *)self spinner];
    [(UIActivityIndicatorView *)v7 stopAnimating];
    v8 = [(AKInlineSignInViewController *)self signInButton];
    [(UIButton *)v8 setHidden:[(AKInlineSignInViewController *)self isPrimaryButtonHidden]];
    v9 = [(AKInlineSignInViewController *)self iforgotButton];
    [(UIButton *)v9 setHidden:0];
    v2 = MEMORY[0x277D82BD8](v9).n128_u64[0];
    if (self->_createAppleIDAllowed)
    {
      [(AKInlineSignInViewController *)self _setCreateButtonHidden:0, *&v2];
    }
  }

  else
  {
    [(AKInlineSignInViewController *)self _updateSignInButtonState];
    [(AKInlineSignInViewController *)self _setCreateButtonEnabled:1];
    v6 = [(AKInlineSignInViewController *)self iforgotButton];
    [(UIButton *)v6 setEnabled:1];
    v2 = MEMORY[0x277D82BD8](v6).n128_u64[0];
  }

  v4 = [(AKInlineSignInViewController *)self appleIDField];
  v3 = [(AKInlineSignInViewController *)self context];
  -[AKTextField setEnabled:](v4, "setEnabled:", [v3 isUsernameEditable]);
  MEMORY[0x277D82BD8](v3);
  v5 = [(AKInlineSignInViewController *)self passwordField];
  [(AKTextField *)v5 setEnabled:1];
  MEMORY[0x277D82BD8](v5);
}

- (void)_setPasswordFieldHidden:(BOOL)a3 animated:(BOOL)a4
{
  v19 = self;
  v18 = a2;
  v17 = a3;
  v16 = a4;
  v6 = MEMORY[0x277D75D18];
  v4 = 0.7;
  if (!a4)
  {
    v4 = 0.0;
  }

  v5 = v4;
  v9 = MEMORY[0x277D85DD0];
  v10 = -1073741824;
  v11 = 0;
  v12 = __65__AKInlineSignInViewController__setPasswordFieldHidden_animated___block_invoke;
  v13 = &unk_2784A5EC8;
  v14 = MEMORY[0x277D82BE0](v19);
  v15 = v17;
  v8 = v17;
  v7 = MEMORY[0x277D82BE0](v19);
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

- (void)_appleIDTextFieldDidChange:(id)a3
{
  v4 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  [(AKInlineSignInViewController *)v4 _updateSignInButtonState];
  objc_storeStrong(location, 0);
}

- (void)_passwordTextFieldDidChange:(id)a3
{
  v4 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  [(AKInlineSignInViewController *)v4 _updateSignInButtonState];
  objc_storeStrong(location, 0);
}

- (void)_passwordFieldTapped
{
  v3 = [(AKInlineSignInViewController *)self passwordField];
  v2 = [(AKTextField *)v3 entryField];
  [(UITextField *)v2 becomeFirstResponder];
  MEMORY[0x277D82BD8](v2);
  MEMORY[0x277D82BD8](v3);
}

- (void)_usernameFieldTapped
{
  v3 = [(AKInlineSignInViewController *)self appleIDField];
  v2 = [(AKTextField *)v3 entryField];
  [(UITextField *)v2 becomeFirstResponder];
  MEMORY[0x277D82BD8](v2);
  MEMORY[0x277D82BD8](v3);
}

- (void)_updateSignInButtonState
{
  if ([(AKBaseSignInViewController *)self _isSignInAllowed])
  {
    v9 = [(AKInlineSignInViewController *)self appleIDField];
    v8 = [(AKTextField *)v9 entryField];
    v7 = [(UITextField *)v8 text];
    v6 = [MEMORY[0x277CCA900] whitespaceAndNewlineCharacterSet];
    v5 = [(NSString *)v7 stringByTrimmingCharactersInSet:?];
    v10 = [(NSString *)v5 length]!= 0;
    MEMORY[0x277D82BD8](v5);
    MEMORY[0x277D82BD8](v6);
    MEMORY[0x277D82BD8](v7);
    MEMORY[0x277D82BD8](v8);
    v11 = [(AKInlineSignInViewController *)self passwordField];
    v18 = 0;
    v16 = 0;
    v14 = 0;
    v12 = 1;
    if (([(AKTextField *)v11 isHidden]& 1) == 0)
    {
      v19 = [(AKInlineSignInViewController *)self passwordField];
      v18 = 1;
      v17 = [(AKTextField *)v19 entryField];
      v16 = 1;
      v15 = [(UITextField *)v17 text];
      v14 = 1;
      v12 = [(NSString *)v15 length]!= 0;
    }

    if (v14)
    {
      MEMORY[0x277D82BD8](v15);
    }

    if (v16)
    {
      MEMORY[0x277D82BD8](v17);
    }

    if (v18)
    {
      MEMORY[0x277D82BD8](v19);
    }

    v2 = [(AKInlineSignInViewController *)self signInButton];
    v4 = 0;
    if (v10)
    {
      v4 = v12;
    }

    [(UIButton *)v2 setEnabled:v4, v2];
    MEMORY[0x277D82BD8](v3);
  }

  else
  {
    v13 = [(AKInlineSignInViewController *)self signInButton];
    [(UIButton *)v13 setEnabled:0];
    MEMORY[0x277D82BD8](v13);
  }
}

- (void)_updateFonts:(id)a3
{
  v18 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  v16 = [MEMORY[0x277D74310] preferredFontDescriptorWithTextStyle:*MEMORY[0x277D76968] addingSymbolicTraits:? options:?];
  v15 = [MEMORY[0x277D74300] fontWithDescriptor:v16 size:?];
  v14 = [MEMORY[0x277D74310] preferredFontDescriptorWithTextStyle:*MEMORY[0x277D76A20] addingSymbolicTraits:0 options:2];
  v13 = [MEMORY[0x277D74300] fontWithDescriptor:v14 size:0.0];
  v7 = [(AKInlineSignInViewController *)v18 createAppleIDButton];
  v6 = [(UIButton *)v7 titleLabel];
  [(UILabel *)v6 setFont:v15];
  MEMORY[0x277D82BD8](v6);
  *&v3 = MEMORY[0x277D82BD8](v7).n128_u64[0];
  v9 = [(AKInlineSignInViewController *)v18 iforgotButton];
  v8 = [(UIButton *)v9 titleLabel];
  [(UILabel *)v8 setFont:v15];
  MEMORY[0x277D82BD8](v8);
  *&v4 = MEMORY[0x277D82BD8](v9).n128_u64[0];
  v11 = [(AKInlineSignInViewController *)v18 signInButton];
  v10 = [(UIButton *)v11 titleLabel];
  [(UILabel *)v10 setFont:v13];
  MEMORY[0x277D82BD8](v10);
  *&v5 = MEMORY[0x277D82BD8](v11).n128_u64[0];
  v12 = [(AKInlineSignInViewController *)v18 view];
  [v12 setNeedsUpdateConstraints];
  MEMORY[0x277D82BD8](v12);
  objc_storeStrong(&v13, 0);
  objc_storeStrong(&v14, 0);
  objc_storeStrong(&v15, 0);
  objc_storeStrong(&v16, 0);
  objc_storeStrong(location, 0);
}

- (void)setUsesVibrancy:(BOOL)a3
{
  v8 = *MEMORY[0x277D85DE8];
  v6 = self;
  v5 = a2;
  v4 = a3;
  self->_usesVibrancy = a3;
  oslog = _AKLogSystem();
  if (os_log_type_enabled(oslog, OS_LOG_TYPE_DEFAULT))
  {
    __os_log_helper_16_0_1_4_0(v7, v4);
    _os_log_impl(&dword_222379000, oslog, OS_LOG_TYPE_DEFAULT, "AKInlineSignInViewController - setUsesVibrancy %d", v7, 8u);
  }

  objc_storeStrong(&oslog, 0);
  [(AKInlineSignInViewController *)v6 _updateVibrancyAndBlurInTextFields];
  *MEMORY[0x277D85DE8];
}

- (void)setBlurEffectStyle:(int64_t)a3
{
  v9 = *MEMORY[0x277D85DE8];
  v7 = self;
  v6 = a2;
  v5 = a3;
  self->_blurEffectStyle = a3;
  oslog = _AKLogSystem();
  if (os_log_type_enabled(oslog, OS_LOG_TYPE_DEFAULT))
  {
    v3 = [MEMORY[0x277CCABB0] numberWithInteger:v5];
    __os_log_helper_16_2_1_8_64(v8, v3);
    _os_log_impl(&dword_222379000, oslog, OS_LOG_TYPE_DEFAULT, "AKInlineSignInViewController - setBlurEffectStyle %@", v8, 0xCu);
    MEMORY[0x277D82BD8](v3);
  }

  objc_storeStrong(&oslog, 0);
  [(AKInlineSignInViewController *)v7 _updateVibrancyAndBlurInTextFields];
  *MEMORY[0x277D85DE8];
}

- (void)setFieldBackgroundColor:(id)a3
{
  v4 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  objc_storeStrong(&v4->_fieldBackgroundColor, location[0]);
  [(AKInlineSignInViewController *)v4 _updateVibrancyAndBlurInTextFields];
  objc_storeStrong(location, 0);
}

- (id)_userFriendlyUsername:(id)a3
{
  location[2] = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
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

- (void)context:(id)a3 needsPasswordWithCompletion:(id)a4
{
  v10 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  v8 = 0;
  objc_storeStrong(&v8, a4);
  v4 = MEMORY[0x223DB6C90](v8);
  passwordRequiredCompletion = v10->_passwordRequiredCompletion;
  v10->_passwordRequiredCompletion = v4;
  *&v6 = MEMORY[0x277D82BD8](passwordRequiredCompletion).n128_u64[0];
  [(AKInlineSignInViewController *)v10 stopAnimating];
  [(AKInlineSignInViewController *)v10 _setPasswordFieldHidden:0 animated:1];
  objc_storeStrong(&v8, 0);
  objc_storeStrong(location, 0);
}

- (BOOL)textFieldShouldReturn:(id)a3
{
  v65 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  v63 = 1;
  v43 = location[0];
  v45 = [(AKInlineSignInViewController *)v65 appleIDField];
  v44 = [(AKTextField *)v45 entryField];
  v46 = [v43 isEqual:?];
  MEMORY[0x277D82BD8](v44);
  *&v3 = MEMORY[0x277D82BD8](v45).n128_u64[0];
  if (v46)
  {
    v36 = [(AKInlineSignInViewController *)v65 appleIDField];
    v35 = [(AKTextField *)v36 entryField];
    v62 = [(UITextField *)v35 text];
    MEMORY[0x277D82BD8](v35);
    *&v4 = MEMORY[0x277D82BD8](v36).n128_u64[0];
    v61 = [(AKInlineSignInViewController *)v65 _userFriendlyUsername:v62, v4];
    v38 = [(AKInlineSignInViewController *)v65 appleIDField];
    v37 = [(AKTextField *)v38 entryField];
    [(UITextField *)v37 setText:v61];
    MEMORY[0x277D82BD8](v37);
    *&v5 = MEMORY[0x277D82BD8](v38).n128_u64[0];
    v40 = [(AKInlineSignInViewController *)v65 appleIDField];
    v39 = [(AKTextField *)v40 entryField];
    [(UITextField *)v39 resignFirstResponder];
    MEMORY[0x277D82BD8](v39);
    *&v6 = MEMORY[0x277D82BD8](v40).n128_u64[0];
    v41 = [(AKInlineSignInViewController *)v65 passwordField];
    v42 = [(AKTextField *)v41 isHidden];
    *&v7 = MEMORY[0x277D82BD8](v41).n128_u64[0];
    if (v42)
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
      v60 = MEMORY[0x277D82BE0](v65);
      dispatch_after(when, queue, &v55);
      MEMORY[0x277D82BD8](queue);
      objc_storeStrong(&v60, 0);
    }

    else
    {
      v34 = [(AKInlineSignInViewController *)v65 passwordField];
      v33 = [(AKTextField *)v34 entryField];
      [(UITextField *)v33 becomeFirstResponder];
      MEMORY[0x277D82BD8](v33);
      MEMORY[0x277D82BD8](v34);
    }

    v63 = 0;
    objc_storeStrong(&v61, 0);
    objc_storeStrong(&v62, 0);
  }

  else
  {
    v26 = location[0];
    v28 = [(AKInlineSignInViewController *)v65 passwordField];
    v27 = [(AKTextField *)v28 entryField];
    v29 = [v26 isEqual:?];
    MEMORY[0x277D82BD8](v27);
    *&v9 = MEMORY[0x277D82BD8](v28).n128_u64[0];
    if (v29)
    {
      v22 = [(AKInlineSignInViewController *)v65 appleIDField];
      v23 = [(AKTextField *)v22 entryField];
      v24 = [(UITextField *)v23 text];
      v53 = 0;
      v25 = 0;
      if (![(NSString *)v24 length])
      {
        v54 = [(AKInlineSignInViewController *)v65 appleIDField];
        v53 = 1;
        v25 = [(AKTextField *)v54 isHidden]== 0;
      }

      if (v53)
      {
        MEMORY[0x277D82BD8](v54);
      }

      MEMORY[0x277D82BD8](v24);
      MEMORY[0x277D82BD8](v23);
      *&v10 = MEMORY[0x277D82BD8](v22).n128_u64[0];
      if (v25)
      {
        v19 = [(AKInlineSignInViewController *)v65 passwordField];
        v18 = [(AKTextField *)v19 entryField];
        [(UITextField *)v18 resignFirstResponder];
        MEMORY[0x277D82BD8](v18);
        *&v11 = MEMORY[0x277D82BD8](v19).n128_u64[0];
        v21 = [(AKInlineSignInViewController *)v65 appleIDField];
        v20 = [(AKTextField *)v21 entryField];
        [(UITextField *)v20 becomeFirstResponder];
        MEMORY[0x277D82BD8](v20);
        MEMORY[0x277D82BD8](v21);
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
        v52 = MEMORY[0x277D82BE0](v65);
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

- (BOOL)textField:(id)a3 shouldChangeCharactersInRange:(_NSRange)a4 replacementString:(id)a5
{
  v23 = a4;
  v22 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  v20 = 0;
  objc_storeStrong(&v20, a5);
  v13 = location[0];
  v12 = [(AKInlineSignInViewController *)v22 appleIDField];
  v14 = [(AKTextField *)v12 entryField];
  v18 = 0;
  v16 = 0;
  v15 = 0;
  if ([v13 isEqual:?])
  {
    v19 = [(AKInlineSignInViewController *)v22 passwordField];
    v18 = 1;
    v15 = 0;
    if (![(AKTextField *)v19 isHidden])
    {
      v17 = [location[0] text];
      v16 = 1;
      v15 = 0;
      if (![v17 isEqualToString:v20])
      {
        v28 = 0;
        v27 = 0;
        v29 = 0;
        v30 = 0;
        v26 = v23;
        v24 = 0;
        v25 = 0;
        v10 = 0;
        if (!v23.location)
        {
          v10 = v26.length == v25;
        }

        v15 = !v10;
      }
    }
  }

  if (v16)
  {
    MEMORY[0x277D82BD8](v17);
  }

  if (v18)
  {
    MEMORY[0x277D82BD8](v19);
  }

  MEMORY[0x277D82BD8](v14);
  *&v5 = MEMORY[0x277D82BD8](v12).n128_u64[0];
  if (v15)
  {
    [(AKInlineSignInViewController *)v22 _setPasswordFieldHidden:1 animated:0, v5];
    if (v22->_passwordRequiredCompletion)
    {
      passwordRequiredCompletion = v22->_passwordRequiredCompletion;
      v9 = [MEMORY[0x277CCA9B8] ak_errorWithCode:-7003];
      passwordRequiredCompletion[2](passwordRequiredCompletion, 0);
      MEMORY[0x277D82BD8](v9);
      v6 = v22->_passwordRequiredCompletion;
      v22->_passwordRequiredCompletion = 0;
      MEMORY[0x277D82BD8](v6);
    }
  }

  objc_storeStrong(&v20, 0);
  objc_storeStrong(location, 0);
  return 1;
}

- (void)setUsesDarkMode:(BOOL)a3
{
  if (a3 != self->_usesDarkMode)
  {
    self->_usesDarkMode = a3;
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