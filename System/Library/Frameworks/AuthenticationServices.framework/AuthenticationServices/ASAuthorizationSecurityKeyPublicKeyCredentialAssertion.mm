@interface ASAuthorizationSecurityKeyPublicKeyCredentialAssertion
- (ASAuthorizationSecurityKeyPublicKeyCredentialAssertion)initWithCoder:(id)a3;
- (ASAuthorizationSecurityKeyPublicKeyCredentialAssertion)initWithCoreCredential:(id)a3;
- (id)_initWithBaseCredential:(id)a3 userID:(id)a4 signature:(id)a5 rawAuthenticatorData:(id)a6 appID:(BOOL)a7;
- (id)copyWithZone:(_NSZone *)a3;
- (void)encodeWithCoder:(id)a3;
@end

@implementation ASAuthorizationSecurityKeyPublicKeyCredentialAssertion

- (id)_initWithBaseCredential:(id)a3 userID:(id)a4 signature:(id)a5 rawAuthenticatorData:(id)a6 appID:(BOOL)a7
{
  v12 = a3;
  v13 = a4;
  v14 = a5;
  v15 = a6;
  v27.receiver = self;
  v27.super_class = ASAuthorizationSecurityKeyPublicKeyCredentialAssertion;
  v16 = [(ASAuthorizationSecurityKeyPublicKeyCredentialAssertion *)&v27 init];
  if (v16)
  {
    v17 = [v12 copy];
    baseCredential = v16->_baseCredential;
    v16->_baseCredential = v17;

    v19 = [v15 copy];
    rawAuthenticatorData = v16->_rawAuthenticatorData;
    v16->_rawAuthenticatorData = v19;

    v21 = [v13 copy];
    userID = v16->_userID;
    v16->_userID = v21;

    v23 = [v14 copy];
    signature = v16->_signature;
    v16->_signature = v23;

    v16->_appID = a7;
    v25 = v16;
  }

  return v16;
}

- (ASAuthorizationSecurityKeyPublicKeyCredentialAssertion)initWithCoreCredential:(id)a3
{
  v4 = a3;
  v5 = [ASPublicKeyCredentialBase alloc];
  v6 = [v4 credentialID];
  v7 = [v4 rawClientDataJSON];
  v8 = [v4 attachment];
  v9 = [(ASPublicKeyCredentialBase *)v5 initWithCredentialID:v6 rawClientDataJSON:v7 attachment:[ASAuthorizationPublicKeyCredentialConstants publicAttachmentFromInternal:v8]];

  v10 = [v4 userHandle];
  v11 = [v4 signature];
  v12 = [v4 authenticatorData];
  v13 = [v4 appID];

  v14 = [(ASAuthorizationSecurityKeyPublicKeyCredentialAssertion *)self _initWithBaseCredential:v9 userID:v10 signature:v11 rawAuthenticatorData:v12 appID:v13];
  return v14;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = objc_alloc(objc_opt_class());
  baseCredential = self->_baseCredential;
  userID = self->_userID;
  signature = self->_signature;
  rawAuthenticatorData = self->_rawAuthenticatorData;
  appID = self->_appID;

  return [v4 _initWithBaseCredential:baseCredential userID:userID signature:signature rawAuthenticatorData:rawAuthenticatorData appID:appID];
}

- (ASAuthorizationSecurityKeyPublicKeyCredentialAssertion)initWithCoder:(id)a3
{
  v4 = a3;
  v5 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"baseCredential"];
  v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"userID"];
  v7 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"signature"];
  v8 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"rawAuthenticatorData"];
  v9 = [v4 decodeBoolForKey:@"appID"];

  v10 = [(ASAuthorizationSecurityKeyPublicKeyCredentialAssertion *)self _initWithBaseCredential:v5 userID:v6 signature:v7 rawAuthenticatorData:v8 appID:v9];
  return v10;
}

- (void)encodeWithCoder:(id)a3
{
  baseCredential = self->_baseCredential;
  v5 = a3;
  [v5 encodeObject:baseCredential forKey:@"baseCredential"];
  [v5 encodeObject:self->_rawAuthenticatorData forKey:@"rawAuthenticatorData"];
  [v5 encodeObject:self->_userID forKey:@"userID"];
  [v5 encodeObject:self->_signature forKey:@"signature"];
  [v5 encodeBool:self->_appID forKey:@"appID"];
}

@end