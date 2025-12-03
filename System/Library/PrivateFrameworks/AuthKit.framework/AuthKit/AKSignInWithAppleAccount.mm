@interface AKSignInWithAppleAccount
- (AKSignInWithAppleAccount)initWithClientID:(id)d userID:(id)iD;
- (AKSignInWithAppleAccount)initWithClientID:(id)d userID:(id)iD scopes:(id)scopes creationDate:(id)date privateEmail:(id)email;
- (AKSignInWithAppleAccount)initWithCoder:(id)coder;
- (NSString)appStoreURL;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (void)encodeWithCoder:(id)coder;
@end

@implementation AKSignInWithAppleAccount

- (AKSignInWithAppleAccount)initWithClientID:(id)d userID:(id)iD scopes:(id)scopes creationDate:(id)date privateEmail:(id)email
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, d);
  v19 = 0;
  objc_storeStrong(&v19, iD);
  v18 = 0;
  objc_storeStrong(&v18, scopes);
  v17 = 0;
  objc_storeStrong(&v17, date);
  v16 = 0;
  objc_storeStrong(&v16, email);
  v7 = selfCopy;
  selfCopy = 0;
  v15.receiver = v7;
  v15.super_class = AKSignInWithAppleAccount;
  selfCopy = [(AKSignInWithAppleAccount *)&v15 init];
  objc_storeStrong(&selfCopy, selfCopy);
  if (selfCopy)
  {
    objc_storeStrong(&selfCopy->_clientID, location[0]);
    objc_storeStrong(&selfCopy->_userID, v19);
    objc_storeStrong(&selfCopy->_creationDate, v17);
    objc_storeStrong(&selfCopy->_privateEmail, v16);
    v14 = ([v18 containsObject:@"name"] & 1) != 0;
    if ([v18 containsObject:@"email"])
    {
      if (selfCopy->_privateEmail)
      {
        v14 |= 4uLL;
      }

      else
      {
        v14 |= 2uLL;
      }
    }

    selfCopy->_sharedScopes = v14;
  }

  v9 = MEMORY[0x1E69E5928](selfCopy);
  objc_storeStrong(&v16, 0);
  objc_storeStrong(&v17, 0);
  objc_storeStrong(&v18, 0);
  objc_storeStrong(&v19, 0);
  objc_storeStrong(location, 0);
  objc_storeStrong(&selfCopy, 0);
  return v9;
}

- (AKSignInWithAppleAccount)initWithClientID:(id)d userID:(id)iD
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, d);
  v8 = 0;
  objc_storeStrong(&v8, iD);
  v4 = selfCopy;
  selfCopy = 0;
  selfCopy = [(AKSignInWithAppleAccount *)v4 initWithClientID:location[0] userID:v8 scopes:MEMORY[0x1E695E0F0] creationDate:0 privateEmail:?];
  v7 = MEMORY[0x1E69E5928](selfCopy);
  objc_storeStrong(&v8, 0);
  objc_storeStrong(location, 0);
  objc_storeStrong(&selfCopy, 0);
  return v7;
}

