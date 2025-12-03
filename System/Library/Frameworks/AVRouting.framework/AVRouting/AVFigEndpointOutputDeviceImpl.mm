@interface AVFigEndpointOutputDeviceImpl
- (AVFigEndpointOutputDeviceImpl)initWithFigEndpoint:(OpaqueFigEndpoint *)endpoint volumeController:(OpaqueFigVolumeControllerState *)controller routingContextFactory:(id)factory useRouteConfigUpdatedNotification:(BOOL)notification;
- (BOOL)OEMIconVisible;
- (BOOL)allowsHeadTrackedSpatialAudio;
- (BOOL)automaticallyAllowsConnectionsFromPeersInHomeGroup;
- (BOOL)canAccessAppleMusic;
- (BOOL)canAccessRemoteAssets;
- (BOOL)canAccessiCloudMusicLibrary;
- (BOOL)canBeGroupLeader;
- (BOOL)canBeGrouped;
- (BOOL)canMute;
- (BOOL)canRelayCommunicationChannel;
- (BOOL)canSetVolume;
- (BOOL)carOwnsMainAudio;
- (BOOL)carOwnsScreen;
- (BOOL)groupContainsGroupLeader;
- (BOOL)isActivated;
- (BOOL)isAppleAccessory;
- (BOOL)isCached;
- (BOOL)isClusterLeader;
- (BOOL)isConversationDetectionEnabled;
- (BOOL)isEqual:(id)equal;
- (BOOL)isGroupLeader;
- (BOOL)isHeadTrackedSpatialAudioActive;
- (BOOL)isLogicalDeviceLeader;
- (BOOL)isMuted;
- (BOOL)limitedUI;
- (BOOL)nightMode;
- (BOOL)onlyAllowsConnectionsFromPeersInHomeGroup;
- (BOOL)ownsTurnByTurnNavigation;
- (BOOL)producesLowFidelityAudio;
- (BOOL)recognizingSpeech;
- (BOOL)rightHandDrive;
- (BOOL)setAllowsHeadTrackedSpatialAudio:(BOOL)audio error:(id *)error;
- (BOOL)setConversationDetectionEnabled:(BOOL)enabled error:(id *)error;
- (BOOL)setCurrentBluetoothListeningMode:(id)mode error:(id *)error;
- (BOOL)setHeadTrackedSpatialAudioMode:(id)mode error:(id *)error;
- (BOOL)siriForwardingEnabled;
- (BOOL)supportsBluetoothSharing;
- (BOOL)supportsBufferedAirPlay;
- (BOOL)supportsConversationDetection;
- (BOOL)supportsHeadTrackedSpatialAudio;
- (NSArray)OEMIcons;
- (NSArray)availableBluetoothListeningModes;
- (NSArray)clusteredDeviceDescriptions;
- (NSArray)limitedUIElements;
- (NSArray)outputDeviceHIDs;
- (NSArray)screens;
- (NSArray)supportedFeatures;
- (NSDictionary)displayCornerMasks;
- (NSNumber)batteryLevel;
- (NSNumber)caseBatteryLevel;
- (NSNumber)leftBatteryLevel;
- (NSNumber)rightBatteryLevel;
- (NSString)currentBluetoothListeningMode;
- (NSString)headTrackedSpatialAudioMode;
- (float)volume;
- (float)volumeForActivatedDeviceClusterMembersWithRoomID:(id)d;
- (id)_figEndpointPropertyValueForKey:(__CFString *)key;
- (id)borrowScreenForClient:(id)client reason:(id)reason;
- (id)currentScreenViewAreaForScreenID:(id)d;
- (id)requestTurnByTurnNavigationOwnership;
- (int64_t)HAPConformance;
- (int64_t)authenticationType;
- (int64_t)clusterType;
- (int64_t)configuredClusterSize;
- (int64_t)deviceSubType;
- (int64_t)deviceType;
- (int64_t)electronicTollCollection;
- (int64_t)navigationAidedDriving;
- (int64_t)transportType;
- (int64_t)voiceTriggerMode;
- (int64_t)volumeControlType;
- (unint64_t)hash;
- (void)_canMuteDidChangeForEndpointWithID:(__CFString *)d;
- (void)_canSetEndpointVolumeDidChangeForEndpointWithID:(__CFString *)d;
- (void)_carPlayTestNotification:(id)notification;
- (void)_endpointVolumeControlTypeDidChangeForEndpointWithID:(__CFString *)d;
- (void)_handleFigEndpointEvent:(__CFString *)event payload:(id)payload;
- (void)_iOSUIRequestedNotification:(id)notification;
- (void)_mutedDidChangeForEndpointWithID:(__CFString *)d;
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
- (void)setCurrentBluetoothListeningMode:(id)mode;
- (void)setDisplayCornerMasks:(id)masks;
- (void)setMediaRemoteData:(id)data completionHandler:(id)handler;
- (void)setSecondDisplayEnabled:(BOOL)enabled;
- (void)setSecondDisplayMode:(id)mode completionHandler:(id)handler;
- (void)setSiriForwardingEnabled:(BOOL)enabled;
- (void)setVolume:(float)volume;
- (void)suggestUIWithURLs:(id)ls completionHandler:(id)handler;
- (void)takeScreenForClient:(id)client reason:(id)reason;
@end

@implementation AVFigEndpointOutputDeviceImpl

