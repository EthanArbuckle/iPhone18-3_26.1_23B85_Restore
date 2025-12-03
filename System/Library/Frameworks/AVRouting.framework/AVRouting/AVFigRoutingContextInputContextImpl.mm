@interface AVFigRoutingContextInputContextImpl
+ (id)inputContextImplForID:(id)d type:(id)type;
+ (id)sharedSystemAudioInputContext;
- (AVFigRoutingContextInputContextImpl)init;
- (AVFigRoutingContextInputContextImpl)initWithFigRoutingContext:(OpaqueFigRoutingContext *)context routingContextReplacementBlock:(id)block volumeController:(OpaqueFigVolumeControllerState *)controller;
- (AVFigRoutingContextInputContextImpl)initWithFigRoutingContextCreator:(id)creator;
- (AVFigRoutingContextInputContextImpl)initWithRoutingContextUUID:(id)d type:(id)type;
- (AVInputDevice)inputDevice;
- (BOOL)canSetInputGain;
- (BOOL)clearUserPreferredInputDevice:(id)device error:(id *)error;
- (BOOL)isEqual:(id)equal;
- (BOOL)setInputGain:(float)gain error:(id *)error;
- (NSString)ID;
- (NSString)inputContextType;
- (__CFDictionary)_createSelectRouteOptionsForSetInputDeviceOptions:(id)options;
- (float)inputGain;
- (id)_createUserPreferredRouteModificationDictionary:(id)dictionary;
- (id)routingContextUUID;
- (id)userPreferredInputDevice:(id)device;
- (unint64_t)hash;
- (void)_canSetMainVolumeDidChangeForRoutingContextWithID:(id)d;
- (void)_currentRouteChanged;
- (void)_mainVolumeDidChangeForRoutingContextWithID:(id)d;
- (void)_routeChangeEndedWithID:(id)d reason:(__CFString *)reason;
- (void)_routeChangeStartedWithID:(id)d;
- (void)_routeConfigUpdateEndedWithID:(__CFString *)d reason:(__CFString *)reason;
- (void)_routeConfigUpdateStartedWithID:(__CFString *)d;
- (void)_routeConfigUpdatedWithID:(__CFString *)d reason:(__CFString *)reason initiator:(__CFString *)initiator endedError:(__CFString *)error deviceID:(__CFString *)iD previousDeviceIDs:(__CFArray *)ds;
- (void)_serverConnectionDied;
- (void)dealloc;
- (void)setInputDevice:(id)device options:(id)options completionHandler:(id)handler;
@end

@implementation AVFigRoutingContextInputContextImpl

+ (id)sharedSystemAudioInputContext
{
  routingContextFactory = [self routingContextFactory];
  v3 = [AVFigRoutingContextInputContextImpl alloc];
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __68__AVFigRoutingContextInputContextImpl_sharedSystemAudioInputContext__block_invoke;
  v5[3] = &unk_1E794E868;
  v5[4] = routingContextFactory;
  return [(AVFigRoutingContextInputContextImpl *)v3 initWithFigRoutingContextCreator:v5];
}

uint64_t __68__AVFigRoutingContextInputContextImpl_sharedSystemAudioInputContext__block_invoke(uint64_t a1)
{
  v2 = 0;
  [*(a1 + 32) copySystemAudioInputContextWithAllocator:*MEMORY[0x1E695E480] options:0 context:&v2];
  return v2;
}

+ (id)inputContextImplForID:(id)d type:(id)type
{
  v4 = [[self alloc] initWithRoutingContextUUID:d type:type];

  return v4;
}

- (AVFigRoutingContextInputContextImpl)init
{
  v4 = MEMORY[0x1E695DF30];
  v5 = *MEMORY[0x1E695D940];
  v6 = NSStringFromSelector(sel_initWithFigRoutingContextCreator_);
  v12 = [v4 exceptionWithName:v5 reason:AVMethodExceptionReasonWithObjectAndSelector(self userInfo:{a2, @"Not available.  Use %@ instead", v7, v8, v9, v10, v11, v6), 0}];
  objc_exception_throw(v12);
}

