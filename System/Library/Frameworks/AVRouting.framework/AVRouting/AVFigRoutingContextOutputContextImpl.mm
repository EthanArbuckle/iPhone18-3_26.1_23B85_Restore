@interface AVFigRoutingContextOutputContextImpl
+ (BOOL)outputContextExistsWithRemoteOutputDevice;
+ (OpaqueFigRoutingContext)copySystemVideoRoutingContext;
+ (id)addSharedAudioOutputContextImpl;
+ (id)allSharedAudioOutputContextImpls;
+ (id)auxiliaryOutputContext;
+ (id)defaultSharedOutputContextImpl;
+ (id)iTunesAudioContext;
+ (id)outputContextImplForControllingOutputDeviceGroupWithID:(id)d options:(id)options;
+ (id)outputContextImplForID:(id)d type:(id)type;
+ (id)platformDependentScreenOrVideoContext;
+ (id)sharedAudioPresentationOutputContext;
+ (id)sharedSystemAudioContext;
+ (id)sharedSystemRemoteDisplayContext;
+ (id)sharedSystemRemotePoolContext;
+ (id)sharedSystemScreenContext;
+ (void)resetOutputDeviceForAllOutputContexts;
- (AVFigRoutingContextOutputContextImpl)init;
- (AVFigRoutingContextOutputContextImpl)initWithFigRoutingContext:(OpaqueFigRoutingContext *)context routingContextReplacementBlock:(id)block;
- (AVFigRoutingContextOutputContextImpl)initWithFigRoutingContext:(OpaqueFigRoutingContext *)context routingContextReplacementBlock:(id)block outputDeviceTranslator:(id)translator volumeController:(OpaqueFigVolumeControllerState *)controller communicationChannelManagerCreator:(id)creator;
- (AVFigRoutingContextOutputContextImpl)initWithFigRoutingContextCreator:(id)creator;
- (AVFigRoutingContextOutputContextImpl)initWithRoutingContextUUID:(id)d type:(id)type;
- (AVOutputDevice)predictedOutputDevice;
- (BOOL)canMute;
- (BOOL)canSetVolume;
- (BOOL)isEqual:(id)equal;
- (BOOL)isMuted;
- (BOOL)providesControlForAllVolumeFeatures;
- (BOOL)supportsMultipleBluetoothOutputDevices;
- (BOOL)supportsMultipleOutputDevices;
- (NSString)ID;
- (NSString)associatedAudioDeviceID;
- (NSString)outputContextType;
- (__CFDictionary)_createSelectRouteOptionsForSetOutputDeviceOptions:(id)options;
- (float)volume;
- (id)routingContextUUID;
- (int64_t)volumeControlType;
- (unint64_t)hash;
- (void)_canMuteDidChangeForRoutingContextWithID:(__CFString *)d;
- (void)_canSetMasterVolumeDidChangeForRoutingContextWithID:(__CFString *)d;
- (void)_canUseForRoutingContextDidChangeForRoutingContextWIthID:(__CFString *)d;
- (void)_currentRouteChanged;
- (void)_groupConfigurationChanged;
- (void)_masterVolumeControlTypeDidChangeForRoutingContextWithID:(__CFString *)d;
- (void)_masterVolumeDidChangeForRoutingContextWithID:(__CFString *)d;
- (void)_muteDidChangeForRoutingContextWithID:(__CFString *)d;
- (void)_predictedSelectedRouteDescriptorChanged;
- (void)_remoteControlChannelAvailabilityChanged;
- (void)_routeChangeEndedWithID:(id)d reason:(__CFString *)reason;
- (void)_routeChangeStartedWithID:(id)d;
- (void)_routeConfigUpdateEndedWithID:(__CFString *)d reason:(__CFString *)reason;
- (void)_routeConfigUpdateStartedWithID:(__CFString *)d;
- (void)_routeConfigUpdatedWithID:(__CFString *)d reason:(__CFString *)reason initiator:(__CFString *)initiator endedError:(__CFString *)error deviceID:(__CFString *)iD previousDeviceIDs:(__CFArray *)ds;
- (void)_sendCommand:(__CFString *)command completionHandler:(id)handler;
- (void)_serverConnectionDied;
- (void)_systemPickerVideoRouteChanged;
- (void)addOutputDevice:(id)device options:(id)options completionHandler:(id)handler;
- (void)communicationChannelManager:(id)manager didCloseCommunicationChannel:(id)channel;
- (void)communicationChannelManager:(id)manager didReceiveData:(id)data fromCommunicationChannel:(id)channel;
- (void)dealloc;
- (void)decreaseVolumeByCount:(int64_t)count;
- (void)increaseVolumeByCount:(int64_t)count;
- (void)removeOutputDevice:(id)device options:(id)options completionHandler:(id)handler;
- (void)resetPredictedOutputDevice;
- (void)setOutputDevice:(id)device options:(id)options completionHandler:(id)handler;
- (void)setOutputDevices:(id)devices options:(id)options completionHandler:(id)handler;
- (void)setVolume:(float)volume;
@end

@implementation AVFigRoutingContextOutputContextImpl

+ (id)sharedAudioPresentationOutputContext
{
  routingContextFactory = [self routingContextFactory];
  v3 = [AVFigRoutingContextOutputContextImpl alloc];
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __76__AVFigRoutingContextOutputContextImpl_sharedAudioPresentationOutputContext__block_invoke;
  v5[3] = &unk_1E794E868;
  v5[4] = routingContextFactory;
  return [(AVFigRoutingContextOutputContextImpl *)v3 initWithFigRoutingContextCreator:v5];
}

uint64_t __76__AVFigRoutingContextOutputContextImpl_sharedAudioPresentationOutputContext__block_invoke(uint64_t a1)
{
  v2 = 0;
  [*(a1 + 32) copySystemMusicContextWithAllocator:*MEMORY[0x1E695E480] options:0 context:&v2];
  return v2;
}

+ (id)sharedSystemAudioContext
{
  routingContextFactory = [self routingContextFactory];
  v3 = [AVFigRoutingContextOutputContextImpl alloc];
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __64__AVFigRoutingContextOutputContextImpl_sharedSystemAudioContext__block_invoke;
  v5[3] = &unk_1E794E868;
  v5[4] = routingContextFactory;
  return [(AVFigRoutingContextOutputContextImpl *)v3 initWithFigRoutingContextCreator:v5];
}

uint64_t __64__AVFigRoutingContextOutputContextImpl_sharedSystemAudioContext__block_invoke(uint64_t a1)
{
  v2 = 0;
  [*(a1 + 32) copySystemAudioContextWithAllocator:*MEMORY[0x1E695E480] options:0 context:&v2];
  return v2;
}

- (id)routingContextUUID
{
  cf[20] = *MEMORY[0x1E69E9840];
  cf[0] = 0;
  routingContext = self->_routingContext;
  v3 = *(*(CMBaseObjectGetVTable() + 8) + 48);
  if (v3)
  {
    if (v3(routingContext, *MEMORY[0x1E69AF4E8], *MEMORY[0x1E695E480], cf))
    {
      v5 = 0;
    }

    else
    {
      v4 = objc_alloc(MEMORY[0x1E696AFB0]);
      v5 = [v4 initWithUUIDString:cf[0]];
    }
  }

  else
  {
    v5 = 0;
  }

  v6 = cf[0];
  if (cf[0] || (os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type(), os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT), fig_log_call_emit_and_clean_up_after_send_and_compose(), (v6 = cf[0]) != 0))
  {
    CFRelease(v6);
  }

  result = v5;
  v9 = *MEMORY[0x1E69E9840];
  return result;
}

- (BOOL)providesControlForAllVolumeFeatures
{
  v9 = 0;
  volumeController = self->_volumeController;
  if (!volumeController)
  {
    return 0;
  }

  routingContext = self->_routingContext;
  v4 = self->_volumeController;
  VTable = CMBaseObjectGetVTable();
  v6 = *(*(VTable + 16) + 8);
  if (!v6)
  {
    return 0;
  }

  v7 = *(VTable + 16) + 8;
  v6(volumeController, routingContext, &v9);
  return v9 != 0;
}

- (BOOL)canSetVolume
{
  v9 = 0;
  volumeController = self->_volumeController;
  if (!volumeController)
  {
    return 0;
  }

  routingContext = self->_routingContext;
  v4 = self->_volumeController;
  VTable = CMBaseObjectGetVTable();
  v6 = *(*(VTable + 16) + 40);
  if (!v6)
  {
    return 0;
  }

  v7 = *(VTable + 16) + 40;
  v6(volumeController, routingContext, &v9);
  return v9 != 0;
}

- (int64_t)volumeControlType
{
  volumeController = self->_volumeController;
  if (volumeController && (v8 = 0, routingContext = self->_routingContext, VTable = CMBaseObjectGetVTable(), (v5 = *(*(VTable + 16) + 48)) != 0) && (v6 = *(VTable + 16) + 48, v5(volumeController, routingContext, &v8), (v8 - 1) <= 2))
  {
    return qword_1AB5E0748[v8 - 1];
  }

  else
  {
    return 0;
  }
}

- (NSString)ID
{
  routingContextUUID = [(AVFigRoutingContextOutputContextImpl *)self routingContextUUID];

  return [routingContextUUID UUIDString];
}

