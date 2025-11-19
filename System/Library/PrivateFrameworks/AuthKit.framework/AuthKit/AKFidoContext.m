@interface AKFidoContext
- (AKFidoContext)initWithChallenge:(id)a3 relyingPartyIdentifier:(id)a4 userIdentifier:(id)a5 displayName:(id)a6 credentialName:(id)a7 credentials:(id)a8;
- (AKFidoContext)initWithChallengeString:(id)a3 relyingPartyIdentifier:(id)a4 userIdentifierString:(id)a5 displayName:(id)a6 credentialName:(id)a7 credentials:(id)a8;
- (AKFidoContext)initWithCoder:(id)a3;
- (AKFidoContext)initWithParameters:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (id)debugDescription;
- (void)encodeWithCoder:(id)a3;
@end

@implementation AKFidoContext

- (AKFidoContext)initWithParameters:(id)a3
{
  v11 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  v5 = [location[0] objectForKeyedSubscript:@"challenge"];
  v9 = [v5 aaf_base64Padded];
  MEMORY[0x1E69E5920](v5);
  v8 = [location[0] objectForKeyedSubscript:@"rpid"];
  v7 = [location[0] objectForKeyedSubscript:@"credentialIds"];
  v3 = v11;
  v11 = 0;
  v11 = [(AKFidoContext *)v3 initWithChallengeString:v9 relyingPartyIdentifier:v8 userIdentifierString:0 displayName:0 credentialName:0 credentials:v7];
  v6 = MEMORY[0x1E69E5928](v11);
  objc_storeStrong(&v7, 0);
  objc_storeStrong(&v8, 0);
  objc_storeStrong(&v9, 0);
  objc_storeStrong(location, 0);
  objc_storeStrong(&v11, 0);
  return v6;
}

- (AKFidoContext)initWithChallengeString:(id)a3 relyingPartyIdentifier:(id)a4 userIdentifierString:(id)a5 displayName:(id)a6 credentialName:(id)a7 credentials:(id)a8
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
  v19 = [location[0] aaf_base64Padded];
  v18 = [objc_alloc(MEMORY[0x1E695DEF0]) initWithBase64EncodedString:v19 options:0];
  if (!v18)
  {
    v18 = [location[0] dataUsingEncoding:4];
    MEMORY[0x1E69E5920](0);
  }

  v17 = [v23 dataUsingEncoding:4];
  v8 = v26;
  v26 = 0;
  v11 = [(AKFidoContext *)v8 initWithChallenge:v18 relyingPartyIdentifier:v24 userIdentifier:v17 displayName:v22 credentialName:v21 credentials:v20];
  v26 = v11;
  objc_storeStrong(&v26, v11);
  if (v11)
  {
    objc_storeStrong(&v26->_originalChallenge, location[0]);
  }

  v10 = MEMORY[0x1E69E5928](v26);
  objc_storeStrong(&v17, 0);
  objc_storeStrong(&v18, 0);
  objc_storeStrong(&v19, 0);
  objc_storeStrong(&v20, 0);
  objc_storeStrong(&v21, 0);
  objc_storeStrong(&v22, 0);
  objc_storeStrong(&v23, 0);
  objc_storeStrong(&v24, 0);
  objc_storeStrong(location, 0);
  objc_storeStrong(&v26, 0);
  return v10;
}

- (AKFidoContext)initWithChallenge:(id)a3 relyingPartyIdentifier:(id)a4 userIdentifier:(id)a5 displayName:(id)a6 credentialName:(id)a7 credentials:(id)a8
{
  v24 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  v22 = 0;
  objc_storeStrong(&v22, a4);
  v21 = 0;
  objc_storeStrong(&v21, a5);
  v20 = 0;
  objc_storeStrong(&v20, a6);
  v19 = 0;
  objc_storeStrong(&v19, a7);
  v18 = 0;
  objc_storeStrong(&v18, a8);
  v8 = v24;
  v24 = 0;
  v17.receiver = v8;
  v17.super_class = AKFidoContext;
  v16 = [(AKFidoContext *)&v17 init];
  v24 = v16;
  objc_storeStrong(&v24, v16);
  if (v16)
  {
    objc_storeStrong(&v24->_challenge, location[0]);
    objc_storeStrong(&v24->_userIdentifier, v21);
    objc_storeStrong(&v24->_relyingPartyIdentifier, v22);
    objc_storeStrong(&v24->_displayName, v20);
    objc_storeStrong(&v24->_credentialName, v19);
    objc_storeStrong(&v24->_credentials, v18);
  }

  v10 = MEMORY[0x1E69E5928](v24);
  objc_storeStrong(&v18, 0);
  objc_storeStrong(&v19, 0);
  objc_storeStrong(&v20, 0);
  objc_storeStrong(&v21, 0);
  objc_storeStrong(&v22, 0);
  objc_storeStrong(location, 0);
  objc_storeStrong(&v24, 0);
  return v10;
}

