@interface HMLanguageSetting
- (BOOL)isEqual:(id)equal;
- (HMLanguageSetting)initWithProtoPayload:(id)payload;
- (HMLanguageSetting)settingWithSettingValue:(id)value;
- (id)attributeDescriptions;
- (id)payloadCopy;
- (id)protoPayload;
- (unint64_t)hash;
@end

@implementation HMLanguageSetting

- (unint64_t)hash
{
  languageValue = [(HMLanguageSetting *)self languageValue];
  v4 = [languageValue hash];
  v7.receiver = self;
  v7.super_class = HMLanguageSetting;
  v5 = [(HMImmutableSetting *)&v7 hash];

  return v5 ^ v4;
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
    if (v6 && (v11.receiver = self, v11.super_class = HMLanguageSetting, [(HMImmutableSetting *)&v11 isEqual:v6]))
    {
      languageValue = [(HMLanguageSetting *)self languageValue];
      languageValue2 = [(HMLanguageSetting *)v6 languageValue];
      v9 = [languageValue isEqual:languageValue2];
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
  v11.super_class = HMLanguageSetting;
  attributeDescriptions = [(HMImmutableSetting *)&v11 attributeDescriptions];
  v4 = objc_alloc(MEMORY[0x1E69A29C8]);
  languageValue = [(HMLanguageSetting *)self languageValue];
  v6 = [v4 initWithName:@"languageValue" value:languageValue];
  v12[0] = v6;
  v7 = [MEMORY[0x1E695DEC8] arrayWithObjects:v12 count:1];
  v8 = [attributeDescriptions arrayByAddingObjectsFromArray:v7];

  v9 = *MEMORY[0x1E69E9840];

  return v8;
}

- (id)payloadCopy
{
  v13[2] = *MEMORY[0x1E69E9840];
  v11.receiver = self;
  v11.super_class = HMLanguageSetting;
  payloadCopy = [(HMImmutableSetting *)&v11 payloadCopy];
  v4 = [payloadCopy mutableCopy];

  v12[0] = @"HMImmutableSettingTypePayloadKey";
  v12[1] = @"HMImmutableSettingValuePayloadKey";
  v13[0] = &unk_1F0EFD130;
  languageValue = [(HMLanguageSetting *)self languageValue];
  payloadCopy2 = [languageValue payloadCopy];
  v13[1] = payloadCopy2;
  v7 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v13 forKeys:v12 count:2];
  [v4 addEntriesFromDictionary:v7];

  v8 = [v4 copy];
  v9 = *MEMORY[0x1E69E9840];

  return v8;
}

- (id)protoPayload
{
  v24.receiver = self;
  v24.super_class = HMLanguageSetting;
  protoPayload = [(HMImmutableSetting *)&v24 protoPayload];
  v4 = objc_alloc_init(HMImmutableSettingsProtoLanguageSettingEvent);
  [protoPayload setLanguageSetting:v4];

  v5 = objc_alloc_init(HMImmutableSettingsProtoLanguageValueEvent);
  languageSetting = [protoPayload languageSetting];
  [languageSetting setValue:v5];

  languageValue = [(HMLanguageSetting *)self languageValue];
  inputLanguageCode = [languageValue inputLanguageCode];
  languageSetting2 = [protoPayload languageSetting];
  value = [languageSetting2 value];
  [value setInputLanguageCode:inputLanguageCode];

  languageValue2 = [(HMLanguageSetting *)self languageValue];
  outputVoiceLanguageCode = [languageValue2 outputVoiceLanguageCode];
  languageSetting3 = [protoPayload languageSetting];
  value2 = [languageSetting3 value];
  [value2 setOutputVoiceLanguageCode:outputVoiceLanguageCode];

  languageValue3 = [(HMLanguageSetting *)self languageValue];
  outputVoiceGenderCode = [languageValue3 outputVoiceGenderCode];
  languageSetting4 = [protoPayload languageSetting];
  value3 = [languageSetting4 value];
  [value3 setOutputVoiceGenderCode:outputVoiceGenderCode];

  languageValue4 = [(HMLanguageSetting *)self languageValue];
  voiceName = [languageValue4 voiceName];
  languageSetting5 = [protoPayload languageSetting];
  value4 = [languageSetting5 value];
  [value4 setVoiceName:voiceName];

  return protoPayload;
}

