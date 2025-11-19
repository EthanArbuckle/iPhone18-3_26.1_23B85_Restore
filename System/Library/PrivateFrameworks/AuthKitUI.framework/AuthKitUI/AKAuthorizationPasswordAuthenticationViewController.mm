@interface AKAuthorizationPasswordAuthenticationViewController
- (AKAuthorizationPasswordAuthenticationDelegate)delegate;
- (BOOL)isKeyboardAttachedToBottom:(id)a3;
- (double)intrinsicContentHeight;
- (id)_contextForAuthentication;
- (id)_username;
- (void)adjustBottomInsetForKeyboard:(id)a3;
- (void)dealloc;
- (void)keyboardDidShow:(id)a3;
- (void)keyboardWillChangeFrame:(id)a3;
- (void)keyboardWillHide:(id)a3;
- (void)keyboardWillShow:(id)a3;
- (void)layoutViewWithAnimation;
- (void)signInViewController:(id)a3 didAuthenticateWithResults:(id)a4 error:(id)a5;
- (void)sizeToFitPaneContentAnimated:(BOOL)a3;
- (void)viewDidLoad;
- (void)viewWillDisappear:(BOOL)a3;
@end

@implementation AKAuthorizationPasswordAuthenticationViewController

- (void)viewDidLoad
{
  v57[4] = *MEMORY[0x277D85DE8];
  v56 = self;
  v55 = a2;
  v54.receiver = self;
  v54.super_class = AKAuthorizationPasswordAuthenticationViewController;
  [(AKAuthorizationPaneViewController *)&v54 viewDidLoad];
  v11 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
  v10 = [v11 localizedStringForKey:@"APPLE_ID_REBRAND" value:? table:?];
  [(AKAuthorizationPasswordAuthenticationViewController *)v56 setTitle:?];
  MEMORY[0x277D82BD8](v10);
  MEMORY[0x277D82BD8](v11);
  v53 = objc_alloc_init(AKModalSignInViewController);
  v12 = v53;
  v13 = [MEMORY[0x277D75348] clearColor];
  [(AKModalSignInViewController *)v12 setBackgroundColor:?];
  *&v2 = MEMORY[0x277D82BD8](v13).n128_u64[0];
  [(AKModalSignInViewController *)v53 setHideTitle:1, v2];
  v15 = v53;
  v14 = MEMORY[0x277CCACA8];
  v19 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
  v18 = [v19 localizedStringForKey:@"AUTHORIZE_FOR_ACCOUNT_WITH_PASSWORD_REBRAND" value:&stru_28358EF68 table:@"Localizable"];
  v17 = [(AKAuthorizationPasswordAuthenticationViewController *)v56 _username];
  v16 = [v14 stringWithFormat:v18, v17];
  [(AKModalSignInViewController *)v15 setCustomBodyText:?];
  MEMORY[0x277D82BD8](v16);
  MEMORY[0x277D82BD8](v17);
  MEMORY[0x277D82BD8](v18);
  MEMORY[0x277D82BD8](v19);
  v20 = v53;
  v22 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
  v21 = [v22 localizedStringForKey:@"SIGN_IN" value:&stru_28358EF68 table:@"Localizable"];
  [(AKModalSignInViewController *)v20 setCustomButtonTitle:?];
  MEMORY[0x277D82BD8](v21);
  *&v3 = MEMORY[0x277D82BD8](v22).n128_u64[0];
  v23 = v53;
  v24 = [(AKAuthorizationPasswordAuthenticationViewController *)v56 _contextForAuthentication];
  [(AKBaseSignInViewController *)v23 setContext:?];
  *&v4 = MEMORY[0x277D82BD8](v24).n128_u64[0];
  [(AKBaseSignInViewController *)v53 setDelegate:v56, v4];
  [(AKAuthorizationPasswordAuthenticationViewController *)v56 addChildViewController:v53];
  v26 = [(AKAuthorizationPasswordAuthenticationViewController *)v56 view];
  v25 = [(AKModalSignInViewController *)v53 view];
  [v26 addSubview:?];
  MEMORY[0x277D82BD8](v25);
  *&v5 = MEMORY[0x277D82BD8](v26).n128_u64[0];
  [(AKModalSignInViewController *)v53 didMoveToParentViewController:v56, v5];
  objc_storeStrong(&v56->_modalSignInViewController, v53);
  v30 = [(AKModalSignInViewController *)v53 view];
  v29 = [v30 bottomAnchor];
  v28 = [(AKAuthorizationPasswordAuthenticationViewController *)v56 view];
  v27 = [v28 bottomAnchor];
  v6 = [v29 constraintEqualToAnchor:?];
  modalSignInViewBottomConstraint = v56->_modalSignInViewBottomConstraint;
  v56->_modalSignInViewBottomConstraint = v6;
  MEMORY[0x277D82BD8](modalSignInViewBottomConstraint);
  MEMORY[0x277D82BD8](v27);
  MEMORY[0x277D82BD8](v28);
  MEMORY[0x277D82BD8](v29);
  *&v8 = MEMORY[0x277D82BD8](v30).n128_u64[0];
  v31 = [(AKModalSignInViewController *)v53 view];
  [v31 setTranslatesAutoresizingMaskIntoConstraints:0];
  *&v9 = MEMORY[0x277D82BD8](v31).n128_u64[0];
  v32 = MEMORY[0x277CCAAD0];
  v48 = [(AKModalSignInViewController *)v53 view];
  v47 = [v48 topAnchor];
  v46 = [(AKAuthorizationPasswordAuthenticationViewController *)v56 view];
  v45 = [v46 topAnchor];
  v44 = [v47 constraintEqualToAnchor:24.0 constant:?];
  v57[0] = v44;
  v57[1] = v56->_modalSignInViewBottomConstraint;
  v43 = [(AKModalSignInViewController *)v53 view];
  v42 = [v43 leadingAnchor];
  v41 = [(AKAuthorizationPasswordAuthenticationViewController *)v56 view];
  v40 = [v41 leadingAnchor];
  v39 = [v42 constraintEqualToAnchor:?];
  v57[2] = v39;
  v38 = [(AKModalSignInViewController *)v53 view];
  v37 = [v38 trailingAnchor];
  v36 = [(AKAuthorizationPasswordAuthenticationViewController *)v56 view];
  v35 = [v36 trailingAnchor];
  v34 = [v37 constraintEqualToAnchor:?];
  v57[3] = v34;
  v33 = [MEMORY[0x277CBEA60] arrayWithObjects:v57 count:4];
  [v32 activateConstraints:?];
  MEMORY[0x277D82BD8](v33);
  MEMORY[0x277D82BD8](v34);
  MEMORY[0x277D82BD8](v35);
  MEMORY[0x277D82BD8](v36);
  MEMORY[0x277D82BD8](v37);
  MEMORY[0x277D82BD8](v38);
  MEMORY[0x277D82BD8](v39);
  MEMORY[0x277D82BD8](v40);
  MEMORY[0x277D82BD8](v41);
  MEMORY[0x277D82BD8](v42);
  MEMORY[0x277D82BD8](v43);
  MEMORY[0x277D82BD8](v44);
  MEMORY[0x277D82BD8](v45);
  MEMORY[0x277D82BD8](v46);
  MEMORY[0x277D82BD8](v47);
  v49 = [MEMORY[0x277CCAB98] defaultCenter];
  [v49 addObserver:v56 selector:sel_keyboardDidShow_ name:*MEMORY[0x277D76BA8] object:?];
  v50 = [MEMORY[0x277CCAB98] defaultCenter];
  [v50 addObserver:v56 selector:sel_keyboardWillShow_ name:*MEMORY[0x277D76C60] object:0];
  v51 = [MEMORY[0x277CCAB98] defaultCenter];
  [v51 addObserver:v56 selector:sel_keyboardWillHide_ name:*MEMORY[0x277D76C50] object:0];
  v52 = [MEMORY[0x277CCAB98] defaultCenter];
  [v52 addObserver:v56 selector:sel_keyboardWillChangeFrame_ name:*MEMORY[0x277D76C48] object:0];
  MEMORY[0x277D82BD8](v52);
  objc_storeStrong(&v53, 0);
  *MEMORY[0x277D85DE8];
}

