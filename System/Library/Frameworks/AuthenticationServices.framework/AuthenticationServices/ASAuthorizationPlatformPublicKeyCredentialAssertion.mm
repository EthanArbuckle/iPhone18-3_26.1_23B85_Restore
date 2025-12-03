@interface ASAuthorizationPlatformPublicKeyCredentialAssertion
- (ASAuthorizationPlatformPublicKeyCredentialAssertion)initWithCoder:(id)coder;
- (ASAuthorizationPlatformPublicKeyCredentialAssertion)initWithCoreCredential:(id)credential;
- (ASAuthorizationPublicKeyCredentialAttachment)attachment;
- (ASAuthorizationPublicKeyCredentialLargeBlobAssertionOutput)__largeBlobSwift;
- (ASAuthorizationPublicKeyCredentialPRFAssertionOutput)__prfSwift;
- (id)copyWithZone:(_NSZone *)zone;
@end

@implementation ASAuthorizationPlatformPublicKeyCredentialAssertion

- (ASAuthorizationPlatformPublicKeyCredentialAssertion)initWithCoreCredential:(id)credential
{
  credentialCopy = credential;
  v10.receiver = self;
  v10.super_class = ASAuthorizationPlatformPublicKeyCredentialAssertion;
  v6 = [(ASAuthorizationPlatformPublicKeyCredentialAssertion *)&v10 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_coreCredential, credential);
    v8 = v7;
  }

  return v7;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = [ASAuthorizationPlatformPublicKeyCredentialAssertion alloc];
  coreCredential = self->_coreCredential;

  return [(ASAuthorizationPlatformPublicKeyCredentialAssertion *)v4 initWithCoreCredential:coreCredential];
}

- (ASAuthorizationPlatformPublicKeyCredentialAssertion)initWithCoder:(id)coder
{
  coderCopy = coder;
  v5 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"coreCredential"];

  v6 = [(ASAuthorizationPlatformPublicKeyCredentialAssertion *)self initWithCoreCredential:v5];
  return v6;
}

- (ASAuthorizationPublicKeyCredentialAttachment)attachment
{
  attachment = [(ASCPlatformPublicKeyCredentialAssertion *)self->_coreCredential attachment];
  v3 = [ASAuthorizationPublicKeyCredentialConstants publicAttachmentFromInternal:attachment];

  return v3;
}

- (ASAuthorizationPublicKeyCredentialLargeBlobAssertionOutput)__largeBlobSwift
{
  selfCopy = self;
  v3 = ASAuthorizationPlatformPublicKeyCredentialAssertion.__largeBlobSwift.getter();

  return v3;
}

- (ASAuthorizationPublicKeyCredentialPRFAssertionOutput)__prfSwift
{
  selfCopy = self;
  v3 = ASAuthorizationPlatformPublicKeyCredentialAssertion.__prfSwift.getter();

  return v3;
}

@end