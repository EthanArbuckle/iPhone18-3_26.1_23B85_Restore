@interface HMAccessCodeUpdateRequestValue
+ (id)shortDescription;
- (BOOL)isEqual:(id)a3;
- (HMAccessCodeUpdateRequestValue)initWithAccessoryAccessCodeValue:(id)a3 updatedAccessCodeValue:(id)a4;
- (HMAccessCodeUpdateRequestValue)initWithCoder:(id)a3;
- (NSArray)attributeDescriptions;
- (NSString)shortDescription;
- (NSUUID)accessoryUUID;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)a3;
@end

@implementation HMAccessCodeUpdateRequestValue

- (NSArray)attributeDescriptions
{
  v12[2] = *MEMORY[0x1E69E9840];
  v3 = objc_alloc(MEMORY[0x1E69A29C8]);
  v4 = [(HMAccessCodeUpdateRequestValue *)self accessoryAccessCodeValue];
  v5 = [v3 initWithName:@"accessoryAccessCodeValue" value:v4];
  v12[0] = v5;
  v6 = objc_alloc(MEMORY[0x1E69A29C8]);
  v7 = [(HMAccessCodeUpdateRequestValue *)self updatedAccessCodeValue];
  v8 = [v6 initWithName:@"updatedAccessCodeValue" value:v7];
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

- (HMAccessCodeUpdateRequestValue)initWithCoder:(id)a3
{
  v22 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"HMAccessCodeUpdateRequestValueCodingKeyAccessoryAccessCodeValue"];
  v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"HMAccessCodeUpdateRequestValueCodingKeyUpdatedAccessCodeValue"];
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
      v21 = v7;
      _os_log_impl(&dword_19BB39000, v10, OS_LOG_TYPE_ERROR, "%{public}@Could not initialize due to nil object after decoding accessoryAccessCodeValue: %@, updatedAccessCodeValue: %@,", &v16, 0x20u);
    }

    objc_autoreleasePoolPop(v9);
    v13 = 0;
  }

  else
  {
    v12 = [(HMAccessCodeUpdateRequestValue *)self initWithAccessoryAccessCodeValue:v5 updatedAccessCodeValue:v6];
    v13 = v12;
  }

  v14 = *MEMORY[0x1E69E9840];
  return v13;
}

- (void)encodeWithCoder:(id)a3
{
  v4 = a3;
  v5 = [(HMAccessCodeUpdateRequestValue *)self accessoryAccessCodeValue];
  [v4 encodeObject:v5 forKey:@"HMAccessCodeUpdateRequestValueCodingKeyAccessoryAccessCodeValue"];

  v6 = [(HMAccessCodeUpdateRequestValue *)self updatedAccessCodeValue];
  [v4 encodeObject:v6 forKey:@"HMAccessCodeUpdateRequestValueCodingKeyUpdatedAccessCodeValue"];
}

- (unint64_t)hash
{
  v3 = [(HMAccessCodeUpdateRequestValue *)self accessoryAccessCodeValue];
  v4 = [v3 hash];
  v5 = [(HMAccessCodeUpdateRequestValue *)self updatedAccessCodeValue];
  v6 = [v5 hash];

  return v6 ^ v4;
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
    v7 = [(HMAccessCodeUpdateRequestValue *)self accessoryAccessCodeValue];
    v8 = [v6 accessoryAccessCodeValue];
    if ([v7 isEqual:v8])
    {
      v9 = [(HMAccessCodeUpdateRequestValue *)self updatedAccessCodeValue];
      v10 = [v6 updatedAccessCodeValue];
      v11 = [v9 isEqual:v10];
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
  v2 = [(HMAccessCodeUpdateRequestValue *)self accessoryAccessCodeValue];
  v3 = [v2 accessoryUUID];

  return v3;
}

- (HMAccessCodeUpdateRequestValue)initWithAccessoryAccessCodeValue:(id)a3 updatedAccessCodeValue:(id)a4
{
  v6 = a3;
  v7 = a4;
  v14.receiver = self;
  v14.super_class = HMAccessCodeUpdateRequestValue;
  v8 = [(HMAccessCodeUpdateRequestValue *)&v14 init];
  if (v8)
  {
    v9 = [v6 copy];
    accessoryAccessCodeValue = v8->_accessoryAccessCodeValue;
    v8->_accessoryAccessCodeValue = v9;

    v11 = [v7 copy];
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