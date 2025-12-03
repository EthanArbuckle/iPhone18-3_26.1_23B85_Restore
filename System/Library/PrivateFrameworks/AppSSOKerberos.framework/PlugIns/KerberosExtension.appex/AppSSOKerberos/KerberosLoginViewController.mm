@interface KerberosLoginViewController
- (BOOL)_formIsValid;
- (BOOL)accessibilityPerformEscape;
- (BOOL)accessibilityPerformMagicTap;
- (BOOL)shouldPromptUserForConsentToPerformFutureAutomaticLogins;
- (BOOL)textFieldShouldReturn:(id)return;
- (KerberosLoginViewController)initWithCoder:(id)coder;
- (KerberosLoginViewController)initWithNibName:(id)name bundle:(id)bundle;
- (NSLayoutConstraint)bottomConstraint;
- (UIBarButtonItem)cancelButton;
- (UILabel)customHelpTitleLabel;
- (UILabel)signInTitleLabel;
- (UINavigationBar)navigationBar;
- (UINavigationItem)navigationItem;
- (UITextField)passwordTextField;
- (UITextField)usernameTextField;
- (UIView)containerView;
- (id)buildIdentityMenu;
- (id)buildOptionsMenu;
- (void)_updateLoginButtonState;
- (void)cancelClicked:(id)clicked;
- (void)cancelCurrentOperation;
- (void)changeFocusedElementForAccessibilityIfNeeded;
- (void)changeUIForCertIdentity;
- (void)didChangePassword;
- (void)didClose;
- (void)disableUI;
- (void)enableUI;
- (void)handleKerberosOperation:(id)operation withMessage:(id)message;
- (void)handleResult:(unint64_t)result context:(id)context error:(id)error;
- (void)keyboardWillChangeFrame:(id)frame;
- (void)keyboardWillHide:(id)hide;
- (void)loginClicked:(id)clicked;
- (void)prefillWithCredentialsFromContextIfPossible:(id)possible;
- (void)prefillWithCredentialsFromKeychainIfPossible;
- (void)prepareContextForLogin;
- (void)presentPendingAlertIfNeeded;
- (void)promptForCertificateWithContext:(id)context;
- (void)promptForPasswordWithContext:(id)context;
- (void)promptForPrincipalWithContext:(id)context;
- (void)promptForSmartcardWithContext:(id)context;
- (void)promptUserForConsentToPerformFutureAutomaticLogins:(id)logins;
- (void)promptUserForConsentToPerformFutureAutomaticLoginsIfNeeded:(id)needed;
- (void)resetUI;
- (void)selectCertForAuth:(id)auth;
- (void)showAuthControllerForContext:(id)context completion:(id)completion;
- (void)showMessage:(id)message andContext:(id)context completion:(id)completion;
- (void)showPasswordViewController;
- (void)updateIdentityMenu;
- (void)viewDidLoad;
@end

@implementation KerberosLoginViewController

- (KerberosLoginViewController)initWithNibName:(id)name bundle:(id)bundle
{
  v7.receiver = self;
  v7.super_class = KerberosLoginViewController;
  v4 = [(KerberosLoginViewController *)&v7 initWithNibName:name bundle:bundle];
  v5 = v4;
  if (v4)
  {
    [(KerberosLoginViewController *)v4 setViewControllerIsShowing:0];
    v5->_shouldChangeFocusedElementForAccessibility = 1;
  }

  return v5;
}

- (KerberosLoginViewController)initWithCoder:(id)coder
{
  v6.receiver = self;
  v6.super_class = KerberosLoginViewController;
  v3 = [(KerberosLoginViewController *)&v6 initWithCoder:coder];
  v4 = v3;
  if (v3)
  {
    [(KerberosLoginViewController *)v3 setViewControllerIsShowing:0];
  }

  return v4;
}

- (void)viewDidLoad
{
  v44.receiver = self;
  v44.super_class = KerberosLoginViewController;
  [(KerberosLoginViewController *)&v44 viewDidLoad];
  v3 = sub_100003F48();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEBUG))
  {
    sub_10000B170();
  }

  layer = [(UIButton *)self->_loginButton layer];
  [layer setCornerRadius:10.0];

  layer2 = [(UIView *)self->_userNamePasswordView layer];
  [layer2 setCornerRadius:10.0];

  v6 = objc_alloc_init(UILabel);
  v7 = +[NSBundle mainBundle];
  v8 = [v7 localizedStringForKey:@"SIGN_IN_TEXT" value:&stru_100014860 table:0];
  [v6 setText:v8];

  [v6 setTextAlignment:0];
  [v6 setTranslatesAutoresizingMaskIntoConstraints:0];
  v9 = [UIFont preferredFontForTextStyle:UIFontTextStyleTitle2];
  [v6 setFont:v9];

  [v6 setAdjustsFontForContentSizeCategory:1];
  v10 = [[UIBarButtonItem alloc] initWithCustomView:v6];
  navigationItem = [(KerberosLoginViewController *)self navigationItem];
  [navigationItem setLeftBarButtonItem:v10];

  loginStackView = [(KerberosLoginViewController *)self loginStackView];
  loginStackView2 = [(KerberosLoginViewController *)self loginStackView];
  subviews = [loginStackView2 subviews];
  v15 = [subviews objectAtIndexedSubscript:0];
  [loginStackView setCustomSpacing:v15 afterView:16.0];

  loginStackView3 = [(KerberosLoginViewController *)self loginStackView];
  loginStackView4 = [(KerberosLoginViewController *)self loginStackView];
  subviews2 = [loginStackView4 subviews];
  v19 = [subviews2 objectAtIndexedSubscript:1];
  [loginStackView3 setCustomSpacing:v19 afterView:16.0];

  WeakRetained = objc_loadWeakRetained(&self->_usernameTextField);
  [WeakRetained setDelegate:self];

  v21 = objc_loadWeakRetained(&self->_passwordTextField);
  [v21 setDelegate:self];

  v22 = objc_loadWeakRetained(&self->_usernameTextField);
  [v22 addTarget:self action:"textFieldDidChange:" forControlEvents:0x20000];

  v23 = objc_loadWeakRetained(&self->_passwordTextField);
  [v23 addTarget:self action:"textFieldDidChange:" forControlEvents:0x20000];

  v24 = objc_loadWeakRetained(&self->_usernameTextField);
  [v24 setTextContentType:UITextContentTypeUsername];

  v25 = objc_loadWeakRetained(&self->_passwordTextField);
  [v25 setTextContentType:UITextContentTypePassword];

  containerView = [(KerberosLoginViewController *)self containerView];
  [containerView setClipsToBounds:1];

  containerView2 = [(KerberosLoginViewController *)self containerView];
  layer3 = [containerView2 layer];
  [layer3 setCornerRadius:10.0];

  containerView3 = [(KerberosLoginViewController *)self containerView];
  layer4 = [containerView3 layer];
  [layer4 setMaskedCorners:3];

  v31 = +[NSNotificationCenter defaultCenter];
  [v31 addObserver:self selector:"keyboardWillChangeFrame:" name:UIKeyboardWillChangeFrameNotification object:0];

  v32 = +[NSNotificationCenter defaultCenter];
  [v32 addObserver:self selector:"keyboardWillHide:" name:UIKeyboardWillHideNotification object:0];

  [(KerberosLoginViewController *)self changeUIForCertIdentity];
  buildOptionsMenu = [(KerberosLoginViewController *)self buildOptionsMenu];
  optionsButton = [(KerberosLoginViewController *)self optionsButton];
  [optionsButton setMenu:buildOptionsMenu];

  optionsButton2 = [(KerberosLoginViewController *)self optionsButton];
  [optionsButton2 setShowsMenuAsPrimaryAction:1];

  buildIdentityMenu = [(KerberosLoginViewController *)self buildIdentityMenu];
  identityButton = [(KerberosLoginViewController *)self identityButton];
  [identityButton setMenu:buildIdentityMenu];

  identityButton2 = [(KerberosLoginViewController *)self identityButton];
  [identityButton2 setShowsMenuAsPrimaryAction:1];

  objc_initWeak(&location, self);
  v39 = objc_alloc_init(TKTokenWatcher);
  [(KerberosLoginViewController *)self setWatcher:v39];

  watcher = [(KerberosLoginViewController *)self watcher];
  v41[0] = _NSConcreteStackBlock;
  v41[1] = 3221225472;
  v41[2] = sub_100003F8C;
  v41[3] = &unk_1000144E0;
  objc_copyWeak(&v42, &location);
  [watcher setInsertionHandler:v41];

  objc_destroyWeak(&v42);
  objc_destroyWeak(&location);
}

