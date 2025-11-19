@interface AVFigRouteDiscovererInputDeviceDiscoverySessionImpl
- (AVFigRouteDiscovererInputDeviceDiscoverySessionImpl)init;
- (AVFigRouteDiscovererInputDeviceDiscoverySessionImpl)initWithFigRouteDiscovererCreator:(id)a3;
- (AVInputDevice)fallbackInputDevice;
- (BOOL)devicePresenceDetected;
- (NSArray)availableInputDevices;
- (NSNumber)audioSessionId;
- (uint64_t)_serverDied;
- (void)_availableRoutesChanged;
- (void)_endpointDescriptorChanged;
- (void)_routePresentChanged;
- (void)_serverDied;
- (void)dealloc;
- (void)inputDeviceDiscoverySessionDidChangeDiscoveryMode:(id)a3 forClientIdentifiers:(id)a4;
- (void)inputDeviceDiscoverySessionFastDiscoveryDidChange:(id)a3;
- (void)setAudioSessionId:(id)a3;
@end

@implementation AVFigRouteDiscovererInputDeviceDiscoverySessionImpl

- (void)_availableRoutesChanged
{
  v3 = [(AVFigRouteDiscovererInputDeviceDiscoverySessionImpl *)self parentInputDeviceDiscoverySession];

  [(AVInputDeviceDiscoverySession *)v3 inputDeviceDiscoverySessionImplDidChangeAvailableInputDevices:self];
}

- (void)_routePresentChanged
{
  v3 = [(AVFigRouteDiscovererInputDeviceDiscoverySessionImpl *)self parentInputDeviceDiscoverySession];

  [(AVInputDeviceDiscoverySession *)v3 inputDeviceDiscoverySessionImplDidChangeAvailableInputDevices:self];
}

- (AVFigRouteDiscovererInputDeviceDiscoverySessionImpl)init
{
  v4 = MEMORY[0x1E695DF30];
  v5 = *MEMORY[0x1E695D940];
  v6 = NSStringFromSelector(sel_initWithFigRouteDiscovererCreator_);
  v12 = [v4 exceptionWithName:v5 reason:AVMethodExceptionReasonWithObjectAndSelector(self userInfo:{a2, @"Not available.  Use %@ instead", v7, v8, v9, v10, v11, v6), 0}];
  objc_exception_throw(v12);
}

- (void)dealloc
{
  v3 = [AVRoutingCMNotificationDispatcher notificationDispatcherForCMNotificationCenter:CMNotificationCenterGetDefaultLocalCenter()];
  if (self->_discoverer)
  {
    v4 = v3;
    [v3 removeListenerWithWeakReference:self->_weakObserver callback:AVFigRouteDiscovererAvailableRoutesChanged name:*MEMORY[0x1E69AF2E8] object:?];
    [v4 removeListenerWithWeakReference:self->_weakObserver callback:AVFigRouteDiscovererRoutePresentChanged name:*MEMORY[0x1E69AF2F8] object:self->_discoverer];
    [v4 removeListenerWithWeakReference:self->_weakObserver callback:AVFigRouteDiscovererRouteServerDied name:*MEMORY[0x1E69AF300] object:self->_discoverer];
    [v4 removeListenerWithWeakReference:self->_weakObserver callback:AVFigRouteDiscovererEndpointDescriptorChanged name:*MEMORY[0x1E69AF2F0] object:self->_discoverer];
    discoverer = self->_discoverer;
    VTable = CMBaseObjectGetVTable();
    v7 = *(*(VTable + 8) + 56);
    if (v7)
    {
      v8 = *(VTable + 8) + 56;
      v7(discoverer, *MEMORY[0x1E69AF328], *MEMORY[0x1E69AF2D8]);
    }

    v9 = self->_discoverer;
    if (v9)
    {
      CFRelease(v9);
    }
  }

  v10.receiver = self;
  v10.super_class = AVFigRouteDiscovererInputDeviceDiscoverySessionImpl;
  [(AVFigRouteDiscovererInputDeviceDiscoverySessionImpl *)&v10 dealloc];
}

- (void)setAudioSessionId:(id)a3
{
  discoverer = self->_discoverer;
  VTable = CMBaseObjectGetVTable();
  v6 = *(*(VTable + 8) + 56);
  if (v6)
  {
    v7 = *(VTable + 8) + 56;
    v6(discoverer, *MEMORY[0x1E69AF308], a3);
  }

  if (a3)
  {

    CFRelease(a3);
  }
}

