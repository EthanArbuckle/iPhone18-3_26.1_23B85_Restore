@interface HMAppleMediaAccessoryPowerAction
- (BOOL)_handleUpdates:(id)a3;
- (BOOL)isEqual:(id)a3;
- (BOOL)isValidWithError:(id *)a3;
- (BOOL)mergeFromNewObject:(id)a3;
- (HMAccessory)accessory;
- (HMAppleMediaAccessoryPowerAction)init;
- (HMAppleMediaAccessoryPowerAction)initWithAccessory:(id)a3 targetSleepWakeState:(unint64_t)a4;
- (HMAppleMediaAccessoryPowerAction)initWithCoder:(id)a3;
- (HMAppleMediaAccessoryPowerAction)initWithDictionary:(id)a3 home:(id)a4;
- (HMAppleMediaAccessoryPowerAction)initWithUUID:(id)a3;
- (id)_serializeForAdd;
- (id)copyWithZone:(_NSZone *)a3;
- (unint64_t)targetSleepWakeState;
- (void)initWithAccessory:(void *)a1 targetSleepWakeState:(void *)a2 uuid:(uint64_t)a3;
- (void)updateWithAction:(id)a3 completionHandler:(id)a4;
@end

@implementation HMAppleMediaAccessoryPowerAction

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (v4 == self)
  {
    v13 = 1;
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
    v7 = v6;
    if (v6)
    {
      v8 = [(HMAppleMediaAccessoryPowerAction *)v6 accessory];
      v9 = [v8 uuid];
      v10 = [(HMAppleMediaAccessoryPowerAction *)self accessory];
      v11 = [v10 uuid];
      if ([v9 hmf_isEqualToUUID:v11])
      {
        v12 = [(HMAppleMediaAccessoryPowerAction *)v7 targetSleepWakeState];
        v13 = v12 == [(HMAppleMediaAccessoryPowerAction *)self targetSleepWakeState];
      }

      else
      {
        v13 = 0;
      }
    }

    else
    {
      v13 = 0;
    }
  }

  return v13;
}

- (BOOL)_handleUpdates:(id)a3
{
  v4 = a3;
  v5 = [(HMAction *)self actionSet];
  v6 = [v5 home];

  v7 = [v4 hmf_UUIDForKey:@"accessory"];
  v8 = [v6 accessoryWithUUID:v7];
  v9 = [v4 hmf_numberForKey:@"HMAPA.targetState"];

  v10 = [v9 unsignedIntegerValue];
  v11 = [v8 category];
  v12 = [v11 categoryType];
  v13 = [v12 isEqualToString:@"F6D2A2AC-3A6E-4E6F-8196-678ABE909D8E"];

  if (v13)
  {
    os_unfair_lock_lock_with_options();
    objc_storeStrong(&self->_accessory, v8);
    self->_targetSleepWakeState = v10;
    os_unfair_lock_unlock(&self->_lock);
  }

  return v13;
}

- (HMAppleMediaAccessoryPowerAction)initWithDictionary:(id)a3 home:(id)a4
{
  v33 = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = a4;
  v26.receiver = self;
  v26.super_class = HMAppleMediaAccessoryPowerAction;
  v8 = [(HMAction *)&v26 initWithDictionary:v6 home:v7];
  if (!v8)
  {
    goto LABEL_5;
  }

  v9 = [v6 hmf_UUIDForKey:@"accessory"];
  if (!v9)
  {
    v14 = objc_autoreleasePoolPush();
    v15 = v8;
    v16 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
    {
      v17 = HMFGetLogIdentifier();
      v18 = objc_opt_class();
      *buf = 138543618;
      v28 = v17;
      v29 = 2112;
      v30 = v18;
      v19 = "%{public}@Unable to decode %@, missing accessory id";
      v20 = v16;
      v21 = 22;
LABEL_10:
      _os_log_impl(&dword_19BB39000, v20, OS_LOG_TYPE_ERROR, v19, buf, v21);
    }

LABEL_11:

    objc_autoreleasePoolPop(v14);
    v13 = 0;
    goto LABEL_12;
  }

  v10 = [v7 accessoryWithUUID:v9];
  accessory = v8->_accessory;
  v8->_accessory = v10;

  if (!v8->_accessory)
  {
    v14 = objc_autoreleasePoolPush();
    v22 = v8;
    v16 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
    {
      v17 = HMFGetLogIdentifier();
      v23 = objc_opt_class();
      *buf = 138543874;
      v28 = v17;
      v29 = 2112;
      v30 = v23;
      v31 = 2112;
      v32 = v9;
      v19 = "%{public}@Unable to decode %@, failed to resolve accessory %@";
      v20 = v16;
      v21 = 32;
      goto LABEL_10;
    }

    goto LABEL_11;
  }

  v12 = [v6 hmf_numberForKey:@"targetState"];
  v8->_targetSleepWakeState = [v12 unsignedIntegerValue];

LABEL_5:
  v13 = v8;
LABEL_12:

  v24 = *MEMORY[0x1E69E9840];
  return v13;
}

- (id)_serializeForAdd
{
  v11.receiver = self;
  v11.super_class = HMAppleMediaAccessoryPowerAction;
  v3 = [(HMAction *)&v11 _serializeForAdd];
  v4 = [v3 mutableCopy];

  v5 = [(HMAppleMediaAccessoryPowerAction *)self accessory];
  v6 = [v5 uuid];
  v7 = [v6 UUIDString];
  [v4 setObject:v7 forKeyedSubscript:@"accessory"];

  v8 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:{-[HMAppleMediaAccessoryPowerAction targetSleepWakeState](self, "targetSleepWakeState")}];
  [v4 setObject:v8 forKeyedSubscript:@"targetState"];

  v9 = [v4 copy];

  return v9;
}

