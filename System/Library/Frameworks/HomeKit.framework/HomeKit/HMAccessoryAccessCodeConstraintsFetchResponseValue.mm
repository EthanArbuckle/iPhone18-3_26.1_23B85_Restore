@interface HMAccessoryAccessCodeConstraintsFetchResponseValue
+ (id)shortDescription;
- (BOOL)isEqual:(id)a3;
- (HMAccessoryAccessCodeConstraintsFetchResponseValue)initWithAccessory:(id)a3 constraints:(id)a4 error:(id)a5;
- (HMAccessoryAccessCodeConstraintsFetchResponseValue)initWithCoder:(id)a3;
- (NSArray)attributeDescriptions;
- (NSString)shortDescription;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)a3;
@end

@implementation HMAccessoryAccessCodeConstraintsFetchResponseValue

- (NSArray)attributeDescriptions
{
  v15[3] = *MEMORY[0x1E69E9840];
  v3 = objc_alloc(MEMORY[0x1E69A29C8]);
  v4 = [(HMAccessoryAccessCodeConstraintsFetchResponseValue *)self accessoryUUID];
  v5 = [v3 initWithName:@"accessoryUUID" value:v4];
  v6 = objc_alloc(MEMORY[0x1E69A29C8]);
  v7 = [(HMAccessoryAccessCodeConstraintsFetchResponseValue *)self constraints];
  v8 = [v6 initWithName:@"constraints" value:v7];
  v15[1] = v8;
  v9 = objc_alloc(MEMORY[0x1E69A29C8]);
  v10 = [(HMAccessoryAccessCodeConstraintsFetchResponseValue *)self error];
  v11 = [v9 initWithName:@"error" value:v10];
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

- (HMAccessoryAccessCodeConstraintsFetchResponseValue)initWithCoder:(id)a3
{
  v22 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"HMAccessoryAccessCodeConstraintsFetchResponseValueCodingKeyAccessoryUUID"];
  v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"HMAccessoryAccessCodeConstraintsFetchResponseValueCodingKeyConstraints"];
  v7 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"HMAccessoryAccessCodeConstraintsFetchResponseValueCodingKeyError"];
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
    v12 = self;
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
    v12 = [(HMAccessoryAccessCodeConstraintsFetchResponseValue *)self initWithAccessory:v5 constraints:v6 error:v7];
    v13 = v12;
  }

  v14 = *MEMORY[0x1E69E9840];
  return v13;
}

- (void)encodeWithCoder:(id)a3
{
  v4 = a3;
  v5 = [(HMAccessoryAccessCodeConstraintsFetchResponseValue *)self accessoryUUID];
  [v4 encodeObject:v5 forKey:@"HMAccessoryAccessCodeConstraintsFetchResponseValueCodingKeyAccessoryUUID"];

  v6 = [(HMAccessoryAccessCodeConstraintsFetchResponseValue *)self constraints];
  [v4 encodeObject:v6 forKey:@"HMAccessoryAccessCodeConstraintsFetchResponseValueCodingKeyConstraints"];

  v7 = [(HMAccessoryAccessCodeConstraintsFetchResponseValue *)self error];
  [v4 encodeObject:v7 forKey:@"HMAccessoryAccessCodeConstraintsFetchResponseValueCodingKeyError"];
}

- (unint64_t)hash
{
  v3 = [(HMAccessoryAccessCodeConstraintsFetchResponseValue *)self accessoryUUID];
  v4 = [v3 hash];
  v5 = [(HMAccessoryAccessCodeConstraintsFetchResponseValue *)self constraints];
  v6 = [v5 hash] ^ v4;
  v7 = [(HMAccessoryAccessCodeConstraintsFetchResponseValue *)self error];
  v8 = [v7 hash];

  return v6 ^ v8;
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
    v7 = [(HMAccessoryAccessCodeConstraintsFetchResponseValue *)self accessoryUUID];
    v8 = [v6 accessoryUUID];
    if ([v7 isEqual:v8])
    {
      v9 = [(HMAccessoryAccessCodeConstraintsFetchResponseValue *)self constraints];
      v10 = [v6 constraints];
      if ([v9 isEqual:v10])
      {
        v11 = [(HMAccessoryAccessCodeConstraintsFetchResponseValue *)self error];
        v12 = [v6 error];
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

- (HMAccessoryAccessCodeConstraintsFetchResponseValue)initWithAccessory:(id)a3 constraints:(id)a4 error:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v17.receiver = self;
  v17.super_class = HMAccessoryAccessCodeConstraintsFetchResponseValue;
  v11 = [(HMAccessoryAccessCodeConstraintsFetchResponseValue *)&v17 init];
  if (v11)
  {
    v12 = [v8 copy];
    accessoryUUID = v11->_accessoryUUID;
    v11->_accessoryUUID = v12;

    v14 = [v9 copy];
    constraints = v11->_constraints;
    v11->_constraints = v14;

    objc_storeStrong(&v11->_error, a5);
  }

  return v11;
}

+ (id)shortDescription
{
  v2 = objc_opt_class();

  return NSStringFromClass(v2);
}

@end