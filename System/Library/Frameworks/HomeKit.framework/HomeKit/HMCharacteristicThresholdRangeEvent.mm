@interface HMCharacteristicThresholdRangeEvent
+ (id)createWithDictionary:(id)dictionary home:(id)home;
- (BOOL)mergeFromNewObject:(id)object;
- (HMCharacteristic)characteristic;
- (HMCharacteristicThresholdRangeEvent)initWithCharacteristic:(HMCharacteristic *)characteristic thresholdRange:(HMNumberRange *)thresholdRange;
- (HMCharacteristicThresholdRangeEvent)initWithCoder:(id)coder;
- (HMCharacteristicThresholdRangeEvent)initWithDict:(id)dict characteristic:(id)characteristic thresholdRange:(id)range;
- (HMNumberRange)thresholdRange;
- (id)_serializeForAdd;
- (id)copyWithZone:(_NSZone *)zone;
- (id)mutableCopyWithZone:(_NSZone *)zone;
- (void)_updateFromDictionary:(id)dictionary;
- (void)setCharacteristic:(id)characteristic;
- (void)setThresholdRange:(id)range;
- (void)updateThresholdRange:(id)range completionHandler:(id)handler;
@end

@implementation HMCharacteristicThresholdRangeEvent

- (HMCharacteristicThresholdRangeEvent)initWithCoder:(id)coder
{
  coderCopy = coder;
  v15.receiver = self;
  v15.super_class = HMCharacteristicThresholdRangeEvent;
  v5 = [(HMEvent *)&v15 initWithCoder:coderCopy];
  if (!v5)
  {
    goto LABEL_3;
  }

  v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"kCharacteristicThresholdRangeEventThresholdRangeMin"];
  v7 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"kCharacteristicThresholdRangeEventThresholdRangeMax"];
  v8 = [[HMNumberRange alloc] initWithMinValue:v6 maxValue:v7];
  thresholdRange = v5->_thresholdRange;
  v5->_thresholdRange = v8;

  v10 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"characteristic"];
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

- (id)mutableCopyWithZone:(_NSZone *)zone
{
  v4 = [HMMutableCharacteristicThresholdRangeEvent alloc];
  characteristic = [(HMCharacteristicThresholdRangeEvent *)self characteristic];
  thresholdRange = [(HMCharacteristicThresholdRangeEvent *)self thresholdRange];
  v7 = [(HMCharacteristicThresholdRangeEvent *)v4 initWithCharacteristic:characteristic thresholdRange:thresholdRange];

  return v7;
}