uint64_t __71__AVFigRoutingContextInputContextImpl_initWithRoutingContextUUID_type___block_invoke(uint64_t a1)
{
  v2 = 0;
  if (*(a1 + 48) == 13)
  {
    [*(a1 + 40) copySystemAudioInputContextWithAllocator:*MEMORY[0x1E695E480] options:0 context:&v2];
  }

  else
  {
    [*(a1 + 40) copyContextForUUIDWithAllocator:*MEMORY[0x1E695E480] options:*(a1 + 32) context:&v2];
  }

  return v2;
}

- (AVFigRoutingContextInputContextImpl)initWithFigRoutingContextCreator:(id)creator
{
  v5 = (*(creator + 2))(creator, a2);
  FigVolumeControllerCopySharedControllerRemote();
  if (v5)
  {
    v6 = [(AVFigRoutingContextInputContextImpl *)self initWithFigRoutingContext:v5 routingContextReplacementBlock:creator volumeController:0];
    CFRelease(v5);
  }

  else
  {

    return 0;
  }

  return v6;
}

- (void)dealloc
{
  if (self->_routingContext)
  {
    v3 = [AVRoutingCMNotificationDispatcher notificationDispatcherForCMNotificationCenter:CMNotificationCenterGetDefaultLocalCenter()];
    v4 = v3;
    weakObserver = self->_weakObserver;
    routingContext = self->_routingContext;
    if (self->_usesRouteConfigUpdatedNotification)
    {
      v7 = *MEMORY[0x1E69AF4A8];
      v8 = AVFigRoutingContextSystemAudioRouteConfigUpdated;
    }

    else
    {
      [v3 removeListenerWithWeakReference:weakObserver callback:AVFigRoutingContextCurrentRouteChanged name:*MEMORY[0x1E69AF478] object:routingContext];
      [v4 removeListenerWithWeakReference:self->_weakObserver callback:AVFigRoutingContextRouteChangeStarted name:*MEMORY[0x1E69AF4A0] object:self->_routingContext];
      weakObserver = self->_weakObserver;
      v7 = *MEMORY[0x1E69AF498];
      routingContext = self->_routingContext;
      v8 = AVFigRoutingContextRouteChangeEnded;
    }

    [v4 removeListenerWithWeakReference:weakObserver callback:v8 name:v7 object:routingContext];
    [v4 removeListenerWithWeakReference:self->_weakObserver callback:AVFigRoutingContextServerConnectionDied name:*MEMORY[0x1E69AF4B8] object:self->_routingContext];
    if (self->_volumeController)
    {
      [v4 removeListenerWithWeakReference:self->_weakObserver callback:AVFigVolumeControllerCanSetMainVolumeDidChange name:*MEMORY[0x1E69AF5C8] object:?];
      [v4 removeListenerWithWeakReference:self->_weakObserver callback:AVFigVolumeControllerMainVolumeDidChange name:*MEMORY[0x1E69AF5F8] object:self->_volumeController];
    }
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

  volumeController = self->_volumeController;
  if (volumeController)
  {
    CFRelease(volumeController);
  }

  v12.receiver = self;
  v12.super_class = AVFigRoutingContextInputContextImpl;
  [(AVFigRoutingContextInputContextImpl *)&v12 dealloc];
}

- (BOOL)isEqual:(id)equal
{
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    return 0;
  }

  routingContextUUID = [(AVFigRoutingContextInputContextImpl *)self routingContextUUID];
  routingContextUUID2 = [equal routingContextUUID];

  return [routingContextUUID isEqual:routingContextUUID2];
}

- (unint64_t)hash
{
  routingContextUUID = [(AVFigRoutingContextInputContextImpl *)self routingContextUUID];

  return [routingContextUUID hash];
}

- (NSString)ID
{
  routingContextUUID = [(AVFigRoutingContextInputContextImpl *)self routingContextUUID];

  return [routingContextUUID UUIDString];
}

