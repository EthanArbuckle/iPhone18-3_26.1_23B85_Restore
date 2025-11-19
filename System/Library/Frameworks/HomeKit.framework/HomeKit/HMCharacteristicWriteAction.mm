@interface HMCharacteristicWriteAction
+ (HMCharacteristicWriteAction)actionWithProtoBuf:(id)a3 home:(id)a4;
+ (HMCharacteristicWriteAction)new;
+ (NSSet)allowedTargetValueClassesForShortcuts;
- (BOOL)_handleUpdates:(id)a3;
- (BOOL)isAffectedByEndEvents;
- (BOOL)isEqual:(id)a3;
- (BOOL)isKindOfAllowedTargetValueClass:(id)a3;
- (BOOL)isValidWithError:(id *)a3;
- (BOOL)mergeFromNewObject:(id)a3;
- (BOOL)requiresDeviceUnlock;
- (HMCharacteristic)characteristic;
- (HMCharacteristicWriteAction)init;
- (HMCharacteristicWriteAction)initWithCharacteristic:(HMCharacteristic *)characteristic targetValue:(id)targetValue;
- (HMCharacteristicWriteAction)initWithCoder:(id)a3;
- (HMCharacteristicWriteAction)initWithDictionary:(id)a3 home:(id)a4;
- (HMCharacteristicWriteAction)initWithUUID:(id)a3;
- (id)_resolvedCharacteristicInHome:(id)a3 forCharacteristic:(id)a4;
- (id)_serializeForAdd;
- (id)copyWithZone:(_NSZone *)a3;
- (id)encodeAsProtoBuf;
- (id)initWithCharacteristic:(void *)a3 targetValue:(uint64_t)a4 uuid:;
- (id)targetValue;
- (void)__configureWithContext:(id)a3 actionSet:(id)a4;
- (void)updateTargetValue:(id)targetValue completionHandler:(void *)completion;
@end

@implementation HMCharacteristicWriteAction

- (id)encodeAsProtoBuf
{
  v41 = *MEMORY[0x1E69E9840];
  v3 = [(HMCharacteristicWriteAction *)self characteristic];
  v4 = [v3 service];

  v5 = [v4 accessory];
  v6 = [v5 home];
  if (v6)
  {
    v7 = objc_alloc_init(HMPBCharacteristicWriteAction);
    v8 = [(HMAction *)self uuid];
    v9 = [v8 hm_convertToData];
    [(HMPBCharacteristicWriteAction *)v7 setActionUUID:v9];

    v10 = [(HMCharacteristicWriteAction *)self characteristic];
    v11 = [HMPBCharacteristicReference characteristicReferenceWithCharacteristic:v10];
    [(HMPBCharacteristicWriteAction *)v7 setCharacteristicReference:v11];

    v12 = [(HMCharacteristicWriteAction *)self targetValue];
    LODWORD(v10) = [(HMCharacteristicWriteAction *)self isKindOfAllowedTargetValueClass:v12];

    if (v10)
    {
      v13 = MEMORY[0x1E696ACC8];
      v14 = [(HMCharacteristicWriteAction *)self targetValue];
      v34 = 0;
      v15 = [v13 archivedDataWithRootObject:v14 requiringSecureCoding:1 error:&v34];
      v16 = v34;
      [(HMPBCharacteristicWriteAction *)v7 setTargetValue:v15];

      v17 = [(HMPBCharacteristicWriteAction *)v7 targetValue];

      if (v17)
      {

        v18 = objc_alloc_init(HMPBActionContainer);
        [(HMPBActionContainer *)v18 setType:1];
        [(HMPBActionContainer *)v18 setCharacteristicWriteAction:v7];
LABEL_15:

        goto LABEL_16;
      }

      v28 = objc_autoreleasePoolPush();
      v29 = self;
      v30 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v30, OS_LOG_TYPE_ERROR))
      {
        v31 = HMFGetLogIdentifier();
        *buf = 138543618;
        v36 = v31;
        v37 = 2112;
        v38 = v16;
        _os_log_impl(&dword_19BB39000, v30, OS_LOG_TYPE_ERROR, "%{public}@Couldn't encode targetValue: %@", buf, 0x16u);
      }

      objc_autoreleasePoolPop(v28);
    }

    else
    {
      v22 = objc_autoreleasePoolPush();
      v23 = self;
      v24 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v24, OS_LOG_TYPE_ERROR))
      {
        v25 = HMFGetLogIdentifier();
        v26 = [(HMCharacteristicWriteAction *)v23 targetValue];
        *buf = 138543618;
        v36 = v25;
        v37 = 2112;
        v38 = objc_opt_class();
        v27 = v38;
        _os_log_impl(&dword_19BB39000, v24, OS_LOG_TYPE_ERROR, "%{public}@Target Value is of unhandled class %@", buf, 0x16u);
      }

      objc_autoreleasePoolPop(v22);
    }

    v18 = 0;
    goto LABEL_15;
  }

  v19 = objc_autoreleasePoolPush();
  v20 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
  {
    v21 = HMFGetLogIdentifier();
    *buf = 138543874;
    v36 = v21;
    v37 = 2112;
    v38 = self;
    v39 = 2112;
    v40 = 0;
    _os_log_impl(&dword_19BB39000, v20, OS_LOG_TYPE_ERROR, "%{public}@Failed encode action as protobuf, home is invalid %@:%@", buf, 0x20u);
  }

  objc_autoreleasePoolPop(v19);
  v18 = 0;
