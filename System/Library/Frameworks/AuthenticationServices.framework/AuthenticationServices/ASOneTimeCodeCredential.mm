@interface ASOneTimeCodeCredential
+ (id)credentialWithCode:(id)a3;
- (ASOneTimeCodeCredential)initWithCode:(id)a3;
- (ASOneTimeCodeCredential)initWithCoder:(id)a3;
- (BOOL)isEqual:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
@end

@implementation ASOneTimeCodeCredential

+ (id)credentialWithCode:(id)a3
{
  v4 = a3;
  v5 = [[a1 alloc] initWithCode:v4];

  return v5;
}

- (ASOneTimeCodeCredential)initWithCode:(id)a3
{
  v4 = a3;
  v10.receiver = self;
  v10.super_class = ASOneTimeCodeCredential;
  v5 = [(ASOneTimeCodeCredential *)&v10 init];
  if (v5)
  {
    v6 = [v4 copy];
    code = v5->_code;
    v5->_code = v6;

    v8 = v5;
  }

  return v5;
}

- (ASOneTimeCodeCredential)initWithCoder:(id)a3
{
  v4 = a3;
  v5 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"code"];

  v6 = [(ASOneTimeCodeCredential *)self initWithCode:v5];
  return v6;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = objc_alloc(objc_opt_class());
  code = self->_code;

  return [v4 initWithCode:code];
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (v4 == self)
  {
    v7 = 1;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      code = self->_code;
      v6 = [(ASOneTimeCodeCredential *)v4 code];
      v7 = [(NSString *)code isEqualToString:v6];
    }

    else
    {
      v7 = 0;
    }
  }

  return v7;
}

@end