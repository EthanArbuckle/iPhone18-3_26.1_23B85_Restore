@interface KerberosLoginViewController
- (BOOL)_formIsValid;
- (BOOL)accessibilityPerformEscape;
- (BOOL)accessibilityPerformMagicTap;
- (BOOL)shouldPromptUserForConsentToPerformFutureAutomaticLogins;
- (BOOL)textFieldShouldReturn:(id)a3;
- (KerberosLoginViewController)initWithCoder:(id)a3;
- (KerberosLoginViewController)initWithNibName:(id)a3 bundle:(id)a4;
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
- (void)cancelClicked:(id)a3;
- (void)cancelCurrentOperation;
- (void)changeFocusedElementForAccessibilityIfNeeded;
- (void)changeUIForCertIdentity;
- (void)didChangePassword;
- (void)didClose;
- (void)disableUI;
- (void)enableUI;
- (void)handleKerberosOperation:(id)a3 withMessage:(id)a4;
- (void)handleResult:(unint64_t)a3 context:(id)a4 error:(id)a5;
- (void)keyboardWillChangeFrame:(id)a3;
- (void)keyboardWillHide:(id)a3;
- (void)loginClicked:(id)a3;
- (void)prefillWithCredentialsFromContextIfPossible:(id)a3;
- (void)prefillWithCredentialsFromKeychainIfPossible;
- (void)prepareContextForLogin;
- (void)presentPendingAlertIfNeeded;
- (void)promptForCertificateWithContext:(id)a3;
- (void)promptForPasswordWithContext:(id)a3;
- (void)promptForPrincipalWithContext:(id)a3;
- (void)promptForSmartcardWithContext:(id)a3;
- (void)promptUserForConsentToPerformFutureAutomaticLogins:(id)a3;
- (void)promptUserForConsentToPerformFutureAutomaticLoginsIfNeeded:(id)a3;
- (void)resetUI;
- (void)selectCertForAuth:(id)a3;
- (void)showAuthControllerForContext:(id)a3 completion:(id)a4;
- (void)showMessage:(id)a3 andContext:(id)a4 completion:(id)a5;
- (void)showPasswordViewController;
- (void)updateIdentityMenu;
- (void)viewDidLoad;
@end

@implementation KerberosLoginViewController

- (KerberosLoginViewController)initWithNibName:(id)a3 bundle:(id)a4
{
  v7.receiver = self;
  v7.super_class = KerberosLoginViewController;
  v4 = [(KerberosLoginViewController *)&v7 initWithNibName:a3 bundle:a4];
  v5 = v4;
  if (v4)
  {
    [(KerberosLoginViewController *)v4 setViewControllerIsShowing:0];
    v5->_shouldChangeFocusedElementForAccessibility = 1;
  }

  return v5;
}

