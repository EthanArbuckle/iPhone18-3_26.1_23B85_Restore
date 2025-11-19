@interface HMCHIPEcosystem
+ (id)shortDescription;
- (BOOL)isEqual:(id)a3;
- (HMCHIPEcosystem)initWithCoder:(id)a3;
- (HMCHIPEcosystem)initWithRootPublicKey:(id)a3 vendor:(id)a4 owned:(BOOL)a5;
- (NSArray)attributeDescriptions;
- (NSString)name;
- (NSString)shortDescription;
- (id)mutableCopyWithZone:(_NSZone *)a3;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)a3;
@end

@implementation HMCHIPEcosystem

- (NSArray)attributeDescriptions
{
  v3 = [MEMORY[0x1E695DF70] array];
  v4 = objc_alloc(MEMORY[0x1E69A29C8]);
  v5 = [(HMCHIPEcosystem *)self rootPublicKey];
  v6 = [v4 initWithName:@"Root Public Key" value:v5];
  [v3 addObject:v6];

  v7 = objc_alloc(MEMORY[0x1E69A29C8]);
  v8 = [(HMCHIPEcosystem *)self vendor];
  v9 = [v7 initWithName:@"Vendor" value:v8];
  [v3 addObject:v9];

  v10 = objc_alloc(MEMORY[0x1E69A29C8]);
  [(HMCHIPEcosystem *)self owned];
  v11 = HMFBooleanToString();
  v12 = [v10 initWithName:@"Owned" value:v11];
  [v3 addObject:v12];

  v13 = [v3 copy];

  return v13;
}

- (NSString)shortDescription
{
  v2 = objc_opt_class();

  return [v2 shortDescription];
}

- (HMCHIPEcosystem)initWithCoder:(id)a3
{
  v24 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"MTSDPE.ck.rootPublicKey"];
  v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"MTSDPE.ck.vendor"];
  v7 = [v4 decodeBoolForKey:@"MTSDPE.ck.owned"];
  if (v5)
  {
    v8 = v6 == 0;
  }

  else
  {
    v8 = 1;
  }

  if (!v8)
  {
    v9 = v6;
    v10 = v5;
LABEL_9:
    v11 = [(HMCHIPEcosystem *)self initWithRootPublicKey:v5 vendor:v6 owned:v7];
    v12 = v11;
    goto LABEL_13;
  }

  v10 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"HMCE.ck.rootPublicKey"];

  v9 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"HMCE.ck.vendor"];

  if (v10 && v9)
  {
    v6 = v9;
    v5 = v10;
    goto LABEL_9;
  }

  v13 = objc_autoreleasePoolPush();
  v11 = self;
  v14 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
  {
    v15 = HMFGetLogIdentifier();
    v18 = 138543874;
    v19 = v15;
    v20 = 2112;
    v21 = v10;
    v22 = 2112;
    v23 = v9;
    _os_log_impl(&dword_19BB39000, v14, OS_LOG_TYPE_ERROR, "%{public}@Could not initialize from decoded rootPublicKey: %@ vendor: %@", &v18, 0x20u);
  }

  objc_autoreleasePoolPop(v13);
  v12 = 0;
LABEL_13:

  v16 = *MEMORY[0x1E69E9840];
  return v12;
}

- (void)encodeWithCoder:(id)a3
{
  v6 = a3;
  v4 = [(HMCHIPEcosystem *)self rootPublicKey];
  [v6 encodeObject:v4 forKey:@"MTSDPE.ck.rootPublicKey"];

  v5 = [(HMCHIPEcosystem *)self vendor];
  [v6 encodeObject:v5 forKey:@"MTSDPE.ck.vendor"];

  [v6 encodeBool:-[HMCHIPEcosystem owned](self forKey:{"owned"), @"MTSDPE.ck.owned"}];
}

- (id)mutableCopyWithZone:(_NSZone *)a3
{
  v4 = [HMMutableCHIPEcosystem allocWithZone:a3];
  v5 = [(HMCHIPEcosystem *)self rootPublicKey];
  v6 = [(HMCHIPEcosystem *)self vendor];
  v7 = [(HMCHIPEcosystem *)v4 initWithRootPublicKey:v5 vendor:v6];

  return v7;
}

+ (id)shortDescription
{
  v2 = objc_opt_class();

  return NSStringFromClass(v2);
}

- (unint64_t)hash
{
  v2 = [(HMCHIPEcosystem *)self rootPublicKey];
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
    v7 = [(HMCHIPEcosystem *)self rootPublicKey];
    v8 = [v6 rootPublicKey];
    if ([v7 isEqualToData:v8])
    {
      v9 = [(HMCHIPEcosystem *)self vendor];
      v10 = [v6 vendor];
      if ([v9 isEqual:v10])
      {
        v11 = [(HMCHIPEcosystem *)self owned];
        v12 = v11 ^ [v6 owned] ^ 1;
      }

      else
      {
        LOBYTE(v12) = 0;
      }
    }

    else
    {
      LOBYTE(v12) = 0;
    }
  }

  else
  {
    LOBYTE(v12) = 0;
  }

  return v12;
}

- (NSString)name
{
  v2 = [(HMCHIPEcosystem *)self vendor];
  v3 = [v2 name];

  return v3;
}

- (HMCHIPEcosystem)initWithRootPublicKey:(id)a3 vendor:(id)a4 owned:(BOOL)a5
{
  v8 = a3;
  v9 = a4;
  if (!v8)
  {
    _HMFPreconditionFailure();
    goto LABEL_7;
  }

  v10 = v9;
  if (!v9)
  {
LABEL_7:
    v23 = _HMFPreconditionFailure();
    return [(HMCHIPEcosystem *)v23 initWithRootPublicKey:v24 vendor:v25, v26];
  }

  v27.receiver = self;
  v27.super_class = HMCHIPEcosystem;
  v11 = [(HMCHIPEcosystem *)&v27 init];
  if (v11)
  {
    v12 = [v8 copy];
    rootPublicKey = v11->_rootPublicKey;
    v11->_rootPublicKey = v12;

    v14 = [v10 copy];
    vendor = v11->_vendor;
    v11->_vendor = v14;

    v11->_owned = a5;
    v16 = v10;
    v17 = v8;
    objc_opt_self();
    v18 = MEMORY[0x1E696AFB0];
    v19 = [v16 UUID];

    v20 = [v18 hmf_UUIDWithNamespace:v19 data:v17];

    UUID = v11->_UUID;
    v11->_UUID = v20;
  }

  return v11;
}

@end