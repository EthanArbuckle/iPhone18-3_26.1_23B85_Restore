@interface AKAppleIDPasskeyCredentialRequestContext
- (AKAppleIDPasskeyCredentialRequestContext)initWithCoder:(id)coder;
- (AKAppleIDPasskeyCredentialRequestContext)initWithRelyingPartyIdentifier:(id)identifier challenge:(id)challenge originalChallenge:(id)originalChallenge userID:(id)d credentialName:(id)name;
- (AKAppleIDPasskeyCredentialRequestContext)initWithRelyingPartyIdentifier:(id)identifier challengeString:(id)string userIDString:(id)dString credentialName:(id)name;
- (id)_sanitizeBase64EncodedString:(id)string;
- (id)copyWithZone:(_NSZone *)zone;
- (id)debugDescription;
- (void)encodeWithCoder:(id)coder;
@end

@implementation AKAppleIDPasskeyCredentialRequestContext

- (AKAppleIDPasskeyCredentialRequestContext)initWithRelyingPartyIdentifier:(id)identifier challenge:(id)challenge originalChallenge:(id)originalChallenge userID:(id)d credentialName:(id)name
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, identifier);
  v19 = 0;
  objc_storeStrong(&v19, challenge);
  v18 = 0;
  objc_storeStrong(&v18, originalChallenge);
  v17 = 0;
  objc_storeStrong(&v17, d);
  v16 = 0;
  objc_storeStrong(&v16, name);
  v7 = selfCopy;
  selfCopy = 0;
  v15.receiver = v7;
  v15.super_class = AKAppleIDPasskeyCredentialRequestContext;
  v14 = [(AKAppleIDPasskeyCredentialRequestContext *)&v15 init];
  selfCopy = v14;
  objc_storeStrong(&selfCopy, v14);
  if (v14)
  {
    objc_storeStrong(&selfCopy->_relyingPartyIdentifier, location[0]);
    objc_storeStrong(&selfCopy->_challenge, v19);
    objc_storeStrong(&selfCopy->_originalChallenge, v18);
    objc_storeStrong(&selfCopy->_userID, v17);
    objc_storeStrong(&selfCopy->_credentialName, v16);
  }

  v9 = MEMORY[0x1E69E5928](selfCopy);
  objc_storeStrong(&v16, 0);
  objc_storeStrong(&v17, 0);
  objc_storeStrong(&v18, 0);
  objc_storeStrong(&v19, 0);
  objc_storeStrong(location, 0);
  objc_storeStrong(&selfCopy, 0);
  return v9;
}

- (AKAppleIDPasskeyCredentialRequestContext)initWithRelyingPartyIdentifier:(id)identifier challengeString:(id)string userIDString:(id)dString credentialName:(id)name
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, identifier);
  v17 = 0;
  objc_storeStrong(&v17, string);
  v16 = 0;
  objc_storeStrong(&v16, dString);
  v15 = 0;
  objc_storeStrong(&v15, name);
  v14 = [(AKAppleIDPasskeyCredentialRequestContext *)selfCopy _sanitizeBase64EncodedString:v17];
  v13 = [objc_alloc(MEMORY[0x1E695DEF0]) initWithBase64EncodedString:v14 options:4];
  if (!v13)
  {
    v13 = [v14 dataUsingEncoding:4];
    MEMORY[0x1E69E5920](0);
  }

  v12 = [v16 dataUsingEncoding:4];
  v6 = selfCopy;
  selfCopy = 0;
  selfCopy = [(AKAppleIDPasskeyCredentialRequestContext *)v6 initWithRelyingPartyIdentifier:location[0] challenge:v13 originalChallenge:v17 userID:v12 credentialName:v15];
  v8 = MEMORY[0x1E69E5928](selfCopy);
  objc_storeStrong(&v12, 0);
  objc_storeStrong(&v13, 0);
  objc_storeStrong(&v14, 0);
  objc_storeStrong(&v15, 0);
  objc_storeStrong(&v16, 0);
  objc_storeStrong(&v17, 0);
  objc_storeStrong(location, 0);
  objc_storeStrong(&selfCopy, 0);
  return v8;
}