- (KerberosLoginViewController)initWithCoder:(id)a3
{
  v6.receiver = self;
  v6.super_class = KerberosLoginViewController;
  v3 = [(KerberosLoginViewController *)&v6 initWithCoder:a3];
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

  v4 = [(UIButton *)self->_loginButton layer];
  [v4 setCornerRadius:10.0];

  v5 = [(UIView *)self->_userNamePasswordView layer];
  [v5 setCornerRadius:10.0];

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
  v11 = [(KerberosLoginViewController *)self navigationItem];
  [v11 setLeftBarButtonItem:v10];

  v12 = [(KerberosLoginViewController *)self loginStackView];
  v13 = [(KerberosLoginViewController *)self loginStackView];
  v14 = [v13 subviews];
  v15 = [v14 objectAtIndexedSubscript:0];
  [v12 setCustomSpacing:v15 afterView:16.0];

  v16 = [(KerberosLoginViewController *)self loginStackView];
  v17 = [(KerberosLoginViewController *)self loginStackView];
  v18 = [v17 subviews];
  v19 = [v18 objectAtIndexedSubscript:1];
  [v16 setCustomSpacing:v19 afterView:16.0];

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

  v26 = [(KerberosLoginViewController *)self containerView];
  [v26 setClipsToBounds:1];

  v27 = [(KerberosLoginViewController *)self containerView];
  v28 = [v27 layer];
  [v28 setCornerRadius:10.0];

  v29 = [(KerberosLoginViewController *)self containerView];
  v30 = [v29 layer];
  [v30 setMaskedCorners:3];

  v31 = +[NSNotificationCenter defaultCenter];
  [v31 addObserver:self selector:"keyboardWillChangeFrame:" name:UIKeyboardWillChangeFrameNotification object:0];

  v32 = +[NSNotificationCenter defaultCenter];
  [v32 addObserver:self selector:"keyboardWillHide:" name:UIKeyboardWillHideNotification object:0];

  [(KerberosLoginViewController *)self changeUIForCertIdentity];
  v33 = [(KerberosLoginViewController *)self buildOptionsMenu];
  v34 = [(KerberosLoginViewController *)self optionsButton];
  [v34 setMenu:v33];

  v35 = [(KerberosLoginViewController *)self optionsButton];
  [v35 setShowsMenuAsPrimaryAction:1];

  v36 = [(KerberosLoginViewController *)self buildIdentityMenu];
  v37 = [(KerberosLoginViewController *)self identityButton];
  [v37 setMenu:v36];

  v38 = [(KerberosLoginViewController *)self identityButton];
  [v38 setShowsMenuAsPrimaryAction:1];

  objc_initWeak(&location, self);
  v39 = objc_alloc_init(TKTokenWatcher);
  [(KerberosLoginViewController *)self setWatcher:v39];

  v40 = [(KerberosLoginViewController *)self watcher];
  v41[0] = _NSConcreteStackBlock;
  v41[1] = 3221225472;
  v41[2] = sub_100003F8C;
  v41[3] = &unk_1000144E0;
  objc_copyWeak(&v42, &location);
  [v40 setInsertionHandler:v41];

  objc_destroyWeak(&v42);
  objc_destroyWeak(&location);
}

- (void)selectCertForAuth:(id)a3
{
  v4 = a3;
  v5 = objc_alloc_init(LAContext);
  v6 = [(KerberosLoginViewController *)self currentUIContext];
  [v6 setSmartCardLAContext:v5];

  v7 = [v4 attributes];
  v8 = [(KerberosLoginViewController *)self currentUIContext];
  v9 = [v8 smartCardLAContext];
  v10 = [SOSmartcard getLocalAuthIdentityForCert:v7 withLAContext:v9];
  v11 = [(KerberosLoginViewController *)self currentUIContext];
  [v11 setPkinitIdentity:v10];

  v12 = [v4 persistentRef];
  v13 = [(KerberosLoginViewController *)self currentUIContext];
  [v13 setPkinitPersistentRef:v12];

  v14 = [v4 tokenID];
  v15 = [(KerberosLoginViewController *)self currentUIContext];
  [v15 setCertificateTokenID:v14];

  v16 = [v4 upn];
  v17 = [(KerberosLoginViewController *)self currentUIContext];
  [v17 setUserPrincipalName:v16];

  [(KerberosLoginViewController *)self changeUIForCertIdentity];
  v19 = [v4 certName];

  v18 = [(KerberosLoginViewController *)self identityLabel];
  [v18 setText:v19];
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

  v6 = [(KerberosLoginViewController *)self currentUIContext];
  v7 = [v6 pkinitPersistentRef];
  if (v7)
  {

    v8 = 1;
  }

  else
  {
    v9 = [(KerberosLoginViewController *)self currentUIContext];
    v10 = [v9 extensionUserData];
    v11 = [v10 useSmartCard];

    v8 = v11;
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

  v15 = [(KerberosLoginViewController *)self currentUIContext];
  v16 = [v15 extensionUserData];
  v17 = [v16 useKeychain];

  [v14 setState:v17];
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
  v3 = [(KerberosLoginViewController *)self process];
  [(KerberosPasswordViewController *)v7 setProcess:v3];

  v4 = [(KerberosLoginViewController *)self keychainHelper];
  [(KerberosPasswordViewController *)v7 setKeychainHelper:v4];

  v5 = [(KerberosLoginViewController *)self currentUIContext];
  [(KerberosPasswordViewController *)v7 setCurrentUIContext:v5];

  [(KerberosPasswordViewController *)v7 setDelegate:self];
  [(KerberosLoginViewController *)self setPasswordViewController:v7];
  v6 = [(KerberosLoginViewController *)self passwordViewController];
  [(KerberosLoginViewController *)self presentViewController:v6 animated:1 completion:&stru_100014528];
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

  v10 = [(KerberosLoginViewController *)self currentUIContext];
  v11 = [v10 certificateTokenID];
  if (v11)
  {
    v12 = v11;
    v13 = [(KerberosLoginViewController *)self currentUIContext];
    v14 = [v13 certificateTokenID];
    v15 = [v14 isEqualToString:&stru_100014860];

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
        v22 = [v21 certName];
        v23 = [v21 tokenID];
        v35[0] = _NSConcreteStackBlock;
        v35[1] = 3221225472;
        v35[2] = sub_10000534C;
        v35[3] = &unk_100014550;
        v35[4] = self;
        v35[5] = v21;
        v24 = [UIAction actionWithTitle:v22 image:0 identifier:v23 handler:v35];

        v25 = [(KerberosLoginViewController *)self currentUIContext];
        v26 = [v25 certificateTokenID];
        v27 = [v21 tokenID];
        v28 = [v26 isEqualToString:v27];

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
  v3 = [(KerberosLoginViewController *)self identityButton];
  [v3 setMenu:0];

  v5 = [(KerberosLoginViewController *)self buildIdentityMenu];
  v4 = [(KerberosLoginViewController *)self identityButton];
  [v4 setMenu:v5];
}

- (void)cancelClicked:(id)a3
{
  v4 = sub_100003F48();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEBUG))
  {
    sub_10000B254();
  }

  [(KerberosLoginViewController *)self removeFromParentViewController];
  v5 = [(KerberosLoginViewController *)self view];
  [v5 removeFromSuperview];

  v6[0] = _NSConcreteStackBlock;
  v6[1] = 3221225472;
  v6[2] = sub_100005910;
  v6[3] = &unk_100014358;
  v6[4] = self;
  [(KerberosLoginViewController *)self dismissViewControllerAnimated:1 completion:v6];
}

