@interface AudioAccessoryDevice
- (AudioAccessoryDevice)initWithCoder:(id)a3;
- (AudioAccessoryDevice)initWithIdentifier:(id)a3;
- (BOOL)connectedInfoComplete;
- (BOOL)pairedInfoComplete;
- (BOOL)setDefaultConfigurationsForCloudSyncedPropertiesIfNeeded;
- (BOOL)updateWithAADeviceConfig:(id)a3;
- (BOOL)updateWithConnectedAADeviceInfo:(id)a3;
- (BOOL)updateWithConnectedCBDevice:(id)a3;
- (BOOL)updateWithPairedAADevice:(id)a3;
- (BOOL)updateWithPairedAADeviceInfo:(id)a3;
- (BOOL)updateWithPairedCBDevice:(id)a3;
- (NSString)bluetoothAddress;
- (char)dynamicEndOfChargeState;
- (id)copyWithZone:(_NSZone *)a3;
- (id)descriptionWithLevel:(int)a3;
- (unsigned)CBCapToAACap:(unsigned __int8)a3;
- (unsigned)chargingReminderCapability;
- (unsigned)computePersonalTranslatorCapability;
- (unsigned)optimizedBatteryChargingCapability;
- (void)encodeWithCoder:(id)a3;
- (void)setBatteryInfo:(id)a3;
- (void)setBluetoothAddressData:(id)a3;
- (void)setCloudRecordInfoLoaded:(BOOL)a3;
- (void)setConnected:(BOOL)a3;
- (void)setDetectedHeadGesture:(unsigned __int8)a3;
- (void)setDynamicEndOfChargeEnabled:(char)a3;
- (void)setDynamicEndOfChargeTempDisabled:(char)a3;
- (void)setFarFieldSessionOnGoing:(char)a3;
- (void)setHeartRateMonitorCapabilityChanged:(BOOL)a3;
- (void)setHeartRateMonitorCapabilityValueOriginatedFromDevice:(BOOL)a3;
- (void)setIdentifier:(id)a3;
- (void)setOnConnectionActionsCalled:(BOOL)a3;
- (void)setOptimizedBatteryChargingState:(char)a3;
- (void)setPaired:(BOOL)a3;
- (void)setSiriMultitoneEnabled:(char)a3;
- (void)setSmartRoutingStateFlags:(unsigned int)a3;
@end

@implementation AudioAccessoryDevice

- (AudioAccessoryDevice)initWithIdentifier:(id)a3
{
  v5 = a3;
  v6 = [(AudioAccessoryDevice *)self init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_identifier, a3);
    v8 = v7;
  }

  return v7;
}

- (AudioAccessoryDevice)initWithCoder:(id)a3
{
  v4 = a3;
  v5 = [(AudioAccessoryDevice *)self init];

  if (v5)
  {
    if (NSDecodeSInt64RangedIfPresent())
    {
      v5->_acceptReplyPlayPauseConfig = 0;
    }

    if (NSDecodeSInt64RangedIfPresent())
    {
      v5->_adaptiveVolumeCapability = 0;
    }

    if (NSDecodeSInt64RangedIfPresent())
    {
      v5->_adaptiveVolumeConfig = 0;
    }

    v6 = v4;
    objc_opt_class();
    NSDecodeObjectIfPresent();

    if (NSDecodeSInt64RangedIfPresent())
    {
      v5->_audioStreamState = 0;
    }

    if (NSDecodeSInt64RangedIfPresent())
    {
      v5->_autoANCCapability = 0;
    }

    if (NSDecodeSInt64RangedIfPresent())
    {
      v5->_peerAutoANCCapability = 0;
    }

    if (NSDecodeSInt64RangedIfPresent())
    {
      v5->_autoANCStrength = 0;
    }

    objc_opt_class();
    NSDecodeObjectIfPresent();
    objc_opt_class();
    NSDecodeObjectIfPresent();
    objc_opt_class();
    NSDecodeObjectIfPresent();
    if (NSDecodeSInt64RangedIfPresent())
    {
      v5->_bobbleCapability = 0;
    }

    if (NSDecodeSInt64RangedIfPresent())
    {
      v5->_bobbleConfig = 0;
    }

    if (NSDecodeSInt64RangedIfPresent())
    {
      v5->_cameraControlCapability = 0;
    }

    if (NSDecodeSInt64RangedIfPresent())
    {
      v5->_caseSoundCapability = 0;
    }

    if (NSDecodeSInt64RangedIfPresent())
    {
      v5->_chargingReminderEnabled = 0;
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
      v5->_conversationDetectCapability = 0;
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
      v5->_detectedHeadGesture = 0;
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
      v5->_doubleTapCapability = 0;
    }

    if (NSDecodeSInt64RangedIfPresent())
    {
      v5->_dynamicEndOfChargeCapability = 0;
    }

    if (NSDecodeSInt64RangedIfPresent())
    {
      v5->_dynamicEndOfChargeEnabled = 0;
    }

    if (NSDecodeSInt64RangedIfPresent())
    {
      v5->_dynamicEndOfChargeState = 0;
    }

    if (NSDecodeSInt64RangedIfPresent())
    {
      v5->_dynamicEndOfChargeTempDisabled = 0;
    }

    if (NSDecodeSInt64RangedIfPresent())
    {
      v5->_earTipFitTestCapability = 0;
    }

    if (NSDecodeSInt64RangedIfPresent())
    {
      v5->_endCallCapability = 0;
    }

    if (NSDecodeSInt64RangedIfPresent())
    {
      v5->_endCallConfig = 0;
    }

    if (NSDecodeSInt64RangedIfPresent())
    {
      v5->_enhancedTransparencyVersion = 0;
    }

    if (NSDecodeSInt64RangedIfPresent())
    {
      v5->_farFieldUplinkCapability = 0;
    }

    if (NSDecodeSInt64RangedIfPresent())
    {
      v5->_farFieldSessionOnGoing = 0;
    }

    objc_opt_class();
    NSDecodeObjectIfPresent();
    if (NSDecodeSInt64RangedIfPresent())
    {
      v5->_frequencyBand = 0;
    }

    if (NSDecodeSInt64RangedIfPresent())
    {
      v5->_gapaFlags = 0;
    }

    if (NSDecodeSInt64RangedIfPresent())
    {
      v5->_guestPaired = 0;
    }

    if (NSDecodeSInt64RangedIfPresent())
    {
      v5->_headGestureToggle = 0;
    }

    if (NSDecodeSInt64RangedIfPresent())
    {
      v5->_healthKitDataWriteAllowed = 0;
    }

    if (NSDecodeSInt64RangedIfPresent())
    {
      v5->_hearingAidCapability = 0;
    }

    if (NSDecodeSInt64RangedIfPresent())
    {
      v5->_hearingAidEnabled = 0;
    }

    if (NSDecodeSInt64RangedIfPresent())
    {
      v5->_hearingAidEnrolled = 0;
    }

    if (NSDecodeSInt64RangedIfPresent())
    {
      v5->_hearingAidGainSwipeEnabled = 0;
    }

    if (NSDecodeSInt64RangedIfPresent())
    {
      v5->_hearingAidV2Capability = 0;
    }

    if (NSDecodeSInt64RangedIfPresent())
    {
      v5->_hearingAssistEnabled = 0;
    }

    if (NSDecodeSInt64RangedIfPresent())
    {
      v5->_hearingProtectionCapability = 0;
    }

    if (NSDecodeSInt64RangedIfPresent())
    {
      v5->_hearingProtectionPPECapability = 0;
    }

    if (NSDecodeSInt64RangedIfPresent())
    {
      v5->_hearingProtectionPPECapLevel = 0;
    }

    if (NSDecodeSInt64RangedIfPresent())
    {
      v5->_hearingProtectionPPEEnabled = 0;
    }

    if (NSDecodeSInt64RangedIfPresent())
    {
      v5->_hearingTestCapability = 0;
    }

    if (NSDecodeSInt64RangedIfPresent())
    {
      v5->_heartRateMonitorCapability = 0;
    }

    if (NSDecodeSInt64RangedIfPresent())
    {
      v5->_heartRateMonitorEnabled = 0;
    }

    if (NSDecodeSInt64RangedIfPresent())
    {
      v5->_hideEarDetectionCapability = 0;
    }

    if (NSDecodeSInt64RangedIfPresent())
    {
      v5->_hideOffListeningModeCapability = 0;
    }

    v7 = v6;
    objc_opt_class();
    NSDecodeObjectIfPresent();

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

    v8 = v7;
    objc_opt_class();
    NSDecodeObjectIfPresent();

    if (NSDecodeSInt64RangedIfPresent())
    {
      v5->_muteControlCapability = 0;
    }

    if (NSDecodeSInt64RangedIfPresent())
    {
      v5->_muteControlConfig = 0;
    }

    v9 = v8;
    objc_opt_class();
    NSDecodeObjectIfPresent();

    if (NSDecodeSInt64RangedIfPresent())
    {
      v5->_optimizedBatteryChargingState = 0;
    }

    if (NSDecodeSInt64RangedIfPresent())
    {
      v5->_ovadStreamingCapability = 0;
    }

    if (NSDecodeSInt64RangedIfPresent())
    {
      v5->_personalTranslatorCapability = 0;
    }

    if (NSDecodeSInt64RangedIfPresent())
    {
      v5->_placementMode = 0;
    }

    if (NSDecodeSInt64RangedIfPresent())
    {
      v5->_pmeEverywhereCapability = 0;
    }

    if (NSDecodeSInt64RangedIfPresent())
    {
      v5->_primaryPlacement = 0;
    }

    if (NSDecodeSInt64RangedIfPresent())
    {
      v5->_productID = 0;
    }

    v10 = v9;
    objc_opt_class();
    NSDecodeObjectIfPresent();

    if (NSDecodeSInt64RangedIfPresent())
    {
      v5->_rawGesturesConfigFlags = 0;
    }

    if (NSDecodeSInt64RangedIfPresent())
    {
      v5->_remoteCameraControlConfig = 0;
    }

    v11 = v10;
    if ([v11 containsValueForKey:@"rutd"])
    {
      v5->_routed = [v11 decodeBoolForKey:@"rutd"];
    }

    if (NSDecodeSInt64RangedIfPresent())
    {
      v5->_classicRSSI = 0;
    }

    if (NSDecodeSInt64RangedIfPresent())
    {
      v5->_secondaryPlacement = 0;
    }

    if (NSDecodeSInt64RangedIfPresent())
    {
      v5->_selectiveSpeechListeningCapability = 0;
    }

    if (NSDecodeSInt64RangedIfPresent())
    {
      v5->_selectiveSpeechListeningConfig = 0;
    }

    v12 = v11;
    objc_opt_class();
    NSDecodeObjectIfPresent();

    v13 = v12;
    objc_opt_class();
    NSDecodeObjectIfPresent();

    v14 = v13;
    objc_opt_class();
    NSDecodeObjectIfPresent();

    if (NSDecodeSInt64RangedIfPresent())
    {
      v5->_siriMultitoneCapability = 0;
    }

    if (NSDecodeSInt64RangedIfPresent())
    {
      v5->_siriMultitoneEnabled = 0;
    }

    if (NSDecodeSInt64RangedIfPresent())
    {
      v5->_sleepDetectionCapability = 0;
    }

    if (NSDecodeSInt64RangedIfPresent())
    {
      v5->_sleepDetectionEnabled = 0;
    }

    if (NSDecodeSInt64RangedIfPresent())
    {
      v5->_smartRoutingCapability = 0;
    }

    if (NSDecodeSInt64RangedIfPresent())
    {
      v5->_smartRoutingMode = 0;
    }

    if (NSDecodeSInt64RangedIfPresent())
    {
      v5->_smartRoutingStateFlags = 0;
    }

    if (NSDecodeSInt64RangedIfPresent())
    {
      v5->_spatialAudioAllowed = 0;
    }

    if (NSDecodeSInt64RangedIfPresent())
    {
      v5->_streamStateAoS = 0;
    }

    if (NSDecodeSInt64RangedIfPresent())
    {
      v5->_temporaryManagedPairedStatus = 0;
    }

    if (NSDecodeSInt64RangedIfPresent())
    {
      v5->_vendorID = 0;
    }

    v15 = v5;
  }

  return v5;
}

