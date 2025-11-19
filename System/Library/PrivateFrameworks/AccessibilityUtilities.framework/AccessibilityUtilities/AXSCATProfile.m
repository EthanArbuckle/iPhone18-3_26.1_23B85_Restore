@interface AXSCATProfile
+ (id)defaultProfile;
- (AXSCATProfile)init;
- (AXSCATProfile)initWithCoder:(id)a3;
- (AXSCATProfile)initWithName:(id)a3;
- (AXSCATProfile)initWithUUID:(id)a3 andName:(id)a4;
- (BOOL)isDefault;
- (BOOL)isEqual:(id)a3;
- (id)description;
- (int64_t)recipeCount;
- (int64_t)switchCount;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)a3;
- (void)updatePreferences;
@end

@implementation AXSCATProfile

- (AXSCATProfile)init
{
  v3 = SCATNextAvailableProfileName();
  v4 = [(AXSCATProfile *)self initWithName:v3];

  return v4;
}

- (AXSCATProfile)initWithName:(id)a3
{
  v4 = MEMORY[0x1E696AFB0];
  v5 = a3;
  v6 = [v4 UUID];
  v7 = [(AXSCATProfile *)self initWithUUID:v6 andName:v5];

  return v7;
}

- (AXSCATProfile)initWithUUID:(id)a3 andName:(id)a4
{
  v7 = a3;
  v8 = a4;
  v14.receiver = self;
  v14.super_class = AXSCATProfile;
  v9 = [(AXSCATProfile *)&v14 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_uuid, a3);
    objc_storeStrong(&v10->_name, a4);
    v11 = [MEMORY[0x1E695DF90] dictionary];
    preferences = v10->_preferences;
    v10->_preferences = v11;

    [(AXSCATProfile *)v10 updatePreferences];
  }

  return v10;
}

+ (id)defaultProfile
{
  v3 = [objc_alloc(MEMORY[0x1E696AFB0]) initWithUUIDString:@"00000000-0000-0000-0000-000000000000"];
  v10 = AXParameterizedLocalizedString(2, @"SWITCH_CONTROL_DEFAULT_PROFILE_NAME", v4, v5, v6, v7, v8, v9, v13);
  v11 = [[a1 alloc] initWithUUID:v3 andName:v10];

  return v11;
}

- (BOOL)isDefault
{
  v2 = [(AXSCATProfile *)self uuid];
  v3 = [v2 UUIDString];
  v4 = [v3 isEqualToString:@"00000000-0000-0000-0000-000000000000"];

  return v4;
}

- (void)updatePreferences
{
  v30 = *MEMORY[0x1E69E9840];
  v3 = SWCHLogSettings();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_INFO))
  {
    v4 = [(AXSCATProfile *)self uuid];
    *buf = 138412290;
    v29 = v4;
    _os_log_impl(&dword_18B15E000, v3, OS_LOG_TYPE_INFO, "updating profile with uuid: %@", buf, 0xCu);
  }

  v5 = [MEMORY[0x1E695E000] standardUserDefaults];
  v6 = [v5 persistentDomainForName:*MEMORY[0x1E69E4F10]];
  v7 = [v5 persistentDomainForName:*MEMORY[0x1E69E4C70]];
  v21 = [v6 mutableCopy];
  v22 = v7;
  [v21 addEntriesFromDictionary:v7];
  v8 = +[AXSettings sharedInstance];
  v9 = [v8 switchControlProfileWhitelistedKeys];

  v25 = 0u;
  v26 = 0u;
  v23 = 0u;
  v24 = 0u;
  v10 = v9;
  v11 = [v10 countByEnumeratingWithState:&v23 objects:v27 count:16];
  if (v11)
  {
    v12 = v11;
    v13 = *v24;
    do
    {
      for (i = 0; i != v12; ++i)
      {
        if (*v24 != v13)
        {
          objc_enumerationMutation(v10);
        }

        v15 = *(*(&v23 + 1) + 8 * i);
        v16 = +[AXSettings sharedInstance];
        v17 = [v16 valueForPreferenceKey:v15];

        v18 = [(AXSCATProfile *)self preferences];
        [v18 setObject:v17 forKeyedSubscript:v15];
      }

      v12 = [v10 countByEnumeratingWithState:&v23 objects:v27 count:16];
    }

    while (v12);
  }

  v19 = SWCHLogSettings();
  if (os_log_type_enabled(v19, OS_LOG_TYPE_INFO))
  {
    v20 = [(AXSCATProfile *)self preferences];
    *buf = 138412290;
    v29 = v20;
    _os_log_impl(&dword_18B15E000, v19, OS_LOG_TYPE_INFO, "updated preferences to: %@", buf, 0xCu);
  }
}

