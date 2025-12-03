@interface HMAccessoryAccessCodeConstraintsFetchResponseValue
+ (id)shortDescription;
- (BOOL)isEqual:(id)equal;
- (HMAccessoryAccessCodeConstraintsFetchResponseValue)initWithAccessory:(id)accessory constraints:(id)constraints error:(id)error;
- (HMAccessoryAccessCodeConstraintsFetchResponseValue)initWithCoder:(id)coder;
- (NSArray)attributeDescriptions;
- (NSString)shortDescription;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)coder;
@end

@implementation HMAccessoryAccessCodeConstraintsFetchResponseValue

- (NSArray)attributeDescriptions
{
  v15[3] = *MEMORY[0x1E69E9840];
  v3 = objc_alloc(MEMORY[0x1E69A29C8]);
  accessoryUUID = [(HMAccessoryAccessCodeConstraintsFetchResponseValue *)self accessoryUUID];
  v5 = [v3 initWithName:@"accessoryUUID" value:accessoryUUID];
  v6 = objc_alloc(MEMORY[0x1E69A29C8]);
  constraints = [(HMAccessoryAccessCodeConstraintsFetchResponseValue *)self constraints];
  v8 = [v6 initWithName:@"constraints" value:constraints];
  v15[1] = v8;
  v9 = objc_alloc(MEMORY[0x1E69A29C8]);
  error = [(HMAccessoryAccessCodeConstraintsFetchResponseValue *)self error];
  v11 = [v9 initWithName:@"error" value:error];
  v15[2] = v11;
  v12 = [MEMORY[0x1E695DEC8] arrayWithObjects:v15 count:3];

  v13 = *MEMORY[0x1E69E9840];

  return v12;
}

- (NSString)shortDescription
{
  v2 = objc_opt_class();

  return [v2 shortDescription];
}

- (HMAccessoryAccessCodeConstraintsFetchResponseValue)initWithCoder:(id)coder
{
  v22 = *MEMORY[0x1E69E9840];
  coderCopy = coder;
  v5 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"HMAccessoryAccessCodeConstraintsFetchResponseValueCodingKeyAccessoryUUID"];
  v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"HMAccessoryAccessCodeConstraintsFetchResponseValueCodingKeyConstraints"];
  v7 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"HMAccessoryAccessCodeConstraintsFetchResponseValueCodingKeyError"];
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
      v21 = v6;
      _os_log_impl(&dword_19BB39000, v10, OS_LOG_TYPE_ERROR, "%{public}@Could not initialize due to nil object after decoding accessoryUUID: %@, constraints: %@", &v16, 0x20u);
    }

    objc_autoreleasePoolPop(v9);
    v13 = 0;
  }

  else
  {
    selfCopy = [(HMAccessoryAccessCodeConstraintsFetchResponseValue *)self initWithAccessory:v5 constraints:v6 error:v7];
    v13 = selfCopy;
  }

  v14 = *MEMORY[0x1E69E9840];
  return v13;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  accessoryUUID = [(HMAccessoryAccessCodeConstraintsFetchResponseValue *)self accessoryUUID];
  [coderCopy encodeObject:accessoryUUID forKey:@"HMAccessoryAccessCodeConstraintsFetchResponseValueCodingKeyAccessoryUUID"];

  constraints = [(HMAccessoryAccessCodeConstraintsFetchResponseValue *)self constraints];
  [coderCopy encodeObject:constraints forKey:@"HMAccessoryAccessCodeConstraintsFetchResponseValueCodingKeyConstraints"];

  error = [(HMAccessoryAccessCodeConstraintsFetchResponseValue *)self error];
  [coderCopy encodeObject:error forKey:@"HMAccessoryAccessCodeConstraintsFetchResponseValueCodingKeyError"];
}

- (unint64_t)hash
{
  accessoryUUID = [(HMAccessoryAccessCodeConstraintsFetchResponseValue *)self accessoryUUID];
  v4 = [accessoryUUID hash];
  constraints = [(HMAccessoryAccessCodeConstraintsFetchResponseValue *)self constraints];
  v6 = [constraints hash] ^ v4;
  error = [(HMAccessoryAccessCodeConstraintsFetchResponseValue *)self error];
  v8 = [error hash];

  return v6 ^ v8;
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
    accessoryUUID = [(HMAccessoryAccessCodeConstraintsFetchResponseValue *)self accessoryUUID];
    accessoryUUID2 = [v6 accessoryUUID];
    if ([accessoryUUID isEqual:accessoryUUID2])
    {
      constraints = [(HMAccessoryAccessCodeConstraintsFetchResponseValue *)self constraints];
      constraints2 = [v6 constraints];
      if ([constraints isEqual:constraints2])
      {
        error = [(HMAccessoryAccessCodeConstraintsFetchResponseValue *)self error];
        error2 = [v6 error];
        v13 = HMFEqualObjects();
      }

      else
      {
        v13 = 0;
      }
    }

    else
    {
      v13 = 0;
    }
  }

  else
  {
    v13 = 0;
  }

  return v13;
}

- (HMAccessoryAccessCodeConstraintsFetchResponseValue)initWithAccessory:(id)accessory constraints:(id)constraints error:(id)error
{
  accessoryCopy = accessory;
  constraintsCopy = constraints;
  errorCopy = error;
  v17.receiver = self;
  v17.super_class = HMAccessoryAccessCodeConstraintsFetchResponseValue;
  v11 = [(HMAccessoryAccessCodeConstraintsFetchResponseValue *)&v17 init];
  if (v11)
  {
    v12 = [accessoryCopy copy];
    accessoryUUID = v11->_accessoryUUID;
    v11->_accessoryUUID = v12;

    v14 = [constraintsCopy copy];
    constraints = v11->_constraints;
    v11->_constraints = v14;

    objc_storeStrong(&v11->_error, error);
  }

  return v11;
}

+ (id)shortDescription
{
  v2 = objc_opt_class();

  return NSStringFromClass(v2);
}

@end