- (void)encodeWithCoder:(id)a3
{
  v4 = a3;
  v28 = v4;
  if (self->_acceptReplyPlayPauseConfig)
  {
    [v4 encodeInteger:? forKey:?];
    v4 = v28;
  }

  if (self->_adaptiveVolumeConfig)
  {
    [v28 encodeInteger:? forKey:?];
    v4 = v28;
    if (self->_adaptiveVolumeConfig)
    {
      [v28 encodeInteger:? forKey:?];
      v4 = v28;
    }
  }

  audiogramEnrolledTimestamp = self->_audiogramEnrolledTimestamp;
  if (audiogramEnrolledTimestamp)
  {
    [v28 encodeObject:audiogramEnrolledTimestamp forKey:@"agET"];
    v4 = v28;
  }

  audioStreamState = self->_audioStreamState;
  if (audioStreamState)
  {
    [v28 encodeInteger:audioStreamState forKey:@"auss"];
    v4 = v28;
  }

  autoANCCapability = self->_autoANCCapability;
  if (autoANCCapability)
  {
    [v28 encodeInt64:autoANCCapability forKey:@"aaCp"];
    v4 = v28;
  }

  if (self->_peerAutoANCCapability)
  {
    [v28 encodeInteger:? forKey:?];
    v4 = v28;
  }

  autoANCStrength = self->_autoANCStrength;
  if (autoANCStrength)
  {
    [v28 encodeInt64:autoANCStrength forKey:@"aaSt"];
    v4 = v28;
  }

  coreBluetoothDevice = self->_coreBluetoothDevice;
  if (coreBluetoothDevice)
  {
    [v28 encodeObject:coreBluetoothDevice forKey:@"cbd"];
    v4 = v28;
  }

  batteryInfo = self->_batteryInfo;
  if (batteryInfo)
  {
    [v28 encodeObject:batteryInfo forKey:@"baIn"];
    v4 = v28;
  }

  bluetoothAddressData = self->_bluetoothAddressData;
  if (bluetoothAddressData)
  {
    [v28 encodeObject:bluetoothAddressData forKey:@"btAd"];
    v4 = v28;
  }

  if (self->_bobbleCapability)
  {
    [v28 encodeInteger:? forKey:?];
    v4 = v28;
  }

  if (self->_bobbleConfig)
  {
    [v28 encodeInteger:? forKey:?];
    v4 = v28;
  }

  if (self->_cameraControlCapability)
  {
    [v28 encodeInteger:? forKey:?];
    v4 = v28;
  }

  if (self->_caseSoundCapability)
  {
    [v28 encodeInteger:? forKey:?];
    v4 = v28;
  }

  if (self->_chargingReminderEnabled)
  {
    [v28 encodeInteger:? forKey:?];
    v4 = v28;
  }

  if (self->_clickHoldModeLeft)
  {
    [v28 encodeInteger:? forKey:?];
    v4 = v28;
  }

  if (self->_clickHoldModeRight)
  {
    [v28 encodeInteger:? forKey:?];
    v4 = v28;
  }

  if (self->_conversationDetectCapability)
  {
    [v28 encodeInteger:? forKey:?];
    v4 = v28;
  }

  if (self->_conversationDetectConfig)
  {
    [v28 encodeInteger:? forKey:?];
    v4 = v28;
  }

  if (self->_crownRotationDirection)
  {
    [v28 encodeInteger:? forKey:?];
    v4 = v28;
  }

  if (self->_declineDismissSkipConfig)
  {
    [v28 encodeInteger:? forKey:?];
    v4 = v28;
  }

  if (self->_detectedHeadGesture)
  {
    [v28 encodeInteger:? forKey:?];
    v4 = v28;
  }

  if (self->_doubleTapActionLeft)
  {
    [v28 encodeInteger:? forKey:?];
    v4 = v28;
  }

  if (self->_doubleTapActionRight)
  {
    [v28 encodeInteger:? forKey:?];
    v4 = v28;
  }

  if (self->_doubleTapCapability)
  {
    [v28 encodeInteger:? forKey:?];
    v4 = v28;
  }

  if (self->_dynamicEndOfChargeCapability)
  {
    [v28 encodeInteger:? forKey:?];
    v4 = v28;
  }

  if (self->_dynamicEndOfChargeEnabled)
  {
    [v28 encodeInteger:? forKey:?];
    v4 = v28;
  }

  if (self->_dynamicEndOfChargeState)
  {
    [v28 encodeInteger:? forKey:?];
    v4 = v28;
  }

  if (self->_dynamicEndOfChargeTempDisabled)
  {
    [v28 encodeInteger:? forKey:?];
    v4 = v28;
  }

  if (self->_earTipFitTestCapability)
  {
    [v28 encodeInteger:? forKey:?];
    v4 = v28;
  }

  if (self->_endCallCapability)
  {
    [v28 encodeInteger:? forKey:?];
    v4 = v28;
  }

  if (self->_endCallConfig)
  {
    [v28 encodeInteger:? forKey:?];
    v4 = v28;
  }

  if (self->_enhancedTransparencyVersion)
  {
    [v28 encodeInteger:? forKey:?];
    v4 = v28;
  }

  if (self->_farFieldUplinkCapability)
  {
    [v28 encodeInteger:? forKey:?];
    v4 = v28;
  }

  if (self->_farFieldSessionOnGoing)
  {
    [v28 encodeInteger:? forKey:?];
    v4 = v28;
  }

  firmwareVersion = self->_firmwareVersion;
  if (firmwareVersion)
  {
    [v28 encodeObject:firmwareVersion forKey:@"frmV"];
    v4 = v28;
  }

  if (self->_frequencyBand)
  {
    [v28 encodeInteger:? forKey:?];
    v4 = v28;
  }

  gapaFlags = self->_gapaFlags;
  if (gapaFlags)
  {
    [v28 encodeInt64:gapaFlags forKey:@"gapa"];
    v4 = v28;
  }

  if (self->_guestPaired)
  {
    [v28 encodeInteger:? forKey:?];
    v4 = v28;
  }

  if (self->_headGestureToggle)
  {
    [v28 encodeInteger:? forKey:?];
    v4 = v28;
  }

  if (self->_healthKitDataWriteAllowed)
  {
    [v28 encodeInteger:? forKey:?];
    v4 = v28;
  }

  if (self->_hearingAidCapability)
  {
    [v28 encodeInteger:? forKey:?];
    v4 = v28;
  }

  if (self->_hearingAidEnabled)
  {
    [v28 encodeInteger:? forKey:?];
    v4 = v28;
  }

  if (self->_hearingAidEnrolled)
  {
    [v28 encodeInteger:? forKey:?];
    v4 = v28;
  }

  if (self->_hearingAidGainSwipeEnabled)
  {
    [v28 encodeInteger:? forKey:?];
    v4 = v28;
  }

  if (self->_hearingAidV2Capability)
  {
    [v28 encodeInteger:? forKey:?];
    v4 = v28;
  }

  if (self->_hearingAssistEnabled)
  {
    [v28 encodeInteger:? forKey:?];
    v4 = v28;
  }

  if (self->_hearingProtectionCapability)
  {
    [v28 encodeInteger:? forKey:?];
    v4 = v28;
  }

  if (self->_hearingProtectionPPECapability)
  {
    [v28 encodeInteger:? forKey:?];
    v4 = v28;
  }

  hearingProtectionPPECapLevel = self->_hearingProtectionPPECapLevel;
  if (hearingProtectionPPECapLevel)
  {
    [v28 encodeInt64:hearingProtectionPPECapLevel forKey:@"ppeL"];
    v4 = v28;
  }

  if (self->_hearingProtectionPPEEnabled)
  {
    [v28 encodeInteger:? forKey:?];
    v4 = v28;
  }

  if (self->_hearingTestCapability)
  {
    [v28 encodeInteger:? forKey:?];
    v4 = v28;
  }

  if (self->_heartRateMonitorCapability)
  {
    [v28 encodeInteger:? forKey:?];
    v4 = v28;
  }

  if (self->_heartRateMonitorEnabled)
  {
    [v28 encodeInteger:? forKey:?];
    v4 = v28;
  }

  if (self->_hideEarDetectionCapability)
  {
    [v28 encodeInteger:? forKey:?];
    v4 = v28;
  }

  if (self->_hideOffListeningModeCapability)
  {
    [v28 encodeInteger:? forKey:?];
    v4 = v28;
  }

  identifier = self->_identifier;
  if (identifier)
  {
    [v28 encodeObject:identifier forKey:@"did"];
    v4 = v28;
  }

  listeningMode = self->_listeningMode;
  if (listeningMode)
  {
    [v28 encodeInteger:listeningMode forKey:@"lsnM"];
    v4 = v28;
  }

  listeningModeConfigs = self->_listeningModeConfigs;
  if (listeningModeConfigs)
  {
    [v28 encodeInt64:listeningModeConfigs forKey:@"lsMC"];
    v4 = v28;
  }

  if (self->_listeningModeOffAllowed)
  {
    [v28 encodeInteger:? forKey:?];
    v4 = v28;
  }

  if (self->_microphoneMode)
  {
    [v28 encodeInteger:? forKey:?];
    v4 = v28;
  }

  model = self->_model;
  if (model)
  {
    [v28 encodeObject:model forKey:@"modl"];
    v4 = v28;
  }

  if (self->_muteControlCapability)
  {
    [v28 encodeInteger:? forKey:?];
    v4 = v28;
  }

  if (self->_muteControlConfig)
  {
    [v28 encodeInteger:? forKey:?];
    v4 = v28;
  }

  name = self->_name;
  if (name)
  {
    [v28 encodeObject:name forKey:@"name"];
    v4 = v28;
  }

  if (self->_optimizedBatteryChargingState)
  {
    [v28 encodeInteger:? forKey:?];
    v4 = v28;
  }

  if (self->_ovadStreamingCapability)
  {
    [v28 encodeInteger:? forKey:?];
    v4 = v28;
  }

  if (self->_personalTranslatorCapability)
  {
    [v28 encodeInteger:? forKey:?];
    v4 = v28;
  }

  if (self->_placementMode)
  {
    [v28 encodeInteger:? forKey:?];
    v4 = v28;
  }

  if (self->_pmeEverywhereCapability)
  {
    [v28 encodeInteger:? forKey:?];
    v4 = v28;
  }

  primaryPlacement = self->_primaryPlacement;
  if (primaryPlacement)
  {
    [v28 encodeInteger:primaryPlacement forKey:@"prpl"];
    v4 = v28;
  }

  productID = self->_productID;
  if (productID)
  {
    [v28 encodeInt64:productID forKey:@"prID"];
    v4 = v28;
  }

  productName = self->_productName;
  if (productName)
  {
    [v28 encodeObject:productName forKey:@"prN"];
    v4 = v28;
  }

  if (self->_rawGesturesConfigFlags)
  {
    [v28 encodeInteger:? forKey:?];
    v4 = v28;
  }

  if (self->_remoteCameraControlConfig)
  {
    [v28 encodeInteger:? forKey:?];
    v4 = v28;
  }

  if (self->_routed)
  {
    [v28 encodeBool:1 forKey:@"rutd"];
    v4 = v28;
  }

  if (self->_classicRSSI)
  {
    [v28 encodeInteger:? forKey:?];
    v4 = v28;
  }

  secondaryPlacement = self->_secondaryPlacement;
  if (secondaryPlacement)
  {
    [v28 encodeInteger:secondaryPlacement forKey:@"scpl"];
    v4 = v28;
  }

  if (self->_selectiveSpeechListeningCapability)
  {
    [v28 encodeInteger:? forKey:?];
    v4 = v28;
  }

  if (self->_selectiveSpeechListeningConfig)
  {
    [v28 encodeInteger:? forKey:?];
    v4 = v28;
  }

  serialNumber = self->_serialNumber;
  if (serialNumber)
  {
    [v28 encodeObject:serialNumber forKey:@"sn"];
    v4 = v28;
  }

  serialNumberLeft = self->_serialNumberLeft;
  if (serialNumberLeft)
  {
    [v28 encodeObject:serialNumberLeft forKey:@"snLe"];
    v4 = v28;
  }

  serialNumberRight = self->_serialNumberRight;
  if (serialNumberRight)
  {
    [v28 encodeObject:serialNumberRight forKey:@"snRi"];
    v4 = v28;
  }

  if (self->_siriMultitoneCapability)
  {
    [v28 encodeInteger:? forKey:?];
    v4 = v28;
  }

  if (self->_siriMultitoneEnabled)
  {
    [v28 encodeInteger:? forKey:?];
    v4 = v28;
  }

  if (self->_sleepDetectionCapability)
  {
    [v28 encodeInteger:? forKey:?];
    v4 = v28;
  }

  if (self->_sleepDetectionEnabled)
  {
    [v28 encodeInteger:? forKey:?];
    v4 = v28;
  }

  if (self->_smartRoutingCapability)
  {
    [v28 encodeInteger:? forKey:?];
    v4 = v28;
  }

  if (self->_smartRoutingMode)
  {
    [v28 encodeInteger:? forKey:?];
    v4 = v28;
  }

  smartRoutingStateFlags = self->_smartRoutingStateFlags;
  if (smartRoutingStateFlags)
  {
    [v28 encodeInt64:smartRoutingStateFlags forKey:@"smRtS"];
    v4 = v28;
  }

  if (self->_spatialAudioAllowed)
  {
    [v28 encodeInteger:? forKey:?];
    v4 = v28;
  }

  if (self->_streamStateAoS)
  {
    [v28 encodeInteger:? forKey:?];
    v4 = v28;
  }

  if (self->_temporaryManagedPairedStatus)
  {
    [v28 encodeInteger:? forKey:?];
    v4 = v28;
  }

  if (self->_vendorID)
  {
    [v28 encodeInteger:? forKey:?];
    v4 = v28;
  }
}

