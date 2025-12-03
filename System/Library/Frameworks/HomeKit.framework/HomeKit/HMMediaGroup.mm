@interface HMMediaGroup
+ (id)logCategory;
+ (id)shortDescription;
- (BOOL)isEqual:(id)equal;
- (HMMediaGroup)initWithCoder:(id)coder;
- (HMMediaGroup)initWithIdentifier:(id)identifier parentIdentifier:(id)parentIdentifier name:(id)name defaultName:(BOOL)defaultName destinationIdentifiers:(id)identifiers associatedGroupIdentifier:(id)groupIdentifier;
- (HMMediaGroup)initWithProtoBufferData:(id)data;
- (NSArray)attributeDescriptions;
- (NSArray)destinationIdentifiers;
- (NSString)shortDescription;
- (id)encodeToProtoBufferData;
- (id)initClassWithProtoBufferData:(id)data;
- (id)logIdentifier;
- (id)mediaSystemData;
- (id)mutableCopyWithZone:(_NSZone *)zone;
- (unint64_t)hash;
- (void)encodeToProtoBufferDataWithEvent:(id)event;
- (void)encodeWithCoder:(id)coder;
@end

@implementation HMMediaGroup

- (id)encodeToProtoBufferData
{
  v3 = objc_alloc_init(HMMediaGroupProtoMediaGroupData);
  [(HMMediaGroup *)self encodeToProtoBufferDataWithEvent:v3];
  data = [(HMMediaGroupProtoMediaGroupData *)v3 data];

  return data;
}

- (void)encodeToProtoBufferDataWithEvent:(id)event
{
  eventCopy = event;
  identifier = [(HMMediaGroup *)self identifier];
  uUIDString = [identifier UUIDString];
  [eventCopy setIdentifier:uUIDString];

  parentIdentifier = [(HMMediaGroup *)self parentIdentifier];
  uUIDString2 = [parentIdentifier UUIDString];
  [eventCopy setParentIdentifier:uUIDString2];

  name = [(HMMediaGroup *)self name];
  [eventCopy setName:name];

  [eventCopy setIsDefaultName:{-[HMMediaGroup isDefaultName](self, "isDefaultName")}];
  destinationIdentifiers = [(HMMediaGroup *)self destinationIdentifiers];
  v11 = [destinationIdentifiers mutableCopy];
  [eventCopy setDestinationIdentifiers:v11];

  associatedGroupIdentifier = [(HMMediaGroup *)self associatedGroupIdentifier];
  uUIDString3 = [associatedGroupIdentifier UUIDString];
  [eventCopy setAssociatedGroupIdentifier:uUIDString3];
}

- (HMMediaGroup)initWithProtoBufferData:(id)data
{
  v22 = *MEMORY[0x1E69E9840];
  dataCopy = data;
  v5 = [[HMMediaGroupProtoMediaGroupData alloc] initWithData:dataCopy];
  v6 = v5;
  if (v5)
  {
    if (-[HMMediaGroupProtoMediaGroupData hasGroupRole](v5, "hasGroupRole") && (-[HMMediaGroupProtoMediaGroupData groupRole](v6, "groupRole"), v7 = objc_claimAutoreleasedReturnValue(), v8 = [v7 hasMediaSystem], v7, v8))
    {
      v9 = [[HMMediaSystemData alloc] initWithProtoBufferData:dataCopy];
    }

    else
    {
      v9 = [(HMMediaGroup *)self initClassWithProtoBufferData:dataCopy];
      self = &v9->super;
    }

    p_super = &v9->super;
  }

  else
  {
    v11 = objc_autoreleasePoolPush();
    v12 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      v13 = HMFGetLogIdentifier();
      v16 = 138543874;
      v17 = v13;
      v18 = 2112;
      v19 = objc_opt_class();
      v20 = 2112;
      v21 = 0;
      _os_log_impl(&dword_19BB39000, v12, OS_LOG_TYPE_ERROR, "%{public}@[%@] Failed to decode event data: %@", &v16, 0x20u);
    }

    objc_autoreleasePoolPop(v11);
    p_super = 0;
  }

  v14 = *MEMORY[0x1E69E9840];
  return p_super;
}