- (NSString)outputContextType
{
  v3 = OUTLINED_FUNCTION_4(self);
  v4 = *(*(v3 + 8) + 48);
  if (v4 && (v5 = *(v3 + 8) + 48, !v4(v2, *MEMORY[0x1E69AF4E0], *MEMORY[0x1E695E480], &number) && (valuePtr = 0, CFNumberGetValue(number, kCFNumberIntType, &valuePtr))))
  {
    v6 = 0;
    switch(valuePtr)
    {
      case 1:
        v7 = AVOutputContextTypeSharedSystemAudio;
        goto LABEL_16;
      case 2:
        v7 = AVOutputContextTypeSharedSystemScreen;
        goto LABEL_16;
      case 3:
        v7 = AVOutputContextTypeSharedAudioPresentation;
        goto LABEL_16;
      case 4:
        v7 = AVOutputContextTypeAudio;
        goto LABEL_16;
      case 5:
        v7 = AVOutputContextTypeVideo;
        goto LABEL_16;
      case 6:
        v7 = AVOutputContextTypeScreen;
        goto LABEL_16;
      case 8:
        v7 = AVOutputContextTypeGroupControl;
        goto LABEL_16;
      case 9:
        v7 = AVOutputContextTypeSharedSystemRemotePool;
        goto LABEL_16;
      case 14:
        v7 = AVOutputContextTypeSystemRemoteDisplay;
LABEL_16:
        v6 = *v7;
        break;
      default:
        break;
    }
  }

  else
  {
    v6 = 0;
  }

  if (number)
  {
    CFRelease(number);
  }

  return v6;
}

- (AVOutputDevice)predictedOutputDevice
{
  DefaultDeviceTranslator = AVOutputContextGetDefaultDeviceTranslator(self->_usesRouteConfigUpdatedNotification);
  routingContext = self->_routingContext;

  return [DefaultDeviceTranslator predictedOutputDeviceFromRoutingContext:routingContext];
}

- (void)dealloc
{
  if (self->_routingContext)
  {
    v3 = [AVRoutingCMNotificationDispatcher notificationDispatcherForCMNotificationCenter:CMNotificationCenterGetDefaultLocalCenter()];
    [v3 removeListenerWithWeakReference:self->_weakObserver callback:AVFigRoutingContextSystemPickerVideoRouteChanged name:*MEMORY[0x1E69AF4C0] object:self->_routingContext];
    weakObserver = self->_weakObserver;
    routingContext = self->_routingContext;
    if (self->_usesRouteConfigUpdatedNotification)
    {
      v6 = *MEMORY[0x1E69AF4A8];
      v7 = AVFigRoutingContextRouteConfigUpdated;
    }

    else
    {
      [v3 removeListenerWithWeakReference:weakObserver callback:AVFigRoutingContextCurrentRouteChanged_0 name:*MEMORY[0x1E69AF478] object:routingContext];
      [v3 removeListenerWithWeakReference:self->_weakObserver callback:AVFigRoutingContextRouteChangeStarted_0 name:*MEMORY[0x1E69AF4A0] object:self->_routingContext];
      [v3 removeListenerWithWeakReference:self->_weakObserver callback:AVFigRoutingContextRouteChangeEnded_0 name:*MEMORY[0x1E69AF498] object:self->_routingContext];
      weakObserver = self->_weakObserver;
      v6 = *MEMORY[0x1E69AF470];
      routingContext = self->_routingContext;
      v7 = AVFigRoutingContextGroupConfigurationChanged;
    }

    [v3 removeListenerWithWeakReference:weakObserver callback:v7 name:v6 object:routingContext];
    [v3 removeListenerWithWeakReference:self->_weakObserver callback:AVFigRoutingContextServerConnectionDied_0 name:*MEMORY[0x1E69AF4B8] object:self->_routingContext];
    [v3 removeListenerWithWeakReference:self->_weakObserver callback:AVFigRoutingContextRemoteControlChannelAvailabilityChanged name:*MEMORY[0x1E69AF490] object:self->_routingContext];
    [v3 removeListenerWithWeakReference:self->_weakObserver callback:AVFigRoutingContextPredictedSelectedRouteDescriptorChanged name:*MEMORY[0x1E69AF488] object:self->_routingContext];
    if (self->_volumeController)
    {
      [v3 removeListenerWithWeakReference:self->_weakObserver callback:AVFigVolumeControllerCanUseForRoutingContextDidChange name:*MEMORY[0x1E69AF5D0] object:?];
      [v3 removeListenerWithWeakReference:self->_weakObserver callback:AVFigVolumeControllerCanSetMasterVolumeDidChange name:*MEMORY[0x1E69AF5C8] object:self->_volumeController];
      [v3 removeListenerWithWeakReference:self->_weakObserver callback:AVFigVolumeControllerMasterVolumeDidChange name:*MEMORY[0x1E69AF5F8] object:self->_volumeController];
      [v3 removeListenerWithWeakReference:self->_weakObserver callback:AVFigVolumeControllerMasterVolumeControlTypeDidChange name:*MEMORY[0x1E69AF5F0] object:self->_volumeController];
      [v3 removeListenerWithWeakReference:self->_weakObserver callback:AVFigVolumeControllerCanMuteDidChange name:*MEMORY[0x1E69AF608] object:self->_volumeController];
      [v3 removeListenerWithWeakReference:self->_weakObserver callback:AVFigVolumeControllerMuteDidChange name:*MEMORY[0x1E69AF610] object:self->_volumeController];
    }
  }

  volumeController = self->_volumeController;
  if (volumeController)
  {
    CFRelease(volumeController);
  }

  v9 = self->_routingContext;
  if (v9)
  {
    CFRelease(v9);
  }

  ivarAccessQueue = self->_ivarAccessQueue;
  if (ivarAccessQueue)
  {
    dispatch_release(ivarAccessQueue);
  }

  v11.receiver = self;
  v11.super_class = AVFigRoutingContextOutputContextImpl;
  [(AVFigRoutingContextOutputContextImpl *)&v11 dealloc];
}

- (BOOL)supportsMultipleOutputDevices
{
  v3 = *(*(OUTLINED_FUNCTION_4(self) + 8) + 48);
  if (!v3)
  {
    return 0;
  }

  v4 = v3(v2, *MEMORY[0x1E69AF500], *MEMORY[0x1E695E480], &BOOLean);
  v5 = BOOLean;
  if (v4)
  {
    v6 = 0;
    if (!BOOLean)
    {
      return v6;
    }

    goto LABEL_5;
  }

  if (!BOOLean)
  {
    return 0;
  }

  v6 = CFBooleanGetValue(BOOLean) != 0;
  v5 = BOOLean;
  if (BOOLean)
  {
LABEL_5:
    CFRelease(v5);
  }

  return v6;
}

+ (id)sharedSystemRemoteDisplayContext
{
  routingContextFactory = [self routingContextFactory];
  if ((objc_opt_respondsToSelector() & 1) == 0)
  {
    return 0;
  }

  v3 = [AVFigRoutingContextOutputContextImpl alloc];
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __72__AVFigRoutingContextOutputContextImpl_sharedSystemRemoteDisplayContext__block_invoke;
  v5[3] = &unk_1E794E868;
  v5[4] = routingContextFactory;
  return [(AVFigRoutingContextOutputContextImpl *)v3 initWithFigRoutingContextCreator:v5];
}

uint64_t __72__AVFigRoutingContextOutputContextImpl_sharedSystemRemoteDisplayContext__block_invoke(uint64_t a1)
{
  v2 = 0;
  [*(a1 + 32) copySystemRemoteDisplayContextWithAllocator:*MEMORY[0x1E695E480] options:0 context:&v2];
  return v2;
}

- (BOOL)supportsMultipleBluetoothOutputDevices
{
  v3 = *(*(OUTLINED_FUNCTION_4(self) + 8) + 48);
  if (!v3)
  {
    return 0;
  }

  v4 = v3(v2, *MEMORY[0x1E69AF4F8], *MEMORY[0x1E695E480], &BOOLean);
  v5 = BOOLean;
  if (v4)
  {
    v6 = 0;
    if (!BOOLean)
    {
      return v6;
    }

    goto LABEL_5;
  }

  if (!BOOLean)
  {
    return 0;
  }

  v6 = CFBooleanGetValue(BOOLean) != 0;
  v5 = BOOLean;
  if (BOOLean)
  {
LABEL_5:
    CFRelease(v5);
  }

  return v6;
}

+ (id)auxiliaryOutputContext
{
  routingContextFactory = [self routingContextFactory];
  v3 = [AVFigRoutingContextOutputContextImpl alloc];
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __62__AVFigRoutingContextOutputContextImpl_auxiliaryOutputContext__block_invoke;
  v5[3] = &unk_1E794E868;
  v5[4] = routingContextFactory;
  return [(AVFigRoutingContextOutputContextImpl *)v3 initWithFigRoutingContextCreator:v5];
}

uint64_t __62__AVFigRoutingContextOutputContextImpl_auxiliaryOutputContext__block_invoke(uint64_t a1)
{
  v2 = 0;
  [*(a1 + 32) createVideoContextWithAllocator:*MEMORY[0x1E695E480] options:0 context:&v2];
  return v2;
}

uint64_t __77__AVFigRoutingContextOutputContextImpl_platformDependentScreenOrVideoContext__block_invoke(uint64_t a1)
{
  values = *(a1 + 32);
  v2 = CFDictionaryCreate(*MEMORY[0x1E695E480], MEMORY[0x1E69AF350], &values, 1, MEMORY[0x1E695E528], MEMORY[0x1E695E9E8]);
  PlatformDependentScreenOrVideoRoutingContext = AVOutputContextCreatePlatformDependentScreenOrVideoRoutingContext(*(a1 + 40), v2);
  if (v2)
  {
    CFRelease(v2);
  }

  return PlatformDependentScreenOrVideoRoutingContext;
}

