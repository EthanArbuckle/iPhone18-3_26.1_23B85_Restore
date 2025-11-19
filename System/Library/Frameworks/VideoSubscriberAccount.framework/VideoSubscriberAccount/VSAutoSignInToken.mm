@interface VSAutoSignInToken
- (VSAutoSignInToken)initWithAuthorization:(int64_t)a3 value:(id)a4;
- (VSAutoSignInToken)initWithCoder:(id)a3;
- (void)encodeWithCoder:(id)a3;
@end

@implementation VSAutoSignInToken

- (VSAutoSignInToken)initWithAuthorization:(int64_t)a3 value:(id)a4
{
  v6 = a4;
  v12.receiver = self;
  v12.super_class = VSAutoSignInToken;
  v7 = [(VSAutoSignInToken *)&v12 init];
  v8 = v7;
  if (v7)
  {
    v7->_authorization = a3;
    v9 = [v6 copy];
    value = v8->_value;
    v8->_value = v9;
  }

  return v8;
}

- (void)encodeWithCoder:(id)a3
{
  v4 = a3;
  VSRequireKeyedCoder(v4);
  [v4 encodeInteger:self->_authorization forKey:@"authorization"];
  [v4 encodeObject:self->_value forKey:@"value"];
}

- (VSAutoSignInToken)initWithCoder:(id)a3
{
  v4 = a3;
  VSRequireKeyedCoder(v4);
  v5 = [v4 decodeIntegerForKey:@"authorization"];
  v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"value"];

  v7 = [(VSAutoSignInToken *)self initWithAuthorization:v5 value:v6];
  return v7;
}

@end