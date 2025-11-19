@interface MTSDevicePairingFabric
+ (id)UUIDFromIdentifier:(id)a3 ecosystem:(id)a4;
+ (id)shortDescription;
- (BOOL)isEqual:(id)a3;
- (MTSDevicePairingFabric)initWithCoder:(id)a3;
- (MTSDevicePairingFabric)initWithIdentifier:(id)a3 index:(id)a4 displayName:(id)a5 ecosystem:(id)a6;
- (NSArray)attributeDescriptions;
- (NSString)shortDescription;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)a3;
@end

@implementation MTSDevicePairingFabric

- (NSArray)attributeDescriptions
{
  v3 = [MEMORY[0x277CBEB18] array];
  v4 = objc_alloc(MEMORY[0x277D0F778]);
  v5 = [(MTSDevicePairingFabric *)self identifier];
  v6 = [v4 initWithName:@"Identifier" value:v5];
  [v3 addObject:v6];

  v7 = objc_alloc(MEMORY[0x277D0F778]);
  v8 = [(MTSDevicePairingFabric *)self index];
  v9 = [v7 initWithName:@"Index" value:v8];
  [v3 addObject:v9];

  v10 = objc_alloc(MEMORY[0x277D0F778]);
  v11 = [(MTSDevicePairingFabric *)self displayName];
  v12 = [v10 initWithName:@"Display Name" value:v11];
  [v3 addObject:v12];

  v13 = objc_alloc(MEMORY[0x277D0F778]);
  v14 = [(MTSDevicePairingFabric *)self ecosystem];
  v15 = [v13 initWithName:@"Ecosystem" value:v14];
  [v3 addObject:v15];

  v16 = [v3 copy];

  return v16;
}

- (NSString)shortDescription
{
  v2 = objc_opt_class();

  return [v2 shortDescription];
}

- (MTSDevicePairingFabric)initWithCoder:(id)a3
{
  v30 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"MTSDPF.ck.identifier"];
  v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"MTSDPF.ck.index"];
  v7 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"MTSDPF.ck.displayName"];
  v8 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"MTSDPF.ck.ecosystem"];
  v9 = v8;
  if (v5)
  {
    v10 = v6 == 0;
  }

  else
  {
    v10 = 1;
  }

  if (v10 || v7 == 0 || v8 == 0)
  {
    v13 = objc_autoreleasePoolPush();
    v16 = self;
    v14 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
    {
      v15 = HMFGetLogIdentifier();
      v20 = 138544386;
      v21 = v15;
      v22 = 2112;
      v23 = v5;
      v24 = 2112;
      v25 = v6;
      v26 = 2112;
      v27 = v7;
      v28 = 2112;
      v29 = v9;
      _os_log_impl(&dword_239824000, v14, OS_LOG_TYPE_ERROR, "%{public}@Could not initialize from decoded identifier: %@ index: %@ displayName: %@ ecosystem: %@", &v20, 0x34u);
    }

    objc_autoreleasePoolPop(v13);
    v17 = 0;
  }

  else
  {
    v16 = [(MTSDevicePairingFabric *)self initWithIdentifier:v5 index:v6 displayName:v7 ecosystem:v8];
    v17 = v16;
  }

  v18 = *MEMORY[0x277D85DE8];
  return v17;
}

- (void)encodeWithCoder:(id)a3
{
  v4 = a3;
  v5 = [(MTSDevicePairingFabric *)self identifier];
  [v4 encodeObject:v5 forKey:@"MTSDPF.ck.identifier"];

  v6 = [(MTSDevicePairingFabric *)self index];
  [v4 encodeObject:v6 forKey:@"MTSDPF.ck.index"];

  v7 = [(MTSDevicePairingFabric *)self displayName];
  [v4 encodeObject:v7 forKey:@"MTSDPF.ck.displayName"];

  v8 = [(MTSDevicePairingFabric *)self ecosystem];
  [v4 encodeObject:v8 forKey:@"MTSDPF.ck.ecosystem"];
}

- (unint64_t)hash
{
  v2 = [(MTSDevicePairingFabric *)self identifier];
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
    v7 = [(MTSDevicePairingFabric *)self identifier];
    v8 = [v6 identifier];
    if ([v7 isEqualToNumber:v8])
    {
      v9 = [(MTSDevicePairingFabric *)self index];
      v10 = [v6 index];
      if ([v9 isEqualToNumber:v10])
      {
        v11 = [(MTSDevicePairingFabric *)self displayName];
        v12 = [v6 displayName];
        if ([v11 isEqualToString:v12])
        {
          v16 = [(MTSDevicePairingFabric *)self ecosystem];
          v13 = [v6 ecosystem];
          v14 = [v16 isEqual:v13];
        }

        else
        {
          v14 = 0;
        }
      }

      else
      {
        v14 = 0;
      }
    }

    else
    {
      v14 = 0;
    }
  }

  else
  {
    v14 = 0;
  }

  return v14;
}

- (MTSDevicePairingFabric)initWithIdentifier:(id)a3 index:(id)a4 displayName:(id)a5 ecosystem:(id)a6
{
  v10 = a3;
  v11 = a4;
  v12 = a5;
  v13 = a6;
  if (!v10)
  {
    _HMFPreconditionFailure();
    goto LABEL_9;
  }

  if (!v11)
  {
LABEL_9:
    _HMFPreconditionFailure();
    goto LABEL_10;
  }

  if (!v12)
  {
LABEL_10:
    _HMFPreconditionFailure();
    goto LABEL_11;
  }

  v14 = v13;
  if (!v13)
  {
LABEL_11:
    v27 = _HMFPreconditionFailure();
    return +[(MTSDevicePairingFabric *)v27];
  }

  v29.receiver = self;
  v29.super_class = MTSDevicePairingFabric;
  v15 = [(MTSDevicePairingFabric *)&v29 init];
  if (v15)
  {
    v16 = [v10 copy];
    identifier = v15->_identifier;
    v15->_identifier = v16;

    v18 = [v11 copy];
    index = v15->_index;
    v15->_index = v18;

    v20 = [v12 copy];
    displayName = v15->_displayName;
    v15->_displayName = v20;

    v22 = [v14 copy];
    ecosystem = v15->_ecosystem;
    v15->_ecosystem = v22;

    v24 = [MTSDevicePairingFabric UUIDFromIdentifier:v10 ecosystem:v14];
    uuid = v15->_uuid;
    v15->_uuid = v24;
  }

  return v15;
}

+ (id)shortDescription
{
  v2 = objc_opt_class();

  return NSStringFromClass(v2);
}

+ (id)UUIDFromIdentifier:(id)a3 ecosystem:(id)a4
{
  v5 = a4;
  v11 = [a3 integerValue];
  v6 = [MEMORY[0x277CBEA90] dataWithBytes:&v11 length:8];
  v7 = MEMORY[0x277CCAD78];
  v8 = [v5 uuid];

  v9 = [v7 hmf_UUIDWithNamespace:v8 data:v6];

  return v9;
}

@end