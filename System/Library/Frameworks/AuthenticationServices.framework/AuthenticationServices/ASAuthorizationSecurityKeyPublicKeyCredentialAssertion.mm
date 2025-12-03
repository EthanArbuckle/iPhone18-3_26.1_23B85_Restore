@interface ASAuthorizationSecurityKeyPublicKeyCredentialAssertion
- (ASAuthorizationSecurityKeyPublicKeyCredentialAssertion)initWithCoder:(id)coder;
- (ASAuthorizationSecurityKeyPublicKeyCredentialAssertion)initWithCoreCredential:(id)credential;
- (id)_initWithBaseCredential:(id)credential userID:(id)d signature:(id)signature rawAuthenticatorData:(id)data appID:(BOOL)iD;
- (id)copyWithZone:(_NSZone *)zone;
- (void)encodeWithCoder:(id)coder;
@end

@implementation ASAuthorizationSecurityKeyPublicKeyCredentialAssertion

- (id)_initWithBaseCredential:(id)credential userID:(id)d signature:(id)signature rawAuthenticatorData:(id)data appID:(BOOL)iD
{
  credentialCopy = credential;
  dCopy = d;
  signatureCopy = signature;
  dataCopy = data;
  v27.receiver = self;
  v27.super_class = ASAuthorizationSecurityKeyPublicKeyCredentialAssertion;
  v16 = [(ASAuthorizationSecurityKeyPublicKeyCredentialAssertion *)&v27 init];
  if (v16)
  {
    v17 = [credentialCopy copy];
    baseCredential = v16->_baseCredential;
    v16->_baseCredential = v17;

    v19 = [dataCopy copy];
    rawAuthenticatorData = v16->_rawAuthenticatorData;
    v16->_rawAuthenticatorData = v19;

    v21 = [dCopy copy];
    userID = v16->_userID;
    v16->_userID = v21;

    v23 = [signatureCopy copy];
    signature = v16->_signature;
    v16->_signature = v23;

    v16->_appID = iD;
    v25 = v16;
  }

  return v16;
}

- (ASAuthorizationSecurityKeyPublicKeyCredentialAssertion)initWithCoreCredential:(id)credential
{
  credentialCopy = credential;
  v5 = [ASPublicKeyCredentialBase alloc];
  credentialID = [credentialCopy credentialID];
  rawClientDataJSON = [credentialCopy rawClientDataJSON];
  attachment = [credentialCopy attachment];
  v9 = [(ASPublicKeyCredentialBase *)v5 initWithCredentialID:credentialID rawClientDataJSON:rawClientDataJSON attachment:[ASAuthorizationPublicKeyCredentialConstants publicAttachmentFromInternal:attachment]];

  userHandle = [credentialCopy userHandle];
  signature = [credentialCopy signature];
  authenticatorData = [credentialCopy authenticatorData];
  appID = [credentialCopy appID];

  v14 = [(ASAuthorizationSecurityKeyPublicKeyCredentialAssertion *)self _initWithBaseCredential:v9 userID:userHandle signature:signature rawAuthenticatorData:authenticatorData appID:appID];
  return v14;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = objc_alloc(objc_opt_class());
  baseCredential = self->_baseCredential;
  userID = self->_userID;
  signature = self->_signature;
  rawAuthenticatorData = self->_rawAuthenticatorData;
  appID = self->_appID;

  return [v4 _initWithBaseCredential:baseCredential userID:userID signature:signature rawAuthenticatorData:rawAuthenticatorData appID:appID];
}

- (ASAuthorizationSecurityKeyPublicKeyCredentialAssertion)initWithCoder:(id)coder
{
  coderCopy = coder;
  v5 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"baseCredential"];
  v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"userID"];
  v7 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"signature"];
  v8 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"rawAuthenticatorData"];
  v9 = [coderCopy decodeBoolForKey:@"appID"];

  v10 = [(ASAuthorizationSecurityKeyPublicKeyCredentialAssertion *)self _initWithBaseCredential:v5 userID:v6 signature:v7 rawAuthenticatorData:v8 appID:v9];
  return v10;
}

- (void)encodeWithCoder:(id)coder
{
  baseCredential = self->_baseCredential;
  coderCopy = coder;
  [coderCopy encodeObject:baseCredential forKey:@"baseCredential"];
  [coderCopy encodeObject:self->_rawAuthenticatorData forKey:@"rawAuthenticatorData"];
  [coderCopy encodeObject:self->_userID forKey:@"userID"];
  [coderCopy encodeObject:self->_signature forKey:@"signature"];
  [coderCopy encodeBool:self->_appID forKey:@"appID"];
}

@end