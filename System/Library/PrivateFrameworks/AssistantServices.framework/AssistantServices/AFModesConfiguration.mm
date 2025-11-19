@interface AFModesConfiguration
+ (id)newWithBuilder:(id)a3;
- (AFModesConfiguration)initWithBuilder:(id)a3;
- (AFModesConfiguration)initWithCoder:(id)a3;
- (AFModesConfiguration)initWithIsEyesFree:(BOOL)a3 isUIFree:(BOOL)a4 isForCarDND:(BOOL)a5 isInAmbient:(BOOL)a6 isMapsNavigationActive:(BOOL)a7 isVoiceTriggerRequest:(BOOL)a8 isConnectedToCarPlay:(BOOL)a9 isRequestMadeWithPhysicalDeviceInteraction:(BOOL)a10 isAudioAccessoryButtonActivation:(BOOL)a11 isSiriAutoPrompt:(BOOL)a12 isFlexibleFollowup:(BOOL)a13 userTypedInSiri:(BOOL)a14 modeOverrideValue:(id)a15 isDeviceUnlocked:(BOOL)a16 isDeviceScreenON:(BOOL)a17 isInitialBringUp:(BOOL)a18 isUserEngagedWithDevice:(int64_t)a19;
- (BOOL)isEqual:(id)a3;
- (id)_descriptionWithIndent:(unint64_t)a3;
- (id)mutatedCopyWithMutator:(id)a3;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)a3;
@end

@implementation AFModesConfiguration

- (void)encodeWithCoder:(id)a3
{
  v4 = MEMORY[0x1E696AD98];
  isEyesFree = self->_isEyesFree;
  v6 = a3;
  v7 = [v4 numberWithBool:isEyesFree];
  [v6 encodeObject:v7 forKey:@"AFModesConfiguration::isEyesFree"];

  v8 = [MEMORY[0x1E696AD98] numberWithBool:self->_isUIFree];
  [v6 encodeObject:v8 forKey:@"AFModesConfiguration::isUIFree"];

  v9 = [MEMORY[0x1E696AD98] numberWithBool:self->_isForCarDND];
  [v6 encodeObject:v9 forKey:@"AFModesConfiguration::isForCarDND"];

  v10 = [MEMORY[0x1E696AD98] numberWithBool:self->_isInAmbient];
  [v6 encodeObject:v10 forKey:@"AFModesConfiguration::isInAmbient"];

  v11 = [MEMORY[0x1E696AD98] numberWithBool:self->_isMapsNavigationActive];
  [v6 encodeObject:v11 forKey:@"AFModesConfiguration::isMapsNavigationActive"];

  v12 = [MEMORY[0x1E696AD98] numberWithBool:self->_isVoiceTriggerRequest];
  [v6 encodeObject:v12 forKey:@"AFModesConfiguration::isVoiceTriggerRequest"];

  v13 = [MEMORY[0x1E696AD98] numberWithBool:self->_isConnectedToCarPlay];
  [v6 encodeObject:v13 forKey:@"AFModesConfiguration::isConnectedToCarPlay"];

  v14 = [MEMORY[0x1E696AD98] numberWithBool:self->_isRequestMadeWithPhysicalDeviceInteraction];
  [v6 encodeObject:v14 forKey:@"AFModesConfiguration::isRequestMadeWithPhysicalDeviceInteraction"];

  v15 = [MEMORY[0x1E696AD98] numberWithBool:self->_isAudioAccessoryButtonActivation];
  [v6 encodeObject:v15 forKey:@"AFModesConfiguration::isAudioAccessoryButtonActivation"];

  v16 = [MEMORY[0x1E696AD98] numberWithBool:self->_isSiriAutoPrompt];
  [v6 encodeObject:v16 forKey:@"AFModesConfiguration::isSiriAutoPrompt"];

  v17 = [MEMORY[0x1E696AD98] numberWithBool:self->_isFlexibleFollowup];
  [v6 encodeObject:v17 forKey:@"AFModesConfiguration::isFlexibleFollowup"];

  v18 = [MEMORY[0x1E696AD98] numberWithBool:self->_userTypedInSiri];
  [v6 encodeObject:v18 forKey:@"AFModesConfiguration::userTypedInSiri"];

  [v6 encodeObject:self->_modeOverrideValue forKey:@"AFModesConfiguration::modeOverrideValue"];
  v19 = [MEMORY[0x1E696AD98] numberWithBool:self->_isDeviceUnlocked];
  [v6 encodeObject:v19 forKey:@"AFModesConfiguration::isDeviceUnlocked"];

  v20 = [MEMORY[0x1E696AD98] numberWithBool:self->_isDeviceScreenON];
  [v6 encodeObject:v20 forKey:@"AFModesConfiguration::isDeviceScreenON"];

  v21 = [MEMORY[0x1E696AD98] numberWithBool:self->_isInitialBringUp];
  [v6 encodeObject:v21 forKey:@"AFModesConfiguration::isInitialBringUp"];

  v22 = [MEMORY[0x1E696AD98] numberWithInteger:self->_isUserEngagedWithDevice];
  [v6 encodeObject:v22 forKey:@"AFModesConfiguration::isUserEngagedWithDevice"];
}