- (unsigned)CBCapToAACap:(unsigned __int8)a3
{
  if (a3)
  {
    return 2 * (a3 == 1);
  }

  else
  {
    return 1;
  }
}

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = self;
  objc_sync_enter(v4);
  v5 = [objc_opt_class() allocWithZone:a3];
  [v5 setAcceptReplyPlayPauseConfig:v4->_acceptReplyPlayPauseConfig];
  [v5 setAdaptiveVolumeCapability:v4->_adaptiveVolumeCapability];
  [v5 setAdaptiveVolumeConfig:v4->_adaptiveVolumeConfig];
  v6 = [(NSDate *)v4->_audiogramEnrolledTimestamp copyWithZone:a3];
  [v5 setAudiogramEnrolledTimestamp:v6];

  [v5 setAudioStreamState:v4->_audioStreamState];
  [v5 setAutoANCCapability:v4->_autoANCCapability];
  [v5 setAutoANCStrength:v4->_autoANCStrength];
  v7 = [(AADeviceBatteryInfo *)v4->_batteryInfo copy];
  [v5 setBatteryInfo:v7];

  v8 = [(NSData *)v4->_bluetoothAddressData copyWithZone:a3];
  [v5 setBluetoothAddressData:v8];

  [v5 setBobbleCapability:v4->_bobbleCapability];
  [v5 setBobbleConfig:v4->_bobbleConfig];
  [v5 setCameraControlCapability:v4->_cameraControlCapability];
  [v5 setCaseSoundCapability:v4->_caseSoundCapability];
  [v5 setChargingReminderEnabled:v4->_chargingReminderEnabled];
  [v5 setClassicRSSI:v4->_classicRSSI];
  [v5 setClickHoldModeLeft:v4->_clickHoldModeLeft];
  [v5 setClickHoldModeRight:v4->_clickHoldModeRight];
  [v5 setCloudRecordInfoLoaded:v4->_cloudRecordInfoLoaded];
  [v5 setConnected:v4->_connected];
  [v5 setConnectedAADeviceInfoReceived:v4->_connectedAADeviceInfoReceived];
  [v5 setConnectedCBDeviceReceived:v4->_connectedCBDeviceReceived];
  [v5 setConversationDetectCapability:v4->_conversationDetectCapability];
  [v5 setConversationDetectConfig:v4->_conversationDetectConfig];
  v9 = [(CBDevice *)v4->_coreBluetoothDevice copy];
  v10 = v5[31];
  v5[31] = v9;

  [v5 setCrownRotationDirection:v4->_crownRotationDirection];
  [v5 setDeclineDismissSkipConfig:v4->_declineDismissSkipConfig];
  [v5 setDetectedHeadGesture:v4->_detectedHeadGesture];
  [v5 setDoubleTapActionLeft:v4->_doubleTapActionLeft];
  [v5 setDoubleTapActionRight:v4->_doubleTapActionRight];
  [v5 setDoubleTapCapability:v4->_doubleTapCapability];
  [v5 setDynamicEndOfChargeCapability:v4->_dynamicEndOfChargeCapability];
  [v5 setDynamicEndOfChargeEnabled:v4->_dynamicEndOfChargeEnabled];
  [v5 setDynamicEndOfChargeState:{-[AudioAccessoryDevice dynamicEndOfChargeState](v4, "dynamicEndOfChargeState")}];
  [v5 setDynamicEndOfChargeTempDisabled:v4->_dynamicEndOfChargeTempDisabled];
  [v5 setEarTipFitTestCapability:v4->_earTipFitTestCapability];
  [v5 setEndCallCapability:v4->_endCallCapability];
  [v5 setEndCallConfig:v4->_endCallConfig];
  [v5 setEnhancedTransparencyVersion:v4->_enhancedTransparencyVersion];
  [v5 setFarFieldUplinkCapability:v4->_farFieldUplinkCapability];
  [v5 setFarFieldSessionOnGoing:v4->_farFieldSessionOnGoing];
  [v5 setFrequencyBand:v4->_frequencyBand];
  v11 = [(NSString *)v4->_firmwareVersion copyWithZone:a3];
  [v5 setFirmwareVersion:v11];

  [v5 setGapaFlags:v4->_gapaFlags];
  [v5 setGuestPaired:v4->_guestPaired];
  [v5 setHeadGestureToggle:v4->_headGestureToggle];
  [v5 setHeadGestureProxCardShown:v4->_headGestureProxCardShown];
  [v5 setHealthKitDataWriteAllowed:v4->_healthKitDataWriteAllowed];
  [v5 setHearingAidCapability:v4->_hearingAidCapability];
  [v5 setHearingAidEnrolled:v4->_hearingAidEnrolled];
  [v5 setHearingAidEnabled:v4->_hearingAidEnabled];
  [v5 setHearingAidGainSwipeEnabled:v4->_hearingAidGainSwipeEnabled];
  [v5 setHearingAidV2Capability:v4->_hearingAidV2Capability];
  [v5 setHearingAssistEnabled:v4->_hearingAssistEnabled];
  [v5 setHearingProtectionCapability:v4->_hearingProtectionCapability];
  [v5 setHearingProtectionPPECapability:v4->_hearingProtectionPPECapability];
  [v5 setHearingProtectionPPECapLevel:v4->_hearingProtectionPPECapLevel];
  [v5 setHearingProtectionPPEEnabled:v4->_hearingProtectionPPEEnabled];
  [v5 setHearingTestCapability:v4->_hearingTestCapability];
  [v5 setHeartRateMonitorCapability:v4->_heartRateMonitorCapability];
  [v5 setHeartRateMonitorCapabilityChanged:v4->_heartRateMonitorCapabilityChanged];
  [v5 setHeartRateMonitorCapabilityValueOriginatedFromDevice:v4->_heartRateMonitorCapabilityValueOriginatedFromDevice];
  [v5 setHeartRateMonitorEnabled:v4->_heartRateMonitorEnabled];
  [v5 setHideEarDetectionCapability:v4->_hideEarDetectionCapability];
  [v5 setHideOffListeningModeCapability:v4->_hideOffListeningModeCapability];
  v12 = [(NSString *)v4->_identifier copyWithZone:a3];
  [v5 setIdentifier:v12];

  v13 = [(NSDate *)v4->_lastSeenConnectedTime copyWithZone:a3];
  [v5 setLastSeenConnectedTime:v13];

  [v5 setListeningMode:v4->_listeningMode];
  [v5 setListeningModeConfigs:v4->_listeningModeConfigs];
  [v5 setListeningModeOffAllowed:v4->_listeningModeOffAllowed];
  [v5 setMicrophoneMode:v4->_microphoneMode];
  v14 = [(NSString *)v4->_model copyWithZone:a3];
  [v5 setModel:v14];

  [v5 setMuteControlCapability:v4->_muteControlCapability];
  [v5 setMuteControlConfig:v4->_muteControlConfig];
  v15 = [(NSString *)v4->_name copyWithZone:a3];
  [v5 setName:v15];

  [v5 setOnConnectionActionsCalled:v4->_onConnectionActionsCalled];
  [v5 setOptimizedBatteryChargingState:v4->_optimizedBatteryChargingState];
  [v5 setOvadStreamingCapability:v4->_ovadStreamingCapability];
  [v5 setPaired:v4->_paired];
  [v5 setPairedAADeviceInfoReceived:v4->_pairedAADeviceInfoReceived];
  [v5 setPairedCBDeviceReceived:v4->_pairedCBDeviceReceived];
  [v5 setPeerAutoANCCapability:v4->_peerAutoANCCapability];
  [v5 setPersonalTranslatorCapability:v4->_personalTranslatorCapability];
  [v5 setPlacementMode:v4->_placementMode];
  [v5 setPmeEverywhereCapability:v4->_pmeEverywhereCapability];
  [v5 setPrimaryPlacement:v4->_primaryPlacement];
  [v5 setProductID:v4->_productID];
  v16 = [(NSString *)v4->_productName copyWithZone:a3];
  [v5 setProductName:v16];

  [v5 setRawGesturesConfigFlags:v4->_rawGesturesConfigFlags];
  [v5 setRemoteCameraControlConfig:v4->_remoteCameraControlConfig];
  [v5 setRouted:{-[AudioAccessoryDevice routed](v4, "routed")}];
  [v5 setSecondaryPlacement:v4->_secondaryPlacement];
  [v5 setSelectiveSpeechListeningCapability:v4->_selectiveSpeechListeningCapability];
  [v5 setSelectiveSpeechListeningConfig:v4->_selectiveSpeechListeningConfig];
  v17 = [(NSString *)v4->_serialNumber copyWithZone:a3];
  [v5 setSerialNumber:v17];

  v18 = [(NSString *)v4->_serialNumberLeft copyWithZone:a3];
  [v5 setSerialNumberLeft:v18];

  v19 = [(NSString *)v4->_serialNumberRight copyWithZone:a3];
  [v5 setSerialNumberRight:v19];

  [v5 setSiriMultitoneCapability:v4->_siriMultitoneCapability];
  [v5 setSiriMultitoneEnabled:v4->_siriMultitoneEnabled];
  [v5 setSleepDetectionCapability:v4->_sleepDetectionCapability];
  [v5 setSleepDetectionEnabled:v4->_sleepDetectionEnabled];
  [v5 setSmartRoutingCapability:v4->_smartRoutingCapability];
  [v5 setSmartRoutingMode:v4->_smartRoutingMode];
  [v5 setSmartRoutingStateFlags:v4->_smartRoutingStateFlags];
  [v5 setSpatialAudioAllowed:v4->_spatialAudioAllowed];
  [v5 setStreamStateAoS:v4->_streamStateAoS];
  [v5 setTemporaryManagedPairedStatus:v4->_temporaryManagedPairedStatus];
  [v5 setVendorID:v4->_vendorID];
  objc_sync_exit(v4);

  return v5;
}

