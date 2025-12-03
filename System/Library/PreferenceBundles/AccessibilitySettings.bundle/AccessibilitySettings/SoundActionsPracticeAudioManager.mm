@interface SoundActionsPracticeAudioManager
+ (id)sharedInstance;
- (BOOL)_handleAccessibilityEvent:(id)event;
- (BOOL)_handleSoundEvent:(int64_t)event;
- (SoundActionsPracticeAudioManager)init;
- (void)_startAccessibilityEventProcessor;
- (void)_stopAccessibilityEventProcessor;
- (void)deregisterListener:(id)listener;
- (void)pause;
- (void)playURL:(id)l;
- (void)playerDidEnd;
- (void)registerListener:(id)listener forAudioLevelUpdates:(id)updates forDetection:(id)detection withBucketCount:(int)count;
- (void)resume;
- (void)start;
- (void)stop;
@end

@implementation SoundActionsPracticeAudioManager

+ (id)sharedInstance
{
  if (sharedInstance_onceToken_0 != -1)
  {
    +[SoundActionsPracticeAudioManager sharedInstance];
  }

  v3 = sharedInstance___SharedManager;

  return v3;
}

void __50__SoundActionsPracticeAudioManager_sharedInstance__block_invoke(id a1)
{
  sharedInstance___SharedManager = objc_alloc_init(SoundActionsPracticeAudioManager);

  _objc_release_x1();
}

- (SoundActionsPracticeAudioManager)init
{
  v13.receiver = self;
  v13.super_class = SoundActionsPracticeAudioManager;
  v2 = [(SoundActionsPracticeAudioManager *)&v13 init];
  v3 = v2;
  if (v2)
  {
    [(SoundActionsPracticeAudioManager *)v2 setIsListening:0];
    v4 = objc_alloc_init(AVPlayer);
    player = v3->_player;
    v3->_player = v4;

    v6 = objc_opt_new();
    detectionHandlers = v3->_detectionHandlers;
    v3->_detectionHandlers = v6;

    v8 = dispatch_queue_create("com.apple.accessibility.sound_action_practice.update_listeners", 0);
    handlerQueue = v3->_handlerQueue;
    v3->_handlerQueue = v8;

    v10 = dispatch_queue_create("com.apple.accessibility.sound_action_practice.process_audio", 0);
    audioQueue = v3->_audioQueue;
    v3->_audioQueue = v10;
  }

  return v3;
}

- (void)start
{
  if (![(SoundActionsPracticeAudioManager *)self isListening])
  {
    [(SoundActionsPracticeAudioManager *)self setIsListening:1];
    v3 = +[AXSDVoiceTriggerController sharedInstance];
    [v3 startListeningInPracticeSession];

    [(SoundActionsPracticeAudioManager *)self _startAccessibilityEventProcessor];
    v4 = +[NSNotificationCenter defaultCenter];
    [v4 addObserver:self selector:"playerDidEnd" name:AVPlayerItemDidPlayToEndTimeNotification object:0];

    v5 = +[NSNotificationCenter defaultCenter];
    [v5 addObserver:self selector:"playerDidEnd" name:AVPlayerItemFailedToPlayToEndTimeNotification object:0];
  }
}

- (void)resume
{
  v2 = +[AXSDVoiceTriggerController sharedInstance];
  [v2 resumeListening];
}

- (void)stop
{
  if ([(SoundActionsPracticeAudioManager *)self isListening])
  {
    [(SoundActionsPracticeAudioManager *)self setIsListening:0];
    v3 = +[AXSDVoiceTriggerController sharedInstance];
    [v3 stopListening];

    [(SoundActionsPracticeAudioManager *)self _stopAccessibilityEventProcessor];
  }
}

- (void)pause
{
  v2 = +[AXSDVoiceTriggerController sharedInstance];
  [v2 pauseListening];
}

