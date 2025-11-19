@interface AKAccountRecoveryContext
+ (AKAccountRecoveryContext)recoveryContextWithAuthContext:(id)a3;
+ (AKAccountRecoveryContext)recoveryContextWithServerInfo:(id)a3;
- (AKAccountRecoveryContext)initWithCoder:(id)a3;
- (BOOL)isValid;
- (NSString)decodedRecoveryIdentityTokenString;
- (NSString)decodedRecoveryPETString;
- (void)encodeWithCoder:(id)a3;
@end

@implementation AKAccountRecoveryContext

+ (AKAccountRecoveryContext)recoveryContextWithServerInfo:(id)a3
{
  v26 = *MEMORY[0x1E69E9840];
  v24 = a1;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  v22 = _AKLogSystem();
  v21 = OS_LOG_TYPE_DEFAULT;
  if (os_log_type_enabled(v22, OS_LOG_TYPE_DEFAULT))
  {
    __os_log_helper_16_2_1_8_64(v25, location[0]);
    _os_log_impl(&dword_193225000, v22, v21, "Building recovery context with info: %@", v25, 0xCu);
  }

  objc_storeStrong(&v22, 0);
  v20 = objc_alloc_init(AKAppleIDAuthenticationContext);
  v6 = [location[0] objectForKeyedSubscript:@"X-Apple-Alternate-Id"];
  [(AKAppleIDAuthenticationContext *)v20 setAltDSID:?];
  MEMORY[0x1E69E5920](v6);
  v7 = [location[0] objectForKeyedSubscript:@"X-Apple-DSID"];
  [(AKAppleIDAuthenticationContext *)v20 setDSID:?];
  MEMORY[0x1E69E5920](v7);
  v8 = [location[0] objectForKeyedSubscript:@"AKUsername"];
  [(AKAppleIDAuthenticationContext *)v20 setUsername:?];
  MEMORY[0x1E69E5920](v8);
  v19 = objc_alloc_init(v24);
  [v19 setAuthContext:v20];
  v9 = [location[0] objectForKeyedSubscript:@"X-Apple-AK-Action"];
  v3 = [v9 isEqualToString:@"mk-validation"];
  [v19 setSupportsMasterKeyRecovery:v3];
  MEMORY[0x1E69E5920](v9);
  v10 = [location[0] objectForKeyedSubscript:@"X-Apple-Recovery-Identity-Token"];
  [v19 setEncodedRecoveryIdentityToken:?];
  MEMORY[0x1E69E5920](v10);
  v11 = [location[0] objectForKeyedSubscript:@"X-Apple-Recovery-PE-Token"];
  [v19 setEncodedRecoveryPET:?];
  MEMORY[0x1E69E5920](v11);
  v12 = objc_opt_class();
  v14 = [location[0] objectForKeyedSubscript:@"RKMandate"];
  v13 = _AKSafeCast_14(v12, v14);
  v4 = [v13 isEqualToString:@"true"];
  [v19 setMandatesRecoveryKey:v4];
  MEMORY[0x1E69E5920](v13);
  MEMORY[0x1E69E5920](v14);
  v15 = MEMORY[0x1E695DFF8];
  v17 = [location[0] objectForKeyedSubscript:@"AKRecoveryURLKey"];
  v16 = [v15 URLWithString:?];
  [v19 setRecoveryContinuationURL:?];
  MEMORY[0x1E69E5920](v16);
  MEMORY[0x1E69E5920](v17);
  v18 = MEMORY[0x1E69E5928](v19);
  objc_storeStrong(&v19, 0);
  objc_storeStrong(&v20, 0);
  objc_storeStrong(location, 0);
  *MEMORY[0x1E69E9840];

  return v18;
}

+ (AKAccountRecoveryContext)recoveryContextWithAuthContext:(id)a3
{
  v11 = *MEMORY[0x1E69E9840];
  v9 = a1;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  v7 = _AKLogSystem();
  v6 = OS_LOG_TYPE_DEFAULT;
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    __os_log_helper_16_2_1_8_64(v10, location[0]);
    _os_log_impl(&dword_193225000, v7, v6, "Building recovery context with authContext: %@", v10, 0xCu);
  }

  objc_storeStrong(&v7, 0);
  v5 = objc_alloc_init(v9);
  [v5 setAuthContext:location[0]];
  v4 = MEMORY[0x1E69E5928](v5);
  objc_storeStrong(&v5, 0);
  objc_storeStrong(location, 0);
  *MEMORY[0x1E69E9840];

  return v4;
}