- (AFModesConfiguration)initWithCoder:(id)a3
{
  v3 = a3;
  v4 = [v3 decodeObjectOfClass:objc_opt_class() forKey:@"AFModesConfiguration::isEyesFree"];
  v35 = [v4 BOOLValue];

  v5 = [v3 decodeObjectOfClass:objc_opt_class() forKey:@"AFModesConfiguration::isUIFree"];
  v34 = [v5 BOOLValue];

  v6 = [v3 decodeObjectOfClass:objc_opt_class() forKey:@"AFModesConfiguration::isForCarDND"];
  v33 = [v6 BOOLValue];

  v7 = [v3 decodeObjectOfClass:objc_opt_class() forKey:@"AFModesConfiguration::isInAmbient"];
  v32 = [v7 BOOLValue];

  v8 = [v3 decodeObjectOfClass:objc_opt_class() forKey:@"AFModesConfiguration::isMapsNavigationActive"];
  v31 = [v8 BOOLValue];

  v9 = [v3 decodeObjectOfClass:objc_opt_class() forKey:@"AFModesConfiguration::isVoiceTriggerRequest"];
  v30 = [v9 BOOLValue];

  v10 = [v3 decodeObjectOfClass:objc_opt_class() forKey:@"AFModesConfiguration::isConnectedToCarPlay"];
  v29 = [v10 BOOLValue];

  v11 = [v3 decodeObjectOfClass:objc_opt_class() forKey:@"AFModesConfiguration::isRequestMadeWithPhysicalDeviceInteraction"];
  v28 = [v11 BOOLValue];

  v12 = [v3 decodeObjectOfClass:objc_opt_class() forKey:@"AFModesConfiguration::isAudioAccessoryButtonActivation"];
  v27 = [v12 BOOLValue];

  v13 = [v3 decodeObjectOfClass:objc_opt_class() forKey:@"AFModesConfiguration::isSiriAutoPrompt"];
  LOBYTE(v12) = [v13 BOOLValue];

  v14 = [v3 decodeObjectOfClass:objc_opt_class() forKey:@"AFModesConfiguration::isFlexibleFollowup"];
  LOBYTE(v13) = [v14 BOOLValue];

  v15 = [v3 decodeObjectOfClass:objc_opt_class() forKey:@"AFModesConfiguration::userTypedInSiri"];
  LOBYTE(v14) = [v15 BOOLValue];

  v16 = [v3 decodeObjectOfClass:objc_opt_class() forKey:@"AFModesConfiguration::modeOverrideValue"];
  v17 = [v3 decodeObjectOfClass:objc_opt_class() forKey:@"AFModesConfiguration::isDeviceUnlocked"];
  LOBYTE(v11) = [v17 BOOLValue];

  v18 = [v3 decodeObjectOfClass:objc_opt_class() forKey:@"AFModesConfiguration::isDeviceScreenON"];
  LOBYTE(v17) = [v18 BOOLValue];

  v19 = [v3 decodeObjectOfClass:objc_opt_class() forKey:@"AFModesConfiguration::isInitialBringUp"];
  v20 = [v19 BOOLValue];

  v21 = [v3 decodeObjectOfClass:objc_opt_class() forKey:@"AFModesConfiguration::isUserEngagedWithDevice"];

  v22 = [v21 integerValue];
  BYTE2(v26) = v20;
  BYTE1(v26) = v17;
  LOBYTE(v26) = v11;
  BYTE5(v25) = v14;
  BYTE4(v25) = v13;
  BYTE3(v25) = v12;
  BYTE2(v25) = v27;
  BYTE1(v25) = v28;
  LOBYTE(v25) = v29;
  v23 = [AFModesConfiguration initWithIsEyesFree:"initWithIsEyesFree:isUIFree:isForCarDND:isInAmbient:isMapsNavigationActive:isVoiceTriggerRequest:isConnectedToCarPlay:isRequestMadeWithPhysicalDeviceInteraction:isAudioAccessoryButtonActivation:isSiriAutoPrompt:isFlexibleFollowup:userTypedInSiri:modeOverrideValue:isDeviceUnlocked:isDeviceScreenON:isInitialBringUp:isUserEngagedWithDevice:" isUIFree:v35 isForCarDND:v34 isInAmbient:v33 isMapsNavigationActive:v32 isVoiceTriggerRequest:v31 isConnectedToCarPlay:v30 isRequestMadeWithPhysicalDeviceInteraction:v25 isAudioAccessoryButtonActivation:v16 isSiriAutoPrompt:v26 isFlexibleFollowup:v22 userTypedInSiri:? modeOverrideValue:? isDeviceUnlocked:? isDeviceScreenON:? isInitialBringUp:? isUserEngagedWithDevice:?];

  return v23;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (self == v4)
  {
    v24 = 1;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v5 = v4;
      isEyesFree = self->_isEyesFree;
      if (isEyesFree != [(AFModesConfiguration *)v5 isEyesFree])
      {
        goto LABEL_24;
      }

      isUIFree = self->_isUIFree;
      if (isUIFree != [(AFModesConfiguration *)v5 isUIFree])
      {
        goto LABEL_24;
      }

      isForCarDND = self->_isForCarDND;
      if (isForCarDND != [(AFModesConfiguration *)v5 isForCarDND])
      {
        goto LABEL_24;
      }

      isInAmbient = self->_isInAmbient;
      if (isInAmbient != [(AFModesConfiguration *)v5 isInAmbient])
      {
        goto LABEL_24;
      }

      isMapsNavigationActive = self->_isMapsNavigationActive;
      if (isMapsNavigationActive != [(AFModesConfiguration *)v5 isMapsNavigationActive])
      {
        goto LABEL_24;
      }

      isVoiceTriggerRequest = self->_isVoiceTriggerRequest;
      if (isVoiceTriggerRequest != [(AFModesConfiguration *)v5 isVoiceTriggerRequest])
      {
        goto LABEL_24;
      }

      isConnectedToCarPlay = self->_isConnectedToCarPlay;
      if (isConnectedToCarPlay != [(AFModesConfiguration *)v5 isConnectedToCarPlay])
      {
        goto LABEL_24;
      }

      isRequestMadeWithPhysicalDeviceInteraction = self->_isRequestMadeWithPhysicalDeviceInteraction;
      if (isRequestMadeWithPhysicalDeviceInteraction != [(AFModesConfiguration *)v5 isRequestMadeWithPhysicalDeviceInteraction])
      {
        goto LABEL_24;
      }

      isAudioAccessoryButtonActivation = self->_isAudioAccessoryButtonActivation;
      if (isAudioAccessoryButtonActivation != [(AFModesConfiguration *)v5 isAudioAccessoryButtonActivation])
      {
        goto LABEL_24;
      }

      isSiriAutoPrompt = self->_isSiriAutoPrompt;
      if (isSiriAutoPrompt == [(AFModesConfiguration *)v5 isSiriAutoPrompt]&& (isFlexibleFollowup = self->_isFlexibleFollowup, isFlexibleFollowup == [(AFModesConfiguration *)v5 isFlexibleFollowup]) && (userTypedInSiri = self->_userTypedInSiri, userTypedInSiri == [(AFModesConfiguration *)v5 userTypedInSiri]) && (isDeviceUnlocked = self->_isDeviceUnlocked, isDeviceUnlocked == [(AFModesConfiguration *)v5 isDeviceUnlocked]) && (isDeviceScreenON = self->_isDeviceScreenON, isDeviceScreenON == [(AFModesConfiguration *)v5 isDeviceScreenON]) && (isInitialBringUp = self->_isInitialBringUp, isInitialBringUp == [(AFModesConfiguration *)v5 isInitialBringUp]) && (isUserEngagedWithDevice = self->_isUserEngagedWithDevice, isUserEngagedWithDevice == [(AFModesConfiguration *)v5 isUserEngagedWithDevice]))
      {
        v22 = [(AFModesConfiguration *)v5 modeOverrideValue];
        modeOverrideValue = self->_modeOverrideValue;
        v24 = modeOverrideValue == v22 || [(NSString *)modeOverrideValue isEqual:v22];
      }

      else
      {
LABEL_24:
        v24 = 0;
      }
    }

    else
    {
      v24 = 0;
    }
  }

  return v24;
}

