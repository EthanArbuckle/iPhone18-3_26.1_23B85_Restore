@interface AFModesConfiguration
+ (id)newWithBuilder:(id)builder;
- (AFModesConfiguration)initWithBuilder:(id)builder;
- (AFModesConfiguration)initWithCoder:(id)coder;
- (AFModesConfiguration)initWithIsEyesFree:(BOOL)free isUIFree:(BOOL)iFree isForCarDND:(BOOL)d isInAmbient:(BOOL)ambient isMapsNavigationActive:(BOOL)active isVoiceTriggerRequest:(BOOL)request isConnectedToCarPlay:(BOOL)play isRequestMadeWithPhysicalDeviceInteraction:(BOOL)self0 isAudioAccessoryButtonActivation:(BOOL)self1 isSiriAutoPrompt:(BOOL)self2 isFlexibleFollowup:(BOOL)self3 userTypedInSiri:(BOOL)self4 modeOverrideValue:(id)self5 isDeviceUnlocked:(BOOL)self6 isDeviceScreenON:(BOOL)self7 isInitialBringUp:(BOOL)self8 isUserEngagedWithDevice:(int64_t)self9;
- (BOOL)isEqual:(id)equal;
- (id)_descriptionWithIndent:(unint64_t)indent;
- (id)mutatedCopyWithMutator:(id)mutator;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)coder;
@end

@implementation AFModesConfiguration

- (void)encodeWithCoder:(id)coder
{
  v4 = MEMORY[0x1E696AD98];
  isEyesFree = self->_isEyesFree;
  coderCopy = coder;
  v7 = [v4 numberWithBool:isEyesFree];
  [coderCopy encodeObject:v7 forKey:@"AFModesConfiguration::isEyesFree"];

  v8 = [MEMORY[0x1E696AD98] numberWithBool:self->_isUIFree];
  [coderCopy encodeObject:v8 forKey:@"AFModesConfiguration::isUIFree"];

  v9 = [MEMORY[0x1E696AD98] numberWithBool:self->_isForCarDND];
  [coderCopy encodeObject:v9 forKey:@"AFModesConfiguration::isForCarDND"];

  v10 = [MEMORY[0x1E696AD98] numberWithBool:self->_isInAmbient];
  [coderCopy encodeObject:v10 forKey:@"AFModesConfiguration::isInAmbient"];

  v11 = [MEMORY[0x1E696AD98] numberWithBool:self->_isMapsNavigationActive];
  [coderCopy encodeObject:v11 forKey:@"AFModesConfiguration::isMapsNavigationActive"];

  v12 = [MEMORY[0x1E696AD98] numberWithBool:self->_isVoiceTriggerRequest];
  [coderCopy encodeObject:v12 forKey:@"AFModesConfiguration::isVoiceTriggerRequest"];

  v13 = [MEMORY[0x1E696AD98] numberWithBool:self->_isConnectedToCarPlay];
  [coderCopy encodeObject:v13 forKey:@"AFModesConfiguration::isConnectedToCarPlay"];

  v14 = [MEMORY[0x1E696AD98] numberWithBool:self->_isRequestMadeWithPhysicalDeviceInteraction];
  [coderCopy encodeObject:v14 forKey:@"AFModesConfiguration::isRequestMadeWithPhysicalDeviceInteraction"];

  v15 = [MEMORY[0x1E696AD98] numberWithBool:self->_isAudioAccessoryButtonActivation];
  [coderCopy encodeObject:v15 forKey:@"AFModesConfiguration::isAudioAccessoryButtonActivation"];

  v16 = [MEMORY[0x1E696AD98] numberWithBool:self->_isSiriAutoPrompt];
  [coderCopy encodeObject:v16 forKey:@"AFModesConfiguration::isSiriAutoPrompt"];

  v17 = [MEMORY[0x1E696AD98] numberWithBool:self->_isFlexibleFollowup];
  [coderCopy encodeObject:v17 forKey:@"AFModesConfiguration::isFlexibleFollowup"];

  v18 = [MEMORY[0x1E696AD98] numberWithBool:self->_userTypedInSiri];
  [coderCopy encodeObject:v18 forKey:@"AFModesConfiguration::userTypedInSiri"];

  [coderCopy encodeObject:self->_modeOverrideValue forKey:@"AFModesConfiguration::modeOverrideValue"];
  v19 = [MEMORY[0x1E696AD98] numberWithBool:self->_isDeviceUnlocked];
  [coderCopy encodeObject:v19 forKey:@"AFModesConfiguration::isDeviceUnlocked"];

  v20 = [MEMORY[0x1E696AD98] numberWithBool:self->_isDeviceScreenON];
  [coderCopy encodeObject:v20 forKey:@"AFModesConfiguration::isDeviceScreenON"];

  v21 = [MEMORY[0x1E696AD98] numberWithBool:self->_isInitialBringUp];
  [coderCopy encodeObject:v21 forKey:@"AFModesConfiguration::isInitialBringUp"];

  v22 = [MEMORY[0x1E696AD98] numberWithInteger:self->_isUserEngagedWithDevice];
  [coderCopy encodeObject:v22 forKey:@"AFModesConfiguration::isUserEngagedWithDevice"];
}

