@interface AVInputDeviceDiscoverySession
+ (void)initialize;
- (AVInputDevice)fallbackInputDevice;
- (AVInputDeviceDiscoverySession)initWithDeviceFeatures:(unint64_t)a3;
- (AVInputDeviceDiscoverySession)initWithInputDeviceDiscoverySessionImpl:(id)a3;
- (BOOL)devicePresenceDetected;
- (BOOL)fastDiscoveryEnabled;
- (NSArray)availableInputDevices;
- (NSNumber)audioSessionID;
- (OpaqueFigRouteDiscoverer)routeDiscoverer;
- (id)impl;
- (int64_t)discoveryMode;
- (void)dealloc;
- (void)inputDeviceDiscoverySessionImpl:(id)a3 didExpireWithReplacement:(id)a4;
- (void)inputDeviceDiscoverySessionImplDidChangeAvailableInputDevices:(id)a3;
- (void)setAudioSessionID:(id)a3;
- (void)setDiscoveryMode:(int64_t)a3 forClientIdentifiers:(id)a4;
- (void)setFastDiscoveryEnabled:(BOOL)a3;
@end

@implementation AVInputDeviceDiscoverySession

+ (void)initialize
{
  if (objc_opt_class() == a1)
  {
    FigNote_AllowInternalDefaultLogs();
    fig_note_initialize_category_with_default_work();

    fig_note_initialize_category_with_default_work();
  }
}

- (void)dealloc
{
  inputDeviceDiscoverySession = self->_inputDeviceDiscoverySession;
  if (inputDeviceDiscoverySession)
  {

    inputDeviceDiscoverySession = self->_inputDeviceDiscoverySession;
    ivarAccessQueue = inputDeviceDiscoverySession->ivarAccessQueue;
    if (ivarAccessQueue)
    {
      dispatch_release(ivarAccessQueue);
      inputDeviceDiscoverySession = self->_inputDeviceDiscoverySession;
    }
  }

  v5.receiver = self;
  v5.super_class = AVInputDeviceDiscoverySession;
  [(AVInputDeviceDiscoverySession *)&v5 dealloc];
}

- (id)impl
{
  v15 = *MEMORY[0x1E69E9840];
  v9 = 0;
  v10 = &v9;
  v11 = 0x3052000000;
  v12 = __Block_byref_object_copy__13;
  v13 = __Block_byref_object_dispose__13;
  v14 = 0;
  ivarAccessQueue = self->_inputDeviceDiscoverySession->ivarAccessQueue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __37__AVInputDeviceDiscoverySession_impl__block_invoke;
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

id __37__AVInputDeviceDiscoverySession_impl__block_invoke(uint64_t a1)
{
  result = *(*(*(a1 + 32) + 8) + 16);
  *(*(*(a1 + 40) + 8) + 40) = result;
  return result;
}

- (OpaqueFigRouteDiscoverer)routeDiscoverer
{
  v2 = [(AVInputDeviceDiscoverySession *)self impl];
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    return 0;
  }

  return [v2 routeDiscoverer];
}

uint64_t __56__AVInputDeviceDiscoverySession_initWithDeviceFeatures___block_invoke(uint64_t a1)
{
  Current = AVFigRouteDiscovererFactoryGetCurrent();
  v3 = *(a1 + 32);

  return AVFigRouteDiscovererFactoryCreateRouteDiscovererWithType(Current, v3);
}

- (NSNumber)audioSessionID
{
  v2 = [(AVInputDeviceDiscoverySession *)self impl];

  return [v2 audioSessionId];
}

- (void)setAudioSessionID:(id)a3
{
  v4 = [(AVInputDeviceDiscoverySession *)self impl];

  [v4 setAudioSessionId:a3];
}

- (int64_t)discoveryMode
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x2020000000;
  v9 = 0;
  ivarAccessQueue = self->_inputDeviceDiscoverySession->ivarAccessQueue;
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __46__AVInputDeviceDiscoverySession_discoveryMode__block_invoke;
  v5[3] = &unk_1E794ED00;
  v5[4] = self;
  v5[5] = &v6;
  av_readwrite_dispatch_queue_read(ivarAccessQueue, v5);
  v3 = v7[3];
  _Block_object_dispose(&v6, 8);
  return v3;
}

- (void)setDiscoveryMode:(int64_t)a3 forClientIdentifiers:(id)a4
{
  ivarAccessQueue = self->_inputDeviceDiscoverySession->ivarAccessQueue;
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __71__AVInputDeviceDiscoverySession_setDiscoveryMode_forClientIdentifiers___block_invoke;
  v7[3] = &unk_1E794ED50;
  v7[4] = self;
  v7[5] = a3;
  av_readwrite_dispatch_queue_write(ivarAccessQueue, v7);
  [-[AVInputDeviceDiscoverySession impl](self "impl")];
}

- (NSArray)availableInputDevices
{
  v2 = [(AVInputDeviceDiscoverySession *)self impl];

  return [v2 availableInputDevices];
}

- (BOOL)devicePresenceDetected
{
  v2 = [(AVInputDeviceDiscoverySession *)self impl];

  return [v2 devicePresenceDetected];
}

