@interface HMImmutableSettingValue
+ (id)shortDescription;
- (BOOL)isEqual:(id)a3;
- (HMImmutableSettingValue)initWithPayload:(id)a3;
- (HMImmutableSettingValue)initWithProtoPayload:(id)a3;
- (NSString)shortDescription;
- (id)initSettingValue;
- (id)payloadCopy;
- (id)protoPayload;
@end

@implementation HMImmutableSettingValue

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (v4 == self)
  {
    LOBYTE(v5) = 1;
  }

  else
  {
    objc_opt_class();
    v5 = objc_opt_isKindOfClass() & (v4 != 0);
  }

  return v5;
}

- (NSString)shortDescription
{
  v2 = objc_opt_class();

  return [v2 shortDescription];
}

- (HMImmutableSettingValue)initWithProtoPayload:(id)a3
{
  v22 = *MEMORY[0x1E69E9840];
  v4 = a3;
  if (([v4 hasSettingValueEvent] & 1) == 0)
  {
    goto LABEL_7;
  }

  v5 = [v4 settingValueEvent];
  if (v5 > 1)
  {
    switch(v5)
    {
      case 2:
        v6 = HMSettingIntegerValue;
        goto LABEL_12;
      case 4:
        v11 = [[HMSettingLanguageValue alloc] initWithProtoPayload:v4];
        v8 = [HMFObjectCacheHMSettingLanguageValue cachedInstanceForLanguageSettingValue:v11];

        goto LABEL_14;
      case 3:
        v6 = HMSettingBooleanValue;
LABEL_12:
        v7 = [[v6 alloc] initWithProtoPayload:v4];
        goto LABEL_13;
    }

    goto LABEL_17;
  }

  if (!v5)
  {
LABEL_7:
    v7 = [(HMImmutableSettingValue *)self initSettingValue];
    self = v7;
LABEL_13:
    v8 = v7;
    goto LABEL_14;
  }

  if (v5 == 1)
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
    v15 = [MEMORY[0x1E696AD98] numberWithInt:{objc_msgSend(v4, "settingValueEvent")}];
    v16 = 138543874;
    v17 = v14;
    v18 = 2112;
    v19 = v15;
    v20 = 2112;
    v21 = v4;
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

- (HMImmutableSettingValue)initWithPayload:(id)a3
{
  v26 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v19 = 0;
  v5 = [v4 hmf_integerForKey:@"HMImmutableSettingValueTypePayloadKey" error:&v19];
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
          v18 = [[HMSettingLanguageValue alloc] initWithPayload:v4];
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
          v12 = [(HMImmutableSettingValue *)self initSettingValue];
          self = v12;
LABEL_22:
          v10 = v12;
          goto LABEL_23;
        case 1:
          v11 = HMSettingBooleanValue;
          goto LABEL_21;
        case 2:
          v11 = HMSettingIntegerValue;
LABEL_21:
          v12 = [[v11 alloc] initWithPayload:v4];
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
      v25 = v4;
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
    v23 = v4;
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