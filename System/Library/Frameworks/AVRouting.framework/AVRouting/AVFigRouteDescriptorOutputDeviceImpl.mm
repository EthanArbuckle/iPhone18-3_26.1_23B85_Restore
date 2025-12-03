@interface AVFigRouteDescriptorOutputDeviceImpl
- (AVFigRouteDescriptorOutputDeviceImpl)initWithRouteDescriptor:(__CFDictionary *)descriptor routeDiscoverer:(OpaqueFigRouteDiscoverer *)discoverer volumeController:(OpaqueFigVolumeControllerState *)controller routingContextFactory:(id)factory useRouteConfigUpdatedNotification:(BOOL)notification routingContext:(OpaqueFigRoutingContext *)context;
- (BOOL)OEMIconVisible;
- (BOOL)allowsHeadTrackedSpatialAudio;
- (BOOL)automaticallyAllowsConnectionsFromPeersInHomeGroup;
- (BOOL)canAccessAppleMusic;
- (BOOL)canAccessRemoteAssets;
- (BOOL)canAccessiCloudMusicLibrary;
- (BOOL)canBeGroupLeader;
- (BOOL)canBeGrouped;
- (BOOL)canCommunicateWithAllLogicalDeviceMembers;
- (BOOL)canMute;
- (BOOL)canRelayCommunicationChannel;
- (BOOL)canSetVolume;
- (BOOL)carOwnsMainAudio;
- (BOOL)carOwnsScreen;
- (BOOL)groupContainsGroupLeader;
- (BOOL)isActivated;
- (BOOL)isActivatedForContinuityScreen;
- (BOOL)isAppleAccessory;
- (BOOL)isCached;
- (BOOL)isCarPlayVideoActive;
- (BOOL)isCarPlayVideoAllowed;
- (BOOL)isClusterLeader;
- (BOOL)isConversationDetectionEnabled;
- (BOOL)isEligibleToBePredictedOutputDevice;
- (BOOL)isEqual:(id)equal;
- (BOOL)isGroupLeader;
- (BOOL)isHeadTrackedSpatialAudioActive;
- (BOOL)isInUseByPairedDevice;
- (BOOL)isLogicalDeviceLeader;
- (BOOL)isMuted;
- (BOOL)limitedUI;
- (BOOL)nightMode;
- (BOOL)onlyAllowsConnectionsFromPeersInHomeGroup;
- (BOOL)ownsTurnByTurnNavigation;
- (BOOL)participatesInGroupPlayback;
- (BOOL)producesLowFidelityAudio;
- (BOOL)recognizingSpeech;
- (BOOL)requiresAuthorization;
- (BOOL)rightHandDrive;
- (BOOL)setAllowsHeadTrackedSpatialAudio:(BOOL)audio error:(id *)error;
- (BOOL)setConversationDetectionEnabled:(BOOL)enabled error:(id *)error;
- (BOOL)setCurrentBluetoothListeningMode:(id)mode error:(id *)error;
- (BOOL)setHeadTrackedSpatialAudioMode:(id)mode error:(id *)error;
- (BOOL)siriForwardingEnabled;
- (BOOL)supportsBluetoothSharing;
- (BOOL)supportsBufferedAirPlay;
- (BOOL)supportsConversationDetection;
- (BOOL)supportsFitnessDataDestination;
- (BOOL)supportsHeadTrackedSpatialAudio;
- (BOOL)supportsScreenMirroringControls;
- (NSArray)OEMIcons;
- (NSArray)availableBluetoothListeningModes;
- (NSArray)clusteredDeviceDescriptions;
- (NSArray)connectedPairedDevices;
- (NSArray)limitedUIElements;
- (NSArray)outputDeviceHIDs;
- (NSArray)screens;
- (NSArray)supportedFeatures;
- (NSData)MFiCertificateSerialNumber;
- (NSData)identifyingMACAddress;
- (NSDictionary)airPlayProperties;
- (NSDictionary)displayCornerMasks;
- (NSDictionary)outputDeviceInfo;
- (NSNumber)batteryLevel;
- (NSNumber)caseBatteryLevel;
- (NSNumber)isInEar;
- (NSNumber)leftBatteryLevel;
- (NSNumber)rightBatteryLevel;
- (NSNumber)supportsDataOverACLProtocol;
- (NSString)ID;
- (NSString)OEMIconLabel;
- (NSString)alternateTransportType;
- (NSString)clusterID;
- (NSString)currentBluetoothListeningMode;
- (NSString)firmwareVersion;
- (NSString)groupID;
- (NSString)headTrackedSpatialAudioMode;
- (NSString)logicalDeviceID;
- (NSString)manufacturer;
- (NSString)modelID;
- (NSString)name;
- (NSString)serialNumber;
- (__CFDictionary)routeDescriptor;
- (float)volume;
- (float)volumeForActivatedDeviceClusterMembersWithRoomID:(id)d;
- (id)borrowScreenForClient:(id)client reason:(id)reason;
- (id)currentScreenViewAreaForScreenID:(id)d;
- (id)requestTurnByTurnNavigationOwnership;
- (int)_withEndpoint:(id)endpoint;
- (int64_t)HAPConformance;
- (int64_t)authenticationType;
- (int64_t)clusterType;
- (int64_t)configuredClusterSize;
- (int64_t)deviceSubType;
- (int64_t)deviceType;
- (int64_t)electronicTollCollection;
- (int64_t)mediaSessionStatus;
- (int64_t)navigationAidedDriving;
- (int64_t)transportType;
- (int64_t)voiceTriggerMode;
- (int64_t)volumeControlType;
- (unint64_t)deviceFeatures;
- (unint64_t)hash;
- (void)_canMuteDidChangeForEndpointWithID:(__CFString *)d;
- (void)_canSetEndpointVolumeDidChangeForEndpointWithID:(__CFString *)d;
- (void)_carPlayTestNotification:(id)notification;
- (void)_endpointVolumeControlTypeDidChangeForEndpointWithID:(__CFString *)d;
- (void)_handleRouteDescriptionEvent:(__CFString *)event payload:(id)payload;
- (void)_iOSUIRequestedNotification:(id)notification;
- (void)_mutedDidChangeForEndpointWithID:(__CFString *)d;
- (void)_routeDescriptionDidChange:(__CFDictionary *)change;
- (void)_siriRequestedNotification:(id)notification;
- (void)_unhandledRemoteCommandNotification:(id)notification;
- (void)_vehicleInformationDidChange:(id)change;
- (void)_volumeDidChangeForEndpointWithID:(__CFString *)d;
- (void)_volumeForEndpointDidChange:(__CFString *)change forRoomID:(__CFString *)d;
- (void)configureUsingBlock:(id)block options:(id)options completionHandler:(id)handler;
- (void)dealloc;
- (void)decreaseVolumeByCount:(int64_t)count;
- (void)increaseVolumeByCount:(int64_t)count;
- (void)performHapticFeedbackForUUID:(id)d withHapticType:(id)type completionHandler:(id)handler;
- (void)requestCarUIForURL:(id)l withUUID:(id)d;
- (void)requestViewArea:(int64_t)area forScreenID:(id)d;
- (void)setActivatedDeviceClusterMembersVolume:(float)volume withRoomID:(id)d;
- (void)setCarPlayVideoActive:(BOOL)active completionHandler:(id)handler;
- (void)setDisplayCornerMasks:(id)masks;
- (void)setMediaRemoteData:(id)data completionHandler:(id)handler;
- (void)setRouteDescriptor:(__CFDictionary *)descriptor;
- (void)setSecondDisplayEnabled:(BOOL)enabled;
- (void)setSecondDisplayMode:(id)mode completionHandler:(id)handler;
- (void)setSiriForwardingEnabled:(BOOL)enabled;
- (void)setVolume:(float)volume;
- (void)suggestUIWithURLs:(id)ls completionHandler:(id)handler;
- (void)takeScreenForClient:(id)client reason:(id)reason;
@end

@implementation AVFigRouteDescriptorOutputDeviceImpl

uint64_t __61__AVFigRouteDescriptorOutputDeviceImpl_isCarPlayVideoAllowed__block_invoke(void *a1)
{
  v2 = *MEMORY[0x1E695E480];
  v3 = *(a1[5] + 8);
  CMBaseObject = FigEndpointGetCMBaseObject();
  VTable = CMBaseObjectGetVTable();
  v6 = *(*(VTable + 8) + 48);
  if (v6)
  {
    v7 = *(VTable + 8) + 48;
    v8 = v6(CMBaseObject, *MEMORY[0x1E6961F98], v2, v3 + 24);
  }

  else
  {
    v8 = -12782;
  }

  *(*(a1[4] + 8) + 24) = v8;
  result = *(*(a1[4] + 8) + 24);
  if (!result)
  {
    v10 = *(a1[6] + 8);
    v11 = FigEndpointGetCMBaseObject();
    v12 = CMBaseObjectGetVTable();
    v13 = *(*(v12 + 8) + 48);
    if (v13)
    {
      v14 = *(v12 + 8) + 48;
      v15 = v13(v11, *MEMORY[0x1E6961F88], v2, v10 + 24);
    }

    else
    {
      v15 = -12782;
    }

    *(*(a1[4] + 8) + 24) = v15;
    return *(*(a1[4] + 8) + 24);
  }

  return result;
}

- (BOOL)isCarPlayVideoAllowed
{
  v19 = 0;
  v20 = &v19;
  v21 = 0x2020000000;
  v22 = *MEMORY[0x1E695E4C0];
  v15 = 0;
  v16 = &v15;
  v17 = 0x2020000000;
  v18 = v22;
  v11 = 0;
  v12 = &v11;
  v13 = 0x2020000000;
  v14 = 0;
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __61__AVFigRouteDescriptorOutputDeviceImpl_isCarPlayVideoAllowed__block_invoke;
  v10[3] = &unk_1E794EAE0;
  v10[4] = &v11;
  v10[5] = &v15;
  v10[6] = &v19;
  v2 = [(AVFigRouteDescriptorOutputDeviceImpl *)self _withEndpoint:v10];
  *(v12 + 6) = v2;
  if (v2 || (v4 = *MEMORY[0x1E695E4D0], v5 = v16[3], !FigCFEqual()))
  {
    v3 = 0;
  }

  else
  {
    v6 = v20[3];
    v3 = FigCFEqual() != 0;
  }

  v7 = v20[3];
  if (v7)
  {
    CFRelease(v7);
  }

  v8 = v16[3];
  if (v8)
  {
    CFRelease(v8);
  }

  _Block_object_dispose(&v11, 8);
  _Block_object_dispose(&v15, 8);
  _Block_object_dispose(&v19, 8);
  return v3;
}

- (NSString)name
{
  routeDescriptor = [(AVFigRouteDescriptorOutputDeviceImpl *)self routeDescriptor];
  v3 = *MEMORY[0x1E69AF198];

  return CFDictionaryGetValue(routeDescriptor, v3);
}

- (int64_t)deviceType
{
  v3 = 0;
  AVOutputDeviceGetDeviceTypeAndSubTypeFromRouteDescriptor([(AVFigRouteDescriptorOutputDeviceImpl *)self routeDescriptor], &v3, 0);
  return v3;
}

- (int64_t)deviceSubType
{
  v3 = 0;
  AVOutputDeviceGetDeviceTypeAndSubTypeFromRouteDescriptor([(AVFigRouteDescriptorOutputDeviceImpl *)self routeDescriptor], 0, &v3);
  return v3;
}

- (NSString)manufacturer
{
  routeDescriptor = [(AVFigRouteDescriptorOutputDeviceImpl *)self routeDescriptor];
  v3 = *MEMORY[0x1E69AF138];

  return CFDictionaryGetValue(routeDescriptor, v3);
}