+ (id)sharedSystemScreenContext
{
  routingContextFactory = [self routingContextFactory];
  v3 = [AVFigRoutingContextOutputContextImpl alloc];
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __65__AVFigRoutingContextOutputContextImpl_sharedSystemScreenContext__block_invoke;
  v5[3] = &unk_1E794E868;
  v5[4] = routingContextFactory;
  return [(AVFigRoutingContextOutputContextImpl *)v3 initWithFigRoutingContextCreator:v5];
}

uint64_t __65__AVFigRoutingContextOutputContextImpl_sharedSystemScreenContext__block_invoke(uint64_t a1)
{
  v2 = 0;
  [*(a1 + 32) copySystemMirroringContextWithAllocator:*MEMORY[0x1E695E480] options:0 context:&v2];
  return v2;
}

+ (id)sharedSystemRemotePoolContext
{
  routingContextFactory = [self routingContextFactory];
  v3 = [AVFigRoutingContextOutputContextImpl alloc];
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __69__AVFigRoutingContextOutputContextImpl_sharedSystemRemotePoolContext__block_invoke;
  v5[3] = &unk_1E794E868;
  v5[4] = routingContextFactory;
  return [(AVFigRoutingContextOutputContextImpl *)v3 initWithFigRoutingContextCreator:v5];
}

uint64_t __69__AVFigRoutingContextOutputContextImpl_sharedSystemRemotePoolContext__block_invoke(uint64_t a1)
{
  v2 = 0;
  [*(a1 + 32) copySystemRemotePoolContextWithAllocator:*MEMORY[0x1E695E480] options:0 context:&v2];
  return v2;
}

+ (id)allSharedAudioOutputContextImpls
{
  routingContextFactory = [self routingContextFactory];
  array = [MEMORY[0x1E695DF70] array];
  theArray = 0;
  if (objc_opt_respondsToSelector())
  {
    [routingContextFactory copyAllAudioContexts:&theArray];
    if (theArray)
    {
      Count = CFArrayGetCount(theArray);
      if (Count >= 1)
      {
        v5 = Count;
        for (i = 0; i != v5; ++i)
        {
          ValueAtIndex = CFArrayGetValueAtIndex(theArray, i);
          v8 = [AVFigRoutingContextOutputContextImpl alloc];
          v11[0] = MEMORY[0x1E69E9820];
          v11[1] = 3221225472;
          v11[2] = __72__AVFigRoutingContextOutputContextImpl_allSharedAudioOutputContextImpls__block_invoke;
          v11[3] = &__block_descriptor_40_e31___OpaqueFigRoutingContext__8__0l;
          v11[4] = ValueAtIndex;
          v9 = [(AVFigRoutingContextOutputContextImpl *)v8 initWithFigRoutingContextCreator:v11];
          if (v9)
          {
            [array addObject:v9];
          }
        }
      }

      if (theArray)
      {
        CFRelease(theArray);
      }
    }
  }

  return array;
}

CFTypeRef __72__AVFigRoutingContextOutputContextImpl_allSharedAudioOutputContextImpls__block_invoke(uint64_t a1)
{
  result = *(a1 + 32);
  if (result)
  {
    return CFRetain(result);
  }

  return result;
}

+ (id)iTunesAudioContext
{
  routingContextFactory = [self routingContextFactory];
  v3 = [AVFigRoutingContextOutputContextImpl alloc];
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __58__AVFigRoutingContextOutputContextImpl_iTunesAudioContext__block_invoke;
  v5[3] = &unk_1E794E868;
  v5[4] = routingContextFactory;
  return [(AVFigRoutingContextOutputContextImpl *)v3 initWithFigRoutingContextCreator:v5];
}

uint64_t __58__AVFigRoutingContextOutputContextImpl_iTunesAudioContext__block_invoke(uint64_t a1)
{
  v2 = 0;
  [*(a1 + 32) createAudioContextWithAllocator:*MEMORY[0x1E695E480] options:0 context:&v2];
  return v2;
}

+ (id)addSharedAudioOutputContextImpl
{
  routingContextFactory = [self routingContextFactory];
  v3 = [AVFigRoutingContextOutputContextImpl alloc];
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __71__AVFigRoutingContextOutputContextImpl_addSharedAudioOutputContextImpl__block_invoke;
  v5[3] = &unk_1E794E868;
  v5[4] = routingContextFactory;
  return [(AVFigRoutingContextOutputContextImpl *)v3 initWithFigRoutingContextCreator:v5];
}

uint64_t __71__AVFigRoutingContextOutputContextImpl_addSharedAudioOutputContextImpl__block_invoke(uint64_t a1)
{
  v2 = 0;
  [*(a1 + 32) createAudioContextWithAllocator:*MEMORY[0x1E695E480] options:0 context:&v2];
  return v2;
}

+ (id)defaultSharedOutputContextImpl
{
  routingContextFactory = [self routingContextFactory];
  v3 = [AVFigRoutingContextOutputContextImpl alloc];
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __70__AVFigRoutingContextOutputContextImpl_defaultSharedOutputContextImpl__block_invoke;
  v5[3] = &unk_1E794E868;
  v5[4] = routingContextFactory;
  return [(AVFigRoutingContextOutputContextImpl *)v3 initWithFigRoutingContextCreator:v5];
}

uint64_t __70__AVFigRoutingContextOutputContextImpl_defaultSharedOutputContextImpl__block_invoke(uint64_t a1)
{
  v5 = 0;
  v2 = *(a1 + 32);
  v3 = objc_opt_respondsToSelector();
  result = 0;
  if (v3)
  {
    [*(a1 + 32) copyDefaultContextWithAllocator:*MEMORY[0x1E695E480] options:0 context:&v5];
    return v5;
  }

  return result;
}

+ (id)outputContextImplForControllingOutputDeviceGroupWithID:(id)d options:(id)options
{
  if (!d)
  {
    v17 = [MEMORY[0x1E695DF30] exceptionWithName:*MEMORY[0x1E695D940] reason:AVMethodExceptionReasonWithObjectAndSelector(self userInfo:{a2, @"invalid parameter not satisfying: %s", options, v4, v5, v6, v7, "groupID != nil"), 0}];
    objc_exception_throw(v17);
  }

  routingContextFactory = [self routingContextFactory];
  dictionary = [MEMORY[0x1E695DF90] dictionary];
  v12 = [options objectForKeyedSubscript:@"AVOutputContextDeviceGroupControlOptionCancelAddDeviceIfAuthRequired"];
  [dictionary setObject:d forKeyedSubscript:*MEMORY[0x1E69AF358]];
  if (v12)
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      bOOLValue = [v12 BOOLValue];
      v14 = MEMORY[0x1E695E4D0];
      if (!bOOLValue)
      {
        v14 = MEMORY[0x1E695E4C0];
      }

      [dictionary setObject:*v14 forKeyedSubscript:*MEMORY[0x1E69AF340]];
    }
  }

  v15 = [AVFigRoutingContextOutputContextImpl alloc];
  v18[0] = MEMORY[0x1E69E9820];
  v18[1] = 3221225472;
  v18[2] = __103__AVFigRoutingContextOutputContextImpl_outputContextImplForControllingOutputDeviceGroupWithID_options___block_invoke;
  v18[3] = &unk_1E794E9D0;
  v18[4] = routingContextFactory;
  v18[5] = dictionary;
  return [(AVFigRoutingContextOutputContextImpl *)v15 initWithFigRoutingContextCreator:v18];
}

uint64_t __103__AVFigRoutingContextOutputContextImpl_outputContextImplForControllingOutputDeviceGroupWithID_options___block_invoke(uint64_t a1)
{
  v2 = 0;
  [*(a1 + 32) createRemoteMusicControllerContextWithAllocator:*MEMORY[0x1E695E480] options:*(a1 + 40) context:&v2];
  return v2;
}

+ (id)outputContextImplForID:(id)d type:(id)type
{
  v4 = [[self alloc] initWithRoutingContextUUID:d type:type];

  return v4;
}

- (AVFigRoutingContextOutputContextImpl)init
{
  v4 = MEMORY[0x1E695DF30];
  v5 = *MEMORY[0x1E695D940];
  v6 = NSStringFromSelector(sel_initWithFigRoutingContextCreator_);
  v12 = [v4 exceptionWithName:v5 reason:AVMethodExceptionReasonWithObjectAndSelector(self userInfo:{a2, @"Not available.  Use %@ instead", v7, v8, v9, v10, v11, v6), 0}];
  objc_exception_throw(v12);
}

uint64_t __72__AVFigRoutingContextOutputContextImpl_initWithRoutingContextUUID_type___block_invoke(uint64_t a1)
{
  v6 = 0;
  v1 = *(a1 + 48);
  v3 = *(a1 + 32);
  v2 = *(a1 + 40);
  v4 = *MEMORY[0x1E695E480];
  if (v1 <= 3)
  {
    switch(v1)
    {
      case 1:
        [v2 copySystemAudioContextWithAllocator:v4 options:0 context:&v6];
        return v6;
      case 2:
        [v2 copySystemMirroringContextWithAllocator:v4 options:0 context:&v6];
        return v6;
      case 3:
        [v2 copySystemMusicContextWithAllocator:v4 options:0 context:&v6];
        return v6;
    }

LABEL_13:
    [v2 copyContextForUUIDWithAllocator:v4 options:v3 context:&v6];
    return v6;
  }

  if (v1 > 5)
  {
    if (v1 == 6)
    {
      [v2 createPerAppSecondDisplayContextWithAllocator:v4 options:v3 context:&v6];
      return v6;
    }

    if (v1 == 8)
    {
      [v2 createRemoteMusicControllerContextWithAllocator:v4 options:v3 context:&v6];
      return v6;
    }

    goto LABEL_13;
  }

  if (v1 == 4)
  {
    [v2 createAudioContextWithAllocator:v4 options:v3 context:&v6];
  }

  else
  {
    [v2 createVideoContextWithAllocator:v4 options:v3 context:&v6];
  }

  return v6;
}

