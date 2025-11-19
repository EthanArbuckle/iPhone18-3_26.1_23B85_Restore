@interface AKMasterToken
+ (id)tokenWithExternalizedVersion:(id)a3 lifetime:(id)a4;
+ (id)tokenWithExternalizedVersionString:(id)a3;
- (AKMasterToken)init;
- (AKMasterToken)initWithAppleID:(id)a3 altDSID:(id)a4;
- (BOOL)updateWithHTTPURLResponse:(id)a3;
- (NSData)externalizedVersion;
- (NSString)externalizedVersionString;
- (void)_setEncryptedSessionKey:(id)a3;
- (void)_setSessionKey:(id)a3;
- (void)setStringValue:(id)a3;
@end

@implementation AKMasterToken

+ (id)tokenWithExternalizedVersionString:(id)a3
{
  v7 = a1;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  v5 = [location[0] dataUsingEncoding:1];
  v4 = [v7 tokenWithExternalizedVersion:v5 lifetime:0];
  objc_storeStrong(&v5, 0);
  objc_storeStrong(location, 0);

  return v4;
}

+ (id)tokenWithExternalizedVersion:(id)a3 lifetime:(id)a4
{
  v26 = *MEMORY[0x1E69E9840];
  location[2] = a1;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  v22 = 0;
  objc_storeStrong(&v22, a4);
  v21 = 0;
  v19 = 0;
  v13 = [MEMORY[0x1E696AE40] propertyListWithData:location[0] options:0 format:0 error:&v19];
  objc_storeStrong(&v21, v19);
  v20 = v13;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v14 = objc_alloc_init(AKMasterToken);
    v5 = [v20 mutableCopy];
    properties = v14->_properties;
    v14->_properties = v5;
    MEMORY[0x1E69E5920](properties);
    v11 = MEMORY[0x1E695DF00];
    [v22 doubleValue];
    v7 = [v11 dateWithTimeIntervalSinceNow:?];
    expirationDate = v14->super._expirationDate;
    v14->super._expirationDate = v7;
    MEMORY[0x1E69E5920](expirationDate);
    v24 = MEMORY[0x1E69E5928](v14);
    v15 = 1;
    objc_storeStrong(&v14, 0);
  }

  else
  {
    v4 = objc_alloc(MEMORY[0x1E696AEC0]);
    v18 = [v4 initWithData:location[0] encoding:1];
    oslog = _AKLogSystem();
    type = OS_LOG_TYPE_ERROR;
    if (os_log_type_enabled(oslog, OS_LOG_TYPE_ERROR))
    {
      __os_log_helper_16_2_1_8_64(v25, v18);
      _os_log_error_impl(&dword_193225000, oslog, type, "Error: Got malformed GS token data!\n%@\n", v25, 0xCu);
    }

    objc_storeStrong(&oslog, 0);
    v24 = 0;
    v15 = 1;
    objc_storeStrong(&v18, 0);
  }

  objc_storeStrong(&v20, 0);
  objc_storeStrong(&v21, 0);
  objc_storeStrong(&v22, 0);
  objc_storeStrong(location, 0);
  *MEMORY[0x1E69E9840];
  v9 = v24;

  return v9;
}

- (BOOL)updateWithHTTPURLResponse:(id)a3
{
  v27 = *MEMORY[0x1E69E9840];
  v22 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  v20 = [location[0] allHeaderFields];
  v7 = [v20 objectForKeyedSubscript:@"X-Apple-Identity-Token"];
  v19 = [AKToken tokenWithBase64String:?];
  MEMORY[0x1E69E5920](v7);
  if (v19)
  {
    v15 = [v20 objectForKeyedSubscript:@"X-Apple-Session-Key"];
    if (v15)
    {
      v12 = [v20 objectForKeyedSubscript:@"X-Apple-Encrypted-Session-Key"];
      if (v12)
      {
        v5 = v22;
        v6 = [v19 stringValue];
        [(AKMasterToken *)v5 setStringValue:?];
        MEMORY[0x1E69E5920](v6);
        v9 = [objc_alloc(MEMORY[0x1E695DEF0]) initWithBase64EncodedString:v15 options:?];
        [(AKMasterToken *)v22 _setSessionKey:v9];
        v3 = objc_alloc(MEMORY[0x1E695DEF0]);
        v8 = [v3 initWithBase64EncodedString:v12 options:0];
        [(AKMasterToken *)v22 _setEncryptedSessionKey:v8];
        v23 = 1;
        v16 = 1;
        objc_storeStrong(&v8, 0);
        objc_storeStrong(&v9, 0);
      }

      else
      {
        v11 = _AKLogSystem();
        v10 = OS_LOG_TYPE_ERROR;
        if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
        {
          __os_log_helper_16_2_1_8_64(v24, @"X-Apple-Encrypted-Session-Key");
          _os_log_error_impl(&dword_193225000, v11, v10, "Nil value for expected header: %@", v24, 0xCu);
        }

        objc_storeStrong(&v11, 0);
        v23 = 0;
        v16 = 1;
      }

      objc_storeStrong(&v12, 0);
    }

    else
    {
      v14 = _AKLogSystem();
      v13 = OS_LOG_TYPE_ERROR;
      if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
      {
        __os_log_helper_16_2_1_8_64(v25, @"X-Apple-Session-Key");
        _os_log_error_impl(&dword_193225000, v14, v13, "Nil value for expected header: %@", v25, 0xCu);
      }

      objc_storeStrong(&v14, 0);
      v23 = 0;
      v16 = 1;
    }

    objc_storeStrong(&v15, 0);
  }

  else
  {
    v18 = _AKLogSystem();
    v17 = OS_LOG_TYPE_ERROR;
    if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
    {
      __os_log_helper_16_2_1_8_64(v26, @"X-Apple-Identity-Token");
      _os_log_error_impl(&dword_193225000, v18, v17, "Value for %@ is missing/invalid!", v26, 0xCu);
    }

    objc_storeStrong(&v18, 0);
    v23 = 0;
    v16 = 1;
  }

  objc_storeStrong(&v19, 0);
  objc_storeStrong(&v20, 0);
  objc_storeStrong(location, 0);
  *MEMORY[0x1E69E9840];
  return v23 & 1;
}

