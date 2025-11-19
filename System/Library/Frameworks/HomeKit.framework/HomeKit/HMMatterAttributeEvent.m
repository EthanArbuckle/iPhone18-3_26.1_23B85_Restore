@interface HMMatterAttributeEvent
+ (id)createWithDictionary:(id)a3 home:(id)a4;
+ (id)new;
- (BOOL)mergeFromNewObject:(id)a3;
- (HMMatterAttributeEvent)initWithAttributeID:(id)a3 clusterID:(id)a4 endpointID:(id)a5 accessory:(id)a6 triggerValue:(id)a7;
- (HMMatterAttributeEvent)initWithCoder:(id)a3;
- (HMMatterAttributeEvent)initWithDict:(id)a3 attributeID:(id)a4 clusterID:(id)a5 endpointID:(id)a6 accessory:(id)a7 triggerValue:(id)a8;
- (NSCopying)triggerValue;
- (id)_serializeForAdd;
- (id)copyWithZone:(_NSZone *)a3;
- (id)mutableCopyWithZone:(_NSZone *)a3;
- (void)_updateFromDictionary:(id)a3;
- (void)setTriggerValue:(id)a3;
@end

@implementation HMMatterAttributeEvent

- (id)mutableCopyWithZone:(_NSZone *)a3
{
  v4 = [HMMutableMatterAttributeEvent alloc];
  v5 = [(HMMatterAttributeEvent *)self attributeID];
  v6 = [(HMMatterAttributeEvent *)self clusterID];
  v7 = [(HMMatterAttributeEvent *)self endpointID];
  v8 = [(HMMatterAttributeEvent *)self accessory];
  v9 = [(HMMatterAttributeEvent *)self triggerValue];
  v10 = [(HMMatterAttributeEvent *)v4 initWithAttributeID:v5 clusterID:v6 endpointID:v7 accessory:v8 triggerValue:v9];

  return v10;
}

+ (id)createWithDictionary:(id)a3 home:(id)a4
{
  v35 = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = a4;
  v8 = [v6 objectForKeyedSubscript:@"HMAttributeValueKey"];
  v9 = [v6 hmf_UUIDForKey:@"kAccessoryUUID"];
  v10 = [v6 hmf_numberForKey:@"HMAttributeIDKey"];
  v11 = [v6 hmf_numberForKey:@"HMClusterIDKey"];
  v12 = [v6 hmf_numberForKey:@"HMEndpointIDKey"];
  v13 = v12;
  if (v9 && v10 && v11 && v12)
  {
    v14 = [v7 accessoryWithUUID:v9];
    if (v14)
    {
      v15 = [[HMMatterAttributeEvent alloc] initWithDict:v6 attributeID:v10 clusterID:v11 endpointID:v13 accessory:v14 triggerValue:v8];
    }

    else
    {
      context = objc_autoreleasePoolPush();
      v21 = a1;
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
    v17 = a1;
    v18 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
    {
      HMFGetLogIdentifier();
      contexta = v7;
      v20 = v19 = v8;
      *buf = 138543618;
      v30 = v20;
      v31 = 2112;
      v32 = objc_opt_class();
      _os_log_impl(&dword_19BB39000, v18, OS_LOG_TYPE_ERROR, "%{public}@Unable to decode %@, missing accessory/attribute/cluster/endpoint ids", buf, 0x16u);

      v8 = v19;
      v7 = contexta;
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

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = [HMMatterAttributeEvent alloc];
  v5 = [(HMMatterAttributeEvent *)self attributeID];
  v6 = [(HMMatterAttributeEvent *)self clusterID];
  v7 = [(HMMatterAttributeEvent *)self endpointID];
  v8 = [(HMMatterAttributeEvent *)self accessory];
  v9 = [(HMMatterAttributeEvent *)self triggerValue];
  v10 = [(HMMatterAttributeEvent *)v4 initWithAttributeID:v5 clusterID:v6 endpointID:v7 accessory:v8 triggerValue:v9];

  return v10;
}

- (BOOL)mergeFromNewObject:(id)a3
{
  v4 = a3;
  v14.receiver = self;
  v14.super_class = HMMatterAttributeEvent;
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
    v9 = [(HMMatterAttributeEvent *)self triggerValue];
    v10 = [v8 triggerValue];
    v11 = HMFEqualObjects();

    if ((v11 & 1) == 0)
    {
      v12 = [v8 triggerValue];
      [(HMMatterAttributeEvent *)self setTriggerValue:v12];

      v5 = 1;
    }
  }

  return v5;
}

- (HMMatterAttributeEvent)initWithCoder:(id)a3
{
  v4 = a3;
  v18.receiver = self;
  v18.super_class = HMMatterAttributeEvent;
  v5 = [(HMEvent *)&v18 initWithCoder:v4];
  if (v5)
  {
    v6 = allowedCharValueTypes();
    v7 = [v4 decodeObjectOfClasses:v6 forKey:@"HMAttributeValueCodingKey"];
    triggerValue = v5->_triggerValue;
    v5->_triggerValue = v7;

    v9 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"HMAttributeIDCodingKey"];
    attributeID = v5->_attributeID;
    v5->_attributeID = v9;

    v11 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"HMClusterIDCodingKey"];
    clusterID = v5->_clusterID;
    v5->_clusterID = v11;

    v13 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"HMEndpointIDCodingKey"];
    endpointID = v5->_endpointID;
    v5->_endpointID = v13;

    v15 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"accessory"];
    accessory = v5->_accessory;
    v5->_accessory = v15;
  }

  return v5;
}

