@interface AKInheritanceAccessKey
- (AKInheritanceAccessKey)initWithBeneficiairyIdentifier:(id)identifier;
- (AKInheritanceAccessKey)initWithCoder:(id)coder;
- (BOOL)isEqual:(id)equal;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (void)encodeWithCoder:(id)coder;
@end

@implementation AKInheritanceAccessKey

- (AKInheritanceAccessKey)initWithBeneficiairyIdentifier:(id)identifier
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, identifier);
  v3 = selfCopy;
  selfCopy = 0;
  v7.receiver = v3;
  v7.super_class = AKInheritanceAccessKey;
  v6 = [(AKInheritanceAccessKey *)&v7 init];
  selfCopy = v6;
  objc_storeStrong(&selfCopy, v6);
  if (v6)
  {
    objc_storeStrong(&selfCopy->_beneficiaryID, location[0]);
  }

  v5 = MEMORY[0x1E69E5928](selfCopy);
  objc_storeStrong(location, 0);
  objc_storeStrong(&selfCopy, 0);
  return v5;
}

- (AKInheritanceAccessKey)initWithCoder:(id)coder
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, coder);
  v3 = selfCopy;
  selfCopy = 0;
  v20 = [(AKInheritanceAccessKey *)v3 init];
  selfCopy = v20;
  objc_storeStrong(&selfCopy, v20);
  if (v20)
  {
    v4 = [location[0] decodeObjectOfClass:objc_opt_class() forKey:@"_beneficiaryID"];
    beneficiaryID = selfCopy->_beneficiaryID;
    selfCopy->_beneficiaryID = v4;
    MEMORY[0x1E69E5920](beneficiaryID);
    v6 = [location[0] decodeObjectOfClass:objc_opt_class() forKey:@"_wrappingKeyData"];
    wrappingKeyData = selfCopy->_wrappingKeyData;
    selfCopy->_wrappingKeyData = v6;
    MEMORY[0x1E69E5920](wrappingKeyData);
    v8 = [location[0] decodeObjectOfClass:objc_opt_class() forKey:@"_wrappingKeyString"];
    wrappingKeyString = selfCopy->_wrappingKeyString;
    selfCopy->_wrappingKeyString = v8;
    MEMORY[0x1E69E5920](wrappingKeyString);
    v10 = [location[0] decodeObjectOfClass:objc_opt_class() forKey:@"_wrappedKeyData"];
    wrappedKeyData = selfCopy->_wrappedKeyData;
    selfCopy->_wrappedKeyData = v10;
    MEMORY[0x1E69E5920](wrappedKeyData);
    v12 = [location[0] decodeObjectOfClass:objc_opt_class() forKey:@"_wrappedKeyString"];
    wrappedKeyString = selfCopy->_wrappedKeyString;
    selfCopy->_wrappedKeyString = v12;
    MEMORY[0x1E69E5920](wrappedKeyString);
    v14 = [location[0] decodeObjectOfClass:objc_opt_class() forKey:@"_claimTokenData"];
    claimTokenData = selfCopy->_claimTokenData;
    selfCopy->_claimTokenData = v14;
    MEMORY[0x1E69E5920](claimTokenData);
    v16 = [location[0] decodeObjectOfClass:objc_opt_class() forKey:@"_claimTokenString"];
    claimTokenString = selfCopy->_claimTokenString;
    selfCopy->_claimTokenString = v16;
    MEMORY[0x1E69E5920](claimTokenString);
  }

  v19 = MEMORY[0x1E69E5928](selfCopy);
  objc_storeStrong(location, 0);
  objc_storeStrong(&selfCopy, 0);
  return v19;
}

- (void)encodeWithCoder:(id)coder
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, coder);
  [location[0] encodeObject:selfCopy->_beneficiaryID forKey:@"_beneficiaryID"];
  [location[0] encodeObject:selfCopy->_wrappingKeyData forKey:@"_wrappingKeyData"];
  [location[0] encodeObject:selfCopy->_wrappingKeyString forKey:@"_wrappingKeyString"];
  [location[0] encodeObject:selfCopy->_wrappedKeyData forKey:@"_wrappedKeyData"];
  [location[0] encodeObject:selfCopy->_wrappedKeyString forKey:@"_wrappedKeyString"];
  [location[0] encodeObject:selfCopy->_claimTokenData forKey:@"_claimTokenData"];
  [location[0] encodeObject:selfCopy->_claimTokenString forKey:@"_claimTokenString"];
  objc_storeStrong(location, 0);
}

