@interface HMMediaGroup
+ (id)logCategory;
+ (id)shortDescription;
- (BOOL)isEqual:(id)a3;
- (HMMediaGroup)initWithCoder:(id)a3;
- (HMMediaGroup)initWithIdentifier:(id)a3 parentIdentifier:(id)a4 name:(id)a5 defaultName:(BOOL)a6 destinationIdentifiers:(id)a7 associatedGroupIdentifier:(id)a8;
- (HMMediaGroup)initWithProtoBufferData:(id)a3;
- (NSArray)attributeDescriptions;
- (NSArray)destinationIdentifiers;
- (NSString)shortDescription;
- (id)encodeToProtoBufferData;
- (id)initClassWithProtoBufferData:(id)a3;
- (id)logIdentifier;
- (id)mediaSystemData;
- (id)mutableCopyWithZone:(_NSZone *)a3;
- (unint64_t)hash;
- (void)encodeToProtoBufferDataWithEvent:(id)a3;
- (void)encodeWithCoder:(id)a3;
@end

@implementation HMMediaGroup

- (id)encodeToProtoBufferData
{
  v3 = objc_alloc_init(HMMediaGroupProtoMediaGroupData);
  [(HMMediaGroup *)self encodeToProtoBufferDataWithEvent:v3];
  v4 = [(HMMediaGroupProtoMediaGroupData *)v3 data];

  return v4;
}

- (void)encodeToProtoBufferDataWithEvent:(id)a3
{
  v4 = a3;
  v5 = [(HMMediaGroup *)self identifier];
  v6 = [v5 UUIDString];
  [v4 setIdentifier:v6];

  v7 = [(HMMediaGroup *)self parentIdentifier];
  v8 = [v7 UUIDString];
  [v4 setParentIdentifier:v8];

  v9 = [(HMMediaGroup *)self name];
  [v4 setName:v9];

  [v4 setIsDefaultName:{-[HMMediaGroup isDefaultName](self, "isDefaultName")}];
  v10 = [(HMMediaGroup *)self destinationIdentifiers];
  v11 = [v10 mutableCopy];
  [v4 setDestinationIdentifiers:v11];

  v13 = [(HMMediaGroup *)self associatedGroupIdentifier];
  v12 = [v13 UUIDString];
  [v4 setAssociatedGroupIdentifier:v12];
}

