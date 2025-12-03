@interface HMAccessorySetupCompletedInfo
+ (id)shortDescription;
- (BOOL)isEqual:(id)equal;
- (HMAccessorySetupCompletedInfo)initWithCoder:(id)coder;
- (HMAccessorySetupCompletedInfo)initWithHomeUUID:(id)d addedAccessoryUUIDs:(id)ds;
- (NSArray)attributeDescriptions;
- (NSString)shortDescription;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)coder;
@end

@implementation HMAccessorySetupCompletedInfo

- (HMAccessorySetupCompletedInfo)initWithCoder:(id)coder
{
  v23[2] = *MEMORY[0x1E69E9840];
  coderCopy = coder;
  v5 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"homeuuid"];
  v6 = MEMORY[0x1E695DFD8];
  v23[0] = objc_opt_class();
  v23[1] = objc_opt_class();
  v7 = [MEMORY[0x1E695DEC8] arrayWithObjects:v23 count:2];
  v8 = [v6 setWithArray:v7];
  v9 = [coderCopy decodeObjectOfClasses:v8 forKey:@"uuids"];

  if (v5 && v9)
  {
    selfCopy = [(HMAccessorySetupCompletedInfo *)self initWithHomeUUID:v5 addedAccessoryUUIDs:v9];
    v11 = selfCopy;
  }

  else
  {
    v12 = objc_autoreleasePoolPush();
    selfCopy = self;
    v13 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
    {
      v14 = HMFGetLogIdentifier();
      v17 = 138543874;
      v18 = v14;
      v19 = 2112;
      v20 = v5;
      v21 = 2112;
      v22 = v9;
      _os_log_impl(&dword_19BB39000, v13, OS_LOG_TYPE_ERROR, "%{public}@Could not initialize from decoded homeUUID: %@ addedAccessoryUUIDs: %@", &v17, 0x20u);
    }

    objc_autoreleasePoolPop(v12);
    v11 = 0;
  }

  v15 = *MEMORY[0x1E69E9840];
  return v11;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  homeUUID = [(HMAccessorySetupCompletedInfo *)self homeUUID];
  [coderCopy encodeObject:homeUUID forKey:@"homeuuid"];

  addedAccessoryUUIDs = [(HMAccessorySetupCompletedInfo *)self addedAccessoryUUIDs];
  [coderCopy encodeObject:addedAccessoryUUIDs forKey:@"uuids"];
}

- (NSArray)attributeDescriptions
{
  v12[2] = *MEMORY[0x1E69E9840];
  v3 = objc_alloc(MEMORY[0x1E69A29C8]);
  homeUUID = [(HMAccessorySetupCompletedInfo *)self homeUUID];
  v5 = [v3 initWithName:@"Home UUID" value:homeUUID];
  v12[0] = v5;
  v6 = objc_alloc(MEMORY[0x1E69A29C8]);
  addedAccessoryUUIDs = [(HMAccessorySetupCompletedInfo *)self addedAccessoryUUIDs];
  v8 = [v6 initWithName:@"Added Accessory UUIDs" value:addedAccessoryUUIDs];
  v12[1] = v8;
  v9 = [MEMORY[0x1E695DEC8] arrayWithObjects:v12 count:2];

  v10 = *MEMORY[0x1E69E9840];

  return v9;
}

- (NSString)shortDescription
{
  v2 = objc_opt_class();

  return [v2 shortDescription];
}

- (unint64_t)hash
{
  homeUUID = [(HMAccessorySetupCompletedInfo *)self homeUUID];
  v4 = [homeUUID hash];
  addedAccessoryUUIDs = [(HMAccessorySetupCompletedInfo *)self addedAccessoryUUIDs];
  v6 = [addedAccessoryUUIDs hash];

  return v6 ^ v4;
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
    homeUUID = [(HMAccessorySetupCompletedInfo *)self homeUUID];
    homeUUID2 = [v6 homeUUID];
    if ([homeUUID isEqualToString:homeUUID2])
    {
      addedAccessoryUUIDs = [(HMAccessorySetupCompletedInfo *)self addedAccessoryUUIDs];
      addedAccessoryUUIDs2 = [v6 addedAccessoryUUIDs];
      v11 = [addedAccessoryUUIDs isEqualToArray:addedAccessoryUUIDs2];
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

- (HMAccessorySetupCompletedInfo)initWithHomeUUID:(id)d addedAccessoryUUIDs:(id)ds
{
  dCopy = d;
  dsCopy = ds;
  v14.receiver = self;
  v14.super_class = HMAccessorySetupCompletedInfo;
  v8 = [(HMAccessorySetupCompletedInfo *)&v14 init];
  if (v8)
  {
    v9 = [dCopy copy];
    homeUUID = v8->_homeUUID;
    v8->_homeUUID = v9;

    v11 = [dsCopy copy];
    addedAccessoryUUIDs = v8->_addedAccessoryUUIDs;
    v8->_addedAccessoryUUIDs = v11;
  }

  return v8;
}

+ (id)shortDescription
{
  v2 = objc_opt_class();

  return NSStringFromClass(v2);
}

@end