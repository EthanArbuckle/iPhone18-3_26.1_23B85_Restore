@interface SOFullProfile
+ (int64_t)authMethodWithString:(id)a3;
+ (int64_t)profileTypeWithString:(id)a3;
+ (int64_t)screenLockedBehaviorWithString:(id)a3;
- (SOFullProfile)initWithCoder:(id)a3;
- (SOFullProfile)initWithProfileData:(id)a3;
- (id)copyProfileForClient;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
- (void)encodeWithCoder:(id)a3;
- (void)removeURLPrefix:(id)a3;
@end

@implementation SOFullProfile

- (id)copyProfileForClient
{
  v3.receiver = self;
  v3.super_class = SOFullProfile;
  return [(SOProfile *)&v3 copyWithZone:0];
}

+ (int64_t)profileTypeWithString:(id)a3
{
  v3 = a3;
  if ([v3 isEqualToString:@"Redirect"])
  {
    v4 = 1;
  }

  else if ([v3 isEqualToString:@"Credential"])
  {
    v4 = 2;
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

+ (int64_t)screenLockedBehaviorWithString:(id)a3
{
  v3 = a3;
  if ([v3 isEqualToString:@"Cancel"])
  {
    v4 = 1;
  }

  else if ([v3 isEqualToString:@"DoNotHandle"])
  {
    v4 = 2;
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

+ (int64_t)authMethodWithString:(id)a3
{
  v3 = a3;
  if ([v3 isEqualToString:@"Password"])
  {
    v4 = 1;
  }

  else if ([v3 isEqualToString:@"UserSecureEnclaveKey"])
  {
    v4 = 2;
  }

  else if ([v3 isEqualToString:@"SmartCard"])
  {
    v4 = 3;
  }

  else if ([v3 isEqualToString:@"AccessKey"])
  {
    v4 = 4;
  }

  else
  {
    v4 = 1000;
  }

  return v4;
}

- (SOFullProfile)initWithProfileData:(id)a3
{
  v4 = a3;
  v52.receiver = self;
  v52.super_class = SOFullProfile;
  v5 = [(SOFullProfile *)&v52 init];
  if (v5)
  {
    v6 = objc_opt_class();
    v7 = [v4 objectForKeyedSubscript:@"Type"];
    -[SOProfile setType:](v5, "setType:", [v6 profileTypeWithString:v7]);

    v8 = [v4 objectForKeyedSubscript:@"URLPrefix"];
    [(SOProfile *)v5 setURLPrefix:v8];

    v9 = [v4 objectForKeyedSubscript:@"Hosts"];
    [(SOProfile *)v5 setHosts:v9];

    v10 = [v4 objectForKeyedSubscript:@"ExtensionData"];
    [(SOFullProfile *)v5 setExtensionData:v10];

    v11 = [v4 objectForKeyedSubscript:@"Realm"];
    [(SOProfile *)v5 setRealm:v11];

    v12 = [v4 objectForKeyedSubscript:@"DeniedBundleIdentifiers"];
    [(SOProfile *)v5 setDeniedBundleIdentifiers:v12];

    v13 = objc_opt_class();
    v14 = [v4 objectForKeyedSubscript:@"ScreenLockedBehavior"];
    -[SOProfile setScreenLockedBehavior:](v5, "setScreenLockedBehavior:", [v13 screenLockedBehaviorWithString:v14]);

    v15 = [v4 objectForKeyedSubscript:@"RegistrationToken"];
    [(SOFullProfile *)v5 setPssoRegistrationToken:v15];

    v16 = [v4 objectForKeyedSubscript:@"PlatformSSO"];
    [(SOFullProfile *)v5 setPlatformSSO:v16];

    v17 = [(SOFullProfile *)v5 platformSSO];
    v18 = [v17 objectForKeyedSubscript:@"AuthenticationMethod"];

    if (!v18)
    {
      v19 = [(SOFullProfile *)v5 platformSSO];
      v20 = [v19 mutableCopy];

      if (!v20)
      {
        v20 = objc_alloc_init(MEMORY[0x1E695DF90]);
      }

      v21 = objc_opt_class();
      v22 = [v4 objectForKeyedSubscript:@"AuthenticationMethod"];
      -[SOProfile setPssoAuthenticationMethod:](v5, "setPssoAuthenticationMethod:", [v21 authMethodWithString:v22]);

      v23 = [v4 objectForKeyedSubscript:@"AuthenticationMethod"];
      [v20 setObject:v23 forKeyedSubscript:@"AuthenticationMethod"];

      [(SOFullProfile *)v5 setPlatformSSO:v20];
    }

    v24 = [v4 objectForKeyedSubscript:@"Extension"];
    objc_opt_class();
    isKindOfClass = objc_opt_isKindOfClass();

    if (isKindOfClass)
    {
      v26 = [v4 objectForKeyedSubscript:@"Extension"];
      v27 = [v26 objectForKeyedSubscript:@"BundleIdentifier"];
      [(SOProfile *)v5 setExtensionBundleIdentifier:v27];

      v28 = [v4 objectForKeyedSubscript:@"Extension"];
      v29 = [v28 objectForKeyedSubscript:@"TeamIdentifier"];
      [(SOFullProfile *)v5 setExtensionTeamIdentifier:v29];
    }

    v30 = [(SOProfile *)v5 extensionBundleIdentifier];
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

    v32 = [(SOFullProfile *)v5 extensionData];
    if (v32)
    {
      v33 = v32;
      v34 = [(SOFullProfile *)v5 extensionData];
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

    v36 = [(SOProfile *)v5 realm];
    if (v36)
    {
      v37 = v36;
      v38 = [(SOProfile *)v5 realm];
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

    v40 = [(SOProfile *)v5 deniedBundleIdentifiers];
    if (v40)
    {
      v41 = v40;
      v42 = [(SOProfile *)v5 deniedBundleIdentifiers];
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
      v44 = [(SOProfile *)v5 URLPrefix];
      if (v44)
      {
        v45 = v44;
        v46 = [(SOProfile *)v5 URLPrefix];
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
      v50 = [v4 objectForKeyedSubscript:@"ScreenLockedBehavior"];

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

- (void)removeURLPrefix:(id)a3
{
  v9[1] = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = [(SOProfile *)self URLPrefix];
  v9[0] = v4;
  v6 = [MEMORY[0x1E695DEC8] arrayWithObjects:v9 count:1];

  v7 = [v5 arrayByExcludingObjectsInArray:v6];
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
  v3 = [(SOProfile *)self URLPrefix];
  v29 = v3;
  if (v3)
  {
    v4 = v3;
  }

  else
  {
    v4 = @"<null>";
  }

  v32[1] = v4;
  v31[2] = @"Hosts";
  v5 = [(SOProfile *)self hosts];
  v28 = v5;
  if (v5)
  {
    v6 = v5;
  }

  else
  {
    v6 = @"<null>";
  }

  v32[2] = v6;
  v31[3] = @"BundleIdentifier";
  v7 = [(SOProfile *)self extensionBundleIdentifier];
  v8 = v7;
  if (v7)
  {
    v9 = v7;
  }

  else
  {
    v9 = @"<null>";
  }

  v32[3] = v9;
  v31[4] = @"TeamIdentifier";
  v10 = [(SOFullProfile *)self extensionTeamIdentifier];
  v11 = v10;
  if (v10)
  {
    v12 = v10;
  }

  else
  {
    v12 = @"<null>";
  }

  v32[4] = v12;
  v31[5] = @"Realm";
  v13 = [(SOProfile *)self realm];
  v14 = v13;
  if (v13)
  {
    v15 = v13;
  }

  else
  {
    v15 = @"<null>";
  }

  v32[5] = v15;
  v31[6] = @"DeniedBundleIdentifiers";
  v16 = [(SOProfile *)self deniedBundleIdentifiers];
  v17 = v16;
  if (v16)
  {
    v18 = v16;
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
  v21 = [(SOFullProfile *)self pssoRegistrationToken];
  v22 = @"present";
  if (!v21)
  {
    v22 = @"<null>";
  }

  v32[9] = v22;
  v31[10] = @"PlatformSSO";
  v23 = [(SOFullProfile *)self platformSSO];
  v32[10] = v23;
  v24 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v32 forKeys:v31 count:11];
  v25 = [v24 description];

  v26 = *MEMORY[0x1E69E9840];

  return v25;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = objc_opt_new();
  [v4 setType:{-[SOProfile type](self, "type")}];
  v5 = [(SOProfile *)self URLPrefix];
  v6 = [v5 copy];
  [v4 setURLPrefix:v6];

  v7 = [(SOProfile *)self hosts];
  v8 = [v7 copy];
  [v4 setHosts:v8];

  v9 = [(SOProfile *)self realm];
  v10 = [v9 copy];
  [v4 setRealm:v10];

  v11 = [(SOProfile *)self extensionBundleIdentifier];
  v12 = [v11 copy];
  [v4 setExtensionBundleIdentifier:v12];

  v13 = [(NSString *)self->_extensionTeamIdentifier copy];
  [v4 setExtensionTeamIdentifier:v13];

  v14 = [(NSDictionary *)self->_extensionData copy];
  [v4 setExtensionData:v14];

  v15 = [(SOProfile *)self deniedBundleIdentifiers];
  v16 = [v15 copy];
  [v4 setDeniedBundleIdentifiers:v16];

  [v4 setScreenLockedBehavior:{-[SOProfile screenLockedBehavior](self, "screenLockedBehavior")}];
  [v4 setPlatformSSO:self->_platformSSO];
  [v4 setPssoRegistrationToken:0];
  return v4;
}

- (SOFullProfile)initWithCoder:(id)a3
{
  v4 = a3;
  v32.receiver = self;
  v32.super_class = SOFullProfile;
  v5 = [(SOProfile *)&v32 initWithCoder:v4];
  if (v5)
  {
    v6 = objc_opt_class();
    v7 = NSStringFromSelector(sel_extensionTeamIdentifier);
    v8 = [v4 decodeObjectOfClass:v6 forKey:v7];
    extensionTeamIdentifier = v5->_extensionTeamIdentifier;
    v5->_extensionTeamIdentifier = v8;

    v10 = MEMORY[0x1E695DFD8];
    v11 = objc_opt_class();
    v12 = objc_opt_class();
    v13 = objc_opt_class();
    v14 = objc_opt_class();
    v15 = [v10 setWithObjects:{v11, v12, v13, v14, objc_opt_class(), 0}];
    v16 = NSStringFromSelector(sel_extensionData);
    v17 = [v4 decodeObjectOfClasses:v15 forKey:v16];
    extensionData = v5->_extensionData;
    v5->_extensionData = v17;

    v19 = MEMORY[0x1E695DFD8];
    v20 = objc_opt_class();
    v21 = objc_opt_class();
    v22 = objc_opt_class();
    v23 = [v19 setWithObjects:{v20, v21, v22, objc_opt_class(), 0}];
    v24 = NSStringFromSelector(sel_platformSSO);
    v25 = [v4 decodeObjectOfClasses:v23 forKey:v24];
    platformSSO = v5->_platformSSO;
    v5->_platformSSO = v25;

    v27 = objc_opt_class();
    v28 = NSStringFromSelector(sel_pssoRegistrationToken);
    v29 = [v4 decodeObjectOfClass:v27 forKey:v28];
    pssoRegistrationToken = v5->_pssoRegistrationToken;
    v5->_pssoRegistrationToken = v29;
  }

  return v5;
}

- (void)encodeWithCoder:(id)a3
{
  v13.receiver = self;
  v13.super_class = SOFullProfile;
  v4 = a3;
  [(SOProfile *)&v13 encodeWithCoder:v4];
  extensionTeamIdentifier = self->_extensionTeamIdentifier;
  v6 = NSStringFromSelector(sel_extensionTeamIdentifier);
  [v4 encodeObject:extensionTeamIdentifier forKey:{v6, v13.receiver, v13.super_class}];

  extensionData = self->_extensionData;
  v8 = NSStringFromSelector(sel_extensionData);
  [v4 encodeObject:extensionData forKey:v8];

  platformSSO = self->_platformSSO;
  v10 = NSStringFromSelector(sel_platformSSO);
  [v4 encodeObject:platformSSO forKey:v10];

  pssoRegistrationToken = self->_pssoRegistrationToken;
  v12 = NSStringFromSelector(sel_pssoRegistrationToken);
  [v4 encodeObject:pssoRegistrationToken forKey:v12];
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