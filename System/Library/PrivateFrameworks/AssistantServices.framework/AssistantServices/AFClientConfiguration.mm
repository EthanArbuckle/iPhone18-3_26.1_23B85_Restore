@interface AFClientConfiguration
+ (id)newWithBuilder:(id)a3;
- (AFClientConfiguration)initWithAccessibilityState:(id)a3 deviceRingerSwitchState:(int64_t)a4 isDeviceInCarDNDMode:(BOOL)a5 isDeviceInStarkMode:(BOOL)a6 supportsCarPlayVehicleData:(BOOL)a7 isDeviceWatchAuthenticated:(BOOL)a8 areAnnouncementRequestsPermittedByPresentationWhileActive:(BOOL)a9 outputVolume:(float)a10 tapToSiriAudioPlaybackRequest:(id)a11 twoShotAudioPlaybackRequest:(id)a12 deviceSetupFlowBeginDate:(id)a13 deviceSetupFlowEndDate:(id)a14 carOwnsMainAudio:(BOOL)a15 isEyesFreeDevice:(BOOL)a16;
- (AFClientConfiguration)initWithBuilder:(id)a3;
- (AFClientConfiguration)initWithCoder:(id)a3;
- (BOOL)isEqual:(id)a3;
- (id)_descriptionWithIndent:(unint64_t)a3;
- (id)mutatedCopyWithMutator:(id)a3;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)a3;
@end

@implementation AFClientConfiguration

- (void)encodeWithCoder:(id)a3
{
  accessibilityState = self->_accessibilityState;
  v5 = a3;
  [v5 encodeObject:accessibilityState forKey:@"AFClientConfiguration::accessibilityState"];
  v6 = [MEMORY[0x1E696AD98] numberWithInteger:self->_deviceRingerSwitchState];
  [v5 encodeObject:v6 forKey:@"AFClientConfiguration::deviceRingerSwitchState"];

  v7 = [MEMORY[0x1E696AD98] numberWithBool:self->_isDeviceInCarDNDMode];
  [v5 encodeObject:v7 forKey:@"AFClientConfiguration::isDeviceInCarDNDMode"];

  v8 = [MEMORY[0x1E696AD98] numberWithBool:self->_isDeviceInStarkMode];
  [v5 encodeObject:v8 forKey:@"AFClientConfiguration::isDeviceInStarkMode"];

  v9 = [MEMORY[0x1E696AD98] numberWithBool:self->_supportsCarPlayVehicleData];
  [v5 encodeObject:v9 forKey:@"AFClientConfiguration::supportsCarPlayVehicleData"];

  v10 = [MEMORY[0x1E696AD98] numberWithBool:self->_isDeviceWatchAuthenticated];
  [v5 encodeObject:v10 forKey:@"AFClientConfiguration::isDeviceWatchAuthenticated"];

  v11 = [MEMORY[0x1E696AD98] numberWithBool:self->_areAnnouncementRequestsPermittedByPresentationWhileActive];
  [v5 encodeObject:v11 forKey:@"AFClientConfiguration::areAnnouncementRequestsPermittedByPresentationWhileActive"];

  *&v12 = self->_outputVolume;
  v13 = [MEMORY[0x1E696AD98] numberWithFloat:v12];
  [v5 encodeObject:v13 forKey:@"AFClientConfiguration::outputVolume"];

  [v5 encodeObject:self->_tapToSiriAudioPlaybackRequest forKey:@"AFClientConfiguration::tapToSiriAudioPlaybackRequest"];
  [v5 encodeObject:self->_twoShotAudioPlaybackRequest forKey:@"AFClientConfiguration::twoShotAudioPlaybackRequest"];
  [v5 encodeObject:self->_deviceSetupFlowBeginDate forKey:@"AFClientConfiguration::deviceSetupFlowBeginDate"];
  [v5 encodeObject:self->_deviceSetupFlowEndDate forKey:@"AFClientConfiguration::deviceSetupFlowEndDate"];
  v14 = [MEMORY[0x1E696AD98] numberWithBool:self->_carOwnsMainAudio];
  [v5 encodeObject:v14 forKey:@"AFClientConfiguration::carOwnsMainAudio"];

  v15 = [MEMORY[0x1E696AD98] numberWithBool:self->_isEyesFreeDevice];
  [v5 encodeObject:v15 forKey:@"AFClientConfiguration::isEyesFreeDevice"];
}

