@interface HMAccessorySetupResult
+ (id)shortDescription;
- (BOOL)isEqual:(id)a3;
- (HMAccessorySetupResult)initWithCoder:(id)a3;
- (HMAccessorySetupResult)initWithHomeUniqueIdentifier:(id)a3 accessoryUniqueIdentifiers:(id)a4;
- (NSArray)attributeDescriptions;
- (NSString)shortDescription;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)a3;
@end

@implementation HMAccessorySetupResult

- (NSArray)attributeDescriptions
{
  v13[2] = *MEMORY[0x1E69E9840];
  v3 = objc_alloc(MEMORY[0x1E69A29C8]);
  v4 = [(HMAccessorySetupResult *)self homeUniqueIdentifier];
  v5 = [v3 initWithName:@"Home ID" value:v4];
  v13[0] = v5;
  v6 = objc_alloc(MEMORY[0x1E69A29C8]);
  v7 = [(HMAccessorySetupResult *)self accessoryUniqueIdentifiers];
  v8 = [v7 componentsJoinedByString:{@", "}];
  v9 = [v6 initWithName:@"Accessory IDs" value:v8];
  v13[1] = v9;
  v10 = [MEMORY[0x1E695DEC8] arrayWithObjects:v13 count:2];

  v11 = *MEMORY[0x1E69E9840];

  return v10;
}

- (NSString)shortDescription
{
  v2 = objc_opt_class();

  return [v2 shortDescription];
}

- (HMAccessorySetupResult)initWithCoder:(id)a3
{
  v23[2] = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"HMASR.ck.homeUniqueIdentifier"];
  v6 = MEMORY[0x1E695DFD8];
  v23[0] = objc_opt_class();
  v23[1] = objc_opt_class();
  v7 = [MEMORY[0x1E695DEC8] arrayWithObjects:v23 count:2];
  v8 = [v6 setWithArray:v7];
  v9 = [v4 decodeObjectOfClasses:v8 forKey:@"HMASR.ck.accessoryUniqueIdentifiers"];

  if (v5 && v9)
  {
    v10 = [(HMAccessorySetupResult *)self initWithHomeUniqueIdentifier:v5 accessoryUniqueIdentifiers:v9];
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
      _os_log_impl(&dword_19BB39000, v13, OS_LOG_TYPE_ERROR, "%{public}@Could not initialize from decoded homeUniqueIdentifier: %@ accessoryUniqueIdentifiers: %@", &v17, 0x20u);
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
  v5 = [(HMAccessorySetupResult *)self homeUniqueIdentifier];
  [v4 encodeObject:v5 forKey:@"HMASR.ck.homeUniqueIdentifier"];

  v6 = [(HMAccessorySetupResult *)self accessoryUniqueIdentifiers];
  [v4 encodeObject:v6 forKey:@"HMASR.ck.accessoryUniqueIdentifiers"];
}

- (unint64_t)hash
{
  v3 = [(HMAccessorySetupResult *)self homeUniqueIdentifier];
  v4 = [v3 hash];

  v5 = [(HMAccessorySetupResult *)self accessoryUniqueIdentifiers];
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
    v7 = [(HMAccessorySetupResult *)self homeUniqueIdentifier];
    v8 = [v6 homeUniqueIdentifier];
    if ([v7 isEqual:v8])
    {
      v9 = [(HMAccessorySetupResult *)self accessoryUniqueIdentifiers];
      v10 = [v6 accessoryUniqueIdentifiers];
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

- (HMAccessorySetupResult)initWithHomeUniqueIdentifier:(id)a3 accessoryUniqueIdentifiers:(id)a4
{
  v7 = a3;
  v8 = a4;
  if (!v7)
  {
    _HMFPreconditionFailure();
    goto LABEL_7;
  }

  v9 = v8;
  if (![v8 count])
  {
LABEL_7:
    v13 = _HMFPreconditionFailure();
    return +[(HMAccessorySetupResult *)v13];
  }

  v15.receiver = self;
  v15.super_class = HMAccessorySetupResult;
  v10 = [(HMAccessorySetupResult *)&v15 init];
  v11 = v10;
  if (v10)
  {
    objc_storeStrong(&v10->_homeUniqueIdentifier, a3);
    objc_storeStrong(&v11->_accessoryUniqueIdentifiers, a4);
  }

  return v11;
}

+ (id)shortDescription
{
  v2 = objc_opt_class();

  return NSStringFromClass(v2);
}

@end