@interface AKInheritanceAccessKey
- (AKInheritanceAccessKey)initWithBeneficiairyIdentifier:(id)a3;
- (AKInheritanceAccessKey)initWithCoder:(id)a3;
- (BOOL)isEqual:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
- (void)encodeWithCoder:(id)a3;
@end

@implementation AKInheritanceAccessKey

- (AKInheritanceAccessKey)initWithBeneficiairyIdentifier:(id)a3
{
  v9 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  v3 = v9;
  v9 = 0;
  v7.receiver = v3;
  v7.super_class = AKInheritanceAccessKey;
  v6 = [(AKInheritanceAccessKey *)&v7 init];
  v9 = v6;
  objc_storeStrong(&v9, v6);
  if (v6)
  {
    objc_storeStrong(&v9->_beneficiaryID, location[0]);
  }

  v5 = MEMORY[0x1E69E5928](v9);
  objc_storeStrong(location, 0);
  objc_storeStrong(&v9, 0);
  return v5;
}

- (AKInheritanceAccessKey)initWithCoder:(id)a3
{
  v22 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  v3 = v22;
  v22 = 0;
  v20 = [(AKInheritanceAccessKey *)v3 init];
  v22 = v20;
  objc_storeStrong(&v22, v20);
  if (v20)
  {
    v4 = [location[0] decodeObjectOfClass:objc_opt_class() forKey:@"_beneficiaryID"];
    beneficiaryID = v22->_beneficiaryID;
    v22->_beneficiaryID = v4;
    MEMORY[0x1E69E5920](beneficiaryID);
    v6 = [location[0] decodeObjectOfClass:objc_opt_class() forKey:@"_wrappingKeyData"];
    wrappingKeyData = v22->_wrappingKeyData;
    v22->_wrappingKeyData = v6;
    MEMORY[0x1E69E5920](wrappingKeyData);
    v8 = [location[0] decodeObjectOfClass:objc_opt_class() forKey:@"_wrappingKeyString"];
    wrappingKeyString = v22->_wrappingKeyString;
    v22->_wrappingKeyString = v8;
    MEMORY[0x1E69E5920](wrappingKeyString);
    v10 = [location[0] decodeObjectOfClass:objc_opt_class() forKey:@"_wrappedKeyData"];
    wrappedKeyData = v22->_wrappedKeyData;
    v22->_wrappedKeyData = v10;
    MEMORY[0x1E69E5920](wrappedKeyData);
    v12 = [location[0] decodeObjectOfClass:objc_opt_class() forKey:@"_wrappedKeyString"];
    wrappedKeyString = v22->_wrappedKeyString;
    v22->_wrappedKeyString = v12;
    MEMORY[0x1E69E5920](wrappedKeyString);
    v14 = [location[0] decodeObjectOfClass:objc_opt_class() forKey:@"_claimTokenData"];
    claimTokenData = v22->_claimTokenData;
    v22->_claimTokenData = v14;
    MEMORY[0x1E69E5920](claimTokenData);
    v16 = [location[0] decodeObjectOfClass:objc_opt_class() forKey:@"_claimTokenString"];
    claimTokenString = v22->_claimTokenString;
    v22->_claimTokenString = v16;
    MEMORY[0x1E69E5920](claimTokenString);
  }

  v19 = MEMORY[0x1E69E5928](v22);
  objc_storeStrong(location, 0);
  objc_storeStrong(&v22, 0);
  return v19;
}

- (void)encodeWithCoder:(id)a3
{
  v4 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  [location[0] encodeObject:v4->_beneficiaryID forKey:@"_beneficiaryID"];
  [location[0] encodeObject:v4->_wrappingKeyData forKey:@"_wrappingKeyData"];
  [location[0] encodeObject:v4->_wrappingKeyString forKey:@"_wrappingKeyString"];
  [location[0] encodeObject:v4->_wrappedKeyData forKey:@"_wrappedKeyData"];
  [location[0] encodeObject:v4->_wrappedKeyString forKey:@"_wrappedKeyString"];
  [location[0] encodeObject:v4->_claimTokenData forKey:@"_claimTokenData"];
  [location[0] encodeObject:v4->_claimTokenString forKey:@"_claimTokenString"];
  objc_storeStrong(location, 0);
}

