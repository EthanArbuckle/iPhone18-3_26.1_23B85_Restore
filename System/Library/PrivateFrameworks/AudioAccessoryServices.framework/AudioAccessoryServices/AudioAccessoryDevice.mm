@interface AudioAccessoryDevice
- (AudioAccessoryDevice)initWithCoder:(id)coder;
- (AudioAccessoryDevice)initWithIdentifier:(id)identifier;
- (BOOL)connectedInfoComplete;
- (BOOL)pairedInfoComplete;
- (BOOL)setDefaultConfigurationsForCloudSyncedPropertiesIfNeeded;
- (BOOL)updateWithAADeviceConfig:(id)config;
- (BOOL)updateWithConnectedAADeviceInfo:(id)info;
- (BOOL)updateWithConnectedCBDevice:(id)device;
- (BOOL)updateWithPairedAADevice:(id)device;
- (BOOL)updateWithPairedAADeviceInfo:(id)info;
- (BOOL)updateWithPairedCBDevice:(id)device;
- (NSString)bluetoothAddress;
- (char)dynamicEndOfChargeState;
- (id)copyWithZone:(_NSZone *)zone;
- (id)descriptionWithLevel:(int)level;
- (unsigned)CBCapToAACap:(unsigned __int8)cap;
- (unsigned)chargingReminderCapability;
- (unsigned)computePersonalTranslatorCapability;
- (unsigned)optimizedBatteryChargingCapability;
- (void)encodeWithCoder:(id)coder;
- (void)setBatteryInfo:(id)info;
- (void)setBluetoothAddressData:(id)data;
- (void)setCloudRecordInfoLoaded:(BOOL)loaded;
- (void)setConnected:(BOOL)connected;
- (void)setDetectedHeadGesture:(unsigned __int8)gesture;
- (void)setDynamicEndOfChargeEnabled:(char)enabled;
- (void)setDynamicEndOfChargeTempDisabled:(char)disabled;
- (void)setFarFieldSessionOnGoing:(char)going;
- (void)setHeartRateMonitorCapabilityChanged:(BOOL)changed;
- (void)setHeartRateMonitorCapabilityValueOriginatedFromDevice:(BOOL)device;
- (void)setIdentifier:(id)identifier;
- (void)setOnConnectionActionsCalled:(BOOL)called;
- (void)setOptimizedBatteryChargingState:(char)state;
- (void)setPaired:(BOOL)paired;
- (void)setSiriMultitoneEnabled:(char)enabled;
- (void)setSmartRoutingStateFlags:(unsigned int)flags;
@end

@implementation AudioAccessoryDevice

- (AudioAccessoryDevice)initWithIdentifier:(id)identifier
{
  identifierCopy = identifier;
  v6 = [(AudioAccessoryDevice *)self init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_identifier, identifier);
    v8 = v7;
  }

  return v7;
}

- (AudioAccessoryDevice)initWithCoder:(id)coder
{
  coderCopy = coder;
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

    v6 = coderCopy;
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

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  v28 = coderCopy;
  if (self->_acceptReplyPlayPauseConfig)
  {
    [coderCopy encodeInteger:? forKey:?];
    coderCopy = v28;
  }

  if (self->_adaptiveVolumeConfig)
  {
    [v28 encodeInteger:? forKey:?];
    coderCopy = v28;
    if (self->_adaptiveVolumeConfig)
    {
      [v28 encodeInteger:? forKey:?];
      coderCopy = v28;
    }
  }

  audiogramEnrolledTimestamp = self->_audiogramEnrolledTimestamp;
  if (audiogramEnrolledTimestamp)
  {
    [v28 encodeObject:audiogramEnrolledTimestamp forKey:@"agET"];
    coderCopy = v28;
  }

  audioStreamState = self->_audioStreamState;
  if (audioStreamState)
  {
    [v28 encodeInteger:audioStreamState forKey:@"auss"];
    coderCopy = v28;
  }

  autoANCCapability = self->_autoANCCapability;
  if (autoANCCapability)
  {
    [v28 encodeInt64:autoANCCapability forKey:@"aaCp"];
    coderCopy = v28;
  }

  if (self->_peerAutoANCCapability)
  {
    [v28 encodeInteger:? forKey:?];
    coderCopy = v28;
  }

  autoANCStrength = self->_autoANCStrength;
  if (autoANCStrength)
  {
    [v28 encodeInt64:autoANCStrength forKey:@"aaSt"];
    coderCopy = v28;
  }

  coreBluetoothDevice = self->_coreBluetoothDevice;
  if (coreBluetoothDevice)
  {
    [v28 encodeObject:coreBluetoothDevice forKey:@"cbd"];
    coderCopy = v28;
  }

  batteryInfo = self->_batteryInfo;
  if (batteryInfo)
  {
    [v28 encodeObject:batteryInfo forKey:@"baIn"];
    coderCopy = v28;
  }

  bluetoothAddressData = self->_bluetoothAddressData;
  if (bluetoothAddressData)
  {
    [v28 encodeObject:bluetoothAddressData forKey:@"btAd"];
    coderCopy = v28;
  }

  if (self->_bobbleCapability)
  {
    [v28 encodeInteger:? forKey:?];
    coderCopy = v28;
  }

  if (self->_bobbleConfig)
  {
    [v28 encodeInteger:? forKey:?];
    coderCopy = v28;
  }

  if (self->_cameraControlCapability)
  {
    [v28 encodeInteger:? forKey:?];
    coderCopy = v28;
  }

  if (self->_caseSoundCapability)
  {
    [v28 encodeInteger:? forKey:?];
    coderCopy = v28;
  }

  if (self->_chargingReminderEnabled)
  {
    [v28 encodeInteger:? forKey:?];
    coderCopy = v28;
  }

  if (self->_clickHoldModeLeft)
  {
    [v28 encodeInteger:? forKey:?];
    coderCopy = v28;
  }

  if (self->_clickHoldModeRight)
  {
    [v28 encodeInteger:? forKey:?];
    coderCopy = v28;
  }

  if (self->_conversationDetectCapability)
  {
    [v28 encodeInteger:? forKey:?];
    coderCopy = v28;
  }

  if (self->_conversationDetectConfig)
  {
    [v28 encodeInteger:? forKey:?];
    coderCopy = v28;
  }

  if (self->_crownRotationDirection)
  {
    [v28 encodeInteger:? forKey:?];
    coderCopy = v28;
  }

  if (self->_declineDismissSkipConfig)
  {
    [v28 encodeInteger:? forKey:?];
    coderCopy = v28;
  }

  if (self->_detectedHeadGesture)
  {
    [v28 encodeInteger:? forKey:?];
    coderCopy = v28;
  }

  if (self->_doubleTapActionLeft)
  {
    [v28 encodeInteger:? forKey:?];
    coderCopy = v28;
  }

  if (self->_doubleTapActionRight)
  {
    [v28 encodeInteger:? forKey:?];
    coderCopy = v28;
  }

  if (self->_doubleTapCapability)
  {
    [v28 encodeInteger:? forKey:?];
    coderCopy = v28;
  }

  if (self->_dynamicEndOfChargeCapability)
  {
    [v28 encodeInteger:? forKey:?];
    coderCopy = v28;
  }

  if (self->_dynamicEndOfChargeEnabled)
  {
    [v28 encodeInteger:? forKey:?];
    coderCopy = v28;
  }

  if (self->_dynamicEndOfChargeState)
  {
    [v28 encodeInteger:? forKey:?];
    coderCopy = v28;
  }

  if (self->_dynamicEndOfChargeTempDisabled)
  {
    [v28 encodeInteger:? forKey:?];
    coderCopy = v28;
  }

  if (self->_earTipFitTestCapability)
  {
    [v28 encodeInteger:? forKey:?];
    coderCopy = v28;
  }

  if (self->_endCallCapability)
  {
    [v28 encodeInteger:? forKey:?];
    coderCopy = v28;
  }

  if (self->_endCallConfig)
  {
    [v28 encodeInteger:? forKey:?];
    coderCopy = v28;
  }

  if (self->_enhancedTransparencyVersion)
  {
    [v28 encodeInteger:? forKey:?];
    coderCopy = v28;
  }

  if (self->_farFieldUplinkCapability)
  {
    [v28 encodeInteger:? forKey:?];
    coderCopy = v28;
  }

  if (self->_farFieldSessionOnGoing)
  {
    [v28 encodeInteger:? forKey:?];
    coderCopy = v28;
  }

  firmwareVersion = self->_firmwareVersion;
  if (firmwareVersion)
  {
    [v28 encodeObject:firmwareVersion forKey:@"frmV"];
    coderCopy = v28;
  }

  if (self->_frequencyBand)
  {
    [v28 encodeInteger:? forKey:?];
    coderCopy = v28;
  }

  gapaFlags = self->_gapaFlags;
  if (gapaFlags)
  {
    [v28 encodeInt64:gapaFlags forKey:@"gapa"];
    coderCopy = v28;
  }

  if (self->_guestPaired)
  {
    [v28 encodeInteger:? forKey:?];
    coderCopy = v28;
  }

  if (self->_headGestureToggle)
  {
    [v28 encodeInteger:? forKey:?];
    coderCopy = v28;
  }

  if (self->_healthKitDataWriteAllowed)
  {
    [v28 encodeInteger:? forKey:?];
    coderCopy = v28;
  }

  if (self->_hearingAidCapability)
  {
    [v28 encodeInteger:? forKey:?];
    coderCopy = v28;
  }

  if (self->_hearingAidEnabled)
  {
    [v28 encodeInteger:? forKey:?];
    coderCopy = v28;
  }

  if (self->_hearingAidEnrolled)
  {
    [v28 encodeInteger:? forKey:?];
    coderCopy = v28;
  }

  if (self->_hearingAidGainSwipeEnabled)
  {
    [v28 encodeInteger:? forKey:?];
    coderCopy = v28;
  }

  if (self->_hearingAidV2Capability)
  {
    [v28 encodeInteger:? forKey:?];
    coderCopy = v28;
  }

  if (self->_hearingAssistEnabled)
  {
    [v28 encodeInteger:? forKey:?];
    coderCopy = v28;
  }

  if (self->_hearingProtectionCapability)
  {
    [v28 encodeInteger:? forKey:?];
    coderCopy = v28;
  }

  if (self->_hearingProtectionPPECapability)
  {
    [v28 encodeInteger:? forKey:?];
    coderCopy = v28;
  }

  hearingProtectionPPECapLevel = self->_hearingProtectionPPECapLevel;
  if (hearingProtectionPPECapLevel)
  {
    [v28 encodeInt64:hearingProtectionPPECapLevel forKey:@"ppeL"];
    coderCopy = v28;
  }

  if (self->_hearingProtectionPPEEnabled)
  {
    [v28 encodeInteger:? forKey:?];
    coderCopy = v28;
  }

  if (self->_hearingTestCapability)
  {
    [v28 encodeInteger:? forKey:?];
    coderCopy = v28;
  }

  if (self->_heartRateMonitorCapability)
  {
    [v28 encodeInteger:? forKey:?];
    coderCopy = v28;
  }

  if (self->_heartRateMonitorEnabled)
  {
    [v28 encodeInteger:? forKey:?];
    coderCopy = v28;
  }

  if (self->_hideEarDetectionCapability)
  {
    [v28 encodeInteger:? forKey:?];
    coderCopy = v28;
  }

  if (self->_hideOffListeningModeCapability)
  {
    [v28 encodeInteger:? forKey:?];
    coderCopy = v28;
  }

  identifier = self->_identifier;
  if (identifier)
  {
    [v28 encodeObject:identifier forKey:@"did"];
    coderCopy = v28;
  }

  listeningMode = self->_listeningMode;
  if (listeningMode)
  {
    [v28 encodeInteger:listeningMode forKey:@"lsnM"];
    coderCopy = v28;
  }

  listeningModeConfigs = self->_listeningModeConfigs;
  if (listeningModeConfigs)
  {
    [v28 encodeInt64:listeningModeConfigs forKey:@"lsMC"];
    coderCopy = v28;
  }

  if (self->_listeningModeOffAllowed)
  {
    [v28 encodeInteger:? forKey:?];
    coderCopy = v28;
  }

  if (self->_microphoneMode)
  {
    [v28 encodeInteger:? forKey:?];
    coderCopy = v28;
  }

  model = self->_model;
  if (model)
  {
    [v28 encodeObject:model forKey:@"modl"];
    coderCopy = v28;
  }

  if (self->_muteControlCapability)
  {
    [v28 encodeInteger:? forKey:?];
    coderCopy = v28;
  }

  if (self->_muteControlConfig)
  {
    [v28 encodeInteger:? forKey:?];
    coderCopy = v28;
  }

  name = self->_name;
  if (name)
  {
    [v28 encodeObject:name forKey:@"name"];
    coderCopy = v28;
  }

  if (self->_optimizedBatteryChargingState)
  {
    [v28 encodeInteger:? forKey:?];
    coderCopy = v28;
  }

  if (self->_ovadStreamingCapability)
  {
    [v28 encodeInteger:? forKey:?];
    coderCopy = v28;
  }

  if (self->_personalTranslatorCapability)
  {
    [v28 encodeInteger:? forKey:?];
    coderCopy = v28;
  }

  if (self->_placementMode)
  {
    [v28 encodeInteger:? forKey:?];
    coderCopy = v28;
  }

  if (self->_pmeEverywhereCapability)
  {
    [v28 encodeInteger:? forKey:?];
    coderCopy = v28;
  }

  primaryPlacement = self->_primaryPlacement;
  if (primaryPlacement)
  {
    [v28 encodeInteger:primaryPlacement forKey:@"prpl"];
    coderCopy = v28;
  }

  productID = self->_productID;
  if (productID)
  {
    [v28 encodeInt64:productID forKey:@"prID"];
    coderCopy = v28;
  }

  productName = self->_productName;
  if (productName)
  {
    [v28 encodeObject:productName forKey:@"prN"];
    coderCopy = v28;
  }

  if (self->_rawGesturesConfigFlags)
  {
    [v28 encodeInteger:? forKey:?];
    coderCopy = v28;
  }

  if (self->_remoteCameraControlConfig)
  {
    [v28 encodeInteger:? forKey:?];
    coderCopy = v28;
  }

  if (self->_routed)
  {
    [v28 encodeBool:1 forKey:@"rutd"];
    coderCopy = v28;
  }

  if (self->_classicRSSI)
  {
    [v28 encodeInteger:? forKey:?];
    coderCopy = v28;
  }

  secondaryPlacement = self->_secondaryPlacement;
  if (secondaryPlacement)
  {
    [v28 encodeInteger:secondaryPlacement forKey:@"scpl"];
    coderCopy = v28;
  }

  if (self->_selectiveSpeechListeningCapability)
  {
    [v28 encodeInteger:? forKey:?];
    coderCopy = v28;
  }

  if (self->_selectiveSpeechListeningConfig)
  {
    [v28 encodeInteger:? forKey:?];
    coderCopy = v28;
  }

  serialNumber = self->_serialNumber;
  if (serialNumber)
  {
    [v28 encodeObject:serialNumber forKey:@"sn"];
    coderCopy = v28;
  }

  serialNumberLeft = self->_serialNumberLeft;
  if (serialNumberLeft)
  {
    [v28 encodeObject:serialNumberLeft forKey:@"snLe"];
    coderCopy = v28;
  }

  serialNumberRight = self->_serialNumberRight;
  if (serialNumberRight)
  {
    [v28 encodeObject:serialNumberRight forKey:@"snRi"];
    coderCopy = v28;
  }

  if (self->_siriMultitoneCapability)
  {
    [v28 encodeInteger:? forKey:?];
    coderCopy = v28;
  }

  if (self->_siriMultitoneEnabled)
  {
    [v28 encodeInteger:? forKey:?];
    coderCopy = v28;
  }

  if (self->_sleepDetectionCapability)
  {
    [v28 encodeInteger:? forKey:?];
    coderCopy = v28;
  }

  if (self->_sleepDetectionEnabled)
  {
    [v28 encodeInteger:? forKey:?];
    coderCopy = v28;
  }

  if (self->_smartRoutingCapability)
  {
    [v28 encodeInteger:? forKey:?];
    coderCopy = v28;
  }

  if (self->_smartRoutingMode)
  {
    [v28 encodeInteger:? forKey:?];
    coderCopy = v28;
  }

  smartRoutingStateFlags = self->_smartRoutingStateFlags;
  if (smartRoutingStateFlags)
  {
    [v28 encodeInt64:smartRoutingStateFlags forKey:@"smRtS"];
    coderCopy = v28;
  }

  if (self->_spatialAudioAllowed)
  {
    [v28 encodeInteger:? forKey:?];
    coderCopy = v28;
  }

  if (self->_streamStateAoS)
  {
    [v28 encodeInteger:? forKey:?];
    coderCopy = v28;
  }

  if (self->_temporaryManagedPairedStatus)
  {
    [v28 encodeInteger:? forKey:?];
    coderCopy = v28;
  }

  if (self->_vendorID)
  {
    [v28 encodeInteger:? forKey:?];
    coderCopy = v28;
  }
}