- (HMMediaGroup)initWithProtoBufferData:(id)a3
{
  v22 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = [[HMMediaGroupProtoMediaGroupData alloc] initWithData:v4];
  v6 = v5;
  if (v5)
  {
    if (-[HMMediaGroupProtoMediaGroupData hasGroupRole](v5, "hasGroupRole") && (-[HMMediaGroupProtoMediaGroupData groupRole](v6, "groupRole"), v7 = objc_claimAutoreleasedReturnValue(), v8 = [v7 hasMediaSystem], v7, v8))
    {
      v9 = [[HMMediaSystemData alloc] initWithProtoBufferData:v4];
    }

    else
    {
      v9 = [(HMMediaGroup *)self initClassWithProtoBufferData:v4];
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

- (id)initClassWithProtoBufferData:(id)a3
{
  v45 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = [[HMMediaGroupProtoMediaGroupData alloc] initWithData:v4];
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
    v16 = 0;
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
  v8 = [(HMMediaGroupProtoMediaGroupData *)v6 identifier];
  v9 = [v7 initWithUUIDString:v8];

  if ([(HMMediaGroupProtoMediaGroupData *)v6 hasName])
  {
    v10 = [(HMMediaGroupProtoMediaGroupData *)v6 name];
    if ([(HMMediaGroupProtoMediaGroupData *)v6 hasIsDefaultName])
    {
      v11 = [(HMMediaGroupProtoMediaGroupData *)v6 isDefaultName];
    }

    else
    {
      v11 = 0;
    }

    if ([(HMMediaGroupProtoMediaGroupData *)v6 hasParentIdentifier])
    {
      v20 = objc_alloc(MEMORY[0x1E696AFB0]);
      v21 = [(HMMediaGroupProtoMediaGroupData *)v6 parentIdentifier];
      v22 = [v20 initWithUUIDString:v21];

      v23 = [(HMMediaGroupProtoMediaGroupData *)v6 destinationIdentifiers];
      if (v23)
      {
        v24 = [(HMMediaGroupProtoMediaGroupData *)v6 destinationIdentifiers];
      }

      else
      {
        v24 = MEMORY[0x1E695E0F0];
      }

      v28 = [v24 na_map:&__block_literal_global_84_41185];
      if ([(HMMediaGroupProtoMediaGroupData *)v6 hasAssociatedGroupIdentifier])
      {
        v29 = objc_alloc(MEMORY[0x1E696AFB0]);
        [(HMMediaGroupProtoMediaGroupData *)v6 associatedGroupIdentifier];
        v38 = v24;
        v30 = v9;
        v31 = v22;
        v32 = v11;
        v34 = v33 = v10;
        v35 = [v29 initWithUUIDString:v34];

        v10 = v33;
        v11 = v32;
        v22 = v31;
        v9 = v30;
        v24 = v38;
      }

      else
      {
        v35 = 0;
      }

      self = [(HMMediaGroup *)self initWithIdentifier:v9 parentIdentifier:v22 name:v10 defaultName:v11 destinationIdentifiers:v28 associatedGroupIdentifier:v35];

      v16 = self;
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
      v16 = 0;
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
    v16 = 0;
  }

LABEL_29:
  v36 = *MEMORY[0x1E69E9840];
  return v16;
}

id __45__HMMediaGroup_initClassWithProtoBufferData___block_invoke(uint64_t a1, void *a2)
{
  v2 = MEMORY[0x1E696AFB0];
  v3 = a2;
  v4 = [[v2 alloc] initWithUUIDString:v3];

  return v4;
}

- (void)encodeWithCoder:(id)a3
{
  v4 = a3;
  v5 = [(HMMediaGroup *)self identifier];
  [v4 encodeObject:v5 forKey:@"HMMediaGroupIdentifierCodingKey"];

  v6 = [(HMMediaGroup *)self parentIdentifier];
  [v4 encodeObject:v6 forKey:@"HMMediaGroupParentIdentifierCodingKey"];

  v7 = [(HMMediaGroup *)self name];
  [v4 encodeObject:v7 forKey:@"HMMediaGroupNameCodingKey"];

  v8 = [MEMORY[0x1E696AD98] numberWithBool:{-[HMMediaGroup isDefaultName](self, "isDefaultName")}];
  [v4 encodeObject:v8 forKey:@"HMMediaGroupDefaultNameCodingKey"];

  v9 = [(HMMediaGroup *)self destinationIdentifiers];
  [v4 encodeObject:v9 forKey:@"HMMediaGroupDestinationIdentifiersCodingKey"];

  v10 = [(HMMediaGroup *)self associatedGroupIdentifier];
  [v4 encodeObject:v10 forKey:@"HMMediaGroupAssociatedGroupIdentifierCodingKey"];
}

- (HMMediaGroup)initWithCoder:(id)a3
{
  v26[2] = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"HMMediaGroupIdentifierCodingKey"];
  v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"HMMediaGroupParentIdentifierCodingKey"];
  v7 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"HMMediaGroupNameCodingKey"];
  v8 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"HMMediaGroupDefaultNameCodingKey"];
  v9 = MEMORY[0x1E695DFD8];
  v26[0] = objc_opt_class();
  v26[1] = objc_opt_class();
  v10 = [MEMORY[0x1E695DEC8] arrayWithObjects:v26 count:2];
  v11 = [v9 setWithArray:v10];
  v12 = [v4 decodeObjectOfClasses:v11 forKey:@"HMMediaGroupDestinationIdentifiersCodingKey"];

  v13 = [v12 na_map:&__block_literal_global_75];
  v14 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"HMMediaGroupAssociatedGroupIdentifierCodingKey"];
  if (!v6)
  {
    v21 = self;
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
    self = v21;
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
  v2 = [(HMMediaGroup *)self identifier];
  v3 = [v2 hash];

  return v3;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (self == v4)
  {
    v18 = 1;
  }

  else
  {
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
    if (v6 && ((v7 = objc_opt_class(), ([v7 isEqual:objc_opt_class()] & 1) == 0) && (v8 = objc_opt_class(), !objc_msgSend(v8, "isEqual:", objc_opt_class())) || (v9 = objc_opt_class(), (objc_msgSend(v9, "isEqual:", objc_opt_class()) & 1) != 0) || (v10 = objc_opt_class(), objc_msgSend(v10, "isEqual:", objc_opt_class()))))
    {
      v11 = [(HMMediaGroup *)self identifier];
      v12 = [(HMMediaGroup *)v6 identifier];
      if ([v11 hmf_isEqualToUUID:v12])
      {
        v13 = [(HMMediaGroup *)self parentIdentifier];
        v14 = [(HMMediaGroup *)v6 parentIdentifier];
        if ([v13 hmf_isEqualToUUID:v14])
        {
          v15 = [(HMMediaGroup *)self name];
          v16 = [(HMMediaGroup *)v6 name];
          if ([v15 isEqualToString:v16] && (v17 = -[HMMediaGroup isDefaultName](self, "isDefaultName"), v17 == -[HMMediaGroup isDefaultName](v6, "isDefaultName")))
          {
            v19 = MEMORY[0x1E695DFD8];
            v30 = [(HMMediaGroup *)self destinationIdentifiers];
            v20 = [v19 setWithArray:?];
            v28 = MEMORY[0x1E695DFD8];
            v27 = [(HMMediaGroup *)v6 destinationIdentifiers];
            v21 = [v28 setWithArray:?];
            v29 = v20;
            v22 = v20;
            v23 = v21;
            if ([v22 isEqual:v21])
            {
              v26 = [(HMMediaGroup *)self associatedGroupIdentifier];
              v25 = [(HMMediaGroup *)v6 associatedGroupIdentifier];
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

- (id)mutableCopyWithZone:(_NSZone *)a3
{
  v4 = [HMMutableMediaGroup alloc];
  v5 = [(HMMediaGroup *)self identifier];
  v6 = [(HMMediaGroup *)self parentIdentifier];
  v7 = [(HMMediaGroup *)self name];
  v8 = [(HMMediaGroup *)self isDefaultName];
  v9 = [(HMMediaGroup *)self destinationUniqueIdentifiers];
  v10 = [(HMMediaGroup *)self associatedGroupIdentifier];
  v11 = [(HMMediaGroup *)v4 initWithIdentifier:v5 parentIdentifier:v6 name:v7 defaultName:v8 destinationIdentifiers:v9 associatedGroupIdentifier:v10];

  return v11;
}

- (NSArray)attributeDescriptions
{
  v24[6] = *MEMORY[0x1E69E9840];
  v3 = objc_alloc(MEMORY[0x1E69A29C8]);
  v23 = [(HMMediaGroup *)self identifier];
  v22 = [v3 initWithName:@"identifier" value:v23];
  v24[0] = v22;
  v4 = objc_alloc(MEMORY[0x1E69A29C8]);
  v21 = [(HMMediaGroup *)self parentIdentifier];
  v5 = [v4 initWithName:@"parentIdentifier" value:v21];
  v24[1] = v5;
  v6 = objc_alloc(MEMORY[0x1E69A29C8]);
  v7 = [(HMMediaGroup *)self name];
  v8 = [v6 initWithName:@"name" value:v7];
  v24[2] = v8;
  v9 = objc_alloc(MEMORY[0x1E69A29C8]);
  [(HMMediaGroup *)self isDefaultName];
  v10 = HMFBooleanToString();
  v11 = [v9 initWithName:@"isDefaultName" value:v10];
  v24[3] = v11;
  v12 = objc_alloc(MEMORY[0x1E69A29C8]);
  v13 = [(HMMediaGroup *)self destinationUniqueIdentifiers];
  v14 = [v12 initWithName:@"destinationIdentifiers" value:v13];
  v24[4] = v14;
  v15 = objc_alloc(MEMORY[0x1E69A29C8]);
  v16 = [(HMMediaGroup *)self associatedGroupIdentifier];
  v17 = [v15 initWithName:@"associatedGroupIdentifier" value:v16];
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
  v2 = [(HMMediaGroup *)self identifier];
  v3 = [v2 UUIDString];

  return v3;
}

- (id)mediaSystemData
{
  v2 = self;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v3 = v2;
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
  v2 = [(HMMediaGroup *)self destinationUniqueIdentifiers];
  v3 = [v2 na_map:&__block_literal_global_41242];

  return v3;
}

- (HMMediaGroup)initWithIdentifier:(id)a3 parentIdentifier:(id)a4 name:(id)a5 defaultName:(BOOL)a6 destinationIdentifiers:(id)a7 associatedGroupIdentifier:(id)a8
{
  v14 = a3;
  v15 = a4;
  v16 = a5;
  v17 = a7;
  v18 = a8;
  if (!v14)
  {
    _HMFPreconditionFailure();
    goto LABEL_9;
  }

  if (!v15)
  {
LABEL_9:
    _HMFPreconditionFailure();
    goto LABEL_10;
  }

  if (!v16)
  {
LABEL_10:
    _HMFPreconditionFailure();
    goto LABEL_11;
  }

  if (!v17)
  {
LABEL_11:
    v23 = _HMFPreconditionFailure();
    [(HMHomeManager *)v23 endBatchNotificationsForDataSource:v24 reason:v25, v26];
    return result;
  }

  obj = a8;
  v19 = v18;
  v29.receiver = self;
  v29.super_class = HMMediaGroup;
  v20 = [(HMMediaGroup *)&v29 init];
  v21 = v20;
  if (v20)
  {
    objc_storeStrong(&v20->_identifier, a3);
    objc_storeStrong(&v21->_parentIdentifier, a4);
    objc_storeStrong(&v21->_name, a5);
    v21->_defaultName = a6;
    objc_storeStrong(&v21->_destinationUniqueIdentifiersInternal, a7);
    objc_storeStrong(&v21->_associatedGroupIdentifier, obj);
  }

  return v21;
}

@end