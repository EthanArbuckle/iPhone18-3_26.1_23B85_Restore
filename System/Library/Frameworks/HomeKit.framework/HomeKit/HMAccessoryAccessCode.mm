@interface HMAccessoryAccessCode
+ (HMAccessoryAccessCode)accessoryAccessCodeWithValue:(id)a3 accessory:(id)a4;
+ (id)shortDescription;
- (BOOL)isEqual:(id)a3;
- (HMAccessoryAccessCode)initWithAccessory:(id)a3 accessCodeValue:(id)a4 uniqueIdentifier:(id)a5 hasRestrictions:(BOOL)a6;
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
  v4 = [(HMAccessoryAccessCode *)self accessory];
  v5 = [v3 initWithName:@"accessory" value:v4];
  v18[0] = v5;
  v6 = objc_alloc(MEMORY[0x1E69A29C8]);
  v7 = [(HMAccessoryAccessCode *)self accessCodeValue];
  v8 = [v6 initWithName:@"accessCodeValue" value:v7];
  v18[1] = v8;
  v9 = objc_alloc(MEMORY[0x1E69A29C8]);
  v10 = [(HMAccessoryAccessCode *)self uniqueIdentifier];
  v11 = [v9 initWithName:@"uniqueIdentifier" value:v10];
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
  v3 = [(HMAccessoryAccessCode *)self accessory];
  v4 = [v3 uniqueIdentifier];
  v5 = [v4 hash];
  v6 = [(HMAccessoryAccessCode *)self accessCodeValue];
  v7 = [v6 hash];
  v8 = [(HMAccessoryAccessCode *)self uniqueIdentifier];
  v9 = v7 ^ [v8 hash] ^ v5;
  v10 = [(HMAccessoryAccessCode *)self hasRestrictions];

  return v9 ^ v10;
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
  if (!v6)
  {
    goto LABEL_9;
  }

  v7 = [(HMAccessoryAccessCode *)self accessory];
  v8 = [v7 uniqueIdentifier];
  v9 = [v6 accessory];
  v10 = [v9 uniqueIdentifier];
  v11 = HMFEqualObjects();

  if (!v11)
  {
    goto LABEL_9;
  }

  v12 = [(HMAccessoryAccessCode *)self accessCodeValue];
  v13 = [v6 accessCodeValue];
  v14 = HMFEqualObjects();

  if (v14)
  {
    v15 = [(HMAccessoryAccessCode *)self uniqueIdentifier];
    v16 = [v6 uniqueIdentifier];
    if (v15 == v16)
    {
      v19 = [(HMAccessoryAccessCode *)self hasRestrictions];
      v17 = v19 ^ [v6 hasRestrictions] ^ 1;
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
  v4 = [(HMAccessoryAccessCode *)self accessory];
  v5 = [v4 uuid];
  v6 = [(HMAccessoryAccessCode *)self accessCodeValue];
  v7 = [(HMAccessoryAccessCode *)self uniqueIdentifier];
  v8 = [(HMAccessoryAccessCodeValue *)v3 initWithAccessoryUUID:v5 accessCodeValue:v6 uniqueIdentifier:v7 hasRestrictions:[(HMAccessoryAccessCode *)self hasRestrictions]];

  return v8;
}

- (HMAccessoryAccessCode)initWithAccessory:(id)a3 accessCodeValue:(id)a4 uniqueIdentifier:(id)a5 hasRestrictions:(BOOL)a6
{
  v11 = a3;
  v12 = a4;
  v13 = a5;
  v19.receiver = self;
  v19.super_class = HMAccessoryAccessCode;
  v14 = [(HMAccessoryAccessCode *)&v19 init];
  v15 = v14;
  if (v14)
  {
    objc_storeStrong(&v14->_accessory, a3);
    v16 = [v12 copy];
    accessCodeValue = v15->_accessCodeValue;
    v15->_accessCodeValue = v16;

    objc_storeStrong(&v15->_uniqueIdentifier, a5);
    v15->_hasRestrictions = a6;
  }

  return v15;
}

+ (id)shortDescription
{
  v2 = objc_opt_class();

  return NSStringFromClass(v2);
}

+ (HMAccessoryAccessCode)accessoryAccessCodeWithValue:(id)a3 accessory:(id)a4
{
  v5 = a4;
  v6 = a3;
  v7 = [HMAccessoryAccessCode alloc];
  v8 = [v6 accessCodeValue];
  v9 = [v6 uniqueIdentifier];
  v10 = [v6 hasRestrictions];

  v11 = [(HMAccessoryAccessCode *)v7 initWithAccessory:v5 accessCodeValue:v8 uniqueIdentifier:v9 hasRestrictions:v10];

  return v11;
}

@end