- (id)descriptionWithLevel:(int)a3
{
  v303 = a3;
  identifier = self->_identifier;
  NSAppendPrintF_safe();
  v4 = 0;
  v5 = self->_name;
  v6 = v5;
  if (v5)
  {
    identifier = v5;
    NSAppendPrintF_safe();
    v7 = v4;

    v4 = v7;
  }

  v8 = self->_model;
  v9 = v8;
  if (v8)
  {
    identifier = v8;
    NSAppendPrintF_safe();
    v10 = v4;

    v4 = v10;
  }

  if (self->_productID)
  {
    identifier = self->_productID;
    NSAppendPrintF_safe();
    v11 = v4;

    v4 = v11;
  }

  NSAppendPrintF_safe();
  v12 = v4;

  v13 = [v12 length];
  NSAppendPrintF_safe();
  v14 = v12;

  autoANCCapability = self->_autoANCCapability;
  if (autoANCCapability)
  {
    if (autoANCCapability > 3)
    {
      v16 = "?";
    }

    else
    {
      v16 = off_278CDDA98[autoANCCapability - 1];
    }

    v289 = ShorthandString(v16);
    NSAppendPrintF_safe();
    v17 = v14;

    v14 = v17;
  }

  autoANCStrength = self->_autoANCStrength;
  if (autoANCStrength)
  {
    v19 = "High";
    v20 = "?";
    if (autoANCStrength == 1050)
    {
      v20 = "Medium";
    }

    if (autoANCStrength != 1100)
    {
      v19 = v20;
    }

    if (autoANCStrength == 1000)
    {
      v21 = "Low";
    }

    else
    {
      v21 = v19;
    }

    v289 = ShorthandString(v21);
    NSAppendPrintF_safe();
    v22 = v14;

    v14 = v22;
  }

  if ([v14 length] > v13)
  {
    NSAppendPrintF_safe();
    v23 = v14;

    v14 = v23;
  }

  v24 = [v14 length];
  batteryInfo = self->_batteryInfo;
  if (batteryInfo)
  {
    v26 = [(AADeviceBatteryInfo *)batteryInfo batteryMain];
    v27 = v26;
    if (v26)
    {
      v290 = v26;
      NSAppendPrintF_safe();
      v28 = v14;

      v14 = v28;
    }

    v29 = [(AADeviceBatteryInfo *)self->_batteryInfo batteryCase];
    v30 = v29;
    if (v29)
    {
      v290 = v29;
      NSAppendPrintF_safe();
      v31 = v14;

      v14 = v31;
    }

    v32 = [(AADeviceBatteryInfo *)self->_batteryInfo batteryCombinedLeftRight];
    v33 = v32;
    if (v32)
    {
      v290 = v32;
      NSAppendPrintF_safe();
      v34 = v14;

      v14 = v34;
    }

    v35 = [(AADeviceBatteryInfo *)self->_batteryInfo batteryLeft];
    v36 = v35;
    if (v35)
    {
      v290 = v35;
      NSAppendPrintF_safe();
      v37 = v14;

      v14 = v37;
    }

    v38 = [(AADeviceBatteryInfo *)self->_batteryInfo batteryRight];
    v39 = v38;
    if (v38)
    {
      v290 = v38;
      NSAppendPrintF_safe();
      v40 = v14;

      v14 = v40;
    }

    if ([v14 length] > v24)
    {
      NSAppendPrintF_safe();
      v41 = v14;

      v14 = v41;
    }

    v24 = [v14 length];
  }

  NSAppendPrintF_safe();
  v42 = v14;

  bobbleCapability = self->_bobbleCapability;
  if (self->_bobbleCapability)
  {
    if (bobbleCapability == 1)
    {
      v44 = "Unsupported";
    }

    else
    {
      v44 = "?";
    }

    if (bobbleCapability == 2)
    {
      v45 = "Supported";
    }

    else
    {
      v45 = v44;
    }

    v290 = ShorthandString(v45);
    NSAppendPrintF_safe();
    v46 = v42;

    v42 = v46;
  }

  bobbleConfig = self->_bobbleConfig;
  if (self->_bobbleConfig)
  {
    if (bobbleConfig == 1)
    {
      v48 = "Disabled";
    }

    else
    {
      v48 = "?";
    }

    if (bobbleConfig == 2)
    {
      v49 = "Enabled";
    }

    else
    {
      v49 = v48;
    }

    v290 = ShorthandString(v49);
    NSAppendPrintF_safe();
    v50 = v42;

    v42 = v50;
  }

  if ([v42 length] > v24)
  {
    NSAppendPrintF_safe();
    v51 = v42;

    v42 = v51;
  }

  v52 = [v42 length];
  NSAppendPrintF_safe();
  v53 = v42;

  cameraControlCapability = self->_cameraControlCapability;
  if (self->_cameraControlCapability)
  {
    if (cameraControlCapability == 1)
    {
      v55 = "Unsupported";
    }

    else
    {
      v55 = "?";
    }

    if (cameraControlCapability == 2)
    {
      v56 = "Supported";
    }

    else
    {
      v56 = v55;
    }

    v291 = ShorthandString(v56);
    NSAppendPrintF_safe();
    v57 = v53;

    v53 = v57;
  }

  remoteCameraControlConfig = self->_remoteCameraControlConfig;
  if (self->_remoteCameraControlConfig)
  {
    if (remoteCameraControlConfig > 3)
    {
      v59 = "?";
    }

    else
    {
      v59 = off_278CDDAB0[remoteCameraControlConfig - 1];
    }

    v291 = ShorthandString(v59);
    NSAppendPrintF_safe();
    v60 = v53;

    v53 = v60;
  }

  if ([v53 length] > v52)
  {
    NSAppendPrintF_safe();
    v61 = v53;

    v53 = v61;
  }

  v62 = [v53 length];
  NSAppendPrintF_safe();
  v63 = v53;

  v64 = [(AudioAccessoryDevice *)self chargingReminderCapability];
  if (v64)
  {
    if (v64 == 1)
    {
      v65 = "Unsupported";
    }

    else
    {
      v65 = "?";
    }

    if (v64 == 2)
    {
      v66 = "Supported";
    }

    else
    {
      v66 = v65;
    }

    v292 = ShorthandString(v66);
    NSAppendPrintF_safe();
    v67 = v63;

    v63 = v67;
  }

  chargingReminderEnabled = self->_chargingReminderEnabled;
  if (self->_chargingReminderEnabled)
  {
    if (chargingReminderEnabled == 1)
    {
      v69 = "Yes";
    }

    else
    {
      v69 = "?";
    }

    if (chargingReminderEnabled == 2)
    {
      v70 = "No";
    }

    else
    {
      v70 = v69;
    }

    v292 = ShorthandString(v70);
    NSAppendPrintF_safe();
    v71 = v63;

    v63 = v71;
  }

  NSAppendPrintF_safe();
  v72 = v63;

  dynamicEndOfChargeCapability = self->_dynamicEndOfChargeCapability;
  if (self->_dynamicEndOfChargeCapability)
  {
    if (dynamicEndOfChargeCapability == 1)
    {
      v74 = "Unsupported";
    }

    else
    {
      v74 = "?";
    }

    if (dynamicEndOfChargeCapability == 2)
    {
      v75 = "Supported";
    }

    else
    {
      v75 = v74;
    }

    v292 = ShorthandString(v75);
    NSAppendPrintF_safe();
    v76 = v72;

    v72 = v76;
  }

  v77 = [(AudioAccessoryDevice *)self dynamicEndOfChargeState];
  if (v77)
  {
    if (v77 > 3)
    {
      v78 = "?";
    }

    else
    {
      v78 = off_278CDDAC8[v77 - 1];
    }

    v293 = ShorthandString(v78);
    NSAppendPrintF_safe();
    v79 = v72;

    v72 = v79;
  }

  NSAppendPrintF_safe();
  v80 = v72;

  v81 = [(AudioAccessoryDevice *)self optimizedBatteryChargingCapability];
  if (v81)
  {
    if (v81 == 1)
    {
      v82 = "Unsupported";
    }

    else
    {
      v82 = "?";
    }

    if (v81 == 2)
    {
      v83 = "Supported";
    }

    else
    {
      v83 = v82;
    }

    v293 = ShorthandString(v83);
    NSAppendPrintF_safe();
    v84 = v80;

    v80 = v84;
  }

  optimizedBatteryChargingState = self->_optimizedBatteryChargingState;
  if (self->_optimizedBatteryChargingState)
  {
    if (optimizedBatteryChargingState > 3)
    {
      v86 = "?";
    }

    else
    {
      v86 = off_278CDDAC8[optimizedBatteryChargingState - 1];
    }

    v293 = ShorthandString(v86);
    NSAppendPrintF_safe();
    v87 = v80;

    v80 = v87;
  }

  if ([v80 length] > v62)
  {
    NSAppendPrintF_safe();
    v88 = v80;

    v80 = v88;
  }

  v89 = [v80 length];
  NSAppendPrintF_safe();
  v90 = v80;

  detectedHeadGesture = self->_detectedHeadGesture;
  if (self->_detectedHeadGesture)
  {
    if (detectedHeadGesture > 4)
    {
      v92 = "?";
    }

    else
    {
      v92 = off_278CDDAE0[detectedHeadGesture - 1];
    }

    v294 = ShorthandString(v92);
    NSAppendPrintF_safe();
    v93 = v90;

    v90 = v93;
  }

  headGestureToggle = self->_headGestureToggle;
  if (self->_headGestureToggle)
  {
    if (headGestureToggle == 1)
    {
      v95 = "Yes";
    }

    else
    {
      v95 = "?";
    }

    if (headGestureToggle == 2)
    {
      v96 = "No";
    }

    else
    {
      v96 = v95;
    }

    v294 = ShorthandString(v96);
    NSAppendPrintF_safe();
    v97 = v90;

    v90 = v97;
  }

  acceptReplyPlayPauseConfig = self->_acceptReplyPlayPauseConfig;
  if (self->_acceptReplyPlayPauseConfig)
  {
    if (acceptReplyPlayPauseConfig > 3)
    {
      v99 = "?";
    }

    else
    {
      v99 = off_278CDDB00[acceptReplyPlayPauseConfig - 1];
    }

    v294 = ShorthandString(v99);
    NSAppendPrintF_safe();
    v100 = v90;

    v90 = v100;
  }

  declineDismissSkipConfig = self->_declineDismissSkipConfig;
  if (self->_declineDismissSkipConfig)
  {
    if (declineDismissSkipConfig > 3)
    {
      v102 = "?";
    }

    else
    {
      v102 = off_278CDDB00[declineDismissSkipConfig - 1];
    }

    v294 = ShorthandString(v102);
    NSAppendPrintF_safe();
    v103 = v90;

    v90 = v103;
  }

  if (self->_rawGesturesConfigFlags)
  {
    v294 = CUPrintFlags32();
    NSAppendPrintF_safe();
    v104 = v90;

    v90 = v104;
  }

  if ([v90 length] > v89)
  {
    NSAppendPrintF_safe();
    v105 = v90;

    v90 = v105;
  }

  v106 = [v90 length];
  NSAppendPrintF_safe();
  v107 = v90;

  hearingAidCapability = self->_hearingAidCapability;
  if (self->_hearingAidCapability)
  {
    if (hearingAidCapability == 1)
    {
      v109 = "Disabled";
    }

    else
    {
      v109 = "?";
    }

    if (hearingAidCapability == 2)
    {
      v110 = "Enabled";
    }

    else
    {
      v110 = v109;
    }

    hearingProtectionPPECapLevel = ShorthandString(v110);
    NSAppendPrintF_safe();
    v111 = v107;

    v107 = v111;
  }

  hearingAidEnabled = self->_hearingAidEnabled;
  if (self->_hearingAidEnabled)
  {
    if (hearingAidEnabled == 1)
    {
      v113 = "Yes";
    }

    else
    {
      v113 = "?";
    }

    if (hearingAidEnabled == 2)
    {
      v114 = "No";
    }

    else
    {
      v114 = v113;
    }

    hearingProtectionPPECapLevel = ShorthandString(v114);
    NSAppendPrintF_safe();
    v115 = v107;

    v107 = v115;
  }

  hearingAidEnrolled = self->_hearingAidEnrolled;
  if (self->_hearingAidEnrolled)
  {
    if (hearingAidEnrolled == 1)
    {
      v117 = "Yes";
    }

    else
    {
      v117 = "?";
    }

    if (hearingAidEnrolled == 2)
    {
      v118 = "No";
    }

    else
    {
      v118 = v117;
    }

    hearingProtectionPPECapLevel = ShorthandString(v118);
    NSAppendPrintF_safe();
    v119 = v107;

    v107 = v119;
  }

  hearingAidGainSwipeEnabled = self->_hearingAidGainSwipeEnabled;
  if (self->_hearingAidGainSwipeEnabled)
  {
    if (hearingAidGainSwipeEnabled == 1)
    {
      v121 = "Yes";
    }

    else
    {
      v121 = "?";
    }

    if (hearingAidGainSwipeEnabled == 2)
    {
      v122 = "No";
    }

    else
    {
      v122 = v121;
    }

    hearingProtectionPPECapLevel = ShorthandString(v122);
    NSAppendPrintF_safe();
    v123 = v107;

    v107 = v123;
  }

  hearingAidV2Capability = self->_hearingAidV2Capability;
  if (self->_hearingAidV2Capability)
  {
    if (hearingAidV2Capability == 1)
    {
      v125 = "Unsupported";
    }

    else
    {
      v125 = "?";
    }

    if (hearingAidV2Capability == 2)
    {
      v126 = "Supported";
    }

    else
    {
      v126 = v125;
    }

    hearingProtectionPPECapLevel = ShorthandString(v126);
    NSAppendPrintF_safe();
    v127 = v107;

    v107 = v127;
  }

  hearingAssistEnabled = self->_hearingAssistEnabled;
  if (self->_hearingAssistEnabled)
  {
    if (hearingAssistEnabled == 1)
    {
      v129 = "Yes";
    }

    else
    {
      v129 = "?";
    }

    if (hearingAssistEnabled == 2)
    {
      v130 = "No";
    }

    else
    {
      v130 = v129;
    }

    hearingProtectionPPECapLevel = ShorthandString(v130);
    NSAppendPrintF_safe();
    v131 = v107;

    v107 = v131;
  }

  NSAppendPrintF_safe();
  v132 = v107;

  hearingProtectionCapability = self->_hearingProtectionCapability;
  if (self->_hearingProtectionCapability)
  {
    if (hearingProtectionCapability == 1)
    {
      v134 = "Unsupported";
    }

    else
    {
      v134 = "?";
    }

    if (hearingProtectionCapability == 2)
    {
      v135 = "Supported";
    }

    else
    {
      v135 = v134;
    }

    hearingProtectionPPECapLevel = ShorthandString(v135);
    NSAppendPrintF_safe();
    v136 = v132;

    v132 = v136;
  }

  NSAppendPrintF_safe();
  v137 = v132;

  hearingProtectionPPECapability = self->_hearingProtectionPPECapability;
  if (self->_hearingProtectionPPECapability)
  {
    if (hearingProtectionPPECapability == 1)
    {
      v139 = "Unsupported";
    }

    else
    {
      v139 = "?";
    }

    if (hearingProtectionPPECapability == 2)
    {
      v140 = "Supported";
    }

    else
    {
      v140 = v139;
    }

    hearingProtectionPPECapLevel = ShorthandString(v140);
    NSAppendPrintF_safe();
    v141 = v137;

    v137 = v141;
  }

  if (self->_hearingProtectionPPECapLevel)
  {
    hearingProtectionPPECapLevel = self->_hearingProtectionPPECapLevel;
    NSAppendPrintF_safe();
    v142 = v137;

    v137 = v142;
  }

  hearingProtectionPPEEnabled = self->_hearingProtectionPPEEnabled;
  if (self->_hearingProtectionPPEEnabled)
  {
    if (hearingProtectionPPEEnabled == 1)
    {
      v144 = "Yes";
    }

    else
    {
      v144 = "?";
    }

    if (hearingProtectionPPEEnabled == 2)
    {
      v145 = "No";
    }

    else
    {
      v145 = v144;
    }

    hearingProtectionPPECapLevel = ShorthandString(v145);
    NSAppendPrintF_safe();
    v146 = v137;

    v137 = v146;
  }

  NSAppendPrintF_safe();
  v147 = v137;

  hearingTestCapability = self->_hearingTestCapability;
  if (self->_hearingTestCapability)
  {
    if (hearingTestCapability == 1)
    {
      v149 = "Disabled";
    }

    else
    {
      v149 = "?";
    }

    if (hearingTestCapability == 2)
    {
      v150 = "Enabled";
    }

    else
    {
      v150 = v149;
    }

    hearingProtectionPPECapLevel = ShorthandString(v150);
    NSAppendPrintF_safe();
    v151 = v147;

    v147 = v151;
  }

  v152 = self->_audiogramEnrolledTimestamp;
  v153 = v152;
  if (v152)
  {
    hearingProtectionPPECapLevel = v152;
    NSAppendPrintF_safe();
    v154 = v147;

    v147 = v154;
  }

  if ([v147 length] > v106)
  {
    NSAppendPrintF_safe();
    v155 = v147;

    v147 = v155;
  }

  v156 = [v147 length];
  NSAppendPrintF_safe();
  v157 = v147;

  heartRateMonitorCapability = self->_heartRateMonitorCapability;
  if (self->_heartRateMonitorCapability)
  {
    if (heartRateMonitorCapability == 1)
    {
      v159 = "Unsupported";
    }

    else
    {
      v159 = "?";
    }

    if (heartRateMonitorCapability == 2)
    {
      v160 = "Supported";
    }

    else
    {
      v160 = v159;
    }

    v296 = ShorthandString(v160);
    NSAppendPrintF_safe();
    v161 = v157;

    v157 = v161;
  }

  heartRateMonitorEnabled = self->_heartRateMonitorEnabled;
  if (self->_heartRateMonitorEnabled)
  {
    if (heartRateMonitorEnabled == 1)
    {
      v163 = "Yes";
    }

    else
    {
      v163 = "?";
    }

    if (heartRateMonitorEnabled == 2)
    {
      v164 = "No";
    }

    else
    {
      v164 = v163;
    }

    v296 = ShorthandString(v164);
    NSAppendPrintF_safe();
    v165 = v157;

    v157 = v165;
  }

  if ([v157 length] > v156)
  {
    NSAppendPrintF_safe();
    v166 = v157;

    v157 = v166;
  }

  v167 = [v157 length];
  NSAppendPrintF_safe();
  v168 = v157;

  listeningMode = self->_listeningMode;
  if (listeningMode)
  {
    if (listeningMode > 4)
    {
      v170 = "?";
    }

    else
    {
      v170 = off_278CDDB18[listeningMode - 1];
    }

    v297 = ShorthandString(v170);
    NSAppendPrintF_safe();
    v171 = v168;

    v168 = v171;
  }

  if (self->_listeningModeConfigs)
  {
    v297 = CUPrintFlags32();
    NSAppendPrintF_safe();
    v172 = v168;

    v168 = v172;
  }

  listeningModeOffAllowed = self->_listeningModeOffAllowed;
  if (self->_listeningModeOffAllowed)
  {
    if (listeningModeOffAllowed == 1)
    {
      v174 = "Yes";
    }

    else
    {
      v174 = "?";
    }

    if (listeningModeOffAllowed == 2)
    {
      v175 = "No";
    }

    else
    {
      v175 = v174;
    }

    v297 = ShorthandString(v175);
    NSAppendPrintF_safe();
    v176 = v168;

    v168 = v176;
  }

  if ([v168 length] > v167)
  {
    NSAppendPrintF_safe();
    v177 = v168;

    v168 = v177;
  }

  v178 = [v168 length];
  NSAppendPrintF_safe();
  v179 = v168;

  placementMode = self->_placementMode;
  if (self->_placementMode)
  {
    v181 = "Enabled";
    if (placementMode != 1)
    {
      v181 = "?";
    }

    if (placementMode == 2)
    {
      v182 = "Disabled";
    }

    else
    {
      v182 = v181;
    }

    v298 = ShorthandString(v182);
    NSAppendPrintF_safe();
    v183 = v179;

    v179 = v183;
  }

  primaryPlacement = self->_primaryPlacement;
  if (primaryPlacement)
  {
    if (primaryPlacement > 7)
    {
      v185 = "?";
    }

    else
    {
      v185 = off_278CDDB38[primaryPlacement - 1];
    }

    v298 = ShorthandString(v185);
    NSAppendPrintF_safe();
    v186 = v179;

    v179 = v186;
  }

  secondaryPlacement = self->_secondaryPlacement;
  if (secondaryPlacement)
  {
    if (secondaryPlacement > 7)
    {
      v188 = "?";
    }

    else
    {
      v188 = off_278CDDB38[secondaryPlacement - 1];
    }

    v298 = ShorthandString(v188);
    NSAppendPrintF_safe();
    v189 = v179;

    v179 = v189;
  }

  if ([v179 length] > v178)
  {
    NSAppendPrintF_safe();
    v190 = v179;

    v179 = v190;
  }

  v191 = [v179 length];
  if (self->_smartRoutingStateFlags)
  {
    v299 = CUPrintFlags32();
    NSAppendPrintF_safe();
    v192 = v179;

    v179 = v192;
  }

  temporaryManagedPairedStatus = self->_temporaryManagedPairedStatus;
  if (self->_temporaryManagedPairedStatus)
  {
    if (temporaryManagedPairedStatus == 1)
    {
      v194 = "Yes";
    }

    else
    {
      v194 = "?";
    }

    if (temporaryManagedPairedStatus == 2)
    {
      v195 = "No";
    }

    else
    {
      v195 = v194;
    }

    v299 = ShorthandString(v195);
    NSAppendPrintF_safe();
    v196 = v179;

    v179 = v196;
  }

  if ([v179 length] > v191)
  {
    NSAppendPrintF_safe();
    v197 = v179;

    v179 = v197;
  }

  v198 = [v179 length];
  NSAppendPrintF_safe();
  v199 = v179;

  siriMultitoneCapability = self->_siriMultitoneCapability;
  if (self->_siriMultitoneCapability)
  {
    if (siriMultitoneCapability == 1)
    {
      v201 = "Unsupported";
    }

    else
    {
      v201 = "?";
    }

    if (siriMultitoneCapability == 2)
    {
      v202 = "Supported";
    }

    else
    {
      v202 = v201;
    }

    v300 = ShorthandString(v202);
    NSAppendPrintF_safe();
    v203 = v199;

    v199 = v203;
  }

  siriMultitoneEnabled = self->_siriMultitoneEnabled;
  if (self->_siriMultitoneEnabled)
  {
    if (siriMultitoneEnabled == 1)
    {
      v205 = "Yes";
    }

    else
    {
      v205 = "?";
    }

    if (siriMultitoneEnabled == 2)
    {
      v206 = "No";
    }

    else
    {
      v206 = v205;
    }

    v300 = ShorthandString(v206);
    NSAppendPrintF_safe();
    v207 = v199;

    v199 = v207;
  }

  if ([v199 length] > v198)
  {
    NSAppendPrintF_safe();
    v208 = v199;

    v199 = v208;
  }

  v209 = [v199 length];
  NSAppendPrintF_safe();
  v210 = v199;

  sleepDetectionCapability = self->_sleepDetectionCapability;
  if (self->_sleepDetectionCapability)
  {
    if (sleepDetectionCapability == 1)
    {
      v212 = "Unsupported";
    }

    else
    {
      v212 = "?";
    }

    if (sleepDetectionCapability == 2)
    {
      v213 = "Supported";
    }

    else
    {
      v213 = v212;
    }

    v301 = ShorthandString(v213);
    NSAppendPrintF_safe();
    v214 = v210;

    v210 = v214;
  }

  sleepDetectionEnabled = self->_sleepDetectionEnabled;
  if (self->_sleepDetectionEnabled)
  {
    if (sleepDetectionEnabled == 1)
    {
      v216 = "Yes";
    }

    else
    {
      v216 = "?";
    }

    if (sleepDetectionEnabled == 2)
    {
      v217 = "No";
    }

    else
    {
      v217 = v216;
    }

    v301 = ShorthandString(v217);
    NSAppendPrintF_safe();
    v218 = v210;

    v210 = v218;
  }

  if ([v210 length] > v209)
  {
    NSAppendPrintF_safe();
    v219 = v210;

    v210 = v219;
  }

  v220 = [v210 length];
  NSAppendPrintF_safe();
  v221 = v210;

  audioStreamState = self->_audioStreamState;
  if (audioStreamState)
  {
    if (audioStreamState > 3)
    {
      v223 = "?";
    }

    else
    {
      v223 = off_278CDDB70[audioStreamState - 1];
    }

    v302 = ShorthandString(v223);
    NSAppendPrintF_safe();
    v224 = v221;

    v221 = v224;
  }

  frequencyBand = self->_frequencyBand;
  if (self->_frequencyBand)
  {
    v226 = "2.4";
    if (frequencyBand != 1)
    {
      v226 = "?";
    }

    if (frequencyBand == 2)
    {
      v227 = "5";
    }

    else
    {
      v227 = v226;
    }

    v302 = ShorthandString(v227);
    NSAppendPrintF_safe();
    v228 = v221;

    v221 = v228;
  }

  streamStateAoS = self->_streamStateAoS;
  if (self->_streamStateAoS)
  {
    if (streamStateAoS > 3)
    {
      v230 = "?";
    }

    else
    {
      v230 = off_278CDDB88[streamStateAoS - 1];
    }

    v302 = ShorthandString(v230);
    NSAppendPrintF_safe();
    v231 = v221;

    v221 = v231;
  }

  if ([v221 length] > v220)
  {
    NSAppendPrintF_safe();
    v232 = v221;

    v221 = v232;
  }

  v233 = [v221 length];
  if ([v221 length] > v233)
  {
    NSAppendPrintF_safe();
    v234 = v221;

    v221 = v234;
  }

  [v221 length];
  NSAppendPrintF_safe();
  v235 = v221;

  caseSoundCapability = self->_caseSoundCapability;
  if (self->_caseSoundCapability)
  {
    if (caseSoundCapability == 1)
    {
      v237 = "Unsupported";
    }

    else
    {
      v237 = "?";
    }

    if (caseSoundCapability == 2)
    {
      v238 = "Supported";
    }

    else
    {
      v238 = v237;
    }

    ShorthandString(v238);
    NSAppendPrintF_safe();
    v239 = v235;

    v235 = v239;
  }

  earTipFitTestCapability = self->_earTipFitTestCapability;
  if (self->_earTipFitTestCapability)
  {
    if (earTipFitTestCapability == 1)
    {
      v241 = "Unsupported";
    }

    else
    {
      v241 = "?";
    }

    if (earTipFitTestCapability == 2)
    {
      v242 = "Supported";
    }

    else
    {
      v242 = v241;
    }

    ShorthandString(v242);
    NSAppendPrintF_safe();
    v243 = v235;

    v235 = v243;
  }

  farFieldUplinkCapability = self->_farFieldUplinkCapability;
  if (self->_farFieldUplinkCapability)
  {
    if (farFieldUplinkCapability == 1)
    {
      v245 = "Unsupported";
    }

    else
    {
      v245 = "?";
    }

    if (farFieldUplinkCapability == 2)
    {
      v246 = "Supported";
    }

    else
    {
      v246 = v245;
    }

    ShorthandString(v246);
    NSAppendPrintF_safe();
    v247 = v235;

    v235 = v247;
  }

  hideEarDetectionCapability = self->_hideEarDetectionCapability;
  if (self->_hideEarDetectionCapability)
  {
    if (hideEarDetectionCapability == 1)
    {
      v249 = "Unsupported";
    }

    else
    {
      v249 = "?";
    }

    if (hideEarDetectionCapability == 2)
    {
      v250 = "Supported";
    }

    else
    {
      v250 = v249;
    }

    ShorthandString(v250);
    NSAppendPrintF_safe();
    v251 = v235;

    v235 = v251;
  }

  hideOffListeningModeCapability = self->_hideOffListeningModeCapability;
  if (self->_hideOffListeningModeCapability)
  {
    if (hideOffListeningModeCapability == 1)
    {
      v253 = "Unsupported";
    }

    else
    {
      v253 = "?";
    }

    if (hideOffListeningModeCapability == 2)
    {
      v254 = "Supported";
    }

    else
    {
      v254 = v253;
    }

    ShorthandString(v254);
    NSAppendPrintF_safe();
    v255 = v235;

    v235 = v255;
  }

  ovadStreamingCapability = self->_ovadStreamingCapability;
  if (self->_ovadStreamingCapability)
  {
    if (ovadStreamingCapability == 1)
    {
      v257 = "Unsupported";
    }

    else
    {
      v257 = "?";
    }

    if (ovadStreamingCapability == 2)
    {
      v258 = "Supported";
    }

    else
    {
      v258 = v257;
    }

    ShorthandString(v258);
    NSAppendPrintF_safe();
    v259 = v235;

    v235 = v259;
  }

  pmeEverywhereCapability = self->_pmeEverywhereCapability;
  if (self->_pmeEverywhereCapability)
  {
    if (pmeEverywhereCapability == 1)
    {
      v261 = "Unsupported";
    }

    else
    {
      v261 = "?";
    }

    if (pmeEverywhereCapability == 2)
    {
      v262 = "Supported";
    }

    else
    {
      v262 = v261;
    }

    ShorthandString(v262);
    NSAppendPrintF_safe();
    v263 = v235;

    v235 = v263;
  }

  personalTranslatorCapability = self->_personalTranslatorCapability;
  if (self->_personalTranslatorCapability)
  {
    if (personalTranslatorCapability == 1)
    {
      v265 = "Unsupported";
    }

    else
    {
      v265 = "?";
    }

    if (personalTranslatorCapability == 2)
    {
      v266 = "Supported";
    }

    else
    {
      v266 = v265;
    }

    ShorthandString(v266);
    NSAppendPrintF_safe();
    v267 = v235;

    v235 = v267;
  }

  NSAppendPrintF_safe();
  v268 = v235;

  enhancedTransparencyVersion = self->_enhancedTransparencyVersion;
  if (self->_enhancedTransparencyVersion)
  {
    if (enhancedTransparencyVersion <= 4)
    {
      v270 = off_278CDDBA0[enhancedTransparencyVersion - 1];
    }

    NSAppendPrintF_safe();
    v271 = v268;

    v268 = v271;
  }

  farFieldSessionOnGoing = self->_farFieldSessionOnGoing;
  if (self->_farFieldSessionOnGoing)
  {
    if (farFieldSessionOnGoing == 1)
    {
      v273 = "Yes";
    }

    else
    {
      v273 = "?";
    }

    if (farFieldSessionOnGoing == 2)
    {
      v274 = "No";
    }

    else
    {
      v274 = v273;
    }

    ShorthandString(v274);
    NSAppendPrintF_safe();
    v275 = v268;

    v268 = v275;
  }

  healthKitDataWriteAllowed = self->_healthKitDataWriteAllowed;
  if (self->_healthKitDataWriteAllowed)
  {
    if (healthKitDataWriteAllowed == 1)
    {
      v277 = "Yes";
    }

    else
    {
      v277 = "?";
    }

    if (healthKitDataWriteAllowed == 2)
    {
      v278 = "No";
    }

    else
    {
      v278 = v277;
    }

    ShorthandString(v278);
    NSAppendPrintF_safe();
    v279 = v268;

    v268 = v279;
  }

  v280 = self->_lastSeenConnectedTime;
  if (v280)
  {
    NSAppendPrintF_safe();
    v281 = v268;

    v268 = v281;
  }

  NSAppendPrintF_safe();
  v282 = v268;

  v283 = self->_coreBluetoothDevice;
  if (v283)
  {
    NSAppendPrintF_safe();
    v284 = v282;

    v282 = v284;
  }

  if (v303 < 0x15u)
  {
    NSAppendPrintF_safe();
    v285 = v282;

    v282 = v285;
  }

  v286 = v282;

  return v282;
}

