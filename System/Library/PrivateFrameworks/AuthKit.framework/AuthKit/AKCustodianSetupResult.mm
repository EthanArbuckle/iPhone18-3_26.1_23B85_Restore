@interface AKCustodianSetupResult
- (AKCustodianSetupResult)initWithCoder:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (id)debugDescription;
- (void)encodeWithCoder:(id)a3;
@end

@implementation AKCustodianSetupResult

- (AKCustodianSetupResult)initWithCoder:(id)a3
{
  v12 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  v3 = v12;
  v12 = 0;
  v10 = [(AKCustodianSetupResult *)v3 init];
  v12 = v10;
  objc_storeStrong(&v12, v10);
  if (v10)
  {
    v4 = [location[0] decodeObjectOfClass:objc_opt_class() forKey:@"_encryptedPRKC"];
    encryptedPRKC = v12->_encryptedPRKC;
    v12->_encryptedPRKC = v4;
    MEMORY[0x1E69E5920](encryptedPRKC);
    v6 = [location[0] decodeObjectOfClass:objc_opt_class() forKey:@"_ownerCustodianAltDSID"];
    ownerCustodianAltDSID = v12->_ownerCustodianAltDSID;
    v12->_ownerCustodianAltDSID = v6;
    MEMORY[0x1E69E5920](ownerCustodianAltDSID);
  }

  v9 = MEMORY[0x1E69E5928](v12);
  objc_storeStrong(location, 0);
  objc_storeStrong(&v12, 0);
  return v9;
}

- (void)encodeWithCoder:(id)a3
{
  v4 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  [location[0] encodeObject:v4->_encryptedPRKC forKey:@"_encryptedPRKC"];
  [location[0] encodeObject:v4->_ownerCustodianAltDSID forKey:@"_ownerCustodianAltDSID"];
  objc_storeStrong(location, 0);
}

- (id)copyWithZone:(_NSZone *)a3
{
  v10 = self;
  v9[2] = a2;
  v9[1] = a3;
  v9[0] = [objc_msgSend(objc_opt_class() allocWithZone:{a3), "init"}];
  v3 = [(NSData *)v10->_encryptedPRKC copy];
  v4 = *(v9[0] + 1);
  *(v9[0] + 1) = v3;
  MEMORY[0x1E69E5920](v4);
  v5 = [(NSString *)v10->_ownerCustodianAltDSID copy];
  v6 = *(v9[0] + 2);
  *(v9[0] + 2) = v5;
  MEMORY[0x1E69E5920](v6);
  v8 = MEMORY[0x1E69E5928](v9[0]);
  objc_storeStrong(v9, 0);
  return v8;
}

- (id)debugDescription
{
  v11 = self;
  v10[1] = a2;
  v10[0] = [objc_alloc(MEMORY[0x1E696AEC0]) initWithData:self->_encryptedPRKC encoding:4];
  v9 = MEMORY[0x1E69E5928](v10[0]);
  if ([v10[0] length] >= 4)
  {
    v2 = [v10[0] substringToIndex:4];
    v3 = v9;
    v9 = v2;
    MEMORY[0x1E69E5920](v3);
  }

  v6 = MEMORY[0x1E696AEC0];
  v4 = objc_opt_class();
  v7 = NSStringFromClass(v4);
  v8 = [v6 stringWithFormat:@"<%@: %p {\nencryptedPRKC: %@...\nownerCustodianAltDSID: %@\n}>", v7, v11, v9, v11->_ownerCustodianAltDSID];
  MEMORY[0x1E69E5920](v7);
  objc_storeStrong(&v9, 0);
  objc_storeStrong(v10, 0);

  return v8;
}

@end