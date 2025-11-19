@interface HMAccessoryAccessCodeFetchResponseValue
+ (id)shortDescription;
- (BOOL)isEqual:(id)a3;
- (HMAccessoryAccessCodeFetchResponseValue)initWithAccessoryUUID:(id)a3 accessoryAccessCodeValues:(id)a4 error:(id)a5;
- (HMAccessoryAccessCodeFetchResponseValue)initWithCoder:(id)a3;
- (NSArray)attributeDescriptions;
- (NSString)shortDescription;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)a3;
@end

@implementation HMAccessoryAccessCodeFetchResponseValue

- (NSArray)attributeDescriptions
{
  v15[3] = *MEMORY[0x1E69E9840];
  v3 = objc_alloc(MEMORY[0x1E69A29C8]);
  v4 = [(HMAccessoryAccessCodeFetchResponseValue *)self accessoryUUID];
  v5 = [v3 initWithName:@"accessoryUUID" value:v4];
  v6 = objc_alloc(MEMORY[0x1E69A29C8]);
  v7 = [(HMAccessoryAccessCodeFetchResponseValue *)self accessoryAccessCodeValues];
  v8 = [v6 initWithName:@"accessoryAccessCodeValues" value:v7];
  v15[1] = v8;
  v9 = objc_alloc(MEMORY[0x1E69A29C8]);
  v10 = [(HMAccessoryAccessCodeFetchResponseValue *)self error];
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

- (HMAccessoryAccessCodeFetchResponseValue)initWithCoder:(id)a3
{
  v22[2] = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"HMAccessoryAccessCodeFetchResponseValueCodingKeyAccessoryUUID"];
  v6 = MEMORY[0x1E695DFD8];
  v22[0] = objc_opt_class();
  v22[1] = objc_opt_class();
  v7 = [MEMORY[0x1E695DEC8] arrayWithObjects:v22 count:2];
  v8 = [v6 setWithArray:v7];
  v9 = [v4 decodeObjectOfClasses:v8 forKey:@"HMAccessoryAccessCodeFetchResponseValueCodingKeyAccessoryAccessCodeValues"];

  v10 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"HMAccessoryAccessCodeFetchResponseValueCodingKeyError"];
  if (v5)
  {
    v11 = [(HMAccessoryAccessCodeFetchResponseValue *)self initWithAccessoryUUID:v5 accessoryAccessCodeValues:v9 error:v10];
    v12 = v11;
  }

  else
  {
    v13 = objc_autoreleasePoolPush();
    v11 = self;
    v14 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
    {
      v15 = HMFGetLogIdentifier();
      v18 = 138543618;
      v19 = v15;
      v20 = 2112;
      v21 = 0;
      _os_log_impl(&dword_19BB39000, v14, OS_LOG_TYPE_ERROR, "%{public}@Could not initialize due to nil object after decoding accessoryUUID: %@", &v18, 0x16u);
    }

    objc_autoreleasePoolPop(v13);
    v12 = 0;
  }

  v16 = *MEMORY[0x1E69E9840];
  return v12;
}

- (void)encodeWithCoder:(id)a3
{
  v4 = a3;
  v5 = [(HMAccessoryAccessCodeFetchResponseValue *)self accessoryUUID];
  [v4 encodeObject:v5 forKey:@"HMAccessoryAccessCodeFetchResponseValueCodingKeyAccessoryUUID"];

  v6 = [(HMAccessoryAccessCodeFetchResponseValue *)self accessoryAccessCodeValues];
  [v4 encodeObject:v6 forKey:@"HMAccessoryAccessCodeFetchResponseValueCodingKeyAccessoryAccessCodeValues"];

  v7 = [(HMAccessoryAccessCodeFetchResponseValue *)self error];
  [v4 encodeObject:v7 forKey:@"HMAccessoryAccessCodeFetchResponseValueCodingKeyError"];
}

- (unint64_t)hash
{
  v3 = [(HMAccessoryAccessCodeFetchResponseValue *)self accessoryUUID];
  v4 = [v3 hash];
  v5 = [(HMAccessoryAccessCodeFetchResponseValue *)self accessoryAccessCodeValues];
  v6 = [v5 hash] ^ v4;
  v7 = [(HMAccessoryAccessCodeFetchResponseValue *)self error];
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
    v7 = [(HMAccessoryAccessCodeFetchResponseValue *)self accessoryUUID];
    v8 = [v6 accessoryUUID];
    if ([v7 isEqual:v8] && (-[HMAccessoryAccessCodeFetchResponseValue accessoryAccessCodeValues](self, "accessoryAccessCodeValues"), v9 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v6, "accessoryAccessCodeValues"), v10 = objc_claimAutoreleasedReturnValue(), v11 = HMFEqualObjects(), v10, v9, v11))
    {
      v12 = [(HMAccessoryAccessCodeFetchResponseValue *)self error];
      v13 = [v6 error];
      v14 = HMFEqualObjects();
    }

    else
    {
      v14 = 0;
    }
  }

  else
  {
    v14 = 0;
  }

  return v14;
}

- (HMAccessoryAccessCodeFetchResponseValue)initWithAccessoryUUID:(id)a3 accessoryAccessCodeValues:(id)a4 error:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v17.receiver = self;
  v17.super_class = HMAccessoryAccessCodeFetchResponseValue;
  v11 = [(HMAccessoryAccessCodeFetchResponseValue *)&v17 init];
  if (v11)
  {
    v12 = [v8 copy];
    accessoryUUID = v11->_accessoryUUID;
    v11->_accessoryUUID = v12;

    v14 = [v9 copy];
    accessoryAccessCodeValues = v11->_accessoryAccessCodeValues;
    v11->_accessoryAccessCodeValues = v14;

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