- (AVInputDevice)inputDevice
{
  cf = 0;
  routingContext = self->_routingContext;
  v4 = *(*(CMBaseObjectGetVTable() + 16) + 32);
  if (!v4)
  {
    return 0;
  }

  v5 = v4(routingContext, &cf);
  v6 = cf;
  if (v5)
  {
    v7 = 0;
    if (!cf)
    {
      return v7;
    }

    goto LABEL_4;
  }

  v7 = [AVInputDevice inputDeviceWithRouteDescriptor:cf withRoutingContext:self->_routingContext];
  v6 = cf;
  if (cf)
  {
LABEL_4:
    CFRelease(v6);
  }

  return v7;
}

uint64_t __65__AVFigRoutingContextInputContextImpl__routeChangeStartedWithID___block_invoke(void *a1)
{
  v2 = [MEMORY[0x1E695DF90] dictionaryWithDictionary:*(a1[4] + 56)];
  [v2 setObject:a1[5] forKey:a1[6]];

  result = [v2 copy];
  *(a1[4] + 56) = result;
  return result;
}

- (void)_routeChangeEndedWithID:(id)d reason:(__CFString *)reason
{
  v8 = 0;
  v9 = &v8;
  v10 = 0x3052000000;
  v11 = __Block_byref_object_copy__0;
  v12 = __Block_byref_object_dispose__0;
  v13 = 0;
  if (d)
  {
    ivarAccessQueue = self->_ivarAccessQueue;
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __70__AVFigRoutingContextInputContextImpl__routeChangeEndedWithID_reason___block_invoke;
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

  [v6 changeToTerminalStatusBasedOnInputRouteChangeEndedReason:reason];

  _Block_object_dispose(&v8, 8);
}

uint64_t __70__AVFigRoutingContextInputContextImpl__routeChangeEndedWithID_reason___block_invoke(void *a1)
{
  v2 = [MEMORY[0x1E695DF90] dictionaryWithDictionary:*(a1[4] + 56)];
  *(*(a1[6] + 8) + 40) = [v2 objectForKey:a1[5]];
  [v2 removeObjectForKey:a1[5]];

  result = [v2 copy];
  *(a1[4] + 56) = result;
  return result;
}

- (void)_currentRouteChanged
{
  parentInputContext = [(AVFigRoutingContextInputContextImpl *)self parentInputContext];

  [(AVInputContext *)parentInputContext inputContextImpl:self didChangeInputDeviceWithInitiator:0];
}

- (void)_routeConfigUpdatedWithID:(__CFString *)d reason:(__CFString *)reason initiator:(__CFString *)initiator endedError:(__CFString *)error deviceID:(__CFString *)iD previousDeviceIDs:(__CFArray *)ds
{
  v12 = *MEMORY[0x1E69AF430];
  if (FigCFEqual())
  {
    [(AVFigRoutingContextInputContextImpl *)self _routeConfigUpdateStartedWithID:d];
  }

  else
  {
    v13 = *MEMORY[0x1E69AF408];
    if (FigCFEqual())
    {
      [(AVInputContext *)[(AVFigRoutingContextInputContextImpl *)self parentInputContext] inputContextImpl:self didChangeInputDeviceWithInitiator:initiator];
    }

    else
    {
      [(AVFigRoutingContextInputContextImpl *)self _routeConfigUpdateEndedWithID:d reason:reason];
    }
  }

  v14 = *MEMORY[0x1E69AF3E8];
  if (FigCFEqual() || (v15 = *MEMORY[0x1E69AF3C8], FigCFEqual()) || (v16 = *MEMORY[0x1E69AF3C0], FigCFEqual()) || (v17 = *MEMORY[0x1E69AF3D0], FigCFEqual()))
  {
    parentInputContext = [(AVFigRoutingContextInputContextImpl *)self parentInputContext];

    [(AVInputContext *)parentInputContext inputContextImpl:self didChangeInputDeviceWithInitiator:initiator];
  }
}

uint64_t __71__AVFigRoutingContextInputContextImpl__routeConfigUpdateStartedWithID___block_invoke(void *a1)
{
  v2 = [MEMORY[0x1E695DF90] dictionaryWithDictionary:*(a1[4] + 56)];
  [v2 setObject:a1[5] forKey:a1[6]];

  result = [v2 copy];
  *(a1[4] + 56) = result;
  return result;
}

- (void)_routeConfigUpdateEndedWithID:(__CFString *)d reason:(__CFString *)reason
{
  v8 = 0;
  v9 = &v8;
  v10 = 0x3052000000;
  v11 = __Block_byref_object_copy__0;
  v12 = __Block_byref_object_dispose__0;
  v13 = 0;
  if (d)
  {
    ivarAccessQueue = self->_ivarAccessQueue;
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __76__AVFigRoutingContextInputContextImpl__routeConfigUpdateEndedWithID_reason___block_invoke;
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

  [v6 changeToTerminalStatusBasedOnInputRouteConfigUpdatedReason:reason];

  _Block_object_dispose(&v8, 8);
}

uint64_t __76__AVFigRoutingContextInputContextImpl__routeConfigUpdateEndedWithID_reason___block_invoke(void *a1)
{
  v2 = [MEMORY[0x1E695DF90] dictionaryWithDictionary:*(a1[4] + 56)];
  *(*(a1[5] + 8) + 40) = [v2 objectForKey:a1[6]];
  [v2 removeObjectForKey:a1[6]];

  result = [v2 copy];
  *(a1[4] + 56) = result;
  return result;
}

- (void)_canSetMainVolumeDidChangeForRoutingContextWithID:(id)d
{
  if ([d isEqualToString:{-[AVFigRoutingContextInputContextImpl ID](self, "ID")}])
  {
    parentInputContext = [(AVFigRoutingContextInputContextImpl *)self parentInputContext];

    [(AVInputContext *)parentInputContext inputContextImplDidChangeCanSetInputGain:self];
  }
}

- (void)_mainVolumeDidChangeForRoutingContextWithID:(id)d
{
  if ([d isEqualToString:{-[AVFigRoutingContextInputContextImpl ID](self, "ID")}])
  {
    parentInputContext = [(AVFigRoutingContextInputContextImpl *)self parentInputContext];

    [(AVInputContext *)parentInputContext inputContextImplDidChangeInputGain:self];
  }
}

- (__CFDictionary)_createSelectRouteOptionsForSetInputDeviceOptions:(id)options
{
  v5 = [options objectForKeyedSubscript:@"AVInputContextSetInputDeviceInitiatorKey"];
  v6 = [options objectForKeyedSubscript:@"AVInputContextSetInputDeviceHostApplicationBundleIDKey"];
  v10 = 0;
  Mutable = CFDictionaryCreateMutable(*MEMORY[0x1E695E480], 0, MEMORY[0x1E695E528], MEMORY[0x1E695E9E8]);
  if ([(AVInputContext *)[(AVFigRoutingContextInputContextImpl *)self parentInputContext] getApplicationProcessID:&v10])
  {
    v8 = [MEMORY[0x1E696AD98] numberWithInt:v10];
    CFDictionarySetValue(Mutable, *MEMORY[0x1E69AF528], v8);
  }

  if (v5)
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      CFDictionarySetValue(Mutable, *MEMORY[0x1E69AF540], v5);
    }
  }

  if (v6)
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      CFDictionarySetValue(Mutable, @"HostApplicationBundleID", v6);
    }
  }

  return Mutable;
}

