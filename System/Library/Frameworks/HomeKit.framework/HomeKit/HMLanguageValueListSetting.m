@interface HMLanguageValueListSetting
- (BOOL)isEqual:(id)a3;
- (HMLanguageValueListSetting)initWithProtoPayload:(id)a3;
- (id)attributeDescriptions;
- (id)payloadCopy;
- (id)protoPayload;
- (unint64_t)hash;
@end

@implementation HMLanguageValueListSetting

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (self == v4)
  {
    v11 = 1;
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
    if (v6 && (v15.receiver = self, v15.super_class = HMLanguageValueListSetting, [(HMImmutableSetting *)&v15 isEqual:v6]))
    {
      v7 = [(HMLanguageValueListSetting *)self languageValues];
      v8 = [v7 count];
      v9 = [(HMLanguageValueListSetting *)v6 languageValues];
      if (v8 == [v9 count])
      {
        v10 = [(HMLanguageValueListSetting *)self languageValues];
        v13[0] = MEMORY[0x1E69E9820];
        v13[1] = 3221225472;
        v13[2] = __38__HMLanguageValueListSetting_isEqual___block_invoke;
        v13[3] = &unk_1E7547480;
        v14 = v6;
        v11 = [v10 na_allObjectsPassTest:v13];
      }

      else
      {
        v11 = 0;
      }
    }

    else
    {
      v11 = 0;
    }
  }

  return v11;
}

uint64_t __38__HMLanguageValueListSetting_isEqual___block_invoke(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = a2;
  v4 = [v2 languageValues];
  v5 = [v4 containsObject:v3];

  return v5;
}

- (unint64_t)hash
{
  v3 = [(HMLanguageValueListSetting *)self languageValues];
  v4 = [v3 hash];
  v7.receiver = self;
  v7.super_class = HMLanguageValueListSetting;
  v5 = [(HMImmutableSetting *)&v7 hash];

  return v5 ^ v4;
}

- (id)attributeDescriptions
{
  v12[1] = *MEMORY[0x1E69E9840];
  v11.receiver = self;
  v11.super_class = HMLanguageValueListSetting;
  v3 = [(HMImmutableSetting *)&v11 attributeDescriptions];
  v4 = objc_alloc(MEMORY[0x1E69A29C8]);
  v5 = [(HMLanguageValueListSetting *)self languageValues];
  v6 = [v4 initWithName:@"languageValues" value:v5];
  v12[0] = v6;
  v7 = [MEMORY[0x1E695DEC8] arrayWithObjects:v12 count:1];
  v8 = [v3 arrayByAddingObjectsFromArray:v7];

  v9 = *MEMORY[0x1E69E9840];

  return v8;
}

id __63__HMLanguageValueListSetting_initWithKeyPath_readOnly_payload___block_invoke(uint64_t a1, void *a2)
{
  v2 = a2;
  v3 = [[HMSettingLanguageValue alloc] initWithPayload:v2];

  v4 = [HMFObjectCacheHMSettingLanguageValue cachedInstanceForLanguageSettingValue:v3];

  return v4;
}

- (id)payloadCopy
{
  v13[2] = *MEMORY[0x1E69E9840];
  v3 = [(HMLanguageValueListSetting *)self languageValues];
  v4 = [v3 na_map:&__block_literal_global_9];

  v11.receiver = self;
  v11.super_class = HMLanguageValueListSetting;
  v5 = [(HMImmutableSetting *)&v11 payloadCopy];
  v6 = [v5 mutableCopy];

  v12[0] = @"HMImmutableSettingTypePayloadKey";
  v12[1] = @"HMImmutableSettingValuePayloadKey";
  v13[0] = &unk_1F0EFCCF8;
  v13[1] = v4;
  v7 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v13 forKeys:v12 count:2];
  [v6 addEntriesFromDictionary:v7];

  v8 = [v6 copy];
  v9 = *MEMORY[0x1E69E9840];

  return v8;
}

- (id)protoPayload
{
  v10.receiver = self;
  v10.super_class = HMLanguageValueListSetting;
  v3 = [(HMImmutableSetting *)&v10 protoPayload];
  v4 = [(HMLanguageValueListSetting *)self languageValues];
  v5 = [v4 na_map:&__block_literal_global_10395];

  v6 = objc_alloc_init(HMImmutableSettingsProtoAvailableLanguageListEvent);
  [v3 setAvailableLanguages:v6];

  v7 = [v5 mutableCopy];
  v8 = [v3 availableLanguages];
  [v8 setLanguages:v7];

  return v3;
}

