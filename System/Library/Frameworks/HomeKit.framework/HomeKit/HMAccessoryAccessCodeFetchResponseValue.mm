@interface HMAccessoryAccessCodeFetchResponseValue
+ (id)shortDescription;
- (BOOL)isEqual:(id)equal;
- (HMAccessoryAccessCodeFetchResponseValue)initWithAccessoryUUID:(id)d accessoryAccessCodeValues:(id)values error:(id)error;
- (HMAccessoryAccessCodeFetchResponseValue)initWithCoder:(id)coder;
- (NSArray)attributeDescriptions;
- (NSString)shortDescription;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)coder;
@end

@implementation HMAccessoryAccessCodeFetchResponseValue

- (NSArray)attributeDescriptions
{
  v15[3] = *MEMORY[0x1E69E9840];
  v3 = objc_alloc(MEMORY[0x1E69A29C8]);
  accessoryUUID = [(HMAccessoryAccessCodeFetchResponseValue *)self accessoryUUID];
  v5 = [v3 initWithName:@"accessoryUUID" value:accessoryUUID];
  v6 = objc_alloc(MEMORY[0x1E69A29C8]);
  accessoryAccessCodeValues = [(HMAccessoryAccessCodeFetchResponseValue *)self accessoryAccessCodeValues];
  v8 = [v6 initWithName:@"accessoryAccessCodeValues" value:accessoryAccessCodeValues];
  v15[1] = v8;
  v9 = objc_alloc(MEMORY[0x1E69A29C8]);
  error = [(HMAccessoryAccessCodeFetchResponseValue *)self error];
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

- (HMAccessoryAccessCodeFetchResponseValue)initWithCoder:(id)coder
{
  v22[2] = *MEMORY[0x1E69E9840];
  coderCopy = coder;
  v5 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"HMAccessoryAccessCodeFetchResponseValueCodingKeyAccessoryUUID"];
  v6 = MEMORY[0x1E695DFD8];
  v22[0] = objc_opt_class();
  v22[1] = objc_opt_class();
  v7 = [MEMORY[0x1E695DEC8] arrayWithObjects:v22 count:2];
  v8 = [v6 setWithArray:v7];
  v9 = [coderCopy decodeObjectOfClasses:v8 forKey:@"HMAccessoryAccessCodeFetchResponseValueCodingKeyAccessoryAccessCodeValues"];

  v10 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"HMAccessoryAccessCodeFetchResponseValueCodingKeyError"];
  if (v5)
  {
    selfCopy = [(HMAccessoryAccessCodeFetchResponseValue *)self initWithAccessoryUUID:v5 accessoryAccessCodeValues:v9 error:v10];
    v12 = selfCopy;
  }

  else
  {
    v13 = objc_autoreleasePoolPush();
    selfCopy = self;
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

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  accessoryUUID = [(HMAccessoryAccessCodeFetchResponseValue *)self accessoryUUID];
  [coderCopy encodeObject:accessoryUUID forKey:@"HMAccessoryAccessCodeFetchResponseValueCodingKeyAccessoryUUID"];

  accessoryAccessCodeValues = [(HMAccessoryAccessCodeFetchResponseValue *)self accessoryAccessCodeValues];
  [coderCopy encodeObject:accessoryAccessCodeValues forKey:@"HMAccessoryAccessCodeFetchResponseValueCodingKeyAccessoryAccessCodeValues"];

  error = [(HMAccessoryAccessCodeFetchResponseValue *)self error];
  [coderCopy encodeObject:error forKey:@"HMAccessoryAccessCodeFetchResponseValueCodingKeyError"];
}

- (unint64_t)hash
{
  accessoryUUID = [(HMAccessoryAccessCodeFetchResponseValue *)self accessoryUUID];
  v4 = [accessoryUUID hash];
  accessoryAccessCodeValues = [(HMAccessoryAccessCodeFetchResponseValue *)self accessoryAccessCodeValues];
  v6 = [accessoryAccessCodeValues hash] ^ v4;
  error = [(HMAccessoryAccessCodeFetchResponseValue *)self error];
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
    accessoryUUID = [(HMAccessoryAccessCodeFetchResponseValue *)self accessoryUUID];
    accessoryUUID2 = [v6 accessoryUUID];
    if ([accessoryUUID isEqual:accessoryUUID2] && (-[HMAccessoryAccessCodeFetchResponseValue accessoryAccessCodeValues](self, "accessoryAccessCodeValues"), v9 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v6, "accessoryAccessCodeValues"), v10 = objc_claimAutoreleasedReturnValue(), v11 = HMFEqualObjects(), v10, v9, v11))
    {
      error = [(HMAccessoryAccessCodeFetchResponseValue *)self error];
      error2 = [v6 error];
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

- (HMAccessoryAccessCodeFetchResponseValue)initWithAccessoryUUID:(id)d accessoryAccessCodeValues:(id)values error:(id)error
{
  dCopy = d;
  valuesCopy = values;
  errorCopy = error;
  v17.receiver = self;
  v17.super_class = HMAccessoryAccessCodeFetchResponseValue;
  v11 = [(HMAccessoryAccessCodeFetchResponseValue *)&v17 init];
  if (v11)
  {
    v12 = [dCopy copy];
    accessoryUUID = v11->_accessoryUUID;
    v11->_accessoryUUID = v12;

    v14 = [valuesCopy copy];
    accessoryAccessCodeValues = v11->_accessoryAccessCodeValues;
    v11->_accessoryAccessCodeValues = v14;

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