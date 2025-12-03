@interface AKAppleIDPasskeyCredential
- (AKAppleIDPasskeyCredential)initWithCoder:(id)coder;
- (AKAppleIDPasskeyCredential)initWithRelyingPartyIdentifier:(id)identifier attestationData:(id)data clientData:(id)clientData credentialID:(id)d originalChallenge:(id)challenge userID:(id)iD credentialName:(id)name;
- (AKAppleIDPasskeyCredential)initWithRelyingPartyIdentifier:(id)identifier attestationDataString:(id)string clientDataString:(id)dataString credentialIDString:(id)dString userIDString:(id)iDString originalChallengeString:(id)challengeString credentialName:(id)name;
- (id)copyWithZone:(_NSZone *)zone;
- (id)debugDescription;
- (void)encodeWithCoder:(id)coder;
@end

@implementation AKAppleIDPasskeyCredential

- (AKAppleIDPasskeyCredential)initWithRelyingPartyIdentifier:(id)identifier attestationDataString:(id)string clientDataString:(id)dataString credentialIDString:(id)dString userIDString:(id)iDString originalChallengeString:(id)challengeString credentialName:(id)name
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, identifier);
  v24 = 0;
  objc_storeStrong(&v24, string);
  v23 = 0;
  objc_storeStrong(&v23, dataString);
  v22 = 0;
  objc_storeStrong(&v22, dString);
  v21 = 0;
  objc_storeStrong(&v21, iDString);
  v20 = 0;
  objc_storeStrong(&v20, challengeString);
  v19 = 0;
  objc_storeStrong(&v19, name);
  v9 = selfCopy;
  selfCopy = 0;
  v18.receiver = v9;
  v18.super_class = AKAppleIDPasskeyCredential;
  v17 = [(AKAppleIDPasskeyCredential *)&v18 init];
  selfCopy = v17;
  objc_storeStrong(&selfCopy, v17);
  if (v17)
  {
    objc_storeStrong(&selfCopy->_relyingPartyIdentifier, location[0]);
    objc_storeStrong(&selfCopy->_attestationDataString, v24);
    objc_storeStrong(&selfCopy->_clientDataString, v23);
    objc_storeStrong(&selfCopy->_credentialIDString, v22);
    objc_storeStrong(&selfCopy->_userIDString, v21);
    objc_storeStrong(&selfCopy->_originalChallengeString, v20);
    objc_storeStrong(&selfCopy->_credentialName, v19);
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

- (AKAppleIDPasskeyCredential)initWithRelyingPartyIdentifier:(id)identifier attestationData:(id)data clientData:(id)clientData credentialID:(id)d originalChallenge:(id)challenge userID:(id)iD credentialName:(id)name
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, identifier);
  v27 = 0;
  objc_storeStrong(&v27, data);
  v26 = 0;
  objc_storeStrong(&v26, clientData);
  v25 = 0;
  objc_storeStrong(&v25, d);
  v24 = 0;
  objc_storeStrong(&v24, challenge);
  v23 = 0;
  objc_storeStrong(&v23, iD);
  v22 = 0;
  objc_storeStrong(&v22, name);
  v21 = [v27 base64EncodedStringWithOptions:?];
  v20 = [v26 base64EncodedStringWithOptions:0];
  v19 = [v25 base64EncodedStringWithOptions:0];
  v9 = objc_alloc(MEMORY[0x1E696AEC0]);
  v18 = [v9 initWithData:v23 encoding:4];
  v10 = selfCopy;
  selfCopy = 0;
  selfCopy = [(AKAppleIDPasskeyCredential *)v10 initWithRelyingPartyIdentifier:location[0] attestationDataString:v21 clientDataString:v20 credentialIDString:v19 userIDString:v18 originalChallengeString:v24 credentialName:v22];
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
  objc_storeStrong(location, 0);
  objc_storeStrong(&selfCopy, 0);
  return v17;
}

- (AKAppleIDPasskeyCredential)initWithCoder:(id)coder
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, coder);
  v12 = [location[0] decodeObjectOfClass:objc_opt_class() forKey:@"_relyingPartyIdentifier"];
  v11 = [location[0] decodeObjectOfClass:objc_opt_class() forKey:@"_attestationDataString"];
  v10 = [location[0] decodeObjectOfClass:objc_opt_class() forKey:@"_clientDataString"];
  v9 = [location[0] decodeObjectOfClass:objc_opt_class() forKey:@"_credentialIDString"];
  v8 = [location[0] decodeObjectOfClass:objc_opt_class() forKey:@"_userIDString"];
  v7 = [location[0] decodeObjectOfClass:objc_opt_class() forKey:@"_originalChallengeString"];
  v6 = [location[0] decodeObjectOfClass:objc_opt_class() forKey:@"_credentialName"];
  v3 = selfCopy;
  selfCopy = 0;
  selfCopy = [(AKAppleIDPasskeyCredential *)v3 initWithRelyingPartyIdentifier:v12 attestationDataString:v11 clientDataString:v10 credentialIDString:v9 userIDString:v8 originalChallengeString:v7 credentialName:v6];
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
  [location[0] encodeObject:selfCopy->_relyingPartyIdentifier forKey:@"_relyingPartyIdentifier"];
  [location[0] encodeObject:selfCopy->_attestationDataString forKey:@"_attestationDataString"];
  [location[0] encodeObject:selfCopy->_clientDataString forKey:@"_clientDataString"];
  [location[0] encodeObject:selfCopy->_credentialIDString forKey:@"_credentialIDString"];
  [location[0] encodeObject:selfCopy->_userIDString forKey:@"_userIDString"];
  [location[0] encodeObject:selfCopy->_originalChallengeString forKey:@"_originalChallengeString"];
  [location[0] encodeObject:selfCopy->_credentialName forKey:@"_credentialName"];
  objc_storeStrong(location, 0);
}

- (id)copyWithZone:(_NSZone *)zone
{
  selfCopy = self;
  v19[2] = a2;
  v19[1] = zone;
  v19[0] = objc_alloc_init(objc_opt_class());
  v3 = [(NSString *)selfCopy->_relyingPartyIdentifier copy];
  v4 = *(v19[0] + 1);
  *(v19[0] + 1) = v3;
  MEMORY[0x1E69E5920](v4);
  v5 = [(NSString *)selfCopy->_attestationDataString copy];
  v6 = *(v19[0] + 2);
  *(v19[0] + 2) = v5;
  MEMORY[0x1E69E5920](v6);
  v7 = [(NSString *)selfCopy->_clientDataString copy];
  v8 = *(v19[0] + 3);
  *(v19[0] + 3) = v7;
  MEMORY[0x1E69E5920](v8);
  v9 = [(NSString *)selfCopy->_credentialIDString copy];
  v10 = *(v19[0] + 4);
  *(v19[0] + 4) = v9;
  MEMORY[0x1E69E5920](v10);
  v11 = [(NSString *)selfCopy->_userIDString copy];
  v12 = *(v19[0] + 5);
  *(v19[0] + 5) = v11;
  MEMORY[0x1E69E5920](v12);
  v13 = [(NSString *)selfCopy->_originalChallengeString copy];
  v14 = *(v19[0] + 6);
  *(v19[0] + 6) = v13;
  MEMORY[0x1E69E5920](v14);
  v15 = [(NSString *)selfCopy->_credentialName copy];
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