HMImmutableSettingsProtoLanguageValueEvent *__42__HMLanguageValueListSetting_protoPayload__block_invoke(uint64_t a1, void *a2)
{
  v2 = a2;
  v3 = objc_alloc_init(HMImmutableSettingsProtoLanguageValueEvent);
  v4 = [v2 inputLanguageCode];
  [(HMImmutableSettingsProtoLanguageValueEvent *)v3 setInputLanguageCode:v4];

  v5 = [v2 outputVoiceLanguageCode];
  [(HMImmutableSettingsProtoLanguageValueEvent *)v3 setOutputVoiceLanguageCode:v5];

  v6 = [v2 outputVoiceGenderCode];
  [(HMImmutableSettingsProtoLanguageValueEvent *)v3 setOutputVoiceGenderCode:v6];

  v7 = [v2 voiceName];

  [(HMImmutableSettingsProtoLanguageValueEvent *)v3 setVoiceName:v7];

  return v3;
}

- (HMLanguageValueListSetting)initWithProtoPayload:(id)a3
{
  v30 = *MEMORY[0x1E69E9840];
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
    *buf = 138543618;
    v27 = v16;
    v28 = 2112;
    v29 = v4;
    v17 = "%{public}@Failed to decode setting missing keyPath: %@";
LABEL_12:
    _os_log_impl(&dword_19BB39000, v15, OS_LOG_TYPE_ERROR, v17, buf, 0x16u);

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
    *buf = 138543618;
    v27 = v16;
    v28 = 2112;
    v29 = v4;
    v17 = "%{public}@Failed to decode setting missing readOnly: %@";
    goto LABEL_12;
  }

  if (![v4 hasAvailableLanguages] || (objc_msgSend(v4, "availableLanguages"), v5 = objc_claimAutoreleasedReturnValue(), v5, !v5))
  {
    v14 = objc_autoreleasePoolPush();
    v12 = self;
    v15 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
    {
      v16 = HMFGetLogIdentifier();
      *buf = 138543618;
      v27 = v16;
      v28 = 2112;
      v29 = v4;
      v17 = "%{public}@Failed to decode setting missing available languages: %@";
      goto LABEL_12;
    }

LABEL_13:

    objc_autoreleasePoolPop(v14);
    v13 = 0;
    goto LABEL_14;
  }

  v6 = [v4 availableLanguages];
  v7 = [v6 languages];

  v20 = MEMORY[0x1E69E9820];
  v21 = 3221225472;
  v22 = __51__HMLanguageValueListSetting_initWithProtoPayload___block_invoke;
  v23 = &unk_1E75473F8;
  v8 = self;
  v24 = v8;
  v9 = v4;
  v25 = v9;
  v10 = [v7 na_map:&v20];
  v11 = [v9 keyPath];
  v12 = -[HMLanguageValueListSetting initWithKeyPath:readOnly:languageValues:](v8, "initWithKeyPath:readOnly:languageValues:", v11, [v9 readOnly], v10);

  v13 = v12;
LABEL_14:

  v18 = *MEMORY[0x1E69E9840];
  return v13;
}

id __51__HMLanguageValueListSetting_initWithProtoPayload___block_invoke(uint64_t a1, void *a2)
{
  v22 = *MEMORY[0x1E69E9840];
  v3 = a2;
  if ([v3 hasInputLanguageCode] && objc_msgSend(v3, "hasOutputVoiceLanguageCode") && (objc_msgSend(v3, "hasOutputVoiceGenderCode") & 1) != 0)
  {
    v4 = [HMSettingLanguageValue alloc];
    v5 = [v3 inputLanguageCode];
    v6 = [v3 outputVoiceLanguageCode];
    v7 = [v3 outputVoiceGenderCode];
    v8 = [v3 voiceName];
    v9 = [(HMSettingLanguageValue *)v4 initWithInputLanguageCode:v5 outputVoiceLanguageCode:v6 outputVoiceGenderCode:v7 voiceName:v8];
    v10 = [HMFObjectCacheHMSettingLanguageValue cachedInstanceForLanguageSettingValue:v9];
  }

  else
  {
    v11 = objc_autoreleasePoolPush();
    v12 = *(a1 + 32);
    v13 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
    {
      v14 = HMFGetLogIdentifier();
      v15 = *(a1 + 40);
      v18 = 138543618;
      v19 = v14;
      v20 = 2112;
      v21 = v15;
      _os_log_impl(&dword_19BB39000, v13, OS_LOG_TYPE_ERROR, "%{public}@Language value is missing required attributes: %@", &v18, 0x16u);
    }

    objc_autoreleasePoolPop(v11);
    v10 = 0;
  }

  v16 = *MEMORY[0x1E69E9840];

  return v10;
}

@end