- (AVFigRoutingContextOutputContextImpl)initWithFigRoutingContextCreator:(id)creator
{
  v5 = (*(creator + 2))(creator, a2);
  if (v5)
  {
    v6 = v5;
    v7 = [(AVFigRoutingContextOutputContextImpl *)self initWithFigRoutingContext:v5 routingContextReplacementBlock:creator];
    CFRelease(v6);
    return v7;
  }

  else
  {

    return 0;
  }
}

- (AVFigRoutingContextOutputContextImpl)initWithFigRoutingContext:(OpaqueFigRoutingContext *)context routingContextReplacementBlock:(id)block
{
  v7 = AVOutputContextUsesRouteConfigUpdatedNotification();
  DefaultDeviceTranslator = AVOutputContextGetDefaultDeviceTranslator(v7);
  FigVolumeControllerCopySharedControllerRemote();
  v9 = [(AVFigRoutingContextOutputContextImpl *)self initWithFigRoutingContext:context routingContextReplacementBlock:block outputDeviceTranslator:DefaultDeviceTranslator volumeController:0 communicationChannelManagerCreator:+[AVOutputContext defaultCommunicationChannelManagerCreator]];
  v10 = v9;

  return v10;
}

- (BOOL)isEqual:(id)equal
{
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    return 0;
  }

  routingContextUUID = [(AVFigRoutingContextOutputContextImpl *)self routingContextUUID];
  routingContextUUID2 = [equal routingContextUUID];

  return [routingContextUUID isEqual:routingContextUUID2];
}

- (unint64_t)hash
{
  routingContextUUID = [(AVFigRoutingContextOutputContextImpl *)self routingContextUUID];

  return [routingContextUUID hash];
}

uint64_t __66__AVFigRoutingContextOutputContextImpl__routeChangeStartedWithID___block_invoke(void *a1)
{
  v2 = [MEMORY[0x1E695DF90] dictionaryWithDictionary:*(a1[4] + 88)];
  [v2 setObject:a1[5] forKey:a1[6]];

  result = [v2 copy];
  *(a1[4] + 88) = result;
  return result;
}

- (void)_routeChangeEndedWithID:(id)d reason:(__CFString *)reason
{
  v8 = 0;
  v9 = &v8;
  v10 = 0x3052000000;
  v11 = __Block_byref_object_copy__1;
  v12 = __Block_byref_object_dispose__1;
  v13 = 0;
  if (d)
  {
    ivarAccessQueue = self->_ivarAccessQueue;
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __71__AVFigRoutingContextOutputContextImpl__routeChangeEndedWithID_reason___block_invoke;
    block[3] = &unk_1E794E8E0;
    block[5] = d;
    block[6] = &v8;
    block[4] = self;
    av_readwrite_dispatch_queue_write(ivarAccessQueue, block);
    v6 = v9[5];
  }

  else
  {
    v6 = 0;
  }

  [v6 changeToTerminalStatusBasedOnRouteChangeEndedReason:reason];

  _Block_object_dispose(&v8, 8);
}

uint64_t __71__AVFigRoutingContextOutputContextImpl__routeChangeEndedWithID_reason___block_invoke(void *a1)
{
  v2 = [MEMORY[0x1E695DF90] dictionaryWithDictionary:*(a1[4] + 88)];
  *(*(a1[6] + 8) + 40) = [v2 objectForKey:a1[5]];
  [v2 removeObjectForKey:a1[5]];

  result = [v2 copy];
  *(a1[4] + 88) = result;
  return result;
}

- (void)_currentRouteChanged
{
  parentOutputContext = [(AVFigRoutingContextOutputContextImpl *)self parentOutputContext];

  [(AVOutputContext *)parentOutputContext outputContextImpl:self didChangeOutputDeviceWithInitiator:0];
}

- (void)_groupConfigurationChanged
{
  parentOutputContext = [(AVFigRoutingContextOutputContextImpl *)self parentOutputContext];

  [(AVOutputContext *)parentOutputContext outputContextImpl:self didChangeOutputDevicesWithInitiator:0 reason:0 deviceID:0 previousDeviceIDs:0];
}

- (void)_routeConfigUpdatedWithID:(__CFString *)d reason:(__CFString *)reason initiator:(__CFString *)initiator endedError:(__CFString *)error deviceID:(__CFString *)iD previousDeviceIDs:(__CFArray *)ds
{
  v14 = *MEMORY[0x1E69AF3D8];
  if (FigCFEqual())
  {
    v15 = @"AVOutputContextDestinationChangeReasonIdleDisconnect";
  }

  else
  {
    v15 = 0;
  }

  v16 = *MEMORY[0x1E69AF430];
  if (FigCFEqual())
  {
    [(AVFigRoutingContextOutputContextImpl *)self _routeConfigUpdateStartedWithID:d];
  }

  else
  {
    v17 = *MEMORY[0x1E69AF428];
    if (FigCFEqual())
    {
      parentOutputContext = [(AVFigRoutingContextOutputContextImpl *)self parentOutputContext];
    }

    else
    {
      v25 = *MEMORY[0x1E69AF408];
      if (!FigCFEqual())
      {
        [(AVFigRoutingContextOutputContextImpl *)self _routeConfigUpdateEndedWithID:d reason:reason];
        goto LABEL_9;
      }

      supportsMultipleOutputDevices = [(AVFigRoutingContextOutputContextImpl *)self supportsMultipleOutputDevices];
      parentOutputContext = [(AVFigRoutingContextOutputContextImpl *)self parentOutputContext];
      if (!supportsMultipleOutputDevices)
      {
        [(AVOutputContext *)parentOutputContext outputContextImpl:self didChangeOutputDeviceWithInitiator:initiator];
        goto LABEL_9;
      }
    }

    [(AVOutputContext *)parentOutputContext outputContextImpl:self didChangeOutputDevicesWithInitiator:initiator reason:v15 deviceID:iD previousDeviceIDs:ds];
  }

LABEL_9:
  v19 = *MEMORY[0x1E69AF3E8];
  if (FigCFEqual() || (v20 = *MEMORY[0x1E69AF3C8], FigCFEqual()) || (v21 = *MEMORY[0x1E69AF3C0], FigCFEqual()) || (v22 = *MEMORY[0x1E69AF3D0], FigCFEqual()))
  {
    supportsMultipleOutputDevices2 = [(AVFigRoutingContextOutputContextImpl *)self supportsMultipleOutputDevices];
    parentOutputContext2 = [(AVFigRoutingContextOutputContextImpl *)self parentOutputContext];
    if (supportsMultipleOutputDevices2)
    {
      [(AVOutputContext *)parentOutputContext2 outputContextImpl:self didChangeOutputDevicesWithInitiator:initiator reason:v15 deviceID:iD previousDeviceIDs:ds];
      if (![(NSString *)[(AVFigRoutingContextOutputContextImpl *)self outputContextType] isEqualToString:@"AVOutputContextTypeAudio"])
      {
        return;
      }

      parentOutputContext2 = [(AVFigRoutingContextOutputContextImpl *)self parentOutputContext];
    }

    [(AVOutputContext *)parentOutputContext2 outputContextImpl:self didChangeOutputDeviceWithInitiator:initiator];
  }
}

uint64_t __72__AVFigRoutingContextOutputContextImpl__routeConfigUpdateStartedWithID___block_invoke(void *a1)
{
  v2 = [MEMORY[0x1E695DF90] dictionaryWithDictionary:*(a1[4] + 88)];
  [v2 setObject:a1[5] forKey:a1[6]];

  result = [v2 copy];
  *(a1[4] + 88) = result;
  return result;
}

- (void)_routeConfigUpdateEndedWithID:(__CFString *)d reason:(__CFString *)reason
{
  v8 = 0;
  v9 = &v8;
  v10 = 0x3052000000;
  v11 = __Block_byref_object_copy__1;
  v12 = __Block_byref_object_dispose__1;
  v13 = 0;
  if (d)
  {
    ivarAccessQueue = self->_ivarAccessQueue;
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __77__AVFigRoutingContextOutputContextImpl__routeConfigUpdateEndedWithID_reason___block_invoke;
    block[3] = &unk_1E794E930;
    block[4] = self;
    block[5] = &v8;
    block[6] = d;
    av_readwrite_dispatch_queue_write(ivarAccessQueue, block);
    v6 = v9[5];
  }

  else
  {
    v6 = 0;
  }

  [v6 changeToTerminalStatusBasedOnRouteConfigUpdatedReason:reason];

  _Block_object_dispose(&v8, 8);
}

uint64_t __77__AVFigRoutingContextOutputContextImpl__routeConfigUpdateEndedWithID_reason___block_invoke(void *a1)
{
  v2 = [MEMORY[0x1E695DF90] dictionaryWithDictionary:*(a1[4] + 88)];
  *(*(a1[5] + 8) + 40) = [v2 objectForKey:a1[6]];
  [v2 removeObjectForKey:a1[6]];

  result = [v2 copy];
  *(a1[4] + 88) = result;
  return result;
}

- (void)_systemPickerVideoRouteChanged
{
  parentOutputContext = [(AVFigRoutingContextOutputContextImpl *)self parentOutputContext];

  [(AVOutputContext *)parentOutputContext outputContextImplDidChangeGlobalOutputDeviceConfiguration:self];
}