- (void)selectCertForAuth:(id)auth
{
  authCopy = auth;
  v5 = objc_alloc_init(LAContext);
  currentUIContext = [(KerberosLoginViewController *)self currentUIContext];
  [currentUIContext setSmartCardLAContext:v5];

  attributes = [authCopy attributes];
  currentUIContext2 = [(KerberosLoginViewController *)self currentUIContext];
  smartCardLAContext = [currentUIContext2 smartCardLAContext];
  v10 = [SOSmartcard getLocalAuthIdentityForCert:attributes withLAContext:smartCardLAContext];
  currentUIContext3 = [(KerberosLoginViewController *)self currentUIContext];
  [currentUIContext3 setPkinitIdentity:v10];

  persistentRef = [authCopy persistentRef];
  currentUIContext4 = [(KerberosLoginViewController *)self currentUIContext];
  [currentUIContext4 setPkinitPersistentRef:persistentRef];

  tokenID = [authCopy tokenID];
  currentUIContext5 = [(KerberosLoginViewController *)self currentUIContext];
  [currentUIContext5 setCertificateTokenID:tokenID];

  v16 = [authCopy upn];
  currentUIContext6 = [(KerberosLoginViewController *)self currentUIContext];
  [currentUIContext6 setUserPrincipalName:v16];

  [(KerberosLoginViewController *)self changeUIForCertIdentity];
  certName = [authCopy certName];

  identityLabel = [(KerberosLoginViewController *)self identityLabel];
  [identityLabel setText:certName];
}

- (id)buildOptionsMenu
{
  v3 = +[NSBundle mainBundle];
  v4 = [v3 localizedStringForKey:@"USE_SMARTCARD_TEXT" value:&stru_100014860 table:0];
  v32[0] = _NSConcreteStackBlock;
  v32[1] = 3221225472;
  v32[2] = sub_1000048A4;
  v32[3] = &unk_100014508;
  v32[4] = self;
  v5 = [UIAction actionWithTitle:v4 image:0 identifier:@"smartcard" handler:v32];

  currentUIContext = [(KerberosLoginViewController *)self currentUIContext];
  pkinitPersistentRef = [currentUIContext pkinitPersistentRef];
  if (pkinitPersistentRef)
  {

    v8 = 1;
  }

  else
  {
    currentUIContext2 = [(KerberosLoginViewController *)self currentUIContext];
    extensionUserData = [currentUIContext2 extensionUserData];
    useSmartCard = [extensionUserData useSmartCard];

    v8 = useSmartCard;
  }

  [v5 setState:v8];
  v12 = +[NSBundle mainBundle];
  v13 = [v12 localizedStringForKey:@"SIGN_IN_AUTO_TEXT" value:&stru_100014860 table:0];
  v31[0] = _NSConcreteStackBlock;
  v31[1] = 3221225472;
  v31[2] = sub_100004A08;
  v31[3] = &unk_100014508;
  v31[4] = self;
  v14 = [UIAction actionWithTitle:v13 image:0 identifier:@"automatic" handler:v31];

  currentUIContext3 = [(KerberosLoginViewController *)self currentUIContext];
  extensionUserData2 = [currentUIContext3 extensionUserData];
  useKeychain = [extensionUserData2 useKeychain];

  [v14 setState:useKeychain];
  v18 = +[NSBundle mainBundle];
  v19 = [v18 localizedStringForKey:@"CHANGE_PASSWORD_TEXT" value:&stru_100014860 table:0];
  v30[0] = _NSConcreteStackBlock;
  v30[1] = 3221225472;
  v30[2] = sub_100004AFC;
  v30[3] = &unk_100014508;
  v30[4] = self;
  v20 = [UIAction actionWithTitle:v19 image:0 identifier:@"password" handler:v30];

  v21 = +[NSBundle mainBundle];
  v22 = [v21 localizedStringForKey:@"SIGN_OUT_TEXT" value:&stru_100014860 table:0];
  v29[0] = _NSConcreteStackBlock;
  v29[1] = 3221225472;
  v29[2] = sub_100004B14;
  v29[3] = &unk_100014508;
  v29[4] = self;
  v23 = [UIAction actionWithTitle:v22 image:0 identifier:@"logout" handler:v29];

  v24 = +[NSBundle mainBundle];
  v25 = [v24 localizedStringForKey:@"OPTIONS_TEXT" value:&stru_100014860 table:0];
  v33[0] = v23;
  v33[1] = v5;
  v33[2] = v14;
  v33[3] = v20;
  v26 = [NSArray arrayWithObjects:v33 count:4];
  v27 = [UIMenu menuWithTitle:v25 children:v26];

  return v27;
}