- (unint64_t)hash
{
  v36 = [MEMORY[0x1E696AD98] numberWithBool:self->_isEyesFree];
  v3 = [v36 hash];
  v35 = [MEMORY[0x1E696AD98] numberWithBool:self->_isUIFree];
  v4 = [v35 hash] ^ v3;
  v34 = [MEMORY[0x1E696AD98] numberWithBool:self->_isForCarDND];
  v5 = [v34 hash];
  v33 = [MEMORY[0x1E696AD98] numberWithBool:self->_isInAmbient];
  v6 = v4 ^ v5 ^ [v33 hash];
  v32 = [MEMORY[0x1E696AD98] numberWithBool:self->_isMapsNavigationActive];
  v7 = [v32 hash];
  v31 = [MEMORY[0x1E696AD98] numberWithBool:self->_isVoiceTriggerRequest];
  v8 = v7 ^ [v31 hash];
  v30 = [MEMORY[0x1E696AD98] numberWithBool:self->_isConnectedToCarPlay];
  v9 = v6 ^ v8 ^ [v30 hash];
  v29 = [MEMORY[0x1E696AD98] numberWithBool:self->_isRequestMadeWithPhysicalDeviceInteraction];
  v10 = [v29 hash];
  v28 = [MEMORY[0x1E696AD98] numberWithBool:self->_isAudioAccessoryButtonActivation];
  v11 = v10 ^ [v28 hash];
  v12 = [MEMORY[0x1E696AD98] numberWithBool:self->_isSiriAutoPrompt];
  v13 = v11 ^ [v12 hash];
  v14 = [MEMORY[0x1E696AD98] numberWithBool:self->_isFlexibleFollowup];
  v15 = v9 ^ v13 ^ [v14 hash];
  v16 = [MEMORY[0x1E696AD98] numberWithBool:self->_userTypedInSiri];
  v17 = [v16 hash];
  v18 = v17 ^ [(NSString *)self->_modeOverrideValue hash];
  v19 = [MEMORY[0x1E696AD98] numberWithBool:self->_isDeviceUnlocked];
  v20 = v18 ^ [v19 hash];
  v21 = [MEMORY[0x1E696AD98] numberWithBool:self->_isDeviceScreenON];
  v22 = v20 ^ [v21 hash];
  v23 = [MEMORY[0x1E696AD98] numberWithBool:self->_isInitialBringUp];
  v24 = v15 ^ v22 ^ [v23 hash];
  v25 = [MEMORY[0x1E696AD98] numberWithInteger:self->_isUserEngagedWithDevice];
  v26 = [v25 hash];

  return v24 ^ v26;
}

