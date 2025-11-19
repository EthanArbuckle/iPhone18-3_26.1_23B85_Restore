@interface AKSignInWithAppleAccount
- (AKSignInWithAppleAccount)initWithClientID:(id)a3 userID:(id)a4;
- (AKSignInWithAppleAccount)initWithClientID:(id)a3 userID:(id)a4 scopes:(id)a5 creationDate:(id)a6 privateEmail:(id)a7;
- (AKSignInWithAppleAccount)initWithCoder:(id)a3;
- (NSString)appStoreURL;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
- (void)encodeWithCoder:(id)a3;
@end

@implementation AKSignInWithAppleAccount

- (AKSignInWithAppleAccount)initWithClientID:(id)a3 userID:(id)a4 scopes:(id)a5 creationDate:(id)a6 privateEmail:(id)a7
{
  v21 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  v19 = 0;
  objc_storeStrong(&v19, a4);
  v18 = 0;
  objc_storeStrong(&v18, a5);
  v17 = 0;
  objc_storeStrong(&v17, a6);
  v16 = 0;
  objc_storeStrong(&v16, a7);
  v7 = v21;
  v21 = 0;
  v15.receiver = v7;
  v15.super_class = AKSignInWithAppleAccount;
  v21 = [(AKSignInWithAppleAccount *)&v15 init];
  objc_storeStrong(&v21, v21);
  if (v21)
  {
    objc_storeStrong(&v21->_clientID, location[0]);
    objc_storeStrong(&v21->_userID, v19);
    objc_storeStrong(&v21->_creationDate, v17);
    objc_storeStrong(&v21->_privateEmail, v16);
    v14 = ([v18 containsObject:@"name"] & 1) != 0;
    if ([v18 containsObject:@"email"])
    {
      if (v21->_privateEmail)
      {
        v14 |= 4uLL;
      }

      else
      {
        v14 |= 2uLL;
      }
    }

    v21->_sharedScopes = v14;
  }

  v9 = MEMORY[0x1E69E5928](v21);
  objc_storeStrong(&v16, 0);
  objc_storeStrong(&v17, 0);
  objc_storeStrong(&v18, 0);
  objc_storeStrong(&v19, 0);
  objc_storeStrong(location, 0);
  objc_storeStrong(&v21, 0);
  return v9;
}

- (AKSignInWithAppleAccount)initWithClientID:(id)a3 userID:(id)a4
{
  v10 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  v8 = 0;
  objc_storeStrong(&v8, a4);
  v4 = v10;
  v10 = 0;
  v10 = [(AKSignInWithAppleAccount *)v4 initWithClientID:location[0] userID:v8 scopes:MEMORY[0x1E695E0F0] creationDate:0 privateEmail:?];
  v7 = MEMORY[0x1E69E5928](v10);
  objc_storeStrong(&v8, 0);
  objc_storeStrong(location, 0);
  objc_storeStrong(&v10, 0);
  return v7;
}

- (AKSignInWithAppleAccount)initWithCoder:(id)a3
{
  v31 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  v3 = v31;
  v31 = 0;
  v29.receiver = v3;
  v29.super_class = AKSignInWithAppleAccount;
  v31 = [(AKSignInWithAppleAccount *)&v29 init];
  objc_storeStrong(&v31, v31);
  if (v31)
  {
    v4 = [location[0] decodeObjectOfClass:objc_opt_class() forKey:@"clientID"];
    clientID = v31->_clientID;
    v31->_clientID = v4;
    MEMORY[0x1E69E5920](clientID);
    v6 = [location[0] decodeObjectOfClass:objc_opt_class() forKey:@"teamID"];
    teamID = v31->_teamID;
    v31->_teamID = v6;
    MEMORY[0x1E69E5920](teamID);
    v8 = [location[0] decodeObjectOfClass:objc_opt_class() forKey:@"userID"];
    userID = v31->_userID;
    v31->_userID = v8;
    MEMORY[0x1E69E5920](userID);
    v10 = [location[0] decodeObjectOfClass:objc_opt_class() forKey:@"localizedAppName"];
    localizedAppName = v31->_localizedAppName;
    v31->_localizedAppName = v10;
    MEMORY[0x1E69E5920](localizedAppName);
    v12 = [location[0] decodeObjectOfClass:objc_opt_class() forKey:@"creationDate"];
    creationDate = v31->_creationDate;
    v31->_creationDate = v12;
    MEMORY[0x1E69E5920](creationDate);
    v28 = [location[0] decodeObjectOfClass:objc_opt_class() forKey:@"sharedScopes"];
    v14 = [v28 integerValue];
    v31->_sharedScopes = v14;
    MEMORY[0x1E69E5920](v28);
    v15 = [location[0] decodeObjectOfClass:objc_opt_class() forKey:@"privateEmail"];
    privateEmail = v31->_privateEmail;
    v31->_privateEmail = v15;
    MEMORY[0x1E69E5920](privateEmail);
    v17 = [location[0] decodeObjectOfClass:objc_opt_class() forKey:@"adamID"];
    appStoreAdamID = v31->_appStoreAdamID;
    v31->_appStoreAdamID = v17;
    MEMORY[0x1E69E5920](appStoreAdamID);
    v19 = [location[0] decodeObjectOfClass:objc_opt_class() forKey:@"localizedAppDeveloperName"];
    localizedAppDeveloperName = v31->_localizedAppDeveloperName;
    v31->_localizedAppDeveloperName = v19;
    MEMORY[0x1E69E5920](localizedAppDeveloperName);
    v21 = [location[0] decodeObjectOfClass:objc_opt_class() forKey:@"privacyPolicyURL"];
    privacyPolicyURL = v31->_privacyPolicyURL;
    v31->_privacyPolicyURL = v21;
    MEMORY[0x1E69E5920](privacyPolicyURL);
    v23 = [location[0] decodeBoolForKey:@"hasEULA"];
    v31->_hasEULA = v23;
    v24 = [location[0] decodeObjectOfClass:objc_opt_class() forKey:@"shareInfo"];
    shareInfo = v31->_shareInfo;
    v31->_shareInfo = v24;
    MEMORY[0x1E69E5920](shareInfo);
  }

  v27 = MEMORY[0x1E69E5928](v31);
  objc_storeStrong(location, 0);
  objc_storeStrong(&v31, 0);
  return v27;
}

