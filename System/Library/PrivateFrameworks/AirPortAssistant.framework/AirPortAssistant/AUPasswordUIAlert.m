@interface AUPasswordUIAlert
- (void)prepareToShow;
@end

@implementation AUPasswordUIAlert

- (void)prepareToShow
{
  v9.receiver = self;
  v9.super_class = AUPasswordUIAlert;
  [(AUTextFieldUIAlert *)&v9 prepareToShow];
  v5 = objc_msgSend_textField(self, v3, v4);
  objc_msgSend_setAutocorrectionType_(v5, v6, 1);
  objc_msgSend_setEnablesReturnKeyAutomatically_(v5, v7, 1);
  objc_msgSend_setSecureTextEntry_(v5, v8, 1);
}

@end