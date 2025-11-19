@interface AVFigRouteDiscovererOutputDeviceDiscoverySessionImpl
- (AVAudioSession)targetAudioSession;
- (AVFigRouteDiscovererOutputDeviceDiscoverySessionImpl)init;
- (AVFigRouteDiscovererOutputDeviceDiscoverySessionImpl)initWithFigRouteDiscovererCreator:(id)a3;
- (AVOutputDeviceDiscoverySessionAvailableOutputDevices)availableOutputDevicesObject;
- (BOOL)devicePresenceDetected;
- (uint64_t)_serverDied;
- (void)_availableGroupsChanged;
- (void)_availableRoutesChanged;
- (void)_endpointDescriptorChanged;
- (void)_routePresentChanged;
- (void)_serverDied;
- (void)dealloc;
- (void)outputDeviceDiscoverySessionBluetoothOnlyDiscoveryDidChange:(id)a3;
- (void)outputDeviceDiscoverySessionCachedDiscoveryDidChange:(id)a3;
- (void)outputDeviceDiscoverySessionDidChangeDiscoveryMode:(id)a3 forClientIdentifiers:(id)a4;
- (void)outputDeviceDiscoverySessionFastDiscoveryDidChange:(id)a3;
- (void)setTargetAudioSession:(id)a3;
@end

@implementation AVFigRouteDiscovererOutputDeviceDiscoverySessionImpl

- (AVOutputDeviceDiscoverySessionAvailableOutputDevices)availableOutputDevicesObject
{
  if (+[AVOutputDevice prefersRouteDescriptors])
  {
    cf = 0;
    discoverer = self->_discoverer;
    v4 = *MEMORY[0x1E695E480];
    VTable = CMBaseObjectGetVTable();
    v6 = *(*(VTable + 8) + 48);
    if (!v6 || (v7 = *(VTable + 8) + 48, !v6(discoverer, *MEMORY[0x1E69AF310], v4, &cf) ? (v8 = cf == 0) : (v8 = 1), v8))
    {
      cf = CFArrayCreate(v4, 0, 0, MEMORY[0x1E695E9C0]);
    }

    v9 = [AVFigRouteDescriptorOutputDeviceDiscoverySessionAvailableOutputDevicesImpl alloc];
    v10 = [(AVFigRouteDescriptorOutputDeviceDiscoverySessionAvailableOutputDevicesImpl *)v9 initWithRouteDescriptors:cf routeDiscoverer:self->_discoverer];
  }

  else
  {
    cf = 0;
    v11 = self->_discoverer;
    v12 = *MEMORY[0x1E695E480];
    v13 = CMBaseObjectGetVTable();
    v14 = *(*(v13 + 8) + 48);
    if (!v14 || (v15 = *(v13 + 8) + 48, !v14(v11, *MEMORY[0x1E69AF318], v12, &cf) ? (v16 = cf == 0) : (v16 = 1), v16))
    {
      cf = CFArrayCreate(v12, 0, 0, MEMORY[0x1E695E9C0]);
    }

    v17 = [AVFigEndpointOutputDeviceDiscoverySessionAvailableOutputDevicesImpl alloc];
    v10 = [(AVFigEndpointOutputDeviceDiscoverySessionAvailableOutputDevicesImpl *)v17 initWithAvailableFigEndpoints:cf];
  }

  v18 = v10;
  if (cf)
  {
    CFRelease(cf);
  }

  v19 = [[AVOutputDeviceDiscoverySessionAvailableOutputDevices alloc] initWithOutputDeviceDiscoverySessionAvailableOutputDevicesImpl:v18];

  return v19;
}

