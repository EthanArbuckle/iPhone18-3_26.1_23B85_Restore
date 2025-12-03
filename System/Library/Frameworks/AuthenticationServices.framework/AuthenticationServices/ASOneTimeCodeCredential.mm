@interface ASOneTimeCodeCredential
+ (id)credentialWithCode:(id)code;
- (ASOneTimeCodeCredential)initWithCode:(id)code;
- (ASOneTimeCodeCredential)initWithCoder:(id)coder;
- (BOOL)isEqual:(id)equal;
- (id)copyWithZone:(_NSZone *)zone;
@end

@implementation ASOneTimeCodeCredential

+ (id)credentialWithCode:(id)code
{
  codeCopy = code;
  v5 = [[self alloc] initWithCode:codeCopy];

  return v5;
}

- (ASOneTimeCodeCredential)initWithCode:(id)code
{
  codeCopy = code;
  v10.receiver = self;
  v10.super_class = ASOneTimeCodeCredential;
  v5 = [(ASOneTimeCodeCredential *)&v10 init];
  if (v5)
  {
    v6 = [codeCopy copy];
    code = v5->_code;
    v5->_code = v6;

    v8 = v5;
  }

  return v5;
}

- (ASOneTimeCodeCredential)initWithCoder:(id)coder
{
  coderCopy = coder;
  v5 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"code"];

  v6 = [(ASOneTimeCodeCredential *)self initWithCode:v5];
  return v6;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = objc_alloc(objc_opt_class());
  code = self->_code;

  return [v4 initWithCode:code];
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (equalCopy == self)
  {
    v7 = 1;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      code = self->_code;
      code = [(ASOneTimeCodeCredential *)equalCopy code];
      v7 = [(NSString *)code isEqualToString:code];
    }

    else
    {
      v7 = 0;
    }
  }

  return v7;
}

@end