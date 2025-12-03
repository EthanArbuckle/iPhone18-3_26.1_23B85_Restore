@interface ASAuthorizationPublicKeyCredentialLargeBlobRegistrationOutput
- (ASAuthorizationPublicKeyCredentialLargeBlobRegistrationOutput)initWithCoder:(id)coder;
- (id)_initWithIsSupported:(BOOL)supported;
- (id)copyWithZone:(_NSZone *)zone;
@end

@implementation ASAuthorizationPublicKeyCredentialLargeBlobRegistrationOutput

- (id)_initWithIsSupported:(BOOL)supported
{
  v8.receiver = self;
  v8.super_class = ASAuthorizationPublicKeyCredentialLargeBlobRegistrationOutput;
  v4 = [(ASAuthorizationPublicKeyCredentialLargeBlobRegistrationOutput *)&v8 init];
  v5 = v4;
  if (v4)
  {
    v4->_isSupported = supported;
    v6 = v4;
  }

  return v5;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = [ASAuthorizationPublicKeyCredentialLargeBlobRegistrationOutput allocWithZone:zone];
  isSupported = self->_isSupported;

  return [(ASAuthorizationPublicKeyCredentialLargeBlobRegistrationOutput *)v4 _initWithIsSupported:isSupported];
}

- (ASAuthorizationPublicKeyCredentialLargeBlobRegistrationOutput)initWithCoder:(id)coder
{
  v4 = [coder decodeBoolForKey:@"isSupported"];

  return [(ASAuthorizationPublicKeyCredentialLargeBlobRegistrationOutput *)self _initWithIsSupported:v4];
}

@end