- (void)_startAccessibilityEventProcessor
{
  if (self->_eventProcessor)
  {
    v2 = AXLogSoundActions();
    if (os_log_type_enabled(v2, OS_LOG_TYPE_ERROR))
    {
      [(SoundActionsPracticeAudioManager *)v2 _startAccessibilityEventProcessor];
    }
  }

  else
  {
    v4 = [[AXEventProcessor alloc] initWithHIDTapIdentifier:@"Sound Actions Practice" HIDEventTapPriority:25 systemEventTapIdentifier:0 systemEventTapPriority:25];
    eventProcessor = self->_eventProcessor;
    self->_eventProcessor = v4;

    [(AXEventProcessor *)self->_eventProcessor setHIDEventFilterMask:32];
    objc_initWeak(&location, self);
    v6 = _NSConcreteStackBlock;
    v7 = 3221225472;
    v8 = __69__SoundActionsPracticeAudioManager__startAccessibilityEventProcessor__block_invoke;
    v9 = &unk_255B30;
    objc_copyWeak(&v10, &location);
    [(AXEventProcessor *)self->_eventProcessor setHIDEventHandler:&v6];
    [(AXEventProcessor *)self->_eventProcessor beginHandlingHIDEventsForReason:@"Sound Actions Practic Event Handler", v6, v7, v8, v9];
    objc_destroyWeak(&v10);
    objc_destroyWeak(&location);
  }
}

id __69__SoundActionsPracticeAudioManager__startAccessibilityEventProcessor__block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v5 = [WeakRetained _handleAccessibilityEvent:v3];

  return v5;
}

- (void)_stopAccessibilityEventProcessor
{
  [(AXEventProcessor *)self->_eventProcessor cleanup];
  [(AXEventProcessor *)self->_eventProcessor endHandlingHIDEventsForReason:@"Sound Actions Practic Event Handler"];
  eventProcessor = self->_eventProcessor;
  self->_eventProcessor = 0;
}

- (BOOL)_handleAccessibilityEvent:(id)event
{
  eventCopy = event;
  v5 = AXLogSoundActions();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
  {
    [(SoundActionsPracticeAudioManager *)eventCopy _handleAccessibilityEvent:v5];
  }

  accessibilityData = [eventCopy accessibilityData];
  if ([accessibilityData page] != &dword_0 + 3)
  {
    goto LABEL_9;
  }

  if ([accessibilityData usage] - 1 > &dword_C + 1)
  {
    v8 = AXLogSoundActions();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      [(SoundActionsPracticeAudioManager *)accessibilityData _handleAccessibilityEvent:v8];
    }

LABEL_9:
    v7 = 0;
    goto LABEL_10;
  }

  v7 = -[SoundActionsPracticeAudioManager _handleSoundEvent:](self, "_handleSoundEvent:", [accessibilityData usage]);
LABEL_10:

  return v7;
}

- (BOOL)_handleSoundEvent:(int64_t)event
{
  handlerQueue = self->_handlerQueue;
  v5[0] = _NSConcreteStackBlock;
  v5[1] = 3221225472;
  v5[2] = __54__SoundActionsPracticeAudioManager__handleSoundEvent___block_invoke;
  v5[3] = &unk_255B80;
  v5[4] = self;
  v5[5] = event;
  dispatch_async(handlerQueue, v5);
  return 1;
}

void __54__SoundActionsPracticeAudioManager__handleSoundEvent___block_invoke(uint64_t a1)
{
  v16 = 0u;
  v17 = 0u;
  v14 = 0u;
  v15 = 0u;
  v2 = [*(*(a1 + 32) + 16) allKeys];
  v3 = [v2 countByEnumeratingWithState:&v14 objects:v18 count:16];
  if (v3)
  {
    v4 = v3;
    v5 = *v15;
    do
    {
      v6 = 0;
      do
      {
        if (*v15 != v5)
        {
          objc_enumerationMutation(v2);
        }

        v7 = [*(*(a1 + 32) + 16) objectForKey:{*(*(&v14 + 1) + 8 * v6), v9, v10, v11, v12}];
        v8 = v7;
        if (v7)
        {
          v9 = _NSConcreteStackBlock;
          v10 = 3221225472;
          v11 = __54__SoundActionsPracticeAudioManager__handleSoundEvent___block_invoke_2;
          v12 = &unk_255B58;
          v13 = v7;
          AXPerformBlockOnMainThread();
        }

        v6 = v6 + 1;
      }

      while (v4 != v6);
      v4 = [v2 countByEnumeratingWithState:&v14 objects:v18 count:16];
    }

    while (v4);
  }
}

