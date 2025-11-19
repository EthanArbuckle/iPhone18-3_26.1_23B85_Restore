@interface HMSettingIntegerValue
- (BOOL)isEqual:(id)a3;
- (HMSettingIntegerValue)initWithIntegerValue:(int64_t)a3;
- (HMSettingIntegerValue)initWithPayload:(id)a3;
- (HMSettingIntegerValue)initWithProtoPayload:(id)a3;
- (id)attributeDescriptions;
- (id)payloadCopy;
- (id)protoPayload;
@end

@implementation HMSettingIntegerValue

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (self == v4)
  {
    v8 = 1;
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
      v7 = [(HMSettingIntegerValue *)self integerValue];
      v8 = v7 == [(HMSettingIntegerValue *)v6 integerValue];
    }

    else
    {
      v8 = 0;
    }
  }

  return v8;
}

- (id)attributeDescriptions
{
  v12[1] = *MEMORY[0x1E69E9840];
  v11.receiver = self;
  v11.super_class = HMSettingIntegerValue;
  v3 = [(HMImmutableSettingValue *)&v11 attributeDescriptions];
  v4 = objc_alloc(MEMORY[0x1E69A29C8]);
  v5 = [MEMORY[0x1E696AD98] numberWithInteger:{-[HMSettingIntegerValue integerValue](self, "integerValue")}];
  v6 = [v4 initWithName:@"integerValue" value:v5];
  v12[0] = v6;
  v7 = [MEMORY[0x1E695DEC8] arrayWithObjects:v12 count:1];
  v8 = [v3 arrayByAddingObjectsFromArray:v7];

  v9 = *MEMORY[0x1E69E9840];

  return v8;
}

- (HMSettingIntegerValue)initWithProtoPayload:(id)a3
{
  v20 = *MEMORY[0x1E69E9840];
  v4 = a3;
  if ([v4 hasIntegerValueEvent])
  {
    v5 = [v4 integerValueEvent];
    if ([v5 hasValue])
    {
      v6 = -[HMSettingIntegerValue initWithIntegerValue:](self, "initWithIntegerValue:", [v5 value]);
      v7 = v6;
    }

    else
    {
      v11 = objc_autoreleasePoolPush();
      v6 = self;
      v12 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
      {
        v13 = HMFGetLogIdentifier();
        v16 = 138543618;
        v17 = v13;
        v18 = 2112;
        v19 = v4;
        _os_log_impl(&dword_19BB39000, v12, OS_LOG_TYPE_ERROR, "%{public}@Failed to decode setting value due to no integer value in integer value event in proto payload: %@", &v16, 0x16u);
      }

      objc_autoreleasePoolPop(v11);
      v7 = 0;
    }
  }

  else
  {
    v8 = objc_autoreleasePoolPush();
    v6 = self;
    v9 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      v10 = HMFGetLogIdentifier();
      v16 = 138543618;
      v17 = v10;
      v18 = 2112;
      v19 = v4;
      _os_log_impl(&dword_19BB39000, v9, OS_LOG_TYPE_ERROR, "%{public}@Failed to decode setting value due to no integer value event type in proto payload: %@", &v16, 0x16u);
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
  v4 = objc_alloc_init(HMImmutableSettingsProtoIntegerValueEvent);
  [(HMImmutableSettingsProtoIntegerValueEvent *)v4 setValue:[(HMSettingIntegerValue *)self integerValue]];
  [(HMImmutableSettingsProtoValueEvent *)v3 setIntegerValueEvent:v4];

  return v3;
}

- (HMSettingIntegerValue)initWithPayload:(id)a3
{
  v19 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v14 = 0;
  v5 = [v4 hmf_integerForKey:@"HMImmutableSettingValuePayloadKey" error:&v14];
  v6 = v14;
  if (v6)
  {
    v7 = objc_autoreleasePoolPush();
    v8 = self;
    v9 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      v10 = HMFGetLogIdentifier();
      *buf = 138543618;
      v16 = v10;
      v17 = 2112;
      v18 = v4;
      _os_log_impl(&dword_19BB39000, v9, OS_LOG_TYPE_ERROR, "%{public}@Failed to decode setting integer value due to no integer value in payload: %@", buf, 0x16u);
    }

    objc_autoreleasePoolPop(v7);
    v11 = 0;
  }

  else
  {
    v8 = [(HMSettingIntegerValue *)self initWithIntegerValue:v5];
    v11 = v8;
  }

  v12 = *MEMORY[0x1E69E9840];
  return v11;
}

- (id)payloadCopy
{
  v12[2] = *MEMORY[0x1E69E9840];
  v10.receiver = self;
  v10.super_class = HMSettingIntegerValue;
  v3 = [(HMImmutableSettingValue *)&v10 payloadCopy];
  v4 = [v3 mutableCopy];

  v11[0] = @"HMImmutableSettingValueTypePayloadKey";
  v11[1] = @"HMImmutableSettingValuePayloadKey";
  v12[0] = &unk_1F0EFD238;
  v5 = [MEMORY[0x1E696AD98] numberWithInteger:{-[HMSettingIntegerValue integerValue](self, "integerValue")}];
  v12[1] = v5;
  v6 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v12 forKeys:v11 count:2];
  [v4 addEntriesFromDictionary:v6];

  v7 = [v4 copy];
  v8 = *MEMORY[0x1E69E9840];

  return v7;
}

- (HMSettingIntegerValue)initWithIntegerValue:(int64_t)a3
{
  v5.receiver = self;
  v5.super_class = HMSettingIntegerValue;
  result = [(HMImmutableSettingValue *)&v5 initSettingValue];
  if (result)
  {
    result->_integerValue = a3;
  }

  return result;
}

@end