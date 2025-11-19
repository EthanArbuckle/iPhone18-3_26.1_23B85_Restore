@interface HMMatterCommand
+ (id)commandWithProtoBuf:(id)a3 home:(id)a4;
+ (id)new;
- (BOOL)isEqual:(id)a3;
- (BOOL)isKindOfAllowedCommandFieldsClass:(id)a3;
- (BOOL)isKindOfAllowedExpectedValuesClass:(id)a3;
- (HMMatterCommand)init;
- (HMMatterCommand)initWithCoder:(id)a3;
- (HMMatterCommand)initWithCommandID:(id)a3 endpointID:(id)a4 clusterID:(id)a5 accessory:(id)a6 commandFields:(id)a7 expectedValues:(id)a8;
- (HMMatterCommand)initWithDictionary:(id)a3 home:(id)a4;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
- (id)encodeAsProtoBuf;
- (id)serializeForAdd;
- (void)_configureWithContext:(id)a3 home:(id)a4;
- (void)encodeWithCoder:(id)a3;
@end

@implementation HMMatterCommand

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  v4 = [(HMMatterCommand *)self commandID];
  v5 = [(HMMatterCommand *)self clusterID];
  v6 = [(HMMatterCommand *)self endpointID];
  v7 = [(HMMatterCommand *)self accessory];
  v8 = [(HMMatterCommand *)self commandFields];
  v9 = [(HMMatterCommand *)self expectedValues];
  v10 = [v3 stringWithFormat:@"commandID: %@, clusterID: %@, endpointID: %@, accessory: %@, commandFields: %@, expectedValues: %@", v4, v5, v6, v7, v8, v9];

  return v10;
}