- (void)viewWillDisappear:(BOOL)a3
{
  v7 = self;
  v6 = a2;
  v5 = a3;
  if ([(AKAuthorizationPasswordAuthenticationViewController *)self isMovingFromParentViewController])
  {
    location = [(AKAuthorizationPasswordAuthenticationViewController *)v7 delegate];
    if ([location conformsToProtocol:&unk_2835D8C08])
    {
      v3 = [MEMORY[0x277CCA9B8] ak_errorWithCode:-7003];
      [location passwordAuthenticationCompletedWithResults:0 error:?];
      MEMORY[0x277D82BD8](v3);
    }

    objc_storeStrong(&location, 0);
  }
}

- (id)_contextForAuthentication
{
  v7 = self;
  v6[1] = a2;
  v6[0] = objc_alloc_init(AKAppleIDAuthenticationInAppContext);
  v4 = [(AKAuthorizationPasswordAuthenticationViewController *)v7 _username];
  [v6[0] setUsername:?];
  *&v2 = MEMORY[0x277D82BD8](v4).n128_u64[0];
  [v6[0] setIsUsernameEditable:{0, v2}];
  [v6[0] setIgnorePasswordCache:1];
  [v6[0] setPresentingViewController:v7];
  v5 = MEMORY[0x277D82BE0](v6[0]);
  objc_storeStrong(v6, 0);

  return v5;
}

