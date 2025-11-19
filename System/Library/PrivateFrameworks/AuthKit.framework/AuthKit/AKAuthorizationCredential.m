@interface AKAuthorizationCredential
- (AKAuthorizationCredential)init;
- (AKAuthorizationCredential)initWithCoder:(id)a3;
- (AKAuthorizationCredential)initWithServerResponse:(id)a3;
- (NSString)description;
- (void)encodeWithCoder:(id)a3;
@end

@implementation AKAuthorizationCredential

- (AKAuthorizationCredential)init
{
  v5 = a2;
  v6 = 0;
  v4.receiver = self;
  v4.super_class = AKAuthorizationCredential;
  v6 = [(AKAuthorizationCredential *)&v4 init];
  v3 = MEMORY[0x1E69E5928](v6);
  objc_storeStrong(&v6, 0);
  return v3;
}

- (AKAuthorizationCredential)initWithServerResponse:(id)a3
{
  v47 = *MEMORY[0x1E69E9840];
  v44 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  v3 = v44;
  v44 = 0;
  v42.receiver = v3;
  v42.super_class = AKAuthorizationCredential;
  v32 = [(AKAuthorizationCredential *)&v42 init];
  v44 = v32;
  objc_storeStrong(&v44, v32);
  if (v32)
  {
    v41 = _AKLogSiwa();
    v40 = OS_LOG_TYPE_DEFAULT;
    if (os_log_type_enabled(v41, OS_LOG_TYPE_DEFAULT))
    {
      v31 = [location[0] serverProvidedData];
      __os_log_helper_16_2_1_8_64(v46, v31);
      _os_log_impl(&dword_193225000, v41, v40, "Parsing server provided Data %@", v46, 0xCu);
      MEMORY[0x1E69E5920](v31);
    }

    objc_storeStrong(&v41, 0);
    v39 = [location[0] serverProvidedData];
    v4 = [v39 objectForKeyedSubscript:@"uid"];
    userIdentifier = v44->_userIdentifier;
    v44->_userIdentifier = v4;
    MEMORY[0x1E69E5920](userIdentifier);
    v38 = [location[0] serviceTokens];
    v37 = [v38 objectForKeyedSubscript:@"IDToken"];
    if (v37)
    {
      v30 = [v37 stringValue];
      v6 = [v30 dataUsingEncoding:4];
      identityToken = v44->_identityToken;
      v44->_identityToken = v6;
      MEMORY[0x1E69E5920](identityToken);
      MEMORY[0x1E69E5920](v30);
    }

    v36 = [v38 objectForKeyedSubscript:@"authCode"];
    if (v36)
    {
      v29 = [v36 stringValue];
      v8 = [v29 dataUsingEncoding:4];
      authorizationCode = v44->_authorizationCode;
      v44->_authorizationCode = v8;
      MEMORY[0x1E69E5920](authorizationCode);
      MEMORY[0x1E69E5920](v29);
    }

    v35 = [v39 objectForKeyedSubscript:@"apd"];
    v10 = [v35 objectForKeyedSubscript:@"state"];
    state = v44->_state;
    v44->_state = v10;
    MEMORY[0x1E69E5920](state);
    v34 = [v39 objectForKeyedSubscript:@"isLikelyRealUser"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v12 = [v34 integerValue] == 1;
      v44->_isLikelyRealUser = v12;
    }

    v13 = [v39 objectForKeyedSubscript:@"scopes"];
    authorizedScopes = v44->_authorizedScopes;
    v44->_authorizedScopes = v13;
    MEMORY[0x1E69E5920](authorizedScopes);
    v15 = [location[0] transactionId];
    transactionID = v44->_transactionID;
    v44->_transactionID = v15;
    MEMORY[0x1E69E5920](transactionID);
    v33 = _AKLogSiwa();
    if (os_log_type_enabled(v33, OS_LOG_TYPE_DEBUG))
    {
      v28 = [location[0] transactionId];
      __os_log_helper_16_2_1_8_64(v45, v28);
      _os_log_debug_impl(&dword_193225000, v33, OS_LOG_TYPE_DEBUG, "AKAuthorizationCredential Successfully created with transaction id:%@", v45, 0xCu);
      MEMORY[0x1E69E5920](v28);
    }

    objc_storeStrong(&v33, 0);
    v17 = objc_alloc_init(AKUserInformation);
    userInformation = v44->_userInformation;
    v44->_userInformation = v17;
    MEMORY[0x1E69E5920](userInformation);
    v21 = [location[0] privateEmail];
    [(AKUserInformation *)v44->_userInformation setSelectedEmail:?];
    MEMORY[0x1E69E5920](v21);
    v22 = objc_opt_class();
    v24 = [v39 objectForKeyedSubscript:@"webAccessEnabled"];
    v23 = _AKSafeCast_17(v22, v24);
    [(AKUserInformation *)v44->_userInformation setWebAccessEnabled:?];
    MEMORY[0x1E69E5920](v23);
    MEMORY[0x1E69E5920](v24);
    v25 = objc_opt_class();
    v27 = [v39 objectForKeyedSubscript:@"serverExperimentalFeatures"];
    v26 = _AKSafeCast_17(v25, v27);
    [(AKUserInformation *)v44->_userInformation setServerExperimentalFeatures:?];
    MEMORY[0x1E69E5920](v26);
    MEMORY[0x1E69E5920](v27);
    objc_storeStrong(&v34, 0);
    objc_storeStrong(&v35, 0);
    objc_storeStrong(&v36, 0);
    objc_storeStrong(&v37, 0);
    objc_storeStrong(&v38, 0);
    objc_storeStrong(&v39, 0);
  }

  v20 = MEMORY[0x1E69E5928](v44);
  objc_storeStrong(location, 0);
  objc_storeStrong(&v44, 0);
  *MEMORY[0x1E69E9840];
  return v20;
}

