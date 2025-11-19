@interface ASAuthorizationPlatformPublicKeyCredentialAssertion
- (ASAuthorizationPlatformPublicKeyCredentialAssertion)initWithCoder:(id)a3;
- (ASAuthorizationPlatformPublicKeyCredentialAssertion)initWithCoreCredential:(id)a3;
- (ASAuthorizationPublicKeyCredentialAttachment)attachment;
- (ASAuthorizationPublicKeyCredentialLargeBlobAssertionOutput)__largeBlobSwift;
- (ASAuthorizationPublicKeyCredentialPRFAssertionOutput)__prfSwift;
- (id)copyWithZone:(_NSZone *)a3;
@end

@implementation ASAuthorizationPlatformPublicKeyCredentialAssertion

- (ASAuthorizationPlatformPublicKeyCredentialAssertion)initWithCoreCredential:(id)a3
{
  v5 = a3;
  v10.receiver = self;
  v10.super_class = ASAuthorizationPlatformPublicKeyCredentialAssertion;
  v6 = [(ASAuthorizationPlatformPublicKeyCredentialAssertion *)&v10 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_coreCredential, a3);
    v8 = v7;
  }

  return v7;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = [ASAuthorizationPlatformPublicKeyCredentialAssertion alloc];
  coreCredential = self->_coreCredential;

  return [(ASAuthorizationPlatformPublicKeyCredentialAssertion *)v4 initWithCoreCredential:coreCredential];
}

- (ASAuthorizationPlatformPublicKeyCredentialAssertion)initWithCoder:(id)a3
{
  v4 = a3;
  v5 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"coreCredential"];

  v6 = [(ASAuthorizationPlatformPublicKeyCredentialAssertion *)self initWithCoreCredential:v5];
  return v6;
}

- (ASAuthorizationPublicKeyCredentialAttachment)attachment
{
  v2 = [(ASCPlatformPublicKeyCredentialAssertion *)self->_coreCredential attachment];
  v3 = [ASAuthorizationPublicKeyCredentialConstants publicAttachmentFromInternal:v2];

  return v3;
}

- (ASAuthorizationPublicKeyCredentialLargeBlobAssertionOutput)__largeBlobSwift
{
  v2 = self;
  v3 = ASAuthorizationPlatformPublicKeyCredentialAssertion.__largeBlobSwift.getter();

  return v3;
}

- (ASAuthorizationPublicKeyCredentialPRFAssertionOutput)__prfSwift
{
  v2 = self;
  v3 = ASAuthorizationPlatformPublicKeyCredentialAssertion.__prfSwift.getter();

  return v3;
}

@end