LABEL_16:

  v32 = *MEMORY[0x1E69E9840];

  return v18;
}

- (BOOL)isKindOfAllowedTargetValueClass:(id)a3
{
  v16 = *MEMORY[0x1E69E9840];
  v3 = a3;
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v4 = +[HMCharacteristicWriteAction allowedTargetValueClassesForShortcuts];
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

- (id)copyWithZone:(_NSZone *)a3
{
  os_unfair_lock_lock_with_options();
  v4 = [[HMCharacteristicWriteAction alloc] initWithCharacteristic:self->_targetValue targetValue:0 uuid:?];
  os_unfair_lock_unlock(&self->_lock);
  return v4;
}

- (id)initWithCharacteristic:(void *)a3 targetValue:(uint64_t)a4 uuid:
{
  v8 = a2;
  v9 = a3;
  if (a1)
  {
    v15.receiver = a1;
    v15.super_class = HMCharacteristicWriteAction;
    v10 = objc_msgSendSuper2(&v15, sel_initWithUUID_, a4);
    v11 = v10;
    if (v10)
    {
      objc_storeStrong(v10 + 7, a2);
      v12 = [v9 copy];
      v13 = v11[8];
      v11[8] = v12;
    }
  }

  else
  {
    v11 = 0;
  }

  return v11;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (v4 == self)
  {
    v12 = 1;
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
    if (v6 && ([(HMCharacteristicWriteAction *)self characteristic], v7 = objc_claimAutoreleasedReturnValue(), [(HMCharacteristicWriteAction *)v6 characteristic], v8 = objc_claimAutoreleasedReturnValue(), v9 = HMFEqualObjects(), v8, v7, v9))
    {
      v10 = [(HMCharacteristicWriteAction *)self targetValue];
      v11 = [(HMCharacteristicWriteAction *)v6 targetValue];
      v12 = HMFEqualObjects();
    }

    else
    {
      v12 = 0;
    }
  }

  return v12;
}

- (BOOL)mergeFromNewObject:(id)a3
{
  v30 = *MEMORY[0x1E69E9840];
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
    v7 = [(HMAction *)self actionSet];
    v24 = [v7 home];

    v25 = [v6 characteristic];
    v8 = [v6 targetValue];
    os_unfair_lock_lock_with_options();
    targetValue = self->_targetValue;
    v10 = HMFEqualObjects();
    if ((v10 & 1) == 0)
    {
      v11 = objc_autoreleasePoolPush();
      v12 = self;
      v13 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v13, OS_LOG_TYPE_INFO))
      {
        v14 = HMFGetLogIdentifier();
        *buf = 138543618;
        v27 = v14;
        v28 = 2112;
        v29 = v8;
        _os_log_impl(&dword_19BB39000, v13, OS_LOG_TYPE_INFO, "%{public}@Updating target value via merge to %@", buf, 0x16u);
      }

      objc_autoreleasePoolPop(v11);
      objc_storeStrong(&self->_targetValue, v8);
    }

    v15 = [(HMCharacteristicWriteAction *)self _resolvedCharacteristicInHome:v24 forCharacteristic:v25];
    v16 = v15;
    v17 = v10 ^ 1;
    if (v15 && self->_characteristic != v15)
    {
      v18 = objc_autoreleasePoolPush();
      v19 = self;
      v20 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v20, OS_LOG_TYPE_INFO))
      {
        v21 = HMFGetLogIdentifier();
        *buf = 138543618;
        v27 = v21;
        v28 = 2112;
        v29 = v16;
        _os_log_impl(&dword_19BB39000, v20, OS_LOG_TYPE_INFO, "%{public}@Updating characteristic via merge to %@", buf, 0x16u);
      }

      objc_autoreleasePoolPop(v18);
      objc_storeStrong(&self->_characteristic, v16);
      v17 = 1;
    }

    os_unfair_lock_unlock(&self->_lock);
  }

  else
  {
    v17 = 0;
  }

  v22 = *MEMORY[0x1E69E9840];
  return v17;
}