- (id)copyWithZone:(_NSZone *)a3
{
  v20 = self;
  v19[2] = a2;
  v19[1] = a3;
  v19[0] = [objc_msgSend(objc_opt_class() allocWithZone:{a3), "init"}];
  v3 = [(NSUUID *)v20->_beneficiaryID copy];
  v4 = *(v19[0] + 1);
  *(v19[0] + 1) = v3;
  MEMORY[0x1E69E5920](v4);
  v5 = [(NSData *)v20->_wrappingKeyData copy];
  v6 = *(v19[0] + 2);
  *(v19[0] + 2) = v5;
  MEMORY[0x1E69E5920](v6);
  v7 = [(NSString *)v20->_wrappingKeyString copy];
  v8 = *(v19[0] + 3);
  *(v19[0] + 3) = v7;
  MEMORY[0x1E69E5920](v8);
  v9 = [(NSData *)v20->_wrappedKeyData copy];
  v10 = *(v19[0] + 4);
  *(v19[0] + 4) = v9;
  MEMORY[0x1E69E5920](v10);
  v11 = [(NSString *)v20->_wrappedKeyString copy];
  v12 = *(v19[0] + 5);
  *(v19[0] + 5) = v11;
  MEMORY[0x1E69E5920](v12);
  v13 = [(NSData *)v20->_claimTokenData copy];
  v14 = *(v19[0] + 6);
  *(v19[0] + 6) = v13;
  MEMORY[0x1E69E5920](v14);
  v15 = [(NSString *)v20->_claimTokenString copy];
  v16 = *(v19[0] + 7);
  *(v19[0] + 7) = v15;
  MEMORY[0x1E69E5920](v16);
  v18 = MEMORY[0x1E69E5928](v19[0]);
  objc_storeStrong(v19, 0);
  return v18;
}

- (id)description
{
  v9 = self;
  v8 = a2;
  v3 = MEMORY[0x1E696AEC0];
  v7.receiver = self;
  v7.super_class = AKInheritanceAccessKey;
  v5 = [(AKInheritanceAccessKey *)&v7 description];
  v4 = [(AKInheritanceAccessKey *)v9 beneficiaryID];
  v6 = [v3 stringWithFormat:@"%@\nAccess code for beneficiary %@", v5, v4];
  MEMORY[0x1E69E5920](v4);
  MEMORY[0x1E69E5920](v5);

  return v6;
}

- (BOOL)isEqual:(id)a3
{
  v27 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v25 = MEMORY[0x1E69E5928](location[0]);
    beneficiaryID = v27->_beneficiaryID;
    v11 = [v25 beneficiaryID];
    v23 = 0;
    v21 = 0;
    v19 = 0;
    v17 = 0;
    v15 = 0;
    v13 = 0;
    v12 = 0;
    if (([(NSUUID *)beneficiaryID isEqual:?]& 1) != 0)
    {
      claimTokenData = v27->_claimTokenData;
      v24 = [v25 claimTokenData];
      v23 = 1;
      v12 = 0;
      if ([(NSData *)claimTokenData isEqualToData:?])
      {
        claimTokenString = v27->_claimTokenString;
        v22 = [v25 claimTokenString];
        v21 = 1;
        v12 = 0;
        if ([(NSString *)claimTokenString isEqualToString:?])
        {
          wrappedKeyData = v27->_wrappedKeyData;
          v20 = [v25 wrappedKeyData];
          v19 = 1;
          v12 = 0;
          if ([(NSData *)wrappedKeyData isEqualToData:?])
          {
            wrappedKeyString = v27->_wrappedKeyString;
            v18 = [v25 wrappedKeyString];
            v17 = 1;
            v12 = 0;
            if ([(NSString *)wrappedKeyString isEqualToString:?])
            {
              wrappingKeyData = v27->_wrappingKeyData;
              v16 = [v25 wrappingKeyData];
              v15 = 1;
              v12 = 0;
              if ([(NSData *)wrappingKeyData isEqualToData:?])
              {
                wrappingKeyString = v27->_wrappingKeyString;
                v14 = [v25 wrappingKeyString];
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
      MEMORY[0x1E69E5920](v14);
    }

    if (v15)
    {
      MEMORY[0x1E69E5920](v16);
    }

    if (v17)
    {
      MEMORY[0x1E69E5920](v18);
    }

    if (v19)
    {
      MEMORY[0x1E69E5920](v20);
    }

    if (v21)
    {
      MEMORY[0x1E69E5920](v22);
    }

    if (v23)
    {
      MEMORY[0x1E69E5920](v24);
    }

    MEMORY[0x1E69E5920](v11);
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