- (void)playURL:(id)l
{
  lCopy = l;
  v5 = +[AVAudioSession sharedInstance];
  v9 = 0;
  [v5 setCategory:AVAudioSessionCategoryPlayback mode:AVAudioSessionModeDefault options:0 error:&v9];
  v6 = v9;

  if (v6)
  {
    v7 = AXLogSoundActions();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      [(SoundActionsPracticeAudioManager *)v6 playURL:v7];
    }
  }

  [(SoundActionsPracticeAudioManager *)self _handleSoundEvent:-1];
  [(SoundActionsPracticeAudioManager *)self pause];
  v8 = [AVPlayerItem playerItemWithURL:lCopy];

  [(AVPlayer *)self->_player replaceCurrentItemWithPlayerItem:v8];
  [(AVPlayer *)self->_player play];
}

- (void)playerDidEnd
{
  [(SoundActionsPracticeAudioManager *)self resume];

  [(SoundActionsPracticeAudioManager *)self _handleSoundEvent:-2];
}

- (void)registerListener:(id)listener forAudioLevelUpdates:(id)updates forDetection:(id)detection withBucketCount:(int)count
{
  v6 = *&count;
  listenerCopy = listener;
  detectionCopy = detection;
  updatesCopy = updates;
  v13 = AXLogSoundActions();
  if (os_log_type_enabled(v13, OS_LOG_TYPE_DEBUG))
  {
    *buf = 138412290;
    v23 = listenerCopy;
    _os_log_debug_impl(&dword_0, v13, OS_LOG_TYPE_DEBUG, "Register audio listener: %@", buf, 0xCu);
  }

  v14 = +[AXSDAudioLevelsHelper sharedInstance];
  [v14 registerListener:self forAudioLevelUpdates:updatesCopy withBucketCount:v6];

  v15 = [NSNumber numberWithUnsignedLongLong:listenerCopy];
  handlerQueue = self->_handlerQueue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = __103__SoundActionsPracticeAudioManager_registerListener_forAudioLevelUpdates_forDetection_withBucketCount___block_invoke;
  block[3] = &unk_255BA8;
  v20 = v15;
  v21 = detectionCopy;
  block[4] = self;
  v17 = v15;
  v18 = detectionCopy;
  dispatch_async(handlerQueue, block);
}

void __103__SoundActionsPracticeAudioManager_registerListener_forAudioLevelUpdates_forDetection_withBucketCount___block_invoke(uint64_t a1)
{
  v2 = *(*(a1 + 32) + 16);
  v3 = [*(a1 + 48) copy];
  [v2 setObject:v3 forKey:*(a1 + 40)];
}

- (void)deregisterListener:(id)listener
{
  listenerCopy = listener;
  v5 = AXLogSoundActions();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
  {
    *buf = 138412290;
    v13 = listenerCopy;
    _os_log_debug_impl(&dword_0, v5, OS_LOG_TYPE_DEBUG, "Deregister audio listener: %@", buf, 0xCu);
  }

  v6 = +[AXSDAudioLevelsHelper sharedInstance];
  [v6 deregisterListener:listenerCopy];

  v7 = [NSNumber numberWithUnsignedLongLong:listenerCopy];
  handlerQueue = self->_handlerQueue;
  v10[0] = _NSConcreteStackBlock;
  v10[1] = 3221225472;
  v10[2] = __55__SoundActionsPracticeAudioManager_deregisterListener___block_invoke;
  v10[3] = &unk_255538;
  v10[4] = self;
  v11 = v7;
  v9 = v7;
  dispatch_async(handlerQueue, v10);
}

- (void)_handleAccessibilityEvent:(uint64_t)a1 .cold.1(uint64_t a1, NSObject *a2)
{
  v2 = 138412290;
  v3 = a1;
  _os_log_debug_impl(&dword_0, a2, OS_LOG_TYPE_DEBUG, "Received event: %@", &v2, 0xCu);
}

- (void)_handleAccessibilityEvent:(uint64_t)a1 .cold.2(uint64_t a1, NSObject *a2)
{
  v2 = 138412290;
  v3 = a1;
  _os_log_error_impl(&dword_0, a2, OS_LOG_TYPE_ERROR, "Received unknown Vocie Trigger event: %@", &v2, 0xCu);
}

- (void)playURL:(uint64_t)a1 .cold.1(uint64_t a1, NSObject *a2)
{
  v2 = 138412290;
  v3 = a1;
  _os_log_error_impl(&dword_0, a2, OS_LOG_TYPE_ERROR, "Failed to configure audio session: %@", &v2, 0xCu);
}

@end