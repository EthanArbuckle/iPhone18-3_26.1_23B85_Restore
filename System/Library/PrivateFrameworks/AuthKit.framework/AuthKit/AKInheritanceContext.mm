@interface AKInheritanceContext
- (AKInheritanceContext)initWithAuthenticationContext:(id)context;
- (AKInheritanceContext)initWithCoder:(id)coder;
- (AKInheritanceContext)initWithOwnerAltDSID:(id)d;
- (id)copyWithZone:(_NSZone *)zone;
- (void)encodeWithCoder:(id)coder;
@end

@implementation AKInheritanceContext

- (AKInheritanceContext)initWithOwnerAltDSID:(id)d
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, d);
  v3 = selfCopy;
  selfCopy = 0;
  v7.receiver = v3;
  v7.super_class = AKInheritanceContext;
  v6 = [(AKInheritanceContext *)&v7 init];
  selfCopy = v6;
  objc_storeStrong(&selfCopy, v6);
  if (v6)
  {
    objc_storeStrong(&selfCopy->_altDSID, location[0]);
  }

  v5 = MEMORY[0x1E69E5928](selfCopy);
  objc_storeStrong(location, 0);
  objc_storeStrong(&selfCopy, 0);
  return v5;
}

- (AKInheritanceContext)initWithAuthenticationContext:(id)context
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, context);
  v3 = selfCopy;
  selfCopy = 0;
  v9.receiver = v3;
  v9.super_class = AKInheritanceContext;
  v8 = [(AKInheritanceContext *)&v9 init];
  selfCopy = v8;
  objc_storeStrong(&selfCopy, v8);
  if (v8)
  {
    altDSID = [location[0] altDSID];
    altDSID = selfCopy->_altDSID;
    selfCopy->_altDSID = altDSID;
    MEMORY[0x1E69E5920](altDSID);
  }

  v7 = MEMORY[0x1E69E5928](selfCopy);
  objc_storeStrong(location, 0);
  objc_storeStrong(&selfCopy, 0);
  return v7;
}

- (AKInheritanceContext)initWithCoder:(id)coder
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, coder);
  v3 = selfCopy;
  selfCopy = 0;
  v16 = [(AKInheritanceContext *)v3 init];
  selfCopy = v16;
  objc_storeStrong(&selfCopy, v16);
  if (v16)
  {
    v4 = [location[0] decodeObjectOfClass:objc_opt_class() forKey:@"_altDSID"];
    altDSID = selfCopy->_altDSID;
    selfCopy->_altDSID = v4;
    MEMORY[0x1E69E5920](altDSID);
    v6 = [location[0] decodeObjectOfClass:objc_opt_class() forKey:@"_beneficiaryIdentifier"];
    beneficiaryIdentifier = selfCopy->_beneficiaryIdentifier;
    selfCopy->_beneficiaryIdentifier = v6;
    MEMORY[0x1E69E5920](beneficiaryIdentifier);
    v8 = [location[0] decodeObjectOfClass:objc_opt_class() forKey:@"_manifest"];
    manifest = selfCopy->_manifest;
    selfCopy->_manifest = v8;
    MEMORY[0x1E69E5920](manifest);
    v10 = [location[0] decodeObjectOfClass:objc_opt_class() forKey:@"_accessCode"];
    accessKey = selfCopy->_accessKey;
    selfCopy->_accessKey = v10;
    MEMORY[0x1E69E5920](accessKey);
    v12 = [location[0] decodeObjectOfClass:objc_opt_class() forKey:@"_beneficiarySetupToken"];
    beneficiarySetupToken = selfCopy->_beneficiarySetupToken;
    selfCopy->_beneficiarySetupToken = v12;
    MEMORY[0x1E69E5920](beneficiarySetupToken);
  }

  v15 = MEMORY[0x1E69E5928](selfCopy);
  objc_storeStrong(location, 0);
  objc_storeStrong(&selfCopy, 0);
  return v15;
}

- (void)encodeWithCoder:(id)coder
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, coder);
  [location[0] encodeObject:selfCopy->_altDSID forKey:@"_altDSID"];
  [location[0] encodeObject:selfCopy->_beneficiaryIdentifier forKey:@"_beneficiaryIdentifier"];
  [location[0] encodeObject:selfCopy->_manifest forKey:@"_manifest"];
  [location[0] encodeObject:selfCopy->_accessKey forKey:@"_accessCode"];
  [location[0] encodeObject:selfCopy->_beneficiarySetupToken forKey:@"_beneficiarySetupToken"];
  objc_storeStrong(location, 0);
}

- (id)copyWithZone:(_NSZone *)zone
{
  selfCopy = self;
  v15[2] = a2;
  v15[1] = zone;
  v15[0] = [objc_msgSend(objc_opt_class() allocWithZone:{zone), "init"}];
  v3 = [(NSString *)selfCopy->_altDSID copy];
  v4 = *(v15[0] + 2);
  *(v15[0] + 2) = v3;
  MEMORY[0x1E69E5920](v4);
  v5 = [(NSString *)selfCopy->_beneficiaryIdentifier copy];
  v6 = *(v15[0] + 3);
  *(v15[0] + 3) = v5;
  MEMORY[0x1E69E5920](v6);
  v7 = [(AKBeneficiaryManifest *)selfCopy->_manifest copy];
  v8 = *(v15[0] + 5);
  *(v15[0] + 5) = v7;
  MEMORY[0x1E69E5920](v8);
  v9 = [(AKInheritanceAccessKey *)selfCopy->_accessKey copy];
  v10 = *(v15[0] + 6);
  *(v15[0] + 6) = v9;
  MEMORY[0x1E69E5920](v10);
  v11 = [(NSString *)selfCopy->_beneficiarySetupToken copy];
  v12 = *(v15[0] + 4);
  *(v15[0] + 4) = v11;
  MEMORY[0x1E69E5920](v12);
  v14 = MEMORY[0x1E69E5928](v15[0]);
  objc_storeStrong(v15, 0);
  return v14;
}

@end