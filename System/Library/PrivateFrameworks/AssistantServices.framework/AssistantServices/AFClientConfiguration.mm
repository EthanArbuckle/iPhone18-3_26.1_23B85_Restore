@interface AFClientConfiguration
+ (id)newWithBuilder:(id)builder;
- (AFClientConfiguration)initWithAccessibilityState:(id)state deviceRingerSwitchState:(int64_t)switchState isDeviceInCarDNDMode:(BOOL)mode isDeviceInStarkMode:(BOOL)starkMode supportsCarPlayVehicleData:(BOOL)data isDeviceWatchAuthenticated:(BOOL)authenticated areAnnouncementRequestsPermittedByPresentationWhileActive:(BOOL)active outputVolume:(float)self0 tapToSiriAudioPlaybackRequest:(id)self1 twoShotAudioPlaybackRequest:(id)self2 deviceSetupFlowBeginDate:(id)self3 deviceSetupFlowEndDate:(id)self4 carOwnsMainAudio:(BOOL)self5 isEyesFreeDevice:(BOOL)self6;
- (AFClientConfiguration)initWithBuilder:(id)builder;
- (AFClientConfiguration)initWithCoder:(id)coder;
- (BOOL)isEqual:(id)equal;
- (id)_descriptionWithIndent:(unint64_t)indent;
- (id)mutatedCopyWithMutator:(id)mutator;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)coder;
@end

@implementation AFClientConfiguration

- (void)encodeWithCoder:(id)coder
{
  accessibilityState = self->_accessibilityState;
  coderCopy = coder;
  [coderCopy encodeObject:accessibilityState forKey:@"AFClientConfiguration::accessibilityState"];
  v6 = [MEMORY[0x1E696AD98] numberWithInteger:self->_deviceRingerSwitchState];
  [coderCopy encodeObject:v6 forKey:@"AFClientConfiguration::deviceRingerSwitchState"];

  v7 = [MEMORY[0x1E696AD98] numberWithBool:self->_isDeviceInCarDNDMode];
  [coderCopy encodeObject:v7 forKey:@"AFClientConfiguration::isDeviceInCarDNDMode"];

  v8 = [MEMORY[0x1E696AD98] numberWithBool:self->_isDeviceInStarkMode];
  [coderCopy encodeObject:v8 forKey:@"AFClientConfiguration::isDeviceInStarkMode"];

  v9 = [MEMORY[0x1E696AD98] numberWithBool:self->_supportsCarPlayVehicleData];
  [coderCopy encodeObject:v9 forKey:@"AFClientConfiguration::supportsCarPlayVehicleData"];

  v10 = [MEMORY[0x1E696AD98] numberWithBool:self->_isDeviceWatchAuthenticated];
  [coderCopy encodeObject:v10 forKey:@"AFClientConfiguration::isDeviceWatchAuthenticated"];

  v11 = [MEMORY[0x1E696AD98] numberWithBool:self->_areAnnouncementRequestsPermittedByPresentationWhileActive];
  [coderCopy encodeObject:v11 forKey:@"AFClientConfiguration::areAnnouncementRequestsPermittedByPresentationWhileActive"];

  *&v12 = self->_outputVolume;
  v13 = [MEMORY[0x1E696AD98] numberWithFloat:v12];
  [coderCopy encodeObject:v13 forKey:@"AFClientConfiguration::outputVolume"];

  [coderCopy encodeObject:self->_tapToSiriAudioPlaybackRequest forKey:@"AFClientConfiguration::tapToSiriAudioPlaybackRequest"];
  [coderCopy encodeObject:self->_twoShotAudioPlaybackRequest forKey:@"AFClientConfiguration::twoShotAudioPlaybackRequest"];
  [coderCopy encodeObject:self->_deviceSetupFlowBeginDate forKey:@"AFClientConfiguration::deviceSetupFlowBeginDate"];
  [coderCopy encodeObject:self->_deviceSetupFlowEndDate forKey:@"AFClientConfiguration::deviceSetupFlowEndDate"];
  v14 = [MEMORY[0x1E696AD98] numberWithBool:self->_carOwnsMainAudio];
  [coderCopy encodeObject:v14 forKey:@"AFClientConfiguration::carOwnsMainAudio"];

  v15 = [MEMORY[0x1E696AD98] numberWithBool:self->_isEyesFreeDevice];
  [coderCopy encodeObject:v15 forKey:@"AFClientConfiguration::isEyesFreeDevice"];
}

