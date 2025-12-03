@interface HMMediaSystemBuilderPayload
+ (BOOL)decodeComponentData:(id)data leftComponentUUID:(id *)d leftAccessoryUUID:(id *)iD rightComponentUUID:(id *)uID rightAccessoryUUID:(id *)uUID;
+ (id)encodeComponentDataWithLeftComponentUUID:(id)d leftAccessoryUUID:(id)iD rightComponentUUID:(id)uID rightAccessoryUUID:(id)uUID;
- (BOOL)isEqual:(id)equal;
- (HMMediaSystemBuilderPayload)initWithPayload:(id)payload;
- (HMMediaSystemBuilderPayload)initWithUUID:(id)d name:(id)name configuredName:(id)configuredName leftComponentUUID:(id)iD rightComponentUUID:(id)uID leftAccessoryUUID:(id)uUID rightAccessoryUUID:(id)accessoryUUID sessionID:(id)self0;
- (id)payloadCopy;
- (unint64_t)hash;
@end

@implementation HMMediaSystemBuilderPayload

- (unint64_t)hash
{
  uuid = [(HMMediaSystemBuilderPayload *)self uuid];
  v3 = [uuid hash];

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
    if (v6)
    {
      uuid = [(HMMediaSystemBuilderPayload *)self uuid];
      uuid2 = [(HMMediaSystemBuilderPayload *)v6 uuid];
      if ([uuid hmf_isEqualToUUID:uuid2])
      {
        leftComponentUUID = [(HMMediaSystemBuilderPayload *)self leftComponentUUID];
        leftComponentUUID2 = [(HMMediaSystemBuilderPayload *)v6 leftComponentUUID];
        if ([leftComponentUUID hmf_isEqualToUUID:leftComponentUUID2])
        {
          rightComponentUUID = [(HMMediaSystemBuilderPayload *)self rightComponentUUID];
          rightComponentUUID2 = [(HMMediaSystemBuilderPayload *)v6 rightComponentUUID];
          if ([rightComponentUUID hmf_isEqualToUUID:rightComponentUUID2])
          {
            leftAccessoryUUID = [(HMMediaSystemBuilderPayload *)self leftAccessoryUUID];
            leftAccessoryUUID2 = [(HMMediaSystemBuilderPayload *)v6 leftAccessoryUUID];
            v28 = leftAccessoryUUID;
            if ([leftAccessoryUUID hmf_isEqualToUUID:leftAccessoryUUID2])
            {
              rightAccessoryUUID = [(HMMediaSystemBuilderPayload *)self rightAccessoryUUID];
              rightAccessoryUUID2 = [(HMMediaSystemBuilderPayload *)v6 rightAccessoryUUID];
              v26 = rightAccessoryUUID;
              if ([rightAccessoryUUID hmf_isEqualToUUID:rightAccessoryUUID2])
              {
                sessionID = [(HMMediaSystemBuilderPayload *)self sessionID];
                sessionID2 = [(HMMediaSystemBuilderPayload *)v6 sessionID];
                v24 = sessionID;
                if ([sessionID hmf_isEqualToUUID:sessionID2] && (-[HMMediaSystemBuilderPayload name](self, "name"), v21 = objc_claimAutoreleasedReturnValue(), -[HMMediaSystemBuilderPayload name](v6, "name"), v16 = objc_claimAutoreleasedReturnValue(), v20 = HMFEqualObjects(), v16, v21, v20))
                {
                  configuredName = [(HMMediaSystemBuilderPayload *)self configuredName];
                  configuredName2 = [(HMMediaSystemBuilderPayload *)v6 configuredName];
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

- (id)payloadCopy
{
  v20[5] = *MEMORY[0x1E69E9840];
  leftComponentUUID = [(HMMediaSystemBuilderPayload *)self leftComponentUUID];
  leftAccessoryUUID = [(HMMediaSystemBuilderPayload *)self leftAccessoryUUID];
  rightComponentUUID = [(HMMediaSystemBuilderPayload *)self rightComponentUUID];
  rightAccessoryUUID = [(HMMediaSystemBuilderPayload *)self rightAccessoryUUID];
  v7 = [HMMediaSystemBuilderPayload encodeComponentDataWithLeftComponentUUID:leftComponentUUID leftAccessoryUUID:leftAccessoryUUID rightComponentUUID:rightComponentUUID rightAccessoryUUID:rightAccessoryUUID];

  v19[0] = kMediaSystemUUIDCodingKey;
  uuid = [(HMMediaSystemBuilderPayload *)self uuid];
  uUIDString = [uuid UUIDString];
  v20[0] = uUIDString;
  v19[1] = kMediaSystemNameCodingKey;
  name = [(HMMediaSystemBuilderPayload *)self name];
  null = name;
  if (!name)
  {
    null = [MEMORY[0x1E695DFB0] null];
  }

  v20[1] = null;
  v19[2] = kMediaSystemConfiguredNameCodingKey;
  configuredName = [(HMMediaSystemBuilderPayload *)self configuredName];
  null2 = configuredName;
  if (!configuredName)
  {
    null2 = [MEMORY[0x1E695DFB0] null];
  }

  v20[2] = null2;
  v20[3] = v7;
  v19[3] = kMediaSystemComponentsCodingKey;
  v19[4] = kMediaSystemBuilderSessionIDKey;
  sessionID = [(HMMediaSystemBuilderPayload *)self sessionID];
  uUIDString2 = [sessionID UUIDString];
  v20[4] = uUIDString2;
  v16 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v20 forKeys:v19 count:5];

  if (!configuredName)
  {
  }

  if (!name)
  {
  }

  v17 = *MEMORY[0x1E69E9840];

  return v16;
}

- (HMMediaSystemBuilderPayload)initWithPayload:(id)payload
{
  v27 = *MEMORY[0x1E69E9840];
  payloadCopy = payload;
  v4 = [payloadCopy hmf_UUIDForKey:kMediaSystemUUIDCodingKey];
  v5 = [payloadCopy hmf_stringForKey:kMediaSystemNameCodingKey];
  v6 = [payloadCopy hmf_stringForKey:kMediaSystemConfiguredNameCodingKey];
  v7 = [payloadCopy hmf_UUIDForKey:kMediaSystemBuilderSessionIDKey];
  v21 = [payloadCopy hmf_arrayForKey:kMediaSystemComponentsCodingKey];
  [HMMediaSystemBuilderPayload decodeComponentData:"decodeComponentData:leftComponentUUID:leftAccessoryUUID:rightComponentUUID:rightAccessoryUUID:" leftComponentUUID:? leftAccessoryUUID:? rightComponentUUID:? rightAccessoryUUID:?];
  v8 = 0;
  v9 = 0;
  v10 = 0;
  v11 = 0;
  v12 = v11;
  if (v4 && v7 && v8 && v10 && v9 && v11)
  {
    v13 = [(HMMediaSystemBuilderPayload *)self initWithUUID:v4 name:v5 configuredName:v6 leftComponentUUID:v8 rightComponentUUID:v10 leftAccessoryUUID:v9 rightAccessoryUUID:v11 sessionID:v7];
    self = v13;
  }

  else
  {
    v19 = v4;
    v20 = v5;
    v14 = objc_autoreleasePoolPush();
    v15 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
    {
      v16 = HMFGetLogIdentifier();
      *buf = 138543618;
      v24 = v16;
      v25 = 2112;
      v26 = payloadCopy;
      _os_log_impl(&dword_19BB39000, v15, OS_LOG_TYPE_ERROR, "%{public}@Failed to decode media system builder payload: %@", buf, 0x16u);
    }

    objc_autoreleasePoolPop(v14);
    v13 = 0;
    v4 = v19;
    v5 = v20;
  }

  v17 = *MEMORY[0x1E69E9840];
  return v13;
}

- (HMMediaSystemBuilderPayload)initWithUUID:(id)d name:(id)name configuredName:(id)configuredName leftComponentUUID:(id)iD rightComponentUUID:(id)uID leftAccessoryUUID:(id)uUID rightAccessoryUUID:(id)accessoryUUID sessionID:(id)self0
{
  dCopy = d;
  nameCopy = name;
  obj = configuredName;
  configuredNameCopy = configuredName;
  iDCopy = iD;
  iDCopy2 = iD;
  uIDCopy = uID;
  uIDCopy2 = uID;
  uUIDCopy = uUID;
  uUIDCopy2 = uUID;
  accessoryUUIDCopy = accessoryUUID;
  sessionIDCopy = sessionID;
  if (!dCopy)
  {
    _HMFPreconditionFailure();
    goto LABEL_11;
  }

  if (!iDCopy2)
  {
LABEL_11:
    _HMFPreconditionFailure();
    goto LABEL_12;
  }

  if (!uIDCopy2)
  {
LABEL_12:
    _HMFPreconditionFailure();
    goto LABEL_13;
  }

  if (!uUIDCopy2)
  {
LABEL_13:
    _HMFPreconditionFailure();
    goto LABEL_14;
  }

  if (!accessoryUUIDCopy)
  {
LABEL_14:
    _HMFPreconditionFailure();
    goto LABEL_15;
  }

  v23 = sessionIDCopy;
  if (!sessionIDCopy)
  {
LABEL_15:
    v27 = _HMFPreconditionFailure();
    return [(HMMediaSystemBuilderPayload *)v27 encodeComponentDataWithLeftComponentUUID:v28 leftAccessoryUUID:v29 rightComponentUUID:v30 rightAccessoryUUID:v31, v32];
  }

  v39.receiver = self;
  v39.super_class = HMMediaSystemBuilderPayload;
  v24 = [(HMMediaSystemBuilderPayload *)&v39 init];
  v25 = v24;
  if (v24)
  {
    objc_storeStrong(&v24->_uuid, d);
    objc_storeStrong(&v25->_name, name);
    objc_storeStrong(&v25->_configuredName, obj);
    objc_storeStrong(&v25->_leftComponentUUID, iDCopy);
    objc_storeStrong(&v25->_rightComponentUUID, uIDCopy);
    objc_storeStrong(&v25->_leftAccessoryUUID, uUIDCopy);
    objc_storeStrong(&v25->_rightAccessoryUUID, accessoryUUID);
    objc_storeStrong(&v25->_sessionID, sessionID);
  }

  return v25;
}

+ (id)encodeComponentDataWithLeftComponentUUID:(id)d leftAccessoryUUID:(id)iD rightComponentUUID:(id)uID rightAccessoryUUID:(id)uUID
{
  v31[2] = *MEMORY[0x1E69E9840];
  v29[0] = kMediaSystemComponentUUIDCodingKey;
  uUIDCopy = uUID;
  uIDCopy = uID;
  iDCopy = iD;
  uUIDString = [d UUIDString];
  v30[0] = uUIDString;
  v29[1] = @"kAccessoryUUID";
  uUIDString2 = [iDCopy UUIDString];

  v30[1] = uUIDString2;
  v29[2] = kMediaSystemComponentRoleCodingKey;
  v27 = kMediaSystemRoleTypeCodingKey;
  v28 = &unk_1F0EFCF80;
  v14 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v28 forKeys:&v27 count:1];
  v30[2] = v14;
  v15 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v30 forKeys:v29 count:3];
  v31[0] = v15;
  v25[0] = kMediaSystemComponentUUIDCodingKey;
  uUIDString3 = [uIDCopy UUIDString];

  v26[0] = uUIDString3;
  v25[1] = @"kAccessoryUUID";
  uUIDString4 = [uUIDCopy UUIDString];

  v26[1] = uUIDString4;
  v25[2] = kMediaSystemComponentRoleCodingKey;
  v23 = kMediaSystemRoleTypeCodingKey;
  v24 = &unk_1F0EFCF98;
  v18 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v24 forKeys:&v23 count:1];
  v26[2] = v18;
  v19 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v26 forKeys:v25 count:3];
  v31[1] = v19;
  v20 = [MEMORY[0x1E695DEC8] arrayWithObjects:v31 count:2];

  v21 = *MEMORY[0x1E69E9840];

  return v20;
}

+ (BOOL)decodeComponentData:(id)data leftComponentUUID:(id *)d leftAccessoryUUID:(id *)iD rightComponentUUID:(id *)uID rightAccessoryUUID:(id *)uUID
{
  v45 = *MEMORY[0x1E69E9840];
  v36 = 0u;
  v37 = 0u;
  v38 = 0u;
  v39 = 0u;
  obj = data;
  v7 = [obj countByEnumeratingWithState:&v36 objects:v44 count:16];
  if (!v7)
  {
LABEL_27:
    v23 = 0;
    goto LABEL_28;
  }

  v8 = v7;
  v29 = 0;
  v9 = *v37;
  v10 = MEMORY[0x1E695E0F8];
  while (2)
  {
    for (i = 0; i != v8; ++i)
    {
      if (*v37 != v9)
      {
        objc_enumerationMutation(obj);
      }

      v12 = *(*(&v36 + 1) + 8 * i);
      v13 = [v12 hmf_dictionaryForKey:kMediaSystemComponentRoleCodingKey];
      v14 = [v12 hmf_UUIDForKey:kMediaSystemComponentUUIDCodingKey];
      v15 = [v12 hmf_UUIDForKey:@"kAccessoryUUID"];
      v35 = 0;
      if (v13)
      {
        v16 = v13;
      }

      else
      {
        v16 = v10;
      }

      [HMMediaSystemRole roleFromDictionary:v16 roleOutput:&v35];
      if (v14)
      {
        v17 = v15 == 0;
      }

      else
      {
        v17 = 1;
      }

      if (v17 || v35 == 0)
      {
        v24 = objc_autoreleasePoolPush();
        v25 = HMFGetOSLogHandle();
        if (os_log_type_enabled(v25, OS_LOG_TYPE_ERROR))
        {
          v26 = HMFGetLogIdentifier();
          *buf = 138543618;
          v41 = v26;
          v42 = 2112;
          v43 = v12;
          _os_log_impl(&dword_19BB39000, v25, OS_LOG_TYPE_ERROR, "%{public}@[HMMediaSystemBuilderPayload] Failed to decode component data due to encoded component: %@", buf, 0x16u);
        }

        objc_autoreleasePoolPop(v24);
        goto LABEL_27;
      }

      if (v35 == 1)
      {
        LOBYTE(v29) = 1;
        uIDCopy = d;
        uUIDCopy = iD;
      }

      else
      {
        if (v35 != 2)
        {
          goto LABEL_21;
        }

        BYTE4(v29) = 1;
        uIDCopy = uID;
        uUIDCopy = uUID;
      }

      v21 = v14;
      *uIDCopy = v14;
      v22 = v15;
      *uUIDCopy = v15;
LABEL_21:
    }

    v8 = [obj countByEnumeratingWithState:&v36 objects:v44 count:16];
    if (v8)
    {
      continue;
    }

    break;
  }

  v23 = v29 & BYTE4(v29);
LABEL_28:

  v27 = *MEMORY[0x1E69E9840];
  return v23 & 1;
}

@end