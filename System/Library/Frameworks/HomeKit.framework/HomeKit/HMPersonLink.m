@interface HMPersonLink
+ (id)shortDescription;
- (BOOL)isEqual:(id)a3;
- (HMPersonLink)initWithCoder:(id)a3;
- (HMPersonLink)initWithPersonUUID:(id)a3 personManagerUUID:(id)a4;
- (NSArray)attributeDescriptions;
- (NSString)shortDescription;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)a3;
@end

@implementation HMPersonLink

- (NSArray)attributeDescriptions
{
  v12[2] = *MEMORY[0x1E69E9840];
  v3 = objc_alloc(MEMORY[0x1E69A29C8]);
  v4 = [(HMPersonLink *)self personUUID];
  v5 = [v3 initWithName:@"Person UUID" value:v4];
  v12[0] = v5;
  v6 = objc_alloc(MEMORY[0x1E69A29C8]);
  v7 = [(HMPersonLink *)self personManagerUUID];
  v8 = [v6 initWithName:@"Person Manager UUID" value:v7];
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

- (HMPersonLink)initWithCoder:(id)a3
{
  v22 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"HMPL.ck.pu"];
  v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"HMPL.ck.pmu"];
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
    v12 = self;
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
      _os_log_impl(&dword_19BB39000, v10, OS_LOG_TYPE_ERROR, "%{public}@Could not initialize from decoded personUUID: %@ personManagerUUID: %@", &v16, 0x20u);
    }

    objc_autoreleasePoolPop(v9);
    v13 = 0;
  }

  else
  {
    v12 = [(HMPersonLink *)self initWithPersonUUID:v5 personManagerUUID:v6];
    v13 = v12;
  }

  v14 = *MEMORY[0x1E69E9840];
  return v13;
}

- (void)encodeWithCoder:(id)a3
{
  v4 = a3;
  v5 = [(HMPersonLink *)self personUUID];
  [v4 encodeObject:v5 forKey:@"HMPL.ck.pu"];

  v6 = [(HMPersonLink *)self personManagerUUID];
  [v4 encodeObject:v6 forKey:@"HMPL.ck.pmu"];
}

- (unint64_t)hash
{
  v3 = [(HMPersonLink *)self personUUID];
  v4 = [v3 hash];

  v5 = [(HMPersonLink *)self personManagerUUID];
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
    v7 = [(HMPersonLink *)self personUUID];
    v8 = [v6 personUUID];
    if ([v7 isEqual:v8])
    {
      v9 = [(HMPersonLink *)self personManagerUUID];
      v10 = [v6 personManagerUUID];
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

- (HMPersonLink)initWithPersonUUID:(id)a3 personManagerUUID:(id)a4
{
  v6 = a3;
  v7 = a4;
  if (!v6)
  {
    _HMFPreconditionFailure();
    goto LABEL_7;
  }

  v8 = v7;
  if (!v7)
  {
LABEL_7:
    v15 = _HMFPreconditionFailure();
    return +[(HMPersonLink *)v15];
  }

  v17.receiver = self;
  v17.super_class = HMPersonLink;
  v9 = [(HMPersonLink *)&v17 init];
  if (v9)
  {
    v10 = [v6 copy];
    personUUID = v9->_personUUID;
    v9->_personUUID = v10;

    v12 = [v8 copy];
    personManagerUUID = v9->_personManagerUUID;
    v9->_personManagerUUID = v12;
  }

  return v9;
}

+ (id)shortDescription
{
  v2 = objc_opt_class();

  return NSStringFromClass(v2);
}

@end