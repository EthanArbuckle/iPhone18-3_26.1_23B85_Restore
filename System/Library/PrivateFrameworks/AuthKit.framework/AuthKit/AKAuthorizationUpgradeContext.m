@interface AKAuthorizationUpgradeContext
- (AKAuthorizationUpgradeContext)initWithCoder:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (void)encodeWithCoder:(id)a3;
@end

@implementation AKAuthorizationUpgradeContext

- (void)encodeWithCoder:(id)a3
{
  v4 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  [location[0] encodeObject:v4->_appID forKey:@"_appID"];
  [location[0] encodeObject:v4->_appName forKey:@"_appName"];
  [location[0] encodeObject:v4->_bundleID forKey:@"_bundleID"];
  [location[0] encodeObject:v4->_nonce forKey:@"_nonce"];
  [location[0] encodeObject:v4->_serviceID forKey:@"_serviceID"];
  [location[0] encodeObject:v4->_state forKey:@"_state"];
  [location[0] encodeObject:v4->_teamID forKey:@"_teamID"];
  objc_storeStrong(location, 0);
}

- (AKAuthorizationUpgradeContext)initWithCoder:(id)a3
{
  v22 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  v3 = v22;
  v22 = 0;
  v20.receiver = v3;
  v20.super_class = AKAuthorizationUpgradeContext;
  v22 = [(AKAuthorizationUpgradeContext *)&v20 init];
  objc_storeStrong(&v22, v22);
  if (v22)
  {
    v4 = [location[0] decodeObjectOfClass:objc_opt_class() forKey:@"_appID"];
    appID = v22->_appID;
    v22->_appID = v4;
    MEMORY[0x1E69E5920](appID);
    v6 = [location[0] decodeObjectOfClass:objc_opt_class() forKey:@"_appName"];
    appName = v22->_appName;
    v22->_appName = v6;
    MEMORY[0x1E69E5920](appName);
    v8 = [location[0] decodeObjectOfClass:objc_opt_class() forKey:@"_bundleID"];
    bundleID = v22->_bundleID;
    v22->_bundleID = v8;
    MEMORY[0x1E69E5920](bundleID);
    v10 = [location[0] decodeObjectOfClass:objc_opt_class() forKey:@"_nonce"];
    nonce = v22->_nonce;
    v22->_nonce = v10;
    MEMORY[0x1E69E5920](nonce);
    v12 = [location[0] decodeObjectOfClass:objc_opt_class() forKey:@"_serviceID"];
    serviceID = v22->_serviceID;
    v22->_serviceID = v12;
    MEMORY[0x1E69E5920](serviceID);
    v14 = [location[0] decodeObjectOfClass:objc_opt_class() forKey:@"_state"];
    state = v22->_state;
    v22->_state = v14;
    MEMORY[0x1E69E5920](state);
    v16 = [location[0] decodeObjectOfClass:objc_opt_class() forKey:@"_teamID"];
    teamID = v22->_teamID;
    v22->_teamID = v16;
    MEMORY[0x1E69E5920](teamID);
  }

  v19 = MEMORY[0x1E69E5928](v22);
  objc_storeStrong(location, 0);
  objc_storeStrong(&v22, 0);
  return v19;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v20 = self;
  v19[2] = a2;
  v19[1] = a3;
  v19[0] = objc_alloc_init(AKAuthorizationUpgradeContext);
  v3 = [(NSString *)v20->_appID copy];
  v4 = *(v19[0] + 2);
  *(v19[0] + 2) = v3;
  MEMORY[0x1E69E5920](v4);
  v5 = [(NSString *)v20->_appName copy];
  v6 = *(v19[0] + 1);
  *(v19[0] + 1) = v5;
  MEMORY[0x1E69E5920](v6);
  v7 = [(NSString *)v20->_bundleID copy];
  v8 = *(v19[0] + 3);
  *(v19[0] + 3) = v7;
  MEMORY[0x1E69E5920](v8);
  v9 = [(NSString *)v20->_nonce copy];
  v10 = *(v19[0] + 6);
  *(v19[0] + 6) = v9;
  MEMORY[0x1E69E5920](v10);
  v11 = [(NSString *)v20->_serviceID copy];
  v12 = *(v19[0] + 4);
  *(v19[0] + 4) = v11;
  MEMORY[0x1E69E5920](v12);
  v13 = [(NSString *)v20->_state copy];
  v14 = *(v19[0] + 7);
  *(v19[0] + 7) = v13;
  MEMORY[0x1E69E5920](v14);
  v15 = [(NSString *)v20->_teamID copy];
  v16 = *(v19[0] + 5);
  *(v19[0] + 5) = v15;
  MEMORY[0x1E69E5920](v16);
  v18 = MEMORY[0x1E69E5928](v19[0]);
  objc_storeStrong(v19, 0);
  return v18;
}

@end