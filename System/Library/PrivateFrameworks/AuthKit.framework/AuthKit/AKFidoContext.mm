@interface AKFidoContext
- (AKFidoContext)initWithChallenge:(id)challenge relyingPartyIdentifier:(id)identifier userIdentifier:(id)userIdentifier displayName:(id)name credentialName:(id)credentialName credentials:(id)credentials;
- (AKFidoContext)initWithChallengeString:(id)string relyingPartyIdentifier:(id)identifier userIdentifierString:(id)identifierString displayName:(id)name credentialName:(id)credentialName credentials:(id)credentials;
- (AKFidoContext)initWithCoder:(id)coder;
- (AKFidoContext)initWithParameters:(id)parameters;
- (id)copyWithZone:(_NSZone *)zone;
- (id)debugDescription;
- (void)encodeWithCoder:(id)coder;
@end

@implementation AKFidoContext

- (AKFidoContext)initWithParameters:(id)parameters
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, parameters);
  v5 = [location[0] objectForKeyedSubscript:@"challenge"];
  aaf_base64Padded = [v5 aaf_base64Padded];
  MEMORY[0x1E69E5920](v5);
  v8 = [location[0] objectForKeyedSubscript:@"rpid"];
  v7 = [location[0] objectForKeyedSubscript:@"credentialIds"];
  v3 = selfCopy;
  selfCopy = 0;
  selfCopy = [(AKFidoContext *)v3 initWithChallengeString:aaf_base64Padded relyingPartyIdentifier:v8 userIdentifierString:0 displayName:0 credentialName:0 credentials:v7];
  v6 = MEMORY[0x1E69E5928](selfCopy);
  objc_storeStrong(&v7, 0);
  objc_storeStrong(&v8, 0);
  objc_storeStrong(&aaf_base64Padded, 0);
  objc_storeStrong(location, 0);
  objc_storeStrong(&selfCopy, 0);
  return v6;
}

- (AKFidoContext)initWithChallengeString:(id)string relyingPartyIdentifier:(id)identifier userIdentifierString:(id)identifierString displayName:(id)name credentialName:(id)credentialName credentials:(id)credentials
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, string);
  v24 = 0;
  objc_storeStrong(&v24, identifier);
  v23 = 0;
  objc_storeStrong(&v23, identifierString);
  v22 = 0;
  objc_storeStrong(&v22, name);
  v21 = 0;
  objc_storeStrong(&v21, credentialName);
  v20 = 0;
  objc_storeStrong(&v20, credentials);
  aaf_base64Padded = [location[0] aaf_base64Padded];
  v18 = [objc_alloc(MEMORY[0x1E695DEF0]) initWithBase64EncodedString:aaf_base64Padded options:0];
  if (!v18)
  {
    v18 = [location[0] dataUsingEncoding:4];
    MEMORY[0x1E69E5920](0);
  }

  v17 = [v23 dataUsingEncoding:4];
  v8 = selfCopy;
  selfCopy = 0;
  v11 = [(AKFidoContext *)v8 initWithChallenge:v18 relyingPartyIdentifier:v24 userIdentifier:v17 displayName:v22 credentialName:v21 credentials:v20];
  selfCopy = v11;
  objc_storeStrong(&selfCopy, v11);
  if (v11)
  {
    objc_storeStrong(&selfCopy->_originalChallenge, location[0]);
  }

  v10 = MEMORY[0x1E69E5928](selfCopy);
  objc_storeStrong(&v17, 0);
  objc_storeStrong(&v18, 0);
  objc_storeStrong(&aaf_base64Padded, 0);
  objc_storeStrong(&v20, 0);
  objc_storeStrong(&v21, 0);
  objc_storeStrong(&v22, 0);
  objc_storeStrong(&v23, 0);
  objc_storeStrong(&v24, 0);
  objc_storeStrong(location, 0);
  objc_storeStrong(&selfCopy, 0);
  return v10;
}

