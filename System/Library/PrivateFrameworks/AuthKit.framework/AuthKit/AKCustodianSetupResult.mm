@interface AKCustodianSetupResult
- (AKCustodianSetupResult)initWithCoder:(id)coder;
- (id)copyWithZone:(_NSZone *)zone;
- (id)debugDescription;
- (void)encodeWithCoder:(id)coder;
@end

@implementation AKCustodianSetupResult

- (AKCustodianSetupResult)initWithCoder:(id)coder
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, coder);
  v3 = selfCopy;
  selfCopy = 0;
  v10 = [(AKCustodianSetupResult *)v3 init];
  selfCopy = v10;
  objc_storeStrong(&selfCopy, v10);
  if (v10)
  {
    v4 = [location[0] decodeObjectOfClass:objc_opt_class() forKey:@"_encryptedPRKC"];
    encryptedPRKC = selfCopy->_encryptedPRKC;
    selfCopy->_encryptedPRKC = v4;
    MEMORY[0x1E69E5920](encryptedPRKC);
    v6 = [location[0] decodeObjectOfClass:objc_opt_class() forKey:@"_ownerCustodianAltDSID"];
    ownerCustodianAltDSID = selfCopy->_ownerCustodianAltDSID;
    selfCopy->_ownerCustodianAltDSID = v6;
    MEMORY[0x1E69E5920](ownerCustodianAltDSID);
  }

  v9 = MEMORY[0x1E69E5928](selfCopy);
  objc_storeStrong(location, 0);
  objc_storeStrong(&selfCopy, 0);
  return v9;
}

- (void)encodeWithCoder:(id)coder
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, coder);
  [location[0] encodeObject:selfCopy->_encryptedPRKC forKey:@"_encryptedPRKC"];
  [location[0] encodeObject:selfCopy->_ownerCustodianAltDSID forKey:@"_ownerCustodianAltDSID"];
  objc_storeStrong(location, 0);
}

- (id)copyWithZone:(_NSZone *)zone
{
  selfCopy = self;
  v9[2] = a2;
  v9[1] = zone;
  v9[0] = [objc_msgSend(objc_opt_class() allocWithZone:{zone), "init"}];
  v3 = [(NSData *)selfCopy->_encryptedPRKC copy];
  v4 = *(v9[0] + 1);
  *(v9[0] + 1) = v3;
  MEMORY[0x1E69E5920](v4);
  v5 = [(NSString *)selfCopy->_ownerCustodianAltDSID copy];
  v6 = *(v9[0] + 2);
  *(v9[0] + 2) = v5;
  MEMORY[0x1E69E5920](v6);
  v8 = MEMORY[0x1E69E5928](v9[0]);
  objc_storeStrong(v9, 0);
  return v8;
}

- (id)debugDescription
{
  selfCopy = self;
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
  v8 = [v6 stringWithFormat:@"<%@: %p {\nencryptedPRKC: %@...\nownerCustodianAltDSID: %@\n}>", v7, selfCopy, v9, selfCopy->_ownerCustodianAltDSID];
  MEMORY[0x1E69E5920](v7);
  objc_storeStrong(&v9, 0);
  objc_storeStrong(v10, 0);

  return v8;
}

@end