- (id)initClassWithProtoBufferData:(id)data
{
  v45 = *MEMORY[0x1E69E9840];
  dataCopy = data;
  v5 = [[HMMediaGroupProtoMediaGroupData alloc] initWithData:dataCopy];
  v6 = v5;
  if (!v5)
  {
    v12 = objc_autoreleasePoolPush();
    v13 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
    {
      v14 = HMFGetLogIdentifier();
      *buf = 138543874;
      v40 = v14;
      v41 = 2112;
      v42 = objc_opt_class();
      v43 = 2112;
      v44 = 0;
      v15 = "%{public}@[%@] Failed to decode event data: %@";
LABEL_10:
      _os_log_impl(&dword_19BB39000, v13, OS_LOG_TYPE_ERROR, v15, buf, 0x20u);
    }

LABEL_11:

    objc_autoreleasePoolPop(v12);
    selfCopy = 0;
    goto LABEL_29;
  }

  if (![(HMMediaGroupProtoMediaGroupData *)v5 hasIdentifier])
  {
    v12 = objc_autoreleasePoolPush();
    v13 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
    {
      v14 = HMFGetLogIdentifier();
      *buf = 138543874;
      v40 = v14;
      v41 = 2112;
      v42 = objc_opt_class();
      v43 = 2112;
      v44 = v6;
      v15 = "%{public}@[%@] Missing field=identifier from data=%@";
      goto LABEL_10;
    }

    goto LABEL_11;
  }

  v7 = objc_alloc(MEMORY[0x1E696AFB0]);
  identifier = [(HMMediaGroupProtoMediaGroupData *)v6 identifier];
  v9 = [v7 initWithUUIDString:identifier];

  if ([(HMMediaGroupProtoMediaGroupData *)v6 hasName])
  {
    name = [(HMMediaGroupProtoMediaGroupData *)v6 name];
    if ([(HMMediaGroupProtoMediaGroupData *)v6 hasIsDefaultName])
    {
      isDefaultName = [(HMMediaGroupProtoMediaGroupData *)v6 isDefaultName];
    }

    else
    {
      isDefaultName = 0;
    }

    if ([(HMMediaGroupProtoMediaGroupData *)v6 hasParentIdentifier])
    {
      v20 = objc_alloc(MEMORY[0x1E696AFB0]);
      parentIdentifier = [(HMMediaGroupProtoMediaGroupData *)v6 parentIdentifier];
      v22 = [v20 initWithUUIDString:parentIdentifier];

      destinationIdentifiers = [(HMMediaGroupProtoMediaGroupData *)v6 destinationIdentifiers];
      if (destinationIdentifiers)
      {
        destinationIdentifiers2 = [(HMMediaGroupProtoMediaGroupData *)v6 destinationIdentifiers];
      }

      else
      {
        destinationIdentifiers2 = MEMORY[0x1E695E0F0];
      }

      v28 = [destinationIdentifiers2 na_map:&__block_literal_global_84_41185];
      if ([(HMMediaGroupProtoMediaGroupData *)v6 hasAssociatedGroupIdentifier])
      {
        v29 = objc_alloc(MEMORY[0x1E696AFB0]);
        [(HMMediaGroupProtoMediaGroupData *)v6 associatedGroupIdentifier];
        v38 = destinationIdentifiers2;
        v30 = v9;
        v31 = v22;
        v32 = isDefaultName;
        v34 = v33 = name;
        v35 = [v29 initWithUUIDString:v34];

        name = v33;
        isDefaultName = v32;
        v22 = v31;
        v9 = v30;
        destinationIdentifiers2 = v38;
      }

      else
      {
        v35 = 0;
      }

      self = [(HMMediaGroup *)self initWithIdentifier:v9 parentIdentifier:v22 name:name defaultName:isDefaultName destinationIdentifiers:v28 associatedGroupIdentifier:v35];

      selfCopy = self;
    }

    else
    {
      v25 = objc_autoreleasePoolPush();
      v26 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v26, OS_LOG_TYPE_ERROR))
      {
        v27 = HMFGetLogIdentifier();
        *buf = 138543874;
        v40 = v27;
        v41 = 2112;
        v42 = objc_opt_class();
        v43 = 2112;
        v44 = v6;
        _os_log_impl(&dword_19BB39000, v26, OS_LOG_TYPE_ERROR, "%{public}@[%@] Missing field=parentIdentifier from data=%@", buf, 0x20u);
      }

      objc_autoreleasePoolPop(v25);
      selfCopy = 0;
    }
  }

  else
  {
    v17 = objc_autoreleasePoolPush();
    v18 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
    {
      v19 = HMFGetLogIdentifier();
      *buf = 138543874;
      v40 = v19;
      v41 = 2112;
      v42 = objc_opt_class();
      v43 = 2112;
      v44 = v6;
      _os_log_impl(&dword_19BB39000, v18, OS_LOG_TYPE_ERROR, "%{public}@[%@] Missing field=name from data=%@", buf, 0x20u);
    }

    objc_autoreleasePoolPop(v17);
    selfCopy = 0;
  }