- (AKMasterToken)init
{
  v4 = 0;
  v4 = [(AKMasterToken *)self initWithAppleID:0 altDSID:?];
  v3 = MEMORY[0x1E69E5928](v4);
  objc_storeStrong(&v4, 0);
  return v3;
}

- (AKMasterToken)initWithAppleID:(id)a3 altDSID:(id)a4
{
  v13 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  v11 = 0;
  objc_storeStrong(&v11, a4);
  v4 = v13;
  v13 = 0;
  v10.receiver = v4;
  v10.super_class = AKMasterToken;
  v13 = [(AKMasterToken *)&v10 init];
  objc_storeStrong(&v13, v13);
  if (v13)
  {
    v5 = objc_alloc_init(MEMORY[0x1E695DF90]);
    properties = v13->_properties;
    v13->_properties = v5;
    MEMORY[0x1E69E5920](properties);
    if (location[0])
    {
      [(NSMutableDictionary *)v13->_properties setObject:location[0] forKeyedSubscript:*MEMORY[0x1E698C208]];
    }

    if (v11)
    {
      [(NSMutableDictionary *)v13->_properties setObject:v11 forKeyedSubscript:*MEMORY[0x1E698C1E8]];
    }
  }

  v8 = MEMORY[0x1E69E5928](v13);
  objc_storeStrong(&v11, 0);
  objc_storeStrong(location, 0);
  objc_storeStrong(&v13, 0);
  return v8;
}

- (void)setStringValue:(id)a3
{
  v4 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  if (location[0])
  {
    [(NSMutableDictionary *)v4->_properties setObject:location[0] forKeyedSubscript:*MEMORY[0x1E698C200]];
  }

  objc_storeStrong(location, 0);
}

- (void)_setSessionKey:(id)a3
{
  v4 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  if (location[0])
  {
    [(NSMutableDictionary *)v4->_properties setObject:location[0] forKeyedSubscript:*MEMORY[0x1E698C1F8]];
  }

  objc_storeStrong(location, 0);
}

- (void)_setEncryptedSessionKey:(id)a3
{
  v4 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  if (location[0])
  {
    [(NSMutableDictionary *)v4->_properties setObject:location[0] forKeyedSubscript:*MEMORY[0x1E698C1F0]];
  }

  objc_storeStrong(location, 0);
}

- (NSData)externalizedVersion
{
  v13 = *MEMORY[0x1E69E9840];
  v10 = self;
  v9[1] = a2;
  if (self->_properties)
  {
    v9[0] = 0;
    properties = v10->_properties;
    v7 = 0;
    v5 = [MEMORY[0x1E696AE40] dataWithPropertyList:properties format:100 options:0 error:&v7];
    objc_storeStrong(v9, v7);
    v8 = v5;
    if (v9[0])
    {
      oslog = _AKLogSystem();
      if (os_log_type_enabled(oslog, OS_LOG_TYPE_ERROR))
      {
        __os_log_helper_16_2_1_8_64(v12, v9[0]);
        _os_log_error_impl(&dword_193225000, oslog, OS_LOG_TYPE_ERROR, "Unable to serialized token properties! Error: %@", v12, 0xCu);
      }

      objc_storeStrong(&oslog, 0);
    }

    v11 = MEMORY[0x1E69E5928](v8);
    objc_storeStrong(&v8, 0);
    objc_storeStrong(v9, 0);
  }

  else
  {
    v11 = 0;
  }

  *MEMORY[0x1E69E9840];
  v3 = v11;

  return v3;
}

- (NSString)externalizedVersionString
{
  location[2] = self;
  location[1] = a2;
  location[0] = [(AKMasterToken *)self externalizedVersion];
  if (location[0])
  {
    v5 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithData:location[0] encoding:1];
  }

  else
  {
    v5 = 0;
  }

  objc_storeStrong(location, 0);
  v2 = v5;

  return v2;
}

@end