@interface HMPerson
+ (id)shortDescription;
- (BOOL)isEqual:(id)equal;
- (HMPerson)initWithCoder:(id)coder;
- (HMPerson)initWithUUID:(id)d;
- (HMPerson)initWithUUID:(id)d name:(id)name personLinks:(id)links externalPersonUUID:(id)iD;
- (NSArray)attributeDescriptions;
- (NSString)shortDescription;
- (id)mutableCopyWithZone:(_NSZone *)zone;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)coder;
@end

@implementation HMPerson

- (NSArray)attributeDescriptions
{
  array = [MEMORY[0x1E695DF70] array];
  v4 = objc_alloc(MEMORY[0x1E69A29C8]);
  uUID = [(HMPerson *)self UUID];
  v6 = [v4 initWithName:@"UUID" value:uUID];
  [array addObject:v6];

  name = [(HMPerson *)self name];

  if (name)
  {
    v8 = objc_alloc(MEMORY[0x1E69A29C8]);
    name2 = [(HMPerson *)self name];
    defaultFormatter = [MEMORY[0x1E69A2A48] defaultFormatter];
    v11 = [v8 initWithName:@"name" value:name2 options:0 formatter:defaultFormatter];
    [array addObject:v11];
  }

  personLinks = [(HMPerson *)self personLinks];
  v13 = [personLinks count];

  if (v13)
  {
    v14 = objc_alloc(MEMORY[0x1E69A29C8]);
    personLinks2 = [(HMPerson *)self personLinks];
    v16 = [v14 initWithName:@"personLinks" value:personLinks2];
    [array addObject:v16];
  }

  externalPersonUUID = [(HMPerson *)self externalPersonUUID];

  if (externalPersonUUID)
  {
    v18 = objc_alloc(MEMORY[0x1E69A29C8]);
    externalPersonUUID2 = [(HMPerson *)self externalPersonUUID];
    v20 = [v18 initWithName:@"External Person UUID" value:externalPersonUUID2];
    [array addObject:v20];
  }

  v21 = [array copy];

  return v21;
}

- (NSString)shortDescription
{
  v2 = objc_opt_class();

  return [v2 shortDescription];
}

- (HMPerson)initWithCoder:(id)coder
{
  v23[2] = *MEMORY[0x1E69E9840];
  coderCopy = coder;
  v5 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"HMP.ck.u"];
  v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"HMP.ck.n"];
  v7 = MEMORY[0x1E695DFD8];
  v23[0] = objc_opt_class();
  v23[1] = objc_opt_class();
  v8 = [MEMORY[0x1E695DEC8] arrayWithObjects:v23 count:2];
  v9 = [v7 setWithArray:v8];
  v10 = [coderCopy decodeObjectOfClasses:v9 forKey:@"HMP.ck.pl"];

  v11 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"HMP.ck.epu"];
  if (v5)
  {
    selfCopy = [(HMPerson *)self initWithUUID:v5 name:v6 personLinks:v10 externalPersonUUID:v11];
    v13 = selfCopy;
  }

  else
  {
    v14 = objc_autoreleasePoolPush();
    selfCopy = self;
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

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  uUID = [(HMPerson *)self UUID];
  [coderCopy encodeObject:uUID forKey:@"HMP.ck.u"];

  name = [(HMPerson *)self name];
  [coderCopy encodeObject:name forKey:@"HMP.ck.n"];

  personLinks = [(HMPerson *)self personLinks];
  [coderCopy encodeObject:personLinks forKey:@"HMP.ck.pl"];

  externalPersonUUID = [(HMPerson *)self externalPersonUUID];
  [coderCopy encodeObject:externalPersonUUID forKey:@"HMP.ck.epu"];
}

- (id)mutableCopyWithZone:(_NSZone *)zone
{
  v4 = [HMMutablePerson allocWithZone:zone];
  uUID = [(HMPerson *)self UUID];
  name = [(HMPerson *)self name];
  personLinks = [(HMPerson *)self personLinks];
  externalPersonUUID = [(HMPerson *)self externalPersonUUID];
  v9 = [(HMPerson *)v4 initWithUUID:uUID name:name personLinks:personLinks externalPersonUUID:externalPersonUUID];

  return v9;
}

+ (id)shortDescription
{
  v2 = objc_opt_class();

  return NSStringFromClass(v2);
}

- (unint64_t)hash
{
  uUID = [(HMPerson *)self UUID];
  v3 = [uUID hash];

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
    uUID = [(HMPerson *)self UUID];
    uUID2 = [v6 UUID];
    if ([uUID isEqual:uUID2] && (-[HMPerson name](self, "name"), v9 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v6, "name"), v10 = objc_claimAutoreleasedReturnValue(), v11 = HMFEqualObjects(), v10, v9, v11))
    {
      personLinks = [(HMPerson *)self personLinks];
      personLinks2 = [v6 personLinks];
      if ([personLinks isEqualToSet:personLinks2])
      {
        externalPersonUUID = [(HMPerson *)self externalPersonUUID];
        externalPersonUUID2 = [v6 externalPersonUUID];
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

- (HMPerson)initWithUUID:(id)d name:(id)name personLinks:(id)links externalPersonUUID:(id)iD
{
  dCopy = d;
  nameCopy = name;
  linksCopy = links;
  iDCopy = iD;
  if (!dCopy)
  {
    _HMFPreconditionFailure();
    goto LABEL_7;
  }

  if (!linksCopy)
  {
LABEL_7:
    v25 = _HMFPreconditionFailure();
    return [(HMPerson *)v25 initWithUUID:v26, v27];
  }

  v14 = iDCopy;
  v28.receiver = self;
  v28.super_class = HMPerson;
  v15 = [(HMPerson *)&v28 init];
  if (v15)
  {
    v16 = [MEMORY[0x1E69A2A28] hmf_cachedInstanceForNSUUID:dCopy];
    UUID = v15->_UUID;
    v15->_UUID = v16;

    v18 = [nameCopy copy];
    name = v15->_name;
    v15->_name = v18;

    v20 = [linksCopy copy];
    personLinks = v15->_personLinks;
    v15->_personLinks = v20;

    v22 = [v14 copy];
    externalPersonUUID = v15->_externalPersonUUID;
    v15->_externalPersonUUID = v22;
  }

  return v15;
}

- (HMPerson)initWithUUID:(id)d
{
  dCopy = d;
  if (dCopy)
  {
    v5 = dCopy;
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