+ (id)createWithDictionary:(id)dictionary home:(id)home
{
  v38 = *MEMORY[0x1E69E9840];
  dictionaryCopy = dictionary;
  homeCopy = home;
  v8 = [dictionaryCopy hmf_UUIDForKey:@"kAccessoryUUID"];
  v9 = [dictionaryCopy hmf_numberForKey:@"kServiceInstanceID"];
  v10 = [dictionaryCopy hmf_numberForKey:@"kCharacteristicInstanceID"];
  v11 = v10;
  if (v8 && v9 && v10)
  {
    v12 = [homeCopy _findCharacteristic:v10 forService:v9 accessoryUUID:v8];
    if (v12)
    {
      v13 = [dictionaryCopy hmf_numberForKey:@"kCharacteristicThresholdRangeEventThresholdRangeMin"];
      v14 = [dictionaryCopy hmf_numberForKey:@"kCharacteristicThresholdRangeEventThresholdRangeMax"];
      v15 = [HMCharacteristicThresholdRangeEvent alloc];
      v16 = [[HMNumberRange alloc] initWithMinValue:v13 maxValue:v14];
      v17 = [(HMCharacteristicThresholdRangeEvent *)v15 initWithDict:dictionaryCopy characteristic:v12 thresholdRange:v16];
    }

    else
    {
      v22 = objc_autoreleasePoolPush();
      selfCopy = self;
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
    selfCopy2 = self;
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

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = [HMCharacteristicThresholdRangeEvent alloc];
  characteristic = [(HMCharacteristicThresholdRangeEvent *)self characteristic];
  thresholdRange = [(HMCharacteristicThresholdRangeEvent *)self thresholdRange];
  v7 = [(HMCharacteristicThresholdRangeEvent *)v4 initWithCharacteristic:characteristic thresholdRange:thresholdRange];

  return v7;
}

- (BOOL)mergeFromNewObject:(id)object
{
  objectCopy = object;
  v14.receiver = self;
  v14.super_class = HMCharacteristicThresholdRangeEvent;
  v5 = [(HMEvent *)&v14 mergeFromNewObject:objectCopy];
  v6 = objectCopy;
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
    thresholdRange = [(HMCharacteristicThresholdRangeEvent *)self thresholdRange];
    thresholdRange2 = [v8 thresholdRange];
    v11 = HMFEqualObjects();

    if ((v11 & 1) == 0)
    {
      thresholdRange3 = [v8 thresholdRange];
      [(HMCharacteristicThresholdRangeEvent *)self setThresholdRange:thresholdRange3];

      v5 = 1;
    }
  }

  return v5;
}

- (void)updateThresholdRange:(id)range completionHandler:(id)handler
{
  v39 = *MEMORY[0x1E69E9840];
  rangeCopy = range;
  handlerCopy = handler;
  context = [(HMEvent *)self context];
  if (!handlerCopy)
  {
    v29 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%s: %@ cannot be nil", "-[HMCharacteristicThresholdRangeEvent updateThresholdRange:completionHandler:]", @"completion"];
    v30 = objc_autoreleasePoolPush();
    selfCopy = self;
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

  v9 = context;
  if (!context)
  {
    v17 = objc_autoreleasePoolPush();
    selfCopy2 = self;
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
    delegateCaller = [MEMORY[0x1E696ABC0] hmErrorWithCode:12];
    handlerCopy[2](handlerCopy, delegateCaller);
    goto LABEL_12;
  }

  if (!rangeCopy)
  {
    delegateCaller = [context delegateCaller];
    v21 = [MEMORY[0x1E696ABC0] hmErrorWithCode:20];
    [delegateCaller callCompletion:handlerCopy error:v21];

LABEL_12:
    goto LABEL_13;
  }

  thresholdRange = [(HMCharacteristicThresholdRangeEvent *)self thresholdRange];
  v11 = [thresholdRange isEqual:rangeCopy];

  if (v11)
  {
    v12 = objc_autoreleasePoolPush();
    selfCopy3 = self;
    v14 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v14, OS_LOG_TYPE_INFO))
    {
      v15 = HMFGetLogIdentifier();
      *buf = 138543618;
      v36 = v15;
      v37 = 2112;
      v38 = rangeCopy;
      _os_log_impl(&dword_19BB39000, v14, OS_LOG_TYPE_INFO, "%{public}@Threshold range is already %@", buf, 0x16u);
    }

    objc_autoreleasePoolPop(v12);
    delegateCaller = [v9 delegateCaller];
    [delegateCaller callCompletion:handlerCopy error:0];
    goto LABEL_12;
  }

  dictionary = [MEMORY[0x1E695DF90] dictionary];
  minValue = [rangeCopy minValue];

  if (minValue)
  {
    minValue2 = [rangeCopy minValue];
    [dictionary setObject:minValue2 forKeyedSubscript:@"kCharacteristicThresholdRangeEventThresholdRangeMin"];
  }

  maxValue = [rangeCopy maxValue];

  if (maxValue)
  {
    maxValue2 = [rangeCopy maxValue];
    [dictionary setObject:maxValue2 forKeyedSubscript:@"kCharacteristicThresholdRangeEventThresholdRangeMax"];
  }

  v28 = [dictionary copy];
  [(HMEvent *)self _updateEventWithPayload:v28 completionHandler:handlerCopy];

LABEL_13:
  v22 = *MEMORY[0x1E69E9840];
}

