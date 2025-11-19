@interface HMCHIPAccessoryPairing
+ (id)shortDescription;
- (BOOL)isEqual:(id)a3;
- (HMCHIPAccessoryPairing)initWithCoder:(id)a3;
- (HMCHIPAccessoryPairing)initWithIdentifier:(id)a3 home:(id)a4;
- (NSArray)attributeDescriptions;
- (NSString)shortDescription;
- (id)mutableCopyWithZone:(_NSZone *)a3;
- (id)operationalIdentity;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)a3;
@end

@implementation HMCHIPAccessoryPairing

- (id)operationalIdentity
{
  v3 = [(HMCHIPAccessoryPairing *)self home];
  v4 = [v3 ecosystem];
  v5 = [v4 rootPublicKey];

  v6 = [(HMCHIPAccessoryPairing *)self identifier];
  v7 = [[HMCHIPAccessoryOperationalIdentity alloc] initWithRootPublicKey:v5 nodeID:v6];

  return v7;
}

- (NSArray)attributeDescriptions
{
  v3 = [MEMORY[0x1E695DF70] array];
  v4 = objc_alloc(MEMORY[0x1E69A29C8]);
  v5 = [(HMCHIPAccessoryPairing *)self identifier];
  v6 = [v4 initWithName:@"Identifier" value:v5];
  [v3 addObject:v6];

  v7 = objc_alloc(MEMORY[0x1E69A29C8]);
  v8 = [(HMCHIPAccessoryPairing *)self home];
  v9 = [v7 initWithName:@"Home" value:v8];
  [v3 addObject:v9];

  v10 = objc_alloc(MEMORY[0x1E69A29C8]);
  v11 = [(HMCHIPAccessoryPairing *)self systemCommissionerPairingUUID];
  v12 = [v10 initWithName:@"System Commissioner Pairing UUID" value:v11];
  [v3 addObject:v12];

  v13 = [v3 copy];

  return v13;
}

- (NSString)shortDescription
{
  v2 = objc_opt_class();

  return [v2 shortDescription];
}

- (HMCHIPAccessoryPairing)initWithCoder:(id)a3
{
  v23 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"HMCAP.ck.identifier"];
  v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"HMCAP.ck.home"];
  v7 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"HMCAP.ck.systemCommissionerPairingUUID"];
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
    v13 = self;
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
    v13 = v12;
    v14 = v13;
  }

  v15 = *MEMORY[0x1E69E9840];
  return v14;
}

- (void)encodeWithCoder:(id)a3
{
  v4 = a3;
  v5 = [(HMCHIPAccessoryPairing *)self identifier];
  [v4 encodeObject:v5 forKey:@"HMCAP.ck.identifier"];

  v6 = [(HMCHIPAccessoryPairing *)self home];
  [v4 encodeObject:v6 forKey:@"HMCAP.ck.home"];

  v7 = [(HMCHIPAccessoryPairing *)self systemCommissionerPairingUUID];
  [v4 encodeObject:v7 forKey:@"HMCAP.ck.systemCommissionerPairingUUID"];
}

- (id)mutableCopyWithZone:(_NSZone *)a3
{
  v4 = [HMMutableCHIPAccessoryPairing allocWithZone:a3];
  v5 = [(HMCHIPAccessoryPairing *)self identifier];
  v6 = [(HMCHIPAccessoryPairing *)self home];
  v7 = [(HMCHIPAccessoryPairing *)v4 initWithIdentifier:v5 home:v6];

  v8 = [(HMCHIPAccessoryPairing *)self systemCommissionerPairingUUID];
  [(HMCHIPAccessoryPairing *)v7 setSystemCommissionerPairingUUID:v8];

  return v7;
}

+ (id)shortDescription
{
  v2 = objc_opt_class();

  return NSStringFromClass(v2);
}

- (unint64_t)hash
{
  v2 = [(HMCHIPAccessoryPairing *)self identifier];
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
    v7 = [(HMCHIPAccessoryPairing *)self identifier];
    v8 = [v6 identifier];
    if ([v7 isEqualToNumber:v8])
    {
      v9 = [(HMCHIPAccessoryPairing *)self home];
      v10 = [v6 home];
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

- (HMCHIPAccessoryPairing)initWithIdentifier:(id)a3 home:(id)a4
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
    v23 = _HMFPreconditionFailure();
    return [(HMAccessory *)v23 networkRouterStatusFromWiFiSatelliteStatus:v24, v25];
  }

  v26.receiver = self;
  v26.super_class = HMCHIPAccessoryPairing;
  v9 = [(HMCHIPAccessoryPairing *)&v26 init];
  if (v9)
  {
    v10 = [v6 copy];
    identifier = v9->_identifier;
    v9->_identifier = v10;

    v12 = [v8 copy];
    home = v9->_home;
    v9->_home = v12;

    v14 = v8;
    v15 = v6;
    objc_opt_self();
    v16 = [v15 integerValue];

    v27 = v16;
    v17 = [MEMORY[0x1E695DEF0] dataWithBytes:&v27 length:8];
    v18 = MEMORY[0x1E696AFB0];
    v19 = [v14 UUID];

    v20 = [v18 hmf_UUIDWithNamespace:v19 data:v17];

    UUID = v9->_UUID;
    v9->_UUID = v20;
  }

  return v9;
}

@end