- (void)dealloc
{
  v3 = [AVRoutingCMNotificationDispatcher notificationDispatcherForCMNotificationCenter:CMNotificationCenterGetDefaultLocalCenter()];
  if (self->_discoverer)
  {
    v4 = v3;
    [v3 removeListenerWithWeakReference:self->_weakObserver callback:AVFigRouteDiscovererAvailableRoutesChanged_0 name:*MEMORY[0x1E69AF2E8] object:?];
    [v4 removeListenerWithWeakReference:self->_weakObserver callback:AVFigRouteDiscovererRoutePresentChanged_0 name:*MEMORY[0x1E69AF2F8] object:self->_discoverer];
    [v4 removeListenerWithWeakReference:self->_weakObserver callback:AVFigRouteDiscovererRouteServerDied_0 name:*MEMORY[0x1E69AF300] object:self->_discoverer];
    [v4 removeListenerWithWeakReference:self->_weakObserver callback:AVFigRouteDiscovererEndpointDescriptorChanged_0 name:*MEMORY[0x1E69AF2F0] object:self->_discoverer];
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
  v10.super_class = AVFigRouteDiscovererOutputDeviceDiscoverySessionImpl;
  [(AVFigRouteDiscovererOutputDeviceDiscoverySessionImpl *)&v10 dealloc];
}

- (void)_availableRoutesChanged
{
  v3 = [(AVFigRouteDiscovererOutputDeviceDiscoverySessionImpl *)self parentOutputDeviceDiscoverySession];

  [(AVOutputDeviceDiscoverySession *)v3 outputDeviceDiscoverySessionImplDidChangeAvailableOutputDevices:self];
}

- (void)_routePresentChanged
{
  v3 = [(AVFigRouteDiscovererOutputDeviceDiscoverySessionImpl *)self parentOutputDeviceDiscoverySession];

  [(AVOutputDeviceDiscoverySession *)v3 outputDeviceDiscoverySessionImplDidChangeAvailableOutputDevices:self];
}

- (AVFigRouteDiscovererOutputDeviceDiscoverySessionImpl)init
{
  v4 = MEMORY[0x1E695DF30];
  v5 = *MEMORY[0x1E695D940];
  v6 = NSStringFromSelector(sel_initWithFigRouteDiscovererCreator_);
  v12 = [v4 exceptionWithName:v5 reason:AVMethodExceptionReasonWithObjectAndSelector(self userInfo:{a2, @"Not available.  Use %@ instead", v7, v8, v9, v10, v11, v6), 0}];
  objc_exception_throw(v12);
}

- (void)setTargetAudioSession:(id)a3
{
  if (a3)
  {
    [a3 opaqueSessionID];
  }

  v4 = *MEMORY[0x1E695E480];
  SInt32 = FigCFNumberCreateSInt32();
  discoverer = self->_discoverer;
  VTable = CMBaseObjectGetVTable();
  v8 = *(*(VTable + 8) + 56);
  if (v8)
  {
    v9 = *(VTable + 8) + 56;
    v8(discoverer, *MEMORY[0x1E69AF308], SInt32);
  }

  if (SInt32)
  {

    CFRelease(SInt32);
  }
}

- (void)_availableGroupsChanged
{
  v3 = [(AVFigRouteDiscovererOutputDeviceDiscoverySessionImpl *)self parentOutputDeviceDiscoverySession];

  [(AVOutputDeviceDiscoverySession *)v3 outputDeviceDiscoverySessionImplDidChangeAvailableOutputDeviceGroups:self];
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

    goto LABEL_4;
  }

  v6 = CFBooleanGetValue(BOOLean) != 0;
  v5 = BOOLean;
  if (BOOLean)
  {
LABEL_4:
    CFRelease(v5);
  }

  return v6;
}

- (void)_endpointDescriptorChanged
{
  v3 = [(AVFigRouteDiscovererOutputDeviceDiscoverySessionImpl *)self parentOutputDeviceDiscoverySession];

  [(AVOutputDeviceDiscoverySession *)v3 outputDeviceDiscoverySessionImplDidChangeAvailableOutputDevices:self];
}

- (void)_serverDied
{
  v3 = [[AVFigRouteDiscovererOutputDeviceDiscoverySessionImpl alloc] initWithFigRouteDiscovererCreator:self->_routeDiscovererCreator];
  if (v3)
  {
    [(AVOutputDeviceDiscoverySession *)[(AVFigRouteDiscovererOutputDeviceDiscoverySessionImpl *)self parentOutputDeviceDiscoverySession] outputDeviceDiscoverySessionImpl:self didExpireWithReplacement:v3];
  }

  else
  {
    [AVFigRouteDiscovererOutputDeviceDiscoverySessionImpl _serverDied];
  }
}

- (void)outputDeviceDiscoverySessionBluetoothOnlyDiscoveryDidChange:(id)a3
{
  v10 = *MEMORY[0x1E69E9840];
  v4 = [a3 onlyDiscoversBluetoothDevices];
  if (dword_1ED6F6BC8)
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
    v8(discoverer, *MEMORY[0x1E69AF320], *v7);
  }

  v9 = *MEMORY[0x1E69E9840];
}