- (unsigned)CBCapToAACap:(unsigned __int8)cap
{
  if (cap)
  {
    return 2 * (cap == 1);
  }

  else
  {
    return 1;
  }
}

- (id)copyWithZone:(_NSZone *)zone
{
  selfCopy = self;
  objc_sync_enter(selfCopy);
  v5 = [objc_opt_class() allocWithZone:zone];
  [v5 setAcceptReplyPlayPauseConfig:selfCopy->_acceptReplyPlayPauseConfig];
  [v5 setAdaptiveVolumeCapability:selfCopy->_adaptiveVolumeCapability];
  [v5 setAdaptiveVolumeConfig:selfCopy->_adaptiveVolumeConfig];
  v6 = [(NSDate *)selfCopy->_audiogramEnrolledTimestamp copyWithZone:zone];
  [v5 setAudiogramEnrolledTimestamp:v6];

  [v5 setAudioStreamState:selfCopy->_audioStreamState];
  [v5 setAutoANCCapability:selfCopy->_autoANCCapability];
  [v5 setAutoANCStrength:selfCopy->_autoANCStrength];
  v7 = [(AADeviceBatteryInfo *)selfCopy->_batteryInfo copy];
  [v5 setBatteryInfo:v7];

  v8 = [(NSData *)selfCopy->_bluetoothAddressData copyWithZone:zone];
  [v5 setBluetoothAddressData:v8];

  [v5 setBobbleCapability:selfCopy->_bobbleCapability];
  [v5 setBobbleConfig:selfCopy->_bobbleConfig];
  [v5 setCameraControlCapability:selfCopy->_cameraControlCapability];
  [v5 setCaseSoundCapability:selfCopy->_caseSoundCapability];
  [v5 setChargingReminderEnabled:selfCopy->_chargingReminderEnabled];
  [v5 setClassicRSSI:selfCopy->_classicRSSI];
  [v5 setClickHoldModeLeft:selfCopy->_clickHoldModeLeft];
  [v5 setClickHoldModeRight:selfCopy->_clickHoldModeRight];
  [v5 setCloudRecordInfoLoaded:selfCopy->_cloudRecordInfoLoaded];
  [v5 setConnected:selfCopy->_connected];
  [v5 setConnectedAADeviceInfoReceived:selfCopy->_connectedAADeviceInfoReceived];
  [v5 setConnectedCBDeviceReceived:selfCopy->_connectedCBDeviceReceived];
  [v5 setConversationDetectCapability:selfCopy->_conversationDetectCapability];
  [v5 setConversationDetectConfig:selfCopy->_conversationDetectConfig];
  v9 = [(CBDevice *)selfCopy->_coreBluetoothDevice copy];
  v10 = v5[31];
  v5[31] = v9;

  [v5 setCrownRotationDirection:selfCopy->_crownRotationDirection];
  [v5 setDeclineDismissSkipConfig:selfCopy->_declineDismissSkipConfig];
  [v5 setDetectedHeadGesture:selfCopy->_detectedHeadGesture];
  [v5 setDoubleTapActionLeft:selfCopy->_doubleTapActionLeft];
  [v5 setDoubleTapActionRight:selfCopy->_doubleTapActionRight];
  [v5 setDoubleTapCapability:selfCopy->_doubleTapCapability];
  [v5 setDynamicEndOfChargeCapability:selfCopy->_dynamicEndOfChargeCapability];
  [v5 setDynamicEndOfChargeEnabled:selfCopy->_dynamicEndOfChargeEnabled];
  [v5 setDynamicEndOfChargeState:{-[AudioAccessoryDevice dynamicEndOfChargeState](selfCopy, "dynamicEndOfChargeState")}];
  [v5 setDynamicEndOfChargeTempDisabled:selfCopy->_dynamicEndOfChargeTempDisabled];
  [v5 setEarTipFitTestCapability:selfCopy->_earTipFitTestCapability];
  [v5 setEndCallCapability:selfCopy->_endCallCapability];
  [v5 setEndCallConfig:selfCopy->_endCallConfig];
  [v5 setEnhancedTransparencyVersion:selfCopy->_enhancedTransparencyVersion];
  [v5 setFarFieldUplinkCapability:selfCopy->_farFieldUplinkCapability];
  [v5 setFarFieldSessionOnGoing:selfCopy->_farFieldSessionOnGoing];
  [v5 setFrequencyBand:selfCopy->_frequencyBand];
  v11 = [(NSString *)selfCopy->_firmwareVersion copyWithZone:zone];
  [v5 setFirmwareVersion:v11];

  [v5 setGapaFlags:selfCopy->_gapaFlags];
  [v5 setGuestPaired:selfCopy->_guestPaired];
  [v5 setHeadGestureToggle:selfCopy->_headGestureToggle];
  [v5 setHeadGestureProxCardShown:selfCopy->_headGestureProxCardShown];
  [v5 setHealthKitDataWriteAllowed:selfCopy->_healthKitDataWriteAllowed];
  [v5 setHearingAidCapability:selfCopy->_hearingAidCapability];
  [v5 setHearingAidEnrolled:selfCopy->_hearingAidEnrolled];
  [v5 setHearingAidEnabled:selfCopy->_hearingAidEnabled];
  [v5 setHearingAidGainSwipeEnabled:selfCopy->_hearingAidGainSwipeEnabled];
  [v5 setHearingAidV2Capability:selfCopy->_hearingAidV2Capability];
  [v5 setHearingAssistEnabled:selfCopy->_hearingAssistEnabled];
  [v5 setHearingProtectionCapability:selfCopy->_hearingProtectionCapability];
  [v5 setHearingProtectionPPECapability:selfCopy->_hearingProtectionPPECapability];
  [v5 setHearingProtectionPPECapLevel:selfCopy->_hearingProtectionPPECapLevel];
  [v5 setHearingProtectionPPEEnabled:selfCopy->_hearingProtectionPPEEnabled];
  [v5 setHearingTestCapability:selfCopy->_hearingTestCapability];
  [v5 setHeartRateMonitorCapability:selfCopy->_heartRateMonitorCapability];
  [v5 setHeartRateMonitorCapabilityChanged:selfCopy->_heartRateMonitorCapabilityChanged];
  [v5 setHeartRateMonitorCapabilityValueOriginatedFromDevice:selfCopy->_heartRateMonitorCapabilityValueOriginatedFromDevice];
  [v5 setHeartRateMonitorEnabled:selfCopy->_heartRateMonitorEnabled];
  [v5 setHideEarDetectionCapability:selfCopy->_hideEarDetectionCapability];
  [v5 setHideOffListeningModeCapability:selfCopy->_hideOffListeningModeCapability];
  v12 = [(NSString *)selfCopy->_identifier copyWithZone:zone];
  [v5 setIdentifier:v12];

  v13 = [(NSDate *)selfCopy->_lastSeenConnectedTime copyWithZone:zone];
  [v5 setLastSeenConnectedTime:v13];

  [v5 setListeningMode:selfCopy->_listeningMode];
  [v5 setListeningModeConfigs:selfCopy->_listeningModeConfigs];
  [v5 setListeningModeOffAllowed:selfCopy->_listeningModeOffAllowed];
  [v5 setMicrophoneMode:selfCopy->_microphoneMode];
  v14 = [(NSString *)selfCopy->_model copyWithZone:zone];
  [v5 setModel:v14];

  [v5 setMuteControlCapability:selfCopy->_muteControlCapability];
  [v5 setMuteControlConfig:selfCopy->_muteControlConfig];
  v15 = [(NSString *)selfCopy->_name copyWithZone:zone];
  [v5 setName:v15];

  [v5 setOnConnectionActionsCalled:selfCopy->_onConnectionActionsCalled];
  [v5 setOptimizedBatteryChargingState:selfCopy->_optimizedBatteryChargingState];
  [v5 setOvadStreamingCapability:selfCopy->_ovadStreamingCapability];
  [v5 setPaired:selfCopy->_paired];
  [v5 setPairedAADeviceInfoReceived:selfCopy->_pairedAADeviceInfoReceived];
  [v5 setPairedCBDeviceReceived:selfCopy->_pairedCBDeviceReceived];
  [v5 setPeerAutoANCCapability:selfCopy->_peerAutoANCCapability];
  [v5 setPersonalTranslatorCapability:selfCopy->_personalTranslatorCapability];
  [v5 setPlacementMode:selfCopy->_placementMode];
  [v5 setPmeEverywhereCapability:selfCopy->_pmeEverywhereCapability];
  [v5 setPrimaryPlacement:selfCopy->_primaryPlacement];
  [v5 setProductID:selfCopy->_productID];
  v16 = [(NSString *)selfCopy->_productName copyWithZone:zone];
  [v5 setProductName:v16];

  [v5 setRawGesturesConfigFlags:selfCopy->_rawGesturesConfigFlags];
  [v5 setRemoteCameraControlConfig:selfCopy->_remoteCameraControlConfig];
  [v5 setRouted:{-[AudioAccessoryDevice routed](selfCopy, "routed")}];
  [v5 setSecondaryPlacement:selfCopy->_secondaryPlacement];
  [v5 setSelectiveSpeechListeningCapability:selfCopy->_selectiveSpeechListeningCapability];
  [v5 setSelectiveSpeechListeningConfig:selfCopy->_selectiveSpeechListeningConfig];
  v17 = [(NSString *)selfCopy->_serialNumber copyWithZone:zone];
  [v5 setSerialNumber:v17];

  v18 = [(NSString *)selfCopy->_serialNumberLeft copyWithZone:zone];
  [v5 setSerialNumberLeft:v18];

  v19 = [(NSString *)selfCopy->_serialNumberRight copyWithZone:zone];
  [v5 setSerialNumberRight:v19];

  [v5 setSiriMultitoneCapability:selfCopy->_siriMultitoneCapability];
  [v5 setSiriMultitoneEnabled:selfCopy->_siriMultitoneEnabled];
  [v5 setSleepDetectionCapability:selfCopy->_sleepDetectionCapability];
  [v5 setSleepDetectionEnabled:selfCopy->_sleepDetectionEnabled];
  [v5 setSmartRoutingCapability:selfCopy->_smartRoutingCapability];
  [v5 setSmartRoutingMode:selfCopy->_smartRoutingMode];
  [v5 setSmartRoutingStateFlags:selfCopy->_smartRoutingStateFlags];
  [v5 setSpatialAudioAllowed:selfCopy->_spatialAudioAllowed];
  [v5 setStreamStateAoS:selfCopy->_streamStateAoS];
  [v5 setTemporaryManagedPairedStatus:selfCopy->_temporaryManagedPairedStatus];
  [v5 setVendorID:selfCopy->_vendorID];
  objc_sync_exit(selfCopy);

  return v5;
}

