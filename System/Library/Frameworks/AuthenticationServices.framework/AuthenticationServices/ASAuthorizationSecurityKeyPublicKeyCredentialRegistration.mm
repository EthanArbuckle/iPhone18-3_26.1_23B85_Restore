@interface ASAuthorizationSecurityKeyPublicKeyCredentialRegistration
- (ASAuthorizationSecurityKeyPublicKeyCredentialRegistration)initWithCoder:(id)coder;
- (ASAuthorizationSecurityKeyPublicKeyCredentialRegistration)initWithCoreCredential:(id)credential;
- (id)_initWithBaseCredential:(id)credential rawAttestationObject:(id)object transports:(id)transports;
- (id)copyWithZone:(_NSZone *)zone;
- (void)encodeWithCoder:(id)coder;
@end

@implementation ASAuthorizationSecurityKeyPublicKeyCredentialRegistration

- (id)_initWithBaseCredential:(id)credential rawAttestationObject:(id)object transports:(id)transports
{
  credentialCopy = credential;
  objectCopy = object;
  transportsCopy = transports;
  v18.receiver = self;
  v18.super_class = ASAuthorizationSecurityKeyPublicKeyCredentialRegistration;
  v11 = [(ASAuthorizationSecurityKeyPublicKeyCredentialRegistration *)&v18 init];
  if (v11)
  {
    v12 = [credentialCopy copy];
    baseCredential = v11->_baseCredential;
    v11->_baseCredential = v12;

    objc_storeStrong(&v11->_rawAttestationObject, object);
    v14 = [transportsCopy copy];
    transports = v11->_transports;
    v11->_transports = v14;

    v16 = v11;
  }

  return v11;
}

- (ASAuthorizationSecurityKeyPublicKeyCredentialRegistration)initWithCoreCredential:(id)credential
{
  credentialCopy = credential;
  v5 = [ASPublicKeyCredentialBase alloc];
  credentialID = [credentialCopy credentialID];
  rawClientDataJSON = [credentialCopy rawClientDataJSON];
  attachment = [credentialCopy attachment];
  v9 = [(ASPublicKeyCredentialBase *)v5 initWithCredentialID:credentialID rawClientDataJSON:rawClientDataJSON attachment:[ASAuthorizationPublicKeyCredentialConstants publicAttachmentFromInternal:attachment]];

  attestationObject = [credentialCopy attestationObject];
  transports = [credentialCopy transports];

  v12 = [(ASAuthorizationSecurityKeyPublicKeyCredentialRegistration *)self _initWithBaseCredential:v9 rawAttestationObject:attestationObject transports:transports];
  return v12;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = objc_alloc(objc_opt_class());
  baseCredential = self->_baseCredential;
  rawAttestationObject = self->_rawAttestationObject;
  transports = self->_transports;

  return [v4 _initWithBaseCredential:baseCredential rawAttestationObject:rawAttestationObject transports:transports];
}

- (ASAuthorizationSecurityKeyPublicKeyCredentialRegistration)initWithCoder:(id)coder
{
  coderCopy = coder;
  v5 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"baseCredential"];
  v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"rawAttestationObject"];
  v7 = MEMORY[0x1E695DFD8];
  v8 = objc_opt_class();
  v9 = [v7 setWithObjects:{v8, objc_opt_class(), 0}];
  v10 = [coderCopy decodeObjectOfClasses:v9 forKey:@"transports"];

  v11 = [(ASAuthorizationSecurityKeyPublicKeyCredentialRegistration *)self _initWithBaseCredential:v5 rawAttestationObject:v6 transports:v10];
  return v11;
}

- (void)encodeWithCoder:(id)coder
{
  baseCredential = self->_baseCredential;
  coderCopy = coder;
  [coderCopy encodeObject:baseCredential forKey:@"baseCredential"];
  [coderCopy encodeObject:self->_rawAttestationObject forKey:@"rawAttestationObject"];
  [coderCopy encodeObject:self->_transports forKey:@"transports"];
}

@end