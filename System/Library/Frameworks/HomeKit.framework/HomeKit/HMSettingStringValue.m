@interface HMSettingStringValue
- (BOOL)isEqual:(id)a3;
- (HMSettingStringValue)initWithPayload:(id)a3;
- (HMSettingStringValue)initWithProtoPayload:(id)a3;
- (HMSettingStringValue)initWithStringValue:(id)a3;
- (id)attributeDescriptions;
- (id)payloadCopy;
- (id)protoPayload;
- (unint64_t)hash;
@end

@implementation HMSettingStringValue

- (unint64_t)hash
{
  v2 = [(HMSettingStringValue *)self stringValue];
  v3 = [v2 hash];

  return v3;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (self == v4)
  {
    v9 = 1;
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
      v7 = [(HMSettingStringValue *)self stringValue];
      v8 = [(HMSettingStringValue *)v6 stringValue];
      v9 = [v7 isEqualToString:v8];
    }

    else
    {
      v9 = 0;
    }
  }

  return v9;
}

- (id)attributeDescriptions
{
  v12[1] = *MEMORY[0x1E69E9840];
  v11.receiver = self;
  v11.super_class = HMSettingStringValue;
  v3 = [(HMImmutableSettingValue *)&v11 attributeDescriptions];
  v4 = objc_alloc(MEMORY[0x1E69A29C8]);
  v5 = [(HMSettingStringValue *)self stringValue];
  v6 = [v4 initWithName:@"stringValue" value:v5];
  v12[0] = v6;
  v7 = [MEMORY[0x1E695DEC8] arrayWithObjects:v12 count:1];
  v8 = [v3 arrayByAddingObjectsFromArray:v7];

  v9 = *MEMORY[0x1E69E9840];

  return v8;
}

- (HMSettingStringValue)initWithProtoPayload:(id)a3
{
  v21 = *MEMORY[0x1E69E9840];
  v4 = a3;
  if ([v4 hasStringValueEvent])
  {
    v5 = [v4 stringValueEvent];
    if ([v5 hasValue])
    {
      v6 = [v5 value];
      v7 = [(HMSettingStringValue *)self initWithStringValue:v6];

      v8 = v7;
    }

    else
    {
      v12 = objc_autoreleasePoolPush();
      v7 = self;
      v13 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
      {
        v14 = HMFGetLogIdentifier();
        v17 = 138543618;
        v18 = v14;
        v19 = 2112;
        v20 = v4;
        _os_log_impl(&dword_19BB39000, v13, OS_LOG_TYPE_ERROR, "%{public}@Failed to decode setting value due to no string value in string value event in proto payload: %@", &v17, 0x16u);
      }

      objc_autoreleasePoolPop(v12);
      v8 = 0;
    }
  }

  else
  {
    v9 = objc_autoreleasePoolPush();
    v7 = self;
    v10 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      v11 = HMFGetLogIdentifier();
      v17 = 138543618;
      v18 = v11;
      v19 = 2112;
      v20 = v4;
      _os_log_impl(&dword_19BB39000, v10, OS_LOG_TYPE_ERROR, "%{public}@Failed to decode setting value due to no string value event type in proto payload: %@", &v17, 0x16u);
    }

    objc_autoreleasePoolPop(v9);
    v8 = 0;
  }

  v15 = *MEMORY[0x1E69E9840];
  return v8;
}

- (id)protoPayload
{
  v3 = objc_alloc_init(HMImmutableSettingsProtoValueEvent);
  v4 = objc_alloc_init(HMImmutableSettingsProtoStringValueEvent);
  v5 = [(HMSettingStringValue *)self stringValue];
  [(HMImmutableSettingsProtoStringValueEvent *)v4 setValue:v5];

  [(HMImmutableSettingsProtoValueEvent *)v3 setStringValueEvent:v4];

  return v3;
}

- (HMSettingStringValue)initWithPayload:(id)a3
{
  v17 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = [v4 hmf_stringForKey:@"HMImmutableSettingValuePayloadKey"];
  if (v5)
  {
    v6 = [(HMSettingStringValue *)self initWithStringValue:v5];
    v7 = v6;
  }

  else
  {
    v8 = objc_autoreleasePoolPush();
    v6 = self;
    v9 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      v10 = HMFGetLogIdentifier();
      v13 = 138543618;
      v14 = v10;
      v15 = 2112;
      v16 = v4;
      _os_log_impl(&dword_19BB39000, v9, OS_LOG_TYPE_ERROR, "%{public}@Failed to decode setting string value due to no string value in payload: %@", &v13, 0x16u);
    }

    objc_autoreleasePoolPop(v8);
    v7 = 0;
  }

  v11 = *MEMORY[0x1E69E9840];
  return v7;
}

- (id)payloadCopy
{
  v12[2] = *MEMORY[0x1E69E9840];
  v10.receiver = self;
  v10.super_class = HMSettingStringValue;
  v3 = [(HMImmutableSettingValue *)&v10 payloadCopy];
  v4 = [v3 mutableCopy];

  v11[0] = @"HMImmutableSettingValueTypePayloadKey";
  v11[1] = @"HMImmutableSettingValuePayloadKey";
  v12[0] = &unk_1F0EFD118;
  v5 = [(HMSettingStringValue *)self stringValue];
  v12[1] = v5;
  v6 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v12 forKeys:v11 count:2];
  [v4 addEntriesFromDictionary:v6];

  v7 = [v4 copy];
  v8 = *MEMORY[0x1E69E9840];

  return v7;
}

- (HMSettingStringValue)initWithStringValue:(id)a3
{
  v4 = a3;
  if (v4)
  {
    v5 = v4;
    v12.receiver = self;
    v12.super_class = HMSettingStringValue;
    v6 = [(HMImmutableSettingValue *)&v12 initSettingValue];
    if (v6)
    {
      v7 = [v5 copy];
      stringValue = v6->_stringValue;
      v6->_stringValue = v7;
    }

    return v6;
  }

  else
  {
    v10 = _HMFPreconditionFailure();
    [(HMCameraSnapshotControl *)v10 .cxx_destruct];
  }

  return result;
}

@end