- (void)loginClicked:(id)a3
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

  v7 = [(KerberosLoginViewController *)self spinner];
  [v7 startAnimating];

  [(KerberosLoginViewController *)self changeFocusedElementForAccessibilityIfNeeded];
}

- (void)prepareContextForLogin
{
  v4 = [(KerberosLoginViewController *)self currentUIContext];
  if (([v4 userNameIsReadOnly] & 1) == 0)
  {
    v5 = [(KerberosLoginViewController *)self usernameTextField];
    v6 = [v5 text];
    if (v6)
    {
      v7 = v6;
      v2 = [(KerberosLoginViewController *)self usernameTextField];
      v8 = [v2 text];
      if ([v8 isEqualToString:&stru_100014860])
      {
      }

      else
      {
        v9 = [(KerberosLoginViewController *)self usernameTextField];
        v10 = [v9 text];
        v11 = [(KerberosLoginViewController *)self currentUIContext];
        v12 = [v11 userName];
        v20 = [v10 isEqualToString:v12];

        if (v20)
        {
          goto LABEL_10;
        }

        v4 = [(KerberosLoginViewController *)self usernameTextField];
        v5 = [v4 text];
        v7 = [(KerberosLoginViewController *)self currentUIContext];
        [v7 setUserName:v5];
      }
    }
  }

LABEL_10:
  v13 = [(KerberosLoginViewController *)self passwordTextField];
  v14 = [v13 text];
  v15 = [(KerberosLoginViewController *)self currentUIContext];
  [v15 setPassword:v14];

  v21 = [(KerberosLoginViewController *)self usernameTextField];
  v16 = [v21 text];
  v17 = [v16 isEqualToString:self->_prefilledUsername];
  if (v17)
  {
    v15 = [(KerberosLoginViewController *)self passwordTextField];
    v2 = [v15 text];
    v18 = [v2 isEqualToString:self->_prefilledPassword];
  }

  else
  {
    v18 = 0;
  }

  v19 = [(KerberosLoginViewController *)self currentUIContext];
  [v19 setCredsCameFromKeychain:v18];

  if (v17)
  {
  }
}

