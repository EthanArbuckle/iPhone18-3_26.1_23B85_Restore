@interface HMImmutableStringSetting
- (BOOL)isEqual:(id)a3;
- (HMImmutableStringSetting)initWithProtoPayload:(id)a3;
- (HMImmutableStringSetting)settingWithSettingValue:(id)a3;
- (id)attributeDescriptions;
- (id)payloadCopy;
- (id)protoPayload;
- (id)settingValue;
@end

@implementation HMImmutableStringSetting

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
    if (v6 && (v11.receiver = self, v11.super_class = HMImmutableStringSetting, [(HMImmutableSetting *)&v11 isEqual:v6]))
    {
      v7 = [(HMImmutableStringSetting *)self stringValue];
      v8 = [(HMImmutableStringSetting *)v6 stringValue];
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
  v11.super_class = HMImmutableStringSetting;
  v3 = [(HMImmutableSetting *)&v11 attributeDescriptions];
  v4 = objc_alloc(MEMORY[0x1E69A29C8]);
  v5 = [(HMImmutableStringSetting *)self stringValue];
  v6 = [v4 initWithName:@"stringValue" value:v5];
  v12[0] = v6;
  v7 = [MEMORY[0x1E695DEC8] arrayWithObjects:v12 count:1];
  v8 = [v3 arrayByAddingObjectsFromArray:v7];

  v9 = *MEMORY[0x1E69E9840];

  return v8;
}

- (id)payloadCopy
{
  v12[2] = *MEMORY[0x1E69E9840];
  v10.receiver = self;
  v10.super_class = HMImmutableStringSetting;
  v3 = [(HMImmutableSetting *)&v10 payloadCopy];
  v4 = [v3 mutableCopy];

  v11[0] = @"HMImmutableSettingTypePayloadKey";
  v11[1] = @"HMImmutableSettingValuePayloadKey";
  v12[0] = &unk_1F0EFD220;
  v5 = [(HMImmutableStringSetting *)self stringValue];
  v12[1] = v5;
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
  v3 = [(HMImmutableSetting *)&v11 protoPayload];
  v4 = objc_alloc_init(HMImmutableSettingsProtoStringSettingEvent);
  [v3 setStringSetting:v4];

  v5 = objc_alloc_init(HMImmutableSettingsProtoStringValueEvent);
  v6 = [v3 stringSetting];
  [v6 setValue:v5];

  v7 = [(HMImmutableStringSetting *)self stringValue];
  v8 = [v3 stringSetting];
  v9 = [v8 value];
  [v9 setValue:v7];

  return v3;
}

- (HMImmutableStringSetting)initWithProtoPayload:(id)a3
{
  v24 = *MEMORY[0x1E69E9840];
  v4 = a3;
  if (([v4 hasKeyPath] & 1) == 0)
  {
    v14 = objc_autoreleasePoolPush();
    v12 = self;
    v15 = HMFGetOSLogHandle();
    if (!os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_13;
    }

    v16 = HMFGetLogIdentifier();
    v20 = 138543618;
    v21 = v16;
    v22 = 2112;
    v23 = v4;
    v17 = "%{public}@Failed to decode setting missing keyPath: %@";
LABEL_12:
    _os_log_impl(&dword_19BB39000, v15, OS_LOG_TYPE_ERROR, v17, &v20, 0x16u);

    goto LABEL_13;
  }

  if (([v4 hasReadOnly] & 1) == 0)
  {
    v14 = objc_autoreleasePoolPush();
    v12 = self;
    v15 = HMFGetOSLogHandle();
    if (!os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_13;
    }

    v16 = HMFGetLogIdentifier();
    v20 = 138543618;
    v21 = v16;
    v22 = 2112;
    v23 = v4;
    v17 = "%{public}@Failed to decode setting missing readOnly: %@";
    goto LABEL_12;
  }

  if (![v4 hasStringSetting] || (objc_msgSend(v4, "stringSetting"), v5 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v5, "value"), v6 = objc_claimAutoreleasedReturnValue(), v6, v5, !v6))
  {
    v14 = objc_autoreleasePoolPush();
    v12 = self;
    v15 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
    {
      v16 = HMFGetLogIdentifier();
      v20 = 138543618;
      v21 = v16;
      v22 = 2112;
      v23 = v4;
      v17 = "%{public}@Failed to decode setting missing string value: %@";
      goto LABEL_12;
    }

LABEL_13:

    objc_autoreleasePoolPop(v14);
    v13 = 0;
    goto LABEL_14;
  }

  v7 = [v4 keyPath];
  v8 = [v4 readOnly];
  v9 = [v4 stringSetting];
  v10 = [v9 value];
  v11 = [v10 value];
  v12 = [(HMImmutableStringSetting *)self initWithKeyPath:v7 readOnly:v8 stringValue:v11];

  v13 = v12;
LABEL_14:

  v18 = *MEMORY[0x1E69E9840];
  return v13;
}

- (id)settingValue
{
  v3 = [HMSettingStringValue alloc];
  v4 = [(HMImmutableStringSetting *)self stringValue];
  v5 = [(HMSettingStringValue *)v3 initWithStringValue:v4];

  return v5;
}

- (HMImmutableStringSetting)settingWithSettingValue:(id)a3
{
  v4 = a3;
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
    v7 = [HMImmutableStringSetting alloc];
    v8 = [(HMImmutableSetting *)self keyPath];
    v9 = [(HMImmutableSetting *)self isReadOnly];
    v10 = [v6 stringValue];
    v11 = [(HMImmutableStringSetting *)v7 initWithKeyPath:v8 readOnly:v9 stringValue:v10];
  }

  else
  {
    v11 = 0;
  }

  return v11;
}

@end