- (AFClientConfiguration)initWithCoder:(id)coder
{
  coderCopy = coder;
  v30 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"AFClientConfiguration::accessibilityState"];
  v4 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"AFClientConfiguration::deviceRingerSwitchState"];
  integerValue = [v4 integerValue];

  v5 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"AFClientConfiguration::isDeviceInCarDNDMode"];
  bOOLValue = [v5 BOOLValue];

  v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"AFClientConfiguration::isDeviceInStarkMode"];
  bOOLValue2 = [v6 BOOLValue];

  v7 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"AFClientConfiguration::supportsCarPlayVehicleData"];
  HIDWORD(v26) = [v7 BOOLValue];

  v8 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"AFClientConfiguration::isDeviceWatchAuthenticated"];
  bOOLValue3 = [v8 BOOLValue];

  v10 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"AFClientConfiguration::areAnnouncementRequestsPermittedByPresentationWhileActive"];
  bOOLValue4 = [v10 BOOLValue];

  v12 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"AFClientConfiguration::outputVolume"];
  [v12 floatValue];
  v14 = v13;

  v15 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"AFClientConfiguration::tapToSiriAudioPlaybackRequest"];
  v16 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"AFClientConfiguration::twoShotAudioPlaybackRequest"];
  v17 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"AFClientConfiguration::deviceSetupFlowBeginDate"];
  v18 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"AFClientConfiguration::deviceSetupFlowEndDate"];
  v19 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"AFClientConfiguration::carOwnsMainAudio"];
  bOOLValue5 = [v19 BOOLValue];

  v21 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"AFClientConfiguration::isEyesFreeDevice"];

  LOBYTE(coderCopy) = [v21 BOOLValue];
  BYTE1(v26) = coderCopy;
  LOBYTE(v26) = bOOLValue5;
  LOBYTE(v25) = bOOLValue4;
  LODWORD(v22) = v14;
  v23 = [(AFClientConfiguration *)self initWithAccessibilityState:v30 deviceRingerSwitchState:integerValue isDeviceInCarDNDMode:bOOLValue isDeviceInStarkMode:bOOLValue2 supportsCarPlayVehicleData:HIDWORD(v26) isDeviceWatchAuthenticated:bOOLValue3 areAnnouncementRequestsPermittedByPresentationWhileActive:v22 outputVolume:v25 tapToSiriAudioPlaybackRequest:v15 twoShotAudioPlaybackRequest:v16 deviceSetupFlowBeginDate:v17 deviceSetupFlowEndDate:v18 carOwnsMainAudio:v26 isEyesFreeDevice:?];

  return v23;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (self == equalCopy)
  {
    v26 = 1;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v5 = equalCopy;
      deviceRingerSwitchState = self->_deviceRingerSwitchState;
      if (deviceRingerSwitchState != [(AFClientConfiguration *)v5 deviceRingerSwitchState])
      {
        goto LABEL_25;
      }

      isDeviceInCarDNDMode = self->_isDeviceInCarDNDMode;
      if (isDeviceInCarDNDMode != [(AFClientConfiguration *)v5 isDeviceInCarDNDMode])
      {
        goto LABEL_25;
      }

      isDeviceInStarkMode = self->_isDeviceInStarkMode;
      if (isDeviceInStarkMode != [(AFClientConfiguration *)v5 isDeviceInStarkMode])
      {
        goto LABEL_25;
      }

      supportsCarPlayVehicleData = self->_supportsCarPlayVehicleData;
      if (supportsCarPlayVehicleData == [(AFClientConfiguration *)v5 supportsCarPlayVehicleData]&& (isDeviceWatchAuthenticated = self->_isDeviceWatchAuthenticated, isDeviceWatchAuthenticated == [(AFClientConfiguration *)v5 isDeviceWatchAuthenticated]) && (areAnnouncementRequestsPermittedByPresentationWhileActive = self->_areAnnouncementRequestsPermittedByPresentationWhileActive, areAnnouncementRequestsPermittedByPresentationWhileActive == [(AFClientConfiguration *)v5 areAnnouncementRequestsPermittedByPresentationWhileActive]) && (outputVolume = self->_outputVolume, [(AFClientConfiguration *)v5 outputVolume], outputVolume == v13) && (carOwnsMainAudio = self->_carOwnsMainAudio, carOwnsMainAudio == [(AFClientConfiguration *)v5 carOwnsMainAudio]) && (isEyesFreeDevice = self->_isEyesFreeDevice, isEyesFreeDevice == [(AFClientConfiguration *)v5 isEyesFreeDevice]))
      {
        accessibilityState = [(AFClientConfiguration *)v5 accessibilityState];
        accessibilityState = self->_accessibilityState;
        if (accessibilityState == accessibilityState || [(AFAccessibilityState *)accessibilityState isEqual:accessibilityState])
        {
          tapToSiriAudioPlaybackRequest = [(AFClientConfiguration *)v5 tapToSiriAudioPlaybackRequest];
          tapToSiriAudioPlaybackRequest = self->_tapToSiriAudioPlaybackRequest;
          if (tapToSiriAudioPlaybackRequest == tapToSiriAudioPlaybackRequest || [(AFAudioPlaybackRequest *)tapToSiriAudioPlaybackRequest isEqual:tapToSiriAudioPlaybackRequest])
          {
            twoShotAudioPlaybackRequest = [(AFClientConfiguration *)v5 twoShotAudioPlaybackRequest];
            twoShotAudioPlaybackRequest = self->_twoShotAudioPlaybackRequest;
            if (twoShotAudioPlaybackRequest == twoShotAudioPlaybackRequest || [(AFAudioPlaybackRequest *)twoShotAudioPlaybackRequest isEqual:twoShotAudioPlaybackRequest])
            {
              deviceSetupFlowBeginDate = [(AFClientConfiguration *)v5 deviceSetupFlowBeginDate];
              deviceSetupFlowBeginDate = self->_deviceSetupFlowBeginDate;
              if (deviceSetupFlowBeginDate == deviceSetupFlowBeginDate || [(NSDate *)deviceSetupFlowBeginDate isEqual:deviceSetupFlowBeginDate])
              {
                deviceSetupFlowEndDate = [(AFClientConfiguration *)v5 deviceSetupFlowEndDate];
                deviceSetupFlowEndDate = self->_deviceSetupFlowEndDate;
                v26 = deviceSetupFlowEndDate == deviceSetupFlowEndDate || [(NSDate *)deviceSetupFlowEndDate isEqual:deviceSetupFlowEndDate];
              }

              else
              {
                v26 = 0;
              }
            }

            else
            {
              v26 = 0;
            }
          }

          else
          {
            v26 = 0;
          }
        }

        else
        {
          v26 = 0;
        }
      }

      else
      {
LABEL_25:
        v26 = 0;
      }
    }

    else
    {
      v26 = 0;
    }
  }

  return v26;
}