- (void)promptUserForConsentToPerformFutureAutomaticLoginsIfNeeded:(id)a3
{
  v4 = a3;
  if ([(KerberosLoginViewController *)self shouldPromptUserForConsentToPerformFutureAutomaticLogins])
  {
    v5[0] = _NSConcreteStackBlock;
    v5[1] = 3221225472;
    v5[2] = sub_100005EB4;
    v5[3] = &unk_100014598;
    v5[4] = self;
    v6 = v4;
    [(KerberosLoginViewController *)self promptUserForConsentToPerformFutureAutomaticLogins:v5];
  }

  else
  {
    v4[2](v4);
  }
}

- (BOOL)shouldPromptUserForConsentToPerformFutureAutomaticLogins
{
  v3 = [(KerberosLoginViewController *)self currentUIContext];
  v4 = [v3 extensionData];
  v5 = [v4 allowAutomaticLogin];

  v6 = [(KerberosLoginViewController *)self currentUIContext];
  v7 = [v6 extensionUserData];
  LOBYTE(v4) = [v7 userSetKeychainChoice] ^ 1;

  return v5 & v4;
}

- (void)promptUserForConsentToPerformFutureAutomaticLogins:(id)a3
{
  v4 = a3;
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
  v12 = v4;
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

- (void)keyboardWillChangeFrame:(id)a3
{
  v4 = [a3 userInfo];
  v5 = [v4 objectForKey:UIKeyboardFrameEndUserInfoKey];
  [v5 CGRectValue];
  v7 = v6;
  v9 = v8;
  v11 = v10;
  v13 = v12;

  v14 = [v4 objectForKey:UIKeyboardAnimationDurationUserInfoKey];
  [v14 doubleValue];
  v16 = v15;

  v17 = [v4 objectForKey:UIKeyboardAnimationCurveUserInfoKey];
  v18 = [v17 unsignedIntegerValue];

  v19[0] = _NSConcreteStackBlock;
  v19[1] = 3221225472;
  v19[2] = sub_1000064F0;
  v19[3] = &unk_1000143C0;
  v19[4] = self;
  v19[5] = v7;
  v19[6] = v9;
  v19[7] = v11;
  v19[8] = v13;
  [UIView animateWithDuration:v18 delay:v19 options:&stru_1000145E0 animations:v16 completion:0.0];
}

- (void)keyboardWillHide:(id)a3
{
  v4 = a3;
  v5 = [(KerberosLoginViewController *)self bottomConstraint];
  [v5 setConstant:16.0];

  v6 = [v4 userInfo];

  v7 = [v6 objectForKey:UIKeyboardAnimationDurationUserInfoKey];
  [v7 doubleValue];
  v9 = v8;

  v10 = [v6 objectForKey:UIKeyboardAnimationCurveUserInfoKey];
  v11 = [v10 unsignedIntegerValue];

  v12[0] = _NSConcreteStackBlock;
  v12[1] = 3221225472;
  v12[2] = sub_1000066A4;
  v12[3] = &unk_100014358;
  v12[4] = self;
  [UIView animateWithDuration:v11 delay:v12 options:&stru_100014600 animations:v9 completion:0.0];
}

- (void)handleKerberosOperation:(id)a3 withMessage:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = sub_100003F48();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
  {
    sub_10000B438();
  }

  [(KerberosLoginViewController *)self setCurrentUIContext:v6];
  [(KerberosLoginViewController *)self showMessage:v7 andContext:v6 completion:0];
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
  v4 = [(KerberosLoginViewController *)self usernameTextField];
  [v4 setText:&stru_100014860];

  v5 = [(KerberosLoginViewController *)self usernameTextField];
  [v5 setEnabled:1];

  v6 = [(KerberosLoginViewController *)self passwordTextField];
  [v6 setText:&stru_100014860];

  v7 = [(KerberosLoginViewController *)self passwordTextField];
  [v7 setEnabled:1];

  v8 = [(KerberosLoginViewController *)self loginButton];
  [v8 setEnabled:0];
}

- (void)cancelCurrentOperation
{
  v3 = sub_100003F48();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEBUG))
  {
    sub_10000B4F0();
  }

  v4 = [(KerberosLoginViewController *)self currentUIContext];
  [v4 cancelRequest];
}