- (id)_username
{
  v4 = [(AKAuthorizationPasswordAuthenticationViewController *)self presentationContext];
  v3 = [(AKAuthorizationPresentationContext *)v4 userInformation];
  v5 = [v3 accountName];
  MEMORY[0x277D82BD8](v3);
  MEMORY[0x277D82BD8](v4);

  return v5;
}

- (void)dealloc
{
  v9 = self;
  v8 = a2;
  v3 = [MEMORY[0x277CCAB98] defaultCenter];
  [v3 removeObserver:v9 name:*MEMORY[0x277D76BA8] object:?];
  v4 = [MEMORY[0x277CCAB98] defaultCenter];
  [v4 removeObserver:v9 name:*MEMORY[0x277D76C60] object:0];
  v5 = [MEMORY[0x277CCAB98] defaultCenter];
  [v5 removeObserver:v9 name:*MEMORY[0x277D76C50] object:0];
  v6 = [MEMORY[0x277CCAB98] defaultCenter];
  [v6 removeObserver:v9 name:*MEMORY[0x277D76C48] object:0];
  *&v2 = MEMORY[0x277D82BD8](v6).n128_u64[0];
  v7.receiver = v9;
  v7.super_class = AKAuthorizationPasswordAuthenticationViewController;
  [(AKAuthorizationPasswordAuthenticationViewController *)&v7 dealloc];
}

- (double)intrinsicContentHeight
{
  v16 = self;
  v15[1] = a2;
  v10 = [(AKModalSignInViewController *)self->_modalSignInViewController view];
  v9 = [v10 subviews];
  v15[0] = [v9 firstObject];
  MEMORY[0x277D82BD8](v9);
  *&v2 = MEMORY[0x277D82BD8](v10).n128_u64[0];
  v11 = [(AKAuthorizationPasswordAuthenticationViewController *)v16 view];
  [v11 bounds];
  CGRectGetWidth(v17);
  CGSizeMake_3();
  v13 = v3;
  v14 = v4;
  MEMORY[0x277D82BD8](v11);
  LODWORD(v5) = 1148846080;
  LODWORD(v6) = 1112014848;
  [v15[0] systemLayoutSizeFittingSize:v13 withHorizontalFittingPriority:v14 verticalFittingPriority:{v5, v6}];
  v12 = v7 + 0.0 + v16->_keyboardHeight + 24.0;
  objc_storeStrong(v15, 0);
  return v12;
}