- (NSString)associatedAudioDeviceID
{
  v8 = 0;
  routingContext = self->_routingContext;
  VTable = CMBaseObjectGetVTable();
  v4 = *(*(VTable + 8) + 48);
  if (v4)
  {
    v5 = *(VTable + 8) + 48;
    v4(routingContext, *MEMORY[0x1E69AF4D8], *MEMORY[0x1E695E480], &v8);
    v6 = v8;
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (__CFDictionary)_createSelectRouteOptionsForSetOutputDeviceOptions:(id)options
{
  v5 = [options objectForKey:@"AVOutputContextSetOutputDevicePasswordKey"];
  v6 = [options objectForKeyedSubscript:@"AVOutputContextSetOutputDeviceCancelIfAuthRequiredKey"];
  v7 = [options objectForKeyedSubscript:@"AVOutputContextSetOutputDeviceSuppressUserInteractionOnSenderOnlyKey"];
  v8 = [options objectForKeyedSubscript:@"AVOutputContextSetOutputDeviceInitiatorKey"];
  v9 = [options objectForKeyedSubscript:@"AVOutputContextSetOutputDeviceFadePlaybackKey"];
  v37 = [options objectForKeyedSubscript:@"AVOutputContextSetOutputDeviceDidFailToConnectToOutputDeviceUserInfoKey"];
  v10 = [options objectForKeyedSubscript:@"AVOutputContextSetOutputDeviceMuteUntilContextModificationIsFinishedKey"];
  v11 = [options objectForKeyedSubscript:@"AVOutputContextSetOutputDeviceDefaultAudioToLocalKey"];
  v38 = 0;
  Mutable = CFDictionaryCreateMutable(*MEMORY[0x1E695E480], 0, MEMORY[0x1E695E528], MEMORY[0x1E695E9E8]);
  if ([(AVOutputContext *)[(AVFigRoutingContextOutputContextImpl *)self parentOutputContext] getApplicationProcessID:&v38])
  {
    v13 = [MEMORY[0x1E696AD98] numberWithInt:v38];
    CFDictionarySetValue(Mutable, *MEMORY[0x1E69AF528], v13);
  }

  if (v5)
  {
    CFDictionarySetValue(Mutable, *MEMORY[0x1E69AF510], v5);
  }

  if (v6)
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v14 = *MEMORY[0x1E69AF518];
      bOOLValue = [v6 BOOLValue];
      v16 = MEMORY[0x1E695E4D0];
      if (!bOOLValue)
      {
        v16 = MEMORY[0x1E695E4C0];
      }

      CFDictionarySetValue(Mutable, v14, *v16);
    }
  }

  if (v11)
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      bOOLValue2 = [v11 BOOLValue];
      v18 = MEMORY[0x1E695E4D0];
      if (!bOOLValue2)
      {
        v18 = MEMORY[0x1E695E4C0];
      }

      CFDictionarySetValue(Mutable, @"defaultAudioToLocal", *v18);
    }
  }

  if (v7)
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v19 = *MEMORY[0x1E69AF548];
      bOOLValue3 = [v7 BOOLValue];
      v21 = MEMORY[0x1E695E4D0];
      if (!bOOLValue3)
      {
        v21 = MEMORY[0x1E695E4C0];
      }

      CFDictionarySetValue(Mutable, v19, *v21);
    }
  }

  if (v8)
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      CFDictionarySetValue(Mutable, *MEMORY[0x1E69AF540], v8);
    }
  }

  if (v9)
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v22 = *MEMORY[0x1E69AF538];
      bOOLValue4 = [v9 BOOLValue];
      v24 = MEMORY[0x1E695E4D0];
      if (!bOOLValue4)
      {
        v24 = MEMORY[0x1E695E4C0];
      }

      CFDictionarySetValue(Mutable, v22, *v24);
    }
  }

  if ((AVFigRoutingContextOutputContextImplSetShowErrorPromptDictionaryToEcho(Mutable, v37) & 1) == 0)
  {
    v35 = [MEMORY[0x1E695DF30] exceptionWithName:*MEMORY[0x1E695D940] reason:AVMethodExceptionReasonWithObjectAndSelector(self userInfo:{a2, @"Expected a NSDictionary for didFailToConnectToOutputDeviceUserInfo", v25, v26, v27, v28, v29, self), 0}];
    objc_exception_throw(v35);
  }

  if (v10)
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      bOOLValue5 = [v10 BOOLValue];
      v31 = MEMORY[0x1E695E4D0];
      if (!bOOLValue5)
      {
        v31 = MEMORY[0x1E695E4C0];
      }

      CFDictionarySetValue(Mutable, @"PreemptivePortConnection", *v31);
    }
  }

  if ([options objectForKeyedSubscript:@"AVOutputContextOutputDevicesModificationOptionUserInitiated"])
  {
    v32 = [objc_msgSend(options objectForKeyedSubscript:{@"AVOutputContextOutputDevicesModificationOptionUserInitiated", "BOOLValue"}];
    v33 = MEMORY[0x1E695E4D0];
    if (!v32)
    {
      v33 = MEMORY[0x1E695E4C0];
    }

    CFDictionarySetValue(Mutable, @"userInitiated", *v33);
  }

  if ([options objectForKeyedSubscript:@"AVOutputContextOutputDevicesModificationOptionCorrelationID"])
  {
    CFDictionarySetValue(Mutable, *MEMORY[0x1E69AF520], [options objectForKeyedSubscript:@"AVOutputContextOutputDevicesModificationOptionCorrelationID"]);
  }

  return Mutable;
}

- (void)setOutputDevice:(id)device options:(id)options completionHandler:(id)handler
{
  v8 = [(AVFigRoutingContextOutputContextImpl *)self _createSelectRouteOptionsForSetOutputDeviceOptions:options];
  [(AVFigRoutingContextOutputDeviceTranslator *)self->_deviceTranslator setOutputDevice:device withOptions:v8 onRoutingContext:self->_routingContext completionHandler:handler];
  if (v8)
  {

    CFRelease(v8);
  }
}

+ (OpaqueFigRoutingContext)copySystemVideoRoutingContext
{
  v4 = 0;
  routingContextFactory = [self routingContextFactory];
  [routingContextFactory copyDisplayMenuVideoContextWithAllocator:*MEMORY[0x1E695E480] options:0 context:&v4];
  return v4;
}

