@interface HMSettingLanguageValue
- (BOOL)isEqual:(id)a3;
- (HMSettingLanguageValue)initWithInputLanguageCode:(id)a3 outputVoiceLanguageCode:(id)a4 outputVoiceGenderCode:(id)a5;
- (HMSettingLanguageValue)initWithInputLanguageCode:(id)a3 outputVoiceLanguageCode:(id)a4 outputVoiceGenderCode:(id)a5 voiceName:(id)a6;
- (HMSettingLanguageValue)initWithPayload:(id)a3;
- (HMSettingLanguageValue)initWithProtoPayload:(id)a3;
- (id)attributeDescriptions;
- (id)payloadCopy;
- (id)protoPayload;
- (unint64_t)hash;
@end

@implementation HMSettingLanguageValue

- (HMSettingLanguageValue)initWithInputLanguageCode:(id)a3 outputVoiceLanguageCode:(id)a4 outputVoiceGenderCode:(id)a5
{
  v26 = *MEMORY[0x1E69E9840];
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v11 = objc_autoreleasePoolPush();
  v12 = self;
  v13 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
  {
    v14 = HMFGetLogIdentifier();
    v18 = 138544130;
    v19 = v14;
    v20 = 2112;
    v21 = v8;
    v22 = 2112;
    v23 = v9;
    v24 = 2112;
    v25 = v10;
    _os_log_impl(&dword_19BB39000, v13, OS_LOG_TYPE_ERROR, "%{public}@Deprecated API: Initializing with inputLanguageCode: %@ outputVoiceLanguageCode: %@ outputVoiceGenderCode: %@", &v18, 0x2Au);
  }

  objc_autoreleasePoolPop(v11);
  v15 = [(HMImmutableSettingValue *)v12 initSettingValue];

  v16 = *MEMORY[0x1E69E9840];
  return 0;
}

- (unint64_t)hash
{
  v3 = [(HMSettingLanguageValue *)self inputLanguageCode];
  v4 = [v3 hash];
  v5 = [(HMSettingLanguageValue *)self outputVoiceLanguageCode];
  v6 = [v5 hash] ^ v4;
  v7 = [(HMSettingLanguageValue *)self outputVoiceGenderCode];
  v8 = [v7 hash];
  v9 = [(HMSettingLanguageValue *)self voiceName];
  v10 = v6 ^ v8 ^ [v9 hash];
  v13.receiver = self;
  v13.super_class = HMSettingLanguageValue;
  v11 = [(HMImmutableSettingValue *)&v13 hash];

  return v10 ^ v11;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (self == v4)
  {
    v15 = 1;
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
    if (v6)
    {
      v7 = [(HMSettingLanguageValue *)self inputLanguageCode];
      v8 = [(HMSettingLanguageValue *)v6 inputLanguageCode];
      if ([v7 isEqualToString:v8])
      {
        v9 = [(HMSettingLanguageValue *)self outputVoiceGenderCode];
        v10 = [(HMSettingLanguageValue *)v6 outputVoiceGenderCode];
        if ([v9 isEqualToString:v10])
        {
          v11 = [(HMSettingLanguageValue *)self outputVoiceLanguageCode];
          v12 = [(HMSettingLanguageValue *)v6 outputVoiceLanguageCode];
          if ([v11 isEqualToString:v12])
          {
            v18 = v11;
            v13 = [(HMSettingLanguageValue *)self voiceName];
            v14 = [(HMSettingLanguageValue *)v6 voiceName];
            v17 = HMFEqualObjects();

            if (v17)
            {
              v19.receiver = self;
              v19.super_class = HMSettingLanguageValue;
              v15 = [(HMImmutableSettingValue *)&v19 isEqual:v6];
            }

            else
            {
              v15 = 0;
            }

            v11 = v18;
          }

          else
          {
            v15 = 0;
          }
        }

        else
        {
          v15 = 0;
        }
      }

      else
      {
        v15 = 0;
      }
    }

    else
    {
      v15 = 0;
    }
  }

  return v15;
}

