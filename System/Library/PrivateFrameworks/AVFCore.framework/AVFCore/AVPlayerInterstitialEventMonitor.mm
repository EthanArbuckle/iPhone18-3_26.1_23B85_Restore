@interface AVPlayerInterstitialEventMonitor
+ (AVPlayerInterstitialEventMonitor)interstitialEventMonitorWithPrimaryPlayer:(AVPlayer *)primaryPlayer;
- (AVPlayerInterstitialEvent)currentEvent;
- (AVPlayerInterstitialEventMonitor)init;
- (AVPlayerInterstitialEventMonitor)initWithPrimaryPlayer:(AVPlayer *)primaryPlayer;
- (NSArray)events;
- (NSString)currentEventSkipControlLabel;
- (id)makeCopyOf:(id)of immutable:(BOOL)immutable;
- (int64_t)currentEventSkippableState;
- (void)_addMonitorListeners:(OpaqueFigPlayerInterstitialCoordinator *)listeners;
- (void)_removeMonitorListeners;
- (void)_setCachedCurrentEvent:(id)event;
- (void)_updateCachedCurrentEvent;
- (void)dealloc;
@end

@implementation AVPlayerInterstitialEventMonitor

+ (AVPlayerInterstitialEventMonitor)interstitialEventMonitorWithPrimaryPlayer:(AVPlayer *)primaryPlayer
{
  v3 = [[self alloc] initWithPrimaryPlayer:primaryPlayer];

  return v3;
}

- (AVPlayerInterstitialEventMonitor)initWithPrimaryPlayer:(AVPlayer *)primaryPlayer
{
  if ([(AVPlayer *)primaryPlayer _isInterstitialPlayer])
  {
    v16 = MEMORY[0x1E695DF30];
    v17 = *MEMORY[0x1E695D940];
    v18 = @"Cannot create an InterstitialEventMonitor for an interstitial player.";
    goto LABEL_9;
  }

  v20.receiver = self;
  v20.super_class = AVPlayerInterstitialEventMonitor;
  v11 = [(AVPlayerInterstitialEventMonitor *)&v20 init];
  self = v11;
  if (!v11)
  {
    goto LABEL_6;
  }

  objc_storeWeak(&v11->_primaryPlayer, primaryPlayer);
  interstitialPlayer = [(AVPlayer *)primaryPlayer interstitialPlayer];
  self->_interstitialPlayer = interstitialPlayer;
  if (!interstitialPlayer)
  {
    v16 = MEMORY[0x1E695DF30];
    v17 = *MEMORY[0x1E696A790];
    v18 = @"Could not obtain the interstitial player.";
LABEL_9:
    v19 = [v16 exceptionWithName:v17 reason:AVMethodExceptionReasonWithObjectAndSelector(self userInfo:{a2, v18, v6, v7, v8, v9, v10, v20.receiver), 0}];
    objc_exception_throw(v19);
  }

  v13 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
  self->_ivarQueue = dispatch_queue_create("com.apple.avplayerinterstitialeventmonitor.ivars", v13);
  self->_weakReference = [[AVWeakReference alloc] initWithReferencedObject:self];
  _copyInterstitialCoordinator = [(AVPlayer *)primaryPlayer _copyInterstitialCoordinator];
  [(AVPlayerInterstitialEventMonitor *)self _addMonitorListeners:_copyInterstitialCoordinator];
  [(AVPlayerInterstitialEventMonitor *)self _updateCachedCurrentEvent];
  if (_copyInterstitialCoordinator)
  {
    CFRelease(_copyInterstitialCoordinator);
  }

LABEL_6:
  FigNote_AllowInternalDefaultLogs();
  fig_note_initialize_category_with_default_work();
  fig_note_initialize_category_with_default_work();
  return self;
}

- (AVPlayerInterstitialEventMonitor)init
{
  [(AVPlayerInterstitialEventMonitor *)self init];
  v4 = MEMORY[0x1E695DF30];
  v5 = *MEMORY[0x1E695D940];
  v6 = NSStringFromSelector(sel_initWithPrimaryPlayer_);
  v12 = [v4 exceptionWithName:v5 reason:AVMethodExceptionReasonWithObjectAndSelector(self userInfo:{a2, @"Use %@ instead.", v7, v8, v9, v10, v11, v6), 0}];
  objc_exception_throw(v12);
}

