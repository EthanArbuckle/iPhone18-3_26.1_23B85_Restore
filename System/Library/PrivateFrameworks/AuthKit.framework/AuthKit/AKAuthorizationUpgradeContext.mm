@interface AKAuthorizationUpgradeContext
- (AKAuthorizationUpgradeContext)initWithCoder:(id)coder;
- (id)copyWithZone:(_NSZone *)zone;
- (void)encodeWithCoder:(id)coder;
@end

@implementation AKAuthorizationUpgradeContext

- (void)encodeWithCoder:(id)coder
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, coder);
  [location[0] encodeObject:selfCopy->_appID forKey:@"_appID"];
  [location[0] encodeObject:selfCopy->_appName forKey:@"_appName"];
  [location[0] encodeObject:selfCopy->_bundleID forKey:@"_bundleID"];
  [location[0] encodeObject:selfCopy->_nonce forKey:@"_nonce"];
  [location[0] encodeObject:selfCopy->_serviceID forKey:@"_serviceID"];
  [location[0] encodeObject:selfCopy->_state forKey:@"_state"];
  [location[0] encodeObject:selfCopy->_teamID forKey:@"_teamID"];
  objc_storeStrong(location, 0);
}

- (AKAuthorizationUpgradeContext)initWithCoder:(id)coder
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, coder);
  v3 = selfCopy;
  selfCopy = 0;
  v20.receiver = v3;
  v20.super_class = AKAuthorizationUpgradeContext;
  selfCopy = [(AKAuthorizationUpgradeContext *)&v20 init];
  objc_storeStrong(&selfCopy, selfCopy);
  if (selfCopy)
  {
    v4 = [location[0] decodeObjectOfClass:objc_opt_class() forKey:@"_appID"];
    appID = selfCopy->_appID;
    selfCopy->_appID = v4;
    MEMORY[0x1E69E5920](appID);
    v6 = [location[0] decodeObjectOfClass:objc_opt_class() forKey:@"_appName"];
    appName = selfCopy->_appName;
    selfCopy->_appName = v6;
    MEMORY[0x1E69E5920](appName);
    v8 = [location[0] decodeObjectOfClass:objc_opt_class() forKey:@"_bundleID"];
    bundleID = selfCopy->_bundleID;
    selfCopy->_bundleID = v8;
    MEMORY[0x1E69E5920](bundleID);
    v10 = [location[0] decodeObjectOfClass:objc_opt_class() forKey:@"_nonce"];
    nonce = selfCopy->_nonce;
    selfCopy->_nonce = v10;
    MEMORY[0x1E69E5920](nonce);
    v12 = [location[0] decodeObjectOfClass:objc_opt_class() forKey:@"_serviceID"];
    serviceID = selfCopy->_serviceID;
    selfCopy->_serviceID = v12;
    MEMORY[0x1E69E5920](serviceID);
    v14 = [location[0] decodeObjectOfClass:objc_opt_class() forKey:@"_state"];
    state = selfCopy->_state;
    selfCopy->_state = v14;
    MEMORY[0x1E69E5920](state);
    v16 = [location[0] decodeObjectOfClass:objc_opt_class() forKey:@"_teamID"];
    teamID = selfCopy->_teamID;
    selfCopy->_teamID = v16;
    MEMORY[0x1E69E5920](teamID);
  }

  v19 = MEMORY[0x1E69E5928](selfCopy);
  objc_storeStrong(location, 0);
  objc_storeStrong(&selfCopy, 0);
  return v19;
}

- (id)copyWithZone:(_NSZone *)zone
{
  selfCopy = self;
  v19[2] = a2;
  v19[1] = zone;
  v19[0] = objc_alloc_init(AKAuthorizationUpgradeContext);
  v3 = [(NSString *)selfCopy->_appID copy];
  v4 = *(v19[0] + 2);
  *(v19[0] + 2) = v3;
  MEMORY[0x1E69E5920](v4);
  v5 = [(NSString *)selfCopy->_appName copy];
  v6 = *(v19[0] + 1);
  *(v19[0] + 1) = v5;
  MEMORY[0x1E69E5920](v6);
  v7 = [(NSString *)selfCopy->_bundleID copy];
  v8 = *(v19[0] + 3);
  *(v19[0] + 3) = v7;
  MEMORY[0x1E69E5920](v8);
  v9 = [(NSString *)selfCopy->_nonce copy];
  v10 = *(v19[0] + 6);
  *(v19[0] + 6) = v9;
  MEMORY[0x1E69E5920](v10);
  v11 = [(NSString *)selfCopy->_serviceID copy];
  v12 = *(v19[0] + 4);
  *(v19[0] + 4) = v11;
  MEMORY[0x1E69E5920](v12);
  v13 = [(NSString *)selfCopy->_state copy];
  v14 = *(v19[0] + 7);
  *(v19[0] + 7) = v13;
  MEMORY[0x1E69E5920](v14);
  v15 = [(NSString *)selfCopy->_teamID copy];
  v16 = *(v19[0] + 5);
  *(v19[0] + 5) = v15;
  MEMORY[0x1E69E5920](v16);
  v18 = MEMORY[0x1E69E5928](v19[0]);
  objc_storeStrong(v19, 0);
  return v18;
}

@end