- (BOOL)isValidWithError:(id *)a3
{
  v4 = [(HMAppleMediaAccessoryPowerAction *)self accessory];
  v5 = [v4 category];
  v6 = [v5 categoryType];
  if ([v6 isEqualToString:@"F6D2A2AC-3A6E-4E6F-8196-678ABE909D8E"])
  {
    v7 = [(HMAppleMediaAccessoryPowerAction *)self targetSleepWakeState]!= 0;
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

- (void)updateWithAction:(id)a3 completionHandler:(id)a4
{
  v9 = a3;
  v6 = a4;
  v7 = [(HMAction *)self actionSet];
  if (v7)
  {
    v8 = [v9 _serializeForAdd];
    [v7 _updateAction:self changes:v8 completionHandler:v6];
  }

  else
  {
    v8 = [MEMORY[0x1E696ABC0] hmfErrorWithCode:4];
    v6[2](v6, v8);
  }
}

- (BOOL)mergeFromNewObject:(id)a3
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
  if (v6)
  {
    v7 = [(HMAppleMediaAccessoryPowerAction *)self accessory];
    v8 = [v6 accessory];
    v9 = [v7 uuid];
    v10 = [v8 uuid];
    v11 = [v9 hmf_isEqualToUUID:v10];

    if ((v11 & 1) == 0)
    {
      [(HMAppleMediaAccessoryPowerAction *)self setAccessory:v8];
    }

    v12 = [(HMAppleMediaAccessoryPowerAction *)self targetSleepWakeState];
    if (v12 == [v6 targetSleepWakeState])
    {
      v13 = v11 ^ 1;
    }

    else
    {
      -[HMAppleMediaAccessoryPowerAction setTargetSleepWakeState:](self, "setTargetSleepWakeState:", [v6 targetSleepWakeState]);
      v13 = 1;
    }
  }

  else
  {
    v13 = 0;
  }

  return v13;
}

- (HMAppleMediaAccessoryPowerAction)initWithCoder:(id)a3
{
  v22 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v17.receiver = self;
  v17.super_class = HMAppleMediaAccessoryPowerAction;
  v5 = [(HMAction *)&v17 initWithCoder:v4];
  if (!v5)
  {
    goto LABEL_4;
  }

  v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"HMAPA.accessory"];
  accessory = v5->_accessory;
  v5->_accessory = v6;

  if (v5->_accessory)
  {
    v8 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"HMAPA.targetState"];
    v5->_targetSleepWakeState = [v8 unsignedIntegerValue];

LABEL_4:
    v9 = v5;
    goto LABEL_8;
  }

  v10 = objc_autoreleasePoolPush();
  v11 = v5;
  v12 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
  {
    v13 = HMFGetLogIdentifier();
    v14 = objc_opt_class();
    *buf = 138543618;
    v19 = v13;
    v20 = 2112;
    v21 = v14;
    _os_log_impl(&dword_19BB39000, v12, OS_LOG_TYPE_ERROR, "%{public}@Unable to unarchive %@, missing accessory", buf, 0x16u);
  }

  objc_autoreleasePoolPop(v10);
  v9 = 0;
LABEL_8:

  v15 = *MEMORY[0x1E69E9840];
  return v9;
}

- (id)copyWithZone:(_NSZone *)a3
{
  os_unfair_lock_lock_with_options();
  v4 = [HMAppleMediaAccessoryPowerAction initWithAccessory:self->_accessory targetSleepWakeState:self->_targetSleepWakeState uuid:?];
  os_unfair_lock_unlock(&self->_lock);
  return v4;
}

- (void)initWithAccessory:(void *)a1 targetSleepWakeState:(void *)a2 uuid:(uint64_t)a3
{
  v6 = a2;
  if (a1)
  {
    v9.receiver = a1;
    v9.super_class = HMAppleMediaAccessoryPowerAction;
    v7 = objc_msgSendSuper2(&v9, sel_initWithUUID_, 0);
    a1 = v7;
    if (v7)
    {
      objc_storeStrong(v7 + 7, a2);
      a1[8] = a3;
    }
  }

  return a1;
}

- (unint64_t)targetSleepWakeState
{
  os_unfair_lock_lock_with_options();
  targetSleepWakeState = self->_targetSleepWakeState;
  os_unfair_lock_unlock(&self->_lock);
  return targetSleepWakeState;
}

- (HMAccessory)accessory
{
  os_unfair_lock_lock_with_options();
  v3 = self->_accessory;
  os_unfair_lock_unlock(&self->_lock);

  return v3;
}

- (HMAppleMediaAccessoryPowerAction)initWithAccessory:(id)a3 targetSleepWakeState:(unint64_t)a4
{
  v6 = a3;
  v7 = [v6 category];
  v8 = [v7 categoryType];
  v9 = [v8 isEqualToString:@"F6D2A2AC-3A6E-4E6F-8196-678ABE909D8E"];

  v10 = 0;
  if (a4 && v9)
  {
    self = [HMAppleMediaAccessoryPowerAction initWithAccessory:v6 targetSleepWakeState:a4 uuid:?];
    v10 = self;
  }

  return v10;
}

- (HMAppleMediaAccessoryPowerAction)initWithUUID:(id)a3
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

- (HMAppleMediaAccessoryPowerAction)init
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