LABEL_29:
  v36 = *MEMORY[0x1E69E9840];
  return selfCopy;
}

id __45__HMMediaGroup_initClassWithProtoBufferData___block_invoke(uint64_t a1, void *a2)
{
  v2 = MEMORY[0x1E696AFB0];
  v3 = a2;
  v4 = [[v2 alloc] initWithUUIDString:v3];

  return v4;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  identifier = [(HMMediaGroup *)self identifier];
  [coderCopy encodeObject:identifier forKey:@"HMMediaGroupIdentifierCodingKey"];

  parentIdentifier = [(HMMediaGroup *)self parentIdentifier];
  [coderCopy encodeObject:parentIdentifier forKey:@"HMMediaGroupParentIdentifierCodingKey"];

  name = [(HMMediaGroup *)self name];
  [coderCopy encodeObject:name forKey:@"HMMediaGroupNameCodingKey"];

  v8 = [MEMORY[0x1E696AD98] numberWithBool:{-[HMMediaGroup isDefaultName](self, "isDefaultName")}];
  [coderCopy encodeObject:v8 forKey:@"HMMediaGroupDefaultNameCodingKey"];

  destinationIdentifiers = [(HMMediaGroup *)self destinationIdentifiers];
  [coderCopy encodeObject:destinationIdentifiers forKey:@"HMMediaGroupDestinationIdentifiersCodingKey"];

  associatedGroupIdentifier = [(HMMediaGroup *)self associatedGroupIdentifier];
  [coderCopy encodeObject:associatedGroupIdentifier forKey:@"HMMediaGroupAssociatedGroupIdentifierCodingKey"];
}

- (HMMediaGroup)initWithCoder:(id)coder
{
  v26[2] = *MEMORY[0x1E69E9840];
  coderCopy = coder;
  v5 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"HMMediaGroupIdentifierCodingKey"];
  v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"HMMediaGroupParentIdentifierCodingKey"];
  v7 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"HMMediaGroupNameCodingKey"];
  v8 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"HMMediaGroupDefaultNameCodingKey"];
  v9 = MEMORY[0x1E695DFD8];
  v26[0] = objc_opt_class();
  v26[1] = objc_opt_class();
  v10 = [MEMORY[0x1E695DEC8] arrayWithObjects:v26 count:2];
  v11 = [v9 setWithArray:v10];
  v12 = [coderCopy decodeObjectOfClasses:v11 forKey:@"HMMediaGroupDestinationIdentifiersCodingKey"];

  v13 = [v12 na_map:&__block_literal_global_75];
  v14 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"HMMediaGroupAssociatedGroupIdentifierCodingKey"];
  if (!v6)
  {
    selfCopy = self;
    v15 = objc_autoreleasePoolPush();
    v16 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
    {
      v17 = HMFGetLogIdentifier();
      *buf = 138543618;
      v23 = v17;
      v24 = 2112;
      v25 = objc_opt_class();
      _os_log_impl(&dword_19BB39000, v16, OS_LOG_TYPE_ERROR, "%{public}@[%@] Failed to decode parent identifier", buf, 0x16u);
    }

    objc_autoreleasePoolPop(v15);
    v6 = [objc_alloc(MEMORY[0x1E696AFB0]) initWithUUIDString:@"00000000-0000-0000-0000-000000000000"];
    self = selfCopy;
  }

  v18 = -[HMMediaGroup initWithIdentifier:parentIdentifier:name:defaultName:destinationIdentifiers:associatedGroupIdentifier:](self, "initWithIdentifier:parentIdentifier:name:defaultName:destinationIdentifiers:associatedGroupIdentifier:", v5, v6, v7, [v8 BOOLValue], v13, v14);

  v19 = *MEMORY[0x1E69E9840];
  return v18;
}

id __30__HMMediaGroup_initWithCoder___block_invoke(uint64_t a1, void *a2)
{
  v2 = MEMORY[0x1E696AFB0];
  v3 = a2;
  v4 = [[v2 alloc] initWithUUIDString:v3];

  return v4;
}

