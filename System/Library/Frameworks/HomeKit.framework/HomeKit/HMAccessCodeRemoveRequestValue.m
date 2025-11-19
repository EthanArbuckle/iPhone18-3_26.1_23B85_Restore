@interface HMAccessCodeRemoveRequestValue
+ (id)shortDescription;
- (BOOL)isEqual:(id)a3;
- (HMAccessCodeRemoveRequestValue)initWithAccessoryAccessCodeValue:(id)a3;
- (HMAccessCodeRemoveRequestValue)initWithCoder:(id)a3;
- (NSArray)attributeDescriptions;
- (NSString)shortDescription;
- (NSUUID)accessoryUUID;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)a3;
@end

@implementation HMAccessCodeRemoveRequestValue

- (NSArray)attributeDescriptions
{
  v9[1] = *MEMORY[0x1E69E9840];
  v3 = objc_alloc(MEMORY[0x1E69A29C8]);
  v4 = [(HMAccessCodeRemoveRequestValue *)self accessoryAccessCodeValue];
  v5 = [v3 initWithName:@"accessoryAccessCodeValue" value:v4];
  v9[0] = v5;
  v6 = [MEMORY[0x1E695DEC8] arrayWithObjects:v9 count:1];

  v7 = *MEMORY[0x1E69E9840];

  return v6;
}

- (NSString)shortDescription
{
  v2 = objc_opt_class();

  return [v2 shortDescription];
}

- (HMAccessCodeRemoveRequestValue)initWithCoder:(id)a3
{
  v17 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"HMAccessCodeRemoveRequestValueCodingKeyAccessoryAccessCodeValue"];
  if (v5)
  {
    v6 = [(HMAccessCodeRemoveRequestValue *)self initWithAccessoryAccessCodeValue:v5];
    v7 = v6;
  }

  else
  {
    v8 = objc_autoreleasePoolPush();
    v6 = self;
    v9 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      v10 = HMFGetLogIdentifier();
      v13 = 138543618;
      v14 = v10;
      v15 = 2112;
      v16 = 0;
      _os_log_impl(&dword_19BB39000, v9, OS_LOG_TYPE_ERROR, "%{public}@Could not initialize due to nil object after decoding accessoryAccessCodeValue: %@,", &v13, 0x16u);
    }

    objc_autoreleasePoolPop(v8);
    v7 = 0;
  }

  v11 = *MEMORY[0x1E69E9840];
  return v7;
}

- (void)encodeWithCoder:(id)a3
{
  v4 = a3;
  v5 = [(HMAccessCodeRemoveRequestValue *)self accessoryAccessCodeValue];
  [v4 encodeObject:v5 forKey:@"HMAccessCodeRemoveRequestValueCodingKeyAccessoryAccessCodeValue"];
}

- (unint64_t)hash
{
  v2 = [(HMAccessCodeRemoveRequestValue *)self accessoryAccessCodeValue];
  v3 = [v2 hash];

  return v3;
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
    v7 = [(HMAccessCodeRemoveRequestValue *)self accessoryAccessCodeValue];
    v8 = [v6 accessoryAccessCodeValue];
    v9 = [v7 isEqual:v8];
  }

  else
  {
    v9 = 0;
  }

  return v9;
}

- (NSUUID)accessoryUUID
{
  v2 = [(HMAccessCodeRemoveRequestValue *)self accessoryAccessCodeValue];
  v3 = [v2 accessoryUUID];

  return v3;
}

- (HMAccessCodeRemoveRequestValue)initWithAccessoryAccessCodeValue:(id)a3
{
  v4 = a3;
  v9.receiver = self;
  v9.super_class = HMAccessCodeRemoveRequestValue;
  v5 = [(HMAccessCodeRemoveRequestValue *)&v9 init];
  if (v5)
  {
    v6 = [v4 copy];
    accessoryAccessCodeValue = v5->_accessoryAccessCodeValue;
    v5->_accessoryAccessCodeValue = v6;
  }

  return v5;
}

+ (id)shortDescription
{
  v2 = objc_opt_class();

  return NSStringFromClass(v2);
}

@end