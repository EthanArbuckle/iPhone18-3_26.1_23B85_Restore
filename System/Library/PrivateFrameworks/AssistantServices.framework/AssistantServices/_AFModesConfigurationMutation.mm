@interface _AFModesConfigurationMutation
- (BOOL)getIsAudioAccessoryButtonActivation;
- (BOOL)getIsConnectedToCarPlay;
- (BOOL)getIsDeviceScreenON;
- (BOOL)getIsDeviceUnlocked;
- (BOOL)getIsEyesFree;
- (BOOL)getIsFlexibleFollowup;
- (BOOL)getIsForCarDND;
- (BOOL)getIsInAmbient;
- (BOOL)getIsInitialBringUp;
- (BOOL)getIsMapsNavigationActive;
- (BOOL)getIsRequestMadeWithPhysicalDeviceInteraction;
- (BOOL)getIsSiriAutoPrompt;
- (BOOL)getIsUIFree;
- (BOOL)getIsVoiceTriggerRequest;
- (BOOL)getUserTypedInSiri;
- (_AFModesConfigurationMutation)initWithBase:(id)a3;
- (id)getModeOverrideValue;
- (int64_t)getIsUserEngagedWithDevice;
@end

@implementation _AFModesConfigurationMutation

- (BOOL)getIsEyesFree
{
  if ((*&self->_mutationFlags & 2) != 0)
  {
    return self->_isEyesFree;
  }

  else
  {
    return [(AFModesConfiguration *)self->_base isEyesFree];
  }
}

- (BOOL)getIsUIFree
{
  if ((*&self->_mutationFlags & 4) != 0)
  {
    return self->_isUIFree;
  }

  else
  {
    return [(AFModesConfiguration *)self->_base isUIFree];
  }
}

- (BOOL)getIsInAmbient
{
  if ((*&self->_mutationFlags & 0x10) != 0)
  {
    return self->_isInAmbient;
  }

  else
  {
    return [(AFModesConfiguration *)self->_base isInAmbient];
  }
}

- (BOOL)getIsMapsNavigationActive
{
  if ((*&self->_mutationFlags & 0x20) != 0)
  {
    return self->_isMapsNavigationActive;
  }

  else
  {
    return [(AFModesConfiguration *)self->_base isMapsNavigationActive];
  }
}

- (BOOL)getIsVoiceTriggerRequest
{
  if ((*&self->_mutationFlags & 0x40) != 0)
  {
    return self->_isVoiceTriggerRequest;
  }

  else
  {
    return [(AFModesConfiguration *)self->_base isVoiceTriggerRequest];
  }
}

- (BOOL)getIsConnectedToCarPlay
{
  if ((*&self->_mutationFlags & 0x80) != 0)
  {
    return self->_isConnectedToCarPlay;
  }

  else
  {
    return [(AFModesConfiguration *)self->_base isConnectedToCarPlay];
  }
}

- (BOOL)getIsRequestMadeWithPhysicalDeviceInteraction
{
  if (*(&self->_mutationFlags + 1))
  {
    return self->_isRequestMadeWithPhysicalDeviceInteraction;
  }

  else
  {
    return [(AFModesConfiguration *)self->_base isRequestMadeWithPhysicalDeviceInteraction];
  }
}

- (BOOL)getIsAudioAccessoryButtonActivation
{
  if ((*(&self->_mutationFlags + 1) & 2) != 0)
  {
    return self->_isAudioAccessoryButtonActivation;
  }

  else
  {
    return [(AFModesConfiguration *)self->_base isAudioAccessoryButtonActivation];
  }
}

- (BOOL)getIsSiriAutoPrompt
{
  if ((*(&self->_mutationFlags + 1) & 4) != 0)
  {
    return self->_isSiriAutoPrompt;
  }

  else
  {
    return [(AFModesConfiguration *)self->_base isSiriAutoPrompt];
  }
}

- (BOOL)getIsFlexibleFollowup
{
  if ((*(&self->_mutationFlags + 1) & 8) != 0)
  {
    return self->_isFlexibleFollowup;
  }

  else
  {
    return [(AFModesConfiguration *)self->_base isFlexibleFollowup];
  }
}

- (BOOL)getUserTypedInSiri
{
  if ((*(&self->_mutationFlags + 1) & 0x10) != 0)
  {
    return self->_userTypedInSiri;
  }

  else
  {
    return [(AFModesConfiguration *)self->_base userTypedInSiri];
  }
}

- (id)getModeOverrideValue
{
  if ((*(&self->_mutationFlags + 1) & 0x20) != 0)
  {
    v2 = self->_modeOverrideValue;
  }

  else
  {
    v2 = [(AFModesConfiguration *)self->_base modeOverrideValue];
  }

  return v2;
}

- (BOOL)getIsDeviceUnlocked
{
  if ((*(&self->_mutationFlags + 1) & 0x40) != 0)
  {
    return self->_isDeviceUnlocked;
  }

  else
  {
    return [(AFModesConfiguration *)self->_base isDeviceUnlocked];
  }
}

- (BOOL)getIsDeviceScreenON
{
  if ((*(&self->_mutationFlags + 1) & 0x80) != 0)
  {
    return self->_isDeviceScreenON;
  }

  else
  {
    return [(AFModesConfiguration *)self->_base isDeviceScreenON];
  }
}

- (int64_t)getIsUserEngagedWithDevice
{
  if ((*(&self->_mutationFlags + 2) & 2) != 0)
  {
    return self->_isUserEngagedWithDevice;
  }

  else
  {
    return [(AFModesConfiguration *)self->_base isUserEngagedWithDevice];
  }
}

- (BOOL)getIsForCarDND
{
  if ((*&self->_mutationFlags & 8) != 0)
  {
    return self->_isForCarDND;
  }

  else
  {
    return [(AFModesConfiguration *)self->_base isForCarDND];
  }
}

- (BOOL)getIsInitialBringUp
{
  if (*(&self->_mutationFlags + 2))
  {
    return self->_isInitialBringUp;
  }

  else
  {
    return [(AFModesConfiguration *)self->_base isInitialBringUp];
  }
}

- (_AFModesConfigurationMutation)initWithBase:(id)a3
{
  v5 = a3;
  v9.receiver = self;
  v9.super_class = _AFModesConfigurationMutation;
  v6 = [(_AFModesConfigurationMutation *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_base, a3);
  }

  return v7;
}

@end