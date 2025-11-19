@interface HMAccessCodeModificationResponseValue
+ (id)shortDescription;
- (BOOL)isEqual:(id)a3;
- (HMAccessCodeModificationResponseValue)initWithAccessoryUUID:(id)a3 accessoryAccessCodeValue:(id)a4 accessCodeValue:(id)a5 operationType:(int64_t)a6 error:(id)a7;
- (HMAccessCodeModificationResponseValue)initWithCoder:(id)a3;
- (NSArray)attributeDescriptions;
- (NSString)shortDescription;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)a3;
@end

@implementation HMAccessCodeModificationResponseValue

- (NSArray)attributeDescriptions
{
  v21[5] = *MEMORY[0x1E69E9840];
  v3 = objc_alloc(MEMORY[0x1E69A29C8]);
  v20 = [(HMAccessCodeModificationResponseValue *)self accessoryUUID];
  v4 = [v3 initWithName:@"accessoryUUID" value:v20];
  v21[0] = v4;
  v5 = objc_alloc(MEMORY[0x1E69A29C8]);
  v6 = [(HMAccessCodeModificationResponseValue *)self accessoryAccessCodeValue];
  v7 = [v5 initWithName:@"accessoryAccessCodeValue" value:v6];
  v21[1] = v7;
  v8 = objc_alloc(MEMORY[0x1E69A29C8]);
  v9 = [(HMAccessCodeModificationResponseValue *)self accessCodeValue];
  v10 = [v8 initWithName:@"accessCodeValue" value:v9];
  v21[2] = v10;
  v11 = objc_alloc(MEMORY[0x1E69A29C8]);
  v12 = [MEMORY[0x1E696AD98] numberWithInteger:{-[HMAccessCodeModificationResponseValue operationType](self, "operationType")}];
  v13 = [v11 initWithName:@"operationType" value:v12];
  v21[3] = v13;
  v14 = objc_alloc(MEMORY[0x1E69A29C8]);
  v15 = [(HMAccessCodeModificationResponseValue *)self error];
  v16 = [v14 initWithName:@"error" value:v15];
  v21[4] = v16;
  v17 = [MEMORY[0x1E695DEC8] arrayWithObjects:v21 count:5];

  v18 = *MEMORY[0x1E69E9840];

  return v17;
}

- (NSString)shortDescription
{
  v2 = objc_opt_class();

  return [v2 shortDescription];
}

- (HMAccessCodeModificationResponseValue)initWithCoder:(id)a3
{
  v23 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"HMAccessCodeModificationResponseValueCodingKeyAccessoryUUID"];
  v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"HMAccessCodeModificationResponseValueCodingKeyAccessoryAccessCodeValue"];
  v7 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"HMAccessCodeModificationResponseValueCodingKeyAccessCodeValue"];
  v8 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"HMAccessCodeModificationResponseValueCodingKeyOperationType"];
  v9 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"HMAccessCodeModificationResponseValueCodingKeyError"];
  if (v5 && v8)
  {
    v10 = -[HMAccessCodeModificationResponseValue initWithAccessoryUUID:accessoryAccessCodeValue:accessCodeValue:operationType:error:](self, "initWithAccessoryUUID:accessoryAccessCodeValue:accessCodeValue:operationType:error:", v5, v6, v7, [v8 integerValue], v9);
    v11 = v10;
  }

  else
  {
    v12 = objc_autoreleasePoolPush();
    v10 = self;
    v13 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
    {
      v14 = HMFGetLogIdentifier();
      v17 = 138543874;
      v18 = v14;
      v19 = 2112;
      v20 = v5;
      v21 = 2112;
      v22 = v8;
      _os_log_impl(&dword_19BB39000, v13, OS_LOG_TYPE_ERROR, "%{public}@Could not initialize due to nil object after decoding accessoryUUID: %@, operationType: %@", &v17, 0x20u);
    }

    objc_autoreleasePoolPop(v12);
    v11 = 0;
  }

  v15 = *MEMORY[0x1E69E9840];
  return v11;
}

