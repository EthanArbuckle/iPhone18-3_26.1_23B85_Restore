@interface AKAuthorizationPasswordAuthenticationViewController
- (AKAuthorizationPasswordAuthenticationDelegate)delegate;
- (BOOL)isKeyboardAttachedToBottom:(id)bottom;
- (double)intrinsicContentHeight;
- (id)_contextForAuthentication;
- (id)_username;
- (void)adjustBottomInsetForKeyboard:(id)keyboard;
- (void)dealloc;
- (void)keyboardDidShow:(id)show;
- (void)keyboardWillChangeFrame:(id)frame;
- (void)keyboardWillHide:(id)hide;
- (void)keyboardWillShow:(id)show;
- (void)layoutViewWithAnimation;
- (void)signInViewController:(id)controller didAuthenticateWithResults:(id)results error:(id)error;
- (void)sizeToFitPaneContentAnimated:(BOOL)animated;
- (void)viewDidLoad;
- (void)viewWillDisappear:(BOOL)disappear;
@end

@implementation AKAuthorizationPasswordAuthenticationViewController

- (void)viewDidLoad
{
  v57[4] = *MEMORY[0x277D85DE8];
  selfCopy = self;
  v55 = a2;
  v54.receiver = self;
  v54.super_class = AKAuthorizationPasswordAuthenticationViewController;
  [(AKAuthorizationPaneViewController *)&v54 viewDidLoad];
  v11 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
  v10 = [v11 localizedStringForKey:@"APPLE_ID_REBRAND" value:? table:?];
  [(AKAuthorizationPasswordAuthenticationViewController *)selfCopy setTitle:?];
  MEMORY[0x277D82BD8](v10);
  MEMORY[0x277D82BD8](v11);
  v53 = objc_alloc_init(AKModalSignInViewController);
  v12 = v53;
  clearColor = [MEMORY[0x277D75348] clearColor];
  [(AKModalSignInViewController *)v12 setBackgroundColor:?];
  *&v2 = MEMORY[0x277D82BD8](clearColor).n128_u64[0];
  [(AKModalSignInViewController *)v53 setHideTitle:1, v2];
  v15 = v53;
  v14 = MEMORY[0x277CCACA8];
  v19 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
  v18 = [v19 localizedStringForKey:@"AUTHORIZE_FOR_ACCOUNT_WITH_PASSWORD_REBRAND" value:&stru_28358EF68 table:@"Localizable"];
  _username = [(AKAuthorizationPasswordAuthenticationViewController *)selfCopy _username];
  v16 = [v14 stringWithFormat:v18, _username];
  [(AKModalSignInViewController *)v15 setCustomBodyText:?];
  MEMORY[0x277D82BD8](v16);
  MEMORY[0x277D82BD8](_username);
  MEMORY[0x277D82BD8](v18);
  MEMORY[0x277D82BD8](v19);
  v20 = v53;
  v22 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
  v21 = [v22 localizedStringForKey:@"SIGN_IN" value:&stru_28358EF68 table:@"Localizable"];
  [(AKModalSignInViewController *)v20 setCustomButtonTitle:?];
  MEMORY[0x277D82BD8](v21);
  *&v3 = MEMORY[0x277D82BD8](v22).n128_u64[0];
  v23 = v53;
  _contextForAuthentication = [(AKAuthorizationPasswordAuthenticationViewController *)selfCopy _contextForAuthentication];
  [(AKBaseSignInViewController *)v23 setContext:?];
  *&v4 = MEMORY[0x277D82BD8](_contextForAuthentication).n128_u64[0];
  [(AKBaseSignInViewController *)v53 setDelegate:selfCopy, v4];
  [(AKAuthorizationPasswordAuthenticationViewController *)selfCopy addChildViewController:v53];
  view = [(AKAuthorizationPasswordAuthenticationViewController *)selfCopy view];
  view2 = [(AKModalSignInViewController *)v53 view];
  [view addSubview:?];
  MEMORY[0x277D82BD8](view2);
  *&v5 = MEMORY[0x277D82BD8](view).n128_u64[0];
  [(AKModalSignInViewController *)v53 didMoveToParentViewController:selfCopy, v5];
  objc_storeStrong(&selfCopy->_modalSignInViewController, v53);
  view3 = [(AKModalSignInViewController *)v53 view];
  bottomAnchor = [view3 bottomAnchor];
  view4 = [(AKAuthorizationPasswordAuthenticationViewController *)selfCopy view];
  bottomAnchor2 = [view4 bottomAnchor];
  v6 = [bottomAnchor constraintEqualToAnchor:?];
  modalSignInViewBottomConstraint = selfCopy->_modalSignInViewBottomConstraint;
  selfCopy->_modalSignInViewBottomConstraint = v6;
  MEMORY[0x277D82BD8](modalSignInViewBottomConstraint);
  MEMORY[0x277D82BD8](bottomAnchor2);
  MEMORY[0x277D82BD8](view4);
  MEMORY[0x277D82BD8](bottomAnchor);
  *&v8 = MEMORY[0x277D82BD8](view3).n128_u64[0];
  view5 = [(AKModalSignInViewController *)v53 view];
  [view5 setTranslatesAutoresizingMaskIntoConstraints:0];
  *&v9 = MEMORY[0x277D82BD8](view5).n128_u64[0];
  v32 = MEMORY[0x277CCAAD0];
  view6 = [(AKModalSignInViewController *)v53 view];
  topAnchor = [view6 topAnchor];
  view7 = [(AKAuthorizationPasswordAuthenticationViewController *)selfCopy view];
  topAnchor2 = [view7 topAnchor];
  v44 = [topAnchor constraintEqualToAnchor:24.0 constant:?];
  v57[0] = v44;
  v57[1] = selfCopy->_modalSignInViewBottomConstraint;
  view8 = [(AKModalSignInViewController *)v53 view];
  leadingAnchor = [view8 leadingAnchor];
  view9 = [(AKAuthorizationPasswordAuthenticationViewController *)selfCopy view];
  leadingAnchor2 = [view9 leadingAnchor];
  v39 = [leadingAnchor constraintEqualToAnchor:?];
  v57[2] = v39;
  view10 = [(AKModalSignInViewController *)v53 view];
  trailingAnchor = [view10 trailingAnchor];
  view11 = [(AKAuthorizationPasswordAuthenticationViewController *)selfCopy view];
  trailingAnchor2 = [view11 trailingAnchor];
  v34 = [trailingAnchor constraintEqualToAnchor:?];
  v57[3] = v34;
  v33 = [MEMORY[0x277CBEA60] arrayWithObjects:v57 count:4];
  [v32 activateConstraints:?];
  MEMORY[0x277D82BD8](v33);
  MEMORY[0x277D82BD8](v34);
  MEMORY[0x277D82BD8](trailingAnchor2);
  MEMORY[0x277D82BD8](view11);
  MEMORY[0x277D82BD8](trailingAnchor);
  MEMORY[0x277D82BD8](view10);
  MEMORY[0x277D82BD8](v39);
  MEMORY[0x277D82BD8](leadingAnchor2);
  MEMORY[0x277D82BD8](view9);
  MEMORY[0x277D82BD8](leadingAnchor);
  MEMORY[0x277D82BD8](view8);
  MEMORY[0x277D82BD8](v44);
  MEMORY[0x277D82BD8](topAnchor2);
  MEMORY[0x277D82BD8](view7);
  MEMORY[0x277D82BD8](topAnchor);
  defaultCenter = [MEMORY[0x277CCAB98] defaultCenter];
  [defaultCenter addObserver:selfCopy selector:sel_keyboardDidShow_ name:*MEMORY[0x277D76BA8] object:?];
  defaultCenter2 = [MEMORY[0x277CCAB98] defaultCenter];
  [defaultCenter2 addObserver:selfCopy selector:sel_keyboardWillShow_ name:*MEMORY[0x277D76C60] object:0];
  defaultCenter3 = [MEMORY[0x277CCAB98] defaultCenter];
  [defaultCenter3 addObserver:selfCopy selector:sel_keyboardWillHide_ name:*MEMORY[0x277D76C50] object:0];
  defaultCenter4 = [MEMORY[0x277CCAB98] defaultCenter];
  [defaultCenter4 addObserver:selfCopy selector:sel_keyboardWillChangeFrame_ name:*MEMORY[0x277D76C48] object:0];
  MEMORY[0x277D82BD8](defaultCenter4);
  objc_storeStrong(&v53, 0);
  *MEMORY[0x277D85DE8];
}

