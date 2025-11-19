@interface AMSDialogTextField
+ (id)textFieldWithPlaceholder:(id)a3 secure:(BOOL)a4;
- (AMSDialogTextField)initWithCoder:(id)a3;
- (void)encodeWithCoder:(id)a3;
@end

@implementation AMSDialogTextField

+ (id)textFieldWithPlaceholder:(id)a3 secure:(BOOL)a4
{
  v4 = a4;
  v6 = a3;
  v7 = objc_alloc_init(a1);
  [v7 setPlaceholder:v6];

  [v7 setSecure:v4];

  return v7;
}

- (void)encodeWithCoder:(id)a3
{
  v8 = a3;
  [v8 encodeInteger:-[AMSDialogTextField keyboardType](self forKey:{"keyboardType"), @"kCodingKeyKeyboardType"}];
  v4 = [(AMSDialogTextField *)self placeholder];

  if (v4)
  {
    v5 = [(AMSDialogTextField *)self placeholder];
    [v8 encodeObject:v5 forKey:@"kCodingKeyPlaceholder"];
  }

  [v8 encodeBool:-[AMSDialogTextField secure](self forKey:{"secure"), @"kCodingKeySecure"}];
  [v8 encodeInteger:-[AMSDialogTextField tag](self forKey:{"tag"), @"kCodingKeyTag"}];
  v6 = [(AMSDialogTextField *)self text];

  if (v6)
  {
    v7 = [(AMSDialogTextField *)self text];
    [v8 encodeObject:v7 forKey:@"kCodingKeyText"];
  }
}

- (AMSDialogTextField)initWithCoder:(id)a3
{
  v4 = a3;
  v11.receiver = self;
  v11.super_class = AMSDialogTextField;
  v5 = [(AMSDialogTextField *)&v11 init];
  if (v5)
  {
    v5->_keyboardType = [v4 decodeIntegerForKey:@"kCodingKeyKeyboardType"];
    v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"kCodingKeyPlaceholder"];
    placeholder = v5->_placeholder;
    v5->_placeholder = v6;

    v5->_secure = [v4 decodeBoolForKey:@"kCodingKeySecure"];
    v5->_tag = [v4 decodeIntegerForKey:@"kCodingKeyTag"];
    v8 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"kCodingKeyText"];
    text = v5->_text;
    v5->_text = v8;
  }

  return v5;
}

@end