- (id)copyWithZone:(_NSZone *)a3
{
  os_unfair_lock_lock_with_options();
  v5 = [HMMatterCommand allocWithZone:a3];
  v6 = [(HMMatterCommand *)self commandID];
  v7 = [(HMMatterCommand *)self endpointID];
  v8 = [(HMMatterCommand *)self clusterID];
  v9 = [(HMMatterCommand *)self accessory];
  v10 = [(HMMatterCommand *)self commandFields];
  v11 = [(HMMatterCommand *)self expectedValues];
  v12 = [(HMMatterCommand *)v5 initWithCommandID:v6 endpointID:v7 clusterID:v8 accessory:v9 commandFields:v10 expectedValues:v11];

  os_unfair_lock_unlock(&self->_lock);
  return v12;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (v4 == self)
  {
    v16 = 1;
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
      v7 = [(HMMatterCommand *)self commandID];
      v8 = [(HMMatterCommand *)v6 commandID];
      if (HMFEqualObjects())
      {
        v9 = [(HMMatterCommand *)self clusterID];
        v10 = [(HMMatterCommand *)v6 clusterID];
        if (HMFEqualObjects())
        {
          v11 = [(HMMatterCommand *)self endpointID];
          v12 = [(HMMatterCommand *)v6 endpointID];
          if (HMFEqualObjects())
          {
            v13 = [(HMMatterCommand *)self accessory];
            v21 = [(HMMatterCommand *)v6 accessory];
            v22 = v13;
            if (HMFEqualObjects())
            {
              v14 = [(HMMatterCommand *)self commandFields];
              [(HMMatterCommand *)v6 commandFields];
              v15 = v20 = v14;
              if (HMFEqualObjects())
              {
                v19 = [(HMMatterCommand *)self expectedValues];
                v18 = [(HMMatterCommand *)v6 expectedValues];
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
  }

  return v16;
}

- (void)encodeWithCoder:(id)a3
{
  v4 = a3;
  v5 = MEMORY[0x1E695DF30];
  v6 = *MEMORY[0x1E695D930];
  v7 = MEMORY[0x1E696AEC0];
  v8 = NSStringFromSelector(a2);
  v9 = [v7 stringWithFormat:@"%@ is unavailable", v8];
  v10 = [v5 exceptionWithName:v6 reason:v9 userInfo:0];
  v11 = v10;

  objc_exception_throw(v10);
}

- (HMMatterCommand)initWithCoder:(id)a3
{
  v38[5] = *MEMORY[0x1E69E9840];
  v4 = a3;
  v32.receiver = self;
  v32.super_class = HMMatterCommand;
  v5 = [(HMMatterCommand *)&v32 init];
  if (!v5)
  {
    goto LABEL_6;
  }

  v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"HMClusterIDCodingKey"];
  clusterID = v5->_clusterID;
  v5->_clusterID = v6;

  v8 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"HMEndpointIDCodingKey"];
  endpointID = v5->_endpointID;
  v5->_endpointID = v8;

  v10 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"HMCommandKey"];
  commandID = v5->_commandID;
  v5->_commandID = v10;

  v12 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"accessory"];
  accessory = v5->_accessory;
  v5->_accessory = v12;

  v14 = MEMORY[0x1E695DFD8];
  v38[0] = objc_opt_class();
  v38[1] = objc_opt_class();
  v38[2] = objc_opt_class();
  v38[3] = objc_opt_class();
  v38[4] = objc_opt_class();
  v15 = [MEMORY[0x1E695DEC8] arrayWithObjects:v38 count:5];
  v16 = [v14 setWithArray:v15];
  v17 = [v4 decodeObjectOfClasses:v16 forKey:@"HMCommandFieldsCodingKey"];
  commandFields = v5->_commandFields;
  v5->_commandFields = v17;

  v19 = MEMORY[0x1E695DFD8];
  v37[0] = objc_opt_class();
  v37[1] = objc_opt_class();
  v37[2] = objc_opt_class();
  v37[3] = objc_opt_class();
  v37[4] = objc_opt_class();
  v20 = [MEMORY[0x1E695DEC8] arrayWithObjects:v37 count:5];
  v21 = [v19 setWithArray:v20];
  v22 = [v4 decodeObjectOfClasses:v21 forKey:@"HMCommandExpectedValuesCodingKey"];
  expectedValues = v5->_expectedValues;
  v5->_expectedValues = v22;

  if (!v5->_clusterID)
  {
    goto LABEL_7;
  }

  if (v5->_endpointID && v5->_commandID && v5->_accessory)
  {
LABEL_6:
    v24 = v5;
  }

  else
  {
LABEL_7:
    v25 = objc_autoreleasePoolPush();
    v26 = v5;
    v27 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v27, OS_LOG_TYPE_ERROR))
    {
      v28 = HMFGetLogIdentifier();
      v29 = objc_opt_class();
      *buf = 138543618;
      v34 = v28;
      v35 = 2112;
      v36 = v29;
      _os_log_impl(&dword_19BB39000, v27, OS_LOG_TYPE_ERROR, "%{public}@Unable to unarchive %@, missing clusterID, endpointID or commandID", buf, 0x16u);
    }

    objc_autoreleasePoolPop(v25);
    v24 = 0;
  }

  v30 = *MEMORY[0x1E69E9840];
  return v24;
}

