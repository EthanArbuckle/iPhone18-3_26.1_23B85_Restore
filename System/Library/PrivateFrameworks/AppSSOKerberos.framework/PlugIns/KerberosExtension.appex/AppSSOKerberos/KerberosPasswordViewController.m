@interface KerberosPasswordViewController
- (BOOL)_hasFilledRequiredFormFields;
- (BOOL)_hasVerifiedNewPassword;
- (BOOL)accessibilityPerformEscape;
- (BOOL)accessibilityPerformMagicTap;
- (BOOL)textFieldShouldReturn:(id)a3;
- (KerberosPasswordChangeViewControllerDelegate)delegate;
- (KerberosPasswordViewController)initWithCoder:(id)a3;
- (KerberosPasswordViewController)initWithNibName:(id)a3 bundle:(id)a4;
- (NSLayoutConstraint)bottomConstraint;
- (UIBarButtonItem)cancelButton;
- (UILabel)realmLabel;
- (UINavigationBar)navigationBar;
- (UINavigationItem)navigationItem;
- (UITextField)changedPasswordAgainTextField;
- (UITextField)changedPasswordTextField;
- (UITextField)passwordTextField;
- (UITextField)usernameTextField;
- (UIView)containerView;
- (UIView)separator1;
- (UIView)separator2;
- (void)_disableUI;
- (void)_enableUI;
- (void)_showMessage:(id)a3 completionHandler:(id)a4;
- (void)cancelClicked:(id)a3;
- (void)cancelCurrentOperation;
- (void)changeADPassword;
- (void)changeFocusedElementForAccessibilityIfNeeded;
- (void)changePasswordClicked;
- (void)handleKerberosOperation:(id)a3 withMessage:(id)a4;
- (void)keyboardWillChangeFrame:(id)a3;
- (void)keyboardWillHide:(id)a3;
- (void)textFieldDidChange:(id)a3;
- (void)viewDidLoad;
@end

@implementation KerberosPasswordViewController

- (KerberosPasswordViewController)initWithNibName:(id)a3 bundle:(id)a4
{
  v5.receiver = self;
  v5.super_class = KerberosPasswordViewController;
  result = [(KerberosPasswordViewController *)&v5 initWithNibName:a3 bundle:a4];
  if (result)
  {
    result->_shouldChangeFocusedElementForAccessibility = 1;
  }

  return result;
}

- (KerberosPasswordViewController)initWithCoder:(id)a3
{
  v4.receiver = self;
  v4.super_class = KerberosPasswordViewController;
  result = [(KerberosPasswordViewController *)&v4 initWithCoder:a3];
  if (result)
  {
    result->_shouldChangeFocusedElementForAccessibility = 1;
  }

  return result;
}

