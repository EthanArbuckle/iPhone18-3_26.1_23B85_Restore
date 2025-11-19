@interface ASCAppleIDCredential
- (ASCAppleIDCredential)initWithAuthorization:(id)a3;
- (ASCAppleIDCredential)initWithCoder:(id)a3;
- (ASCAppleIDCredential)initWithUser:(id)a3 identityToken:(id)a4 state:(id)a5;
- (id)copyWithZone:(_NSZone *)a3;
- (void)encodeWithCoder:(id)a3;
@end

@implementation ASCAppleIDCredential

- (ASCAppleIDCredential)initWithUser:(id)a3 identityToken:(id)a4 state:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v20.receiver = self;
  v20.super_class = ASCAppleIDCredential;
  v11 = [(ASCAppleIDCredential *)&v20 init];
  if (v11)
  {
    v12 = [v8 copy];
    user = v11->_user;
    v11->_user = v12;

    v14 = [v9 copy];
    identityToken = v11->_identityToken;
    v11->_identityToken = v14;

    v16 = [v10 copy];
    state = v11->_state;
    v11->_state = v16;

    v18 = v11;
  }

  return v11;
}

- (ASCAppleIDCredential)initWithAuthorization:(id)a3
{
  v5 = a3;
  v6 = [v5 credential];
  v7 = [v6 userIdentifier];
  v8 = [v6 identityToken];
  v9 = [v6 state];
  v10 = [(ASCAppleIDCredential *)self initWithUser:v7 identityToken:v8 state:v9];

  if (v10)
  {
    objc_storeStrong(&v10->_authorization, a3);
    v11 = v10;
  }

  return v10;
}

- (id)copyWithZone:(_NSZone *)a3
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

- (void)encodeWithCoder:(id)a3
{
  authorization = self->_authorization;
  v5 = a3;
  [v5 encodeObject:authorization forKey:@"Authorization"];
  [v5 encodeObject:self->_user forKey:@"User"];
  [v5 encodeObject:self->_identityToken forKey:@"IdentityToken"];
  [v5 encodeObject:self->_state forKey:@"State"];
}

- (ASCAppleIDCredential)initWithCoder:(id)a3
{
  v4 = a3;
  v5 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"Authorization"];
  v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"User"];
  v7 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"IdentityToken"];
  v8 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"State"];

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