- (AKSignInWithAppleAccount)initWithCoder:(id)coder
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, coder);
  v3 = selfCopy;
  selfCopy = 0;
  v29.receiver = v3;
  v29.super_class = AKSignInWithAppleAccount;
  selfCopy = [(AKSignInWithAppleAccount *)&v29 init];
  objc_storeStrong(&selfCopy, selfCopy);
  if (selfCopy)
  {
    v4 = [location[0] decodeObjectOfClass:objc_opt_class() forKey:@"clientID"];
    clientID = selfCopy->_clientID;
    selfCopy->_clientID = v4;
    MEMORY[0x1E69E5920](clientID);
    v6 = [location[0] decodeObjectOfClass:objc_opt_class() forKey:@"teamID"];
    teamID = selfCopy->_teamID;
    selfCopy->_teamID = v6;
    MEMORY[0x1E69E5920](teamID);
    v8 = [location[0] decodeObjectOfClass:objc_opt_class() forKey:@"userID"];
    userID = selfCopy->_userID;
    selfCopy->_userID = v8;
    MEMORY[0x1E69E5920](userID);
    v10 = [location[0] decodeObjectOfClass:objc_opt_class() forKey:@"localizedAppName"];
    localizedAppName = selfCopy->_localizedAppName;
    selfCopy->_localizedAppName = v10;
    MEMORY[0x1E69E5920](localizedAppName);
    v12 = [location[0] decodeObjectOfClass:objc_opt_class() forKey:@"creationDate"];
    creationDate = selfCopy->_creationDate;
    selfCopy->_creationDate = v12;
    MEMORY[0x1E69E5920](creationDate);
    v28 = [location[0] decodeObjectOfClass:objc_opt_class() forKey:@"sharedScopes"];
    integerValue = [v28 integerValue];
    selfCopy->_sharedScopes = integerValue;
    MEMORY[0x1E69E5920](v28);
    v15 = [location[0] decodeObjectOfClass:objc_opt_class() forKey:@"privateEmail"];
    privateEmail = selfCopy->_privateEmail;
    selfCopy->_privateEmail = v15;
    MEMORY[0x1E69E5920](privateEmail);
    v17 = [location[0] decodeObjectOfClass:objc_opt_class() forKey:@"adamID"];
    appStoreAdamID = selfCopy->_appStoreAdamID;
    selfCopy->_appStoreAdamID = v17;
    MEMORY[0x1E69E5920](appStoreAdamID);
    v19 = [location[0] decodeObjectOfClass:objc_opt_class() forKey:@"localizedAppDeveloperName"];
    localizedAppDeveloperName = selfCopy->_localizedAppDeveloperName;
    selfCopy->_localizedAppDeveloperName = v19;
    MEMORY[0x1E69E5920](localizedAppDeveloperName);
    v21 = [location[0] decodeObjectOfClass:objc_opt_class() forKey:@"privacyPolicyURL"];
    privacyPolicyURL = selfCopy->_privacyPolicyURL;
    selfCopy->_privacyPolicyURL = v21;
    MEMORY[0x1E69E5920](privacyPolicyURL);
    v23 = [location[0] decodeBoolForKey:@"hasEULA"];
    selfCopy->_hasEULA = v23;
    v24 = [location[0] decodeObjectOfClass:objc_opt_class() forKey:@"shareInfo"];
    shareInfo = selfCopy->_shareInfo;
    selfCopy->_shareInfo = v24;
    MEMORY[0x1E69E5920](shareInfo);
  }

  v27 = MEMORY[0x1E69E5928](selfCopy);
  objc_storeStrong(location, 0);
  objc_storeStrong(&selfCopy, 0);
  return v27;
}

- (void)encodeWithCoder:(id)coder
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, coder);
  [location[0] encodeObject:selfCopy->_clientID forKey:@"clientID"];
  [location[0] encodeObject:selfCopy->_teamID forKey:@"teamID"];
  [location[0] encodeObject:selfCopy->_userID forKey:@"userID"];
  [location[0] encodeObject:selfCopy->_localizedAppName forKey:@"localizedAppName"];
  [location[0] encodeObject:selfCopy->_creationDate forKey:@"creationDate"];
  v3 = location[0];
  v4 = [MEMORY[0x1E696AD98] numberWithInteger:selfCopy->_sharedScopes];
  [v3 encodeObject:? forKey:?];
  MEMORY[0x1E69E5920](v4);
  [location[0] encodeObject:selfCopy->_privateEmail forKey:@"privateEmail"];
  [location[0] encodeObject:selfCopy->_appStoreAdamID forKey:@"adamID"];
  [location[0] encodeObject:selfCopy->_localizedAppDeveloperName forKey:@"localizedAppDeveloperName"];
  [location[0] encodeObject:selfCopy->_privacyPolicyURL forKey:@"privacyPolicyURL"];
  [location[0] encodeBool:selfCopy->_hasEULA forKey:@"hasEULA"];
  [location[0] encodeObject:selfCopy->_shareInfo forKey:@"shareInfo"];
  objc_storeStrong(location, 0);
}