- (AFModesConfiguration)initWithCoder:(id)coder
{
  coderCopy = coder;
  v4 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"AFModesConfiguration::isEyesFree"];
  bOOLValue = [v4 BOOLValue];

  v5 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"AFModesConfiguration::isUIFree"];
  bOOLValue2 = [v5 BOOLValue];

  v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"AFModesConfiguration::isForCarDND"];
  bOOLValue3 = [v6 BOOLValue];

  v7 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"AFModesConfiguration::isInAmbient"];
  bOOLValue4 = [v7 BOOLValue];

  v8 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"AFModesConfiguration::isMapsNavigationActive"];
  bOOLValue5 = [v8 BOOLValue];

  v9 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"AFModesConfiguration::isVoiceTriggerRequest"];
  bOOLValue6 = [v9 BOOLValue];

  v10 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"AFModesConfiguration::isConnectedToCarPlay"];
  bOOLValue7 = [v10 BOOLValue];

  v11 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"AFModesConfiguration::isRequestMadeWithPhysicalDeviceInteraction"];
  bOOLValue8 = [v11 BOOLValue];

  v12 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"AFModesConfiguration::isAudioAccessoryButtonActivation"];
  bOOLValue9 = [v12 BOOLValue];

  v13 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"AFModesConfiguration::isSiriAutoPrompt"];
  LOBYTE(v12) = [v13 BOOLValue];

  v14 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"AFModesConfiguration::isFlexibleFollowup"];
  LOBYTE(v13) = [v14 BOOLValue];

  v15 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"AFModesConfiguration::userTypedInSiri"];
  LOBYTE(v14) = [v15 BOOLValue];

  v16 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"AFModesConfiguration::modeOverrideValue"];
  v17 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"AFModesConfiguration::isDeviceUnlocked"];
  LOBYTE(v11) = [v17 BOOLValue];

  v18 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"AFModesConfiguration::isDeviceScreenON"];
  LOBYTE(v17) = [v18 BOOLValue];

  v19 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"AFModesConfiguration::isInitialBringUp"];
  bOOLValue10 = [v19 BOOLValue];

  v21 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"AFModesConfiguration::isUserEngagedWithDevice"];

  integerValue = [v21 integerValue];
  BYTE2(v26) = bOOLValue10;
  BYTE1(v26) = v17;
  LOBYTE(v26) = v11;
  BYTE5(v25) = v14;
  BYTE4(v25) = v13;
  BYTE3(v25) = v12;
  BYTE2(v25) = bOOLValue9;
  BYTE1(v25) = bOOLValue8;
  LOBYTE(v25) = bOOLValue7;
  v23 = [AFModesConfiguration initWithIsEyesFree:"initWithIsEyesFree:isUIFree:isForCarDND:isInAmbient:isMapsNavigationActive:isVoiceTriggerRequest:isConnectedToCarPlay:isRequestMadeWithPhysicalDeviceInteraction:isAudioAccessoryButtonActivation:isSiriAutoPrompt:isFlexibleFollowup:userTypedInSiri:modeOverrideValue:isDeviceUnlocked:isDeviceScreenON:isInitialBringUp:isUserEngagedWithDevice:" isUIFree:bOOLValue isForCarDND:bOOLValue2 isInAmbient:bOOLValue3 isMapsNavigationActive:bOOLValue4 isVoiceTriggerRequest:bOOLValue5 isConnectedToCarPlay:bOOLValue6 isRequestMadeWithPhysicalDeviceInteraction:v25 isAudioAccessoryButtonActivation:v16 isSiriAutoPrompt:v26 isFlexibleFollowup:integerValue userTypedInSiri:? modeOverrideValue:? isDeviceUnlocked:? isDeviceScreenON:? isInitialBringUp:? isUserEngagedWithDevice:?];

  return v23;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (self == equalCopy)
  {
    v24 = 1;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v5 = equalCopy;
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
        modeOverrideValue = [(AFModesConfiguration *)v5 modeOverrideValue];
        modeOverrideValue = self->_modeOverrideValue;
        v24 = modeOverrideValue == modeOverrideValue || [(NSString *)modeOverrideValue isEqual:modeOverrideValue];
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

- (id)_descriptionWithIndent:(unint64_t)indent
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

- (AFModesConfiguration)initWithIsEyesFree:(BOOL)free isUIFree:(BOOL)iFree isForCarDND:(BOOL)d isInAmbient:(BOOL)ambient isMapsNavigationActive:(BOOL)active isVoiceTriggerRequest:(BOOL)request isConnectedToCarPlay:(BOOL)play isRequestMadeWithPhysicalDeviceInteraction:(BOOL)self0 isAudioAccessoryButtonActivation:(BOOL)self1 isSiriAutoPrompt:(BOOL)self2 isFlexibleFollowup:(BOOL)self3 userTypedInSiri:(BOOL)self4 modeOverrideValue:(id)self5 isDeviceUnlocked:(BOOL)self6 isDeviceScreenON:(BOOL)self7 isInitialBringUp:(BOOL)self8 isUserEngagedWithDevice:(int64_t)self9
{
  valueCopy = value;
  v30[0] = MEMORY[0x1E69E9820];
  v30[1] = 3221225472;
  v30[2] = __363__AFModesConfiguration_initWithIsEyesFree_isUIFree_isForCarDND_isInAmbient_isMapsNavigationActive_isVoiceTriggerRequest_isConnectedToCarPlay_isRequestMadeWithPhysicalDeviceInteraction_isAudioAccessoryButtonActivation_isSiriAutoPrompt_isFlexibleFollowup_userTypedInSiri_modeOverrideValue_isDeviceUnlocked_isDeviceScreenON_isInitialBringUp_isUserEngagedWithDevice___block_invoke;
  v30[3] = &unk_1E7345BD0;
  freeCopy = free;
  iFreeCopy = iFree;
  dCopy = d;
  ambientCopy = ambient;
  activeCopy = active;
  requestCopy = request;
  playCopy = play;
  interactionCopy = interaction;
  activationCopy = activation;
  promptCopy = prompt;
  followupCopy = followup;
  siriCopy = siri;
  unlockedCopy = unlocked;
  nCopy = n;
  upCopy = up;
  v31 = valueCopy;
  deviceCopy = device;
  v24 = valueCopy;
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

- (AFModesConfiguration)initWithBuilder:(id)builder
{
  builderCopy = builder;
  v12.receiver = self;
  v12.super_class = AFModesConfiguration;
  v5 = [(AFModesConfiguration *)&v12 init];
  v6 = v5;
  if (builderCopy && v5)
  {
    v7 = [[_AFModesConfigurationMutation alloc] initWithBase:0];
    builderCopy[2](builderCopy, v7);
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
      getModeOverrideValue = [(_AFModesConfigurationMutation *)v7 getModeOverrideValue];
      v9 = [getModeOverrideValue copy];
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

+ (id)newWithBuilder:(id)builder
{
  builderCopy = builder;
  v4 = [objc_alloc(objc_opt_class()) initWithBuilder:builderCopy];

  return v4;
}

- (id)mutatedCopyWithMutator:(id)mutator
{
  mutatorCopy = mutator;
  if (mutatorCopy)
  {
    v5 = [[_AFModesConfigurationMutation alloc] initWithBase:self];
    mutatorCopy[2](mutatorCopy, v5);
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
      getModeOverrideValue = [(_AFModesConfigurationMutation *)v5 getModeOverrideValue];
      v8 = [getModeOverrideValue copy];
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