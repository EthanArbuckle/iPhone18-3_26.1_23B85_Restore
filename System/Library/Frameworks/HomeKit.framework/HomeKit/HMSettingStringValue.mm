@interface HMSettingStringValue
- (BOOL)isEqual:(id)equal;
- (HMSettingStringValue)initWithPayload:(id)payload;
- (HMSettingStringValue)initWithProtoPayload:(id)payload;
- (HMSettingStringValue)initWithStringValue:(id)value;
- (id)attributeDescriptions;
- (id)payloadCopy;
- (id)protoPayload;
- (unint64_t)hash;
@end

@implementation HMSettingStringValue

- (unint64_t)hash
{
  stringValue = [(HMSettingStringValue *)self stringValue];
  v3 = [stringValue hash];

  return v3;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (self == equalCopy)
  {
    v9 = 1;
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
      stringValue = [(HMSettingStringValue *)self stringValue];
      stringValue2 = [(HMSettingStringValue *)v6 stringValue];
      v9 = [stringValue isEqualToString:stringValue2];
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
  attributeDescriptions = [(HMImmutableSettingValue *)&v11 attributeDescriptions];
  v4 = objc_alloc(MEMORY[0x1E69A29C8]);
  stringValue = [(HMSettingStringValue *)self stringValue];
  v6 = [v4 initWithName:@"stringValue" value:stringValue];
  v12[0] = v6;
  v7 = [MEMORY[0x1E695DEC8] arrayWithObjects:v12 count:1];
  v8 = [attributeDescriptions arrayByAddingObjectsFromArray:v7];

  v9 = *MEMORY[0x1E69E9840];

  return v8;
}

- (HMSettingStringValue)initWithProtoPayload:(id)payload
{
  v21 = *MEMORY[0x1E69E9840];
  payloadCopy = payload;
  if ([payloadCopy hasStringValueEvent])
  {
    stringValueEvent = [payloadCopy stringValueEvent];
    if ([stringValueEvent hasValue])
    {
      value = [stringValueEvent value];
      selfCopy2 = [(HMSettingStringValue *)self initWithStringValue:value];

      v8 = selfCopy2;
    }

    else
    {
      v12 = objc_autoreleasePoolPush();
      selfCopy2 = self;
      v13 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
      {
        v14 = HMFGetLogIdentifier();
        v17 = 138543618;
        v18 = v14;
        v19 = 2112;
        v20 = payloadCopy;
        _os_log_impl(&dword_19BB39000, v13, OS_LOG_TYPE_ERROR, "%{public}@Failed to decode setting value due to no string value in string value event in proto payload: %@", &v17, 0x16u);
      }

      objc_autoreleasePoolPop(v12);
      v8 = 0;
    }
  }

  else
  {
    v9 = objc_autoreleasePoolPush();
    selfCopy2 = self;
    v10 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      v11 = HMFGetLogIdentifier();
      v17 = 138543618;
      v18 = v11;
      v19 = 2112;
      v20 = payloadCopy;
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
  stringValue = [(HMSettingStringValue *)self stringValue];
  [(HMImmutableSettingsProtoStringValueEvent *)v4 setValue:stringValue];

  [(HMImmutableSettingsProtoValueEvent *)v3 setStringValueEvent:v4];

  return v3;
}

- (HMSettingStringValue)initWithPayload:(id)payload
{
  v17 = *MEMORY[0x1E69E9840];
  payloadCopy = payload;
  v5 = [payloadCopy hmf_stringForKey:@"HMImmutableSettingValuePayloadKey"];
  if (v5)
  {
    selfCopy = [(HMSettingStringValue *)self initWithStringValue:v5];
    v7 = selfCopy;
  }

  else
  {
    v8 = objc_autoreleasePoolPush();
    selfCopy = self;
    v9 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      v10 = HMFGetLogIdentifier();
      v13 = 138543618;
      v14 = v10;
      v15 = 2112;
      v16 = payloadCopy;
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
  payloadCopy = [(HMImmutableSettingValue *)&v10 payloadCopy];
  v4 = [payloadCopy mutableCopy];

  v11[0] = @"HMImmutableSettingValueTypePayloadKey";
  v11[1] = @"HMImmutableSettingValuePayloadKey";
  v12[0] = &unk_1F0EFD118;
  stringValue = [(HMSettingStringValue *)self stringValue];
  v12[1] = stringValue;
  v6 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v12 forKeys:v11 count:2];
  [v4 addEntriesFromDictionary:v6];

  v7 = [v4 copy];
  v8 = *MEMORY[0x1E69E9840];

  return v7;
}

- (HMSettingStringValue)initWithStringValue:(id)value
{
  valueCopy = value;
  if (valueCopy)
  {
    v5 = valueCopy;
    v12.receiver = self;
    v12.super_class = HMSettingStringValue;
    initSettingValue = [(HMImmutableSettingValue *)&v12 initSettingValue];
    if (initSettingValue)
    {
      v7 = [v5 copy];
      stringValue = initSettingValue->_stringValue;
      initSettingValue->_stringValue = v7;
    }

    return initSettingValue;
  }

  else
  {
    v10 = _HMFPreconditionFailure();
    [(HMCameraSnapshotControl *)v10 .cxx_destruct];
  }

  return result;
}

@end