@interface HMSettingLanguageValue
- (BOOL)isEqual:(id)equal;
- (HMSettingLanguageValue)initWithInputLanguageCode:(id)code outputVoiceLanguageCode:(id)languageCode outputVoiceGenderCode:(id)genderCode;
- (HMSettingLanguageValue)initWithInputLanguageCode:(id)code outputVoiceLanguageCode:(id)languageCode outputVoiceGenderCode:(id)genderCode voiceName:(id)name;
- (HMSettingLanguageValue)initWithPayload:(id)payload;
- (HMSettingLanguageValue)initWithProtoPayload:(id)payload;
- (id)attributeDescriptions;
- (id)payloadCopy;
- (id)protoPayload;
- (unint64_t)hash;
@end

@implementation HMSettingLanguageValue

- (HMSettingLanguageValue)initWithInputLanguageCode:(id)code outputVoiceLanguageCode:(id)languageCode outputVoiceGenderCode:(id)genderCode
{
  v26 = *MEMORY[0x1E69E9840];
  codeCopy = code;
  languageCodeCopy = languageCode;
  genderCodeCopy = genderCode;
  v11 = objc_autoreleasePoolPush();
  selfCopy = self;
  v13 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
  {
    v14 = HMFGetLogIdentifier();
    v18 = 138544130;
    v19 = v14;
    v20 = 2112;
    v21 = codeCopy;
    v22 = 2112;
    v23 = languageCodeCopy;
    v24 = 2112;
    v25 = genderCodeCopy;
    _os_log_impl(&dword_19BB39000, v13, OS_LOG_TYPE_ERROR, "%{public}@Deprecated API: Initializing with inputLanguageCode: %@ outputVoiceLanguageCode: %@ outputVoiceGenderCode: %@", &v18, 0x2Au);
  }

  objc_autoreleasePoolPop(v11);
  initSettingValue = [(HMImmutableSettingValue *)selfCopy initSettingValue];

  v16 = *MEMORY[0x1E69E9840];
  return 0;
}