- (NSArray)availableInputDevices
{
  v22 = *MEMORY[0x1E69E9840];
  v3 = [MEMORY[0x1E695DF70] array];
  cf = 0;
  discoverer = self->_discoverer;
  v5 = *MEMORY[0x1E695E480];
  v6 = *(*(CMBaseObjectGetVTable() + 8) + 48);
  if (!v6 || ((v7 = v6(discoverer, *MEMORY[0x1E69AF310], v5, &cf), v8 = cf, !v7) ? (v9 = cf == 0) : (v9 = 1), v9))
  {
    v8 = CFArrayCreate(v5, 0, 0, MEMORY[0x1E695E9C0]);
    cf = v8;
  }

  v18 = 0u;
  v19 = 0u;
  v16 = 0u;
  v17 = 0u;
  v10 = [v8 countByEnumeratingWithState:&v16 objects:v21 count:16];
  if (v10)
  {
    v11 = v10;
    v12 = *v17;
    do
    {
      for (i = 0; i != v11; ++i)
      {
        if (*v17 != v12)
        {
          objc_enumerationMutation(v8);
        }

        [(NSArray *)v3 addObject:[AVInputDevice inputDeviceWithRouteDescriptor:*(*(&v16 + 1) + 8 * i) routeDiscoverer:self->_discoverer]];
      }

      v11 = [v8 countByEnumeratingWithState:&v16 objects:v21 count:16];
    }

    while (v11);
  }

  if (cf)
  {
    CFRelease(cf);
  }

  v14 = *MEMORY[0x1E69E9840];
  return v3;
}

- (void)_endpointDescriptorChanged
{
  v3 = [(AVFigRouteDiscovererInputDeviceDiscoverySessionImpl *)self parentInputDeviceDiscoverySession];

  [(AVInputDeviceDiscoverySession *)v3 inputDeviceDiscoverySessionImplDidChangeAvailableInputDevices:self];
}

- (void)_serverDied
{
  v3 = [[AVFigRouteDiscovererInputDeviceDiscoverySessionImpl alloc] initWithFigRouteDiscovererCreator:self->_routeDiscovererCreator];
  if (v3)
  {
    [(AVInputDeviceDiscoverySession *)[(AVFigRouteDiscovererInputDeviceDiscoverySessionImpl *)self parentInputDeviceDiscoverySession] inputDeviceDiscoverySessionImpl:self didExpireWithReplacement:v3];
  }

  else
  {
    [AVFigRouteDiscovererInputDeviceDiscoverySessionImpl _serverDied];
  }
}

- (void)inputDeviceDiscoverySessionDidChangeDiscoveryMode:(id)a3 forClientIdentifiers:(id)a4
{
  v28 = *MEMORY[0x1E69E9840];
  v6 = [a3 discoveryMode];
  switch(v6)
  {
    case 2:
      v7 = MEMORY[0x1E69AF2D0];
      goto LABEL_7;
    case 1:
      v7 = MEMORY[0x1E69AF2E0];
      goto LABEL_7;
    case 0:
      v7 = MEMORY[0x1E69AF2D8];
LABEL_7:
      v8 = *v7;
      goto LABEL_9;
  }

  v8 = 0;
LABEL_9:
  discoverer = self->_discoverer;
  VTable = CMBaseObjectGetVTable();
  v11 = *(*(VTable + 8) + 56);
  if (v11)
  {
    v12 = *(VTable + 8) + 56;
    v11(discoverer, *MEMORY[0x1E69AF328], v8);
  }

  Mutable = CFDictionaryCreateMutable(*MEMORY[0x1E695E480], 0, MEMORY[0x1E695E528], MEMORY[0x1E695E9E8]);
  v23 = 0u;
  v24 = 0u;
  v25 = 0u;
  v26 = 0u;
  v14 = [a4 countByEnumeratingWithState:&v23 objects:v27 count:16];
  if (v14)
  {
    v15 = v14;
    v16 = *v24;
    do
    {
      for (i = 0; i != v15; ++i)
      {
        if (*v24 != v16)
        {
          objc_enumerationMutation(a4);
        }

        CFDictionarySetValue(Mutable, *(*(&v23 + 1) + 8 * i), v8);
      }

      v15 = [a4 countByEnumeratingWithState:&v23 objects:v27 count:16];
    }

    while (v15);
  }

  v18 = self->_discoverer;
  v19 = CMBaseObjectGetVTable();
  v20 = *(*(v19 + 8) + 56);
  if (v20)
  {
    v21 = *(v19 + 8) + 56;
    v20(v18, *MEMORY[0x1E69AF330], Mutable);
  }

  if (Mutable)
  {
    CFRelease(Mutable);
  }

  v22 = *MEMORY[0x1E69E9840];
}

