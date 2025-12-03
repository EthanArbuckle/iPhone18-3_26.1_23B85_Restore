@interface AKDeveloperTeam
- (AKDeveloperTeam)initWithCoder:(id)coder;
- (AKDeveloperTeam)initWithResponseInfo:(id)info;
- (void)encodeWithCoder:(id)coder;
@end

@implementation AKDeveloperTeam

- (AKDeveloperTeam)initWithResponseInfo:(id)info
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, info);
  v3 = selfCopy;
  selfCopy = 0;
  v15 = [(AKDeveloperTeam *)v3 init];
  selfCopy = v15;
  objc_storeStrong(&selfCopy, v15);
  if (v15)
  {
    v4 = [location[0] objectForKeyedSubscript:@"uid"];
    userIdentifier = selfCopy->_userIdentifier;
    selfCopy->_userIdentifier = v4;
    MEMORY[0x1E69E5920](userIdentifier);
    v6 = [location[0] objectForKeyedSubscript:@"team_id"];
    teamID = selfCopy->_teamID;
    selfCopy->_teamID = v6;
    MEMORY[0x1E69E5920](teamID);
    v8 = [location[0] objectForKeyedSubscript:@"privateEmail"];
    privateEmail = selfCopy->_privateEmail;
    selfCopy->_privateEmail = v8;
    MEMORY[0x1E69E5920](privateEmail);
    dictionary = [MEMORY[0x1E695DF90] dictionary];
    v14 = [location[0] objectForKeyedSubscript:@"apps"];
    v16 = MEMORY[0x1E69E9820];
    v17 = -1073741824;
    v18 = 0;
    v19 = __40__AKDeveloperTeam_initWithResponseInfo___block_invoke;
    v20 = &unk_1E73D7240;
    v21 = MEMORY[0x1E69E5928](dictionary);
    [v14 enumerateObjectsUsingBlock:&v16];
    MEMORY[0x1E69E5920](v14);
    v10 = [dictionary copy];
    apps = selfCopy->_apps;
    selfCopy->_apps = v10;
    MEMORY[0x1E69E5920](apps);
    objc_storeStrong(&v21, 0);
    objc_storeStrong(&dictionary, 0);
  }

  v13 = MEMORY[0x1E69E5928](selfCopy);
  objc_storeStrong(location, 0);
  objc_storeStrong(&selfCopy, 0);
  return v13;
}

void __40__AKDeveloperTeam_initWithResponseInfo___block_invoke(void *a1, void *a2, void *a3, void *a4)
{
  location[1] = a1;
  location[0] = 0;
  objc_storeStrong(location, a2);
  v11[3] = a3;
  v11[2] = a4;
  v11[1] = a1;
  v4 = [AKConsentedApplication alloc];
  v11[0] = [(AKConsentedApplication *)v4 initWithResponseInfo:location[0]];
  v8 = v11[0];
  v9 = a1[4];
  v10 = [v11[0] clientID];
  [v9 setObject:v8 forKeyedSubscript:?];
  MEMORY[0x1E69E5920](v10);
  objc_storeStrong(v11, 0);
  objc_storeStrong(location, 0);
}

- (AKDeveloperTeam)initWithCoder:(id)coder
{
  v28 = &selfCopy;
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, coder);
  v3 = selfCopy;
  selfCopy = 0;
  v29 = [(AKDeveloperTeam *)v3 init];
  selfCopy = v29;
  objc_storeStrong(&selfCopy, v29);
  if (v29)
  {
    v19 = location[0];
    v22 = 0x1E696A000uLL;
    v4 = [location[0] decodeObjectOfClass:objc_opt_class() forKey:@"uid"];
    userIdentifier = selfCopy->_userIdentifier;
    selfCopy->_userIdentifier = v4;
    MEMORY[0x1E69E5920](userIdentifier);
    v20 = location[0];
    v6 = *(v22 + 3776);
    v7 = [location[0] decodeObjectOfClass:objc_opt_class() forKey:@"team_id"];
    teamID = selfCopy->_teamID;
    selfCopy->_teamID = v7;
    MEMORY[0x1E69E5920](teamID);
    v21 = location[0];
    v9 = *(v22 + 3776);
    v10 = [location[0] decodeObjectOfClass:objc_opt_class() forKey:@"privateEmail"];
    privateEmail = selfCopy->_privateEmail;
    selfCopy->_privateEmail = v10;
    MEMORY[0x1E69E5920](privateEmail);
    v26 = location[0];
    v25 = MEMORY[0x1E695DFD8];
    v24 = objc_opt_class();
    v23 = objc_opt_class();
    v12 = *(v22 + 3776);
    v27 = [v25 setWithObjects:{v24, v23, objc_opt_class(), 0}];
    v13 = [v26 decodeObjectOfClasses:? forKey:?];
    apps = selfCopy->_apps;
    selfCopy->_apps = v13;
    MEMORY[0x1E69E5920](apps);
    MEMORY[0x1E69E5920](v27);
  }

  v16 = &selfCopy;
  v18 = MEMORY[0x1E69E5928](selfCopy);
  obj = 0;
  objc_storeStrong(location, 0);
  objc_storeStrong(v16, obj);
  return v18;
}

- (void)encodeWithCoder:(id)coder
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, coder);
  [location[0] encodeObject:selfCopy->_userIdentifier forKey:@"uid"];
  [location[0] encodeObject:selfCopy->_teamID forKey:@"team_id"];
  [location[0] encodeObject:selfCopy->_privateEmail forKey:@"privateEmail"];
  [location[0] encodeObject:selfCopy->_apps forKey:@"apps"];
  objc_storeStrong(location, 0);
}

@end