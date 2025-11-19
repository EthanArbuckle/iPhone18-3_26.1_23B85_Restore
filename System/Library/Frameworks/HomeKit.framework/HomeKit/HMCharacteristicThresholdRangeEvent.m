@interface HMCharacteristicThresholdRangeEvent
+ (id)createWithDictionary:(id)a3 home:(id)a4;
- (BOOL)mergeFromNewObject:(id)a3;
- (HMCharacteristic)characteristic;
- (HMCharacteristicThresholdRangeEvent)initWithCharacteristic:(HMCharacteristic *)characteristic thresholdRange:(HMNumberRange *)thresholdRange;
- (HMCharacteristicThresholdRangeEvent)initWithCoder:(id)a3;
- (HMCharacteristicThresholdRangeEvent)initWithDict:(id)a3 characteristic:(id)a4 thresholdRange:(id)a5;
- (HMNumberRange)thresholdRange;
- (id)_serializeForAdd;
- (id)copyWithZone:(_NSZone *)a3;
- (id)mutableCopyWithZone:(_NSZone *)a3;
- (void)_updateFromDictionary:(id)a3;
- (void)setCharacteristic:(id)a3;
- (void)setThresholdRange:(id)a3;
- (void)updateThresholdRange:(id)a3 completionHandler:(id)a4;
@end

@implementation HMCharacteristicThresholdRangeEvent

- (HMCharacteristicThresholdRangeEvent)initWithCoder:(id)a3
{
  v4 = a3;
  v15.receiver = self;
  v15.super_class = HMCharacteristicThresholdRangeEvent;
  v5 = [(HMEvent *)&v15 initWithCoder:v4];
  if (!v5)
  {
    goto LABEL_3;
  }

  v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"kCharacteristicThresholdRangeEventThresholdRangeMin"];
  v7 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"kCharacteristicThresholdRangeEventThresholdRangeMax"];
  v8 = [[HMNumberRange alloc] initWithMinValue:v6 maxValue:v7];
  thresholdRange = v5->_thresholdRange;
  v5->_thresholdRange = v8;

  v10 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"characteristic"];
  characteristic = v5->_characteristic;
  v5->_characteristic = v10;

  v12 = v5->_characteristic;
  if (!v12)
  {
    v13 = 0;
  }

  else
  {
LABEL_3:
    v13 = v5;
  }

  return v13;
}

- (id)mutableCopyWithZone:(_NSZone *)a3
{
  v4 = [HMMutableCharacteristicThresholdRangeEvent alloc];
  v5 = [(HMCharacteristicThresholdRangeEvent *)self characteristic];
  v6 = [(HMCharacteristicThresholdRangeEvent *)self thresholdRange];
  v7 = [(HMCharacteristicThresholdRangeEvent *)v4 initWithCharacteristic:v5 thresholdRange:v6];

  return v7;
}

+ (id)createWithDictionary:(id)a3 home:(id)a4
{
  v38 = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = a4;
  v8 = [v6 hmf_UUIDForKey:@"kAccessoryUUID"];
  v9 = [v6 hmf_numberForKey:@"kServiceInstanceID"];
  v10 = [v6 hmf_numberForKey:@"kCharacteristicInstanceID"];
  v11 = v10;
  if (v8 && v9 && v10)
  {
    v12 = [v7 _findCharacteristic:v10 forService:v9 accessoryUUID:v8];
    if (v12)
    {
      v13 = [v6 hmf_numberForKey:@"kCharacteristicThresholdRangeEventThresholdRangeMin"];
      v14 = [v6 hmf_numberForKey:@"kCharacteristicThresholdRangeEventThresholdRangeMax"];
      v15 = [HMCharacteristicThresholdRangeEvent alloc];
      v16 = [[HMNumberRange alloc] initWithMinValue:v13 maxValue:v14];
      v17 = [(HMCharacteristicThresholdRangeEvent *)v15 initWithDict:v6 characteristic:v12 thresholdRange:v16];
    }

    else
    {
      v22 = objc_autoreleasePoolPush();
      v23 = a1;
      v24 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v24, OS_LOG_TYPE_ERROR))
      {
        v25 = HMFGetLogIdentifier();
        v28 = 138544386;
        v29 = v25;
        v30 = 2112;
        v31 = objc_opt_class();
        v32 = 2112;
        v33 = v8;
        v34 = 2112;
        v35 = v9;
        v36 = 2112;
        v37 = v11;
        _os_log_impl(&dword_19BB39000, v24, OS_LOG_TYPE_ERROR, "%{public}@Unable to decode %@, failed to resolve characteristic %@/%@/%@", &v28, 0x34u);
      }

      objc_autoreleasePoolPop(v22);
      v17 = 0;
    }
  }

  else
  {
    v18 = objc_autoreleasePoolPush();
    v19 = a1;
    v20 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
    {
      v21 = HMFGetLogIdentifier();
      v28 = 138543618;
      v29 = v21;
      v30 = 2112;
      v31 = objc_opt_class();
      _os_log_impl(&dword_19BB39000, v20, OS_LOG_TYPE_ERROR, "%{public}@Unable to decode %@, missing accessory/service/characteristic ids", &v28, 0x16u);
    }

    objc_autoreleasePoolPop(v18);
    v17 = 0;
  }

  v26 = *MEMORY[0x1E69E9840];

  return v17;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = [HMCharacteristicThresholdRangeEvent alloc];
  v5 = [(HMCharacteristicThresholdRangeEvent *)self characteristic];
  v6 = [(HMCharacteristicThresholdRangeEvent *)self thresholdRange];
  v7 = [(HMCharacteristicThresholdRangeEvent *)v4 initWithCharacteristic:v5 thresholdRange:v6];

  return v7;
}

