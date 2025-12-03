@interface HMImmutableStringSetting
- (BOOL)isEqual:(id)equal;
- (HMImmutableStringSetting)initWithProtoPayload:(id)payload;
- (HMImmutableStringSetting)settingWithSettingValue:(id)value;
- (id)attributeDescriptions;
- (id)payloadCopy;
- (id)protoPayload;
- (id)settingValue;
@end

@implementation HMImmutableStringSetting

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
    if (v6 && (v11.receiver = self, v11.super_class = HMImmutableStringSetting, [(HMImmutableSetting *)&v11 isEqual:v6]))
    {
      stringValue = [(HMImmutableStringSetting *)self stringValue];
      stringValue2 = [(HMImmutableStringSetting *)v6 stringValue];
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
  v11.super_class = HMImmutableStringSetting;
  attributeDescriptions = [(HMImmutableSetting *)&v11 attributeDescriptions];
  v4 = objc_alloc(MEMORY[0x1E69A29C8]);
  stringValue = [(HMImmutableStringSetting *)self stringValue];
  v6 = [v4 initWithName:@"stringValue" value:stringValue];
  v12[0] = v6;
  v7 = [MEMORY[0x1E695DEC8] arrayWithObjects:v12 count:1];
  v8 = [attributeDescriptions arrayByAddingObjectsFromArray:v7];

  v9 = *MEMORY[0x1E69E9840];

  return v8;
}

- (id)payloadCopy
{
  v12[2] = *MEMORY[0x1E69E9840];
  v10.receiver = self;
  v10.super_class = HMImmutableStringSetting;
  payloadCopy = [(HMImmutableSetting *)&v10 payloadCopy];
  v4 = [payloadCopy mutableCopy];

  v11[0] = @"HMImmutableSettingTypePayloadKey";
  v11[1] = @"HMImmutableSettingValuePayloadKey";
  v12[0] = &unk_1F0EFD220;
  stringValue = [(HMImmutableStringSetting *)self stringValue];
  v12[1] = stringValue;
  v6 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v12 forKeys:v11 count:2];
  [v4 addEntriesFromDictionary:v6];

  v7 = [v4 copy];
  v8 = *MEMORY[0x1E69E9840];

  return v7;
}

- (id)protoPayload
{
  v11.receiver = self;
  v11.super_class = HMImmutableStringSetting;
  protoPayload = [(HMImmutableSetting *)&v11 protoPayload];
  v4 = objc_alloc_init(HMImmutableSettingsProtoStringSettingEvent);
  [protoPayload setStringSetting:v4];

  v5 = objc_alloc_init(HMImmutableSettingsProtoStringValueEvent);
  stringSetting = [protoPayload stringSetting];
  [stringSetting setValue:v5];

  stringValue = [(HMImmutableStringSetting *)self stringValue];
  stringSetting2 = [protoPayload stringSetting];
  value = [stringSetting2 value];
  [value setValue:stringValue];

  return protoPayload;
}

- (HMImmutableStringSetting)initWithProtoPayload:(id)payload
{
  v24 = *MEMORY[0x1E69E9840];
  payloadCopy = payload;
  if (([payloadCopy hasKeyPath] & 1) == 0)
  {
    v14 = objc_autoreleasePoolPush();
    selfCopy3 = self;
    v15 = HMFGetOSLogHandle();
    if (!os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_13;
    }

    v16 = HMFGetLogIdentifier();
    v20 = 138543618;
    v21 = v16;
    v22 = 2112;
    v23 = payloadCopy;
    v17 = "%{public}@Failed to decode setting missing keyPath: %@";
LABEL_12:
    _os_log_impl(&dword_19BB39000, v15, OS_LOG_TYPE_ERROR, v17, &v20, 0x16u);

    goto LABEL_13;
  }

  if (([payloadCopy hasReadOnly] & 1) == 0)
  {
    v14 = objc_autoreleasePoolPush();
    selfCopy3 = self;
    v15 = HMFGetOSLogHandle();
    if (!os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_13;
    }

    v16 = HMFGetLogIdentifier();
    v20 = 138543618;
    v21 = v16;
    v22 = 2112;
    v23 = payloadCopy;
    v17 = "%{public}@Failed to decode setting missing readOnly: %@";
    goto LABEL_12;
  }

  if (![payloadCopy hasStringSetting] || (objc_msgSend(payloadCopy, "stringSetting"), v5 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v5, "value"), v6 = objc_claimAutoreleasedReturnValue(), v6, v5, !v6))
  {
    v14 = objc_autoreleasePoolPush();
    selfCopy3 = self;
    v15 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
    {
      v16 = HMFGetLogIdentifier();
      v20 = 138543618;
      v21 = v16;
      v22 = 2112;
      v23 = payloadCopy;
      v17 = "%{public}@Failed to decode setting missing string value: %@";
      goto LABEL_12;
    }

LABEL_13:

    objc_autoreleasePoolPop(v14);
    v13 = 0;
    goto LABEL_14;
  }

  keyPath = [payloadCopy keyPath];
  readOnly = [payloadCopy readOnly];
  stringSetting = [payloadCopy stringSetting];
  value = [stringSetting value];
  v10Value = [value value];
  selfCopy3 = [(HMImmutableStringSetting *)self initWithKeyPath:keyPath readOnly:readOnly stringValue:v10Value];

  v13 = selfCopy3;
LABEL_14:

  v18 = *MEMORY[0x1E69E9840];
  return v13;
}

- (id)settingValue
{
  v3 = [HMSettingStringValue alloc];
  stringValue = [(HMImmutableStringSetting *)self stringValue];
  v5 = [(HMSettingStringValue *)v3 initWithStringValue:stringValue];

  return v5;
}

- (HMImmutableStringSetting)settingWithSettingValue:(id)value
{
  valueCopy = value;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = valueCopy;
  }

  else
  {
    v5 = 0;
  }

  v6 = v5;
  if (v6)
  {
    v7 = [HMImmutableStringSetting alloc];
    keyPath = [(HMImmutableSetting *)self keyPath];
    isReadOnly = [(HMImmutableSetting *)self isReadOnly];
    stringValue = [v6 stringValue];
    v11 = [(HMImmutableStringSetting *)v7 initWithKeyPath:keyPath readOnly:isReadOnly stringValue:stringValue];
  }

  else
  {
    v11 = 0;
  }

  return v11;
}

@end