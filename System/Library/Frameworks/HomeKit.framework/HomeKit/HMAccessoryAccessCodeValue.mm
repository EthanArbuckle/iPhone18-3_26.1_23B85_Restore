@interface HMAccessoryAccessCodeValue
+ (id)shortDescription;
- (BOOL)isEqual:(id)equal;
- (HMAccessoryAccessCodeValue)initWithAccessoryUUID:(id)d accessCodeValue:(id)value uniqueIdentifier:(id)identifier hasRestrictions:(BOOL)restrictions;
- (HMAccessoryAccessCodeValue)initWithCoder:(id)coder;
- (NSArray)attributeDescriptions;
- (NSString)shortDescription;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)coder;
@end

@implementation HMAccessoryAccessCodeValue

- (NSArray)attributeDescriptions
{
  v18[4] = *MEMORY[0x1E69E9840];
  v3 = objc_alloc(MEMORY[0x1E69A29C8]);
  accessoryUUID = [(HMAccessoryAccessCodeValue *)self accessoryUUID];
  v5 = [v3 initWithName:@"accessoryUUID" value:accessoryUUID];
  v18[0] = v5;
  v6 = objc_alloc(MEMORY[0x1E69A29C8]);
  accessCodeValue = [(HMAccessoryAccessCodeValue *)self accessCodeValue];
  v8 = [v6 initWithName:@"accessCodeValue" value:accessCodeValue];
  v18[1] = v8;
  v9 = objc_alloc(MEMORY[0x1E69A29C8]);
  uniqueIdentifier = [(HMAccessoryAccessCodeValue *)self uniqueIdentifier];
  v11 = [v9 initWithName:@"uniqueIdentifier" value:uniqueIdentifier];
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

- (HMAccessoryAccessCodeValue)initWithCoder:(id)coder
{
  v30 = *MEMORY[0x1E69E9840];
  coderCopy = coder;
  v5 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"HMAccessoryAccessCodeValueCodingKeyAccessoryUUID"];
  v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"HMAccessoryAccessCodeValueCodingKeyAccessCodeValue"];
  v7 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"HMAccessoryAccessCodeValueCodingKeyUniqueIdentifier"];
  v8 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"HMAccessoryAccessCodeValueCodingKeyHasRestrictions"];
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
    selfCopy = self;
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
    selfCopy = -[HMAccessoryAccessCodeValue initWithAccessoryUUID:accessCodeValue:uniqueIdentifier:hasRestrictions:](self, "initWithAccessoryUUID:accessCodeValue:uniqueIdentifier:hasRestrictions:", v5, v6, v7, [v8 BOOLValue]);
    v17 = selfCopy;
  }

  v18 = *MEMORY[0x1E69E9840];
  return v17;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  accessoryUUID = [(HMAccessoryAccessCodeValue *)self accessoryUUID];
  [coderCopy encodeObject:accessoryUUID forKey:@"HMAccessoryAccessCodeValueCodingKeyAccessoryUUID"];

  accessCodeValue = [(HMAccessoryAccessCodeValue *)self accessCodeValue];
  [coderCopy encodeObject:accessCodeValue forKey:@"HMAccessoryAccessCodeValueCodingKeyAccessCodeValue"];

  uniqueIdentifier = [(HMAccessoryAccessCodeValue *)self uniqueIdentifier];
  [coderCopy encodeObject:uniqueIdentifier forKey:@"HMAccessoryAccessCodeValueCodingKeyUniqueIdentifier"];

  v8 = [MEMORY[0x1E696AD98] numberWithBool:{-[HMAccessoryAccessCodeValue hasRestrictions](self, "hasRestrictions")}];
  [coderCopy encodeObject:v8 forKey:@"HMAccessoryAccessCodeValueCodingKeyHasRestrictions"];
}

- (unint64_t)hash
{
  accessoryUUID = [(HMAccessoryAccessCodeValue *)self accessoryUUID];
  v4 = [accessoryUUID hash];
  accessCodeValue = [(HMAccessoryAccessCodeValue *)self accessCodeValue];
  v6 = [accessCodeValue hash] ^ v4;
  uniqueIdentifier = [(HMAccessoryAccessCodeValue *)self uniqueIdentifier];
  v8 = v6 ^ [uniqueIdentifier hash];
  hasRestrictions = [(HMAccessoryAccessCodeValue *)self hasRestrictions];

  return v8 ^ hasRestrictions;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = equalCopy;
  }

  else
  {
    v5 = 0;
  }

  v6 = v5;
  if (v6)
  {
    accessoryUUID = [(HMAccessoryAccessCodeValue *)self accessoryUUID];
    accessoryUUID2 = [v6 accessoryUUID];
    if ([accessoryUUID isEqual:accessoryUUID2])
    {
      accessCodeValue = [(HMAccessoryAccessCodeValue *)self accessCodeValue];
      accessCodeValue2 = [v6 accessCodeValue];
      if ([accessCodeValue isEqual:accessCodeValue2])
      {
        uniqueIdentifier = [(HMAccessoryAccessCodeValue *)self uniqueIdentifier];
        uniqueIdentifier2 = [v6 uniqueIdentifier];
        if ([uniqueIdentifier isEqual:uniqueIdentifier2])
        {
          hasRestrictions = [(HMAccessoryAccessCodeValue *)self hasRestrictions];
          v14 = hasRestrictions ^ [v6 hasRestrictions] ^ 1;
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

- (HMAccessoryAccessCodeValue)initWithAccessoryUUID:(id)d accessCodeValue:(id)value uniqueIdentifier:(id)identifier hasRestrictions:(BOOL)restrictions
{
  dCopy = d;
  valueCopy = value;
  identifierCopy = identifier;
  v21.receiver = self;
  v21.super_class = HMAccessoryAccessCodeValue;
  v13 = [(HMAccessoryAccessCodeValue *)&v21 init];
  if (v13)
  {
    v14 = [dCopy copy];
    accessoryUUID = v13->_accessoryUUID;
    v13->_accessoryUUID = v14;

    v16 = [valueCopy copy];
    accessCodeValue = v13->_accessCodeValue;
    v13->_accessCodeValue = v16;

    v18 = [identifierCopy copy];
    uniqueIdentifier = v13->_uniqueIdentifier;
    v13->_uniqueIdentifier = v18;

    v13->_hasRestrictions = restrictions;
  }

  return v13;
}

+ (id)shortDescription
{
  v2 = objc_opt_class();

  return NSStringFromClass(v2);
}

@end