- (HMCharacteristicWriteAction)initWithCoder:(id)a3
{
  v26 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v21.receiver = self;
  v21.super_class = HMCharacteristicWriteAction;
  v5 = [(HMAction *)&v21 initWithCoder:v4];
  if (!v5)
  {
    goto LABEL_4;
  }

  v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"characteristic"];
  characteristic = v5->_characteristic;
  v5->_characteristic = v6;

  if (!v5->_characteristic)
  {
    v12 = objc_autoreleasePoolPush();
    v13 = v5;
    v14 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
    {
      v15 = HMFGetLogIdentifier();
      v16 = objc_opt_class();
      *buf = 138543618;
      v23 = v15;
      v24 = 2112;
      v25 = v16;
      v17 = "%{public}@Unable to unarchive %@, missing characteristic";
LABEL_9:
      _os_log_impl(&dword_19BB39000, v14, OS_LOG_TYPE_ERROR, v17, buf, 0x16u);
    }

LABEL_10:

    objc_autoreleasePoolPop(v12);
    v11 = 0;
    goto LABEL_11;
  }

  v8 = allowedCharValueTypes();
  v9 = [v4 decodeObjectOfClasses:v8 forKey:@"characteristicValue"];
  targetValue = v5->_targetValue;
  v5->_targetValue = v9;

  if (!v5->_targetValue)
  {
    v12 = objc_autoreleasePoolPush();
    v13 = v5;
    v14 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
    {
      v15 = HMFGetLogIdentifier();
      v18 = objc_opt_class();
      *buf = 138543618;
      v23 = v15;
      v24 = 2112;
      v25 = v18;
      v17 = "%{public}@Unable to unarchive %@, missing target value";
      goto LABEL_9;
    }

    goto LABEL_10;
  }

LABEL_4:
  v11 = v5;
LABEL_11:

  v19 = *MEMORY[0x1E69E9840];
  return v11;
}

- (id)_resolvedCharacteristicInHome:(id)a3 forCharacteristic:(id)a4
{
  v5 = a3;
  v6 = a4;
  v7 = [v6 service];
  v8 = [v7 accessory];
  v9 = v8;
  v10 = 0;
  if (v7 && v8)
  {
    v11 = [v8 uuid];
    v12 = [v5 accessoryWithUUID:v11];

    v13 = [v6 instanceID];
    v14 = [v7 instanceID];
    v10 = [v12 _findCharacteristic:v13 forService:v14];
  }

  return v10;
}