- (unint64_t)hash
{
  v3 = [(AFAccessibilityState *)self->_accessibilityState hash];
  v27 = [MEMORY[0x1E696AD98] numberWithInteger:self->_deviceRingerSwitchState];
  v4 = [v27 hash] ^ v3;
  v26 = [MEMORY[0x1E696AD98] numberWithBool:self->_isDeviceInCarDNDMode];
  v5 = [v26 hash];
  v6 = [MEMORY[0x1E696AD98] numberWithBool:self->_isDeviceInStarkMode];
  v7 = v4 ^ v5 ^ [v6 hash];
  v8 = [MEMORY[0x1E696AD98] numberWithBool:self->_supportsCarPlayVehicleData];
  v9 = [v8 hash];
  v10 = [MEMORY[0x1E696AD98] numberWithBool:self->_isDeviceWatchAuthenticated];
  v11 = v9 ^ [v10 hash];
  v12 = [MEMORY[0x1E696AD98] numberWithBool:self->_areAnnouncementRequestsPermittedByPresentationWhileActive];
  v13 = v7 ^ v11 ^ [v12 hash];
  *&v14 = self->_outputVolume;
  v15 = [MEMORY[0x1E696AD98] numberWithFloat:v14];
  v16 = [v15 hash];
  v17 = v16 ^ [(AFAudioPlaybackRequest *)self->_tapToSiriAudioPlaybackRequest hash];
  v18 = v17 ^ [(AFAudioPlaybackRequest *)self->_twoShotAudioPlaybackRequest hash];
  v19 = v13 ^ v18 ^ [(NSDate *)self->_deviceSetupFlowBeginDate hash];
  v20 = [(NSDate *)self->_deviceSetupFlowEndDate hash];
  v21 = [MEMORY[0x1E696AD98] numberWithBool:self->_carOwnsMainAudio];
  v22 = v20 ^ [v21 hash];
  v23 = [MEMORY[0x1E696AD98] numberWithBool:self->_isEyesFreeDevice];
  v24 = v22 ^ [v23 hash];

  return v19 ^ v24;
}