- (void)encodeWithCoder:(id)a3
{
  v6 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  [location[0] encodeObject:v6->_clientID forKey:@"clientID"];
  [location[0] encodeObject:v6->_teamID forKey:@"teamID"];
  [location[0] encodeObject:v6->_userID forKey:@"userID"];
  [location[0] encodeObject:v6->_localizedAppName forKey:@"localizedAppName"];
  [location[0] encodeObject:v6->_creationDate forKey:@"creationDate"];
  v3 = location[0];
  v4 = [MEMORY[0x1E696AD98] numberWithInteger:v6->_sharedScopes];
  [v3 encodeObject:? forKey:?];
  MEMORY[0x1E69E5920](v4);
  [location[0] encodeObject:v6->_privateEmail forKey:@"privateEmail"];
  [location[0] encodeObject:v6->_appStoreAdamID forKey:@"adamID"];
  [location[0] encodeObject:v6->_localizedAppDeveloperName forKey:@"localizedAppDeveloperName"];
  [location[0] encodeObject:v6->_privacyPolicyURL forKey:@"privacyPolicyURL"];
  [location[0] encodeBool:v6->_hasEULA forKey:@"hasEULA"];
  [location[0] encodeObject:v6->_shareInfo forKey:@"shareInfo"];
  objc_storeStrong(location, 0);
}

- (id)copyWithZone:(_NSZone *)a3
{
  v26 = self;
  v25[2] = a2;
  v25[1] = a3;
  v25[0] = [objc_msgSend(objc_opt_class() allocWithZone:{a3), "init"}];
  v3 = [(NSString *)v26->_clientID copy];
  v4 = *(v25[0] + 2);
  *(v25[0] + 2) = v3;
  MEMORY[0x1E69E5920](v4);
  v5 = [(NSString *)v26->_teamID copy];
  v6 = *(v25[0] + 12);
  *(v25[0] + 12) = v5;
  MEMORY[0x1E69E5920](v6);
  v7 = [(NSString *)v26->_userID copy];
  v8 = *(v25[0] + 9);
  *(v25[0] + 9) = v7;
  MEMORY[0x1E69E5920](v8);
  v9 = [(NSString *)v26->_localizedAppName copy];
  v10 = *(v25[0] + 3);
  *(v25[0] + 3) = v9;
  MEMORY[0x1E69E5920](v10);
  v11 = [(NSDate *)v26->_creationDate copy];
  v12 = *(v25[0] + 4);
  *(v25[0] + 4) = v11;
  MEMORY[0x1E69E5920](v12);
  *(v25[0] + 5) = v26->_sharedScopes;
  v13 = [(NSString *)v26->_privateEmail copy];
  v14 = *(v25[0] + 6);
  *(v25[0] + 6) = v13;
  MEMORY[0x1E69E5920](v14);
  v15 = [(NSString *)v26->_appStoreAdamID copy];
  v16 = *(v25[0] + 11);
  *(v25[0] + 11) = v15;
  MEMORY[0x1E69E5920](v16);
  v17 = [(NSString *)v26->_localizedAppDeveloperName copy];
  v18 = *(v25[0] + 7);
  *(v25[0] + 7) = v17;
  MEMORY[0x1E69E5920](v18);
  v19 = [(NSString *)v26->_privacyPolicyURL copy];
  v20 = *(v25[0] + 8);
  *(v25[0] + 8) = v19;
  MEMORY[0x1E69E5920](v20);
  *(v25[0] + 8) = v26->_hasEULA;
  v21 = [(AKSignInWithAppleAccountShareInfo *)v26->_shareInfo copy];
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