- (BOOL)_handleUpdates:(id)a3
{
  v4 = a3;
  v5 = [v4 objectForKeyedSubscript:@"kActionType"];
  v6 = v5;
  if (v5 && ![v5 unsignedIntegerValue])
  {
    v8 = [v4 objectForKeyedSubscript:@"kCharacteristicValue"];
    v7 = v8 != 0;
    if (v8)
    {
      os_unfair_lock_lock_with_options();
      objc_storeStrong(&self->_targetValue, v8);
      os_unfair_lock_unlock(&self->_lock);
    }
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

- (id)_serializeForAdd
{
  v18[4] = *MEMORY[0x1E69E9840];
  if ([(HMAction *)self isValid])
  {
    v16.receiver = self;
    v16.super_class = HMCharacteristicWriteAction;
    v3 = [(HMAction *)&v16 _serializeForAdd];
    v4 = [v3 mutableCopy];

    v5 = [(HMCharacteristicWriteAction *)self characteristic];
    v6 = [v5 service];
    v17[0] = @"kAccessoryUUID";
    v7 = [v6 targetAccessoryUUID];
    v8 = [v7 UUIDString];
    v18[0] = v8;
    v17[1] = @"kServiceInstanceID";
    v9 = [v6 instanceID];
    v18[1] = v9;
    v17[2] = @"kCharacteristicInstanceID";
    v10 = [v5 instanceID];
    v18[2] = v10;
    v17[3] = @"kCharacteristicValue";
    v11 = [(HMCharacteristicWriteAction *)self targetValue];
    v18[3] = v11;
    v12 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v18 forKeys:v17 count:4];
    [v4 addEntriesFromDictionary:v12];

    v13 = [v4 copy];
  }

  else
  {
    v13 = 0;
  }

  v14 = *MEMORY[0x1E69E9840];

  return v13;
}

- (BOOL)requiresDeviceUnlock
{
  v2 = [(HMCharacteristicWriteAction *)self characteristic];
  v3 = [v2 requiresDeviceUnlock];

  return v3;
}

- (BOOL)isAffectedByEndEvents
{
  v3 = [(HMCharacteristicWriteAction *)self characteristic];
  v4 = [v3 characteristicType];
  if (isRestoreSupportedForCharacteristic(v4))
  {
    v5 = [(HMCharacteristicWriteAction *)self targetValue];
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

    v8 = [v7 isEqualToNumber:MEMORY[0x1E695E118]];
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

- (BOOL)isValidWithError:(id *)a3
{
  v5 = [(HMCharacteristicWriteAction *)self characteristic];
  v6 = [v5 properties];
  v7 = [v6 containsObject:@"HMCharacteristicPropertyWritable"];

  if ((v7 & 1) == 0)
  {
    if (a3)
    {
      [MEMORY[0x1E696ABC0] hmErrorWithCode:5];
      *a3 = v11 = 0;
      goto LABEL_7;
    }

LABEL_6:
    v11 = 0;
    goto LABEL_7;
  }

  v8 = [(HMCharacteristicWriteAction *)self targetValue];

  if (!v8)
  {
    goto LABEL_6;
  }

  v9 = [v5 service];
  v10 = [v9 accessory];
  v11 = v10 != 0;

LABEL_7:
  return v11;
}

- (void)updateTargetValue:(id)targetValue completionHandler:(void *)completion
{
  v34 = *MEMORY[0x1E69E9840];
  v6 = targetValue;
  v7 = completion;
  v8 = [(HMAction *)self context];
  if (!v7)
  {
    v22 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%s: %@ cannot be nil", "-[HMCharacteristicWriteAction updateTargetValue:completionHandler:]", @"completion"];
    v23 = objc_autoreleasePoolPush();
    v24 = self;
    v25 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v25, OS_LOG_TYPE_ERROR))
    {
      v26 = HMFGetLogIdentifier();
      *buf = 138543618;
      v31 = v26;
      v32 = 2112;
      v33 = v22;
      _os_log_impl(&dword_19BB39000, v25, OS_LOG_TYPE_ERROR, "%{public}@%@", buf, 0x16u);
    }

    objc_autoreleasePoolPop(v23);
    v27 = [MEMORY[0x1E695DF30] exceptionWithName:*MEMORY[0x1E695D940] reason:v22 userInfo:0];
    objc_exception_throw(v27);
  }

  v9 = v8;
  if (v8)
  {
    if (v6)
    {
      v10 = [(HMAction *)self actionSet];
      v11 = [v10 home];
      if (v11)
      {
        v12 = [v6 copy];

        v13 = [(HMAction *)self uuid];

        if (v13)
        {
          v28[0] = @"kActionType";
          v28[1] = @"kCharacteristicValue";
          v29[0] = &unk_1F0EFCF68;
          v29[1] = v12;
          v14 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v29 forKeys:v28 count:2];
          [v10 _updateAction:self changes:v14 completionHandler:v7];
        }

        else
        {
          os_unfair_lock_lock_with_options();
          objc_storeStrong(&self->_targetValue, v12);
          os_unfair_lock_unlock(&self->_lock);
          v14 = [v9 delegateCaller];
          [v14 callCompletion:v7 error:0];
        }

        v6 = v12;
      }

      else
      {
        v19 = [v9 delegateCaller];
        v20 = [MEMORY[0x1E696ABC0] hmErrorWithCode:21];
        [v19 callCompletion:v7 error:v20];
      }
    }

    else
    {
      v6 = [v8 delegateCaller];
      v10 = [MEMORY[0x1E696ABC0] hmErrorWithCode:20];
      [v6 callCompletion:v7 error:v10];
    }
  }

  else
  {
    v15 = objc_autoreleasePoolPush();
    v16 = self;
    v17 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
    {
      v18 = HMFGetLogIdentifier();
      *buf = 138543618;
      v31 = v18;
      v32 = 2080;
      v33 = "[HMCharacteristicWriteAction updateTargetValue:completionHandler:]";
      _os_log_impl(&dword_19BB39000, v17, OS_LOG_TYPE_ERROR, "%{public}@Nil context, invoking completion - %s", buf, 0x16u);
    }

    objc_autoreleasePoolPop(v15);
    v10 = [MEMORY[0x1E696ABC0] hmErrorWithCode:12];
    v7[2](v7, v10);
  }

  v21 = *MEMORY[0x1E69E9840];
}

