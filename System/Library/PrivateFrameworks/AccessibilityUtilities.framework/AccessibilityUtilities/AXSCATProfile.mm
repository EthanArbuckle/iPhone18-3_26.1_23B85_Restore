@interface AXSCATProfile
+ (id)defaultProfile;
- (AXSCATProfile)init;
- (AXSCATProfile)initWithCoder:(id)coder;
- (AXSCATProfile)initWithName:(id)name;
- (AXSCATProfile)initWithUUID:(id)d andName:(id)name;
- (BOOL)isDefault;
- (BOOL)isEqual:(id)equal;
- (id)description;
- (int64_t)recipeCount;
- (int64_t)switchCount;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)coder;
- (void)updatePreferences;
@end

@implementation AXSCATProfile

- (AXSCATProfile)init
{
  v3 = SCATNextAvailableProfileName();
  v4 = [(AXSCATProfile *)self initWithName:v3];

  return v4;
}

- (AXSCATProfile)initWithName:(id)name
{
  v4 = MEMORY[0x1E696AFB0];
  nameCopy = name;
  uUID = [v4 UUID];
  v7 = [(AXSCATProfile *)self initWithUUID:uUID andName:nameCopy];

  return v7;
}

- (AXSCATProfile)initWithUUID:(id)d andName:(id)name
{
  dCopy = d;
  nameCopy = name;
  v14.receiver = self;
  v14.super_class = AXSCATProfile;
  v9 = [(AXSCATProfile *)&v14 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_uuid, d);
    objc_storeStrong(&v10->_name, name);
    dictionary = [MEMORY[0x1E695DF90] dictionary];
    preferences = v10->_preferences;
    v10->_preferences = dictionary;

    [(AXSCATProfile *)v10 updatePreferences];
  }

  return v10;
}

+ (id)defaultProfile
{
  v3 = [objc_alloc(MEMORY[0x1E696AFB0]) initWithUUIDString:@"00000000-0000-0000-0000-000000000000"];
  v10 = AXParameterizedLocalizedString(2, @"SWITCH_CONTROL_DEFAULT_PROFILE_NAME", v4, v5, v6, v7, v8, v9, v13);
  v11 = [[self alloc] initWithUUID:v3 andName:v10];

  return v11;
}

- (BOOL)isDefault
{
  uuid = [(AXSCATProfile *)self uuid];
  uUIDString = [uuid UUIDString];
  v4 = [uUIDString isEqualToString:@"00000000-0000-0000-0000-000000000000"];

  return v4;
}

- (void)updatePreferences
{
  v30 = *MEMORY[0x1E69E9840];
  v3 = SWCHLogSettings();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_INFO))
  {
    uuid = [(AXSCATProfile *)self uuid];
    *buf = 138412290;
    v29 = uuid;
    _os_log_impl(&dword_18B15E000, v3, OS_LOG_TYPE_INFO, "updating profile with uuid: %@", buf, 0xCu);
  }

  standardUserDefaults = [MEMORY[0x1E695E000] standardUserDefaults];
  v6 = [standardUserDefaults persistentDomainForName:*MEMORY[0x1E69E4F10]];
  v7 = [standardUserDefaults persistentDomainForName:*MEMORY[0x1E69E4C70]];
  v21 = [v6 mutableCopy];
  v22 = v7;
  [v21 addEntriesFromDictionary:v7];
  v8 = +[AXSettings sharedInstance];
  switchControlProfileWhitelistedKeys = [v8 switchControlProfileWhitelistedKeys];

  v25 = 0u;
  v26 = 0u;
  v23 = 0u;
  v24 = 0u;
  v10 = switchControlProfileWhitelistedKeys;
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

        preferences = [(AXSCATProfile *)self preferences];
        [preferences setObject:v17 forKeyedSubscript:v15];
      }

      v12 = [v10 countByEnumeratingWithState:&v23 objects:v27 count:16];
    }

    while (v12);
  }

  v19 = SWCHLogSettings();
  if (os_log_type_enabled(v19, OS_LOG_TYPE_INFO))
  {
    preferences2 = [(AXSCATProfile *)self preferences];
    *buf = 138412290;
    v29 = preferences2;
    _os_log_impl(&dword_18B15E000, v19, OS_LOG_TYPE_INFO, "updated preferences to: %@", buf, 0xCu);
  }
}

- (int64_t)switchCount
{
  preferences = [(AXSCATProfile *)self preferences];
  v3 = [preferences objectForKeyedSubscript:@"AssistiveTouchSwitchesPreference"];

  v4 = MEMORY[0x1E696ACD0];
  v5 = objc_opt_class();
  v6 = [MEMORY[0x1E695DFD8] setWithObject:objc_opt_class()];
  v7 = [v4 secureUnarchiveData:v3 withExpectedClass:v5 otherAllowedClasses:v6];

  v8 = [v7 count];
  return v8;
}

- (int64_t)recipeCount
{
  preferences = [(AXSCATProfile *)self preferences];
  v3 = [preferences objectForKeyedSubscript:@"SCRecipes"];

  v4 = [v3 count];
  return v4;
}

- (unint64_t)hash
{
  uuid = [(AXSCATProfile *)self uuid];
  v3 = [uuid hash];

  return v3;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (self == equalCopy)
  {
    v7 = 1;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      uuid = [(AXSCATProfile *)self uuid];
      uuid2 = [(AXSCATProfile *)equalCopy uuid];
      v7 = [uuid isEqual:uuid2];
    }

    else
    {
      v7 = 0;
    }
  }

  return v7;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  uuid = [(AXSCATProfile *)self uuid];
  [coderCopy encodeObject:uuid forKey:@"uuid"];

  name = [(AXSCATProfile *)self name];
  [coderCopy encodeObject:name forKey:@"name"];

  preferences = [(AXSCATProfile *)self preferences];
  [coderCopy encodeObject:preferences forKey:@"preferences"];
}

- (AXSCATProfile)initWithCoder:(id)coder
{
  coderCopy = coder;
  v22.receiver = self;
  v22.super_class = AXSCATProfile;
  v5 = [(AXSCATProfile *)&v22 init];
  if (v5)
  {
    v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"uuid"];
    uuid = v5->_uuid;
    v5->_uuid = v6;

    v8 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"name"];
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
    v19 = [coderCopy decodeObjectOfClasses:v18 forKey:@"preferences"];
    preferences = v5->_preferences;
    v5->_preferences = v19;
  }

  return v5;
}

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  uuid = [(AXSCATProfile *)self uuid];
  name = [(AXSCATProfile *)self name];
  v6 = [v3 stringWithFormat:@"%@: name: %@", uuid, name];

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