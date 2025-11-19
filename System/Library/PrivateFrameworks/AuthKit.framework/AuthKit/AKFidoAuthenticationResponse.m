@interface AKFidoAuthenticationResponse
- (AKFidoAuthenticationResponse)initWithAuthenticatorData:(id)a3 challengeString:(id)a4 relyingPartyIdentifier:(id)a5 signature:(id)a6 clientData:(id)a7 credentialID:(id)a8 userIdentifier:(id)a9;
- (AKFidoAuthenticationResponse)initWithAuthenticatorDataString:(id)a3 challengeString:(id)a4 relyingPartyIdentifier:(id)a5 signature:(id)a6 clientDataString:(id)a7 credentialID:(id)a8 userIdentifier:(id)a9;
- (AKFidoAuthenticationResponse)initWithCoder:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (id)debugDescription;
- (void)encodeWithCoder:(id)a3;
@end

@implementation AKFidoAuthenticationResponse

- (AKFidoAuthenticationResponse)initWithAuthenticatorData:(id)a3 challengeString:(id)a4 relyingPartyIdentifier:(id)a5 signature:(id)a6 clientData:(id)a7 credentialID:(id)a8 userIdentifier:(id)a9
{
  v30 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  v28 = 0;
  objc_storeStrong(&v28, a4);
  v27 = 0;
  objc_storeStrong(&v27, a5);
  v26 = 0;
  objc_storeStrong(&v26, a6);
  v25 = 0;
  objc_storeStrong(&v25, a7);
  v24 = 0;
  objc_storeStrong(&v24, a8);
  v23 = 0;
  objc_storeStrong(&v23, a9);
  v22 = [location[0] base64EncodedStringWithOptions:?];
  v21 = [v26 base64EncodedStringWithOptions:0];
  v20 = [v24 base64EncodedStringWithOptions:0];
  v19 = [v25 base64EncodedStringWithOptions:0];
  v9 = objc_alloc(MEMORY[0x1E696AEC0]);
  v18 = [v9 initWithData:v23 encoding:4];
  v10 = v30;
  v30 = 0;
  v30 = [(AKFidoAuthenticationResponse *)v10 initWithAuthenticatorDataString:v22 challengeString:v28 relyingPartyIdentifier:v27 signature:v21 clientDataString:v19 credentialID:v20 userIdentifier:v18];
  v17 = MEMORY[0x1E69E5928](v30);
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
  objc_storeStrong(&v30, 0);
  return v17;
}

- (AKFidoAuthenticationResponse)initWithAuthenticatorDataString:(id)a3 challengeString:(id)a4 relyingPartyIdentifier:(id)a5 signature:(id)a6 clientDataString:(id)a7 credentialID:(id)a8 userIdentifier:(id)a9
{
  v26 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  v24 = 0;
  objc_storeStrong(&v24, a4);
  v23 = 0;
  objc_storeStrong(&v23, a5);
  v22 = 0;
  objc_storeStrong(&v22, a6);
  v21 = 0;
  objc_storeStrong(&v21, a7);
  v20 = 0;
  objc_storeStrong(&v20, a8);
  v19 = 0;
  objc_storeStrong(&v19, a9);
  v9 = v26;
  v26 = 0;
  v18.receiver = v9;
  v18.super_class = AKFidoAuthenticationResponse;
  v17 = [(AKFidoAuthenticationResponse *)&v18 init];
  v26 = v17;
  objc_storeStrong(&v26, v17);
  if (v17)
  {
    objc_storeStrong(&v26->_authenticatorData, location[0]);
    objc_storeStrong(&v26->_signature, v22);
    objc_storeStrong(&v26->_clientData, v21);
    objc_storeStrong(&v26->_credentialID, v20);
    objc_storeStrong(&v26->_userIdentifier, v19);
    objc_storeStrong(&v26->_challenge, v24);
    objc_storeStrong(&v26->_relyingPartyIdentifier, v23);
  }

  v11 = MEMORY[0x1E69E5928](v26);
  objc_storeStrong(&v19, 0);
  objc_storeStrong(&v20, 0);
  objc_storeStrong(&v21, 0);
  objc_storeStrong(&v22, 0);
  objc_storeStrong(&v23, 0);
  objc_storeStrong(&v24, 0);
  objc_storeStrong(location, 0);
  objc_storeStrong(&v26, 0);
  return v11;
}