- (NSString)bluetoothAddress
{
  v2 = self;
  objc_sync_enter(v2);
  bluetoothAddress = v2->_bluetoothAddress;
  if (!bluetoothAddress)
  {
    if (v2->_bluetoothAddressData)
    {
      v4 = CUPrintNSDataAddress();
      v5 = v2->_bluetoothAddress;
      v2->_bluetoothAddress = v4;

      bluetoothAddress = v2->_bluetoothAddress;
    }

    else
    {
      bluetoothAddress = 0;
    }
  }

  v6 = bluetoothAddress;
  objc_sync_exit(v2);

  return v6;
}

- (unsigned)chargingReminderCapability
{
  v2 = [(AudioAccessoryDevice *)self productID];
  if (v2 - 8212 > 0x14 || ((1 << (v2 - 20)) & 0x190081) == 0)
  {
    return v2 != 0;
  }

  else
  {
    return 2;
  }
}

- (BOOL)connectedInfoComplete
{
  if (![(AudioAccessoryDevice *)self connectedCBDeviceReceived]|| ![(AudioAccessoryDevice *)self connectedAADeviceInfoReceived])
  {
    return 0;
  }

  return [(AudioAccessoryDevice *)self pairedInfoComplete];
}

- (char)dynamicEndOfChargeState
{
  v3 = [(AudioAccessoryDevice *)self dynamicEndOfChargeEnabled];
  if (v3)
  {
    v4 = [(AudioAccessoryDevice *)self dynamicEndOfChargeEnabled];
    if ([(AudioAccessoryDevice *)self dynamicEndOfChargeTempDisabled]== 1)
    {
      v5 = 3;
    }

    else
    {
      v5 = 1;
    }

    if (v4 == 1)
    {
      LOBYTE(v3) = v5;
    }

    else
    {
      LOBYTE(v3) = 2;
    }
  }

  return v3;
}

- (unsigned)optimizedBatteryChargingCapability
{
  v2 = [(AudioAccessoryDevice *)self productID];
  if (v2 - 8206 > 0x1A || ((1 << (v2 - 14)) & 0x6452861) == 0)
  {
    return v2 != 0;
  }

  else
  {
    return 2;
  }
}

- (BOOL)pairedInfoComplete
{
  v3 = [(AudioAccessoryDevice *)self pairedCBDeviceReceived];
  if (v3)
  {

    LOBYTE(v3) = [(AudioAccessoryDevice *)self pairedAADeviceInfoReceived];
  }

  return v3;
}

- (unsigned)computePersonalTranslatorCapability
{
  if (![(AudioAccessoryDevice *)self ovadStreamingCapability]&& ![(AudioAccessoryDevice *)self farFieldUplinkCapability])
  {
    return 0;
  }

  if ([(AudioAccessoryDevice *)self ovadStreamingCapability]== 2 && [(AudioAccessoryDevice *)self farFieldUplinkCapability]== 2)
  {
    os_eligibility_get_domain_answer();
    if (gLogCategory_AudioAccessoryDevice <= 30 && (gLogCategory_AudioAccessoryDevice != -1 || _LogCategory_Initialize()))
    {
      LogPrintF();
    }

    if (gLogCategory_AudioAccessoryDevice <= 30 && (gLogCategory_AudioAccessoryDevice != -1 || _LogCategory_Initialize()))
    {
      [AudioAccessoryDevice computePersonalTranslatorCapability];
    }

    return 1;
  }

  else
  {
    if (gLogCategory_AudioAccessoryDevice <= 30 && (gLogCategory_AudioAccessoryDevice != -1 || _LogCategory_Initialize()))
    {
      [AudioAccessoryDevice computePersonalTranslatorCapability];
    }

    return 1;
  }
}

- (void)setBatteryInfo:(id)a3
{
  v5 = a3;
  p_batteryInfo = &self->_batteryInfo;
  if (self->_batteryInfo != v5)
  {
    v8 = v5;
    v7 = self;
    objc_sync_enter(v7);
    objc_storeStrong(p_batteryInfo, a3);
    objc_sync_exit(v7);

    v5 = v8;
  }
}

- (void)setBluetoothAddressData:(id)a3
{
  v9 = a3;
  v5 = self;
  objc_sync_enter(v5);
  objc_storeStrong(&v5->_bluetoothAddressData, a3);
  bluetoothAddressData = v5->_bluetoothAddressData;
  v7 = CUPrintNSDataAddress();
  bluetoothAddress = v5->_bluetoothAddress;
  v5->_bluetoothAddress = v7;

  objc_sync_exit(v5);
}

- (void)setCloudRecordInfoLoaded:(BOOL)a3
{
  if (self->_cloudRecordInfoLoaded != a3)
  {
    obj = self;
    objc_sync_enter(obj);
    self->_cloudRecordInfoLoaded = a3;
    objc_sync_exit(obj);
  }
}

- (void)setConnected:(BOOL)a3
{
  if (self->_connected != a3)
  {
    obj = self;
    objc_sync_enter(obj);
    self->_connected = a3;
    objc_sync_exit(obj);
  }
}

- (BOOL)setDefaultConfigurationsForCloudSyncedPropertiesIfNeeded
{
  v2 = self;
  objc_sync_enter(v2);
  if (v2->_bobbleCapability == 2 && !v2->_headGestureToggle)
  {
    v2->_headGestureToggle = 2;
    v3 = 1;
    v2->_acceptReplyPlayPauseConfig = 1;
    v2->_declineDismissSkipConfig = 2;
  }

  else
  {
    v3 = 0;
  }

  if ([(AudioAccessoryDevice *)v2 heartRateMonitorCapability]== 2 && !v2->_healthKitDataWriteAllowed)
  {
    v3 = 1;
    v2->_healthKitDataWriteAllowed = 1;
  }

  if (_os_feature_enabled_impl() && [(AudioAccessoryDevice *)v2 chargingReminderCapability]== 2 && !v2->_chargingReminderEnabled)
  {
    v3 = 1;
    v2->_chargingReminderEnabled = 1;
  }

  if (_os_feature_enabled_impl() && v2->_cameraControlCapability == 2 && !v2->_remoteCameraControlConfig)
  {
    v3 = 1;
    v2->_remoteCameraControlConfig = 1;
  }

  objc_sync_exit(v2);

  return v3;
}

- (void)setDetectedHeadGesture:(unsigned __int8)a3
{
  if (self->_detectedHeadGesture != a3)
  {
    obj = self;
    objc_sync_enter(obj);
    self->_detectedHeadGesture = a3;
    objc_sync_exit(obj);
  }
}

- (void)setDynamicEndOfChargeEnabled:(char)a3
{
  if (self->_dynamicEndOfChargeEnabled != a3)
  {
    obj = self;
    objc_sync_enter(obj);
    self->_dynamicEndOfChargeEnabled = a3;
    objc_sync_exit(obj);
  }
}

