@interface HMMatterAttributeEvent
+ (id)createWithDictionary:(id)dictionary home:(id)home;
+ (id)new;
- (BOOL)mergeFromNewObject:(id)object;
- (HMMatterAttributeEvent)initWithAttributeID:(id)d clusterID:(id)iD endpointID:(id)endpointID accessory:(id)accessory triggerValue:(id)value;
- (HMMatterAttributeEvent)initWithCoder:(id)coder;
- (HMMatterAttributeEvent)initWithDict:(id)dict attributeID:(id)d clusterID:(id)iD endpointID:(id)endpointID accessory:(id)accessory triggerValue:(id)value;
- (NSCopying)triggerValue;
- (id)_serializeForAdd;
- (id)copyWithZone:(_NSZone *)zone;
- (id)mutableCopyWithZone:(_NSZone *)zone;
- (void)_updateFromDictionary:(id)dictionary;
- (void)setTriggerValue:(id)value;
@end

@implementation HMMatterAttributeEvent

- (id)mutableCopyWithZone:(_NSZone *)zone
{
  v4 = [HMMutableMatterAttributeEvent alloc];
  attributeID = [(HMMatterAttributeEvent *)self attributeID];
  clusterID = [(HMMatterAttributeEvent *)self clusterID];
  endpointID = [(HMMatterAttributeEvent *)self endpointID];
  accessory = [(HMMatterAttributeEvent *)self accessory];
  triggerValue = [(HMMatterAttributeEvent *)self triggerValue];
  v10 = [(HMMatterAttributeEvent *)v4 initWithAttributeID:attributeID clusterID:clusterID endpointID:endpointID accessory:accessory triggerValue:triggerValue];

  return v10;
}

+ (id)createWithDictionary:(id)dictionary home:(id)home
{
  v35 = *MEMORY[0x1E69E9840];
  dictionaryCopy = dictionary;
  homeCopy = home;
  v8 = [dictionaryCopy objectForKeyedSubscript:@"HMAttributeValueKey"];
  v9 = [dictionaryCopy hmf_UUIDForKey:@"kAccessoryUUID"];
  v10 = [dictionaryCopy hmf_numberForKey:@"HMAttributeIDKey"];
  v11 = [dictionaryCopy hmf_numberForKey:@"HMClusterIDKey"];
  v12 = [dictionaryCopy hmf_numberForKey:@"HMEndpointIDKey"];
  v13 = v12;
  if (v9 && v10 && v11 && v12)
  {
    v14 = [homeCopy accessoryWithUUID:v9];
    if (v14)
    {
      v15 = [[HMMatterAttributeEvent alloc] initWithDict:dictionaryCopy attributeID:v10 clusterID:v11 endpointID:v13 accessory:v14 triggerValue:v8];
    }

    else
    {
      context = objc_autoreleasePoolPush();
      selfCopy = self;
      v22 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v22, OS_LOG_TYPE_ERROR))
      {
        HMFGetLogIdentifier();
        v23 = v26 = v8;
        *buf = 138543874;
        v30 = v23;
        v31 = 2112;
        v32 = objc_opt_class();
        v33 = 2112;
        v34 = v9;
        _os_log_impl(&dword_19BB39000, v22, OS_LOG_TYPE_ERROR, "%{public}@Unable to decode %@, failed to resolve accessory %@", buf, 0x20u);

        v8 = v26;
      }

      objc_autoreleasePoolPop(context);
      v15 = 0;
    }
  }

  else
  {
    v16 = objc_autoreleasePoolPush();
    selfCopy2 = self;
    v18 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
    {
      HMFGetLogIdentifier();
      contexta = homeCopy;
      v20 = v19 = v8;
      *buf = 138543618;
      v30 = v20;
      v31 = 2112;
      v32 = objc_opt_class();
      _os_log_impl(&dword_19BB39000, v18, OS_LOG_TYPE_ERROR, "%{public}@Unable to decode %@, missing accessory/attribute/cluster/endpoint ids", buf, 0x16u);

      v8 = v19;
      homeCopy = contexta;
    }

    objc_autoreleasePoolPop(v16);
    v15 = 0;
  }

  v24 = *MEMORY[0x1E69E9840];

  return v15;
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

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = [HMMatterAttributeEvent alloc];
  attributeID = [(HMMatterAttributeEvent *)self attributeID];
  clusterID = [(HMMatterAttributeEvent *)self clusterID];
  endpointID = [(HMMatterAttributeEvent *)self endpointID];
  accessory = [(HMMatterAttributeEvent *)self accessory];
  triggerValue = [(HMMatterAttributeEvent *)self triggerValue];
  v10 = [(HMMatterAttributeEvent *)v4 initWithAttributeID:attributeID clusterID:clusterID endpointID:endpointID accessory:accessory triggerValue:triggerValue];

  return v10;
}

- (BOOL)mergeFromNewObject:(id)object
{
  objectCopy = object;
  v14.receiver = self;
  v14.super_class = HMMatterAttributeEvent;
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
    triggerValue = [(HMMatterAttributeEvent *)self triggerValue];
    triggerValue2 = [v8 triggerValue];
    v11 = HMFEqualObjects();

    if ((v11 & 1) == 0)
    {
      triggerValue3 = [v8 triggerValue];
      [(HMMatterAttributeEvent *)self setTriggerValue:triggerValue3];

      v5 = 1;
    }
  }

  return v5;
}