- (void)encodeWithCoder:(id)a3
{
  v4 = a3;
  v5 = [(HMAccessCodeModificationResponseValue *)self accessoryUUID];
  [v4 encodeObject:v5 forKey:@"HMAccessCodeModificationResponseValueCodingKeyAccessoryUUID"];

  v6 = [(HMAccessCodeModificationResponseValue *)self accessoryAccessCodeValue];
  [v4 encodeObject:v6 forKey:@"HMAccessCodeModificationResponseValueCodingKeyAccessoryAccessCodeValue"];

  v7 = [(HMAccessCodeModificationResponseValue *)self accessCodeValue];
  [v4 encodeObject:v7 forKey:@"HMAccessCodeModificationResponseValueCodingKeyAccessCodeValue"];

  v8 = [MEMORY[0x1E696AD98] numberWithInteger:{-[HMAccessCodeModificationResponseValue operationType](self, "operationType")}];
  [v4 encodeObject:v8 forKey:@"HMAccessCodeModificationResponseValueCodingKeyOperationType"];

  v9 = [(HMAccessCodeModificationResponseValue *)self error];
  [v4 encodeObject:v9 forKey:@"HMAccessCodeModificationResponseValueCodingKeyError"];
}

- (unint64_t)hash
{
  v3 = [(HMAccessCodeModificationResponseValue *)self accessoryUUID];
  v4 = [v3 hash];
  v5 = [(HMAccessCodeModificationResponseValue *)self accessoryAccessCodeValue];
  v6 = [v5 hash] ^ v4;
  v7 = [(HMAccessCodeModificationResponseValue *)self accessCodeValue];
  v8 = [v7 hash];
  v9 = v6 ^ v8 ^ [(HMAccessCodeModificationResponseValue *)self operationType];
  v10 = [(HMAccessCodeModificationResponseValue *)self error];
  v11 = [v10 hash];

  return v9 ^ v11;
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
    v7 = [(HMAccessCodeModificationResponseValue *)self accessoryUUID];
    v8 = [v6 accessoryUUID];
    if (![v7 isEqual:v8])
    {
      goto LABEL_10;
    }

    v9 = [(HMAccessCodeModificationResponseValue *)self accessoryAccessCodeValue];
    v10 = [v6 accessoryAccessCodeValue];
    v11 = HMFEqualObjects();

    if (!v11)
    {
      goto LABEL_10;
    }

    v12 = [(HMAccessCodeModificationResponseValue *)self accessCodeValue];
    v13 = [v6 accessCodeValue];
    v14 = HMFEqualObjects();

    if (!v14)
    {
      goto LABEL_10;
    }

    v15 = [(HMAccessCodeModificationResponseValue *)self operationType];
    if (v15 == [v6 operationType])
    {
      v16 = [(HMAccessCodeModificationResponseValue *)self error];
      v17 = [v6 error];
      v18 = HMFEqualObjects();
    }

    else
    {
LABEL_10:
      v18 = 0;
    }
  }

  else
  {
    v18 = 0;
  }

  return v18;
}

- (HMAccessCodeModificationResponseValue)initWithAccessoryUUID:(id)a3 accessoryAccessCodeValue:(id)a4 accessCodeValue:(id)a5 operationType:(int64_t)a6 error:(id)a7
{
  v12 = a3;
  v13 = a4;
  v14 = a5;
  v15 = a7;
  v24.receiver = self;
  v24.super_class = HMAccessCodeModificationResponseValue;
  v16 = [(HMAccessCodeModificationResponseValue *)&v24 init];
  if (v16)
  {
    v17 = [v12 copy];
    accessoryUUID = v16->_accessoryUUID;
    v16->_accessoryUUID = v17;

    v19 = [v13 copy];
    accessoryAccessCodeValue = v16->_accessoryAccessCodeValue;
    v16->_accessoryAccessCodeValue = v19;

    v21 = [v14 copy];
    accessCodeValue = v16->_accessCodeValue;
    v16->_accessCodeValue = v21;

    v16->_operationType = a6;
    objc_storeStrong(&v16->_error, a7);
  }

  return v16;
}

+ (id)shortDescription
{
  v2 = objc_opt_class();

  return NSStringFromClass(v2);
}

@end