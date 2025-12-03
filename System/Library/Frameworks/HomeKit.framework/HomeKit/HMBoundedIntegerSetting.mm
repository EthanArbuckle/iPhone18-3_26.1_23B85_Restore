@interface HMBoundedIntegerSetting
- (BOOL)isEqual:(id)equal;
- (HMBoundedIntegerSetting)initWithProtoPayload:(id)payload;
- (HMBoundedIntegerSetting)settingWithSettingValue:(id)value;
- (id)attributeDescriptions;
- (id)payloadCopy;
- (id)protoPayload;
- (id)settingValue;
@end

@implementation HMBoundedIntegerSetting

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (self == equalCopy)
  {
    v11 = 1;
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
    if (v6 && (v13.receiver = self, v13.super_class = HMBoundedIntegerSetting, [(HMImmutableSetting *)&v13 isEqual:v6]) && (v7 = [(HMBoundedIntegerSetting *)self integerValue], v7 == [(HMBoundedIntegerSetting *)v6 integerValue]) && (v8 = [(HMBoundedIntegerSetting *)self maxValue], v8 == [(HMBoundedIntegerSetting *)v6 maxValue]) && (v9 = [(HMBoundedIntegerSetting *)self minValue], v9 == [(HMBoundedIntegerSetting *)v6 minValue]))
    {
      valueStepSize = [(HMBoundedIntegerSetting *)self valueStepSize];
      v11 = valueStepSize == [(HMBoundedIntegerSetting *)v6 valueStepSize];
    }

    else
    {
      v11 = 0;
    }
  }

  return v11;
}

- (id)attributeDescriptions
{
  v21[4] = *MEMORY[0x1E69E9840];
  v20.receiver = self;
  v20.super_class = HMBoundedIntegerSetting;
  attributeDescriptions = [(HMImmutableSetting *)&v20 attributeDescriptions];
  v3 = objc_alloc(MEMORY[0x1E69A29C8]);
  v19 = [MEMORY[0x1E696AD98] numberWithInteger:{-[HMBoundedIntegerSetting integerValue](self, "integerValue")}];
  v4 = [v3 initWithName:@"integerValue" value:v19];
  v21[0] = v4;
  v5 = objc_alloc(MEMORY[0x1E69A29C8]);
  v6 = [MEMORY[0x1E696AD98] numberWithInteger:{-[HMBoundedIntegerSetting maxValue](self, "maxValue")}];
  v7 = [v5 initWithName:@"maxValue" value:v6];
  v21[1] = v7;
  v8 = objc_alloc(MEMORY[0x1E69A29C8]);
  v9 = [MEMORY[0x1E696AD98] numberWithInteger:{-[HMBoundedIntegerSetting minValue](self, "minValue")}];
  v10 = [v8 initWithName:@"minValue" value:v9];
  v21[2] = v10;
  v11 = objc_alloc(MEMORY[0x1E69A29C8]);
  v12 = [MEMORY[0x1E696AD98] numberWithInteger:{-[HMBoundedIntegerSetting valueStepSize](self, "valueStepSize")}];
  v13 = [v11 initWithName:@"valueStepSize" value:v12];
  v21[3] = v13;
  v14 = [MEMORY[0x1E695DEC8] arrayWithObjects:v21 count:4];
  v15 = [attributeDescriptions arrayByAddingObjectsFromArray:v14];

  v16 = *MEMORY[0x1E69E9840];

  return v15;
}

