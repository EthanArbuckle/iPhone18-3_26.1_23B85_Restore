@interface HMCHIPEcosystem
+ (id)shortDescription;
- (BOOL)isEqual:(id)equal;
- (HMCHIPEcosystem)initWithCoder:(id)coder;
- (HMCHIPEcosystem)initWithRootPublicKey:(id)key vendor:(id)vendor owned:(BOOL)owned;
- (NSArray)attributeDescriptions;
- (NSString)name;
- (NSString)shortDescription;
- (id)mutableCopyWithZone:(_NSZone *)zone;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)coder;
@end

@implementation HMCHIPEcosystem

- (NSArray)attributeDescriptions
{
  array = [MEMORY[0x1E695DF70] array];
  v4 = objc_alloc(MEMORY[0x1E69A29C8]);
  rootPublicKey = [(HMCHIPEcosystem *)self rootPublicKey];
  v6 = [v4 initWithName:@"Root Public Key" value:rootPublicKey];
  [array addObject:v6];

  v7 = objc_alloc(MEMORY[0x1E69A29C8]);
  vendor = [(HMCHIPEcosystem *)self vendor];
  v9 = [v7 initWithName:@"Vendor" value:vendor];
  [array addObject:v9];

  v10 = objc_alloc(MEMORY[0x1E69A29C8]);
  [(HMCHIPEcosystem *)self owned];
  v11 = HMFBooleanToString();
  v12 = [v10 initWithName:@"Owned" value:v11];
  [array addObject:v12];

  v13 = [array copy];

  return v13;
}

- (NSString)shortDescription
{
  v2 = objc_opt_class();

  return [v2 shortDescription];
}

- (HMCHIPEcosystem)initWithCoder:(id)coder
{
  v24 = *MEMORY[0x1E69E9840];
  coderCopy = coder;
  v5 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"MTSDPE.ck.rootPublicKey"];
  v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"MTSDPE.ck.vendor"];
  v7 = [coderCopy decodeBoolForKey:@"MTSDPE.ck.owned"];
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
    selfCopy = [(HMCHIPEcosystem *)self initWithRootPublicKey:v5 vendor:v6 owned:v7];
    v12 = selfCopy;
    goto LABEL_13;
  }

  v10 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"HMCE.ck.rootPublicKey"];

  v9 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"HMCE.ck.vendor"];

  if (v10 && v9)
  {
    v6 = v9;
    v5 = v10;
    goto LABEL_9;
  }

  v13 = objc_autoreleasePoolPush();
  selfCopy = self;
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

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  rootPublicKey = [(HMCHIPEcosystem *)self rootPublicKey];
  [coderCopy encodeObject:rootPublicKey forKey:@"MTSDPE.ck.rootPublicKey"];

  vendor = [(HMCHIPEcosystem *)self vendor];
  [coderCopy encodeObject:vendor forKey:@"MTSDPE.ck.vendor"];

  [coderCopy encodeBool:-[HMCHIPEcosystem owned](self forKey:{"owned"), @"MTSDPE.ck.owned"}];
}

- (id)mutableCopyWithZone:(_NSZone *)zone
{
  v4 = [HMMutableCHIPEcosystem allocWithZone:zone];
  rootPublicKey = [(HMCHIPEcosystem *)self rootPublicKey];
  vendor = [(HMCHIPEcosystem *)self vendor];
  v7 = [(HMCHIPEcosystem *)v4 initWithRootPublicKey:rootPublicKey vendor:vendor];

  return v7;
}

+ (id)shortDescription
{
  v2 = objc_opt_class();

  return NSStringFromClass(v2);
}

- (unint64_t)hash
{
  rootPublicKey = [(HMCHIPEcosystem *)self rootPublicKey];
  v3 = [rootPublicKey hash];

  return v3;
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
    rootPublicKey = [(HMCHIPEcosystem *)self rootPublicKey];
    rootPublicKey2 = [v6 rootPublicKey];
    if ([rootPublicKey isEqualToData:rootPublicKey2])
    {
      vendor = [(HMCHIPEcosystem *)self vendor];
      vendor2 = [v6 vendor];
      if ([vendor isEqual:vendor2])
      {
        owned = [(HMCHIPEcosystem *)self owned];
        v12 = owned ^ [v6 owned] ^ 1;
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
  vendor = [(HMCHIPEcosystem *)self vendor];
  name = [vendor name];

  return name;
}

- (HMCHIPEcosystem)initWithRootPublicKey:(id)key vendor:(id)vendor owned:(BOOL)owned
{
  keyCopy = key;
  vendorCopy = vendor;
  if (!keyCopy)
  {
    _HMFPreconditionFailure();
    goto LABEL_7;
  }

  v10 = vendorCopy;
  if (!vendorCopy)
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
    v12 = [keyCopy copy];
    rootPublicKey = v11->_rootPublicKey;
    v11->_rootPublicKey = v12;

    v14 = [v10 copy];
    vendor = v11->_vendor;
    v11->_vendor = v14;

    v11->_owned = owned;
    v16 = v10;
    v17 = keyCopy;
    objc_opt_self();
    v18 = MEMORY[0x1E696AFB0];
    uUID = [v16 UUID];

    v20 = [v18 hmf_UUIDWithNamespace:uUID data:v17];

    UUID = v11->_UUID;
    v11->_UUID = v20;
  }

  return v11;
}

@end