- (unint64_t)hash
{
  identifier = [(HMMediaGroup *)self identifier];
  v3 = [identifier hash];

  return v3;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (self == equalCopy)
  {
    v18 = 1;
  }

  else
  {
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
    if (v6 && ((v7 = objc_opt_class(), ([v7 isEqual:objc_opt_class()] & 1) == 0) && (v8 = objc_opt_class(), !objc_msgSend(v8, "isEqual:", objc_opt_class())) || (v9 = objc_opt_class(), (objc_msgSend(v9, "isEqual:", objc_opt_class()) & 1) != 0) || (v10 = objc_opt_class(), objc_msgSend(v10, "isEqual:", objc_opt_class()))))
    {
      identifier = [(HMMediaGroup *)self identifier];
      identifier2 = [(HMMediaGroup *)v6 identifier];
      if ([identifier hmf_isEqualToUUID:identifier2])
      {
        parentIdentifier = [(HMMediaGroup *)self parentIdentifier];
        parentIdentifier2 = [(HMMediaGroup *)v6 parentIdentifier];
        if ([parentIdentifier hmf_isEqualToUUID:parentIdentifier2])
        {
          name = [(HMMediaGroup *)self name];
          name2 = [(HMMediaGroup *)v6 name];
          if ([name isEqualToString:name2] && (v17 = -[HMMediaGroup isDefaultName](self, "isDefaultName"), v17 == -[HMMediaGroup isDefaultName](v6, "isDefaultName")))
          {
            v19 = MEMORY[0x1E695DFD8];
            destinationIdentifiers = [(HMMediaGroup *)self destinationIdentifiers];
            v20 = [v19 setWithArray:?];
            v28 = MEMORY[0x1E695DFD8];
            destinationIdentifiers2 = [(HMMediaGroup *)v6 destinationIdentifiers];
            v21 = [v28 setWithArray:?];
            v29 = v20;
            v22 = v20;
            v23 = v21;
            if ([v22 isEqual:v21])
            {
              associatedGroupIdentifier = [(HMMediaGroup *)self associatedGroupIdentifier];
              associatedGroupIdentifier2 = [(HMMediaGroup *)v6 associatedGroupIdentifier];
              v18 = HMFEqualObjects();
            }

            else
            {
              v18 = 0;
            }
          }

          else
          {
            v18 = 0;
          }
        }

        else
        {
          v18 = 0;
        }
      }

      else
      {
        v18 = 0;
      }
    }

    else
    {
      v18 = 0;
    }
  }

  return v18;
}

HMMediaGroup *__42__HMMediaGroup_groupsWithProtoBufferData___block_invoke(uint64_t a1, void *a2)
{
  v2 = a2;
  v3 = [[HMMediaGroup alloc] initWithProtoBufferData:v2];

  return v3;
}

+ (id)shortDescription
{
  v2 = objc_opt_class();

  return NSStringFromClass(v2);
}

+ (id)logCategory
{
  if (logCategory__hmf_once_t1_41218 != -1)
  {
    dispatch_once(&logCategory__hmf_once_t1_41218, &__block_literal_global_55);
  }

  v3 = logCategory__hmf_once_v2_41219;

  return v3;
}

uint64_t __27__HMMediaGroup_logCategory__block_invoke()
{
  v0 = *MEMORY[0x1E69A2980];
  v1 = HMFCreateOSLogHandle();
  v2 = logCategory__hmf_once_v2_41219;
  logCategory__hmf_once_v2_41219 = v1;

  return MEMORY[0x1EEE66BB8](v1, v2);
}

- (id)mutableCopyWithZone:(_NSZone *)zone
{
  v4 = [HMMutableMediaGroup alloc];
  identifier = [(HMMediaGroup *)self identifier];
  parentIdentifier = [(HMMediaGroup *)self parentIdentifier];
  name = [(HMMediaGroup *)self name];
  isDefaultName = [(HMMediaGroup *)self isDefaultName];
  destinationUniqueIdentifiers = [(HMMediaGroup *)self destinationUniqueIdentifiers];
  associatedGroupIdentifier = [(HMMediaGroup *)self associatedGroupIdentifier];
  v11 = [(HMMediaGroup *)v4 initWithIdentifier:identifier parentIdentifier:parentIdentifier name:name defaultName:isDefaultName destinationIdentifiers:destinationUniqueIdentifiers associatedGroupIdentifier:associatedGroupIdentifier];

  return v11;
}