- (id)attributeDescriptions
{
  v21[4] = *MEMORY[0x1E69E9840];
  v20.receiver = self;
  v20.super_class = HMSettingLanguageValue;
  v3 = [(HMImmutableSettingValue *)&v20 attributeDescriptions];
  v4 = objc_alloc(MEMORY[0x1E69A29C8]);
  v19 = [(HMSettingLanguageValue *)self inputLanguageCode];
  v5 = [v4 initWithName:@"inputLanguageCode" value:v19];
  v21[0] = v5;
  v6 = objc_alloc(MEMORY[0x1E69A29C8]);
  v7 = [(HMSettingLanguageValue *)self outputVoiceLanguageCode];
  v8 = [v6 initWithName:@"outputVoiceLanguageCode" value:v7];
  v21[1] = v8;
  v9 = objc_alloc(MEMORY[0x1E69A29C8]);
  v10 = [(HMSettingLanguageValue *)self outputVoiceGenderCode];
  v11 = [v9 initWithName:@"outputVoiceGenderCode" value:v10];
  v21[2] = v11;
  v12 = objc_alloc(MEMORY[0x1E69A29C8]);
  v13 = [(HMSettingLanguageValue *)self voiceName];
  v14 = [v12 initWithName:@"voiceName" value:v13];
  v21[3] = v14;
  v15 = [MEMORY[0x1E695DEC8] arrayWithObjects:v21 count:4];
  v16 = [v3 arrayByAddingObjectsFromArray:v15];

  v17 = *MEMORY[0x1E69E9840];

  return v16;
}