- (void)dealloc
{
  v10 = *MEMORY[0x1E69E9840];
  if (dword_1EAEFCE50)
  {
    v9 = 0;
    type = OS_LOG_TYPE_DEFAULT;
    os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
    fig_log_call_emit_and_clean_up_after_send_and_compose();
  }

  [(AVPlayerInterstitialEventMonitor *)self _removeMonitorListeners:v5];

  ivarQueue = self->_ivarQueue;
  if (ivarQueue)
  {
    dispatch_release(ivarQueue);
  }

  v7.receiver = self;
  v7.super_class = AVPlayerInterstitialEventMonitor;
  [(AVPlayerInterstitialEventMonitor *)&v7 dealloc];
}

- (id)makeCopyOf:(id)of immutable:(BOOL)immutable
{
  immutableCopy = immutable;
  v19 = *MEMORY[0x1E69E9840];
  v6 = [MEMORY[0x1E695DF70] arrayWithCapacity:{objc_msgSend(of, "count")}];
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v7 = [of countByEnumeratingWithState:&v14 objects:v18 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v15;
    do
    {
      v10 = 0;
      do
      {
        if (*v15 != v9)
        {
          objc_enumerationMutation(of);
        }

        v11 = [*(*(&v14 + 1) + 8 * v10) copy];
        v12 = v11;
        if (immutableCopy)
        {
          [v11 setImmutable];
        }

        [v6 addObject:v12];

        ++v10;
      }

      while (v8 != v10);
      v8 = [of countByEnumeratingWithState:&v14 objects:v18 count:16];
    }

    while (v8);
  }

  return v6;
}

- (NSArray)events
{
  v12[16] = *MEMORY[0x1E69E9840];
  if (dword_1EAEFCE50)
  {
    os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
    fig_log_call_emit_and_clean_up_after_send_and_compose();
  }

  _copyInterstitialCoordinator = [objc_loadWeak(&self->_primaryPlayer) _copyInterstitialCoordinator];
  v12[0] = 0;
  if (_copyInterstitialCoordinator)
  {
    v5 = _copyInterstitialCoordinator;
    v6 = *(*(CMBaseObjectGetVTable() + 16) + 8);
    if (v6)
    {
      v6(v5, v12);
    }

    CFRelease(v5);
    v7 = v12[0];
  }

  else
  {
    v7 = 0;
  }

  v8 = [(AVPlayerInterstitialEventMonitor *)self makeCopyOf:v7 immutable:1, v10, v11];

  return v8;
}

- (AVPlayerInterstitialEvent)currentEvent
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x3052000000;
  v9 = __Block_byref_object_copy__7;
  v10 = __Block_byref_object_dispose__7;
  v11 = 0;
  ivarQueue = self->_ivarQueue;
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __48__AVPlayerInterstitialEventMonitor_currentEvent__block_invoke;
  v5[3] = &unk_1E7460E68;
  v5[4] = self;
  v5[5] = &v6;
  dispatch_sync(ivarQueue, v5);
  v3 = v7[5];
  _Block_object_dispose(&v6, 8);
  return v3;
}

uint64_t __48__AVPlayerInterstitialEventMonitor_currentEvent__block_invoke(uint64_t a1)
{
  result = [*(*(a1 + 32) + 48) copy];
  *(*(*(a1 + 40) + 8) + 40) = result;
  return result;
}

- (int64_t)currentEventSkippableState
{
  _copyInterstitialCoordinator = [objc_loadWeak(&self->_primaryPlayer) _copyInterstitialCoordinator];
  if (!_copyInterstitialCoordinator)
  {
    return 0;
  }

  v3 = _copyInterstitialCoordinator;
  v4 = *(*(CMBaseObjectGetVTable() + 16) + 128);
  if (v4)
  {
    v5 = v4(v3);
  }

  else
  {
    v5 = 0;
  }

  CFRelease(v3);
  return v5;
}

- (void)_addMonitorListeners:(OpaqueFigPlayerInterstitialCoordinator *)listeners
{
  v5 = [AVCMNotificationDispatcher notificationDispatcherForCMNotificationCenter:CMNotificationCenterGetDefaultLocalCenter()];
  [v5 addListenerWithWeakReference:self->_weakReference callback:avplayerinterstitialeventmonitor_fpNotificationCallback name:*MEMORY[0x1E6972F10] object:listeners flags:0];
  [v5 addListenerWithWeakReference:self->_weakReference callback:avplayerinterstitialeventmonitor_fpNotificationCallback name:*MEMORY[0x1E6972ED8] object:listeners flags:0];
  [v5 addListenerWithWeakReference:self->_weakReference callback:avplayerinterstitialeventmonitor_fpNotificationCallback name:*MEMORY[0x1E6972EE0] object:listeners flags:0];
  [v5 addListenerWithWeakReference:self->_weakReference callback:avplayerinterstitialeventmonitor_fpNotificationCallback name:*MEMORY[0x1E6972F00] object:listeners flags:0];
  [v5 addListenerWithWeakReference:self->_weakReference callback:avplayerinterstitialeventmonitor_fpNotificationCallback name:*MEMORY[0x1E6972F48] object:listeners flags:0];
  [v5 addListenerWithWeakReference:self->_weakReference callback:avplayerinterstitialeventmonitor_fpNotificationCallback name:*MEMORY[0x1E6972F28] object:listeners flags:0];
  [v5 addListenerWithWeakReference:self->_weakReference callback:avplayerinterstitialeventmonitor_fpNotificationCallback name:*MEMORY[0x1E6972F50] object:listeners flags:0];
  [v5 addListenerWithWeakReference:self->_weakReference callback:avplayerinterstitialeventmonitor_fpNotificationCallback name:*MEMORY[0x1E6972EB8] object:listeners flags:0];
  self->_observedCoord = listeners;
}

