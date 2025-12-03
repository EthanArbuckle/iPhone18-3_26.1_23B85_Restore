@interface AKFidoRegistrationResponse
+ (id)_sanitizeCredentialIDString:(id)string;
- (AKFidoRegistrationResponse)initWithChallengeString:(id)string attestationsData:(id)data credentialID:(id)d clientData:(id)clientData relyingPartyIdentifier:(id)identifier credentialName:(id)name userIdentifier:(id)userIdentifier;
- (AKFidoRegistrationResponse)initWithChallengeString:(id)string attestationsDataString:(id)dataString credentialIDString:(id)dString clientDataString:(id)clientDataString relyingPartyIdentifier:(id)identifier credentialName:(id)name userIdentifier:(id)userIdentifier;
- (AKFidoRegistrationResponse)initWithCoder:(id)coder;
- (id)copyWithZone:(_NSZone *)zone;
- (id)debugDescription;
- (void)encodeWithCoder:(id)coder;
@end

@implementation AKFidoRegistrationResponse

- (AKFidoRegistrationResponse)initWithChallengeString:(id)string attestationsData:(id)data credentialID:(id)d clientData:(id)clientData relyingPartyIdentifier:(id)identifier credentialName:(id)name userIdentifier:(id)userIdentifier
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, string);
  v31 = 0;
  objc_storeStrong(&v31, data);
  v30 = 0;
  objc_storeStrong(&v30, d);
  v29 = 0;
  objc_storeStrong(&v29, clientData);
  v28 = 0;
  objc_storeStrong(&v28, identifier);
  v27 = 0;
  objc_storeStrong(&v27, name);
  v26 = 0;
  objc_storeStrong(&v26, userIdentifier);
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
  v14 = selfCopy;
  selfCopy = 0;
  selfCopy = [(AKFidoRegistrationResponse *)v14 initWithChallengeString:location[0] attestationsDataString:v25 credentialIDString:v24 clientDataString:v23 relyingPartyIdentifier:v28 credentialName:v27 userIdentifier:v22];
  v16 = MEMORY[0x1E69E5928](selfCopy);
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
  objc_storeStrong(&selfCopy, 0);
  return v16;
}

- (AKFidoRegistrationResponse)initWithChallengeString:(id)string attestationsDataString:(id)dataString credentialIDString:(id)dString clientDataString:(id)clientDataString relyingPartyIdentifier:(id)identifier credentialName:(id)name userIdentifier:(id)userIdentifier
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, string);
  v24 = 0;
  objc_storeStrong(&v24, dataString);
  v23 = 0;
  objc_storeStrong(&v23, dString);
  v22 = 0;
  objc_storeStrong(&v22, clientDataString);
  v21 = 0;
  objc_storeStrong(&v21, identifier);
  v20 = 0;
  objc_storeStrong(&v20, name);
  v19 = 0;
  objc_storeStrong(&v19, userIdentifier);
  v9 = selfCopy;
  selfCopy = 0;
  v18.receiver = v9;
  v18.super_class = AKFidoRegistrationResponse;
  v17 = [(AKFidoRegistrationResponse *)&v18 init];
  selfCopy = v17;
  objc_storeStrong(&selfCopy, v17);
  if (v17)
  {
    objc_storeStrong(&selfCopy->_challenge, location[0]);
    objc_storeStrong(&selfCopy->_attestationsData, v24);
    objc_storeStrong(&selfCopy->_credentialID, v23);
    objc_storeStrong(&selfCopy->_clientData, v22);
    objc_storeStrong(&selfCopy->_relyingPartyIdentifier, v21);
    objc_storeStrong(&selfCopy->_credentialName, v20);
    objc_storeStrong(&selfCopy->_userIdentifier, v19);
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

- (AKFidoRegistrationResponse)initWithCoder:(id)coder
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, coder);
  v12 = [location[0] decodeObjectOfClass:objc_opt_class() forKey:@"_challenge"];
  v11 = [location[0] decodeObjectOfClass:objc_opt_class() forKey:@"_attestationsData"];
  v10 = [location[0] decodeObjectOfClass:objc_opt_class() forKey:@"_credentialID"];
  v9 = [location[0] decodeObjectOfClass:objc_opt_class() forKey:@"_clientData"];
  v8 = [location[0] decodeObjectOfClass:objc_opt_class() forKey:@"_relyingPartyIdentifier"];
  v7 = [location[0] decodeObjectOfClass:objc_opt_class() forKey:@"_credentialName"];
  v6 = [location[0] decodeObjectOfClass:objc_opt_class() forKey:@"_userIdentifier"];
  v3 = selfCopy;
  selfCopy = 0;
  selfCopy = [(AKFidoRegistrationResponse *)v3 initWithChallengeString:v12 attestationsDataString:v11 credentialIDString:v10 clientDataString:v9 relyingPartyIdentifier:v8 credentialName:v7 userIdentifier:v6];
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
  [location[0] encodeObject:selfCopy->_challenge forKey:@"_challenge"];
  [location[0] encodeObject:selfCopy->_attestationsData forKey:@"_attestationsData"];
  [location[0] encodeObject:selfCopy->_credentialID forKey:@"_credentialID"];
  [location[0] encodeObject:selfCopy->_clientData forKey:@"_clientData"];
  [location[0] encodeObject:selfCopy->_relyingPartyIdentifier forKey:@"_relyingPartyIdentifier"];
  [location[0] encodeObject:selfCopy->_credentialName forKey:@"_credentialName"];
  [location[0] encodeObject:selfCopy->_userIdentifier forKey:@"_userIdentifier"];
  objc_storeStrong(location, 0);
}

- (id)copyWithZone:(_NSZone *)zone
{
  selfCopy = self;
  v19[2] = a2;
  v19[1] = zone;
  v19[0] = objc_alloc_init(objc_opt_class());
  v3 = [(NSString *)selfCopy->_challenge copy];
  v4 = *(v19[0] + 4);
  *(v19[0] + 4) = v3;
  MEMORY[0x1E69E5920](v4);
  v5 = [(NSString *)selfCopy->_attestationsData copy];
  v6 = *(v19[0] + 6);
  *(v19[0] + 6) = v5;
  MEMORY[0x1E69E5920](v6);
  v7 = [(NSString *)selfCopy->_credentialID copy];
  v8 = *(v19[0] + 2);
  *(v19[0] + 2) = v7;
  MEMORY[0x1E69E5920](v8);
  v9 = [(NSString *)selfCopy->_clientData copy];
  v10 = *(v19[0] + 1);
  *(v19[0] + 1) = v9;
  MEMORY[0x1E69E5920](v10);
  v11 = [(NSString *)selfCopy->_relyingPartyIdentifier copy];
  v12 = *(v19[0] + 5);
  *(v19[0] + 5) = v11;
  MEMORY[0x1E69E5920](v12);
  v13 = [(NSString *)selfCopy->_credentialName copy];
  v14 = *(v19[0] + 7);
  *(v19[0] + 7) = v13;
  MEMORY[0x1E69E5920](v14);
  v15 = [(NSString *)selfCopy->_userIdentifier copy];
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

+ (id)_sanitizeCredentialIDString:(id)string
{
  location[2] = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, string);
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