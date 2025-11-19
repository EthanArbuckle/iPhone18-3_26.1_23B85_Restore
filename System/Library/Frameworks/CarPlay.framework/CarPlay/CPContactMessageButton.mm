@interface CPContactMessageButton
- (CPContactMessageButton)initWithCoder:(id)a3;
- (CPContactMessageButton)initWithPhoneOrEmail:(NSString *)phoneOrEmail;
- (void)encodeWithCoder:(id)a3;
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

- (CPContactMessageButton)initWithCoder:(id)a3
{
  v4 = a3;
  v9.receiver = self;
  v9.super_class = CPContactMessageButton;
  v5 = [(CPButton *)&v9 initWithCoder:v4];
  if (v5)
  {
    v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"CPContactPhoneOrEmailKey"];
    phoneOrEmail = v5->_phoneOrEmail;
    v5->_phoneOrEmail = v6;
  }

  return v5;
}

- (void)encodeWithCoder:(id)a3
{
  v6.receiver = self;
  v6.super_class = CPContactMessageButton;
  v4 = a3;
  [(CPButton *)&v6 encodeWithCoder:v4];
  v5 = [(CPContactMessageButton *)self phoneOrEmail:v6.receiver];
  [v4 encodeObject:v5 forKey:@"CPContactPhoneOrEmailKey"];
}

@end