- (AKFidoContext)initWithChallenge:(id)challenge relyingPartyIdentifier:(id)identifier userIdentifier:(id)userIdentifier displayName:(id)name credentialName:(id)credentialName credentials:(id)credentials
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, challenge);
  v22 = 0;
  objc_storeStrong(&v22, identifier);
  v21 = 0;
  objc_storeStrong(&v21, userIdentifier);
  v20 = 0;
  objc_storeStrong(&v20, name);
  v19 = 0;
  objc_storeStrong(&v19, credentialName);
  v18 = 0;
  objc_storeStrong(&v18, credentials);
  v8 = selfCopy;
  selfCopy = 0;
  v17.receiver = v8;
  v17.super_class = AKFidoContext;
  v16 = [(AKFidoContext *)&v17 init];
  selfCopy = v16;
  objc_storeStrong(&selfCopy, v16);
  if (v16)
  {
    objc_storeStrong(&selfCopy->_challenge, location[0]);
    objc_storeStrong(&selfCopy->_userIdentifier, v21);
    objc_storeStrong(&selfCopy->_relyingPartyIdentifier, v22);
    objc_storeStrong(&selfCopy->_displayName, v20);
    objc_storeStrong(&selfCopy->_credentialName, v19);
    objc_storeStrong(&selfCopy->_credentials, v18);
  }

  v10 = MEMORY[0x1E69E5928](selfCopy);
  objc_storeStrong(&v18, 0);
  objc_storeStrong(&v19, 0);
  objc_storeStrong(&v20, 0);
  objc_storeStrong(&v21, 0);
  objc_storeStrong(&v22, 0);
  objc_storeStrong(location, 0);
  objc_storeStrong(&selfCopy, 0);
  return v10;
}

- (AKFidoContext)initWithCoder:(id)coder
{
  v29[2] = *MEMORY[0x1E69E9840];
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, coder);
  v26 = [location[0] decodeObjectOfClass:objc_opt_class() forKey:@"_relyingPartyIdentifier"];
  v25 = [location[0] decodeObjectOfClass:objc_opt_class() forKey:@"_challenge"];
  v24 = [location[0] decodeObjectOfClass:objc_opt_class() forKey:@"_userIdentifier"];
  v23 = [location[0] decodeObjectOfClass:objc_opt_class() forKey:@"_displayName"];
  v22 = [location[0] decodeObjectOfClass:objc_opt_class() forKey:@"_credentialName"];
  v17 = MEMORY[0x1E695DFD8];
  v29[0] = objc_opt_class();
  v29[1] = objc_opt_class();
  v18 = [MEMORY[0x1E695DEC8] arrayWithObjects:v29 count:2];
  v21 = [v17 setWithArray:?];
  MEMORY[0x1E69E5920](v18);
  v20 = [location[0] decodeObjectOfClasses:v21 forKey:@"_credentials"];
  v3 = selfCopy;
  selfCopy = 0;
  v19 = [(AKFidoContext *)v3 initWithChallenge:v25 relyingPartyIdentifier:v26 userIdentifier:v24 displayName:v23 credentialName:v22 credentials:v20];
  selfCopy = v19;
  objc_storeStrong(&selfCopy, v19);
  if (v19)
  {
    v4 = [location[0] decodeObjectOfClass:objc_opt_class() forKey:@"_originalChallenge"];
    originalChallenge = selfCopy->_originalChallenge;
    selfCopy->_originalChallenge = v4;
    MEMORY[0x1E69E5920](originalChallenge);
    v6 = [location[0] decodeObjectOfClass:objc_opt_class() forKey:@"_promptTitle"];
    promptTitle = selfCopy->_promptTitle;
    selfCopy->_promptTitle = v6;
    MEMORY[0x1E69E5920](promptTitle);
    v8 = [location[0] decodeObjectOfClass:objc_opt_class() forKey:@"_promptHeader"];
    promptHeader = selfCopy->_promptHeader;
    selfCopy->_promptHeader = v8;
    MEMORY[0x1E69E5920](promptHeader);
    v10 = [location[0] decodeObjectOfClass:objc_opt_class() forKey:@"_promptBody"];
    promptBody = selfCopy->_promptBody;
    selfCopy->_promptBody = v10;
    MEMORY[0x1E69E5920](promptBody);
    v12 = [location[0] decodeBoolForKey:@"_useAlternativeKeysIcon"];
    selfCopy->_useAlternativeKeysIcon = v12;
    v13 = [location[0] decodeObjectOfClass:objc_opt_class() forKey:@"_incorrectKeyPresentedMessage"];
    incorrectKeyPresentedMessage = selfCopy->_incorrectKeyPresentedMessage;
    selfCopy->_incorrectKeyPresentedMessage = v13;
    MEMORY[0x1E69E5920](incorrectKeyPresentedMessage);
  }

  v16 = MEMORY[0x1E69E5928](selfCopy);
  objc_storeStrong(&v20, 0);
  objc_storeStrong(&v21, 0);
  objc_storeStrong(&v22, 0);
  objc_storeStrong(&v23, 0);
  objc_storeStrong(&v24, 0);
  objc_storeStrong(&v25, 0);
  objc_storeStrong(&v26, 0);
  objc_storeStrong(location, 0);
  objc_storeStrong(&selfCopy, 0);
  *MEMORY[0x1E69E9840];
  return v16;
}