- (NSString)modelID
{
  routeDescriptor = [(AVFigRouteDescriptorOutputDeviceImpl *)self routeDescriptor];
  result = CFDictionaryGetValue(routeDescriptor, *MEMORY[0x1E69AF140]);
  if (!result)
  {
    routeDescriptor2 = [(AVFigRouteDescriptorOutputDeviceImpl *)self routeDescriptor];
    Value = CFDictionaryGetValue(routeDescriptor2, *MEMORY[0x1E69AF1A0]);
    AVStringForOSType(0x6A333237u);
    if (FigCFEqual())
    {
      return Value;
    }

    else
    {
      return 0;
    }
  }

  return result;
}

- (NSString)serialNumber
{
  routeDescriptor = [(AVFigRouteDescriptorOutputDeviceImpl *)self routeDescriptor];
  v3 = *MEMORY[0x1E69AF1C8];

  return CFDictionaryGetValue(routeDescriptor, v3);
}

- (NSString)firmwareVersion
{
  routeDescriptor = [(AVFigRouteDescriptorOutputDeviceImpl *)self routeDescriptor];
  v3 = *MEMORY[0x1E69AF0A8];

  return CFDictionaryGetValue(routeDescriptor, v3);
}

- (NSData)identifyingMACAddress
{
  routeDescriptor = [(AVFigRouteDescriptorOutputDeviceImpl *)self routeDescriptor];
  v3 = *MEMORY[0x1E69AF130];

  return CFDictionaryGetValue(routeDescriptor, v3);
}

- (NSString)ID
{
  routeDescriptor = [(AVFigRouteDescriptorOutputDeviceImpl *)self routeDescriptor];
  v3 = *MEMORY[0x1E69AF1C0];

  return CFDictionaryGetValue(routeDescriptor, v3);
}

- (__CFDictionary)routeDescriptor
{
  routeDescriptionRWLock = self->_routeDescriptionRWLock;
  FigReadWriteLockLockForRead();
  v4 = self->_routeDescriptor;
  v5 = self->_routeDescriptionRWLock;
  FigReadWriteLockUnlockForRead();
  return v4;
}

- (unint64_t)deviceFeatures
{
  routeDescriptor = [(AVFigRouteDescriptorOutputDeviceImpl *)self routeDescriptor];
  v4 = [CFDictionaryGetValue(routeDescriptor *MEMORY[0x1E69AF1B8])];
  routeDescriptor2 = [(AVFigRouteDescriptorOutputDeviceImpl *)self routeDescriptor];
  if ([CFDictionaryGetValue(routeDescriptor2 *MEMORY[0x1E69AF1B0])])
  {
    v4 |= 4uLL;
  }

  routeDescriptor3 = [(AVFigRouteDescriptorOutputDeviceImpl *)self routeDescriptor];
  if ([CFDictionaryGetValue(routeDescriptor3 *MEMORY[0x1E69AF1A8])])
  {
    return v4 | 2;
  }

  else
  {
    return v4;
  }
}

- (NSDictionary)airPlayProperties
{
  routeDescriptor = [(AVFigRouteDescriptorOutputDeviceImpl *)self routeDescriptor];
  v3 = *MEMORY[0x1E69AEF08];

  return CFDictionaryGetValue(routeDescriptor, v3);
}

- (NSString)logicalDeviceID
{
  routeDescriptor = [(AVFigRouteDescriptorOutputDeviceImpl *)self routeDescriptor];
  v3 = *MEMORY[0x1E69AF200];

  return CFDictionaryGetValue(routeDescriptor, v3);
}

- (BOOL)canAccessRemoteAssets
{
  routeDescriptor = [(AVFigRouteDescriptorOutputDeviceImpl *)self routeDescriptor];
  Value = CFDictionaryGetValue(routeDescriptor, *MEMORY[0x1E69AF190]);

  return [Value BOOLValue];
}

- (BOOL)canAccessAppleMusic
{
  routeDescriptor = [(AVFigRouteDescriptorOutputDeviceImpl *)self routeDescriptor];
  Value = CFDictionaryGetValue(routeDescriptor, *MEMORY[0x1E69AF0D8]);

  return [Value BOOLValue];
}

- (BOOL)canAccessiCloudMusicLibrary
{
  routeDescriptor = [(AVFigRouteDescriptorOutputDeviceImpl *)self routeDescriptor];
  Value = CFDictionaryGetValue(routeDescriptor, *MEMORY[0x1E69AF060]);

  return [Value BOOLValue];
}

- (BOOL)canBeGroupLeader
{
  [(AVFigRouteDescriptorOutputDeviceImpl *)self routeDescriptor];
  v2 = *MEMORY[0x1E69AF120];
  FigCFDictionaryGetBooleanIfPresent();
  return 0;
}

- (BOOL)canRelayCommunicationChannel
{
  [(AVFigRouteDescriptorOutputDeviceImpl *)self routeDescriptor];
  v2 = *MEMORY[0x1E69AF1E8];
  FigCFDictionaryGetBooleanIfPresent();
  return 0;
}

- (BOOL)supportsBufferedAirPlay
{
  routeDescriptor = [(AVFigRouteDescriptorOutputDeviceImpl *)self routeDescriptor];
  Value = CFDictionaryGetValue(routeDescriptor, *MEMORY[0x1E69AF1D8]);

  return [Value BOOLValue];
}

- (BOOL)canBeGrouped
{
  [(AVFigRouteDescriptorOutputDeviceImpl *)self routeDescriptor];
  v2 = *MEMORY[0x1E69AF108];
  FigCFDictionaryGetBooleanIfPresent();
  return 0;
}

- (BOOL)isGroupLeader
{
  [(AVFigRouteDescriptorOutputDeviceImpl *)self routeDescriptor];
  v2 = *MEMORY[0x1E69AF100];
  FigCFDictionaryGetBooleanIfPresent();
  return 0;
}

- (int64_t)volumeControlType
{
  volumeController = self->_volumeController;
  if (!volumeController)
  {
    return 0;
  }

  v9 = 0;
  v3 = [(AVFigRouteDescriptorOutputDeviceImpl *)self ID];
  VTable = CMBaseObjectGetVTable();
  v5 = *(*(VTable + 16) + 88);
  if (v5)
  {
    v6 = *(VTable + 16) + 88;
    v5(volumeController, v3, &v9);
    v7 = v9;
  }

  else
  {
    v7 = 0;
  }

  return AVOutputDeviceVolumeControlTypeFromFigType(v7);
}

- (int64_t)HAPConformance
{
  routeDescriptor = [(AVFigRouteDescriptorOutputDeviceImpl *)self routeDescriptor];
  if ([CFDictionaryGetValue(routeDescriptor *MEMORY[0x1E69AEF00])])
  {
    return 2;
  }

  else
  {
    return 0;
  }
}

- (NSNumber)caseBatteryLevel
{
  routeDescriptor = [(AVFigRouteDescriptorOutputDeviceImpl *)self routeDescriptor];
  v3 = *MEMORY[0x1E69AF008];

  return CFDictionaryGetValue(routeDescriptor, v3);
}

- (NSNumber)leftBatteryLevel
{
  routeDescriptor = [(AVFigRouteDescriptorOutputDeviceImpl *)self routeDescriptor];
  v3 = *MEMORY[0x1E69AF010];

  return CFDictionaryGetValue(routeDescriptor, v3);
}

- (NSNumber)rightBatteryLevel
{
  routeDescriptor = [(AVFigRouteDescriptorOutputDeviceImpl *)self routeDescriptor];
  v3 = *MEMORY[0x1E69AF018];

  return CFDictionaryGetValue(routeDescriptor, v3);
}

- (NSNumber)supportsDataOverACLProtocol
{
  routeDescriptor = [(AVFigRouteDescriptorOutputDeviceImpl *)self routeDescriptor];
  v3 = *MEMORY[0x1E69AF050];

  return CFDictionaryGetValue(routeDescriptor, v3);
}

- (NSNumber)isInEar
{
  routeDescriptor = [(AVFigRouteDescriptorOutputDeviceImpl *)self routeDescriptor];
  v3 = *MEMORY[0x1E69AF180];

  return CFDictionaryGetValue(routeDescriptor, v3);
}

- (NSNumber)batteryLevel
{
  routeDescriptor = [(AVFigRouteDescriptorOutputDeviceImpl *)self routeDescriptor];
  v3 = *MEMORY[0x1E69AF020];

  return CFDictionaryGetValue(routeDescriptor, v3);
}

- (BOOL)requiresAuthorization
{
  routeDescriptor = [(AVFigRouteDescriptorOutputDeviceImpl *)self routeDescriptor];
  CFDictionaryGetValue(routeDescriptor, *MEMORY[0x1E69AEF10]);
  return FigCFEqual() == 0;
}

- (NSArray)clusteredDeviceDescriptions
{
  routeDescriptor = [(AVFigRouteDescriptorOutputDeviceImpl *)self routeDescriptor];
  Value = CFDictionaryGetValue(routeDescriptor, *MEMORY[0x1E69AF068]);

  return AVOutputDeviceDescriptionsFromFigDescriptions(Value);
}

- (int64_t)clusterType
{
  routeDescriptor = [(AVFigRouteDescriptorOutputDeviceImpl *)self routeDescriptor];
  CFDictionaryGetValue(routeDescriptor, *MEMORY[0x1E69AF078]);
  v3 = *MEMORY[0x1E69AF220];
  if (FigCFEqual())
  {
    return 2;
  }

  v5 = *MEMORY[0x1E69AF218];
  return FigCFEqual() != 0;
}

- (int64_t)configuredClusterSize
{
  routeDescriptor = [(AVFigRouteDescriptorOutputDeviceImpl *)self routeDescriptor];
  Value = CFDictionaryGetValue(routeDescriptor, *MEMORY[0x1E69AF070]);

  return [Value integerValue];
}

- (NSString)currentBluetoothListeningMode
{
  routeDescriptor = [(AVFigRouteDescriptorOutputDeviceImpl *)self routeDescriptor];
  v3 = [CFDictionaryGetValue(routeDescriptor *MEMORY[0x1E69AF040])];

  return AVOutputDeviceAVFListeningModeForFigListeningMode(v3);
}

- (NSArray)availableBluetoothListeningModes
{
  routeDescriptor = [(AVFigRouteDescriptorOutputDeviceImpl *)self routeDescriptor];
  v3 = [CFDictionaryGetValue(routeDescriptor *MEMORY[0x1E69AF048])];

  return AVOutputDeviceSupportedListeningModesForFigListeningModes(v3);
}

- (BOOL)producesLowFidelityAudio
{
  [(AVFigRouteDescriptorOutputDeviceImpl *)self routeDescriptor];
  v2 = *MEMORY[0x1E69AF118];
  FigCFDictionaryGetBooleanIfPresent();
  return 0;
}

- (NSString)clusterID
{
  routeDescriptor = [(AVFigRouteDescriptorOutputDeviceImpl *)self routeDescriptor];
  v3 = *MEMORY[0x1E69AF178];

  return CFDictionaryGetValue(routeDescriptor, v3);
}

- (BOOL)isClusterLeader
{
  [(AVFigRouteDescriptorOutputDeviceImpl *)self routeDescriptor];
  v2 = *MEMORY[0x1E69AF0E8];
  FigCFDictionaryGetBooleanIfPresent();
  return 0;
}

- (BOOL)isAppleAccessory
{
  if (_os_feature_enabled_impl())
  {
    [(AVFigRouteDescriptorOutputDeviceImpl *)self routeDescriptor];
    FigCFDictionaryGetBooleanIfPresent();
  }

  return 0;
}

