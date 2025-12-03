@interface MTSDevicePairingVendor
+ (id)UUIDFromIdentifier:(id)identifier;
+ (id)shortDescription;
- (BOOL)isEqual:(id)equal;
- (MTSDevicePairingVendor)initWithCoder:(id)coder;
- (MTSDevicePairingVendor)initWithIdentifier:(id)identifier displayName:(id)name;
- (NSArray)attributeDescriptions;
- (NSString)shortDescription;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)coder;
@end

@implementation MTSDevicePairingVendor

- (NSArray)attributeDescriptions
{
  array = [MEMORY[0x277CBEB18] array];
  v4 = objc_alloc(MEMORY[0x277D0F778]);
  identifier = [(MTSDevicePairingVendor *)self identifier];
  v6 = [v4 initWithName:@"Identifier" value:identifier];
  [array addObject:v6];

  v7 = objc_alloc(MEMORY[0x277D0F778]);
  displayName = [(MTSDevicePairingVendor *)self displayName];
  v9 = [v7 initWithName:@"Display Name" value:displayName];
  [array addObject:v9];

  v10 = [array copy];

  return v10;
}

- (NSString)shortDescription
{
  v2 = objc_opt_class();

  return [v2 shortDescription];
}

- (MTSDevicePairingVendor)initWithCoder:(id)coder
{
  v22 = *MEMORY[0x277D85DE8];
  coderCopy = coder;
  v5 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"MTSDPV.ck.identifier"];
  v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"MTSDPV.ck.displayName"];
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
      _os_log_impl(&dword_239824000, v10, OS_LOG_TYPE_ERROR, "%{public}@Could not initialize from decoded identifier: %@ displayName: %@", &v16, 0x20u);
    }

    objc_autoreleasePoolPop(v9);
    v13 = 0;
  }

  else
  {
    selfCopy = [(MTSDevicePairingVendor *)self initWithIdentifier:v5 displayName:v6];
    v13 = selfCopy;
  }

  v14 = *MEMORY[0x277D85DE8];
  return v13;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  identifier = [(MTSDevicePairingVendor *)self identifier];
  [coderCopy encodeObject:identifier forKey:@"MTSDPV.ck.identifier"];

  displayName = [(MTSDevicePairingVendor *)self displayName];
  [coderCopy encodeObject:displayName forKey:@"MTSDPV.ck.displayName"];
}

- (unint64_t)hash
{
  identifier = [(MTSDevicePairingVendor *)self identifier];
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
    identifier = [(MTSDevicePairingVendor *)self identifier];
    identifier2 = [v6 identifier];
    if ([identifier isEqualToNumber:identifier2])
    {
      displayName = [(MTSDevicePairingVendor *)self displayName];
      displayName2 = [v6 displayName];
      v11 = [displayName isEqualToString:displayName2];
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

- (MTSDevicePairingVendor)initWithIdentifier:(id)identifier displayName:(id)name
{
  identifierCopy = identifier;
  nameCopy = name;
  if (!identifierCopy)
  {
    _HMFPreconditionFailure();
    goto LABEL_7;
  }

  v8 = nameCopy;
  if (!nameCopy)
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
    v10 = [identifierCopy copy];
    identifier = v9->_identifier;
    v9->_identifier = v10;

    v12 = [v8 copy];
    displayName = v9->_displayName;
    v9->_displayName = v12;

    v14 = [MTSDevicePairingVendor UUIDFromIdentifier:identifierCopy];
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

+ (id)UUIDFromIdentifier:(id)identifier
{
  v3 = MEMORY[0x277CCAD78];
  identifierCopy = identifier;
  v5 = [[v3 alloc] initWithUUIDString:@"E2FA5931-1351-4518-AFD4-74218FDAA7AC"];
  integerValue = [identifierCopy integerValue];

  v10 = integerValue;
  v7 = [MEMORY[0x277CBEA90] dataWithBytes:&v10 length:8];
  v8 = [MEMORY[0x277CCAD78] hmf_UUIDWithNamespace:v5 data:v7];

  return v8;
}

@end