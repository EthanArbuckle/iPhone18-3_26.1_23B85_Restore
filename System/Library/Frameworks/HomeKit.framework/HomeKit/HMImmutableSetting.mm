@interface HMImmutableSetting
+ (id)shortDescription;
- (BOOL)isEqual:(id)equal;
- (HMImmutableSetting)initWithKeyPath:(id)path readOnly:(BOOL)only;
- (HMImmutableSetting)initWithPayload:(id)payload;
- (HMImmutableSetting)initWithProtoPayload:(id)payload;
- (HMImmutableSetting)settingWithSettingValue:(id)value;
- (NSArray)attributeDescriptions;
- (NSString)shortDescription;
- (id)payloadCopy;
- (id)protoPayload;
- (unint64_t)hash;
@end

@implementation HMImmutableSetting

- (unint64_t)hash
{
  keyPath = [(HMImmutableSetting *)self keyPath];
  v3 = [keyPath hash];

  return v3;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (self == equalCopy)
  {
    LOBYTE(v10) = 1;
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
      keyPath = [(HMImmutableSetting *)self keyPath];
      keyPath2 = [(HMImmutableSetting *)v6 keyPath];
      if ([keyPath isEqualToString:keyPath2])
      {
        isReadOnly = [(HMImmutableSetting *)self isReadOnly];
        v10 = isReadOnly ^ [(HMImmutableSetting *)v6 isReadOnly]^ 1;
      }

      else
      {
        LOBYTE(v10) = 0;
      }
    }

    else
    {
      LOBYTE(v10) = 0;
    }
  }

  return v10;
}

- (NSArray)attributeDescriptions
{
  v9[1] = *MEMORY[0x1E69E9840];
  v3 = objc_alloc(MEMORY[0x1E69A29C8]);
  keyPath = [(HMImmutableSetting *)self keyPath];
  v5 = [v3 initWithName:@"keyPath" value:keyPath];
  v9[0] = v5;
  v6 = [MEMORY[0x1E695DEC8] arrayWithObjects:v9 count:1];

  v7 = *MEMORY[0x1E69E9840];

  return v6;
}

- (NSString)shortDescription
{
  v2 = objc_opt_class();

  return [v2 shortDescription];
}

- (HMImmutableSetting)initWithProtoPayload:(id)payload
{
  v19 = *MEMORY[0x1E69E9840];
  payloadCopy = payload;
  if (![payloadCopy hasSettingChangeEvent])
  {
    goto LABEL_18;
  }

  settingChangeEvent = [payloadCopy settingChangeEvent];
  if (settingChangeEvent > 2)
  {
    switch(settingChangeEvent)
    {
      case 5:
        v6 = HMLanguageValueListSetting;
        goto LABEL_21;
      case 4:
        v6 = HMLanguageSetting;
        goto LABEL_21;
      case 3:
        v6 = HMBooleanSetting;
        goto LABEL_21;
    }

LABEL_14:
    v7 = objc_autoreleasePoolPush();
    selfCopy2 = self;
    v9 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      v10 = HMFGetLogIdentifier();
      v15 = 138543618;
      v16 = v10;
      v17 = 2112;
      v18 = payloadCopy;
      v11 = "%{public}@Failed to decode setting due to unknown setting event in protopayload: %@";
      goto LABEL_16;
    }

    goto LABEL_17;
  }

  if (settingChangeEvent)
  {
    if (settingChangeEvent == 1)
    {
      v6 = HMImmutableStringSetting;
      goto LABEL_21;
    }

    if (settingChangeEvent == 2)
    {
      v6 = HMBoundedIntegerSetting;
LABEL_21:
      v12 = [[v6 alloc] initWithProtoPayload:payloadCopy];
      goto LABEL_22;
    }

    goto LABEL_14;
  }

  v7 = objc_autoreleasePoolPush();
  selfCopy2 = self;
  v9 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
  {
    v10 = HMFGetLogIdentifier();
    v15 = 138543618;
    v16 = v10;
    v17 = 2112;
    v18 = payloadCopy;
    v11 = "%{public}@Setting event is not set in protopayload: %@";
LABEL_16:
    _os_log_impl(&dword_19BB39000, v9, OS_LOG_TYPE_ERROR, v11, &v15, 0x16u);
  }

LABEL_17:

  objc_autoreleasePoolPop(v7);
LABEL_18:
  v12 = 0;
LABEL_22:

  v13 = *MEMORY[0x1E69E9840];
  return v12;
}

- (id)protoPayload
{
  v3 = objc_alloc_init(HMImmutableSettingsProtoSettingChangeEvent);
  keyPath = [(HMImmutableSetting *)self keyPath];
  [(HMImmutableSettingsProtoSettingChangeEvent *)v3 setKeyPath:keyPath];

  [(HMImmutableSettingsProtoSettingChangeEvent *)v3 setReadOnly:[(HMImmutableSetting *)self isReadOnly]];

  return v3;
}