- (BOOL)supportsBluetoothSharing
{
  routeDescriptor = [(AVFigRouteDescriptorOutputDeviceImpl *)self routeDescriptor];
  Value = CFDictionaryGetValue(routeDescriptor, *MEMORY[0x1E69AF0E0]);

  return [Value BOOLValue];
}

- (NSArray)connectedPairedDevices
{
  array = [MEMORY[0x1E695DF70] array];
  routeDescriptor = [(AVFigRouteDescriptorOutputDeviceImpl *)self routeDescriptor];
  Value = CFDictionaryGetValue(routeDescriptor, *MEMORY[0x1E69AF148]);
  v5 = 0;
  v17 = *MEMORY[0x1E69AF158];
  key = *MEMORY[0x1E69AF170];
  v16 = *MEMORY[0x1E69AF150];
  v6 = *MEMORY[0x1E69AF168];
  v7 = *MEMORY[0x1E69AF160];
  if (!Value)
  {
    goto LABEL_3;
  }

LABEL_2:
  for (i = CFArrayGetCount(Value); v5 < i; i = 0)
  {
    ValueAtIndex = CFArrayGetValueAtIndex(Value, v5);
    v10 = CFDictionaryGetValue(ValueAtIndex, key);
    v11 = CFDictionaryGetValue(ValueAtIndex, v17);
    v12 = CFDictionaryGetValue(ValueAtIndex, v16);
    v13 = CFDictionaryGetValue(ValueAtIndex, v6);
    v14 = -[AVPairedDevice initWithName:ID:modelID:playing:productName:]([AVPairedDevice alloc], "initWithName:ID:modelID:playing:productName:", v11, v10, v12, [CFDictionaryGetValue(ValueAtIndex v7)], v13);
    [(NSArray *)array addObject:v14];

    ++v5;
    if (Value)
    {
      goto LABEL_2;
    }

LABEL_3:
    ;
  }

  return array;
}

- (BOOL)isInUseByPairedDevice
{
  routeDescriptor = [(AVFigRouteDescriptorOutputDeviceImpl *)self routeDescriptor];
  Value = CFDictionaryGetValue(routeDescriptor, *MEMORY[0x1E69AF0F0]);

  return [Value BOOLValue];
}

- (BOOL)supportsHeadTrackedSpatialAudio
{
  routeDescriptor = [(AVFigRouteDescriptorOutputDeviceImpl *)self routeDescriptor];
  Value = CFDictionaryGetValue(routeDescriptor, *MEMORY[0x1E69AF1E0]);

  return [Value BOOLValue];
}

- (BOOL)isHeadTrackedSpatialAudioActive
{
  routeDescriptor = [(AVFigRouteDescriptorOutputDeviceImpl *)self routeDescriptor];
  Value = CFDictionaryGetValue(routeDescriptor, *MEMORY[0x1E69AF0C8]);

  return [Value BOOLValue];
}

- (NSString)headTrackedSpatialAudioMode
{
  routeDescriptor = [(AVFigRouteDescriptorOutputDeviceImpl *)self routeDescriptor];
  Value = CFDictionaryGetValue(routeDescriptor, *MEMORY[0x1E69AF0D0]);

  return AVOutputDeviceHeadTrackedSpatialAudioModeFromFigMode(Value);
}

- (BOOL)supportsConversationDetection
{
  IsConversationDetectionFeatureEnabled = AVOutputDeviceIsConversationDetectionFeatureEnabled();
  if (IsConversationDetectionFeatureEnabled)
  {
    Value = CFDictionaryGetValue([(AVFigRouteDescriptorOutputDeviceImpl *)self routeDescriptor], @"SupportsConversationDetect");

    LOBYTE(IsConversationDetectionFeatureEnabled) = [Value BOOLValue];
  }

  return IsConversationDetectionFeatureEnabled;
}

- (BOOL)isConversationDetectionEnabled
{
  IsConversationDetectionFeatureEnabled = AVOutputDeviceIsConversationDetectionFeatureEnabled();
  if (IsConversationDetectionFeatureEnabled)
  {
    Value = CFDictionaryGetValue([(AVFigRouteDescriptorOutputDeviceImpl *)self routeDescriptor], @"ConversationDetectEnable");

    LOBYTE(IsConversationDetectionFeatureEnabled) = [Value BOOLValue];
  }

  return IsConversationDetectionFeatureEnabled;
}

- (NSString)alternateTransportType
{
  v2 = [CFDictionaryGetValue(-[AVFigRouteDescriptorOutputDeviceImpl routeDescriptor](self "routeDescriptor")];

  return AVOutputDeviceAVFBluetoothAlternateTransportForFigAlternateTransport(v2);
}

- (BOOL)isCached
{
  [(AVFigRouteDescriptorOutputDeviceImpl *)self routeDescriptor];
  FigCFDictionaryGetBooleanIfPresent();
  return 0;
}

- (void)dealloc
{
  if (self->_weakObserver)
  {
    v3 = [AVRoutingCMNotificationDispatcher notificationDispatcherForCMNotificationCenter:CMNotificationCenterGetDefaultLocalCenter()];
    v4 = v3;
    if (self->_volumeController)
    {
      [v3 removeListenerWithWeakReference:self->_weakObserver callback:AVFigRouteDescriptorOutputDeviceImplCanSetEndpointVolumeDidChange name:*MEMORY[0x1E69AF5C0] object:?];
      [v4 removeListenerWithWeakReference:self->_weakObserver callback:AVFigRouteDescriptorOutputDeviceImplEndpointVolumeDidChange name:*MEMORY[0x1E69AF5E8] object:self->_volumeController];
      [v4 removeListenerWithWeakReference:self->_weakObserver callback:AVFigRouteDescriptorOutputDeviceImplEndpointVolumeControlTypeDidChange name:*MEMORY[0x1E69AF5E0] object:self->_volumeController];
      [v4 removeListenerWithWeakReference:self->_weakObserver callback:AVFigRouteDescriptorOutputDeviceImplEndpointMutedDidChange name:*MEMORY[0x1E69AF5D8] object:self->_volumeController];
      [v4 removeListenerWithWeakReference:self->_weakObserver callback:AVFigRouteDescriptorOutputDeviceImplEndpointCanMuteDidChange name:*MEMORY[0x1E69AF600] object:self->_volumeController];
      [v4 removeListenerWithWeakReference:self->_weakObserver callback:AVFigRouteDescriptorOutputDeviceImplEndpointRoomVolumeDidChange name:*MEMORY[0x1E69AF618] object:self->_volumeController];
    }

    weakObserver = self->_weakObserver;
    if (self->_routingContext)
    {
      [v4 removeListenerWithWeakReference:weakObserver callback:AVFigRouteDescriptorOutputDeviceImplRouteDescriptionEvent name:@"routeDescriptionEvent" object:?];
      weakObserver = self->_weakObserver;
    }
  }

  else
  {
    weakObserver = 0;
  }

  routeDescriptor = self->_routeDescriptor;
  if (routeDescriptor)
  {
    CFRelease(routeDescriptor);
  }

  routeDiscoverer = self->_routeDiscoverer;
  if (routeDiscoverer)
  {
    CFRelease(routeDiscoverer);
  }

  volumeController = self->_volumeController;
  if (volumeController)
  {
    CFRelease(volumeController);
  }

  routingContext = self->_routingContext;
  if (routingContext)
  {
    CFRelease(routingContext);
  }

  if (self->_routeDescriptionRWLock)
  {
    FigReadWriteLockDestroy();
    self->_routeDescriptionRWLock = 0;
  }

  v10.receiver = self;
  v10.super_class = AVFigRouteDescriptorOutputDeviceImpl;
  [(AVFigRouteDescriptorOutputDeviceImpl *)&v10 dealloc];
}

- (NSString)groupID
{
  routeDescriptor = [(AVFigRouteDescriptorOutputDeviceImpl *)self routeDescriptor];
  v3 = *MEMORY[0x1E69AF0B8];

  return CFDictionaryGetValue(routeDescriptor, v3);
}

- (BOOL)groupContainsGroupLeader
{
  [(AVFigRouteDescriptorOutputDeviceImpl *)self routeDescriptor];
  v2 = *MEMORY[0x1E69AF0B0];
  FigCFDictionaryGetBooleanIfPresent();
  return 0;
}

- (BOOL)isActivatedForContinuityScreen
{
  [(AVFigRouteDescriptorOutputDeviceImpl *)self routeDescriptor];
  FigCFDictionaryGetBooleanIfPresent();
  return 0;
}

- (BOOL)participatesInGroupPlayback
{
  [(AVFigRouteDescriptorOutputDeviceImpl *)self routeDescriptor];
  v2 = *MEMORY[0x1E69AF128];
  FigCFDictionaryGetBooleanIfPresent();
  return 1;
}

- (BOOL)isEqual:(id)equal
{
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    return 0;
  }

  v5 = [(AVFigRouteDescriptorOutputDeviceImpl *)self ID];
  v6 = [equal ID];

  return [(NSString *)v5 isEqualToString:v6];
}

- (unint64_t)hash
{
  v2 = [(AVFigRouteDescriptorOutputDeviceImpl *)self ID];

  return [(NSString *)v2 hash];
}

- (void)setRouteDescriptor:(__CFDictionary *)descriptor
{
  routeDescriptionRWLock = self->_routeDescriptionRWLock;
  FigReadWriteLockLockForWrite();
  routeDescriptor = self->_routeDescriptor;
  self->_routeDescriptor = descriptor;
  if (descriptor)
  {
    CFRetain(descriptor);
  }

  if (routeDescriptor)
  {
    CFRelease(routeDescriptor);
  }

  v7 = self->_routeDescriptionRWLock;

  MEMORY[0x1EEDBDA98](v7);
}

- (BOOL)isEligibleToBePredictedOutputDevice
{
  [(AVFigRouteDescriptorOutputDeviceImpl *)self routeDescriptor];
  v2 = *MEMORY[0x1E69AF038];
  FigCFDictionaryGetBooleanIfPresent();
  return 0;
}

- (BOOL)isCarPlayVideoActive
{
  v8 = 0;
  v9 = &v8;
  v10 = 0x2020000000;
  v11 = *MEMORY[0x1E695E4C0];
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __60__AVFigRouteDescriptorOutputDeviceImpl_isCarPlayVideoActive__block_invoke;
  v7[3] = &unk_1E794EAB8;
  v7[4] = &v8;
  [(AVFigRouteDescriptorOutputDeviceImpl *)self _withEndpoint:v7];
  v2 = v9[3];
  v3 = *MEMORY[0x1E695E4D0];
  v4 = FigCFEqual();
  v5 = v9[3];
  if (v5)
  {
    CFRelease(v5);
  }

  _Block_object_dispose(&v8, 8);
  return v4 != 0;
}

uint64_t __60__AVFigRouteDescriptorOutputDeviceImpl_isCarPlayVideoActive__block_invoke(uint64_t a1)
{
  v1 = *(*(a1 + 32) + 8);
  CMBaseObject = FigEndpointGetCMBaseObject();
  VTable = CMBaseObjectGetVTable();
  v4 = *(*(VTable + 8) + 48);
  if (v4)
  {
    v5 = *(VTable + 8) + 48;
    v4(CMBaseObject, *MEMORY[0x1E6962188], *MEMORY[0x1E695E480], v1 + 24);
  }

  return 0;
}

- (int64_t)mediaSessionStatus
{
  v9 = 0;
  v10 = &v9;
  v11 = 0x2020000000;
  v12 = *MEMORY[0x1E695E4C0];
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __58__AVFigRouteDescriptorOutputDeviceImpl_mediaSessionStatus__block_invoke;
  v8[3] = &unk_1E794EAB8;
  v8[4] = &v9;
  [(AVFigRouteDescriptorOutputDeviceImpl *)self _withEndpoint:v8];
  v2 = v10[3];
  v3 = *MEMORY[0x1E695E4D0];
  v4 = FigCFEqual();
  v5 = v10[3];
  if (v5)
  {
    CFRelease(v5);
  }

  if (v4)
  {
    v6 = 2;
  }

  else
  {
    v6 = 1;
  }

  _Block_object_dispose(&v9, 8);
  return v6;
}