- (unint64_t)hash
{
  inputLanguageCode = [(HMSettingLanguageValue *)self inputLanguageCode];
  v4 = [inputLanguageCode hash];
  outputVoiceLanguageCode = [(HMSettingLanguageValue *)self outputVoiceLanguageCode];
  v6 = [outputVoiceLanguageCode hash] ^ v4;
  outputVoiceGenderCode = [(HMSettingLanguageValue *)self outputVoiceGenderCode];
  v8 = [outputVoiceGenderCode hash];
  voiceName = [(HMSettingLanguageValue *)self voiceName];
  v10 = v6 ^ v8 ^ [voiceName hash];
  v13.receiver = self;
  v13.super_class = HMSettingLanguageValue;
  v11 = [(HMImmutableSettingValue *)&v13 hash];

  return v10 ^ v11;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (self == equalCopy)
  {
    v15 = 1;
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
      inputLanguageCode = [(HMSettingLanguageValue *)self inputLanguageCode];
      inputLanguageCode2 = [(HMSettingLanguageValue *)v6 inputLanguageCode];
      if ([inputLanguageCode isEqualToString:inputLanguageCode2])
      {
        outputVoiceGenderCode = [(HMSettingLanguageValue *)self outputVoiceGenderCode];
        outputVoiceGenderCode2 = [(HMSettingLanguageValue *)v6 outputVoiceGenderCode];
        if ([outputVoiceGenderCode isEqualToString:outputVoiceGenderCode2])
        {
          outputVoiceLanguageCode = [(HMSettingLanguageValue *)self outputVoiceLanguageCode];
          outputVoiceLanguageCode2 = [(HMSettingLanguageValue *)v6 outputVoiceLanguageCode];
          if ([outputVoiceLanguageCode isEqualToString:outputVoiceLanguageCode2])
          {
            v18 = outputVoiceLanguageCode;
            voiceName = [(HMSettingLanguageValue *)self voiceName];
            voiceName2 = [(HMSettingLanguageValue *)v6 voiceName];
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

            outputVoiceLanguageCode = v18;
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
  attributeDescriptions = [(HMImmutableSettingValue *)&v20 attributeDescriptions];
  v4 = objc_alloc(MEMORY[0x1E69A29C8]);
  inputLanguageCode = [(HMSettingLanguageValue *)self inputLanguageCode];
  v5 = [v4 initWithName:@"inputLanguageCode" value:inputLanguageCode];
  v21[0] = v5;
  v6 = objc_alloc(MEMORY[0x1E69A29C8]);
  outputVoiceLanguageCode = [(HMSettingLanguageValue *)self outputVoiceLanguageCode];
  v8 = [v6 initWithName:@"outputVoiceLanguageCode" value:outputVoiceLanguageCode];
  v21[1] = v8;
  v9 = objc_alloc(MEMORY[0x1E69A29C8]);
  outputVoiceGenderCode = [(HMSettingLanguageValue *)self outputVoiceGenderCode];
  v11 = [v9 initWithName:@"outputVoiceGenderCode" value:outputVoiceGenderCode];
  v21[2] = v11;
  v12 = objc_alloc(MEMORY[0x1E69A29C8]);
  voiceName = [(HMSettingLanguageValue *)self voiceName];
  v14 = [v12 initWithName:@"voiceName" value:voiceName];
  v21[3] = v14;
  v15 = [MEMORY[0x1E695DEC8] arrayWithObjects:v21 count:4];
  v16 = [attributeDescriptions arrayByAddingObjectsFromArray:v15];

  v17 = *MEMORY[0x1E69E9840];

  return v16;
}

- (HMSettingLanguageValue)initWithProtoPayload:(id)payload
{
  v25 = *MEMORY[0x1E69E9840];
  payloadCopy = payload;
  if ([payloadCopy hasLanguageValueEvent])
  {
    languageValueEvent = [payloadCopy languageValueEvent];
    if ([languageValueEvent hasInputLanguageCode])
    {
      if ([languageValueEvent hasOutputVoiceGenderCode])
      {
        if ([languageValueEvent hasOutputVoiceLanguageCode])
        {
          inputLanguageCode = [languageValueEvent inputLanguageCode];
          outputVoiceLanguageCode = [languageValueEvent outputVoiceLanguageCode];
          outputVoiceGenderCode = [languageValueEvent outputVoiceGenderCode];
          voiceName = [languageValueEvent voiceName];
          selfCopy4 = [(HMSettingLanguageValue *)self initWithInputLanguageCode:inputLanguageCode outputVoiceLanguageCode:outputVoiceLanguageCode outputVoiceGenderCode:outputVoiceGenderCode voiceName:voiceName];

          v11 = selfCopy4;
LABEL_17:

          goto LABEL_18;
        }

        v15 = objc_autoreleasePoolPush();
        selfCopy4 = self;
        v16 = HMFGetOSLogHandle();
        if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
        {
          v17 = HMFGetLogIdentifier();
          v21 = 138543618;
          v22 = v17;
          v23 = 2112;
          v24 = payloadCopy;
          v18 = "%{public}@Failed to decode setting value due to no output voice language value in language value event in proto payload: %@";
          goto LABEL_15;
        }

LABEL_16:

        objc_autoreleasePoolPop(v15);
        v11 = 0;
        goto LABEL_17;
      }

      v15 = objc_autoreleasePoolPush();
      selfCopy4 = self;
      v16 = HMFGetOSLogHandle();
      if (!os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
      {
        goto LABEL_16;
      }

      v17 = HMFGetLogIdentifier();
      v21 = 138543618;
      v22 = v17;
      v23 = 2112;
      v24 = payloadCopy;
      v18 = "%{public}@Failed to decode setting value due to no output voice gender value in language value event in proto payload: %@";
    }

    else
    {
      v15 = objc_autoreleasePoolPush();
      selfCopy4 = self;
      v16 = HMFGetOSLogHandle();
      if (!os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
      {
        goto LABEL_16;
      }

      v17 = HMFGetLogIdentifier();
      v21 = 138543618;
      v22 = v17;
      v23 = 2112;
      v24 = payloadCopy;
      v18 = "%{public}@Failed to decode setting value due to no input language value in language value event in proto payload: %@";
    }

LABEL_15:
    _os_log_impl(&dword_19BB39000, v16, OS_LOG_TYPE_ERROR, v18, &v21, 0x16u);

    goto LABEL_16;
  }

  v12 = objc_autoreleasePoolPush();
  selfCopy4 = self;
  v13 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
  {
    v14 = HMFGetLogIdentifier();
    v21 = 138543618;
    v22 = v14;
    v23 = 2112;
    v24 = payloadCopy;
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
  inputLanguageCode = [(HMSettingLanguageValue *)self inputLanguageCode];
  [(HMImmutableSettingsProtoLanguageValueEvent *)v4 setInputLanguageCode:inputLanguageCode];

  outputVoiceLanguageCode = [(HMSettingLanguageValue *)self outputVoiceLanguageCode];
  [(HMImmutableSettingsProtoLanguageValueEvent *)v4 setOutputVoiceLanguageCode:outputVoiceLanguageCode];

  outputVoiceGenderCode = [(HMSettingLanguageValue *)self outputVoiceGenderCode];
  [(HMImmutableSettingsProtoLanguageValueEvent *)v4 setOutputVoiceGenderCode:outputVoiceGenderCode];

  voiceName = [(HMSettingLanguageValue *)self voiceName];
  [(HMImmutableSettingsProtoLanguageValueEvent *)v4 setVoiceName:voiceName];

  [(HMImmutableSettingsProtoValueEvent *)v3 setLanguageValueEvent:v4];

  return v3;
}

- (HMSettingLanguageValue)initWithPayload:(id)payload
{
  v21 = *MEMORY[0x1E69E9840];
  payloadCopy = payload;
  if (!payloadCopy)
  {
    _HMFPreconditionFailure();
  }

  v5 = payloadCopy;
  v6 = [payloadCopy hmf_stringForKey:@"HMSettingLanguageValueInputLanaguageCodePayloadKey"];
  v7 = [v5 hmf_stringForKey:@"HMSettingLanguageValueOutputVoiceLanaguageCodePayloadKey"];
  v8 = [v5 hmf_stringForKey:@"HMSettingLanguageValueOutputVoiceGenderCodePayloadKey"];
  v9 = [v5 hmf_stringForKey:@"HMSettingLanguageValueVoiceNameCodePayloadKey"];
  if (v6 && v7 && v8)
  {
    selfCopy = [(HMSettingLanguageValue *)self initWithInputLanguageCode:v6 outputVoiceLanguageCode:v7 outputVoiceGenderCode:v8 voiceName:v9];
    v11 = selfCopy;
  }

  else
  {
    v12 = objc_autoreleasePoolPush();
    selfCopy = self;
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
  payloadCopy = [(HMImmutableSettingValue *)&v14 payloadCopy];
  v4 = [payloadCopy mutableCopy];

  v16[0] = &unk_1F0EFD310;
  v15[0] = @"HMImmutableSettingValueTypePayloadKey";
  v15[1] = @"HMSettingLanguageValueInputLanaguageCodePayloadKey";
  inputLanguageCode = [(HMSettingLanguageValue *)self inputLanguageCode];
  v16[1] = inputLanguageCode;
  v15[2] = @"HMSettingLanguageValueOutputVoiceLanaguageCodePayloadKey";
  outputVoiceLanguageCode = [(HMSettingLanguageValue *)self outputVoiceLanguageCode];
  v16[2] = outputVoiceLanguageCode;
  v15[3] = @"HMSettingLanguageValueOutputVoiceGenderCodePayloadKey";
  outputVoiceGenderCode = [(HMSettingLanguageValue *)self outputVoiceGenderCode];
  v16[3] = outputVoiceGenderCode;
  v8 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v16 forKeys:v15 count:4];
  [v4 addEntriesFromDictionary:v8];

  voiceName = [(HMSettingLanguageValue *)self voiceName];

  if (voiceName)
  {
    voiceName2 = [(HMSettingLanguageValue *)self voiceName];
    [v4 setObject:voiceName2 forKeyedSubscript:@"HMSettingLanguageValueVoiceNameCodePayloadKey"];
  }

  v11 = [v4 copy];

  v12 = *MEMORY[0x1E69E9840];

  return v11;
}

- (HMSettingLanguageValue)initWithInputLanguageCode:(id)code outputVoiceLanguageCode:(id)languageCode outputVoiceGenderCode:(id)genderCode voiceName:(id)name
{
  codeCopy = code;
  languageCodeCopy = languageCode;
  genderCodeCopy = genderCode;
  nameCopy = name;
  v18.receiver = self;
  v18.super_class = HMSettingLanguageValue;
  initSettingValue = [(HMImmutableSettingValue *)&v18 initSettingValue];
  v16 = initSettingValue;
  if (initSettingValue)
  {
    objc_storeStrong(initSettingValue + 1, code);
    objc_storeStrong(&v16->_outputVoiceLanguageCode, languageCode);
    objc_storeStrong(&v16->_outputVoiceGenderCode, genderCode);
    objc_storeStrong(&v16->_voiceName, name);
  }

  return v16;
}

@end