- (void)setInputDevice:(id)device options:(id)options completionHandler:(id)handler
{
  v8 = [(AVFigRoutingContextInputContextImpl *)self _createSelectRouteOptionsForSetInputDeviceOptions:options];
  v21 = 0;
  v9 = objc_alloc_init(AVRoutingEventWaiter);
  if (AVInputDeviceGetFigRouteDescriptor(device, &v21))
  {
    if (AVOutputContextUsesRoutingContextCallbacks())
    {
      v10 = [[AVFigRoutingContextInputContextCompletionContext alloc] initWithCompletionHandler:handler];
      routingContext = self->_routingContext;
      v12 = v21;
      VTable = CMBaseObjectGetVTable();
      v14 = *(*(VTable + 16) + 216);
      if (v14)
      {
        v15 = *(VTable + 16) + 216;
        v14(routingContext, v12, v8, AVFigRoutingContextModificationCallback, v10);
      }
    }

    else
    {
      v16 = self->_routingContext;
      v17 = v21;
      v18 = AVOutputContextUsesRouteConfigUpdatedNotification();
      v19 = AVMakeSelectRouteDescriptorOperation(v16, v17, v8, v18, 1);
      v20[0] = MEMORY[0x1E69E9820];
      v20[1] = 3221225472;
      v20[2] = __80__AVFigRoutingContextInputContextImpl_setInputDevice_options_completionHandler___block_invoke;
      v20[3] = &unk_1E794E958;
      v20[5] = v9;
      v20[6] = handler;
      v20[4] = v19;
      [(AVRoutingRouteConfigUpdatedFigRoutingContextRouteChangeOperation *)v19 setCompletionBlock:v20];
      [(AVRoutingRouteConfigUpdatedFigRoutingContextRouteChangeOperation *)v19 start];
      if ([(AVRoutingOperation *)v19 isFinished])
      {
        [(AVRoutingEventWaiter *)v9 waitUntilEventIsCompleted];
      }
    }
  }

  else
  {
    [AVFigRoutingContextInputContextImpl setInputDevice:handler options:? completionHandler:?];
  }

  if (v8)
  {
    CFRelease(v8);
  }
}