- (void)handleResult:(unint64_t)a3 context:(id)a4 error:(id)a5
{
  v8 = a4;
  v9 = a5;
  v10 = sub_100003F48();
  if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
  {
    *buf = 134218498;
    v34 = a3;
    v35 = 2112;
    v36 = v8;
    v37 = 2112;
    v38 = v9;
    _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_INFO, "login handleResult: %lu, %@, %@", buf, 0x20u);
  }

  switch(a3)
  {
    case 1uLL:
      v11 = sub_100003F48();
      if (os_log_type_enabled(v11, OS_LOG_TYPE_DEBUG))
      {
        sub_10000B654();
      }

      [(KerberosLoginViewController *)self promptForPasswordWithContext:v8];
      break;
    case 2uLL:
      v21 = sub_100003F48();
      if (os_log_type_enabled(v21, OS_LOG_TYPE_DEBUG))
      {
        sub_10000B620();
      }

      [(KerberosLoginViewController *)self promptForPrincipalWithContext:v8];
      break;
    case 3uLL:
      v18 = sub_100003F48();
      if (os_log_type_enabled(v18, OS_LOG_TYPE_DEBUG))
      {
        sub_10000B5EC();
      }

      [(KerberosLoginViewController *)self setPromptForSmartCard:1];
      [(KerberosLoginViewController *)self promptForSmartcardWithContext:v8];
      break;
    case 7uLL:
      v14 = [v9 localizedDescription];
      [(KerberosLoginViewController *)self showMessage:v14 andContext:v8 completion:0];
      goto LABEL_31;
    case 8uLL:
      v14 = +[NSBundle mainBundle];
      v27 = [v14 localizedStringForKey:@"PASSWORD_EXPIRED" value:&stru_100014860 table:0];
      v32[0] = _NSConcreteStackBlock;
      v32[1] = 3221225472;
      v32[2] = sub_100006E58;
      v32[3] = &unk_100014628;
      v32[4] = self;
      v28 = v32;
      v29 = self;
      v30 = v27;
      v31 = v8;
      goto LABEL_30;
    case 9uLL:
      v19 = [(KerberosLoginViewController *)self keychainHelper];
      v20 = [v8 serviceName];
      [v19 removeCredentialsFromKeychainWithService:v20];

      v13 = +[NSBundle mainBundle];
      v14 = v13;
      v15 = @"ACCOUNT_LOCKED";
      goto LABEL_29;
    case 0xAuLL:
      v22 = [(KerberosLoginViewController *)self keychainHelper];
      v23 = [v8 serviceName];
      [v22 removeCredentialsFromKeychainWithService:v23];

      v13 = +[NSBundle mainBundle];
      v14 = v13;
      v15 = @"PASSWORD_INCORRECT";
      goto LABEL_29;
    case 0xBuLL:
      v24 = [(KerberosLoginViewController *)self keychainHelper];
      v25 = [v8 serviceName];
      [v24 removeCredentialsFromKeychainWithService:v25];

      v13 = +[NSBundle mainBundle];
      v14 = v13;
      v15 = @"USERNAME_INCORRECT";
      goto LABEL_29;
    case 0xCuLL:
      v13 = +[NSBundle mainBundle];
      v14 = v13;
      v15 = @"KDC_UNREACHABLE";
      goto LABEL_29;
    case 0xDuLL:
      v13 = +[NSBundle mainBundle];
      v14 = v13;
      v15 = @"UNABLE_TO_RESOLVE_REALM";
      goto LABEL_29;
    case 0xEuLL:
      v13 = +[NSBundle mainBundle];
      v14 = v13;
      v15 = @"UNSUPPORTED_ENC_TYPE";
      goto LABEL_29;
    case 0xFuLL:
      v13 = +[NSBundle mainBundle];
      v14 = v13;
      v15 = @"CERTIFICATE_NOT_FOUND";
      goto LABEL_29;
    case 0x10uLL:
      v16 = [(KerberosLoginViewController *)self keychainHelper];
      v17 = [v8 serviceName];
      [v16 removeCredentialsFromKeychainWithService:v17];

      v13 = +[NSBundle mainBundle];
      v14 = v13;
      v15 = @"PASSWORD_CHANGED_TEXT";
LABEL_29:
      v27 = [v13 localizedStringForKey:v15 value:&stru_100014860 table:0];
      v29 = self;
      v30 = v27;
      v31 = v8;
      v28 = 0;
LABEL_30:
      [(KerberosLoginViewController *)v29 showMessage:v30 andContext:v31 completion:v28];

LABEL_31:
      break;
    case 0x11uLL:
      v12 = sub_100003F48();
      if (os_log_type_enabled(v12, OS_LOG_TYPE_DEBUG))
      {
        sub_10000B524(v8, v12);
      }

      [v8 completeRequestWithDoNotHandle];
      break;
    case 0x12uLL:
      v26 = sub_100003F48();
      if (os_log_type_enabled(v26, OS_LOG_TYPE_DEBUG))
      {
        sub_10000B5B8();
      }

      [(KerberosLoginViewController *)self promptForCertificateWithContext:v8];
      break;
    default:
      break;
  }
}

