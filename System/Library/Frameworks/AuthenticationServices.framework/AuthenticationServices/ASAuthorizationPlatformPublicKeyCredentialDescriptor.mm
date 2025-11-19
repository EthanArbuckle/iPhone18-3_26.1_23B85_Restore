@interface ASAuthorizationPlatformPublicKeyCredentialDescriptor
- (ASAuthorizationPlatformPublicKeyCredentialDescriptor)initWithCoder:(id)a3;
- (ASAuthorizationPlatformPublicKeyCredentialDescriptor)initWithCredentialID:(NSData *)credentialID;
- (ASCPublicKeyCredentialDescriptor)coreDescriptor;
- (NSData)credentialID;
- (id)copyWithZone:(_NSZone *)a3;
- (void)encodeWithCoder:(id)a3;
- (void)setCredentialID:(id)a3;
@end

@implementation ASAuthorizationPlatformPublicKeyCredentialDescriptor

- (ASAuthorizationPlatformPublicKeyCredentialDescriptor)initWithCredentialID:(NSData *)credentialID
{
  v4 = credentialID;
  v10.receiver = self;
  v10.super_class = ASAuthorizationPlatformPublicKeyCredentialDescriptor;
  v5 = [(ASAuthorizationPlatformPublicKeyCredentialDescriptor *)&v10 init];
  if (v5)
  {
    v6 = [(NSData *)v4 copy];
    v7 = v5->_credentialID;
    v5->_credentialID = v6;

    v5->_internalLock._os_unfair_lock_opaque = 0;
    v8 = v5;
  }

  return v5;
}

- (ASCPublicKeyCredentialDescriptor)coreDescriptor
{
  v2 = [objc_alloc(MEMORY[0x1E698E000]) initWithCredentialID:self->_credentialID transports:0];

  return v2;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = objc_alloc(objc_opt_class());
  v5 = [(ASAuthorizationPlatformPublicKeyCredentialDescriptor *)self credentialID];
  v6 = [v4 initWithCredentialID:v5];

  return v6;
}

- (ASAuthorizationPlatformPublicKeyCredentialDescriptor)initWithCoder:(id)a3
{
  v4 = a3;
  v5 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"credentialID"];

  v6 = [(ASAuthorizationPlatformPublicKeyCredentialDescriptor *)self initWithCredentialID:v5];
  return v6;
}

- (void)encodeWithCoder:(id)a3
{
  v4 = a3;
  v5 = [(ASAuthorizationPlatformPublicKeyCredentialDescriptor *)self credentialID];
  [v4 encodeObject:v5 forKey:@"credentialID"];
}

- (NSData)credentialID
{
  os_unfair_lock_lock(&self->_internalLock);
  v3 = self->_credentialID;
  os_unfair_lock_unlock(&self->_internalLock);

  return v3;
}

- (void)setCredentialID:(id)a3
{
  v4 = a3;
  os_unfair_lock_lock(&self->_internalLock);
  credentialID = self->_credentialID;
  self->_credentialID = v4;

  os_unfair_lock_unlock(&self->_internalLock);
}

@end