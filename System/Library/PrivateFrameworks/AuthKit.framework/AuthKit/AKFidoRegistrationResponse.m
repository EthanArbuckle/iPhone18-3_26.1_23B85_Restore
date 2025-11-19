@interface AKFidoRegistrationResponse
+ (id)_sanitizeCredentialIDString:(id)a3;
- (AKFidoRegistrationResponse)initWithChallengeString:(id)a3 attestationsData:(id)a4 credentialID:(id)a5 clientData:(id)a6 relyingPartyIdentifier:(id)a7 credentialName:(id)a8 userIdentifier:(id)a9;
- (AKFidoRegistrationResponse)initWithChallengeString:(id)a3 attestationsDataString:(id)a4 credentialIDString:(id)a5 clientDataString:(id)a6 relyingPartyIdentifier:(id)a7 credentialName:(id)a8 userIdentifier:(id)a9;
- (AKFidoRegistrationResponse)initWithCoder:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (id)debugDescription;
- (void)encodeWithCoder:(id)a3;
@end

@implementation AKFidoRegistrationResponse

- (AKFidoRegistrationResponse)initWithChallengeString:(id)a3 attestationsData:(id)a4 credentialID:(id)a5 clientData:(id)a6 relyingPartyIdentifier:(id)a7 credentialName:(id)a8 userIdentifier:(id)a9
{
  v33 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  v31 = 0;
  objc_storeStrong(&v31, a4);
  v30 = 0;
  objc_storeStrong(&v30, a5);
  v29 = 0;
  objc_storeStrong(&v29, a6);
  v28 = 0;
  objc_storeStrong(&v28, a7);
  v27 = 0;
  objc_storeStrong(&v27, a8);
  v26 = 0;
  objc_storeStrong(&v26, a9);
  v25 = 0;
  if (v31)
  {
    v9 = [v31 base64EncodedStringWithOptions:0];
    v10 = v25;
    v25 = v9;
    MEMORY[0x1E69E5920](v10);
  }

  v24 = [v30 base64EncodedStringWithOptions:?];
  v11 = [AKFidoRegistrationResponse _sanitizeCredentialIDString:v24];
  v12 = v24;
  v24 = v11;
  MEMORY[0x1E69E5920](v12);
  v23 = [v29 base64EncodedStringWithOptions:0];
  v13 = objc_alloc(MEMORY[0x1E696AEC0]);
  v22 = [v13 initWithData:v26 encoding:4];
  v14 = v33;
  v33 = 0;
  v33 = [(AKFidoRegistrationResponse *)v14 initWithChallengeString:location[0] attestationsDataString:v25 credentialIDString:v24 clientDataString:v23 relyingPartyIdentifier:v28 credentialName:v27 userIdentifier:v22];
  v16 = MEMORY[0x1E69E5928](v33);
  objc_storeStrong(&v22, 0);
  objc_storeStrong(&v23, 0);
  objc_storeStrong(&v24, 0);
  objc_storeStrong(&v25, 0);
  objc_storeStrong(&v26, 0);
  objc_storeStrong(&v27, 0);
  objc_storeStrong(&v28, 0);
  objc_storeStrong(&v29, 0);
  objc_storeStrong(&v30, 0);
  objc_storeStrong(&v31, 0);
  objc_storeStrong(location, 0);
  objc_storeStrong(&v33, 0);
  return v16;
}

