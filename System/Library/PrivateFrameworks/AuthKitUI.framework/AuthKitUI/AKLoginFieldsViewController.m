@interface AKLoginFieldsViewController
- (AKAppleIDAuthenticationContext)context;
- (AKLoginFieldsDelegate)delegate;
- (AKLoginFieldsViewController)initWithContext:(id)a3;
- (BOOL)textField:(id)a3 shouldChangeCharactersInRange:(_NSRange)a4 replacementString:(id)a5;
- (BOOL)textFieldShouldReturn:(id)a3;
- (UITextField)passwordField;
- (UITextField)usernameField;
- (id)passwordText;
- (id)usernameText;
- (void)_hidePasswordIfNeeded;
- (void)_preparePasswordField;
- (void)_prepareUsernameField;
- (void)showPasswordField;
- (void)viewDidLoad;
@end

@implementation AKLoginFieldsViewController

- (AKLoginFieldsViewController)initWithContext:(id)a3
{
  v8 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  v3 = v8;
  v8 = 0;
  v6.receiver = v3;
  v6.super_class = AKLoginFieldsViewController;
  v8 = [(AKLoginFieldsViewController *)&v6 init];
  objc_storeStrong(&v8, v8);
  if (v8)
  {
    objc_storeWeak(&v8->_context, location[0]);
  }

  v5 = MEMORY[0x277D82BE0](v8);
  objc_storeStrong(location, 0);
  objc_storeStrong(&v8, 0);
  return v5;
}

- (void)viewDidLoad
{
  v4 = self;
  v3 = a2;
  v2.receiver = self;
  v2.super_class = AKLoginFieldsViewController;
  [(AKLoginFieldsViewController *)&v2 viewDidLoad];
  [(AKLoginFieldsViewController *)v4 _prepareUsernameField];
  [(AKLoginFieldsViewController *)v4 _preparePasswordField];
}

- (id)usernameText
{
  v3 = [(AKLoginFieldsViewController *)self usernameField];
  v4 = [(UITextField *)v3 text];
  MEMORY[0x277D82BD8](v3);

  return v4;
}

- (id)passwordText
{
  v4 = [(AKLoginFieldsViewController *)self passwordField];
  v7 = 0;
  v5 = 0;
  if (([(UITextField *)v4 isHidden]& 1) != 0)
  {
    v2 = MEMORY[0x277D82BE0](0);
  }

  else
  {
    v8 = [(AKLoginFieldsViewController *)self passwordField];
    v7 = 1;
    v6 = [(UITextField *)v8 text];
    v5 = 1;
    v2 = MEMORY[0x277D82BE0](v6);
  }

  v10 = v2;
  if (v5)
  {
    MEMORY[0x277D82BD8](v6);
  }

  if (v7)
  {
    MEMORY[0x277D82BD8](v8);
  }

  MEMORY[0x277D82BD8](v4);

  return v10;
}

- (void)showPasswordField
{
  v2 = [(AKLoginFieldsViewController *)self passwordField];
  [(UITextField *)v2 setHidden:0];
  v3 = [(AKLoginFieldsViewController *)self passwordField];
  [(UITextField *)v3 becomeFirstResponder];
  MEMORY[0x277D82BD8](v3);
}

- (BOOL)textFieldShouldReturn:(id)a3
{
  v6 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  v4 = [(AKLoginFieldsViewController *)v6 delegate];
  [(AKLoginFieldsDelegate *)v4 loginFieldsDidReturn:v6];
  MEMORY[0x277D82BD8](v4);
  objc_storeStrong(location, 0);
  return 1;
}

- (BOOL)textField:(id)a3 shouldChangeCharactersInRange:(_NSRange)a4 replacementString:(id)a5
{
  v22 = a4;
  v21 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  v19 = 0;
  objc_storeStrong(&v19, a5);
  v12 = location[0];
  v13 = [(AKLoginFieldsViewController *)v21 usernameField];
  v14 = [v12 isEqual:?];
  *&v5 = MEMORY[0x277D82BD8](v13).n128_u64[0];
  if (v14)
  {
    v18 = [(AKLoginFieldsViewController *)v21 context];
    v10 = [v18 username];
    *&v6 = MEMORY[0x277D82BD8](v10).n128_u64[0];
    if (v10)
    {
      v17 = _AKLogSystem();
      v16 = OS_LOG_TYPE_DEFAULT;
      if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
      {
        log = v17;
        type = v16;
        __os_log_helper_16_0_0(v15);
        _os_log_impl(&dword_222379000, log, type, "Username is changing", v15, 2u);
      }

      objc_storeStrong(&v17, 0);
      [v18 setUsername:0];
    }

    [(AKLoginFieldsViewController *)v21 _hidePasswordIfNeeded];
    objc_storeStrong(&v18, 0);
  }

  objc_storeStrong(&v19, 0);
  objc_storeStrong(location, 0);
  return 1;
}

