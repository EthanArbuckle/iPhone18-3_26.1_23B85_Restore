@interface HMAccessoryOwnershipToken
- (BOOL)isEqual:(id)equal;
- (HMAccessoryOwnershipToken)initWithCoder:(id)coder;
- (HMAccessoryOwnershipToken)initWithData:(NSData *)data;
- (void)encodeWithCoder:(id)coder;
@end

@implementation HMAccessoryOwnershipToken

- (HMAccessoryOwnershipToken)initWithCoder:(id)coder
{
  v17 = *MEMORY[0x1E69E9840];
  coderCopy = coder;
  v5 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"HMAOT.internalData"];
  if (v5)
  {
    selfCopy = [(HMAccessoryOwnershipToken *)self initWithData:v5];
    v7 = selfCopy;
  }

  else
  {
    v8 = objc_autoreleasePoolPush();
    selfCopy = self;
    v9 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      v10 = HMFGetLogIdentifier();
      v13 = 138543618;
      v14 = v10;
      v15 = 2112;
      v16 = 0;
      _os_log_impl(&dword_19BB39000, v9, OS_LOG_TYPE_ERROR, "%{public}@Cannot initialize from internalData: %@", &v13, 0x16u);
    }

    objc_autoreleasePoolPop(v8);
    v7 = 0;
  }

  v11 = *MEMORY[0x1E69E9840];
  return v7;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  internalData = [(HMAccessoryOwnershipToken *)self internalData];
  [coderCopy encodeObject:internalData forKey:@"HMAOT.internalData"];
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (self == equalCopy)
  {
    v9 = 1;
  }

  else
  {
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
      internalData = [(HMAccessoryOwnershipToken *)self internalData];
      internalData2 = [(HMAccessoryOwnershipToken *)v6 internalData];
      v9 = [internalData isEqualToData:internalData2];
    }

    else
    {
      v9 = 0;
    }
  }

  return v9;
}

- (HMAccessoryOwnershipToken)initWithData:(NSData *)data
{
  v4 = data;
  v9.receiver = self;
  v9.super_class = HMAccessoryOwnershipToken;
  v5 = [(HMAccessoryOwnershipToken *)&v9 init];
  if (v5)
  {
    v6 = [(NSData *)v4 copy];
    internalData = v5->_internalData;
    v5->_internalData = v6;
  }

  return v5;
}

@end