- (void)showPasswordViewController
{
  v7 = [[KerberosPasswordViewController alloc] initWithNibName:@"KerberosPasswordViewController" bundle:0];
  [(KerberosPasswordViewController *)v7 setModalPresentationStyle:5];
  process = [(KerberosLoginViewController *)self process];
  [(KerberosPasswordViewController *)v7 setProcess:process];

  keychainHelper = [(KerberosLoginViewController *)self keychainHelper];
  [(KerberosPasswordViewController *)v7 setKeychainHelper:keychainHelper];

  currentUIContext = [(KerberosLoginViewController *)self currentUIContext];
  [(KerberosPasswordViewController *)v7 setCurrentUIContext:currentUIContext];

  [(KerberosPasswordViewController *)v7 setDelegate:self];
  [(KerberosLoginViewController *)self setPasswordViewController:v7];
  passwordViewController = [(KerberosLoginViewController *)self passwordViewController];
  [(KerberosLoginViewController *)self presentViewController:passwordViewController animated:1 completion:&stru_100014528];
}

- (id)buildIdentityMenu
{
  v34 = objc_opt_new();
  v3 = +[SOSmartcard availableSmartCards];
  v4 = [v3 count];
  v5 = +[NSBundle mainBundle];
  v6 = v5;
  if (v4)
  {
    v7 = @"NONE_TEXT";
  }

  else
  {
    v7 = @"NO_SMARTCARDS_AVAILABLE_TEXT";
  }

  v8 = [v5 localizedStringForKey:v7 value:&stru_100014860 table:0];
  v40[0] = _NSConcreteStackBlock;
  v40[1] = 3221225472;
  v40[2] = sub_100005240;
  v40[3] = &unk_100014508;
  v40[4] = self;
  v9 = [UIAction actionWithTitle:v8 image:0 identifier:@"none" handler:v40];

  currentUIContext = [(KerberosLoginViewController *)self currentUIContext];
  certificateTokenID = [currentUIContext certificateTokenID];
  if (certificateTokenID)
  {
    v12 = certificateTokenID;
    currentUIContext2 = [(KerberosLoginViewController *)self currentUIContext];
    certificateTokenID2 = [currentUIContext2 certificateTokenID];
    v15 = [certificateTokenID2 isEqualToString:&stru_100014860];

    v16 = v15;
  }

  else
  {

    v16 = 1;
  }

  [v9 setState:v16];
  [v34 addObject:v9];
  v38 = 0u;
  v39 = 0u;
  v36 = 0u;
  v37 = 0u;
  obj = v3;
  v17 = [obj countByEnumeratingWithState:&v36 objects:v41 count:16];
  if (v17)
  {
    v18 = v17;
    v19 = *v37;
    do
    {
      for (i = 0; i != v18; i = i + 1)
      {
        if (*v37 != v19)
        {
          objc_enumerationMutation(obj);
        }

        v21 = *(*(&v36 + 1) + 8 * i);
        certName = [v21 certName];
        tokenID = [v21 tokenID];
        v35[0] = _NSConcreteStackBlock;
        v35[1] = 3221225472;
        v35[2] = sub_10000534C;
        v35[3] = &unk_100014550;
        v35[4] = self;
        v35[5] = v21;
        v24 = [UIAction actionWithTitle:certName image:0 identifier:tokenID handler:v35];

        currentUIContext3 = [(KerberosLoginViewController *)self currentUIContext];
        certificateTokenID3 = [currentUIContext3 certificateTokenID];
        tokenID2 = [v21 tokenID];
        v28 = [certificateTokenID3 isEqualToString:tokenID2];

        [v24 setState:v28];
        [v34 addObject:v24];
      }

      v18 = [obj countByEnumeratingWithState:&v36 objects:v41 count:16];
    }

    while (v18);
  }

  v29 = +[NSBundle mainBundle];
  v30 = [v29 localizedStringForKey:@"SELECT_IDENTITY_TEXT" value:&stru_100014860 table:0];
  v31 = [UIMenu menuWithTitle:v30 image:0 identifier:@"identity" options:0 children:v34];

  return v31;
}

- (void)updateIdentityMenu
{
  identityButton = [(KerberosLoginViewController *)self identityButton];
  [identityButton setMenu:0];

  buildIdentityMenu = [(KerberosLoginViewController *)self buildIdentityMenu];
  identityButton2 = [(KerberosLoginViewController *)self identityButton];
  [identityButton2 setMenu:buildIdentityMenu];
}

- (void)cancelClicked:(id)clicked
{
  v4 = sub_100003F48();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEBUG))
  {
    sub_10000B254();
  }

  [(KerberosLoginViewController *)self removeFromParentViewController];
  view = [(KerberosLoginViewController *)self view];
  [view removeFromSuperview];

  v6[0] = _NSConcreteStackBlock;
  v6[1] = 3221225472;
  v6[2] = sub_100005910;
  v6[3] = &unk_100014358;
  v6[4] = self;
  [(KerberosLoginViewController *)self dismissViewControllerAnimated:1 completion:v6];
}

- (void)loginClicked:(id)clicked
{
  v4 = sub_100003F48();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEBUG))
  {
    sub_10000B404();
  }

  [(KerberosLoginViewController *)self disableUI];
  [(KerberosLoginViewController *)self prepareContextForLogin];
  v5[0] = _NSConcreteStackBlock;
  v5[1] = 3221225472;
  v5[2] = sub_1000059CC;
  v5[3] = &unk_100014358;
  v5[4] = self;
  [(KerberosLoginViewController *)self promptUserForConsentToPerformFutureAutomaticLoginsIfNeeded:v5];
}

