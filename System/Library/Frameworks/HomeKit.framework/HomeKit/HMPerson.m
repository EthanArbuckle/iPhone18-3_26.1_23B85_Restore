@interface HMPerson
+ (id)shortDescription;
- (BOOL)isEqual:(id)a3;
- (HMPerson)initWithCoder:(id)a3;
- (HMPerson)initWithUUID:(id)a3;
- (HMPerson)initWithUUID:(id)a3 name:(id)a4 personLinks:(id)a5 externalPersonUUID:(id)a6;
- (NSArray)attributeDescriptions;
- (NSString)shortDescription;
- (id)mutableCopyWithZone:(_NSZone *)a3;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)a3;
@end

@implementation HMPerson

- (NSArray)attributeDescriptions
{
  v3 = [MEMORY[0x1E695DF70] array];
  v4 = objc_alloc(MEMORY[0x1E69A29C8]);
  v5 = [(HMPerson *)self UUID];
  v6 = [v4 initWithName:@"UUID" value:v5];
  [v3 addObject:v6];

  v7 = [(HMPerson *)self name];

  if (v7)
  {
    v8 = objc_alloc(MEMORY[0x1E69A29C8]);
    v9 = [(HMPerson *)self name];
    v10 = [MEMORY[0x1E69A2A48] defaultFormatter];
    v11 = [v8 initWithName:@"name" value:v9 options:0 formatter:v10];
    [v3 addObject:v11];
  }

  v12 = [(HMPerson *)self personLinks];
  v13 = [v12 count];

  if (v13)
  {
    v14 = objc_alloc(MEMORY[0x1E69A29C8]);
    v15 = [(HMPerson *)self personLinks];
    v16 = [v14 initWithName:@"personLinks" value:v15];
    [v3 addObject:v16];
  }

  v17 = [(HMPerson *)self externalPersonUUID];

  if (v17)
  {
    v18 = objc_alloc(MEMORY[0x1E69A29C8]);
    v19 = [(HMPerson *)self externalPersonUUID];
    v20 = [v18 initWithName:@"External Person UUID" value:v19];
    [v3 addObject:v20];
  }

  v21 = [v3 copy];

  return v21;
}

- (NSString)shortDescription
{
  v2 = objc_opt_class();

  return [v2 shortDescription];
}

- (HMPerson)initWithCoder:(id)a3
{
  v23[2] = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"HMP.ck.u"];
  v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"HMP.ck.n"];
  v7 = MEMORY[0x1E695DFD8];
  v23[0] = objc_opt_class();
  v23[1] = objc_opt_class();
  v8 = [MEMORY[0x1E695DEC8] arrayWithObjects:v23 count:2];
  v9 = [v7 setWithArray:v8];
  v10 = [v4 decodeObjectOfClasses:v9 forKey:@"HMP.ck.pl"];

  v11 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"HMP.ck.epu"];
  if (v5)
  {
    v12 = [(HMPerson *)self initWithUUID:v5 name:v6 personLinks:v10 externalPersonUUID:v11];
    v13 = v12;
  }

  else
  {
    v14 = objc_autoreleasePoolPush();
    v12 = self;
    v15 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
    {
      v16 = HMFGetLogIdentifier();
      v19 = 138543618;
      v20 = v16;
      v21 = 2112;
      v22 = 0;
      _os_log_impl(&dword_19BB39000, v15, OS_LOG_TYPE_ERROR, "%{public}@Could not initialize from decoded UUID: %@", &v19, 0x16u);
    }

    objc_autoreleasePoolPop(v14);
    v13 = 0;
  }

  v17 = *MEMORY[0x1E69E9840];
  return v13;
}

- (void)encodeWithCoder:(id)a3
{
  v4 = a3;
  v5 = [(HMPerson *)self UUID];
  [v4 encodeObject:v5 forKey:@"HMP.ck.u"];

  v6 = [(HMPerson *)self name];
  [v4 encodeObject:v6 forKey:@"HMP.ck.n"];

  v7 = [(HMPerson *)self personLinks];
  [v4 encodeObject:v7 forKey:@"HMP.ck.pl"];

  v8 = [(HMPerson *)self externalPersonUUID];
  [v4 encodeObject:v8 forKey:@"HMP.ck.epu"];
}

- (id)mutableCopyWithZone:(_NSZone *)a3
{
  v4 = [HMMutablePerson allocWithZone:a3];
  v5 = [(HMPerson *)self UUID];
  v6 = [(HMPerson *)self name];
  v7 = [(HMPerson *)self personLinks];
  v8 = [(HMPerson *)self externalPersonUUID];
  v9 = [(HMPerson *)v4 initWithUUID:v5 name:v6 personLinks:v7 externalPersonUUID:v8];

  return v9;
}

+ (id)shortDescription
{
  v2 = objc_opt_class();

  return NSStringFromClass(v2);
}

- (unint64_t)hash
{
  v2 = [(HMPerson *)self UUID];
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
    v7 = [(HMPerson *)self UUID];
    v8 = [v6 UUID];
    if ([v7 isEqual:v8] && (-[HMPerson name](self, "name"), v9 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v6, "name"), v10 = objc_claimAutoreleasedReturnValue(), v11 = HMFEqualObjects(), v10, v9, v11))
    {
      v12 = [(HMPerson *)self personLinks];
      v13 = [v6 personLinks];
      if ([v12 isEqualToSet:v13])
      {
        v14 = [(HMPerson *)self externalPersonUUID];
        v15 = [v6 externalPersonUUID];
        v16 = HMFEqualObjects();
      }

      else
      {
        v16 = 0;
      }
    }

    else
    {
      v16 = 0;
    }
  }

  else
  {
    v16 = 0;
  }

  return v16;
}

- (HMPerson)initWithUUID:(id)a3 name:(id)a4 personLinks:(id)a5 externalPersonUUID:(id)a6
{
  v10 = a3;
  v11 = a4;
  v12 = a5;
  v13 = a6;
  if (!v10)
  {
    _HMFPreconditionFailure();
    goto LABEL_7;
  }

  if (!v12)
  {
LABEL_7:
    v25 = _HMFPreconditionFailure();
    return [(HMPerson *)v25 initWithUUID:v26, v27];
  }

  v14 = v13;
  v28.receiver = self;
  v28.super_class = HMPerson;
  v15 = [(HMPerson *)&v28 init];
  if (v15)
  {
    v16 = [MEMORY[0x1E69A2A28] hmf_cachedInstanceForNSUUID:v10];
    UUID = v15->_UUID;
    v15->_UUID = v16;

    v18 = [v11 copy];
    name = v15->_name;
    v15->_name = v18;

    v20 = [v12 copy];
    personLinks = v15->_personLinks;
    v15->_personLinks = v20;

    v22 = [v14 copy];
    externalPersonUUID = v15->_externalPersonUUID;
    v15->_externalPersonUUID = v22;
  }

  return v15;
}

- (HMPerson)initWithUUID:(id)a3
{
  v4 = a3;
  if (v4)
  {
    v5 = v4;
    v6 = [MEMORY[0x1E695DFD8] set];
    v7 = [(HMPerson *)self initWithUUID:v5 name:0 personLinks:v6 externalPersonUUID:0];

    return v7;
  }

  else
  {
    v9 = _HMFPreconditionFailure();
    [(HMMediaDestinationControllerRequestMessagePayload *)v9 .cxx_destruct];
  }

  return result;
}

@end