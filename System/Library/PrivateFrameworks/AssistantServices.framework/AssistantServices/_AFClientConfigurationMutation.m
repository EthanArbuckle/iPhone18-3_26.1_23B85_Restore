@interface _AFClientConfigurationMutation
- (BOOL)getAreAnnouncementRequestsPermittedByPresentationWhileActive;
- (BOOL)getCarOwnsMainAudio;
- (BOOL)getIsDeviceInCarDNDMode;
- (BOOL)getIsDeviceInStarkMode;
- (BOOL)getIsDeviceWatchAuthenticated;
- (BOOL)getIsEyesFreeDevice;
- (BOOL)getSupportsCarPlayVehicleData;
- (_AFClientConfigurationMutation)initWithBase:(id)a3;
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
    v2 = self->_tapToSiriAudioPlaybackRequest;
  }

  else
  {
    v2 = [(AFClientConfiguration *)self->_base tapToSiriAudioPlaybackRequest];
  }

  return v2;
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
    v2 = self->_twoShotAudioPlaybackRequest;
  }

  else
  {
    v2 = [(AFClientConfiguration *)self->_base twoShotAudioPlaybackRequest];
  }

  return v2;
}

- (id)getDeviceSetupFlowBeginDate
{
  if ((*&self->_mutationFlags & 0x800) != 0)
  {
    v2 = self->_deviceSetupFlowBeginDate;
  }

  else
  {
    v2 = [(AFClientConfiguration *)self->_base deviceSetupFlowBeginDate];
  }

  return v2;
}

- (id)getDeviceSetupFlowEndDate
{
  if ((*&self->_mutationFlags & 0x1000) != 0)
  {
    v2 = self->_deviceSetupFlowEndDate;
  }

  else
  {
    v2 = [(AFClientConfiguration *)self->_base deviceSetupFlowEndDate];
  }

  return v2;
}

- (id)getAccessibilityState
{
  if ((*&self->_mutationFlags & 2) != 0)
  {
    v2 = self->_accessibilityState;
  }

  else
  {
    v2 = [(AFClientConfiguration *)self->_base accessibilityState];
  }

  return v2;
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

- (_AFClientConfigurationMutation)initWithBase:(id)a3
{
  v5 = a3;
  v9.receiver = self;
  v9.super_class = _AFClientConfigurationMutation;
  v6 = [(_AFClientConfigurationMutation *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_base, a3);
  }

  return v7;
}

@end