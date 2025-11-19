@interface ASAuthorizationSecurityKeyPublicKeyCredentialRegistration
- (ASAuthorizationSecurityKeyPublicKeyCredentialRegistration)initWithCoder:(id)a3;
- (ASAuthorizationSecurityKeyPublicKeyCredentialRegistration)initWithCoreCredential:(id)a3;
- (id)_initWithBaseCredential:(id)a3 rawAttestationObject:(id)a4 transports:(id)a5;
- (id)copyWithZone:(_NSZone *)a3;
- (void)encodeWithCoder:(id)a3;
@end

@implementation ASAuthorizationSecurityKeyPublicKeyCredentialRegistration

- (id)_initWithBaseCredential:(id)a3 rawAttestationObject:(id)a4 transports:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v18.receiver = self;
  v18.super_class = ASAuthorizationSecurityKeyPublicKeyCredentialRegistration;
  v11 = [(ASAuthorizationSecurityKeyPublicKeyCredentialRegistration *)&v18 init];
  if (v11)
  {
    v12 = [v8 copy];
    baseCredential = v11->_baseCredential;
    v11->_baseCredential = v12;

    objc_storeStrong(&v11->_rawAttestationObject, a4);
    v14 = [v10 copy];
    transports = v11->_transports;
    v11->_transports = v14;

    v16 = v11;
  }

  return v11;
}

- (ASAuthorizationSecurityKeyPublicKeyCredentialRegistration)initWithCoreCredential:(id)a3
{
  v4 = a3;
  v5 = [ASPublicKeyCredentialBase alloc];
  v6 = [v4 credentialID];
  v7 = [v4 rawClientDataJSON];
  v8 = [v4 attachment];
  v9 = [(ASPublicKeyCredentialBase *)v5 initWithCredentialID:v6 rawClientDataJSON:v7 attachment:[ASAuthorizationPublicKeyCredentialConstants publicAttachmentFromInternal:v8]];

  v10 = [v4 attestationObject];
  v11 = [v4 transports];

  v12 = [(ASAuthorizationSecurityKeyPublicKeyCredentialRegistration *)self _initWithBaseCredential:v9 rawAttestationObject:v10 transports:v11];
  return v12;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = objc_alloc(objc_opt_class());
  baseCredential = self->_baseCredential;
  rawAttestationObject = self->_rawAttestationObject;
  transports = self->_transports;

  return [v4 _initWithBaseCredential:baseCredential rawAttestationObject:rawAttestationObject transports:transports];
}

- (ASAuthorizationSecurityKeyPublicKeyCredentialRegistration)initWithCoder:(id)a3
{
  v4 = a3;
  v5 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"baseCredential"];
  v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"rawAttestationObject"];
  v7 = MEMORY[0x1E695DFD8];
  v8 = objc_opt_class();
  v9 = [v7 setWithObjects:{v8, objc_opt_class(), 0}];
  v10 = [v4 decodeObjectOfClasses:v9 forKey:@"transports"];

  v11 = [(ASAuthorizationSecurityKeyPublicKeyCredentialRegistration *)self _initWithBaseCredential:v5 rawAttestationObject:v6 transports:v10];
  return v11;
}

- (void)encodeWithCoder:(id)a3
{
  baseCredential = self->_baseCredential;
  v5 = a3;
  [v5 encodeObject:baseCredential forKey:@"baseCredential"];
  [v5 encodeObject:self->_rawAttestationObject forKey:@"rawAttestationObject"];
  [v5 encodeObject:self->_transports forKey:@"transports"];
}

@end