- (AKAppleIDPasskeyCredentialRequestContext)initWithCoder:(id)coder
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, coder);
  v10 = [location[0] decodeObjectOfClass:objc_opt_class() forKey:@"_relyingPartyIdentifier"];
  v9 = [location[0] decodeObjectOfClass:objc_opt_class() forKey:@"_challenge"];
  v8 = [location[0] decodeObjectOfClass:objc_opt_class() forKey:@"_originalChallenge"];
  v7 = [location[0] decodeObjectOfClass:objc_opt_class() forKey:@"_userID"];
  v6 = [location[0] decodeObjectOfClass:objc_opt_class() forKey:@"_credentialName"];
  v3 = selfCopy;
  selfCopy = 0;
  selfCopy = [(AKAppleIDPasskeyCredentialRequestContext *)v3 initWithRelyingPartyIdentifier:v10 challenge:v9 originalChallenge:v8 userID:v7 credentialName:v6];
  v5 = MEMORY[0x1E69E5928](selfCopy);
  objc_storeStrong(&v6, 0);
  objc_storeStrong(&v7, 0);
  objc_storeStrong(&v8, 0);
  objc_storeStrong(&v9, 0);
  objc_storeStrong(&v10, 0);
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
  [location[0] encodeObject:selfCopy->_challenge forKey:@"_challenge"];
  [location[0] encodeObject:selfCopy->_challenge forKey:@"_originalChallenge"];
  [location[0] encodeObject:selfCopy->_userID forKey:@"_userID"];
  [location[0] encodeObject:selfCopy->_credentialName forKey:@"_credentialName"];
  objc_storeStrong(location, 0);
}

- (id)copyWithZone:(_NSZone *)zone
{
  selfCopy = self;
  v15[2] = a2;
  v15[1] = zone;
  v15[0] = objc_alloc_init(objc_opt_class());
  v3 = [(NSString *)selfCopy->_relyingPartyIdentifier copy];
  v4 = *(v15[0] + 1);
  *(v15[0] + 1) = v3;
  MEMORY[0x1E69E5920](v4);
  v5 = [(NSData *)selfCopy->_challenge copy];
  v6 = *(v15[0] + 2);
  *(v15[0] + 2) = v5;
  MEMORY[0x1E69E5920](v6);
  v7 = [(NSString *)selfCopy->_originalChallenge copy];
  v8 = *(v15[0] + 5);
  *(v15[0] + 5) = v7;
  MEMORY[0x1E69E5920](v8);
  v9 = [(NSData *)selfCopy->_userID copy];
  v10 = *(v15[0] + 3);
  *(v15[0] + 3) = v9;
  MEMORY[0x1E69E5920](v10);
  v11 = [(NSString *)selfCopy->_credentialName copy];
  v12 = *(v15[0] + 4);
  *(v15[0] + 4) = v11;
  MEMORY[0x1E69E5920](v12);
  v14 = MEMORY[0x1E69E5928](v15[0]);
  objc_storeStrong(v15, 0);
  return v14;
}

- (id)debugDescription
{
  v4 = MEMORY[0x1E696AEC0];
  v2 = objc_opt_class();
  v5 = NSStringFromClass(v2);
  v6 = [v4 stringWithFormat:@"<%@: %p {\n\trelyingPartyIdentifier: %@, \n\tchallenge: %@, \n\toriginalChallenge: %@, \n\tuserID: %@, \n\tcredentialName: %@, \n}>", v5, self, self->_relyingPartyIdentifier, self->_challenge, self->_originalChallenge, self->_userID, self->_credentialName];
  MEMORY[0x1E69E5920](v5);

  return v6;
}

- (id)_sanitizeBase64EncodedString:(id)string
{
  location[2] = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, string);
  v3 = [location[0] stringByReplacingOccurrencesOfString:@"-" withString:@"+"];
  v4 = location[0];
  location[0] = v3;
  MEMORY[0x1E69E5920](v4);
  v5 = [location[0] stringByReplacingOccurrencesOfString:@"_" withString:@"/"];
  v6 = location[0];
  location[0] = v5;
  MEMORY[0x1E69E5920](v6);
  while ([location[0] length] % 4uLL)
  {
    v7 = [location[0] stringByAppendingString:@"="];
    v8 = location[0];
    location[0] = v7;
    MEMORY[0x1E69E5920](v8);
  }

  v10 = MEMORY[0x1E69E5928](location[0]);
  objc_storeStrong(location, 0);

  return v10;
}

@end