- (id)_descriptionWithIndent:(unint64_t)a3
{
  v32 = objc_alloc(MEMORY[0x1E696AEC0]);
  v33.receiver = self;
  v33.super_class = AFModesConfiguration;
  v31 = [(AFModesConfiguration *)&v33 description];
  modeOverrideValue = self->_modeOverrideValue;
  isUserEngagedWithDevice = self->_isUserEngagedWithDevice;
  if (isUserEngagedWithDevice > 2)
  {
    v5 = @"(unknown)";
  }

  else
  {
    v5 = off_1E7347958[isUserEngagedWithDevice];
  }

  if (self->_isInitialBringUp)
  {
    v6 = @"YES";
  }

  else
  {
    v6 = @"NO";
  }

  if (self->_isDeviceScreenON)
  {
    v7 = @"YES";
  }

  else
  {
    v7 = @"NO";
  }

  v28 = v7;
  v29 = v6;
  if (self->_isDeviceUnlocked)
  {
    v8 = @"YES";
  }

  else
  {
    v8 = @"NO";
  }

  v27 = v8;
  if (self->_userTypedInSiri)
  {
    v9 = @"YES";
  }

  else
  {
    v9 = @"NO";
  }

  if (self->_isFlexibleFollowup)
  {
    v10 = @"YES";
  }

  else
  {
    v10 = @"NO";
  }

  v25 = v10;
  v26 = v9;
  if (self->_isSiriAutoPrompt)
  {
    v11 = @"YES";
  }

  else
  {
    v11 = @"NO";
  }

  v24 = v11;
  if (self->_isAudioAccessoryButtonActivation)
  {
    v12 = @"YES";
  }

  else
  {
    v12 = @"NO";
  }

  if (self->_isRequestMadeWithPhysicalDeviceInteraction)
  {
    v13 = @"YES";
  }

  else
  {
    v13 = @"NO";
  }

  if (self->_isConnectedToCarPlay)
  {
    v14 = @"YES";
  }

  else
  {
    v14 = @"NO";
  }

  if (self->_isVoiceTriggerRequest)
  {
    v15 = @"YES";
  }

  else
  {
    v15 = @"NO";
  }

  if (self->_isMapsNavigationActive)
  {
    v16 = @"YES";
  }

  else
  {
    v16 = @"NO";
  }

  if (self->_isInAmbient)
  {
    v17 = @"YES";
  }

  else
  {
    v17 = @"NO";
  }

  if (self->_isForCarDND)
  {
    v18 = @"YES";
  }

  else
  {
    v18 = @"NO";
  }

  if (self->_isUIFree)
  {
    v19 = @"YES";
  }

  else
  {
    v19 = @"NO";
  }

  if (self->_isEyesFree)
  {
    v20 = @"YES";
  }

  else
  {
    v20 = @"NO";
  }

  v21 = v5;
  v22 = [v32 initWithFormat:@"%@ {isEyesFree = %@, isUIFree = %@, isForCarDND = %@, isInAmbient = %@, isMapsNavigationActive = %@, isVoiceTriggerRequest = %@, isConnectedToCarPlay = %@, isRequestMadeWithPhysicalDeviceInteraction = %@, isAudioAccessoryButtonActivation = %@, isSiriAutoPrompt = %@, isFlexibleFollowup = %@, userTypedInSiri = %@, modeOverrideValue = %@, isDeviceUnlocked = %@, isDeviceScreenON = %@, isInitialBringUp = %@, isUserEngagedWithDevice = %@}", v31, v20, v19, v18, v17, v16, v15, v14, v13, v12, v24, v25, v26, modeOverrideValue, v27, v28, v29, v21];

  return v22;
}