- (id)targetValue
{
  os_unfair_lock_lock_with_options();
  v3 = self->_targetValue;
  os_unfair_lock_unlock(&self->_lock);

  return v3;
}

- (HMCharacteristic)characteristic
{
  os_unfair_lock_lock_with_options();
  v3 = self->_characteristic;
  os_unfair_lock_unlock(&self->_lock);

  return v3;
}

- (void)__configureWithContext:(id)a3 actionSet:(id)a4
{
  v6 = a3;
  v7 = a4;
  v11.receiver = self;
  v11.super_class = HMCharacteristicWriteAction;
  [(HMAction *)&v11 __configureWithContext:v6 actionSet:v7];
  v8 = [v7 home];
  os_unfair_lock_lock_with_options();
  v9 = [(HMCharacteristicWriteAction *)self _resolvedCharacteristicInHome:v8 forCharacteristic:self->_characteristic];
  characteristic = self->_characteristic;
  self->_characteristic = v9;

  os_unfair_lock_unlock(&self->_lock);
}

- (HMCharacteristicWriteAction)initWithDictionary:(id)a3 home:(id)a4
{
  v43 = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = a4;
  v32.receiver = self;
  v32.super_class = HMCharacteristicWriteAction;
  v8 = [(HMAction *)&v32 initWithDictionary:v6 home:v7];
  if (!v8)
  {
    goto LABEL_8;
  }

  v9 = [v6 hmf_UUIDForKey:@"kAccessoryUUID"];
  v10 = [v6 hmf_numberForKey:@"kServiceInstanceID"];
  v11 = [v6 hmf_numberForKey:@"kCharacteristicInstanceID"];
  v12 = v11;
  if (!v9 || !v10 || !v11)
  {
    v18 = objc_autoreleasePoolPush();
    v19 = v8;
    v20 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
    {
      v21 = HMFGetLogIdentifier();
      v22 = objc_opt_class();
      *buf = 138543618;
      v34 = v21;
      v35 = 2112;
      v36 = v22;
      v23 = "%{public}@Unable to decode %@, missing accessory/service/characteristic ids";
LABEL_13:
      v26 = v20;
      v27 = 22;
LABEL_14:
      _os_log_impl(&dword_19BB39000, v26, OS_LOG_TYPE_ERROR, v23, buf, v27);
    }

LABEL_15:

    objc_autoreleasePoolPop(v18);
    v17 = 0;
    goto LABEL_16;
  }

  v13 = [v6 objectForKeyedSubscript:@"kCharacteristicValue"];
  targetValue = v8->_targetValue;
  v8->_targetValue = v13;

  if (!v8->_targetValue)
  {
    v18 = objc_autoreleasePoolPush();
    v24 = v8;
    v20 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
    {
      v21 = HMFGetLogIdentifier();
      v25 = objc_opt_class();
      *buf = 138543618;
      v34 = v21;
      v35 = 2112;
      v36 = v25;
      v23 = "%{public}@Unable to decode %@, missing target value";
      goto LABEL_13;
    }

    goto LABEL_15;
  }

  v15 = [v7 _findCharacteristic:v12 forService:v10 accessoryUUID:v9];
  characteristic = v8->_characteristic;
  v8->_characteristic = v15;

  if (!v8->_characteristic)
  {
    v18 = objc_autoreleasePoolPush();
    v30 = v8;
    v20 = HMFGetOSLogHandle();
    if (!os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_15;
    }

    v21 = HMFGetLogIdentifier();
    v31 = objc_opt_class();
    *buf = 138544386;
    v34 = v21;
    v35 = 2112;
    v36 = v31;
    v37 = 2112;
    v38 = v9;
    v39 = 2112;
    v40 = v10;
    v41 = 2112;
    v42 = v12;
    v23 = "%{public}@Unable to decode %@, failed to resolve characteristic %@/%@/%@";
    v26 = v20;
    v27 = 52;
    goto LABEL_14;
  }

LABEL_8:
  v17 = v8;
LABEL_16:

  v28 = *MEMORY[0x1E69E9840];
  return v17;
}