- (void)disableUI
{
  WeakRetained = objc_loadWeakRetained(&self->_usernameTextField);
  [WeakRetained resignFirstResponder];

  v4 = objc_loadWeakRetained(&self->_passwordTextField);
  [v4 resignFirstResponder];

  [(UIButton *)self->_loginButton setEnabled:0];
  v5 = objc_loadWeakRetained(&self->_cancelButton);
  [v5 setEnabled:0];

  v6 = objc_loadWeakRetained(&self->_cancelButton);
  [v6 setIsAccessibilityElement:0];

  spinner = [(KerberosLoginViewController *)self spinner];
  [spinner startAnimating];

  [(KerberosLoginViewController *)self changeFocusedElementForAccessibilityIfNeeded];
}

- (void)prepareContextForLogin
{
  currentUIContext = [(KerberosLoginViewController *)self currentUIContext];
  if (([currentUIContext userNameIsReadOnly] & 1) == 0)
  {
    usernameTextField = [(KerberosLoginViewController *)self usernameTextField];
    text = [usernameTextField text];
    if (text)
    {
      currentUIContext3 = text;
      usernameTextField2 = [(KerberosLoginViewController *)self usernameTextField];
      text2 = [usernameTextField2 text];
      if ([text2 isEqualToString:&stru_100014860])
      {
      }

      else
      {
        usernameTextField3 = [(KerberosLoginViewController *)self usernameTextField];
        text3 = [usernameTextField3 text];
        currentUIContext2 = [(KerberosLoginViewController *)self currentUIContext];
        userName = [currentUIContext2 userName];
        v20 = [text3 isEqualToString:userName];

        if (v20)
        {
          goto LABEL_10;
        }

        currentUIContext = [(KerberosLoginViewController *)self usernameTextField];
        usernameTextField = [currentUIContext text];
        currentUIContext3 = [(KerberosLoginViewController *)self currentUIContext];
        [currentUIContext3 setUserName:usernameTextField];
      }
    }
  }

LABEL_10:
  passwordTextField = [(KerberosLoginViewController *)self passwordTextField];
  text4 = [passwordTextField text];
  currentUIContext4 = [(KerberosLoginViewController *)self currentUIContext];
  [currentUIContext4 setPassword:text4];

  usernameTextField4 = [(KerberosLoginViewController *)self usernameTextField];
  text5 = [usernameTextField4 text];
  v17 = [text5 isEqualToString:self->_prefilledUsername];
  if (v17)
  {
    currentUIContext4 = [(KerberosLoginViewController *)self passwordTextField];
    usernameTextField2 = [currentUIContext4 text];
    v18 = [usernameTextField2 isEqualToString:self->_prefilledPassword];
  }

  else
  {
    v18 = 0;
  }

  currentUIContext5 = [(KerberosLoginViewController *)self currentUIContext];
  [currentUIContext5 setCredsCameFromKeychain:v18];

  if (v17)
  {
  }
}

- (void)promptUserForConsentToPerformFutureAutomaticLoginsIfNeeded:(id)needed
{
  neededCopy = needed;
  if ([(KerberosLoginViewController *)self shouldPromptUserForConsentToPerformFutureAutomaticLogins])
  {
    v5[0] = _NSConcreteStackBlock;
    v5[1] = 3221225472;
    v5[2] = sub_100005EB4;
    v5[3] = &unk_100014598;
    v5[4] = self;
    v6 = neededCopy;
    [(KerberosLoginViewController *)self promptUserForConsentToPerformFutureAutomaticLogins:v5];
  }

  else
  {
    neededCopy[2](neededCopy);
  }
}

- (BOOL)shouldPromptUserForConsentToPerformFutureAutomaticLogins
{
  currentUIContext = [(KerberosLoginViewController *)self currentUIContext];
  extensionData = [currentUIContext extensionData];
  allowAutomaticLogin = [extensionData allowAutomaticLogin];

  currentUIContext2 = [(KerberosLoginViewController *)self currentUIContext];
  extensionUserData = [currentUIContext2 extensionUserData];
  LOBYTE(extensionData) = [extensionUserData userSetKeychainChoice] ^ 1;

  return allowAutomaticLogin & extensionData;
}

- (void)promptUserForConsentToPerformFutureAutomaticLogins:(id)logins
{
  loginsCopy = logins;
  v5 = +[NSBundle mainBundle];
  v6 = [v5 localizedStringForKey:@"KEYCHAIN_ALERT_TITLE" value:&stru_100014860 table:0];
  v7 = +[NSBundle mainBundle];
  v8 = [v7 localizedStringForKey:@"KEYCHAIN_ALERT_TEXT" value:&stru_100014860 table:0];
  v9 = [UIAlertController alertControllerWithTitle:v6 message:v8 preferredStyle:1];

  v10 = +[NSBundle mainBundle];
  v11 = [v10 localizedStringForKey:@"YES_TEXT" value:&stru_100014860 table:0];
  v21[0] = _NSConcreteStackBlock;
  v21[1] = 3221225472;
  v21[2] = sub_100006308;
  v21[3] = &unk_1000145C0;
  v21[4] = self;
  v12 = loginsCopy;
  v22 = v12;
  v13 = [UIAlertAction actionWithTitle:v11 style:0 handler:v21];
  [v9 addAction:v13];

  v14 = +[NSBundle mainBundle];
  v15 = [v14 localizedStringForKey:@"NO_TEXT" value:&stru_100014860 table:0];
  v19[0] = _NSConcreteStackBlock;
  v19[1] = 3221225472;
  v19[2] = sub_100006350;
  v19[3] = &unk_1000145C0;
  v19[4] = self;
  v20 = v12;
  v16 = v12;
  v17 = [UIAlertAction actionWithTitle:v15 style:0 handler:v19];
  [v9 addAction:v17];

  v18[0] = _NSConcreteStackBlock;
  v18[1] = 3221225472;
  v18[2] = sub_100006398;
  v18[3] = &unk_100014358;
  v18[4] = self;
  [(KerberosLoginViewController *)self presentViewController:v9 animated:1 completion:v18];
}

