@interface HMSettingBooleanValue
- (BOOL)isEqual:(id)equal;
- (HMSettingBooleanValue)initWithBoolValue:(BOOL)value;
- (HMSettingBooleanValue)initWithPayload:(id)payload;
- (HMSettingBooleanValue)initWithProtoPayload:(id)payload;
- (id)attributeDescriptions;
- (id)payloadCopy;
- (id)protoPayload;
@end

@implementation HMSettingBooleanValue

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (self == equalCopy)
  {
    LOBYTE(v8) = 1;
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
    if (v6)
    {
      bOOLValue = [(HMSettingBooleanValue *)self BOOLValue];
      v8 = bOOLValue ^ [(HMSettingBooleanValue *)v6 BOOLValue]^ 1;
    }

    else
    {
      LOBYTE(v8) = 0;
    }
  }

  return v8;
}

- (id)attributeDescriptions
{
  v12[1] = *MEMORY[0x1E69E9840];
  v11.receiver = self;
  v11.super_class = HMSettingBooleanValue;
  attributeDescriptions = [(HMImmutableSettingValue *)&v11 attributeDescriptions];
  v4 = objc_alloc(MEMORY[0x1E69A29C8]);
  [(HMSettingBooleanValue *)self BOOLValue];
  v5 = HMFBooleanToString();
  v6 = [v4 initWithName:@"BOOLValue" value:v5];
  v12[0] = v6;
  v7 = [MEMORY[0x1E695DEC8] arrayWithObjects:v12 count:1];
  v8 = [attributeDescriptions arrayByAddingObjectsFromArray:v7];

  v9 = *MEMORY[0x1E69E9840];

  return v8;
}

- (HMSettingBooleanValue)initWithProtoPayload:(id)payload
{
  v20 = *MEMORY[0x1E69E9840];
  payloadCopy = payload;
  if ([payloadCopy hasBoolValueEvent])
  {
    bOOLValueEvent = [payloadCopy BOOLValueEvent];
    if ([bOOLValueEvent hasValue])
    {
      selfCopy2 = -[HMSettingBooleanValue initWithBoolValue:](self, "initWithBoolValue:", [bOOLValueEvent value]);
      v7 = selfCopy2;
    }

    else
    {
      v11 = objc_autoreleasePoolPush();
      selfCopy2 = self;
      v12 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
      {
        v13 = HMFGetLogIdentifier();
        v16 = 138543618;
        v17 = v13;
        v18 = 2112;
        v19 = payloadCopy;
        _os_log_impl(&dword_19BB39000, v12, OS_LOG_TYPE_ERROR, "%{public}@Failed to decode setting value due to no BOOL value in BOOL value event in proto payload: %@", &v16, 0x16u);
      }

      objc_autoreleasePoolPop(v11);
      v7 = 0;
    }
  }

  else
  {
    v8 = objc_autoreleasePoolPush();
    selfCopy2 = self;
    v9 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      v10 = HMFGetLogIdentifier();
      v16 = 138543618;
      v17 = v10;
      v18 = 2112;
      v19 = payloadCopy;
      _os_log_impl(&dword_19BB39000, v9, OS_LOG_TYPE_ERROR, "%{public}@Failed to decode setting value due to no BOOL value event type in proto payload: %@", &v16, 0x16u);
    }

    objc_autoreleasePoolPop(v8);
    v7 = 0;
  }

  v14 = *MEMORY[0x1E69E9840];
  return v7;
}

- (id)protoPayload
{
  v3 = objc_alloc_init(HMImmutableSettingsProtoValueEvent);
  v4 = objc_alloc_init(HMImmutableSettingsProtoBoolValueEvent);
  [(HMImmutableSettingsProtoBoolValueEvent *)v4 setValue:[(HMSettingBooleanValue *)self BOOLValue]];
  [(HMImmutableSettingsProtoValueEvent *)v3 setBoolValueEvent:v4];

  return v3;
}

- (HMSettingBooleanValue)initWithPayload:(id)payload
{
  v19 = *MEMORY[0x1E69E9840];
  payloadCopy = payload;
  v14 = 0;
  v5 = [payloadCopy hmf_BOOLForKey:@"HMImmutableSettingValuePayloadKey" error:&v14];
  v6 = v14;
  if (v6)
  {
    v7 = objc_autoreleasePoolPush();
    selfCopy = self;
    v9 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      v10 = HMFGetLogIdentifier();
      *buf = 138543618;
      v16 = v10;
      v17 = 2112;
      v18 = payloadCopy;
      _os_log_impl(&dword_19BB39000, v9, OS_LOG_TYPE_ERROR, "%{public}@Failed to decode setting BOOLean value due to no BOOL value in payload: %@", buf, 0x16u);
    }

    objc_autoreleasePoolPop(v7);
    v11 = 0;
  }

  else
  {
    selfCopy = [(HMSettingBooleanValue *)self initWithBoolValue:v5];
    v11 = selfCopy;
  }

  v12 = *MEMORY[0x1E69E9840];
  return v11;
}

- (id)payloadCopy
{
  v12[2] = *MEMORY[0x1E69E9840];
  v10.receiver = self;
  v10.super_class = HMSettingBooleanValue;
  payloadCopy = [(HMImmutableSettingValue *)&v10 payloadCopy];
  v4 = [payloadCopy mutableCopy];

  v11[0] = @"HMImmutableSettingValueTypePayloadKey";
  v11[1] = @"HMImmutableSettingValuePayloadKey";
  v12[0] = &unk_1F0EFCB90;
  v5 = [MEMORY[0x1E696AD98] numberWithBool:{-[HMSettingBooleanValue BOOLValue](self, "BOOLValue")}];
  v12[1] = v5;
  v6 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v12 forKeys:v11 count:2];
  [v4 addEntriesFromDictionary:v6];

  v7 = [v4 copy];
  v8 = *MEMORY[0x1E69E9840];

  return v7;
}

- (HMSettingBooleanValue)initWithBoolValue:(BOOL)value
{
  v5.receiver = self;
  v5.super_class = HMSettingBooleanValue;
  result = [(HMImmutableSettingValue *)&v5 initSettingValue];
  if (result)
  {
    result->_BOOLValue = value;
  }

  return result;
}

@end