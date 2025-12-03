@interface HMImmutableSettingValue
+ (id)shortDescription;
- (BOOL)isEqual:(id)equal;
- (HMImmutableSettingValue)initWithPayload:(id)payload;
- (HMImmutableSettingValue)initWithProtoPayload:(id)payload;
- (NSString)shortDescription;
- (id)initSettingValue;
- (id)payloadCopy;
- (id)protoPayload;
@end

@implementation HMImmutableSettingValue

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (equalCopy == self)
  {
    LOBYTE(v5) = 1;
  }

  else
  {
    objc_opt_class();
    v5 = objc_opt_isKindOfClass() & (equalCopy != 0);
  }

  return v5;
}

- (NSString)shortDescription
{
  v2 = objc_opt_class();

  return [v2 shortDescription];
}

- (HMImmutableSettingValue)initWithProtoPayload:(id)payload
{
  v22 = *MEMORY[0x1E69E9840];
  payloadCopy = payload;
  if (([payloadCopy hasSettingValueEvent] & 1) == 0)
  {
    goto LABEL_7;
  }

  settingValueEvent = [payloadCopy settingValueEvent];
  if (settingValueEvent > 1)
  {
    switch(settingValueEvent)
    {
      case 2:
        v6 = HMSettingIntegerValue;
        goto LABEL_12;
      case 4:
        v11 = [[HMSettingLanguageValue alloc] initWithProtoPayload:payloadCopy];
        v8 = [HMFObjectCacheHMSettingLanguageValue cachedInstanceForLanguageSettingValue:v11];

        goto LABEL_14;
      case 3:
        v6 = HMSettingBooleanValue;
LABEL_12:
        initSettingValue = [[v6 alloc] initWithProtoPayload:payloadCopy];
        goto LABEL_13;
    }

    goto LABEL_17;
  }

  if (!settingValueEvent)
  {
LABEL_7:
    initSettingValue = [(HMImmutableSettingValue *)self initSettingValue];
    self = initSettingValue;
LABEL_13:
    v8 = initSettingValue;
    goto LABEL_14;
  }

  if (settingValueEvent == 1)
  {
    v6 = HMSettingStringValue;
    goto LABEL_12;
  }

LABEL_17:
  v12 = objc_autoreleasePoolPush();
  self = self;
  v13 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
  {
    v14 = HMFGetLogIdentifier();
    v15 = [MEMORY[0x1E696AD98] numberWithInt:{objc_msgSend(payloadCopy, "settingValueEvent")}];
    v16 = 138543874;
    v17 = v14;
    v18 = 2112;
    v19 = v15;
    v20 = 2112;
    v21 = payloadCopy;
    _os_log_impl(&dword_19BB39000, v13, OS_LOG_TYPE_ERROR, "%{public}@Failed to decode setting value due to unknown settingValueEvent (%@) in protopayload: %@", &v16, 0x20u);
  }

  objc_autoreleasePoolPop(v12);
  v8 = 0;
LABEL_14:

  v9 = *MEMORY[0x1E69E9840];
  return v8;
}

- (id)protoPayload
{
  v2 = objc_alloc_init(HMImmutableSettingsProtoValueEvent);

  return v2;
}

- (HMImmutableSettingValue)initWithPayload:(id)payload
{
  v26 = *MEMORY[0x1E69E9840];
  payloadCopy = payload;
  v19 = 0;
  v5 = [payloadCopy hmf_integerForKey:@"HMImmutableSettingValueTypePayloadKey" error:&v19];
  v6 = v19;
  if (!v6)
  {
    if (v5 > 2)
    {
      switch(v5)
      {
        case 3:
          v11 = HMSettingStringValue;
          goto LABEL_21;
        case 4:
          v18 = [[HMSettingLanguageValue alloc] initWithPayload:payloadCopy];
          v10 = [HMFObjectCacheHMSettingLanguageValue cachedInstanceForLanguageSettingValue:v18];

          goto LABEL_23;
        case 5:
          v11 = HMSettingVersionValue;
          goto LABEL_21;
      }
    }

    else
    {
      switch(v5)
      {
        case 0:
          initSettingValue = [(HMImmutableSettingValue *)self initSettingValue];
          self = initSettingValue;
LABEL_22:
          v10 = initSettingValue;
          goto LABEL_23;
        case 1:
          v11 = HMSettingBooleanValue;
          goto LABEL_21;
        case 2:
          v11 = HMSettingIntegerValue;
LABEL_21:
          initSettingValue = [[v11 alloc] initWithPayload:payloadCopy];
          goto LABEL_22;
      }
    }

    v7 = objc_autoreleasePoolPush();
    self = self;
    v13 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
    {
      v14 = HMFGetLogIdentifier();
      v15 = HMImmutableSettingValueTypeAsString(v5);
      *buf = 138543874;
      v21 = v14;
      v22 = 2112;
      v23 = v15;
      v24 = 2112;
      v25 = payloadCopy;
      _os_log_impl(&dword_19BB39000, v13, OS_LOG_TYPE_ERROR, "%{public}@Failed to decode setting value due to unknown value type: %@ in payload: %@", buf, 0x20u);
    }

    goto LABEL_5;
  }

  v7 = objc_autoreleasePoolPush();
  self = self;
  v8 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
  {
    v9 = HMFGetLogIdentifier();
    *buf = 138543618;
    v21 = v9;
    v22 = 2112;
    v23 = payloadCopy;
    _os_log_impl(&dword_19BB39000, v8, OS_LOG_TYPE_ERROR, "%{public}@Failed to decode setting value due to no value type in payload: %@", buf, 0x16u);
  }

LABEL_5:
  objc_autoreleasePoolPop(v7);
  v10 = 0;
LABEL_23:

  v16 = *MEMORY[0x1E69E9840];
  return v10;
}

- (id)payloadCopy
{
  v6[1] = *MEMORY[0x1E69E9840];
  v5 = @"HMImmutableSettingValueTypePayloadKey";
  v6[0] = &unk_1F0EFCBF0;
  v2 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v6 forKeys:&v5 count:1];
  v3 = *MEMORY[0x1E69E9840];

  return v2;
}

- (id)initSettingValue
{
  v3.receiver = self;
  v3.super_class = HMImmutableSettingValue;
  return [(HMImmutableSettingValue *)&v3 init];
}

+ (id)shortDescription
{
  v2 = objc_opt_class();

  return NSStringFromClass(v2);
}

@end