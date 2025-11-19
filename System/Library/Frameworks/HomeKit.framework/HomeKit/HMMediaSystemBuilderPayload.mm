@interface HMMediaSystemBuilderPayload
+ (BOOL)decodeComponentData:(id)a3 leftComponentUUID:(id *)a4 leftAccessoryUUID:(id *)a5 rightComponentUUID:(id *)a6 rightAccessoryUUID:(id *)a7;
+ (id)encodeComponentDataWithLeftComponentUUID:(id)a3 leftAccessoryUUID:(id)a4 rightComponentUUID:(id)a5 rightAccessoryUUID:(id)a6;
- (BOOL)isEqual:(id)a3;
- (HMMediaSystemBuilderPayload)initWithPayload:(id)a3;
- (HMMediaSystemBuilderPayload)initWithUUID:(id)a3 name:(id)a4 configuredName:(id)a5 leftComponentUUID:(id)a6 rightComponentUUID:(id)a7 leftAccessoryUUID:(id)a8 rightAccessoryUUID:(id)a9 sessionID:(id)a10;
- (id)payloadCopy;
- (unint64_t)hash;
@end

@implementation HMMediaSystemBuilderPayload

- (unint64_t)hash
{
  v2 = [(HMMediaSystemBuilderPayload *)self uuid];
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
    if (v6)
    {
      v7 = [(HMMediaSystemBuilderPayload *)self uuid];
      v8 = [(HMMediaSystemBuilderPayload *)v6 uuid];
      if ([v7 hmf_isEqualToUUID:v8])
      {
        v9 = [(HMMediaSystemBuilderPayload *)self leftComponentUUID];
        v10 = [(HMMediaSystemBuilderPayload *)v6 leftComponentUUID];
        if ([v9 hmf_isEqualToUUID:v10])
        {
          v11 = [(HMMediaSystemBuilderPayload *)self rightComponentUUID];
          v12 = [(HMMediaSystemBuilderPayload *)v6 rightComponentUUID];
          if ([v11 hmf_isEqualToUUID:v12])
          {
            v13 = [(HMMediaSystemBuilderPayload *)self leftAccessoryUUID];
            v27 = [(HMMediaSystemBuilderPayload *)v6 leftAccessoryUUID];
            v28 = v13;
            if ([v13 hmf_isEqualToUUID:v27])
            {
              v14 = [(HMMediaSystemBuilderPayload *)self rightAccessoryUUID];
              v25 = [(HMMediaSystemBuilderPayload *)v6 rightAccessoryUUID];
              v26 = v14;
              if ([v14 hmf_isEqualToUUID:v25])
              {
                v15 = [(HMMediaSystemBuilderPayload *)self sessionID];
                v23 = [(HMMediaSystemBuilderPayload *)v6 sessionID];
                v24 = v15;
                if ([v15 hmf_isEqualToUUID:v23] && (-[HMMediaSystemBuilderPayload name](self, "name"), v21 = objc_claimAutoreleasedReturnValue(), -[HMMediaSystemBuilderPayload name](v6, "name"), v16 = objc_claimAutoreleasedReturnValue(), v20 = HMFEqualObjects(), v16, v21, v20))
                {
                  v22 = [(HMMediaSystemBuilderPayload *)self configuredName];
                  v17 = [(HMMediaSystemBuilderPayload *)v6 configuredName];
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
  v3 = [(HMMediaSystemBuilderPayload *)self leftComponentUUID];
  v4 = [(HMMediaSystemBuilderPayload *)self leftAccessoryUUID];
  v5 = [(HMMediaSystemBuilderPayload *)self rightComponentUUID];
  v6 = [(HMMediaSystemBuilderPayload *)self rightAccessoryUUID];
  v7 = [HMMediaSystemBuilderPayload encodeComponentDataWithLeftComponentUUID:v3 leftAccessoryUUID:v4 rightComponentUUID:v5 rightAccessoryUUID:v6];

  v19[0] = kMediaSystemUUIDCodingKey;
  v8 = [(HMMediaSystemBuilderPayload *)self uuid];
  v9 = [v8 UUIDString];
  v20[0] = v9;
  v19[1] = kMediaSystemNameCodingKey;
  v10 = [(HMMediaSystemBuilderPayload *)self name];
  v11 = v10;
  if (!v10)
  {
    v11 = [MEMORY[0x1E695DFB0] null];
  }

  v20[1] = v11;
  v19[2] = kMediaSystemConfiguredNameCodingKey;
  v12 = [(HMMediaSystemBuilderPayload *)self configuredName];
  v13 = v12;
  if (!v12)
  {
    v13 = [MEMORY[0x1E695DFB0] null];
  }

  v20[2] = v13;
  v20[3] = v7;
  v19[3] = kMediaSystemComponentsCodingKey;
  v19[4] = kMediaSystemBuilderSessionIDKey;
  v14 = [(HMMediaSystemBuilderPayload *)self sessionID];
  v15 = [v14 UUIDString];
  v20[4] = v15;
  v16 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v20 forKeys:v19 count:5];

  if (!v12)
  {
  }

  if (!v10)
  {
  }

  v17 = *MEMORY[0x1E69E9840];

  return v16;
}

- (HMMediaSystemBuilderPayload)initWithPayload:(id)a3
{
  v27 = *MEMORY[0x1E69E9840];
  v3 = a3;
  v4 = [v3 hmf_UUIDForKey:kMediaSystemUUIDCodingKey];
  v5 = [v3 hmf_stringForKey:kMediaSystemNameCodingKey];
  v6 = [v3 hmf_stringForKey:kMediaSystemConfiguredNameCodingKey];
  v7 = [v3 hmf_UUIDForKey:kMediaSystemBuilderSessionIDKey];
  v21 = [v3 hmf_arrayForKey:kMediaSystemComponentsCodingKey];
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
      v26 = v3;
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

- (HMMediaSystemBuilderPayload)initWithUUID:(id)a3 name:(id)a4 configuredName:(id)a5 leftComponentUUID:(id)a6 rightComponentUUID:(id)a7 leftAccessoryUUID:(id)a8 rightAccessoryUUID:(id)a9 sessionID:(id)a10
{
  v17 = a3;
  v38 = a4;
  obj = a5;
  v37 = a5;
  v34 = a6;
  v18 = a6;
  v35 = a7;
  v19 = a7;
  v36 = a8;
  v20 = a8;
  v21 = a9;
  v22 = a10;
  if (!v17)
  {
    _HMFPreconditionFailure();
    goto LABEL_11;
  }

  if (!v18)
  {
LABEL_11:
    _HMFPreconditionFailure();
    goto LABEL_12;
  }

  if (!v19)
  {
LABEL_12:
    _HMFPreconditionFailure();
    goto LABEL_13;
  }

  if (!v20)
  {
LABEL_13:
    _HMFPreconditionFailure();
    goto LABEL_14;
  }

  if (!v21)
  {
LABEL_14:
    _HMFPreconditionFailure();
    goto LABEL_15;
  }

  v23 = v22;
  if (!v22)
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
    objc_storeStrong(&v24->_uuid, a3);
    objc_storeStrong(&v25->_name, a4);
    objc_storeStrong(&v25->_configuredName, obj);
    objc_storeStrong(&v25->_leftComponentUUID, v34);
    objc_storeStrong(&v25->_rightComponentUUID, v35);
    objc_storeStrong(&v25->_leftAccessoryUUID, v36);
    objc_storeStrong(&v25->_rightAccessoryUUID, a9);
    objc_storeStrong(&v25->_sessionID, a10);
  }

  return v25;
}

+ (id)encodeComponentDataWithLeftComponentUUID:(id)a3 leftAccessoryUUID:(id)a4 rightComponentUUID:(id)a5 rightAccessoryUUID:(id)a6
{
  v31[2] = *MEMORY[0x1E69E9840];
  v29[0] = kMediaSystemComponentUUIDCodingKey;
  v9 = a6;
  v10 = a5;
  v11 = a4;
  v12 = [a3 UUIDString];
  v30[0] = v12;
  v29[1] = @"kAccessoryUUID";
  v13 = [v11 UUIDString];

  v30[1] = v13;
  v29[2] = kMediaSystemComponentRoleCodingKey;
  v27 = kMediaSystemRoleTypeCodingKey;
  v28 = &unk_1F0EFCF80;
  v14 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v28 forKeys:&v27 count:1];
  v30[2] = v14;
  v15 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v30 forKeys:v29 count:3];
  v31[0] = v15;
  v25[0] = kMediaSystemComponentUUIDCodingKey;
  v16 = [v10 UUIDString];

  v26[0] = v16;
  v25[1] = @"kAccessoryUUID";
  v17 = [v9 UUIDString];

  v26[1] = v17;
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

+ (BOOL)decodeComponentData:(id)a3 leftComponentUUID:(id *)a4 leftAccessoryUUID:(id *)a5 rightComponentUUID:(id *)a6 rightAccessoryUUID:(id *)a7
{
  v45 = *MEMORY[0x1E69E9840];
  v36 = 0u;
  v37 = 0u;
  v38 = 0u;
  v39 = 0u;
  obj = a3;
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
        v20 = a4;
        v19 = a5;
      }

      else
      {
        if (v35 != 2)
        {
          goto LABEL_21;
        }

        BYTE4(v29) = 1;
        v20 = a6;
        v19 = a7;
      }

      v21 = v14;
      *v20 = v14;
      v22 = v15;
      *v19 = v15;
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