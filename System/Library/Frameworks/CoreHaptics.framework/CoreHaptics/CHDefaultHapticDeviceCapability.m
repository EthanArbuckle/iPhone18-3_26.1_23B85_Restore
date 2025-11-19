@interface CHDefaultHapticDeviceCapability
- (float)defaultValueForDynamicParameter:(id)a3;
- (float)defaultValueForEventParameter:(id)a3 eventType:(id)a4;
- (float)maximumValueForDynamicParameter:(id)a3;
- (float)maximumValueForEventParameter:(id)a3;
- (float)minimumValueForDynamicParameter:(id)a3;
- (float)minimumValueForEventParameter:(id)a3;
- (id)attributesForDynamicParameter:(id)a3 error:(id *)a4;
- (id)attributesForEventParameter:(id)a3 eventType:(id)a4 error:(id *)a5;
- (id)initPrivate;
@end

@implementation CHDefaultHapticDeviceCapability

- (id)initPrivate
{
  setupHapticLogScopes();
  v5.receiver = self;
  v5.super_class = CHDefaultHapticDeviceCapability;
  v3 = [(CHDefaultHapticDeviceCapability *)&v5 init];
  if (v3)
  {
    v3->_supportsAudio = +[AVHapticPlayer supportsAudio];
    v3->_supportsHaptics = +[AVHapticPlayer supportsHaptics];
  }

  return v3;
}

- (float)maximumValueForEventParameter:(id)a3
{
  v12[10] = *MEMORY[0x277D85DE8];
  v3 = a3;
  v11[0] = CHHapticEventParameterIDHapticIntensity;
  v11[1] = CHHapticEventParameterIDHapticSharpness;
  v12[0] = &unk_28279D7A0;
  v12[1] = &unk_28279D7A0;
  v11[2] = CHHapticEventParameterIDAttackTime;
  v11[3] = CHHapticEventParameterIDDecayTime;
  v12[2] = &unk_28279D7A0;
  v12[3] = &unk_28279D7A0;
  v11[4] = CHHapticEventParameterIDReleaseTime;
  v11[5] = CHHapticEventParameterIDSustained;
  v12[4] = &unk_28279D7A0;
  v12[5] = &unk_28279D7A0;
  v11[6] = CHHapticEventParameterIDAudioVolume;
  v11[7] = CHHapticEventParameterIDAudioPitch;
  v12[6] = &unk_28279D7A0;
  v12[7] = &unk_28279D7A0;
  v11[8] = CHHapticEventParameterIDAudioPan;
  v11[9] = CHHapticEventParameterIDAudioBrightness;
  v12[8] = &unk_28279D7A0;
  v12[9] = &unk_28279D7A0;
  v4 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v12 forKeys:v11 count:10];
  v5 = [v4 objectForKey:v3];
  v6 = v5;
  if (v5)
  {
    [v5 floatValue];
    v8 = v7;
  }

  else
  {
    v8 = -999.0;
  }

  v9 = *MEMORY[0x277D85DE8];
  return v8;
}

- (float)minimumValueForEventParameter:(id)a3
{
  v12[10] = *MEMORY[0x277D85DE8];
  v3 = a3;
  v11[0] = CHHapticEventParameterIDHapticIntensity;
  v11[1] = CHHapticEventParameterIDHapticSharpness;
  v12[0] = &unk_28279D7B0;
  v12[1] = &unk_28279D7B0;
  v11[2] = CHHapticEventParameterIDAttackTime;
  v11[3] = CHHapticEventParameterIDDecayTime;
  v12[2] = &unk_28279D7B0;
  v12[3] = &unk_28279D7B0;
  v11[4] = CHHapticEventParameterIDReleaseTime;
  v11[5] = CHHapticEventParameterIDSustained;
  v12[4] = &unk_28279D7B0;
  v12[5] = &unk_28279D7B0;
  v11[6] = CHHapticEventParameterIDAudioVolume;
  v11[7] = CHHapticEventParameterIDAudioPitch;
  v12[6] = &unk_28279D7B0;
  v12[7] = &unk_28279D7C0;
  v11[8] = CHHapticEventParameterIDAudioPan;
  v11[9] = CHHapticEventParameterIDAudioBrightness;
  v12[8] = &unk_28279D7C0;
  v12[9] = &unk_28279D7B0;
  v4 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v12 forKeys:v11 count:10];
  v5 = [v4 objectForKey:v3];
  v6 = v5;
  if (v5)
  {
    [v5 floatValue];
    v8 = v7;
  }

  else
  {
    v8 = -999.0;
  }

  v9 = *MEMORY[0x277D85DE8];
  return v8;
}