uint64_t __58__AVFigRouteDescriptorOutputDeviceImpl_mediaSessionStatus__block_invoke(uint64_t a1)
{
  v1 = *(*(a1 + 32) + 8);
  CMBaseObject = FigEndpointGetCMBaseObject();
  VTable = CMBaseObjectGetVTable();
  v4 = *(*(VTable + 8) + 48);
  if (v4)
  {
    v5 = *(VTable + 8) + 48;
    v4(CMBaseObject, @"IsAnyAirPlayCapableVideoSessionActive", *MEMORY[0x1E695E480], v1 + 24);
  }

  return 0;
}

- (void)setCarPlayVideoActive:(BOOL)active completionHandler:(id)handler
{
  activeCopy = active;
  if (active)
  {
    v7 = 4;
  }

  else
  {
    v7 = 0;
  }

  v8 = [[AVFigRouteDiscovererUpdateEndpointFeaturesCompletionContext alloc] initWithCompletionHandler:handler];
  v9 = v8;
  if (!handler || v8)
  {
    if (![(AVFigRouteDescriptorOutputDeviceImpl *)self isCarPlayVideoActive]|| !activeCopy)
    {
      v13[0] = MEMORY[0x1E69E9820];
      v13[1] = 3221225472;
      v13[2] = __80__AVFigRouteDescriptorOutputDeviceImpl_setCarPlayVideoActive_completionHandler___block_invoke;
      v13[3] = &unk_1E794EB08;
      v13[4] = v9;
      v13[5] = v7;
      [(AVFigRouteDescriptorOutputDeviceImpl *)self _withEndpoint:v13];
      return;
    }

    -[AVFigRouteDescriptorOutputDeviceImpl requestCarUIForURL:withUUID:](self, "requestCarUIForURL:withUUID:", [MEMORY[0x1E695DFF8] URLWithString:@"videoplayback:"], 0);
    if (!handler)
    {
      return;
    }

    v11 = *(handler + 2);
    handlerCopy2 = handler;
    v10 = 0;
  }

  else
  {
    v10 = AVLocalizedErrorWithUnderlyingOSStatus(-12786, 0);
    v11 = *(handler + 2);
    handlerCopy2 = handler;
  }

  v11(handlerCopy2, v10);
}

uint64_t __80__AVFigRouteDescriptorOutputDeviceImpl_setCarPlayVideoActive_completionHandler___block_invoke(uint64_t a1, uint64_t a2)
{
  cf[22] = *MEMORY[0x1E69E9840];
  v4 = *(a1 + 32);
  v3 = *(a1 + 40);
  cf[0] = 0;
  if (a2)
  {
    CMBaseObject = FigEndpointGetCMBaseObject();
    v6 = *(*(CMBaseObjectGetVTable() + 8) + 48);
    if (v6)
    {
      v6(CMBaseObject, *MEMORY[0x1E69621E8], *MEMORY[0x1E695E480], cf);
    }
  }

  if (dword_1ED6F6B68)
  {
    os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
    fig_log_call_emit_and_clean_up_after_send_and_compose();
  }

  if (a2)
  {
    v8 = *(*(CMBaseObjectGetVTable() + 16) + 80);
    if (v8)
    {
      v8(a2, v3, 0, AVFigRouteDiscovererUpdateEndpointFeaturesCompletionCallback, v4);
    }
  }

  else
  {
    AVFigRouteDiscovererUpdateEndpointFeaturesCompletionCallback(0, v3, 0, 0, 0);
  }

  if (cf[0])
  {
    CFRelease(cf[0]);
  }

  v9 = *MEMORY[0x1E69E9840];
  return 0;
}

- (BOOL)onlyAllowsConnectionsFromPeersInHomeGroup
{
  automaticallyAllowsConnectionsFromPeersInHomeGroup = [(AVFigRouteDescriptorOutputDeviceImpl *)self automaticallyAllowsConnectionsFromPeersInHomeGroup];
  if (automaticallyAllowsConnectionsFromPeersInHomeGroup)
  {
    routeDescriptor = [(AVFigRouteDescriptorOutputDeviceImpl *)self routeDescriptor];
    CFDictionaryGetValue(routeDescriptor, *MEMORY[0x1E69AF0C0]);
    LOBYTE(automaticallyAllowsConnectionsFromPeersInHomeGroup) = FigCFEqual() == 0;
  }

  return automaticallyAllowsConnectionsFromPeersInHomeGroup;
}

- (BOOL)allowsHeadTrackedSpatialAudio
{
  routeDescriptor = [(AVFigRouteDescriptorOutputDeviceImpl *)self routeDescriptor];
  Value = CFDictionaryGetValue(routeDescriptor, *MEMORY[0x1E69AEF18]);

  return [Value BOOLValue];
}

- (BOOL)setAllowsHeadTrackedSpatialAudio:(BOOL)audio error:(id *)error
{
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __79__AVFigRouteDescriptorOutputDeviceImpl_setAllowsHeadTrackedSpatialAudio_error___block_invoke;
  v8[3] = &__block_descriptor_33_e28_i16__0__OpaqueFigEndpoint__8l;
  audioCopy = audio;
  v5 = [(AVFigRouteDescriptorOutputDeviceImpl *)self _withEndpoint:v8];
  v6 = v5;
  if (error && v5)
  {
    *error = AVLocalizedErrorWithUnderlyingOSStatus(v5, 0);
  }

  return v6 == 0;
}

- (BOOL)setHeadTrackedSpatialAudioMode:(id)mode error:(id *)error
{
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __77__AVFigRouteDescriptorOutputDeviceImpl_setHeadTrackedSpatialAudioMode_error___block_invoke;
  v8[3] = &unk_1E794EB50;
  v8[4] = mode;
  v5 = [(AVFigRouteDescriptorOutputDeviceImpl *)self _withEndpoint:v8];
  v6 = v5;
  if (error && v5)
  {
    *error = AVLocalizedErrorWithUnderlyingOSStatus(v5, 0);
  }

  return v6 == 0;
}

- (BOOL)setConversationDetectionEnabled:(BOOL)enabled error:(id *)error
{
  if (AVOutputDeviceIsConversationDetectionFeatureEnabled())
  {
    v11[0] = MEMORY[0x1E69E9820];
    v11[1] = 3221225472;
    v11[2] = __78__AVFigRouteDescriptorOutputDeviceImpl_setConversationDetectionEnabled_error___block_invoke;
    v11[3] = &__block_descriptor_33_e28_i16__0__OpaqueFigEndpoint__8l;
    enabledCopy = enabled;
    v7 = [(AVFigRouteDescriptorOutputDeviceImpl *)self _withEndpoint:v11];
    v8 = v7;
    if (error)
    {
      if (v7)
      {
        *error = AVLocalizedErrorWithUnderlyingOSStatus(v7, 0);
      }
    }

    return v8 == 0;
  }

  else if (error)
  {
    v10 = AVLocalizedErrorWithUnderlyingOSStatus(-11862, 0);
    result = 0;
    *error = v10;
  }

  else
  {
    return 0;
  }

  return result;
}

uint64_t __78__AVFigRouteDescriptorOutputDeviceImpl_setConversationDetectionEnabled_error___block_invoke(uint64_t a1)
{
  if (*(a1 + 32))
  {
    v1 = MEMORY[0x1E695E4D0];
  }

  else
  {
    v1 = MEMORY[0x1E695E4C0];
  }

  CMBaseObject = FigEndpointGetCMBaseObject();
  VTable = CMBaseObjectGetVTable();
  v4 = *(*(VTable + 8) + 56);
  if (!v4)
  {
    return 4294954514;
  }

  v5 = *(VTable + 8) + 56;
  v6 = *MEMORY[0x1E6962058];
  v7 = *v1;

  return v4(CMBaseObject, v6, v7);
}

- (void)setSecondDisplayEnabled:(BOOL)enabled
{
  v3[0] = MEMORY[0x1E69E9820];
  v3[1] = 3221225472;
  v3[2] = __64__AVFigRouteDescriptorOutputDeviceImpl_setSecondDisplayEnabled___block_invoke;
  v3[3] = &unk_1E794EB78;
  v3[4] = self;
  enabledCopy = enabled;
  [(AVFigRouteDescriptorOutputDeviceImpl *)self _withEndpoint:v3];
}

uint64_t __64__AVFigRouteDescriptorOutputDeviceImpl_setSecondDisplayEnabled___block_invoke(uint64_t a1, uint64_t a2)
{
  v4 = [*(a1 + 32) name];
  v5 = *(a1 + 40);

  return AVOutputDeviceSetSecondDisplayEnabledOnEndpoint(a2, v4, v5);
}

- (void)setSecondDisplayMode:(id)mode completionHandler:(id)handler
{
  v8 = 0;
  v9 = &v8;
  v10 = 0x2020000000;
  v11 = 1;
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __79__AVFigRouteDescriptorOutputDeviceImpl_setSecondDisplayMode_completionHandler___block_invoke;
  v7[3] = &unk_1E794EBA0;
  v7[4] = mode;
  v7[5] = handler;
  v7[6] = &v8;
  v5 = [(AVFigRouteDescriptorOutputDeviceImpl *)self _withEndpoint:v7];
  if (v5)
  {
    v6 = AVLocalizedErrorWithUnderlyingOSStatus(v5, 0);
  }

  else
  {
    v6 = 0;
  }

  if (*(v9 + 24) == 1)
  {
    (*(handler + 2))(handler, 0, v6);
  }

  _Block_object_dispose(&v8, 8);
}

uint64_t __79__AVFigRouteDescriptorOutputDeviceImpl_setSecondDisplayMode_completionHandler___block_invoke(uint64_t a1, uint64_t a2)
{
  AVOutputDeviceSetSecondDisplayModeOnEndpoint(a2, *(a1 + 32), *(a1 + 40));
  *(*(*(a1 + 48) + 8) + 24) = 0;
  return 0;
}

- (void)setMediaRemoteData:(id)data completionHandler:(id)handler
{
  v8 = 0;
  v9 = &v8;
  v10 = 0x2020000000;
  v11 = 1;
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __77__AVFigRouteDescriptorOutputDeviceImpl_setMediaRemoteData_completionHandler___block_invoke;
  v7[3] = &unk_1E794EBA0;
  v7[4] = data;
  v7[5] = handler;
  v7[6] = &v8;
  v5 = [(AVFigRouteDescriptorOutputDeviceImpl *)self _withEndpoint:v7];
  if (v5)
  {
    v6 = AVLocalizedErrorWithUnderlyingOSStatus(v5, 0);
  }

  else
  {
    v6 = 0;
  }

  if (*(v9 + 24) == 1)
  {
    (*(handler + 2))(handler, v6);
  }

  _Block_object_dispose(&v8, 8);
}

uint64_t __77__AVFigRouteDescriptorOutputDeviceImpl_setMediaRemoteData_completionHandler___block_invoke(uint64_t *a1, uint64_t a2)
{
  AVOutputDeviceSetMediaRemoteDataOnEndpoint(a2, a1[4], a1[5]);
  *(*(a1[6] + 8) + 24) = 0;
  return 0;
}