- (id)payloadCopy
{
  v15[5] = *MEMORY[0x1E69E9840];
  v13.receiver = self;
  v13.super_class = HMBoundedIntegerSetting;
  payloadCopy = [(HMImmutableSetting *)&v13 payloadCopy];
  v4 = [payloadCopy mutableCopy];

  v15[0] = &unk_1F0EFCBC0;
  v14[0] = @"HMImmutableSettingTypePayloadKey";
  v14[1] = @"HMImmutableSettingValuePayloadKey";
  v5 = [MEMORY[0x1E696AD98] numberWithInteger:{-[HMBoundedIntegerSetting integerValue](self, "integerValue")}];
  v15[1] = v5;
  v14[2] = @"HMBoundedIntegerSettingMaxValuePayloadKey";
  v6 = [MEMORY[0x1E696AD98] numberWithInteger:{-[HMBoundedIntegerSetting maxValue](self, "maxValue")}];
  v15[2] = v6;
  v14[3] = @"HMBoundedIntegerSettingMinValuePayloadKey";
  v7 = [MEMORY[0x1E696AD98] numberWithInteger:{-[HMBoundedIntegerSetting minValue](self, "minValue")}];
  v15[3] = v7;
  v14[4] = @"HMBoundedIntegerSettingValueStepSizePayloadKey";
  v8 = [MEMORY[0x1E696AD98] numberWithInteger:{-[HMBoundedIntegerSetting valueStepSize](self, "valueStepSize")}];
  v15[4] = v8;
  v9 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v15 forKeys:v14 count:5];
  [v4 addEntriesFromDictionary:v9];

  v10 = [v4 copy];
  v11 = *MEMORY[0x1E69E9840];

  return v10;
}

- (id)protoPayload
{
  v17.receiver = self;
  v17.super_class = HMBoundedIntegerSetting;
  protoPayload = [(HMImmutableSetting *)&v17 protoPayload];
  v4 = objc_alloc_init(HMImmutableSettingsProtoBoundedIntegerSettingEvent);
  [protoPayload setBoundedIntegerSetting:v4];

  minValue = [(HMBoundedIntegerSetting *)self minValue];
  boundedIntegerSetting = [protoPayload boundedIntegerSetting];
  [boundedIntegerSetting setMinValue:minValue];

  maxValue = [(HMBoundedIntegerSetting *)self maxValue];
  boundedIntegerSetting2 = [protoPayload boundedIntegerSetting];
  [boundedIntegerSetting2 setMaxValue:maxValue];

  valueStepSize = [(HMBoundedIntegerSetting *)self valueStepSize];
  boundedIntegerSetting3 = [protoPayload boundedIntegerSetting];
  [boundedIntegerSetting3 setStepValue:valueStepSize];

  v11 = objc_alloc_init(HMImmutableSettingsProtoIntegerValueEvent);
  boundedIntegerSetting4 = [protoPayload boundedIntegerSetting];
  [boundedIntegerSetting4 setValue:v11];

  integerValue = [(HMBoundedIntegerSetting *)self integerValue];
  boundedIntegerSetting5 = [protoPayload boundedIntegerSetting];
  value = [boundedIntegerSetting5 value];
  [value setValue:integerValue];

  return protoPayload;
}

