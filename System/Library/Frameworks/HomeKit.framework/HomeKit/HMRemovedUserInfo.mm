@interface HMRemovedUserInfo
+ (id)shortDescription;
- (BOOL)isEqual:(id)a3;
- (HMRemovedUserInfo)initWithCoder:(id)a3;
- (HMRemovedUserInfo)initWithName:(id)a3 userUUID:(id)a4 userID:(id)a5 dateRemoved:(id)a6;
- (NSArray)attributeDescriptions;
- (NSString)shortDescription;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)a3;
@end

@implementation HMRemovedUserInfo

- (NSArray)attributeDescriptions
{
  v23[3] = *MEMORY[0x1E69E9840];
  v3 = MEMORY[0x1E695DF70];
  v4 = objc_alloc(MEMORY[0x1E69A29C8]);
  v5 = [(HMRemovedUserInfo *)self name];
  v6 = [MEMORY[0x1E69A2A48] defaultFormatter];
  v7 = [v4 initWithName:@"name" value:v5 options:2 formatter:v6];
  v8 = objc_alloc(MEMORY[0x1E69A29C8]);
  v9 = [(HMRemovedUserInfo *)self userUUID];
  v10 = [v8 initWithName:@"userUUID" value:v9];
  v23[1] = v10;
  v11 = objc_alloc(MEMORY[0x1E69A29C8]);
  v12 = [(HMRemovedUserInfo *)self dateRemoved];
  v13 = [v11 initWithName:@"dateRemoved" value:v12];
  v23[2] = v13;
  v14 = [MEMORY[0x1E695DEC8] arrayWithObjects:v23 count:3];
  v15 = [v3 arrayWithArray:v14];

  v16 = [(HMRemovedUserInfo *)self userID];

  if (v16)
  {
    v17 = objc_alloc(MEMORY[0x1E69A29C8]);
    v18 = [(HMRemovedUserInfo *)self userID];
    v19 = [MEMORY[0x1E69A2A48] defaultFormatter];
    v20 = [v17 initWithName:@"userID" value:v18 options:2 formatter:v19];
    [v15 addObject:v20];
  }

  v21 = *MEMORY[0x1E69E9840];

  return v15;
}

- (NSString)shortDescription
{
  v2 = objc_opt_class();

  return [v2 shortDescription];
}

- (HMRemovedUserInfo)initWithCoder:(id)a3
{
  v27 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"HMRemovedUserInfoCodingKeyName"];
  v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"HMRemovedUserInfoCodingKeyUserUUID"];
  v7 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"HMRemovedUserInfoCodingKeyUserID"];
  v8 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"HMRemovedUserInfoCodingKeyDateRemoved"];
  v9 = v8;
  if (v5)
  {
    v10 = v6 == 0;
  }

  else
  {
    v10 = 1;
  }

  if (v10 || v8 == 0)
  {
    v12 = objc_autoreleasePoolPush();
    v15 = self;
    v13 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
    {
      v14 = HMFGetLogIdentifier();
      v19 = 138544130;
      v20 = v14;
      v21 = 2112;
      v22 = v5;
      v23 = 2112;
      v24 = v6;
      v25 = 2112;
      v26 = v9;
      _os_log_impl(&dword_19BB39000, v13, OS_LOG_TYPE_ERROR, "%{public}@Could not initialize due to nil object after decoding name: %@, userUUID: %@, dateRemoved: %@", &v19, 0x2Au);
    }

    objc_autoreleasePoolPop(v12);
    v16 = 0;
  }

  else
  {
    v15 = [(HMRemovedUserInfo *)self initWithName:v5 userUUID:v6 userID:v7 dateRemoved:v8];
    v16 = v15;
  }

  v17 = *MEMORY[0x1E69E9840];
  return v16;
}

- (void)encodeWithCoder:(id)a3
{
  v4 = a3;
  v5 = [(HMRemovedUserInfo *)self name];
  [v4 encodeObject:v5 forKey:@"HMRemovedUserInfoCodingKeyName"];

  v6 = [(HMRemovedUserInfo *)self userUUID];
  [v4 encodeObject:v6 forKey:@"HMRemovedUserInfoCodingKeyUserUUID"];

  v7 = [(HMRemovedUserInfo *)self userID];
  [v4 encodeObject:v7 forKey:@"HMRemovedUserInfoCodingKeyUserID"];

  v8 = [(HMRemovedUserInfo *)self dateRemoved];
  [v4 encodeObject:v8 forKey:@"HMRemovedUserInfoCodingKeyDateRemoved"];
}

- (unint64_t)hash
{
  v3 = [(HMRemovedUserInfo *)self name];
  v4 = [v3 hash];
  v5 = [(HMRemovedUserInfo *)self userUUID];
  v6 = [v5 hash] ^ v4;
  v7 = [(HMRemovedUserInfo *)self userID];
  v8 = [v7 hash];
  v9 = [(HMRemovedUserInfo *)self dateRemoved];
  v10 = v8 ^ [v9 hash];

  return v6 ^ v10;
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
  if (!v6)
  {
    goto LABEL_9;
  }

  v7 = [(HMRemovedUserInfo *)self name];
  v8 = [v6 name];
  v9 = HMFEqualObjects();

  if (!v9)
  {
    goto LABEL_9;
  }

  v10 = [(HMRemovedUserInfo *)self userUUID];
  v11 = [v6 userUUID];
  v12 = HMFEqualObjects();

  if (!v12)
  {
    goto LABEL_9;
  }

  v13 = [(HMRemovedUserInfo *)self userID];
  v14 = [v6 userID];
  v15 = HMFEqualObjects();

  if (v15)
  {
    v16 = [(HMRemovedUserInfo *)self dateRemoved];
    v17 = [v6 dateRemoved];
    v18 = HMFEqualObjects();
  }

  else
  {
LABEL_9:
    v18 = 0;
  }

  return v18;
}

- (HMRemovedUserInfo)initWithName:(id)a3 userUUID:(id)a4 userID:(id)a5 dateRemoved:(id)a6
{
  v10 = a3;
  v11 = a4;
  v12 = a5;
  v13 = a6;
  v24.receiver = self;
  v24.super_class = HMRemovedUserInfo;
  v14 = [(HMRemovedUserInfo *)&v24 init];
  if (v14)
  {
    v15 = [v10 copy];
    name = v14->_name;
    v14->_name = v15;

    v17 = [v11 copy];
    userUUID = v14->_userUUID;
    v14->_userUUID = v17;

    v19 = [v12 copy];
    userID = v14->_userID;
    v14->_userID = v19;

    v21 = [v13 copy];
    dateRemoved = v14->_dateRemoved;
    v14->_dateRemoved = v21;
  }

  return v14;
}

+ (id)shortDescription
{
  v2 = objc_opt_class();

  return NSStringFromClass(v2);
}

@end