- (AKAccountRecoveryContext)initWithCoder:(id)a3
{
  v19 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  v3 = v19;
  v19 = 0;
  v17.receiver = v3;
  v17.super_class = AKAccountRecoveryContext;
  v16 = [(AKAccountRecoveryContext *)&v17 init];
  v19 = v16;
  objc_storeStrong(&v19, v16);
  if (v16)
  {
    v4 = [location[0] decodeObjectOfClass:objc_opt_class() forKey:@"_encodedRecoveryIdentityToken"];
    encodedRecoveryIdentityToken = v19->_encodedRecoveryIdentityToken;
    v19->_encodedRecoveryIdentityToken = v4;
    MEMORY[0x1E69E5920](encodedRecoveryIdentityToken);
    v6 = [location[0] decodeObjectOfClass:objc_opt_class() forKey:@"_encodedRecoveryPET"];
    encodedRecoveryPET = v19->_encodedRecoveryPET;
    v19->_encodedRecoveryPET = v6;
    MEMORY[0x1E69E5920](encodedRecoveryPET);
    v8 = [location[0] decodeObjectOfClass:objc_opt_class() forKey:@"_authContext"];
    authContext = v19->_authContext;
    v19->_authContext = v8;
    MEMORY[0x1E69E5920](authContext);
    v10 = [location[0] decodeObjectOfClass:objc_opt_class() forKey:@"_recoveryContinuationURL"];
    recoveryContinuationURL = v19->_recoveryContinuationURL;
    v19->_recoveryContinuationURL = v10;
    MEMORY[0x1E69E5920](recoveryContinuationURL);
    v12 = [location[0] decodeBoolForKey:@"_supportsMasterKeyRecovery"];
    v19->_supportsMasterKeyRecovery = v12;
    v13 = [location[0] decodeBoolForKey:@"_mandatesRecoveryKey"];
    v19->_mandatesRecoveryKey = v13;
  }

  v15 = MEMORY[0x1E69E5928](v19);
  objc_storeStrong(location, 0);
  objc_storeStrong(&v19, 0);
  return v15;
}

- (void)encodeWithCoder:(id)a3
{
  v4 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  [location[0] encodeObject:v4->_encodedRecoveryIdentityToken forKey:@"_encodedRecoveryIdentityToken"];
  [location[0] encodeObject:v4->_encodedRecoveryPET forKey:@"_encodedRecoveryPET"];
  [location[0] encodeObject:v4->_authContext forKey:@"_authContext"];
  [location[0] encodeObject:v4->_recoveryContinuationURL forKey:@"_recoveryContinuationURL"];
  [location[0] encodeBool:v4->_supportsMasterKeyRecovery forKey:@"_supportsMasterKeyRecovery"];
  [location[0] encodeBool:v4->_mandatesRecoveryKey forKey:@"_mandatesRecoveryKey"];
  objc_storeStrong(location, 0);
}

- (NSString)decodedRecoveryIdentityTokenString
{
  v4 = [(AKAccountRecoveryContext *)self encodedRecoveryIdentityToken];
  v3 = [AKToken tokenWithBase64String:?];
  v5 = [(AKToken *)v3 stringValue];
  MEMORY[0x1E69E5920](v3);
  MEMORY[0x1E69E5920](v4);

  return v5;
}

- (NSString)decodedRecoveryPETString
{
  v4 = [(AKAccountRecoveryContext *)self encodedRecoveryPET];
  v3 = [AKToken tokenWithBase64String:?];
  v5 = [(AKToken *)v3 stringValue];
  MEMORY[0x1E69E5920](v3);
  MEMORY[0x1E69E5920](v4);

  return v5;
}

- (BOOL)isValid
{
  v2 = [(AKAccountRecoveryContext *)self decodedRecoveryIdentityTokenString];
  v12 = v2 != 0;
  MEMORY[0x1E69E5920](v2);
  v3 = [(AKAccountRecoveryContext *)self decodedRecoveryPETString];
  v13 = v12 && v3 != 0;
  MEMORY[0x1E69E5920](v3);
  v9 = [(AKAccountRecoveryContext *)self authContext];
  v4 = [(AKAppleIDAuthenticationContext *)v9 username];
  v14 = v13 && v4 != 0;
  MEMORY[0x1E69E5920](v4);
  MEMORY[0x1E69E5920](v9);
  v5 = [(AKAccountRecoveryContext *)self recoveryContinuationURL];
  v15 = v14 && v5 != 0;
  MEMORY[0x1E69E5920](v5);
  v10 = [(AKAccountRecoveryContext *)self authContext];
  v6 = [(AKAppleIDAuthenticationContext *)v10 altDSID];
  v16 = v15 && v6 != 0;
  MEMORY[0x1E69E5920](v6);
  MEMORY[0x1E69E5920](v10);
  v11 = [(AKAccountRecoveryContext *)self authContext];
  v7 = [(AKAppleIDAuthenticationContext *)v11 DSID];
  v17 = v16 && v7 != 0;
  MEMORY[0x1E69E5920](v7);
  MEMORY[0x1E69E5920](v11);
  return v17;
}

@end