- (AVFigEndpointOutputDeviceImpl)initWithFigEndpoint:(OpaqueFigEndpoint *)endpoint volumeController:(OpaqueFigVolumeControllerState *)controller routingContextFactory:(id)factory useRouteConfigUpdatedNotification:(BOOL)notification
{
  if (!endpoint)
  {
    selfCopy = self;
    v26 = [MEMORY[0x1E695DF30] exceptionWithName:*MEMORY[0x1E695D940] reason:AVMethodExceptionReasonWithObjectAndSelector(self userInfo:{a2, @"invalid parameter not satisfying: %s", v21, v22, v23, v24, v25, "figEndpoint != NULL"), 0}];
    objc_exception_throw(v26);
  }

  v27.receiver = self;
  v27.super_class = AVFigEndpointOutputDeviceImpl;
  v11 = [(AVFigEndpointOutputDeviceImpl *)&v27 init];
  if (v11)
  {
    v12 = [AVRoutingCMNotificationDispatcher notificationDispatcherForCMNotificationCenter:CMNotificationCenterGetDefaultLocalCenter()];
    v11->_figEndpoint = CFRetain(endpoint);
    if (controller)
    {
      v13 = CFRetain(controller);
    }

    else
    {
      v13 = 0;
    }

    v11->_volumeController = v13;
    v11->_routingContextFactory = factory;
    v11->_useRouteConfigUpdatedNotification = notification;
    v14 = [[AVRoutingWeakReference alloc] initWithReferencedObject:v11];
    v11->_weakObserver = v14;
    volumeController = v11->_volumeController;
    if (volumeController)
    {
      [v12 addListenerWithWeakReference:v14 callback:AVFigEndpointOutputDeviceImplCanSetEndpointVolumeDidChange name:*MEMORY[0x1E69AF5C0] object:volumeController flags:0];
      [v12 addListenerWithWeakReference:v11->_weakObserver callback:AVFigEndpointOutputDeviceImplEndpointVolumeDidChange name:*MEMORY[0x1E69AF5E8] object:v11->_volumeController flags:0];
      [v12 addListenerWithWeakReference:v11->_weakObserver callback:AVFigEndpointOutputDeviceImplEndpointVolumeControlTypeDidChange name:*MEMORY[0x1E69AF5E0] object:v11->_volumeController flags:0];
      [v12 addListenerWithWeakReference:v11->_weakObserver callback:AVFigEndpointOutputDeviceImplEndpointMutedDidChange name:*MEMORY[0x1E69AF5D8] object:v11->_volumeController flags:0];
      [v12 addListenerWithWeakReference:v11->_weakObserver callback:AVFigEndpointOutputDeviceImplEndpointCanMuteDidChange name:*MEMORY[0x1E69AF600] object:v11->_volumeController flags:0];
      [v12 addListenerWithWeakReference:v11->_weakObserver callback:AVFigEndpointOutputDeviceImplEndpointRoomVolumeDidChange name:*MEMORY[0x1E69AF618] object:v11->_volumeController flags:0];
    }

    if (v11->_figEndpoint)
    {
      CMNotificationCenterGetDefaultLocalCenter();
      weakObserver = v11->_weakObserver;
      figEndpoint = v11->_figEndpoint;
      FigNotificationCenterAddListeners();
    }
  }

  return v11;
}

- (void)dealloc
{
  if (self->_weakObserver)
  {
    v3 = [AVRoutingCMNotificationDispatcher notificationDispatcherForCMNotificationCenter:CMNotificationCenterGetDefaultLocalCenter()];
    if (self->_volumeController)
    {
      v4 = v3;
      [v3 removeListenerWithWeakReference:self->_weakObserver callback:AVFigEndpointOutputDeviceImplCanSetEndpointVolumeDidChange name:*MEMORY[0x1E69AF5C0] object:?];
      [v4 removeListenerWithWeakReference:self->_weakObserver callback:AVFigEndpointOutputDeviceImplEndpointVolumeDidChange name:*MEMORY[0x1E69AF5E8] object:self->_volumeController];
      [v4 removeListenerWithWeakReference:self->_weakObserver callback:AVFigEndpointOutputDeviceImplEndpointVolumeControlTypeDidChange name:*MEMORY[0x1E69AF5E0] object:self->_volumeController];
      [v4 removeListenerWithWeakReference:self->_weakObserver callback:AVFigEndpointOutputDeviceImplEndpointMutedDidChange name:*MEMORY[0x1E69AF5D8] object:self->_volumeController];
      [v4 removeListenerWithWeakReference:self->_weakObserver callback:AVFigEndpointOutputDeviceImplEndpointCanMuteDidChange name:*MEMORY[0x1E69AF600] object:self->_volumeController];
      [v4 removeListenerWithWeakReference:self->_weakObserver callback:AVFigEndpointOutputDeviceImplEndpointRoomVolumeDidChange name:*MEMORY[0x1E69AF618] object:self->_volumeController];
    }

    if (self->_figEndpoint)
    {
      CMNotificationCenterGetDefaultLocalCenter();
      weakObserver = self->_weakObserver;
      figEndpoint = self->_figEndpoint;
      FigNotificationCenterRemoveListeners();
    }
  }

  v7 = self->_figEndpoint;
  if (v7)
  {
    CFRelease(v7);
  }

  volumeController = self->_volumeController;
  if (volumeController)
  {
    CFRelease(volumeController);
  }

  v9.receiver = self;
  v9.super_class = AVFigEndpointOutputDeviceImpl;
  [(AVFigEndpointOutputDeviceImpl *)&v9 dealloc];
}

- (BOOL)isEqual:(id)equal
{
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    return 0;
  }

  [(AVFigEndpointOutputDeviceImpl *)self figEndpoint];
  [equal figEndpoint];
  return FigCFEqual() != 0;
}

- (unint64_t)hash
{
  v2 = [(AVFigEndpointOutputDeviceImpl *)self ID];

  return [(NSString *)v2 hash];
}

