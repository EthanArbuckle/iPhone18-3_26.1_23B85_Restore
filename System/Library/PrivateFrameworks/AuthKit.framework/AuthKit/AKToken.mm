@interface AKToken
+ (id)_tokenComponentsFromBase64String:(id)a3;
+ (id)idmsTokenWithBase64String:(id)a3;
+ (id)tokenWithBase64String:(id)a3;
+ (id)tokenWithDictionary:(id)a3;
+ (id)tokenWithValue:(id)a3 lifetime:(id)a4;
+ (id)tokenWithValue:(id)a3 lifetime:(id)a4 creationTime:(id)a5;
- (AKToken)initWithCoder:(id)a3;
- (id)description;
- (void)encodeWithCoder:(id)a3;
@end

@implementation AKToken

+ (id)tokenWithValue:(id)a3 lifetime:(id)a4
{
  v9 = a1;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  v7 = 0;
  objc_storeStrong(&v7, a4);
  v6 = [v9 tokenWithValue:location[0] lifetime:v7 creationTime:0];
  objc_storeStrong(&v7, 0);
  objc_storeStrong(location, 0);

  return v6;
}

+ (id)tokenWithValue:(id)a3 lifetime:(id)a4 creationTime:(id)a5
{
  location[2] = a1;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  v20 = 0;
  objc_storeStrong(&v20, a4);
  v19 = 0;
  objc_storeStrong(&v19, a5);
  v18 = objc_alloc_init(AKToken);
  v5 = [location[0] copy];
  stringValue = v18->_stringValue;
  v18->_stringValue = v5;
  MEMORY[0x1E69E5920](stringValue);
  if (v20)
  {
    v15 = MEMORY[0x1E695DF00];
    [v20 doubleValue];
    v7 = [v15 dateWithTimeIntervalSinceNow:?];
    expirationDate = v18->_expirationDate;
    v18->_expirationDate = v7;
    MEMORY[0x1E69E5920](expirationDate);
  }

  if (v19)
  {
    v14 = MEMORY[0x1E695DF00];
    [v19 doubleValue];
    v10 = [v14 dateWithTimeIntervalSince1970:v9 / 1000.0];
    creationDate = v18->_creationDate;
    v18->_creationDate = v10;
    MEMORY[0x1E69E5920](creationDate);
  }

  v13 = MEMORY[0x1E69E5928](v18);
  objc_storeStrong(&v18, 0);
  objc_storeStrong(&v19, 0);
  objc_storeStrong(&v20, 0);
  objc_storeStrong(location, 0);

  return v13;
}