- (id)encodeAsProtoBuf
{
  v57 = *MEMORY[0x1E69E9840];
  v3 = [(HMMatterCommand *)self accessory];
  if (v3)
  {
    v4 = objc_alloc_init(HMPBCommandContainer);
    v5 = MEMORY[0x1E696ACC8];
    v6 = [(HMMatterCommand *)self commandID];
    v7 = [v5 archivedDataWithRootObject:v6];
    [(HMPBCommandContainer *)v4 setCommandID:v7];

    v8 = MEMORY[0x1E696ACC8];
    v9 = [(HMMatterCommand *)self clusterID];
    v10 = [v8 archivedDataWithRootObject:v9];
    [(HMPBCommandContainer *)v4 setClusterID:v10];

    v11 = MEMORY[0x1E696ACC8];
    v12 = [(HMMatterCommand *)self endpointID];
    v13 = [v11 archivedDataWithRootObject:v12];
    [(HMPBCommandContainer *)v4 setEndpointID:v13];

    v14 = [HMPBAccessoryReference accessoryReferenceWithAccessory:v3];
    [(HMPBCommandContainer *)v4 setAccessoryReference:v14];

    v15 = [(HMMatterCommand *)self commandFields];

    if (v15)
    {
      v16 = [(HMMatterCommand *)self commandFields];
      v17 = [(HMMatterCommand *)self isKindOfAllowedCommandFieldsClass:v16];

      if (!v17)
      {
        v35 = objc_autoreleasePoolPush();
        v36 = self;
        v37 = HMFGetOSLogHandle();
        if (os_log_type_enabled(v37, OS_LOG_TYPE_ERROR))
        {
          v38 = HMFGetLogIdentifier();
          v39 = [(HMMatterCommand *)v36 commandFields];
          *buf = 138543618;
          v52 = v38;
          v53 = 2112;
          v54 = objc_opt_class();
          v40 = v54;
          v41 = "%{public}@Command fields is of unhandled class %@";
LABEL_18:
          _os_log_impl(&dword_19BB39000, v37, OS_LOG_TYPE_ERROR, v41, buf, 0x16u);
        }

LABEL_19:

        objc_autoreleasePoolPop(v35);
LABEL_26:
        v30 = 0;
        goto LABEL_27;
      }

      v18 = MEMORY[0x1E696ACC8];
      v19 = [(HMMatterCommand *)self commandFields];
      v50 = 0;
      v20 = [v18 archivedDataWithRootObject:v19 requiringSecureCoding:1 error:&v50];
      v21 = v50;
      [(HMPBCommandContainer *)v4 setCommandFields:v20];

      v22 = [(HMPBCommandContainer *)v4 commandFields];

      if (!v22)
      {
        v43 = objc_autoreleasePoolPush();
        v44 = self;
        v45 = HMFGetOSLogHandle();
        if (!os_log_type_enabled(v45, OS_LOG_TYPE_ERROR))
        {
LABEL_25:

          objc_autoreleasePoolPop(v43);
          goto LABEL_26;
        }

        v46 = HMFGetLogIdentifier();
        *buf = 138543618;
        v52 = v46;
        v53 = 2112;
        v54 = v21;
LABEL_24:
        _os_log_impl(&dword_19BB39000, v45, OS_LOG_TYPE_ERROR, "%{public}@Couldn't encode command fields: %@", buf, 0x16u);

        goto LABEL_25;
      }
    }

    v23 = [(HMMatterCommand *)self expectedValues];

    if (!v23)
    {
LABEL_10:
      v30 = v4;
LABEL_27:

      goto LABEL_28;
    }

    v24 = [(HMMatterCommand *)self expectedValues];
    v25 = [(HMMatterCommand *)self isKindOfAllowedExpectedValuesClass:v24];

    if (v25)
    {
      v26 = MEMORY[0x1E696ACC8];
      v27 = [(HMMatterCommand *)self expectedValues];
      v49 = 0;
      v28 = [v26 archivedDataWithRootObject:v27 requiringSecureCoding:1 error:&v49];
      v21 = v49;
      [(HMPBCommandContainer *)v4 setExpectedValues:v28];

      v29 = [(HMPBCommandContainer *)v4 expectedValues];

      if (v29)
      {

        goto LABEL_10;
      }

      v43 = objc_autoreleasePoolPush();
      v44 = self;
      v45 = HMFGetOSLogHandle();
      if (!os_log_type_enabled(v45, OS_LOG_TYPE_ERROR))
      {
        goto LABEL_25;
      }

      v46 = HMFGetLogIdentifier();
      *buf = 138543618;
      v52 = v46;
      v53 = 2112;
      v54 = v21;
      goto LABEL_24;
    }

    v35 = objc_autoreleasePoolPush();
    v36 = self;
    v37 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v37, OS_LOG_TYPE_ERROR))
    {
      v38 = HMFGetLogIdentifier();
      v39 = [(HMMatterCommand *)v36 expectedValues];
      v42 = objc_opt_class();
      *buf = 138543618;
      v52 = v38;
      v53 = 2112;
      v54 = v42;
      v40 = v42;
      v41 = "%{public}@Expected values is of unhandled class %@";
      goto LABEL_18;
    }

    goto LABEL_19;
  }

  v31 = objc_autoreleasePoolPush();
  v32 = self;
  v33 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v33, OS_LOG_TYPE_ERROR))
  {
    v34 = HMFGetLogIdentifier();
    *buf = 138543874;
    v52 = v34;
    v53 = 2112;
    v54 = v32;
    v55 = 2112;
    v56 = 0;
    _os_log_impl(&dword_19BB39000, v33, OS_LOG_TYPE_ERROR, "%{public}@Failed encode action as protobuf, accessory is invalid %@:%@", buf, 0x20u);
  }

  objc_autoreleasePoolPop(v31);
  v30 = 0;
LABEL_28:

  v47 = *MEMORY[0x1E69E9840];

  return v30;
}

