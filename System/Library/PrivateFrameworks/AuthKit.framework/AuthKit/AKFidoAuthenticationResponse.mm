@interface AKFidoAuthenticationResponse
- (AKFidoAuthenticationResponse)initWithAuthenticatorData:(id)data challengeString:(id)string relyingPartyIdentifier:(id)identifier signature:(id)signature clientData:(id)clientData credentialID:(id)d userIdentifier:(id)userIdentifier;
- (AKFidoAuthenticationResponse)initWithAuthenticatorDataString:(id)string challengeString:(id)challengeString relyingPartyIdentifier:(id)identifier signature:(id)signature clientDataString:(id)dataString credentialID:(id)d userIdentifier:(id)userIdentifier;
- (AKFidoAuthenticationResponse)initWithCoder:(id)coder;
- (id)copyWithZone:(_NSZone *)zone;
- (id)debugDescription;
- (void)encodeWithCoder:(id)coder;
@end

@implementation AKFidoAuthenticationResponse

- (AKFidoAuthenticationResponse)initWithAuthenticatorData:(id)data challengeString:(id)string relyingPartyIdentifier:(id)identifier signature:(id)signature clientData:(id)clientData credentialID:(id)d userIdentifier:(id)userIdentifier
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, data);
  v28 = 0;
  objc_storeStrong(&v28, string);
  v27 = 0;
  objc_storeStrong(&v27, identifier);
  v26 = 0;
  objc_storeStrong(&v26, signature);
  v25 = 0;
  objc_storeStrong(&v25, clientData);
  v24 = 0;
  objc_storeStrong(&v24, d);
  v23 = 0;
  objc_storeStrong(&v23, userIdentifier);
  v22 = [location[0] base64EncodedStringWithOptions:?];
  v21 = [v26 base64EncodedStringWithOptions:0];
  v20 = [v24 base64EncodedStringWithOptions:0];
  v19 = [v25 base64EncodedStringWithOptions:0];
  v9 = objc_alloc(MEMORY[0x1E696AEC0]);
  v18 = [v9 initWithData:v23 encoding:4];
  v10 = selfCopy;
  selfCopy = 0;
  selfCopy = [(AKFidoAuthenticationResponse *)v10 initWithAuthenticatorDataString:v22 challengeString:v28 relyingPartyIdentifier:v27 signature:v21 clientDataString:v19 credentialID:v20 userIdentifier:v18];
  v17 = MEMORY[0x1E69E5928](selfCopy);
  objc_storeStrong(&v18, 0);
  objc_storeStrong(&v19, 0);
  objc_storeStrong(&v20, 0);
  objc_storeStrong(&v21, 0);
  objc_storeStrong(&v22, 0);
  objc_storeStrong(&v23, 0);
  objc_storeStrong(&v24, 0);
  objc_storeStrong(&v25, 0);
  objc_storeStrong(&v26, 0);
  objc_storeStrong(&v27, 0);
  objc_storeStrong(&v28, 0);
  objc_storeStrong(location, 0);
  objc_storeStrong(&selfCopy, 0);
  return v17;
}

- (AKFidoAuthenticationResponse)initWithAuthenticatorDataString:(id)string challengeString:(id)challengeString relyingPartyIdentifier:(id)identifier signature:(id)signature clientDataString:(id)dataString credentialID:(id)d userIdentifier:(id)userIdentifier
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, string);
  v24 = 0;
  objc_storeStrong(&v24, challengeString);
  v23 = 0;
  objc_storeStrong(&v23, identifier);
  v22 = 0;
  objc_storeStrong(&v22, signature);
  v21 = 0;
  objc_storeStrong(&v21, dataString);
  v20 = 0;
  objc_storeStrong(&v20, d);
  v19 = 0;
  objc_storeStrong(&v19, userIdentifier);
  v9 = selfCopy;
  selfCopy = 0;
  v18.receiver = v9;
  v18.super_class = AKFidoAuthenticationResponse;
  v17 = [(AKFidoAuthenticationResponse *)&v18 init];
  selfCopy = v17;
  objc_storeStrong(&selfCopy, v17);
  if (v17)
  {
    objc_storeStrong(&selfCopy->_authenticatorData, location[0]);
    objc_storeStrong(&selfCopy->_signature, v22);
    objc_storeStrong(&selfCopy->_clientData, v21);
    objc_storeStrong(&selfCopy->_credentialID, v20);
    objc_storeStrong(&selfCopy->_userIdentifier, v19);
    objc_storeStrong(&selfCopy->_challenge, v24);
    objc_storeStrong(&selfCopy->_relyingPartyIdentifier, v23);
  }

  v11 = MEMORY[0x1E69E5928](selfCopy);
  objc_storeStrong(&v19, 0);
  objc_storeStrong(&v20, 0);
  objc_storeStrong(&v21, 0);
  objc_storeStrong(&v22, 0);
  objc_storeStrong(&v23, 0);
  objc_storeStrong(&v24, 0);
  objc_storeStrong(location, 0);
  objc_storeStrong(&selfCopy, 0);
  return v11;
}