uint64_t __80__AVFigRoutingContextInputContextImpl_setInputDevice_options_completionHandler___block_invoke(uint64_t a1)
{
  (*(*(a1 + 48) + 16))(*(a1 + 48), [*(a1 + 32) resultInput]);
  v2 = *(a1 + 40);

  return [v2 markEventAsCompleted];
}

- (void)_serverConnectionDied
{
  v3 = (*(self->_routingContextCreator + 2))();
  FigVolumeControllerCopySharedControllerRemote();
  v4 = [objc_alloc(objc_opt_class()) initWithFigRoutingContext:v3 routingContextReplacementBlock:self->_routingContextCreator volumeController:0];
  [(AVInputContext *)[(AVFigRoutingContextInputContextImpl *)self parentInputContext] inputContextImpl:self didExpireWithReplacement:v4];
  if (v3)
  {
    CFRelease(v3);
  }
}

- (id)_createUserPreferredRouteModificationDictionary:(id)dictionary
{
  if (dictionary)
  {
    return [objc_alloc(MEMORY[0x1E695DF20]) initWithObjectsAndKeys:{dictionary, @"HostApplicationBundleID", 0}];
  }

  else
  {
    return 0;
  }
}

- (id)userPreferredInputDevice:(id)device
{
  v11 = 0;
  v4 = [(AVFigRoutingContextInputContextImpl *)self _createUserPreferredRouteModificationDictionary:device];
  routingContext = self->_routingContext;
  VTable = CMBaseObjectGetVTable();
  v7 = *(*(VTable + 16) + 176);
  if (!v7 || (v8 = *(VTable + 16) + 176, v7(routingContext, v4, &v11)))
  {
    [AVFigRoutingContextInputContextImpl userPreferredInputDevice:];
    goto LABEL_7;
  }

  if (!v11)
  {
LABEL_7:
    v9 = 0;
    goto LABEL_8;
  }

  v9 = [AVInputDevice inputDeviceWithRouteDescriptor:v11 withRoutingContext:self->_routingContext];
LABEL_8:

  return v9;
}

- (BOOL)clearUserPreferredInputDevice:(id)device error:(id *)error
{
  v6 = [(AVFigRoutingContextInputContextImpl *)self _createUserPreferredRouteModificationDictionary:device];
  routingContext = self->_routingContext;
  VTable = CMBaseObjectGetVTable();
  v9 = *(*(VTable + 16) + 184);
  if (!v9)
  {
    v11 = -12782;
LABEL_7:
    [(AVFigRoutingContextInputContextImpl *)v11 clearUserPreferredInputDevice:error error:&v14];
    v12 = v14;
    goto LABEL_5;
  }

  v10 = *(VTable + 16) + 184;
  v11 = v9(routingContext, v6);
  if (v11)
  {
    goto LABEL_7;
  }

  v12 = 1;
LABEL_5:

  return v12;
}