- (void)setOutputDevices:(id)devices options:(id)options completionHandler:(id)handler
{
  Mutable = CFDictionaryCreateMutable(*MEMORY[0x1E695E480], 0, MEMORY[0x1E695E528], MEMORY[0x1E695E9E8]);
  if ([options objectForKeyedSubscript:@"AVOutputContextSetOutputDevicesOptionInitiator"])
  {
    CFDictionarySetValue(Mutable, *MEMORY[0x1E69AF540], [options objectForKeyedSubscript:@"AVOutputContextSetOutputDevicesOptionInitiator"]);
  }

  if ([options objectForKeyedSubscript:@"AVOutputContextSetOutputDevicesOptionFadePlayback"])
  {
    CFDictionarySetValue(Mutable, *MEMORY[0x1E69AF538], [options objectForKeyedSubscript:@"AVOutputContextSetOutputDevicesOptionFadePlayback"]);
  }

  if ((AVFigRoutingContextOutputContextImplSetShowErrorPromptDictionaryToEcho(Mutable, [options objectForKeyedSubscript:@"AVOutputContextSetOutputDevicesOptionDidFailToConnectToOutputDeviceUserInfo"]) & 1) == 0)
  {
    v18 = [MEMORY[0x1E695DF30] exceptionWithName:*MEMORY[0x1E695D940] reason:AVMethodExceptionReasonWithObjectAndSelector(self userInfo:{a2, @"Expected a NSDictionary for didFailToConnectToOutputDeviceUserInfo", v11, v12, v13, v14, v15, v19), 0}];
    objc_exception_throw(v18);
  }

  if ([options objectForKeyedSubscript:@"AVOutputContextSetOutputDevicesOptionMuteUntilContextModificationIsFinished"])
  {
    CFDictionarySetValue(Mutable, @"PreemptivePortConnection", [options objectForKeyedSubscript:@"AVOutputContextSetOutputDevicesOptionMuteUntilContextModificationIsFinished"]);
  }

  if ([options objectForKeyedSubscript:@"AVOutputContextOutputDevicesModificationOptionUserInitiated"])
  {
    v16 = [objc_msgSend(options objectForKeyedSubscript:{@"AVOutputContextOutputDevicesModificationOptionUserInitiated", "BOOLValue"}];
    v17 = MEMORY[0x1E695E4D0];
    if (!v16)
    {
      v17 = MEMORY[0x1E695E4C0];
    }

    CFDictionarySetValue(Mutable, @"userInitiated", *v17);
  }

  if ([options objectForKeyedSubscript:@"AVOutputContextOutputDevicesModificationOptionCorrelationID"])
  {
    CFDictionarySetValue(Mutable, *MEMORY[0x1E69AF520], [options objectForKeyedSubscript:@"AVOutputContextOutputDevicesModificationOptionCorrelationID"]);
  }

  [(AVFigRoutingContextOutputDeviceTranslator *)self->_deviceTranslator setOutputDevices:devices withOptions:Mutable onRoutingContext:self->_routingContext completionHandler:handler];
  if (Mutable)
  {

    CFRelease(Mutable);
  }
}

- (void)addOutputDevice:(id)device options:(id)options completionHandler:(id)handler
{
  Mutable = CFDictionaryCreateMutable(*MEMORY[0x1E695E480], 0, MEMORY[0x1E695E528], MEMORY[0x1E695E9E8]);
  v11 = [objc_msgSend(options objectForKeyedSubscript:{@"AVOutputContextAddOutputDeviceCancelIfAuthRequiredKey", "BOOLValue"}];
  v12 = MEMORY[0x1E695E4D0];
  if (v11)
  {
    CFDictionarySetValue(Mutable, *MEMORY[0x1E69AF518], *MEMORY[0x1E695E4D0]);
  }

  if ([options objectForKeyedSubscript:@"AVOutputContextAddOutputDeviceOptionAuthorizationToken"])
  {
    CFDictionarySetValue(Mutable, *MEMORY[0x1E69AF510], [options objectForKeyedSubscript:@"AVOutputContextAddOutputDeviceOptionAuthorizationToken"]);
  }

  if ([options objectForKeyedSubscript:@"AVOutputContextAddOutputDeviceOptionInitiator"])
  {
    CFDictionarySetValue(Mutable, *MEMORY[0x1E69AF540], [options objectForKeyedSubscript:@"AVOutputContextAddOutputDeviceOptionInitiator"]);
  }

  v13 = [options objectForKeyedSubscript:@"AVOutputContextAddOutputDeviceOptionCorrelationID"];
  v14 = MEMORY[0x1E69AF520];
  if (v13)
  {
    CFDictionarySetValue(Mutable, *MEMORY[0x1E69AF520], [options objectForKeyedSubscript:@"AVOutputContextAddOutputDeviceOptionCorrelationID"]);
  }

  if ([options objectForKeyedSubscript:@"AVOutputContextAddOutputDeviceOptionFadePlayback"])
  {
    CFDictionarySetValue(Mutable, *MEMORY[0x1E69AF538], [options objectForKeyedSubscript:@"AVOutputContextAddOutputDeviceOptionFadePlayback"]);
  }

  if ((AVFigRoutingContextOutputContextImplSetShowErrorPromptDictionaryToEcho(Mutable, [options objectForKeyedSubscript:@"AVOutputContextAddOutputDeviceOptionDidFailToConnectToOutputDeviceUserInfo"]) & 1) == 0)
  {
    v22 = [MEMORY[0x1E695DF30] exceptionWithName:*MEMORY[0x1E695D940] reason:AVMethodExceptionReasonWithObjectAndSelector(self userInfo:{a2, @"Expected a NSDictionary for didFailToConnectToOutputDeviceUserInfo", v15, v16, v17, v18, v19, v23), 0}];
    objc_exception_throw(v22);
  }

  if ([options objectForKeyedSubscript:@"AVOutputContextAddOutputDeviceOptionMuteUntilContextModificationIsFinished"])
  {
    CFDictionarySetValue(Mutable, @"PreemptivePortConnection", [options objectForKeyedSubscript:@"AVOutputContextAddOutputDeviceOptionMuteUntilContextModificationIsFinished"]);
  }

  if ([options objectForKeyedSubscript:@"AVOutputContextOutputDevicesModificationOptionUserInitiated"])
  {
    v20 = [objc_msgSend(options objectForKeyedSubscript:{@"AVOutputContextOutputDevicesModificationOptionUserInitiated", "BOOLValue"}];
    v21 = MEMORY[0x1E695E4C0];
    if (v20)
    {
      v21 = v12;
    }

    CFDictionarySetValue(Mutable, @"userInitiated", *v21);
  }

  if ([options objectForKeyedSubscript:@"AVOutputContextOutputDevicesModificationOptionCorrelationID"])
  {
    CFDictionarySetValue(Mutable, *v14, [options objectForKeyedSubscript:@"AVOutputContextOutputDevicesModificationOptionCorrelationID"]);
  }

  [(AVFigRoutingContextOutputDeviceTranslator *)self->_deviceTranslator addOutputDevice:device withOptions:Mutable toRoutingContext:self->_routingContext completionHandler:handler];
  if (Mutable)
  {

    CFRelease(Mutable);
  }
}

- (void)removeOutputDevice:(id)device options:(id)options completionHandler:(id)handler
{
  Mutable = CFDictionaryCreateMutable(*MEMORY[0x1E695E480], 0, MEMORY[0x1E695E528], MEMORY[0x1E695E9E8]);
  if ([options objectForKeyedSubscript:@"AVOutputContextRemoveOutputDeviceOptionInitiator"])
  {
    CFDictionarySetValue(Mutable, *MEMORY[0x1E69AF540], [options objectForKeyedSubscript:@"AVOutputContextRemoveOutputDeviceOptionInitiator"]);
  }

  if ([options objectForKeyedSubscript:@"AVOutputContextRemoveOutputDeviceOptionContinuePlayingAfterLastDeviceRemoved"])
  {
    CFDictionarySetValue(Mutable, *MEMORY[0x1E69AF508], [options objectForKeyedSubscript:@"AVOutputContextRemoveOutputDeviceOptionContinuePlayingAfterLastDeviceRemoved"]);
  }

  if ([options objectForKeyedSubscript:@"AVOutputContextRemoveOutputDeviceOptionFadePlayback"])
  {
    CFDictionarySetValue(Mutable, *MEMORY[0x1E69AF538], [options objectForKeyedSubscript:@"AVOutputContextRemoveOutputDeviceOptionFadePlayback"]);
  }

  if ((AVFigRoutingContextOutputContextImplSetShowErrorPromptDictionaryToEcho(Mutable, [options objectForKeyedSubscript:@"AVOutputContextRemoveOutputDeviceOptionDidFailToConnectToOutputDeviceUserInfo"]) & 1) == 0)
  {
    v18 = [MEMORY[0x1E695DF30] exceptionWithName:*MEMORY[0x1E695D940] reason:AVMethodExceptionReasonWithObjectAndSelector(self userInfo:{a2, @"Expected a NSDictionary for didFailToConnectToOutputDeviceUserInfo", v11, v12, v13, v14, v15, v19), 0}];
    objc_exception_throw(v18);
  }

  if ([options objectForKeyedSubscript:@"AVOutputContextOutputDevicesModificationOptionUserInitiated"])
  {
    v16 = [objc_msgSend(options objectForKeyedSubscript:{@"AVOutputContextOutputDevicesModificationOptionUserInitiated", "BOOLValue"}];
    v17 = MEMORY[0x1E695E4D0];
    if (!v16)
    {
      v17 = MEMORY[0x1E695E4C0];
    }

    CFDictionarySetValue(Mutable, @"userInitiated", *v17);
  }

  if ([options objectForKeyedSubscript:@"AVOutputContextOutputDevicesModificationOptionCorrelationID"])
  {
    CFDictionarySetValue(Mutable, *MEMORY[0x1E69AF520], [options objectForKeyedSubscript:@"AVOutputContextOutputDevicesModificationOptionCorrelationID"]);
  }

  [(AVFigRoutingContextOutputDeviceTranslator *)self->_deviceTranslator removeOutputDevice:device withOptions:Mutable fromRoutingContext:self->_routingContext completionHandler:handler];
  if (Mutable)
  {

    CFRelease(Mutable);
  }
}

- (void)_predictedSelectedRouteDescriptorChanged
{
  parentOutputContext = [(AVFigRoutingContextOutputContextImpl *)self parentOutputContext];

  [(AVOutputContext *)parentOutputContext outputContextImplDidChangePredictedOutputDevice:self];
}

- (void)resetPredictedOutputDevice
{
  v7 = *MEMORY[0x1E69E9840];
  if (dword_1ED6F6B88)
  {
    os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
    fig_log_call_emit_and_clean_up_after_send_and_compose();
  }

  routingContext = self->_routingContext;
  v5 = *(*(CMBaseObjectGetVTable() + 16) + 184);
  if (v5)
  {
    v5(routingContext, 0);
  }

  v6 = *MEMORY[0x1E69E9840];
}

- (void)_canUseForRoutingContextDidChangeForRoutingContextWIthID:(__CFString *)d
{
  if ([(__CFString *)d isEqualToString:[(AVFigRoutingContextOutputContextImpl *)self ID]])
  {
    parentOutputContext = [(AVFigRoutingContextOutputContextImpl *)self parentOutputContext];

    [(AVOutputContext *)parentOutputContext outputContextImplDidChangeProvidesControlForAllVolumeFeatures:self];
  }
}

- (float)volume
{
  v10 = 0.0;
  volumeController = self->_volumeController;
  v3 = 0.0;
  if (volumeController)
  {
    routingContext = self->_routingContext;
    v5 = self->_volumeController;
    VTable = CMBaseObjectGetVTable();
    v7 = *(*(VTable + 16) + 32);
    if (v7)
    {
      v8 = *(VTable + 16) + 32;
      v7(volumeController, routingContext, &v10);
      return v10;
    }
  }

  return v3;
}

- (void)_masterVolumeDidChangeForRoutingContextWithID:(__CFString *)d
{
  if ([(__CFString *)d isEqualToString:[(AVFigRoutingContextOutputContextImpl *)self ID]])
  {
    parentOutputContext = [(AVFigRoutingContextOutputContextImpl *)self parentOutputContext];

    [(AVOutputContext *)parentOutputContext outputContextImplDidChangeVolume:self];
  }
}

- (void)_canSetMasterVolumeDidChangeForRoutingContextWithID:(__CFString *)d
{
  if ([(__CFString *)d isEqualToString:[(AVFigRoutingContextOutputContextImpl *)self ID]])
  {
    parentOutputContext = [(AVFigRoutingContextOutputContextImpl *)self parentOutputContext];

    [(AVOutputContext *)parentOutputContext outputContextImplDidChangeCanSetVolume:self];
  }
}

- (void)_canMuteDidChangeForRoutingContextWithID:(__CFString *)d
{
  if ([(__CFString *)d isEqualToString:[(AVFigRoutingContextOutputContextImpl *)self ID]])
  {
    parentOutputContext = [(AVFigRoutingContextOutputContextImpl *)self parentOutputContext];

    [(AVOutputContext *)parentOutputContext outputContextImplDidChangeCanMute:self];
  }
}

- (void)_muteDidChangeForRoutingContextWithID:(__CFString *)d
{
  if ([(__CFString *)d isEqualToString:[(AVFigRoutingContextOutputContextImpl *)self ID]])
  {
    parentOutputContext = [(AVFigRoutingContextOutputContextImpl *)self parentOutputContext];

    [(AVOutputContext *)parentOutputContext outputContextImplDidChangeMute:self];
  }
}

- (void)_masterVolumeControlTypeDidChangeForRoutingContextWithID:(__CFString *)d
{
  if ([(__CFString *)d isEqualToString:[(AVFigRoutingContextOutputContextImpl *)self ID]])
  {
    parentOutputContext = [(AVFigRoutingContextOutputContextImpl *)self parentOutputContext];

    [(AVOutputContext *)parentOutputContext outputContextImplDidChangeVolumeControlType:self];
  }
}

- (void)setVolume:(float)volume
{
  v10 = *MEMORY[0x1E69E9840];
  volumeController = self->_volumeController;
  if (volumeController)
  {
    if (dword_1ED6F6B88)
    {
      os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
      os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
      fig_log_call_emit_and_clean_up_after_send_and_compose();
      volumeController = self->_volumeController;
    }

    routingContext = self->_routingContext;
    v8 = *(*(CMBaseObjectGetVTable() + 16) + 24);
    if (v8)
    {
      v8(volumeController, routingContext, volume);
    }
  }

  v9 = *MEMORY[0x1E69E9840];
}

- (void)increaseVolumeByCount:(int64_t)count
{
  volumeController = self->_volumeController;
  if (volumeController)
  {
    routingContext = self->_routingContext;
    v6 = self->_volumeController;
    VTable = CMBaseObjectGetVTable();
    v9 = *(*(VTable + 16) + 16);
    if (v9)
    {
      v10 = *(VTable + 16) + 16;

      v8.n128_f32[0] = count;
      v9(volumeController, routingContext, v8);
    }
  }
}

- (void)decreaseVolumeByCount:(int64_t)count
{
  volumeController = self->_volumeController;
  if (volumeController)
  {
    routingContext = self->_routingContext;
    v6 = self->_volumeController;
    VTable = CMBaseObjectGetVTable();
    v9 = *(*(VTable + 16) + 16);
    if (v9)
    {
      v10 = *(VTable + 16) + 16;

      v8.n128_f32[0] = -count;
      v9(volumeController, routingContext, v8);
    }
  }
}

- (BOOL)canMute
{
  v9 = 0;
  volumeController = self->_volumeController;
  if (!volumeController)
  {
    return 0;
  }

  routingContext = self->_routingContext;
  v4 = self->_volumeController;
  VTable = CMBaseObjectGetVTable();
  v6 = *(*(VTable + 16) + 184);
  if (!v6)
  {
    return 0;
  }

  v7 = *(VTable + 16) + 184;
  v6(volumeController, routingContext, &v9);
  return v9 != 0;
}

- (BOOL)isMuted
{
  v9 = 0;
  volumeController = self->_volumeController;
  if (!volumeController)
  {
    return 0;
  }

  routingContext = self->_routingContext;
  v4 = self->_volumeController;
  VTable = CMBaseObjectGetVTable();
  v6 = *(*(VTable + 16) + 144);
  if (!v6)
  {
    return 0;
  }

  v7 = *(VTable + 16) + 144;
  v6(volumeController, routingContext, &v9);
  return v9 != 0;
}

- (void)_sendCommand:(__CFString *)command completionHandler:(id)handler
{
  v6 = [handler copy];
  routingContext = self->_routingContext;
  v8 = *(*(CMBaseObjectGetVTable() + 16) + 136);
  if (v8)
  {

    v8(routingContext, command, 0, AVOutputContextSendCommandCompletion, v6);
  }
}

- (void)communicationChannelManager:(id)manager didReceiveData:(id)data fromCommunicationChannel:(id)channel
{
  parentOutputContext = [(AVFigRoutingContextOutputContextImpl *)self parentOutputContext];

  [(AVOutputContext *)parentOutputContext outputContextImpl:self didReceiveData:data fromCommunicationChannel:channel];
}

- (void)communicationChannelManager:(id)manager didCloseCommunicationChannel:(id)channel
{
  parentOutputContext = [(AVFigRoutingContextOutputContextImpl *)self parentOutputContext];

  [(AVOutputContext *)parentOutputContext outputContextImpl:self didCloseCommunicationChannel:channel];
}

- (void)_serverConnectionDied
{
  v3 = (*(self->_routingContextCreator + 2))();
  v4 = [objc_alloc(objc_opt_class()) initWithFigRoutingContext:v3 routingContextReplacementBlock:self->_routingContextCreator outputDeviceTranslator:self->_deviceTranslator volumeController:self->_volumeController communicationChannelManagerCreator:self->_commChannelManagerCreator];
  [(AVOutputContext *)[(AVFigRoutingContextOutputContextImpl *)self parentOutputContext] outputContextImpl:self didExpireWithReplacement:v4];
  if (v3)
  {
    CFRelease(v3);
  }
}

+ (id)platformDependentScreenOrVideoContext
{
  routingContextFactory = [self routingContextFactory];
  PlatformDependentScreenOrVideoRoutingContext = AVOutputContextCreatePlatformDependentScreenOrVideoRoutingContext(routingContextFactory, 0);
  v18 = 0;
  if (PlatformDependentScreenOrVideoRoutingContext)
  {
    v4 = PlatformDependentScreenOrVideoRoutingContext;
    VTable = CMBaseObjectGetVTable();
    v6 = *(*(VTable + 8) + 48);
    if (!v6 || (v7 = *(VTable + 8) + 48, v6(v4, *MEMORY[0x1E69AF4E8], *MEMORY[0x1E695E480], &v18)))
    {
      v11 = 0;
    }

    else
    {
      v8 = v18;
      v9 = [AVFigRoutingContextOutputContextImpl alloc];
      OUTLINED_FUNCTION_0_1();
      OUTLINED_FUNCTION_3();
      v14 = __77__AVFigRoutingContextOutputContextImpl_platformDependentScreenOrVideoContext__block_invoke;
      v15 = &unk_1E794E9D0;
      v16 = v18;
      v17 = routingContextFactory;
      v11 = [v10 initWithFigRoutingContext:v4 routingContextReplacementBlock:v13];
    }

    CFRelease(v4);
  }

  else
  {
    v11 = 0;
  }

  return v11;
}

- (AVFigRoutingContextOutputContextImpl)initWithRoutingContextUUID:(id)d type:(id)type
{
  OUTLINED_FUNCTION_5();
  v24[1] = *MEMORY[0x1E69E9840];
  routingContextFactory = [objc_opt_class() routingContextFactory];
  v23 = *MEMORY[0x1E69AF350];
  v24[0] = v5;
  v8 = [MEMORY[0x1E695DF90] dictionaryWithDictionary:{objc_msgSend(MEMORY[0x1E695DF20], "dictionaryWithObjects:forKeys:count:", v24, &v23, 1)}];
  number = 0;
  cf = 0;
  valuePtr = 0;
  if (type)
  {
    v9 = MEMORY[0x1E696AD98];
    if ([type isEqualToString:@"AVOutputContextTypeSharedSystemAudio"])
    {
      v10 = 1;
    }

    else if ([type isEqualToString:@"AVOutputContextTypeSharedSystemScreen"])
    {
      v10 = 2;
    }

    else if ([type isEqualToString:@"AVOutputContextTypeSharedAudioPresentation"])
    {
      v10 = 3;
    }

    else if ([type isEqualToString:@"AVOutputContextTypeAudio"])
    {
      v10 = 4;
    }

    else if ([type isEqualToString:@"AVOutputContextTypeVideo"])
    {
      v10 = 5;
    }

    else if ([type isEqualToString:@"AVOutputContextTypeScreen"])
    {
      v10 = 6;
    }

    else if ([type isEqualToString:@"AVOutputContextTypeGroupControl"])
    {
      v10 = 8;
    }

    else if ([type isEqualToString:@"AVOutputContextTypeSharedSystemRemotePool"])
    {
      v10 = 9;
    }

    else
    {
      v10 = 0;
    }

    v11 = [v9 numberWithUnsignedInt:v10];
    [v8 setObject:v11 forKeyedSubscript:*MEMORY[0x1E69AF348]];
  }

  v12 = *MEMORY[0x1E695E480];
  if (![routingContextFactory copyContextForUUIDWithAllocator:*MEMORY[0x1E695E480] options:v8 context:&cf] && (v13 = cf) != 0 && (v14 = *(*(CMBaseObjectGetVTable() + 8) + 48)) != 0 && !v14(v13, *MEMORY[0x1E69AF4E0], v12, &number) && CFNumberGetValue(number, kCFNumberIntType, &valuePtr))
  {
    v18[0] = MEMORY[0x1E69E9820];
    v18[1] = 3221225472;
    v18[2] = __72__AVFigRoutingContextOutputContextImpl_initWithRoutingContextUUID_type___block_invoke;
    v18[3] = &unk_1E794E890;
    v19 = valuePtr;
    v18[4] = v8;
    v18[5] = routingContextFactory;
    v4 = [v4 initWithFigRoutingContext:cf routingContextReplacementBlock:v18];
    v15 = v4;
  }

  else
  {
    v15 = 0;
  }

  if (number)
  {
    CFRelease(number);
  }

  if (cf)
  {
    CFRelease(cf);
  }

  v16 = *MEMORY[0x1E69E9840];
  return v15;
}

- (AVFigRoutingContextOutputContextImpl)initWithFigRoutingContext:(OpaqueFigRoutingContext *)context routingContextReplacementBlock:(id)block outputDeviceTranslator:(id)translator volumeController:(OpaqueFigVolumeControllerState *)controller communicationChannelManagerCreator:(id)creator
{
  OUTLINED_FUNCTION_5();
  v13 = [AVRoutingCMNotificationDispatcher notificationDispatcherForCMNotificationCenter:CMNotificationCenterGetDefaultLocalCenter()];
  number = 0;
  valuePtr = 0;
  v67.receiver = v7;
  v67.super_class = AVFigRoutingContextOutputContextImpl;
  v14 = [(AVFigRoutingContextOutputContextImpl *)&v67 init];
  if (!v14)
  {
    goto LABEL_17;
  }

  *(v14 + 1) = [block copy];
  translatorCopy = translator;
  *(v14 + 2) = translatorCopy;
  if (!translatorCopy)
  {
    goto LABEL_17;
  }

  v16 = controller ? CFRetain(controller) : 0;
  *(v14 + 3) = v16;
  *(v14 + 4) = [creator copy];
  if (!*(v14 + 1))
  {
    goto LABEL_17;
  }

  if (!v8)
  {
    *(v14 + 5) = 0;
    goto LABEL_23;
  }

  v17 = CFRetain(v8);
  v8 = 0;
  *(v14 + 5) = v17;
  if (*(v14 + 4))
  {
    v18 = v17;
    if (v17)
    {
      v19 = *(*(CMBaseObjectGetVTable() + 8) + 48);
      if (v19)
      {
        if (!v19(v18, *MEMORY[0x1E69AF4E0], *MEMORY[0x1E695E480], &number))
        {
          if (CFNumberGetValue(number, kCFNumberIntType, &valuePtr))
          {
            if (valuePtr == 9 || (v20 = *(v14 + 5), v21 = (*(*(v14 + 4) + 16))(), (*(v14 + 6) = v21) != 0))
            {
              *(v14 + 72) = AVOutputContextUsesRouteConfigUpdatedNotification();
              *(v14 + 7) = [[AVRoutingWeakReference alloc] initWithReferencedObject:v14];
              *(v14 + 10) = av_readwrite_dispatch_queue_create("com.apple.avfoundation.outputcontext.figroutingcontext");
              v22 = objc_alloc_init(MEMORY[0x1E695DF20]);
              *(v14 + 11) = v22;
              v25 = OUTLINED_FUNCTION_0(v22, v23, *(v14 + 7), v24, *MEMORY[0x1E69AF4C0], *(v14 + 5));
              v28 = *(v14 + 7);
              v29 = *(v14 + 5);
              if (*(v14 + 72) == 1)
              {
                v30 = *MEMORY[0x1E69AF4A8];
                v31 = AVFigRoutingContextRouteConfigUpdated;
              }

              else
              {
                v32 = OUTLINED_FUNCTION_0(v25, v26, v28, v27, *MEMORY[0x1E69AF478], v29);
                v35 = OUTLINED_FUNCTION_0(v32, v33, *(v14 + 7), v34, *MEMORY[0x1E69AF4A0], *(v14 + 5));
                OUTLINED_FUNCTION_0(v35, v36, *(v14 + 7), v37, *MEMORY[0x1E69AF498], *(v14 + 5));
                v28 = *(v14 + 7);
                v30 = *MEMORY[0x1E69AF470];
                v29 = *(v14 + 5);
                v31 = AVFigRoutingContextGroupConfigurationChanged;
              }

              v38 = [v13 addListenerWithWeakReference:v28 callback:v31 name:v30 object:v29 flags:0];
              v41 = OUTLINED_FUNCTION_0(v38, v39, *(v14 + 7), v40, *MEMORY[0x1E69AF4B8], *(v14 + 5));
              v44 = OUTLINED_FUNCTION_0(v41, v42, *(v14 + 7), v43, *MEMORY[0x1E69AF490], *(v14 + 5));
              v47 = OUTLINED_FUNCTION_0(v44, v45, *(v14 + 7), v46, *MEMORY[0x1E69AF488], *(v14 + 5));
              v50 = *(v14 + 3);
              if (v50)
              {
                v51 = OUTLINED_FUNCTION_0(v47, v48, *(v14 + 7), v49, *MEMORY[0x1E69AF5D0], v50);
                v54 = OUTLINED_FUNCTION_0(v51, v52, *(v14 + 7), v53, *MEMORY[0x1E69AF5C8], *(v14 + 3));
                v57 = OUTLINED_FUNCTION_0(v54, v55, *(v14 + 7), v56, *MEMORY[0x1E69AF5F8], *(v14 + 3));
                v60 = OUTLINED_FUNCTION_0(v57, v58, *(v14 + 7), v59, *MEMORY[0x1E69AF5F0], *(v14 + 3));
                v63 = OUTLINED_FUNCTION_0(v60, v61, *(v14 + 7), v62, *MEMORY[0x1E69AF608], *(v14 + 3));
                OUTLINED_FUNCTION_0(v63, v64, *(v14 + 7), v65, *MEMORY[0x1E69AF610], *(v14 + 3));
              }

              [*(v14 + 6) setParentOutputContextImpl:v14];
              v8 = v14;
              goto LABEL_23;
            }
          }
        }
      }

LABEL_17:
      v8 = 0;
    }
  }

LABEL_23:
  if (number)
  {
    CFRelease(number);
  }

  return v8;
}

- (void)_routeChangeStartedWithID:(id)d
{
  v5 = objc_alloc_init(AVOutputContextDestinationChange);
  [(AVOutputContextDestinationChange *)v5 markAsInProgress];
  [(AVOutputContext *)[(AVFigRoutingContextOutputContextImpl *)self parentOutputContext] outputContextImpl:self didInitiateDestinationChange:v5];
  if (d)
  {
    ivarAccessQueue = self->_ivarAccessQueue;
    OUTLINED_FUNCTION_0_1();
    OUTLINED_FUNCTION_3();
    v9 = __66__AVFigRoutingContextOutputContextImpl__routeChangeStartedWithID___block_invoke;
    v10 = &unk_1E794E8B8;
    selfCopy = self;
    v12 = v5;
    dCopy = d;
    av_readwrite_dispatch_queue_write(v7, block);
  }
}

- (void)_routeConfigUpdateStartedWithID:(__CFString *)d
{
  v5 = objc_alloc_init(AVOutputContextDestinationChange);
  [(AVOutputContextDestinationChange *)v5 markAsInProgress];
  [(AVOutputContext *)[(AVFigRoutingContextOutputContextImpl *)self parentOutputContext] outputContextImpl:self didInitiateDestinationChange:v5];
  if (d)
  {
    ivarAccessQueue = self->_ivarAccessQueue;
    OUTLINED_FUNCTION_0_1();
    OUTLINED_FUNCTION_3();
    v9 = __72__AVFigRoutingContextOutputContextImpl__routeConfigUpdateStartedWithID___block_invoke;
    v10 = &unk_1E794E908;
    selfCopy = self;
    v12 = v5;
    dCopy = d;
    av_readwrite_dispatch_queue_write(v7, block);
  }
}

+ (void)resetOutputDeviceForAllOutputContexts
{
  v7 = *MEMORY[0x1E69E9840];
  copySystemVideoRoutingContext = [self copySystemVideoRoutingContext];
  if (copySystemVideoRoutingContext)
  {
    v3 = copySystemVideoRoutingContext;
    if (dword_1ED6F6B88)
    {
      os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
      os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
      fig_log_call_emit_and_clean_up_after_send_and_compose();
    }

    v5 = *(*(CMBaseObjectGetVTable() + 16) + 8);
    if (v5)
    {
      v5(v3, 0, 0);
    }

    CFRelease(v3);
  }

  v6 = *MEMORY[0x1E69E9840];
}

+ (BOOL)outputContextExistsWithRemoteOutputDevice
{
  cf = 0;
  copySystemVideoRoutingContext = [self copySystemVideoRoutingContext];
  if (!copySystemVideoRoutingContext)
  {
    return 0;
  }

  v3 = copySystemVideoRoutingContext;
  v4 = *(*(CMBaseObjectGetVTable() + 16) + 24);
  if (v4)
  {
    if (v4(v3, &cf))
    {
      v5 = 1;
    }

    else
    {
      v5 = cf == 0;
    }

    v6 = !v5;
  }

  else
  {
    v6 = 0;
  }

  CFRelease(v3);
  if (cf)
  {
    CFRelease(cf);
  }

  return v6;
}

- (void)_remoteControlChannelAvailabilityChanged
{
  BOOLean = 0;
  routingContext = self->_routingContext;
  VTable = CMBaseObjectGetVTable();
  v5 = *(*(VTable + 8) + 48);
  if (v5)
  {
    v6 = *(VTable + 8) + 48;
    if (!v5(routingContext, *MEMORY[0x1E69AF4F0], *MEMORY[0x1E695E480], &BOOLean))
    {
      if (!BOOLean)
      {
        return;
      }

      if (CFBooleanGetValue(BOOLean))
      {
        [(AVOutputContext *)[(AVFigRoutingContextOutputContextImpl *)self parentOutputContext] outputContextImplOutgoingCommunicationChannelDidBecomeAvailable:self];
      }
    }
  }

  if (BOOLean)
  {
    CFRelease(BOOLean);
  }
}

@end