- (HMMatterAttributeEvent)initWithCoder:(id)coder
{
  coderCopy = coder;
  v18.receiver = self;
  v18.super_class = HMMatterAttributeEvent;
  v5 = [(HMEvent *)&v18 initWithCoder:coderCopy];
  if (v5)
  {
    v6 = allowedCharValueTypes();
    v7 = [coderCopy decodeObjectOfClasses:v6 forKey:@"HMAttributeValueCodingKey"];
    triggerValue = v5->_triggerValue;
    v5->_triggerValue = v7;

    v9 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"HMAttributeIDCodingKey"];
    attributeID = v5->_attributeID;
    v5->_attributeID = v9;

    v11 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"HMClusterIDCodingKey"];
    clusterID = v5->_clusterID;
    v5->_clusterID = v11;

    v13 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"HMEndpointIDCodingKey"];
    endpointID = v5->_endpointID;
    v5->_endpointID = v13;

    v15 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"accessory"];
    accessory = v5->_accessory;
    v5->_accessory = v15;
  }

  return v5;
}

- (void)_updateFromDictionary:(id)dictionary
{
  v6.receiver = self;
  v6.super_class = HMMatterAttributeEvent;
  dictionaryCopy = dictionary;
  [(HMEvent *)&v6 _updateFromDictionary:dictionaryCopy];
  v5 = [dictionaryCopy objectForKeyedSubscript:{@"HMAttributeValueKey", v6.receiver, v6.super_class}];

  [(HMMatterAttributeEvent *)self setTriggerValue:v5];
}

- (id)_serializeForAdd
{
  v14.receiver = self;
  v14.super_class = HMMatterAttributeEvent;
  _serializeForAdd = [(HMEvent *)&v14 _serializeForAdd];
  v4 = [_serializeForAdd mutableCopy];

  accessory = [(HMMatterAttributeEvent *)self accessory];
  uuid = [accessory uuid];
  [v4 setObject:uuid forKeyedSubscript:@"kAccessoryUUID"];

  attributeID = [(HMMatterAttributeEvent *)self attributeID];
  [v4 setObject:attributeID forKeyedSubscript:@"HMAttributeIDKey"];

  clusterID = [(HMMatterAttributeEvent *)self clusterID];
  [v4 setObject:clusterID forKeyedSubscript:@"HMClusterIDKey"];

  endpointID = [(HMMatterAttributeEvent *)self endpointID];
  [v4 setObject:endpointID forKeyedSubscript:@"HMEndpointIDKey"];

  triggerValue = [(HMMatterAttributeEvent *)self triggerValue];

  if (triggerValue)
  {
    triggerValue2 = [(HMMatterAttributeEvent *)self triggerValue];
    [v4 setObject:triggerValue2 forKeyedSubscript:@"HMAttributeValueKey"];
  }

  v12 = [v4 copy];

  return v12;
}

- (void)setTriggerValue:(id)value
{
  valueCopy = value;
  os_unfair_lock_lock_with_options();
  triggerValue = self->_triggerValue;
  self->_triggerValue = valueCopy;

  os_unfair_lock_unlock(&self->super._lock);
}

- (NSCopying)triggerValue
{
  os_unfair_lock_lock_with_options();
  v3 = self->_triggerValue;
  os_unfair_lock_unlock(&self->super._lock);

  return v3;
}

- (HMMatterAttributeEvent)initWithAttributeID:(id)d clusterID:(id)iD endpointID:(id)endpointID accessory:(id)accessory triggerValue:(id)value
{
  v24[1] = *MEMORY[0x1E69E9840];
  v23 = @"kEventUUIDKey";
  v12 = MEMORY[0x1E696AFB0];
  valueCopy = value;
  accessoryCopy = accessory;
  endpointIDCopy = endpointID;
  iDCopy = iD;
  dCopy = d;
  uUID = [v12 UUID];
  v24[0] = uUID;
  v19 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v24 forKeys:&v23 count:1];
  v20 = [(HMMatterAttributeEvent *)self initWithDict:v19 attributeID:dCopy clusterID:iDCopy endpointID:endpointIDCopy accessory:accessoryCopy triggerValue:valueCopy];

  v21 = *MEMORY[0x1E69E9840];
  return v20;
}

- (HMMatterAttributeEvent)initWithDict:(id)dict attributeID:(id)d clusterID:(id)iD endpointID:(id)endpointID accessory:(id)accessory triggerValue:(id)value
{
  dCopy = d;
  iDCopy = iD;
  endpointIDCopy = endpointID;
  accessoryCopy = accessory;
  valueCopy = value;
  v25.receiver = self;
  v25.super_class = HMMatterAttributeEvent;
  v18 = [(HMEvent *)&v25 initWithDict:dict];
  v19 = v18;
  if (v18)
  {
    objc_storeStrong(&v18->_attributeID, d);
    objc_storeStrong(&v19->_clusterID, iD);
    objc_storeStrong(&v19->_endpointID, endpointID);
    objc_storeStrong(&v19->_accessory, accessory);
    v20 = [valueCopy copy];
    triggerValue = v19->_triggerValue;
    v19->_triggerValue = v20;
  }

  return v19;
}

@end