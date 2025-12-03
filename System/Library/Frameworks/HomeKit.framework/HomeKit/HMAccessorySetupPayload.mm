@interface HMAccessorySetupPayload
- (BOOL)isEqual:(id)equal;
- (HMAccessorySetupPayload)initWithCoder:(id)coder;
- (HMAccessorySetupPayload)initWithInternalSetupPayload:(id)payload ownershipToken:(id)token;
- (HMAccessorySetupPayload)initWithURL:(NSURL *)setupPayloadURL;
- (HMAccessorySetupPayload)initWithURL:(NSURL *)setupPayloadURL ownershipToken:(HMAccessoryOwnershipToken *)ownershipToken;
- (void)encodeWithCoder:(id)coder;
@end

@implementation HMAccessorySetupPayload

- (HMAccessorySetupPayload)initWithCoder:(id)coder
{
  v18 = *MEMORY[0x1E69E9840];
  coderCopy = coder;
  v5 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"HMASP.internalSetupPayload"];
  v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"HMASP.ownershipToken"];
  if (v5)
  {
    selfCopy = [(HMAccessorySetupPayload *)self initWithInternalSetupPayload:v5 ownershipToken:v6];
    v8 = selfCopy;
  }

  else
  {
    v9 = objc_autoreleasePoolPush();
    selfCopy = self;
    v10 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      v11 = HMFGetLogIdentifier();
      v14 = 138543618;
      v15 = v11;
      v16 = 2112;
      v17 = 0;
      _os_log_impl(&dword_19BB39000, v10, OS_LOG_TYPE_ERROR, "%{public}@Cannot initialize from internalSetupPayload: %@", &v14, 0x16u);
    }

    objc_autoreleasePoolPop(v9);
    v8 = 0;
  }

  v12 = *MEMORY[0x1E69E9840];
  return v8;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  internalSetupPayload = [(HMAccessorySetupPayload *)self internalSetupPayload];
  [coderCopy encodeObject:internalSetupPayload forKey:@"HMASP.internalSetupPayload"];

  ownershipToken = [(HMAccessorySetupPayload *)self ownershipToken];
  [coderCopy encodeObject:ownershipToken forKey:@"HMASP.ownershipToken"];
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
    internalSetupPayload = [(HMAccessorySetupPayload *)self internalSetupPayload];
    internalSetupPayload2 = [v6 internalSetupPayload];
    if ([internalSetupPayload isEqual:internalSetupPayload2])
    {
      ownershipToken = [(HMAccessorySetupPayload *)self ownershipToken];
      ownershipToken2 = [v6 ownershipToken];
      v11 = HMFEqualObjects();
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

- (HMAccessorySetupPayload)initWithInternalSetupPayload:(id)payload ownershipToken:(id)token
{
  payloadCopy = payload;
  tokenCopy = token;
  v14.receiver = self;
  v14.super_class = HMAccessorySetupPayload;
  v9 = [(HMAccessorySetupPayload *)&v14 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_internalSetupPayload, payload);
    v11 = [tokenCopy copy];
    ownershipToken = v10->_ownershipToken;
    v10->_ownershipToken = v11;
  }

  return v10;
}

- (HMAccessorySetupPayload)initWithURL:(NSURL *)setupPayloadURL ownershipToken:(HMAccessoryOwnershipToken *)ownershipToken
{
  v24 = *MEMORY[0x1E69E9840];
  v6 = setupPayloadURL;
  v7 = ownershipToken;
  v17 = 0;
  v8 = [[HMSetupAccessoryPayload alloc] initWithSetupPayloadURL:v6 error:&v17];
  v9 = v17;
  if (v8)
  {
    selfCopy = [(HMAccessorySetupPayload *)self initWithInternalSetupPayload:v8 ownershipToken:v7];
    v11 = selfCopy;
  }

  else
  {
    v12 = objc_autoreleasePoolPush();
    selfCopy = self;
    v13 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
    {
      v14 = HMFGetLogIdentifier();
      *buf = 138543874;
      v19 = v14;
      v20 = 2112;
      v21 = v6;
      v22 = 2112;
      v23 = v9;
      _os_log_impl(&dword_19BB39000, v13, OS_LOG_TYPE_ERROR, "%{public}@Failed to create HMSetupAccessoryPayload from setup payload URL %@: %@", buf, 0x20u);
    }

    objc_autoreleasePoolPop(v12);
    v11 = 0;
  }

  v15 = *MEMORY[0x1E69E9840];
  return v11;
}

- (HMAccessorySetupPayload)initWithURL:(NSURL *)setupPayloadURL
{
  if (setupPayloadURL)
  {
    self = [(HMAccessorySetupPayload *)self initWithURL:setupPayloadURL ownershipToken:0];
    selfCopy = self;
  }

  else
  {
    selfCopy = 0;
  }

  return selfCopy;
}

@end