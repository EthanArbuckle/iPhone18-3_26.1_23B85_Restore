@interface AKURLConfiguration
- (AKURLConfiguration)initWithCoder:(id)coder;
- (AKURLConfiguration)initWithDictionary:(id)dictionary;
- (AKURLConfiguration)initWithDictionary:(id)dictionary device:(id)device;
- (void)encodeWithCoder:(id)coder;
@end

@implementation AKURLConfiguration

- (AKURLConfiguration)initWithDictionary:(id)dictionary
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, dictionary);
  v5 = selfCopy;
  v4 = location[0];
  v6 = +[AKDevice currentDevice];
  selfCopy = 0;
  selfCopy = [(AKURLConfiguration *)v5 initWithDictionary:v4 device:?];
  v7 = MEMORY[0x1E69E5928](selfCopy);
  MEMORY[0x1E69E5920](v6);
  objc_storeStrong(location, 0);
  objc_storeStrong(&selfCopy, 0);
  return v7;
}

- (AKURLConfiguration)initWithDictionary:(id)dictionary device:(id)device
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, dictionary);
  v25 = 0;
  objc_storeStrong(&v25, device);
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
    v6 = selfCopy;
    selfCopy = 0;
    v21.receiver = v6;
    v21.super_class = AKURLConfiguration;
    selfCopy = [(AKURLConfiguration *)&v21 init];
    objc_storeStrong(&selfCopy, selfCopy);
    if (selfCopy)
    {
      objc_storeStrong(selfCopy + 2, v23);
      v14 = [location[0] objectForKeyedSubscript:@"uiType"];
      objc_opt_class();
      isKindOfClass = objc_opt_isKindOfClass();
      MEMORY[0x1E69E5920](v14);
      if (isKindOfClass)
      {
        v12 = [location[0] objectForKeyedSubscript:@"uiType"];
        intValue = [v12 intValue];
        MEMORY[0x1E69E5920](v12);
        v20 = intValue;
        if (intValue == 1 && ([v25 isInRecoveryPartition] & 1) != 0)
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

        *(selfCopy + 3) = v20;
      }

      else
      {
        *(selfCopy + 3) = 0;
      }

      v9 = [location[0] objectForKeyedSubscript:@"baa"];
      bOOLValue = [v9 BOOLValue];
      *(selfCopy + 8) = bOOLValue;
      MEMORY[0x1E69E5920](v9);
    }

    v28 = MEMORY[0x1E69E5928](selfCopy);
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
  objc_storeStrong(&selfCopy, 0);
  return v28;
}

- (AKURLConfiguration)initWithCoder:(id)coder
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, coder);
  v3 = selfCopy;
  selfCopy = 0;
  v10.receiver = v3;
  v10.super_class = AKURLConfiguration;
  selfCopy = [(AKURLConfiguration *)&v10 init];
  objc_storeStrong(&selfCopy, selfCopy);
  if (selfCopy)
  {
    v4 = [location[0] decodeObjectOfClass:objc_opt_class() forKey:@"_url"];
    url = selfCopy->_url;
    selfCopy->_url = v4;
    MEMORY[0x1E69E5920](url);
    v6 = [location[0] decodeIntegerForKey:@"_uiType"];
    selfCopy->_uiType = v6;
    v7 = [location[0] decodeBoolForKey:@"_isBaaEnabled"];
    selfCopy->_isBaaEnabled = v7;
  }

  v9 = MEMORY[0x1E69E5928](selfCopy);
  objc_storeStrong(location, 0);
  objc_storeStrong(&selfCopy, 0);
  return v9;
}

- (void)encodeWithCoder:(id)coder
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, coder);
  [location[0] encodeObject:selfCopy->_url forKey:@"_url"];
  [location[0] encodeInteger:selfCopy->_uiType forKey:@"_uiType"];
  [location[0] encodeBool:selfCopy->_isBaaEnabled forKey:@"_isBaaEnabled"];
  objc_storeStrong(location, 0);
}

@end