- (void)keyboardWillChangeFrame:(id)frame
{
  userInfo = [frame userInfo];
  v5 = [userInfo objectForKey:UIKeyboardFrameEndUserInfoKey];
  [v5 CGRectValue];
  v7 = v6;
  v9 = v8;
  v11 = v10;
  v13 = v12;

  v14 = [userInfo objectForKey:UIKeyboardAnimationDurationUserInfoKey];
  [v14 doubleValue];
  v16 = v15;

  v17 = [userInfo objectForKey:UIKeyboardAnimationCurveUserInfoKey];
  unsignedIntegerValue = [v17 unsignedIntegerValue];

  v19[0] = _NSConcreteStackBlock;
  v19[1] = 3221225472;
  v19[2] = sub_1000064F0;
  v19[3] = &unk_1000143C0;
  v19[4] = self;
  v19[5] = v7;
  v19[6] = v9;
  v19[7] = v11;
  v19[8] = v13;
  [UIView animateWithDuration:unsignedIntegerValue delay:v19 options:&stru_1000145E0 animations:v16 completion:0.0];
}

- (void)keyboardWillHide:(id)hide
{
  hideCopy = hide;
  bottomConstraint = [(KerberosLoginViewController *)self bottomConstraint];
  [bottomConstraint setConstant:16.0];

  userInfo = [hideCopy userInfo];

  v7 = [userInfo objectForKey:UIKeyboardAnimationDurationUserInfoKey];
  [v7 doubleValue];
  v9 = v8;

  v10 = [userInfo objectForKey:UIKeyboardAnimationCurveUserInfoKey];
  unsignedIntegerValue = [v10 unsignedIntegerValue];

  v12[0] = _NSConcreteStackBlock;
  v12[1] = 3221225472;
  v12[2] = sub_1000066A4;
  v12[3] = &unk_100014358;
  v12[4] = self;
  [UIView animateWithDuration:unsignedIntegerValue delay:v12 options:&stru_100014600 animations:v9 completion:0.0];
}

- (void)handleKerberosOperation:(id)operation withMessage:(id)message
{
  operationCopy = operation;
  messageCopy = message;
  v8 = sub_100003F48();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
  {
    sub_10000B438();
  }

  [(KerberosLoginViewController *)self setCurrentUIContext:operationCopy];
  [(KerberosLoginViewController *)self showMessage:messageCopy andContext:operationCopy completion:0];
}

- (void)resetUI
{
  v3 = sub_100003F48();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEBUG))
  {
    sub_10000B4BC();
  }

  if ([(KerberosLoginViewController *)self viewControllerIsShowing])
  {
    [(KerberosLoginViewController *)self dismissViewControllerAnimated:1 completion:0];
  }

  [(KerberosLoginViewController *)self setViewControllerIsShowing:0];
  [(KerberosLoginViewController *)self setCurrentUIContext:0];
  usernameTextField = [(KerberosLoginViewController *)self usernameTextField];
  [usernameTextField setText:&stru_100014860];

  usernameTextField2 = [(KerberosLoginViewController *)self usernameTextField];
  [usernameTextField2 setEnabled:1];

  passwordTextField = [(KerberosLoginViewController *)self passwordTextField];
  [passwordTextField setText:&stru_100014860];

  passwordTextField2 = [(KerberosLoginViewController *)self passwordTextField];
  [passwordTextField2 setEnabled:1];

  loginButton = [(KerberosLoginViewController *)self loginButton];
  [loginButton setEnabled:0];
}

- (void)cancelCurrentOperation
{
  v3 = sub_100003F48();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEBUG))
  {
    sub_10000B4F0();
  }

  currentUIContext = [(KerberosLoginViewController *)self currentUIContext];
  [currentUIContext cancelRequest];
}

- (void)handleResult:(unint64_t)result context:(id)context error:(id)error
{
  contextCopy = context;
  errorCopy = error;
  v10 = sub_100003F48();
  if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
  {
    *buf = 134218498;
    resultCopy = result;
    v35 = 2112;
    v36 = contextCopy;
    v37 = 2112;
    v38 = errorCopy;
    _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_INFO, "login handleResult: %lu, %@, %@", buf, 0x20u);
  }

  switch(result)
  {
    case 1uLL:
      v11 = sub_100003F48();
      if (os_log_type_enabled(v11, OS_LOG_TYPE_DEBUG))
      {
        sub_10000B654();
      }

      [(KerberosLoginViewController *)self promptForPasswordWithContext:contextCopy];
      break;
    case 2uLL:
      v21 = sub_100003F48();
      if (os_log_type_enabled(v21, OS_LOG_TYPE_DEBUG))
      {
        sub_10000B620();
      }

      [(KerberosLoginViewController *)self promptForPrincipalWithContext:contextCopy];
      break;
    case 3uLL:
      v18 = sub_100003F48();
      if (os_log_type_enabled(v18, OS_LOG_TYPE_DEBUG))
      {
        sub_10000B5EC();
      }

      [(KerberosLoginViewController *)self setPromptForSmartCard:1];
      [(KerberosLoginViewController *)self promptForSmartcardWithContext:contextCopy];
      break;
    case 7uLL:
      localizedDescription = [errorCopy localizedDescription];
      [(KerberosLoginViewController *)self showMessage:localizedDescription andContext:contextCopy completion:0];
      goto LABEL_31;
    case 8uLL:
      localizedDescription = +[NSBundle mainBundle];
      v27 = [localizedDescription localizedStringForKey:@"PASSWORD_EXPIRED" value:&stru_100014860 table:0];
      v32[0] = _NSConcreteStackBlock;
      v32[1] = 3221225472;
      v32[2] = sub_100006E58;
      v32[3] = &unk_100014628;
      v32[4] = self;
      v28 = v32;
      selfCopy2 = self;
      v30 = v27;
      v31 = contextCopy;
      goto LABEL_30;
    case 9uLL:
      keychainHelper = [(KerberosLoginViewController *)self keychainHelper];
      serviceName = [contextCopy serviceName];
      [keychainHelper removeCredentialsFromKeychainWithService:serviceName];

      v13 = +[NSBundle mainBundle];
      localizedDescription = v13;
      v15 = @"ACCOUNT_LOCKED";
      goto LABEL_29;
    case 0xAuLL:
      keychainHelper2 = [(KerberosLoginViewController *)self keychainHelper];
      serviceName2 = [contextCopy serviceName];
      [keychainHelper2 removeCredentialsFromKeychainWithService:serviceName2];

      v13 = +[NSBundle mainBundle];
      localizedDescription = v13;
      v15 = @"PASSWORD_INCORRECT";
      goto LABEL_29;
    case 0xBuLL:
      keychainHelper3 = [(KerberosLoginViewController *)self keychainHelper];
      serviceName3 = [contextCopy serviceName];
      [keychainHelper3 removeCredentialsFromKeychainWithService:serviceName3];

      v13 = +[NSBundle mainBundle];
      localizedDescription = v13;
      v15 = @"USERNAME_INCORRECT";
      goto LABEL_29;
    case 0xCuLL:
      v13 = +[NSBundle mainBundle];
      localizedDescription = v13;
      v15 = @"KDC_UNREACHABLE";
      goto LABEL_29;
    case 0xDuLL:
      v13 = +[NSBundle mainBundle];
      localizedDescription = v13;
      v15 = @"UNABLE_TO_RESOLVE_REALM";
      goto LABEL_29;
    case 0xEuLL:
      v13 = +[NSBundle mainBundle];
      localizedDescription = v13;
      v15 = @"UNSUPPORTED_ENC_TYPE";
      goto LABEL_29;
    case 0xFuLL:
      v13 = +[NSBundle mainBundle];
      localizedDescription = v13;
      v15 = @"CERTIFICATE_NOT_FOUND";
      goto LABEL_29;
    case 0x10uLL:
      keychainHelper4 = [(KerberosLoginViewController *)self keychainHelper];
      serviceName4 = [contextCopy serviceName];
      [keychainHelper4 removeCredentialsFromKeychainWithService:serviceName4];

      v13 = +[NSBundle mainBundle];
      localizedDescription = v13;
      v15 = @"PASSWORD_CHANGED_TEXT";
LABEL_29:
      v27 = [v13 localizedStringForKey:v15 value:&stru_100014860 table:0];
      selfCopy2 = self;
      v30 = v27;
      v31 = contextCopy;
      v28 = 0;
LABEL_30:
      [(KerberosLoginViewController *)selfCopy2 showMessage:v30 andContext:v31 completion:v28];

LABEL_31:
      break;
    case 0x11uLL:
      v12 = sub_100003F48();
      if (os_log_type_enabled(v12, OS_LOG_TYPE_DEBUG))
      {
        sub_10000B524(contextCopy, v12);
      }

      [contextCopy completeRequestWithDoNotHandle];
      break;
    case 0x12uLL:
      v26 = sub_100003F48();
      if (os_log_type_enabled(v26, OS_LOG_TYPE_DEBUG))
      {
        sub_10000B5B8();
      }

      [(KerberosLoginViewController *)self promptForCertificateWithContext:contextCopy];
      break;
    default:
      break;
  }
}

