@interface AADeviceConfig
- (AADeviceConfig)init;
- (AADeviceConfig)initWithCoder:(id)coder;
- (BOOL)needsUpdateToAAController;
- (id)descriptionWithLevel:(int)level;
- (void)encodeWithCoder:(id)coder;
@end

@implementation AADeviceConfig

- (AADeviceConfig)init
{
  v6.receiver = self;
  v6.super_class = AADeviceConfig;
  v2 = [(AADeviceConfig *)&v6 init];
  v3 = v2;
  if (v2)
  {
    v2->_spatialAudioMode = 255;
    v4 = v2;
  }

  return v3;
}

- (AADeviceConfig)initWithCoder:(id)coder
{
  coderCopy = coder;
  v5 = [(AADeviceConfig *)self init];

  if (v5)
  {
    if (NSDecodeSInt64RangedIfPresent())
    {
      v5->_acceptReplyPlayPauseConfig = 0;
    }

    if (NSDecodeSInt64RangedIfPresent())
    {
      v5->_aclPriority = 0;
    }

    if (NSDecodeSInt64RangedIfPresent())
    {
      v5->_adaptiveVolumeConfig = 0;
    }

    if (NSDecodeSInt64RangedIfPresent())
    {
      v5->_allowsAutoRoute = 0;
    }

    if (NSDecodeSInt64RangedIfPresent())
    {
      v5->_allowTemporaryManagedPairing = 0;
    }

    if (NSDecodeSInt64RangedIfPresent())
    {
      v5->_audioRouteHidden = 0;
    }

    v6 = coderCopy;
    objc_opt_class();
    NSDecodeObjectIfPresent();

    if (NSDecodeSInt64RangedIfPresent())
    {
      v5->_autoANCStrength = 0;
    }

    if (NSDecodeSInt64RangedIfPresent())
    {
      v5->_changeDynamicEndOfChargeState = 0;
    }

    if (NSDecodeSInt64RangedIfPresent())
    {
      v5->_changeOptimizedBatteryChargingState = 0;
    }

    if (NSDecodeSInt64RangedIfPresent())
    {
      v5->_clickHoldModeLeft = 0;
    }

    if (NSDecodeSInt64RangedIfPresent())
    {
      v5->_clickHoldModeRight = 0;
    }

    if (NSDecodeSInt64RangedIfPresent())
    {
      v5->_conversationDetectConfig = 0;
    }

    if (NSDecodeSInt64RangedIfPresent())
    {
      v5->_crownRotationDirection = 0;
    }

    if (NSDecodeSInt64RangedIfPresent())
    {
      v5->_declineDismissSkipConfig = 0;
    }

    if (NSDecodeSInt64RangedIfPresent())
    {
      v5->_doubleTapActionLeft = 0;
    }

    if (NSDecodeSInt64RangedIfPresent())
    {
      v5->_doubleTapActionRight = 0;
    }

    if (NSDecodeSInt64RangedIfPresent())
    {
      v5->_enableChargingReminder = 0;
    }

    if (NSDecodeSInt64RangedIfPresent())
    {
      v5->_enableHearingAidGainSwipe = 0;
    }

    if (NSDecodeSInt64RangedIfPresent())
    {
      v5->_enableHearingAssist = 0;
    }

    if (NSDecodeSInt64RangedIfPresent())
    {
      v5->_enableHearingProtectionPPE = 0;
    }

    if (NSDecodeSInt64RangedIfPresent())
    {
      v5->_enableSiriMultitone = 0;
    }

    if (NSDecodeSInt64RangedIfPresent())
    {
      v5->_enableSleepDetection = 0;
    }

    if (NSDecodeSInt64RangedIfPresent())
    {
      v5->_endCallConfig = 0;
    }

    if (NSDecodeSInt64RangedIfPresent())
    {
      v5->_headGestureToggle = 0;
    }

    if (NSDecodeSInt64RangedIfPresent())
    {
      v5->_allowHealthKitDataWrite = 0;
    }

    if (NSDecodeSInt64RangedIfPresent())
    {
      v5->_hearingAidEnrolled = 0;
    }

    if (NSDecodeSInt64RangedIfPresent())
    {
      v5->_hearingAidToggle = 0;
    }

    if (NSDecodeSInt64RangedIfPresent())
    {
      v5->_hearingAidV2SourceRegionSupport = 0;
    }

    if (NSDecodeSInt64RangedIfPresent())
    {
      v5->_enableHeartRateMonitor = 0;
    }

    if (NSDecodeSInt64RangedIfPresent())
    {
      v5->_listeningMode = 0;
    }

    if (NSDecodeSInt64RangedIfPresent())
    {
      v5->_listeningModeConfigs = 0;
    }

    if (NSDecodeSInt64RangedIfPresent())
    {
      v5->_listeningModeOffAllowed = 0;
    }

    if (NSDecodeSInt64RangedIfPresent())
    {
      v5->_microphoneMode = 0;
    }

    if (NSDecodeSInt64RangedIfPresent())
    {
      v5->_muteControlConfig = 0;
    }

    v7 = v6;
    objc_opt_class();
    NSDecodeObjectIfPresent();

    if (NSDecodeSInt64RangedIfPresent())
    {
      v5->_placementMode = 0;
    }

    if (NSDecodeSInt64RangedIfPresent())
    {
      v5->_rawGesturesConfigFlags = 0;
    }

    if (NSDecodeSInt64RangedIfPresent())
    {
      v5->_relinquishAudioRoute = 0;
    }

    if (NSDecodeSInt64RangedIfPresent())
    {
      v5->_remoteCameraControlConfig = 0;
    }

    if (NSDecodeSInt64RangedIfPresent())
    {
      v5->_selectiveSpeechListeningConfig = 0;
    }

    if (NSDecodeSInt64RangedIfPresent())
    {
      v5->_smartRoutingMode = 0;
    }

    if (NSDecodeSInt64RangedIfPresent())
    {
      v5->_spatialAudioAllowed = 0;
    }

    if (NSDecodeSInt64RangedIfPresent())
    {
      v5->_spatialAudioMode = 0;
    }

    v8 = v5;
  }

  return v5;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  v11 = coderCopy;
  if (self->_acceptReplyPlayPauseConfig)
  {
    [coderCopy encodeInteger:? forKey:?];
    coderCopy = v11;
  }

  if (self->_aclPriority)
  {
    [v11 encodeInteger:? forKey:?];
    coderCopy = v11;
  }

  if (self->_adaptiveVolumeConfig)
  {
    [v11 encodeInteger:? forKey:?];
    coderCopy = v11;
  }

  if (self->_allowsAutoRoute)
  {
    [v11 encodeInteger:? forKey:?];
    coderCopy = v11;
  }

  if (self->_allowTemporaryManagedPairing)
  {
    [v11 encodeInteger:? forKey:?];
    coderCopy = v11;
  }

  if (self->_audioRouteHidden)
  {
    [v11 encodeInteger:? forKey:?];
    coderCopy = v11;
  }

  audiogramEnrolledTimestamp = self->_audiogramEnrolledTimestamp;
  if (audiogramEnrolledTimestamp)
  {
    [v11 encodeObject:audiogramEnrolledTimestamp forKey:@"agET"];
    coderCopy = v11;
  }

  autoANCStrength = self->_autoANCStrength;
  if (autoANCStrength)
  {
    [v11 encodeInt64:autoANCStrength forKey:@"aaS"];
    coderCopy = v11;
  }

  if (self->_changeDynamicEndOfChargeState)
  {
    [v11 encodeInteger:? forKey:?];
    coderCopy = v11;
  }

  if (self->_changeOptimizedBatteryChargingState)
  {
    [v11 encodeInteger:? forKey:?];
    coderCopy = v11;
  }

  if (self->_clickHoldModeLeft)
  {
    [v11 encodeInteger:? forKey:?];
    coderCopy = v11;
  }

  if (self->_clickHoldModeRight)
  {
    [v11 encodeInteger:? forKey:?];
    coderCopy = v11;
  }

  if (self->_conversationDetectConfig)
  {
    [v11 encodeInteger:? forKey:?];
    coderCopy = v11;
  }

  if (self->_crownRotationDirection)
  {
    [v11 encodeInteger:? forKey:?];
    coderCopy = v11;
  }

  if (self->_declineDismissSkipConfig)
  {
    [v11 encodeInteger:? forKey:?];
    coderCopy = v11;
  }

  if (self->_doubleTapActionLeft)
  {
    [v11 encodeInteger:? forKey:?];
    coderCopy = v11;
  }

  if (self->_doubleTapActionRight)
  {
    [v11 encodeInteger:? forKey:?];
    coderCopy = v11;
  }

  if (self->_enableChargingReminder)
  {
    [v11 encodeInteger:? forKey:?];
    coderCopy = v11;
  }

  if (self->_enableHearingAidGainSwipe)
  {
    [v11 encodeInteger:? forKey:?];
    coderCopy = v11;
  }

  if (self->_enableHearingAssist)
  {
    [v11 encodeInteger:? forKey:?];
    coderCopy = v11;
  }

  if (self->_enableHearingProtectionPPE)
  {
    [v11 encodeInteger:? forKey:?];
    coderCopy = v11;
  }

  if (self->_enableSiriMultitone)
  {
    [v11 encodeInteger:? forKey:?];
    coderCopy = v11;
  }

  if (self->_enableSleepDetection)
  {
    [v11 encodeInteger:? forKey:?];
    coderCopy = v11;
  }

  if (self->_endCallConfig)
  {
    [v11 encodeInteger:? forKey:?];
    coderCopy = v11;
  }

  if (self->_headGestureToggle)
  {
    [v11 encodeInteger:? forKey:?];
    coderCopy = v11;
  }

  if (self->_allowHealthKitDataWrite)
  {
    [v11 encodeInteger:? forKey:?];
    coderCopy = v11;
  }

  if (self->_hearingAidEnrolled)
  {
    [v11 encodeInteger:? forKey:?];
    coderCopy = v11;
  }

  if (self->_hearingAidToggle)
  {
    [v11 encodeInteger:? forKey:?];
    coderCopy = v11;
  }

  if (self->_hearingAidV2SourceRegionSupport)
  {
    [v11 encodeInteger:? forKey:?];
    coderCopy = v11;
  }

  if (self->_enableHeartRateMonitor)
  {
    [v11 encodeInteger:? forKey:?];
    coderCopy = v11;
  }

  listeningMode = self->_listeningMode;
  if (listeningMode)
  {
    [v11 encodeInteger:listeningMode forKey:@"lsmd"];
    coderCopy = v11;
  }

  listeningModeConfigs = self->_listeningModeConfigs;
  if (listeningModeConfigs)
  {
    [v11 encodeInt64:listeningModeConfigs forKey:@"lsmc"];
    coderCopy = v11;
  }

  if (self->_listeningModeOffAllowed)
  {
    [v11 encodeInteger:? forKey:?];
    coderCopy = v11;
  }

  if (self->_microphoneMode)
  {
    [v11 encodeInteger:? forKey:?];
    coderCopy = v11;
  }

  if (self->_muteControlConfig)
  {
    [v11 encodeInteger:? forKey:?];
    coderCopy = v11;
  }

  name = self->_name;
  if (name)
  {
    [v11 encodeObject:name forKey:@"name"];
    coderCopy = v11;
  }

  if (self->_placementMode)
  {
    [v11 encodeInteger:? forKey:?];
    coderCopy = v11;
  }

  if (self->_rawGesturesConfigFlags)
  {
    [v11 encodeInteger:? forKey:?];
    coderCopy = v11;
  }

  if (self->_relinquishAudioRoute)
  {
    [v11 encodeInteger:? forKey:?];
    coderCopy = v11;
  }

  if (self->_remoteCameraControlConfig)
  {
    [v11 encodeInteger:? forKey:?];
    coderCopy = v11;
  }

  if (self->_selectiveSpeechListeningConfig)
  {
    [v11 encodeInteger:? forKey:?];
    coderCopy = v11;
  }

  if (self->_smartRoutingMode)
  {
    [v11 encodeInteger:? forKey:?];
    coderCopy = v11;
  }

  if (self->_spatialAudioAllowed)
  {
    [v11 encodeInteger:? forKey:?];
    coderCopy = v11;
  }

  spatialAudioMode = self->_spatialAudioMode;
  if (spatialAudioMode && spatialAudioMode != 255)
  {
    [v11 encodeInteger:spatialAudioMode forKey:@"samd"];
    coderCopy = v11;
  }
}

