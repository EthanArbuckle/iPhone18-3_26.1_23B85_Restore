@interface CPContactMessageButton
- (CPContactMessageButton)initWithCoder:(id)coder;
- (CPContactMessageButton)initWithPhoneOrEmail:(NSString *)phoneOrEmail;
- (void)encodeWithCoder:(id)coder;
@end

@implementation CPContactMessageButton

- (CPContactMessageButton)initWithPhoneOrEmail:(NSString *)phoneOrEmail
{
  v5 = phoneOrEmail;
  v9.receiver = self;
  v9.super_class = CPContactMessageButton;
  v6 = [(CPButton *)&v9 initWithImage:0 handler:0];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_phoneOrEmail, phoneOrEmail);
  }

  return v7;
}

- (CPContactMessageButton)initWithCoder:(id)coder
{
  coderCopy = coder;
  v9.receiver = self;
  v9.super_class = CPContactMessageButton;
  v5 = [(CPButton *)&v9 initWithCoder:coderCopy];
  if (v5)
  {
    v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"CPContactPhoneOrEmailKey"];
    phoneOrEmail = v5->_phoneOrEmail;
    v5->_phoneOrEmail = v6;
  }

  return v5;
}

- (void)encodeWithCoder:(id)coder
{
  v6.receiver = self;
  v6.super_class = CPContactMessageButton;
  coderCopy = coder;
  [(CPButton *)&v6 encodeWithCoder:coderCopy];
  v5 = [(CPContactMessageButton *)self phoneOrEmail:v6.receiver];
  [coderCopy encodeObject:v5 forKey:@"CPContactPhoneOrEmailKey"];
}

@end