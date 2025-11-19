@interface HMMediaSystemData
+ (NSString)defaultGroupName;
+ (NSUUID)unknownDestinationSentinel;
- (BOOL)hasRoleIdentifier:(id)a3;
- (BOOL)isEqual:(id)a3;
- (HMMediaSystemData)initWithCoder:(id)a3;
- (HMMediaSystemData)initWithProtoBufferData:(id)a3;
- (id)attributeDescriptions;
- (id)destinationUniqueIdentifiers;
- (id)encodeToProtoBufferData;
- (id)mutableCopyWithZone:(_NSZone *)a3;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)a3;
@end

@implementation HMMediaSystemData

- (void)encodeWithCoder:(id)a3
{
  v4 = a3;
  v5 = [(HMMediaGroup *)self identifier];
  [v4 encodeObject:v5 forKey:@"HMMediaSystemDataIdentifierCodingKey"];

  v6 = [(HMMediaGroup *)self parentIdentifier];
  [v4 encodeObject:v6 forKey:@"HMMediaSystemDataParentIdentifierCodingKey"];

  v7 = [(HMMediaGroup *)self name];
  [v4 encodeObject:v7 forKey:@"HMMediaSystemDataNameCodingKey"];

  v8 = [MEMORY[0x1E696AD98] numberWithBool:{-[HMMediaGroup isDefaultName](self, "isDefaultName")}];
  [v4 encodeObject:v8 forKey:@"HMMediaSystemDataDefaultNameCodingKey"];

  v9 = [(HMMediaGroup *)self associatedGroupIdentifier];
  [v4 encodeObject:v9 forKey:@"HMMediaSystemDataAssociatedGroupIdentifierCodingKey"];

  v10 = [(HMMediaSystemData *)self leftDestinationIdentifier];
  [v4 encodeObject:v10 forKey:@"HMMediaSystemDataLeftDestinationIdentifierCodingKey"];

  v11 = [(HMMediaSystemData *)self rightDestinationIdentifier];
  [v4 encodeObject:v11 forKey:@"HMMediaSystemDataRightDestinationIdentifierCodingKey"];
}

- (HMMediaSystemData)initWithCoder:(id)a3
{
  v4 = a3;
  v5 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"HMMediaSystemDataIdentifierCodingKey"];
  v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"HMMediaSystemDataParentIdentifierCodingKey"];
  v7 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"HMMediaSystemDataNameCodingKey"];
  v8 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"HMMediaSystemDataDefaultNameCodingKey"];
  v9 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"HMMediaSystemDataAssociatedGroupIdentifierCodingKey"];
  v10 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"HMMediaSystemDataLeftDestinationIdentifierCodingKey"];
  v11 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"HMMediaSystemDataRightDestinationIdentifierCodingKey"];

  v12 = -[HMMediaSystemData initWithIdentifier:parentIdentifier:name:defaultName:associatedGroupIdentifier:leftDestinationIdentifier:rightDestinationIdentifier:](self, "initWithIdentifier:parentIdentifier:name:defaultName:associatedGroupIdentifier:leftDestinationIdentifier:rightDestinationIdentifier:", v5, v6, v7, [v8 BOOLValue], v9, v10, v11);
  return v12;
}

- (id)mutableCopyWithZone:(_NSZone *)a3
{
  v4 = [HMMutableMediaSystemData alloc];
  v5 = [(HMMediaGroup *)self identifier];
  v6 = [(HMMediaGroup *)self parentIdentifier];
  v7 = [(HMMediaGroup *)self name];
  v8 = [(HMMediaGroup *)self isDefaultName];
  v9 = [(HMMediaGroup *)self associatedGroupIdentifier];
  v10 = [(HMMediaSystemData *)self leftDestinationIdentifier];
  v11 = [(HMMediaSystemData *)self rightDestinationIdentifier];
  v12 = [(HMMediaSystemData *)v4 initWithIdentifier:v5 parentIdentifier:v6 name:v7 defaultName:v8 associatedGroupIdentifier:v9 leftDestinationIdentifier:v10 rightDestinationIdentifier:v11];

  return v12;
}

+ (NSUUID)unknownDestinationSentinel
{
  v2 = [objc_alloc(MEMORY[0x1E696AFB0]) initWithUUIDString:@"00000000-0000-0000-0000-000000000000"];

  return v2;
}