- (id)_descriptionWithIndent:(unint64_t)indent
{
  v4 = objc_alloc(MEMORY[0x1E696AEC0]);
  v19.receiver = self;
  v19.super_class = AFClientConfiguration;
  v5 = [(AFClientConfiguration *)&v19 description];
  accessibilityState = self->_accessibilityState;
  deviceRingerSwitchState = self->_deviceRingerSwitchState;
  if (deviceRingerSwitchState > 2)
  {
    v8 = @"(unknown)";
  }

  else
  {
    v8 = off_1E7342E98[deviceRingerSwitchState];
  }

  v9 = v8;
  v10 = @"NO";
  if (self->_isDeviceInCarDNDMode)
  {
    v11 = @"YES";
  }

  else
  {
    v11 = @"NO";
  }

  if (self->_isDeviceInStarkMode)
  {
    v12 = @"YES";
  }

  else
  {
    v12 = @"NO";
  }

  if (self->_supportsCarPlayVehicleData)
  {
    v13 = @"YES";
  }

  else
  {
    v13 = @"NO";
  }

  if (self->_isDeviceWatchAuthenticated)
  {
    v14 = @"YES";
  }

  else
  {
    v14 = @"NO";
  }

  if (self->_areAnnouncementRequestsPermittedByPresentationWhileActive)
  {
    v15 = @"YES";
  }

  else
  {
    v15 = @"NO";
  }

  if (self->_carOwnsMainAudio)
  {
    v16 = @"YES";
  }

  else
  {
    v16 = @"NO";
  }

  if (self->_isEyesFreeDevice)
  {
    v10 = @"YES";
  }

  v17 = [v4 initWithFormat:@"%@ {accessibilityState = %@, deviceRingerSwitchState = %@, isDeviceInCarDNDMode = %@, isDeviceInStarkMode = %@, supportsCarPlayVehicleData = %@, isDeviceWatchAuthenticated = %@, areAnnouncementRequestsPermittedByPresentationWhileActive = %@, outputVolume = %f, tapToSiriAudioPlaybackRequest = %@, twoShotAudioPlaybackRequest = %@, deviceSetupFlowBeginDate = %@, deviceSetupFlowEndDate = %@, carOwnsMainAudio = %@, isEyesFreeDevice = %@}", v5, accessibilityState, v9, v11, v12, v13, v14, v15, self->_outputVolume, *&self->_tapToSiriAudioPlaybackRequest, self->_deviceSetupFlowBeginDate, self->_deviceSetupFlowEndDate, v16, v10];

  return v17;
}

- (AFClientConfiguration)initWithAccessibilityState:(id)state deviceRingerSwitchState:(int64_t)switchState isDeviceInCarDNDMode:(BOOL)mode isDeviceInStarkMode:(BOOL)starkMode supportsCarPlayVehicleData:(BOOL)data isDeviceWatchAuthenticated:(BOOL)authenticated areAnnouncementRequestsPermittedByPresentationWhileActive:(BOOL)active outputVolume:(float)self0 tapToSiriAudioPlaybackRequest:(id)self1 twoShotAudioPlaybackRequest:(id)self2 deviceSetupFlowBeginDate:(id)self3 deviceSetupFlowEndDate:(id)self4 carOwnsMainAudio:(BOOL)self5 isEyesFreeDevice:(BOOL)self6
{
  stateCopy = state;
  requestCopy = request;
  playbackRequestCopy = playbackRequest;
  dateCopy = date;
  endDateCopy = endDate;
  v35[0] = MEMORY[0x1E69E9820];
  v35[1] = 3221225472;
  v35[2] = __382__AFClientConfiguration_initWithAccessibilityState_deviceRingerSwitchState_isDeviceInCarDNDMode_isDeviceInStarkMode_supportsCarPlayVehicleData_isDeviceWatchAuthenticated_areAnnouncementRequestsPermittedByPresentationWhileActive_outputVolume_tapToSiriAudioPlaybackRequest_twoShotAudioPlaybackRequest_deviceSetupFlowBeginDate_deviceSetupFlowEndDate_carOwnsMainAudio_isEyesFreeDevice___block_invoke;
  v35[3] = &unk_1E7343F68;
  modeCopy = mode;
  starkModeCopy = starkMode;
  dataCopy = data;
  authenticatedCopy = authenticated;
  activeCopy = active;
  volumeCopy = volume;
  v36 = stateCopy;
  v37 = requestCopy;
  v38 = playbackRequestCopy;
  v39 = dateCopy;
  v40 = endDateCopy;
  switchStateCopy = switchState;
  audioCopy = audio;
  deviceCopy = device;
  v24 = endDateCopy;
  v25 = dateCopy;
  v26 = playbackRequestCopy;
  v27 = requestCopy;
  v28 = stateCopy;
  v29 = [(AFClientConfiguration *)self initWithBuilder:v35];

  return v29;
}