- (void)promptForCertificateWithContext:(id)a3
{
  v4[0] = _NSConcreteStackBlock;
  v4[1] = 3221225472;
  v4[2] = sub_100006F70;
  v4[3] = &unk_100014428;
  v4[4] = self;
  v5 = a3;
  v3 = v5;
  dispatch_async(&_dispatch_main_q, v4);
}

- (void)promptForPrincipalWithContext:(id)a3
{
  v4[0] = _NSConcreteStackBlock;
  v4[1] = 3221225472;
  v4[2] = sub_10000753C;
  v4[3] = &unk_100014428;
  v4[4] = self;
  v5 = a3;
  v3 = v5;
  dispatch_async(&_dispatch_main_q, v4);
}

- (void)promptForPasswordWithContext:(id)a3
{
  v4[0] = _NSConcreteStackBlock;
  v4[1] = 3221225472;
  v4[2] = sub_10000770C;
  v4[3] = &unk_100014428;
  v4[4] = self;
  v5 = a3;
  v3 = v5;
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

- (void)showMessage:(id)a3 andContext:(id)a4 completion:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v24[0] = _NSConcreteStackBlock;
  v24[1] = 3221225472;
  v24[2] = sub_100007AE4;
  v24[3] = &unk_100014678;
  v11 = v8;
  v25 = v11;
  v26 = self;
  v12 = v9;
  v27 = v12;
  v13 = v10;
  v28 = v13;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100007D00;
  block[3] = &unk_1000146A0;
  v19 = v11;
  v20 = self;
  v21 = v12;
  v22 = objc_retainBlock(v24);
  v23 = v13;
  v14 = v13;
  v15 = v12;
  v16 = v22;
  v17 = v11;
  dispatch_async(&_dispatch_main_q, block);
}

- (void)promptForSmartcardWithContext:(id)a3
{
  WeakRetained = objc_loadWeakRetained(&self->_usernameTextField);
  [WeakRetained resignFirstResponder];

  v5 = objc_loadWeakRetained(&self->_passwordTextField);
  [v5 resignFirstResponder];

  v6 = [(KerberosLoginViewController *)self loginButton];
  [v6 setEnabled:0];

  v7 = [(KerberosLoginViewController *)self optionsButton];
  [v7 setEnabled:1];

  v8 = [(KerberosLoginViewController *)self usernameTextField];
  [v8 setEnabled:0];

  v9 = [(KerberosLoginViewController *)self passwordTextField];
  [v9 setEnabled:0];

  v10 = [(KerberosLoginViewController *)self cancelButton];
  [v10 setEnabled:1];

  v13 = +[NSBundle mainBundle];
  v11 = [v13 localizedStringForKey:@"PLEASE_INSERT_SMARTCARD" value:&stru_100014860 table:0];
  v12 = [(KerberosLoginViewController *)self signInTitleLabel];
  [v12 setText:v11];
}

