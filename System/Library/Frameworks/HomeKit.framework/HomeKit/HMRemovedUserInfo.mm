@interface HMRemovedUserInfo
+ (id)shortDescription;
- (BOOL)isEqual:(id)equal;
- (HMRemovedUserInfo)initWithCoder:(id)coder;
- (HMRemovedUserInfo)initWithName:(id)name userUUID:(id)d userID:(id)iD dateRemoved:(id)removed;
- (NSArray)attributeDescriptions;
- (NSString)shortDescription;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)coder;
@end

@implementation HMRemovedUserInfo

- (NSArray)attributeDescriptions
{
  v23[3] = *MEMORY[0x1E69E9840];
  v3 = MEMORY[0x1E695DF70];
  v4 = objc_alloc(MEMORY[0x1E69A29C8]);
  name = [(HMRemovedUserInfo *)self name];
  defaultFormatter = [MEMORY[0x1E69A2A48] defaultFormatter];
  v7 = [v4 initWithName:@"name" value:name options:2 formatter:defaultFormatter];
  v8 = objc_alloc(MEMORY[0x1E69A29C8]);
  userUUID = [(HMRemovedUserInfo *)self userUUID];
  v10 = [v8 initWithName:@"userUUID" value:userUUID];
  v23[1] = v10;
  v11 = objc_alloc(MEMORY[0x1E69A29C8]);
  dateRemoved = [(HMRemovedUserInfo *)self dateRemoved];
  v13 = [v11 initWithName:@"dateRemoved" value:dateRemoved];
  v23[2] = v13;
  v14 = [MEMORY[0x1E695DEC8] arrayWithObjects:v23 count:3];
  v15 = [v3 arrayWithArray:v14];

  userID = [(HMRemovedUserInfo *)self userID];

  if (userID)
  {
    v17 = objc_alloc(MEMORY[0x1E69A29C8]);
    userID2 = [(HMRemovedUserInfo *)self userID];
    defaultFormatter2 = [MEMORY[0x1E69A2A48] defaultFormatter];
    v20 = [v17 initWithName:@"userID" value:userID2 options:2 formatter:defaultFormatter2];
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

- (HMRemovedUserInfo)initWithCoder:(id)coder
{
  v27 = *MEMORY[0x1E69E9840];
  coderCopy = coder;
  v5 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"HMRemovedUserInfoCodingKeyName"];
  v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"HMRemovedUserInfoCodingKeyUserUUID"];
  v7 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"HMRemovedUserInfoCodingKeyUserID"];
  v8 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"HMRemovedUserInfoCodingKeyDateRemoved"];
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
    selfCopy = self;
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
    selfCopy = [(HMRemovedUserInfo *)self initWithName:v5 userUUID:v6 userID:v7 dateRemoved:v8];
    v16 = selfCopy;
  }

  v17 = *MEMORY[0x1E69E9840];
  return v16;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  name = [(HMRemovedUserInfo *)self name];
  [coderCopy encodeObject:name forKey:@"HMRemovedUserInfoCodingKeyName"];

  userUUID = [(HMRemovedUserInfo *)self userUUID];
  [coderCopy encodeObject:userUUID forKey:@"HMRemovedUserInfoCodingKeyUserUUID"];

  userID = [(HMRemovedUserInfo *)self userID];
  [coderCopy encodeObject:userID forKey:@"HMRemovedUserInfoCodingKeyUserID"];

  dateRemoved = [(HMRemovedUserInfo *)self dateRemoved];
  [coderCopy encodeObject:dateRemoved forKey:@"HMRemovedUserInfoCodingKeyDateRemoved"];
}

- (unint64_t)hash
{
  name = [(HMRemovedUserInfo *)self name];
  v4 = [name hash];
  userUUID = [(HMRemovedUserInfo *)self userUUID];
  v6 = [userUUID hash] ^ v4;
  userID = [(HMRemovedUserInfo *)self userID];
  v8 = [userID hash];
  dateRemoved = [(HMRemovedUserInfo *)self dateRemoved];
  v10 = v8 ^ [dateRemoved hash];

  return v6 ^ v10;
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
  if (!v6)
  {
    goto LABEL_9;
  }

  name = [(HMRemovedUserInfo *)self name];
  name2 = [v6 name];
  v9 = HMFEqualObjects();

  if (!v9)
  {
    goto LABEL_9;
  }

  userUUID = [(HMRemovedUserInfo *)self userUUID];
  userUUID2 = [v6 userUUID];
  v12 = HMFEqualObjects();

  if (!v12)
  {
    goto LABEL_9;
  }

  userID = [(HMRemovedUserInfo *)self userID];
  userID2 = [v6 userID];
  v15 = HMFEqualObjects();

  if (v15)
  {
    dateRemoved = [(HMRemovedUserInfo *)self dateRemoved];
    dateRemoved2 = [v6 dateRemoved];
    v18 = HMFEqualObjects();
  }

  else
  {
LABEL_9:
    v18 = 0;
  }

  return v18;
}

- (HMRemovedUserInfo)initWithName:(id)name userUUID:(id)d userID:(id)iD dateRemoved:(id)removed
{
  nameCopy = name;
  dCopy = d;
  iDCopy = iD;
  removedCopy = removed;
  v24.receiver = self;
  v24.super_class = HMRemovedUserInfo;
  v14 = [(HMRemovedUserInfo *)&v24 init];
  if (v14)
  {
    v15 = [nameCopy copy];
    name = v14->_name;
    v14->_name = v15;

    v17 = [dCopy copy];
    userUUID = v14->_userUUID;
    v14->_userUUID = v17;

    v19 = [iDCopy copy];
    userID = v14->_userID;
    v14->_userID = v19;

    v21 = [removedCopy copy];
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