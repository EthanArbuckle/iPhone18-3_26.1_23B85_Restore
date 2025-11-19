@interface AVOutputDeviceDiscoverySession
+ (id)outputDeviceDiscoverySessionFactory;
+ (void)initialize;
- (AVAudioSession)targetAudioSession;
- (AVOutputDeviceDiscoverySession)initWithDeviceFeatures:(unint64_t)a3;
- (AVOutputDeviceDiscoverySession)initWithOutputDeviceDiscoverySessionImpl:(id)a3;
- (AVOutputDeviceDiscoverySessionAvailableOutputDevices)availableOutputDevicesObject;
- (BOOL)cachedDiscoveryEnabled;
- (BOOL)devicePresenceDetected;
- (BOOL)fastDiscoveryEnabled;
- (BOOL)onlyDiscoversBluetoothDevices;
- (NSArray)availableOutputDevices;
- (OpaqueFigRouteDiscoverer)routeDiscoverer;
- (id)impl;
- (int64_t)discoveryMode;
- (void)dealloc;
- (void)outputDeviceDiscoverySessionImpl:(id)a3 didExpireWithReplacement:(id)a4;
- (void)outputDeviceDiscoverySessionImplDidChangeAvailableOutputDeviceGroups:(id)a3;
- (void)outputDeviceDiscoverySessionImplDidChangeAvailableOutputDevices:(id)a3;
- (void)setCachedDiscoveryEnabled:(BOOL)a3;
- (void)setDiscoveryMode:(int64_t)a3 forClientIdentifiers:(id)a4;
- (void)setFastDiscoveryEnabled:(BOOL)a3;
- (void)setOnlyDiscoversBluetoothDevices:(BOOL)a3;
- (void)setTargetAudioSession:(id)a3;
@end

@implementation AVOutputDeviceDiscoverySession

- (void)dealloc
{
  outputDeviceDiscoverySession = self->_outputDeviceDiscoverySession;
  if (outputDeviceDiscoverySession)
  {

    outputDeviceDiscoverySession = self->_outputDeviceDiscoverySession;
    ivarAccessQueue = outputDeviceDiscoverySession->ivarAccessQueue;
    if (ivarAccessQueue)
    {
      dispatch_release(ivarAccessQueue);
      outputDeviceDiscoverySession = self->_outputDeviceDiscoverySession;
    }
  }

  v5.receiver = self;
  v5.super_class = AVOutputDeviceDiscoverySession;
  [(AVOutputDeviceDiscoverySession *)&v5 dealloc];
}

+ (id)outputDeviceDiscoverySessionFactory
{
  v2 = objc_alloc_init(AVFigRouteDiscovererOutputDeviceDiscoverySessionFactory);

  return v2;
}

+ (void)initialize
{
  if (objc_opt_class() == a1)
  {
    FigNote_AllowInternalDefaultLogs();
    fig_note_initialize_category_with_default_work();

    fig_note_initialize_category_with_default_work();
  }
}

- (id)impl
{
  v15 = *MEMORY[0x1E69E9840];
  v9 = 0;
  v10 = &v9;
  v11 = 0x3052000000;
  v12 = __Block_byref_object_copy__8;
  v13 = __Block_byref_object_dispose__8;
  v14 = 0;
  ivarAccessQueue = self->_outputDeviceDiscoverySession->ivarAccessQueue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __38__AVOutputDeviceDiscoverySession_impl__block_invoke;
  block[3] = &unk_1E794ED00;
  block[4] = self;
  block[5] = &v9;
  av_readwrite_dispatch_queue_read(ivarAccessQueue, block);
  v3 = v10[5];
  if (!v3)
  {
    os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
    fig_log_call_emit_and_clean_up_after_send_and_compose();
    v3 = v10[5];
  }

  v5 = v3;
  _Block_object_dispose(&v9, 8);
  v6 = *MEMORY[0x1E69E9840];
  return v5;
}

id __38__AVOutputDeviceDiscoverySession_impl__block_invoke(uint64_t a1)
{
  result = *(*(*(a1 + 32) + 8) + 16);
  *(*(*(a1 + 40) + 8) + 40) = result;
  return result;
}