- (void)showAuthControllerForContext:(id)a3 completion:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = sub_100003F48();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
  {
    sub_10000B78C();
  }

  [(KerberosLoginViewController *)self enableUI];
  [(KerberosLoginViewController *)self prefillWithCredentialsFromContextIfPossible:v6];
  if ([v6 smartCardNeedsInsert])
  {
    [(KerberosLoginViewController *)self setPromptForSmartCard:1];
    [(KerberosLoginViewController *)self promptForSmartcardWithContext:v6];
  }

  if ([(KerberosLoginViewController *)self viewControllerIsShowing])
  {
    v9 = sub_100003F48();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEBUG))
    {
      sub_10000B7C0();
    }

    if (v7)
    {
      v7[2](v7, 1, 0);
    }
  }

  else
  {
    v10[0] = _NSConcreteStackBlock;
    v10[1] = 3221225472;
    v10[2] = sub_10000806C;
    v10[3] = &unk_1000146F0;
    v10[4] = self;
    v11 = v6;
    v12 = v7;
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

  v5 = [(KerberosLoginViewController *)self spinner];
  [v5 stopAnimating];
}

- (void)changeUIForCertIdentity
{
  v3 = [(KerberosLoginViewController *)self currentUIContext];
  v4 = [v3 pkinitPersistentRef];
  if (v4)
  {

LABEL_4:
    v8 = [(KerberosLoginViewController *)self currentUIContext];
    v9 = [v8 userPrincipalName];
    v10 = [(KerberosLoginViewController *)self usernameTextField];
    [v10 setText:v9];

    v11 = [(KerberosLoginViewController *)self usernameTextField];
    [v11 setEnabled:0];

    v12 = +[NSBundle mainBundle];
    v13 = [v12 localizedStringForKey:@"NO_IDENTITY_SELECTED_TEXT" value:&stru_100014860 table:0];
    v14 = [(KerberosLoginViewController *)self identityLabel];
    [v14 setText:v13];

    v15 = [(KerberosLoginViewController *)self identityLabel];
    [v15 setHidden:0];

    v16 = [(KerberosLoginViewController *)self identityButton];
    [v16 setHidden:0];

    v17 = [(KerberosLoginViewController *)self passwordTextField];
    [v17 setHidden:1];

    v18 = [(KerberosLoginViewController *)self passwordTextField];
    [v18 resignFirstResponder];
    goto LABEL_5;
  }

  v5 = [(KerberosLoginViewController *)self currentUIContext];
  v6 = [v5 extensionUserData];
  v7 = [v6 useSmartCard];

  if (v7)
  {
    goto LABEL_4;
  }

  v19 = [(KerberosLoginViewController *)self currentUIContext];
  v20 = [v19 userNameIsReadOnly];

  v21 = [(KerberosLoginViewController *)self usernameTextField];
  [v21 setEnabled:v20 ^ 1];

  v22 = [(KerberosLoginViewController *)self passwordTextField];
  [v22 setHidden:0];

  v23 = [(KerberosLoginViewController *)self identityLabel];
  [v23 setHidden:1];

  v18 = [(KerberosLoginViewController *)self identityButton];
  [v18 setHidden:1];
LABEL_5:

  [(KerberosLoginViewController *)self _updateLoginButtonState];
}

- (void)prefillWithCredentialsFromContextIfPossible:(id)a3
{
  v4 = a3;
  v5 = [(KerberosLoginViewController *)self currentUIContext];
  v6 = [v5 userName];
  v7 = v6 == 0;
  if (!v6)
  {
    goto LABEL_4;
  }

  v8 = v6;
  v9 = [(KerberosLoginViewController *)self usernameTextField];
  v10 = [v9 text];
  v11 = [v10 isEqualToString:&stru_100014860];

  if (v11)
  {
    v5 = [(KerberosLoginViewController *)self currentUIContext];
    v12 = [v5 userName];
    v13 = [(KerberosLoginViewController *)self usernameTextField];
    [v13 setText:v12];

LABEL_4:
    goto LABEL_6;
  }

  v7 = 1;
LABEL_6:
  v14 = [(KerberosLoginViewController *)self usernameTextField];
  [v14 setEnabled:v7];

  p_usernameTextField = &self->_usernameTextField;
  WeakRetained = objc_loadWeakRetained(&self->_usernameTextField);
  v17 = [WeakRetained text];
  v18 = [v17 length];

  if (v18)
  {
    p_usernameTextField = &self->_passwordTextField;
  }

  v19 = objc_loadWeakRetained(p_usernameTextField);
  [v19 becomeFirstResponder];

  LODWORD(v19) = [v4 userNameIsReadOnly];
  if (v19)
  {
    v20 = [(KerberosLoginViewController *)self usernameTextField];
    [v20 setEnabled:0];
  }

  [(KerberosLoginViewController *)self changeUIForCertIdentity];
}