- (void)viewDidLoad
{
  v35.receiver = self;
  v35.super_class = KerberosPasswordViewController;
  [(KerberosPasswordViewController *)&v35 viewDidLoad];
  v3 = sub_100001624();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEBUG))
  {
    sub_10000B170();
  }

  v4 = [(KerberosPasswordViewController *)self changePasswordButton];
  v5 = [v4 layer];
  [v5 setCornerRadius:10.0];

  v6 = [(KerberosPasswordViewController *)self userNamePasswordView];
  v7 = [v6 layer];
  [v7 setCornerRadius:10.0];

  v8 = +[UIColor secondarySystemBackgroundColor];
  WeakRetained = objc_loadWeakRetained(&self->_separator1);
  [WeakRetained setBackgroundColor:v8];

  v10 = +[UIColor secondarySystemBackgroundColor];
  v11 = objc_loadWeakRetained(&self->_separator2);
  [v11 setBackgroundColor:v10];

  v12 = objc_alloc_init(UILabel);
  [v12 setText:@"Change Password"];
  [v12 setTextAlignment:0];
  [v12 setTranslatesAutoresizingMaskIntoConstraints:0];
  v13 = [UIFont preferredFontForTextStyle:UIFontTextStyleTitle2];
  [v12 setFont:v13];

  [v12 setAdjustsFontForContentSizeCategory:1];
  v14 = [[UIBarButtonItem alloc] initWithCustomView:v12];
  v15 = [(KerberosPasswordViewController *)self navigationItem];
  [v15 setLeftBarButtonItem:v14];

  v16 = objc_loadWeakRetained(&self->_usernameTextField);
  [v16 setDelegate:self];

  v17 = objc_loadWeakRetained(&self->_passwordTextField);
  [v17 setDelegate:self];

  v18 = objc_loadWeakRetained(&self->_changedPasswordTextField);
  [v18 setDelegate:self];

  v19 = objc_loadWeakRetained(&self->_changedPasswordAgainTextField);
  [v19 setDelegate:self];

  v20 = objc_loadWeakRetained(&self->_usernameTextField);
  [v20 addTarget:self action:"textFieldDidChange:" forControlEvents:0x20000];

  v21 = objc_loadWeakRetained(&self->_passwordTextField);
  [v21 addTarget:self action:"textFieldDidChange:" forControlEvents:0x20000];

  v22 = objc_loadWeakRetained(&self->_changedPasswordTextField);
  [v22 addTarget:self action:"textFieldDidChange:" forControlEvents:0x20000];

  v23 = objc_loadWeakRetained(&self->_changedPasswordAgainTextField);
  [v23 addTarget:self action:"textFieldDidChange:" forControlEvents:0x20000];

  v24 = objc_loadWeakRetained(&self->_usernameTextField);
  [v24 setTextContentType:UITextContentTypeUsername];

  v25 = objc_loadWeakRetained(&self->_passwordTextField);
  [v25 setTextContentType:UITextContentTypePassword];

  v26 = objc_loadWeakRetained(&self->_changedPasswordTextField);
  [v26 setTextContentType:UITextContentTypeNewPassword];

  v27 = objc_loadWeakRetained(&self->_changedPasswordAgainTextField);
  [v27 setTextContentType:UITextContentTypeNewPassword];

  v28 = [(KerberosPasswordViewController *)self containerView];
  [v28 setClipsToBounds:1];

  v29 = [(KerberosPasswordViewController *)self containerView];
  v30 = [v29 layer];
  [v30 setCornerRadius:10.0];

  v31 = [(KerberosPasswordViewController *)self containerView];
  v32 = [v31 layer];
  [v32 setMaskedCorners:3];

  v33 = +[NSNotificationCenter defaultCenter];
  [v33 addObserver:self selector:"keyboardWillChangeFrame:" name:UIKeyboardWillChangeFrameNotification object:0];

  v34 = +[NSNotificationCenter defaultCenter];
  [v34 addObserver:self selector:"keyboardWillHide:" name:UIKeyboardWillHideNotification object:0];
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
  v19[2] = sub_100001A74;
  v19[3] = &unk_1000143C0;
  v19[4] = self;
  v19[5] = v7;
  v19[6] = v9;
  v19[7] = v11;
  v19[8] = v13;
  [UIView animateWithDuration:v18 delay:v19 options:&stru_1000143E0 animations:v16 completion:0.0];
}

- (void)keyboardWillHide:(id)a3
{
  v4 = [a3 userInfo];
  v5 = [v4 objectForKey:UIKeyboardAnimationDurationUserInfoKey];
  [v5 doubleValue];
  v7 = v6;

  v8 = [v4 objectForKey:UIKeyboardAnimationCurveUserInfoKey];
  v9 = [v8 unsignedIntegerValue];

  v10[0] = _NSConcreteStackBlock;
  v10[1] = 3221225472;
  v10[2] = sub_100001BFC;
  v10[3] = &unk_100014358;
  v10[4] = self;
  [UIView animateWithDuration:v9 delay:v10 options:&stru_100014400 animations:v7 completion:0.0];
}