- (HMBoundedIntegerSetting)initWithProtoPayload:(id)payload
{
  v33 = *MEMORY[0x1E69E9840];
  payloadCopy = payload;
  if (([payloadCopy hasKeyPath] & 1) == 0)
  {
    v21 = objc_autoreleasePoolPush();
    selfCopy4 = self;
    v22 = HMFGetOSLogHandle();
    if (!os_log_type_enabled(v22, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_18;
    }

    v23 = HMFGetLogIdentifier();
    *buf = 138543618;
    v30 = v23;
    v31 = 2112;
    v32 = payloadCopy;
    v24 = "%{public}@Failed to decode setting missing keyPath: %@";
LABEL_17:
    _os_log_impl(&dword_19BB39000, v22, OS_LOG_TYPE_ERROR, v24, buf, 0x16u);

    goto LABEL_18;
  }

  if (([payloadCopy hasReadOnly] & 1) == 0)
  {
    v21 = objc_autoreleasePoolPush();
    selfCopy4 = self;
    v22 = HMFGetOSLogHandle();
    if (!os_log_type_enabled(v22, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_18;
    }

    v23 = HMFGetLogIdentifier();
    *buf = 138543618;
    v30 = v23;
    v31 = 2112;
    v32 = payloadCopy;
    v24 = "%{public}@Failed to decode setting missing readOnly: %@";
    goto LABEL_17;
  }

  if (![payloadCopy hasBoundedIntegerSetting])
  {
    goto LABEL_15;
  }

  boundedIntegerSetting = [payloadCopy boundedIntegerSetting];
  if (![boundedIntegerSetting hasMinValue])
  {
    goto LABEL_14;
  }

  boundedIntegerSetting2 = [payloadCopy boundedIntegerSetting];
  if (([boundedIntegerSetting2 hasMaxValue] & 1) == 0)
  {

LABEL_14:
LABEL_15:
    v21 = objc_autoreleasePoolPush();
    selfCopy4 = self;
    v22 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v22, OS_LOG_TYPE_ERROR))
    {
      v23 = HMFGetLogIdentifier();
      *buf = 138543618;
      v30 = v23;
      v31 = 2112;
      v32 = payloadCopy;
      v24 = "%{public}@Failed to decode setting missing integer setting required attributes: %@";
      goto LABEL_17;
    }

LABEL_18:

    objc_autoreleasePoolPop(v21);
    v20 = 0;
    goto LABEL_19;
  }

  boundedIntegerSetting3 = [payloadCopy boundedIntegerSetting];
  hasStepValue = [boundedIntegerSetting3 hasStepValue];

  if ((hasStepValue & 1) == 0)
  {
    goto LABEL_15;
  }

  boundedIntegerSetting4 = [payloadCopy boundedIntegerSetting];
  hasValue = [boundedIntegerSetting4 hasValue];

  if ((hasValue & 1) == 0)
  {
    v21 = objc_autoreleasePoolPush();
    selfCopy4 = self;
    v22 = HMFGetOSLogHandle();
    if (!os_log_type_enabled(v22, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_18;
    }

    v23 = HMFGetLogIdentifier();
    *buf = 138543618;
    v30 = v23;
    v31 = 2112;
    v32 = payloadCopy;
    v24 = "%{public}@Failed to decode setting missing integer value: %@";
    goto LABEL_17;
  }

  keyPath = [payloadCopy keyPath];
  readOnly = [payloadCopy readOnly];
  boundedIntegerSetting5 = [payloadCopy boundedIntegerSetting];
  value = [boundedIntegerSetting5 value];
  v12Value = [value value];
  boundedIntegerSetting6 = [payloadCopy boundedIntegerSetting];
  maxValue = [boundedIntegerSetting6 maxValue];
  boundedIntegerSetting7 = [payloadCopy boundedIntegerSetting];
  minValue = [boundedIntegerSetting7 minValue];
  boundedIntegerSetting8 = [payloadCopy boundedIntegerSetting];
  selfCopy4 = -[HMBoundedIntegerSetting initWithKeyPath:readOnly:integerValue:maxValue:minValue:valueStepSize:](self, "initWithKeyPath:readOnly:integerValue:maxValue:minValue:valueStepSize:", keyPath, readOnly, v12Value, maxValue, minValue, [boundedIntegerSetting8 stepValue]);

  v20 = selfCopy4;
LABEL_19:

  v25 = *MEMORY[0x1E69E9840];
  return v20;
}

- (id)settingValue
{
  v2 = [[HMSettingIntegerValue alloc] initWithIntegerValue:[(HMBoundedIntegerSetting *)self integerValue]];

  return v2;
}

- (HMBoundedIntegerSetting)settingWithSettingValue:(id)value
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
    v7 = [HMBoundedIntegerSetting alloc];
    keyPath = [(HMImmutableSetting *)self keyPath];
    v9 = -[HMBoundedIntegerSetting initWithKeyPath:readOnly:integerValue:maxValue:minValue:valueStepSize:](v7, "initWithKeyPath:readOnly:integerValue:maxValue:minValue:valueStepSize:", keyPath, -[HMImmutableSetting isReadOnly](self, "isReadOnly"), [v6 integerValue], -[HMBoundedIntegerSetting maxValue](self, "maxValue"), -[HMBoundedIntegerSetting minValue](self, "minValue"), -[HMBoundedIntegerSetting valueStepSize](self, "valueStepSize"));
  }

  else
  {
    v9 = 0;
  }

  return v9;
}

@end