+ (id)tokenWithBase64String:(id)a3
{
  v26 = *MEMORY[0x1E69E9840];
  v23 = a1;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  v21 = [v23 _tokenComponentsFromBase64String:location[0]];
  if ([v21 count] >= 2)
  {
    v17 = [v21 objectAtIndexedSubscript:1];
    v16 = [v21 objectAtIndexedSubscript:0];
    v15 = 0;
    if ([v21 count] == 4)
    {
      v9 = MEMORY[0x1E696AD98];
      v10 = [v21 objectAtIndexedSubscript:2];
      v14 = [v9 numberWithInteger:{objc_msgSend(v10, "integerValue")}];
      MEMORY[0x1E69E5920](v10);
      v11 = MEMORY[0x1E696AD98];
      v12 = [v21 objectAtIndexedSubscript:3];
      v13 = [v11 numberWithInteger:{objc_msgSend(v12, "integerValue")}];
      MEMORY[0x1E69E5920](v12);
      v3 = [v23 tokenWithValue:v17 lifetime:v14 creationTime:v13];
      v4 = v15;
      v15 = v3;
      MEMORY[0x1E69E5920](v4);
      objc_storeStrong(&v13, 0);
      objc_storeStrong(&v14, 0);
    }

    else
    {
      v5 = [v23 tokenWithValue:v17 lifetime:0];
      v6 = v15;
      v15 = v5;
      MEMORY[0x1E69E5920](v6);
    }

    [v15 setName:v16];
    v24 = MEMORY[0x1E69E5928](v15);
    v18 = 1;
    objc_storeStrong(&v15, 0);
    objc_storeStrong(&v16, 0);
    objc_storeStrong(&v17, 0);
  }

  else
  {
    v20 = _AKLogSystem();
    v19 = OS_LOG_TYPE_ERROR;
    if (os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
    {
      __os_log_helper_16_2_1_8_64(v25, location[0]);
      _os_log_error_impl(&dword_193225000, v20, v19, "Invalid token string! %@", v25, 0xCu);
    }

    objc_storeStrong(&v20, 0);
    v24 = 0;
    v18 = 1;
  }

  objc_storeStrong(&v21, 0);
  objc_storeStrong(location, 0);
  *MEMORY[0x1E69E9840];
  v7 = v24;

  return v7;
}

+ (id)tokenWithDictionary:(id)a3
{
  v18 = a1;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  v5 = objc_opt_class();
  v6 = [location[0] objectForKeyedSubscript:@"token"];
  v16 = _AKSafeCast_16(v5, v6);
  MEMORY[0x1E69E5920](v6);
  v7 = objc_opt_class();
  v8 = [location[0] objectForKeyedSubscript:@"duration"];
  v15 = _AKSafeCast_16(v7, v8);
  MEMORY[0x1E69E5920](v8);
  v9 = objc_opt_class();
  v10 = [location[0] objectForKeyedSubscript:@"value"];
  v14 = _AKSafeCast_16(v9, v10);
  MEMORY[0x1E69E5920](v10);
  v11 = objc_opt_class();
  v12 = [location[0] objectForKeyedSubscript:@"cts"];
  v13 = _AKSafeCast_16(v11, v12);
  MEMORY[0x1E69E5920](v12);
  if (!v16 && v14)
  {
    objc_storeStrong(&v16, v14);
  }

  if (v16)
  {
    v19 = [v18 tokenWithValue:v16 lifetime:v15 creationTime:v13];
  }

  else
  {
    v19 = 0;
  }

  objc_storeStrong(&v13, 0);
  objc_storeStrong(&v14, 0);
  objc_storeStrong(&v15, 0);
  objc_storeStrong(&v16, 0);
  objc_storeStrong(location, 0);
  v3 = v19;

  return v3;
}

+ (id)idmsTokenWithBase64String:(id)a3
{
  v19 = *MEMORY[0x1E69E9840];
  v16 = a1;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  v14 = [v16 _tokenComponentsFromBase64String:location[0]];
  if ([v14 count])
  {
    v10 = [v14 objectAtIndexedSubscript:0];
    v9 = 0;
    if ([v14 count] == 2)
    {
      v7 = MEMORY[0x1E696AD98];
      v8 = [v14 objectAtIndexedSubscript:1];
      v3 = [v7 numberWithInteger:{objc_msgSend(v8, "integerValue")}];
      v4 = v9;
      v9 = v3;
      MEMORY[0x1E69E5920](v4);
      MEMORY[0x1E69E5920](v8);
    }

    v17 = [AKToken tokenWithValue:"tokenWithValue:lifetime:creationTime:" lifetime:v10 creationTime:?];
    v11 = 1;
    objc_storeStrong(&v9, 0);
    objc_storeStrong(&v10, 0);
  }

  else
  {
    v13 = _AKLogSystem();
    v12 = OS_LOG_TYPE_ERROR;
    if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
    {
      __os_log_helper_16_2_1_8_64(v18, location[0]);
      _os_log_error_impl(&dword_193225000, v13, v12, "Invalid IdMS token string! %@", v18, 0xCu);
    }

    objc_storeStrong(&v13, 0);
    v17 = 0;
    v11 = 1;
  }

  objc_storeStrong(&v14, 0);
  objc_storeStrong(location, 0);
  *MEMORY[0x1E69E9840];
  v5 = v17;

  return v5;
}

+ (id)_tokenComponentsFromBase64String:(id)a3
{
  location[2] = a1;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  if ([location[0] length])
  {
    v3 = objc_alloc(MEMORY[0x1E695DEF0]);
    v9 = [v3 initWithBase64EncodedString:location[0] options:0];
    v4 = objc_alloc(MEMORY[0x1E696AEC0]);
    v8 = [v4 initWithData:v9 encoding:4];
    v7 = [v8 componentsSeparatedByString:@":"];
    v12 = MEMORY[0x1E69E5928](v7);
    v10 = 1;
    objc_storeStrong(&v7, 0);
    objc_storeStrong(&v8, 0);
    objc_storeStrong(&v9, 0);
  }

  else
  {
    v12 = 0;
    v10 = 1;
  }

  objc_storeStrong(location, 0);
  v5 = v12;

  return v5;
}

- (id)description
{
  v4 = MEMORY[0x1E696AEC0];
  v2 = objc_opt_class();
  v5 = NSStringFromClass(v2);
  v6 = [v4 stringWithFormat:@"<%@: %p {\n\tstringValue: %@, \n\texpirationDate: %@, \n\tcreationDate: %@, \n\tname: %@, \n}>", v5, self, self->_stringValue, self->_expirationDate, self->_creationDate, self->_name];
  MEMORY[0x1E69E5920](v5);

  return v6;
}

- (AKToken)initWithCoder:(id)a3
{
  v17 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  v3 = v17;
  v17 = 0;
  v15.receiver = v3;
  v15.super_class = AKToken;
  v14 = [(AKToken *)&v15 init];
  v17 = v14;
  objc_storeStrong(&v17, v14);
  if (v14)
  {
    v4 = [location[0] decodeObjectOfClass:objc_opt_class() forKey:@"_stringValue"];
    stringValue = v17->_stringValue;
    v17->_stringValue = v4;
    MEMORY[0x1E69E5920](stringValue);
    v6 = [location[0] decodeObjectOfClass:objc_opt_class() forKey:@"_expirationDate"];
    expirationDate = v17->_expirationDate;
    v17->_expirationDate = v6;
    MEMORY[0x1E69E5920](expirationDate);
    v8 = [location[0] decodeObjectOfClass:objc_opt_class() forKey:@"_creationDate"];
    creationDate = v17->_creationDate;
    v17->_creationDate = v8;
    MEMORY[0x1E69E5920](creationDate);
    v10 = [location[0] decodeObjectOfClass:objc_opt_class() forKey:@"_name"];
    name = v17->_name;
    v17->_name = v10;
    MEMORY[0x1E69E5920](name);
  }

  v13 = MEMORY[0x1E69E5928](v17);
  objc_storeStrong(location, 0);
  objc_storeStrong(&v17, 0);
  return v13;
}

- (void)encodeWithCoder:(id)a3
{
  v4 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  [location[0] encodeObject:v4->_stringValue forKey:@"_stringValue"];
  [location[0] encodeObject:v4->_expirationDate forKey:@"_expirationDate"];
  [location[0] encodeObject:v4->_creationDate forKey:@"_creationDate"];
  [location[0] encodeObject:v4->_name forKey:@"_name"];
  objc_storeStrong(location, 0);
}

@end