- (AFModesConfiguration)initWithIsEyesFree:(BOOL)a3 isUIFree:(BOOL)a4 isForCarDND:(BOOL)a5 isInAmbient:(BOOL)a6 isMapsNavigationActive:(BOOL)a7 isVoiceTriggerRequest:(BOOL)a8 isConnectedToCarPlay:(BOOL)a9 isRequestMadeWithPhysicalDeviceInteraction:(BOOL)a10 isAudioAccessoryButtonActivation:(BOOL)a11 isSiriAutoPrompt:(BOOL)a12 isFlexibleFollowup:(BOOL)a13 userTypedInSiri:(BOOL)a14 modeOverrideValue:(id)a15 isDeviceUnlocked:(BOOL)a16 isDeviceScreenON:(BOOL)a17 isInitialBringUp:(BOOL)a18 isUserEngagedWithDevice:(int64_t)a19
{
  v23 = a15;
  v30[0] = MEMORY[0x1E69E9820];
  v30[1] = 3221225472;
  v30[2] = __363__AFModesConfiguration_initWithIsEyesFree_isUIFree_isForCarDND_isInAmbient_isMapsNavigationActive_isVoiceTriggerRequest_isConnectedToCarPlay_isRequestMadeWithPhysicalDeviceInteraction_isAudioAccessoryButtonActivation_isSiriAutoPrompt_isFlexibleFollowup_userTypedInSiri_modeOverrideValue_isDeviceUnlocked_isDeviceScreenON_isInitialBringUp_isUserEngagedWithDevice___block_invoke;
  v30[3] = &unk_1E7345BD0;
  v33 = a3;
  v34 = a4;
  v35 = a5;
  v36 = a6;
  v37 = a7;
  v38 = a8;
  v39 = a9;
  v40 = a10;
  v41 = a11;
  v42 = a12;
  v43 = a13;
  v44 = a14;
  v45 = a16;
  v46 = a17;
  v47 = a18;
  v31 = v23;
  v32 = a19;
  v24 = v23;
  v25 = [(AFModesConfiguration *)self initWithBuilder:v30];

  return v25;
}

