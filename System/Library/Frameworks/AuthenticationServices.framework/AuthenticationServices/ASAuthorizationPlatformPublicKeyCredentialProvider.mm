@interface ASAuthorizationPlatformPublicKeyCredentialProvider
- (ASAuthorizationPlatformPublicKeyCredentialAssertionRequest)createCredentialAssertionRequestWithChallenge:(NSData *)challenge;
- (ASAuthorizationPlatformPublicKeyCredentialProvider)initWithRelyingPartyIdentifier:(NSString *)relyingPartyIdentifier;
- (ASAuthorizationPlatformPublicKeyCredentialRegistrationRequest)createCredentialRegistrationRequestWithChallenge:(NSData *)challenge name:(NSString *)name userID:(NSData *)userID;
- (id)createCredentialAssertionRequestWithClientData:(id)data;
- (id)createCredentialRegistrationRequestWithChallenge:(id)challenge name:(id)name userID:(id)d requestStyle:(int64_t)style;
- (id)createCredentialRegistrationRequestWithClientData:(id)data name:(id)name userID:(id)d;
- (id)createCredentialRegistrationRequestWithClientData:(id)data name:(id)name userID:(id)d requestStyle:(int64_t)style;
@end

@implementation ASAuthorizationPlatformPublicKeyCredentialProvider

- (ASAuthorizationPlatformPublicKeyCredentialProvider)initWithRelyingPartyIdentifier:(NSString *)relyingPartyIdentifier
{
  v4 = relyingPartyIdentifier;
  v10.receiver = self;
  v10.super_class = ASAuthorizationPlatformPublicKeyCredentialProvider;
  v5 = [(ASAuthorizationPlatformPublicKeyCredentialProvider *)&v10 init];
  if (v5)
  {
    v6 = [(NSString *)v4 copy];
    v7 = v5->_relyingPartyIdentifier;
    v5->_relyingPartyIdentifier = v6;

    v8 = v5;
  }

  return v5;
}

- (ASAuthorizationPlatformPublicKeyCredentialAssertionRequest)createCredentialAssertionRequestWithChallenge:(NSData *)challenge
{
  v4 = challenge;
  v5 = [[ASAuthorizationPlatformPublicKeyCredentialAssertionRequest alloc] _initWithProvider:self relyingPartyIdentifier:self->_relyingPartyIdentifier challenge:v4 clientData:0];

  return v5;
}

- (ASAuthorizationPlatformPublicKeyCredentialRegistrationRequest)createCredentialRegistrationRequestWithChallenge:(NSData *)challenge name:(NSString *)name userID:(NSData *)userID
{
  v8 = userID;
  v9 = name;
  v10 = challenge;
  v11 = [[ASAuthorizationPlatformPublicKeyCredentialRegistrationRequest alloc] _initWithProvider:self relyingPartyIdentifier:self->_relyingPartyIdentifier challenge:v10 name:v9 userID:v8 clientData:0 requestStyle:0];

  return v11;
}

- (id)createCredentialAssertionRequestWithClientData:(id)data
{
  dataCopy = data;
  v5 = [[ASAuthorizationPlatformPublicKeyCredentialAssertionRequest alloc] _initWithProvider:self relyingPartyIdentifier:self->_relyingPartyIdentifier challenge:0 clientData:dataCopy];

  return v5;
}

- (id)createCredentialRegistrationRequestWithClientData:(id)data name:(id)name userID:(id)d
{
  dCopy = d;
  nameCopy = name;
  dataCopy = data;
  v11 = [[ASAuthorizationPlatformPublicKeyCredentialRegistrationRequest alloc] _initWithProvider:self relyingPartyIdentifier:self->_relyingPartyIdentifier challenge:0 name:nameCopy userID:dCopy clientData:dataCopy requestStyle:0];

  return v11;
}

- (id)createCredentialRegistrationRequestWithClientData:(id)data name:(id)name userID:(id)d requestStyle:(int64_t)style
{
  dCopy = d;
  nameCopy = name;
  dataCopy = data;
  v13 = [[ASAuthorizationPlatformPublicKeyCredentialRegistrationRequest alloc] _initWithProvider:self relyingPartyIdentifier:self->_relyingPartyIdentifier challenge:0 name:nameCopy userID:dCopy clientData:dataCopy requestStyle:style];

  return v13;
}

- (id)createCredentialRegistrationRequestWithChallenge:(id)challenge name:(id)name userID:(id)d requestStyle:(int64_t)style
{
  dCopy = d;
  nameCopy = name;
  challengeCopy = challenge;
  v13 = [[ASAuthorizationPlatformPublicKeyCredentialRegistrationRequest alloc] _initWithProvider:self relyingPartyIdentifier:self->_relyingPartyIdentifier challenge:challengeCopy name:nameCopy userID:dCopy clientData:0 requestStyle:style];

  return v13;
}

@end