- (float)defaultValueForEventParameter:(id)a3 eventType:(id)a4
{
  v15[10] = *MEMORY[0x277D85DE8];
  v5 = a3;
  v6 = a4;
  if (![v5 isEqualToString:CHHapticEventParameterIDHapticIntensity] || (v7 = 0.75, (objc_msgSend(v6, "isEqualToString:", CHHapticEventTypeHapticTransient) & 1) == 0))
  {
    if (![v5 isEqualToString:CHHapticEventParameterIDHapticSharpness] || (v7 = 0.5, (objc_msgSend(v6, "isEqualToString:", CHHapticEventTypeHapticTransient) & 1) == 0))
    {
      v14[0] = CHHapticEventParameterIDHapticIntensity;
      v14[1] = CHHapticEventParameterIDHapticSharpness;
      v15[0] = &unk_28279D7D0;
      v15[1] = &unk_28279D7E0;
      v14[2] = CHHapticEventParameterIDAttackTime;
      v14[3] = CHHapticEventParameterIDDecayTime;
      v15[2] = &unk_28279D7B0;
      v15[3] = &unk_28279D7B0;
      v14[4] = CHHapticEventParameterIDReleaseTime;
      v14[5] = CHHapticEventParameterIDSustained;
      v15[4] = &unk_28279D7B0;
      v15[5] = &unk_28279D7B0;
      v14[6] = CHHapticEventParameterIDAudioVolume;
      v14[7] = CHHapticEventParameterIDAudioPitch;
      v15[6] = &unk_28279D7A0;
      v15[7] = &unk_28279D7B0;
      v14[8] = CHHapticEventParameterIDAudioPan;
      v14[9] = CHHapticEventParameterIDAudioBrightness;
      v15[8] = &unk_28279D7B0;
      v15[9] = &unk_28279D7A0;
      v8 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v15 forKeys:v14 count:10];
      v9 = [v8 objectForKey:v5];
      v10 = v9;
      if (v9)
      {
        [v9 floatValue];
        v7 = v11;
      }

      else
      {
        v7 = -999.0;
      }
    }
  }

  v12 = *MEMORY[0x277D85DE8];
  return v7;
}

- (float)maximumValueForDynamicParameter:(id)a3
{
  v12[12] = *MEMORY[0x277D85DE8];
  v3 = a3;
  v11[0] = CHHapticDynamicParameterIDHapticIntensityControl;
  v11[1] = CHHapticDynamicParameterIDHapticSharpnessControl;
  v12[0] = &unk_28279D7A0;
  v12[1] = &unk_28279D7A0;
  v11[2] = CHHapticDynamicParameterIDHapticAttackTimeControl;
  v11[3] = CHHapticDynamicParameterIDHapticDecayTimeControl;
  v12[2] = &unk_28279D7A0;
  v12[3] = &unk_28279D7A0;
  v11[4] = CHHapticDynamicParameterIDHapticReleaseTimeControl;
  v11[5] = CHHapticDynamicParameterIDAudioVolumeControl;
  v12[4] = &unk_28279D7A0;
  v12[5] = &unk_28279D7A0;
  v11[6] = CHHapticDynamicParameterIDAudioPanControl;
  v11[7] = CHHapticDynamicParameterIDAudioBrightnessControl;
  v12[6] = &unk_28279D7A0;
  v12[7] = &unk_28279D7A0;
  v11[8] = CHHapticDynamicParameterIDAudioPitchControl;
  v11[9] = CHHapticDynamicParameterIDAudioAttackTimeControl;
  v12[8] = &unk_28279D7A0;
  v12[9] = &unk_28279D7A0;
  v11[10] = CHHapticDynamicParameterIDAudioDecayTimeControl;
  v11[11] = CHHapticDynamicParameterIDAudioReleaseTimeControl;
  v12[10] = &unk_28279D7A0;
  v12[11] = &unk_28279D7A0;
  v4 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v12 forKeys:v11 count:12];
  v5 = [v4 objectForKey:v3];
  v6 = v5;
  if (v5)
  {
    [v5 floatValue];
    v8 = v7;
  }

  else
  {
    v8 = -999.0;
  }

  v9 = *MEMORY[0x277D85DE8];
  return v8;
}