- (id)_serializeForAdd
{
  v22.receiver = self;
  v22.super_class = HMCharacteristicThresholdRangeEvent;
  _serializeForAdd = [(HMEvent *)&v22 _serializeForAdd];
  v4 = [_serializeForAdd mutableCopy];

  characteristic = [(HMCharacteristicThresholdRangeEvent *)self characteristic];
  service = [characteristic service];

  targetAccessoryUUID = [service targetAccessoryUUID];
  uUIDString = [targetAccessoryUUID UUIDString];
  [v4 setObject:uUIDString forKeyedSubscript:@"kAccessoryUUID"];

  instanceID = [service instanceID];
  [v4 setObject:instanceID forKeyedSubscript:@"kServiceInstanceID"];

  characteristic2 = [(HMCharacteristicThresholdRangeEvent *)self characteristic];
  instanceID2 = [characteristic2 instanceID];
  [v4 setObject:instanceID2 forKeyedSubscript:@"kCharacteristicInstanceID"];

  thresholdRange = [(HMCharacteristicThresholdRangeEvent *)self thresholdRange];
  minValue = [thresholdRange minValue];

  if (minValue)
  {
    thresholdRange2 = [(HMCharacteristicThresholdRangeEvent *)self thresholdRange];
    minValue2 = [thresholdRange2 minValue];
    [v4 setObject:minValue2 forKeyedSubscript:@"kCharacteristicThresholdRangeEventThresholdRangeMin"];
  }

  thresholdRange3 = [(HMCharacteristicThresholdRangeEvent *)self thresholdRange];
  maxValue = [thresholdRange3 maxValue];

  if (maxValue)
  {
    thresholdRange4 = [(HMCharacteristicThresholdRangeEvent *)self thresholdRange];
    maxValue2 = [thresholdRange4 maxValue];
    [v4 setObject:maxValue2 forKeyedSubscript:@"kCharacteristicThresholdRangeEventThresholdRangeMax"];
  }

  v20 = [v4 copy];

  return v20;
}

- (void)_updateFromDictionary:(id)dictionary
{
  v8.receiver = self;
  v8.super_class = HMCharacteristicThresholdRangeEvent;
  dictionaryCopy = dictionary;
  [(HMEvent *)&v8 _updateFromDictionary:dictionaryCopy];
  v5 = [dictionaryCopy hmf_numberForKey:{@"kCharacteristicThresholdRangeEventThresholdRangeMin", v8.receiver, v8.super_class}];
  v6 = [dictionaryCopy hmf_numberForKey:@"kCharacteristicThresholdRangeEventThresholdRangeMax"];

  if (v5 | v6)
  {
    v7 = [[HMNumberRange alloc] initWithMinValue:v5 maxValue:v6];
    [(HMCharacteristicThresholdRangeEvent *)self setThresholdRange:v7];
  }
}

- (void)setThresholdRange:(id)range
{
  rangeCopy = range;
  os_unfair_lock_lock_with_options();
  thresholdRange = self->_thresholdRange;
  self->_thresholdRange = rangeCopy;

  os_unfair_lock_unlock(&self->super._lock);
}

- (HMNumberRange)thresholdRange
{
  os_unfair_lock_lock_with_options();
  v3 = self->_thresholdRange;
  os_unfair_lock_unlock(&self->super._lock);

  return v3;
}

- (void)setCharacteristic:(id)characteristic
{
  characteristicCopy = characteristic;
  os_unfair_lock_lock_with_options();
  characteristic = self->_characteristic;
  self->_characteristic = characteristicCopy;

  os_unfair_lock_unlock(&self->super._lock);
}

- (HMCharacteristic)characteristic
{
  os_unfair_lock_lock_with_options();
  v3 = self->_characteristic;
  os_unfair_lock_unlock(&self->super._lock);

  return v3;
}

- (HMCharacteristicThresholdRangeEvent)initWithDict:(id)dict characteristic:(id)characteristic thresholdRange:(id)range
{
  characteristicCopy = characteristic;
  rangeCopy = range;
  v14.receiver = self;
  v14.super_class = HMCharacteristicThresholdRangeEvent;
  v11 = [(HMEvent *)&v14 initWithDict:dict];
  v12 = v11;
  if (v11)
  {
    objc_storeStrong(&v11->_characteristic, characteristic);
    objc_storeStrong(&v12->_thresholdRange, range);
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
  properties = [(HMCharacteristic *)v6 properties];
  v10 = [properties containsObject:@"HMCharacteristicPropertySupportsEventNotification"];

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
  uUID = [MEMORY[0x1E696AFB0] UUID];
  v24[0] = uUID;
  v12 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v24 forKeys:&v23 count:1];
  v13 = [(HMCharacteristicThresholdRangeEvent *)self initWithDict:v12 characteristic:v6 thresholdRange:v8];

  v14 = *MEMORY[0x1E69E9840];
  return v13;
}

@end