- (void)_updateCachedCurrentEvent
{
  _copyInterstitialCoordinator = [objc_loadWeak(&self->_primaryPlayer) _copyInterstitialCoordinator];
  if (_copyInterstitialCoordinator)
  {
    v4 = _copyInterstitialCoordinator;
    v5 = *(*(CMBaseObjectGetVTable() + 16) + 16);
    if (v5)
    {
      v6 = v5(v4);
    }

    else
    {
      v6 = 0;
    }

    [(AVPlayerInterstitialEventMonitor *)self _setCachedCurrentEvent:v6];

    CFRelease(v4);
  }

  else
  {
  }
}

- (void)_setCachedCurrentEvent:(id)event
{
  ivarQueue = self->_ivarQueue;
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = __59__AVPlayerInterstitialEventMonitor__setCachedCurrentEvent___block_invoke;
  v4[3] = &unk_1E7460DF0;
  v4[4] = self;
  v4[5] = event;
  dispatch_sync(ivarQueue, v4);
}

uint64_t __59__AVPlayerInterstitialEventMonitor__setCachedCurrentEvent___block_invoke(uint64_t a1)
{
  result = [*(a1 + 40) copy];
  *(*(a1 + 32) + 48) = result;
  return result;
}

- (void)_removeMonitorListeners
{
  v3 = [AVCMNotificationDispatcher notificationDispatcherForCMNotificationCenter:CMNotificationCenterGetDefaultLocalCenter()];
  [v3 removeListenerWithWeakReference:self->_weakReference callback:avplayerinterstitialeventmonitor_fpNotificationCallback name:*MEMORY[0x1E6972F10] object:self->_observedCoord];
  [v3 removeListenerWithWeakReference:self->_weakReference callback:avplayerinterstitialeventmonitor_fpNotificationCallback name:*MEMORY[0x1E6972ED8] object:self->_observedCoord];
  [v3 removeListenerWithWeakReference:self->_weakReference callback:avplayerinterstitialeventmonitor_fpNotificationCallback name:*MEMORY[0x1E6972EE0] object:self->_observedCoord];
  [v3 removeListenerWithWeakReference:self->_weakReference callback:avplayerinterstitialeventmonitor_fpNotificationCallback name:*MEMORY[0x1E6972F00] object:self->_observedCoord];
  [v3 removeListenerWithWeakReference:self->_weakReference callback:avplayerinterstitialeventmonitor_fpNotificationCallback name:*MEMORY[0x1E6972F50] object:self->_observedCoord];
  [v3 removeListenerWithWeakReference:self->_weakReference callback:avplayerinterstitialeventmonitor_fpNotificationCallback name:*MEMORY[0x1E6972EB8] object:self->_observedCoord];
  [v3 removeListenerWithWeakReference:self->_weakReference callback:avplayerinterstitialeventmonitor_fpNotificationCallback name:*MEMORY[0x1E6972F48] object:self->_observedCoord];
  v4 = *MEMORY[0x1E6972F28];
  weakReference = self->_weakReference;
  observedCoord = self->_observedCoord;

  [v3 removeListenerWithWeakReference:weakReference callback:avplayerinterstitialeventmonitor_fpNotificationCallback name:v4 object:observedCoord];
}

- (NSString)currentEventSkipControlLabel
{
  _copyInterstitialCoordinator = [objc_loadWeak(&self->_primaryPlayer) _copyInterstitialCoordinator];
  if (!_copyInterstitialCoordinator)
  {
    return 0;
  }

  v3 = _copyInterstitialCoordinator;
  v4 = *(*(CMBaseObjectGetVTable() + 16) + 152);
  if (v4)
  {
    v5 = v4(v3);
  }

  else
  {
    v5 = 0;
  }

  v6 = [v5 copy];
  if (v5)
  {
    CFRelease(v5);
  }

  CFRelease(v3);
  return v6;
}

@end