- (BOOL)fastDiscoveryEnabled
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x2020000000;
  v9 = 0;
  ivarAccessQueue = self->_inputDeviceDiscoverySession->ivarAccessQueue;
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __53__AVInputDeviceDiscoverySession_fastDiscoveryEnabled__block_invoke;
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
  if (dword_1ED6F6BA8)
  {
    v11 = 0;
    type = OS_LOG_TYPE_DEFAULT;
    os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
    fig_log_call_emit_and_clean_up_after_send_and_compose();
  }

  ivarAccessQueue = self->_inputDeviceDiscoverySession->ivarAccessQueue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __57__AVInputDeviceDiscoverySession_setFastDiscoveryEnabled___block_invoke;
  block[3] = &unk_1E794EF70;
  block[4] = self;
  v9 = a3;
  av_readwrite_dispatch_queue_write(ivarAccessQueue, block);
  [-[AVInputDeviceDiscoverySession impl](self "impl")];
  v7 = *MEMORY[0x1E69E9840];
}

- (AVInputDevice)fallbackInputDevice
{
  v2 = [(AVInputDeviceDiscoverySession *)self impl];

  return [v2 fallbackInputDevice];
}

- (void)inputDeviceDiscoverySessionImplDidChangeAvailableInputDevices:(id)a3
{
  v3 = [MEMORY[0x1E696AD80] notificationWithName:@"AVInputDeviceDiscoverySessionAvailableInputDevicesDidChangeNotification" object:self userInfo:0];
  v4 = [MEMORY[0x1E696AD88] defaultCenter];

  [v4 postNotification:v3];
}

- (void)inputDeviceDiscoverySessionImpl:(id)a3 didExpireWithReplacement:(id)a4
{
  v9 = 0;
  v10 = &v9;
  v11 = 0x3052000000;
  v12 = __Block_byref_object_copy__13;
  v13 = __Block_byref_object_dispose__13;
  v14 = 0;
  ivarAccessQueue = self->_inputDeviceDiscoverySession->ivarAccessQueue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __90__AVInputDeviceDiscoverySession_inputDeviceDiscoverySessionImpl_didExpireWithReplacement___block_invoke;
  block[3] = &unk_1E794EE90;
  block[5] = a4;
  block[6] = &v9;
  block[4] = self;
  av_readwrite_dispatch_queue_write(ivarAccessQueue, block);
  [v10[5] setParentInputDeviceDiscoverySession:0];
  [a4 setParentInputDeviceDiscoverySession:self];
  [(AVInputDeviceDiscoverySession *)self inputDeviceDiscoverySessionImplDidChangeAvailableInputDevices:[(AVInputDeviceDiscoverySession *)self impl]];
  v7 = [(AVInputDeviceDiscoverySession *)self impl];
  [v7 inputDeviceDiscoverySessionDidChangeDiscoveryMode:self forClientIdentifiers:MEMORY[0x1E695E0F0]];
  [-[AVInputDeviceDiscoverySession impl](self "impl")];

  _Block_object_dispose(&v9, 8);
}

id __90__AVInputDeviceDiscoverySession_inputDeviceDiscoverySessionImpl_didExpireWithReplacement___block_invoke(uint64_t a1)
{
  *(*(*(a1 + 48) + 8) + 40) = *(*(*(a1 + 32) + 8) + 16);

  result = *(a1 + 40);
  *(*(*(a1 + 32) + 8) + 16) = result;
  return result;
}

- (AVInputDeviceDiscoverySession)initWithDeviceFeatures:(unint64_t)a3
{
  v11.receiver = self;
  v11.super_class = AVInputDeviceDiscoverySession;
  v4 = [(AVInputDeviceDiscoverySession *)&v11 init];
  if (v4)
  {
    if (a3 == 1)
    {
      v5 = [AVFigRouteDiscovererInputDeviceDiscoverySessionImpl alloc];
      v9[0] = MEMORY[0x1E69E9820];
      v9[1] = 3221225472;
      v9[2] = __56__AVInputDeviceDiscoverySession_initWithDeviceFeatures___block_invoke;
      v9[3] = &__block_descriptor_36_e32___OpaqueFigRouteDiscoverer__8__0l;
      v10 = 8;
      v6 = [(AVFigRouteDiscovererInputDeviceDiscoverySessionImpl *)v5 initWithFigRouteDiscovererCreator:v9];
    }

    else
    {
      v6 = 0;
    }

    v7 = [[AVInputDeviceDiscoverySession alloc] initWithInputDeviceDiscoverySessionImpl:v6];
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

- (AVInputDeviceDiscoverySession)initWithInputDeviceDiscoverySessionImpl:(id)a3
{
  v9.receiver = self;
  v9.super_class = AVInputDeviceDiscoverySession;
  v4 = [(AVInputDeviceDiscoverySession *)&v9 init];
  if (v4 && (v5 = objc_alloc_init(AVInputDeviceDiscoverySessionInternal), (v4->_inputDeviceDiscoverySession = v5) != 0) && (v4->_inputDeviceDiscoverySession->ivarAccessQueue = av_readwrite_dispatch_queue_create("com.apple.avfoundation.avidds.ivars"), v4->_inputDeviceDiscoverySession->discoveryMode = 0, v4->_inputDeviceDiscoverySession->fastDiscoveryEnabled = 1, v4->_inputDeviceDiscoverySession->impl = a3, (impl = v4->_inputDeviceDiscoverySession->impl) != 0))
  {
    [(AVInputDeviceDiscoverySessionImpl *)impl setParentInputDeviceDiscoverySession:v4];
    v7 = v4;
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

@end