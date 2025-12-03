@interface _AFClientConfigurationMutation
- (BOOL)getAreAnnouncementRequestsPermittedByPresentationWhileActive;
- (BOOL)getCarOwnsMainAudio;
- (BOOL)getIsDeviceInCarDNDMode;
- (BOOL)getIsDeviceInStarkMode;
- (BOOL)getIsDeviceWatchAuthenticated;
- (BOOL)getIsEyesFreeDevice;
- (BOOL)getSupportsCarPlayVehicleData;
- (_AFClientConfigurationMutation)initWithBase:(id)base;
- (float)getOutputVolume;
- (id)getAccessibilityState;
- (id)getDeviceSetupFlowBeginDate;
- (id)getDeviceSetupFlowEndDate;
- (id)getTapToSiriAudioPlaybackRequest;
- (id)getTwoShotAudioPlaybackRequest;
- (int64_t)getDeviceRingerSwitchState;
@end

@implementation _AFClientConfigurationMutation

- (BOOL)getIsDeviceInCarDNDMode
{
  if ((*&self->_mutationFlags & 8) != 0)
  {
    return self->_isDeviceInCarDNDMode;
  }

  else
  {
    return [(AFClientConfiguration *)self->_base isDeviceInCarDNDMode];
  }
}

- (BOOL)getSupportsCarPlayVehicleData
{
  if ((*&self->_mutationFlags & 0x20) != 0)
  {
    return self->_supportsCarPlayVehicleData;
  }

  else
  {
    return [(AFClientConfiguration *)self->_base supportsCarPlayVehicleData];
  }
}

- (BOOL)getIsDeviceWatchAuthenticated
{
  if ((*&self->_mutationFlags & 0x40) != 0)
  {
    return self->_isDeviceWatchAuthenticated;
  }

  else
  {
    return [(AFClientConfiguration *)self->_base isDeviceWatchAuthenticated];
  }
}

- (BOOL)getAreAnnouncementRequestsPermittedByPresentationWhileActive
{
  if ((*&self->_mutationFlags & 0x80) != 0)
  {
    return self->_areAnnouncementRequestsPermittedByPresentationWhileActive;
  }

  else
  {
    return [(AFClientConfiguration *)self->_base areAnnouncementRequestsPermittedByPresentationWhileActive];
  }
}

- (id)getTapToSiriAudioPlaybackRequest
{
  if ((*&self->_mutationFlags & 0x200) != 0)
  {
    tapToSiriAudioPlaybackRequest = self->_tapToSiriAudioPlaybackRequest;
  }

  else
  {
    tapToSiriAudioPlaybackRequest = [(AFClientConfiguration *)self->_base tapToSiriAudioPlaybackRequest];
  }

  return tapToSiriAudioPlaybackRequest;
}

- (float)getOutputVolume
{
  if ((*&self->_mutationFlags & 0x100) != 0)
  {
    return self->_outputVolume;
  }

  [(AFClientConfiguration *)self->_base outputVolume];
  return result;
}

- (id)getTwoShotAudioPlaybackRequest
{
  if ((*&self->_mutationFlags & 0x400) != 0)
  {
    twoShotAudioPlaybackRequest = self->_twoShotAudioPlaybackRequest;
  }

  else
  {
    twoShotAudioPlaybackRequest = [(AFClientConfiguration *)self->_base twoShotAudioPlaybackRequest];
  }

  return twoShotAudioPlaybackRequest;
}

- (id)getDeviceSetupFlowBeginDate
{
  if ((*&self->_mutationFlags & 0x800) != 0)
  {
    deviceSetupFlowBeginDate = self->_deviceSetupFlowBeginDate;
  }

  else
  {
    deviceSetupFlowBeginDate = [(AFClientConfiguration *)self->_base deviceSetupFlowBeginDate];
  }

  return deviceSetupFlowBeginDate;
}

- (id)getDeviceSetupFlowEndDate
{
  if ((*&self->_mutationFlags & 0x1000) != 0)
  {
    deviceSetupFlowEndDate = self->_deviceSetupFlowEndDate;
  }

  else
  {
    deviceSetupFlowEndDate = [(AFClientConfiguration *)self->_base deviceSetupFlowEndDate];
  }

  return deviceSetupFlowEndDate;
}

- (id)getAccessibilityState
{
  if ((*&self->_mutationFlags & 2) != 0)
  {
    accessibilityState = self->_accessibilityState;
  }

  else
  {
    accessibilityState = [(AFClientConfiguration *)self->_base accessibilityState];
  }

  return accessibilityState;
}

- (int64_t)getDeviceRingerSwitchState
{
  if ((*&self->_mutationFlags & 4) != 0)
  {
    return self->_deviceRingerSwitchState;
  }

  else
  {
    return [(AFClientConfiguration *)self->_base deviceRingerSwitchState];
  }
}

- (BOOL)getIsDeviceInStarkMode
{
  if ((*&self->_mutationFlags & 0x10) != 0)
  {
    return self->_isDeviceInStarkMode;
  }

  else
  {
    return [(AFClientConfiguration *)self->_base isDeviceInStarkMode];
  }
}

- (BOOL)getIsEyesFreeDevice
{
  if ((*&self->_mutationFlags & 0x4000) != 0)
  {
    return self->_isEyesFreeDevice;
  }

  else
  {
    return [(AFClientConfiguration *)self->_base isEyesFreeDevice];
  }
}

- (BOOL)getCarOwnsMainAudio
{
  if ((*&self->_mutationFlags & 0x2000) != 0)
  {
    return self->_carOwnsMainAudio;
  }

  else
  {
    return [(AFClientConfiguration *)self->_base carOwnsMainAudio];
  }
}

- (_AFClientConfigurationMutation)initWithBase:(id)base
{
  baseCopy = base;
  v9.receiver = self;
  v9.super_class = _AFClientConfigurationMutation;
  v6 = [(_AFClientConfigurationMutation *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_base, base);
  }

  return v7;
}

@end