- (AKFidoContext)initWithCoder:(id)a3
{
  v29[2] = *MEMORY[0x1E69E9840];
  v28 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
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
  v3 = v28;
  v28 = 0;
  v19 = [(AKFidoContext *)v3 initWithChallenge:v25 relyingPartyIdentifier:v26 userIdentifier:v24 displayName:v23 credentialName:v22 credentials:v20];
  v28 = v19;
  objc_storeStrong(&v28, v19);
  if (v19)
  {
    v4 = [location[0] decodeObjectOfClass:objc_opt_class() forKey:@"_originalChallenge"];
    originalChallenge = v28->_originalChallenge;
    v28->_originalChallenge = v4;
    MEMORY[0x1E69E5920](originalChallenge);
    v6 = [location[0] decodeObjectOfClass:objc_opt_class() forKey:@"_promptTitle"];
    promptTitle = v28->_promptTitle;
    v28->_promptTitle = v6;
    MEMORY[0x1E69E5920](promptTitle);
    v8 = [location[0] decodeObjectOfClass:objc_opt_class() forKey:@"_promptHeader"];
    promptHeader = v28->_promptHeader;
    v28->_promptHeader = v8;
    MEMORY[0x1E69E5920](promptHeader);
    v10 = [location[0] decodeObjectOfClass:objc_opt_class() forKey:@"_promptBody"];
    promptBody = v28->_promptBody;
    v28->_promptBody = v10;
    MEMORY[0x1E69E5920](promptBody);
    v12 = [location[0] decodeBoolForKey:@"_useAlternativeKeysIcon"];
    v28->_useAlternativeKeysIcon = v12;
    v13 = [location[0] decodeObjectOfClass:objc_opt_class() forKey:@"_incorrectKeyPresentedMessage"];
    incorrectKeyPresentedMessage = v28->_incorrectKeyPresentedMessage;
    v28->_incorrectKeyPresentedMessage = v13;
    MEMORY[0x1E69E5920](incorrectKeyPresentedMessage);
  }

  v16 = MEMORY[0x1E69E5928](v28);
  objc_storeStrong(&v20, 0);
  objc_storeStrong(&v21, 0);
  objc_storeStrong(&v22, 0);
  objc_storeStrong(&v23, 0);
  objc_storeStrong(&v24, 0);
  objc_storeStrong(&v25, 0);
  objc_storeStrong(&v26, 0);
  objc_storeStrong(location, 0);
  objc_storeStrong(&v28, 0);
  *MEMORY[0x1E69E9840];
  return v16;
}

- (void)encodeWithCoder:(id)a3
{
  v4 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  [location[0] encodeObject:v4->_relyingPartyIdentifier forKey:@"_relyingPartyIdentifier"];
  [location[0] encodeObject:v4->_challenge forKey:@"_challenge"];
  [location[0] encodeObject:v4->_originalChallenge forKey:@"_originalChallenge"];
  [location[0] encodeObject:v4->_userIdentifier forKey:@"_userIdentifier"];
  [location[0] encodeObject:v4->_displayName forKey:@"_displayName"];
  [location[0] encodeObject:v4->_credentialName forKey:@"_credentialName"];
  [location[0] encodeObject:v4->_credentials forKey:@"_credentials"];
  [location[0] encodeObject:v4->_promptTitle forKey:@"_promptTitle"];
  [location[0] encodeObject:v4->_promptHeader forKey:@"_promptHeader"];
  [location[0] encodeObject:v4->_promptBody forKey:@"_promptBody"];
  [location[0] encodeBool:v4->_useAlternativeKeysIcon forKey:@"_useAlternativeKeysIcon"];
  [location[0] encodeObject:v4->_incorrectKeyPresentedMessage forKey:@"_incorrectKeyPresentedMessage"];
  objc_storeStrong(location, 0);
}

- (id)copyWithZone:(_NSZone *)a3
{
  v26 = self;
  v25[2] = a2;
  v25[1] = a3;
  v25[0] = objc_alloc_init(objc_opt_class());
  v3 = [(NSString *)v26->_relyingPartyIdentifier copy];
  v4 = *(v25[0] + 4);
  *(v25[0] + 4) = v3;
  MEMORY[0x1E69E5920](v4);
  v5 = [(NSData *)v26->_challenge copy];
  v6 = *(v25[0] + 2);
  *(v25[0] + 2) = v5;
  MEMORY[0x1E69E5920](v6);
  v7 = [(NSString *)v26->_originalChallenge copy];
  v8 = *(v25[0] + 3);
  *(v25[0] + 3) = v7;
  MEMORY[0x1E69E5920](v8);
  v9 = [(NSData *)v26->_userIdentifier copy];
  v10 = *(v25[0] + 5);
  *(v25[0] + 5) = v9;
  MEMORY[0x1E69E5920](v10);
  v11 = [(NSString *)v26->_displayName copy];
  v12 = *(v25[0] + 6);
  *(v25[0] + 6) = v11;
  MEMORY[0x1E69E5920](v12);
  v13 = [(NSString *)v26->_credentialName copy];
  v14 = *(v25[0] + 7);
  *(v25[0] + 7) = v13;
  MEMORY[0x1E69E5920](v14);
  v15 = [(NSArray *)v26->_credentials copy];
  v16 = *(v25[0] + 8);
  *(v25[0] + 8) = v15;
  MEMORY[0x1E69E5920](v16);
  v17 = [(NSString *)v26->_promptTitle copy];
  v18 = *(v25[0] + 9);
  *(v25[0] + 9) = v17;
  MEMORY[0x1E69E5920](v18);
  v19 = [(NSString *)v26->_promptHeader copy];
  v20 = *(v25[0] + 10);
  *(v25[0] + 10) = v19;
  MEMORY[0x1E69E5920](v20);
  v21 = [(NSString *)v26->_promptBody copy];
  v22 = *(v25[0] + 11);
  *(v25[0] + 11) = v21;
  MEMORY[0x1E69E5920](v22);
  *(v25[0] + 8) = v26->_useAlternativeKeysIcon;
  objc_storeStrong(v25[0] + 12, v26->_incorrectKeyPresentedMessage);
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