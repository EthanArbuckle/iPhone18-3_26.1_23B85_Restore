@interface HMAccessoryAccessCode
+ (HMAccessoryAccessCode)accessoryAccessCodeWithValue:(id)value accessory:(id)accessory;
+ (id)shortDescription;
- (BOOL)isEqual:(id)equal;
- (HMAccessoryAccessCode)initWithAccessory:(id)accessory accessCodeValue:(id)value uniqueIdentifier:(id)identifier hasRestrictions:(BOOL)restrictions;
- (NSArray)attributeDescriptions;
- (NSString)shortDescription;
- (id)createAccessoryAccessCodeValue;
- (unint64_t)hash;
@end

@implementation HMAccessoryAccessCode

- (NSArray)attributeDescriptions
{
  v18[4] = *MEMORY[0x1E69E9840];
  v3 = objc_alloc(MEMORY[0x1E69A29C8]);
  accessory = [(HMAccessoryAccessCode *)self accessory];
  v5 = [v3 initWithName:@"accessory" value:accessory];
  v18[0] = v5;
  v6 = objc_alloc(MEMORY[0x1E69A29C8]);
  accessCodeValue = [(HMAccessoryAccessCode *)self accessCodeValue];
  v8 = [v6 initWithName:@"accessCodeValue" value:accessCodeValue];
  v18[1] = v8;
  v9 = objc_alloc(MEMORY[0x1E69A29C8]);
  uniqueIdentifier = [(HMAccessoryAccessCode *)self uniqueIdentifier];
  v11 = [v9 initWithName:@"uniqueIdentifier" value:uniqueIdentifier];
  v18[2] = v11;
  v12 = objc_alloc(MEMORY[0x1E69A29C8]);
  v13 = [MEMORY[0x1E696AD98] numberWithBool:{-[HMAccessoryAccessCode hasRestrictions](self, "hasRestrictions")}];
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

- (unint64_t)hash
{
  accessory = [(HMAccessoryAccessCode *)self accessory];
  uniqueIdentifier = [accessory uniqueIdentifier];
  v5 = [uniqueIdentifier hash];
  accessCodeValue = [(HMAccessoryAccessCode *)self accessCodeValue];
  v7 = [accessCodeValue hash];
  uniqueIdentifier2 = [(HMAccessoryAccessCode *)self uniqueIdentifier];
  v9 = v7 ^ [uniqueIdentifier2 hash] ^ v5;
  hasRestrictions = [(HMAccessoryAccessCode *)self hasRestrictions];

  return v9 ^ hasRestrictions;
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
  if (!v6)
  {
    goto LABEL_9;
  }

  accessory = [(HMAccessoryAccessCode *)self accessory];
  uniqueIdentifier = [accessory uniqueIdentifier];
  accessory2 = [v6 accessory];
  uniqueIdentifier2 = [accessory2 uniqueIdentifier];
  v11 = HMFEqualObjects();

  if (!v11)
  {
    goto LABEL_9;
  }

  accessCodeValue = [(HMAccessoryAccessCode *)self accessCodeValue];
  accessCodeValue2 = [v6 accessCodeValue];
  v14 = HMFEqualObjects();

  if (v14)
  {
    uniqueIdentifier3 = [(HMAccessoryAccessCode *)self uniqueIdentifier];
    uniqueIdentifier4 = [v6 uniqueIdentifier];
    if (uniqueIdentifier3 == uniqueIdentifier4)
    {
      hasRestrictions = [(HMAccessoryAccessCode *)self hasRestrictions];
      v17 = hasRestrictions ^ [v6 hasRestrictions] ^ 1;
    }

    else
    {
      LOBYTE(v17) = 0;
    }
  }

  else
  {
LABEL_9:
    LOBYTE(v17) = 0;
  }

  return v17;
}

- (id)createAccessoryAccessCodeValue
{
  v3 = [HMAccessoryAccessCodeValue alloc];
  accessory = [(HMAccessoryAccessCode *)self accessory];
  uuid = [accessory uuid];
  accessCodeValue = [(HMAccessoryAccessCode *)self accessCodeValue];
  uniqueIdentifier = [(HMAccessoryAccessCode *)self uniqueIdentifier];
  v8 = [(HMAccessoryAccessCodeValue *)v3 initWithAccessoryUUID:uuid accessCodeValue:accessCodeValue uniqueIdentifier:uniqueIdentifier hasRestrictions:[(HMAccessoryAccessCode *)self hasRestrictions]];

  return v8;
}

- (HMAccessoryAccessCode)initWithAccessory:(id)accessory accessCodeValue:(id)value uniqueIdentifier:(id)identifier hasRestrictions:(BOOL)restrictions
{
  accessoryCopy = accessory;
  valueCopy = value;
  identifierCopy = identifier;
  v19.receiver = self;
  v19.super_class = HMAccessoryAccessCode;
  v14 = [(HMAccessoryAccessCode *)&v19 init];
  v15 = v14;
  if (v14)
  {
    objc_storeStrong(&v14->_accessory, accessory);
    v16 = [valueCopy copy];
    accessCodeValue = v15->_accessCodeValue;
    v15->_accessCodeValue = v16;

    objc_storeStrong(&v15->_uniqueIdentifier, identifier);
    v15->_hasRestrictions = restrictions;
  }

  return v15;
}

+ (id)shortDescription
{
  v2 = objc_opt_class();

  return NSStringFromClass(v2);
}

+ (HMAccessoryAccessCode)accessoryAccessCodeWithValue:(id)value accessory:(id)accessory
{
  accessoryCopy = accessory;
  valueCopy = value;
  v7 = [HMAccessoryAccessCode alloc];
  accessCodeValue = [valueCopy accessCodeValue];
  uniqueIdentifier = [valueCopy uniqueIdentifier];
  hasRestrictions = [valueCopy hasRestrictions];

  v11 = [(HMAccessoryAccessCode *)v7 initWithAccessory:accessoryCopy accessCodeValue:accessCodeValue uniqueIdentifier:uniqueIdentifier hasRestrictions:hasRestrictions];

  return v11;
}

@end