- (void)prefillWithCredentialsFromKeychainIfPossible
{
  v3 = objc_alloc_init(LAContext);
  v4 = [(KerberosLoginViewController *)self currentUIContext];
  [v4 setKeychainLAContext:v3];

  v5 = [(KerberosLoginViewController *)self currentUIContext];
  v6 = [v5 keychainLAContext];
  [v6 setOptionCallerName:@"Kerberos"];

  v7 = [(KerberosLoginViewController *)self keychainHelper];
  v8 = [(KerberosLoginViewController *)self currentUIContext];
  v9 = [v8 keychainLAContext];
  v10 = [(KerberosLoginViewController *)self currentUIContext];
  v11 = [v10 serviceName];
  v25 = 0;
  v26 = 0;
  v12 = [v7 retrieveCredentialsFromKeychainWithContext:v9 service:v11 returnedUsername:&v26 returnedPassword:&v25];
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
    v18 = [(KerberosLoginViewController *)self loginButton];
    v19 = [v18 isEnabled];

    if (v19)
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
  v3 = [(KerberosLoginViewController *)self _formIsValid];
  if (v3)
  {
    v4 = sub_100003F48();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      *v6 = 0;
      _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "Submitted login request via accessibility gesture", v6, 2u);
    }

    [(KerberosLoginViewController *)self loginClicked:0];
  }

  return v3;
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

- (BOOL)textFieldShouldReturn:(id)a3
{
  v4 = a3;
  WeakRetained = objc_loadWeakRetained(&self->_usernameTextField);

  v6 = objc_loadWeakRetained(&self->_passwordTextField);
  v7 = v6;
  if (WeakRetained == v4)
  {
    [v6 becomeFirstResponder];
  }

  else
  {

    if (v7 == v4 && [(KerberosLoginViewController *)self _formIsValid])
    {
      [(KerberosLoginViewController *)self loginClicked:self];
    }
  }

  return 1;
}

- (void)_updateLoginButtonState
{
  v3 = [(KerberosLoginViewController *)self _formIsValid];
  loginButton = self->_loginButton;

  [(UIButton *)loginButton setEnabled:v3];
}

- (BOOL)_formIsValid
{
  WeakRetained = objc_loadWeakRetained(&self->_usernameTextField);
  v4 = [WeakRetained text];
  v5 = [v4 length];

  v6 = objc_loadWeakRetained(&self->_passwordTextField);
  v7 = [v6 text];
  v8 = [v7 length];

  if (!v5)
  {
    return 0;
  }

  if (v8)
  {
    return 1;
  }

  v10 = [(KerberosLoginViewController *)self currentUIContext];
  v11 = [v10 pkinitPersistentRef];
  v9 = v11 != 0;

  return v9;
}

- (void)didClose
{
  v3 = [(KerberosLoginViewController *)self passwordViewController];
  v4[0] = _NSConcreteStackBlock;
  v4[1] = 3221225472;
  v4[2] = sub_100008D50;
  v4[3] = &unk_100014358;
  v4[4] = self;
  [v3 dismissViewControllerAnimated:1 completion:v4];

  if ([(KerberosLoginViewController *)self _formIsValid])
  {
    [(KerberosLoginViewController *)self performSelectorOnMainThread:"loginClicked:" withObject:0 waitUntilDone:0];
  }
}

- (void)didChangePassword
{
  v3 = [(KerberosLoginViewController *)self currentUIContext];
  v4 = [v3 password];
  v5 = [(KerberosLoginViewController *)self passwordTextField];
  [v5 setText:v4];

  v6 = [(KerberosLoginViewController *)self currentUIContext];
  v7 = [v6 userName];
  v8 = [(KerberosLoginViewController *)self usernameTextField];
  [v8 setText:v7];

  v9 = [(KerberosLoginViewController *)self _formIsValid];
  loginButton = self->_loginButton;

  [(UIButton *)loginButton setEnabled:v9];
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