- (void)changePasswordClicked
{
  v3 = sub_100001624();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEBUG))
  {
    sub_10000B1B8();
  }

  if ([(KerberosPasswordViewController *)self _formIsValid])
  {
    v4 = sub_100001624();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEBUG))
    {
      sub_10000B220();
    }

    v5 = [(KerberosPasswordViewController *)self usernameTextField];
    v6 = [v5 text];
    v7 = [(KerberosPasswordViewController *)self currentUIContext];
    [v7 setUserName:v6];

    v8 = [(KerberosPasswordViewController *)self passwordTextField];
    v9 = [v8 text];
    v10 = [(KerberosPasswordViewController *)self currentUIContext];
    [v10 setPassword:v9];

    v11 = [(KerberosPasswordViewController *)self changedPasswordTextField];
    v12 = [v11 text];
    v13 = [(KerberosPasswordViewController *)self currentUIContext];
    [v13 setChangedPassword:v12];

    [(KerberosPasswordViewController *)self changeADPassword];
  }

  else if (![(KerberosPasswordViewController *)self _hasVerifiedNewPassword])
  {
    [(KerberosPasswordViewController *)self _disableUI];
    v14 = +[NSBundle mainBundle];
    v15 = [v14 localizedStringForKey:@"PASSWORD_CHANGE_PASSWORD_MATCH_ALERT_TEXT" value:&stru_100014860 table:0];
    v17[0] = _NSConcreteStackBlock;
    v17[1] = 3221225472;
    v17[2] = sub_100001E98;
    v17[3] = &unk_100014358;
    v17[4] = self;
    [(KerberosPasswordViewController *)self _showMessage:v15 completionHandler:v17];

    v16 = sub_100001624();
    if (os_log_type_enabled(v16, OS_LOG_TYPE_DEBUG))
    {
      sub_10000B1EC();
    }
  }
}

- (void)cancelClicked:(id)a3
{
  v4 = sub_100001624();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEBUG))
  {
    sub_10000B254();
  }

  v5 = [(KerberosPasswordViewController *)self delegate];
  v6 = objc_opt_respondsToSelector();

  if (v6)
  {
    v7 = [(KerberosPasswordViewController *)self delegate];
    [v7 didClose];
  }

  else
  {
    v8 = [(KerberosPasswordViewController *)self presentingViewController];
    v9[0] = _NSConcreteStackBlock;
    v9[1] = 3221225472;
    v9[2] = sub_100001FA4;
    v9[3] = &unk_100014358;
    v9[4] = self;
    [v8 dismissViewControllerAnimated:1 completion:v9];
  }
}

- (void)_disableUI
{
  v3 = [(KerberosPasswordViewController *)self changePasswordButton];
  [v3 setEnabled:0];

  v4 = [(KerberosPasswordViewController *)self cancelButton];
  [v4 setEnabled:0];

  v5 = [(KerberosPasswordViewController *)self cancelButton];
  [v5 setIsAccessibilityElement:0];

  v6 = [(KerberosPasswordViewController *)self usernameTextField];
  [v6 setEnabled:0];

  v7 = [(KerberosPasswordViewController *)self passwordTextField];
  [v7 setEnabled:0];

  v8 = [(KerberosPasswordViewController *)self changedPasswordTextField];
  [v8 setEnabled:0];

  v9 = [(KerberosPasswordViewController *)self changedPasswordAgainTextField];
  [v9 setEnabled:0];

  v10 = [(KerberosPasswordViewController *)self spinner];
  [v10 startAnimating];

  [(KerberosPasswordViewController *)self changeFocusedElementForAccessibilityIfNeeded];
}