- (AFClientConfiguration)initWithCoder:(id)a3
{
  v3 = a3;
  v30 = [v3 decodeObjectOfClass:objc_opt_class() forKey:@"AFClientConfiguration::accessibilityState"];
  v4 = [v3 decodeObjectOfClass:objc_opt_class() forKey:@"AFClientConfiguration::deviceRingerSwitchState"];
  v29 = [v4 integerValue];

  v5 = [v3 decodeObjectOfClass:objc_opt_class() forKey:@"AFClientConfiguration::isDeviceInCarDNDMode"];
  v28 = [v5 BOOLValue];

  v6 = [v3 decodeObjectOfClass:objc_opt_class() forKey:@"AFClientConfiguration::isDeviceInStarkMode"];
  v27 = [v6 BOOLValue];

  v7 = [v3 decodeObjectOfClass:objc_opt_class() forKey:@"AFClientConfiguration::supportsCarPlayVehicleData"];
  HIDWORD(v26) = [v7 BOOLValue];

  v8 = [v3 decodeObjectOfClass:objc_opt_class() forKey:@"AFClientConfiguration::isDeviceWatchAuthenticated"];
  v9 = [v8 BOOLValue];

  v10 = [v3 decodeObjectOfClass:objc_opt_class() forKey:@"AFClientConfiguration::areAnnouncementRequestsPermittedByPresentationWhileActive"];
  v11 = [v10 BOOLValue];

  v12 = [v3 decodeObjectOfClass:objc_opt_class() forKey:@"AFClientConfiguration::outputVolume"];
  [v12 floatValue];
  v14 = v13;

  v15 = [v3 decodeObjectOfClass:objc_opt_class() forKey:@"AFClientConfiguration::tapToSiriAudioPlaybackRequest"];
  v16 = [v3 decodeObjectOfClass:objc_opt_class() forKey:@"AFClientConfiguration::twoShotAudioPlaybackRequest"];
  v17 = [v3 decodeObjectOfClass:objc_opt_class() forKey:@"AFClientConfiguration::deviceSetupFlowBeginDate"];
  v18 = [v3 decodeObjectOfClass:objc_opt_class() forKey:@"AFClientConfiguration::deviceSetupFlowEndDate"];
  v19 = [v3 decodeObjectOfClass:objc_opt_class() forKey:@"AFClientConfiguration::carOwnsMainAudio"];
  v20 = [v19 BOOLValue];

  v21 = [v3 decodeObjectOfClass:objc_opt_class() forKey:@"AFClientConfiguration::isEyesFreeDevice"];

  LOBYTE(v3) = [v21 BOOLValue];
  BYTE1(v26) = v3;
  LOBYTE(v26) = v20;
  LOBYTE(v25) = v11;
  LODWORD(v22) = v14;
  v23 = [(AFClientConfiguration *)self initWithAccessibilityState:v30 deviceRingerSwitchState:v29 isDeviceInCarDNDMode:v28 isDeviceInStarkMode:v27 supportsCarPlayVehicleData:HIDWORD(v26) isDeviceWatchAuthenticated:v9 areAnnouncementRequestsPermittedByPresentationWhileActive:v22 outputVolume:v25 tapToSiriAudioPlaybackRequest:v15 twoShotAudioPlaybackRequest:v16 deviceSetupFlowBeginDate:v17 deviceSetupFlowEndDate:v18 carOwnsMainAudio:v26 isEyesFreeDevice:?];

  return v23;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (self == v4)
  {
    v26 = 1;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v5 = v4;
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
        v16 = [(AFClientConfiguration *)v5 accessibilityState];
        accessibilityState = self->_accessibilityState;
        if (accessibilityState == v16 || [(AFAccessibilityState *)accessibilityState isEqual:v16])
        {
          v18 = [(AFClientConfiguration *)v5 tapToSiriAudioPlaybackRequest];
          tapToSiriAudioPlaybackRequest = self->_tapToSiriAudioPlaybackRequest;
          if (tapToSiriAudioPlaybackRequest == v18 || [(AFAudioPlaybackRequest *)tapToSiriAudioPlaybackRequest isEqual:v18])
          {
            v20 = [(AFClientConfiguration *)v5 twoShotAudioPlaybackRequest];
            twoShotAudioPlaybackRequest = self->_twoShotAudioPlaybackRequest;
            if (twoShotAudioPlaybackRequest == v20 || [(AFAudioPlaybackRequest *)twoShotAudioPlaybackRequest isEqual:v20])
            {
              v22 = [(AFClientConfiguration *)v5 deviceSetupFlowBeginDate];
              deviceSetupFlowBeginDate = self->_deviceSetupFlowBeginDate;
              if (deviceSetupFlowBeginDate == v22 || [(NSDate *)deviceSetupFlowBeginDate isEqual:v22])
              {
                v24 = [(AFClientConfiguration *)v5 deviceSetupFlowEndDate];
                deviceSetupFlowEndDate = self->_deviceSetupFlowEndDate;
                v26 = deviceSetupFlowEndDate == v24 || [(NSDate *)deviceSetupFlowEndDate isEqual:v24];
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

- (id)_descriptionWithIndent:(unint64_t)a3
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

- (AFClientConfiguration)initWithAccessibilityState:(id)a3 deviceRingerSwitchState:(int64_t)a4 isDeviceInCarDNDMode:(BOOL)a5 isDeviceInStarkMode:(BOOL)a6 supportsCarPlayVehicleData:(BOOL)a7 isDeviceWatchAuthenticated:(BOOL)a8 areAnnouncementRequestsPermittedByPresentationWhileActive:(BOOL)a9 outputVolume:(float)a10 tapToSiriAudioPlaybackRequest:(id)a11 twoShotAudioPlaybackRequest:(id)a12 deviceSetupFlowBeginDate:(id)a13 deviceSetupFlowEndDate:(id)a14 carOwnsMainAudio:(BOOL)a15 isEyesFreeDevice:(BOOL)a16
{
  v19 = a3;
  v20 = a11;
  v21 = a12;
  v22 = a13;
  v23 = a14;
  v35[0] = MEMORY[0x1E69E9820];
  v35[1] = 3221225472;
  v35[2] = __382__AFClientConfiguration_initWithAccessibilityState_deviceRingerSwitchState_isDeviceInCarDNDMode_isDeviceInStarkMode_supportsCarPlayVehicleData_isDeviceWatchAuthenticated_areAnnouncementRequestsPermittedByPresentationWhileActive_outputVolume_tapToSiriAudioPlaybackRequest_twoShotAudioPlaybackRequest_deviceSetupFlowBeginDate_deviceSetupFlowEndDate_carOwnsMainAudio_isEyesFreeDevice___block_invoke;
  v35[3] = &unk_1E7343F68;
  v43 = a5;
  v44 = a6;
  v45 = a7;
  v46 = a8;
  v47 = a9;
  v42 = a10;
  v36 = v19;
  v37 = v20;
  v38 = v21;
  v39 = v22;
  v40 = v23;
  v41 = a4;
  v48 = a15;
  v49 = a16;
  v24 = v23;
  v25 = v22;
  v26 = v21;
  v27 = v20;
  v28 = v19;
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

- (AFClientConfiguration)initWithBuilder:(id)a3
{
  v4 = a3;
  v25.receiver = self;
  v25.super_class = AFClientConfiguration;
  v5 = [(AFClientConfiguration *)&v25 init];
  v6 = v5;
  if (v4 && v5)
  {
    v7 = [[_AFClientConfigurationMutation alloc] initWithBase:0];
    v4[2](v4, v7);
    if ([(_AFClientConfigurationMutation *)v7 isDirty])
    {
      v8 = [(_AFClientConfigurationMutation *)v7 getAccessibilityState];
      v9 = [v8 copy];
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
      v12 = [(_AFClientConfigurationMutation *)v7 getTapToSiriAudioPlaybackRequest];
      v13 = [v12 copy];
      tapToSiriAudioPlaybackRequest = v6->_tapToSiriAudioPlaybackRequest;
      v6->_tapToSiriAudioPlaybackRequest = v13;

      v15 = [(_AFClientConfigurationMutation *)v7 getTwoShotAudioPlaybackRequest];
      v16 = [v15 copy];
      twoShotAudioPlaybackRequest = v6->_twoShotAudioPlaybackRequest;
      v6->_twoShotAudioPlaybackRequest = v16;

      v18 = [(_AFClientConfigurationMutation *)v7 getDeviceSetupFlowBeginDate];
      v19 = [v18 copy];
      deviceSetupFlowBeginDate = v6->_deviceSetupFlowBeginDate;
      v6->_deviceSetupFlowBeginDate = v19;

      v21 = [(_AFClientConfigurationMutation *)v7 getDeviceSetupFlowEndDate];
      v22 = [v21 copy];
      deviceSetupFlowEndDate = v6->_deviceSetupFlowEndDate;
      v6->_deviceSetupFlowEndDate = v22;

      v6->_carOwnsMainAudio = [(_AFClientConfigurationMutation *)v7 getCarOwnsMainAudio];
      v6->_isEyesFreeDevice = [(_AFClientConfigurationMutation *)v7 getIsEyesFreeDevice];
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
    v5 = [[_AFClientConfigurationMutation alloc] initWithBase:self];
    v4[2](v4, v5);
    if ([(_AFClientConfigurationMutation *)v5 isDirty])
    {
      v6 = objc_alloc_init(AFClientConfiguration);
      v7 = [(_AFClientConfigurationMutation *)v5 getAccessibilityState];
      v8 = [v7 copy];
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
      v11 = [(_AFClientConfigurationMutation *)v5 getTapToSiriAudioPlaybackRequest];
      v12 = [v11 copy];
      tapToSiriAudioPlaybackRequest = v6->_tapToSiriAudioPlaybackRequest;
      v6->_tapToSiriAudioPlaybackRequest = v12;

      v14 = [(_AFClientConfigurationMutation *)v5 getTwoShotAudioPlaybackRequest];
      v15 = [v14 copy];
      twoShotAudioPlaybackRequest = v6->_twoShotAudioPlaybackRequest;
      v6->_twoShotAudioPlaybackRequest = v15;

      v17 = [(_AFClientConfigurationMutation *)v5 getDeviceSetupFlowBeginDate];
      v18 = [v17 copy];
      deviceSetupFlowBeginDate = v6->_deviceSetupFlowBeginDate;
      v6->_deviceSetupFlowBeginDate = v18;

      v20 = [(_AFClientConfigurationMutation *)v5 getDeviceSetupFlowEndDate];
      v21 = [v20 copy];
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