- (BOOL)cachedDiscoveryEnabled
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x2020000000;
  v9 = 0;
  ivarAccessQueue = self->_outputDeviceDiscoverySession->ivarAccessQueue;
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __56__AVOutputDeviceDiscoverySession_cachedDiscoveryEnabled__block_invoke;
  v5[3] = &unk_1E794ED00;
  v5[4] = self;
  v5[5] = &v6;
  av_readwrite_dispatch_queue_read(ivarAccessQueue, v5);
  v3 = *(v7 + 24);
  _Block_object_dispose(&v6, 8);
  return v3;
}

- (NSArray)availableOutputDevices
{
  v3 = [MEMORY[0x1E695DF70] array];
  v4 = [(AVOutputDeviceDiscoverySession *)self availableOutputDevicesObject];
  if (v4)
  {
    v5 = v4;
    [(NSArray *)v3 addObjectsFromArray:[(AVOutputDeviceDiscoverySessionAvailableOutputDevices *)v4 recentlyUsedDevices]];
    [(NSArray *)v3 addObjectsFromArray:[(AVOutputDeviceDiscoverySessionAvailableOutputDevices *)v5 otherDevices]];
    [(NSArray *)v3 sortUsingComparator:&__block_literal_global_10];
  }

  return v3;
}

- (AVOutputDeviceDiscoverySessionAvailableOutputDevices)availableOutputDevicesObject
{
  v2 = [(AVOutputDeviceDiscoverySession *)self impl];

  return [v2 availableOutputDevicesObject];
}

- (int64_t)discoveryMode
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x2020000000;
  v9 = 0;
  ivarAccessQueue = self->_outputDeviceDiscoverySession->ivarAccessQueue;
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __47__AVOutputDeviceDiscoverySession_discoveryMode__block_invoke;
  v5[3] = &unk_1E794ED00;
  v5[4] = self;
  v5[5] = &v6;
  av_readwrite_dispatch_queue_read(ivarAccessQueue, v5);
  v3 = v7[3];
  _Block_object_dispose(&v6, 8);
  return v3;
}

uint64_t __56__AVOutputDeviceDiscoverySession_availableOutputDevices__block_invoke(uint64_t a1, void *a2, void *a3)
{
  v4 = [a2 name];
  v5 = [a3 name];

  return [v4 localizedStandardCompare:v5];
}

- (OpaqueFigRouteDiscoverer)routeDiscoverer
{
  v2 = [(AVOutputDeviceDiscoverySession *)self impl];
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    return 0;
  }

  return [v2 routeDiscoverer];
}

- (AVOutputDeviceDiscoverySession)initWithDeviceFeatures:(unint64_t)a3
{
  v5 = [objc_opt_class() outputDeviceDiscoverySessionFactory];
  v6 = objc_opt_class();

  v7 = [v5 outputDeviceDiscoverySessionOfClass:v6 withDeviceFeatures:a3];

  return v7;
}

- (AVAudioSession)targetAudioSession
{
  v2 = [(AVOutputDeviceDiscoverySession *)self impl];

  return [v2 targetAudioSession];
}

- (void)setTargetAudioSession:(id)a3
{
  v4 = [(AVOutputDeviceDiscoverySession *)self impl];

  [v4 setTargetAudioSession:a3];
}

- (BOOL)onlyDiscoversBluetoothDevices
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x2020000000;
  v9 = 0;
  ivarAccessQueue = self->_outputDeviceDiscoverySession->ivarAccessQueue;
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __63__AVOutputDeviceDiscoverySession_onlyDiscoversBluetoothDevices__block_invoke;
  v5[3] = &unk_1E794ED00;
  v5[4] = self;
  v5[5] = &v6;
  av_readwrite_dispatch_queue_read(ivarAccessQueue, v5);
  v3 = *(v7 + 24);
  _Block_object_dispose(&v6, 8);
  return v3;
}