void __363__AFModesConfiguration_initWithIsEyesFree_isUIFree_isForCarDND_isInAmbient_isMapsNavigationActive_isVoiceTriggerRequest_isConnectedToCarPlay_isRequestMadeWithPhysicalDeviceInteraction_isAudioAccessoryButtonActivation_isSiriAutoPrompt_isFlexibleFollowup_userTypedInSiri_modeOverrideValue_isDeviceUnlocked_isDeviceScreenON_isInitialBringUp_isUserEngagedWithDevice___block_invoke(uint64_t a1, void *a2)
{
  v3 = *(a1 + 48);
  v4 = a2;
  [v4 setIsEyesFree:v3];
  [v4 setIsUIFree:*(a1 + 49)];
  [v4 setIsForCarDND:*(a1 + 50)];
  [v4 setIsInAmbient:*(a1 + 51)];
  [v4 setIsMapsNavigationActive:*(a1 + 52)];
  [v4 setIsVoiceTriggerRequest:*(a1 + 53)];
  [v4 setIsConnectedToCarPlay:*(a1 + 54)];
  [v4 setIsRequestMadeWithPhysicalDeviceInteraction:*(a1 + 55)];
  [v4 setIsAudioAccessoryButtonActivation:*(a1 + 56)];
  [v4 setIsSiriAutoPrompt:*(a1 + 57)];
  [v4 setIsFlexibleFollowup:*(a1 + 58)];
  [v4 setUserTypedInSiri:*(a1 + 59)];
  [v4 setModeOverrideValue:*(a1 + 32)];
  [v4 setIsDeviceUnlocked:*(a1 + 60)];
  [v4 setIsDeviceScreenON:*(a1 + 61)];
  [v4 setIsInitialBringUp:*(a1 + 62)];
  [v4 setIsUserEngagedWithDevice:*(a1 + 40)];
}

- (AFModesConfiguration)initWithBuilder:(id)a3
{
  v4 = a3;
  v12.receiver = self;
  v12.super_class = AFModesConfiguration;
  v5 = [(AFModesConfiguration *)&v12 init];
  v6 = v5;
  if (v4 && v5)
  {
    v7 = [[_AFModesConfigurationMutation alloc] initWithBase:0];
    v4[2](v4, v7);
    if ([(_AFModesConfigurationMutation *)v7 isDirty])
    {
      v6->_isEyesFree = [(_AFModesConfigurationMutation *)v7 getIsEyesFree];
      v6->_isUIFree = [(_AFModesConfigurationMutation *)v7 getIsUIFree];
      v6->_isForCarDND = [(_AFModesConfigurationMutation *)v7 getIsForCarDND];
      v6->_isInAmbient = [(_AFModesConfigurationMutation *)v7 getIsInAmbient];
      v6->_isMapsNavigationActive = [(_AFModesConfigurationMutation *)v7 getIsMapsNavigationActive];
      v6->_isVoiceTriggerRequest = [(_AFModesConfigurationMutation *)v7 getIsVoiceTriggerRequest];
      v6->_isConnectedToCarPlay = [(_AFModesConfigurationMutation *)v7 getIsConnectedToCarPlay];
      v6->_isRequestMadeWithPhysicalDeviceInteraction = [(_AFModesConfigurationMutation *)v7 getIsRequestMadeWithPhysicalDeviceInteraction];
      v6->_isAudioAccessoryButtonActivation = [(_AFModesConfigurationMutation *)v7 getIsAudioAccessoryButtonActivation];
      v6->_isSiriAutoPrompt = [(_AFModesConfigurationMutation *)v7 getIsSiriAutoPrompt];
      v6->_isFlexibleFollowup = [(_AFModesConfigurationMutation *)v7 getIsFlexibleFollowup];
      v6->_userTypedInSiri = [(_AFModesConfigurationMutation *)v7 getUserTypedInSiri];
      v8 = [(_AFModesConfigurationMutation *)v7 getModeOverrideValue];
      v9 = [v8 copy];
      modeOverrideValue = v6->_modeOverrideValue;
      v6->_modeOverrideValue = v9;

      v6->_isDeviceUnlocked = [(_AFModesConfigurationMutation *)v7 getIsDeviceUnlocked];
      v6->_isDeviceScreenON = [(_AFModesConfigurationMutation *)v7 getIsDeviceScreenON];
      v6->_isInitialBringUp = [(_AFModesConfigurationMutation *)v7 getIsInitialBringUp];
      v6->_isUserEngagedWithDevice = [(_AFModesConfigurationMutation *)v7 getIsUserEngagedWithDevice];
    }
  }

  return v6;
}

