@interface MTSDeviceSetupHome
- (BOOL)isEqual:(id)equal;
- (MTSDeviceSetupHome)initWithCoder:(id)coder;
- (MTSDeviceSetupHome)initWithName:(id)name;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)coder;
@end

@implementation MTSDeviceSetupHome

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  name = [(MTSDeviceSetupHome *)self name];
  [coderCopy encodeObject:name forKey:@"MTSDSH.ck.name"];
}

- (MTSDeviceSetupHome)initWithCoder:(id)coder
{
  v17 = *MEMORY[0x277D85DE8];
  coderCopy = coder;
  v5 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"MTSDSH.ck.name"];
  if (v5)
  {
    selfCopy = [(MTSDeviceSetupHome *)self initWithName:v5];
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
  name = [(MTSDeviceSetupHome *)self name];
  v3 = [name hash];

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
    name = [(MTSDeviceSetupHome *)self name];
    name2 = [v6 name];
    v9 = [name isEqual:name2];
  }

  else
  {
    v9 = 0;
  }

  return v9;
}

- (MTSDeviceSetupHome)initWithName:(id)name
{
  nameCopy = name;
  if (nameCopy)
  {
    v5 = nameCopy;
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