- (AKFidoAuthenticationResponse)initWithCoder:(id)a3
{
  v14 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  v12 = [location[0] decodeObjectOfClass:objc_opt_class() forKey:@"_authenticatorData"];
  v11 = [location[0] decodeObjectOfClass:objc_opt_class() forKey:@"_signature"];
  v10 = [location[0] decodeObjectOfClass:objc_opt_class() forKey:@"_credentialName"];
  v9 = [location[0] decodeObjectOfClass:objc_opt_class() forKey:@"_clientData"];
  v8 = [location[0] decodeObjectOfClass:objc_opt_class() forKey:@"_userIdentifier"];
  v7 = [location[0] decodeObjectOfClass:objc_opt_class() forKey:@"_challenge"];
  v6 = [location[0] decodeObjectOfClass:objc_opt_class() forKey:@"_relyingPartyIdentifier"];
  v3 = v14;
  v14 = 0;
  v14 = [(AKFidoAuthenticationResponse *)v3 initWithAuthenticatorDataString:v12 challengeString:v7 relyingPartyIdentifier:v6 signature:v11 clientDataString:v9 credentialID:v10 userIdentifier:v8];
  v5 = MEMORY[0x1E69E5928](v14);
  objc_storeStrong(&v6, 0);
  objc_storeStrong(&v7, 0);
  objc_storeStrong(&v8, 0);
  objc_storeStrong(&v9, 0);
  objc_storeStrong(&v10, 0);
  objc_storeStrong(&v11, 0);
  objc_storeStrong(&v12, 0);
  objc_storeStrong(location, 0);
  objc_storeStrong(&v14, 0);
  return v5;
}

- (void)encodeWithCoder:(id)a3
{
  v4 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  [location[0] encodeObject:v4->_authenticatorData forKey:@"_authenticatorData"];
  [location[0] encodeObject:v4->_signature forKey:@"_signature"];
  [location[0] encodeObject:v4->_credentialID forKey:@"_credentialName"];
  [location[0] encodeObject:v4->_clientData forKey:@"_clientData"];
  [location[0] encodeObject:v4->_userIdentifier forKey:@"_userIdentifier"];
  [location[0] encodeObject:v4->_challenge forKey:@"_challenge"];
  [location[0] encodeObject:v4->_relyingPartyIdentifier forKey:@"_relyingPartyIdentifier"];
  objc_storeStrong(location, 0);
}

- (id)copyWithZone:(_NSZone *)a3
{
  v20 = self;
  v19[2] = a2;
  v19[1] = a3;
  v19[0] = objc_alloc_init(objc_opt_class());
  v3 = [(NSString *)v20->_authenticatorData copy];
  v4 = *(v19[0] + 6);
  *(v19[0] + 6) = v3;
  MEMORY[0x1E69E5920](v4);
  v5 = [(NSString *)v20->_signature copy];
  v6 = *(v19[0] + 7);
  *(v19[0] + 7) = v5;
  MEMORY[0x1E69E5920](v6);
  v7 = [(NSString *)v20->_credentialID copy];
  v8 = *(v19[0] + 2);
  *(v19[0] + 2) = v7;
  MEMORY[0x1E69E5920](v8);
  v9 = [(NSString *)v20->_clientData copy];
  v10 = *(v19[0] + 1);
  *(v19[0] + 1) = v9;
  MEMORY[0x1E69E5920](v10);
  v11 = [(NSString *)v20->_userIdentifier copy];
  v12 = *(v19[0] + 3);
  *(v19[0] + 3) = v11;
  MEMORY[0x1E69E5920](v12);
  v13 = [(NSString *)v20->_challenge copy];
  v14 = *(v19[0] + 4);
  *(v19[0] + 4) = v13;
  MEMORY[0x1E69E5920](v14);
  v15 = [(NSString *)v20->_relyingPartyIdentifier copy];
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