- (BOOL)isKindOfAllowedCommandFieldsClass:(id)a3
{
  v16 = *MEMORY[0x1E69E9840];
  v3 = a3;
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v4 = HMAllowedClassesForMatterCommand();
  v5 = [v4 countByEnumeratingWithState:&v11 objects:v15 count:16];
  if (v5)
  {
    v6 = *v12;
    while (2)
    {
      for (i = 0; i != v5; ++i)
      {
        if (*v12 != v6)
        {
          objc_enumerationMutation(v4);
        }

        v8 = *(*(&v11 + 1) + 8 * i);
        if (objc_opt_isKindOfClass())
        {
          LOBYTE(v5) = 1;
          goto LABEL_11;
        }
      }

      v5 = [v4 countByEnumeratingWithState:&v11 objects:v15 count:16];
      if (v5)
      {
        continue;
      }

      break;
    }
  }

LABEL_11:

  v9 = *MEMORY[0x1E69E9840];
  return v5;
}

- (BOOL)isKindOfAllowedExpectedValuesClass:(id)a3
{
  v16 = *MEMORY[0x1E69E9840];
  v3 = a3;
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v4 = HMAllowedClassesForMatterCommand();
  v5 = [v4 countByEnumeratingWithState:&v11 objects:v15 count:16];
  if (v5)
  {
    v6 = *v12;
    while (2)
    {
      for (i = 0; i != v5; ++i)
      {
        if (*v12 != v6)
        {
          objc_enumerationMutation(v4);
        }

        v8 = *(*(&v11 + 1) + 8 * i);
        if (objc_opt_isKindOfClass())
        {
          LOBYTE(v5) = 1;
          goto LABEL_11;
        }
      }

      v5 = [v4 countByEnumeratingWithState:&v11 objects:v15 count:16];
      if (v5)
      {
        continue;
      }

      break;
    }
  }

LABEL_11:

  v9 = *MEMORY[0x1E69E9840];
  return v5;
}

- (id)serializeForAdd
{
  v21[4] = *MEMORY[0x1E69E9840];
  v3 = [MEMORY[0x1E695DF90] dictionary];
  v4 = [(HMMatterCommand *)self commandFields];

  if (v4)
  {
    v5 = [(HMMatterCommand *)self commandFields];
    v6 = encodeRootObject(v5);
    [v3 setObject:v6 forKeyedSubscript:@"HMCommandFieldsKey"];
  }

  v7 = [(HMMatterCommand *)self expectedValues];

  if (v7)
  {
    v8 = [(HMMatterCommand *)self expectedValues];
    v9 = encodeRootObject(v8);
    [v3 setObject:v9 forKeyedSubscript:@"HMCommandExpectedValuesKey"];
  }

  v20[0] = @"kAccessoryUUID";
  v10 = [(HMMatterCommand *)self accessory];
  v11 = [v10 uuid];
  v12 = [v11 UUIDString];
  v21[0] = v12;
  v20[1] = @"HMEndpointIDKey";
  v13 = [(HMMatterCommand *)self endpointID];
  v21[1] = v13;
  v20[2] = @"HMCommandIDKey";
  v14 = [(HMMatterCommand *)self commandID];
  v21[2] = v14;
  v20[3] = @"HMClusterIDKey";
  v15 = [(HMMatterCommand *)self clusterID];
  v21[3] = v15;
  v16 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v21 forKeys:v20 count:4];
  [v3 addEntriesFromDictionary:v16];

  v17 = [v3 copy];
  v18 = *MEMORY[0x1E69E9840];

  return v17;
}

- (void)_configureWithContext:(id)a3 home:(id)a4
{
  v6 = a4;
  v7 = a3;
  v8 = [(HMMatterCommand *)self accessory];
  [v8 __configureWithContext:v7 home:v6];
}