- (int64_t)switchCount
{
  v2 = [(AXSCATProfile *)self preferences];
  v3 = [v2 objectForKeyedSubscript:@"AssistiveTouchSwitchesPreference"];

  v4 = MEMORY[0x1E696ACD0];
  v5 = objc_opt_class();
  v6 = [MEMORY[0x1E695DFD8] setWithObject:objc_opt_class()];
  v7 = [v4 secureUnarchiveData:v3 withExpectedClass:v5 otherAllowedClasses:v6];

  v8 = [v7 count];
  return v8;
}

- (int64_t)recipeCount
{
  v2 = [(AXSCATProfile *)self preferences];
  v3 = [v2 objectForKeyedSubscript:@"SCRecipes"];

  v4 = [v3 count];
  return v4;
}

- (unint64_t)hash
{
  v2 = [(AXSCATProfile *)self uuid];
  v3 = [v2 hash];

  return v3;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (self == v4)
  {
    v7 = 1;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v5 = [(AXSCATProfile *)self uuid];
      v6 = [(AXSCATProfile *)v4 uuid];
      v7 = [v5 isEqual:v6];
    }

    else
    {
      v7 = 0;
    }
  }

  return v7;
}

- (void)encodeWithCoder:(id)a3
{
  v4 = a3;
  v5 = [(AXSCATProfile *)self uuid];
  [v4 encodeObject:v5 forKey:@"uuid"];

  v6 = [(AXSCATProfile *)self name];
  [v4 encodeObject:v6 forKey:@"name"];

  v7 = [(AXSCATProfile *)self preferences];
  [v4 encodeObject:v7 forKey:@"preferences"];
}

- (AXSCATProfile)initWithCoder:(id)a3
{
  v4 = a3;
  v22.receiver = self;
  v22.super_class = AXSCATProfile;
  v5 = [(AXSCATProfile *)&v22 init];
  if (v5)
  {
    v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"uuid"];
    uuid = v5->_uuid;
    v5->_uuid = v6;

    v8 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"name"];
    name = v5->_name;
    v5->_name = v8;

    v10 = MEMORY[0x1E695DFD8];
    v11 = objc_opt_class();
    v12 = objc_opt_class();
    v13 = objc_opt_class();
    v14 = objc_opt_class();
    v15 = objc_opt_class();
    v16 = objc_opt_class();
    v17 = objc_opt_class();
    v18 = [v10 setWithObjects:{v11, v12, v13, v14, v15, v16, v17, objc_opt_class(), 0}];
    v19 = [v4 decodeObjectOfClasses:v18 forKey:@"preferences"];
    preferences = v5->_preferences;
    v5->_preferences = v19;
  }

  return v5;
}

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  v4 = [(AXSCATProfile *)self uuid];
  v5 = [(AXSCATProfile *)self name];
  v6 = [v3 stringWithFormat:@"%@: name: %@", v4, v5];

  if ([(AXSCATProfile *)self isDefault])
  {
    v7 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%@ (DEFAULT)", v6];
  }

  else
  {
    v7 = v6;
  }

  v8 = v7;

  return v8;
}

@end