+ (NSString)defaultGroupName
{
  v2 = +[HMLocalization sharedManager];
  v3 = [v2 getLocalizedString:@"STEREO_PAIR"];

  return v3;
}

- (unint64_t)hash
{
  v3.receiver = self;
  v3.super_class = HMMediaSystemData;
  return [(HMMediaGroup *)&v3 hash];
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (self == v4)
  {
    v12 = 1;
  }

  else
  {
    v14.receiver = self;
    v14.super_class = HMMediaSystemData;
    if ([(HMMediaGroup *)&v14 isEqual:v4])
    {
      v5 = v4;
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v6 = v5;
      }

      else
      {
        v6 = 0;
      }

      v7 = v6;

      if (v7)
      {
        v8 = [(HMMediaSystemData *)self rightDestinationIdentifier];
        v9 = [(HMMediaSystemData *)v7 rightDestinationIdentifier];
        if ([v8 hmf_isEqualToUUID:v9])
        {
          v10 = [(HMMediaSystemData *)self leftDestinationIdentifier];
          v11 = [(HMMediaSystemData *)v7 leftDestinationIdentifier];
          v12 = [v10 hmf_isEqualToUUID:v11];
        }

        else
        {
          v12 = 0;
        }
      }

      else
      {
        v12 = 0;
      }
    }

    else
    {
      v12 = 0;
    }
  }

  return v12;
}

- (id)attributeDescriptions
{
  v15[2] = *MEMORY[0x1E69E9840];
  v14.receiver = self;
  v14.super_class = HMMediaSystemData;
  v3 = [(HMMediaGroup *)&v14 attributeDescriptions];
  v4 = [v3 mutableCopy];

  v5 = objc_alloc(MEMORY[0x1E69A29C8]);
  v6 = [(HMMediaSystemData *)self leftDestinationIdentifier];
  v7 = [v5 initWithName:@"leftDestinationIdentifier" value:v6];
  v15[0] = v7;
  v8 = objc_alloc(MEMORY[0x1E69A29C8]);
  v9 = [(HMMediaSystemData *)self rightDestinationIdentifier];
  v10 = [v8 initWithName:@"rightDestinationIdentifier" value:v9];
  v15[1] = v10;
  v11 = [MEMORY[0x1E695DEC8] arrayWithObjects:v15 count:2];
  [v4 addObjectsFromArray:v11];

  v12 = *MEMORY[0x1E69E9840];

  return v4;
}

- (id)encodeToProtoBufferData
{
  v3 = [HMMediaGroupProtoMediaGroupData alloc];
  v16.receiver = self;
  v16.super_class = HMMediaSystemData;
  v4 = [(HMMediaGroup *)&v16 encodeToProtoBufferData];
  v5 = [(HMMediaGroupProtoMediaGroupData *)v3 initWithData:v4];

  v6 = objc_alloc_init(HMMediaGroupProtoMediaGroupRole);
  v7 = objc_alloc_init(HMMediaGroupProtoMediaSystemRoles);
  [(HMMediaGroupProtoMediaGroupRole *)v6 setMediaSystem:v7];

  v8 = [(HMMediaSystemData *)self rightDestinationIdentifier];
  v9 = [v8 UUIDString];
  v10 = [(HMMediaGroupProtoMediaGroupRole *)v6 mediaSystem];
  [v10 setRightDestinationIdentifier:v9];

  v11 = [(HMMediaSystemData *)self leftDestinationIdentifier];
  v12 = [v11 UUIDString];
  v13 = [(HMMediaGroupProtoMediaGroupRole *)v6 mediaSystem];
  [v13 setLeftDestinationIdentifier:v12];

  [(HMMediaGroupProtoMediaGroupData *)v5 setGroupRole:v6];
  v14 = [(HMMediaGroupProtoMediaGroupData *)v5 data];

  return v14;
}

