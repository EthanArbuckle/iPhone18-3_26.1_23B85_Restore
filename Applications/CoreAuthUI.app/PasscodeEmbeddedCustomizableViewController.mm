@interface PasscodeEmbeddedCustomizableViewController
- (BOOL)isVerifyingPasscode;
- (BOOL)textField:(id)field shouldChangeCharactersInRange:(_NSRange)range replacementString:(id)string;
- (BOOL)textFieldShouldReturn:(id)return;
- (PasscodeEmbeddedCustomizableViewController)initWithPasscodeLength:(int64_t)length alphanumeric:(BOOL)alphanumeric;
- (PasscodeEmbeddedViewControllerDelegate)delegate;
- (id)alphanumericFieldPlaceholder;
- (void)_verifyTextField:(id)field;
- (void)setIsVerifyingPasscode:(BOOL)passcode;
@end

@implementation PasscodeEmbeddedCustomizableViewController

- (PasscodeEmbeddedCustomizableViewController)initWithPasscodeLength:(int64_t)length alphanumeric:(BOOL)alphanumeric
{
  alphanumericCopy = alphanumeric;
  v11.receiver = self;
  v11.super_class = PasscodeEmbeddedCustomizableViewController;
  v6 = [(PasscodeEmbeddedCustomizableViewController *)&v11 init];
  v7 = v6;
  if (v6)
  {
    v6->_passcodeVerificationLock._os_unfair_lock_opaque = 0;
    if (length < 1)
    {
      lengthCopy = -1;
    }

    else
    {
      lengthCopy = length;
    }

    v6->_passcodeLength = lengthCopy;
    if (alphanumericCopy)
    {
      v6->_hasAlphanumericPasscode = 1;
    }

    else if (length <= 0)
    {
      v9 = +[UIDevice currentDevice];
      v7->_hasAlphanumericPasscode = [v9 userInterfaceIdiom] != 1 || v7->_passcodeLength > 6;
    }

    else
    {
      v6->_hasAlphanumericPasscode = length > 6;
    }
  }

  return v7;
}

- (id)alphanumericFieldPlaceholder
{
  v4 = [NSAttributedString alloc];
  placeholderText = self->_placeholderText;
  string = placeholderText;
  if (!placeholderText)
  {
    v12.receiver = self;
    v12.super_class = PasscodeEmbeddedCustomizableViewController;
    alphanumericFieldPlaceholder = [(PasscodeEmbeddedViewController *)&v12 alphanumericFieldPlaceholder];
    string = [alphanumericFieldPlaceholder string];
  }

  v13[0] = NSParagraphStyleAttributeName;
  v7 = objc_alloc_init(NSMutableParagraphStyle);
  [v7 setAlignment:1];
  v14[0] = v7;
  v13[1] = NSFontAttributeName;
  v8 = [UIFont preferredFontForTextStyle:UIFontTextStyleBody];
  v14[1] = v8;
  v9 = [NSDictionary dictionaryWithObjects:v14 forKeys:v13 count:2];
  v10 = [v4 initWithString:string attributes:v9];

  if (!placeholderText)
  {
  }

  return v10;
}

- (BOOL)textField:(id)field shouldChangeCharactersInRange:(_NSRange)range replacementString:(id)string
{
  length = range.length;
  location = range.location;
  fieldCopy = field;
  stringCopy = string;
  passcodeField = [(PasscodeEmbeddedViewController *)self passcodeField];

  if (passcodeField != fieldCopy)
  {
    [NSException raise:NSInvalidArgumentException format:@"Received delegate message for invalid text field (%@)", fieldCopy];
    goto LABEL_10;
  }

  if ([(PasscodeEmbeddedViewController *)self animating])
  {
    goto LABEL_10;
  }

  text = [fieldCopy text];
  v13 = [text length];
  if (v13 >= [(PasscodeEmbeddedCustomizableViewController *)self passcodeLength])
  {
    passcodeLength = [(PasscodeEmbeddedCustomizableViewController *)self passcodeLength];

    if (passcodeLength)
    {
      goto LABEL_8;
    }
  }

  else
  {
  }

  text2 = [fieldCopy text];
  v16 = [text2 stringByReplacingCharactersInRange:location withString:{length, stringCopy}];
  [fieldCopy setText:v16];

LABEL_8:
  text3 = [fieldCopy text];
  v18 = [text3 length];
  passcodeLength2 = [(PasscodeEmbeddedCustomizableViewController *)self passcodeLength];

  if (v18 >= passcodeLength2)
  {
    [(PasscodeEmbeddedCustomizableViewController *)self _verifyTextField:fieldCopy];
  }

LABEL_10:

  return 0;
}

- (BOOL)textFieldShouldReturn:(id)return
{
  returnCopy = return;
  passcodeField = [(PasscodeEmbeddedViewController *)self passcodeField];

  if (passcodeField == returnCopy)
  {
    [(PasscodeEmbeddedCustomizableViewController *)self _verifyTextField:returnCopy];
  }

  else
  {
    [NSException raise:NSInvalidArgumentException format:@"Received delegate message for invalid text field (%@)", returnCopy];
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

- (void)setIsVerifyingPasscode:(BOOL)passcode
{
  os_unfair_lock_lock(&self->_passcodeVerificationLock);
  self->_isVerifyingPasscode = passcode;

  os_unfair_lock_unlock(&self->_passcodeVerificationLock);
}

- (void)_verifyTextField:(id)field
{
  fieldCopy = field;
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
    text = [fieldCopy text];
    v8[0] = _NSConcreteStackBlock;
    v8[1] = 3221225472;
    v8[2] = sub_1000255B8;
    v8[3] = &unk_100096E70;
    objc_copyWeak(&v10, &location);
    v9 = fieldCopy;
    [WeakRetained verifyPasscode:text reply:v8];

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