- (HMCharacteristicWriteAction)initWithCharacteristic:(HMCharacteristic *)characteristic targetValue:(id)targetValue
{
  v6 = characteristic;
  v7 = targetValue;
  if (!v6)
  {
    _HMFPreconditionFailure();
LABEL_5:
    v11 = _HMFPreconditionFailure();
    [(HMCharacteristicWriteAction *)v11 initWithUUID:v12, v13];
  }

  v8 = v7;
  if (!v7)
  {
    goto LABEL_5;
  }

  v9 = [(HMCharacteristicWriteAction *)self initWithCharacteristic:v6 targetValue:v7 uuid:0];

  return v9;
}

- (HMCharacteristicWriteAction)initWithUUID:(id)a3
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

- (HMCharacteristicWriteAction)init
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

+ (HMCharacteristicWriteAction)actionWithProtoBuf:(id)a3 home:(id)a4
{
  v30 = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = a4;
  v8 = [v6 characteristicReference];
  v9 = [HMCharacteristic characteristicWithCharacteristicReference:v8 home:v7];
  if (v9)
  {
    v10 = MEMORY[0x1E696ACD0];
    v11 = +[HMCharacteristicWriteAction allowedTargetValueClassesForShortcuts];
    v12 = [v6 targetValue];
    v25 = 0;
    v13 = [v10 unarchivedObjectOfClasses:v11 fromData:v12 error:&v25];
    v14 = v25;

    if (v13)
    {
      v15 = MEMORY[0x1E696AFB0];
      v16 = [v6 actionUUID];
      v17 = [v15 hmf_UUIDWithBytesAsData:v16];

      v18 = [[HMCharacteristicWriteAction alloc] initWithCharacteristic:v9 targetValue:v13 uuid:v17];
    }

    else
    {
      v19 = objc_autoreleasePoolPush();
      v20 = a1;
      v21 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
      {
        v22 = HMFGetLogIdentifier();
        *buf = 138543618;
        v27 = v22;
        v28 = 2112;
        v29 = v14;
        _os_log_impl(&dword_19BB39000, v21, OS_LOG_TYPE_ERROR, "%{public}@Failed to unarchive allowed target value from target value data: %@", buf, 0x16u);
      }

      objc_autoreleasePoolPop(v19);
      v18 = 0;
    }
  }

  else
  {
    v18 = 0;
  }

  v23 = *MEMORY[0x1E69E9840];

  return v18;
}

+ (NSSet)allowedTargetValueClassesForShortcuts
{
  if (allowedTargetValueClassesForShortcuts__hmf_once_t20 != -1)
  {
    dispatch_once(&allowedTargetValueClassesForShortcuts__hmf_once_t20, &__block_literal_global_22086);
  }

  v3 = allowedTargetValueClassesForShortcuts__hmf_once_v21;

  return v3;
}

uint64_t __68__HMCharacteristicWriteAction_allowedTargetValueClassesForShortcuts__block_invoke()
{
  v0 = [MEMORY[0x1E695DFD8] setWithObjects:{objc_opt_class(), 0}];
  v1 = allowedTargetValueClassesForShortcuts__hmf_once_v21;
  allowedTargetValueClassesForShortcuts__hmf_once_v21 = v0;

  return MEMORY[0x1EEE66BB8](v0, v1);
}

+ (HMCharacteristicWriteAction)new
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