- (void)_updateFromDictionary:(id)a3
{
  v6.receiver = self;
  v6.super_class = HMMatterAttributeEvent;
  v4 = a3;
  [(HMEvent *)&v6 _updateFromDictionary:v4];
  v5 = [v4 objectForKeyedSubscript:{@"HMAttributeValueKey", v6.receiver, v6.super_class}];

  [(HMMatterAttributeEvent *)self setTriggerValue:v5];
}

- (id)_serializeForAdd
{
  v14.receiver = self;
  v14.super_class = HMMatterAttributeEvent;
  v3 = [(HMEvent *)&v14 _serializeForAdd];
  v4 = [v3 mutableCopy];

  v5 = [(HMMatterAttributeEvent *)self accessory];
  v6 = [v5 uuid];
  [v4 setObject:v6 forKeyedSubscript:@"kAccessoryUUID"];

  v7 = [(HMMatterAttributeEvent *)self attributeID];
  [v4 setObject:v7 forKeyedSubscript:@"HMAttributeIDKey"];

  v8 = [(HMMatterAttributeEvent *)self clusterID];
  [v4 setObject:v8 forKeyedSubscript:@"HMClusterIDKey"];

  v9 = [(HMMatterAttributeEvent *)self endpointID];
  [v4 setObject:v9 forKeyedSubscript:@"HMEndpointIDKey"];

  v10 = [(HMMatterAttributeEvent *)self triggerValue];

  if (v10)
  {
    v11 = [(HMMatterAttributeEvent *)self triggerValue];
    [v4 setObject:v11 forKeyedSubscript:@"HMAttributeValueKey"];
  }

  v12 = [v4 copy];

  return v12;
}

- (void)setTriggerValue:(id)a3
{
  v4 = a3;
  os_unfair_lock_lock_with_options();
  triggerValue = self->_triggerValue;
  self->_triggerValue = v4;

  os_unfair_lock_unlock(&self->super._lock);
}

- (NSCopying)triggerValue
{
  os_unfair_lock_lock_with_options();
  v3 = self->_triggerValue;
  os_unfair_lock_unlock(&self->super._lock);

  return v3;
}

- (HMMatterAttributeEvent)initWithAttributeID:(id)a3 clusterID:(id)a4 endpointID:(id)a5 accessory:(id)a6 triggerValue:(id)a7
{
  v24[1] = *MEMORY[0x1E69E9840];
  v23 = @"kEventUUIDKey";
  v12 = MEMORY[0x1E696AFB0];
  v13 = a7;
  v14 = a6;
  v15 = a5;
  v16 = a4;
  v17 = a3;
  v18 = [v12 UUID];
  v24[0] = v18;
  v19 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v24 forKeys:&v23 count:1];
  v20 = [(HMMatterAttributeEvent *)self initWithDict:v19 attributeID:v17 clusterID:v16 endpointID:v15 accessory:v14 triggerValue:v13];

  v21 = *MEMORY[0x1E69E9840];
  return v20;
}

- (HMMatterAttributeEvent)initWithDict:(id)a3 attributeID:(id)a4 clusterID:(id)a5 endpointID:(id)a6 accessory:(id)a7 triggerValue:(id)a8
{
  v24 = a4;
  v23 = a5;
  v15 = a6;
  v16 = a7;
  v17 = a8;
  v25.receiver = self;
  v25.super_class = HMMatterAttributeEvent;
  v18 = [(HMEvent *)&v25 initWithDict:a3];
  v19 = v18;
  if (v18)
  {
    objc_storeStrong(&v18->_attributeID, a4);
    objc_storeStrong(&v19->_clusterID, a5);
    objc_storeStrong(&v19->_endpointID, a6);
    objc_storeStrong(&v19->_accessory, a7);
    v20 = [v17 copy];
    triggerValue = v19->_triggerValue;
    v19->_triggerValue = v20;
  }

  return v19;
}

@end