- (void)_enableUI
{
  v3 = [(KerberosPasswordViewController *)self _hasFilledRequiredFormFields];
  v4 = [(KerberosPasswordViewController *)self changePasswordButton];
  [v4 setEnabled:v3];

  v5 = [(KerberosPasswordViewController *)self cancelButton];
  [v5 setEnabled:1];

  v6 = [(KerberosPasswordViewController *)self cancelButton];
  [v6 setIsAccessibilityElement:1];

  v7 = [(KerberosPasswordViewController *)self currentUIContext];
  LODWORD(v4) = [v7 userNameIsReadOnly];
  v8 = [(KerberosPasswordViewController *)self usernameTextField];
  [v8 setEnabled:v4 ^ 1];

  v9 = [(KerberosPasswordViewController *)self passwordTextField];
  [v9 setEnabled:1];

  v10 = [(KerberosPasswordViewController *)self changedPasswordTextField];
  [v10 setEnabled:1];

  v11 = [(KerberosPasswordViewController *)self changedPasswordAgainTextField];
  [v11 setEnabled:1];

  v12 = [(KerberosPasswordViewController *)self spinner];
  [v12 stopAnimating];
}

- (void)cancelCurrentOperation
{
  v2 = [(KerberosPasswordViewController *)self currentUIContext];
  [v2 cancelRequest];
}

- (void)handleKerberosOperation:(id)a3 withMessage:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = sub_100001624();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
  {
    sub_10000B288(v6, v7, v8);
  }

  v10[0] = _NSConcreteStackBlock;
  v10[1] = 3221225472;
  v10[2] = sub_100002360;
  v10[3] = &unk_100014450;
  v10[4] = self;
  v11 = v6;
  v9 = v6;
  [v9 presentAuthorizationViewControllerWithCompletion:v10];
}

- (void)changeADPassword
{
  v3 = sub_100001624();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEBUG))
  {
    sub_10000B310();
  }

  [(KerberosPasswordViewController *)self _disableUI];
  v4 = dispatch_get_global_queue(0, 0);
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1000025C8;
  block[3] = &unk_100014358;
  block[4] = self;
  dispatch_async(v4, block);
}

- (void)_showMessage:(id)a3 completionHandler:(id)a4
{
  v6 = a4;
  v7 = a3;
  v8 = +[NSBundle mainBundle];
  v9 = [v8 localizedStringForKey:@"CHANGE_PASSWORD_ERROR" value:&stru_100014860 table:0];
  v10 = [UIAlertController alertControllerWithTitle:v9 message:v7 preferredStyle:1];

  v11 = +[NSBundle mainBundle];
  v12 = [v11 localizedStringForKey:@"OK_TEXT" value:&stru_100014860 table:0];
  v16[0] = _NSConcreteStackBlock;
  v16[1] = 3221225472;
  v16[2] = sub_100002D24;
  v16[3] = &unk_100014478;
  v16[4] = self;
  v17 = v6;
  v13 = v6;
  v14 = [UIAlertAction actionWithTitle:v12 style:0 handler:v16];
  [v10 addAction:v14];

  v15[0] = _NSConcreteStackBlock;
  v15[1] = 3221225472;
  v15[2] = sub_100002D6C;
  v15[3] = &unk_100014358;
  v15[4] = self;
  [(KerberosPasswordViewController *)self presentViewController:v10 animated:1 completion:v15];
}

- (void)textFieldDidChange:(id)a3
{
  v4 = [(KerberosPasswordViewController *)self _hasFilledRequiredFormFields];
  changePasswordButton = self->_changePasswordButton;

  [(UIButton *)changePasswordButton setEnabled:v4];
}

- (BOOL)textFieldShouldReturn:(id)a3
{
  v4 = a3;
  WeakRetained = objc_loadWeakRetained(&self->_usernameTextField);

  v6 = objc_loadWeakRetained(&self->_passwordTextField);
  v7 = v6;
  if (WeakRetained == v4)
  {
    goto LABEL_7;
  }

  v8 = objc_loadWeakRetained(&self->_changedPasswordTextField);
  v9 = v8;
  if (v7 == v4)
  {
    [v8 becomeFirstResponder];

    goto LABEL_9;
  }

  v10 = objc_loadWeakRetained(&self->_changedPasswordAgainTextField);
  v7 = v10;
  if (v9 == v4)
  {
LABEL_7:
    [v7 becomeFirstResponder];
  }

  else
  {

    if (v7 == v4 && [(KerberosPasswordViewController *)self _hasFilledRequiredFormFields])
    {
      [(KerberosPasswordViewController *)self changePasswordClicked];
    }
  }

LABEL_9:

  return 1;
}