- (BOOL)canSetInputGain
{
  v9 = 0;
  volumeController = self->_volumeController;
  if (volumeController)
  {
    routingContext = self->_routingContext;
    v4 = self->_volumeController;
    VTable = CMBaseObjectGetVTable();
    v6 = *(*(VTable + 16) + 40);
    if (!v6 || (v7 = *(VTable + 16) + 40, v6(volumeController, routingContext, &v9)))
    {
      [AVFigRoutingContextInputContextImpl canSetInputGain];
    }
  }

  else
  {
    [AVFigRoutingContextInputContextImpl canSetInputGain];
  }

  return v9 != 0;
}

- (float)inputGain
{
  v9 = 0.0;
  volumeController = self->_volumeController;
  if (volumeController)
  {
    routingContext = self->_routingContext;
    v4 = self->_volumeController;
    VTable = CMBaseObjectGetVTable();
    v6 = *(*(VTable + 16) + 32);
    if (!v6 || (v7 = *(VTable + 16) + 32, v6(volumeController, routingContext, &v9)))
    {
      [AVFigRoutingContextInputContextImpl inputGain];
    }
  }

  else
  {
    [AVFigRoutingContextInputContextImpl inputGain];
  }

  return v9;
}

- (BOOL)setInputGain:(float)gain error:(id *)error
{
  volumeController = self->_volumeController;
  if (volumeController)
  {
    routingContext = self->_routingContext;
    v8 = self->_volumeController;
    VTable = CMBaseObjectGetVTable();
    v10 = *(*(VTable + 16) + 24);
    if (v10)
    {
      v11 = *(VTable + 16) + 24;
      v12 = v10(volumeController, routingContext, gain);
      if (!v12)
      {
        return v12 == 0;
      }
    }

    else
    {
      v12 = -12782;
    }

    FigSignalErrorAtGM();
    if (!error)
    {
      return v12 == 0;
    }
  }

  else
  {
    [AVFigRoutingContextInputContextImpl setInputGain:? error:?];
    v12 = v14;
    if (!error)
    {
      return v12 == 0;
    }
  }

  if (v12)
  {
    *error = AVLocalizedErrorWithUnderlyingOSStatus(v12, 0);
    v12 = 1;
  }

  return v12 == 0;
}