- (id)_figEndpointPropertyValueForKey:(__CFString *)key
{
  v10 = 0;
  [(AVFigEndpointOutputDeviceImpl *)self figEndpoint];
  CMBaseObject = FigEndpointGetCMBaseObject();
  VTable = CMBaseObjectGetVTable();
  v6 = *(*(VTable + 8) + 48);
  if (v6)
  {
    v7 = *(VTable + 8) + 48;
    v6(CMBaseObject, key, *MEMORY[0x1E695E480], &v10);
    v8 = v10;
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

- (int64_t)deviceType
{
  v2 = [(AVFigEndpointOutputDeviceImpl *)self _figEndpointPropertyValueForKey:*MEMORY[0x1E69622F8]];
  [+[AVExecutionEnvironment sharedExecutionEnvironment](AVExecutionEnvironment "sharedExecutionEnvironment")];
  if (!v2)
  {
    return 0;
  }

  if ([v2 isEqualToString:*MEMORY[0x1E69626B8]])
  {
    return 1;
  }

  if ([v2 isEqualToString:*MEMORY[0x1E69626C0]])
  {
    return 2;
  }

  return 0;
}

- (int64_t)deviceSubType
{
  v2 = [(AVFigEndpointOutputDeviceImpl *)self _figEndpointPropertyValueForKey:*MEMORY[0x1E6962278]];
  [+[AVExecutionEnvironment sharedExecutionEnvironment](AVExecutionEnvironment "sharedExecutionEnvironment")];

  return AVOutputDeviceSubTypeFromFigSubType(v2);
}

- (int64_t)clusterType
{
  [(AVFigEndpointOutputDeviceImpl *)self _figEndpointPropertyValueForKey:*MEMORY[0x1E6962048]];
  v2 = *MEMORY[0x1E6961758];
  if (FigCFEqual())
  {
    return 2;
  }

  v4 = *MEMORY[0x1E6961750];
  return FigCFEqual() != 0;
}

- (int64_t)configuredClusterSize
{
  v2 = [(AVFigEndpointOutputDeviceImpl *)self _figEndpointPropertyValueForKey:*MEMORY[0x1E6962040]];

  return [v2 integerValue];
}

- (BOOL)isClusterLeader
{
  v2 = [(AVFigEndpointOutputDeviceImpl *)self _figEndpointPropertyValueForKey:*MEMORY[0x1E6962128]];

  return [v2 BOOLValue];
}

- (BOOL)producesLowFidelityAudio
{
  v2 = [(AVFigEndpointOutputDeviceImpl *)self _figEndpointPropertyValueForKey:*MEMORY[0x1E6962160]];

  return [v2 BOOLValue];
}

- (BOOL)isAppleAccessory
{
  v3 = _os_feature_enabled_impl();
  if (v3)
  {
    v4 = [(AVFigEndpointOutputDeviceImpl *)self _figEndpointPropertyValueForKey:*MEMORY[0x1E6962138]];

    LOBYTE(v3) = [v4 BOOLValue];
  }

  return v3;
}

- (NSNumber)batteryLevel
{
  result = [(AVFigEndpointOutputDeviceImpl *)self _figEndpointPropertyValueForKey:*MEMORY[0x1E6961FE0]];
  if (result)
  {
    v3 = *MEMORY[0x1E69616E0];

    return [(NSNumber *)result objectForKey:v3];
  }

  return result;
}

- (NSNumber)caseBatteryLevel
{
  result = [(AVFigEndpointOutputDeviceImpl *)self _figEndpointPropertyValueForKey:*MEMORY[0x1E6961FE0]];
  if (result)
  {
    v3 = *MEMORY[0x1E69616C8];

    return [(NSNumber *)result objectForKey:v3];
  }

  return result;
}

- (NSNumber)leftBatteryLevel
{
  result = [(AVFigEndpointOutputDeviceImpl *)self _figEndpointPropertyValueForKey:*MEMORY[0x1E6961FE0]];
  if (result)
  {
    v3 = *MEMORY[0x1E69616D0];

    return [(NSNumber *)result objectForKey:v3];
  }

  return result;
}

- (NSNumber)rightBatteryLevel
{
  result = [(AVFigEndpointOutputDeviceImpl *)self _figEndpointPropertyValueForKey:*MEMORY[0x1E6961FE0]];
  if (result)
  {
    v3 = *MEMORY[0x1E69616D8];

    return [(NSNumber *)result objectForKey:v3];
  }

  return result;
}

- (BOOL)onlyAllowsConnectionsFromPeersInHomeGroup
{
  automaticallyAllowsConnectionsFromPeersInHomeGroup = [(AVFigEndpointOutputDeviceImpl *)self automaticallyAllowsConnectionsFromPeersInHomeGroup];
  if (automaticallyAllowsConnectionsFromPeersInHomeGroup)
  {
    [(AVFigEndpointOutputDeviceImpl *)self _figEndpointPropertyValueForKey:*MEMORY[0x1E69620D8]];
    LOBYTE(automaticallyAllowsConnectionsFromPeersInHomeGroup) = FigCFEqual() == 0;
  }

  return automaticallyAllowsConnectionsFromPeersInHomeGroup;
}

- (BOOL)canAccessRemoteAssets
{
  v2 = [(AVFigEndpointOutputDeviceImpl *)self _figEndpointPropertyValueForKey:*MEMORY[0x1E6961F70]];

  return [v2 BOOLValue];
}

- (BOOL)canAccessAppleMusic
{
  v2 = [(AVFigEndpointOutputDeviceImpl *)self _figEndpointPropertyValueForKey:*MEMORY[0x1E6962108]];

  return [v2 BOOLValue];
}

- (BOOL)canAccessiCloudMusicLibrary
{
  v2 = [(AVFigEndpointOutputDeviceImpl *)self _figEndpointPropertyValueForKey:*MEMORY[0x1E6962020]];

  return [v2 BOOLValue];
}

- (BOOL)supportsBufferedAirPlay
{
  v2 = [(AVFigEndpointOutputDeviceImpl *)self _figEndpointPropertyValueForKey:*MEMORY[0x1E6962298]];

  return [v2 BOOLValue];
}

- (BOOL)supportsBluetoothSharing
{
  v2 = [(AVFigEndpointOutputDeviceImpl *)self _figEndpointPropertyValueForKey:*MEMORY[0x1E6962110]];

  return [v2 BOOLValue];
}

- (BOOL)isCached
{
  v2 = [(AVFigEndpointOutputDeviceImpl *)self _figEndpointPropertyValueForKey:@"IsCached"];

  return [v2 BOOLValue];
}

- (int64_t)HAPConformance
{
  if ([-[AVFigEndpointOutputDeviceImpl _figEndpointPropertyValueForKey:](self _figEndpointPropertyValueForKey:{*MEMORY[0x1E6961F60]), "BOOLValue"}])
  {
    return 2;
  }

  else
  {
    return 0;
  }
}

- (BOOL)supportsHeadTrackedSpatialAudio
{
  v2 = [(AVFigEndpointOutputDeviceImpl *)self _figEndpointPropertyValueForKey:*MEMORY[0x1E69622B0]];

  return [v2 BOOLValue];
}

- (BOOL)allowsHeadTrackedSpatialAudio
{
  v2 = [(AVFigEndpointOutputDeviceImpl *)self _figEndpointPropertyValueForKey:*MEMORY[0x1E6961FA8]];

  return [v2 BOOLValue];
}

- (BOOL)setAllowsHeadTrackedSpatialAudio:(BOOL)audio error:(id *)error
{
  v5 = AVOutputDeviceSetAllowsHeadTrackedSpatialAudioOnEndpoint([(AVFigEndpointOutputDeviceImpl *)self figEndpoint], audio);
  v6 = v5;
  if (error && v5)
  {
    *error = AVLocalizedErrorWithUnderlyingOSStatus(v5, 0);
  }

  return v6 == 0;
}

- (NSString)headTrackedSpatialAudioMode
{
  v2 = [(AVFigEndpointOutputDeviceImpl *)self _figEndpointPropertyValueForKey:*MEMORY[0x1E69620E8]];

  return AVOutputDeviceHeadTrackedSpatialAudioModeFromFigMode(v2);
}

- (BOOL)setHeadTrackedSpatialAudioMode:(id)mode error:(id *)error
{
  v5 = AVOutputDeviceSetHeadTrackedSpatialAudioModeOnEndpoint([(AVFigEndpointOutputDeviceImpl *)self figEndpoint], mode);
  v6 = v5;
  if (error && v5)
  {
    *error = AVLocalizedErrorWithUnderlyingOSStatus(v5, 0);
  }

  return v6 == 0;
}

- (BOOL)supportsConversationDetection
{
  v3 = _os_feature_enabled_impl();
  if (v3)
  {
    v4 = [(AVFigEndpointOutputDeviceImpl *)self _figEndpointPropertyValueForKey:*MEMORY[0x1E6962290]];

    LOBYTE(v3) = [v4 BOOLValue];
  }

  return v3;
}

- (BOOL)isConversationDetectionEnabled
{
  v3 = _os_feature_enabled_impl();
  if (v3)
  {
    v4 = [(AVFigEndpointOutputDeviceImpl *)self _figEndpointPropertyValueForKey:*MEMORY[0x1E6962058]];

    LOBYTE(v3) = [v4 BOOLValue];
  }

  return v3;
}

- (BOOL)setConversationDetectionEnabled:(BOOL)enabled error:(id *)error
{
  enabledCopy = enabled;
  if (_os_feature_enabled_impl())
  {
    [(AVFigEndpointOutputDeviceImpl *)self figEndpoint];
    if (enabledCopy)
    {
      v7 = MEMORY[0x1E695E4D0];
    }

    else
    {
      v7 = MEMORY[0x1E695E4C0];
    }

    CMBaseObject = FigEndpointGetCMBaseObject();
    VTable = CMBaseObjectGetVTable();
    v10 = *(*(VTable + 8) + 56);
    if (v10)
    {
      v11 = *(VTable + 8) + 56;
      v12 = v10(CMBaseObject, *MEMORY[0x1E6962058], *v7);
      if (!error)
      {
        return v12 == 0;
      }
    }

    else
    {
      v12 = -12782;
      if (!error)
      {
        return v12 == 0;
      }
    }

    if (v12)
    {
      *error = AVLocalizedErrorWithUnderlyingOSStatus(v12, 0);
    }

    return v12 == 0;
  }

  if (!error)
  {
    return 0;
  }

  v13 = AVLocalizedErrorWithUnderlyingOSStatus(-11862, 0);
  result = 0;
  *error = v13;
  return result;
}

- (BOOL)isHeadTrackedSpatialAudioActive
{
  v2 = [(AVFigEndpointOutputDeviceImpl *)self _figEndpointPropertyValueForKey:*MEMORY[0x1E69620E0]];

  return [v2 BOOLValue];
}

- (NSArray)availableBluetoothListeningModes
{
  v2 = [-[AVFigEndpointOutputDeviceImpl _figEndpointPropertyValueForKey:](self _figEndpointPropertyValueForKey:{*MEMORY[0x1E6962288]), "unsignedIntegerValue"}];

  return AVOutputDeviceSupportedListeningModesForFigListeningModes(v2);
}

- (NSString)currentBluetoothListeningMode
{
  v2 = [-[AVFigEndpointOutputDeviceImpl _figEndpointPropertyValueForKey:](self _figEndpointPropertyValueForKey:{*MEMORY[0x1E69621A8]), "unsignedIntegerValue"}];

  return AVOutputDeviceAVFListeningModeForFigListeningMode(v2);
}

- (void)setCurrentBluetoothListeningMode:(id)mode
{
  v12 = *MEMORY[0x1E69E9840];
  valuePtr = AVOutputDeviceFigListeningModeForAVFListeningMode(mode);
  v4 = CFNumberCreate(*MEMORY[0x1E695E480], kCFNumberSInt32Type, &valuePtr);
  if (dword_1ED6F6B68)
  {
    os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
    fig_log_call_emit_and_clean_up_after_send_and_compose();
  }

  [(AVFigEndpointOutputDeviceImpl *)self figEndpoint:v9];
  CMBaseObject = FigEndpointGetCMBaseObject();
  v7 = *(*(CMBaseObjectGetVTable() + 8) + 56);
  if (v7)
  {
    v7(CMBaseObject, *MEMORY[0x1E69621A8], v4);
  }

  if (v4)
  {
    CFRelease(v4);
  }

  v8 = *MEMORY[0x1E69E9840];
}

- (BOOL)setCurrentBluetoothListeningMode:(id)mode error:(id *)error
{
  v16 = *MEMORY[0x1E69E9840];
  valuePtr = AVOutputDeviceFigListeningModeForAVFListeningMode(mode);
  v6 = CFNumberCreate(*MEMORY[0x1E695E480], kCFNumberSInt32Type, &valuePtr);
  if (dword_1ED6F6B68)
  {
    os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
    fig_log_call_emit_and_clean_up_after_send_and_compose();
  }

  [(AVFigEndpointOutputDeviceImpl *)self figEndpoint:v13];
  CMBaseObject = FigEndpointGetCMBaseObject();
  v9 = *(*(CMBaseObjectGetVTable() + 8) + 56);
  if (v9)
  {
    v10 = v9(CMBaseObject, *MEMORY[0x1E69621A8], v6);
    if (!v6)
    {
      goto LABEL_8;
    }

    goto LABEL_7;
  }

  v10 = -12782;
  if (v6)
  {
LABEL_7:
    CFRelease(v6);
  }

LABEL_8:
  if (error && v10)
  {
    *error = [MEMORY[0x1E696ABC0] errorWithDomain:*MEMORY[0x1E696A768] code:v10 userInfo:0];
  }

  result = v10 == 0;
  v12 = *MEMORY[0x1E69E9840];
  return result;
}

- (void)setSecondDisplayEnabled:(BOOL)enabled
{
  enabledCopy = enabled;
  figEndpoint = [(AVFigEndpointOutputDeviceImpl *)self figEndpoint];
  name = [(AVFigEndpointOutputDeviceImpl *)self name];

  AVOutputDeviceSetSecondDisplayEnabledOnEndpoint(figEndpoint, name, enabledCopy);
}

- (void)setSecondDisplayMode:(id)mode completionHandler:(id)handler
{
  figEndpoint = [(AVFigEndpointOutputDeviceImpl *)self figEndpoint];

  AVOutputDeviceSetSecondDisplayModeOnEndpoint(figEndpoint, mode, handler);
}

- (void)setMediaRemoteData:(id)data completionHandler:(id)handler
{
  figEndpoint = [(AVFigEndpointOutputDeviceImpl *)self figEndpoint];

  AVOutputDeviceSetMediaRemoteDataOnEndpoint(figEndpoint, data, handler);
}

- (float)volume
{
  v9 = 0.0;
  volumeController = self->_volumeController;
  v3 = 0.0;
  if (volumeController)
  {
    v4 = [(AVFigEndpointOutputDeviceImpl *)self ID];
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

- (void)_volumeDidChangeForEndpointWithID:(__CFString *)d
{
  if ([(__CFString *)d isEqual:[(AVFigEndpointOutputDeviceImpl *)self ID]])
  {
    implEventListener = [(AVFigEndpointOutputDeviceImpl *)self implEventListener];

    [(AVOutputDeviceImplSupport *)implEventListener outputDeviceImplDidChangeVolume:self];
  }
}

- (BOOL)canSetVolume
{
  v8 = 0;
  volumeController = self->_volumeController;
  if (!volumeController)
  {
    return 0;
  }

  v3 = [(AVFigEndpointOutputDeviceImpl *)self ID];
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

- (void)_handleFigEndpointEvent:(__CFString *)event payload:(id)payload
{
  v7 = *MEMORY[0x1E69619C0];
  if (FigCFEqual())
  {

    [(AVFigEndpointOutputDeviceImpl *)self _vehicleInformationDidChange:payload];
  }

  else
  {
    v8 = *MEMORY[0x1E69619C8];
    if (FigCFEqual())
    {
      if ([(AVFigEndpointOutputDeviceImpl *)self delegate])
      {
        [(AVFigEndpointOutputDeviceImpl *)self delegate];
        if (objc_opt_respondsToSelector())
        {
          delegate = [(AVFigEndpointOutputDeviceImpl *)self delegate];
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

        [(AVFigEndpointOutputDeviceImpl *)self _carPlayTestNotification:payload];
      }

      else if ([v13 isEqual:@"AVOutputDeviceiOSUIRequestedNotification"])
      {

        [(AVFigEndpointOutputDeviceImpl *)self _iOSUIRequestedNotification:payload];
      }

      else if ([v13 isEqual:@"AVOutputDeviceSiriRequestedNotification"])
      {

        [(AVFigEndpointOutputDeviceImpl *)self _siriRequestedNotification:payload];
      }

      else if ([v13 isEqual:@"AVOutputDeviceUnhandledRemoteEventNotification"])
      {

        [(AVFigEndpointOutputDeviceImpl *)self _unhandledRemoteCommandNotification:payload];
      }

      else if (v13)
      {
        implEventListener = [(AVFigEndpointOutputDeviceImpl *)self implEventListener];

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
  implEventListener = [(AVFigEndpointOutputDeviceImpl *)self implEventListener];

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
  implEventListener = [(AVFigEndpointOutputDeviceImpl *)self implEventListener];

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
  implEventListener = [(AVFigEndpointOutputDeviceImpl *)self implEventListener];

  [(AVOutputDeviceImplSupport *)implEventListener postNotification:@"AVOutputDeviceSiriRequestedNotification" withPayload:dictionary fromImpl:self];
}

- (void)_unhandledRemoteCommandNotification:(id)notification
{
  dictionary = [MEMORY[0x1E695DF90] dictionary];
  [dictionary setValue:objc_msgSend(notification forKey:{"objectForKey:", *MEMORY[0x1E69626E8]), @"AVOutputDeviceUnhandledRemoteEventCommandTypeKey"}];
  [dictionary setValue:objc_msgSend(notification forKey:{"objectForKey:", *MEMORY[0x1E69626E0]), @"AVOutputDeviceUnhandledRemoteEventCommandParametersKey"}];
  implEventListener = [(AVFigEndpointOutputDeviceImpl *)self implEventListener];

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
      [(AVOutputDeviceImplSupport *)[(AVFigEndpointOutputDeviceImpl *)self implEventListener] postNotification:@"AVOutputDeviceElectronicTollCollectionStateChangedNotification" fromImpl:self];
    }

    if ([v5 valueForKey:*MEMORY[0x1E6962700]])
    {
      implEventListener = [(AVFigEndpointOutputDeviceImpl *)self implEventListener];

      [(AVOutputDeviceImplSupport *)implEventListener postNotification:@"AVOutputDeviceNavigationAidedDrivingStateChangedNotification" fromImpl:self];
    }
  }
}

- (void)_volumeForEndpointDidChange:(__CFString *)change forRoomID:(__CFString *)d
{
  v10 = *MEMORY[0x1E69E9840];
  if ([(__CFString *)change isEqual:[(AVFigEndpointOutputDeviceImpl *)self ID]])
  {
    if (dword_1ED6F6B68)
    {
      os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
      os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
      fig_log_call_emit_and_clean_up_after_send_and_compose();
    }

    [(AVOutputDeviceImplSupport *)[(AVFigEndpointOutputDeviceImpl *)self implEventListener:v8] activatedDeviceClusterMembersDidChangeVolume:self forRoomID:d];
  }

  v7 = *MEMORY[0x1E69E9840];
}

- (void)_mutedDidChangeForEndpointWithID:(__CFString *)d
{
  v8 = *MEMORY[0x1E69E9840];
  if ([(__CFString *)d isEqual:[(AVFigEndpointOutputDeviceImpl *)self ID]])
  {
    if (dword_1ED6F6B68)
    {
      os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
      os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
      fig_log_call_emit_and_clean_up_after_send_and_compose();
    }

    [(AVOutputDeviceImplSupport *)[(AVFigEndpointOutputDeviceImpl *)self implEventListener:v6] outputDeviceImplDidChangeMute:self];
  }

  v5 = *MEMORY[0x1E69E9840];
}

- (void)_canMuteDidChangeForEndpointWithID:(__CFString *)d
{
  v8 = *MEMORY[0x1E69E9840];
  if ([(__CFString *)d isEqual:[(AVFigEndpointOutputDeviceImpl *)self ID]])
  {
    if (dword_1ED6F6B68)
    {
      os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
      os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
      fig_log_call_emit_and_clean_up_after_send_and_compose();
    }

    [(AVOutputDeviceImplSupport *)[(AVFigEndpointOutputDeviceImpl *)self implEventListener:v6] outputDeviceImplCanMuteDidChange:self];
  }

  v5 = *MEMORY[0x1E69E9840];
}

- (void)_endpointVolumeControlTypeDidChangeForEndpointWithID:(__CFString *)d
{
  if ([(__CFString *)d isEqualToString:[(AVFigEndpointOutputDeviceImpl *)self ID]])
  {
    implEventListener = [(AVFigEndpointOutputDeviceImpl *)self implEventListener];

    [(AVOutputDeviceImplSupport *)implEventListener outputDeviceImplDidChangeVolumeControlType:self];
  }
}

- (int64_t)volumeControlType
{
  volumeController = self->_volumeController;
  if (volumeController && (v8 = 0, v3 = [(AVFigEndpointOutputDeviceImpl *)self ID], VTable = CMBaseObjectGetVTable(), (v5 = *(*(VTable + 16) + 88)) != 0) && (v6 = *(VTable + 16) + 88, v5(volumeController, v3, &v8), (v8 - 1) <= 2))
  {
    return qword_1AB5E0728[v8 - 1];
  }

  else
  {
    return 0;
  }
}

- (void)_canSetEndpointVolumeDidChangeForEndpointWithID:(__CFString *)d
{
  if ([(__CFString *)d isEqual:[(AVFigEndpointOutputDeviceImpl *)self ID]])
  {
    [(AVOutputDeviceImplSupport *)[(AVFigEndpointOutputDeviceImpl *)self implEventListener] outputDeviceImplDidChangeCanChangeVolume:self];
    implEventListener = [(AVFigEndpointOutputDeviceImpl *)self implEventListener];

    [(AVOutputDeviceImplSupport *)implEventListener outputDeviceImplDidChangeVolumeControlType:self];
  }
}

- (void)setVolume:(float)volume
{
  v10 = *MEMORY[0x1E69E9840];
  if (self->_volumeController)
  {
    v5 = [(AVFigEndpointOutputDeviceImpl *)self ID];
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
    v5 = [(AVFigEndpointOutputDeviceImpl *)self ID];

    AVOutputDeviceImplChangeVolumeByCount(volumeController, v5, count);
  }
}

- (void)decreaseVolumeByCount:(int64_t)count
{
  volumeController = self->_volumeController;
  if (volumeController)
  {
    v5 = [(AVFigEndpointOutputDeviceImpl *)self ID];

    AVOutputDeviceImplChangeVolumeByCount(volumeController, v5, -count);
  }
}

- (void)setActivatedDeviceClusterMembersVolume:(float)volume withRoomID:(id)d
{
  volumeController = self->_volumeController;
  if (volumeController)
  {
    v7 = [(AVFigEndpointOutputDeviceImpl *)self ID];

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
    v6 = [(AVFigEndpointOutputDeviceImpl *)self ID];
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

  v3 = [(AVFigEndpointOutputDeviceImpl *)self ID];

  return AVOutputDeviceImplCanMuteForEndpointID(volumeController, v3);
}

- (BOOL)isMuted
{
  volumeController = self->_volumeController;
  if (!volumeController)
  {
    return 0;
  }

  v3 = [(AVFigEndpointOutputDeviceImpl *)self ID];

  return AVOutputDeviceImplIsMutedForEndpointID(volumeController, v3);
}

- (BOOL)canBeGrouped
{
  v2 = [(AVFigEndpointOutputDeviceImpl *)self _figEndpointPropertyValueForKey:*MEMORY[0x1E6962148]];

  return [v2 BOOLValue];
}

- (BOOL)canBeGroupLeader
{
  v2 = [(AVFigEndpointOutputDeviceImpl *)self _figEndpointPropertyValueForKey:*MEMORY[0x1E69621D0]];

  return [v2 BOOLValue];
}

- (BOOL)isGroupLeader
{
  v2 = [(AVFigEndpointOutputDeviceImpl *)self _figEndpointPropertyValueForKey:*MEMORY[0x1E6962140]];

  return [v2 BOOLValue];
}

- (BOOL)groupContainsGroupLeader
{
  v2 = [(AVFigEndpointOutputDeviceImpl *)self _figEndpointPropertyValueForKey:*MEMORY[0x1E69620C0]];

  return [v2 BOOLValue];
}

- (BOOL)isLogicalDeviceLeader
{
  v2 = [(AVFigEndpointOutputDeviceImpl *)self _figEndpointPropertyValueForKey:*MEMORY[0x1E69622E0]];

  return [v2 BOOLValue];
}

- (BOOL)canRelayCommunicationChannel
{
  v2 = [(AVFigEndpointOutputDeviceImpl *)self _figEndpointPropertyValueForKey:*MEMORY[0x1E69622C0]];

  return [v2 BOOLValue];
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
    v14 = AVMakeSelectEndpointOperation(cf, self->_figEndpoint, Mutable, self->_useRouteConfigUpdatedNotification);
    v15 = [AVRoutingContextSendConfigureDeviceCommandOperation alloc];
    v16 = [(AVRoutingContextSendConfigureDeviceCommandOperation *)v15 initWithRoutingContext:cf configuratorBlock:block];
    -[AVRoutingContextSendConfigureDeviceCommandOperation setName:](v16, "setName:", [MEMORY[0x1E696AEC0] stringWithFormat:@"Set configuration on device represented by (impl=%@)", self]);
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
    v23[2] = __79__AVFigEndpointOutputDeviceImpl_configureUsingBlock_options_completionHandler___block_invoke;
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

void __79__AVFigEndpointOutputDeviceImpl_configureUsingBlock_options_completionHandler___block_invoke(uint64_t a1)
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
    v6 = *(*(CMBaseObjectGetVTable() + 16) + 8);
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
  v2 = [(AVFigEndpointOutputDeviceImpl *)self _figEndpointPropertyValueForKey:*MEMORY[0x1E6962208]];

  return AVOutputDeviceAVOutputDeviceIconsFromOEMIcons(v2);
}

- (BOOL)OEMIconVisible
{
  v2 = [(AVFigEndpointOutputDeviceImpl *)self _figEndpointPropertyValueForKey:*MEMORY[0x1E6962200]];

  return [v2 BOOLValue];
}

- (NSArray)outputDeviceHIDs
{
  v3 = [(AVFigEndpointOutputDeviceImpl *)self _figEndpointPropertyValueForKey:*MEMORY[0x1E69620D0]];
  figEndpoint = [(AVFigEndpointOutputDeviceImpl *)self figEndpoint];

  return AVOutputDeviceMakeAVOutputDeviceHIDsFromFigHIDs(v3, figEndpoint);
}

- (BOOL)nightMode
{
  v2 = [(AVFigEndpointOutputDeviceImpl *)self _figEndpointPropertyValueForKey:*MEMORY[0x1E69621F0]];

  return [v2 BOOLValue];
}

- (BOOL)rightHandDrive
{
  v2 = [(AVFigEndpointOutputDeviceImpl *)self _figEndpointPropertyValueForKey:*MEMORY[0x1E6962230]];

  return [v2 BOOLValue];
}

- (NSArray)limitedUIElements
{
  v2 = [(AVFigEndpointOutputDeviceImpl *)self _figEndpointPropertyValueForKey:*MEMORY[0x1E69621A0]];
  if (v2)
  {
    v3 = v2;

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
  v2 = [(AVFigEndpointOutputDeviceImpl *)self _figEndpointPropertyValueForKey:*MEMORY[0x1E6962198]];

  return [v2 BOOLValue];
}

- (BOOL)carOwnsScreen
{
  v2 = [(AVFigEndpointOutputDeviceImpl *)self _figEndpointPropertyValueForKey:*MEMORY[0x1E6962010]];

  return [v2 BOOLValue];
}

- (BOOL)ownsTurnByTurnNavigation
{
  v2 = [(AVFigEndpointOutputDeviceImpl *)self _figEndpointPropertyValueForKey:*MEMORY[0x1E6961FF8]];

  return [v2 BOOLValue];
}

- (BOOL)recognizingSpeech
{
  v2 = [(AVFigEndpointOutputDeviceImpl *)self _figEndpointPropertyValueForKey:*MEMORY[0x1E6962000]];

  return [v2 BOOLValue];
}

- (NSArray)supportedFeatures
{
  result = [(AVFigEndpointOutputDeviceImpl *)self _figEndpointPropertyValueForKey:*MEMORY[0x1E6962070]];
  if (!result)
  {
    v3 = MEMORY[0x1E695DEC8];

    return [v3 array];
  }

  return result;
}

- (int64_t)electronicTollCollection
{
  v2 = [(AVFigEndpointOutputDeviceImpl *)self _figEndpointPropertyValueForKey:*MEMORY[0x1E6962328]];

  return AVOutputDeviceElectronicTollCollectionStateFromVehicleInfo(v2);
}

- (int64_t)navigationAidedDriving
{
  v2 = [(AVFigEndpointOutputDeviceImpl *)self _figEndpointPropertyValueForKey:*MEMORY[0x1E6962328]];

  return AVOutputDeviceNavigationAidedDrivingStateFromVehicleInfo(v2);
}

- (int64_t)transportType
{
  [(AVFigEndpointOutputDeviceImpl *)self _figEndpointPropertyValueForKey:*MEMORY[0x1E69622F0]];

  return AVOutputDeviceTransportTypeFromFigTransportType();
}

- (void)requestViewArea:(int64_t)area forScreenID:(id)d
{
  figEndpoint = [(AVFigEndpointOutputDeviceImpl *)self figEndpoint];

  AVOutputDeviceRequestViewAreaForFigEndpoint(figEndpoint, d, area);
}

- (void)requestCarUIForURL:(id)l withUUID:(id)d
{
  figEndpoint = [(AVFigEndpointOutputDeviceImpl *)self figEndpoint];

  AVOutputDeviceRequestCarUIForEndpoint(figEndpoint, d, l);
}

- (id)requestTurnByTurnNavigationOwnership
{
  v2 = [[AVOutputDeviceTurnByTurnToken alloc] initWithEndpoint:[(AVFigEndpointOutputDeviceImpl *)self figEndpoint]];

  return v2;
}

- (id)borrowScreenForClient:(id)client reason:(id)reason
{
  v4 = [[AVOutputDeviceScreenBorrowToken alloc] initWithEndpoint:[(AVFigEndpointOutputDeviceImpl *)self figEndpoint] client:client reason:reason];

  return v4;
}

- (void)takeScreenForClient:(id)client reason:(id)reason
{
  figEndpoint = [(AVFigEndpointOutputDeviceImpl *)self figEndpoint];

  AVOutputDeviceTakeScreenForClient(figEndpoint, client, reason);
}

- (BOOL)siriForwardingEnabled
{
  v2 = [(AVFigEndpointOutputDeviceImpl *)self _figEndpointPropertyValueForKey:*MEMORY[0x1E6961FB0]];

  return [v2 BOOLValue];
}

- (void)setSiriForwardingEnabled:(BOOL)enabled
{
  enabledCopy = enabled;
  figEndpoint = [(AVFigEndpointOutputDeviceImpl *)self figEndpoint];

  AVOutputDeviceSetAlternateSiriOnEndpoint(figEndpoint, enabledCopy);
}

- (BOOL)carOwnsMainAudio
{
  v2 = [(AVFigEndpointOutputDeviceImpl *)self _figEndpointPropertyValueForKey:*MEMORY[0x1E6962008]];

  return [v2 BOOLValue];
}

- (NSDictionary)displayCornerMasks
{
  [(AVFigEndpointOutputDeviceImpl *)self figEndpoint];

  return AVOutputDeviceGetDisplayCornerMasksFromEndpoint();
}

- (void)setDisplayCornerMasks:(id)masks
{
  figEndpoint = [(AVFigEndpointOutputDeviceImpl *)self figEndpoint];

  AVOutputDeviceSetDisplayCornerMasksEndpoint(figEndpoint, masks);
}

- (int64_t)voiceTriggerMode
{
  result = [(AVFigEndpointOutputDeviceImpl *)self _figEndpointPropertyValueForKey:*MEMORY[0x1E6962330]];
  if (result)
  {

    return [result unsignedIntegerValue];
  }

  return result;
}

- (int64_t)authenticationType
{
  [(AVFigEndpointOutputDeviceImpl *)self _figEndpointPropertyValueForKey:*MEMORY[0x1E6961FC8]];

  return AVOutputDeviceAuthenticationTypeFromFigAuthenticationType();
}

- (id)currentScreenViewAreaForScreenID:(id)d
{
  figEndpoint = [(AVFigEndpointOutputDeviceImpl *)self figEndpoint];

  return AVOutputDeviceGetCurrentScreenViewAreaFromEndpoint(figEndpoint, d);
}

- (BOOL)isActivated
{
  v2 = [(AVFigEndpointOutputDeviceImpl *)self _figEndpointPropertyValueForKey:*MEMORY[0x1E6962100]];

  return [v2 BOOLValue];
}

- (NSArray)screens
{
  v2 = [(AVFigEndpointOutputDeviceImpl *)self _figEndpointPropertyValueForKey:*MEMORY[0x1E6962240]];

  return AVOutputDeviceAVOutputDeviceScreenInfoFromFigScreens(v2);
}

- (void)suggestUIWithURLs:(id)ls completionHandler:(id)handler
{
  figEndpoint = [(AVFigEndpointOutputDeviceImpl *)self figEndpoint];

  AVOutputDeviceSuggestUIWithURLSAndCompletionHandler(figEndpoint, ls, handler);
}

- (void)performHapticFeedbackForUUID:(id)d withHapticType:(id)type completionHandler:(id)handler
{
  figEndpoint = [(AVFigEndpointOutputDeviceImpl *)self figEndpoint];

  AVOutputDevicePerformHapticFeedback(figEndpoint, d, type, handler);
}

- (NSArray)clusteredDeviceDescriptions
{
  v2 = [(AVFigEndpointOutputDeviceImpl *)self _figEndpointPropertyValueForKey:*MEMORY[0x1E6962028]];

  return AVOutputDeviceDescriptionsFromFigDescriptions(v2);
}

- (BOOL)automaticallyAllowsConnectionsFromPeersInHomeGroup
{
  v2 = [(AVFigEndpointOutputDeviceImpl *)self _figEndpointPropertyValueForKey:*MEMORY[0x1E6962150]];
  if (v2)
  {
    LOBYTE(v2) = CFBooleanGetValue(v2) != 0;
  }

  return v2;
}

@end