void __382__AFClientConfiguration_initWithAccessibilityState_deviceRingerSwitchState_isDeviceInCarDNDMode_isDeviceInStarkMode_supportsCarPlayVehicleData_isDeviceWatchAuthenticated_areAnnouncementRequestsPermittedByPresentationWhileActive_outputVolume_tapToSiriAudioPlaybackRequest_twoShotAudioPlaybackRequest_deviceSetupFlowBeginDate_deviceSetupFlowEndDate_carOwnsMainAudio_isEyesFreeDevice___block_invoke(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);
  v5 = a2;
  [v5 setAccessibilityState:v3];
  [v5 setDeviceRingerSwitchState:*(a1 + 72)];
  [v5 setIsDeviceInCarDNDMode:*(a1 + 84)];
  [v5 setIsDeviceInStarkMode:*(a1 + 85)];
  [v5 setSupportsCarPlayVehicleData:*(a1 + 86)];
  [v5 setIsDeviceWatchAuthenticated:*(a1 + 87)];
  [v5 setAreAnnouncementRequestsPermittedByPresentationWhileActive:*(a1 + 88)];
  LODWORD(v4) = *(a1 + 80);
  [v5 setOutputVolume:v4];
  [v5 setTapToSiriAudioPlaybackRequest:*(a1 + 40)];
  [v5 setTwoShotAudioPlaybackRequest:*(a1 + 48)];
  [v5 setDeviceSetupFlowBeginDate:*(a1 + 56)];
  [v5 setDeviceSetupFlowEndDate:*(a1 + 64)];
  [v5 setCarOwnsMainAudio:*(a1 + 89)];
  [v5 setIsEyesFreeDevice:*(a1 + 90)];
}