- (void)promptForCertificateWithContext:(id)context
{
  v4[0] = _NSConcreteStackBlock;
  v4[1] = 3221225472;
  v4[2] = sub_100006F70;
  v4[3] = &unk_100014428;
  v4[4] = self;
  contextCopy = context;
  v3 = contextCopy;
  dispatch_async(&_dispatch_main_q, v4);
}

- (void)promptForPrincipalWithContext:(id)context
{
  v4[0] = _NSConcreteStackBlock;
  v4[1] = 3221225472;
  v4[2] = sub_10000753C;
  v4[3] = &unk_100014428;
  v4[4] = self;
  contextCopy = context;
  v3 = contextCopy;
  dispatch_async(&_dispatch_main_q, v4);
}

- (void)promptForPasswordWithContext:(id)context
{
  v4[0] = _NSConcreteStackBlock;
  v4[1] = 3221225472;
  v4[2] = sub_10000770C;
  v4[3] = &unk_100014428;
  v4[4] = self;
  contextCopy = context;
  v3 = contextCopy;
  dispatch_async(&_dispatch_main_q, v4);
}

- (void)presentPendingAlertIfNeeded
{
  pendingAlert = self->_pendingAlert;
  if (pendingAlert)
  {
    v5 = objc_retainBlock(pendingAlert);
    v5[2]();
    v4 = self->_pendingAlert;
    self->_pendingAlert = 0;
  }
}

- (void)showMessage:(id)message andContext:(id)context completion:(id)completion
{
  messageCopy = message;
  contextCopy = context;
  completionCopy = completion;
  v24[0] = _NSConcreteStackBlock;
  v24[1] = 3221225472;
  v24[2] = sub_100007AE4;
  v24[3] = &unk_100014678;
  v11 = messageCopy;
  v25 = v11;
  selfCopy = self;
  v12 = contextCopy;
  v27 = v12;
  v13 = completionCopy;
  v28 = v13;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100007D00;
  block[3] = &unk_1000146A0;
  v19 = v11;
  selfCopy2 = self;
  v21 = v12;
  v22 = objc_retainBlock(v24);
  v23 = v13;
  v14 = v13;
  v15 = v12;
  v16 = v22;
  v17 = v11;
  dispatch_async(&_dispatch_main_q, block);
}

- (void)promptForSmartcardWithContext:(id)context
{
  WeakRetained = objc_loadWeakRetained(&self->_usernameTextField);
  [WeakRetained resignFirstResponder];

  v5 = objc_loadWeakRetained(&self->_passwordTextField);
  [v5 resignFirstResponder];

  loginButton = [(KerberosLoginViewController *)self loginButton];
  [loginButton setEnabled:0];

  optionsButton = [(KerberosLoginViewController *)self optionsButton];
  [optionsButton setEnabled:1];

  usernameTextField = [(KerberosLoginViewController *)self usernameTextField];
  [usernameTextField setEnabled:0];

  passwordTextField = [(KerberosLoginViewController *)self passwordTextField];
  [passwordTextField setEnabled:0];

  cancelButton = [(KerberosLoginViewController *)self cancelButton];
  [cancelButton setEnabled:1];

  v13 = +[NSBundle mainBundle];
  v11 = [v13 localizedStringForKey:@"PLEASE_INSERT_SMARTCARD" value:&stru_100014860 table:0];
  signInTitleLabel = [(KerberosLoginViewController *)self signInTitleLabel];
  [signInTitleLabel setText:v11];
}

