@interface AKBeneficiaryAliasSetupResult
- (AKBeneficiaryAliasSetupResult)initWithCoder:(id)coder;
- (id)copyWithZone:(_NSZone *)zone;
- (id)debugDescription;
- (void)encodeWithCoder:(id)coder;
@end

@implementation AKBeneficiaryAliasSetupResult

- (AKBeneficiaryAliasSetupResult)initWithCoder:(id)coder
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, coder);
  v3 = selfCopy;
  selfCopy = 0;
  v10 = [(AKBeneficiaryAliasSetupResult *)v3 init];
  selfCopy = v10;
  objc_storeStrong(&selfCopy, v10);
  if (v10)
  {
    v4 = [location[0] decodeObjectOfClass:objc_opt_class() forKey:@"_beneficiaryAltDSID"];
    beneficiaryAltDSID = selfCopy->_beneficiaryAltDSID;
    selfCopy->_beneficiaryAltDSID = v4;
    MEMORY[0x1E69E5920](beneficiaryAltDSID);
    v6 = [location[0] decodeObjectOfClass:objc_opt_class() forKey:@"_beneficiaryAccountName"];
    beneficiaryAccountName = selfCopy->_beneficiaryAccountName;
    selfCopy->_beneficiaryAccountName = v6;
    MEMORY[0x1E69E5920](beneficiaryAccountName);
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
  [location[0] encodeObject:selfCopy->_beneficiaryAltDSID forKey:@"_beneficiaryAltDSID"];
  [location[0] encodeObject:selfCopy->_beneficiaryAccountName forKey:@"_beneficiaryAccountName"];
  objc_storeStrong(location, 0);
}

- (id)copyWithZone:(_NSZone *)zone
{
  selfCopy = self;
  v9[2] = a2;
  v9[1] = zone;
  v9[0] = [objc_msgSend(objc_opt_class() allocWithZone:{zone), "init"}];
  v3 = [(NSString *)selfCopy->_beneficiaryAltDSID copy];
  v4 = *(v9[0] + 1);
  *(v9[0] + 1) = v3;
  MEMORY[0x1E69E5920](v4);
  v5 = [(NSString *)selfCopy->_beneficiaryAccountName copy];
  v6 = *(v9[0] + 2);
  *(v9[0] + 2) = v5;
  MEMORY[0x1E69E5920](v6);
  v8 = MEMORY[0x1E69E5928](v9[0]);
  objc_storeStrong(v9, 0);
  return v8;
}

- (id)debugDescription
{
  v4 = MEMORY[0x1E696AEC0];
  v2 = objc_opt_class();
  v5 = NSStringFromClass(v2);
  v6 = [v4 stringWithFormat:@"<%@: %p {\nbeneficiaryAltDSID: %@\nbeneficiaryAccountName: %@\n}>", v5, self, self->_beneficiaryAltDSID, self->_beneficiaryAccountName];
  MEMORY[0x1E69E5920](v5);

  return v6;
}

@end