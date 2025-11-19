@interface AKAppleIDPasskeyCredential
- (AKAppleIDPasskeyCredential)initWithCoder:(id)a3;
- (AKAppleIDPasskeyCredential)initWithRelyingPartyIdentifier:(id)a3 attestationData:(id)a4 clientData:(id)a5 credentialID:(id)a6 originalChallenge:(id)a7 userID:(id)a8 credentialName:(id)a9;
- (AKAppleIDPasskeyCredential)initWithRelyingPartyIdentifier:(id)a3 attestationDataString:(id)a4 clientDataString:(id)a5 credentialIDString:(id)a6 userIDString:(id)a7 originalChallengeString:(id)a8 credentialName:(id)a9;
- (id)copyWithZone:(_NSZone *)a3;
- (id)debugDescription;
- (void)encodeWithCoder:(id)a3;
@end

@implementation AKAppleIDPasskeyCredential

- (AKAppleIDPasskeyCredential)initWithRelyingPartyIdentifier:(id)a3 attestationDataString:(id)a4 clientDataString:(id)a5 credentialIDString:(id)a6 userIDString:(id)a7 originalChallengeString:(id)a8 credentialName:(id)a9
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
  v18.super_class = AKAppleIDPasskeyCredential;
  v17 = [(AKAppleIDPasskeyCredential *)&v18 init];
  v26 = v17;
  objc_storeStrong(&v26, v17);
  if (v17)
  {
    objc_storeStrong(&v26->_relyingPartyIdentifier, location[0]);
    objc_storeStrong(&v26->_attestationDataString, v24);
    objc_storeStrong(&v26->_clientDataString, v23);
    objc_storeStrong(&v26->_credentialIDString, v22);
    objc_storeStrong(&v26->_userIDString, v21);
    objc_storeStrong(&v26->_originalChallengeString, v20);
    objc_storeStrong(&v26->_credentialName, v19);
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

- (AKAppleIDPasskeyCredential)initWithRelyingPartyIdentifier:(id)a3 attestationData:(id)a4 clientData:(id)a5 credentialID:(id)a6 originalChallenge:(id)a7 userID:(id)a8 credentialName:(id)a9
{
  v29 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  v27 = 0;
  objc_storeStrong(&v27, a4);
  v26 = 0;
  objc_storeStrong(&v26, a5);
  v25 = 0;
  objc_storeStrong(&v25, a6);
  v24 = 0;
  objc_storeStrong(&v24, a7);
  v23 = 0;
  objc_storeStrong(&v23, a8);
  v22 = 0;
  objc_storeStrong(&v22, a9);
  v21 = [v27 base64EncodedStringWithOptions:?];
  v20 = [v26 base64EncodedStringWithOptions:0];
  v19 = [v25 base64EncodedStringWithOptions:0];
  v9 = objc_alloc(MEMORY[0x1E696AEC0]);
  v18 = [v9 initWithData:v23 encoding:4];
  v10 = v29;
  v29 = 0;
  v29 = [(AKAppleIDPasskeyCredential *)v10 initWithRelyingPartyIdentifier:location[0] attestationDataString:v21 clientDataString:v20 credentialIDString:v19 userIDString:v18 originalChallengeString:v24 credentialName:v22];
  v17 = MEMORY[0x1E69E5928](v29);
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
  objc_storeStrong(location, 0);
  objc_storeStrong(&v29, 0);
  return v17;
}

- (AKAppleIDPasskeyCredential)initWithCoder:(id)a3
{
  v14 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  v12 = [location[0] decodeObjectOfClass:objc_opt_class() forKey:@"_relyingPartyIdentifier"];
  v11 = [location[0] decodeObjectOfClass:objc_opt_class() forKey:@"_attestationDataString"];
  v10 = [location[0] decodeObjectOfClass:objc_opt_class() forKey:@"_clientDataString"];
  v9 = [location[0] decodeObjectOfClass:objc_opt_class() forKey:@"_credentialIDString"];
  v8 = [location[0] decodeObjectOfClass:objc_opt_class() forKey:@"_userIDString"];
  v7 = [location[0] decodeObjectOfClass:objc_opt_class() forKey:@"_originalChallengeString"];
  v6 = [location[0] decodeObjectOfClass:objc_opt_class() forKey:@"_credentialName"];
  v3 = v14;
  v14 = 0;
  v14 = [(AKAppleIDPasskeyCredential *)v3 initWithRelyingPartyIdentifier:v12 attestationDataString:v11 clientDataString:v10 credentialIDString:v9 userIDString:v8 originalChallengeString:v7 credentialName:v6];
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
  [location[0] encodeObject:v4->_relyingPartyIdentifier forKey:@"_relyingPartyIdentifier"];
  [location[0] encodeObject:v4->_attestationDataString forKey:@"_attestationDataString"];
  [location[0] encodeObject:v4->_clientDataString forKey:@"_clientDataString"];
  [location[0] encodeObject:v4->_credentialIDString forKey:@"_credentialIDString"];
  [location[0] encodeObject:v4->_userIDString forKey:@"_userIDString"];
  [location[0] encodeObject:v4->_originalChallengeString forKey:@"_originalChallengeString"];
  [location[0] encodeObject:v4->_credentialName forKey:@"_credentialName"];
  objc_storeStrong(location, 0);
}

- (id)copyWithZone:(_NSZone *)a3
{
  v20 = self;
  v19[2] = a2;
  v19[1] = a3;
  v19[0] = objc_alloc_init(objc_opt_class());
  v3 = [(NSString *)v20->_relyingPartyIdentifier copy];
  v4 = *(v19[0] + 1);
  *(v19[0] + 1) = v3;
  MEMORY[0x1E69E5920](v4);
  v5 = [(NSString *)v20->_attestationDataString copy];
  v6 = *(v19[0] + 2);
  *(v19[0] + 2) = v5;
  MEMORY[0x1E69E5920](v6);
  v7 = [(NSString *)v20->_clientDataString copy];
  v8 = *(v19[0] + 3);
  *(v19[0] + 3) = v7;
  MEMORY[0x1E69E5920](v8);
  v9 = [(NSString *)v20->_credentialIDString copy];
  v10 = *(v19[0] + 4);
  *(v19[0] + 4) = v9;
  MEMORY[0x1E69E5920](v10);
  v11 = [(NSString *)v20->_userIDString copy];
  v12 = *(v19[0] + 5);
  *(v19[0] + 5) = v11;
  MEMORY[0x1E69E5920](v12);
  v13 = [(NSString *)v20->_originalChallengeString copy];
  v14 = *(v19[0] + 6);
  *(v19[0] + 6) = v13;
  MEMORY[0x1E69E5920](v14);
  v15 = [(NSString *)v20->_credentialName copy];
  v16 = *(v19[0] + 7);
  *(v19[0] + 7) = v15;
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
  v6 = [v4 stringWithFormat:@"<%@: %p {\n\trelyingPartyIdentifier: %@, \n\tattestationDataString: %@, \n\tclientDataString: %@, \n\tcredentialIDString: %@, \n\tuserIDString: %@, \n\toriginalChallengeString: %@, \n\tcredentialName: %@, \n}>", v5, self, self->_relyingPartyIdentifier, self->_attestationDataString, self->_clientDataString, self->_credentialIDString, self->_userIDString, self->_originalChallengeString, self->_credentialIDString];
  MEMORY[0x1E69E5920](v5);

  return v6;
}

@end