- (void)showAuthControllerForContext:(id)context completion:(id)completion
{
  contextCopy = context;
  completionCopy = completion;
  v8 = sub_100003F48();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
  {
    sub_10000B78C();
  }

  [(KerberosLoginViewController *)self enableUI];
  [(KerberosLoginViewController *)self prefillWithCredentialsFromContextIfPossible:contextCopy];
  if ([contextCopy smartCardNeedsInsert])
  {
    [(KerberosLoginViewController *)self setPromptForSmartCard:1];
    [(KerberosLoginViewController *)self promptForSmartcardWithContext:contextCopy];
  }

  if ([(KerberosLoginViewController *)self viewControllerIsShowing])
  {
    v9 = sub_100003F48();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEBUG))
    {
      sub_10000B7C0();
    }

    if (completionCopy)
    {
      completionCopy[2](completionCopy, 1, 0);
    }
  }

  else
  {
    v10[0] = _NSConcreteStackBlock;
    v10[1] = 3221225472;
    v10[2] = sub_10000806C;
    v10[3] = &unk_1000146F0;
    v10[4] = self;
    v11 = contextCopy;
    v12 = completionCopy;
    [v11 presentAuthorizationViewControllerWithCompletion:v10];
  }
}

- (void)enableUI
{
  [(KerberosLoginViewController *)self _updateLoginButtonState];
  WeakRetained = objc_loadWeakRetained(&self->_cancelButton);
  [WeakRetained setEnabled:1];

  v4 = objc_loadWeakRetained(&self->_cancelButton);
  [v4 setIsAccessibilityElement:1];

  spinner = [(KerberosLoginViewController *)self spinner];
  [spinner stopAnimating];
}

- (void)changeUIForCertIdentity
{
  currentUIContext = [(KerberosLoginViewController *)self currentUIContext];
  pkinitPersistentRef = [currentUIContext pkinitPersistentRef];
  if (pkinitPersistentRef)
  {

LABEL_4:
    currentUIContext2 = [(KerberosLoginViewController *)self currentUIContext];
    userPrincipalName = [currentUIContext2 userPrincipalName];
    usernameTextField = [(KerberosLoginViewController *)self usernameTextField];
    [usernameTextField setText:userPrincipalName];

    usernameTextField2 = [(KerberosLoginViewController *)self usernameTextField];
    [usernameTextField2 setEnabled:0];

    v12 = +[NSBundle mainBundle];
    v13 = [v12 localizedStringForKey:@"NO_IDENTITY_SELECTED_TEXT" value:&stru_100014860 table:0];
    identityLabel = [(KerberosLoginViewController *)self identityLabel];
    [identityLabel setText:v13];

    identityLabel2 = [(KerberosLoginViewController *)self identityLabel];
    [identityLabel2 setHidden:0];

    identityButton = [(KerberosLoginViewController *)self identityButton];
    [identityButton setHidden:0];

    passwordTextField = [(KerberosLoginViewController *)self passwordTextField];
    [passwordTextField setHidden:1];

    passwordTextField2 = [(KerberosLoginViewController *)self passwordTextField];
    [passwordTextField2 resignFirstResponder];
    goto LABEL_5;
  }

  currentUIContext3 = [(KerberosLoginViewController *)self currentUIContext];
  extensionUserData = [currentUIContext3 extensionUserData];
  useSmartCard = [extensionUserData useSmartCard];

  if (useSmartCard)
  {
    goto LABEL_4;
  }

  currentUIContext4 = [(KerberosLoginViewController *)self currentUIContext];
  userNameIsReadOnly = [currentUIContext4 userNameIsReadOnly];

  usernameTextField3 = [(KerberosLoginViewController *)self usernameTextField];
  [usernameTextField3 setEnabled:userNameIsReadOnly ^ 1];

  passwordTextField3 = [(KerberosLoginViewController *)self passwordTextField];
  [passwordTextField3 setHidden:0];

  identityLabel3 = [(KerberosLoginViewController *)self identityLabel];
  [identityLabel3 setHidden:1];

  passwordTextField2 = [(KerberosLoginViewController *)self identityButton];
  [passwordTextField2 setHidden:1];
LABEL_5:

  [(KerberosLoginViewController *)self _updateLoginButtonState];
}

- (void)prefillWithCredentialsFromContextIfPossible:(id)possible
{
  possibleCopy = possible;
  currentUIContext = [(KerberosLoginViewController *)self currentUIContext];
  userName = [currentUIContext userName];
  v7 = userName == 0;
  if (!userName)
  {
    goto LABEL_4;
  }

  v8 = userName;
  usernameTextField = [(KerberosLoginViewController *)self usernameTextField];
  text = [usernameTextField text];
  v11 = [text isEqualToString:&stru_100014860];

  if (v11)
  {
    currentUIContext = [(KerberosLoginViewController *)self currentUIContext];
    userName2 = [currentUIContext userName];
    usernameTextField2 = [(KerberosLoginViewController *)self usernameTextField];
    [usernameTextField2 setText:userName2];

LABEL_4:
    goto LABEL_6;
  }

  v7 = 1;
LABEL_6:
  usernameTextField3 = [(KerberosLoginViewController *)self usernameTextField];
  [usernameTextField3 setEnabled:v7];

  p_usernameTextField = &self->_usernameTextField;
  WeakRetained = objc_loadWeakRetained(&self->_usernameTextField);
  text2 = [WeakRetained text];
  v18 = [text2 length];

  if (v18)
  {
    p_usernameTextField = &self->_passwordTextField;
  }

  v19 = objc_loadWeakRetained(p_usernameTextField);
  [v19 becomeFirstResponder];

  LODWORD(v19) = [possibleCopy userNameIsReadOnly];
  if (v19)
  {
    usernameTextField4 = [(KerberosLoginViewController *)self usernameTextField];
    [usernameTextField4 setEnabled:0];
  }

  [(KerberosLoginViewController *)self changeUIForCertIdentity];
}

