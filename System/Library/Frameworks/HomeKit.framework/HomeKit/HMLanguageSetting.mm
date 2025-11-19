@interface HMLanguageSetting
- (BOOL)isEqual:(id)a3;
- (HMLanguageSetting)initWithProtoPayload:(id)a3;
- (HMLanguageSetting)settingWithSettingValue:(id)a3;
- (id)attributeDescriptions;
- (id)payloadCopy;
- (id)protoPayload;
- (unint64_t)hash;
@end

@implementation HMLanguageSetting

- (unint64_t)hash
{
  v3 = [(HMLanguageSetting *)self languageValue];
  v4 = [v3 hash];
  v7.receiver = self;
  v7.super_class = HMLanguageSetting;
  v5 = [(HMImmutableSetting *)&v7 hash];

  return v5 ^ v4;
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
    if (v6 && (v11.receiver = self, v11.super_class = HMLanguageSetting, [(HMImmutableSetting *)&v11 isEqual:v6]))
    {
      v7 = [(HMLanguageSetting *)self languageValue];
      v8 = [(HMLanguageSetting *)v6 languageValue];
      v9 = [v7 isEqual:v8];
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
  v3 = [(HMImmutableSetting *)&v11 attributeDescriptions];
  v4 = objc_alloc(MEMORY[0x1E69A29C8]);
  v5 = [(HMLanguageSetting *)self languageValue];
  v6 = [v4 initWithName:@"languageValue" value:v5];
  v12[0] = v6;
  v7 = [MEMORY[0x1E695DEC8] arrayWithObjects:v12 count:1];
  v8 = [v3 arrayByAddingObjectsFromArray:v7];

  v9 = *MEMORY[0x1E69E9840];

  return v8;
}

- (id)payloadCopy
{
  v13[2] = *MEMORY[0x1E69E9840];
  v11.receiver = self;
  v11.super_class = HMLanguageSetting;
  v3 = [(HMImmutableSetting *)&v11 payloadCopy];
  v4 = [v3 mutableCopy];

  v12[0] = @"HMImmutableSettingTypePayloadKey";
  v12[1] = @"HMImmutableSettingValuePayloadKey";
  v13[0] = &unk_1F0EFD130;
  v5 = [(HMLanguageSetting *)self languageValue];
  v6 = [v5 payloadCopy];
  v13[1] = v6;
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
  v3 = [(HMImmutableSetting *)&v24 protoPayload];
  v4 = objc_alloc_init(HMImmutableSettingsProtoLanguageSettingEvent);
  [v3 setLanguageSetting:v4];

  v5 = objc_alloc_init(HMImmutableSettingsProtoLanguageValueEvent);
  v6 = [v3 languageSetting];
  [v6 setValue:v5];

  v7 = [(HMLanguageSetting *)self languageValue];
  v8 = [v7 inputLanguageCode];
  v9 = [v3 languageSetting];
  v10 = [v9 value];
  [v10 setInputLanguageCode:v8];

  v11 = [(HMLanguageSetting *)self languageValue];
  v12 = [v11 outputVoiceLanguageCode];
  v13 = [v3 languageSetting];
  v14 = [v13 value];
  [v14 setOutputVoiceLanguageCode:v12];

  v15 = [(HMLanguageSetting *)self languageValue];
  v16 = [v15 outputVoiceGenderCode];
  v17 = [v3 languageSetting];
  v18 = [v17 value];
  [v18 setOutputVoiceGenderCode:v16];

  v19 = [(HMLanguageSetting *)self languageValue];
  v20 = [v19 voiceName];
  v21 = [v3 languageSetting];
  v22 = [v21 value];
  [v22 setVoiceName:v20];

  return v3;
}

- (HMLanguageSetting)initWithProtoPayload:(id)a3
{
  v34 = *MEMORY[0x1E69E9840];
  v4 = a3;
  if (([v4 hasKeyPath] & 1) == 0)
  {
    v21 = objc_autoreleasePoolPush();
    v19 = self;
    v22 = HMFGetOSLogHandle();
    if (!os_log_type_enabled(v22, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_16;
    }

    v23 = HMFGetLogIdentifier();
    v30 = 138543618;
    v31 = v23;
    v32 = 2112;
    v33 = v4;
    v24 = "%{public}@Failed to decode setting missing keyPath: %@";
LABEL_15:
    _os_log_impl(&dword_19BB39000, v22, OS_LOG_TYPE_ERROR, v24, &v30, 0x16u);

    goto LABEL_16;
  }

  if (([v4 hasReadOnly] & 1) == 0)
  {
    v21 = objc_autoreleasePoolPush();
    v19 = self;
    v22 = HMFGetOSLogHandle();
    if (!os_log_type_enabled(v22, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_16;
    }

    v23 = HMFGetLogIdentifier();
    v30 = 138543618;
    v31 = v23;
    v32 = 2112;
    v33 = v4;
    v24 = "%{public}@Failed to decode setting missing readOnly: %@";
    goto LABEL_15;
  }

  v5 = [v4 languageSetting];
  if (!v5 || (v6 = v5, [v4 languageSetting], v7 = objc_claimAutoreleasedReturnValue(), v8 = objc_msgSend(v7, "hasValue"), v7, v6, (v8 & 1) == 0))
  {
    v21 = objc_autoreleasePoolPush();
    v19 = self;
    v22 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v22, OS_LOG_TYPE_ERROR))
    {
      v23 = HMFGetLogIdentifier();
      v30 = 138543618;
      v31 = v23;
      v32 = 2112;
      v33 = v4;
      v24 = "%{public}@Failed to decode setting missing language value: %@";
      goto LABEL_15;
    }

LABEL_16:

    objc_autoreleasePoolPop(v21);
    v20 = 0;
    goto LABEL_17;
  }

  v9 = [v4 languageSetting];
  v10 = [v9 value];

  if ([v10 hasInputLanguageCode] && objc_msgSend(v10, "hasOutputVoiceLanguageCode") && (objc_msgSend(v10, "hasOutputVoiceGenderCode") & 1) != 0)
  {
    v11 = [HMSettingLanguageValue alloc];
    v12 = [v10 inputLanguageCode];
    v13 = [v10 outputVoiceLanguageCode];
    v14 = [v10 outputVoiceGenderCode];
    v15 = [v10 voiceName];
    v16 = [(HMSettingLanguageValue *)v11 initWithInputLanguageCode:v12 outputVoiceLanguageCode:v13 outputVoiceGenderCode:v14 voiceName:v15];
    v17 = [HMFObjectCacheHMSettingLanguageValue cachedInstanceForLanguageSettingValue:v16];

    v18 = [v4 keyPath];
    v19 = -[HMLanguageSetting initWithKeyPath:readOnly:languageValue:](self, "initWithKeyPath:readOnly:languageValue:", v18, [v4 readOnly], v17);

    v20 = v19;
  }

  else
  {
    v27 = objc_autoreleasePoolPush();
    v19 = self;
    v28 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v28, OS_LOG_TYPE_ERROR))
    {
      v29 = HMFGetLogIdentifier();
      v30 = 138543618;
      v31 = v29;
      v32 = 2112;
      v33 = v4;
      _os_log_impl(&dword_19BB39000, v28, OS_LOG_TYPE_ERROR, "%{public}@Language value is missing required attributes: %@", &v30, 0x16u);
    }

    objc_autoreleasePoolPop(v27);
    v20 = 0;
  }

LABEL_17:
  v25 = *MEMORY[0x1E69E9840];
  return v20;
}

- (HMLanguageSetting)settingWithSettingValue:(id)a3
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
    v7 = [HMLanguageSetting alloc];
    v8 = [(HMImmutableSetting *)self keyPath];
    v9 = [(HMLanguageSetting *)v7 initWithKeyPath:v8 readOnly:[(HMImmutableSetting *)self isReadOnly] languageValue:v6];
  }

  else
  {
    v9 = 0;
  }

  return v9;
}

@end