- (HMSettingLanguageValue)initWithProtoPayload:(id)a3
{
  v25 = *MEMORY[0x1E69E9840];
  v4 = a3;
  if ([v4 hasLanguageValueEvent])
  {
    v5 = [v4 languageValueEvent];
    if ([v5 hasInputLanguageCode])
    {
      if ([v5 hasOutputVoiceGenderCode])
      {
        if ([v5 hasOutputVoiceLanguageCode])
        {
          v6 = [v5 inputLanguageCode];
          v7 = [v5 outputVoiceLanguageCode];
          v8 = [v5 outputVoiceGenderCode];
          v9 = [v5 voiceName];
          v10 = [(HMSettingLanguageValue *)self initWithInputLanguageCode:v6 outputVoiceLanguageCode:v7 outputVoiceGenderCode:v8 voiceName:v9];

          v11 = v10;
LABEL_17:

          goto LABEL_18;
        }

        v15 = objc_autoreleasePoolPush();
        v10 = self;
        v16 = HMFGetOSLogHandle();
        if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
        {
          v17 = HMFGetLogIdentifier();
          v21 = 138543618;
          v22 = v17;
          v23 = 2112;
          v24 = v4;
          v18 = "%{public}@Failed to decode setting value due to no output voice language value in language value event in proto payload: %@";
          goto LABEL_15;
        }

LABEL_16:

        objc_autoreleasePoolPop(v15);
        v11 = 0;
        goto LABEL_17;
      }

      v15 = objc_autoreleasePoolPush();
      v10 = self;
      v16 = HMFGetOSLogHandle();
      if (!os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
      {
        goto LABEL_16;
      }

      v17 = HMFGetLogIdentifier();
      v21 = 138543618;
      v22 = v17;
      v23 = 2112;
      v24 = v4;
      v18 = "%{public}@Failed to decode setting value due to no output voice gender value in language value event in proto payload: %@";
    }

    else
    {
      v15 = objc_autoreleasePoolPush();
      v10 = self;
      v16 = HMFGetOSLogHandle();
      if (!os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
      {
        goto LABEL_16;
      }

      v17 = HMFGetLogIdentifier();
      v21 = 138543618;
      v22 = v17;
      v23 = 2112;
      v24 = v4;
      v18 = "%{public}@Failed to decode setting value due to no input language value in language value event in proto payload: %@";
    }

LABEL_15:
    _os_log_impl(&dword_19BB39000, v16, OS_LOG_TYPE_ERROR, v18, &v21, 0x16u);

    goto LABEL_16;
  }

  v12 = objc_autoreleasePoolPush();
  v10 = self;
  v13 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
  {
    v14 = HMFGetLogIdentifier();
    v21 = 138543618;
    v22 = v14;
    v23 = 2112;
    v24 = v4;
    _os_log_impl(&dword_19BB39000, v13, OS_LOG_TYPE_ERROR, "%{public}@Failed to decode setting value due to no language value event type in proto payload: %@", &v21, 0x16u);
  }

  objc_autoreleasePoolPop(v12);
  v11 = 0;
LABEL_18:

  v19 = *MEMORY[0x1E69E9840];
  return v11;
}

- (id)protoPayload
{
  v3 = objc_alloc_init(HMImmutableSettingsProtoValueEvent);
  v4 = objc_alloc_init(HMImmutableSettingsProtoLanguageValueEvent);
  v5 = [(HMSettingLanguageValue *)self inputLanguageCode];
  [(HMImmutableSettingsProtoLanguageValueEvent *)v4 setInputLanguageCode:v5];

  v6 = [(HMSettingLanguageValue *)self outputVoiceLanguageCode];
  [(HMImmutableSettingsProtoLanguageValueEvent *)v4 setOutputVoiceLanguageCode:v6];

  v7 = [(HMSettingLanguageValue *)self outputVoiceGenderCode];
  [(HMImmutableSettingsProtoLanguageValueEvent *)v4 setOutputVoiceGenderCode:v7];

  v8 = [(HMSettingLanguageValue *)self voiceName];
  [(HMImmutableSettingsProtoLanguageValueEvent *)v4 setVoiceName:v8];

  [(HMImmutableSettingsProtoValueEvent *)v3 setLanguageValueEvent:v4];

  return v3;
}

- (HMSettingLanguageValue)initWithPayload:(id)a3
{
  v21 = *MEMORY[0x1E69E9840];
  v4 = a3;
  if (!v4)
  {
    _HMFPreconditionFailure();
  }

  v5 = v4;
  v6 = [v4 hmf_stringForKey:@"HMSettingLanguageValueInputLanaguageCodePayloadKey"];
  v7 = [v5 hmf_stringForKey:@"HMSettingLanguageValueOutputVoiceLanaguageCodePayloadKey"];
  v8 = [v5 hmf_stringForKey:@"HMSettingLanguageValueOutputVoiceGenderCodePayloadKey"];
  v9 = [v5 hmf_stringForKey:@"HMSettingLanguageValueVoiceNameCodePayloadKey"];
  if (v6 && v7 && v8)
  {
    v10 = [(HMSettingLanguageValue *)self initWithInputLanguageCode:v6 outputVoiceLanguageCode:v7 outputVoiceGenderCode:v8 voiceName:v9];
    v11 = v10;
  }

  else
  {
    v12 = objc_autoreleasePoolPush();
    v10 = self;
    v13 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
    {
      v14 = HMFGetLogIdentifier();
      v17 = 138543618;
      v18 = v14;
      v19 = 2112;
      v20 = v5;
      _os_log_impl(&dword_19BB39000, v13, OS_LOG_TYPE_ERROR, "%{public}@Failed to decode setting language value due to invalid payload: %@", &v17, 0x16u);
    }

    objc_autoreleasePoolPop(v12);
    v11 = 0;
  }

  v15 = *MEMORY[0x1E69E9840];
  return v11;
}

- (id)payloadCopy
{
  v16[4] = *MEMORY[0x1E69E9840];
  v14.receiver = self;
  v14.super_class = HMSettingLanguageValue;
  v3 = [(HMImmutableSettingValue *)&v14 payloadCopy];
  v4 = [v3 mutableCopy];

  v16[0] = &unk_1F0EFD310;
  v15[0] = @"HMImmutableSettingValueTypePayloadKey";
  v15[1] = @"HMSettingLanguageValueInputLanaguageCodePayloadKey";
  v5 = [(HMSettingLanguageValue *)self inputLanguageCode];
  v16[1] = v5;
  v15[2] = @"HMSettingLanguageValueOutputVoiceLanaguageCodePayloadKey";
  v6 = [(HMSettingLanguageValue *)self outputVoiceLanguageCode];
  v16[2] = v6;
  v15[3] = @"HMSettingLanguageValueOutputVoiceGenderCodePayloadKey";
  v7 = [(HMSettingLanguageValue *)self outputVoiceGenderCode];
  v16[3] = v7;
  v8 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v16 forKeys:v15 count:4];
  [v4 addEntriesFromDictionary:v8];

  v9 = [(HMSettingLanguageValue *)self voiceName];

  if (v9)
  {
    v10 = [(HMSettingLanguageValue *)self voiceName];
    [v4 setObject:v10 forKeyedSubscript:@"HMSettingLanguageValueVoiceNameCodePayloadKey"];
  }

  v11 = [v4 copy];

  v12 = *MEMORY[0x1E69E9840];

  return v11;
}

- (HMSettingLanguageValue)initWithInputLanguageCode:(id)a3 outputVoiceLanguageCode:(id)a4 outputVoiceGenderCode:(id)a5 voiceName:(id)a6
{
  v11 = a3;
  v12 = a4;
  v13 = a5;
  v14 = a6;
  v18.receiver = self;
  v18.super_class = HMSettingLanguageValue;
  v15 = [(HMImmutableSettingValue *)&v18 initSettingValue];
  v16 = v15;
  if (v15)
  {
    objc_storeStrong(v15 + 1, a3);
    objc_storeStrong(&v16->_outputVoiceLanguageCode, a4);
    objc_storeStrong(&v16->_outputVoiceGenderCode, a5);
    objc_storeStrong(&v16->_voiceName, a6);
  }

  return v16;
}

@end