@interface VSAutoSignInToken
- (VSAutoSignInToken)initWithAuthorization:(int64_t)authorization value:(id)value;
- (VSAutoSignInToken)initWithCoder:(id)coder;
- (void)encodeWithCoder:(id)coder;
@end

@implementation VSAutoSignInToken

- (VSAutoSignInToken)initWithAuthorization:(int64_t)authorization value:(id)value
{
  valueCopy = value;
  v12.receiver = self;
  v12.super_class = VSAutoSignInToken;
  v7 = [(VSAutoSignInToken *)&v12 init];
  v8 = v7;
  if (v7)
  {
    v7->_authorization = authorization;
    v9 = [valueCopy copy];
    value = v8->_value;
    v8->_value = v9;
  }

  return v8;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  VSRequireKeyedCoder(coderCopy);
  [coderCopy encodeInteger:self->_authorization forKey:@"authorization"];
  [coderCopy encodeObject:self->_value forKey:@"value"];
}

- (VSAutoSignInToken)initWithCoder:(id)coder
{
  coderCopy = coder;
  VSRequireKeyedCoder(coderCopy);
  v5 = [coderCopy decodeIntegerForKey:@"authorization"];
  v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"value"];

  v7 = [(VSAutoSignInToken *)self initWithAuthorization:v5 value:v6];
  return v7;
}

@end