@interface MTSDeviceSetupTopology
- (BOOL)isEqual:(id)equal;
- (MTSDeviceSetupTopology)initWithCoder:(id)coder;
- (MTSDeviceSetupTopology)initWithHomes:(id)homes;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)coder;
@end

@implementation MTSDeviceSetupTopology

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  homes = [(MTSDeviceSetupTopology *)self homes];
  [coderCopy encodeObject:homes forKey:@"MTSDST.homes"];
}

- (MTSDeviceSetupTopology)initWithCoder:(id)coder
{
  v17 = *MEMORY[0x277D85DE8];
  coderCopy = coder;
  v5 = [coderCopy decodeArrayOfObjectsOfClass:objc_opt_class() forKey:@"MTSDST.homes"];
  if (v5)
  {
    selfCopy = [(MTSDeviceSetupTopology *)self initWithHomes:v5];
    v7 = selfCopy;
  }

  else
  {
    v8 = objc_autoreleasePoolPush();
    selfCopy = self;
    v9 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      v10 = HMFGetLogIdentifier();
      v13 = 138543618;
      v14 = v10;
      v15 = 2112;
      v16 = 0;
      _os_log_impl(&dword_239824000, v9, OS_LOG_TYPE_ERROR, "%{public}@Could not initialize from decoded homes: %@", &v13, 0x16u);
    }

    objc_autoreleasePoolPop(v8);
    v7 = 0;
  }

  v11 = *MEMORY[0x277D85DE8];
  return v7;
}

- (unint64_t)hash
{
  homes = [(MTSDeviceSetupTopology *)self homes];
  v3 = [homes hash];

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
    homes = [(MTSDeviceSetupTopology *)self homes];
    homes2 = [v6 homes];
    v9 = [homes isEqual:homes2];
  }

  else
  {
    v9 = 0;
  }

  return v9;
}

- (MTSDeviceSetupTopology)initWithHomes:(id)homes
{
  homesCopy = homes;
  if (homesCopy)
  {
    v5 = homesCopy;
    v12.receiver = self;
    v12.super_class = MTSDeviceSetupTopology;
    v6 = [(MTSDeviceSetupTopology *)&v12 init];
    if (v6)
    {
      v7 = [v5 copy];
      homes = v6->_homes;
      v6->_homes = v7;
    }

    return v6;
  }

  else
  {
    v10 = _HMFPreconditionFailure();
    return +[(MTSDeviceSetupTopology *)v10];
  }
}

@end