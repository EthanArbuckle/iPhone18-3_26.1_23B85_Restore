@interface ASAuthorizationPlatformPublicKeyCredentialDescriptor
- (ASAuthorizationPlatformPublicKeyCredentialDescriptor)initWithCoder:(id)coder;
- (ASAuthorizationPlatformPublicKeyCredentialDescriptor)initWithCredentialID:(NSData *)credentialID;
- (ASCPublicKeyCredentialDescriptor)coreDescriptor;
- (NSData)credentialID;
- (id)copyWithZone:(_NSZone *)zone;
- (void)encodeWithCoder:(id)coder;
- (void)setCredentialID:(id)d;
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

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = objc_alloc(objc_opt_class());
  credentialID = [(ASAuthorizationPlatformPublicKeyCredentialDescriptor *)self credentialID];
  v6 = [v4 initWithCredentialID:credentialID];

  return v6;
}

- (ASAuthorizationPlatformPublicKeyCredentialDescriptor)initWithCoder:(id)coder
{
  coderCopy = coder;
  v5 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"credentialID"];

  v6 = [(ASAuthorizationPlatformPublicKeyCredentialDescriptor *)self initWithCredentialID:v5];
  return v6;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  credentialID = [(ASAuthorizationPlatformPublicKeyCredentialDescriptor *)self credentialID];
  [coderCopy encodeObject:credentialID forKey:@"credentialID"];
}

- (NSData)credentialID
{
  os_unfair_lock_lock(&self->_internalLock);
  v3 = self->_credentialID;
  os_unfair_lock_unlock(&self->_internalLock);

  return v3;
}

- (void)setCredentialID:(id)d
{
  dCopy = d;
  os_unfair_lock_lock(&self->_internalLock);
  credentialID = self->_credentialID;
  self->_credentialID = dCopy;

  os_unfair_lock_unlock(&self->_internalLock);
}

@end