- (id)copyWithZone:(_NSZone *)zone
{
  selfCopy = self;
  v25[2] = a2;
  v25[1] = zone;
  v25[0] = [objc_msgSend(objc_opt_class() allocWithZone:{zone), "init"}];
  v3 = [(NSString *)selfCopy->_clientID copy];
  v4 = *(v25[0] + 2);
  *(v25[0] + 2) = v3;
  MEMORY[0x1E69E5920](v4);
  v5 = [(NSString *)selfCopy->_teamID copy];
  v6 = *(v25[0] + 12);
  *(v25[0] + 12) = v5;
  MEMORY[0x1E69E5920](v6);
  v7 = [(NSString *)selfCopy->_userID copy];
  v8 = *(v25[0] + 9);
  *(v25[0] + 9) = v7;
  MEMORY[0x1E69E5920](v8);
  v9 = [(NSString *)selfCopy->_localizedAppName copy];
  v10 = *(v25[0] + 3);
  *(v25[0] + 3) = v9;
  MEMORY[0x1E69E5920](v10);
  v11 = [(NSDate *)selfCopy->_creationDate copy];
  v12 = *(v25[0] + 4);
  *(v25[0] + 4) = v11;
  MEMORY[0x1E69E5920](v12);
  *(v25[0] + 5) = selfCopy->_sharedScopes;
  v13 = [(NSString *)selfCopy->_privateEmail copy];
  v14 = *(v25[0] + 6);
  *(v25[0] + 6) = v13;
  MEMORY[0x1E69E5920](v14);
  v15 = [(NSString *)selfCopy->_appStoreAdamID copy];
  v16 = *(v25[0] + 11);
  *(v25[0] + 11) = v15;
  MEMORY[0x1E69E5920](v16);
  v17 = [(NSString *)selfCopy->_localizedAppDeveloperName copy];
  v18 = *(v25[0] + 7);
  *(v25[0] + 7) = v17;
  MEMORY[0x1E69E5920](v18);
  v19 = [(NSString *)selfCopy->_privacyPolicyURL copy];
  v20 = *(v25[0] + 8);
  *(v25[0] + 8) = v19;
  MEMORY[0x1E69E5920](v20);
  *(v25[0] + 8) = selfCopy->_hasEULA;
  v21 = [(AKSignInWithAppleAccountShareInfo *)selfCopy->_shareInfo copy];
  v22 = *(v25[0] + 10);
  *(v25[0] + 10) = v21;
  MEMORY[0x1E69E5920](v22);
  v24 = MEMORY[0x1E69E5928](v25[0]);
  objc_storeStrong(v25, 0);
  return v24;
}

- (NSString)appStoreURL
{
  if (self->_appStoreAdamID)
  {
    v3 = [MEMORY[0x1E696AEC0] stringWithFormat:@"itms-apps://apps.apple.com/app/%@", self->_appStoreAdamID];
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (id)description
{
  v4 = MEMORY[0x1E696AEC0];
  v2 = objc_opt_class();
  v5 = NSStringFromClass(v2);
  v6 = [v4 stringWithFormat:@"<%@: %p {\n\tclientID: %@, \n\tteamID: %@, \n\tlocalizedAppName: %@, \n\tlocalizedAppDeveloperName: %@, \n\tshareInfo: %@, \n}>", v5, self, self->_clientID, self->_teamID, self->_localizedAppName, self->_localizedAppDeveloperName, self->_shareInfo];
  MEMORY[0x1E69E5920](v5);

  return v6;
}

@end