- (AKFidoAuthenticationResponse)initWithCoder:(id)coder
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, coder);
  v12 = [location[0] decodeObjectOfClass:objc_opt_class() forKey:@"_authenticatorData"];
  v11 = [location[0] decodeObjectOfClass:objc_opt_class() forKey:@"_signature"];
  v10 = [location[0] decodeObjectOfClass:objc_opt_class() forKey:@"_credentialName"];
  v9 = [location[0] decodeObjectOfClass:objc_opt_class() forKey:@"_clientData"];
  v8 = [location[0] decodeObjectOfClass:objc_opt_class() forKey:@"_userIdentifier"];
  v7 = [location[0] decodeObjectOfClass:objc_opt_class() forKey:@"_challenge"];
  v6 = [location[0] decodeObjectOfClass:objc_opt_class() forKey:@"_relyingPartyIdentifier"];
  v3 = selfCopy;
  selfCopy = 0;
  selfCopy = [(AKFidoAuthenticationResponse *)v3 initWithAuthenticatorDataString:v12 challengeString:v7 relyingPartyIdentifier:v6 signature:v11 clientDataString:v9 credentialID:v10 userIdentifier:v8];
  v5 = MEMORY[0x1E69E5928](selfCopy);
  objc_storeStrong(&v6, 0);
  objc_storeStrong(&v7, 0);
  objc_storeStrong(&v8, 0);
  objc_storeStrong(&v9, 0);
  objc_storeStrong(&v10, 0);
  objc_storeStrong(&v11, 0);
  objc_storeStrong(&v12, 0);
  objc_storeStrong(location, 0);
  objc_storeStrong(&selfCopy, 0);
  return v5;
}

- (void)encodeWithCoder:(id)coder
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, coder);
  [location[0] encodeObject:selfCopy->_authenticatorData forKey:@"_authenticatorData"];
  [location[0] encodeObject:selfCopy->_signature forKey:@"_signature"];
  [location[0] encodeObject:selfCopy->_credentialID forKey:@"_credentialName"];
  [location[0] encodeObject:selfCopy->_clientData forKey:@"_clientData"];
  [location[0] encodeObject:selfCopy->_userIdentifier forKey:@"_userIdentifier"];
  [location[0] encodeObject:selfCopy->_challenge forKey:@"_challenge"];
  [location[0] encodeObject:selfCopy->_relyingPartyIdentifier forKey:@"_relyingPartyIdentifier"];
  objc_storeStrong(location, 0);
}

- (id)copyWithZone:(_NSZone *)zone
{
  selfCopy = self;
  v19[2] = a2;
  v19[1] = zone;
  v19[0] = objc_alloc_init(objc_opt_class());
  v3 = [(NSString *)selfCopy->_authenticatorData copy];
  v4 = *(v19[0] + 6);
  *(v19[0] + 6) = v3;
  MEMORY[0x1E69E5920](v4);
  v5 = [(NSString *)selfCopy->_signature copy];
  v6 = *(v19[0] + 7);
  *(v19[0] + 7) = v5;
  MEMORY[0x1E69E5920](v6);
  v7 = [(NSString *)selfCopy->_credentialID copy];
  v8 = *(v19[0] + 2);
  *(v19[0] + 2) = v7;
  MEMORY[0x1E69E5920](v8);
  v9 = [(NSString *)selfCopy->_clientData copy];
  v10 = *(v19[0] + 1);
  *(v19[0] + 1) = v9;
  MEMORY[0x1E69E5920](v10);
  v11 = [(NSString *)selfCopy->_userIdentifier copy];
  v12 = *(v19[0] + 3);
  *(v19[0] + 3) = v11;
  MEMORY[0x1E69E5920](v12);
  v13 = [(NSString *)selfCopy->_challenge copy];
  v14 = *(v19[0] + 4);
  *(v19[0] + 4) = v13;
  MEMORY[0x1E69E5920](v14);
  v15 = [(NSString *)selfCopy->_relyingPartyIdentifier copy];
  v16 = *(v19[0] + 5);
  *(v19[0] + 5) = v15;
  MEMORY[0x1E69E5920](v16);
  v18 = MEMORY[0x1E69E5928](v19[0]);
  objc_storeStrong(v19, 0);
  return v18;
}

- (id)debugDescription
{
  v4 = MEMORY[0x1E696AEC0];
  v2 = objc_opt_class();
  v5 = NSStringFromClass(v2);
  v6 = [v4 stringWithFormat:@"<%@: %p {\n\tAuthenticatorData: %@, \n\tSignature: %@, \n\tCredentialID: %@, \n\tClientData: %@, \n\tUserIdentifier: %@, \n\tChallenge: %@, \n\tRelyingPartyIdentifier: %@, \n}>", v5, self, self->_authenticatorData, self->_signature, self->_credentialID, self->_clientData, self->_userIdentifier, self->_challenge, self->_relyingPartyIdentifier];
  MEMORY[0x1E69E5920](v5);

  return v6;
}

@end