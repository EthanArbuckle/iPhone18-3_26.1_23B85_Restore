@interface ASAuthorizationSecurityKeyPublicKeyCredentialDescriptor
- (ASAuthorizationSecurityKeyPublicKeyCredentialDescriptor)initWithCoder:(id)a3;
- (ASAuthorizationSecurityKeyPublicKeyCredentialDescriptor)initWithCredentialID:(NSData *)credentialID transports:(NSArray *)allowedTransports;
- (ASCPublicKeyCredentialDescriptor)coreDescriptor;
- (NSArray)transports;
- (NSData)credentialID;
- (id)copyWithZone:(_NSZone *)a3;
- (void)encodeWithCoder:(id)a3;
- (void)setCredentialID:(id)a3;
- (void)setTransports:(NSArray *)transports;
@end

@implementation ASAuthorizationSecurityKeyPublicKeyCredentialDescriptor

- (ASAuthorizationSecurityKeyPublicKeyCredentialDescriptor)initWithCredentialID:(NSData *)credentialID transports:(NSArray *)allowedTransports
{
  v6 = credentialID;
  v7 = allowedTransports;
  v15.receiver = self;
  v15.super_class = ASAuthorizationSecurityKeyPublicKeyCredentialDescriptor;
  v8 = [(ASAuthorizationSecurityKeyPublicKeyCredentialDescriptor *)&v15 init];
  if (v8)
  {
    v9 = [(NSData *)v6 copy];
    v10 = v8->_credentialID;
    v8->_credentialID = v9;

    v11 = [(NSArray *)v7 copy];
    transports = v8->_transports;
    v8->_transports = v11;

    v8->_internalLock._os_unfair_lock_opaque = 0;
    v13 = v8;
  }

  return v8;
}

- (ASCPublicKeyCredentialDescriptor)coreDescriptor
{
  v2 = [objc_alloc(MEMORY[0x1E698E000]) initWithCredentialID:self->_credentialID transports:self->_transports];

  return v2;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = objc_alloc(objc_opt_class());
  v5 = [(ASAuthorizationSecurityKeyPublicKeyCredentialDescriptor *)self credentialID];
  v6 = [(ASAuthorizationSecurityKeyPublicKeyCredentialDescriptor *)self transports];
  v7 = [v4 initWithCredentialID:v5 transports:v6];

  return v7;
}

- (ASAuthorizationSecurityKeyPublicKeyCredentialDescriptor)initWithCoder:(id)a3
{
  v4 = a3;
  v5 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"credentialID"];
  v6 = MEMORY[0x1E695DFD8];
  v7 = objc_opt_class();
  v8 = [v6 setWithObjects:{v7, objc_opt_class(), 0}];
  v9 = [v4 decodeObjectOfClasses:v8 forKey:@"transports"];

  v10 = [(ASAuthorizationSecurityKeyPublicKeyCredentialDescriptor *)self initWithCredentialID:v5 transports:v9];
  return v10;
}

- (void)encodeWithCoder:(id)a3
{
  v4 = a3;
  v5 = [(ASAuthorizationSecurityKeyPublicKeyCredentialDescriptor *)self credentialID];
  [v4 encodeObject:v5 forKey:@"credentialID"];

  v6 = [(ASAuthorizationSecurityKeyPublicKeyCredentialDescriptor *)self transports];
  [v4 encodeObject:v6 forKey:@"transports"];
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

- (NSArray)transports
{
  os_unfair_lock_lock(&self->_internalLock);
  v3 = self->_transports;
  os_unfair_lock_unlock(&self->_internalLock);

  return v3;
}

- (void)setTransports:(NSArray *)transports
{
  v4 = transports;
  os_unfair_lock_lock(&self->_internalLock);
  v5 = self->_transports;
  self->_transports = v4;

  os_unfair_lock_unlock(&self->_internalLock);
}

@end