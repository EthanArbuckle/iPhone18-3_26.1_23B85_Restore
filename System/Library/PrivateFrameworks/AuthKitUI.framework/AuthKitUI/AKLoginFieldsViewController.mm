@interface AKLoginFieldsViewController
- (AKAppleIDAuthenticationContext)context;
- (AKLoginFieldsDelegate)delegate;
- (AKLoginFieldsViewController)initWithContext:(id)context;
- (BOOL)textField:(id)field shouldChangeCharactersInRange:(_NSRange)range replacementString:(id)string;
- (BOOL)textFieldShouldReturn:(id)return;
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

- (AKLoginFieldsViewController)initWithContext:(id)context
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, context);
  v3 = selfCopy;
  selfCopy = 0;
  v6.receiver = v3;
  v6.super_class = AKLoginFieldsViewController;
  selfCopy = [(AKLoginFieldsViewController *)&v6 init];
  objc_storeStrong(&selfCopy, selfCopy);
  if (selfCopy)
  {
    objc_storeWeak(&selfCopy->_context, location[0]);
  }

  v5 = MEMORY[0x277D82BE0](selfCopy);
  objc_storeStrong(location, 0);
  objc_storeStrong(&selfCopy, 0);
  return v5;
}

- (void)viewDidLoad
{
  selfCopy = self;
  v3 = a2;
  v2.receiver = self;
  v2.super_class = AKLoginFieldsViewController;
  [(AKLoginFieldsViewController *)&v2 viewDidLoad];
  [(AKLoginFieldsViewController *)selfCopy _prepareUsernameField];
  [(AKLoginFieldsViewController *)selfCopy _preparePasswordField];
}

- (id)usernameText
{
  usernameField = [(AKLoginFieldsViewController *)self usernameField];
  text = [(UITextField *)usernameField text];
  MEMORY[0x277D82BD8](usernameField);

  return text;
}

- (id)passwordText
{
  passwordField = [(AKLoginFieldsViewController *)self passwordField];
  v7 = 0;
  v5 = 0;
  if (([(UITextField *)passwordField isHidden]& 1) != 0)
  {
    v2 = MEMORY[0x277D82BE0](0);
  }

  else
  {
    passwordField2 = [(AKLoginFieldsViewController *)self passwordField];
    v7 = 1;
    text = [(UITextField *)passwordField2 text];
    v5 = 1;
    v2 = MEMORY[0x277D82BE0](text);
  }

  v10 = v2;
  if (v5)
  {
    MEMORY[0x277D82BD8](text);
  }

  if (v7)
  {
    MEMORY[0x277D82BD8](passwordField2);
  }

  MEMORY[0x277D82BD8](passwordField);

  return v10;
}

- (void)showPasswordField
{
  passwordField = [(AKLoginFieldsViewController *)self passwordField];
  [(UITextField *)passwordField setHidden:0];
  passwordField2 = [(AKLoginFieldsViewController *)self passwordField];
  [(UITextField *)passwordField2 becomeFirstResponder];
  MEMORY[0x277D82BD8](passwordField2);
}

- (BOOL)textFieldShouldReturn:(id)return
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, return);
  delegate = [(AKLoginFieldsViewController *)selfCopy delegate];
  [(AKLoginFieldsDelegate *)delegate loginFieldsDidReturn:selfCopy];
  MEMORY[0x277D82BD8](delegate);
  objc_storeStrong(location, 0);
  return 1;
}

- (BOOL)textField:(id)field shouldChangeCharactersInRange:(_NSRange)range replacementString:(id)string
{
  rangeCopy = range;
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, field);
  v19 = 0;
  objc_storeStrong(&v19, string);
  v12 = location[0];
  usernameField = [(AKLoginFieldsViewController *)selfCopy usernameField];
  v14 = [v12 isEqual:?];
  *&v5 = MEMORY[0x277D82BD8](usernameField).n128_u64[0];
  if (v14)
  {
    context = [(AKLoginFieldsViewController *)selfCopy context];
    username = [context username];
    *&v6 = MEMORY[0x277D82BD8](username).n128_u64[0];
    if (username)
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
      [context setUsername:0];
    }

    [(AKLoginFieldsViewController *)selfCopy _hidePasswordIfNeeded];
    objc_storeStrong(&context, 0);
  }

  objc_storeStrong(&v19, 0);
  objc_storeStrong(location, 0);
  return 1;
}