- (BOOL)accessibilityPerformEscape
{
  v3 = sub_100001624();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *v5 = 0;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "cancelled via accessibility gesture", v5, 2u);
  }

  [(KerberosPasswordViewController *)self cancelClicked:0];
  return 1;
}

- (BOOL)accessibilityPerformMagicTap
{
  v3 = [(KerberosPasswordViewController *)self _hasFilledRequiredFormFields];
  if (v3)
  {
    v4 = sub_100001624();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      *v6 = 0;
      _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "Submitted password change request via accessibility gesture", v6, 2u);
    }

    [(KerberosPasswordViewController *)self changePasswordClicked:0];
  }

  return v3;
}

- (void)changeFocusedElementForAccessibilityIfNeeded
{
  v3 = dispatch_time(0, 500000000);
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100003040;
  block[3] = &unk_100014358;
  block[4] = self;
  dispatch_after(v3, &_dispatch_main_q, block);
}

- (BOOL)_hasFilledRequiredFormFields
{
  WeakRetained = objc_loadWeakRetained(&self->_usernameTextField);
  v4 = [WeakRetained text];
  v5 = [v4 length];

  v6 = objc_loadWeakRetained(&self->_passwordTextField);
  v7 = [v6 text];
  v8 = [v7 length];

  v9 = objc_loadWeakRetained(&self->_changedPasswordTextField);
  v10 = [v9 text];
  v11 = [v10 length];

  v12 = objc_loadWeakRetained(&self->_changedPasswordAgainTextField);
  v13 = [v12 text];
  v14 = [v13 length];

  result = 0;
  if (v5 && v8)
  {
    if (v11)
    {
      v16 = v14 == 0;
    }

    else
    {
      v16 = 1;
    }

    return !v16;
  }

  return result;
}

- (BOOL)_hasVerifiedNewPassword
{
  v3 = [(KerberosPasswordViewController *)self changedPasswordTextField];
  v4 = [v3 text];
  v5 = [(KerberosPasswordViewController *)self changedPasswordAgainTextField];
  v6 = [v5 text];
  v7 = [v4 isEqualToString:v6];

  return v7;
}

- (KerberosPasswordChangeViewControllerDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

- (UIView)containerView
{
  WeakRetained = objc_loadWeakRetained(&self->_containerView);

  return WeakRetained;
}

- (UILabel)realmLabel
{
  WeakRetained = objc_loadWeakRetained(&self->_realmLabel);

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

- (UITextField)changedPasswordTextField
{
  WeakRetained = objc_loadWeakRetained(&self->_changedPasswordTextField);

  return WeakRetained;
}

- (UITextField)changedPasswordAgainTextField
{
  WeakRetained = objc_loadWeakRetained(&self->_changedPasswordAgainTextField);

  return WeakRetained;
}

- (UINavigationBar)navigationBar
{
  WeakRetained = objc_loadWeakRetained(&self->_navigationBar);

  return WeakRetained;
}

- (UIView)separator1
{
  WeakRetained = objc_loadWeakRetained(&self->_separator1);

  return WeakRetained;
}

- (UIView)separator2
{
  WeakRetained = objc_loadWeakRetained(&self->_separator2);

  return WeakRetained;
}

- (NSLayoutConstraint)bottomConstraint
{
  WeakRetained = objc_loadWeakRetained(&self->_bottomConstraint);

  return WeakRetained;
}

- (UINavigationItem)navigationItem
{
  WeakRetained = objc_loadWeakRetained(&self->_navigationItem);

  return WeakRetained;
}

- (UIBarButtonItem)cancelButton
{
  WeakRetained = objc_loadWeakRetained(&self->_cancelButton);

  return WeakRetained;
}

@end