- (void)setOnlyDiscoversBluetoothDevices:(BOOL)a3
{
  v12 = *MEMORY[0x1E69E9840];
  if (dword_1ED6F6BC8)
  {
    v11 = 0;
    type = OS_LOG_TYPE_DEFAULT;
    os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
    fig_log_call_emit_and_clean_up_after_send_and_compose();
  }

  ivarAccessQueue = self->_outputDeviceDiscoverySession->ivarAccessQueue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __67__AVOutputDeviceDiscoverySession_setOnlyDiscoversBluetoothDevices___block_invoke;
  block[3] = &unk_1E794EF70;
  block[4] = self;
  v9 = a3;
  av_readwrite_dispatch_queue_write(ivarAccessQueue, block);
  [-[AVOutputDeviceDiscoverySession impl](self "impl")];
  v7 = *MEMORY[0x1E69E9840];
}

- (void)setCachedDiscoveryEnabled:(BOOL)a3
{
  v12 = *MEMORY[0x1E69E9840];
  if (dword_1ED6F6BC8)
  {
    v11 = 0;
    type = OS_LOG_TYPE_DEFAULT;
    os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
    fig_log_call_emit_and_clean_up_after_send_and_compose();
  }

  ivarAccessQueue = self->_outputDeviceDiscoverySession->ivarAccessQueue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __60__AVOutputDeviceDiscoverySession_setCachedDiscoveryEnabled___block_invoke;
  block[3] = &unk_1E794EF70;
  block[4] = self;
  v9 = a3;
  av_readwrite_dispatch_queue_write(ivarAccessQueue, block);
  [-[AVOutputDeviceDiscoverySession impl](self "impl")];
  v7 = *MEMORY[0x1E69E9840];
}

- (BOOL)fastDiscoveryEnabled
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x2020000000;
  v9 = 0;
  ivarAccessQueue = self->_outputDeviceDiscoverySession->ivarAccessQueue;
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __54__AVOutputDeviceDiscoverySession_fastDiscoveryEnabled__block_invoke;
  v5[3] = &unk_1E794ED00;
  v5[4] = self;
  v5[5] = &v6;
  av_readwrite_dispatch_queue_read(ivarAccessQueue, v5);
  v3 = *(v7 + 24);
  _Block_object_dispose(&v6, 8);
  return v3;
}

- (void)setFastDiscoveryEnabled:(BOOL)a3
{
  v12 = *MEMORY[0x1E69E9840];
  if (dword_1ED6F6BC8)
  {
    v11 = 0;
    type = OS_LOG_TYPE_DEFAULT;
    os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
    fig_log_call_emit_and_clean_up_after_send_and_compose();
  }

  ivarAccessQueue = self->_outputDeviceDiscoverySession->ivarAccessQueue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __58__AVOutputDeviceDiscoverySession_setFastDiscoveryEnabled___block_invoke;
  block[3] = &unk_1E794EF70;
  block[4] = self;
  v9 = a3;
  av_readwrite_dispatch_queue_write(ivarAccessQueue, block);
  [-[AVOutputDeviceDiscoverySession impl](self "impl")];
  v7 = *MEMORY[0x1E69E9840];
}

- (void)setDiscoveryMode:(int64_t)a3 forClientIdentifiers:(id)a4
{
  v13 = *MEMORY[0x1E69E9840];
  if (dword_1ED6F6BC8)
  {
    v12 = 0;
    type = OS_LOG_TYPE_DEFAULT;
    os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
    fig_log_call_emit_and_clean_up_after_send_and_compose();
  }

  ivarAccessQueue = self->_outputDeviceDiscoverySession->ivarAccessQueue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __72__AVOutputDeviceDiscoverySession_setDiscoveryMode_forClientIdentifiers___block_invoke;
  block[3] = &unk_1E794ED50;
  block[4] = self;
  block[5] = a3;
  av_readwrite_dispatch_queue_write(ivarAccessQueue, block);
  [-[AVOutputDeviceDiscoverySession impl](self "impl")];
  v9 = *MEMORY[0x1E69E9840];
}

