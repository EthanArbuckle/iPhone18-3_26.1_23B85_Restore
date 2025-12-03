@interface ASAuthorizationPlatformPublicKeyCredentialRegistration
- (ASAuthorizationPlatformPublicKeyCredentialRegistration)initWithCoder:(id)coder;
- (ASAuthorizationPlatformPublicKeyCredentialRegistration)initWithCoreCredential:(id)credential;
- (ASAuthorizationPublicKeyCredentialAttachment)attachment;
- (ASAuthorizationPublicKeyCredentialLargeBlobRegistrationOutput)__largeBlobSwift;
- (ASAuthorizationPublicKeyCredentialPRFRegistrationOutput)__prfSwift;
- (id)copyWithZone:(_NSZone *)zone;
@end

@implementation ASAuthorizationPlatformPublicKeyCredentialRegistration

- (ASAuthorizationPlatformPublicKeyCredentialRegistration)initWithCoreCredential:(id)credential
{
  credentialCopy = credential;
  v10.receiver = self;
  v10.super_class = ASAuthorizationPlatformPublicKeyCredentialRegistration;
  v6 = [(ASAuthorizationPlatformPublicKeyCredentialRegistration *)&v10 init];
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
  v4 = [ASAuthorizationPlatformPublicKeyCredentialRegistration alloc];
  coreCredential = self->_coreCredential;

  return [(ASAuthorizationPlatformPublicKeyCredentialRegistration *)v4 initWithCoreCredential:coreCredential];
}

- (ASAuthorizationPlatformPublicKeyCredentialRegistration)initWithCoder:(id)coder
{
  coderCopy = coder;
  v5 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"coreCredential"];

  v6 = [(ASAuthorizationPlatformPublicKeyCredentialRegistration *)self initWithCoreCredential:v5];
  return v6;
}

- (ASAuthorizationPublicKeyCredentialAttachment)attachment
{
  attachment = [(ASCPlatformPublicKeyCredentialRegistration *)self->_coreCredential attachment];
  v3 = [ASAuthorizationPublicKeyCredentialConstants publicAttachmentFromInternal:attachment];

  return v3;
}

- (ASAuthorizationPublicKeyCredentialLargeBlobRegistrationOutput)__largeBlobSwift
{
  selfCopy = self;
  v3 = ASAuthorizationPlatformPublicKeyCredentialRegistration.__largeBlobSwift.getter();

  return v3;
}

- (ASAuthorizationPublicKeyCredentialPRFRegistrationOutput)__prfSwift
{
  selfCopy = self;
  v3 = ASAuthorizationPlatformPublicKeyCredentialRegistration.__prfSwift.getter();

  return v3;
}

@end