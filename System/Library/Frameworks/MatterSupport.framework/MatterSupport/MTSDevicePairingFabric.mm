@interface MTSDevicePairingFabric
+ (id)UUIDFromIdentifier:(id)identifier ecosystem:(id)ecosystem;
+ (id)shortDescription;
- (BOOL)isEqual:(id)equal;
- (MTSDevicePairingFabric)initWithCoder:(id)coder;
- (MTSDevicePairingFabric)initWithIdentifier:(id)identifier index:(id)index displayName:(id)name ecosystem:(id)ecosystem;
- (NSArray)attributeDescriptions;
- (NSString)shortDescription;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)coder;
@end

@implementation MTSDevicePairingFabric

- (NSArray)attributeDescriptions
{
  array = [MEMORY[0x277CBEB18] array];
  v4 = objc_alloc(MEMORY[0x277D0F778]);
  identifier = [(MTSDevicePairingFabric *)self identifier];
  v6 = [v4 initWithName:@"Identifier" value:identifier];
  [array addObject:v6];

  v7 = objc_alloc(MEMORY[0x277D0F778]);
  index = [(MTSDevicePairingFabric *)self index];
  v9 = [v7 initWithName:@"Index" value:index];
  [array addObject:v9];

  v10 = objc_alloc(MEMORY[0x277D0F778]);
  displayName = [(MTSDevicePairingFabric *)self displayName];
  v12 = [v10 initWithName:@"Display Name" value:displayName];
  [array addObject:v12];

  v13 = objc_alloc(MEMORY[0x277D0F778]);
  ecosystem = [(MTSDevicePairingFabric *)self ecosystem];
  v15 = [v13 initWithName:@"Ecosystem" value:ecosystem];
  [array addObject:v15];

  v16 = [array copy];

  return v16;
}

- (NSString)shortDescription
{
  v2 = objc_opt_class();

  return [v2 shortDescription];
}

- (MTSDevicePairingFabric)initWithCoder:(id)coder
{
  v30 = *MEMORY[0x277D85DE8];
  coderCopy = coder;
  v5 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"MTSDPF.ck.identifier"];
  v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"MTSDPF.ck.index"];
  v7 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"MTSDPF.ck.displayName"];
  v8 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"MTSDPF.ck.ecosystem"];
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
    selfCopy = self;
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
    selfCopy = [(MTSDevicePairingFabric *)self initWithIdentifier:v5 index:v6 displayName:v7 ecosystem:v8];
    v17 = selfCopy;
  }

  v18 = *MEMORY[0x277D85DE8];
  return v17;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  identifier = [(MTSDevicePairingFabric *)self identifier];
  [coderCopy encodeObject:identifier forKey:@"MTSDPF.ck.identifier"];

  index = [(MTSDevicePairingFabric *)self index];
  [coderCopy encodeObject:index forKey:@"MTSDPF.ck.index"];

  displayName = [(MTSDevicePairingFabric *)self displayName];
  [coderCopy encodeObject:displayName forKey:@"MTSDPF.ck.displayName"];

  ecosystem = [(MTSDevicePairingFabric *)self ecosystem];
  [coderCopy encodeObject:ecosystem forKey:@"MTSDPF.ck.ecosystem"];
}

- (unint64_t)hash
{
  identifier = [(MTSDevicePairingFabric *)self identifier];
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
    identifier = [(MTSDevicePairingFabric *)self identifier];
    identifier2 = [v6 identifier];
    if ([identifier isEqualToNumber:identifier2])
    {
      index = [(MTSDevicePairingFabric *)self index];
      index2 = [v6 index];
      if ([index isEqualToNumber:index2])
      {
        displayName = [(MTSDevicePairingFabric *)self displayName];
        displayName2 = [v6 displayName];
        if ([displayName isEqualToString:displayName2])
        {
          ecosystem = [(MTSDevicePairingFabric *)self ecosystem];
          ecosystem2 = [v6 ecosystem];
          v14 = [ecosystem isEqual:ecosystem2];
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

- (MTSDevicePairingFabric)initWithIdentifier:(id)identifier index:(id)index displayName:(id)name ecosystem:(id)ecosystem
{
  identifierCopy = identifier;
  indexCopy = index;
  nameCopy = name;
  ecosystemCopy = ecosystem;
  if (!identifierCopy)
  {
    _HMFPreconditionFailure();
    goto LABEL_9;
  }

  if (!indexCopy)
  {
LABEL_9:
    _HMFPreconditionFailure();
    goto LABEL_10;
  }

  if (!nameCopy)
  {
LABEL_10:
    _HMFPreconditionFailure();
    goto LABEL_11;
  }

  v14 = ecosystemCopy;
  if (!ecosystemCopy)
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
    v16 = [identifierCopy copy];
    identifier = v15->_identifier;
    v15->_identifier = v16;

    v18 = [indexCopy copy];
    index = v15->_index;
    v15->_index = v18;

    v20 = [nameCopy copy];
    displayName = v15->_displayName;
    v15->_displayName = v20;

    v22 = [v14 copy];
    ecosystem = v15->_ecosystem;
    v15->_ecosystem = v22;

    v24 = [MTSDevicePairingFabric UUIDFromIdentifier:identifierCopy ecosystem:v14];
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

+ (id)UUIDFromIdentifier:(id)identifier ecosystem:(id)ecosystem
{
  ecosystemCopy = ecosystem;
  integerValue = [identifier integerValue];
  v6 = [MEMORY[0x277CBEA90] dataWithBytes:&integerValue length:8];
  v7 = MEMORY[0x277CCAD78];
  uuid = [ecosystemCopy uuid];

  v9 = [v7 hmf_UUIDWithNamespace:uuid data:v6];

  return v9;
}

@end