- (BOOL)devicePresenceDetected
{
  v2 = [(AVOutputDeviceDiscoverySession *)self impl];

  return [v2 devicePresenceDetected];
}

- (void)outputDeviceDiscoverySessionImplDidChangeAvailableOutputDevices:(id)a3
{
  v3 = [MEMORY[0x1E696AD80] notificationWithName:@"AVOutputDeviceDiscoverySessionAvailableOutputDevicesDidChangeNotification" object:self userInfo:0];
  v4 = [MEMORY[0x1E696AD88] defaultCenter];

  [v4 postNotification:v3];
}

- (void)outputDeviceDiscoverySessionImpl:(id)a3 didExpireWithReplacement:(id)a4
{
  v9 = 0;
  v10 = &v9;
  v11 = 0x3052000000;
  v12 = __Block_byref_object_copy__8;
  v13 = __Block_byref_object_dispose__8;
  v14 = 0;
  ivarAccessQueue = self->_outputDeviceDiscoverySession->ivarAccessQueue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __92__AVOutputDeviceDiscoverySession_outputDeviceDiscoverySessionImpl_didExpireWithReplacement___block_invoke;
  block[3] = &unk_1E794EE90;
  block[5] = a4;
  block[6] = &v9;
  block[4] = self;
  av_readwrite_dispatch_queue_write(ivarAccessQueue, block);
  [v10[5] setParentOutputDeviceDiscoverySession:0];
  [a4 setParentOutputDeviceDiscoverySession:self];
  [(AVOutputDeviceDiscoverySession *)self outputDeviceDiscoverySessionImplDidChangeAvailableOutputDevices:[(AVOutputDeviceDiscoverySession *)self impl]];
  v7 = [(AVOutputDeviceDiscoverySession *)self impl];
  [v7 outputDeviceDiscoverySessionDidChangeDiscoveryMode:self forClientIdentifiers:MEMORY[0x1E695E0F0]];
  [-[AVOutputDeviceDiscoverySession impl](self "impl")];
  [-[AVOutputDeviceDiscoverySession impl](self "impl")];
  [-[AVOutputDeviceDiscoverySession impl](self "impl")];

  _Block_object_dispose(&v9, 8);
}

id __92__AVOutputDeviceDiscoverySession_outputDeviceDiscoverySessionImpl_didExpireWithReplacement___block_invoke(uint64_t a1)
{
  *(*(*(a1 + 48) + 8) + 40) = *(*(*(a1 + 32) + 8) + 16);

  result = *(a1 + 40);
  *(*(*(a1 + 32) + 8) + 16) = result;
  return result;
}

- (void)outputDeviceDiscoverySessionImplDidChangeAvailableOutputDeviceGroups:(id)a3
{
  v3 = [MEMORY[0x1E696AD80] notificationWithName:@"AVOutputDeviceDiscoverySessionAvailableOutputDeviceGroupsDidChangeNotification" object:self userInfo:0];
  v4 = [MEMORY[0x1E696AD88] defaultCenter];

  [v4 postNotification:v3];
}

- (AVOutputDeviceDiscoverySession)initWithOutputDeviceDiscoverySessionImpl:(id)a3
{
  v9.receiver = self;
  v9.super_class = AVOutputDeviceDiscoverySession;
  v4 = [(AVOutputDeviceDiscoverySession *)&v9 init];
  if (v4 && (v5 = objc_alloc_init(AVOutputDeviceDiscoverySessionInternal), (v4->_outputDeviceDiscoverySession = v5) != 0) && (v4->_outputDeviceDiscoverySession->ivarAccessQueue = av_readwrite_dispatch_queue_create("com.apple.avfoundation.avodds.ivars"), v4->_outputDeviceDiscoverySession->discoveryMode = 0, v4->_outputDeviceDiscoverySession->fastDiscoveryEnabled = 1, v4->_outputDeviceDiscoverySession->impl = a3, (impl = v4->_outputDeviceDiscoverySession->impl) != 0))
  {
    [(AVOutputDeviceDiscoverySessionImpl *)impl setParentOutputDeviceDiscoverySession:v4];
    v7 = v4;
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

@end