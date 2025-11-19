@interface AKInheritanceContext
- (AKInheritanceContext)initWithAuthenticationContext:(id)a3;
- (AKInheritanceContext)initWithCoder:(id)a3;
- (AKInheritanceContext)initWithOwnerAltDSID:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (void)encodeWithCoder:(id)a3;
@end

@implementation AKInheritanceContext

- (AKInheritanceContext)initWithOwnerAltDSID:(id)a3
{
  v9 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  v3 = v9;
  v9 = 0;
  v7.receiver = v3;
  v7.super_class = AKInheritanceContext;
  v6 = [(AKInheritanceContext *)&v7 init];
  v9 = v6;
  objc_storeStrong(&v9, v6);
  if (v6)
  {
    objc_storeStrong(&v9->_altDSID, location[0]);
  }

  v5 = MEMORY[0x1E69E5928](v9);
  objc_storeStrong(location, 0);
  objc_storeStrong(&v9, 0);
  return v5;
}

- (AKInheritanceContext)initWithAuthenticationContext:(id)a3
{
  v11 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  v3 = v11;
  v11 = 0;
  v9.receiver = v3;
  v9.super_class = AKInheritanceContext;
  v8 = [(AKInheritanceContext *)&v9 init];
  v11 = v8;
  objc_storeStrong(&v11, v8);
  if (v8)
  {
    v4 = [location[0] altDSID];
    altDSID = v11->_altDSID;
    v11->_altDSID = v4;
    MEMORY[0x1E69E5920](altDSID);
  }

  v7 = MEMORY[0x1E69E5928](v11);
  objc_storeStrong(location, 0);
  objc_storeStrong(&v11, 0);
  return v7;
}

- (AKInheritanceContext)initWithCoder:(id)a3
{
  v18 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  v3 = v18;
  v18 = 0;
  v16 = [(AKInheritanceContext *)v3 init];
  v18 = v16;
  objc_storeStrong(&v18, v16);
  if (v16)
  {
    v4 = [location[0] decodeObjectOfClass:objc_opt_class() forKey:@"_altDSID"];
    altDSID = v18->_altDSID;
    v18->_altDSID = v4;
    MEMORY[0x1E69E5920](altDSID);
    v6 = [location[0] decodeObjectOfClass:objc_opt_class() forKey:@"_beneficiaryIdentifier"];
    beneficiaryIdentifier = v18->_beneficiaryIdentifier;
    v18->_beneficiaryIdentifier = v6;
    MEMORY[0x1E69E5920](beneficiaryIdentifier);
    v8 = [location[0] decodeObjectOfClass:objc_opt_class() forKey:@"_manifest"];
    manifest = v18->_manifest;
    v18->_manifest = v8;
    MEMORY[0x1E69E5920](manifest);
    v10 = [location[0] decodeObjectOfClass:objc_opt_class() forKey:@"_accessCode"];
    accessKey = v18->_accessKey;
    v18->_accessKey = v10;
    MEMORY[0x1E69E5920](accessKey);
    v12 = [location[0] decodeObjectOfClass:objc_opt_class() forKey:@"_beneficiarySetupToken"];
    beneficiarySetupToken = v18->_beneficiarySetupToken;
    v18->_beneficiarySetupToken = v12;
    MEMORY[0x1E69E5920](beneficiarySetupToken);
  }

  v15 = MEMORY[0x1E69E5928](v18);
  objc_storeStrong(location, 0);
  objc_storeStrong(&v18, 0);
  return v15;
}

- (void)encodeWithCoder:(id)a3
{
  v4 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  [location[0] encodeObject:v4->_altDSID forKey:@"_altDSID"];
  [location[0] encodeObject:v4->_beneficiaryIdentifier forKey:@"_beneficiaryIdentifier"];
  [location[0] encodeObject:v4->_manifest forKey:@"_manifest"];
  [location[0] encodeObject:v4->_accessKey forKey:@"_accessCode"];
  [location[0] encodeObject:v4->_beneficiarySetupToken forKey:@"_beneficiarySetupToken"];
  objc_storeStrong(location, 0);
}

- (id)copyWithZone:(_NSZone *)a3
{
  v16 = self;
  v15[2] = a2;
  v15[1] = a3;
  v15[0] = [objc_msgSend(objc_opt_class() allocWithZone:{a3), "init"}];
  v3 = [(NSString *)v16->_altDSID copy];
  v4 = *(v15[0] + 2);
  *(v15[0] + 2) = v3;
  MEMORY[0x1E69E5920](v4);
  v5 = [(NSString *)v16->_beneficiaryIdentifier copy];
  v6 = *(v15[0] + 3);
  *(v15[0] + 3) = v5;
  MEMORY[0x1E69E5920](v6);
  v7 = [(AKBeneficiaryManifest *)v16->_manifest copy];
  v8 = *(v15[0] + 5);
  *(v15[0] + 5) = v7;
  MEMORY[0x1E69E5920](v8);
  v9 = [(AKInheritanceAccessKey *)v16->_accessKey copy];
  v10 = *(v15[0] + 6);
  *(v15[0] + 6) = v9;
  MEMORY[0x1E69E5920](v10);
  v11 = [(NSString *)v16->_beneficiarySetupToken copy];
  v12 = *(v15[0] + 4);
  *(v15[0] + 4) = v11;
  MEMORY[0x1E69E5920](v12);
  v14 = MEMORY[0x1E69E5928](v15[0]);
  objc_storeStrong(v15, 0);
  return v14;
}

@end