- (void)sizeToFitPaneContentAnimated:(BOOL)a3
{
  v9 = self;
  v8 = a2;
  v7 = a3;
  v3 = 0.3;
  if (!a3)
  {
    v3 = 0.0;
  }

  v6[1] = *&v3;
  v5 = MEMORY[0x277D75D18];
  v4 = v3;
  v6[0] = MEMORY[0x277D82BE0](v9);
  [v5 animateWithDuration:4 delay:v4 options:0.0 animations:? completion:?];
  objc_storeStrong(v6, 0);
}

- (void)layoutViewWithAnimation
{
  v8[3] = self;
  v8[2] = a2;
  v8[1] = 0x3FD3333333333333;
  v2 = MEMORY[0x277D75D18];
  v3 = MEMORY[0x277D85DD0];
  v4 = -1073741824;
  v5 = 0;
  v6 = __78__AKAuthorizationPasswordAuthenticationViewController_layoutViewWithAnimation__block_invoke;
  v7 = &unk_2784A5C90;
  v8[0] = MEMORY[0x277D82BE0](self);
  [v2 animateWithDuration:4 delay:0.3 options:0.0 animations:? completion:?];
  objc_storeStrong(v8, 0);
}

double __78__AKAuthorizationPasswordAuthenticationViewController_layoutViewWithAnimation__block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) view];
  [v2 layoutIfNeeded];
  *&result = MEMORY[0x277D82BD8](v2).n128_u64[0];
  return result;
}

- (void)keyboardWillShow:(id)a3
{
  v13 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  v6 = [MEMORY[0x277D759A0] mainScreen];
  [v6 bounds];
  v10 = v3;
  v11 = v4;
  MEMORY[0x277D82BD8](v6);
  v9 = [(AKAuthorizationPasswordAuthenticationViewController *)v13 isKeyboardAttachedToBottom:location[0], v10];
  v7 = [MEMORY[0x277D75418] currentDevice];
  v8 = 0;
  if ([v7 userInterfaceIdiom] == 1)
  {
    v8 = 0;
    if (v10 > v11)
    {
      v8 = v9;
    }
  }

  *&v5 = MEMORY[0x277D82BD8](v7).n128_u64[0];
  if (v8)
  {
    [(AKAuthorizationPasswordAuthenticationViewController *)v13 adjustBottomInsetForKeyboard:location[0], v5];
    [(AKAuthorizationPasswordAuthenticationViewController *)v13 layoutViewWithAnimation];
  }

  objc_storeStrong(location, 0);
}

- (void)keyboardDidShow:(id)a3
{
  v11 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  v9 = [location[0] userInfo];
  v6 = [v9 objectForKey:*MEMORY[0x277D76BB8]];
  [v6 CGRectValue];
  v8 = v3;
  MEMORY[0x277D82BD8](v6);
  v7 = [(AKAuthorizationPasswordAuthenticationViewController *)v11 view];
  [v7 safeAreaInsets];
  v11->_keyboardHeight = v8 - v4;
  *&v5 = MEMORY[0x277D82BD8](v7).n128_u64[0];
  [(AKAuthorizationPasswordAuthenticationViewController *)v11 sizeToFitPaneContentAnimated:1, v5];
  objc_storeStrong(&v9, 0);
  objc_storeStrong(location, 0);
}

- (void)keyboardWillHide:(id)a3
{
  v7 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  v7->_keyboardHeight = 0.0;
  v4 = [MEMORY[0x277D75418] currentDevice];
  v5 = [v4 userInterfaceIdiom];
  *&v3 = MEMORY[0x277D82BD8](v4).n128_u64[0];
  if (v5 == 1)
  {
    [(NSLayoutConstraint *)v7->_modalSignInViewBottomConstraint setConstant:v7->_keyboardHeight];
    [(AKAuthorizationPasswordAuthenticationViewController *)v7 layoutViewWithAnimation];
  }

  else
  {
    [(AKAuthorizationPasswordAuthenticationViewController *)v7 sizeToFitPaneContentAnimated:1, v3];
  }

  objc_storeStrong(location, 0);
}