- (void)prefillWithCredentialsFromKeychainIfPossible
{
  v3 = objc_alloc_init(LAContext);
  currentUIContext = [(KerberosLoginViewController *)self currentUIContext];
  [currentUIContext setKeychainLAContext:v3];

  currentUIContext2 = [(KerberosLoginViewController *)self currentUIContext];
  keychainLAContext = [currentUIContext2 keychainLAContext];
  [keychainLAContext setOptionCallerName:@"Kerberos"];

  keychainHelper = [(KerberosLoginViewController *)self keychainHelper];
  currentUIContext3 = [(KerberosLoginViewController *)self currentUIContext];
  keychainLAContext2 = [currentUIContext3 keychainLAContext];
  currentUIContext4 = [(KerberosLoginViewController *)self currentUIContext];
  serviceName = [currentUIContext4 serviceName];
  v25 = 0;
  v26 = 0;
  v12 = [keychainHelper retrieveCredentialsFromKeychainWithContext:keychainLAContext2 service:serviceName returnedUsername:&v26 returnedPassword:&v25];
  v13 = v26;
  v14 = v25;

  if (!v12)
  {
    WeakRetained = objc_loadWeakRetained(&self->_passwordTextField);
    [WeakRetained setText:v14];

    v16 = objc_loadWeakRetained(&self->_usernameTextField);
    [v16 setText:v13];

    v17 = sub_100003F48();
    if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
    {
      *v24 = 0;
      _os_log_impl(&_mh_execute_header, v17, OS_LOG_TYPE_DEFAULT, "prefilled credentials", v24, 2u);
    }

    [(KerberosLoginViewController *)self _updateLoginButtonState];
    loginButton = [(KerberosLoginViewController *)self loginButton];
    isEnabled = [loginButton isEnabled];

    if (isEnabled)
    {
      [(KerberosLoginViewController *)self loginClicked:0];
    }
  }

  prefilledPassword = self->_prefilledPassword;
  self->_prefilledPassword = v14;
  v21 = v14;

  prefilledUsername = self->_prefilledUsername;
  self->_prefilledUsername = v13;
  v23 = v13;
}

- (BOOL)accessibilityPerformEscape
{
  v3 = sub_100003F48();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *v5 = 0;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "cancelled via accessibility gesture", v5, 2u);
  }

  [(KerberosLoginViewController *)self cancelClicked:0];
  return 1;
}

- (BOOL)accessibilityPerformMagicTap
{
  _formIsValid = [(KerberosLoginViewController *)self _formIsValid];
  if (_formIsValid)
  {
    v4 = sub_100003F48();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      *v6 = 0;
      _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "Submitted login request via accessibility gesture", v6, 2u);
    }

    [(KerberosLoginViewController *)self loginClicked:0];
  }

  return _formIsValid;
}

- (void)changeFocusedElementForAccessibilityIfNeeded
{
  v3 = dispatch_time(0, 2000000000);
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100008A48;
  block[3] = &unk_100014358;
  block[4] = self;
  dispatch_after(v3, &_dispatch_main_q, block);
}

- (BOOL)textFieldShouldReturn:(id)return
{
  returnCopy = return;
  WeakRetained = objc_loadWeakRetained(&self->_usernameTextField);

  v6 = objc_loadWeakRetained(&self->_passwordTextField);
  v7 = v6;
  if (WeakRetained == returnCopy)
  {
    [v6 becomeFirstResponder];
  }

  else
  {

    if (v7 == returnCopy && [(KerberosLoginViewController *)self _formIsValid])
    {
      [(KerberosLoginViewController *)self loginClicked:self];
    }
  }

  return 1;
}

- (void)_updateLoginButtonState
{
  _formIsValid = [(KerberosLoginViewController *)self _formIsValid];
  loginButton = self->_loginButton;

  [(UIButton *)loginButton setEnabled:_formIsValid];
}

- (BOOL)_formIsValid
{
  WeakRetained = objc_loadWeakRetained(&self->_usernameTextField);
  text = [WeakRetained text];
  v5 = [text length];

  v6 = objc_loadWeakRetained(&self->_passwordTextField);
  text2 = [v6 text];
  v8 = [text2 length];

  if (!v5)
  {
    return 0;
  }

  if (v8)
  {
    return 1;
  }

  currentUIContext = [(KerberosLoginViewController *)self currentUIContext];
  pkinitPersistentRef = [currentUIContext pkinitPersistentRef];
  v9 = pkinitPersistentRef != 0;

  return v9;
}

- (void)didClose
{
  passwordViewController = [(KerberosLoginViewController *)self passwordViewController];
  v4[0] = _NSConcreteStackBlock;
  v4[1] = 3221225472;
  v4[2] = sub_100008D50;
  v4[3] = &unk_100014358;
  v4[4] = self;
  [passwordViewController dismissViewControllerAnimated:1 completion:v4];

  if ([(KerberosLoginViewController *)self _formIsValid])
  {
    [(KerberosLoginViewController *)self performSelectorOnMainThread:"loginClicked:" withObject:0 waitUntilDone:0];
  }
}

- (void)didChangePassword
{
  currentUIContext = [(KerberosLoginViewController *)self currentUIContext];
  password = [currentUIContext password];
  passwordTextField = [(KerberosLoginViewController *)self passwordTextField];
  [passwordTextField setText:password];

  currentUIContext2 = [(KerberosLoginViewController *)self currentUIContext];
  userName = [currentUIContext2 userName];
  usernameTextField = [(KerberosLoginViewController *)self usernameTextField];
  [usernameTextField setText:userName];

  _formIsValid = [(KerberosLoginViewController *)self _formIsValid];
  loginButton = self->_loginButton;

  [(UIButton *)loginButton setEnabled:_formIsValid];
}

- (UILabel)signInTitleLabel
{
  WeakRetained = objc_loadWeakRetained(&self->_signInTitleLabel);

  return WeakRetained;
}

- (UIView)containerView
{
  WeakRetained = objc_loadWeakRetained(&self->_containerView);

  return WeakRetained;
}

- (UITextField)usernameTextField
{
  WeakRetained = objc_loadWeakRetained(&self->_usernameTextField);

  return WeakRetained;
}

- (UITextField)passwordTextField
{
  WeakRetained = objc_loadWeakRetained(&self->_passwordTextField);

  return WeakRetained;
}

- (UINavigationBar)navigationBar
{
  WeakRetained = objc_loadWeakRetained(&self->_navigationBar);

  return WeakRetained;
}

- (UINavigationItem)navigationItem
{
  WeakRetained = objc_loadWeakRetained(&self->_navigationItem);

  return WeakRetained;
}

- (NSLayoutConstraint)bottomConstraint
{
  WeakRetained = objc_loadWeakRetained(&self->_bottomConstraint);

  return WeakRetained;
}

- (UIBarButtonItem)cancelButton
{
  WeakRetained = objc_loadWeakRetained(&self->_cancelButton);

  return WeakRetained;
}

- (UILabel)customHelpTitleLabel
{
  WeakRetained = objc_loadWeakRetained(&self->_customHelpTitleLabel);

  return WeakRetained;
}

@end