- (HMMediaSystemData)initWithProtoBufferData:(id)a3
{
  v43 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v38.receiver = self;
  v38.super_class = HMMediaSystemData;
  v5 = [(HMMediaGroup *)&v38 initClassWithProtoBufferData:v4];
  if (!v5)
  {
LABEL_21:
    v24 = v5;
    goto LABEL_22;
  }

  v6 = [[HMMediaGroupProtoMediaGroupData alloc] initWithData:v4];
  v7 = v6;
  if (!v6)
  {
    v18 = objc_autoreleasePoolPush();
    v19 = v5;
    v20 = HMFGetOSLogHandle();
    if (!os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_13;
    }

    v21 = HMFGetLogIdentifier();
    *buf = 138543618;
    v40 = v21;
    v41 = 2112;
    v42 = 0;
    v22 = "%{public}@Failed to decode event data: %@";
LABEL_11:
    _os_log_impl(&dword_19BB39000, v20, OS_LOG_TYPE_ERROR, v22, buf, 0x16u);
LABEL_12:

    goto LABEL_13;
  }

  if (![(HMMediaGroupProtoMediaGroupData *)v6 hasGroupRole])
  {
    v18 = objc_autoreleasePoolPush();
    v23 = v5;
    v20 = HMFGetOSLogHandle();
    if (!os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_13;
    }

    v21 = HMFGetLogIdentifier();
    *buf = 138543618;
    v40 = v21;
    v41 = 2112;
    v42 = v7;
    v22 = "%{public}@Missing field=groupRole from data=%@";
    goto LABEL_11;
  }

  v8 = [(HMMediaGroupProtoMediaGroupData *)v7 groupRole];
  v9 = [v8 hasMediaSystem];

  if (v9)
  {
    v10 = [(HMMediaGroupProtoMediaGroupData *)v7 groupRole];
    v11 = [v10 mediaSystem];
    v12 = [v11 hasRightDestinationIdentifier];

    if (v12)
    {
      v13 = objc_alloc(MEMORY[0x1E696AFB0]);
      v14 = [(HMMediaGroupProtoMediaGroupData *)v7 groupRole];
      v15 = [v14 mediaSystem];
      v16 = [v15 rightDestinationIdentifier];
      v17 = [v13 initWithUUIDString:v16];
    }

    else
    {
      v17 = 0;
    }

    objc_storeStrong(v5 + 8, v17);
    v27 = [(HMMediaGroupProtoMediaGroupData *)v7 groupRole];
    v28 = [v27 mediaSystem];
    v29 = [v28 hasLeftDestinationIdentifier];

    if (v29)
    {
      v30 = objc_alloc(MEMORY[0x1E696AFB0]);
      v31 = [(HMMediaGroupProtoMediaGroupData *)v7 groupRole];
      v32 = [v31 mediaSystem];
      v33 = [v32 leftDestinationIdentifier];
      v34 = [v30 initWithUUIDString:v33];
    }

    else
    {
      v34 = 0;
    }

    v35 = v5[7];
    v5[7] = v34;

    goto LABEL_21;
  }

  v18 = objc_autoreleasePoolPush();
  v25 = v5;
  v20 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
  {
    v21 = HMFGetLogIdentifier();
    v26 = [(HMMediaGroupProtoMediaGroupData *)v7 groupRole];
    *buf = 138543618;
    v40 = v21;
    v41 = 2112;
    v42 = v26;
    _os_log_impl(&dword_19BB39000, v20, OS_LOG_TYPE_ERROR, "%{public}@Missing field=mediaSystem from role=%@", buf, 0x16u);

    goto LABEL_12;
  }

LABEL_13:

  objc_autoreleasePoolPop(v18);
  v24 = 0;
LABEL_22:

  v36 = *MEMORY[0x1E69E9840];
  return v24;
}

- (BOOL)hasRoleIdentifier:(id)a3
{
  v4 = a3;
  v5 = [(HMMediaSystemData *)self rightDestinationIdentifier];
  if ([v5 hmf_isEqualToUUID:v4])
  {
    v6 = 1;
  }

  else
  {
    v7 = [(HMMediaSystemData *)self leftDestinationIdentifier];
    v6 = [v7 hmf_isEqualToUUID:v4];
  }

  return v6;
}

- (id)destinationUniqueIdentifiers
{
  v8[2] = *MEMORY[0x1E69E9840];
  v3 = [(HMMediaSystemData *)self leftDestinationIdentifier];
  v8[0] = v3;
  v4 = [(HMMediaSystemData *)self rightDestinationIdentifier];
  v8[1] = v4;
  v5 = [MEMORY[0x1E695DEC8] arrayWithObjects:v8 count:2];

  v6 = *MEMORY[0x1E69E9840];

  return v5;
}

@end