- (void)viewWillDisappear:(BOOL)disappear
{
  selfCopy = self;
  v6 = a2;
  disappearCopy = disappear;
  if ([(AKAuthorizationPasswordAuthenticationViewController *)self isMovingFromParentViewController])
  {
    location = [(AKAuthorizationPasswordAuthenticationViewController *)selfCopy delegate];
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
  selfCopy = self;
  v6[1] = a2;
  v6[0] = objc_alloc_init(AKAppleIDAuthenticationInAppContext);
  _username = [(AKAuthorizationPasswordAuthenticationViewController *)selfCopy _username];
  [v6[0] setUsername:?];
  *&v2 = MEMORY[0x277D82BD8](_username).n128_u64[0];
  [v6[0] setIsUsernameEditable:{0, v2}];
  [v6[0] setIgnorePasswordCache:1];
  [v6[0] setPresentingViewController:selfCopy];
  v5 = MEMORY[0x277D82BE0](v6[0]);
  objc_storeStrong(v6, 0);

  return v5;
}

- (id)_username
{
  presentationContext = [(AKAuthorizationPasswordAuthenticationViewController *)self presentationContext];
  userInformation = [(AKAuthorizationPresentationContext *)presentationContext userInformation];
  accountName = [userInformation accountName];
  MEMORY[0x277D82BD8](userInformation);
  MEMORY[0x277D82BD8](presentationContext);

  return accountName;
}

- (void)dealloc
{
  selfCopy = self;
  v8 = a2;
  defaultCenter = [MEMORY[0x277CCAB98] defaultCenter];
  [defaultCenter removeObserver:selfCopy name:*MEMORY[0x277D76BA8] object:?];
  defaultCenter2 = [MEMORY[0x277CCAB98] defaultCenter];
  [defaultCenter2 removeObserver:selfCopy name:*MEMORY[0x277D76C60] object:0];
  defaultCenter3 = [MEMORY[0x277CCAB98] defaultCenter];
  [defaultCenter3 removeObserver:selfCopy name:*MEMORY[0x277D76C50] object:0];
  defaultCenter4 = [MEMORY[0x277CCAB98] defaultCenter];
  [defaultCenter4 removeObserver:selfCopy name:*MEMORY[0x277D76C48] object:0];
  *&v2 = MEMORY[0x277D82BD8](defaultCenter4).n128_u64[0];
  v7.receiver = selfCopy;
  v7.super_class = AKAuthorizationPasswordAuthenticationViewController;
  [(AKAuthorizationPasswordAuthenticationViewController *)&v7 dealloc];
}

- (double)intrinsicContentHeight
{
  selfCopy = self;
  v15[1] = a2;
  view = [(AKModalSignInViewController *)self->_modalSignInViewController view];
  subviews = [view subviews];
  v15[0] = [subviews firstObject];
  MEMORY[0x277D82BD8](subviews);
  *&v2 = MEMORY[0x277D82BD8](view).n128_u64[0];
  view2 = [(AKAuthorizationPasswordAuthenticationViewController *)selfCopy view];
  [view2 bounds];
  CGRectGetWidth(v17);
  CGSizeMake_3();
  v13 = v3;
  v14 = v4;
  MEMORY[0x277D82BD8](view2);
  LODWORD(v5) = 1148846080;
  LODWORD(v6) = 1112014848;
  [v15[0] systemLayoutSizeFittingSize:v13 withHorizontalFittingPriority:v14 verticalFittingPriority:{v5, v6}];
  v12 = v7 + 0.0 + selfCopy->_keyboardHeight + 24.0;
  objc_storeStrong(v15, 0);
  return v12;
}

- (void)sizeToFitPaneContentAnimated:(BOOL)animated
{
  selfCopy = self;
  v8 = a2;
  animatedCopy = animated;
  v3 = 0.3;
  if (!animated)
  {
    v3 = 0.0;
  }

  v6[1] = *&v3;
  v5 = MEMORY[0x277D75D18];
  v4 = v3;
  v6[0] = MEMORY[0x277D82BE0](selfCopy);
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

- (void)keyboardWillShow:(id)show
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, show);
  mainScreen = [MEMORY[0x277D759A0] mainScreen];
  [mainScreen bounds];
  v10 = v3;
  v11 = v4;
  MEMORY[0x277D82BD8](mainScreen);
  v9 = [(AKAuthorizationPasswordAuthenticationViewController *)selfCopy isKeyboardAttachedToBottom:location[0], v10];
  currentDevice = [MEMORY[0x277D75418] currentDevice];
  v8 = 0;
  if ([currentDevice userInterfaceIdiom] == 1)
  {
    v8 = 0;
    if (v10 > v11)
    {
      v8 = v9;
    }
  }

  *&v5 = MEMORY[0x277D82BD8](currentDevice).n128_u64[0];
  if (v8)
  {
    [(AKAuthorizationPasswordAuthenticationViewController *)selfCopy adjustBottomInsetForKeyboard:location[0], v5];
    [(AKAuthorizationPasswordAuthenticationViewController *)selfCopy layoutViewWithAnimation];
  }

  objc_storeStrong(location, 0);
}