- (void)keyboardWillChangeFrame:(id)a3
{
  v12 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  v6 = [MEMORY[0x277D759A0] mainScreen];
  [v6 bounds];
  v9 = v3;
  v10 = v4;
  MEMORY[0x277D82BD8](v6);
  v7 = [MEMORY[0x277D75418] currentDevice];
  v8 = [v7 userInterfaceIdiom];
  *&v5 = MEMORY[0x277D82BD8](v7).n128_u64[0];
  if (v8 == 1)
  {
    if ([(AKAuthorizationPasswordAuthenticationViewController *)v12 isKeyboardAttachedToBottom:location[0], v5]&& v9 > v10)
    {
      [(AKAuthorizationPasswordAuthenticationViewController *)v12 adjustBottomInsetForKeyboard:location[0]];
    }

    else
    {
      v12->_keyboardHeight = 0.0;
      [(NSLayoutConstraint *)v12->_modalSignInViewBottomConstraint setConstant:?];
    }

    [(AKAuthorizationPasswordAuthenticationViewController *)v12 layoutViewWithAnimation];
  }

  objc_storeStrong(location, 0);
}

- (void)adjustBottomInsetForKeyboard:(id)a3
{
  v10 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  v8 = [location[0] userInfo];
  v5 = [v8 objectForKey:*MEMORY[0x277D76BB8]];
  [v5 CGRectValue];
  v7 = v3;
  MEMORY[0x277D82BD8](v5);
  v6 = [(AKAuthorizationPasswordAuthenticationViewController *)v10 view];
  [v6 safeAreaInsets];
  v10->_keyboardHeight = v7 - v4;
  MEMORY[0x277D82BD8](v6);
  [(NSLayoutConstraint *)v10->_modalSignInViewBottomConstraint setConstant:-(v10->_keyboardHeight / 2.0 + 36.0)];
  objc_storeStrong(&v8, 0);
  objc_storeStrong(location, 0);
}

- (BOOL)isKeyboardAttachedToBottom:(id)a3
{
  location[2] = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  v14 = [MEMORY[0x277D759A0] mainScreen];
  [v14 bounds];
  v24.origin.x = v3;
  v24.origin.y = v4;
  v24.size.width = v5;
  v24.size.height = v6;
  *&v7 = MEMORY[0x277D82BD8](v14).n128_u64[0];
  v23 = [location[0] userInfo];
  v15 = [v23 objectForKey:*MEMORY[0x277D76BB8]];
  [v15 CGRectValue];
  rect.origin.x = v8;
  rect.origin.y = v9;
  rect.size.width = v10;
  rect.size.height = v11;
  MEMORY[0x277D82BD8](v15);
  MaxX = CGRectGetMaxX(v24);
  v21 = MaxX == CGRectGetMaxX(rect);
  MaxY = CGRectGetMaxY(v24);
  v20 = MaxY == CGRectGetMaxY(rect);
  Width = CGRectGetWidth(v24);
  v12 = CGRectGetWidth(rect);
  v19 = 0;
  if (v21)
  {
    v19 = 0;
    if (v20)
    {
      v19 = Width == v12;
    }
  }

  objc_storeStrong(&v23, 0);
  objc_storeStrong(location, 0);
  return v19;
}

- (void)signInViewController:(id)a3 didAuthenticateWithResults:(id)a4 error:(id)a5
{
  v11 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  v9 = 0;
  objc_storeStrong(&v9, a4);
  v8 = 0;
  objc_storeStrong(&v8, a5);
  v7 = [(AKAuthorizationPasswordAuthenticationViewController *)v11 delegate];
  [(AKAuthorizationPasswordAuthenticationDelegate *)v7 passwordAuthenticationCompletedWithResults:v9 error:v8];
  MEMORY[0x277D82BD8](v7);
  objc_storeStrong(&v8, 0);
  objc_storeStrong(&v9, 0);
  objc_storeStrong(location, 0);
}

- (AKAuthorizationPasswordAuthenticationDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end