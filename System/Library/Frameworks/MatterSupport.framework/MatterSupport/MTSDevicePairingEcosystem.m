@interface MTSDevicePairingEcosystem
+ (id)UUIDFromRootPublicKey:(id)a3 vendor:(id)a4;
+ (id)shortDescription;
- (BOOL)isEqual:(id)a3;
- (MTSDevicePairingEcosystem)initWithCoder:(id)a3;
- (MTSDevicePairingEcosystem)initWithRootPublicKey:(id)a3 vendor:(id)a4;
- (NSArray)attributeDescriptions;
- (NSString)shortDescription;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)a3;
@end

@implementation MTSDevicePairingEcosystem

- (NSArray)attributeDescriptions
{
  v3 = [MEMORY[0x277CBEB18] array];
  v4 = objc_alloc(MEMORY[0x277D0F778]);
  v5 = [(MTSDevicePairingEcosystem *)self rootPublicKey];
  v6 = [v4 initWithName:@"Root Public Key" value:v5];
  [v3 addObject:v6];

  v7 = objc_alloc(MEMORY[0x277D0F778]);
  v8 = [(MTSDevicePairingEcosystem *)self vendor];
  v9 = [v7 initWithName:@"Vendor" value:v8];
  [v3 addObject:v9];

  v10 = [v3 copy];

  return v10;
}

- (NSString)shortDescription
{
  v2 = objc_opt_class();

  return [v2 shortDescription];
}

- (MTSDevicePairingEcosystem)initWithCoder:(id)a3
{
  v22 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"MTSDPE.ck.rootPublicKey"];
  v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"MTSDPE.ck.vendor"];
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
      _os_log_impl(&dword_239824000, v10, OS_LOG_TYPE_ERROR, "%{public}@Could not initialize from decoded rootPublicKey: %@ vendor: %@", &v16, 0x20u);
    }

    objc_autoreleasePoolPop(v9);
    v13 = 0;
  }

  else
  {
    v12 = [(MTSDevicePairingEcosystem *)self initWithRootPublicKey:v5 vendor:v6];
    v13 = v12;
  }

  v14 = *MEMORY[0x277D85DE8];
  return v13;
}

- (void)encodeWithCoder:(id)a3
{
  v4 = a3;
  v5 = [(MTSDevicePairingEcosystem *)self rootPublicKey];
  [v4 encodeObject:v5 forKey:@"MTSDPE.ck.rootPublicKey"];

  v6 = [(MTSDevicePairingEcosystem *)self vendor];
  [v4 encodeObject:v6 forKey:@"MTSDPE.ck.vendor"];
}

- (unint64_t)hash
{
  v2 = [(MTSDevicePairingEcosystem *)self rootPublicKey];
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
    v7 = [(MTSDevicePairingEcosystem *)self rootPublicKey];
    v8 = [v6 rootPublicKey];
    if ([v7 isEqualToData:v8])
    {
      v9 = [(MTSDevicePairingEcosystem *)self vendor];
      v10 = [v6 vendor];
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

- (MTSDevicePairingEcosystem)initWithRootPublicKey:(id)a3 vendor:(id)a4
{
  v6 = a3;
  v7 = a4;
  if (!v6)
  {
    _HMFPreconditionFailure();
    goto LABEL_7;
  }

  v8 = v7;
  if (!v7)
  {
LABEL_7:
    v17 = _HMFPreconditionFailure();
    return +[(MTSDevicePairingEcosystem *)v17];
  }

  v19.receiver = self;
  v19.super_class = MTSDevicePairingEcosystem;
  v9 = [(MTSDevicePairingEcosystem *)&v19 init];
  if (v9)
  {
    v10 = [v6 copy];
    rootPublicKey = v9->_rootPublicKey;
    v9->_rootPublicKey = v10;

    v12 = [v8 copy];
    vendor = v9->_vendor;
    v9->_vendor = v12;

    v14 = [MTSDevicePairingEcosystem UUIDFromRootPublicKey:v6 vendor:v8];
    uuid = v9->_uuid;
    v9->_uuid = v14;
  }

  return v9;
}

+ (id)shortDescription
{
  v2 = objc_opt_class();

  return NSStringFromClass(v2);
}

+ (id)UUIDFromRootPublicKey:(id)a3 vendor:(id)a4
{
  v5 = MEMORY[0x277CCAD78];
  v6 = a3;
  v7 = [a4 uuid];
  v8 = [v5 hmf_UUIDWithNamespace:v7 data:v6];

  return v8;
}

@end