- (void)keyboardDidShow:(id)show
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, show);
  userInfo = [location[0] userInfo];
  v6 = [userInfo objectForKey:*MEMORY[0x277D76BB8]];
  [v6 CGRectValue];
  v8 = v3;
  MEMORY[0x277D82BD8](v6);
  view = [(AKAuthorizationPasswordAuthenticationViewController *)selfCopy view];
  [view safeAreaInsets];
  selfCopy->_keyboardHeight = v8 - v4;
  *&v5 = MEMORY[0x277D82BD8](view).n128_u64[0];
  [(AKAuthorizationPasswordAuthenticationViewController *)selfCopy sizeToFitPaneContentAnimated:1, v5];
  objc_storeStrong(&userInfo, 0);
  objc_storeStrong(location, 0);
}

- (void)keyboardWillHide:(id)hide
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, hide);
  selfCopy->_keyboardHeight = 0.0;
  currentDevice = [MEMORY[0x277D75418] currentDevice];
  userInterfaceIdiom = [currentDevice userInterfaceIdiom];
  *&v3 = MEMORY[0x277D82BD8](currentDevice).n128_u64[0];
  if (userInterfaceIdiom == 1)
  {
    [(NSLayoutConstraint *)selfCopy->_modalSignInViewBottomConstraint setConstant:selfCopy->_keyboardHeight];
    [(AKAuthorizationPasswordAuthenticationViewController *)selfCopy layoutViewWithAnimation];
  }

  else
  {
    [(AKAuthorizationPasswordAuthenticationViewController *)selfCopy sizeToFitPaneContentAnimated:1, v3];
  }

  objc_storeStrong(location, 0);
}

