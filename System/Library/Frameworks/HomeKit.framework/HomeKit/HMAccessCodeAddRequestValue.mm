@interface HMAccessCodeAddRequestValue
+ (id)shortDescription;
- (BOOL)isEqual:(id)equal;
- (HMAccessCodeAddRequestValue)initWithAccessCodeValue:(id)value accessoryUUID:(id)d;
- (HMAccessCodeAddRequestValue)initWithCoder:(id)coder;
- (NSArray)attributeDescriptions;
- (NSString)shortDescription;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)coder;
@end

@implementation HMAccessCodeAddRequestValue

- (NSArray)attributeDescriptions
{
  v12[2] = *MEMORY[0x1E69E9840];
  v3 = objc_alloc(MEMORY[0x1E69A29C8]);
  accessCodeValue = [(HMAccessCodeAddRequestValue *)self accessCodeValue];
  v5 = [v3 initWithName:@"accessCodeValue" value:accessCodeValue];
  v12[0] = v5;
  v6 = objc_alloc(MEMORY[0x1E69A29C8]);
  accessoryUUID = [(HMAccessCodeAddRequestValue *)self accessoryUUID];
  v8 = [v6 initWithName:@"accessoryUUID" value:accessoryUUID];
  v12[1] = v8;
  v9 = [MEMORY[0x1E695DEC8] arrayWithObjects:v12 count:2];

  v10 = *MEMORY[0x1E69E9840];

  return v9;
}

- (NSString)shortDescription
{
  v2 = objc_opt_class();

  return [v2 shortDescription];
}

- (HMAccessCodeAddRequestValue)initWithCoder:(id)coder
{
  v22 = *MEMORY[0x1E69E9840];
  coderCopy = coder;
  v5 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"HMAccessCodeAddRequestValueCodingKeyAccessCodeValue"];
  v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"HMAccessCodeAddRequestValueCodingKeyAccessoryUUID"];
  v7 = v6;
  if (v5)
  {
    v8 = v6 == 0;
  }

  else
  {
    v8 = 1;
  }

  if (v8)
  {
    v9 = objc_autoreleasePoolPush();
    selfCopy = self;
    v10 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      v11 = HMFGetLogIdentifier();
      v16 = 138543874;
      v17 = v11;
      v18 = 2112;
      v19 = v5;
      v20 = 2112;
      v21 = v7;
      _os_log_impl(&dword_19BB39000, v10, OS_LOG_TYPE_ERROR, "%{public}@Could not initialize due to nil object after decoding accessCodeValue: %@, accessoryUUID: %@,", &v16, 0x20u);
    }

    objc_autoreleasePoolPop(v9);
    v13 = 0;
  }

  else
  {
    selfCopy = [(HMAccessCodeAddRequestValue *)self initWithAccessCodeValue:v5 accessoryUUID:v6];
    v13 = selfCopy;
  }

  v14 = *MEMORY[0x1E69E9840];
  return v13;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  accessCodeValue = [(HMAccessCodeAddRequestValue *)self accessCodeValue];
  [coderCopy encodeObject:accessCodeValue forKey:@"HMAccessCodeAddRequestValueCodingKeyAccessCodeValue"];

  accessoryUUID = [(HMAccessCodeAddRequestValue *)self accessoryUUID];
  [coderCopy encodeObject:accessoryUUID forKey:@"HMAccessCodeAddRequestValueCodingKeyAccessoryUUID"];
}

- (unint64_t)hash
{
  accessCodeValue = [(HMAccessCodeAddRequestValue *)self accessCodeValue];
  v4 = [accessCodeValue hash];
  accessoryUUID = [(HMAccessCodeAddRequestValue *)self accessoryUUID];
  v6 = [accessoryUUID hash];

  return v6 ^ v4;
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
    accessCodeValue = [(HMAccessCodeAddRequestValue *)self accessCodeValue];
    accessCodeValue2 = [v6 accessCodeValue];
    if ([accessCodeValue isEqual:accessCodeValue2])
    {
      accessoryUUID = [(HMAccessCodeAddRequestValue *)self accessoryUUID];
      accessoryUUID2 = [v6 accessoryUUID];
      v11 = [accessoryUUID isEqual:accessoryUUID2];
    }

    else
    {
      v11 = 0;
    }
  }

  else
  {
    v11 = 0;
  }

  return v11;
}

- (HMAccessCodeAddRequestValue)initWithAccessCodeValue:(id)value accessoryUUID:(id)d
{
  valueCopy = value;
  dCopy = d;
  v14.receiver = self;
  v14.super_class = HMAccessCodeAddRequestValue;
  v8 = [(HMAccessCodeAddRequestValue *)&v14 init];
  if (v8)
  {
    v9 = [valueCopy copy];
    accessCodeValue = v8->_accessCodeValue;
    v8->_accessCodeValue = v9;

    v11 = [dCopy copy];
    accessoryUUID = v8->_accessoryUUID;
    v8->_accessoryUUID = v11;
  }

  return v8;
}

+ (id)shortDescription
{
  v2 = objc_opt_class();

  return NSStringFromClass(v2);
}

@end