- (float)minimumValueForDynamicParameter:(id)a3
{
  v12[12] = *MEMORY[0x277D85DE8];
  v3 = a3;
  v11[0] = CHHapticDynamicParameterIDHapticIntensityControl;
  v11[1] = CHHapticDynamicParameterIDHapticSharpnessControl;
  v12[0] = &unk_28279D7B0;
  v12[1] = &unk_28279D7C0;
  v11[2] = CHHapticDynamicParameterIDHapticAttackTimeControl;
  v11[3] = CHHapticDynamicParameterIDHapticDecayTimeControl;
  v12[2] = &unk_28279D7C0;
  v12[3] = &unk_28279D7C0;
  v11[4] = CHHapticDynamicParameterIDHapticReleaseTimeControl;
  v11[5] = CHHapticDynamicParameterIDAudioVolumeControl;
  v12[4] = &unk_28279D7C0;
  v12[5] = &unk_28279D7B0;
  v11[6] = CHHapticDynamicParameterIDAudioPanControl;
  v11[7] = CHHapticDynamicParameterIDAudioBrightnessControl;
  v12[6] = &unk_28279D7C0;
  v12[7] = &unk_28279D7C0;
  v11[8] = CHHapticDynamicParameterIDAudioPitchControl;
  v11[9] = CHHapticDynamicParameterIDAudioAttackTimeControl;
  v12[8] = &unk_28279D7C0;
  v12[9] = &unk_28279D7C0;
  v11[10] = CHHapticDynamicParameterIDAudioDecayTimeControl;
  v11[11] = CHHapticDynamicParameterIDAudioReleaseTimeControl;
  v12[10] = &unk_28279D7C0;
  v12[11] = &unk_28279D7C0;
  v4 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v12 forKeys:v11 count:12];
  v5 = [v4 objectForKey:v3];
  v6 = v5;
  if (v5)
  {
    [v5 floatValue];
    v8 = v7;
  }

  else
  {
    v8 = -999.0;
  }

  v9 = *MEMORY[0x277D85DE8];
  return v8;
}

- (float)defaultValueForDynamicParameter:(id)a3
{
  v12[12] = *MEMORY[0x277D85DE8];
  v3 = a3;
  v11[0] = CHHapticDynamicParameterIDHapticIntensityControl;
  v11[1] = CHHapticDynamicParameterIDHapticSharpnessControl;
  v12[0] = &unk_28279D7A0;
  v12[1] = &unk_28279D7B0;
  v11[2] = CHHapticDynamicParameterIDHapticAttackTimeControl;
  v11[3] = CHHapticDynamicParameterIDHapticDecayTimeControl;
  v12[2] = &unk_28279D7B0;
  v12[3] = &unk_28279D7B0;
  v11[4] = CHHapticDynamicParameterIDHapticReleaseTimeControl;
  v11[5] = CHHapticDynamicParameterIDAudioVolumeControl;
  v12[4] = &unk_28279D7B0;
  v12[5] = &unk_28279D7A0;
  v11[6] = CHHapticDynamicParameterIDAudioPanControl;
  v11[7] = CHHapticDynamicParameterIDAudioBrightnessControl;
  v12[6] = &unk_28279D7B0;
  v12[7] = &unk_28279D7B0;
  v11[8] = CHHapticDynamicParameterIDAudioPitchControl;
  v11[9] = CHHapticDynamicParameterIDAudioAttackTimeControl;
  v12[8] = &unk_28279D7B0;
  v12[9] = &unk_28279D7B0;
  v11[10] = CHHapticDynamicParameterIDAudioDecayTimeControl;
  v11[11] = CHHapticDynamicParameterIDAudioReleaseTimeControl;
  v12[10] = &unk_28279D7B0;
  v12[11] = &unk_28279D7B0;
  v4 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v12 forKeys:v11 count:12];
  v5 = [v4 objectForKey:v3];
  v6 = v5;
  if (v5)
  {
    [v5 floatValue];
    v8 = v7;
  }

  else
  {
    v8 = -999.0;
  }

  v9 = *MEMORY[0x277D85DE8];
  return v8;
}