- (AVFigRoutingContextInputContextImpl)initWithRoutingContextUUID:(id)d type:(id)type
{
  v25[1] = *MEMORY[0x1E69E9840];
  routingContextFactory = [objc_opt_class() routingContextFactory];
  v24 = *MEMORY[0x1E69AF350];
  v25[0] = d;
  v8 = [MEMORY[0x1E695DF90] dictionaryWithDictionary:{objc_msgSend(MEMORY[0x1E695DF20], "dictionaryWithObjects:forKeys:count:", v25, &v24, 1)}];
  number = 0;
  cf = 0;
  valuePtr = 0;
  v20 = 0;
  if (type)
  {
    v9 = MEMORY[0x1E696AD98];
    if ([type isEqualToString:@"AVInputContextTypeSharedSystemAudioInput"])
    {
      v10 = 13;
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
    FigVolumeControllerCopySharedControllerRemote();
    v18[0] = MEMORY[0x1E69E9820];
    v18[1] = 3221225472;
    v18[2] = __71__AVFigRoutingContextInputContextImpl_initWithRoutingContextUUID_type___block_invoke;
    v18[3] = &unk_1E794E890;
    v19 = valuePtr;
    v18[4] = v8;
    v18[5] = routingContextFactory;
    self = [(AVFigRoutingContextInputContextImpl *)self initWithFigRoutingContext:cf routingContextReplacementBlock:v18 volumeController:v20];
    selfCopy = self;
  }

  else
  {
    selfCopy = 0;
  }

  if (number)
  {
    CFRelease(number);
  }

  if (cf)
  {
    CFRelease(cf);
  }

  if (v20)
  {
    CFRelease(v20);
  }

  v16 = *MEMORY[0x1E69E9840];
  return selfCopy;
}

- (AVFigRoutingContextInputContextImpl)initWithFigRoutingContext:(OpaqueFigRoutingContext *)context routingContextReplacementBlock:(id)block volumeController:(OpaqueFigVolumeControllerState *)controller
{
  number[20] = *MEMORY[0x1E69E9840];
  v9 = [AVRoutingCMNotificationDispatcher notificationDispatcherForCMNotificationCenter:CMNotificationCenterGetDefaultLocalCenter()];
  number[0] = 0;
  valuePtr = 0;
  v37.receiver = self;
  v37.super_class = AVFigRoutingContextInputContextImpl;
  v10 = [(AVFigRoutingContextInputContextImpl *)&v37 init];
  if (!v10)
  {
    goto LABEL_11;
  }

  v11 = [block copy];
  v10->_routingContextCreator = v11;
  if (!v11)
  {
    goto LABEL_11;
  }

  if (!context)
  {
    v16 = 0;
    v10->_routingContext = 0;
    goto LABEL_21;
  }

  v12 = CFRetain(context);
  v10->_routingContext = v12;
  if (!v12 || (v13 = v12, (v14 = *(*(CMBaseObjectGetVTable() + 8) + 48)) == 0) || v14(v13, *MEMORY[0x1E69AF4E0], *MEMORY[0x1E695E480], number) || !CFNumberGetValue(number[0], kCFNumberIntType, &valuePtr))
  {
LABEL_11:
    v16 = 0;
    goto LABEL_21;
  }

  if (!controller)
  {
    v10->_volumeController = 0;
LABEL_14:
    os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
    OUTLINED_FUNCTION_2();
    fig_log_call_emit_and_clean_up_after_send_and_compose();
    goto LABEL_15;
  }

  v15 = CFRetain(controller);
  v10->_volumeController = v15;
  if (!v15)
  {
    goto LABEL_14;
  }

LABEL_15:
  v10->_usesRouteConfigUpdatedNotification = AVOutputContextUsesRouteConfigUpdatedNotification();
  v10->_weakObserver = [[AVRoutingWeakReference alloc] initWithReferencedObject:v10];
  v10->_ivarAccessQueue = av_readwrite_dispatch_queue_create("com.apple.avfoundation.inputcontext.figroutingcontext");
  v10->_destinationChangesForRouteChangeIDs = objc_alloc_init(MEMORY[0x1E695DF20]);
  weakObserver = v10->_weakObserver;
  routingContext = v10->_routingContext;
  if (v10->_usesRouteConfigUpdatedNotification)
  {
    v20 = *MEMORY[0x1E69AF4A8];
    v21 = AVFigRoutingContextSystemAudioRouteConfigUpdated;
  }

  else
  {
    v22 = *MEMORY[0x1E69AF478];
    [OUTLINED_FUNCTION_1() addListenerWithWeakReference:? callback:? name:? object:? flags:?];
    v23 = v10->_weakObserver;
    v24 = *MEMORY[0x1E69AF4A0];
    v25 = v10->_routingContext;
    [OUTLINED_FUNCTION_1() addListenerWithWeakReference:? callback:? name:? object:? flags:?];
    weakObserver = v10->_weakObserver;
    v20 = *MEMORY[0x1E69AF498];
    routingContext = v10->_routingContext;
    v21 = AVFigRoutingContextRouteChangeEnded;
  }

  [v9 addListenerWithWeakReference:weakObserver callback:v21 name:v20 object:routingContext flags:{0, v35, v36}];
  v26 = v10->_weakObserver;
  v27 = *MEMORY[0x1E69AF4B8];
  v28 = v10->_routingContext;
  [OUTLINED_FUNCTION_1() addListenerWithWeakReference:? callback:? name:? object:? flags:?];
  if (v10->_volumeController)
  {
    v29 = v10->_weakObserver;
    v30 = *MEMORY[0x1E69AF5C8];
    [OUTLINED_FUNCTION_1() addListenerWithWeakReference:? callback:? name:? object:? flags:?];
    v31 = v10->_weakObserver;
    v32 = *MEMORY[0x1E69AF5F8];
    [OUTLINED_FUNCTION_1() addListenerWithWeakReference:? callback:? name:? object:? flags:?];
  }

  v16 = v10;
LABEL_21:
  if (number[0])
  {
    CFRelease(number[0]);
  }

  v33 = *MEMORY[0x1E69E9840];
  return v16;
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
  if (cf[0] || (os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type(), os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT), OUTLINED_FUNCTION_2(), fig_log_call_emit_and_clean_up_after_send_and_compose(), (v6 = cf[0]) != 0))
  {
    CFRelease(v6);
  }

  result = v5;
  v9 = *MEMORY[0x1E69E9840];
  return result;
}

