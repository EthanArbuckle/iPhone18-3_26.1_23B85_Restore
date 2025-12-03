@interface HMAccessCodeUpdateRequestValue
+ (id)shortDescription;
- (BOOL)isEqual:(id)equal;
- (HMAccessCodeUpdateRequestValue)initWithAccessoryAccessCodeValue:(id)value updatedAccessCodeValue:(id)codeValue;
- (HMAccessCodeUpdateRequestValue)initWithCoder:(id)coder;
- (NSArray)attributeDescriptions;
- (NSString)shortDescription;
- (NSUUID)accessoryUUID;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)coder;
@end

@implementation HMAccessCodeUpdateRequestValue

- (NSArray)attributeDescriptions
{
  v12[2] = *MEMORY[0x1E69E9840];
  v3 = objc_alloc(MEMORY[0x1E69A29C8]);
  accessoryAccessCodeValue = [(HMAccessCodeUpdateRequestValue *)self accessoryAccessCodeValue];
  v5 = [v3 initWithName:@"accessoryAccessCodeValue" value:accessoryAccessCodeValue];
  v12[0] = v5;
  v6 = objc_alloc(MEMORY[0x1E69A29C8]);
  updatedAccessCodeValue = [(HMAccessCodeUpdateRequestValue *)self updatedAccessCodeValue];
  v8 = [v6 initWithName:@"updatedAccessCodeValue" value:updatedAccessCodeValue];
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

- (HMAccessCodeUpdateRequestValue)initWithCoder:(id)coder
{
  v22 = *MEMORY[0x1E69E9840];
  coderCopy = coder;
  v5 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"HMAccessCodeUpdateRequestValueCodingKeyAccessoryAccessCodeValue"];
  v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"HMAccessCodeUpdateRequestValueCodingKeyUpdatedAccessCodeValue"];
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
      _os_log_impl(&dword_19BB39000, v10, OS_LOG_TYPE_ERROR, "%{public}@Could not initialize due to nil object after decoding accessoryAccessCodeValue: %@, updatedAccessCodeValue: %@,", &v16, 0x20u);
    }

    objc_autoreleasePoolPop(v9);
    v13 = 0;
  }

  else
  {
    selfCopy = [(HMAccessCodeUpdateRequestValue *)self initWithAccessoryAccessCodeValue:v5 updatedAccessCodeValue:v6];
    v13 = selfCopy;
  }

  v14 = *MEMORY[0x1E69E9840];
  return v13;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  accessoryAccessCodeValue = [(HMAccessCodeUpdateRequestValue *)self accessoryAccessCodeValue];
  [coderCopy encodeObject:accessoryAccessCodeValue forKey:@"HMAccessCodeUpdateRequestValueCodingKeyAccessoryAccessCodeValue"];

  updatedAccessCodeValue = [(HMAccessCodeUpdateRequestValue *)self updatedAccessCodeValue];
  [coderCopy encodeObject:updatedAccessCodeValue forKey:@"HMAccessCodeUpdateRequestValueCodingKeyUpdatedAccessCodeValue"];
}

- (unint64_t)hash
{
  accessoryAccessCodeValue = [(HMAccessCodeUpdateRequestValue *)self accessoryAccessCodeValue];
  v4 = [accessoryAccessCodeValue hash];
  updatedAccessCodeValue = [(HMAccessCodeUpdateRequestValue *)self updatedAccessCodeValue];
  v6 = [updatedAccessCodeValue hash];

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
    accessoryAccessCodeValue = [(HMAccessCodeUpdateRequestValue *)self accessoryAccessCodeValue];
    accessoryAccessCodeValue2 = [v6 accessoryAccessCodeValue];
    if ([accessoryAccessCodeValue isEqual:accessoryAccessCodeValue2])
    {
      updatedAccessCodeValue = [(HMAccessCodeUpdateRequestValue *)self updatedAccessCodeValue];
      updatedAccessCodeValue2 = [v6 updatedAccessCodeValue];
      v11 = [updatedAccessCodeValue isEqual:updatedAccessCodeValue2];
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

- (NSUUID)accessoryUUID
{
  accessoryAccessCodeValue = [(HMAccessCodeUpdateRequestValue *)self accessoryAccessCodeValue];
  accessoryUUID = [accessoryAccessCodeValue accessoryUUID];

  return accessoryUUID;
}

- (HMAccessCodeUpdateRequestValue)initWithAccessoryAccessCodeValue:(id)value updatedAccessCodeValue:(id)codeValue
{
  valueCopy = value;
  codeValueCopy = codeValue;
  v14.receiver = self;
  v14.super_class = HMAccessCodeUpdateRequestValue;
  v8 = [(HMAccessCodeUpdateRequestValue *)&v14 init];
  if (v8)
  {
    v9 = [valueCopy copy];
    accessoryAccessCodeValue = v8->_accessoryAccessCodeValue;
    v8->_accessoryAccessCodeValue = v9;

    v11 = [codeValueCopy copy];
    updatedAccessCodeValue = v8->_updatedAccessCodeValue;
    v8->_updatedAccessCodeValue = v11;
  }

  return v8;
}

+ (id)shortDescription
{
  v2 = objc_opt_class();

  return NSStringFromClass(v2);
}

@end