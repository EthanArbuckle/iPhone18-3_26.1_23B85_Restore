@interface MTSDeviceSetupHome
- (BOOL)isEqual:(id)a3;
- (MTSDeviceSetupHome)initWithCoder:(id)a3;
- (MTSDeviceSetupHome)initWithName:(id)a3;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)a3;
@end

@implementation MTSDeviceSetupHome

- (void)encodeWithCoder:(id)a3
{
  v4 = a3;
  v5 = [(MTSDeviceSetupHome *)self name];
  [v4 encodeObject:v5 forKey:@"MTSDSH.ck.name"];
}

- (MTSDeviceSetupHome)initWithCoder:(id)a3
{
  v17 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"MTSDSH.ck.name"];
  if (v5)
  {
    v6 = [(MTSDeviceSetupHome *)self initWithName:v5];
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
      _os_log_impl(&dword_239824000, v9, OS_LOG_TYPE_ERROR, "%{public}@Could not initialize from decoded name: %@", &v13, 0x16u);
    }

    objc_autoreleasePoolPop(v8);
    v7 = 0;
  }

  v11 = *MEMORY[0x277D85DE8];
  return v7;
}

- (unint64_t)hash
{
  v2 = [(MTSDeviceSetupHome *)self name];
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
    v7 = [(MTSDeviceSetupHome *)self name];
    v8 = [v6 name];
    v9 = [v7 isEqual:v8];
  }

  else
  {
    v9 = 0;
  }

  return v9;
}

- (MTSDeviceSetupHome)initWithName:(id)a3
{
  v4 = a3;
  if (v4)
  {
    v5 = v4;
    v12.receiver = self;
    v12.super_class = MTSDeviceSetupHome;
    v6 = [(MTSDeviceSetupHome *)&v12 init];
    if (v6)
    {
      v7 = [v5 copy];
      name = v6->_name;
      v6->_name = v7;
    }

    return v6;
  }

  else
  {
    v10 = _HMFPreconditionFailure();
    return +[(MTSDeviceSetupHome *)v10];
  }
}

@end