- (BOOL)mergeFromNewObject:(id)a3
{
  v4 = a3;
  v14.receiver = self;
  v14.super_class = HMCharacteristicThresholdRangeEvent;
  v5 = [(HMEvent *)&v14 mergeFromNewObject:v4];
  v6 = v4;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v7 = v6;
  }

  else
  {
    v7 = 0;
  }

  v8 = v7;

  if (v8)
  {
    v9 = [(HMCharacteristicThresholdRangeEvent *)self thresholdRange];
    v10 = [v8 thresholdRange];
    v11 = HMFEqualObjects();

    if ((v11 & 1) == 0)
    {
      v12 = [v8 thresholdRange];
      [(HMCharacteristicThresholdRangeEvent *)self setThresholdRange:v12];

      v5 = 1;
    }
  }

  return v5;
}

- (void)updateThresholdRange:(id)a3 completionHandler:(id)a4
{
  v39 = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = a4;
  v8 = [(HMEvent *)self context];
  if (!v7)
  {
    v29 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%s: %@ cannot be nil", "-[HMCharacteristicThresholdRangeEvent updateThresholdRange:completionHandler:]", @"completion"];
    v30 = objc_autoreleasePoolPush();
    v31 = self;
    v32 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v32, OS_LOG_TYPE_ERROR))
    {
      v33 = HMFGetLogIdentifier();
      *buf = 138543618;
      v36 = v33;
      v37 = 2112;
      v38 = v29;
      _os_log_impl(&dword_19BB39000, v32, OS_LOG_TYPE_ERROR, "%{public}@%@", buf, 0x16u);
    }

    objc_autoreleasePoolPop(v30);
    v34 = [MEMORY[0x1E695DF30] exceptionWithName:*MEMORY[0x1E695D940] reason:v29 userInfo:0];
    objc_exception_throw(v34);
  }

  v9 = v8;
  if (!v8)
  {
    v17 = objc_autoreleasePoolPush();
    v18 = self;
    v19 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
    {
      v20 = HMFGetLogIdentifier();
      *buf = 138543618;
      v36 = v20;
      v37 = 2080;
      v38 = "[HMCharacteristicThresholdRangeEvent updateThresholdRange:completionHandler:]";
      _os_log_impl(&dword_19BB39000, v19, OS_LOG_TYPE_ERROR, "%{public}@Nil context, invoking completion - %s", buf, 0x16u);
    }

    objc_autoreleasePoolPop(v17);
    v16 = [MEMORY[0x1E696ABC0] hmErrorWithCode:12];
    v7[2](v7, v16);
    goto LABEL_12;
  }

  if (!v6)
  {
    v16 = [v8 delegateCaller];
    v21 = [MEMORY[0x1E696ABC0] hmErrorWithCode:20];
    [v16 callCompletion:v7 error:v21];

LABEL_12:
    goto LABEL_13;
  }

  v10 = [(HMCharacteristicThresholdRangeEvent *)self thresholdRange];
  v11 = [v10 isEqual:v6];

  if (v11)
  {
    v12 = objc_autoreleasePoolPush();
    v13 = self;
    v14 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v14, OS_LOG_TYPE_INFO))
    {
      v15 = HMFGetLogIdentifier();
      *buf = 138543618;
      v36 = v15;
      v37 = 2112;
      v38 = v6;
      _os_log_impl(&dword_19BB39000, v14, OS_LOG_TYPE_INFO, "%{public}@Threshold range is already %@", buf, 0x16u);
    }

    objc_autoreleasePoolPop(v12);
    v16 = [v9 delegateCaller];
    [v16 callCompletion:v7 error:0];
    goto LABEL_12;
  }

  v23 = [MEMORY[0x1E695DF90] dictionary];
  v24 = [v6 minValue];

  if (v24)
  {
    v25 = [v6 minValue];
    [v23 setObject:v25 forKeyedSubscript:@"kCharacteristicThresholdRangeEventThresholdRangeMin"];
  }

  v26 = [v6 maxValue];

  if (v26)
  {
    v27 = [v6 maxValue];
    [v23 setObject:v27 forKeyedSubscript:@"kCharacteristicThresholdRangeEventThresholdRangeMax"];
  }

  v28 = [v23 copy];
  [(HMEvent *)self _updateEventWithPayload:v28 completionHandler:v7];

