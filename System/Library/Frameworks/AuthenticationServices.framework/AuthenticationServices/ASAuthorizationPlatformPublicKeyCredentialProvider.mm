@interface ASAuthorizationPlatformPublicKeyCredentialProvider
- (ASAuthorizationPlatformPublicKeyCredentialAssertionRequest)createCredentialAssertionRequestWithChallenge:(NSData *)challenge;
- (ASAuthorizationPlatformPublicKeyCredentialProvider)initWithRelyingPartyIdentifier:(NSString *)relyingPartyIdentifier;
- (ASAuthorizationPlatformPublicKeyCredentialRegistrationRequest)createCredentialRegistrationRequestWithChallenge:(NSData *)challenge name:(NSString *)name userID:(NSData *)userID;
- (id)createCredentialAssertionRequestWithClientData:(id)a3;
- (id)createCredentialRegistrationRequestWithChallenge:(id)a3 name:(id)a4 userID:(id)a5 requestStyle:(int64_t)a6;
- (id)createCredentialRegistrationRequestWithClientData:(id)a3 name:(id)a4 userID:(id)a5;
- (id)createCredentialRegistrationRequestWithClientData:(id)a3 name:(id)a4 userID:(id)a5 requestStyle:(int64_t)a6;
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

- (id)createCredentialAssertionRequestWithClientData:(id)a3
{
  v4 = a3;
  v5 = [[ASAuthorizationPlatformPublicKeyCredentialAssertionRequest alloc] _initWithProvider:self relyingPartyIdentifier:self->_relyingPartyIdentifier challenge:0 clientData:v4];

  return v5;
}

- (id)createCredentialRegistrationRequestWithClientData:(id)a3 name:(id)a4 userID:(id)a5
{
  v8 = a5;
  v9 = a4;
  v10 = a3;
  v11 = [[ASAuthorizationPlatformPublicKeyCredentialRegistrationRequest alloc] _initWithProvider:self relyingPartyIdentifier:self->_relyingPartyIdentifier challenge:0 name:v9 userID:v8 clientData:v10 requestStyle:0];

  return v11;
}

- (id)createCredentialRegistrationRequestWithClientData:(id)a3 name:(id)a4 userID:(id)a5 requestStyle:(int64_t)a6
{
  v10 = a5;
  v11 = a4;
  v12 = a3;
  v13 = [[ASAuthorizationPlatformPublicKeyCredentialRegistrationRequest alloc] _initWithProvider:self relyingPartyIdentifier:self->_relyingPartyIdentifier challenge:0 name:v11 userID:v10 clientData:v12 requestStyle:a6];

  return v13;
}

- (id)createCredentialRegistrationRequestWithChallenge:(id)a3 name:(id)a4 userID:(id)a5 requestStyle:(int64_t)a6
{
  v10 = a5;
  v11 = a4;
  v12 = a3;
  v13 = [[ASAuthorizationPlatformPublicKeyCredentialRegistrationRequest alloc] _initWithProvider:self relyingPartyIdentifier:self->_relyingPartyIdentifier challenge:v12 name:v11 userID:v10 clientData:0 requestStyle:a6];

  return v13;
}

@end