- (void)setHeartRateMonitorCapabilityChanged:(BOOL)a3
{
  if (self->_heartRateMonitorCapabilityChanged != a3)
  {
    obj = self;
    objc_sync_enter(obj);
    self->_heartRateMonitorCapabilityChanged = a3;
    objc_sync_exit(obj);
  }
}

- (void)setHeartRateMonitorCapabilityValueOriginatedFromDevice:(BOOL)a3
{
  if (self->_heartRateMonitorCapabilityValueOriginatedFromDevice != a3)
  {
    obj = self;
    objc_sync_enter(obj);
    self->_heartRateMonitorCapabilityValueOriginatedFromDevice = a3;
    objc_sync_exit(obj);
  }
}

- (void)setDynamicEndOfChargeTempDisabled:(char)a3
{
  if (self->_dynamicEndOfChargeTempDisabled != a3)
  {
    obj = self;
    objc_sync_enter(obj);
    self->_dynamicEndOfChargeTempDisabled = a3;
    objc_sync_exit(obj);
  }
}

- (void)setIdentifier:(id)a3
{
  v4 = a3;
  obj = self;
  objc_sync_enter(obj);
  identifier = obj->_identifier;
  obj->_identifier = v4;

  objc_sync_exit(obj);
}

- (void)setOnConnectionActionsCalled:(BOOL)a3
{
  if (self->_onConnectionActionsCalled != a3)
  {
    obj = self;
    objc_sync_enter(obj);
    self->_onConnectionActionsCalled = a3;
    objc_sync_exit(obj);
  }
}

- (void)setOptimizedBatteryChargingState:(char)a3
{
  if (self->_optimizedBatteryChargingState != a3)
  {
    obj = self;
    objc_sync_enter(obj);
    self->_optimizedBatteryChargingState = a3;
    objc_sync_exit(obj);
  }
}

- (void)setPaired:(BOOL)a3
{
  if (self->_paired != a3)
  {
    obj = self;
    objc_sync_enter(obj);
    self->_paired = a3;
    objc_sync_exit(obj);
  }
}

- (void)setSiriMultitoneEnabled:(char)a3
{
  if (self->_siriMultitoneEnabled != a3)
  {
    obj = self;
    objc_sync_enter(obj);
    self->_siriMultitoneEnabled = a3;
    objc_sync_exit(obj);
  }
}

- (void)setSmartRoutingStateFlags:(unsigned int)a3
{
  if (self->_smartRoutingStateFlags != a3)
  {
    obj = self;
    objc_sync_enter(obj);
    self->_smartRoutingStateFlags = a3;
    objc_sync_exit(obj);
  }
}

- (void)setFarFieldSessionOnGoing:(char)a3
{
  if (self->_farFieldSessionOnGoing != a3)
  {
    obj = self;
    objc_sync_enter(obj);
    self->_farFieldSessionOnGoing = a3;
    objc_sync_exit(obj);
  }
}

- (BOOL)updateWithPairedAADevice:(id)a3
{
  v4 = a3;
  v5 = self;
  objc_sync_enter(v5);
  v6 = [v4 acceptReplyPlayPauseConfig];
  if (v6 && [(AudioAccessoryDevice *)v5 acceptReplyPlayPauseConfig]!= v6)
  {
    [(AudioAccessoryDevice *)v5 setAcceptReplyPlayPauseConfig:v6];
    v7 = 1;
  }

  else
  {
    v7 = 0;
  }

  v8 = [v4 autoANCCapability];
  if (v8 && [(AudioAccessoryDevice *)v5 autoANCCapability]!= v8)
  {
    [(AudioAccessoryDevice *)v5 setAutoANCCapability:v8];
    v7 = 1;
  }

  v9 = [v4 audiogramEnrolledTimestamp];
  if (v9)
  {
    v10 = [(AudioAccessoryDevice *)v5 audiogramEnrolledTimestamp];
    v11 = v9;
    v12 = v11;
    if (v10 == v11)
    {
    }

    else
    {
      if (v10)
      {
        v13 = [v10 isEqual:v11];

        if (v13)
        {
          goto LABEL_16;
        }
      }

      else
      {
      }

      [(AudioAccessoryDevice *)v5 setAudiogramEnrolledTimestamp:v12];
      v7 = 1;
    }
  }

LABEL_16:
  v14 = [v4 bobbleCapability];
  if (v14 && [(AudioAccessoryDevice *)v5 bobbleCapability]!= v14)
  {
    [(AudioAccessoryDevice *)v5 setBobbleCapability:v14];
    v7 = 1;
  }

  v15 = [v4 cameraControlCapability];
  if (v15 && [(AudioAccessoryDevice *)v5 cameraControlCapability]!= v15)
  {
    [(AudioAccessoryDevice *)v5 setCameraControlCapability:v15];
    v7 = 1;
  }

  v16 = [v4 caseSoundCapability];
  if (v16 && [(AudioAccessoryDevice *)v5 caseSoundCapability]!= v16)
  {
    [(AudioAccessoryDevice *)v5 setCaseSoundCapability:v16];
    v7 = 1;
  }

  v17 = [v4 chargingReminderEnabled];
  if (v17 && [(AudioAccessoryDevice *)v5 chargingReminderEnabled]!= v17)
  {
    [(AudioAccessoryDevice *)v5 setChargingReminderEnabled:v17];
    v7 = 1;
  }

  v18 = [v4 declineDismissSkipConfig];
  if (v18 && [(AudioAccessoryDevice *)v5 declineDismissSkipConfig]!= v18)
  {
    [(AudioAccessoryDevice *)v5 setDeclineDismissSkipConfig:v18];
    v7 = 1;
  }

  v19 = [v4 dynamicEndOfChargeCapability];
  if (v19 != [(AudioAccessoryDevice *)v5 dynamicEndOfChargeCapability])
  {
    [(AudioAccessoryDevice *)v5 setDynamicEndOfChargeCapability:v19];
    v7 = 1;
  }

  v20 = [v4 earTipFitTestCapability];
  if (v20 && [(AudioAccessoryDevice *)v5 earTipFitTestCapability]!= v20)
  {
    [(AudioAccessoryDevice *)v5 setEarTipFitTestCapability:v20];
    v7 = 1;
  }

  v21 = [v4 enhancedTransparencyVersion];
  if (v21 != [(AudioAccessoryDevice *)v5 enhancedTransparencyVersion])
  {
    [(AudioAccessoryDevice *)v5 setEnhancedTransparencyVersion:v21];
    v7 = 1;
  }

  v22 = [v4 farFieldUplinkCapability];
  if (v22 && [(AudioAccessoryDevice *)v5 farFieldUplinkCapability]!= v22)
  {
    [(AudioAccessoryDevice *)v5 setFarFieldUplinkCapability:v22];
    v7 = 1;
  }

  v23 = [v4 headGestureToggle];
  if (v23 && [(AudioAccessoryDevice *)v5 headGestureToggle]!= v23)
  {
    [(AudioAccessoryDevice *)v5 setHeadGestureToggle:v23];
    v7 = 1;
  }

  v24 = [v4 ovadStreamingCapability];
  if (v24 && [(AudioAccessoryDevice *)v5 ovadStreamingCapability]!= v24)
  {
    [(AudioAccessoryDevice *)v5 setOvadStreamingCapability:v24];
    v7 = 1;
  }

  v25 = [v4 healthKitDataWriteAllowed];
  if (v25 && [(AudioAccessoryDevice *)v5 healthKitDataWriteAllowed]!= v25)
  {
    [(AudioAccessoryDevice *)v5 setHealthKitDataWriteAllowed:v25];
    v7 = 1;
  }

  v26 = [v4 hearingAidCapability];
  if (v26 && [(AudioAccessoryDevice *)v5 hearingAidCapability]!= v26)
  {
    [(AudioAccessoryDevice *)v5 setHearingAidCapability:v26];
    v7 = 1;
  }

  v27 = [v4 hearingAidV2Capability];
  if (v27 != [(AudioAccessoryDevice *)v5 hearingAidV2Capability])
  {
    [(AudioAccessoryDevice *)v5 setHearingAidV2Capability:v27];
    v7 = 1;
  }

  v28 = [v4 hearingProtectionCapability];
  if (v28 && [(AudioAccessoryDevice *)v5 hearingProtectionCapability]!= v28)
  {
    [(AudioAccessoryDevice *)v5 setHearingProtectionCapability:v28];
    v7 = 1;
  }

  v29 = [v4 hearingProtectionPPECapability];
  if (v29 != [(AudioAccessoryDevice *)v5 hearingProtectionPPECapability])
  {
    [(AudioAccessoryDevice *)v5 setHearingProtectionPPECapability:v29];
    v7 = 1;
  }

  v30 = [v4 hearingTestCapability];
  if (v30 && [(AudioAccessoryDevice *)v5 hearingTestCapability]!= v30)
  {
    [(AudioAccessoryDevice *)v5 setHearingTestCapability:v30];
    v7 = 1;
  }

  v31 = [v4 heartRateMonitorCapability];
  if (v31 && [(AudioAccessoryDevice *)v5 heartRateMonitorCapability]!= v31)
  {
    [(AudioAccessoryDevice *)v5 setHeartRateMonitorCapability:v31];
    v7 = 1;
  }

  v32 = [v4 hideEarDetectionCapability];
  if (v32 && [(AudioAccessoryDevice *)v5 hideEarDetectionCapability]!= v32)
  {
    [(AudioAccessoryDevice *)v5 setHideEarDetectionCapability:v32];
    v7 = 1;
  }

  v33 = [v4 hideOffListeningModeCapability];
  if (v33 && [(AudioAccessoryDevice *)v5 hideOffListeningModeCapability]!= v33)
  {
    [(AudioAccessoryDevice *)v5 setHideOffListeningModeCapability:v33];
    v7 = 1;
  }

  v34 = [v4 lastSeenConnectedTime];
  v35 = [(AudioAccessoryDevice *)v5 lastSeenConnectedTime];
  v36 = v34;
  v37 = v35;
  v38 = v37;
  if (v36 == v37)
  {
  }

  else
  {
    if ((v36 != 0) != (v37 == 0))
    {
      v39 = [v36 isEqual:v37];

      if (v39)
      {
        goto LABEL_79;
      }
    }

    else
    {
    }

    [(AudioAccessoryDevice *)v5 setLastSeenConnectedTime:v36];
    v7 = 1;
  }

LABEL_79:
  v40 = [v4 listeningModeOffAllowed];
  if (v40 && [(AudioAccessoryDevice *)v5 listeningModeOffAllowed]!= v40)
  {
    [(AudioAccessoryDevice *)v5 setListeningModeOffAllowed:v40];
    v7 = 1;
  }

  v41 = [v4 model];
  if (v41)
  {
    v42 = [(AudioAccessoryDevice *)v5 model];
    v43 = v41;
    v44 = v43;
    if (v42 == v43)
    {

      goto LABEL_90;
    }

    if (v42)
    {
      v45 = [v42 isEqual:v43];

      if (v45)
      {
        goto LABEL_90;
      }
    }

    else
    {
    }

    [(AudioAccessoryDevice *)v5 setModel:v44];
    v7 = 1;
  }

LABEL_90:
  v46 = [v4 name];
  if (v46)
  {
    v47 = [(AudioAccessoryDevice *)v5 name];
    v48 = v46;
    v49 = v48;
    if (v47 == v48)
    {
    }

    else
    {
      if (v47)
      {
        v50 = [v47 isEqual:v48];

        if (v50)
        {
          goto LABEL_98;
        }
      }

      else
      {
      }

      [(AudioAccessoryDevice *)v5 setName:v49];
      v7 = 1;
    }
  }

LABEL_98:
  if ([v4 paired] && !-[AudioAccessoryDevice paired](v5, "paired"))
  {
    v7 = 1;
    [(AudioAccessoryDevice *)v5 setPaired:1];
  }

  v51 = [(AudioAccessoryDevice *)v5 computePersonalTranslatorCapability];
  if (v51 != [(AudioAccessoryDevice *)v5 personalTranslatorCapability])
  {
    [(AudioAccessoryDevice *)v5 setPersonalTranslatorCapability:v51];
    v7 = 1;
  }

  v52 = [v4 productID];
  if (v52 && [(AudioAccessoryDevice *)v5 productID]!= v52)
  {
    [(AudioAccessoryDevice *)v5 setProductID:v52];
    v7 = 1;
  }

  if (_os_feature_enabled_impl())
  {
    v53 = [v4 remoteCameraControlConfig];
    if (v53)
    {
      if ([(AudioAccessoryDevice *)v5 remoteCameraControlConfig]!= v53)
      {
        -[AudioAccessoryDevice setRemoteCameraControlConfig:](v5, "setRemoteCameraControlConfig:", [v4 remoteCameraControlConfig]);
        v7 = 1;
      }
    }
  }

  v54 = [v4 siriMultitoneCapability];
  if (v54 && [(AudioAccessoryDevice *)v5 siriMultitoneCapability]!= v54)
  {
    [(AudioAccessoryDevice *)v5 setSiriMultitoneCapability:v54];
    v7 = 1;
  }

  v55 = [v4 sleepDetectionCapability];
  if (v55 && [(AudioAccessoryDevice *)v5 sleepDetectionCapability]!= v55)
  {
    [(AudioAccessoryDevice *)v5 setSleepDetectionCapability:v55];
    v7 = 1;
  }

  if (_os_feature_enabled_impl())
  {
    v56 = [v4 temporaryManagedPairedStatus];
    if (v56 != [(AudioAccessoryDevice *)v5 temporaryManagedPairedStatus])
    {
      [(AudioAccessoryDevice *)v5 setTemporaryManagedPairedStatus:v56];
      v7 = 1;
    }
  }

  v57 = [v4 pairedAADeviceInfoReceived];
  if (v57 != [(AudioAccessoryDevice *)v5 pairedAADeviceInfoReceived])
  {
    [(AudioAccessoryDevice *)v5 setPairedAADeviceInfoReceived:v57];
    v7 = 1;
  }

  v58 = [v4 pairedCBDeviceReceived];
  if (v58 != [(AudioAccessoryDevice *)v5 pairedCBDeviceReceived])
  {
    [(AudioAccessoryDevice *)v5 setPairedCBDeviceReceived:v58];
    v7 = 1;
  }

  v59 = [v4 pmeEverywhereCapability];
  if (v59 && [(AudioAccessoryDevice *)v5 pmeEverywhereCapability]!= v59)
  {
    [(AudioAccessoryDevice *)v5 setPmeEverywhereCapability:v59];
    v7 = 1;
  }

  objc_sync_exit(v5);
  return v7;
}