- (void)inputDeviceDiscoverySessionFastDiscoveryDidChange:(id)a3
{
  v10 = *MEMORY[0x1E69E9840];
  v4 = [a3 fastDiscoveryEnabled];
  if (dword_1ED6F6BA8)
  {
    os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
    fig_log_call_emit_and_clean_up_after_send_and_compose();
  }

  discoverer = self->_discoverer;
  if (v4)
  {
    v7 = MEMORY[0x1E695E4D0];
  }

  else
  {
    v7 = MEMORY[0x1E695E4C0];
  }

  v8 = *(*(CMBaseObjectGetVTable() + 8) + 56);
  if (v8)
  {
    v8(discoverer, @"FastDiscoveryEnabled", *v7);
  }

  v9 = *MEMORY[0x1E69E9840];
}

- (AVFigRouteDiscovererInputDeviceDiscoverySessionImpl)initWithFigRouteDiscovererCreator:(id)a3
{
  [AVRoutingCMNotificationDispatcher notificationDispatcherForCMNotificationCenter:CMNotificationCenterGetDefaultLocalCenter()];
  v25.receiver = self;
  v25.super_class = AVFigRouteDiscovererInputDeviceDiscoverySessionImpl;
  v5 = [(AVFigRouteDiscovererInputDeviceDiscoverySessionImpl *)&v25 init];
  v6 = [a3 copy];
  *(v5 + 1) = v6;
  if (!v6)
  {
    goto LABEL_11;
  }

  v7 = v6;
  v8 = 0;
  do
  {
    v9 = (*(v7 + 16))(v7);
    if (v9)
    {
      v10 = 1;
    }

    else
    {
      v10 = v8 >= 4;
    }

    ++v8;
  }

  while (!v10);
  *(v5 + 2) = v9;
  if (v9)
  {
    v11 = [[AVRoutingWeakReference alloc] initWithReferencedObject:v5];
    *(v5 + 3) = v11;
    v14 = OUTLINED_FUNCTION_0(v11, v12, v11, v13, *MEMORY[0x1E69AF2E8], *(v5 + 2));
    v17 = OUTLINED_FUNCTION_0(v14, v15, *(v5 + 3), v16, *MEMORY[0x1E69AF2F8], *(v5 + 2));
    v20 = OUTLINED_FUNCTION_0(v17, v18, *(v5 + 3), v19, *MEMORY[0x1E69AF300], *(v5 + 2));
    OUTLINED_FUNCTION_0(v20, v21, *(v5 + 3), v22, *MEMORY[0x1E69AF2F0], *(v5 + 2));
    v23 = v5;
  }

  else
  {
LABEL_11:
    v23 = 0;
  }

  return v23;
}

- (NSNumber)audioSessionId
{
  number = 0;
  valuePtr = 0;
  discoverer = self->_discoverer;
  v3 = *(*(CMBaseObjectGetVTable() + 8) + 48);
  if (v3)
  {
    v4 = v3(discoverer, *MEMORY[0x1E69AF308], *MEMORY[0x1E695E480], &number);
    v5 = number;
    if (!v4)
    {
      if (!number)
      {
        return valuePtr;
      }

      CFNumberGetValue(number, kCFNumberSInt32Type, &valuePtr);
      v5 = number;
    }

    if (v5)
    {
      CFRelease(v5);
    }
  }

  return valuePtr;
}

- (BOOL)devicePresenceDetected
{
  BOOLean = 0;
  discoverer = self->_discoverer;
  v3 = *(*(CMBaseObjectGetVTable() + 8) + 48);
  if (!v3)
  {
    return 0;
  }

  v4 = v3(discoverer, *MEMORY[0x1E69AF338], *MEMORY[0x1E695E480], &BOOLean);
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

- (AVInputDevice)fallbackInputDevice
{
  v9 = 0;
  discoverer = self->_discoverer;
  VTable = CMBaseObjectGetVTable();
  v5 = *(*(VTable + 8) + 48);
  if (!v5 || (v6 = *(VTable + 8) + 48, v5(discoverer, @"fallbackRouteDescriptor", *MEMORY[0x1E695E480], &v9)))
  {
    FigSignalErrorAtGM();
    goto LABEL_7;
  }

  if (!v9)
  {
LABEL_7:
    v7 = 0;
    goto LABEL_8;
  }

  v7 = [AVInputDevice inputDeviceWithRouteDescriptor:v9 routeDiscoverer:self->_discoverer];
LABEL_8:

  return v7;
}

- (uint64_t)_serverDied
{
  v3 = *MEMORY[0x1E69E9840];
  os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
  os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
  result = fig_log_call_emit_and_clean_up_after_send_and_compose();
  v2 = *MEMORY[0x1E69E9840];
  return result;
}

@end