- (float)volume
{
  v9 = 0.0;
  volumeController = self->_volumeController;
  v3 = 0.0;
  if (volumeController)
  {
    v4 = [(AVFigRouteDescriptorOutputDeviceImpl *)self ID];
    VTable = CMBaseObjectGetVTable();
    v6 = *(*(VTable + 16) + 72);
    if (v6)
    {
      v7 = *(VTable + 16) + 72;
      v6(volumeController, v4, &v9);
      return v9;
    }
  }

  return v3;
}

- (void)_mutedDidChangeForEndpointWithID:(__CFString *)d
{
  v8 = *MEMORY[0x1E69E9840];
  if ([(__CFString *)d isEqual:[(AVFigRouteDescriptorOutputDeviceImpl *)self ID]])
  {
    if (dword_1ED6F6B68)
    {
      os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
      os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
      fig_log_call_emit_and_clean_up_after_send_and_compose();
    }

    [(AVOutputDeviceImplSupport *)[(AVFigRouteDescriptorOutputDeviceImpl *)self implEventListener:v6] outputDeviceImplDidChangeMute:self];
  }

  v5 = *MEMORY[0x1E69E9840];
}

- (void)_canMuteDidChangeForEndpointWithID:(__CFString *)d
{
  v8 = *MEMORY[0x1E69E9840];
  if ([(__CFString *)d isEqual:[(AVFigRouteDescriptorOutputDeviceImpl *)self ID]])
  {
    if (dword_1ED6F6B68)
    {
      os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
      os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
      fig_log_call_emit_and_clean_up_after_send_and_compose();
    }

    [(AVOutputDeviceImplSupport *)[(AVFigRouteDescriptorOutputDeviceImpl *)self implEventListener:v6] outputDeviceImplCanMuteDidChange:self];
  }

  v5 = *MEMORY[0x1E69E9840];
}

- (void)_routeDescriptionDidChange:(__CFDictionary *)change
{
  v5 = *MEMORY[0x1E69AF1C0];
  if ([FigCFDictionaryGetValue() isEqual:{-[AVFigRouteDescriptorOutputDeviceImpl ID](self, "ID")}])
  {

    [(AVFigRouteDescriptorOutputDeviceImpl *)self setRouteDescriptor:change];
  }
}

