@interface MTSDevicePairingEcosystem
+ (id)UUIDFromRootPublicKey:(id)key vendor:(id)vendor;
+ (id)shortDescription;
- (BOOL)isEqual:(id)equal;
- (MTSDevicePairingEcosystem)initWithCoder:(id)coder;
- (MTSDevicePairingEcosystem)initWithRootPublicKey:(id)key vendor:(id)vendor;
- (NSArray)attributeDescriptions;
- (NSString)shortDescription;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)coder;
@end

@implementation MTSDevicePairingEcosystem

- (NSArray)attributeDescriptions
{
  array = [MEMORY[0x277CBEB18] array];
  v4 = objc_alloc(MEMORY[0x277D0F778]);
  rootPublicKey = [(MTSDevicePairingEcosystem *)self rootPublicKey];
  v6 = [v4 initWithName:@"Root Public Key" value:rootPublicKey];
  [array addObject:v6];

  v7 = objc_alloc(MEMORY[0x277D0F778]);
  vendor = [(MTSDevicePairingEcosystem *)self vendor];
  v9 = [v7 initWithName:@"Vendor" value:vendor];
  [array addObject:v9];

  v10 = [array copy];

  return v10;
}

- (NSString)shortDescription
{
  v2 = objc_opt_class();

  return [v2 shortDescription];
}

- (MTSDevicePairingEcosystem)initWithCoder:(id)coder
{
  v22 = *MEMORY[0x277D85DE8];
  coderCopy = coder;
  v5 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"MTSDPE.ck.rootPublicKey"];
  v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"MTSDPE.ck.vendor"];
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
    selfCopy = self;
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
    selfCopy = [(MTSDevicePairingEcosystem *)self initWithRootPublicKey:v5 vendor:v6];
    v13 = selfCopy;
  }

  v14 = *MEMORY[0x277D85DE8];
  return v13;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  rootPublicKey = [(MTSDevicePairingEcosystem *)self rootPublicKey];
  [coderCopy encodeObject:rootPublicKey forKey:@"MTSDPE.ck.rootPublicKey"];

  vendor = [(MTSDevicePairingEcosystem *)self vendor];
  [coderCopy encodeObject:vendor forKey:@"MTSDPE.ck.vendor"];
}

- (unint64_t)hash
{
  rootPublicKey = [(MTSDevicePairingEcosystem *)self rootPublicKey];
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
    rootPublicKey = [(MTSDevicePairingEcosystem *)self rootPublicKey];
    rootPublicKey2 = [v6 rootPublicKey];
    if ([rootPublicKey isEqualToData:rootPublicKey2])
    {
      vendor = [(MTSDevicePairingEcosystem *)self vendor];
      vendor2 = [v6 vendor];
      v11 = [vendor isEqual:vendor2];
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

- (MTSDevicePairingEcosystem)initWithRootPublicKey:(id)key vendor:(id)vendor
{
  keyCopy = key;
  vendorCopy = vendor;
  if (!keyCopy)
  {
    _HMFPreconditionFailure();
    goto LABEL_7;
  }

  v8 = vendorCopy;
  if (!vendorCopy)
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
    v10 = [keyCopy copy];
    rootPublicKey = v9->_rootPublicKey;
    v9->_rootPublicKey = v10;

    v12 = [v8 copy];
    vendor = v9->_vendor;
    v9->_vendor = v12;

    v14 = [MTSDevicePairingEcosystem UUIDFromRootPublicKey:keyCopy vendor:v8];
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

+ (id)UUIDFromRootPublicKey:(id)key vendor:(id)vendor
{
  v5 = MEMORY[0x277CCAD78];
  keyCopy = key;
  uuid = [vendor uuid];
  v8 = [v5 hmf_UUIDWithNamespace:uuid data:keyCopy];

  return v8;
}

@end