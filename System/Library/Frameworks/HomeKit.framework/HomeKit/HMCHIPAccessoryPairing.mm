@interface HMCHIPAccessoryPairing
+ (id)shortDescription;
- (BOOL)isEqual:(id)equal;
- (HMCHIPAccessoryPairing)initWithCoder:(id)coder;
- (HMCHIPAccessoryPairing)initWithIdentifier:(id)identifier home:(id)home;
- (NSArray)attributeDescriptions;
- (NSString)shortDescription;
- (id)mutableCopyWithZone:(_NSZone *)zone;
- (id)operationalIdentity;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)coder;
@end

@implementation HMCHIPAccessoryPairing

- (id)operationalIdentity
{
  home = [(HMCHIPAccessoryPairing *)self home];
  ecosystem = [home ecosystem];
  rootPublicKey = [ecosystem rootPublicKey];

  identifier = [(HMCHIPAccessoryPairing *)self identifier];
  v7 = [[HMCHIPAccessoryOperationalIdentity alloc] initWithRootPublicKey:rootPublicKey nodeID:identifier];

  return v7;
}

- (NSArray)attributeDescriptions
{
  array = [MEMORY[0x1E695DF70] array];
  v4 = objc_alloc(MEMORY[0x1E69A29C8]);
  identifier = [(HMCHIPAccessoryPairing *)self identifier];
  v6 = [v4 initWithName:@"Identifier" value:identifier];
  [array addObject:v6];

  v7 = objc_alloc(MEMORY[0x1E69A29C8]);
  home = [(HMCHIPAccessoryPairing *)self home];
  v9 = [v7 initWithName:@"Home" value:home];
  [array addObject:v9];

  v10 = objc_alloc(MEMORY[0x1E69A29C8]);
  systemCommissionerPairingUUID = [(HMCHIPAccessoryPairing *)self systemCommissionerPairingUUID];
  v12 = [v10 initWithName:@"System Commissioner Pairing UUID" value:systemCommissionerPairingUUID];
  [array addObject:v12];

  v13 = [array copy];

  return v13;
}

- (NSString)shortDescription
{
  v2 = objc_opt_class();

  return [v2 shortDescription];
}

- (HMCHIPAccessoryPairing)initWithCoder:(id)coder
{
  v23 = *MEMORY[0x1E69E9840];
  coderCopy = coder;
  v5 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"HMCAP.ck.identifier"];
  v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"HMCAP.ck.home"];
  v7 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"HMCAP.ck.systemCommissionerPairingUUID"];
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
      v17 = 138543874;
      v18 = v11;
      v19 = 2112;
      v20 = v5;
      v21 = 2112;
      v22 = v6;
      _os_log_impl(&dword_19BB39000, v10, OS_LOG_TYPE_ERROR, "%{public}@Could not initialize from decoded identifier: %@ home: %@", &v17, 0x20u);
    }

    objc_autoreleasePoolPop(v9);
    v14 = 0;
  }

  else
  {
    v12 = [(HMCHIPAccessoryPairing *)self initWithIdentifier:v5 home:v6];
    [(HMCHIPAccessoryPairing *)v12 setSystemCommissionerPairingUUID:v7];
    selfCopy = v12;
    v14 = selfCopy;
  }

  v15 = *MEMORY[0x1E69E9840];
  return v14;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  identifier = [(HMCHIPAccessoryPairing *)self identifier];
  [coderCopy encodeObject:identifier forKey:@"HMCAP.ck.identifier"];

  home = [(HMCHIPAccessoryPairing *)self home];
  [coderCopy encodeObject:home forKey:@"HMCAP.ck.home"];

  systemCommissionerPairingUUID = [(HMCHIPAccessoryPairing *)self systemCommissionerPairingUUID];
  [coderCopy encodeObject:systemCommissionerPairingUUID forKey:@"HMCAP.ck.systemCommissionerPairingUUID"];
}

- (id)mutableCopyWithZone:(_NSZone *)zone
{
  v4 = [HMMutableCHIPAccessoryPairing allocWithZone:zone];
  identifier = [(HMCHIPAccessoryPairing *)self identifier];
  home = [(HMCHIPAccessoryPairing *)self home];
  v7 = [(HMCHIPAccessoryPairing *)v4 initWithIdentifier:identifier home:home];

  systemCommissionerPairingUUID = [(HMCHIPAccessoryPairing *)self systemCommissionerPairingUUID];
  [(HMCHIPAccessoryPairing *)v7 setSystemCommissionerPairingUUID:systemCommissionerPairingUUID];

  return v7;
}

+ (id)shortDescription
{
  v2 = objc_opt_class();

  return NSStringFromClass(v2);
}

- (unint64_t)hash
{
  identifier = [(HMCHIPAccessoryPairing *)self identifier];
  v3 = [identifier hash];

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
    identifier = [(HMCHIPAccessoryPairing *)self identifier];
    identifier2 = [v6 identifier];
    if ([identifier isEqualToNumber:identifier2])
    {
      home = [(HMCHIPAccessoryPairing *)self home];
      home2 = [v6 home];
      v11 = [home isEqual:home2];
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

- (HMCHIPAccessoryPairing)initWithIdentifier:(id)identifier home:(id)home
{
  identifierCopy = identifier;
  homeCopy = home;
  if (!identifierCopy)
  {
    _HMFPreconditionFailure();
    goto LABEL_7;
  }

  v8 = homeCopy;
  if (!homeCopy)
  {
LABEL_7:
    v23 = _HMFPreconditionFailure();
    return [(HMAccessory *)v23 networkRouterStatusFromWiFiSatelliteStatus:v24, v25];
  }

  v26.receiver = self;
  v26.super_class = HMCHIPAccessoryPairing;
  v9 = [(HMCHIPAccessoryPairing *)&v26 init];
  if (v9)
  {
    v10 = [identifierCopy copy];
    identifier = v9->_identifier;
    v9->_identifier = v10;

    v12 = [v8 copy];
    home = v9->_home;
    v9->_home = v12;

    v14 = v8;
    v15 = identifierCopy;
    objc_opt_self();
    integerValue = [v15 integerValue];

    v27 = integerValue;
    v17 = [MEMORY[0x1E695DEF0] dataWithBytes:&v27 length:8];
    v18 = MEMORY[0x1E696AFB0];
    uUID = [v14 UUID];

    v20 = [v18 hmf_UUIDWithNamespace:uUID data:v17];

    UUID = v9->_UUID;
    v9->_UUID = v20;
  }

  return v9;
}

@end