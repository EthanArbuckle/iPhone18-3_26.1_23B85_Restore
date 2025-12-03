@interface SOFullProfile
+ (int64_t)authMethodWithString:(id)string;
+ (int64_t)profileTypeWithString:(id)string;
+ (int64_t)screenLockedBehaviorWithString:(id)string;
- (SOFullProfile)initWithCoder:(id)coder;
- (SOFullProfile)initWithProfileData:(id)data;
- (id)copyProfileForClient;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (void)encodeWithCoder:(id)coder;
- (void)removeURLPrefix:(id)prefix;
@end

@implementation SOFullProfile

- (id)copyProfileForClient
{
  v3.receiver = self;
  v3.super_class = SOFullProfile;
  return [(SOProfile *)&v3 copyWithZone:0];
}

+ (int64_t)profileTypeWithString:(id)string
{
  stringCopy = string;
  if ([stringCopy isEqualToString:@"Redirect"])
  {
    v4 = 1;
  }

  else if ([stringCopy isEqualToString:@"Credential"])
  {
    v4 = 2;
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

+ (int64_t)screenLockedBehaviorWithString:(id)string
{
  stringCopy = string;
  if ([stringCopy isEqualToString:@"Cancel"])
  {
    v4 = 1;
  }

  else if ([stringCopy isEqualToString:@"DoNotHandle"])
  {
    v4 = 2;
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

+ (int64_t)authMethodWithString:(id)string
{
  stringCopy = string;
  if ([stringCopy isEqualToString:@"Password"])
  {
    v4 = 1;
  }

  else if ([stringCopy isEqualToString:@"UserSecureEnclaveKey"])
  {
    v4 = 2;
  }

  else if ([stringCopy isEqualToString:@"SmartCard"])
  {
    v4 = 3;
  }

  else if ([stringCopy isEqualToString:@"AccessKey"])
  {
    v4 = 4;
  }

  else
  {
    v4 = 1000;
  }

  return v4;
}

- (SOFullProfile)initWithProfileData:(id)data
{
  dataCopy = data;
  v52.receiver = self;
  v52.super_class = SOFullProfile;
  v5 = [(SOFullProfile *)&v52 init];
  if (v5)
  {
    v6 = objc_opt_class();
    v7 = [dataCopy objectForKeyedSubscript:@"Type"];
    -[SOProfile setType:](v5, "setType:", [v6 profileTypeWithString:v7]);

    v8 = [dataCopy objectForKeyedSubscript:@"URLPrefix"];
    [(SOProfile *)v5 setURLPrefix:v8];

    v9 = [dataCopy objectForKeyedSubscript:@"Hosts"];
    [(SOProfile *)v5 setHosts:v9];

    v10 = [dataCopy objectForKeyedSubscript:@"ExtensionData"];
    [(SOFullProfile *)v5 setExtensionData:v10];

    v11 = [dataCopy objectForKeyedSubscript:@"Realm"];
    [(SOProfile *)v5 setRealm:v11];

    v12 = [dataCopy objectForKeyedSubscript:@"DeniedBundleIdentifiers"];
    [(SOProfile *)v5 setDeniedBundleIdentifiers:v12];

    v13 = objc_opt_class();
    v14 = [dataCopy objectForKeyedSubscript:@"ScreenLockedBehavior"];
    -[SOProfile setScreenLockedBehavior:](v5, "setScreenLockedBehavior:", [v13 screenLockedBehaviorWithString:v14]);

    v15 = [dataCopy objectForKeyedSubscript:@"RegistrationToken"];
    [(SOFullProfile *)v5 setPssoRegistrationToken:v15];

    v16 = [dataCopy objectForKeyedSubscript:@"PlatformSSO"];
    [(SOFullProfile *)v5 setPlatformSSO:v16];

    platformSSO = [(SOFullProfile *)v5 platformSSO];
    v18 = [platformSSO objectForKeyedSubscript:@"AuthenticationMethod"];

    if (!v18)
    {
      platformSSO2 = [(SOFullProfile *)v5 platformSSO];
      v20 = [platformSSO2 mutableCopy];

      if (!v20)
      {
        v20 = objc_alloc_init(MEMORY[0x1E695DF90]);
      }

      v21 = objc_opt_class();
      v22 = [dataCopy objectForKeyedSubscript:@"AuthenticationMethod"];
      -[SOProfile setPssoAuthenticationMethod:](v5, "setPssoAuthenticationMethod:", [v21 authMethodWithString:v22]);

      v23 = [dataCopy objectForKeyedSubscript:@"AuthenticationMethod"];
      [v20 setObject:v23 forKeyedSubscript:@"AuthenticationMethod"];

      [(SOFullProfile *)v5 setPlatformSSO:v20];
    }

    v24 = [dataCopy objectForKeyedSubscript:@"Extension"];
    objc_opt_class();
    isKindOfClass = objc_opt_isKindOfClass();

    if (isKindOfClass)
    {
      v26 = [dataCopy objectForKeyedSubscript:@"Extension"];
      v27 = [v26 objectForKeyedSubscript:@"BundleIdentifier"];
      [(SOProfile *)v5 setExtensionBundleIdentifier:v27];

      v28 = [dataCopy objectForKeyedSubscript:@"Extension"];
      v29 = [v28 objectForKeyedSubscript:@"TeamIdentifier"];
      [(SOFullProfile *)v5 setExtensionTeamIdentifier:v29];
    }

    extensionBundleIdentifier = [(SOProfile *)v5 extensionBundleIdentifier];
    objc_opt_class();
    v31 = objc_opt_isKindOfClass();

    if ((v31 & 1) == 0)
    {
      v48 = SO_LOG_SOFullProfile();
      if (os_log_type_enabled(v48, OS_LOG_TYPE_ERROR))
      {
        [SOFullProfile initWithProfileData:];
      }

      goto LABEL_36;
    }

    extensionData = [(SOFullProfile *)v5 extensionData];
    if (extensionData)
    {
      v33 = extensionData;
      extensionData2 = [(SOFullProfile *)v5 extensionData];
      objc_opt_class();
      v35 = objc_opt_isKindOfClass();

      if ((v35 & 1) == 0)
      {
        v48 = SO_LOG_SOFullProfile();
        if (os_log_type_enabled(v48, OS_LOG_TYPE_ERROR))
        {
          [SOFullProfile initWithProfileData:];
        }

        goto LABEL_36;
      }
    }

    realm = [(SOProfile *)v5 realm];
    if (realm)
    {
      v37 = realm;
      realm2 = [(SOProfile *)v5 realm];
      objc_opt_class();
      v39 = objc_opt_isKindOfClass();

      if ((v39 & 1) == 0)
      {
        v48 = SO_LOG_SOFullProfile();
        if (os_log_type_enabled(v48, OS_LOG_TYPE_ERROR))
        {
          [SOFullProfile initWithProfileData:];
        }

        goto LABEL_36;
      }
    }

    deniedBundleIdentifiers = [(SOProfile *)v5 deniedBundleIdentifiers];
    if (deniedBundleIdentifiers)
    {
      v41 = deniedBundleIdentifiers;
      deniedBundleIdentifiers2 = [(SOProfile *)v5 deniedBundleIdentifiers];
      objc_opt_class();
      v43 = objc_opt_isKindOfClass();

      if ((v43 & 1) == 0)
      {
        v48 = SO_LOG_SOFullProfile();
        if (os_log_type_enabled(v48, OS_LOG_TYPE_ERROR))
        {
          [SOFullProfile initWithProfileData:];
        }

        goto LABEL_36;
      }
    }

    if ([(SOProfile *)v5 type]== 1)
    {
      uRLPrefix = [(SOProfile *)v5 URLPrefix];
      if (uRLPrefix)
      {
        v45 = uRLPrefix;
        uRLPrefix2 = [(SOProfile *)v5 URLPrefix];
        objc_opt_class();
        v47 = objc_opt_isKindOfClass();

        if ((v47 & 1) == 0)
        {
          v48 = SO_LOG_SOFullProfile();
          if (os_log_type_enabled(v48, OS_LOG_TYPE_ERROR))
          {
            [SOFullProfile initWithProfileData:];
          }

LABEL_36:

          v49 = 0;
          goto LABEL_37;
        }
      }
    }

    else if ([(SOProfile *)v5 type]!= 2)
    {
      v48 = SO_LOG_SOFullProfile();
      if (os_log_type_enabled(v48, OS_LOG_TYPE_ERROR))
      {
        [SOFullProfile initWithProfileData:];
      }

      goto LABEL_36;
    }

    if (![(SOProfile *)v5 screenLockedBehavior])
    {
      v50 = [dataCopy objectForKeyedSubscript:@"ScreenLockedBehavior"];

      if (v50)
      {
        v48 = SO_LOG_SOFullProfile();
        if (os_log_type_enabled(v48, OS_LOG_TYPE_ERROR))
        {
          [SOFullProfile initWithProfileData:];
        }

        goto LABEL_36;
      }

      [(SOProfile *)v5 setScreenLockedBehavior:1];
    }
  }

  v49 = v5;
LABEL_37:

  return v49;
}

- (void)removeURLPrefix:(id)prefix
{
  v9[1] = *MEMORY[0x1E69E9840];
  prefixCopy = prefix;
  uRLPrefix = [(SOProfile *)self URLPrefix];
  v9[0] = prefixCopy;
  v6 = [MEMORY[0x1E695DEC8] arrayWithObjects:v9 count:1];

  v7 = [uRLPrefix arrayByExcludingObjectsInArray:v6];
  [(SOProfile *)self setURLPrefix:v7];

  v8 = *MEMORY[0x1E69E9840];
}

- (id)description
{
  v32[11] = *MEMORY[0x1E69E9840];
  v31[0] = @"Type";
  v30 = [objc_opt_class() stringWithProfileType:{-[SOProfile type](self, "type")}];
  v32[0] = v30;
  v31[1] = @"URLPrefix";
  uRLPrefix = [(SOProfile *)self URLPrefix];
  v29 = uRLPrefix;
  if (uRLPrefix)
  {
    v4 = uRLPrefix;
  }

  else
  {
    v4 = @"<null>";
  }

  v32[1] = v4;
  v31[2] = @"Hosts";
  hosts = [(SOProfile *)self hosts];
  v28 = hosts;
  if (hosts)
  {
    v6 = hosts;
  }

  else
  {
    v6 = @"<null>";
  }

  v32[2] = v6;
  v31[3] = @"BundleIdentifier";
  extensionBundleIdentifier = [(SOProfile *)self extensionBundleIdentifier];
  v8 = extensionBundleIdentifier;
  if (extensionBundleIdentifier)
  {
    v9 = extensionBundleIdentifier;
  }

  else
  {
    v9 = @"<null>";
  }

  v32[3] = v9;
  v31[4] = @"TeamIdentifier";
  extensionTeamIdentifier = [(SOFullProfile *)self extensionTeamIdentifier];
  v11 = extensionTeamIdentifier;
  if (extensionTeamIdentifier)
  {
    v12 = extensionTeamIdentifier;
  }

  else
  {
    v12 = @"<null>";
  }

  v32[4] = v12;
  v31[5] = @"Realm";
  realm = [(SOProfile *)self realm];
  v14 = realm;
  if (realm)
  {
    v15 = realm;
  }

  else
  {
    v15 = @"<null>";
  }

  v32[5] = v15;
  v31[6] = @"DeniedBundleIdentifiers";
  deniedBundleIdentifiers = [(SOProfile *)self deniedBundleIdentifiers];
  v17 = deniedBundleIdentifiers;
  if (deniedBundleIdentifiers)
  {
    v18 = deniedBundleIdentifiers;
  }

  else
  {
    v18 = @"<null>";
  }

  v32[6] = v18;
  v31[7] = @"ScreenLockedBehavior";
  v19 = [objc_opt_class() stringWithScreenLockedBehavior:{-[SOProfile screenLockedBehavior](self, "screenLockedBehavior")}];
  v32[7] = v19;
  v31[8] = @"AuthenticationMethod";
  v20 = [objc_opt_class() stringWithAuthenticationMethod:{-[SOProfile pssoAuthenticationMethod](self, "pssoAuthenticationMethod")}];
  v32[8] = v20;
  v31[9] = @"RegistrationToken";
  pssoRegistrationToken = [(SOFullProfile *)self pssoRegistrationToken];
  v22 = @"present";
  if (!pssoRegistrationToken)
  {
    v22 = @"<null>";
  }

  v32[9] = v22;
  v31[10] = @"PlatformSSO";
  platformSSO = [(SOFullProfile *)self platformSSO];
  v32[10] = platformSSO;
  v24 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v32 forKeys:v31 count:11];
  v25 = [v24 description];

  v26 = *MEMORY[0x1E69E9840];

  return v25;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = objc_opt_new();
  [v4 setType:{-[SOProfile type](self, "type")}];
  uRLPrefix = [(SOProfile *)self URLPrefix];
  v6 = [uRLPrefix copy];
  [v4 setURLPrefix:v6];

  hosts = [(SOProfile *)self hosts];
  v8 = [hosts copy];
  [v4 setHosts:v8];

  realm = [(SOProfile *)self realm];
  v10 = [realm copy];
  [v4 setRealm:v10];

  extensionBundleIdentifier = [(SOProfile *)self extensionBundleIdentifier];
  v12 = [extensionBundleIdentifier copy];
  [v4 setExtensionBundleIdentifier:v12];

  v13 = [(NSString *)self->_extensionTeamIdentifier copy];
  [v4 setExtensionTeamIdentifier:v13];

  v14 = [(NSDictionary *)self->_extensionData copy];
  [v4 setExtensionData:v14];

  deniedBundleIdentifiers = [(SOProfile *)self deniedBundleIdentifiers];
  v16 = [deniedBundleIdentifiers copy];
  [v4 setDeniedBundleIdentifiers:v16];

  [v4 setScreenLockedBehavior:{-[SOProfile screenLockedBehavior](self, "screenLockedBehavior")}];
  [v4 setPlatformSSO:self->_platformSSO];
  [v4 setPssoRegistrationToken:0];
  return v4;
}

- (SOFullProfile)initWithCoder:(id)coder
{
  coderCopy = coder;
  v32.receiver = self;
  v32.super_class = SOFullProfile;
  v5 = [(SOProfile *)&v32 initWithCoder:coderCopy];
  if (v5)
  {
    v6 = objc_opt_class();
    v7 = NSStringFromSelector(sel_extensionTeamIdentifier);
    v8 = [coderCopy decodeObjectOfClass:v6 forKey:v7];
    extensionTeamIdentifier = v5->_extensionTeamIdentifier;
    v5->_extensionTeamIdentifier = v8;

    v10 = MEMORY[0x1E695DFD8];
    v11 = objc_opt_class();
    v12 = objc_opt_class();
    v13 = objc_opt_class();
    v14 = objc_opt_class();
    v15 = [v10 setWithObjects:{v11, v12, v13, v14, objc_opt_class(), 0}];
    v16 = NSStringFromSelector(sel_extensionData);
    v17 = [coderCopy decodeObjectOfClasses:v15 forKey:v16];
    extensionData = v5->_extensionData;
    v5->_extensionData = v17;

    v19 = MEMORY[0x1E695DFD8];
    v20 = objc_opt_class();
    v21 = objc_opt_class();
    v22 = objc_opt_class();
    v23 = [v19 setWithObjects:{v20, v21, v22, objc_opt_class(), 0}];
    v24 = NSStringFromSelector(sel_platformSSO);
    v25 = [coderCopy decodeObjectOfClasses:v23 forKey:v24];
    platformSSO = v5->_platformSSO;
    v5->_platformSSO = v25;

    v27 = objc_opt_class();
    v28 = NSStringFromSelector(sel_pssoRegistrationToken);
    v29 = [coderCopy decodeObjectOfClass:v27 forKey:v28];
    pssoRegistrationToken = v5->_pssoRegistrationToken;
    v5->_pssoRegistrationToken = v29;
  }

  return v5;
}

- (void)encodeWithCoder:(id)coder
{
  v13.receiver = self;
  v13.super_class = SOFullProfile;
  coderCopy = coder;
  [(SOProfile *)&v13 encodeWithCoder:coderCopy];
  extensionTeamIdentifier = self->_extensionTeamIdentifier;
  v6 = NSStringFromSelector(sel_extensionTeamIdentifier);
  [coderCopy encodeObject:extensionTeamIdentifier forKey:{v6, v13.receiver, v13.super_class}];

  extensionData = self->_extensionData;
  v8 = NSStringFromSelector(sel_extensionData);
  [coderCopy encodeObject:extensionData forKey:v8];

  platformSSO = self->_platformSSO;
  v10 = NSStringFromSelector(sel_platformSSO);
  [coderCopy encodeObject:platformSSO forKey:v10];

  pssoRegistrationToken = self->_pssoRegistrationToken;
  v12 = NSStringFromSelector(sel_pssoRegistrationToken);
  [coderCopy encodeObject:pssoRegistrationToken forKey:v12];
}

- (void)initWithProfileData:.cold.1()
{
  v8 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_0(&dword_1CA238000, v0, v1, "invalid profile (extensionBundleIdentifier): %{private}@", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x1E69E9840];
}

- (void)initWithProfileData:.cold.2()
{
  v8 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_0(&dword_1CA238000, v0, v1, "invalid profile (extensionData): %{private}@", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x1E69E9840];
}

- (void)initWithProfileData:.cold.3()
{
  v8 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_0(&dword_1CA238000, v0, v1, "invalid profile (realm): %@{private}", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x1E69E9840];
}

- (void)initWithProfileData:.cold.4()
{
  v8 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_0(&dword_1CA238000, v0, v1, "invalid profile (deniedBundleIdentifiers): %@{private}", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x1E69E9840];
}

- (void)initWithProfileData:.cold.5()
{
  v8 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_0(&dword_1CA238000, v0, v1, "invalid profile (type): %{private}@", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x1E69E9840];
}

- (void)initWithProfileData:.cold.6()
{
  v8 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_0(&dword_1CA238000, v0, v1, "invalid profile (URLPrefix): %{private}@", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x1E69E9840];
}

- (void)initWithProfileData:.cold.7()
{
  v8 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_0(&dword_1CA238000, v0, v1, "invalid profile (screenLockedBehavior): %{private}@", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x1E69E9840];
}

@end