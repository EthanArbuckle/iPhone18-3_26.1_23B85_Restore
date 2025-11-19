@interface MTSDevicePairing
+ (id)UUIDFromNodeID:(id)a3 fabric:(id)a4;
+ (id)shortDescription;
- (BOOL)isEqual:(id)a3;
- (MTSDevicePairing)initWithCoder:(id)a3;
- (MTSDevicePairing)initWithNodeID:(id)a3 fabric:(id)a4;
- (NSArray)attributeDescriptions;
- (NSString)shortDescription;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)a3;
@end

@implementation MTSDevicePairing

- (NSArray)attributeDescriptions
{
  v15[3] = *MEMORY[0x277D85DE8];
  v3 = objc_alloc(MEMORY[0x277D0F778]);
  v4 = [(MTSDevicePairing *)self uuid];
  v5 = [v3 initWithName:@"UUID" value:v4];
  v6 = objc_alloc(MEMORY[0x277D0F778]);
  v7 = [(MTSDevicePairing *)self nodeID];
  v8 = [v6 initWithName:@"Node ID" value:v7];
  v15[1] = v8;
  v9 = objc_alloc(MEMORY[0x277D0F778]);
  v10 = [(MTSDevicePairing *)self fabric];
  v11 = [v9 initWithName:@"Fabric" value:v10];
  v15[2] = v11;
  v12 = [MEMORY[0x277CBEA60] arrayWithObjects:v15 count:3];

  v13 = *MEMORY[0x277D85DE8];

  return v12;
}

- (NSString)shortDescription
{
  v2 = objc_opt_class();

  return [v2 shortDescription];
}

- (void)encodeWithCoder:(id)a3
{
  v4 = a3;
  v5 = [(MTSDevicePairing *)self nodeID];
  [v4 encodeObject:v5 forKey:@"MTSDP.nodeID"];

  v6 = [(MTSDevicePairing *)self fabric];
  [v4 encodeObject:v6 forKey:@"MTSDP.fabric"];
}

- (MTSDevicePairing)initWithCoder:(id)a3
{
  v22 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"MTSDP.nodeID"];
  v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"MTSDP.fabric"];
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
      _os_log_impl(&dword_239824000, v10, OS_LOG_TYPE_ERROR, "%{public}@Could not initialize from nodeID: %@, fabric: %@", &v16, 0x20u);
    }

    objc_autoreleasePoolPop(v9);
    v13 = 0;
  }

  else
  {
    v12 = [(MTSDevicePairing *)self initWithNodeID:v5 fabric:v6];
    v13 = v12;
  }

  v14 = *MEMORY[0x277D85DE8];
  return v13;
}

- (unint64_t)hash
{
  v2 = [(MTSDevicePairing *)self uuid];
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
    v7 = [(MTSDevicePairing *)self nodeID];
    v8 = [v6 nodeID];
    if ([v7 isEqual:v8])
    {
      v9 = [(MTSDevicePairing *)self fabric];
      v10 = [v6 fabric];
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

- (MTSDevicePairing)initWithNodeID:(id)a3 fabric:(id)a4
{
  v7 = a3;
  v8 = a4;
  if (!v7)
  {
    _HMFPreconditionFailure();
    goto LABEL_7;
  }

  v9 = v8;
  if (!v8)
  {
LABEL_7:
    v17 = _HMFPreconditionFailure();
    return +[(MTSDevicePairing *)v17];
  }

  v19.receiver = self;
  v19.super_class = MTSDevicePairing;
  v10 = [(MTSDevicePairing *)&v19 init];
  v11 = v10;
  if (v10)
  {
    objc_storeStrong(&v10->_nodeID, a3);
    v12 = [v9 copy];
    fabric = v11->_fabric;
    v11->_fabric = v12;

    v14 = [MTSDevicePairing UUIDFromNodeID:v7 fabric:v9];
    uuid = v11->_uuid;
    v11->_uuid = v14;
  }

  return v11;
}

+ (id)shortDescription
{
  v2 = objc_opt_class();

  return NSStringFromClass(v2);
}

+ (id)UUIDFromNodeID:(id)a3 fabric:(id)a4
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