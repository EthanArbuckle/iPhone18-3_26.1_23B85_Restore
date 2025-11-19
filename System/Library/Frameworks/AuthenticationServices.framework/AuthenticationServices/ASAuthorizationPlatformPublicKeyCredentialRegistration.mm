@interface ASAuthorizationPlatformPublicKeyCredentialRegistration
- (ASAuthorizationPlatformPublicKeyCredentialRegistration)initWithCoder:(id)a3;
- (ASAuthorizationPlatformPublicKeyCredentialRegistration)initWithCoreCredential:(id)a3;
- (ASAuthorizationPublicKeyCredentialAttachment)attachment;
- (ASAuthorizationPublicKeyCredentialLargeBlobRegistrationOutput)__largeBlobSwift;
- (ASAuthorizationPublicKeyCredentialPRFRegistrationOutput)__prfSwift;
- (id)copyWithZone:(_NSZone *)a3;
@end

@implementation ASAuthorizationPlatformPublicKeyCredentialRegistration

- (ASAuthorizationPlatformPublicKeyCredentialRegistration)initWithCoreCredential:(id)a3
{
  v5 = a3;
  v10.receiver = self;
  v10.super_class = ASAuthorizationPlatformPublicKeyCredentialRegistration;
  v6 = [(ASAuthorizationPlatformPublicKeyCredentialRegistration *)&v10 init];
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
  v4 = [ASAuthorizationPlatformPublicKeyCredentialRegistration alloc];
  coreCredential = self->_coreCredential;

  return [(ASAuthorizationPlatformPublicKeyCredentialRegistration *)v4 initWithCoreCredential:coreCredential];
}

- (ASAuthorizationPlatformPublicKeyCredentialRegistration)initWithCoder:(id)a3
{
  v4 = a3;
  v5 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"coreCredential"];

  v6 = [(ASAuthorizationPlatformPublicKeyCredentialRegistration *)self initWithCoreCredential:v5];
  return v6;
}

- (ASAuthorizationPublicKeyCredentialAttachment)attachment
{
  v2 = [(ASCPlatformPublicKeyCredentialRegistration *)self->_coreCredential attachment];
  v3 = [ASAuthorizationPublicKeyCredentialConstants publicAttachmentFromInternal:v2];

  return v3;
}

- (ASAuthorizationPublicKeyCredentialLargeBlobRegistrationOutput)__largeBlobSwift
{
  v2 = self;
  v3 = ASAuthorizationPlatformPublicKeyCredentialRegistration.__largeBlobSwift.getter();

  return v3;
}

- (ASAuthorizationPublicKeyCredentialPRFRegistrationOutput)__prfSwift
{
  v2 = self;
  v3 = ASAuthorizationPlatformPublicKeyCredentialRegistration.__prfSwift.getter();

  return v3;
}

@end