- (NSString)inputContextType
{
  number = 0;
  routingContext = self->_routingContext;
  v3 = *(*(CMBaseObjectGetVTable() + 8) + 48);
  if (v3 && !v3(routingContext, *MEMORY[0x1E69AF4E0], *MEMORY[0x1E695E480], &number) && (valuePtr = 0, CFNumberGetValue(number, kCFNumberIntType, &valuePtr)))
  {
    if (valuePtr == 1)
    {
      v4 = @"AVInputContextTypeSharedSystemAudioInput";
    }

    else
    {
      v4 = 0;
    }
  }

  else
  {
    v4 = 0;
  }

  if (number)
  {
    CFRelease(number);
  }

  return &v4->isa;
}

- (void)_routeChangeStartedWithID:(id)d
{
  v5 = objc_alloc_init(AVInputContextDestinationChange);
  [(AVInputContextDestinationChange *)v5 markAsInProgress];
  [(AVInputContext *)[(AVFigRoutingContextInputContextImpl *)self parentInputContext] inputContextImpl:self didInitiateDestinationChange:v5];
  if (d)
  {
    v6 = OUTLINED_FUNCTION_0_0();
    v8 = 3221225472;
    v9 = __65__AVFigRoutingContextInputContextImpl__routeChangeStartedWithID___block_invoke;
    v10 = &unk_1E794E8B8;
    selfCopy = self;
    v12 = v5;
    dCopy = d;
    av_readwrite_dispatch_queue_write(v6, block);
  }
}

- (void)_routeConfigUpdateStartedWithID:(__CFString *)d
{
  v5 = objc_alloc_init(AVInputContextDestinationChange);
  [(AVInputContextDestinationChange *)v5 markAsInProgress];
  [(AVInputContext *)[(AVFigRoutingContextInputContextImpl *)self parentInputContext] inputContextImpl:self didInitiateDestinationChange:v5];
  if (d)
  {
    v6 = OUTLINED_FUNCTION_0_0();
    v8 = 3221225472;
    v9 = __71__AVFigRoutingContextInputContextImpl__routeConfigUpdateStartedWithID___block_invoke;
    v10 = &unk_1E794E908;
    selfCopy = self;
    v12 = v5;
    dCopy = d;
    av_readwrite_dispatch_queue_write(v6, block);
  }
}

- (void)setInputDevice:(uint64_t)a1 options:completionHandler:.cold.1(uint64_t a1)
{
  v2 = objc_alloc_init(AVInputContextDestinationChange);
  [(AVInputContextDestinationChange *)v2 markAsFailed];
  (*(a1 + 16))(a1, v2);
}

- (uint64_t)clearUserPreferredInputDevice:(_BYTE *)a3 error:.cold.1(signed int a1, uint64_t *a2, _BYTE *a3)
{
  result = FigSignalErrorAtGM();
  if (a2)
  {
    result = AVLocalizedErrorWithUnderlyingOSStatus(a1, 0);
    *a2 = result;
  }

  *a3 = 0;
  return result;
}

- (uint64_t)setInputGain:(_DWORD *)a1 error:.cold.1(_DWORD *a1)
{
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

@end