@interface MTSDeviceSetupTopology
- (BOOL)isEqual:(id)a3;
- (MTSDeviceSetupTopology)initWithCoder:(id)a3;
- (MTSDeviceSetupTopology)initWithHomes:(id)a3;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)a3;
@end

@implementation MTSDeviceSetupTopology

- (void)encodeWithCoder:(id)a3
{
  v4 = a3;
  v5 = [(MTSDeviceSetupTopology *)self homes];
  [v4 encodeObject:v5 forKey:@"MTSDST.homes"];
}

- (MTSDeviceSetupTopology)initWithCoder:(id)a3
{
  v17 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = [v4 decodeArrayOfObjectsOfClass:objc_opt_class() forKey:@"MTSDST.homes"];
  if (v5)
  {
    v6 = [(MTSDeviceSetupTopology *)self initWithHomes:v5];
    v7 = v6;
  }

  else
  {
    v8 = objc_autoreleasePoolPush();
    v6 = self;
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
  v2 = [(MTSDeviceSetupTopology *)self homes];
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
    v7 = [(MTSDeviceSetupTopology *)self homes];
    v8 = [v6 homes];
    v9 = [v7 isEqual:v8];
  }

  else
  {
    v9 = 0;
  }

  return v9;
}

- (MTSDeviceSetupTopology)initWithHomes:(id)a3
{
  v4 = a3;
  if (v4)
  {
    v5 = v4;
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