@interface AMSDialogTextField
+ (id)textFieldWithPlaceholder:(id)placeholder secure:(BOOL)secure;
- (AMSDialogTextField)initWithCoder:(id)coder;
- (void)encodeWithCoder:(id)coder;
@end

@implementation AMSDialogTextField

+ (id)textFieldWithPlaceholder:(id)placeholder secure:(BOOL)secure
{
  secureCopy = secure;
  placeholderCopy = placeholder;
  v7 = objc_alloc_init(self);
  [v7 setPlaceholder:placeholderCopy];

  [v7 setSecure:secureCopy];

  return v7;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  [coderCopy encodeInteger:-[AMSDialogTextField keyboardType](self forKey:{"keyboardType"), @"kCodingKeyKeyboardType"}];
  placeholder = [(AMSDialogTextField *)self placeholder];

  if (placeholder)
  {
    placeholder2 = [(AMSDialogTextField *)self placeholder];
    [coderCopy encodeObject:placeholder2 forKey:@"kCodingKeyPlaceholder"];
  }

  [coderCopy encodeBool:-[AMSDialogTextField secure](self forKey:{"secure"), @"kCodingKeySecure"}];
  [coderCopy encodeInteger:-[AMSDialogTextField tag](self forKey:{"tag"), @"kCodingKeyTag"}];
  text = [(AMSDialogTextField *)self text];

  if (text)
  {
    text2 = [(AMSDialogTextField *)self text];
    [coderCopy encodeObject:text2 forKey:@"kCodingKeyText"];
  }
}

- (AMSDialogTextField)initWithCoder:(id)coder
{
  coderCopy = coder;
  v11.receiver = self;
  v11.super_class = AMSDialogTextField;
  v5 = [(AMSDialogTextField *)&v11 init];
  if (v5)
  {
    v5->_keyboardType = [coderCopy decodeIntegerForKey:@"kCodingKeyKeyboardType"];
    v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"kCodingKeyPlaceholder"];
    placeholder = v5->_placeholder;
    v5->_placeholder = v6;

    v5->_secure = [coderCopy decodeBoolForKey:@"kCodingKeySecure"];
    v5->_tag = [coderCopy decodeIntegerForKey:@"kCodingKeyTag"];
    v8 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"kCodingKeyText"];
    text = v5->_text;
    v5->_text = v8;
  }

  return v5;
}

@end