- (HMLanguageSetting)initWithProtoPayload:(id)payload
{
  v34 = *MEMORY[0x1E69E9840];
  payloadCopy = payload;
  if (([payloadCopy hasKeyPath] & 1) == 0)
  {
    v21 = objc_autoreleasePoolPush();
    selfCopy4 = self;
    v22 = HMFGetOSLogHandle();
    if (!os_log_type_enabled(v22, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_16;
    }

    v23 = HMFGetLogIdentifier();
    v30 = 138543618;
    v31 = v23;
    v32 = 2112;
    v33 = payloadCopy;
    v24 = "%{public}@Failed to decode setting missing keyPath: %@";
LABEL_15:
    _os_log_impl(&dword_19BB39000, v22, OS_LOG_TYPE_ERROR, v24, &v30, 0x16u);

    goto LABEL_16;
  }

  if (([payloadCopy hasReadOnly] & 1) == 0)
  {
    v21 = objc_autoreleasePoolPush();
    selfCopy4 = self;
    v22 = HMFGetOSLogHandle();
    if (!os_log_type_enabled(v22, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_16;
    }

    v23 = HMFGetLogIdentifier();
    v30 = 138543618;
    v31 = v23;
    v32 = 2112;
    v33 = payloadCopy;
    v24 = "%{public}@Failed to decode setting missing readOnly: %@";
    goto LABEL_15;
  }

  languageSetting = [payloadCopy languageSetting];
  if (!languageSetting || (v6 = languageSetting, [payloadCopy languageSetting], v7 = objc_claimAutoreleasedReturnValue(), v8 = objc_msgSend(v7, "hasValue"), v7, v6, (v8 & 1) == 0))
  {
    v21 = objc_autoreleasePoolPush();
    selfCopy4 = self;
    v22 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v22, OS_LOG_TYPE_ERROR))
    {
      v23 = HMFGetLogIdentifier();
      v30 = 138543618;
      v31 = v23;
      v32 = 2112;
      v33 = payloadCopy;
      v24 = "%{public}@Failed to decode setting missing language value: %@";
      goto LABEL_15;
    }

LABEL_16:

    objc_autoreleasePoolPop(v21);
    v20 = 0;
    goto LABEL_17;
  }

  languageSetting2 = [payloadCopy languageSetting];
  value = [languageSetting2 value];

  if ([value hasInputLanguageCode] && objc_msgSend(value, "hasOutputVoiceLanguageCode") && (objc_msgSend(value, "hasOutputVoiceGenderCode") & 1) != 0)
  {
    v11 = [HMSettingLanguageValue alloc];
    inputLanguageCode = [value inputLanguageCode];
    outputVoiceLanguageCode = [value outputVoiceLanguageCode];
    outputVoiceGenderCode = [value outputVoiceGenderCode];
    voiceName = [value voiceName];
    v16 = [(HMSettingLanguageValue *)v11 initWithInputLanguageCode:inputLanguageCode outputVoiceLanguageCode:outputVoiceLanguageCode outputVoiceGenderCode:outputVoiceGenderCode voiceName:voiceName];
    v17 = [HMFObjectCacheHMSettingLanguageValue cachedInstanceForLanguageSettingValue:v16];

    keyPath = [payloadCopy keyPath];
    selfCopy4 = -[HMLanguageSetting initWithKeyPath:readOnly:languageValue:](self, "initWithKeyPath:readOnly:languageValue:", keyPath, [payloadCopy readOnly], v17);

    v20 = selfCopy4;
  }

  else
  {
    v27 = objc_autoreleasePoolPush();
    selfCopy4 = self;
    v28 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v28, OS_LOG_TYPE_ERROR))
    {
      v29 = HMFGetLogIdentifier();
      v30 = 138543618;
      v31 = v29;
      v32 = 2112;
      v33 = payloadCopy;
      _os_log_impl(&dword_19BB39000, v28, OS_LOG_TYPE_ERROR, "%{public}@Language value is missing required attributes: %@", &v30, 0x16u);
    }

    objc_autoreleasePoolPop(v27);
    v20 = 0;
  }

LABEL_17:
  v25 = *MEMORY[0x1E69E9840];
  return v20;
}

- (HMLanguageSetting)settingWithSettingValue:(id)value
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
    v7 = [HMLanguageSetting alloc];
    keyPath = [(HMImmutableSetting *)self keyPath];
    v9 = [(HMLanguageSetting *)v7 initWithKeyPath:keyPath readOnly:[(HMImmutableSetting *)self isReadOnly] languageValue:v6];
  }

  else
  {
    v9 = 0;
  }

  return v9;
}

@end