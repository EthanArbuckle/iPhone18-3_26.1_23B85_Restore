@interface ASCAppleIDLoginChoice
- (ASCAppleIDLoginChoice)initWithAppleIDLoginChoice:(id)a3;
- (ASCAppleIDLoginChoice)initWithCoder:(id)a3;
- (ASCAppleIDLoginChoice)initWithUser:(id)a3;
- (BOOL)isEqual:(id)a3;
- (void)encodeWithCoder:(id)a3;
@end

@implementation ASCAppleIDLoginChoice

- (ASCAppleIDLoginChoice)initWithUser:(id)a3
{
  v4 = a3;
  v10.receiver = self;
  v10.super_class = ASCAppleIDLoginChoice;
  v5 = [(ASCAppleIDLoginChoice *)&v10 init];
  if (v5)
  {
    v6 = [v4 copy];
    user = v5->_user;
    v5->_user = v6;

    v8 = v5;
  }

  return v5;
}

- (ASCAppleIDLoginChoice)initWithAppleIDLoginChoice:(id)a3
{
  v5 = a3;
  v12.receiver = self;
  v12.super_class = ASCAppleIDLoginChoice;
  v6 = [(ASCAppleIDLoginChoice *)&v12 init];
  if (v6)
  {
    v7 = [v5 user];
    v8 = [v7 copy];
    user = v6->_user;
    v6->_user = v8;

    objc_storeStrong(&v6->_underlyingAppleIDLoginChoice, a3);
    v10 = v6;
  }

  return v6;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  objc_opt_class();
  v5 = (objc_opt_isKindOfClass() & 1) != 0 && [(NSString *)self->_user isEqualToString:v4[2]];

  return v5;
}

- (void)encodeWithCoder:(id)a3
{
  user = self->_user;
  v5 = a3;
  [v5 encodeObject:user forKey:@"appleIDLoginChoiceUser"];
  [v5 encodeObject:self->_underlyingAppleIDLoginChoice forKey:@"underlyingAppleIDLoginChoice"];
}

- (ASCAppleIDLoginChoice)initWithCoder:(id)a3
{
  v4 = a3;
  v15.receiver = self;
  v15.super_class = ASCAppleIDLoginChoice;
  v5 = [(ASCAppleIDLoginChoice *)&v15 init];
  if (v5)
  {
    v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"appleIDLoginChoiceUser"];
    user = v5->_user;
    v5->_user = v6;

    v8 = MEMORY[0x1E695DFD8];
    v9 = objc_opt_class();
    v10 = [v8 setWithObjects:{v9, objc_opt_class(), 0}];
    v11 = [v4 decodeObjectOfClasses:v10 forKey:@"underlyingAppleIDLoginChoice"];
    underlyingAppleIDLoginChoice = v5->_underlyingAppleIDLoginChoice;
    v5->_underlyingAppleIDLoginChoice = v11;

    v13 = v5;
  }

  return v5;
}

@end