+ (id)newWithBuilder:(id)a3
{
  v3 = a3;
  v4 = [objc_alloc(objc_opt_class()) initWithBuilder:v3];

  return v4;
}

- (id)mutatedCopyWithMutator:(id)a3
{
  v4 = a3;
  if (v4)
  {
    v5 = [[_AFModesConfigurationMutation alloc] initWithBase:self];
    v4[2](v4, v5);
    if ([(_AFModesConfigurationMutation *)v5 isDirty])
    {
      v6 = objc_alloc_init(AFModesConfiguration);
      v6->_isEyesFree = [(_AFModesConfigurationMutation *)v5 getIsEyesFree];
      v6->_isUIFree = [(_AFModesConfigurationMutation *)v5 getIsUIFree];
      v6->_isForCarDND = [(_AFModesConfigurationMutation *)v5 getIsForCarDND];
      v6->_isInAmbient = [(_AFModesConfigurationMutation *)v5 getIsInAmbient];
      v6->_isMapsNavigationActive = [(_AFModesConfigurationMutation *)v5 getIsMapsNavigationActive];
      v6->_isVoiceTriggerRequest = [(_AFModesConfigurationMutation *)v5 getIsVoiceTriggerRequest];
      v6->_isConnectedToCarPlay = [(_AFModesConfigurationMutation *)v5 getIsConnectedToCarPlay];
      v6->_isRequestMadeWithPhysicalDeviceInteraction = [(_AFModesConfigurationMutation *)v5 getIsRequestMadeWithPhysicalDeviceInteraction];
      v6->_isAudioAccessoryButtonActivation = [(_AFModesConfigurationMutation *)v5 getIsAudioAccessoryButtonActivation];
      v6->_isSiriAutoPrompt = [(_AFModesConfigurationMutation *)v5 getIsSiriAutoPrompt];
      v6->_isFlexibleFollowup = [(_AFModesConfigurationMutation *)v5 getIsFlexibleFollowup];
      v6->_userTypedInSiri = [(_AFModesConfigurationMutation *)v5 getUserTypedInSiri];
      v7 = [(_AFModesConfigurationMutation *)v5 getModeOverrideValue];
      v8 = [v7 copy];
      modeOverrideValue = v6->_modeOverrideValue;
      v6->_modeOverrideValue = v8;

      v6->_isDeviceUnlocked = [(_AFModesConfigurationMutation *)v5 getIsDeviceUnlocked];
      v6->_isDeviceScreenON = [(_AFModesConfigurationMutation *)v5 getIsDeviceScreenON];
      v6->_isInitialBringUp = [(_AFModesConfigurationMutation *)v5 getIsInitialBringUp];
      v6->_isUserEngagedWithDevice = [(_AFModesConfigurationMutation *)v5 getIsUserEngagedWithDevice];
    }

    else
    {
      v6 = [(AFModesConfiguration *)self copy];
    }
  }

  else
  {
    v6 = [(AFModesConfiguration *)self copy];
  }

  return v6;
}

@end