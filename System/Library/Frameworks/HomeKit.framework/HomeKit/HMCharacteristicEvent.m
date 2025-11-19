@interface HMCharacteristicEvent
+ (id)createWithDictionary:(id)a3 home:(id)a4;
- (BOOL)mergeFromNewObject:(id)a3;
- (HMCharacteristic)characteristic;
- (HMCharacteristicEvent)initWithCharacteristic:(HMCharacteristic *)characteristic triggerValue:(id)triggerValue;
- (HMCharacteristicEvent)initWithCoder:(id)a3;
- (HMCharacteristicEvent)initWithDict:(id)a3 characteristic:(id)a4 triggerValue:(id)a5;
- (id)_serializeForAdd;
- (id)copyWithZone:(_NSZone *)a3;
- (id)mutableCopyWithZone:(_NSZone *)a3;
- (id)triggerValue;
- (void)_updateFromDictionary:(id)a3;
- (void)setCharacteristic:(id)a3;
- (void)setTriggerValue:(id)a3;
- (void)updateTriggerValue:(id)triggerValue completionHandler:(void *)completion;
@end

@implementation HMCharacteristicEvent

- (id)mutableCopyWithZone:(_NSZone *)a3
{
  v4 = [HMMutableCharacteristicEvent alloc];
  v5 = [(HMCharacteristicEvent *)self characteristic];
  v6 = [(HMCharacteristicEvent *)self triggerValue];
  v7 = [(HMCharacteristicEvent *)v4 initWithCharacteristic:v5 triggerValue:v6];

  return v7;
}

+ (id)createWithDictionary:(id)a3 home:(id)a4
{
  v36 = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = a4;
  v8 = [v6 objectForKeyedSubscript:@"kCharacteristicValue"];
  v9 = [v6 hmf_UUIDForKey:@"kAccessoryUUID"];
  v10 = [v6 hmf_numberForKey:@"kServiceInstanceID"];
  v11 = [v6 hmf_numberForKey:@"kCharacteristicInstanceID"];
  v12 = v11;
  if (v9 && v10 && v11)
  {
    v13 = [v7 _findCharacteristic:v11 forService:v10 accessoryUUID:v9];
    if (v13)
    {
      v14 = [[HMCharacteristicEvent alloc] initWithDict:v6 characteristic:v13 triggerValue:v8];
    }

    else
    {
      v19 = objc_autoreleasePoolPush();
      v20 = a1;
      v21 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
      {
        HMFGetLogIdentifier();
        v22 = v25 = v19;
        *buf = 138544386;
        v27 = v22;
        v28 = 2112;
        v29 = objc_opt_class();
        v30 = 2112;
        v31 = v9;
        v32 = 2112;
        v33 = v10;
        v34 = 2112;
        v35 = v12;
        _os_log_impl(&dword_19BB39000, v21, OS_LOG_TYPE_ERROR, "%{public}@Unable to decode %@, failed to resolve characteristic %@/%@/%@", buf, 0x34u);

        v19 = v25;
      }

      objc_autoreleasePoolPop(v19);
      v14 = 0;
    }
  }

  else
  {
    v15 = objc_autoreleasePoolPush();
    v16 = a1;
    v17 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
    {
      v18 = HMFGetLogIdentifier();
      *buf = 138543618;
      v27 = v18;
      v28 = 2112;
      v29 = objc_opt_class();
      _os_log_impl(&dword_19BB39000, v17, OS_LOG_TYPE_ERROR, "%{public}@Unable to decode %@, missing accessory/service/characteristic ids", buf, 0x16u);
    }

    objc_autoreleasePoolPop(v15);
    v14 = 0;
  }

  v23 = *MEMORY[0x1E69E9840];

  return v14;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = [HMCharacteristicEvent alloc];
  v5 = [(HMCharacteristicEvent *)self characteristic];
  v6 = [(HMCharacteristicEvent *)self triggerValue];
  v7 = [(HMCharacteristicEvent *)v4 initWithCharacteristic:v5 triggerValue:v6];

  return v7;
}

- (BOOL)mergeFromNewObject:(id)a3
{
  v4 = a3;
  v12.receiver = self;
  v12.super_class = HMCharacteristicEvent;
  v5 = [(HMEvent *)&v12 mergeFromNewObject:v4];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v6 = v4;
    v7 = [(HMCharacteristicEvent *)self triggerValue];
    v8 = [v6 triggerValue];
    v9 = HMFEqualObjects();

    if ((v9 & 1) == 0)
    {
      v10 = [v6 triggerValue];
      [(HMCharacteristicEvent *)self setTriggerValue:v10];

      v5 = 1;
    }
  }

  return v5;
}