- (HMMatterCommand)initWithDictionary:(id)a3 home:(id)a4
{
  v52 = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = a4;
  v47.receiver = self;
  v47.super_class = HMMatterCommand;
  v8 = [(HMMatterCommand *)&v47 init];
  if (!v8)
  {
    goto LABEL_28;
  }

  v9 = [v6 hmf_UUIDForKey:@"kAccessoryUUID"];
  v10 = [v6 hmf_numberForKey:@"HMEndpointIDKey"];
  v11 = [v6 hmf_numberForKey:@"HMClusterIDKey"];
  v12 = [v6 hmf_numberForKey:@"HMCommandIDKey"];
  v13 = v12;
  v14 = v9;
  v45 = v10;
  v15 = !v9 || v10 == 0;
  v16 = v15 || v11 == 0;
  v17 = v16 || v12 == 0;
  v18 = !v17;
  v19 = objc_autoreleasePoolPush();
  v20 = v8;
  v21 = HMFGetOSLogHandle();
  v22 = v21;
  v46 = v18;
  if (v18)
  {
    v43 = v7;
    if (os_log_type_enabled(v21, OS_LOG_TYPE_DEBUG))
    {
      v23 = HMFGetLogIdentifier();
      *buf = 138543618;
      v49 = v23;
      v50 = 2112;
      v51 = v6;
      _os_log_impl(&dword_19BB39000, v22, OS_LOG_TYPE_DEBUG, "%{public}@Creating a matter command with dictionary: %@", buf, 0x16u);
    }

    objc_autoreleasePoolPop(v19);
    v24 = [v6 hmf_dataForKey:@"HMCommandFieldsKey"];

    v25 = v14;
    if (v24)
    {
      v26 = HMAllowedClassesForMatterCommand();
      v27 = [v6 hmf_unarchivedObjectForKey:@"HMCommandFieldsKey" ofClasses:v26];
      commandFields = v20->_commandFields;
      v20->_commandFields = v27;
    }

    else
    {
      v32 = [v6 hmf_dictionaryForKey:@"HMCommandFieldsKey"];
      v26 = v20->_commandFields;
      v20->_commandFields = v32;
    }

    v31 = v45;

    v33 = [v6 hmf_dataForKey:@"HMCommandExpectedValuesKey"];

    if (v33)
    {
      v34 = HMAllowedClassesForMatterCommand();
      v35 = [v6 hmf_unarchivedObjectForKey:@"HMCommandExpectedValuesKey" ofClasses:v34];
      expectedValues = v20->_expectedValues;
      v20->_expectedValues = v35;
    }

    else
    {
      v37 = [v6 hmf_arrayForKey:@"HMCommandExpectedValuesKey"];
      v34 = v20->_expectedValues;
      v20->_expectedValues = v37;
    }

    v7 = v43;
    v38 = [v43 accessoryWithUUID:v25];
    accessory = v20->_accessory;
    v20->_accessory = v38;

    objc_storeStrong(&v20->_endpointID, v45);
    objc_storeStrong(&v20->_clusterID, v11);
    objc_storeStrong(&v20->_commandID, v13);
  }

  else
  {
    if (os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
    {
      HMFGetLogIdentifier();
      v29 = v44 = v7;
      v30 = objc_opt_class();
      *buf = 138543618;
      v49 = v29;
      v50 = 2112;
      v51 = v30;
      _os_log_impl(&dword_19BB39000, v22, OS_LOG_TYPE_ERROR, "%{public}@Unable to decode %@, missing accessory/endpoint/cluster/command ids", buf, 0x16u);

      v7 = v44;
    }

    objc_autoreleasePoolPop(v19);
    v25 = v14;
    v31 = v45;
  }

  if (!v46)
  {
    v40 = 0;
  }

  else
  {
LABEL_28:
    v40 = v8;
  }

  v41 = *MEMORY[0x1E69E9840];
  return v40;
}

- (HMMatterCommand)initWithCommandID:(id)a3 endpointID:(id)a4 clusterID:(id)a5 accessory:(id)a6 commandFields:(id)a7 expectedValues:(id)a8
{
  v23 = a3;
  v22 = a4;
  v21 = a5;
  v15 = a6;
  v16 = a7;
  v17 = a8;
  v24.receiver = self;
  v24.super_class = HMMatterCommand;
  v18 = [(HMMatterCommand *)&v24 init];
  v19 = v18;
  if (v18)
  {
    objc_storeStrong(&v18->_commandID, a3);
    objc_storeStrong(&v19->_endpointID, a4);
    objc_storeStrong(&v19->_clusterID, a5);
    objc_storeStrong(&v19->_accessory, a6);
    objc_storeStrong(&v19->_commandFields, a7);
    objc_storeStrong(&v19->_expectedValues, a8);
  }

  return v19;
}

- (HMMatterCommand)init
{
  v2 = MEMORY[0x1E695DF30];
  v3 = *MEMORY[0x1E695D930];
  v4 = MEMORY[0x1E696AEC0];
  v5 = NSStringFromSelector(a2);
  v6 = [v4 stringWithFormat:@"%@ is unavailable", v5];
  v7 = [v2 exceptionWithName:v3 reason:v6 userInfo:0];
  v8 = v7;

  objc_exception_throw(v7);
}

+ (id)commandWithProtoBuf:(id)a3 home:(id)a4
{
  v54 = *MEMORY[0x1E69E9840];
  v5 = a3;
  v6 = a4;
  v7 = MEMORY[0x1E696ACD0];
  v8 = [v5 commandID];
  v9 = [v7 unarchiveObjectWithData:v8];

  v10 = MEMORY[0x1E696ACD0];
  v11 = [v5 clusterID];
  v12 = [v10 unarchiveObjectWithData:v11];

  v13 = MEMORY[0x1E696ACD0];
  v14 = [v5 endpointID];
  v15 = [v13 unarchiveObjectWithData:v14];

  if (v9 && v12 && v15)
  {
    v16 = [v5 accessoryReference];
    v17 = [HMAccessory accessoryWithAccessoryReference:v16 home:v6];
    if (v17)
    {
      v18 = MEMORY[0x1E696ACD0];
      v19 = MEMORY[0x1E695DFD8];
      HMAllowedClassesForMatterCommand();
      v20 = v41 = v17;
      v21 = [v19 setWithArray:v20];
      [v5 commandFields];
      v22 = v42 = v16;
      v45 = 0;
      v40 = [v18 unarchivedObjectOfClasses:v21 fromData:v22 error:&v45];
      v43 = v6;
      v23 = v45;

      v24 = MEMORY[0x1E696ACD0];
      v25 = MEMORY[0x1E695DFD8];
      v26 = HMAllowedClassesForMatterCommand();
      v27 = [v25 setWithArray:v26];
      v28 = [v5 expectedValues];
      v44 = v23;
      v29 = [v24 unarchivedObjectOfClasses:v27 fromData:v28 error:&v44];
      v30 = v44;

      v6 = v43;
      v17 = v41;
      v31 = [[HMMatterCommand alloc] initWithCommandID:v9 endpointID:v15 clusterID:v12 accessory:v41 commandFields:v40 expectedValues:v29];

      v16 = v42;
    }

    else
    {
      v35 = objc_autoreleasePoolPush();
      v36 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v36, OS_LOG_TYPE_ERROR))
      {
        v37 = HMFGetLogIdentifier();
        *buf = 138543618;
        v47 = v37;
        v48 = 2112;
        v49 = v5;
        _os_log_impl(&dword_19BB39000, v36, OS_LOG_TYPE_ERROR, "%{public}@Failed to create command from protobuf, accessory does not exist %@", buf, 0x16u);

        v17 = 0;
      }

      objc_autoreleasePoolPop(v35);
      v31 = 0;
    }
  }

  else
  {
    v32 = objc_autoreleasePoolPush();
    v33 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v33, OS_LOG_TYPE_ERROR))
    {
      v34 = HMFGetLogIdentifier();
      *buf = 138544130;
      v47 = v34;
      v48 = 2112;
      v49 = v9;
      v50 = 2112;
      v51 = v12;
      v52 = 2112;
      v53 = v15;
      _os_log_impl(&dword_19BB39000, v33, OS_LOG_TYPE_ERROR, "%{public}@Failed to create command from protobuf, invalid commandID, clusterID, endpointID %@:%@:%@", buf, 0x2Au);
    }

    objc_autoreleasePoolPop(v32);
    v31 = 0;
  }

  v38 = *MEMORY[0x1E69E9840];

  return v31;
}

+ (id)new
{
  v2 = MEMORY[0x1E695DF30];
  v3 = *MEMORY[0x1E695D930];
  v4 = MEMORY[0x1E696AEC0];
  v5 = NSStringFromSelector(a2);
  v6 = [v4 stringWithFormat:@"%@ is unavailable", v5];
  v7 = [v2 exceptionWithName:v3 reason:v6 userInfo:0];
  v8 = v7;

  objc_exception_throw(v7);
}

@end