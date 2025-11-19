@interface HMAccessorySetupCompletedInfo
+ (id)shortDescription;
- (BOOL)isEqual:(id)a3;
- (HMAccessorySetupCompletedInfo)initWithCoder:(id)a3;
- (HMAccessorySetupCompletedInfo)initWithHomeUUID:(id)a3 addedAccessoryUUIDs:(id)a4;
- (NSArray)attributeDescriptions;
- (NSString)shortDescription;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)a3;
@end

@implementation HMAccessorySetupCompletedInfo

- (HMAccessorySetupCompletedInfo)initWithCoder:(id)a3
{
  v23[2] = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"homeuuid"];
  v6 = MEMORY[0x1E695DFD8];
  v23[0] = objc_opt_class();
  v23[1] = objc_opt_class();
  v7 = [MEMORY[0x1E695DEC8] arrayWithObjects:v23 count:2];
  v8 = [v6 setWithArray:v7];
  v9 = [v4 decodeObjectOfClasses:v8 forKey:@"uuids"];

  if (v5 && v9)
  {
    v10 = [(HMAccessorySetupCompletedInfo *)self initWithHomeUUID:v5 addedAccessoryUUIDs:v9];
    v11 = v10;
  }

  else
  {
    v12 = objc_autoreleasePoolPush();
    v10 = self;
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

- (void)encodeWithCoder:(id)a3
{
  v4 = a3;
  v5 = [(HMAccessorySetupCompletedInfo *)self homeUUID];
  [v4 encodeObject:v5 forKey:@"homeuuid"];

  v6 = [(HMAccessorySetupCompletedInfo *)self addedAccessoryUUIDs];
  [v4 encodeObject:v6 forKey:@"uuids"];
}

- (NSArray)attributeDescriptions
{
  v12[2] = *MEMORY[0x1E69E9840];
  v3 = objc_alloc(MEMORY[0x1E69A29C8]);
  v4 = [(HMAccessorySetupCompletedInfo *)self homeUUID];
  v5 = [v3 initWithName:@"Home UUID" value:v4];
  v12[0] = v5;
  v6 = objc_alloc(MEMORY[0x1E69A29C8]);
  v7 = [(HMAccessorySetupCompletedInfo *)self addedAccessoryUUIDs];
  v8 = [v6 initWithName:@"Added Accessory UUIDs" value:v7];
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
  v3 = [(HMAccessorySetupCompletedInfo *)self homeUUID];
  v4 = [v3 hash];
  v5 = [(HMAccessorySetupCompletedInfo *)self addedAccessoryUUIDs];
  v6 = [v5 hash];

  return v6 ^ v4;
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
    v7 = [(HMAccessorySetupCompletedInfo *)self homeUUID];
    v8 = [v6 homeUUID];
    if ([v7 isEqualToString:v8])
    {
      v9 = [(HMAccessorySetupCompletedInfo *)self addedAccessoryUUIDs];
      v10 = [v6 addedAccessoryUUIDs];
      v11 = [v9 isEqualToArray:v10];
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

- (HMAccessorySetupCompletedInfo)initWithHomeUUID:(id)a3 addedAccessoryUUIDs:(id)a4
{
  v6 = a3;
  v7 = a4;
  v14.receiver = self;
  v14.super_class = HMAccessorySetupCompletedInfo;
  v8 = [(HMAccessorySetupCompletedInfo *)&v14 init];
  if (v8)
  {
    v9 = [v6 copy];
    homeUUID = v8->_homeUUID;
    v8->_homeUUID = v9;

    v11 = [v7 copy];
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