- (AFClientConfiguration)initWithBuilder:(id)builder
{
  builderCopy = builder;
  v25.receiver = self;
  v25.super_class = AFClientConfiguration;
  v5 = [(AFClientConfiguration *)&v25 init];
  v6 = v5;
  if (builderCopy && v5)
  {
    v7 = [[_AFClientConfigurationMutation alloc] initWithBase:0];
    builderCopy[2](builderCopy, v7);
    if ([(_AFClientConfigurationMutation *)v7 isDirty])
    {
      getAccessibilityState = [(_AFClientConfigurationMutation *)v7 getAccessibilityState];
      v9 = [getAccessibilityState copy];
      accessibilityState = v6->_accessibilityState;
      v6->_accessibilityState = v9;

      v6->_deviceRingerSwitchState = [(_AFClientConfigurationMutation *)v7 getDeviceRingerSwitchState];
      v6->_isDeviceInCarDNDMode = [(_AFClientConfigurationMutation *)v7 getIsDeviceInCarDNDMode];
      v6->_isDeviceInStarkMode = [(_AFClientConfigurationMutation *)v7 getIsDeviceInStarkMode];
      v6->_supportsCarPlayVehicleData = [(_AFClientConfigurationMutation *)v7 getSupportsCarPlayVehicleData];
      v6->_isDeviceWatchAuthenticated = [(_AFClientConfigurationMutation *)v7 getIsDeviceWatchAuthenticated];
      v6->_areAnnouncementRequestsPermittedByPresentationWhileActive = [(_AFClientConfigurationMutation *)v7 getAreAnnouncementRequestsPermittedByPresentationWhileActive];
      [(_AFClientConfigurationMutation *)v7 getOutputVolume];
      v6->_outputVolume = v11;
      getTapToSiriAudioPlaybackRequest = [(_AFClientConfigurationMutation *)v7 getTapToSiriAudioPlaybackRequest];
      v13 = [getTapToSiriAudioPlaybackRequest copy];
      tapToSiriAudioPlaybackRequest = v6->_tapToSiriAudioPlaybackRequest;
      v6->_tapToSiriAudioPlaybackRequest = v13;

      getTwoShotAudioPlaybackRequest = [(_AFClientConfigurationMutation *)v7 getTwoShotAudioPlaybackRequest];
      v16 = [getTwoShotAudioPlaybackRequest copy];
      twoShotAudioPlaybackRequest = v6->_twoShotAudioPlaybackRequest;
      v6->_twoShotAudioPlaybackRequest = v16;

      getDeviceSetupFlowBeginDate = [(_AFClientConfigurationMutation *)v7 getDeviceSetupFlowBeginDate];
      v19 = [getDeviceSetupFlowBeginDate copy];
      deviceSetupFlowBeginDate = v6->_deviceSetupFlowBeginDate;
      v6->_deviceSetupFlowBeginDate = v19;

      getDeviceSetupFlowEndDate = [(_AFClientConfigurationMutation *)v7 getDeviceSetupFlowEndDate];
      v22 = [getDeviceSetupFlowEndDate copy];
      deviceSetupFlowEndDate = v6->_deviceSetupFlowEndDate;
      v6->_deviceSetupFlowEndDate = v22;

      v6->_carOwnsMainAudio = [(_AFClientConfigurationMutation *)v7 getCarOwnsMainAudio];
      v6->_isEyesFreeDevice = [(_AFClientConfigurationMutation *)v7 getIsEyesFreeDevice];
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
    v5 = [[_AFClientConfigurationMutation alloc] initWithBase:self];
    mutatorCopy[2](mutatorCopy, v5);
    if ([(_AFClientConfigurationMutation *)v5 isDirty])
    {
      v6 = objc_alloc_init(AFClientConfiguration);
      getAccessibilityState = [(_AFClientConfigurationMutation *)v5 getAccessibilityState];
      v8 = [getAccessibilityState copy];
      accessibilityState = v6->_accessibilityState;
      v6->_accessibilityState = v8;

      v6->_deviceRingerSwitchState = [(_AFClientConfigurationMutation *)v5 getDeviceRingerSwitchState];
      v6->_isDeviceInCarDNDMode = [(_AFClientConfigurationMutation *)v5 getIsDeviceInCarDNDMode];
      v6->_isDeviceInStarkMode = [(_AFClientConfigurationMutation *)v5 getIsDeviceInStarkMode];
      v6->_supportsCarPlayVehicleData = [(_AFClientConfigurationMutation *)v5 getSupportsCarPlayVehicleData];
      v6->_isDeviceWatchAuthenticated = [(_AFClientConfigurationMutation *)v5 getIsDeviceWatchAuthenticated];
      v6->_areAnnouncementRequestsPermittedByPresentationWhileActive = [(_AFClientConfigurationMutation *)v5 getAreAnnouncementRequestsPermittedByPresentationWhileActive];
      [(_AFClientConfigurationMutation *)v5 getOutputVolume];
      v6->_outputVolume = v10;
      getTapToSiriAudioPlaybackRequest = [(_AFClientConfigurationMutation *)v5 getTapToSiriAudioPlaybackRequest];
      v12 = [getTapToSiriAudioPlaybackRequest copy];
      tapToSiriAudioPlaybackRequest = v6->_tapToSiriAudioPlaybackRequest;
      v6->_tapToSiriAudioPlaybackRequest = v12;

      getTwoShotAudioPlaybackRequest = [(_AFClientConfigurationMutation *)v5 getTwoShotAudioPlaybackRequest];
      v15 = [getTwoShotAudioPlaybackRequest copy];
      twoShotAudioPlaybackRequest = v6->_twoShotAudioPlaybackRequest;
      v6->_twoShotAudioPlaybackRequest = v15;

      getDeviceSetupFlowBeginDate = [(_AFClientConfigurationMutation *)v5 getDeviceSetupFlowBeginDate];
      v18 = [getDeviceSetupFlowBeginDate copy];
      deviceSetupFlowBeginDate = v6->_deviceSetupFlowBeginDate;
      v6->_deviceSetupFlowBeginDate = v18;

      getDeviceSetupFlowEndDate = [(_AFClientConfigurationMutation *)v5 getDeviceSetupFlowEndDate];
      v21 = [getDeviceSetupFlowEndDate copy];
      deviceSetupFlowEndDate = v6->_deviceSetupFlowEndDate;
      v6->_deviceSetupFlowEndDate = v21;

      v6->_carOwnsMainAudio = [(_AFClientConfigurationMutation *)v5 getCarOwnsMainAudio];
      v6->_isEyesFreeDevice = [(_AFClientConfigurationMutation *)v5 getIsEyesFreeDevice];
    }

    else
    {
      v6 = [(AFClientConfiguration *)self copy];
    }
  }

  else
  {
    v6 = [(AFClientConfiguration *)self copy];
  }

  return v6;
}

@end