LABEL_13:
  v22 = *MEMORY[0x1E69E9840];
}

- (id)_serializeForAdd
{
  v22.receiver = self;
  v22.super_class = HMCharacteristicThresholdRangeEvent;
  v3 = [(HMEvent *)&v22 _serializeForAdd];
  v4 = [v3 mutableCopy];

  v5 = [(HMCharacteristicThresholdRangeEvent *)self characteristic];
  v6 = [v5 service];

  v7 = [v6 targetAccessoryUUID];
  v8 = [v7 UUIDString];
  [v4 setObject:v8 forKeyedSubscript:@"kAccessoryUUID"];

  v9 = [v6 instanceID];
  [v4 setObject:v9 forKeyedSubscript:@"kServiceInstanceID"];

  v10 = [(HMCharacteristicThresholdRangeEvent *)self characteristic];
  v11 = [v10 instanceID];
  [v4 setObject:v11 forKeyedSubscript:@"kCharacteristicInstanceID"];

  v12 = [(HMCharacteristicThresholdRangeEvent *)self thresholdRange];
  v13 = [v12 minValue];

  if (v13)
  {
    v14 = [(HMCharacteristicThresholdRangeEvent *)self thresholdRange];
    v15 = [v14 minValue];
    [v4 setObject:v15 forKeyedSubscript:@"kCharacteristicThresholdRangeEventThresholdRangeMin"];
  }

  v16 = [(HMCharacteristicThresholdRangeEvent *)self thresholdRange];
  v17 = [v16 maxValue];

  if (v17)
  {
    v18 = [(HMCharacteristicThresholdRangeEvent *)self thresholdRange];
    v19 = [v18 maxValue];
    [v4 setObject:v19 forKeyedSubscript:@"kCharacteristicThresholdRangeEventThresholdRangeMax"];
  }

  v20 = [v4 copy];

  return v20;
}

- (void)_updateFromDictionary:(id)a3
{
  v8.receiver = self;
  v8.super_class = HMCharacteristicThresholdRangeEvent;
  v4 = a3;
  [(HMEvent *)&v8 _updateFromDictionary:v4];
  v5 = [v4 hmf_numberForKey:{@"kCharacteristicThresholdRangeEventThresholdRangeMin", v8.receiver, v8.super_class}];
  v6 = [v4 hmf_numberForKey:@"kCharacteristicThresholdRangeEventThresholdRangeMax"];

  if (v5 | v6)
  {
    v7 = [[HMNumberRange alloc] initWithMinValue:v5 maxValue:v6];
    [(HMCharacteristicThresholdRangeEvent *)self setThresholdRange:v7];
  }
}

- (void)setThresholdRange:(id)a3
{
  v4 = a3;
  os_unfair_lock_lock_with_options();
  thresholdRange = self->_thresholdRange;
  self->_thresholdRange = v4;

  os_unfair_lock_unlock(&self->super._lock);
}

- (HMNumberRange)thresholdRange
{
  os_unfair_lock_lock_with_options();
  v3 = self->_thresholdRange;
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

- (HMCharacteristicThresholdRangeEvent)initWithDict:(id)a3 characteristic:(id)a4 thresholdRange:(id)a5
{
  v9 = a4;
  v10 = a5;
  v14.receiver = self;
  v14.super_class = HMCharacteristicThresholdRangeEvent;
  v11 = [(HMEvent *)&v14 initWithDict:a3];
  v12 = v11;
  if (v11)
  {
    objc_storeStrong(&v11->_characteristic, a4);
    objc_storeStrong(&v12->_thresholdRange, a5);
  }

  return v12;
}

- (HMCharacteristicThresholdRangeEvent)initWithCharacteristic:(HMCharacteristic *)characteristic thresholdRange:(HMNumberRange *)thresholdRange
{
  v24[1] = *MEMORY[0x1E69E9840];
  v6 = characteristic;
  v7 = thresholdRange;
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
  v13 = [(HMCharacteristicThresholdRangeEvent *)self initWithDict:v12 characteristic:v6 thresholdRange:v8];

  v14 = *MEMORY[0x1E69E9840];
  return v13;
}

@end