- (AKAuthorizationCredential)initWithCoder:(id)a3
{
  v40 = &v44;
  v44 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  v3 = v44;
  v44 = 0;
  v42.receiver = v3;
  v42.super_class = AKAuthorizationCredential;
  v44 = [(AKAuthorizationCredential *)&v42 init];
  objc_storeStrong(&v44, v44);
  if (!v44)
  {
    goto LABEL_4;
  }

  v28 = location[0];
  v38 = 0x1E696A000uLL;
  v4 = [location[0] decodeObjectOfClass:objc_opt_class() forKey:@"AKUserIdentifier"];
  v5 = *(v44 + 2);
  *(v44 + 2) = v4;
  MEMORY[0x1E69E5920](v5);
  v31 = location[0];
  v30 = MEMORY[0x1E695DFD8];
  v29 = objc_opt_class();
  v6 = *(v38 + 3776);
  v32 = [v30 setWithObjects:{v29, objc_opt_class(), 0}];
  v7 = [v31 decodeObjectOfClasses:? forKey:?];
  v8 = *(v44 + 3);
  *(v44 + 3) = v7;
  MEMORY[0x1E69E5920](v8);
  MEMORY[0x1E69E5920](v32);
  v33 = location[0];
  v9 = [location[0] decodeObjectOfClass:objc_opt_class() forKey:@"AKUserInformation"];
  v10 = *(v44 + 7);
  *(v44 + 7) = v9;
  MEMORY[0x1E69E5920](v10);
  v34 = location[0];
  v35 = 0x1E695D000uLL;
  v11 = [location[0] decodeObjectOfClass:objc_opt_class() forKey:@"AKAuthorizationCode"];
  v12 = *(v44 + 5);
  *(v44 + 5) = v11;
  MEMORY[0x1E69E5920](v12);
  v36 = location[0];
  v13 = *(v35 + 3824);
  v14 = [location[0] decodeObjectOfClass:objc_opt_class() forKey:@"AKIdentityToken"];
  v15 = *(v44 + 4);
  *(v44 + 4) = v14;
  MEMORY[0x1E69E5920](v15);
  v37 = location[0];
  v16 = *(v38 + 3776);
  v17 = [location[0] decodeObjectOfClass:objc_opt_class() forKey:@"_state"];
  v18 = *(v44 + 6);
  *(v44 + 6) = v17;
  MEMORY[0x1E69E5920](v18);
  v19 = [location[0] decodeBoolForKey:@"_isLikelyRealUser"];
  v20 = v38;
  *(v44 + 8) = v19;
  v39 = location[0];
  v21 = *(v20 + 3776);
  v22 = [location[0] decodeObjectOfClass:objc_opt_class() forKey:@"_transactionID"];
  v23 = *(v44 + 8);
  *(v44 + 8) = v22;
  MEMORY[0x1E69E5920](v23);
  if (*(v44 + 2))
  {
LABEL_4:
    v45 = MEMORY[0x1E69E5928](v44);
    v41 = 1;
  }

  else
  {
    v26 = location[0];
    v27 = [MEMORY[0x1E696ABC0] ak_errorWithCode:-7044];
    [v26 failWithError:?];
    MEMORY[0x1E69E5920](v27);
    v45 = 0;
    v41 = 1;
  }

  obj = 0;
  objc_storeStrong(location, 0);
  objc_storeStrong(&v44, obj);
  return v45;
}

- (NSString)description
{
  v6 = MEMORY[0x1E696AEC0];
  userIdentifier = self->_userIdentifier;
  identityToken = self->_identityToken;
  authorizationCode = self->_authorizationCode;
  v7 = [MEMORY[0x1E696AD98] numberWithBool:self->_isLikelyRealUser];
  v8 = [v6 stringWithFormat:@"Authorization Credential:\n UID: %@ \n Identity Token: %@ \n AuthorizationCode: %@ \n User Verification Result: %@ \n User Info: %@ /n Transaction ID: %@", userIdentifier, identityToken, authorizationCode, v7, self->_userInformation, self->_transactionID];
  MEMORY[0x1E69E5920](v7);

  return v8;
}

- (void)encodeWithCoder:(id)a3
{
  v4 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  [location[0] encodeObject:v4->_userIdentifier forKey:@"AKUserIdentifier"];
  [location[0] encodeObject:v4->_authorizedScopes forKey:@"AKAuthorizedScopes"];
  [location[0] encodeObject:v4->_userInformation forKey:@"AKUserInformation"];
  [location[0] encodeObject:v4->_authorizationCode forKey:@"AKAuthorizationCode"];
  [location[0] encodeObject:v4->_identityToken forKey:@"AKIdentityToken"];
  [location[0] encodeObject:v4->_state forKey:@"_state"];
  [location[0] encodeBool:v4->_isLikelyRealUser forKey:@"_isLikelyRealUser"];
  [location[0] encodeObject:v4->_transactionID forKey:@"_transactionID"];
  objc_storeStrong(location, 0);
}

@end