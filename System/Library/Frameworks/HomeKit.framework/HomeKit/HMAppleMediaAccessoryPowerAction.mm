@interface HMAppleMediaAccessoryPowerAction
- (BOOL)_handleUpdates:(id)updates;
- (BOOL)isEqual:(id)equal;
- (BOOL)isValidWithError:(id *)error;
- (BOOL)mergeFromNewObject:(id)object;
- (HMAccessory)accessory;
- (HMAppleMediaAccessoryPowerAction)init;
- (HMAppleMediaAccessoryPowerAction)initWithAccessory:(id)accessory targetSleepWakeState:(unint64_t)state;
- (HMAppleMediaAccessoryPowerAction)initWithCoder:(id)coder;
- (HMAppleMediaAccessoryPowerAction)initWithDictionary:(id)dictionary home:(id)home;
- (HMAppleMediaAccessoryPowerAction)initWithUUID:(id)d;
- (id)_serializeForAdd;
- (id)copyWithZone:(_NSZone *)zone;
- (unint64_t)targetSleepWakeState;
- (void)initWithAccessory:(void *)accessory targetSleepWakeState:(void *)state uuid:(uint64_t)uuid;
- (void)updateWithAction:(id)action completionHandler:(id)handler;
@end

@implementation HMAppleMediaAccessoryPowerAction

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (equalCopy == self)
  {
    v13 = 1;
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
    v7 = v6;
    if (v6)
    {
      accessory = [(HMAppleMediaAccessoryPowerAction *)v6 accessory];
      uuid = [accessory uuid];
      accessory2 = [(HMAppleMediaAccessoryPowerAction *)self accessory];
      uuid2 = [accessory2 uuid];
      if ([uuid hmf_isEqualToUUID:uuid2])
      {
        targetSleepWakeState = [(HMAppleMediaAccessoryPowerAction *)v7 targetSleepWakeState];
        v13 = targetSleepWakeState == [(HMAppleMediaAccessoryPowerAction *)self targetSleepWakeState];
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

- (BOOL)_handleUpdates:(id)updates
{
  updatesCopy = updates;
  actionSet = [(HMAction *)self actionSet];
  home = [actionSet home];

  v7 = [updatesCopy hmf_UUIDForKey:@"accessory"];
  v8 = [home accessoryWithUUID:v7];
  v9 = [updatesCopy hmf_numberForKey:@"HMAPA.targetState"];

  unsignedIntegerValue = [v9 unsignedIntegerValue];
  category = [v8 category];
  categoryType = [category categoryType];
  v13 = [categoryType isEqualToString:@"F6D2A2AC-3A6E-4E6F-8196-678ABE909D8E"];

  if (v13)
  {
    os_unfair_lock_lock_with_options();
    objc_storeStrong(&self->_accessory, v8);
    self->_targetSleepWakeState = unsignedIntegerValue;
    os_unfair_lock_unlock(&self->_lock);
  }

  return v13;
}

- (HMAppleMediaAccessoryPowerAction)initWithDictionary:(id)dictionary home:(id)home
{
  v33 = *MEMORY[0x1E69E9840];
  dictionaryCopy = dictionary;
  homeCopy = home;
  v26.receiver = self;
  v26.super_class = HMAppleMediaAccessoryPowerAction;
  v8 = [(HMAction *)&v26 initWithDictionary:dictionaryCopy home:homeCopy];
  if (!v8)
  {
    goto LABEL_5;
  }

  v9 = [dictionaryCopy hmf_UUIDForKey:@"accessory"];
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

  v10 = [homeCopy accessoryWithUUID:v9];
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

  v12 = [dictionaryCopy hmf_numberForKey:@"targetState"];
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
  _serializeForAdd = [(HMAction *)&v11 _serializeForAdd];
  v4 = [_serializeForAdd mutableCopy];

  accessory = [(HMAppleMediaAccessoryPowerAction *)self accessory];
  uuid = [accessory uuid];
  uUIDString = [uuid UUIDString];
  [v4 setObject:uUIDString forKeyedSubscript:@"accessory"];

  v8 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:{-[HMAppleMediaAccessoryPowerAction targetSleepWakeState](self, "targetSleepWakeState")}];
  [v4 setObject:v8 forKeyedSubscript:@"targetState"];

  v9 = [v4 copy];

  return v9;
}

- (BOOL)isValidWithError:(id *)error
{
  accessory = [(HMAppleMediaAccessoryPowerAction *)self accessory];
  category = [accessory category];
  categoryType = [category categoryType];
  if ([categoryType isEqualToString:@"F6D2A2AC-3A6E-4E6F-8196-678ABE909D8E"])
  {
    v7 = [(HMAppleMediaAccessoryPowerAction *)self targetSleepWakeState]!= 0;
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

- (void)updateWithAction:(id)action completionHandler:(id)handler
{
  actionCopy = action;
  handlerCopy = handler;
  actionSet = [(HMAction *)self actionSet];
  if (actionSet)
  {
    _serializeForAdd = [actionCopy _serializeForAdd];
    [actionSet _updateAction:self changes:_serializeForAdd completionHandler:handlerCopy];
  }

  else
  {
    _serializeForAdd = [MEMORY[0x1E696ABC0] hmfErrorWithCode:4];
    handlerCopy[2](handlerCopy, _serializeForAdd);
  }
}

- (BOOL)mergeFromNewObject:(id)object
{
  objectCopy = object;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = objectCopy;
  }

  else
  {
    v5 = 0;
  }

  v6 = v5;
  if (v6)
  {
    accessory = [(HMAppleMediaAccessoryPowerAction *)self accessory];
    accessory2 = [v6 accessory];
    uuid = [accessory uuid];
    uuid2 = [accessory2 uuid];
    v11 = [uuid hmf_isEqualToUUID:uuid2];

    if ((v11 & 1) == 0)
    {
      [(HMAppleMediaAccessoryPowerAction *)self setAccessory:accessory2];
    }

    targetSleepWakeState = [(HMAppleMediaAccessoryPowerAction *)self targetSleepWakeState];
    if (targetSleepWakeState == [v6 targetSleepWakeState])
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

- (HMAppleMediaAccessoryPowerAction)initWithCoder:(id)coder
{
  v22 = *MEMORY[0x1E69E9840];
  coderCopy = coder;
  v17.receiver = self;
  v17.super_class = HMAppleMediaAccessoryPowerAction;
  v5 = [(HMAction *)&v17 initWithCoder:coderCopy];
  if (!v5)
  {
    goto LABEL_4;
  }

  v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"HMAPA.accessory"];
  accessory = v5->_accessory;
  v5->_accessory = v6;

  if (v5->_accessory)
  {
    v8 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"HMAPA.targetState"];
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

- (id)copyWithZone:(_NSZone *)zone
{
  os_unfair_lock_lock_with_options();
  v4 = [HMAppleMediaAccessoryPowerAction initWithAccessory:self->_accessory targetSleepWakeState:self->_targetSleepWakeState uuid:?];
  os_unfair_lock_unlock(&self->_lock);
  return v4;
}

- (void)initWithAccessory:(void *)accessory targetSleepWakeState:(void *)state uuid:(uint64_t)uuid
{
  stateCopy = state;
  if (accessory)
  {
    v9.receiver = accessory;
    v9.super_class = HMAppleMediaAccessoryPowerAction;
    v7 = objc_msgSendSuper2(&v9, sel_initWithUUID_, 0);
    accessory = v7;
    if (v7)
    {
      objc_storeStrong(v7 + 7, state);
      accessory[8] = uuid;
    }
  }

  return accessory;
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

- (HMAppleMediaAccessoryPowerAction)initWithAccessory:(id)accessory targetSleepWakeState:(unint64_t)state
{
  accessoryCopy = accessory;
  category = [accessoryCopy category];
  categoryType = [category categoryType];
  v9 = [categoryType isEqualToString:@"F6D2A2AC-3A6E-4E6F-8196-678ABE909D8E"];

  selfCopy = 0;
  if (state && v9)
  {
    self = [HMAppleMediaAccessoryPowerAction initWithAccessory:accessoryCopy targetSleepWakeState:state uuid:?];
    selfCopy = self;
  }

  return selfCopy;
}

- (HMAppleMediaAccessoryPowerAction)initWithUUID:(id)d
{
  dCopy = d;
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