- (BOOL)updateWithAADeviceConfig:(id)a3
{
  v4 = a3;
  v5 = self;
  objc_sync_enter(v5);
  v6 = [v4 headGestureToggle];
  v7 = v6 != 0;
  if (v6)
  {
    -[AudioAccessoryDevice setHeadGestureToggle:](v5, "setHeadGestureToggle:", [v4 headGestureToggle]);
  }

  if ([v4 acceptReplyPlayPauseConfig])
  {
    -[AudioAccessoryDevice setAcceptReplyPlayPauseConfig:](v5, "setAcceptReplyPlayPauseConfig:", [v4 acceptReplyPlayPauseConfig]);
    v7 = 1;
  }

  if ([v4 declineDismissSkipConfig])
  {
    -[AudioAccessoryDevice setDeclineDismissSkipConfig:](v5, "setDeclineDismissSkipConfig:", [v4 declineDismissSkipConfig]);
    v7 = 1;
  }

  if (_os_feature_enabled_impl())
  {
    v8 = [v4 audiogramEnrolledTimestamp];

    if (v8)
    {
      v9 = [v4 audiogramEnrolledTimestamp];
      [(AudioAccessoryDevice *)v5 setAudiogramEnrolledTimestamp:v9];

      v7 = 1;
    }
  }

  if (_os_feature_enabled_impl() && _os_feature_enabled_impl() && [v4 listeningModeOffAllowed])
  {
    -[AudioAccessoryDevice setListeningModeOffAllowed:](v5, "setListeningModeOffAllowed:", [v4 listeningModeOffAllowed]);
    v7 = 1;
  }

  if (_os_feature_enabled_impl() && [v4 enableChargingReminder])
  {
    -[AudioAccessoryDevice setChargingReminderEnabled:](v5, "setChargingReminderEnabled:", [v4 enableChargingReminder]);
    v7 = 1;
  }

  if ([v4 enableHeartRateMonitor])
  {
    -[AudioAccessoryDevice setHeartRateMonitorEnabled:](v5, "setHeartRateMonitorEnabled:", [v4 enableHeartRateMonitor]);
    v7 = 1;
  }

  if (_os_feature_enabled_impl() && [v4 remoteCameraControlConfig])
  {
    -[AudioAccessoryDevice setRemoteCameraControlConfig:](v5, "setRemoteCameraControlConfig:", [v4 remoteCameraControlConfig]);
    v7 = 1;
  }

  if ([v4 allowHealthKitDataWrite])
  {
    -[AudioAccessoryDevice setHealthKitDataWriteAllowed:](v5, "setHealthKitDataWriteAllowed:", [v4 allowHealthKitDataWrite]);
    v7 = 1;
  }

  objc_sync_exit(v5);

  return v7;
}

- (BOOL)updateWithConnectedAADeviceInfo:(id)a3
{
  v4 = a3;
  v5 = self;
  objc_sync_enter(v5);
  v6 = [v4 autoANCStrength];
  v7 = [(AudioAccessoryDevice *)v5 autoANCStrength];
  v8 = v6 != v7;
  if (v6 != v7)
  {
    [(AudioAccessoryDevice *)v5 setAutoANCStrength:v6];
  }

  v9 = [v4 streamStateAoS];
  if (v9 != [(AudioAccessoryDevice *)v5 streamStateAoS])
  {
    [(AudioAccessoryDevice *)v5 setStreamStateAoS:v9];
    v8 = 1;
  }

  v10 = [v4 dynamicEndOfChargeEnabled];
  if (v10 != [(AudioAccessoryDevice *)v5 dynamicEndOfChargeEnabled])
  {
    [(AudioAccessoryDevice *)v5 setDynamicEndOfChargeEnabled:v10];
    v8 = 1;
  }

  v11 = [v4 frequencyBand];
  if (v11 != [(AudioAccessoryDevice *)v5 frequencyBand])
  {
    [(AudioAccessoryDevice *)v5 setFrequencyBand:v11];
    v8 = 1;
  }

  if (_os_feature_enabled_impl())
  {
    v12 = [v4 hearingAidEnabled];
    if ([(AudioAccessoryDevice *)v5 hearingAidEnabled]!= v12)
    {
      [(AudioAccessoryDevice *)v5 setHearingAidEnabled:?];
      v8 = 1;
    }

    v13 = [v4 hearingAidEnrolled];
    if ([(AudioAccessoryDevice *)v5 hearingAidEnrolled]!= v13)
    {
      [(AudioAccessoryDevice *)v5 setHearingAidEnrolled:?];
      v8 = 1;
    }

    v14 = [v4 hearingAidGainSwipeEnabled];
    if ([(AudioAccessoryDevice *)v5 hearingAidGainSwipeEnabled]!= v14)
    {
      [(AudioAccessoryDevice *)v5 setHearingAidGainSwipeEnabled:?];
      v8 = 1;
    }

    v15 = [v4 hearingAssistEnabled];
    if ([(AudioAccessoryDevice *)v5 hearingAssistEnabled]!= v15)
    {
      [(AudioAccessoryDevice *)v5 setHearingAssistEnabled:?];
      v8 = 1;
    }
  }

  v16 = [v4 heartRateMonitorEnabled];
  if ([(AudioAccessoryDevice *)v5 heartRateMonitorEnabled]!= v16)
  {
    [(AudioAccessoryDevice *)v5 setHeartRateMonitorEnabled:?];
    v8 = 1;
  }

  v17 = [v4 rawGesturesConfigFlags];
  if (v17 != [(AudioAccessoryDevice *)v5 rawGesturesConfigFlags])
  {
    [(AudioAccessoryDevice *)v5 setRawGesturesConfigFlags:v17];
    v8 = 1;
  }

  v18 = [v4 sleepDetectionEnabled];
  if ([(AudioAccessoryDevice *)v5 sleepDetectionEnabled]!= v18)
  {
    [(AudioAccessoryDevice *)v5 setSleepDetectionEnabled:?];
    v8 = 1;
  }

  v19 = [v4 hearingProtectionPPECapabilityLevel];
  if (v19 != [(AudioAccessoryDevice *)v5 hearingProtectionPPECapLevel])
  {
    [(AudioAccessoryDevice *)v5 setHearingProtectionPPECapLevel:v19];
    v8 = 1;
  }

  v20 = [v4 hearingProtectionPPEEnabled];
  if ([(AudioAccessoryDevice *)v5 hearingProtectionPPEEnabled]!= v20)
  {
    [(AudioAccessoryDevice *)v5 setHearingProtectionPPEEnabled:?];
    v8 = 1;
  }

  if (![(AudioAccessoryDevice *)v5 connectedAADeviceInfoReceived])
  {
    v8 = 1;
    [(AudioAccessoryDevice *)v5 setConnectedAADeviceInfoReceived:1];
  }

  objc_sync_exit(v5);

  return v8;
}

- (BOOL)updateWithConnectedCBDevice:(id)a3
{
  v5 = a3;
  v6 = self;
  objc_sync_enter(v6);
  v7 = [(AudioAccessoryDevice *)v6 bluetoothAddressData];
  v8 = [v5 btAddressData];
  v9 = v7;
  v10 = v8;
  v11 = v10;
  v12 = v9 != v10;
  if (v9 == v10)
  {

LABEL_8:
    goto LABEL_9;
  }

  if ((v9 != 0) == (v10 == 0))
  {

    goto LABEL_7;
  }

  v13 = [v9 isEqual:v10];

  if ((v13 & 1) == 0)
  {
LABEL_7:
    v9 = [v5 btAddressData];
    [(AudioAccessoryDevice *)v6 setBluetoothAddressData:v9];
    goto LABEL_8;
  }

  v12 = 0;
LABEL_9:
  v14 = -[AudioAccessoryDevice CBCapToAACap:](v6, "CBCapToAACap:", [v5 adaptiveVolumeCapability]);
  if (v14 && [(AudioAccessoryDevice *)v6 adaptiveVolumeCapability]!= v14)
  {
    [(AudioAccessoryDevice *)v6 setAdaptiveVolumeCapability:v14];
    v12 = 1;
  }

  v15 = [v5 adaptiveVolumeConfig];
  if (v15 && [(AudioAccessoryDevice *)v6 adaptiveVolumeConfig]!= v15)
  {
    [(AudioAccessoryDevice *)v6 setAdaptiveVolumeConfig:v15];
    v12 = 1;
  }

  v16 = [v5 audioStreamState];
  if (v16 && v16 != [(AudioAccessoryDevice *)v6 audioStreamState])
  {
    [(AudioAccessoryDevice *)v6 setAudioStreamState:v16];
    v12 = 1;
  }

  v17 = [v5 clickHoldModeLeft];
  if (v17 && [(AudioAccessoryDevice *)v6 clickHoldModeLeft]!= v17)
  {
    [(AudioAccessoryDevice *)v6 setClickHoldModeLeft:v17];
    v12 = 1;
  }

  v18 = [v5 clickHoldModeRight];
  if (v18 && [(AudioAccessoryDevice *)v6 clickHoldModeRight]!= v18)
  {
    [(AudioAccessoryDevice *)v6 setClickHoldModeRight:v18];
    v12 = 1;
  }

  v19 = -[AudioAccessoryDevice CBCapToAACap:](v6, "CBCapToAACap:", [v5 conversationDetectCapability]);
  if (v19 && [(AudioAccessoryDevice *)v6 conversationDetectCapability]!= v19)
  {
    [(AudioAccessoryDevice *)v6 setConversationDetectCapability:v19];
    v12 = 1;
  }

  v20 = [v5 conversationDetectConfig];
  if (v20 && [(AudioAccessoryDevice *)v6 conversationDetectConfig]!= v20)
  {
    [(AudioAccessoryDevice *)v6 setConversationDetectConfig:v20];
    v12 = 1;
  }

  v21 = [v5 crownRotationDirection];
  if (v21 && [(AudioAccessoryDevice *)v6 crownRotationDirection]!= v21)
  {
    [(AudioAccessoryDevice *)v6 setCrownRotationDirection:v21];
    v12 = 1;
  }

  v22 = [v5 doubleTapActionLeft];
  if (v22 && v22 != [(AudioAccessoryDevice *)v6 doubleTapActionLeft])
  {
    [(AudioAccessoryDevice *)v6 setDoubleTapActionLeft:v22];
    v12 = 1;
  }

  v23 = [v5 doubleTapActionRight];
  if (v23 && v23 != [(AudioAccessoryDevice *)v6 doubleTapActionRight])
  {
    [(AudioAccessoryDevice *)v6 setDoubleTapActionRight:v23];
    v12 = 1;
  }

  v24 = [v5 doubleTapCapability];
  if (v24 && v24 != [(AudioAccessoryDevice *)v6 doubleTapCapability])
  {
    [(AudioAccessoryDevice *)v6 setDoubleTapCapability:v24];
    v12 = 1;
  }

  v25 = -[AudioAccessoryDevice CBCapToAACap:](v6, "CBCapToAACap:", [v5 endCallCapability]);
  if (v25 && [(AudioAccessoryDevice *)v6 endCallCapability]!= v25)
  {
    [(AudioAccessoryDevice *)v6 setEndCallCapability:v25];
    v12 = 1;
  }

  v26 = [v5 endCallConfig];
  if (v26 && v26 != [(AudioAccessoryDevice *)v6 endCallConfig])
  {
    [(AudioAccessoryDevice *)v6 setEndCallConfig:v26];
    v12 = 1;
  }

  v27 = [(AudioAccessoryDevice *)v6 firmwareVersion];
  v28 = [v5 firmwareVersion];
  v29 = v27;
  v30 = v28;
  v31 = v30;
  if (v29 == v30)
  {
  }

  else
  {
    if ((v29 != 0) == (v30 == 0))
    {
    }

    else
    {
      v32 = [v29 isEqual:v30];

      if (v32)
      {
        goto LABEL_56;
      }
    }

    v29 = [v5 firmwareVersion];
    [(AudioAccessoryDevice *)v6 setFirmwareVersion:v29];
    v12 = 1;
  }

LABEL_56:
  v33 = [v5 gapaFlags];
  if (v33 && [(AudioAccessoryDevice *)v6 gapaFlags]!= v33)
  {
    [(AudioAccessoryDevice *)v6 setGapaFlags:v33];
    v12 = 1;
  }

  if (([v5 deviceFlags] & 0x2000000) != 0)
  {
    v34 = 1;
  }

  else
  {
    v34 = 2;
  }

  if (v34 != [(AudioAccessoryDevice *)v6 guestPaired])
  {
    [(AudioAccessoryDevice *)v6 setGuestPaired:v34];
    v12 = 1;
  }

  v35 = [v5 listeningMode];
  if (v35 && v35 != [(AudioAccessoryDevice *)v6 listeningMode])
  {
    [(AudioAccessoryDevice *)v6 setListeningMode:v35];
    v12 = 1;
  }

  v36 = [v5 listeningModeConfigs];
  if (v36 && v36 != [(AudioAccessoryDevice *)v6 listeningModeConfigs])
  {
    [(AudioAccessoryDevice *)v6 setListeningModeConfigs:v36];
    v12 = 1;
  }

  v37 = [v5 microphoneMode];
  if (v37 && v37 != [(AudioAccessoryDevice *)v6 microphoneMode])
  {
    [(AudioAccessoryDevice *)v6 setMicrophoneMode:v37];
    v12 = 1;
  }

  v38 = -[AudioAccessoryDevice CBCapToAACap:](v6, "CBCapToAACap:", [v5 muteControlCapability]);
  if (v38 && [(AudioAccessoryDevice *)v6 muteControlCapability]!= v38)
  {
    [(AudioAccessoryDevice *)v6 setMuteControlCapability:v38];
    v12 = 1;
  }

  v39 = [v5 muteControlConfig];
  if (v39 && v39 != [(AudioAccessoryDevice *)v6 muteControlConfig])
  {
    [(AudioAccessoryDevice *)v6 setMuteControlConfig:v39];
    v12 = 1;
  }

  v40 = -[AudioAccessoryDevice CBCapToAACap:](v6, "CBCapToAACap:", [v5 autoAncCapability]);
  if (v40 && [(AudioAccessoryDevice *)v6 peerAutoANCCapability]!= v40)
  {
    [(AudioAccessoryDevice *)v6 setPeerAutoANCCapability:v40];
    v12 = 1;
  }

  v41 = [v5 placementMode];
  if (v41 && v41 != [(AudioAccessoryDevice *)v6 placementMode])
  {
    [(AudioAccessoryDevice *)v6 setPlacementMode:v41];
    v12 = 1;
  }

  v42 = [v5 primaryPlacement];
  if (v42 && v42 != [(AudioAccessoryDevice *)v6 primaryPlacement])
  {
    [(AudioAccessoryDevice *)v6 setPrimaryPlacement:v42];
    v12 = 1;
  }

  v43 = [v5 secondaryPlacement];
  if (v43 && v43 != [(AudioAccessoryDevice *)v6 secondaryPlacement])
  {
    [(AudioAccessoryDevice *)v6 setSecondaryPlacement:v43];
    v12 = 1;
  }

  v44 = [v5 rssi];
  if (v44 && v44 != [(AudioAccessoryDevice *)v6 classicRSSI])
  {
    [(AudioAccessoryDevice *)v6 setClassicRSSI:v44];
  }

  v45 = -[AudioAccessoryDevice CBCapToAACap:](v6, "CBCapToAACap:", [v5 selectiveSpeechListeningCapability]);
  if (v45 && [(AudioAccessoryDevice *)v6 selectiveSpeechListeningCapability]!= v45)
  {
    [(AudioAccessoryDevice *)v6 setSelectiveSpeechListeningCapability:v45];
    v12 = 1;
  }

  v46 = [v5 selectiveSpeechListeningConfig];
  if (v46 && v46 != [(AudioAccessoryDevice *)v6 selectiveSpeechListeningConfig])
  {
    [(AudioAccessoryDevice *)v6 setSelectiveSpeechListeningConfig:v46];
    v12 = 1;
  }

  v47 = [(AudioAccessoryDevice *)v6 serialNumber];
  v48 = [v5 serialNumber];
  v49 = v47;
  v50 = v48;
  v51 = v50;
  if (v49 == v50)
  {

LABEL_107:
    goto LABEL_108;
  }

  if ((v49 != 0) == (v50 == 0))
  {

    goto LABEL_106;
  }

  v52 = [v49 isEqual:v50];

  if ((v52 & 1) == 0)
  {
LABEL_106:
    v49 = [v5 serialNumber];
    [(AudioAccessoryDevice *)v6 setSerialNumber:v49];
    v12 = 1;
    goto LABEL_107;
  }

LABEL_108:
  v53 = [(AudioAccessoryDevice *)v6 serialNumberLeft];
  v54 = [v5 serialNumberLeft];
  v55 = v53;
  v56 = v54;
  v57 = v56;
  if (v55 == v56)
  {

LABEL_115:
    goto LABEL_116;
  }

  if ((v55 != 0) == (v56 == 0))
  {

    goto LABEL_114;
  }

  v58 = [v55 isEqual:v56];

  if ((v58 & 1) == 0)
  {
LABEL_114:
    v55 = [v5 serialNumberLeft];
    [(AudioAccessoryDevice *)v6 setSerialNumberLeft:v55];
    v12 = 1;
    goto LABEL_115;
  }

LABEL_116:
  v59 = [(AudioAccessoryDevice *)v6 serialNumberRight];
  v60 = [v5 serialNumberRight];
  v61 = v59;
  v62 = v60;
  v63 = v62;
  if (v61 == v62)
  {

LABEL_123:
    goto LABEL_124;
  }

  if ((v61 != 0) == (v62 == 0))
  {

    goto LABEL_122;
  }

  v64 = [v61 isEqual:v62];

  if ((v64 & 1) == 0)
  {
LABEL_122:
    v61 = [v5 serialNumberRight];
    [(AudioAccessoryDevice *)v6 setSerialNumberRight:v61];
    v12 = 1;
    goto LABEL_123;
  }

LABEL_124:
  if (([v5 deviceFlags] & 0x10000000000) != 0)
  {
    v65 = 2;
  }

  else
  {
    v65 = 1;
  }

  if (v65 != [(AudioAccessoryDevice *)v6 smartRoutingCapability])
  {
    [(AudioAccessoryDevice *)v6 setSmartRoutingCapability:v65];
    v12 = 1;
  }

  v66 = [v5 smartRoutingMode];
  if (v66 && v66 != [(AudioAccessoryDevice *)v6 smartRoutingMode])
  {
    [(AudioAccessoryDevice *)v6 setSmartRoutingMode:v66];
    v12 = 1;
  }

  if (([v5 deviceFlags] & 0x10000000) != 0)
  {
    v67 = 1;
  }

  else
  {
    v67 = 2;
  }

  if (v67 != [(AudioAccessoryDevice *)v6 spatialAudioAllowed])
  {
    [(AudioAccessoryDevice *)v6 setSpatialAudioAllowed:v67];
    v12 = 1;
  }

  objc_storeStrong(&v6->_coreBluetoothDevice, a3);
  if (![(AudioAccessoryDevice *)v6 connectedCBDeviceReceived])
  {
    v12 = 1;
    [(AudioAccessoryDevice *)v6 setConnectedCBDeviceReceived:1];
  }

  objc_sync_exit(v6);

  return v12;
}