- (void)outputDeviceDiscoverySessionCachedDiscoveryDidChange:(id)a3
{
  v10 = *MEMORY[0x1E69E9840];
  v4 = [a3 cachedDiscoveryEnabled];
  if (dword_1ED6F6BC8)
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
    v8(discoverer, @"CachedDiscovery", *v7);
  }

  v9 = *MEMORY[0x1E69E9840];
}

- (void)outputDeviceDiscoverySessionFastDiscoveryDidChange:(id)a3
{
  v10 = *MEMORY[0x1E69E9840];
  v4 = [a3 fastDiscoveryEnabled];
  if (dword_1ED6F6BC8)
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

- (void)outputDeviceDiscoverySessionDidChangeDiscoveryMode:(id)a3 forClientIdentifiers:(id)a4
{
  v27 = *MEMORY[0x1E69E9840];
  v6 = [a3 discoveryMode];
  v7 = 0;
  if (v6 > 1)
  {
    if (v6 == 2)
    {
      v8 = MEMORY[0x1E69AF2D0];
    }

    else
    {
      if (v6 != 3)
      {
        goto LABEL_11;
      }

      v8 = MEMORY[0x1E69AF2C8];
    }
  }

  else if (v6)
  {
    if (v6 != 1)
    {
      goto LABEL_11;
    }

    v8 = MEMORY[0x1E69AF2E0];
  }

  else
  {
    v8 = MEMORY[0x1E69AF2D8];
  }

  v7 = *v8;
LABEL_11:
  if (dword_1ED6F6BC8)
  {
    v25 = 0;
    type = OS_LOG_TYPE_DEFAULT;
    os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
    fig_log_call_emit_and_clean_up_after_send_and_compose();
  }

  discoverer = self->_discoverer;
  v11 = *(*(CMBaseObjectGetVTable() + 8) + 56);
  if (v11)
  {
    v11(discoverer, *MEMORY[0x1E69AF328], v7);
  }

  Mutable = CFDictionaryCreateMutable(*MEMORY[0x1E695E480], 0, MEMORY[0x1E695E528], MEMORY[0x1E695E9E8]);
  v20 = 0u;
  v21 = 0u;
  v22 = 0u;
  v23 = 0u;
  v13 = [a4 countByEnumeratingWithState:&v20 objects:v26 count:16];
  if (v13)
  {
    v14 = v13;
    v15 = *v21;
    do
    {
      for (i = 0; i != v14; ++i)
      {
        if (*v21 != v15)
        {
          objc_enumerationMutation(a4);
        }

        CFDictionarySetValue(Mutable, *(*(&v20 + 1) + 8 * i), v7);
      }

      v14 = [a4 countByEnumeratingWithState:&v20 objects:v26 count:16];
    }

    while (v14);
  }

  v17 = self->_discoverer;
  v18 = *(*(CMBaseObjectGetVTable() + 8) + 56);
  if (v18)
  {
    v18(v17, *MEMORY[0x1E69AF330], Mutable);
  }

  if (Mutable)
  {
    CFRelease(Mutable);
  }

  v19 = *MEMORY[0x1E69E9840];
}

- (AVFigRouteDiscovererOutputDeviceDiscoverySessionImpl)initWithFigRouteDiscovererCreator:(id)a3
{
  [AVRoutingCMNotificationDispatcher notificationDispatcherForCMNotificationCenter:CMNotificationCenterGetDefaultLocalCenter()];
  v25.receiver = self;
  v25.super_class = AVFigRouteDiscovererOutputDeviceDiscoverySessionImpl;
  v5 = [(AVFigRouteDiscovererOutputDeviceDiscoverySessionImpl *)&v25 init];
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

- (AVAudioSession)targetAudioSession
{
  valuePtr = 0;
  number = 0;
  discoverer = self->_discoverer;
  v3 = *(*(CMBaseObjectGetVTable() + 8) + 48);
  if (!v3 || v3(discoverer, *MEMORY[0x1E69AF308], *MEMORY[0x1E695E480], &number))
  {
    goto LABEL_6;
  }

  if (!number)
  {
    return 0;
  }

  CFNumberGetValue(number, kCFNumberSInt32Type, &valuePtr);
  if (valuePtr)
  {
    v4 = [MEMORY[0x1E6958460] retrieveSessionWithID:?];
  }

  else
  {
LABEL_6:
    v4 = 0;
  }

  if (number)
  {
    CFRelease(number);
  }

  return v4;
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