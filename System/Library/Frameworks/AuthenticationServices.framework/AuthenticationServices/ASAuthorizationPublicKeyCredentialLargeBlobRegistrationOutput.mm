@interface ASAuthorizationPublicKeyCredentialLargeBlobRegistrationOutput
- (ASAuthorizationPublicKeyCredentialLargeBlobRegistrationOutput)initWithCoder:(id)a3;
- (id)_initWithIsSupported:(BOOL)a3;
- (id)copyWithZone:(_NSZone *)a3;
@end

@implementation ASAuthorizationPublicKeyCredentialLargeBlobRegistrationOutput

- (id)_initWithIsSupported:(BOOL)a3
{
  v8.receiver = self;
  v8.super_class = ASAuthorizationPublicKeyCredentialLargeBlobRegistrationOutput;
  v4 = [(ASAuthorizationPublicKeyCredentialLargeBlobRegistrationOutput *)&v8 init];
  v5 = v4;
  if (v4)
  {
    v4->_isSupported = a3;
    v6 = v4;
  }

  return v5;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = [ASAuthorizationPublicKeyCredentialLargeBlobRegistrationOutput allocWithZone:a3];
  isSupported = self->_isSupported;

  return [(ASAuthorizationPublicKeyCredentialLargeBlobRegistrationOutput *)v4 _initWithIsSupported:isSupported];
}

- (ASAuthorizationPublicKeyCredentialLargeBlobRegistrationOutput)initWithCoder:(id)a3
{
  v4 = [a3 decodeBoolForKey:@"isSupported"];

  return [(ASAuthorizationPublicKeyCredentialLargeBlobRegistrationOutput *)self _initWithIsSupported:v4];
}

@end