- (void)_prepareUsernameField
{
  v16 = self;
  v15[1] = a2;
  v7 = [(AKLoginFieldsViewController *)self usernameField];
  [(UITextField *)v7 setAutocapitalizationType:0];
  v8 = [(AKLoginFieldsViewController *)v16 usernameField];
  [(UITextField *)v8 setKeyboardType:7];
  v9 = [(AKLoginFieldsViewController *)v16 usernameField];
  [(UITextField *)v9 setTextContentType:*MEMORY[0x277D77090]];
  v12 = [(AKLoginFieldsViewController *)v16 usernameField];
  v11 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
  v10 = [v11 localizedStringForKey:@"EMAIL_OR_PHONE_PLACEHOLDER" value:&stru_28358EF68 table:@"Localizable"];
  [(UITextField *)v12 setPlaceholder:?];
  MEMORY[0x277D82BD8](v10);
  MEMORY[0x277D82BD8](v11);
  v15[0] = [(AKLoginFieldsViewController *)v16 context];
  v13 = [v15[0] username];
  v14 = [v13 length];
  v2 = MEMORY[0x277D82BD8](v13).n128_u64[0];
  if (v14)
  {
    v6 = [v15[0] username];
    v5 = [(AKLoginFieldsViewController *)v16 usernameField];
    [(UITextField *)v5 setText:v6];
    MEMORY[0x277D82BD8](v5);
    v2 = MEMORY[0x277D82BD8](v6).n128_u64[0];
  }

  v3 = [v15[0] isUsernameEditable] == 0;
  v4 = [(AKLoginFieldsViewController *)v16 usernameField];
  [(UITextField *)v4 setHidden:v3];
  MEMORY[0x277D82BD8](v4);
  objc_storeStrong(v15, 0);
}

- (void)_preparePasswordField
{
  v2 = [(AKLoginFieldsViewController *)self passwordField];
  [(UITextField *)v2 setSecureTextEntry:1];
  v5 = [(AKLoginFieldsViewController *)self passwordField];
  v4 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
  v3 = [v4 localizedStringForKey:@"PASSWORD_ALERT_PLACEHOLDER" value:&stru_28358EF68 table:@"Localizable"];
  [(UITextField *)v5 setPlaceholder:?];
  MEMORY[0x277D82BD8](v3);
  MEMORY[0x277D82BD8](v4);
  MEMORY[0x277D82BD8](v5);
}

- (void)_hidePasswordIfNeeded
{
  v7 = [(AKLoginFieldsViewController *)self passwordField];
  v8 = [(UITextField *)v7 isHidden];
  *&v2 = MEMORY[0x277D82BD8](v7).n128_u64[0];
  if (!v8)
  {
    v3 = [(AKLoginFieldsViewController *)self passwordField];
    [(UITextField *)v3 setHidden:1];
    v4 = [(AKLoginFieldsViewController *)self passwordField];
    [(UITextField *)v4 setText:0];
    v5 = [(AKLoginFieldsViewController *)self delegate];
    [(AKLoginFieldsDelegate *)v5 passwordFieldDidHide:self];
    v6 = [(AKLoginFieldsViewController *)self usernameField];
    [(UITextField *)v6 becomeFirstResponder];
    MEMORY[0x277D82BD8](v6);
  }
}

- (AKLoginFieldsDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

- (AKAppleIDAuthenticationContext)context
{
  WeakRetained = objc_loadWeakRetained(&self->_context);

  return WeakRetained;
}

- (UITextField)usernameField
{
  WeakRetained = objc_loadWeakRetained(&self->_usernameField);

  return WeakRetained;
}

- (UITextField)passwordField
{
  WeakRetained = objc_loadWeakRetained(&self->_passwordField);

  return WeakRetained;
}

@end