- (id)copyWithZone:(_NSZone *)zone
{
  selfCopy = self;
  v19[2] = a2;
  v19[1] = zone;
  v19[0] = [objc_msgSend(objc_opt_class() allocWithZone:{zone), "init"}];
  v3 = [(NSUUID *)selfCopy->_beneficiaryID copy];
  v4 = *(v19[0] + 1);
  *(v19[0] + 1) = v3;
  MEMORY[0x1E69E5920](v4);
  v5 = [(NSData *)selfCopy->_wrappingKeyData copy];
  v6 = *(v19[0] + 2);
  *(v19[0] + 2) = v5;
  MEMORY[0x1E69E5920](v6);
  v7 = [(NSString *)selfCopy->_wrappingKeyString copy];
  v8 = *(v19[0] + 3);
  *(v19[0] + 3) = v7;
  MEMORY[0x1E69E5920](v8);
  v9 = [(NSData *)selfCopy->_wrappedKeyData copy];
  v10 = *(v19[0] + 4);
  *(v19[0] + 4) = v9;
  MEMORY[0x1E69E5920](v10);
  v11 = [(NSString *)selfCopy->_wrappedKeyString copy];
  v12 = *(v19[0] + 5);
  *(v19[0] + 5) = v11;
  MEMORY[0x1E69E5920](v12);
  v13 = [(NSData *)selfCopy->_claimTokenData copy];
  v14 = *(v19[0] + 6);
  *(v19[0] + 6) = v13;
  MEMORY[0x1E69E5920](v14);
  v15 = [(NSString *)selfCopy->_claimTokenString copy];
  v16 = *(v19[0] + 7);
  *(v19[0] + 7) = v15;
  MEMORY[0x1E69E5920](v16);
  v18 = MEMORY[0x1E69E5928](v19[0]);
  objc_storeStrong(v19, 0);
  return v18;
}

- (id)description
{
  selfCopy = self;
  v8 = a2;
  v3 = MEMORY[0x1E696AEC0];
  v7.receiver = self;
  v7.super_class = AKInheritanceAccessKey;
  v5 = [(AKInheritanceAccessKey *)&v7 description];
  beneficiaryID = [(AKInheritanceAccessKey *)selfCopy beneficiaryID];
  v6 = [v3 stringWithFormat:@"%@\nAccess code for beneficiary %@", v5, beneficiaryID];
  MEMORY[0x1E69E5920](beneficiaryID);
  MEMORY[0x1E69E5920](v5);

  return v6;
}

- (BOOL)isEqual:(id)equal
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, equal);
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v25 = MEMORY[0x1E69E5928](location[0]);
    beneficiaryID = selfCopy->_beneficiaryID;
    beneficiaryID = [v25 beneficiaryID];
    v23 = 0;
    v21 = 0;
    v19 = 0;
    v17 = 0;
    v15 = 0;
    v13 = 0;
    v12 = 0;
    if (([(NSUUID *)beneficiaryID isEqual:?]& 1) != 0)
    {
      claimTokenData = selfCopy->_claimTokenData;
      claimTokenData = [v25 claimTokenData];
      v23 = 1;
      v12 = 0;
      if ([(NSData *)claimTokenData isEqualToData:?])
      {
        claimTokenString = selfCopy->_claimTokenString;
        claimTokenString = [v25 claimTokenString];
        v21 = 1;
        v12 = 0;
        if ([(NSString *)claimTokenString isEqualToString:?])
        {
          wrappedKeyData = selfCopy->_wrappedKeyData;
          wrappedKeyData = [v25 wrappedKeyData];
          v19 = 1;
          v12 = 0;
          if ([(NSData *)wrappedKeyData isEqualToData:?])
          {
            wrappedKeyString = selfCopy->_wrappedKeyString;
            wrappedKeyString = [v25 wrappedKeyString];
            v17 = 1;
            v12 = 0;
            if ([(NSString *)wrappedKeyString isEqualToString:?])
            {
              wrappingKeyData = selfCopy->_wrappingKeyData;
              wrappingKeyData = [v25 wrappingKeyData];
              v15 = 1;
              v12 = 0;
              if ([(NSData *)wrappingKeyData isEqualToData:?])
              {
                wrappingKeyString = selfCopy->_wrappingKeyString;
                wrappingKeyString = [v25 wrappingKeyString];
                v13 = 1;
                v12 = [(NSString *)wrappingKeyString isEqualToString:?];
              }
            }
          }
        }
      }
    }

    v28 = v12;
    if (v13)
    {
      MEMORY[0x1E69E5920](wrappingKeyString);
    }

    if (v15)
    {
      MEMORY[0x1E69E5920](wrappingKeyData);
    }

    if (v17)
    {
      MEMORY[0x1E69E5920](wrappedKeyString);
    }

    if (v19)
    {
      MEMORY[0x1E69E5920](wrappedKeyData);
    }

    if (v21)
    {
      MEMORY[0x1E69E5920](claimTokenString);
    }

    if (v23)
    {
      MEMORY[0x1E69E5920](claimTokenData);
    }

    MEMORY[0x1E69E5920](beneficiaryID);
    objc_storeStrong(&v25, 0);
  }

  else
  {
    v28 = 0;
  }

  objc_storeStrong(location, 0);
  return v28;
}

@end