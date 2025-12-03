@interface AKAuthorizationRevokeUpgradeContext
- (AKAuthorizationRevokeUpgradeContext)initWithCoder:(id)coder;
- (id)copyWithZone:(_NSZone *)zone;
- (void)encodeWithCoder:(id)coder;
@end

@implementation AKAuthorizationRevokeUpgradeContext

- (void)encodeWithCoder:(id)coder
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, coder);
  [location[0] encodeObject:selfCopy->_transactionID forKey:@"_transactionID"];
  [location[0] encodeObject:selfCopy->_bundleID forKey:@"_bundleID"];
  [location[0] encodeObject:selfCopy->_teamID forKey:@"_teamID"];
  objc_storeStrong(location, 0);
}

- (AKAuthorizationRevokeUpgradeContext)initWithCoder:(id)coder
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, coder);
  v3 = selfCopy;
  selfCopy = 0;
  v12.receiver = v3;
  v12.super_class = AKAuthorizationRevokeUpgradeContext;
  selfCopy = [(AKAuthorizationRevokeUpgradeContext *)&v12 init];
  objc_storeStrong(&selfCopy, selfCopy);
  if (selfCopy)
  {
    v4 = [location[0] decodeObjectOfClass:objc_opt_class() forKey:@"_transactionID"];
    transactionID = selfCopy->_transactionID;
    selfCopy->_transactionID = v4;
    MEMORY[0x1E69E5920](transactionID);
    v6 = [location[0] decodeObjectOfClass:objc_opt_class() forKey:@"_bundleID"];
    bundleID = selfCopy->_bundleID;
    selfCopy->_bundleID = v6;
    MEMORY[0x1E69E5920](bundleID);
    v8 = [location[0] decodeObjectOfClass:objc_opt_class() forKey:@"_teamID"];
    teamID = selfCopy->_teamID;
    selfCopy->_teamID = v8;
    MEMORY[0x1E69E5920](teamID);
  }

  v11 = MEMORY[0x1E69E5928](selfCopy);
  objc_storeStrong(location, 0);
  objc_storeStrong(&selfCopy, 0);
  return v11;
}

- (id)copyWithZone:(_NSZone *)zone
{
  selfCopy = self;
  v11[2] = a2;
  v11[1] = zone;
  v11[0] = objc_alloc_init(AKAuthorizationRevokeUpgradeContext);
  v3 = [(NSString *)selfCopy->_transactionID copy];
  v4 = *(v11[0] + 1);
  *(v11[0] + 1) = v3;
  MEMORY[0x1E69E5920](v4);
  v5 = [(NSString *)selfCopy->_bundleID copy];
  v6 = *(v11[0] + 2);
  *(v11[0] + 2) = v5;
  MEMORY[0x1E69E5920](v6);
  v7 = [(NSString *)selfCopy->_teamID copy];
  v8 = *(v11[0] + 3);
  *(v11[0] + 3) = v7;
  MEMORY[0x1E69E5920](v8);
  v10 = MEMORY[0x1E69E5928](v11[0]);
  objc_storeStrong(v11, 0);
  return v10;
}

@end