- (HMCharacteristicEvent)initWithCoder:(id)a3
{
  v4 = a3;
  v13.receiver = self;
  v13.super_class = HMCharacteristicEvent;
  v5 = [(HMEvent *)&v13 initWithCoder:v4];
  if (!v5)
  {
    goto LABEL_3;
  }

  v6 = allowedCharValueTypes();
  v7 = [v4 decodeObjectOfClasses:v6 forKey:@"characteristicValue"];
  triggerValue = v5->_triggerValue;
  v5->_triggerValue = v7;

  v9 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"characteristic"];
  characteristic = v5->_characteristic;
  v5->_characteristic = v9;

  if (!v5->_characteristic)
  {
    v11 = 0;
  }

  else
  {
LABEL_3:
    v11 = v5;
  }

  return v11;
}

- (void)_updateFromDictionary:(id)a3
{
  v6.receiver = self;
  v6.super_class = HMCharacteristicEvent;
  v4 = a3;
  [(HMEvent *)&v6 _updateFromDictionary:v4];
  v5 = [v4 objectForKeyedSubscript:{@"kCharacteristicValue", v6.receiver, v6.super_class}];

  [(HMCharacteristicEvent *)self setTriggerValue:v5];
}

- (id)_serializeForAdd
{
  v3 = [(HMCharacteristicEvent *)self characteristic];
  v4 = [v3 service];

  v5 = [v4 accessory];
  v6 = v5;
  v7 = 0;
  if (v4 && v5)
  {
    v18.receiver = self;
    v18.super_class = HMCharacteristicEvent;
    v8 = [(HMEvent *)&v18 _serializeForAdd];
    v9 = [v8 mutableCopy];

    v10 = [v4 targetAccessoryUUID];
    v11 = [v10 UUIDString];
    [v9 setObject:v11 forKeyedSubscript:@"kAccessoryUUID"];

    v12 = [v4 instanceID];
    [v9 setObject:v12 forKeyedSubscript:@"kServiceInstanceID"];

    v13 = [(HMCharacteristicEvent *)self characteristic];
    v14 = [v13 instanceID];
    [v9 setObject:v14 forKeyedSubscript:@"kCharacteristicInstanceID"];

    v15 = [(HMCharacteristicEvent *)self triggerValue];

    if (v15)
    {
      v16 = [(HMCharacteristicEvent *)self triggerValue];
      [v9 setObject:v16 forKeyedSubscript:@"kCharacteristicValue"];
    }

    v7 = [v9 copy];
  }

  return v7;
}

- (void)updateTriggerValue:(id)triggerValue completionHandler:(void *)completion
{
  v39 = *MEMORY[0x1E69E9840];
  v6 = triggerValue;
  v7 = completion;
  v8 = [(HMEvent *)self context];
  if (!v7)
  {
    v27 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%s: %@ cannot be nil", "-[HMCharacteristicEvent updateTriggerValue:completionHandler:]", @"completion"];
    v28 = objc_autoreleasePoolPush();
    v29 = self;
    v30 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v30, OS_LOG_TYPE_ERROR))
    {
      v31 = HMFGetLogIdentifier();
      *buf = 138543618;
      v36 = v31;
      v37 = 2112;
      v38 = v27;
      _os_log_impl(&dword_19BB39000, v30, OS_LOG_TYPE_ERROR, "%{public}@%@", buf, 0x16u);
    }

    objc_autoreleasePoolPop(v28);
    v32 = [MEMORY[0x1E695DF30] exceptionWithName:*MEMORY[0x1E695D940] reason:v27 userInfo:0];
    objc_exception_throw(v32);
  }

  v9 = v8;
  if (v8)
  {
    v10 = [(HMEvent *)self eventTrigger];
    v11 = v10;
    if (!v10 || ([v10 home], v12 = objc_claimAutoreleasedReturnValue(), v12, !v12))
    {
      v19 = [v9 delegateCaller];
      v20 = [MEMORY[0x1E696ABC0] hmErrorWithCode:12];
      [v19 callCompletion:v7 error:v20];

LABEL_10:
      goto LABEL_18;
    }

    v13 = [(HMCharacteristicEvent *)self triggerValue];
    v14 = HMFEqualObjects();

    if (v14)
    {
      v15 = objc_autoreleasePoolPush();
      v16 = self;
      v17 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v17, OS_LOG_TYPE_INFO))
      {
        v18 = HMFGetLogIdentifier();
        *buf = 138543618;
        v36 = v18;
        v37 = 2112;
        v38 = v6;
        _os_log_impl(&dword_19BB39000, v17, OS_LOG_TYPE_INFO, "%{public}@Trigger value is already %@", buf, 0x16u);
      }

      objc_autoreleasePoolPop(v15);
      v19 = [v9 delegateCaller];
      [v19 callCompletion:v7 error:0];
      goto LABEL_10;
    }

    if (v6)
    {
      v33 = @"kCharacteristicValue";
      v34 = v6;
      v25 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v34 forKeys:&v33 count:1];
    }

    else
    {
      v25 = 0;
    }

    [(HMEvent *)self _updateEventWithPayload:v25 completionHandler:v7];
  }

  else
  {
    v21 = objc_autoreleasePoolPush();
    v22 = self;
    v23 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v23, OS_LOG_TYPE_ERROR))
    {
      v24 = HMFGetLogIdentifier();
      *buf = 138543618;
      v36 = v24;
      v37 = 2080;
      v38 = "[HMCharacteristicEvent updateTriggerValue:completionHandler:]";
      _os_log_impl(&dword_19BB39000, v23, OS_LOG_TYPE_ERROR, "%{public}@Nil context, invoking completion - %s", buf, 0x16u);
    }

    objc_autoreleasePoolPop(v21);
    v11 = [MEMORY[0x1E696ABC0] hmErrorWithCode:12];
    v7[2](v7, v11);
  }