- (HMImmutableSetting)initWithPayload:(id)payload
{
  v29 = *MEMORY[0x1E69E9840];
  payloadCopy = payload;
  v22 = 0;
  v5 = [payloadCopy hmf_integerForKey:@"HMImmutableSettingTypePayloadKey" error:&v22];
  v6 = v22;
  v7 = [payloadCopy hmf_stringForKey:@"HMImmutableSettingKeyPathPayloadKey"];
  v21 = v6;
  v8 = [payloadCopy hmf_BOOLForKey:@"HMImmutableSettingReadOnlyPayloadKey" error:&v21];
  v9 = v21;

  if (v9 || !v7)
  {
    v11 = objc_autoreleasePoolPush();
    self = self;
    v12 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      v13 = HMFGetLogIdentifier();
      *buf = 138543618;
      v24 = v13;
      v25 = 2112;
      v26 = payloadCopy;
      _os_log_impl(&dword_19BB39000, v12, OS_LOG_TYPE_ERROR, "%{public}@Failed to decode setting payload: %@", buf, 0x16u);
    }
  }

  else
  {
    if (v5 <= 2)
    {
      switch(v5)
      {
        case 0:
          v15 = [(HMImmutableSetting *)self initWithKeyPath:v7 readOnly:v8];
          self = v15;
LABEL_26:
          v14 = v15;
          goto LABEL_27;
        case 1:
          v10 = HMBooleanSetting;
          goto LABEL_25;
        case 2:
          v10 = HMBoundedIntegerSetting;
LABEL_25:
          v15 = [[v10 alloc] initWithKeyPath:v7 readOnly:v8 payload:payloadCopy];
          goto LABEL_26;
      }
    }

    else
    {
      if (v5 <= 4)
      {
        if (v5 == 3)
        {
          v10 = HMImmutableStringSetting;
        }

        else
        {
          v10 = HMStringListSetting;
        }

        goto LABEL_25;
      }

      if (v5 == 5)
      {
        v10 = HMLanguageSetting;
        goto LABEL_25;
      }

      if (v5 == 6)
      {
        v10 = HMLanguageValueListSetting;
        goto LABEL_25;
      }
    }

    v11 = objc_autoreleasePoolPush();
    self = self;
    v16 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
    {
      v17 = HMFGetLogIdentifier();
      v18 = HMImmutableSettingTypeAsString(v5);
      *buf = 138543874;
      v24 = v17;
      v25 = 2112;
      v26 = v18;
      v27 = 2112;
      v28 = payloadCopy;
      _os_log_impl(&dword_19BB39000, v16, OS_LOG_TYPE_ERROR, "%{public}@Failed to decode setting due to unknown value type: %@ in payload: %@", buf, 0x20u);
    }
  }

  objc_autoreleasePoolPop(v11);
  v14 = 0;
LABEL_27:

  v19 = *MEMORY[0x1E69E9840];
  return v14;
}

- (id)payloadCopy
{
  v9[3] = *MEMORY[0x1E69E9840];
  v9[0] = &unk_1F0EFD250;
  v8[0] = @"HMImmutableSettingTypePayloadKey";
  v8[1] = @"HMImmutableSettingKeyPathPayloadKey";
  keyPath = [(HMImmutableSetting *)self keyPath];
  v9[1] = keyPath;
  v8[2] = @"HMImmutableSettingReadOnlyPayloadKey";
  v4 = [MEMORY[0x1E696AD98] numberWithBool:{-[HMImmutableSetting isReadOnly](self, "isReadOnly")}];
  v9[2] = v4;
  v5 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v9 forKeys:v8 count:3];

  v6 = *MEMORY[0x1E69E9840];

  return v5;
}

- (HMImmutableSetting)settingWithSettingValue:(id)value
{
  valueCopy = value;
  v4 = [MEMORY[0x1E695DF30] exceptionWithName:*MEMORY[0x1E696A790] reason:@"Must be implemented by subclass" userInfo:0];
  objc_exception_throw(v4);
}

- (HMImmutableSetting)initWithKeyPath:(id)path readOnly:(BOOL)only
{
  pathCopy = path;
  if (pathCopy)
  {
    v8 = pathCopy;
    v14.receiver = self;
    v14.super_class = HMImmutableSetting;
    v9 = [(HMImmutableSetting *)&v14 init];
    v10 = v9;
    if (v9)
    {
      objc_storeStrong(&v9->_keyPath, path);
      v10->_readOnly = only;
    }

    return v10;
  }

  else
  {
    v12 = _HMFPreconditionFailure();
    return +[(HMImmutableSetting *)v12];
  }
}

+ (id)shortDescription
{
  v2 = objc_opt_class();

  return NSStringFromClass(v2);
}

@end