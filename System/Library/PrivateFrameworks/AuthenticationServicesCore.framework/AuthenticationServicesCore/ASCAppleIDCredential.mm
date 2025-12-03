@interface ASCAppleIDCredential
- (ASCAppleIDCredential)initWithAuthorization:(id)authorization;
- (ASCAppleIDCredential)initWithCoder:(id)coder;
- (ASCAppleIDCredential)initWithUser:(id)user identityToken:(id)token state:(id)state;
- (id)copyWithZone:(_NSZone *)zone;
- (void)encodeWithCoder:(id)coder;
@end

@implementation ASCAppleIDCredential

- (ASCAppleIDCredential)initWithUser:(id)user identityToken:(id)token state:(id)state
{
  userCopy = user;
  tokenCopy = token;
  stateCopy = state;
  v20.receiver = self;
  v20.super_class = ASCAppleIDCredential;
  v11 = [(ASCAppleIDCredential *)&v20 init];
  if (v11)
  {
    v12 = [userCopy copy];
    user = v11->_user;
    v11->_user = v12;

    v14 = [tokenCopy copy];
    identityToken = v11->_identityToken;
    v11->_identityToken = v14;

    v16 = [stateCopy copy];
    state = v11->_state;
    v11->_state = v16;

    v18 = v11;
  }

  return v11;
}

- (ASCAppleIDCredential)initWithAuthorization:(id)authorization
{
  authorizationCopy = authorization;
  credential = [authorizationCopy credential];
  userIdentifier = [credential userIdentifier];
  identityToken = [credential identityToken];
  state = [credential state];
  v10 = [(ASCAppleIDCredential *)self initWithUser:userIdentifier identityToken:identityToken state:state];

  if (v10)
  {
    objc_storeStrong(&v10->_authorization, authorization);
    v11 = v10;
  }

  return v10;
}

- (id)copyWithZone:(_NSZone *)zone
{
  authorization = self->_authorization;
  v5 = [ASCAppleIDCredential alloc];
  if (authorization)
  {
    v6 = self->_authorization;

    return [(ASCAppleIDCredential *)v5 initWithAuthorization:v6];
  }

  else
  {
    user = self->_user;
    identityToken = self->_identityToken;
    state = self->_state;

    return [(ASCAppleIDCredential *)v5 initWithUser:user identityToken:identityToken state:state];
  }
}

- (void)encodeWithCoder:(id)coder
{
  authorization = self->_authorization;
  coderCopy = coder;
  [coderCopy encodeObject:authorization forKey:@"Authorization"];
  [coderCopy encodeObject:self->_user forKey:@"User"];
  [coderCopy encodeObject:self->_identityToken forKey:@"IdentityToken"];
  [coderCopy encodeObject:self->_state forKey:@"State"];
}

- (ASCAppleIDCredential)initWithCoder:(id)coder
{
  coderCopy = coder;
  v5 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"Authorization"];
  v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"User"];
  v7 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"IdentityToken"];
  v8 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"State"];

  v9 = [(ASCAppleIDCredential *)self initWithUser:v6 identityToken:v7 state:v8];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_authorization, v5);
    v11 = v10;
  }

  return v10;
}

@end