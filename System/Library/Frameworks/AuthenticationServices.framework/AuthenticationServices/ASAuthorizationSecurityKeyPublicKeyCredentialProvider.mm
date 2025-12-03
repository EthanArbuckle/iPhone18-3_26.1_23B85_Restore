@interface ASAuthorizationSecurityKeyPublicKeyCredentialProvider
- (ASAuthorizationSecurityKeyPublicKeyCredentialAssertionRequest)createCredentialAssertionRequestWithChallenge:(NSData *)challenge;
- (ASAuthorizationSecurityKeyPublicKeyCredentialProvider)initWithRelyingPartyIdentifier:(NSString *)relyingPartyIdentifier;
- (ASAuthorizationSecurityKeyPublicKeyCredentialRegistrationRequest)createCredentialRegistrationRequestWithChallenge:(NSData *)challenge displayName:(NSString *)displayName name:(NSString *)name userID:(NSData *)userID;
- (id)createCredentialAssertionRequestWithClientData:(id)data;
- (id)createCredentialRegistrationRequestWithClientData:(id)data displayName:(id)name name:(id)a5 userID:(id)d;
@end

@implementation ASAuthorizationSecurityKeyPublicKeyCredentialProvider

- (ASAuthorizationSecurityKeyPublicKeyCredentialProvider)initWithRelyingPartyIdentifier:(NSString *)relyingPartyIdentifier
{
  v4 = relyingPartyIdentifier;
  v10.receiver = self;
  v10.super_class = ASAuthorizationSecurityKeyPublicKeyCredentialProvider;
  v5 = [(ASAuthorizationSecurityKeyPublicKeyCredentialProvider *)&v10 init];
  if (v5)
  {
    v6 = [(NSString *)v4 copy];
    v7 = v5->_relyingPartyIdentifier;
    v5->_relyingPartyIdentifier = v6;

    v8 = v5;
  }

  return v5;
}

- (ASAuthorizationSecurityKeyPublicKeyCredentialRegistrationRequest)createCredentialRegistrationRequestWithChallenge:(NSData *)challenge displayName:(NSString *)displayName name:(NSString *)name userID:(NSData *)userID
{
  v10 = userID;
  v11 = name;
  v12 = displayName;
  v13 = challenge;
  v14 = [[ASAuthorizationSecurityKeyPublicKeyCredentialRegistrationRequest alloc] _initWithProvider:self relyingPartyIdentifier:self->_relyingPartyIdentifier challenge:v13 displayName:v12 name:v11 userID:v10 clientData:0];

  return v14;
}

- (ASAuthorizationSecurityKeyPublicKeyCredentialAssertionRequest)createCredentialAssertionRequestWithChallenge:(NSData *)challenge
{
  v4 = challenge;
  v5 = [[ASAuthorizationSecurityKeyPublicKeyCredentialAssertionRequest alloc] _initWithProvider:self relyingPartyIdentifier:self->_relyingPartyIdentifier challenge:v4 clientData:0];

  return v5;
}

- (id)createCredentialAssertionRequestWithClientData:(id)data
{
  dataCopy = data;
  v5 = [[ASAuthorizationSecurityKeyPublicKeyCredentialAssertionRequest alloc] _initWithProvider:self relyingPartyIdentifier:self->_relyingPartyIdentifier challenge:0 clientData:dataCopy];

  return v5;
}

- (id)createCredentialRegistrationRequestWithClientData:(id)data displayName:(id)name name:(id)a5 userID:(id)d
{
  dCopy = d;
  v11 = a5;
  nameCopy = name;
  dataCopy = data;
  v14 = [[ASAuthorizationSecurityKeyPublicKeyCredentialRegistrationRequest alloc] _initWithProvider:self relyingPartyIdentifier:self->_relyingPartyIdentifier challenge:0 displayName:nameCopy name:v11 userID:dCopy clientData:dataCopy];

  return v14;
}

@end