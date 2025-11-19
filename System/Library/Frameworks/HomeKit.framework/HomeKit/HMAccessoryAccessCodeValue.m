@interface HMAccessoryAccessCodeValue
+ (id)shortDescription;
- (BOOL)isEqual:(id)a3;
- (HMAccessoryAccessCodeValue)initWithAccessoryUUID:(id)a3 accessCodeValue:(id)a4 uniqueIdentifier:(id)a5 hasRestrictions:(BOOL)a6;
- (HMAccessoryAccessCodeValue)initWithCoder:(id)a3;
- (NSArray)attributeDescriptions;
- (NSString)shortDescription;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)a3;
@end

@implementation HMAccessoryAccessCodeValue

- (NSArray)attributeDescriptions
{
  v18[4] = *MEMORY[0x1E69E9840];
  v3 = objc_alloc(MEMORY[0x1E69A29C8]);
  v4 = [(HMAccessoryAccessCodeValue *)self accessoryUUID];
  v5 = [v3 initWithName:@"accessoryUUID" value:v4];
  v18[0] = v5;
  v6 = objc_alloc(MEMORY[0x1E69A29C8]);
  v7 = [(HMAccessoryAccessCodeValue *)self accessCodeValue];
  v8 = [v6 initWithName:@"accessCodeValue" value:v7];
  v18[1] = v8;
  v9 = objc_alloc(MEMORY[0x1E69A29C8]);
  v10 = [(HMAccessoryAccessCodeValue *)self uniqueIdentifier];
  v11 = [v9 initWithName:@"uniqueIdentifier" value:v10];
  v18[2] = v11;
  v12 = objc_alloc(MEMORY[0x1E69A29C8]);
  v13 = [MEMORY[0x1E696AD98] numberWithBool:{-[HMAccessoryAccessCodeValue hasRestrictions](self, "hasRestrictions")}];
  v14 = [v12 initWithName:@"hasRestrictions" value:v13];
  v18[3] = v14;
  v15 = [MEMORY[0x1E695DEC8] arrayWithObjects:v18 count:4];

  v16 = *MEMORY[0x1E69E9840];

  return v15;
}

- (NSString)shortDescription
{
  v2 = objc_opt_class();

  return [v2 shortDescription];
}

- (HMAccessoryAccessCodeValue)initWithCoder:(id)a3
{
  v30 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"HMAccessoryAccessCodeValueCodingKeyAccessoryUUID"];
  v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"HMAccessoryAccessCodeValueCodingKeyAccessCodeValue"];
  v7 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"HMAccessoryAccessCodeValueCodingKeyUniqueIdentifier"];
  v8 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"HMAccessoryAccessCodeValueCodingKeyHasRestrictions"];
  v9 = v8;
  if (v5)
  {
    v10 = v6 == 0;
  }

  else
  {
    v10 = 1;
  }

  if (v10 || v7 == 0 || v8 == 0)
  {
    v13 = objc_autoreleasePoolPush();
    v16 = self;
    v14 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
    {
      v15 = HMFGetLogIdentifier();
      v20 = 138544386;
      v21 = v15;
      v22 = 2112;
      v23 = v5;
      v24 = 2112;
      v25 = v6;
      v26 = 2112;
      v27 = v7;
      v28 = 2112;
      v29 = v9;
      _os_log_impl(&dword_19BB39000, v14, OS_LOG_TYPE_ERROR, "%{public}@Could not initialize due to nil object after decoding accessoryUUID: %@, accessCodeValue: %@, uniqueIdentifier: %@, hasRestrictions: %@,", &v20, 0x34u);
    }

    objc_autoreleasePoolPop(v13);
    v17 = 0;
  }

  else
  {
    v16 = -[HMAccessoryAccessCodeValue initWithAccessoryUUID:accessCodeValue:uniqueIdentifier:hasRestrictions:](self, "initWithAccessoryUUID:accessCodeValue:uniqueIdentifier:hasRestrictions:", v5, v6, v7, [v8 BOOLValue]);
    v17 = v16;
  }

  v18 = *MEMORY[0x1E69E9840];
  return v17;
}