- (void)_prepareUsernameField
{
  selfCopy = self;
  v15[1] = a2;
  usernameField = [(AKLoginFieldsViewController *)self usernameField];
  [(UITextField *)usernameField setAutocapitalizationType:0];
  usernameField2 = [(AKLoginFieldsViewController *)selfCopy usernameField];
  [(UITextField *)usernameField2 setKeyboardType:7];
  usernameField3 = [(AKLoginFieldsViewController *)selfCopy usernameField];
  [(UITextField *)usernameField3 setTextContentType:*MEMORY[0x277D77090]];
  usernameField4 = [(AKLoginFieldsViewController *)selfCopy usernameField];
  v11 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
  v10 = [v11 localizedStringForKey:@"EMAIL_OR_PHONE_PLACEHOLDER" value:&stru_28358EF68 table:@"Localizable"];
  [(UITextField *)usernameField4 setPlaceholder:?];
  MEMORY[0x277D82BD8](v10);
  MEMORY[0x277D82BD8](v11);
  v15[0] = [(AKLoginFieldsViewController *)selfCopy context];
  username = [v15[0] username];
  v14 = [username length];
  v2 = MEMORY[0x277D82BD8](username).n128_u64[0];
  if (v14)
  {
    username2 = [v15[0] username];
    usernameField5 = [(AKLoginFieldsViewController *)selfCopy usernameField];
    [(UITextField *)usernameField5 setText:username2];
    MEMORY[0x277D82BD8](usernameField5);
    v2 = MEMORY[0x277D82BD8](username2).n128_u64[0];
  }

  v3 = [v15[0] isUsernameEditable] == 0;
  usernameField6 = [(AKLoginFieldsViewController *)selfCopy usernameField];
  [(UITextField *)usernameField6 setHidden:v3];
  MEMORY[0x277D82BD8](usernameField6);
  objc_storeStrong(v15, 0);
}

- (void)_preparePasswordField
{
  passwordField = [(AKLoginFieldsViewController *)self passwordField];
  [(UITextField *)passwordField setSecureTextEntry:1];
  passwordField2 = [(AKLoginFieldsViewController *)self passwordField];
  v4 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
  v3 = [v4 localizedStringForKey:@"PASSWORD_ALERT_PLACEHOLDER" value:&stru_28358EF68 table:@"Localizable"];
  [(UITextField *)passwordField2 setPlaceholder:?];
  MEMORY[0x277D82BD8](v3);
  MEMORY[0x277D82BD8](v4);
  MEMORY[0x277D82BD8](passwordField2);
}

- (void)_hidePasswordIfNeeded
{
  passwordField = [(AKLoginFieldsViewController *)self passwordField];
  isHidden = [(UITextField *)passwordField isHidden];
  *&v2 = MEMORY[0x277D82BD8](passwordField).n128_u64[0];
  if (!isHidden)
  {
    passwordField2 = [(AKLoginFieldsViewController *)self passwordField];
    [(UITextField *)passwordField2 setHidden:1];
    passwordField3 = [(AKLoginFieldsViewController *)self passwordField];
    [(UITextField *)passwordField3 setText:0];
    delegate = [(AKLoginFieldsViewController *)self delegate];
    [(AKLoginFieldsDelegate *)delegate passwordFieldDidHide:self];
    usernameField = [(AKLoginFieldsViewController *)self usernameField];
    [(UITextField *)usernameField becomeFirstResponder];
    MEMORY[0x277D82BD8](usernameField);
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