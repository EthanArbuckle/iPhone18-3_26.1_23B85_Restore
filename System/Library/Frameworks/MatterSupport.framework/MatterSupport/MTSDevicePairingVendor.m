@interface MTSDevicePairingVendor
+ (id)UUIDFromIdentifier:(id)a3;
+ (id)shortDescription;
- (BOOL)isEqual:(id)a3;
- (MTSDevicePairingVendor)initWithCoder:(id)a3;
- (MTSDevicePairingVendor)initWithIdentifier:(id)a3 displayName:(id)a4;
- (NSArray)attributeDescriptions;
- (NSString)shortDescription;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)a3;
@end

@implementation MTSDevicePairingVendor

- (NSArray)attributeDescriptions
{
  v3 = [MEMORY[0x277CBEB18] array];
  v4 = objc_alloc(MEMORY[0x277D0F778]);
  v5 = [(MTSDevicePairingVendor *)self identifier];
  v6 = [v4 initWithName:@"Identifier" value:v5];
  [v3 addObject:v6];

  v7 = objc_alloc(MEMORY[0x277D0F778]);
  v8 = [(MTSDevicePairingVendor *)self displayName];
  v9 = [v7 initWithName:@"Display Name" value:v8];
  [v3 addObject:v9];

  v10 = [v3 copy];

  return v10;
}

- (NSString)shortDescription
{
  v2 = objc_opt_class();

  return [v2 shortDescription];
}

- (MTSDevicePairingVendor)initWithCoder:(id)a3
{
  v22 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"MTSDPV.ck.identifier"];
  v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"MTSDPV.ck.displayName"];
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
      _os_log_impl(&dword_239824000, v10, OS_LOG_TYPE_ERROR, "%{public}@Could not initialize from decoded identifier: %@ displayName: %@", &v16, 0x20u);
    }

    objc_autoreleasePoolPop(v9);
    v13 = 0;
  }

  else
  {
    v12 = [(MTSDevicePairingVendor *)self initWithIdentifier:v5 displayName:v6];
    v13 = v12;
  }

  v14 = *MEMORY[0x277D85DE8];
  return v13;
}

- (void)encodeWithCoder:(id)a3
{
  v4 = a3;
  v5 = [(MTSDevicePairingVendor *)self identifier];
  [v4 encodeObject:v5 forKey:@"MTSDPV.ck.identifier"];

  v6 = [(MTSDevicePairingVendor *)self displayName];
  [v4 encodeObject:v6 forKey:@"MTSDPV.ck.displayName"];
}

- (unint64_t)hash
{
  v2 = [(MTSDevicePairingVendor *)self identifier];
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
    v7 = [(MTSDevicePairingVendor *)self identifier];
    v8 = [v6 identifier];
    if ([v7 isEqualToNumber:v8])
    {
      v9 = [(MTSDevicePairingVendor *)self displayName];
      v10 = [v6 displayName];
      v11 = [v9 isEqualToString:v10];
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

- (MTSDevicePairingVendor)initWithIdentifier:(id)a3 displayName:(id)a4
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
    return +[(MTSDevicePairingVendor *)v17];
  }

  v19.receiver = self;
  v19.super_class = MTSDevicePairingVendor;
  v9 = [(MTSDevicePairingVendor *)&v19 init];
  if (v9)
  {
    v10 = [v6 copy];
    identifier = v9->_identifier;
    v9->_identifier = v10;

    v12 = [v8 copy];
    displayName = v9->_displayName;
    v9->_displayName = v12;

    v14 = [MTSDevicePairingVendor UUIDFromIdentifier:v6];
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

+ (id)UUIDFromIdentifier:(id)a3
{
  v3 = MEMORY[0x277CCAD78];
  v4 = a3;
  v5 = [[v3 alloc] initWithUUIDString:@"E2FA5931-1351-4518-AFD4-74218FDAA7AC"];
  v6 = [v4 integerValue];

  v10 = v6;
  v7 = [MEMORY[0x277CBEA90] dataWithBytes:&v10 length:8];
  v8 = [MEMORY[0x277CCAD78] hmf_UUIDWithNamespace:v5 data:v7];

  return v8;
}

@end