- (id)attributesForEventParameter:(id)a3 eventType:(id)a4 error:(id *)a5
{
  v33 = *MEMORY[0x277D85DE8];
  v8 = a3;
  v9 = a4;
  [(CHDefaultHapticDeviceCapability *)self minimumValueForEventParameter:v8];
  v11 = v10;
  [(CHDefaultHapticDeviceCapability *)self maximumValueForEventParameter:v8];
  v13 = v12;
  [(CHDefaultHapticDeviceCapability *)self defaultValueForEventParameter:v8 eventType:v9];
  v15 = v14;
  if (v11 != -999.0 && v13 != -999.0 && v14 != -999.0)
  {
    v16 = [CHHapticParameterAttributesImpl alloc];
    *&v17 = v11;
    *&v18 = v13;
    *&v19 = v15;
    v20 = [(CHHapticParameterAttributesImpl *)v16 initWithMinValue:v17 maxValue:v18 defaultValue:v19];
    goto LABEL_15;
  }

  if (!kHAPIScope)
  {
    v21 = MEMORY[0x277D86220];
    v22 = MEMORY[0x277D86220];
    goto LABEL_9;
  }

  v21 = *kHAPIScope;
  if (v21)
  {
LABEL_9:
    if (os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
    {
      v25 = 136315906;
      v26 = "CHDeviceCapability.mm";
      v27 = 1024;
      v28 = 355;
      v29 = 2080;
      v30 = "[CHDefaultHapticDeviceCapability attributesForEventParameter:eventType:error:]";
      v31 = 2112;
      v32 = v8;
      _os_log_impl(&dword_21569A000, v21, OS_LOG_TYPE_ERROR, "%25s:%-5d %s: In parameter %@ is not a valid CHHapticEventParameter", &v25, 0x26u);
    }
  }

  if (a5)
  {
    [MEMORY[0x277CCA9B8] errorWithDomain:@"com.apple.CoreHaptics" code:-4820 userInfo:0];
    *a5 = v20 = 0;
  }

  else
  {
    v20 = 0;
  }

LABEL_15:

  v23 = *MEMORY[0x277D85DE8];

  return v20;
}

- (id)attributesForDynamicParameter:(id)a3 error:(id *)a4
{
  v30 = *MEMORY[0x277D85DE8];
  v6 = a3;
  [(CHDefaultHapticDeviceCapability *)self minimumValueForDynamicParameter:v6];
  v8 = v7;
  [(CHDefaultHapticDeviceCapability *)self maximumValueForDynamicParameter:v6];
  v10 = v9;
  [(CHDefaultHapticDeviceCapability *)self defaultValueForDynamicParameter:v6];
  v12 = v11;
  if (v8 != -999.0 && v10 != -999.0 && v11 != -999.0)
  {
    v13 = [CHHapticParameterAttributesImpl alloc];
    *&v14 = v8;
    *&v15 = v10;
    *&v16 = v12;
    v17 = [(CHHapticParameterAttributesImpl *)v13 initWithMinValue:v14 maxValue:v15 defaultValue:v16];
    goto LABEL_15;
  }

  if (!kHAPIScope)
  {
    v18 = MEMORY[0x277D86220];
    v19 = MEMORY[0x277D86220];
    goto LABEL_9;
  }

  v18 = *kHAPIScope;
  if (v18)
  {
LABEL_9:
    if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
    {
      v22 = 136315906;
      v23 = "CHDeviceCapability.mm";
      v24 = 1024;
      v25 = 370;
      v26 = 2080;
      v27 = "[CHDefaultHapticDeviceCapability attributesForDynamicParameter:error:]";
      v28 = 2112;
      v29 = v6;
      _os_log_impl(&dword_21569A000, v18, OS_LOG_TYPE_ERROR, "%25s:%-5d %s: In parameter %@ is not a valid CHHapticDynamicParameter", &v22, 0x26u);
    }
  }

  if (a4)
  {
    [MEMORY[0x277CCA9B8] errorWithDomain:@"com.apple.CoreHaptics" code:-4820 userInfo:0];
    *a4 = v17 = 0;
  }

  else
  {
    v17 = 0;
  }

LABEL_15:

  v20 = *MEMORY[0x277D85DE8];

  return v17;
}

@end