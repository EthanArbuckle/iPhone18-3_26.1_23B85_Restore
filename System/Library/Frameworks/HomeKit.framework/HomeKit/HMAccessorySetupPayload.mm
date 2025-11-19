@interface HMAccessorySetupPayload
- (BOOL)isEqual:(id)a3;
- (HMAccessorySetupPayload)initWithCoder:(id)a3;
- (HMAccessorySetupPayload)initWithInternalSetupPayload:(id)a3 ownershipToken:(id)a4;
- (HMAccessorySetupPayload)initWithURL:(NSURL *)setupPayloadURL;
- (HMAccessorySetupPayload)initWithURL:(NSURL *)setupPayloadURL ownershipToken:(HMAccessoryOwnershipToken *)ownershipToken;
- (void)encodeWithCoder:(id)a3;
@end

@implementation HMAccessorySetupPayload

- (HMAccessorySetupPayload)initWithCoder:(id)a3
{
  v18 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"HMASP.internalSetupPayload"];
  v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"HMASP.ownershipToken"];
  if (v5)
  {
    v7 = [(HMAccessorySetupPayload *)self initWithInternalSetupPayload:v5 ownershipToken:v6];
    v8 = v7;
  }

  else
  {
    v9 = objc_autoreleasePoolPush();
    v7 = self;
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

- (void)encodeWithCoder:(id)a3
{
  v4 = a3;
  v5 = [(HMAccessorySetupPayload *)self internalSetupPayload];
  [v4 encodeObject:v5 forKey:@"HMASP.internalSetupPayload"];

  v6 = [(HMAccessorySetupPayload *)self ownershipToken];
  [v4 encodeObject:v6 forKey:@"HMASP.ownershipToken"];
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
    v7 = [(HMAccessorySetupPayload *)self internalSetupPayload];
    v8 = [v6 internalSetupPayload];
    if ([v7 isEqual:v8])
    {
      v9 = [(HMAccessorySetupPayload *)self ownershipToken];
      v10 = [v6 ownershipToken];
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

- (HMAccessorySetupPayload)initWithInternalSetupPayload:(id)a3 ownershipToken:(id)a4
{
  v7 = a3;
  v8 = a4;
  v14.receiver = self;
  v14.super_class = HMAccessorySetupPayload;
  v9 = [(HMAccessorySetupPayload *)&v14 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_internalSetupPayload, a3);
    v11 = [v8 copy];
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
    v10 = [(HMAccessorySetupPayload *)self initWithInternalSetupPayload:v8 ownershipToken:v7];
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
    v3 = self;
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

@end