- (void)_handleRouteDescriptionEvent:(__CFString *)event payload:(id)payload
{
  v7 = *MEMORY[0x1E69619C0];
  if (FigCFEqual())
  {

    [(AVFigRouteDescriptorOutputDeviceImpl *)self _vehicleInformationDidChange:payload];
  }

  else
  {
    v8 = *MEMORY[0x1E69619C8];
    if (FigCFEqual())
    {
      if ([(AVFigRouteDescriptorOutputDeviceImpl *)self delegate])
      {
        [(AVFigRouteDescriptorOutputDeviceImpl *)self delegate];
        if (objc_opt_respondsToSelector())
        {
          delegate = [(AVFigRouteDescriptorOutputDeviceImpl *)self delegate];
          v10 = [objc_msgSend(payload objectForKeyedSubscript:{@"viewAreaIndex", "integerValue"}];
          v11 = [payload objectForKeyedSubscript:@"adjacentViewAreas"];
          v12 = [payload objectForKeyedSubscript:@"uuid"];

          [(AVOutputDeviceDelegate *)delegate setViewAreaIndex:v10 andAdjacentViewAreas:v11 forScreenID:v12];
        }
      }
    }

    else
    {
      v13 = AVOutputDeviceNotificationFromFigNotification(event);
      if ([v13 isEqual:@"AVOutputDeviceCarPlayTestNotification"])
      {

        [(AVFigRouteDescriptorOutputDeviceImpl *)self _carPlayTestNotification:payload];
      }

      else if ([v13 isEqual:@"AVOutputDeviceiOSUIRequestedNotification"])
      {

        [(AVFigRouteDescriptorOutputDeviceImpl *)self _iOSUIRequestedNotification:payload];
      }

      else if ([v13 isEqual:@"AVOutputDeviceSiriRequestedNotification"])
      {

        [(AVFigRouteDescriptorOutputDeviceImpl *)self _siriRequestedNotification:payload];
      }

      else if ([v13 isEqual:@"AVOutputDeviceUnhandledRemoteEventNotification"])
      {

        [(AVFigRouteDescriptorOutputDeviceImpl *)self _unhandledRemoteCommandNotification:payload];
      }

      else if (v13)
      {
        implEventListener = [(AVFigRouteDescriptorOutputDeviceImpl *)self implEventListener];

        [(AVOutputDeviceImplSupport *)implEventListener postNotification:v13 fromImpl:self];
      }
    }
  }
}

- (void)_iOSUIRequestedNotification:(id)notification
{
  v5 = [notification objectForKey:*MEMORY[0x1E6962708]];
  v6 = [notification objectForKey:*MEMORY[0x1E6962710]];
  dictionary = [MEMORY[0x1E695DF90] dictionary];
  [dictionary setValue:v6 forKey:@"AVOutputDeviceiOSUIRequestedDisplayUUIDKey"];
  [dictionary setValue:v5 forKey:@"AVOutputDeviceiOSUIRequestedApplicationURLKey"];
  implEventListener = [(AVFigRouteDescriptorOutputDeviceImpl *)self implEventListener];

  [(AVOutputDeviceImplSupport *)implEventListener postNotification:@"AVOutputDeviceiOSUIRequestedNotification" withPayload:dictionary fromImpl:self];
}

- (void)_carPlayTestNotification:(id)notification
{
  [notification objectForKey:*MEMORY[0x1E69624E8]];
  SiriRequestedActionFromFigAction = AVOutputDeviceGetSiriRequestedActionFromFigAction();
  v6 = [notification objectForKey:*MEMORY[0x1E69624F0]];
  dictionary = [MEMORY[0x1E695DF90] dictionary];
  [dictionary setValue:objc_msgSend(MEMORY[0x1E696AD98] forKey:{"numberWithInteger:", SiriRequestedActionFromFigAction), @"AVOutputDeviceSiriRequestedActionKey"}];
  [dictionary setValue:v6 forKey:@"AVOutputDeviceSiriRequestedTimestampKey"];
  implEventListener = [(AVFigRouteDescriptorOutputDeviceImpl *)self implEventListener];

  [(AVOutputDeviceImplSupport *)implEventListener postNotification:@"AVOutputDeviceCarPlayTestNotification" withPayload:dictionary fromImpl:self];
}

- (void)_siriRequestedNotification:(id)notification
{
  [notification objectForKey:*MEMORY[0x1E69624E8]];
  SiriRequestedActionFromFigAction = AVOutputDeviceGetSiriRequestedActionFromFigAction();
  v6 = [notification objectForKey:*MEMORY[0x1E69624F0]];
  dictionary = [MEMORY[0x1E695DF90] dictionary];
  [dictionary setValue:objc_msgSend(MEMORY[0x1E696AD98] forKey:{"numberWithInteger:", SiriRequestedActionFromFigAction), @"AVOutputDeviceSiriRequestedActionKey"}];
  [dictionary setValue:v6 forKey:@"AVOutputDeviceSiriRequestedTimestampKey"];
  implEventListener = [(AVFigRouteDescriptorOutputDeviceImpl *)self implEventListener];

  [(AVOutputDeviceImplSupport *)implEventListener postNotification:@"AVOutputDeviceSiriRequestedNotification" withPayload:dictionary fromImpl:self];
}

- (void)_unhandledRemoteCommandNotification:(id)notification
{
  dictionary = [MEMORY[0x1E695DF90] dictionary];
  [dictionary setValue:objc_msgSend(notification forKey:{"objectForKey:", *MEMORY[0x1E69626E8]), @"AVOutputDeviceUnhandledRemoteEventCommandTypeKey"}];
  [dictionary setValue:objc_msgSend(notification forKey:{"objectForKey:", *MEMORY[0x1E69626E0]), @"AVOutputDeviceUnhandledRemoteEventCommandParametersKey"}];
  implEventListener = [(AVFigRouteDescriptorOutputDeviceImpl *)self implEventListener];

  [(AVOutputDeviceImplSupport *)implEventListener postNotification:@"AVOutputDeviceUnhandledRemoteEventNotification" withPayload:dictionary fromImpl:self];
}

- (void)_vehicleInformationDidChange:(id)change
{
  v4 = [change objectForKey:*MEMORY[0x1E69626F0]];
  if (v4)
  {
    v5 = v4;
    if ([v4 valueForKey:*MEMORY[0x1E69626F8]])
    {
      [(AVOutputDeviceImplSupport *)[(AVFigRouteDescriptorOutputDeviceImpl *)self implEventListener] postNotification:@"AVOutputDeviceElectronicTollCollectionStateChangedNotification" fromImpl:self];
    }

    if ([v5 valueForKey:*MEMORY[0x1E6962700]])
    {
      implEventListener = [(AVFigRouteDescriptorOutputDeviceImpl *)self implEventListener];

      [(AVOutputDeviceImplSupport *)implEventListener postNotification:@"AVOutputDeviceNavigationAidedDrivingStateChangedNotification" fromImpl:self];
    }
  }
}

- (void)_volumeDidChangeForEndpointWithID:(__CFString *)d
{
  v8 = *MEMORY[0x1E69E9840];
  if ([(__CFString *)d isEqual:[(AVFigRouteDescriptorOutputDeviceImpl *)self ID]])
  {
    if (dword_1ED6F6B68)
    {
      os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
      os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
      fig_log_call_emit_and_clean_up_after_send_and_compose();
    }

    [(AVOutputDeviceImplSupport *)[(AVFigRouteDescriptorOutputDeviceImpl *)self implEventListener:v6] outputDeviceImplDidChangeVolume:self];
  }

  v5 = *MEMORY[0x1E69E9840];
}

- (void)_volumeForEndpointDidChange:(__CFString *)change forRoomID:(__CFString *)d
{
  v10 = *MEMORY[0x1E69E9840];
  if ([(__CFString *)change isEqual:[(AVFigRouteDescriptorOutputDeviceImpl *)self ID]])
  {
    if (dword_1ED6F6B68)
    {
      os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
      os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
      fig_log_call_emit_and_clean_up_after_send_and_compose();
    }

    [(AVOutputDeviceImplSupport *)[(AVFigRouteDescriptorOutputDeviceImpl *)self implEventListener:v8] activatedDeviceClusterMembersDidChangeVolume:self forRoomID:d];
  }

  v7 = *MEMORY[0x1E69E9840];
}

- (BOOL)canSetVolume
{
  v8 = 0;
  volumeController = self->_volumeController;
  if (!volumeController)
  {
    return 0;
  }

  v3 = [(AVFigRouteDescriptorOutputDeviceImpl *)self ID];
  VTable = CMBaseObjectGetVTable();
  v5 = *(*(VTable + 16) + 80);
  if (!v5)
  {
    return 0;
  }

  v6 = *(VTable + 16) + 80;
  v5(volumeController, v3, &v8);
  return v8 != 0;
}

- (void)_canSetEndpointVolumeDidChangeForEndpointWithID:(__CFString *)d
{
  v8 = *MEMORY[0x1E69E9840];
  if ([(__CFString *)d isEqual:[(AVFigRouteDescriptorOutputDeviceImpl *)self ID]])
  {
    if (dword_1ED6F6B68)
    {
      os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
      os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
      fig_log_call_emit_and_clean_up_after_send_and_compose();
    }

    [(AVOutputDeviceImplSupport *)[(AVFigRouteDescriptorOutputDeviceImpl *)self implEventListener:v6] outputDeviceImplDidChangeCanChangeVolume:self];
  }

  v5 = *MEMORY[0x1E69E9840];
}

- (void)_endpointVolumeControlTypeDidChangeForEndpointWithID:(__CFString *)d
{
  v8 = *MEMORY[0x1E69E9840];
  if ([(__CFString *)d isEqualToString:[(AVFigRouteDescriptorOutputDeviceImpl *)self ID]])
  {
    if (dword_1ED6F6B68)
    {
      os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
      os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
      fig_log_call_emit_and_clean_up_after_send_and_compose();
    }

    [(AVOutputDeviceImplSupport *)[(AVFigRouteDescriptorOutputDeviceImpl *)self implEventListener:v6] outputDeviceImplDidChangeVolumeControlType:self];
  }

  v5 = *MEMORY[0x1E69E9840];
}

- (void)setVolume:(float)volume
{
  v10 = *MEMORY[0x1E69E9840];
  if (self->_volumeController)
  {
    v5 = [(AVFigRouteDescriptorOutputDeviceImpl *)self ID];
    if (dword_1ED6F6B68)
    {
      os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
      os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
      fig_log_call_emit_and_clean_up_after_send_and_compose();
    }

    volumeController = self->_volumeController;
    v8 = *(*(CMBaseObjectGetVTable() + 16) + 64);
    if (v8)
    {
      v8(volumeController, v5, volume);
    }
  }

  v9 = *MEMORY[0x1E69E9840];
}

- (void)increaseVolumeByCount:(int64_t)count
{
  volumeController = self->_volumeController;
  if (volumeController)
  {
    v5 = [(AVFigRouteDescriptorOutputDeviceImpl *)self ID];

    AVOutputDeviceImplChangeVolumeByCount(volumeController, v5, count);
  }
}

- (void)decreaseVolumeByCount:(int64_t)count
{
  volumeController = self->_volumeController;
  if (volumeController)
  {
    v5 = [(AVFigRouteDescriptorOutputDeviceImpl *)self ID];

    AVOutputDeviceImplChangeVolumeByCount(volumeController, v5, -count);
  }
}

- (void)setActivatedDeviceClusterMembersVolume:(float)volume withRoomID:(id)d
{
  volumeController = self->_volumeController;
  if (volumeController)
  {
    v7 = [(AVFigRouteDescriptorOutputDeviceImpl *)self ID];

    AVOutputDeviceImplChangeRoomVolumeForEndpoint(volumeController, v7, d, volume);
  }
}

- (float)volumeForActivatedDeviceClusterMembersWithRoomID:(id)d
{
  v11 = 0.0;
  volumeController = self->_volumeController;
  v4 = 0.0;
  if (volumeController)
  {
    v6 = [(AVFigRouteDescriptorOutputDeviceImpl *)self ID];
    VTable = CMBaseObjectGetVTable();
    v8 = *(*(VTable + 16) + 216);
    if (v8)
    {
      v9 = *(VTable + 16) + 216;
      v8(volumeController, v6, d, &v11);
      return v11;
    }
  }

  return v4;
}

- (BOOL)canMute
{
  volumeController = self->_volumeController;
  if (!volumeController)
  {
    return 0;
  }

  v3 = [(AVFigRouteDescriptorOutputDeviceImpl *)self ID];

  return AVOutputDeviceImplCanMuteForEndpointID(volumeController, v3);
}

- (BOOL)isMuted
{
  volumeController = self->_volumeController;
  if (!volumeController)
  {
    return 0;
  }

  v3 = [(AVFigRouteDescriptorOutputDeviceImpl *)self ID];

  return AVOutputDeviceImplIsMutedForEndpointID(volumeController, v3);
}

- (BOOL)isLogicalDeviceLeader
{
  [(AVFigRouteDescriptorOutputDeviceImpl *)self routeDescriptor];
  v2 = *MEMORY[0x1E69AF1F8];
  FigCFDictionaryGetBooleanIfPresent();
  return 0;
}

- (BOOL)canCommunicateWithAllLogicalDeviceMembers
{
  [(AVFigRouteDescriptorOutputDeviceImpl *)self routeDescriptor];
  v2 = *MEMORY[0x1E69AF1F0];
  FigCFDictionaryGetBooleanIfPresent();
  return 1;
}

- (BOOL)supportsFitnessDataDestination
{
  [(AVFigRouteDescriptorOutputDeviceImpl *)self routeDescriptor];
  FigCFDictionaryGetBooleanIfPresent();
  return 0;
}

- (BOOL)supportsScreenMirroringControls
{
  [(AVFigRouteDescriptorOutputDeviceImpl *)self routeDescriptor];
  FigCFDictionaryGetBooleanIfPresent();
  return 0;
}

- (void)configureUsingBlock:(id)block options:(id)options completionHandler:(id)handler
{
  v28[19] = *MEMORY[0x1E69E9840];
  cf = 0;
  v9 = +[AVRoutingGlobalOperationQueue defaultQueue];
  v10 = *MEMORY[0x1E695E480];
  Mutable = CFDictionaryCreateMutable(*MEMORY[0x1E695E480], 0, MEMORY[0x1E695E528], MEMORY[0x1E695E9E8]);
  if ([objc_msgSend(options objectForKeyedSubscript:{@"AVOutputDeviceConfigurationOptionCancelConfigurationIfAuthRequired", "BOOLValue"}])
  {
    CFDictionaryAddValue(Mutable, *MEMORY[0x1E69AF518], *MEMORY[0x1E695E4D0]);
  }

  if (dword_1ED6F6B68)
  {
    v25 = 0;
    type = OS_LOG_TYPE_DEFAULT;
    os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
    fig_log_call_emit_and_clean_up_after_send_and_compose();
  }

  v13 = [(FigRoutingContextFactory *)self->_routingContextFactory createControlChannelOnlyContextWithAllocator:v10 options:0 context:&cf, v21, v22];
  if (v13)
  {
    v16 = 0;
    goto LABEL_11;
  }

  if (cf)
  {
    v14 = AVMakeSelectRouteDescriptorOperation(cf, [(AVFigRouteDescriptorOutputDeviceImpl *)self routeDescriptor], Mutable, self->_useRouteConfigUpdatedNotification, 0);
    v15 = [AVRoutingContextSendConfigureDeviceCommandOperation alloc];
    v16 = [(AVRoutingContextSendConfigureDeviceCommandOperation *)v15 initWithRoutingContext:cf configuratorBlock:block];
    -[AVRoutingContextSendConfigureDeviceCommandOperation setName:](v16, "setName:", [MEMORY[0x1E696AEC0] stringWithFormat:@"Set configuration on device represented by %@ (impl=%@)", -[AVFigRouteDescriptorOutputDeviceImpl implEventListener](self, "implEventListener"), self]);
    [(AVRoutingContextSendConfigureDeviceCommandOperation *)v16 addDependency:v14];
    if (cf)
    {
      CFRetain(cf);
      v17 = cf;
    }

    else
    {
      v17 = 0;
    }

    v23[0] = MEMORY[0x1E69E9820];
    v23[1] = 3221225472;
    v23[2] = __86__AVFigRouteDescriptorOutputDeviceImpl_configureUsingBlock_options_completionHandler___block_invoke;
    v23[3] = &unk_1E794E840;
    v23[4] = v16;
    v23[5] = v14;
    v23[6] = handler;
    v23[7] = v17;
    [(AVRoutingContextSendConfigureDeviceCommandOperation *)v16 setCompletionBlock:v23];
    [v9 enqueueOperation:v14];
    [v9 enqueueOperation:v16];
LABEL_11:
    if (cf)
    {
      goto LABEL_16;
    }

    goto LABEL_12;
  }

  v16 = 0;
LABEL_12:
  v27 = *MEMORY[0x1E695E618];
  v28[0] = @"Failed to create FigRoutingContext";
  v18 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v28 forKeys:&v27 count:1];
  if (v13)
  {
    v19 = AVLocalizedErrorWithUnderlyingOSStatus(v13, v18);
  }

  else
  {
    v19 = AVLocalizedError(@"AVFoundationErrorDomain", -11800, v18);
  }

  (*(handler + 2))(handler, 1, 0, 0, v19);
LABEL_16:
  if (Mutable)
  {
    CFRelease(Mutable);
  }

  if (cf)
  {
    CFRelease(cf);
  }

  v20 = *MEMORY[0x1E69E9840];
}

void __86__AVFigRouteDescriptorOutputDeviceImpl_configureUsingBlock_options_completionHandler___block_invoke(uint64_t a1)
{
  v9 = *MEMORY[0x1E69E9840];
  v2 = [*(a1 + 32) status];
  switch(v2)
  {
    case 4:
      (*(*(a1 + 48) + 16))(*(a1 + 48), 1, 0, 0, [*(a1 + 32) error]);
      break;
    case 3:
      if ([objc_msgSend(objc_msgSend(*(a1 + 40) "result")])
      {
        v3 = @"AVOutputDeviceConfigurationCancellationReasonAuthorizationSkipped";
      }

      else
      {
        v3 = 0;
      }

      (*(*(a1 + 48) + 16))(*(a1 + 48), 2, 0, v3, 0);
      break;
    case 2:
      (*(*(a1 + 48) + 16))(*(a1 + 48), 0, [*(a1 + 32) finalConfiguration], 0, 0);
      break;
    default:
      (*(*(a1 + 48) + 16))(*(a1 + 48), 2, 0, 0, 0);
      break;
  }

  if ([*(a1 + 40) status] == 2)
  {
    if (dword_1ED6F6B68)
    {
      os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
      os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
      fig_log_call_emit_and_clean_up_after_send_and_compose();
    }

    v5 = *(a1 + 56);
    v6 = *(*(CMBaseObjectGetVTable() + 16) + 16);
    if (v6)
    {
      v6(v5, 0, 0);
    }
  }

  v7 = *(a1 + 56);
  if (v7)
  {
    CFRelease(v7);
  }

  v8 = *MEMORY[0x1E69E9840];
}

- (NSArray)OEMIcons
{
  Value = CFDictionaryGetValue([(AVFigRouteDescriptorOutputDeviceImpl *)self routeDescriptor], @"OEMIcons");

  return AVOutputDeviceAVOutputDeviceIconsFromOEMIcons(Value);
}

- (NSString)OEMIconLabel
{
  routeDescriptor = [(AVFigRouteDescriptorOutputDeviceImpl *)self routeDescriptor];

  return CFDictionaryGetValue(routeDescriptor, @"OEMIconLabel");
}

- (BOOL)OEMIconVisible
{
  [(AVFigRouteDescriptorOutputDeviceImpl *)self routeDescriptor];
  FigCFDictionaryGetBooleanIfPresent();
  return 0;
}

- (NSArray)outputDeviceHIDs
{
  v5 = 0;
  v6 = &v5;
  v7 = 0x3052000000;
  v8 = __Block_byref_object_copy__2;
  v9 = __Block_byref_object_dispose__2;
  v10 = 0;
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = __56__AVFigRouteDescriptorOutputDeviceImpl_outputDeviceHIDs__block_invoke;
  v4[3] = &unk_1E794EBC8;
  v4[4] = self;
  v4[5] = &v5;
  [(AVFigRouteDescriptorOutputDeviceImpl *)self _withEndpoint:v4];
  v2 = v6[5];
  _Block_object_dispose(&v5, 8);
  return v2;
}

uint64_t __56__AVFigRouteDescriptorOutputDeviceImpl_outputDeviceHIDs__block_invoke(uint64_t a1, uint64_t a2)
{
  Value = CFDictionaryGetValue([*(a1 + 32) routeDescriptor], @"HIDs");
  *(*(*(a1 + 40) + 8) + 40) = AVOutputDeviceMakeAVOutputDeviceHIDsFromFigHIDs(Value, a2);
  return 0;
}

- (BOOL)nightMode
{
  [(AVFigRouteDescriptorOutputDeviceImpl *)self routeDescriptor];
  FigCFDictionaryGetBooleanIfPresent();
  return 0;
}

- (BOOL)rightHandDrive
{
  [(AVFigRouteDescriptorOutputDeviceImpl *)self routeDescriptor];
  FigCFDictionaryGetBooleanIfPresent();
  return 0;
}

- (NSArray)limitedUIElements
{
  Value = CFDictionaryGetValue([(AVFigRouteDescriptorOutputDeviceImpl *)self routeDescriptor], @"LimitedUIElements");
  if (Value)
  {
    v3 = Value;

    return v3;
  }

  else
  {
    v5 = MEMORY[0x1E695DEC8];

    return [v5 array];
  }
}

- (BOOL)limitedUI
{
  [(AVFigRouteDescriptorOutputDeviceImpl *)self routeDescriptor];
  FigCFDictionaryGetBooleanIfPresent();
  return 0;
}

- (BOOL)carOwnsScreen
{
  [(AVFigRouteDescriptorOutputDeviceImpl *)self routeDescriptor];
  FigCFDictionaryGetBooleanIfPresent();
  return 0;
}

- (BOOL)ownsTurnByTurnNavigation
{
  [(AVFigRouteDescriptorOutputDeviceImpl *)self routeDescriptor];
  FigCFDictionaryGetBooleanIfPresent();
  return 0;
}

- (BOOL)recognizingSpeech
{
  [(AVFigRouteDescriptorOutputDeviceImpl *)self routeDescriptor];
  FigCFDictionaryGetBooleanIfPresent();
  return 0;
}

- (NSArray)supportedFeatures
{
  Value = CFDictionaryGetValue([(AVFigRouteDescriptorOutputDeviceImpl *)self routeDescriptor], @"ExtendedFeatures");
  if (Value)
  {
    v3 = Value;

    return v3;
  }

  else
  {
    v5 = MEMORY[0x1E695DEC8];

    return [v5 array];
  }
}

- (int64_t)electronicTollCollection
{
  Value = CFDictionaryGetValue([(AVFigRouteDescriptorOutputDeviceImpl *)self routeDescriptor], @"VehicleInformation");

  return AVOutputDeviceElectronicTollCollectionStateFromVehicleInfo(Value);
}

- (int64_t)navigationAidedDriving
{
  Value = CFDictionaryGetValue([(AVFigRouteDescriptorOutputDeviceImpl *)self routeDescriptor], @"VehicleInformation");

  return AVOutputDeviceNavigationAidedDrivingStateFromVehicleInfo(Value);
}

- (int64_t)transportType
{
  CFDictionaryGetValue([(AVFigRouteDescriptorOutputDeviceImpl *)self routeDescriptor], @"TransportType");

  return AVOutputDeviceTransportTypeFromFigTransportType();
}

- (NSData)MFiCertificateSerialNumber
{
  Value = CFDictionaryGetValue([(AVFigRouteDescriptorOutputDeviceImpl *)self routeDescriptor], @"AuthenticationData");
  if (Value)
  {
    v3 = Value;

    return v3;
  }

  else
  {
    v5 = MEMORY[0x1E695DEF0];

    return [v5 data];
  }
}

- (void)requestViewArea:(int64_t)area forScreenID:(id)d
{
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = __68__AVFigRouteDescriptorOutputDeviceImpl_requestViewArea_forScreenID___block_invoke;
  v4[3] = &unk_1E794EB08;
  v4[4] = d;
  v4[5] = area;
  [(AVFigRouteDescriptorOutputDeviceImpl *)self _withEndpoint:v4];
}

- (void)requestCarUIForURL:(id)l withUUID:(id)d
{
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = __68__AVFigRouteDescriptorOutputDeviceImpl_requestCarUIForURL_withUUID___block_invoke;
  v4[3] = &unk_1E794EBF0;
  v4[4] = d;
  v4[5] = l;
  [(AVFigRouteDescriptorOutputDeviceImpl *)self _withEndpoint:v4];
}

- (id)requestTurnByTurnNavigationOwnership
{
  v5 = 0;
  v6 = &v5;
  v7 = 0x3052000000;
  v8 = __Block_byref_object_copy__2;
  v9 = __Block_byref_object_dispose__2;
  v10 = 0;
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = __76__AVFigRouteDescriptorOutputDeviceImpl_requestTurnByTurnNavigationOwnership__block_invoke;
  v4[3] = &unk_1E794EAB8;
  v4[4] = &v5;
  [(AVFigRouteDescriptorOutputDeviceImpl *)self _withEndpoint:v4];
  v2 = v6[5];
  _Block_object_dispose(&v5, 8);
  return v2;
}

- (id)borrowScreenForClient:(id)client reason:(id)reason
{
  v7 = 0;
  v8 = &v7;
  v9 = 0x3052000000;
  v10 = __Block_byref_object_copy__2;
  v11 = __Block_byref_object_dispose__2;
  v12 = 0;
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __69__AVFigRouteDescriptorOutputDeviceImpl_borrowScreenForClient_reason___block_invoke;
  v6[3] = &unk_1E794EC18;
  v6[5] = reason;
  v6[6] = &v7;
  v6[4] = client;
  [(AVFigRouteDescriptorOutputDeviceImpl *)self _withEndpoint:v6];
  v4 = v8[5];
  _Block_object_dispose(&v7, 8);
  return v4;
}

- (void)takeScreenForClient:(id)client reason:(id)reason
{
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = __67__AVFigRouteDescriptorOutputDeviceImpl_takeScreenForClient_reason___block_invoke;
  v4[3] = &unk_1E794EBF0;
  v4[4] = client;
  v4[5] = reason;
  [(AVFigRouteDescriptorOutputDeviceImpl *)self _withEndpoint:v4];
}

- (BOOL)siriForwardingEnabled
{
  [(AVFigRouteDescriptorOutputDeviceImpl *)self routeDescriptor];
  FigCFDictionaryGetBooleanIfPresent();
  return 0;
}

- (void)setSiriForwardingEnabled:(BOOL)enabled
{
  v3[0] = MEMORY[0x1E69E9820];
  v3[1] = 3221225472;
  v3[2] = __65__AVFigRouteDescriptorOutputDeviceImpl_setSiriForwardingEnabled___block_invoke;
  v3[3] = &__block_descriptor_33_e28_i16__0__OpaqueFigEndpoint__8l;
  enabledCopy = enabled;
  [(AVFigRouteDescriptorOutputDeviceImpl *)self _withEndpoint:v3];
}

- (BOOL)carOwnsMainAudio
{
  [(AVFigRouteDescriptorOutputDeviceImpl *)self routeDescriptor];
  FigCFDictionaryGetBooleanIfPresent();
  return 0;
}

- (NSDictionary)displayCornerMasks
{
  v5 = 0;
  v6 = &v5;
  v7 = 0x3052000000;
  v8 = __Block_byref_object_copy__2;
  v9 = __Block_byref_object_dispose__2;
  v10 = 0;
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = __58__AVFigRouteDescriptorOutputDeviceImpl_displayCornerMasks__block_invoke;
  v4[3] = &unk_1E794EAB8;
  v4[4] = &v5;
  [(AVFigRouteDescriptorOutputDeviceImpl *)self _withEndpoint:v4];
  dictionary = v6[5];
  if (!dictionary)
  {
    dictionary = [MEMORY[0x1E695DF20] dictionary];
  }

  _Block_object_dispose(&v5, 8);
  return dictionary;
}

- (void)setDisplayCornerMasks:(id)masks
{
  v3[0] = MEMORY[0x1E69E9820];
  v3[1] = 3221225472;
  v3[2] = __62__AVFigRouteDescriptorOutputDeviceImpl_setDisplayCornerMasks___block_invoke;
  v3[3] = &unk_1E794EB50;
  v3[4] = masks;
  [(AVFigRouteDescriptorOutputDeviceImpl *)self _withEndpoint:v3];
}

- (int64_t)voiceTriggerMode
{
  result = CFDictionaryGetValue([(AVFigRouteDescriptorOutputDeviceImpl *)self routeDescriptor], @"VoiceActivationType");
  if (result)
  {

    return [result unsignedIntegerValue];
  }

  return result;
}

- (int64_t)authenticationType
{
  CFDictionaryGetValue([(AVFigRouteDescriptorOutputDeviceImpl *)self routeDescriptor], @"AuthenticationType");

  return AVOutputDeviceAuthenticationTypeFromFigAuthenticationType();
}

- (id)currentScreenViewAreaForScreenID:(id)d
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x3052000000;
  v9 = __Block_byref_object_copy__2;
  v10 = __Block_byref_object_dispose__2;
  v11 = 0;
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __73__AVFigRouteDescriptorOutputDeviceImpl_currentScreenViewAreaForScreenID___block_invoke;
  v5[3] = &unk_1E794EBC8;
  v5[4] = d;
  v5[5] = &v6;
  [(AVFigRouteDescriptorOutputDeviceImpl *)self _withEndpoint:v5];
  dictionary = v7[5];
  if (!dictionary)
  {
    dictionary = [MEMORY[0x1E695DF20] dictionary];
  }

  _Block_object_dispose(&v6, 8);
  return dictionary;
}

- (BOOL)isActivated
{
  [(AVFigRouteDescriptorOutputDeviceImpl *)self routeDescriptor];
  FigCFDictionaryGetBooleanIfPresent();
  return 0;
}

- (NSArray)screens
{
  Value = CFDictionaryGetValue([(AVFigRouteDescriptorOutputDeviceImpl *)self routeDescriptor], @"ScreenInfo");

  return AVOutputDeviceAVOutputDeviceScreenInfoFromFigScreens(Value);
}

- (NSDictionary)outputDeviceInfo
{
  Value = CFDictionaryGetValue([(AVFigRouteDescriptorOutputDeviceImpl *)self routeDescriptor], @"EndpointInfo");
  if (Value)
  {
    v3 = Value;

    return v3;
  }

  else
  {
    v5 = MEMORY[0x1E695DF20];

    return [v5 dictionary];
  }
}

- (void)suggestUIWithURLs:(id)ls completionHandler:(id)handler
{
  v9 = 0;
  v10 = &v9;
  v11 = 0x2020000000;
  v12 = 1;
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __76__AVFigRouteDescriptorOutputDeviceImpl_suggestUIWithURLs_completionHandler___block_invoke;
  v7[3] = &unk_1E794EC40;
  v7[4] = ls;
  v7[5] = handler;
  v7[6] = &v9;
  v8 = 0;
  v5 = [(AVFigRouteDescriptorOutputDeviceImpl *)self _withEndpoint:v7];
  if (v5)
  {
    v6 = AVLocalizedErrorWithUnderlyingOSStatus(v5, 0);
  }

  else
  {
    v6 = 0;
  }

  if (*(v10 + 24) == 1)
  {
    (*(handler + 2))(handler, v6);
  }

  _Block_object_dispose(&v9, 8);
}

uint64_t __76__AVFigRouteDescriptorOutputDeviceImpl_suggestUIWithURLs_completionHandler___block_invoke(uint64_t a1, uint64_t a2)
{
  AVOutputDeviceSuggestUIWithURLSAndCompletionHandler(a2, *(a1 + 32), *(a1 + 40));
  *(*(*(a1 + 48) + 8) + 24) = 0;
  return *(a1 + 56);
}

- (void)performHapticFeedbackForUUID:(id)d withHapticType:(id)type completionHandler:(id)handler
{
  v10 = 0;
  v11 = &v10;
  v12 = 0x2020000000;
  v13 = 1;
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __102__AVFigRouteDescriptorOutputDeviceImpl_performHapticFeedbackForUUID_withHapticType_completionHandler___block_invoke;
  v8[3] = &unk_1E794EC68;
  v8[4] = d;
  v8[5] = type;
  v8[6] = handler;
  v8[7] = &v10;
  v9 = 0;
  v6 = [(AVFigRouteDescriptorOutputDeviceImpl *)self _withEndpoint:v8];
  if (v6)
  {
    v7 = AVLocalizedErrorWithUnderlyingOSStatus(v6, 0);
  }

  else
  {
    v7 = 0;
  }

  if (*(v11 + 24) == 1)
  {
    (*(handler + 2))(handler, v7);
  }

  _Block_object_dispose(&v10, 8);
}

uint64_t __102__AVFigRouteDescriptorOutputDeviceImpl_performHapticFeedbackForUUID_withHapticType_completionHandler___block_invoke(uint64_t a1, uint64_t a2)
{
  AVOutputDevicePerformHapticFeedback(a2, *(a1 + 32), *(a1 + 40), *(a1 + 48));
  *(*(*(a1 + 56) + 8) + 24) = 0;
  return *(a1 + 64);
}

- (AVFigRouteDescriptorOutputDeviceImpl)initWithRouteDescriptor:(__CFDictionary *)descriptor routeDiscoverer:(OpaqueFigRouteDiscoverer *)discoverer volumeController:(OpaqueFigVolumeControllerState *)controller routingContextFactory:(id)factory useRouteConfigUpdatedNotification:(BOOL)notification routingContext:(OpaqueFigRoutingContext *)context
{
  [AVRoutingCMNotificationDispatcher notificationDispatcherForCMNotificationCenter:CMNotificationCenterGetDefaultLocalCenter()];
  v44.receiver = self;
  v44.super_class = AVFigRouteDescriptorOutputDeviceImpl;
  v15 = [(AVFigRouteDescriptorOutputDeviceImpl *)&v44 init];
  v16 = v15;
  if (!v15)
  {
    goto LABEL_21;
  }

  if (!descriptor)
  {
    v20 = 0;
    v15->_routeDescriptor = 0;
    goto LABEL_20;
  }

  v17 = CFRetain(descriptor);
  v16->_routeDescriptor = v17;
  if (!v17)
  {
    goto LABEL_21;
  }

  if (!discoverer)
  {
    v20 = 0;
    v16->_routeDiscoverer = 0;
    goto LABEL_20;
  }

  v18 = CFRetain(discoverer);
  v16->_routeDiscoverer = v18;
  if (!v18 || (!controller ? (v19 = 0) : (v19 = CFRetain(controller)), v16->_volumeController = v19, v21 = factory, (v16->_routingContextFactory = v21) == 0))
  {
LABEL_21:
    v20 = 0;
    goto LABEL_20;
  }

  v16->_useRouteConfigUpdatedNotification = notification;
  if (context)
  {
    v22 = CFRetain(context);
  }

  else
  {
    v22 = 0;
  }

  v16->_routingContext = v22;
  v16->_routeDescriptionRWLock = FigReadWriteLockCreate();
  v23 = [[AVRoutingWeakReference alloc] initWithReferencedObject:v16];
  v16->_weakObserver = v23;
  volumeController = v16->_volumeController;
  if (volumeController)
  {
    v27 = OUTLINED_FUNCTION_0(v23, v24, v23, v25, *MEMORY[0x1E69AF5C0], volumeController);
    v30 = OUTLINED_FUNCTION_0(v27, v28, v16->_weakObserver, v29, *MEMORY[0x1E69AF5E8], v16->_volumeController);
    v33 = OUTLINED_FUNCTION_0(v30, v31, v16->_weakObserver, v32, *MEMORY[0x1E69AF5E0], v16->_volumeController);
    v36 = OUTLINED_FUNCTION_0(v33, v34, v16->_weakObserver, v35, *MEMORY[0x1E69AF5D8], v16->_volumeController);
    v39 = OUTLINED_FUNCTION_0(v36, v37, v16->_weakObserver, v38, *MEMORY[0x1E69AF600], v16->_volumeController);
    v23 = OUTLINED_FUNCTION_0(v39, v40, v16->_weakObserver, v41, *MEMORY[0x1E69AF618], v16->_volumeController);
  }

  routingContext = v16->_routingContext;
  if (routingContext)
  {
    OUTLINED_FUNCTION_0(v23, v24, v16->_weakObserver, v25, @"routeDescriptionEvent", routingContext);
  }

  v20 = v16;
LABEL_20:

  return v20;
}

- (BOOL)automaticallyAllowsConnectionsFromPeersInHomeGroup
{
  routeDescriptor = [(AVFigRouteDescriptorOutputDeviceImpl *)self routeDescriptor];
  Value = CFDictionaryGetValue(routeDescriptor, *MEMORY[0x1E69AF110]);
  if (Value)
  {
    LOBYTE(Value) = CFBooleanGetValue(Value) != 0;
  }

  return Value;
}

- (int)_withEndpoint:(id)endpoint
{
  cf[16] = *MEMORY[0x1E69E9840];
  theArray = 0;
  v39 = 0;
  if (dword_1ED6F6B68 >= 3)
  {
    os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    if (OUTLINED_FUNCTION_5_0(os_log_and_send_and_compose_flags_and_os_log_type, v7, v8, v9, v10, v11, v12, v13, v34, v35, v36, *v37, v37[2], OS_LOG_TYPE_DEFAULT, 0))
    {
      v14 = v3;
    }

    else
    {
      v14 = v3 & 0xFFFFFFFE;
    }

    if (v14)
    {
      [(AVFigRouteDescriptorOutputDeviceImpl *)self routeDescriptor];
      v40 = 136315395;
      v41 = "[AVFigRouteDescriptorOutputDeviceImpl _withEndpoint:]";
      OUTLINED_FUNCTION_2_0();
      OUTLINED_FUNCTION_4_0();
    }

    OUTLINED_FUNCTION_1_1();
    fig_log_call_emit_and_clean_up_after_send_and_compose();
  }

  routingContext = self->_routingContext;
  if (routingContext)
  {
    v16 = self->_routingContext;
    v17 = *(*(CMBaseObjectGetVTable() + 16) + 56);
    if (v17)
    {
      v18 = v17(routingContext, &theArray);
      if (!v18)
      {
        v19 = 0;
        v20 = *MEMORY[0x1E69620F8];
        v21 = *MEMORY[0x1E695E480];
        while (1)
        {
          Count = theArray;
          if (theArray)
          {
            Count = CFArrayGetCount(theArray);
          }

          if (v19 >= Count)
          {
            goto LABEL_33;
          }

          ValueAtIndex = CFArrayGetValueAtIndex(theArray, v19);
          cf[0] = 0;
          CMBaseObject = FigEndpointGetCMBaseObject();
          v25 = *(*(CMBaseObjectGetVTable() + 8) + 48);
          if (v25)
          {
            v25(CMBaseObject, v20, v21, cf);
          }

          v26 = [(AVFigRouteDescriptorOutputDeviceImpl *)self ID];
          if ([(NSString *)v26 isEqualToString:cf[0]])
          {
            if (ValueAtIndex)
            {
              v30 = CFRetain(ValueAtIndex);
            }

            else
            {
              v30 = 0;
            }

            v39 = v30;
            if (cf[0])
            {
              CFRelease(cf[0]);
            }

            if (!v30)
            {
              goto LABEL_33;
            }

            goto LABEL_32;
          }

          if (cf[0])
          {
            CFRelease(cf[0]);
          }

          ++v19;
        }
      }

      goto LABEL_34;
    }

LABEL_25:
    v31 = -12782;
    goto LABEL_35;
  }

  routeDiscoverer = self->_routeDiscoverer;
  routeDescriptor = [(AVFigRouteDescriptorOutputDeviceImpl *)self routeDescriptor];
  v29 = *(*(CMBaseObjectGetVTable() + 16) + 8);
  if (!v29)
  {
    goto LABEL_25;
  }

  v18 = v29(routeDiscoverer, routeDescriptor, &v39);
  if (!v18)
  {
    v30 = v39;
    if (!v39)
    {
LABEL_33:
      v18 = FigSignalErrorAtGM();
      goto LABEL_34;
    }

LABEL_32:
    v18 = (*(endpoint + 2))(endpoint, v30);
  }

LABEL_34:
  v31 = v18;
LABEL_35:
  if (v39)
  {
    CFRelease(v39);
  }

  if (theArray)
  {
    CFRelease(theArray);
  }

  v32 = *MEMORY[0x1E69E9840];
  return v31;
}

- (BOOL)setCurrentBluetoothListeningMode:(id)mode error:(id *)error
{
  v39 = *MEMORY[0x1E69E9840];
  valuePtr = 0;
  cf = 0;
  if (dword_1ED6F6B68)
  {
    v8 = OUTLINED_FUNCTION_3_0();
    if (OUTLINED_FUNCTION_5_0(v8, v9, v10, v11, v12, v13, v14, v15, v29, v30, v31, type, SBYTE2(type), BYTE3(type), SHIDWORD(type)))
    {
      v16 = v4;
    }

    else
    {
      v16 = v4 & 0xFFFFFFFE;
    }

    if (v16)
    {
      [(AVFigRouteDescriptorOutputDeviceImpl *)self routeDescriptor];
      v35 = 136315395;
      v36 = "[AVFigRouteDescriptorOutputDeviceImpl setCurrentBluetoothListeningMode:error:]";
      OUTLINED_FUNCTION_2_0();
      OUTLINED_FUNCTION_4_0();
    }

    OUTLINED_FUNCTION_1_1();
    fig_log_call_emit_and_clean_up_after_send_and_compose();
  }

  routeDiscoverer = self->_routeDiscoverer;
  routeDescriptor = [(AVFigRouteDescriptorOutputDeviceImpl *)self routeDescriptor];
  v19 = *(*(CMBaseObjectGetVTable() + 16) + 8);
  if (v19)
  {
    v20 = v19(routeDiscoverer, routeDescriptor, &cf);
    if (v20)
    {
      v24 = v20;
      v21 = 0;
      goto LABEL_19;
    }

    if (!cf)
    {
      v24 = 0;
      goto LABEL_26;
    }

    valuePtr = AVOutputDeviceFigListeningModeForAVFListeningMode(mode);
    v21 = CFNumberCreate(*MEMORY[0x1E695E480], kCFNumberSInt32Type, &valuePtr);
    if (dword_1ED6F6B68)
    {
      v22 = OUTLINED_FUNCTION_3_0();
      if (os_log_type_enabled(v22, BYTE3(type)))
      {
        v23 = HIDWORD(type);
      }

      else
      {
        v23 = HIDWORD(type) & 0xFFFFFFFE;
      }

      if (v23)
      {
        v35 = 136315394;
        v36 = "[AVFigRouteDescriptorOutputDeviceImpl setCurrentBluetoothListeningMode:error:]";
        v37 = 1024;
        v38 = valuePtr;
        _os_log_send_and_compose_impl();
      }

      OUTLINED_FUNCTION_1_1();
      fig_log_call_emit_and_clean_up_after_send_and_compose();
    }

    CMBaseObject = FigEndpointGetCMBaseObject();
    v28 = *(*(CMBaseObjectGetVTable() + 8) + 56);
    if (v28)
    {
      v24 = v28(CMBaseObject, *MEMORY[0x1E69621A8], v21);
      goto LABEL_19;
    }
  }

  else
  {
    v21 = 0;
  }

  v24 = -12782;
LABEL_19:
  if (cf)
  {
    CFRelease(cf);
  }

  if (v21)
  {
    CFRelease(v21);
  }

  if (error && v24)
  {
    *error = [MEMORY[0x1E696ABC0] errorWithDomain:*MEMORY[0x1E696A768] code:v24 userInfo:0];
    v24 = 1;
  }

LABEL_26:
  result = v24 == 0;
  v26 = *MEMORY[0x1E69E9840];
  return result;
}

@end