- (void)keyboardWillChangeFrame:(id)frame
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, frame);
  mainScreen = [MEMORY[0x277D759A0] mainScreen];
  [mainScreen bounds];
  v9 = v3;
  v10 = v4;
  MEMORY[0x277D82BD8](mainScreen);
  currentDevice = [MEMORY[0x277D75418] currentDevice];
  userInterfaceIdiom = [currentDevice userInterfaceIdiom];
  *&v5 = MEMORY[0x277D82BD8](currentDevice).n128_u64[0];
  if (userInterfaceIdiom == 1)
  {
    if ([(AKAuthorizationPasswordAuthenticationViewController *)selfCopy isKeyboardAttachedToBottom:location[0], v5]&& v9 > v10)
    {
      [(AKAuthorizationPasswordAuthenticationViewController *)selfCopy adjustBottomInsetForKeyboard:location[0]];
    }

    else
    {
      selfCopy->_keyboardHeight = 0.0;
      [(NSLayoutConstraint *)selfCopy->_modalSignInViewBottomConstraint setConstant:?];
    }

    [(AKAuthorizationPasswordAuthenticationViewController *)selfCopy layoutViewWithAnimation];
  }

  objc_storeStrong(location, 0);
}

- (void)adjustBottomInsetForKeyboard:(id)keyboard
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, keyboard);
  userInfo = [location[0] userInfo];
  v5 = [userInfo objectForKey:*MEMORY[0x277D76BB8]];
  [v5 CGRectValue];
  v7 = v3;
  MEMORY[0x277D82BD8](v5);
  view = [(AKAuthorizationPasswordAuthenticationViewController *)selfCopy view];
  [view safeAreaInsets];
  selfCopy->_keyboardHeight = v7 - v4;
  MEMORY[0x277D82BD8](view);
  [(NSLayoutConstraint *)selfCopy->_modalSignInViewBottomConstraint setConstant:-(selfCopy->_keyboardHeight / 2.0 + 36.0)];
  objc_storeStrong(&userInfo, 0);
  objc_storeStrong(location, 0);
}

- (BOOL)isKeyboardAttachedToBottom:(id)bottom
{
  location[2] = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, bottom);
  mainScreen = [MEMORY[0x277D759A0] mainScreen];
  [mainScreen bounds];
  v24.origin.x = v3;
  v24.origin.y = v4;
  v24.size.width = v5;
  v24.size.height = v6;
  *&v7 = MEMORY[0x277D82BD8](mainScreen).n128_u64[0];
  userInfo = [location[0] userInfo];
  v15 = [userInfo objectForKey:*MEMORY[0x277D76BB8]];
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

  objc_storeStrong(&userInfo, 0);
  objc_storeStrong(location, 0);
  return v19;
}

- (void)signInViewController:(id)controller didAuthenticateWithResults:(id)results error:(id)error
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, controller);
  v9 = 0;
  objc_storeStrong(&v9, results);
  v8 = 0;
  objc_storeStrong(&v8, error);
  delegate = [(AKAuthorizationPasswordAuthenticationViewController *)selfCopy delegate];
  [(AKAuthorizationPasswordAuthenticationDelegate *)delegate passwordAuthenticationCompletedWithResults:v9 error:v8];
  MEMORY[0x277D82BD8](delegate);
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