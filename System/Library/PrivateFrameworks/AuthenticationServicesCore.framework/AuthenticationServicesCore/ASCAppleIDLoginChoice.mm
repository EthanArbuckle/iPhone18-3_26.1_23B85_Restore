@interface ASCAppleIDLoginChoice
- (ASCAppleIDLoginChoice)initWithAppleIDLoginChoice:(id)choice;
- (ASCAppleIDLoginChoice)initWithCoder:(id)coder;
- (ASCAppleIDLoginChoice)initWithUser:(id)user;
- (BOOL)isEqual:(id)equal;
- (void)encodeWithCoder:(id)coder;
@end

@implementation ASCAppleIDLoginChoice

- (ASCAppleIDLoginChoice)initWithUser:(id)user
{
  userCopy = user;
  v10.receiver = self;
  v10.super_class = ASCAppleIDLoginChoice;
  v5 = [(ASCAppleIDLoginChoice *)&v10 init];
  if (v5)
  {
    v6 = [userCopy copy];
    user = v5->_user;
    v5->_user = v6;

    v8 = v5;
  }

  return v5;
}

- (ASCAppleIDLoginChoice)initWithAppleIDLoginChoice:(id)choice
{
  choiceCopy = choice;
  v12.receiver = self;
  v12.super_class = ASCAppleIDLoginChoice;
  v6 = [(ASCAppleIDLoginChoice *)&v12 init];
  if (v6)
  {
    user = [choiceCopy user];
    v8 = [user copy];
    user = v6->_user;
    v6->_user = v8;

    objc_storeStrong(&v6->_underlyingAppleIDLoginChoice, choice);
    v10 = v6;
  }

  return v6;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  objc_opt_class();
  v5 = (objc_opt_isKindOfClass() & 1) != 0 && [(NSString *)self->_user isEqualToString:equalCopy[2]];

  return v5;
}

- (void)encodeWithCoder:(id)coder
{
  user = self->_user;
  coderCopy = coder;
  [coderCopy encodeObject:user forKey:@"appleIDLoginChoiceUser"];
  [coderCopy encodeObject:self->_underlyingAppleIDLoginChoice forKey:@"underlyingAppleIDLoginChoice"];
}

- (ASCAppleIDLoginChoice)initWithCoder:(id)coder
{
  coderCopy = coder;
  v15.receiver = self;
  v15.super_class = ASCAppleIDLoginChoice;
  v5 = [(ASCAppleIDLoginChoice *)&v15 init];
  if (v5)
  {
    v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"appleIDLoginChoiceUser"];
    user = v5->_user;
    v5->_user = v6;

    v8 = MEMORY[0x1E695DFD8];
    v9 = objc_opt_class();
    v10 = [v8 setWithObjects:{v9, objc_opt_class(), 0}];
    v11 = [coderCopy decodeObjectOfClasses:v10 forKey:@"underlyingAppleIDLoginChoice"];
    underlyingAppleIDLoginChoice = v5->_underlyingAppleIDLoginChoice;
    v5->_underlyingAppleIDLoginChoice = v11;

    v13 = v5;
  }

  return v5;
}

@end