LABEL_18:

  v26 = *MEMORY[0x1E69E9840];
}

- (void)setTriggerValue:(id)a3
{
  v4 = a3;
  os_unfair_lock_lock_with_options();
  triggerValue = self->_triggerValue;
  self->_triggerValue = v4;

  os_unfair_lock_unlock(&self->super._lock);
}

- (id)triggerValue
{
  os_unfair_lock_lock_with_options();
  v3 = self->_triggerValue;
  os_unfair_lock_unlock(&self->super._lock);

  return v3;
}

- (void)setCharacteristic:(id)a3
{
  v4 = a3;
  os_unfair_lock_lock_with_options();
  characteristic = self->_characteristic;
  self->_characteristic = v4;

  os_unfair_lock_unlock(&self->super._lock);
}

- (HMCharacteristic)characteristic
{
  os_unfair_lock_lock_with_options();
  v3 = self->_characteristic;
  os_unfair_lock_unlock(&self->super._lock);

  return v3;
}

- (HMCharacteristicEvent)initWithCharacteristic:(HMCharacteristic *)characteristic triggerValue:(id)triggerValue
{
  v24[1] = *MEMORY[0x1E69E9840];
  v6 = characteristic;
  v7 = triggerValue;
  if (!v6)
  {
    v16 = MEMORY[0x1E695DF30];
    v17 = *MEMORY[0x1E695D940];
    v18 = MEMORY[0x1E696ABC0];
    v19 = 3;
    goto LABEL_6;
  }

  v8 = v7;
  v9 = [(HMCharacteristic *)v6 properties];
  v10 = [v9 containsObject:@"HMCharacteristicPropertySupportsEventNotification"];

  if ((v10 & 1) == 0)
  {
    v16 = MEMORY[0x1E695DF30];
    v17 = *MEMORY[0x1E695D940];
    v18 = MEMORY[0x1E696ABC0];
    v19 = 7;
LABEL_6:
    v20 = [v18 hmStringFromErrorCode:v19];
    v21 = [v16 exceptionWithName:v17 reason:v20 userInfo:0];
    v22 = v21;

    objc_exception_throw(v21);
  }

  v23 = @"kEventUUIDKey";
  v11 = [MEMORY[0x1E696AFB0] UUID];
  v24[0] = v11;
  v12 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v24 forKeys:&v23 count:1];
  v13 = [(HMCharacteristicEvent *)self initWithDict:v12 characteristic:v6 triggerValue:v8];

  v14 = *MEMORY[0x1E69E9840];
  return v13;
}

- (HMCharacteristicEvent)initWithDict:(id)a3 characteristic:(id)a4 triggerValue:(id)a5
{
  v9 = a4;
  v10 = a5;
  v16.receiver = self;
  v16.super_class = HMCharacteristicEvent;
  v11 = [(HMEvent *)&v16 initWithDict:a3];
  v12 = v11;
  if (v11)
  {
    objc_storeStrong(&v11->_characteristic, a4);
    v13 = [v10 copy];
    triggerValue = v12->_triggerValue;
    v12->_triggerValue = v13;
  }

  return v12;
}

@end