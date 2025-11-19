@interface PasscodeEmbeddedCustomizableViewController
- (BOOL)isVerifyingPasscode;
- (BOOL)textField:(id)a3 shouldChangeCharactersInRange:(_NSRange)a4 replacementString:(id)a5;
- (BOOL)textFieldShouldReturn:(id)a3;
- (PasscodeEmbeddedCustomizableViewController)initWithPasscodeLength:(int64_t)a3 alphanumeric:(BOOL)a4;
- (PasscodeEmbeddedViewControllerDelegate)delegate;
- (id)alphanumericFieldPlaceholder;
- (void)_verifyTextField:(id)a3;
- (void)setIsVerifyingPasscode:(BOOL)a3;
@end

@implementation PasscodeEmbeddedCustomizableViewController

- (PasscodeEmbeddedCustomizableViewController)initWithPasscodeLength:(int64_t)a3 alphanumeric:(BOOL)a4
{
  v4 = a4;
  v11.receiver = self;
  v11.super_class = PasscodeEmbeddedCustomizableViewController;
  v6 = [(PasscodeEmbeddedCustomizableViewController *)&v11 init];
  v7 = v6;
  if (v6)
  {
    v6->_passcodeVerificationLock._os_unfair_lock_opaque = 0;
    if (a3 < 1)
    {
      v8 = -1;
    }

    else
    {
      v8 = a3;
    }

    v6->_passcodeLength = v8;
    if (v4)
    {
      v6->_hasAlphanumericPasscode = 1;
    }

    else if (a3 <= 0)
    {
      v9 = +[UIDevice currentDevice];
      v7->_hasAlphanumericPasscode = [v9 userInterfaceIdiom] != 1 || v7->_passcodeLength > 6;
    }

    else
    {
      v6->_hasAlphanumericPasscode = a3 > 6;
    }
  }

  return v7;
}

- (id)alphanumericFieldPlaceholder
{
  v4 = [NSAttributedString alloc];
  placeholderText = self->_placeholderText;
  v6 = placeholderText;
  if (!placeholderText)
  {
    v12.receiver = self;
    v12.super_class = PasscodeEmbeddedCustomizableViewController;
    v2 = [(PasscodeEmbeddedViewController *)&v12 alphanumericFieldPlaceholder];
    v6 = [v2 string];
  }

  v13[0] = NSParagraphStyleAttributeName;
  v7 = objc_alloc_init(NSMutableParagraphStyle);
  [v7 setAlignment:1];
  v14[0] = v7;
  v13[1] = NSFontAttributeName;
  v8 = [UIFont preferredFontForTextStyle:UIFontTextStyleBody];
  v14[1] = v8;
  v9 = [NSDictionary dictionaryWithObjects:v14 forKeys:v13 count:2];
  v10 = [v4 initWithString:v6 attributes:v9];

  if (!placeholderText)
  {
  }

  return v10;
}

- (BOOL)textField:(id)a3 shouldChangeCharactersInRange:(_NSRange)a4 replacementString:(id)a5
{
  length = a4.length;
  location = a4.location;
  v9 = a3;
  v10 = a5;
  v11 = [(PasscodeEmbeddedViewController *)self passcodeField];

  if (v11 != v9)
  {
    [NSException raise:NSInvalidArgumentException format:@"Received delegate message for invalid text field (%@)", v9];
    goto LABEL_10;
  }

  if ([(PasscodeEmbeddedViewController *)self animating])
  {
    goto LABEL_10;
  }

  v12 = [v9 text];
  v13 = [v12 length];
  if (v13 >= [(PasscodeEmbeddedCustomizableViewController *)self passcodeLength])
  {
    v14 = [(PasscodeEmbeddedCustomizableViewController *)self passcodeLength];

    if (v14)
    {
      goto LABEL_8;
    }
  }

  else
  {
  }

  v15 = [v9 text];
  v16 = [v15 stringByReplacingCharactersInRange:location withString:{length, v10}];
  [v9 setText:v16];

LABEL_8:
  v17 = [v9 text];
  v18 = [v17 length];
  v19 = [(PasscodeEmbeddedCustomizableViewController *)self passcodeLength];

  if (v18 >= v19)
  {
    [(PasscodeEmbeddedCustomizableViewController *)self _verifyTextField:v9];
  }

LABEL_10:

  return 0;
}

- (BOOL)textFieldShouldReturn:(id)a3
{
  v4 = a3;
  v5 = [(PasscodeEmbeddedViewController *)self passcodeField];

  if (v5 == v4)
  {
    [(PasscodeEmbeddedCustomizableViewController *)self _verifyTextField:v4];
  }

  else
  {
    [NSException raise:NSInvalidArgumentException format:@"Received delegate message for invalid text field (%@)", v4];
  }

  return 0;
}

- (BOOL)isVerifyingPasscode
{
  os_unfair_lock_lock(&self->_passcodeVerificationLock);
  isVerifyingPasscode = self->_isVerifyingPasscode;
  os_unfair_lock_unlock(&self->_passcodeVerificationLock);
  return isVerifyingPasscode;
}

- (void)setIsVerifyingPasscode:(BOOL)a3
{
  os_unfair_lock_lock(&self->_passcodeVerificationLock);
  self->_isVerifyingPasscode = a3;

  os_unfair_lock_unlock(&self->_passcodeVerificationLock);
}

- (void)_verifyTextField:(id)a3
{
  v4 = a3;
  if ([(PasscodeEmbeddedCustomizableViewController *)self isVerifyingPasscode])
  {
    v5 = LALogForCategory();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
    {
      sub_10006AFA0(self, v5);
    }
  }

  else
  {
    [(PasscodeEmbeddedCustomizableViewController *)self setIsVerifyingPasscode:1];
    objc_initWeak(&location, self);
    WeakRetained = objc_loadWeakRetained(&self->_delegate);
    v7 = [v4 text];
    v8[0] = _NSConcreteStackBlock;
    v8[1] = 3221225472;
    v8[2] = sub_1000255B8;
    v8[3] = &unk_100096E70;
    objc_copyWeak(&v10, &location);
    v9 = v4;
    [WeakRetained verifyPasscode:v7 reply:v8];

    objc_destroyWeak(&v10);
    objc_destroyWeak(&location);
  }
}

- (PasscodeEmbeddedViewControllerDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end