- (AKFidoRegistrationResponse)initWithChallengeString:(id)a3 attestationsDataString:(id)a4 credentialIDString:(id)a5 clientDataString:(id)a6 relyingPartyIdentifier:(id)a7 credentialName:(id)a8 userIdentifier:(id)a9
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
  v18.super_class = AKFidoRegistrationResponse;
  v17 = [(AKFidoRegistrationResponse *)&v18 init];
  v26 = v17;
  objc_storeStrong(&v26, v17);
  if (v17)
  {
    objc_storeStrong(&v26->_challenge, location[0]);
    objc_storeStrong(&v26->_attestationsData, v24);
    objc_storeStrong(&v26->_credentialID, v23);
    objc_storeStrong(&v26->_clientData, v22);
    objc_storeStrong(&v26->_relyingPartyIdentifier, v21);
    objc_storeStrong(&v26->_credentialName, v20);
    objc_storeStrong(&v26->_userIdentifier, v19);
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

- (AKFidoRegistrationResponse)initWithCoder:(id)a3
{
  v14 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  v12 = [location[0] decodeObjectOfClass:objc_opt_class() forKey:@"_challenge"];
  v11 = [location[0] decodeObjectOfClass:objc_opt_class() forKey:@"_attestationsData"];
  v10 = [location[0] decodeObjectOfClass:objc_opt_class() forKey:@"_credentialID"];
  v9 = [location[0] decodeObjectOfClass:objc_opt_class() forKey:@"_clientData"];
  v8 = [location[0] decodeObjectOfClass:objc_opt_class() forKey:@"_relyingPartyIdentifier"];
  v7 = [location[0] decodeObjectOfClass:objc_opt_class() forKey:@"_credentialName"];
  v6 = [location[0] decodeObjectOfClass:objc_opt_class() forKey:@"_userIdentifier"];
  v3 = v14;
  v14 = 0;
  v14 = [(AKFidoRegistrationResponse *)v3 initWithChallengeString:v12 attestationsDataString:v11 credentialIDString:v10 clientDataString:v9 relyingPartyIdentifier:v8 credentialName:v7 userIdentifier:v6];
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
  [location[0] encodeObject:v4->_challenge forKey:@"_challenge"];
  [location[0] encodeObject:v4->_attestationsData forKey:@"_attestationsData"];
  [location[0] encodeObject:v4->_credentialID forKey:@"_credentialID"];
  [location[0] encodeObject:v4->_clientData forKey:@"_clientData"];
  [location[0] encodeObject:v4->_relyingPartyIdentifier forKey:@"_relyingPartyIdentifier"];
  [location[0] encodeObject:v4->_credentialName forKey:@"_credentialName"];
  [location[0] encodeObject:v4->_userIdentifier forKey:@"_userIdentifier"];
  objc_storeStrong(location, 0);
}

- (id)copyWithZone:(_NSZone *)a3
{
  v20 = self;
  v19[2] = a2;
  v19[1] = a3;
  v19[0] = objc_alloc_init(objc_opt_class());
  v3 = [(NSString *)v20->_challenge copy];
  v4 = *(v19[0] + 4);
  *(v19[0] + 4) = v3;
  MEMORY[0x1E69E5920](v4);
  v5 = [(NSString *)v20->_attestationsData copy];
  v6 = *(v19[0] + 6);
  *(v19[0] + 6) = v5;
  MEMORY[0x1E69E5920](v6);
  v7 = [(NSString *)v20->_credentialID copy];
  v8 = *(v19[0] + 2);
  *(v19[0] + 2) = v7;
  MEMORY[0x1E69E5920](v8);
  v9 = [(NSString *)v20->_clientData copy];
  v10 = *(v19[0] + 1);
  *(v19[0] + 1) = v9;
  MEMORY[0x1E69E5920](v10);
  v11 = [(NSString *)v20->_relyingPartyIdentifier copy];
  v12 = *(v19[0] + 5);
  *(v19[0] + 5) = v11;
  MEMORY[0x1E69E5920](v12);
  v13 = [(NSString *)v20->_credentialName copy];
  v14 = *(v19[0] + 7);
  *(v19[0] + 7) = v13;
  MEMORY[0x1E69E5920](v14);
  v15 = [(NSString *)v20->_userIdentifier copy];
  v16 = *(v19[0] + 3);
  *(v19[0] + 3) = v15;
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
  v6 = [v4 stringWithFormat:@"<%@: %p {\n\tChallenge: %@, \n\tAttestationsData: %@, \n\tCredentialID: %@, \n\tClientData: %@, \n\tRelyingPartyIdentifier: %@, \n\tCredentialName: %@, \n\tUserIdentifier: %@, \n}>", v5, self, self->_challenge, self->_attestationsData, self->_credentialID, self->_clientData, self->_relyingPartyIdentifier, self->_credentialName, self->_userIdentifier];
  MEMORY[0x1E69E5920](v5);

  return v6;
}

+ (id)_sanitizeCredentialIDString:(id)a3
{
  location[2] = a1;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  v6 = location[0];
  v9 = [location[0] length] - 2;
  location[3] = 2;
  v10 = v9;
  v11 = 2;
  v3 = [v6 stringByReplacingOccurrencesOfString:@"=" withString:&stru_1F0781300 options:? range:?];
  v4 = location[0];
  location[0] = v3;
  MEMORY[0x1E69E5920](v4);
  v7 = MEMORY[0x1E69E5928](location[0]);
  objc_storeStrong(location, 0);

  return v7;
}

@end