- (NSArray)attributeDescriptions
{
  v24[6] = *MEMORY[0x1E69E9840];
  v3 = objc_alloc(MEMORY[0x1E69A29C8]);
  identifier = [(HMMediaGroup *)self identifier];
  v22 = [v3 initWithName:@"identifier" value:identifier];
  v24[0] = v22;
  v4 = objc_alloc(MEMORY[0x1E69A29C8]);
  parentIdentifier = [(HMMediaGroup *)self parentIdentifier];
  v5 = [v4 initWithName:@"parentIdentifier" value:parentIdentifier];
  v24[1] = v5;
  v6 = objc_alloc(MEMORY[0x1E69A29C8]);
  name = [(HMMediaGroup *)self name];
  v8 = [v6 initWithName:@"name" value:name];
  v24[2] = v8;
  v9 = objc_alloc(MEMORY[0x1E69A29C8]);
  [(HMMediaGroup *)self isDefaultName];
  v10 = HMFBooleanToString();
  v11 = [v9 initWithName:@"isDefaultName" value:v10];
  v24[3] = v11;
  v12 = objc_alloc(MEMORY[0x1E69A29C8]);
  destinationUniqueIdentifiers = [(HMMediaGroup *)self destinationUniqueIdentifiers];
  v14 = [v12 initWithName:@"destinationIdentifiers" value:destinationUniqueIdentifiers];
  v24[4] = v14;
  v15 = objc_alloc(MEMORY[0x1E69A29C8]);
  associatedGroupIdentifier = [(HMMediaGroup *)self associatedGroupIdentifier];
  v17 = [v15 initWithName:@"associatedGroupIdentifier" value:associatedGroupIdentifier];
  v24[5] = v17;
  v18 = [MEMORY[0x1E695DEC8] arrayWithObjects:v24 count:6];

  v19 = *MEMORY[0x1E69E9840];

  return v18;
}

- (NSString)shortDescription
{
  v2 = objc_opt_class();

  return [v2 shortDescription];
}

- (id)logIdentifier
{
  identifier = [(HMMediaGroup *)self identifier];
  uUIDString = [identifier UUIDString];

  return uUIDString;
}

- (id)mediaSystemData
{
  selfCopy = self;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v3 = selfCopy;
  }

  else
  {
    v3 = 0;
  }

  v4 = v3;

  return v3;
}

- (NSArray)destinationIdentifiers
{
  destinationUniqueIdentifiers = [(HMMediaGroup *)self destinationUniqueIdentifiers];
  v3 = [destinationUniqueIdentifiers na_map:&__block_literal_global_41242];

  return v3;
}

- (HMMediaGroup)initWithIdentifier:(id)identifier parentIdentifier:(id)parentIdentifier name:(id)name defaultName:(BOOL)defaultName destinationIdentifiers:(id)identifiers associatedGroupIdentifier:(id)groupIdentifier
{
  identifierCopy = identifier;
  parentIdentifierCopy = parentIdentifier;
  nameCopy = name;
  identifiersCopy = identifiers;
  groupIdentifierCopy = groupIdentifier;
  if (!identifierCopy)
  {
    _HMFPreconditionFailure();
    goto LABEL_9;
  }

  if (!parentIdentifierCopy)
  {
LABEL_9:
    _HMFPreconditionFailure();
    goto LABEL_10;
  }

  if (!nameCopy)
  {
LABEL_10:
    _HMFPreconditionFailure();
    goto LABEL_11;
  }

  if (!identifiersCopy)
  {
LABEL_11:
    v23 = _HMFPreconditionFailure();
    [(HMHomeManager *)v23 endBatchNotificationsForDataSource:v24 reason:v25, v26];
    return result;
  }

  obj = groupIdentifier;
  v19 = groupIdentifierCopy;
  v29.receiver = self;
  v29.super_class = HMMediaGroup;
  v20 = [(HMMediaGroup *)&v29 init];
  v21 = v20;
  if (v20)
  {
    objc_storeStrong(&v20->_identifier, identifier);
    objc_storeStrong(&v21->_parentIdentifier, parentIdentifier);
    objc_storeStrong(&v21->_name, name);
    v21->_defaultName = defaultName;
    objc_storeStrong(&v21->_destinationUniqueIdentifiersInternal, identifiers);
    objc_storeStrong(&v21->_associatedGroupIdentifier, obj);
  }

  return v21;
}

@end