- (BOOL)updateWithPairedAADeviceInfo:(id)a3
{
  v4 = a3;
  v5 = self;
  objc_sync_enter(v5);
  v6 = [v4 autoANCCapability];
  v7 = [(AudioAccessoryDevice *)v5 autoANCCapability];
  v8 = v6 != v7;
  if (v6 != v7)
  {
    [(AudioAccessoryDevice *)v5 setAutoANCCapability:v6];
  }

  v9 = [v4 bobbleCapability];
  if (v9 != [(AudioAccessoryDevice *)v5 bobbleCapability])
  {
    [(AudioAccessoryDevice *)v5 setBobbleCapability:v9];
    v8 = 1;
  }

  if (_os_feature_enabled_impl())
  {
    v10 = [v4 cameraControlCapability];
    if (v10 != [(AudioAccessoryDevice *)v5 cameraControlCapability])
    {
      [(AudioAccessoryDevice *)v5 setCameraControlCapability:v10];
      v8 = 1;
    }
  }

  v11 = [v4 caseSoundCapability];
  if (v11 != [(AudioAccessoryDevice *)v5 caseSoundCapability])
  {
    [(AudioAccessoryDevice *)v5 setCaseSoundCapability:v11];
    v8 = 1;
  }

  v12 = [v4 dynamicEndOfChargeCapability];
  if (v12 != [(AudioAccessoryDevice *)v5 dynamicEndOfChargeCapability])
  {
    [(AudioAccessoryDevice *)v5 setDynamicEndOfChargeCapability:v12];
    v8 = 1;
  }

  v13 = [v4 earTipFitTestCapability];
  if (v13 != [(AudioAccessoryDevice *)v5 earTipFitTestCapability])
  {
    [(AudioAccessoryDevice *)v5 setEarTipFitTestCapability:v13];
    v8 = 1;
  }

  v14 = [v4 enhancedTransparencyVersion];
  if (v14 != [(AudioAccessoryDevice *)v5 enhancedTransparencyVersion])
  {
    [(AudioAccessoryDevice *)v5 setEnhancedTransparencyVersion:v14];
    v8 = 1;
  }

  v15 = [v4 farFieldUplinkCapability];
  if (v15 != [(AudioAccessoryDevice *)v5 farFieldUplinkCapability])
  {
    [(AudioAccessoryDevice *)v5 setFarFieldUplinkCapability:v15];
    v8 = 1;
  }

  v16 = [v4 ovadStreamingCapability];
  if (v16 != [(AudioAccessoryDevice *)v5 ovadStreamingCapability])
  {
    [(AudioAccessoryDevice *)v5 setOvadStreamingCapability:v16];
    v8 = 1;
  }

  if (_os_feature_enabled_impl())
  {
    v17 = [v4 hearingAidCapability];
    if (v17 != [(AudioAccessoryDevice *)v5 hearingAidCapability])
    {
      [(AudioAccessoryDevice *)v5 setHearingAidCapability:v17];
      v8 = 1;
    }
  }

  if (_os_feature_enabled_impl())
  {
    v18 = [v4 hearingProtectionCapability];
    if (v18 != [(AudioAccessoryDevice *)v5 hearingProtectionCapability])
    {
      [(AudioAccessoryDevice *)v5 setHearingProtectionCapability:v18];
      v8 = 1;
    }
  }

  if (_os_feature_enabled_impl())
  {
    v19 = [v4 hearingTestCapability];
    if (v19 != [(AudioAccessoryDevice *)v5 hearingTestCapability])
    {
      [(AudioAccessoryDevice *)v5 setHearingTestCapability:v19];
      v8 = 1;
    }
  }

  v20 = [v4 heartRateMonitorCapability];
  if (v20 != [(AudioAccessoryDevice *)v5 heartRateMonitorCapability])
  {
    [(AudioAccessoryDevice *)v5 setHeartRateMonitorCapability:v20];
    [(AudioAccessoryDevice *)v5 setHeartRateMonitorCapabilityValueOriginatedFromDevice:1];
    v8 = 1;
    [(AudioAccessoryDevice *)v5 setHeartRateMonitorCapabilityChanged:1];
  }

  v21 = [v4 heartRateMonitorEnabled];
  if ([(AudioAccessoryDevice *)v5 heartRateMonitorEnabled]!= v21)
  {
    [(AudioAccessoryDevice *)v5 setHeartRateMonitorEnabled:?];
    v8 = 1;
  }

  v22 = [v4 hideEarDetectionCapability];
  if (v22 != [(AudioAccessoryDevice *)v5 hideEarDetectionCapability])
  {
    [(AudioAccessoryDevice *)v5 setHideEarDetectionCapability:v22];
    v8 = 1;
  }

  v23 = [v4 hideOffListeningModeCapability];
  if (v23 != [(AudioAccessoryDevice *)v5 hideOffListeningModeCapability])
  {
    [(AudioAccessoryDevice *)v5 setHideOffListeningModeCapability:v23];
    v8 = 1;
  }

  v24 = [v4 lastSeenTime];
  v25 = [MEMORY[0x277CBEBB0] localTimeZone];
  v26 = v24 - [v25 secondsFromGMT];

  if (v26 >= 1)
  {
    v27 = [(AudioAccessoryDevice *)v5 lastSeenConnectedTime];
    if (!v27 || (-[AudioAccessoryDevice lastSeenConnectedTime](v5, "lastSeenConnectedTime"), v28 = objc_claimAutoreleasedReturnValue(), [v28 timeIntervalSince1970], v30 = v29, v28, v27, v30 < v26))
    {
      v31 = [MEMORY[0x277CBEAA8] dateWithTimeIntervalSince1970:v26];
      [(AudioAccessoryDevice *)v5 setLastSeenConnectedTime:v31];

      v8 = 1;
    }
  }

  v32 = [(AudioAccessoryDevice *)v5 pmeEverywhereCapability];
  if (v32 != [v4 pmeEverywhereCapability])
  {
    -[AudioAccessoryDevice setPmeEverywhereCapability:](v5, "setPmeEverywhereCapability:", [v4 pmeEverywhereCapability]);
    v8 = 1;
  }

  v33 = [v4 siriMultitoneCapability];
  if (v33 != [(AudioAccessoryDevice *)v5 siriMultitoneCapability])
  {
    [(AudioAccessoryDevice *)v5 setSiriMultitoneCapability:v33];
    v8 = 1;
  }

  v34 = [v4 sleepDetectionCapability];
  if (v34 != [(AudioAccessoryDevice *)v5 sleepDetectionCapability])
  {
    [(AudioAccessoryDevice *)v5 setSleepDetectionCapability:v34];
    v8 = 1;
  }

  v35 = [v4 hearingAidV2Capability];
  if (v35 != [(AudioAccessoryDevice *)v5 hearingAidV2Capability])
  {
    [(AudioAccessoryDevice *)v5 setHearingAidV2Capability:v35];
    v8 = 1;
  }

  v36 = [v4 hearingProtectionPPECapability];
  if (v36 != [(AudioAccessoryDevice *)v5 hearingProtectionPPECapability])
  {
    [(AudioAccessoryDevice *)v5 setHearingProtectionPPECapability:v36];
    v8 = 1;
  }

  if (_os_feature_enabled_impl())
  {
    v37 = [v4 temporaryManagedPairedStatus];
    if ([(AudioAccessoryDevice *)v5 temporaryManagedPairedStatus]!= v37)
    {
      [(AudioAccessoryDevice *)v5 setTemporaryManagedPairedStatus:?];
      v8 = 1;
    }
  }

  if (![(AudioAccessoryDevice *)v5 pairedAADeviceInfoReceived])
  {
    v8 = 1;
    [(AudioAccessoryDevice *)v5 setPairedAADeviceInfoReceived:1];
  }

  objc_sync_exit(v5);

  return v8;
}

- (BOOL)updateWithPairedCBDevice:(id)a3
{
  v5 = a3;
  v6 = self;
  objc_sync_enter(v6);
  objc_storeStrong(&v6->_coreBluetoothDevice, a3);
  v7 = [(AudioAccessoryDevice *)v6 bluetoothAddressData];
  v8 = [v5 btAddressData];
  v9 = v7;
  v10 = v8;
  v11 = v10;
  v12 = v9 != v10;
  if (v9 == v10)
  {
  }

  else
  {
    if ((v9 != 0) == (v10 == 0))
    {
    }

    else
    {
      v13 = [v9 isEqual:v10];

      if (v13)
      {
        v12 = 0;
        goto LABEL_9;
      }
    }

    v9 = [v5 btAddressData];
    [(AudioAccessoryDevice *)v6 setBluetoothAddressData:v9];
  }

LABEL_9:
  v14 = [(AudioAccessoryDevice *)v6 model];
  v15 = [v5 model];
  v16 = v14;
  v17 = v15;
  v18 = v17;
  if (v16 == v17)
  {

LABEL_16:
    goto LABEL_17;
  }

  if ((v16 != 0) == (v17 == 0))
  {

    goto LABEL_15;
  }

  v19 = [v16 isEqual:v17];

  if ((v19 & 1) == 0)
  {
LABEL_15:
    v16 = [v5 model];
    [(AudioAccessoryDevice *)v6 setModel:v16];
    v12 = 1;
    goto LABEL_16;
  }

LABEL_17:
  v20 = [(AudioAccessoryDevice *)v6 name];
  v21 = [v5 name];
  v22 = v20;
  v23 = v21;
  v24 = v23;
  if (v22 == v23)
  {

LABEL_24:
    goto LABEL_25;
  }

  if ((v22 != 0) == (v23 == 0))
  {

    goto LABEL_23;
  }

  v25 = [v22 isEqual:v23];

  if ((v25 & 1) == 0)
  {
LABEL_23:
    v22 = [v5 name];
    [(AudioAccessoryDevice *)v6 setName:v22];
    v12 = 1;
    goto LABEL_24;
  }

LABEL_25:
  v26 = [(AudioAccessoryDevice *)v6 productID];
  if (v26 != [v5 productID])
  {
    -[AudioAccessoryDevice setProductID:](v6, "setProductID:", [v5 productID]);
    v12 = 1;
  }

  v27 = [(AudioAccessoryDevice *)v6 productName];
  v28 = [v5 productName];
  v29 = v27;
  v30 = v28;
  v31 = v30;
  if (v29 == v30)
  {
  }

  else
  {
    if ((v29 != 0) == (v30 == 0))
    {
    }

    else
    {
      v32 = [v29 isEqual:v30];

      if (v32)
      {
        goto LABEL_35;
      }
    }

    v29 = [v5 productName];
    [(AudioAccessoryDevice *)v6 setProductName:v29];
    v12 = 1;
  }

LABEL_35:
  v33 = [v5 vendorID];
  if (v33 && [(AudioAccessoryDevice *)v6 vendorID]!= v33)
  {
    [(AudioAccessoryDevice *)v6 setVendorID:v33];
    v12 = 1;
  }

  if (![(AudioAccessoryDevice *)v6 pairedCBDeviceReceived])
  {
    v12 = 1;
    [(AudioAccessoryDevice *)v6 setPairedCBDeviceReceived:1];
  }

  objc_sync_exit(v6);

  return v12;
}

@end