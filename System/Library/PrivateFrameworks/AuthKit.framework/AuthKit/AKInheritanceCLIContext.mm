@interface AKInheritanceCLIContext
- (AKInheritanceCLIContext)initWithCoder:(id)coder;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (void)encodeWithCoder:(id)coder;
@end

@implementation AKInheritanceCLIContext

- (AKInheritanceCLIContext)initWithCoder:(id)coder
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, coder);
  v3 = selfCopy;
  selfCopy = 0;
  v17.receiver = v3;
  v17.super_class = AKInheritanceCLIContext;
  v16 = [(AKInheritanceContext *)&v17 initWithCoder:location[0]];
  selfCopy = v16;
  objc_storeStrong(&selfCopy, v16);
  if (v16)
  {
    v4 = [location[0] decodeObjectOfClass:objc_opt_class() forKey:@"_accessKey"];
    accessKeyString = selfCopy->_accessKeyString;
    selfCopy->_accessKeyString = v4;
    MEMORY[0x1E69E5920](accessKeyString);
    v6 = [location[0] decodeObjectOfClass:objc_opt_class() forKey:@"_beneficiaryPassword"];
    beneficiaryPassword = selfCopy->_beneficiaryPassword;
    selfCopy->_beneficiaryPassword = v6;
    MEMORY[0x1E69E5920](beneficiaryPassword);
    v8 = [location[0] decodeObjectOfClass:objc_opt_class() forKey:@"_beneficiaryFirstName"];
    beneficiaryFirstName = selfCopy->_beneficiaryFirstName;
    selfCopy->_beneficiaryFirstName = v8;
    MEMORY[0x1E69E5920](beneficiaryFirstName);
    v10 = [location[0] decodeObjectOfClass:objc_opt_class() forKey:@"_beneficiaryLastName"];
    beneficiaryLastName = selfCopy->_beneficiaryLastName;
    selfCopy->_beneficiaryLastName = v10;
    MEMORY[0x1E69E5920](beneficiaryLastName);
    v12 = [location[0] decodeObjectOfClass:objc_opt_class() forKey:@"_identityToken"];
    identityToken = selfCopy->_identityToken;
    selfCopy->_identityToken = v12;
    MEMORY[0x1E69E5920](identityToken);
  }

  v15 = MEMORY[0x1E69E5928](selfCopy);
  objc_storeStrong(location, 0);
  objc_storeStrong(&selfCopy, 0);
  return v15;
}

- (id)copyWithZone:(_NSZone *)zone
{
  selfCopy = self;
  v16[2] = a2;
  v16[1] = zone;
  v15.receiver = self;
  v15.super_class = AKInheritanceCLIContext;
  v16[0] = [(AKInheritanceContext *)&v15 copyWithZone:zone];
  v3 = [(NSString *)selfCopy->_accessKeyString copy];
  v4 = *(v16[0] + 7);
  *(v16[0] + 7) = v3;
  MEMORY[0x1E69E5920](v4);
  v5 = [(NSString *)selfCopy->_beneficiaryPassword copy];
  v6 = *(v16[0] + 8);
  *(v16[0] + 8) = v5;
  MEMORY[0x1E69E5920](v6);
  v7 = [(NSString *)selfCopy->_beneficiaryFirstName copy];
  v8 = *(v16[0] + 9);
  *(v16[0] + 9) = v7;
  MEMORY[0x1E69E5920](v8);
  v9 = [(NSString *)selfCopy->_beneficiaryLastName copy];
  v10 = *(v16[0] + 10);
  *(v16[0] + 10) = v9;
  MEMORY[0x1E69E5920](v10);
  v11 = [(NSString *)selfCopy->_identityToken copy];
  v12 = *(v16[0] + 11);
  *(v16[0] + 11) = v11;
  MEMORY[0x1E69E5920](v12);
  v14 = MEMORY[0x1E69E5928](v16[0]);
  objc_storeStrong(v16, 0);
  return v14;
}

- (void)encodeWithCoder:(id)coder
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, coder);
  v3.receiver = selfCopy;
  v3.super_class = AKInheritanceCLIContext;
  [(AKInheritanceContext *)&v3 encodeWithCoder:location[0]];
  [location[0] encodeObject:selfCopy->_accessKeyString forKey:@"_accessKey"];
  [location[0] encodeObject:selfCopy->_beneficiaryPassword forKey:@"_beneficiaryPassword"];
  [location[0] encodeObject:selfCopy->_beneficiaryFirstName forKey:@"_beneficiaryFirstName"];
  [location[0] encodeObject:selfCopy->_beneficiaryLastName forKey:@"_beneficiaryLastName"];
  [location[0] encodeObject:selfCopy->_identityToken forKey:@"_identityToken"];
  objc_storeStrong(location, 0);
}

- (id)description
{
  v8 = MEMORY[0x1E696AEC0];
  accessKeyString = self->_accessKeyString;
  beneficiaryPassword = self->_beneficiaryPassword;
  beneficiaryFirstName = self->_beneficiaryFirstName;
  beneficiaryLastName = self->_beneficiaryLastName;
  identityToken = self->_identityToken;
  beneficiarySetupToken = [(AKInheritanceContext *)self beneficiarySetupToken];
  v10 = [v8 stringWithFormat:@"Access Key: %@ \nbeneficiaryPassword: %@\nbeneficiaryFirstName: %@\nbeneficiaryLastName: %@\nidentityToken: %@\nauthToken: %@", accessKeyString, beneficiaryPassword, beneficiaryFirstName, beneficiaryLastName, identityToken, beneficiarySetupToken];
  MEMORY[0x1E69E5920](beneficiarySetupToken);

  return v10;
}

@end