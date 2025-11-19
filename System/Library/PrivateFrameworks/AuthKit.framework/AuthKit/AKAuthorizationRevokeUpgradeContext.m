@interface AKAuthorizationRevokeUpgradeContext
- (AKAuthorizationRevokeUpgradeContext)initWithCoder:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (void)encodeWithCoder:(id)a3;
@end

@implementation AKAuthorizationRevokeUpgradeContext

- (void)encodeWithCoder:(id)a3
{
  v4 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  [location[0] encodeObject:v4->_transactionID forKey:@"_transactionID"];
  [location[0] encodeObject:v4->_bundleID forKey:@"_bundleID"];
  [location[0] encodeObject:v4->_teamID forKey:@"_teamID"];
  objc_storeStrong(location, 0);
}

- (AKAuthorizationRevokeUpgradeContext)initWithCoder:(id)a3
{
  v14 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  v3 = v14;
  v14 = 0;
  v12.receiver = v3;
  v12.super_class = AKAuthorizationRevokeUpgradeContext;
  v14 = [(AKAuthorizationRevokeUpgradeContext *)&v12 init];
  objc_storeStrong(&v14, v14);
  if (v14)
  {
    v4 = [location[0] decodeObjectOfClass:objc_opt_class() forKey:@"_transactionID"];
    transactionID = v14->_transactionID;
    v14->_transactionID = v4;
    MEMORY[0x1E69E5920](transactionID);
    v6 = [location[0] decodeObjectOfClass:objc_opt_class() forKey:@"_bundleID"];
    bundleID = v14->_bundleID;
    v14->_bundleID = v6;
    MEMORY[0x1E69E5920](bundleID);
    v8 = [location[0] decodeObjectOfClass:objc_opt_class() forKey:@"_teamID"];
    teamID = v14->_teamID;
    v14->_teamID = v8;
    MEMORY[0x1E69E5920](teamID);
  }

  v11 = MEMORY[0x1E69E5928](v14);
  objc_storeStrong(location, 0);
  objc_storeStrong(&v14, 0);
  return v11;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v12 = self;
  v11[2] = a2;
  v11[1] = a3;
  v11[0] = objc_alloc_init(AKAuthorizationRevokeUpgradeContext);
  v3 = [(NSString *)v12->_transactionID copy];
  v4 = *(v11[0] + 1);
  *(v11[0] + 1) = v3;
  MEMORY[0x1E69E5920](v4);
  v5 = [(NSString *)v12->_bundleID copy];
  v6 = *(v11[0] + 2);
  *(v11[0] + 2) = v5;
  MEMORY[0x1E69E5920](v6);
  v7 = [(NSString *)v12->_teamID copy];
  v8 = *(v11[0] + 3);
  *(v11[0] + 3) = v7;
  MEMORY[0x1E69E5920](v8);
  v10 = MEMORY[0x1E69E5928](v11[0]);
  objc_storeStrong(v11, 0);
  return v10;
}

@end