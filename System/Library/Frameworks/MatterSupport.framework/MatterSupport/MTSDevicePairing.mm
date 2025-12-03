@interface MTSDevicePairing
+ (id)UUIDFromNodeID:(id)d fabric:(id)fabric;
+ (id)shortDescription;
- (BOOL)isEqual:(id)equal;
- (MTSDevicePairing)initWithCoder:(id)coder;
- (MTSDevicePairing)initWithNodeID:(id)d fabric:(id)fabric;
- (NSArray)attributeDescriptions;
- (NSString)shortDescription;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)coder;
@end

@implementation MTSDevicePairing

- (NSArray)attributeDescriptions
{
  v15[3] = *MEMORY[0x277D85DE8];
  v3 = objc_alloc(MEMORY[0x277D0F778]);
  uuid = [(MTSDevicePairing *)self uuid];
  v5 = [v3 initWithName:@"UUID" value:uuid];
  v6 = objc_alloc(MEMORY[0x277D0F778]);
  nodeID = [(MTSDevicePairing *)self nodeID];
  v8 = [v6 initWithName:@"Node ID" value:nodeID];
  v15[1] = v8;
  v9 = objc_alloc(MEMORY[0x277D0F778]);
  fabric = [(MTSDevicePairing *)self fabric];
  v11 = [v9 initWithName:@"Fabric" value:fabric];
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

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  nodeID = [(MTSDevicePairing *)self nodeID];
  [coderCopy encodeObject:nodeID forKey:@"MTSDP.nodeID"];

  fabric = [(MTSDevicePairing *)self fabric];
  [coderCopy encodeObject:fabric forKey:@"MTSDP.fabric"];
}

- (MTSDevicePairing)initWithCoder:(id)coder
{
  v22 = *MEMORY[0x277D85DE8];
  coderCopy = coder;
  v5 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"MTSDP.nodeID"];
  v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"MTSDP.fabric"];
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
      _os_log_impl(&dword_239824000, v10, OS_LOG_TYPE_ERROR, "%{public}@Could not initialize from nodeID: %@, fabric: %@", &v16, 0x20u);
    }

    objc_autoreleasePoolPop(v9);
    v13 = 0;
  }

  else
  {
    selfCopy = [(MTSDevicePairing *)self initWithNodeID:v5 fabric:v6];
    v13 = selfCopy;
  }

  v14 = *MEMORY[0x277D85DE8];
  return v13;
}

- (unint64_t)hash
{
  uuid = [(MTSDevicePairing *)self uuid];
  v3 = [uuid hash];

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
    nodeID = [(MTSDevicePairing *)self nodeID];
    nodeID2 = [v6 nodeID];
    if ([nodeID isEqual:nodeID2])
    {
      fabric = [(MTSDevicePairing *)self fabric];
      fabric2 = [v6 fabric];
      v11 = [fabric isEqual:fabric2];
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

- (MTSDevicePairing)initWithNodeID:(id)d fabric:(id)fabric
{
  dCopy = d;
  fabricCopy = fabric;
  if (!dCopy)
  {
    _HMFPreconditionFailure();
    goto LABEL_7;
  }

  v9 = fabricCopy;
  if (!fabricCopy)
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
    objc_storeStrong(&v10->_nodeID, d);
    v12 = [v9 copy];
    fabric = v11->_fabric;
    v11->_fabric = v12;

    v14 = [MTSDevicePairing UUIDFromNodeID:dCopy fabric:v9];
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

+ (id)UUIDFromNodeID:(id)d fabric:(id)fabric
{
  fabricCopy = fabric;
  integerValue = [d integerValue];
  v6 = [MEMORY[0x277CBEA90] dataWithBytes:&integerValue length:8];
  v7 = MEMORY[0x277CCAD78];
  uuid = [fabricCopy uuid];

  v9 = [v7 hmf_UUIDWithNamespace:uuid data:v6];

  return v9;
}

@end