- (id)descriptionWithLevel:(int)level
{
  levelCopy = level;
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
    batteryMain = [(AADeviceBatteryInfo *)batteryInfo batteryMain];
    v27 = batteryMain;
    if (batteryMain)
    {
      v290 = batteryMain;
      NSAppendPrintF_safe();
      v28 = v14;

      v14 = v28;
    }

    batteryCase = [(AADeviceBatteryInfo *)self->_batteryInfo batteryCase];
    v30 = batteryCase;
    if (batteryCase)
    {
      v290 = batteryCase;
      NSAppendPrintF_safe();
      v31 = v14;

      v14 = v31;
    }

    batteryCombinedLeftRight = [(AADeviceBatteryInfo *)self->_batteryInfo batteryCombinedLeftRight];
    v33 = batteryCombinedLeftRight;
    if (batteryCombinedLeftRight)
    {
      v290 = batteryCombinedLeftRight;
      NSAppendPrintF_safe();
      v34 = v14;

      v14 = v34;
    }

    batteryLeft = [(AADeviceBatteryInfo *)self->_batteryInfo batteryLeft];
    v36 = batteryLeft;
    if (batteryLeft)
    {
      v290 = batteryLeft;
      NSAppendPrintF_safe();
      v37 = v14;

      v14 = v37;
    }

    batteryRight = [(AADeviceBatteryInfo *)self->_batteryInfo batteryRight];
    v39 = batteryRight;
    if (batteryRight)
    {
      v290 = batteryRight;
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

  chargingReminderCapability = [(AudioAccessoryDevice *)self chargingReminderCapability];
  if (chargingReminderCapability)
  {
    if (chargingReminderCapability == 1)
    {
      v65 = "Unsupported";
    }

    else
    {
      v65 = "?";
    }

    if (chargingReminderCapability == 2)
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

  dynamicEndOfChargeState = [(AudioAccessoryDevice *)self dynamicEndOfChargeState];
  if (dynamicEndOfChargeState)
  {
    if (dynamicEndOfChargeState > 3)
    {
      v78 = "?";
    }

    else
    {
      v78 = off_278CDDAC8[dynamicEndOfChargeState - 1];
    }

    v293 = ShorthandString(v78);
    NSAppendPrintF_safe();
    v79 = v72;

    v72 = v79;
  }

  NSAppendPrintF_safe();
  v80 = v72;

  optimizedBatteryChargingCapability = [(AudioAccessoryDevice *)self optimizedBatteryChargingCapability];
  if (optimizedBatteryChargingCapability)
  {
    if (optimizedBatteryChargingCapability == 1)
    {
      v82 = "Unsupported";
    }

    else
    {
      v82 = "?";
    }

    if (optimizedBatteryChargingCapability == 2)
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

  if (levelCopy < 0x15u)
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
  selfCopy = self;
  objc_sync_enter(selfCopy);
  bluetoothAddress = selfCopy->_bluetoothAddress;
  if (!bluetoothAddress)
  {
    if (selfCopy->_bluetoothAddressData)
    {
      v4 = CUPrintNSDataAddress();
      v5 = selfCopy->_bluetoothAddress;
      selfCopy->_bluetoothAddress = v4;

      bluetoothAddress = selfCopy->_bluetoothAddress;
    }

    else
    {
      bluetoothAddress = 0;
    }
  }

  v6 = bluetoothAddress;
  objc_sync_exit(selfCopy);

  return v6;
}

- (unsigned)chargingReminderCapability
{
  productID = [(AudioAccessoryDevice *)self productID];
  if (productID - 8212 > 0x14 || ((1 << (productID - 20)) & 0x190081) == 0)
  {
    return productID != 0;
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
  dynamicEndOfChargeEnabled = [(AudioAccessoryDevice *)self dynamicEndOfChargeEnabled];
  if (dynamicEndOfChargeEnabled)
  {
    dynamicEndOfChargeEnabled2 = [(AudioAccessoryDevice *)self dynamicEndOfChargeEnabled];
    if ([(AudioAccessoryDevice *)self dynamicEndOfChargeTempDisabled]== 1)
    {
      v5 = 3;
    }

    else
    {
      v5 = 1;
    }

    if (dynamicEndOfChargeEnabled2 == 1)
    {
      LOBYTE(dynamicEndOfChargeEnabled) = v5;
    }

    else
    {
      LOBYTE(dynamicEndOfChargeEnabled) = 2;
    }
  }

  return dynamicEndOfChargeEnabled;
}

- (unsigned)optimizedBatteryChargingCapability
{
  productID = [(AudioAccessoryDevice *)self productID];
  if (productID - 8206 > 0x1A || ((1 << (productID - 14)) & 0x6452861) == 0)
  {
    return productID != 0;
  }

  else
  {
    return 2;
  }
}

- (BOOL)pairedInfoComplete
{
  pairedCBDeviceReceived = [(AudioAccessoryDevice *)self pairedCBDeviceReceived];
  if (pairedCBDeviceReceived)
  {

    LOBYTE(pairedCBDeviceReceived) = [(AudioAccessoryDevice *)self pairedAADeviceInfoReceived];
  }

  return pairedCBDeviceReceived;
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

- (void)setBatteryInfo:(id)info
{
  infoCopy = info;
  p_batteryInfo = &self->_batteryInfo;
  if (self->_batteryInfo != infoCopy)
  {
    v8 = infoCopy;
    selfCopy = self;
    objc_sync_enter(selfCopy);
    objc_storeStrong(p_batteryInfo, info);
    objc_sync_exit(selfCopy);

    infoCopy = v8;
  }
}

- (void)setBluetoothAddressData:(id)data
{
  dataCopy = data;
  selfCopy = self;
  objc_sync_enter(selfCopy);
  objc_storeStrong(&selfCopy->_bluetoothAddressData, data);
  bluetoothAddressData = selfCopy->_bluetoothAddressData;
  v7 = CUPrintNSDataAddress();
  bluetoothAddress = selfCopy->_bluetoothAddress;
  selfCopy->_bluetoothAddress = v7;

  objc_sync_exit(selfCopy);
}

- (void)setCloudRecordInfoLoaded:(BOOL)loaded
{
  if (self->_cloudRecordInfoLoaded != loaded)
  {
    obj = self;
    objc_sync_enter(obj);
    self->_cloudRecordInfoLoaded = loaded;
    objc_sync_exit(obj);
  }
}

- (void)setConnected:(BOOL)connected
{
  if (self->_connected != connected)
  {
    obj = self;
    objc_sync_enter(obj);
    self->_connected = connected;
    objc_sync_exit(obj);
  }
}

- (BOOL)setDefaultConfigurationsForCloudSyncedPropertiesIfNeeded
{
  selfCopy = self;
  objc_sync_enter(selfCopy);
  if (selfCopy->_bobbleCapability == 2 && !selfCopy->_headGestureToggle)
  {
    selfCopy->_headGestureToggle = 2;
    v3 = 1;
    selfCopy->_acceptReplyPlayPauseConfig = 1;
    selfCopy->_declineDismissSkipConfig = 2;
  }

  else
  {
    v3 = 0;
  }

  if ([(AudioAccessoryDevice *)selfCopy heartRateMonitorCapability]== 2 && !selfCopy->_healthKitDataWriteAllowed)
  {
    v3 = 1;
    selfCopy->_healthKitDataWriteAllowed = 1;
  }

  if (_os_feature_enabled_impl() && [(AudioAccessoryDevice *)selfCopy chargingReminderCapability]== 2 && !selfCopy->_chargingReminderEnabled)
  {
    v3 = 1;
    selfCopy->_chargingReminderEnabled = 1;
  }

  if (_os_feature_enabled_impl() && selfCopy->_cameraControlCapability == 2 && !selfCopy->_remoteCameraControlConfig)
  {
    v3 = 1;
    selfCopy->_remoteCameraControlConfig = 1;
  }

  objc_sync_exit(selfCopy);

  return v3;
}

- (void)setDetectedHeadGesture:(unsigned __int8)gesture
{
  if (self->_detectedHeadGesture != gesture)
  {
    obj = self;
    objc_sync_enter(obj);
    self->_detectedHeadGesture = gesture;
    objc_sync_exit(obj);
  }
}

- (void)setDynamicEndOfChargeEnabled:(char)enabled
{
  if (self->_dynamicEndOfChargeEnabled != enabled)
  {
    obj = self;
    objc_sync_enter(obj);
    self->_dynamicEndOfChargeEnabled = enabled;
    objc_sync_exit(obj);
  }
}

- (void)setHeartRateMonitorCapabilityChanged:(BOOL)changed
{
  if (self->_heartRateMonitorCapabilityChanged != changed)
  {
    obj = self;
    objc_sync_enter(obj);
    self->_heartRateMonitorCapabilityChanged = changed;
    objc_sync_exit(obj);
  }
}

- (void)setHeartRateMonitorCapabilityValueOriginatedFromDevice:(BOOL)device
{
  if (self->_heartRateMonitorCapabilityValueOriginatedFromDevice != device)
  {
    obj = self;
    objc_sync_enter(obj);
    self->_heartRateMonitorCapabilityValueOriginatedFromDevice = device;
    objc_sync_exit(obj);
  }
}

- (void)setDynamicEndOfChargeTempDisabled:(char)disabled
{
  if (self->_dynamicEndOfChargeTempDisabled != disabled)
  {
    obj = self;
    objc_sync_enter(obj);
    self->_dynamicEndOfChargeTempDisabled = disabled;
    objc_sync_exit(obj);
  }
}

- (void)setIdentifier:(id)identifier
{
  identifierCopy = identifier;
  obj = self;
  objc_sync_enter(obj);
  identifier = obj->_identifier;
  obj->_identifier = identifierCopy;

  objc_sync_exit(obj);
}

- (void)setOnConnectionActionsCalled:(BOOL)called
{
  if (self->_onConnectionActionsCalled != called)
  {
    obj = self;
    objc_sync_enter(obj);
    self->_onConnectionActionsCalled = called;
    objc_sync_exit(obj);
  }
}

- (void)setOptimizedBatteryChargingState:(char)state
{
  if (self->_optimizedBatteryChargingState != state)
  {
    obj = self;
    objc_sync_enter(obj);
    self->_optimizedBatteryChargingState = state;
    objc_sync_exit(obj);
  }
}

- (void)setPaired:(BOOL)paired
{
  if (self->_paired != paired)
  {
    obj = self;
    objc_sync_enter(obj);
    self->_paired = paired;
    objc_sync_exit(obj);
  }
}

- (void)setSiriMultitoneEnabled:(char)enabled
{
  if (self->_siriMultitoneEnabled != enabled)
  {
    obj = self;
    objc_sync_enter(obj);
    self->_siriMultitoneEnabled = enabled;
    objc_sync_exit(obj);
  }
}

- (void)setSmartRoutingStateFlags:(unsigned int)flags
{
  if (self->_smartRoutingStateFlags != flags)
  {
    obj = self;
    objc_sync_enter(obj);
    self->_smartRoutingStateFlags = flags;
    objc_sync_exit(obj);
  }
}

- (void)setFarFieldSessionOnGoing:(char)going
{
  if (self->_farFieldSessionOnGoing != going)
  {
    obj = self;
    objc_sync_enter(obj);
    self->_farFieldSessionOnGoing = going;
    objc_sync_exit(obj);
  }
}

- (BOOL)updateWithPairedAADevice:(id)device
{
  deviceCopy = device;
  selfCopy = self;
  objc_sync_enter(selfCopy);
  acceptReplyPlayPauseConfig = [deviceCopy acceptReplyPlayPauseConfig];
  if (acceptReplyPlayPauseConfig && [(AudioAccessoryDevice *)selfCopy acceptReplyPlayPauseConfig]!= acceptReplyPlayPauseConfig)
  {
    [(AudioAccessoryDevice *)selfCopy setAcceptReplyPlayPauseConfig:acceptReplyPlayPauseConfig];
    v7 = 1;
  }

  else
  {
    v7 = 0;
  }

  autoANCCapability = [deviceCopy autoANCCapability];
  if (autoANCCapability && [(AudioAccessoryDevice *)selfCopy autoANCCapability]!= autoANCCapability)
  {
    [(AudioAccessoryDevice *)selfCopy setAutoANCCapability:autoANCCapability];
    v7 = 1;
  }

  audiogramEnrolledTimestamp = [deviceCopy audiogramEnrolledTimestamp];
  if (audiogramEnrolledTimestamp)
  {
    audiogramEnrolledTimestamp2 = [(AudioAccessoryDevice *)selfCopy audiogramEnrolledTimestamp];
    v11 = audiogramEnrolledTimestamp;
    v12 = v11;
    if (audiogramEnrolledTimestamp2 == v11)
    {
    }

    else
    {
      if (audiogramEnrolledTimestamp2)
      {
        v13 = [audiogramEnrolledTimestamp2 isEqual:v11];

        if (v13)
        {
          goto LABEL_16;
        }
      }

      else
      {
      }

      [(AudioAccessoryDevice *)selfCopy setAudiogramEnrolledTimestamp:v12];
      v7 = 1;
    }
  }

LABEL_16:
  bobbleCapability = [deviceCopy bobbleCapability];
  if (bobbleCapability && [(AudioAccessoryDevice *)selfCopy bobbleCapability]!= bobbleCapability)
  {
    [(AudioAccessoryDevice *)selfCopy setBobbleCapability:bobbleCapability];
    v7 = 1;
  }

  cameraControlCapability = [deviceCopy cameraControlCapability];
  if (cameraControlCapability && [(AudioAccessoryDevice *)selfCopy cameraControlCapability]!= cameraControlCapability)
  {
    [(AudioAccessoryDevice *)selfCopy setCameraControlCapability:cameraControlCapability];
    v7 = 1;
  }

  caseSoundCapability = [deviceCopy caseSoundCapability];
  if (caseSoundCapability && [(AudioAccessoryDevice *)selfCopy caseSoundCapability]!= caseSoundCapability)
  {
    [(AudioAccessoryDevice *)selfCopy setCaseSoundCapability:caseSoundCapability];
    v7 = 1;
  }

  chargingReminderEnabled = [deviceCopy chargingReminderEnabled];
  if (chargingReminderEnabled && [(AudioAccessoryDevice *)selfCopy chargingReminderEnabled]!= chargingReminderEnabled)
  {
    [(AudioAccessoryDevice *)selfCopy setChargingReminderEnabled:chargingReminderEnabled];
    v7 = 1;
  }

  declineDismissSkipConfig = [deviceCopy declineDismissSkipConfig];
  if (declineDismissSkipConfig && [(AudioAccessoryDevice *)selfCopy declineDismissSkipConfig]!= declineDismissSkipConfig)
  {
    [(AudioAccessoryDevice *)selfCopy setDeclineDismissSkipConfig:declineDismissSkipConfig];
    v7 = 1;
  }

  dynamicEndOfChargeCapability = [deviceCopy dynamicEndOfChargeCapability];
  if (dynamicEndOfChargeCapability != [(AudioAccessoryDevice *)selfCopy dynamicEndOfChargeCapability])
  {
    [(AudioAccessoryDevice *)selfCopy setDynamicEndOfChargeCapability:dynamicEndOfChargeCapability];
    v7 = 1;
  }

  earTipFitTestCapability = [deviceCopy earTipFitTestCapability];
  if (earTipFitTestCapability && [(AudioAccessoryDevice *)selfCopy earTipFitTestCapability]!= earTipFitTestCapability)
  {
    [(AudioAccessoryDevice *)selfCopy setEarTipFitTestCapability:earTipFitTestCapability];
    v7 = 1;
  }

  enhancedTransparencyVersion = [deviceCopy enhancedTransparencyVersion];
  if (enhancedTransparencyVersion != [(AudioAccessoryDevice *)selfCopy enhancedTransparencyVersion])
  {
    [(AudioAccessoryDevice *)selfCopy setEnhancedTransparencyVersion:enhancedTransparencyVersion];
    v7 = 1;
  }

  farFieldUplinkCapability = [deviceCopy farFieldUplinkCapability];
  if (farFieldUplinkCapability && [(AudioAccessoryDevice *)selfCopy farFieldUplinkCapability]!= farFieldUplinkCapability)
  {
    [(AudioAccessoryDevice *)selfCopy setFarFieldUplinkCapability:farFieldUplinkCapability];
    v7 = 1;
  }

  headGestureToggle = [deviceCopy headGestureToggle];
  if (headGestureToggle && [(AudioAccessoryDevice *)selfCopy headGestureToggle]!= headGestureToggle)
  {
    [(AudioAccessoryDevice *)selfCopy setHeadGestureToggle:headGestureToggle];
    v7 = 1;
  }

  ovadStreamingCapability = [deviceCopy ovadStreamingCapability];
  if (ovadStreamingCapability && [(AudioAccessoryDevice *)selfCopy ovadStreamingCapability]!= ovadStreamingCapability)
  {
    [(AudioAccessoryDevice *)selfCopy setOvadStreamingCapability:ovadStreamingCapability];
    v7 = 1;
  }

  healthKitDataWriteAllowed = [deviceCopy healthKitDataWriteAllowed];
  if (healthKitDataWriteAllowed && [(AudioAccessoryDevice *)selfCopy healthKitDataWriteAllowed]!= healthKitDataWriteAllowed)
  {
    [(AudioAccessoryDevice *)selfCopy setHealthKitDataWriteAllowed:healthKitDataWriteAllowed];
    v7 = 1;
  }

  hearingAidCapability = [deviceCopy hearingAidCapability];
  if (hearingAidCapability && [(AudioAccessoryDevice *)selfCopy hearingAidCapability]!= hearingAidCapability)
  {
    [(AudioAccessoryDevice *)selfCopy setHearingAidCapability:hearingAidCapability];
    v7 = 1;
  }

  hearingAidV2Capability = [deviceCopy hearingAidV2Capability];
  if (hearingAidV2Capability != [(AudioAccessoryDevice *)selfCopy hearingAidV2Capability])
  {
    [(AudioAccessoryDevice *)selfCopy setHearingAidV2Capability:hearingAidV2Capability];
    v7 = 1;
  }

  hearingProtectionCapability = [deviceCopy hearingProtectionCapability];
  if (hearingProtectionCapability && [(AudioAccessoryDevice *)selfCopy hearingProtectionCapability]!= hearingProtectionCapability)
  {
    [(AudioAccessoryDevice *)selfCopy setHearingProtectionCapability:hearingProtectionCapability];
    v7 = 1;
  }

  hearingProtectionPPECapability = [deviceCopy hearingProtectionPPECapability];
  if (hearingProtectionPPECapability != [(AudioAccessoryDevice *)selfCopy hearingProtectionPPECapability])
  {
    [(AudioAccessoryDevice *)selfCopy setHearingProtectionPPECapability:hearingProtectionPPECapability];
    v7 = 1;
  }

  hearingTestCapability = [deviceCopy hearingTestCapability];
  if (hearingTestCapability && [(AudioAccessoryDevice *)selfCopy hearingTestCapability]!= hearingTestCapability)
  {
    [(AudioAccessoryDevice *)selfCopy setHearingTestCapability:hearingTestCapability];
    v7 = 1;
  }

  heartRateMonitorCapability = [deviceCopy heartRateMonitorCapability];
  if (heartRateMonitorCapability && [(AudioAccessoryDevice *)selfCopy heartRateMonitorCapability]!= heartRateMonitorCapability)
  {
    [(AudioAccessoryDevice *)selfCopy setHeartRateMonitorCapability:heartRateMonitorCapability];
    v7 = 1;
  }

  hideEarDetectionCapability = [deviceCopy hideEarDetectionCapability];
  if (hideEarDetectionCapability && [(AudioAccessoryDevice *)selfCopy hideEarDetectionCapability]!= hideEarDetectionCapability)
  {
    [(AudioAccessoryDevice *)selfCopy setHideEarDetectionCapability:hideEarDetectionCapability];
    v7 = 1;
  }

  hideOffListeningModeCapability = [deviceCopy hideOffListeningModeCapability];
  if (hideOffListeningModeCapability && [(AudioAccessoryDevice *)selfCopy hideOffListeningModeCapability]!= hideOffListeningModeCapability)
  {
    [(AudioAccessoryDevice *)selfCopy setHideOffListeningModeCapability:hideOffListeningModeCapability];
    v7 = 1;
  }

  lastSeenConnectedTime = [deviceCopy lastSeenConnectedTime];
  lastSeenConnectedTime2 = [(AudioAccessoryDevice *)selfCopy lastSeenConnectedTime];
  v36 = lastSeenConnectedTime;
  v37 = lastSeenConnectedTime2;
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

    [(AudioAccessoryDevice *)selfCopy setLastSeenConnectedTime:v36];
    v7 = 1;
  }

LABEL_79:
  listeningModeOffAllowed = [deviceCopy listeningModeOffAllowed];
  if (listeningModeOffAllowed && [(AudioAccessoryDevice *)selfCopy listeningModeOffAllowed]!= listeningModeOffAllowed)
  {
    [(AudioAccessoryDevice *)selfCopy setListeningModeOffAllowed:listeningModeOffAllowed];
    v7 = 1;
  }

  model = [deviceCopy model];
  if (model)
  {
    model2 = [(AudioAccessoryDevice *)selfCopy model];
    v43 = model;
    v44 = v43;
    if (model2 == v43)
    {

      goto LABEL_90;
    }

    if (model2)
    {
      v45 = [model2 isEqual:v43];

      if (v45)
      {
        goto LABEL_90;
      }
    }

    else
    {
    }

    [(AudioAccessoryDevice *)selfCopy setModel:v44];
    v7 = 1;
  }

LABEL_90:
  name = [deviceCopy name];
  if (name)
  {
    name2 = [(AudioAccessoryDevice *)selfCopy name];
    v48 = name;
    v49 = v48;
    if (name2 == v48)
    {
    }

    else
    {
      if (name2)
      {
        v50 = [name2 isEqual:v48];

        if (v50)
        {
          goto LABEL_98;
        }
      }

      else
      {
      }

      [(AudioAccessoryDevice *)selfCopy setName:v49];
      v7 = 1;
    }
  }

LABEL_98:
  if ([deviceCopy paired] && !-[AudioAccessoryDevice paired](selfCopy, "paired"))
  {
    v7 = 1;
    [(AudioAccessoryDevice *)selfCopy setPaired:1];
  }

  computePersonalTranslatorCapability = [(AudioAccessoryDevice *)selfCopy computePersonalTranslatorCapability];
  if (computePersonalTranslatorCapability != [(AudioAccessoryDevice *)selfCopy personalTranslatorCapability])
  {
    [(AudioAccessoryDevice *)selfCopy setPersonalTranslatorCapability:computePersonalTranslatorCapability];
    v7 = 1;
  }

  productID = [deviceCopy productID];
  if (productID && [(AudioAccessoryDevice *)selfCopy productID]!= productID)
  {
    [(AudioAccessoryDevice *)selfCopy setProductID:productID];
    v7 = 1;
  }

  if (_os_feature_enabled_impl())
  {
    remoteCameraControlConfig = [deviceCopy remoteCameraControlConfig];
    if (remoteCameraControlConfig)
    {
      if ([(AudioAccessoryDevice *)selfCopy remoteCameraControlConfig]!= remoteCameraControlConfig)
      {
        -[AudioAccessoryDevice setRemoteCameraControlConfig:](selfCopy, "setRemoteCameraControlConfig:", [deviceCopy remoteCameraControlConfig]);
        v7 = 1;
      }
    }
  }

  siriMultitoneCapability = [deviceCopy siriMultitoneCapability];
  if (siriMultitoneCapability && [(AudioAccessoryDevice *)selfCopy siriMultitoneCapability]!= siriMultitoneCapability)
  {
    [(AudioAccessoryDevice *)selfCopy setSiriMultitoneCapability:siriMultitoneCapability];
    v7 = 1;
  }

  sleepDetectionCapability = [deviceCopy sleepDetectionCapability];
  if (sleepDetectionCapability && [(AudioAccessoryDevice *)selfCopy sleepDetectionCapability]!= sleepDetectionCapability)
  {
    [(AudioAccessoryDevice *)selfCopy setSleepDetectionCapability:sleepDetectionCapability];
    v7 = 1;
  }

  if (_os_feature_enabled_impl())
  {
    temporaryManagedPairedStatus = [deviceCopy temporaryManagedPairedStatus];
    if (temporaryManagedPairedStatus != [(AudioAccessoryDevice *)selfCopy temporaryManagedPairedStatus])
    {
      [(AudioAccessoryDevice *)selfCopy setTemporaryManagedPairedStatus:temporaryManagedPairedStatus];
      v7 = 1;
    }
  }

  pairedAADeviceInfoReceived = [deviceCopy pairedAADeviceInfoReceived];
  if (pairedAADeviceInfoReceived != [(AudioAccessoryDevice *)selfCopy pairedAADeviceInfoReceived])
  {
    [(AudioAccessoryDevice *)selfCopy setPairedAADeviceInfoReceived:pairedAADeviceInfoReceived];
    v7 = 1;
  }

  pairedCBDeviceReceived = [deviceCopy pairedCBDeviceReceived];
  if (pairedCBDeviceReceived != [(AudioAccessoryDevice *)selfCopy pairedCBDeviceReceived])
  {
    [(AudioAccessoryDevice *)selfCopy setPairedCBDeviceReceived:pairedCBDeviceReceived];
    v7 = 1;
  }

  pmeEverywhereCapability = [deviceCopy pmeEverywhereCapability];
  if (pmeEverywhereCapability && [(AudioAccessoryDevice *)selfCopy pmeEverywhereCapability]!= pmeEverywhereCapability)
  {
    [(AudioAccessoryDevice *)selfCopy setPmeEverywhereCapability:pmeEverywhereCapability];
    v7 = 1;
  }

  objc_sync_exit(selfCopy);
  return v7;
}

- (BOOL)updateWithAADeviceConfig:(id)config
{
  configCopy = config;
  selfCopy = self;
  objc_sync_enter(selfCopy);
  headGestureToggle = [configCopy headGestureToggle];
  v7 = headGestureToggle != 0;
  if (headGestureToggle)
  {
    -[AudioAccessoryDevice setHeadGestureToggle:](selfCopy, "setHeadGestureToggle:", [configCopy headGestureToggle]);
  }

  if ([configCopy acceptReplyPlayPauseConfig])
  {
    -[AudioAccessoryDevice setAcceptReplyPlayPauseConfig:](selfCopy, "setAcceptReplyPlayPauseConfig:", [configCopy acceptReplyPlayPauseConfig]);
    v7 = 1;
  }

  if ([configCopy declineDismissSkipConfig])
  {
    -[AudioAccessoryDevice setDeclineDismissSkipConfig:](selfCopy, "setDeclineDismissSkipConfig:", [configCopy declineDismissSkipConfig]);
    v7 = 1;
  }

  if (_os_feature_enabled_impl())
  {
    audiogramEnrolledTimestamp = [configCopy audiogramEnrolledTimestamp];

    if (audiogramEnrolledTimestamp)
    {
      audiogramEnrolledTimestamp2 = [configCopy audiogramEnrolledTimestamp];
      [(AudioAccessoryDevice *)selfCopy setAudiogramEnrolledTimestamp:audiogramEnrolledTimestamp2];

      v7 = 1;
    }
  }

  if (_os_feature_enabled_impl() && _os_feature_enabled_impl() && [configCopy listeningModeOffAllowed])
  {
    -[AudioAccessoryDevice setListeningModeOffAllowed:](selfCopy, "setListeningModeOffAllowed:", [configCopy listeningModeOffAllowed]);
    v7 = 1;
  }

  if (_os_feature_enabled_impl() && [configCopy enableChargingReminder])
  {
    -[AudioAccessoryDevice setChargingReminderEnabled:](selfCopy, "setChargingReminderEnabled:", [configCopy enableChargingReminder]);
    v7 = 1;
  }

  if ([configCopy enableHeartRateMonitor])
  {
    -[AudioAccessoryDevice setHeartRateMonitorEnabled:](selfCopy, "setHeartRateMonitorEnabled:", [configCopy enableHeartRateMonitor]);
    v7 = 1;
  }

  if (_os_feature_enabled_impl() && [configCopy remoteCameraControlConfig])
  {
    -[AudioAccessoryDevice setRemoteCameraControlConfig:](selfCopy, "setRemoteCameraControlConfig:", [configCopy remoteCameraControlConfig]);
    v7 = 1;
  }

  if ([configCopy allowHealthKitDataWrite])
  {
    -[AudioAccessoryDevice setHealthKitDataWriteAllowed:](selfCopy, "setHealthKitDataWriteAllowed:", [configCopy allowHealthKitDataWrite]);
    v7 = 1;
  }

  objc_sync_exit(selfCopy);

  return v7;
}

- (BOOL)updateWithConnectedAADeviceInfo:(id)info
{
  infoCopy = info;
  selfCopy = self;
  objc_sync_enter(selfCopy);
  autoANCStrength = [infoCopy autoANCStrength];
  autoANCStrength2 = [(AudioAccessoryDevice *)selfCopy autoANCStrength];
  v8 = autoANCStrength != autoANCStrength2;
  if (autoANCStrength != autoANCStrength2)
  {
    [(AudioAccessoryDevice *)selfCopy setAutoANCStrength:autoANCStrength];
  }

  streamStateAoS = [infoCopy streamStateAoS];
  if (streamStateAoS != [(AudioAccessoryDevice *)selfCopy streamStateAoS])
  {
    [(AudioAccessoryDevice *)selfCopy setStreamStateAoS:streamStateAoS];
    v8 = 1;
  }

  dynamicEndOfChargeEnabled = [infoCopy dynamicEndOfChargeEnabled];
  if (dynamicEndOfChargeEnabled != [(AudioAccessoryDevice *)selfCopy dynamicEndOfChargeEnabled])
  {
    [(AudioAccessoryDevice *)selfCopy setDynamicEndOfChargeEnabled:dynamicEndOfChargeEnabled];
    v8 = 1;
  }

  frequencyBand = [infoCopy frequencyBand];
  if (frequencyBand != [(AudioAccessoryDevice *)selfCopy frequencyBand])
  {
    [(AudioAccessoryDevice *)selfCopy setFrequencyBand:frequencyBand];
    v8 = 1;
  }

  if (_os_feature_enabled_impl())
  {
    hearingAidEnabled = [infoCopy hearingAidEnabled];
    if ([(AudioAccessoryDevice *)selfCopy hearingAidEnabled]!= hearingAidEnabled)
    {
      [(AudioAccessoryDevice *)selfCopy setHearingAidEnabled:?];
      v8 = 1;
    }

    hearingAidEnrolled = [infoCopy hearingAidEnrolled];
    if ([(AudioAccessoryDevice *)selfCopy hearingAidEnrolled]!= hearingAidEnrolled)
    {
      [(AudioAccessoryDevice *)selfCopy setHearingAidEnrolled:?];
      v8 = 1;
    }

    hearingAidGainSwipeEnabled = [infoCopy hearingAidGainSwipeEnabled];
    if ([(AudioAccessoryDevice *)selfCopy hearingAidGainSwipeEnabled]!= hearingAidGainSwipeEnabled)
    {
      [(AudioAccessoryDevice *)selfCopy setHearingAidGainSwipeEnabled:?];
      v8 = 1;
    }

    hearingAssistEnabled = [infoCopy hearingAssistEnabled];
    if ([(AudioAccessoryDevice *)selfCopy hearingAssistEnabled]!= hearingAssistEnabled)
    {
      [(AudioAccessoryDevice *)selfCopy setHearingAssistEnabled:?];
      v8 = 1;
    }
  }

  heartRateMonitorEnabled = [infoCopy heartRateMonitorEnabled];
  if ([(AudioAccessoryDevice *)selfCopy heartRateMonitorEnabled]!= heartRateMonitorEnabled)
  {
    [(AudioAccessoryDevice *)selfCopy setHeartRateMonitorEnabled:?];
    v8 = 1;
  }

  rawGesturesConfigFlags = [infoCopy rawGesturesConfigFlags];
  if (rawGesturesConfigFlags != [(AudioAccessoryDevice *)selfCopy rawGesturesConfigFlags])
  {
    [(AudioAccessoryDevice *)selfCopy setRawGesturesConfigFlags:rawGesturesConfigFlags];
    v8 = 1;
  }

  sleepDetectionEnabled = [infoCopy sleepDetectionEnabled];
  if ([(AudioAccessoryDevice *)selfCopy sleepDetectionEnabled]!= sleepDetectionEnabled)
  {
    [(AudioAccessoryDevice *)selfCopy setSleepDetectionEnabled:?];
    v8 = 1;
  }

  hearingProtectionPPECapabilityLevel = [infoCopy hearingProtectionPPECapabilityLevel];
  if (hearingProtectionPPECapabilityLevel != [(AudioAccessoryDevice *)selfCopy hearingProtectionPPECapLevel])
  {
    [(AudioAccessoryDevice *)selfCopy setHearingProtectionPPECapLevel:hearingProtectionPPECapabilityLevel];
    v8 = 1;
  }

  hearingProtectionPPEEnabled = [infoCopy hearingProtectionPPEEnabled];
  if ([(AudioAccessoryDevice *)selfCopy hearingProtectionPPEEnabled]!= hearingProtectionPPEEnabled)
  {
    [(AudioAccessoryDevice *)selfCopy setHearingProtectionPPEEnabled:?];
    v8 = 1;
  }

  if (![(AudioAccessoryDevice *)selfCopy connectedAADeviceInfoReceived])
  {
    v8 = 1;
    [(AudioAccessoryDevice *)selfCopy setConnectedAADeviceInfoReceived:1];
  }

  objc_sync_exit(selfCopy);

  return v8;
}

- (BOOL)updateWithConnectedCBDevice:(id)device
{
  deviceCopy = device;
  selfCopy = self;
  objc_sync_enter(selfCopy);
  bluetoothAddressData = [(AudioAccessoryDevice *)selfCopy bluetoothAddressData];
  btAddressData = [deviceCopy btAddressData];
  btAddressData2 = bluetoothAddressData;
  v10 = btAddressData;
  v11 = v10;
  v12 = btAddressData2 != v10;
  if (btAddressData2 == v10)
  {

LABEL_8:
    goto LABEL_9;
  }

  if ((btAddressData2 != 0) == (v10 == 0))
  {

    goto LABEL_7;
  }

  v13 = [btAddressData2 isEqual:v10];

  if ((v13 & 1) == 0)
  {
LABEL_7:
    btAddressData2 = [deviceCopy btAddressData];
    [(AudioAccessoryDevice *)selfCopy setBluetoothAddressData:btAddressData2];
    goto LABEL_8;
  }

  v12 = 0;
LABEL_9:
  v14 = -[AudioAccessoryDevice CBCapToAACap:](selfCopy, "CBCapToAACap:", [deviceCopy adaptiveVolumeCapability]);
  if (v14 && [(AudioAccessoryDevice *)selfCopy adaptiveVolumeCapability]!= v14)
  {
    [(AudioAccessoryDevice *)selfCopy setAdaptiveVolumeCapability:v14];
    v12 = 1;
  }

  adaptiveVolumeConfig = [deviceCopy adaptiveVolumeConfig];
  if (adaptiveVolumeConfig && [(AudioAccessoryDevice *)selfCopy adaptiveVolumeConfig]!= adaptiveVolumeConfig)
  {
    [(AudioAccessoryDevice *)selfCopy setAdaptiveVolumeConfig:adaptiveVolumeConfig];
    v12 = 1;
  }

  audioStreamState = [deviceCopy audioStreamState];
  if (audioStreamState && audioStreamState != [(AudioAccessoryDevice *)selfCopy audioStreamState])
  {
    [(AudioAccessoryDevice *)selfCopy setAudioStreamState:audioStreamState];
    v12 = 1;
  }

  clickHoldModeLeft = [deviceCopy clickHoldModeLeft];
  if (clickHoldModeLeft && [(AudioAccessoryDevice *)selfCopy clickHoldModeLeft]!= clickHoldModeLeft)
  {
    [(AudioAccessoryDevice *)selfCopy setClickHoldModeLeft:clickHoldModeLeft];
    v12 = 1;
  }

  clickHoldModeRight = [deviceCopy clickHoldModeRight];
  if (clickHoldModeRight && [(AudioAccessoryDevice *)selfCopy clickHoldModeRight]!= clickHoldModeRight)
  {
    [(AudioAccessoryDevice *)selfCopy setClickHoldModeRight:clickHoldModeRight];
    v12 = 1;
  }

  v19 = -[AudioAccessoryDevice CBCapToAACap:](selfCopy, "CBCapToAACap:", [deviceCopy conversationDetectCapability]);
  if (v19 && [(AudioAccessoryDevice *)selfCopy conversationDetectCapability]!= v19)
  {
    [(AudioAccessoryDevice *)selfCopy setConversationDetectCapability:v19];
    v12 = 1;
  }

  conversationDetectConfig = [deviceCopy conversationDetectConfig];
  if (conversationDetectConfig && [(AudioAccessoryDevice *)selfCopy conversationDetectConfig]!= conversationDetectConfig)
  {
    [(AudioAccessoryDevice *)selfCopy setConversationDetectConfig:conversationDetectConfig];
    v12 = 1;
  }

  crownRotationDirection = [deviceCopy crownRotationDirection];
  if (crownRotationDirection && [(AudioAccessoryDevice *)selfCopy crownRotationDirection]!= crownRotationDirection)
  {
    [(AudioAccessoryDevice *)selfCopy setCrownRotationDirection:crownRotationDirection];
    v12 = 1;
  }

  doubleTapActionLeft = [deviceCopy doubleTapActionLeft];
  if (doubleTapActionLeft && doubleTapActionLeft != [(AudioAccessoryDevice *)selfCopy doubleTapActionLeft])
  {
    [(AudioAccessoryDevice *)selfCopy setDoubleTapActionLeft:doubleTapActionLeft];
    v12 = 1;
  }

  doubleTapActionRight = [deviceCopy doubleTapActionRight];
  if (doubleTapActionRight && doubleTapActionRight != [(AudioAccessoryDevice *)selfCopy doubleTapActionRight])
  {
    [(AudioAccessoryDevice *)selfCopy setDoubleTapActionRight:doubleTapActionRight];
    v12 = 1;
  }

  doubleTapCapability = [deviceCopy doubleTapCapability];
  if (doubleTapCapability && doubleTapCapability != [(AudioAccessoryDevice *)selfCopy doubleTapCapability])
  {
    [(AudioAccessoryDevice *)selfCopy setDoubleTapCapability:doubleTapCapability];
    v12 = 1;
  }

  v25 = -[AudioAccessoryDevice CBCapToAACap:](selfCopy, "CBCapToAACap:", [deviceCopy endCallCapability]);
  if (v25 && [(AudioAccessoryDevice *)selfCopy endCallCapability]!= v25)
  {
    [(AudioAccessoryDevice *)selfCopy setEndCallCapability:v25];
    v12 = 1;
  }

  endCallConfig = [deviceCopy endCallConfig];
  if (endCallConfig && endCallConfig != [(AudioAccessoryDevice *)selfCopy endCallConfig])
  {
    [(AudioAccessoryDevice *)selfCopy setEndCallConfig:endCallConfig];
    v12 = 1;
  }

  firmwareVersion = [(AudioAccessoryDevice *)selfCopy firmwareVersion];
  firmwareVersion2 = [deviceCopy firmwareVersion];
  firmwareVersion3 = firmwareVersion;
  v30 = firmwareVersion2;
  v31 = v30;
  if (firmwareVersion3 == v30)
  {
  }

  else
  {
    if ((firmwareVersion3 != 0) == (v30 == 0))
    {
    }

    else
    {
      v32 = [firmwareVersion3 isEqual:v30];

      if (v32)
      {
        goto LABEL_56;
      }
    }

    firmwareVersion3 = [deviceCopy firmwareVersion];
    [(AudioAccessoryDevice *)selfCopy setFirmwareVersion:firmwareVersion3];
    v12 = 1;
  }

LABEL_56:
  gapaFlags = [deviceCopy gapaFlags];
  if (gapaFlags && [(AudioAccessoryDevice *)selfCopy gapaFlags]!= gapaFlags)
  {
    [(AudioAccessoryDevice *)selfCopy setGapaFlags:gapaFlags];
    v12 = 1;
  }

  if (([deviceCopy deviceFlags] & 0x2000000) != 0)
  {
    v34 = 1;
  }

  else
  {
    v34 = 2;
  }

  if (v34 != [(AudioAccessoryDevice *)selfCopy guestPaired])
  {
    [(AudioAccessoryDevice *)selfCopy setGuestPaired:v34];
    v12 = 1;
  }

  listeningMode = [deviceCopy listeningMode];
  if (listeningMode && listeningMode != [(AudioAccessoryDevice *)selfCopy listeningMode])
  {
    [(AudioAccessoryDevice *)selfCopy setListeningMode:listeningMode];
    v12 = 1;
  }

  listeningModeConfigs = [deviceCopy listeningModeConfigs];
  if (listeningModeConfigs && listeningModeConfigs != [(AudioAccessoryDevice *)selfCopy listeningModeConfigs])
  {
    [(AudioAccessoryDevice *)selfCopy setListeningModeConfigs:listeningModeConfigs];
    v12 = 1;
  }

  microphoneMode = [deviceCopy microphoneMode];
  if (microphoneMode && microphoneMode != [(AudioAccessoryDevice *)selfCopy microphoneMode])
  {
    [(AudioAccessoryDevice *)selfCopy setMicrophoneMode:microphoneMode];
    v12 = 1;
  }

  v38 = -[AudioAccessoryDevice CBCapToAACap:](selfCopy, "CBCapToAACap:", [deviceCopy muteControlCapability]);
  if (v38 && [(AudioAccessoryDevice *)selfCopy muteControlCapability]!= v38)
  {
    [(AudioAccessoryDevice *)selfCopy setMuteControlCapability:v38];
    v12 = 1;
  }

  muteControlConfig = [deviceCopy muteControlConfig];
  if (muteControlConfig && muteControlConfig != [(AudioAccessoryDevice *)selfCopy muteControlConfig])
  {
    [(AudioAccessoryDevice *)selfCopy setMuteControlConfig:muteControlConfig];
    v12 = 1;
  }

  v40 = -[AudioAccessoryDevice CBCapToAACap:](selfCopy, "CBCapToAACap:", [deviceCopy autoAncCapability]);
  if (v40 && [(AudioAccessoryDevice *)selfCopy peerAutoANCCapability]!= v40)
  {
    [(AudioAccessoryDevice *)selfCopy setPeerAutoANCCapability:v40];
    v12 = 1;
  }

  placementMode = [deviceCopy placementMode];
  if (placementMode && placementMode != [(AudioAccessoryDevice *)selfCopy placementMode])
  {
    [(AudioAccessoryDevice *)selfCopy setPlacementMode:placementMode];
    v12 = 1;
  }

  primaryPlacement = [deviceCopy primaryPlacement];
  if (primaryPlacement && primaryPlacement != [(AudioAccessoryDevice *)selfCopy primaryPlacement])
  {
    [(AudioAccessoryDevice *)selfCopy setPrimaryPlacement:primaryPlacement];
    v12 = 1;
  }

  secondaryPlacement = [deviceCopy secondaryPlacement];
  if (secondaryPlacement && secondaryPlacement != [(AudioAccessoryDevice *)selfCopy secondaryPlacement])
  {
    [(AudioAccessoryDevice *)selfCopy setSecondaryPlacement:secondaryPlacement];
    v12 = 1;
  }

  rssi = [deviceCopy rssi];
  if (rssi && rssi != [(AudioAccessoryDevice *)selfCopy classicRSSI])
  {
    [(AudioAccessoryDevice *)selfCopy setClassicRSSI:rssi];
  }

  v45 = -[AudioAccessoryDevice CBCapToAACap:](selfCopy, "CBCapToAACap:", [deviceCopy selectiveSpeechListeningCapability]);
  if (v45 && [(AudioAccessoryDevice *)selfCopy selectiveSpeechListeningCapability]!= v45)
  {
    [(AudioAccessoryDevice *)selfCopy setSelectiveSpeechListeningCapability:v45];
    v12 = 1;
  }

  selectiveSpeechListeningConfig = [deviceCopy selectiveSpeechListeningConfig];
  if (selectiveSpeechListeningConfig && selectiveSpeechListeningConfig != [(AudioAccessoryDevice *)selfCopy selectiveSpeechListeningConfig])
  {
    [(AudioAccessoryDevice *)selfCopy setSelectiveSpeechListeningConfig:selectiveSpeechListeningConfig];
    v12 = 1;
  }

  serialNumber = [(AudioAccessoryDevice *)selfCopy serialNumber];
  serialNumber2 = [deviceCopy serialNumber];
  serialNumber3 = serialNumber;
  v50 = serialNumber2;
  v51 = v50;
  if (serialNumber3 == v50)
  {

LABEL_107:
    goto LABEL_108;
  }

  if ((serialNumber3 != 0) == (v50 == 0))
  {

    goto LABEL_106;
  }

  v52 = [serialNumber3 isEqual:v50];

  if ((v52 & 1) == 0)
  {
LABEL_106:
    serialNumber3 = [deviceCopy serialNumber];
    [(AudioAccessoryDevice *)selfCopy setSerialNumber:serialNumber3];
    v12 = 1;
    goto LABEL_107;
  }

LABEL_108:
  serialNumberLeft = [(AudioAccessoryDevice *)selfCopy serialNumberLeft];
  serialNumberLeft2 = [deviceCopy serialNumberLeft];
  serialNumberLeft3 = serialNumberLeft;
  v56 = serialNumberLeft2;
  v57 = v56;
  if (serialNumberLeft3 == v56)
  {

LABEL_115:
    goto LABEL_116;
  }

  if ((serialNumberLeft3 != 0) == (v56 == 0))
  {

    goto LABEL_114;
  }

  v58 = [serialNumberLeft3 isEqual:v56];

  if ((v58 & 1) == 0)
  {
LABEL_114:
    serialNumberLeft3 = [deviceCopy serialNumberLeft];
    [(AudioAccessoryDevice *)selfCopy setSerialNumberLeft:serialNumberLeft3];
    v12 = 1;
    goto LABEL_115;
  }

LABEL_116:
  serialNumberRight = [(AudioAccessoryDevice *)selfCopy serialNumberRight];
  serialNumberRight2 = [deviceCopy serialNumberRight];
  serialNumberRight3 = serialNumberRight;
  v62 = serialNumberRight2;
  v63 = v62;
  if (serialNumberRight3 == v62)
  {

LABEL_123:
    goto LABEL_124;
  }

  if ((serialNumberRight3 != 0) == (v62 == 0))
  {

    goto LABEL_122;
  }

  v64 = [serialNumberRight3 isEqual:v62];

  if ((v64 & 1) == 0)
  {
LABEL_122:
    serialNumberRight3 = [deviceCopy serialNumberRight];
    [(AudioAccessoryDevice *)selfCopy setSerialNumberRight:serialNumberRight3];
    v12 = 1;
    goto LABEL_123;
  }

LABEL_124:
  if (([deviceCopy deviceFlags] & 0x10000000000) != 0)
  {
    v65 = 2;
  }

  else
  {
    v65 = 1;
  }

  if (v65 != [(AudioAccessoryDevice *)selfCopy smartRoutingCapability])
  {
    [(AudioAccessoryDevice *)selfCopy setSmartRoutingCapability:v65];
    v12 = 1;
  }

  smartRoutingMode = [deviceCopy smartRoutingMode];
  if (smartRoutingMode && smartRoutingMode != [(AudioAccessoryDevice *)selfCopy smartRoutingMode])
  {
    [(AudioAccessoryDevice *)selfCopy setSmartRoutingMode:smartRoutingMode];
    v12 = 1;
  }

  if (([deviceCopy deviceFlags] & 0x10000000) != 0)
  {
    v67 = 1;
  }

  else
  {
    v67 = 2;
  }

  if (v67 != [(AudioAccessoryDevice *)selfCopy spatialAudioAllowed])
  {
    [(AudioAccessoryDevice *)selfCopy setSpatialAudioAllowed:v67];
    v12 = 1;
  }

  objc_storeStrong(&selfCopy->_coreBluetoothDevice, device);
  if (![(AudioAccessoryDevice *)selfCopy connectedCBDeviceReceived])
  {
    v12 = 1;
    [(AudioAccessoryDevice *)selfCopy setConnectedCBDeviceReceived:1];
  }

  objc_sync_exit(selfCopy);

  return v12;
}

- (BOOL)updateWithPairedAADeviceInfo:(id)info
{
  infoCopy = info;
  selfCopy = self;
  objc_sync_enter(selfCopy);
  autoANCCapability = [infoCopy autoANCCapability];
  autoANCCapability2 = [(AudioAccessoryDevice *)selfCopy autoANCCapability];
  v8 = autoANCCapability != autoANCCapability2;
  if (autoANCCapability != autoANCCapability2)
  {
    [(AudioAccessoryDevice *)selfCopy setAutoANCCapability:autoANCCapability];
  }

  bobbleCapability = [infoCopy bobbleCapability];
  if (bobbleCapability != [(AudioAccessoryDevice *)selfCopy bobbleCapability])
  {
    [(AudioAccessoryDevice *)selfCopy setBobbleCapability:bobbleCapability];
    v8 = 1;
  }

  if (_os_feature_enabled_impl())
  {
    cameraControlCapability = [infoCopy cameraControlCapability];
    if (cameraControlCapability != [(AudioAccessoryDevice *)selfCopy cameraControlCapability])
    {
      [(AudioAccessoryDevice *)selfCopy setCameraControlCapability:cameraControlCapability];
      v8 = 1;
    }
  }

  caseSoundCapability = [infoCopy caseSoundCapability];
  if (caseSoundCapability != [(AudioAccessoryDevice *)selfCopy caseSoundCapability])
  {
    [(AudioAccessoryDevice *)selfCopy setCaseSoundCapability:caseSoundCapability];
    v8 = 1;
  }

  dynamicEndOfChargeCapability = [infoCopy dynamicEndOfChargeCapability];
  if (dynamicEndOfChargeCapability != [(AudioAccessoryDevice *)selfCopy dynamicEndOfChargeCapability])
  {
    [(AudioAccessoryDevice *)selfCopy setDynamicEndOfChargeCapability:dynamicEndOfChargeCapability];
    v8 = 1;
  }

  earTipFitTestCapability = [infoCopy earTipFitTestCapability];
  if (earTipFitTestCapability != [(AudioAccessoryDevice *)selfCopy earTipFitTestCapability])
  {
    [(AudioAccessoryDevice *)selfCopy setEarTipFitTestCapability:earTipFitTestCapability];
    v8 = 1;
  }

  enhancedTransparencyVersion = [infoCopy enhancedTransparencyVersion];
  if (enhancedTransparencyVersion != [(AudioAccessoryDevice *)selfCopy enhancedTransparencyVersion])
  {
    [(AudioAccessoryDevice *)selfCopy setEnhancedTransparencyVersion:enhancedTransparencyVersion];
    v8 = 1;
  }

  farFieldUplinkCapability = [infoCopy farFieldUplinkCapability];
  if (farFieldUplinkCapability != [(AudioAccessoryDevice *)selfCopy farFieldUplinkCapability])
  {
    [(AudioAccessoryDevice *)selfCopy setFarFieldUplinkCapability:farFieldUplinkCapability];
    v8 = 1;
  }

  ovadStreamingCapability = [infoCopy ovadStreamingCapability];
  if (ovadStreamingCapability != [(AudioAccessoryDevice *)selfCopy ovadStreamingCapability])
  {
    [(AudioAccessoryDevice *)selfCopy setOvadStreamingCapability:ovadStreamingCapability];
    v8 = 1;
  }

  if (_os_feature_enabled_impl())
  {
    hearingAidCapability = [infoCopy hearingAidCapability];
    if (hearingAidCapability != [(AudioAccessoryDevice *)selfCopy hearingAidCapability])
    {
      [(AudioAccessoryDevice *)selfCopy setHearingAidCapability:hearingAidCapability];
      v8 = 1;
    }
  }

  if (_os_feature_enabled_impl())
  {
    hearingProtectionCapability = [infoCopy hearingProtectionCapability];
    if (hearingProtectionCapability != [(AudioAccessoryDevice *)selfCopy hearingProtectionCapability])
    {
      [(AudioAccessoryDevice *)selfCopy setHearingProtectionCapability:hearingProtectionCapability];
      v8 = 1;
    }
  }

  if (_os_feature_enabled_impl())
  {
    hearingTestCapability = [infoCopy hearingTestCapability];
    if (hearingTestCapability != [(AudioAccessoryDevice *)selfCopy hearingTestCapability])
    {
      [(AudioAccessoryDevice *)selfCopy setHearingTestCapability:hearingTestCapability];
      v8 = 1;
    }
  }

  heartRateMonitorCapability = [infoCopy heartRateMonitorCapability];
  if (heartRateMonitorCapability != [(AudioAccessoryDevice *)selfCopy heartRateMonitorCapability])
  {
    [(AudioAccessoryDevice *)selfCopy setHeartRateMonitorCapability:heartRateMonitorCapability];
    [(AudioAccessoryDevice *)selfCopy setHeartRateMonitorCapabilityValueOriginatedFromDevice:1];
    v8 = 1;
    [(AudioAccessoryDevice *)selfCopy setHeartRateMonitorCapabilityChanged:1];
  }

  heartRateMonitorEnabled = [infoCopy heartRateMonitorEnabled];
  if ([(AudioAccessoryDevice *)selfCopy heartRateMonitorEnabled]!= heartRateMonitorEnabled)
  {
    [(AudioAccessoryDevice *)selfCopy setHeartRateMonitorEnabled:?];
    v8 = 1;
  }

  hideEarDetectionCapability = [infoCopy hideEarDetectionCapability];
  if (hideEarDetectionCapability != [(AudioAccessoryDevice *)selfCopy hideEarDetectionCapability])
  {
    [(AudioAccessoryDevice *)selfCopy setHideEarDetectionCapability:hideEarDetectionCapability];
    v8 = 1;
  }

  hideOffListeningModeCapability = [infoCopy hideOffListeningModeCapability];
  if (hideOffListeningModeCapability != [(AudioAccessoryDevice *)selfCopy hideOffListeningModeCapability])
  {
    [(AudioAccessoryDevice *)selfCopy setHideOffListeningModeCapability:hideOffListeningModeCapability];
    v8 = 1;
  }

  lastSeenTime = [infoCopy lastSeenTime];
  localTimeZone = [MEMORY[0x277CBEBB0] localTimeZone];
  v26 = lastSeenTime - [localTimeZone secondsFromGMT];

  if (v26 >= 1)
  {
    lastSeenConnectedTime = [(AudioAccessoryDevice *)selfCopy lastSeenConnectedTime];
    if (!lastSeenConnectedTime || (-[AudioAccessoryDevice lastSeenConnectedTime](selfCopy, "lastSeenConnectedTime"), v28 = objc_claimAutoreleasedReturnValue(), [v28 timeIntervalSince1970], v30 = v29, v28, lastSeenConnectedTime, v30 < v26))
    {
      v31 = [MEMORY[0x277CBEAA8] dateWithTimeIntervalSince1970:v26];
      [(AudioAccessoryDevice *)selfCopy setLastSeenConnectedTime:v31];

      v8 = 1;
    }
  }

  pmeEverywhereCapability = [(AudioAccessoryDevice *)selfCopy pmeEverywhereCapability];
  if (pmeEverywhereCapability != [infoCopy pmeEverywhereCapability])
  {
    -[AudioAccessoryDevice setPmeEverywhereCapability:](selfCopy, "setPmeEverywhereCapability:", [infoCopy pmeEverywhereCapability]);
    v8 = 1;
  }

  siriMultitoneCapability = [infoCopy siriMultitoneCapability];
  if (siriMultitoneCapability != [(AudioAccessoryDevice *)selfCopy siriMultitoneCapability])
  {
    [(AudioAccessoryDevice *)selfCopy setSiriMultitoneCapability:siriMultitoneCapability];
    v8 = 1;
  }

  sleepDetectionCapability = [infoCopy sleepDetectionCapability];
  if (sleepDetectionCapability != [(AudioAccessoryDevice *)selfCopy sleepDetectionCapability])
  {
    [(AudioAccessoryDevice *)selfCopy setSleepDetectionCapability:sleepDetectionCapability];
    v8 = 1;
  }

  hearingAidV2Capability = [infoCopy hearingAidV2Capability];
  if (hearingAidV2Capability != [(AudioAccessoryDevice *)selfCopy hearingAidV2Capability])
  {
    [(AudioAccessoryDevice *)selfCopy setHearingAidV2Capability:hearingAidV2Capability];
    v8 = 1;
  }

  hearingProtectionPPECapability = [infoCopy hearingProtectionPPECapability];
  if (hearingProtectionPPECapability != [(AudioAccessoryDevice *)selfCopy hearingProtectionPPECapability])
  {
    [(AudioAccessoryDevice *)selfCopy setHearingProtectionPPECapability:hearingProtectionPPECapability];
    v8 = 1;
  }

  if (_os_feature_enabled_impl())
  {
    temporaryManagedPairedStatus = [infoCopy temporaryManagedPairedStatus];
    if ([(AudioAccessoryDevice *)selfCopy temporaryManagedPairedStatus]!= temporaryManagedPairedStatus)
    {
      [(AudioAccessoryDevice *)selfCopy setTemporaryManagedPairedStatus:?];
      v8 = 1;
    }
  }

  if (![(AudioAccessoryDevice *)selfCopy pairedAADeviceInfoReceived])
  {
    v8 = 1;
    [(AudioAccessoryDevice *)selfCopy setPairedAADeviceInfoReceived:1];
  }

  objc_sync_exit(selfCopy);

  return v8;
}

- (BOOL)updateWithPairedCBDevice:(id)device
{
  deviceCopy = device;
  selfCopy = self;
  objc_sync_enter(selfCopy);
  objc_storeStrong(&selfCopy->_coreBluetoothDevice, device);
  bluetoothAddressData = [(AudioAccessoryDevice *)selfCopy bluetoothAddressData];
  btAddressData = [deviceCopy btAddressData];
  btAddressData2 = bluetoothAddressData;
  v10 = btAddressData;
  v11 = v10;
  v12 = btAddressData2 != v10;
  if (btAddressData2 == v10)
  {
  }

  else
  {
    if ((btAddressData2 != 0) == (v10 == 0))
    {
    }

    else
    {
      v13 = [btAddressData2 isEqual:v10];

      if (v13)
      {
        v12 = 0;
        goto LABEL_9;
      }
    }

    btAddressData2 = [deviceCopy btAddressData];
    [(AudioAccessoryDevice *)selfCopy setBluetoothAddressData:btAddressData2];
  }

LABEL_9:
  model = [(AudioAccessoryDevice *)selfCopy model];
  model2 = [deviceCopy model];
  model3 = model;
  v17 = model2;
  v18 = v17;
  if (model3 == v17)
  {

LABEL_16:
    goto LABEL_17;
  }

  if ((model3 != 0) == (v17 == 0))
  {

    goto LABEL_15;
  }

  v19 = [model3 isEqual:v17];

  if ((v19 & 1) == 0)
  {
LABEL_15:
    model3 = [deviceCopy model];
    [(AudioAccessoryDevice *)selfCopy setModel:model3];
    v12 = 1;
    goto LABEL_16;
  }

LABEL_17:
  name = [(AudioAccessoryDevice *)selfCopy name];
  name2 = [deviceCopy name];
  name3 = name;
  v23 = name2;
  v24 = v23;
  if (name3 == v23)
  {

LABEL_24:
    goto LABEL_25;
  }

  if ((name3 != 0) == (v23 == 0))
  {

    goto LABEL_23;
  }

  v25 = [name3 isEqual:v23];

  if ((v25 & 1) == 0)
  {
LABEL_23:
    name3 = [deviceCopy name];
    [(AudioAccessoryDevice *)selfCopy setName:name3];
    v12 = 1;
    goto LABEL_24;
  }

LABEL_25:
  productID = [(AudioAccessoryDevice *)selfCopy productID];
  if (productID != [deviceCopy productID])
  {
    -[AudioAccessoryDevice setProductID:](selfCopy, "setProductID:", [deviceCopy productID]);
    v12 = 1;
  }

  productName = [(AudioAccessoryDevice *)selfCopy productName];
  productName2 = [deviceCopy productName];
  productName3 = productName;
  v30 = productName2;
  v31 = v30;
  if (productName3 == v30)
  {
  }

  else
  {
    if ((productName3 != 0) == (v30 == 0))
    {
    }

    else
    {
      v32 = [productName3 isEqual:v30];

      if (v32)
      {
        goto LABEL_35;
      }
    }

    productName3 = [deviceCopy productName];
    [(AudioAccessoryDevice *)selfCopy setProductName:productName3];
    v12 = 1;
  }

LABEL_35:
  vendorID = [deviceCopy vendorID];
  if (vendorID && [(AudioAccessoryDevice *)selfCopy vendorID]!= vendorID)
  {
    [(AudioAccessoryDevice *)selfCopy setVendorID:vendorID];
    v12 = 1;
  }

  if (![(AudioAccessoryDevice *)selfCopy pairedCBDeviceReceived])
  {
    v12 = 1;
    [(AudioAccessoryDevice *)selfCopy setPairedCBDeviceReceived:1];
  }

  objc_sync_exit(selfCopy);

  return v12;
}

@end