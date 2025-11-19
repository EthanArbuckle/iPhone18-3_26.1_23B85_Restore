@interface ASAuthorizationSecurityKeyPublicKeyCredentialProvider
- (ASAuthorizationSecurityKeyPublicKeyCredentialAssertionRequest)createCredentialAssertionRequestWithChallenge:(NSData *)challenge;
- (ASAuthorizationSecurityKeyPublicKeyCredentialProvider)initWithRelyingPartyIdentifier:(NSString *)relyingPartyIdentifier;
- (ASAuthorizationSecurityKeyPublicKeyCredentialRegistrationRequest)createCredentialRegistrationRequestWithChallenge:(NSData *)challenge displayName:(NSString *)displayName name:(NSString *)name userID:(NSData *)userID;
- (id)createCredentialAssertionRequestWithClientData:(id)a3;
- (id)createCredentialRegistrationRequestWithClientData:(id)a3 displayName:(id)a4 name:(id)a5 userID:(id)a6;
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

- (id)createCredentialAssertionRequestWithClientData:(id)a3
{
  v4 = a3;
  v5 = [[ASAuthorizationSecurityKeyPublicKeyCredentialAssertionRequest alloc] _initWithProvider:self relyingPartyIdentifier:self->_relyingPartyIdentifier challenge:0 clientData:v4];

  return v5;
}

- (id)createCredentialRegistrationRequestWithClientData:(id)a3 displayName:(id)a4 name:(id)a5 userID:(id)a6
{
  v10 = a6;
  v11 = a5;
  v12 = a4;
  v13 = a3;
  v14 = [[ASAuthorizationSecurityKeyPublicKeyCredentialRegistrationRequest alloc] _initWithProvider:self relyingPartyIdentifier:self->_relyingPartyIdentifier challenge:0 displayName:v12 name:v11 userID:v10 clientData:v13];

  return v14;
}

@end