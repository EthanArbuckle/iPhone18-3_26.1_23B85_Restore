@interface AKURLConfiguration
- (AKURLConfiguration)initWithCoder:(id)a3;
- (AKURLConfiguration)initWithDictionary:(id)a3;
- (AKURLConfiguration)initWithDictionary:(id)a3 device:(id)a4;
- (void)encodeWithCoder:(id)a3;
@end

@implementation AKURLConfiguration

- (AKURLConfiguration)initWithDictionary:(id)a3
{
  v9 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  v5 = v9;
  v4 = location[0];
  v6 = +[AKDevice currentDevice];
  v9 = 0;
  v9 = [(AKURLConfiguration *)v5 initWithDictionary:v4 device:?];
  v7 = MEMORY[0x1E69E5928](v9);
  MEMORY[0x1E69E5920](v6);
  objc_storeStrong(location, 0);
  objc_storeStrong(&v9, 0);
  return v7;
}

- (AKURLConfiguration)initWithDictionary:(id)a3 device:(id)a4
{
  v27 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  v25 = 0;
  objc_storeStrong(&v25, a4);
  v24 = [location[0] objectForKeyedSubscript:@"url"];
  v23 = 0;
  if (v24)
  {
    v4 = [MEMORY[0x1E695DFF8] URLWithString:v24];
    v5 = v23;
    v23 = v4;
    MEMORY[0x1E69E5920](v5);
  }

  if (v23)
  {
    v6 = v27;
    v27 = 0;
    v21.receiver = v6;
    v21.super_class = AKURLConfiguration;
    v27 = [(AKURLConfiguration *)&v21 init];
    objc_storeStrong(&v27, v27);
    if (v27)
    {
      objc_storeStrong(v27 + 2, v23);
      v14 = [location[0] objectForKeyedSubscript:@"uiType"];
      objc_opt_class();
      isKindOfClass = objc_opt_isKindOfClass();
      MEMORY[0x1E69E5920](v14);
      if (isKindOfClass)
      {
        v12 = [location[0] objectForKeyedSubscript:@"uiType"];
        v13 = [v12 intValue];
        MEMORY[0x1E69E5920](v12);
        v20 = v13;
        if (v13 == 1 && ([v25 isInRecoveryPartition] & 1) != 0)
        {
          v19 = _AKLogSystem();
          v18 = 2;
          if (os_log_type_enabled(v19, OS_LOG_TYPE_DEBUG))
          {
            log = v19;
            type = v18;
            __os_log_helper_16_0_0(v17);
            _os_log_debug_impl(&dword_193225000, log, type, "Server bag is requesting AKURLConfigurationUITypeForceRemoteUI in recovery mode. Falling back AKURLConfigurationUITypeDefault", v17, 2u);
          }

          objc_storeStrong(&v19, 0);
          v20 = 0;
        }

        *(v27 + 3) = v20;
      }

      else
      {
        *(v27 + 3) = 0;
      }

      v9 = [location[0] objectForKeyedSubscript:@"baa"];
      v7 = [v9 BOOLValue];
      *(v27 + 8) = v7;
      MEMORY[0x1E69E5920](v9);
    }

    v28 = MEMORY[0x1E69E5928](v27);
    v22 = 1;
  }

  else
  {
    v28 = 0;
    v22 = 1;
  }

  objc_storeStrong(&v23, 0);
  objc_storeStrong(&v24, 0);
  objc_storeStrong(&v25, 0);
  objc_storeStrong(location, 0);
  objc_storeStrong(&v27, 0);
  return v28;
}

- (AKURLConfiguration)initWithCoder:(id)a3
{
  v12 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  v3 = v12;
  v12 = 0;
  v10.receiver = v3;
  v10.super_class = AKURLConfiguration;
  v12 = [(AKURLConfiguration *)&v10 init];
  objc_storeStrong(&v12, v12);
  if (v12)
  {
    v4 = [location[0] decodeObjectOfClass:objc_opt_class() forKey:@"_url"];
    url = v12->_url;
    v12->_url = v4;
    MEMORY[0x1E69E5920](url);
    v6 = [location[0] decodeIntegerForKey:@"_uiType"];
    v12->_uiType = v6;
    v7 = [location[0] decodeBoolForKey:@"_isBaaEnabled"];
    v12->_isBaaEnabled = v7;
  }

  v9 = MEMORY[0x1E69E5928](v12);
  objc_storeStrong(location, 0);
  objc_storeStrong(&v12, 0);
  return v9;
}

- (void)encodeWithCoder:(id)a3
{
  v4 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  [location[0] encodeObject:v4->_url forKey:@"_url"];
  [location[0] encodeInteger:v4->_uiType forKey:@"_uiType"];
  [location[0] encodeBool:v4->_isBaaEnabled forKey:@"_isBaaEnabled"];
  objc_storeStrong(location, 0);
}

@end