- (void)encodeWithCoder:(id)coder
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, coder);
  [location[0] encodeObject:selfCopy->_relyingPartyIdentifier forKey:@"_relyingPartyIdentifier"];
  [location[0] encodeObject:selfCopy->_challenge forKey:@"_challenge"];
  [location[0] encodeObject:selfCopy->_originalChallenge forKey:@"_originalChallenge"];
  [location[0] encodeObject:selfCopy->_userIdentifier forKey:@"_userIdentifier"];
  [location[0] encodeObject:selfCopy->_displayName forKey:@"_displayName"];
  [location[0] encodeObject:selfCopy->_credentialName forKey:@"_credentialName"];
  [location[0] encodeObject:selfCopy->_credentials forKey:@"_credentials"];
  [location[0] encodeObject:selfCopy->_promptTitle forKey:@"_promptTitle"];
  [location[0] encodeObject:selfCopy->_promptHeader forKey:@"_promptHeader"];
  [location[0] encodeObject:selfCopy->_promptBody forKey:@"_promptBody"];
  [location[0] encodeBool:selfCopy->_useAlternativeKeysIcon forKey:@"_useAlternativeKeysIcon"];
  [location[0] encodeObject:selfCopy->_incorrectKeyPresentedMessage forKey:@"_incorrectKeyPresentedMessage"];
  objc_storeStrong(location, 0);
}

- (id)copyWithZone:(_NSZone *)zone
{
  selfCopy = self;
  v25[2] = a2;
  v25[1] = zone;
  v25[0] = objc_alloc_init(objc_opt_class());
  v3 = [(NSString *)selfCopy->_relyingPartyIdentifier copy];
  v4 = *(v25[0] + 4);
  *(v25[0] + 4) = v3;
  MEMORY[0x1E69E5920](v4);
  v5 = [(NSData *)selfCopy->_challenge copy];
  v6 = *(v25[0] + 2);
  *(v25[0] + 2) = v5;
  MEMORY[0x1E69E5920](v6);
  v7 = [(NSString *)selfCopy->_originalChallenge copy];
  v8 = *(v25[0] + 3);
  *(v25[0] + 3) = v7;
  MEMORY[0x1E69E5920](v8);
  v9 = [(NSData *)selfCopy->_userIdentifier copy];
  v10 = *(v25[0] + 5);
  *(v25[0] + 5) = v9;
  MEMORY[0x1E69E5920](v10);
  v11 = [(NSString *)selfCopy->_displayName copy];
  v12 = *(v25[0] + 6);
  *(v25[0] + 6) = v11;
  MEMORY[0x1E69E5920](v12);
  v13 = [(NSString *)selfCopy->_credentialName copy];
  v14 = *(v25[0] + 7);
  *(v25[0] + 7) = v13;
  MEMORY[0x1E69E5920](v14);
  v15 = [(NSArray *)selfCopy->_credentials copy];
  v16 = *(v25[0] + 8);
  *(v25[0] + 8) = v15;
  MEMORY[0x1E69E5920](v16);
  v17 = [(NSString *)selfCopy->_promptTitle copy];
  v18 = *(v25[0] + 9);
  *(v25[0] + 9) = v17;
  MEMORY[0x1E69E5920](v18);
  v19 = [(NSString *)selfCopy->_promptHeader copy];
  v20 = *(v25[0] + 10);
  *(v25[0] + 10) = v19;
  MEMORY[0x1E69E5920](v20);
  v21 = [(NSString *)selfCopy->_promptBody copy];
  v22 = *(v25[0] + 11);
  *(v25[0] + 11) = v21;
  MEMORY[0x1E69E5920](v22);
  *(v25[0] + 8) = selfCopy->_useAlternativeKeysIcon;
  objc_storeStrong(v25[0] + 12, selfCopy->_incorrectKeyPresentedMessage);
  v24 = MEMORY[0x1E69E5928](v25[0]);
  objc_storeStrong(v25, 0);
  return v24;
}

- (id)debugDescription
{
  v4 = MEMORY[0x1E696AEC0];
  v2 = objc_opt_class();
  v5 = NSStringFromClass(v2);
  v6 = [v4 stringWithFormat:@"<%@: %p {\n\tRelyingPartyIdentifier: %@, \n\tChallenge: %@, \n\tOriginal Challenge: %@, \n\tUserIdentifier: %@, \n\tDisplayName: %@, \n\tCredentialName: %@, \n\tCredentials: %@, \n\tPromptTitle: %@, \n\tPromptHeader: %@, \n\tPromptBody: %@, \n\tIncorrectKeyPresentedMessage: %@, \n}>", v5, self, self->_relyingPartyIdentifier, self->_challenge, self->_originalChallenge, self->_userIdentifier, self->_displayName, self->_credentialName, self->_credentials, self->_promptTitle, self->_promptHeader, self->_promptBody, self->_incorrectKeyPresentedMessage];
  MEMORY[0x1E69E5920](v5);

  return v6;
}

@end