- (void)encodeWithCoder:(id)a3
{
  v4 = a3;
  v5 = [(HMAccessoryAccessCodeValue *)self accessoryUUID];
  [v4 encodeObject:v5 forKey:@"HMAccessoryAccessCodeValueCodingKeyAccessoryUUID"];

  v6 = [(HMAccessoryAccessCodeValue *)self accessCodeValue];
  [v4 encodeObject:v6 forKey:@"HMAccessoryAccessCodeValueCodingKeyAccessCodeValue"];

  v7 = [(HMAccessoryAccessCodeValue *)self uniqueIdentifier];
  [v4 encodeObject:v7 forKey:@"HMAccessoryAccessCodeValueCodingKeyUniqueIdentifier"];

  v8 = [MEMORY[0x1E696AD98] numberWithBool:{-[HMAccessoryAccessCodeValue hasRestrictions](self, "hasRestrictions")}];
  [v4 encodeObject:v8 forKey:@"HMAccessoryAccessCodeValueCodingKeyHasRestrictions"];
}

- (unint64_t)hash
{
  v3 = [(HMAccessoryAccessCodeValue *)self accessoryUUID];
  v4 = [v3 hash];
  v5 = [(HMAccessoryAccessCodeValue *)self accessCodeValue];
  v6 = [v5 hash] ^ v4;
  v7 = [(HMAccessoryAccessCodeValue *)self uniqueIdentifier];
  v8 = v6 ^ [v7 hash];
  v9 = [(HMAccessoryAccessCodeValue *)self hasRestrictions];

  return v8 ^ v9;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  v6 = v5;
  if (v6)
  {
    v7 = [(HMAccessoryAccessCodeValue *)self accessoryUUID];
    v8 = [v6 accessoryUUID];
    if ([v7 isEqual:v8])
    {
      v9 = [(HMAccessoryAccessCodeValue *)self accessCodeValue];
      v10 = [v6 accessCodeValue];
      if ([v9 isEqual:v10])
      {
        v11 = [(HMAccessoryAccessCodeValue *)self uniqueIdentifier];
        v12 = [v6 uniqueIdentifier];
        if ([v11 isEqual:v12])
        {
          v13 = [(HMAccessoryAccessCodeValue *)self hasRestrictions];
          v14 = v13 ^ [v6 hasRestrictions] ^ 1;
        }

        else
        {
          LOBYTE(v14) = 0;
        }
      }

      else
      {
        LOBYTE(v14) = 0;
      }
    }

    else
    {
      LOBYTE(v14) = 0;
    }
  }

  else
  {
    LOBYTE(v14) = 0;
  }

  return v14;
}

- (HMAccessoryAccessCodeValue)initWithAccessoryUUID:(id)a3 accessCodeValue:(id)a4 uniqueIdentifier:(id)a5 hasRestrictions:(BOOL)a6
{
  v10 = a3;
  v11 = a4;
  v12 = a5;
  v21.receiver = self;
  v21.super_class = HMAccessoryAccessCodeValue;
  v13 = [(HMAccessoryAccessCodeValue *)&v21 init];
  if (v13)
  {
    v14 = [v10 copy];
    accessoryUUID = v13->_accessoryUUID;
    v13->_accessoryUUID = v14;

    v16 = [v11 copy];
    accessCodeValue = v13->_accessCodeValue;
    v13->_accessCodeValue = v16;

    v18 = [v12 copy];
    uniqueIdentifier = v13->_uniqueIdentifier;
    v13->_uniqueIdentifier = v18;

    v13->_hasRestrictions = a6;
  }

  return v13;
}

+ (id)shortDescription
{
  v2 = objc_opt_class();

  return NSStringFromClass(v2);
}

@end