- (id)descriptionWithLevel:(int)level
{
  v93 = [objc_opt_class() description];
  NSAppendPrintF_safe();
  v4 = 0;

  if (self->_aclPriority)
  {
    if (self->_aclPriority > 0x31u)
    {
      self->_aclPriority;
    }

    NSAppendPrintF_safe();
    v5 = v4;

    v4 = v5;
  }

  if (self->_allowsAutoRoute)
  {
    self->_allowsAutoRoute;
    NSAppendPrintF_safe();
    v6 = v4;

    v4 = v6;
  }

  v7 = self->_audiogramEnrolledTimestamp;
  if (v7)
  {
    NSAppendPrintF_safe();
    v8 = v4;

    v4 = v8;
  }

  if (self->_audioRouteHidden)
  {
    self->_audioRouteHidden;
    NSAppendPrintF_safe();
    v9 = v4;

    v4 = v9;
  }

  if (self->_autoANCStrength)
  {
    NSAppendPrintF_safe();
    v11 = v4;

    v4 = v11;
  }

  adaptiveVolumeConfig = self->_adaptiveVolumeConfig;
  if (self->_adaptiveVolumeConfig)
  {
    if (adaptiveVolumeConfig <= 3)
    {
      v13 = *(&off_278CDDDB0 + adaptiveVolumeConfig - 1);
    }

    NSAppendPrintF_safe();
    v14 = v4;

    v4 = v14;
  }

  if (self->_bobbleConfig)
  {
    self->_bobbleConfig;
    NSAppendPrintF_safe();
    v15 = v4;

    v4 = v15;
  }

  changeDynamicEndOfChargeState = self->_changeDynamicEndOfChargeState;
  if (self->_changeDynamicEndOfChargeState)
  {
    if (changeDynamicEndOfChargeState <= 3)
    {
      v17 = off_278CDDCB0[changeDynamicEndOfChargeState - 1];
    }

    NSAppendPrintF_safe();
    v18 = v4;

    v4 = v18;
  }

  changeOptimizedBatteryChargingState = self->_changeOptimizedBatteryChargingState;
  if (self->_changeOptimizedBatteryChargingState)
  {
    if (changeOptimizedBatteryChargingState <= 3)
    {
      v20 = off_278CDDCB0[changeOptimizedBatteryChargingState - 1];
    }

    NSAppendPrintF_safe();
    v21 = v4;

    v4 = v21;
  }

  clickHoldModeLeft = self->_clickHoldModeLeft;
  if (*&self->_clickHoldModeLeft)
  {
    clickHoldModeRight = self->_clickHoldModeRight;
    NSAppendPrintF_safe();
    v24 = v4;

    if (clickHoldModeLeft)
    {
      if (clickHoldModeLeft <= 7)
      {
        v25 = *(&off_278CDDCC8 + clickHoldModeLeft - 1);
      }

      NSAppendPrintF_safe();
      v26 = v24;

      v24 = v26;
    }

    if (clickHoldModeRight)
    {
      if (clickHoldModeRight <= 7)
      {
        v27 = *(&off_278CDDCC8 + clickHoldModeRight - 1);
      }

      NSAppendPrintF_safe();
      v4 = v24;
    }

    else
    {
      v4 = v24;
    }
  }

  conversationDetectConfig = self->_conversationDetectConfig;
  if (self->_conversationDetectConfig)
  {
    if (conversationDetectConfig <= 3)
    {
      v29 = *(&off_278CDDDB0 + conversationDetectConfig - 1);
    }

    NSAppendPrintF_safe();
    v30 = v4;

    v4 = v30;
  }

  crownRotationDirection = self->_crownRotationDirection;
  if (self->_crownRotationDirection)
  {
    v32 = @"?";
    if (crownRotationDirection == 1)
    {
      v32 = @"BackToFront";
    }

    if (crownRotationDirection == 2)
    {
      v33 = @"FrontToBack";
    }

    else
    {
      v33 = v32;
    }

    v94 = v33;
    NSAppendPrintF_safe();
    v34 = v4;

    v4 = v34;
  }

  doubleTapActionLeft = self->_doubleTapActionLeft;
  if (*&self->_doubleTapActionLeft)
  {
    doubleTapActionRight = self->_doubleTapActionRight;
    NSAppendPrintF_safe();
    v37 = v4;

    if (doubleTapActionLeft)
    {
      if (doubleTapActionLeft <= 5)
      {
        v38 = off_278CDDD00[doubleTapActionLeft - 1];
      }

      NSAppendPrintF_safe();
      v39 = v37;

      v37 = v39;
    }

    if (doubleTapActionRight)
    {
      if (doubleTapActionRight <= 5)
      {
        v40 = off_278CDDD00[doubleTapActionRight - 1];
      }

      NSAppendPrintF_safe();
      v4 = v37;
    }

    else
    {
      v4 = v37;
    }
  }

  endCallConfig = self->_endCallConfig;
  if (self->_endCallConfig)
  {
    if (endCallConfig <= 4)
    {
      v42 = *(&off_278CDDD78 + endCallConfig - 1);
    }

    NSAppendPrintF_safe();
    v43 = v4;

    v4 = v43;
  }

  if (self->_enableChargingReminder)
  {
    self->_enableChargingReminder;
    NSAppendPrintF_safe();
    v44 = v4;

    v4 = v44;
  }

  if (self->_enableHearingAidGainSwipe)
  {
    self->_enableHearingAidGainSwipe;
    NSAppendPrintF_safe();
    v45 = v4;

    v4 = v45;
  }

  if (self->_enableHearingProtectionPPE)
  {
    self->_enableHearingProtectionPPE;
    NSAppendPrintF_safe();
    v46 = v4;

    v4 = v46;
  }

  if (self->_enableHeartRateMonitor)
  {
    self->_enableHeartRateMonitor;
    NSAppendPrintF_safe();
    v47 = v4;

    v4 = v47;
  }

  if (self->_enableHearingAssist)
  {
    self->_enableHearingAssist;
    NSAppendPrintF_safe();
    v48 = v4;

    v4 = v48;
  }

  if (self->_enableSleepDetection)
  {
    self->_enableSleepDetection;
    NSAppendPrintF_safe();
    v49 = v4;

    v4 = v49;
  }

  if (self->_hearingAidToggle)
  {
    self->_hearingAidToggle;
    NSAppendPrintF_safe();
    v50 = v4;

    v4 = v50;
  }

  if (self->_hearingAidEnrolled)
  {
    self->_hearingAidEnrolled;
    NSAppendPrintF_safe();
    v51 = v4;

    v4 = v51;
  }

  if (self->_hearingAidV2SourceRegionSupport)
  {
    self->_hearingAidV2SourceRegionSupport;
    NSAppendPrintF_safe();
    v52 = v4;

    v4 = v52;
  }

  acceptReplyPlayPauseConfig = self->_acceptReplyPlayPauseConfig;
  if (self->_acceptReplyPlayPauseConfig)
  {
    if (acceptReplyPlayPauseConfig <= 3)
    {
      v54 = off_278CDDD28[acceptReplyPlayPauseConfig - 1];
    }

    NSAppendPrintF_safe();
    v55 = v4;

    v4 = v55;
  }

  declineDismissSkipConfig = self->_declineDismissSkipConfig;
  if (self->_declineDismissSkipConfig)
  {
    if (declineDismissSkipConfig <= 3)
    {
      v57 = off_278CDDD28[declineDismissSkipConfig - 1];
    }

    NSAppendPrintF_safe();
    v58 = v4;

    v4 = v58;
  }

  if (self->_headGestureToggle)
  {
    self->_headGestureToggle;
    NSAppendPrintF_safe();
    v59 = v4;

    v4 = v59;
  }

  if (self->_headGestureProxCardShown)
  {
    self->_headGestureProxCardShown;
    NSAppendPrintF_safe();
    v60 = v4;

    v4 = v60;
  }

  if (self->_allowHealthKitDataWrite)
  {
    self->_allowHealthKitDataWrite;
    NSAppendPrintF_safe();
    v61 = v4;

    v4 = v61;
  }

  if (self->_listeningModeOffAllowed)
  {
    self->_listeningModeOffAllowed;
    NSAppendPrintF_safe();
    v62 = v4;

    v4 = v62;
  }

  if (self->_listeningModeConfigs)
  {
    v95 = CUPrintFlags32();
    NSAppendPrintF_safe();
    v63 = v4;

    v4 = v63;
  }

  listeningMode = self->_listeningMode;
  if (listeningMode)
  {
    if (listeningMode <= 4)
    {
      v65 = off_278CDDD40[listeningMode - 1];
    }

    NSAppendPrintF_safe();
    v66 = v4;

    v4 = v66;
  }

  microphoneMode = self->_microphoneMode;
  if (self->_microphoneMode)
  {
    if (microphoneMode <= 3)
    {
      v68 = off_278CDDD60[microphoneMode - 1];
    }

    NSAppendPrintF_safe();
    v69 = v4;

    v4 = v69;
  }

  muteControlConfig = self->_muteControlConfig;
  if (self->_muteControlConfig)
  {
    if (muteControlConfig <= 4)
    {
      v71 = *(&off_278CDDD78 + muteControlConfig - 1);
    }

    NSAppendPrintF_safe();
    v72 = v4;

    v4 = v72;
  }

  v73 = self->_name;
  if (v73)
  {
    NSAppendPrintF_safe();
    v74 = v4;

    v4 = v74;
  }

  if (self->_placementMode)
  {
    self->_placementMode;
    NSAppendPrintF_safe();
    v75 = v4;

    v4 = v75;
  }

  if (self->_rawGesturesConfigFlags)
  {
    v96 = CUPrintFlags32();
    NSAppendPrintF_safe();
    v76 = v4;

    v4 = v76;
  }

  if (self->_relinquishAudioRoute)
  {
    self->_relinquishAudioRoute;
    NSAppendPrintF_safe();
    v77 = v4;

    v4 = v77;
  }

  remoteCameraControlConfig = self->_remoteCameraControlConfig;
  if (self->_remoteCameraControlConfig)
  {
    if (remoteCameraControlConfig <= 3)
    {
      v79 = off_278CDDD98[remoteCameraControlConfig - 1];
    }

    NSAppendPrintF_safe();
    v80 = v4;

    v4 = v80;
  }

  selectiveSpeechListeningConfig = self->_selectiveSpeechListeningConfig;
  if (self->_selectiveSpeechListeningConfig)
  {
    if (selectiveSpeechListeningConfig <= 3)
    {
      v82 = *(&off_278CDDDB0 + selectiveSpeechListeningConfig - 1);
    }

    NSAppendPrintF_safe();
    v83 = v4;

    v4 = v83;
  }

  if (self->_smartRoutingMode)
  {
    self->_smartRoutingMode;
    NSAppendPrintF_safe();
    v84 = v4;

    v4 = v84;
  }

  if (self->_enableSiriMultitone)
  {
    self->_enableSiriMultitone;
    NSAppendPrintF_safe();
    v85 = v4;

    v4 = v85;
  }

  if (self->_spatialAudioAllowed)
  {
    self->_spatialAudioAllowed;
    NSAppendPrintF_safe();
    v86 = v4;

    v4 = v86;
  }

  spatialAudioMode = self->_spatialAudioMode;
  if (spatialAudioMode != 255)
  {
    if (spatialAudioMode <= 3)
    {
      v88 = off_278CDDDC8[spatialAudioMode];
    }

    NSAppendPrintF_safe();
    v89 = v4;

    v4 = v89;
  }

  if (self->_allowTemporaryManagedPairing)
  {
    self->_allowTemporaryManagedPairing;
    NSAppendPrintF_safe();
    v90 = v4;

    v4 = v90;
  }

  v91 = v4;

  return v4;
}

- (BOOL)needsUpdateToAAController
{
  if (self->_changeDynamicEndOfChargeState)
  {
    return 1;
  }

  if (_os_feature_enabled_impl() && (self->_enableHearingAidGainSwipe || self->_enableHearingAssist || self->_hearingAidToggle || self->_hearingAidEnrolled) || _os_feature_enabled_impl() && self->_enableHearingProtectionPPE || _os_feature_enabled_impl() && self->_hearingAidV2SourceRegionSupport || _os_feature_enabled_impl() && self->_listeningModeOffAllowed || self->_autoANCStrength || self->_enableHeartRateMonitor || self->_enableSiriMultitone || self->_enableSleepDetection || _os_feature_enabled_impl() && self->_allowTemporaryManagedPairing)
  {
    return 1;
  }

  return self->_rawGesturesConfigFlags != 0;
}

@end