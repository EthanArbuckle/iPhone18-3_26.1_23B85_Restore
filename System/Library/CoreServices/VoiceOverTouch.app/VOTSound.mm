@interface VOTSound
- (BOOL)isPlaying;
- (BOOL)shouldUseAVAudioPlayer;
- (VOTSound)initWithSoundPath:(id)path thread:(id)thread;
- (void)__updateAudioSessionProperties;
- (void)_cancelHelperFired:(unint64_t)fired;
- (void)_finishedPlaying;
- (void)_hearingAidRouteChange:(id)change;
- (void)_sendFinishPlayingNotificationsWithCompletionBlock:(id)block delegate:(id)delegate;
- (void)_updateAudioSessionProperties;
- (void)_updatePlayerWithAudioFile:(BOOL)file;
- (void)audioPlayerDecodeErrorDidOccur:(id)occur error:(id)error;
- (void)audioPlayerDidFinishPlaying:(id)playing successfully:(BOOL)successfully;
- (void)dealloc;
- (void)playAvoidingSSS:(BOOL)s;
- (void)resetSoundForLostMediaSession;
- (void)setCompletionBlock:(id)block;
@end

@implementation VOTSound

- (VOTSound)initWithSoundPath:(id)path thread:(id)thread
{
  pathCopy = path;
  threadCopy = thread;
  v34.receiver = self;
  v34.super_class = VOTSound;
  v9 = [(VOTSound *)&v34 init];
  v10 = v9;
  v11 = 0;
  if (pathCopy)
  {
    if (v9)
    {
      [(VOTSound *)v9 setSoundThread:threadCopy];
      objc_storeStrong(&v10->_soundPath, path);
      v12 = [[SCRCTargetSelectorTimer alloc] initWithTarget:v10 selector:0 thread:threadCopy];
      cancelHelperTimer = v10->_cancelHelperTimer;
      v10->_cancelHelperTimer = v12;

      v14 = dispatch_queue_create("com.apple.accessibility.VOTSound.hearingAidStreamSerialQueue", 0);
      hearingAidStreamSerialQueue = v10->_hearingAidStreamSerialQueue;
      v10->_hearingAidStreamSerialQueue = v14;

      v11 = 0;
      if (([pathCopy isEqualToString:@"KeyboardClick"] & 1) == 0)
      {
        v16 = [NSBundle bundleForClass:objc_opt_class()];
        resourcePath = [v16 resourcePath];

        v18 = objc_allocWithZone(NSURL);
        v29 = resourcePath;
        pathCopy = [NSString stringWithFormat:@"%@/%@", resourcePath, pathCopy];
        v20 = [v18 initFileURLWithPath:pathCopy isDirectory:0];

        v28 = v20;
        SystemSoundID = AudioServicesCreateSystemSoundID(v20, &v10->_soundID);
        v21 = +[NSNotificationCenter defaultCenter];
        v22 = +[AVAudioSession sharedInstance];
        [v21 addObserver:v10 selector:"_updateAudioSessionProperties" name:AVAudioSessionRouteChangeNotification object:v22];

        v23 = +[NSNotificationCenter defaultCenter];
        v24 = +[AVAudioSession sharedInstance];
        [v23 addObserver:v10 selector:"_updateAudioSessionProperties" name:AVAudioSessionInterruptionNotification object:v24];

        v25 = +[NSNotificationCenter defaultCenter];
        [v25 addObserver:v10 selector:"_hearingAidRouteChange:" name:AXHearingAidAudioRoutesChangedNotification object:0];

        [(VOTSound *)v10 _hearingAidRouteChange:0];
        if (SystemSoundID)
        {
          v11 = 0;
          v10->_soundID = 0;
        }

        else
        {
          objc_storeStrong(&v10->_soundPath, path);
          v10->_completionBlockLock._os_unfair_lock_opaque = 0;
          v10->_volume = 1.0;
          objc_initWeak(&location, v10);
          v26 = +[AXSettings sharedInstance];
          v31[0] = _NSConcreteStackBlock;
          v31[1] = 3221225472;
          v31[2] = sub_100011410;
          v31[3] = &unk_1001C78D8;
          objc_copyWeak(&v32, &location);
          [v26 registerUpdateBlock:v31 forRetrieveSelector:"_audioHardwareChannelLayout" withListener:v10];

          objc_destroyWeak(&v32);
          [(VOTSound *)v10 __updateAudioSessionProperties];
          v11 = v10;
          objc_destroyWeak(&location);
        }
      }
    }
  }

  return v11;
}

- (void)_hearingAidRouteChange:(id)change
{
  hearingAidStreamSerialQueue = self->_hearingAidStreamSerialQueue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1000114C4;
  block[3] = &unk_1001C76E8;
  block[4] = self;
  dispatch_async(hearingAidStreamSerialQueue, block);
}

- (void)resetSoundForLostMediaSession
{
  player = self->_player;
  self->_player = 0;

  v4 = VOTLogAudio();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
  {
    sub_1001280A0(self, v4);
  }

  [(VOTSound *)self _updateAudioSessionProperties];
}

- (BOOL)shouldUseAVAudioPlayer
{
  if (_os_feature_enabled_impl())
  {
    v3 = VOTLogAudio();
    LOBYTE(soundChannels) = 1;
    if (os_log_type_enabled(v3, OS_LOG_TYPE_INFO))
    {
      LOWORD(v15) = 0;
      v5 = "Should use AVAudioPlayer for sound. VoiceOverAudioPlayerEverywhere feature flag enabled";
LABEL_4:
      v6 = v3;
      v7 = 2;
LABEL_10:
      _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_INFO, v5, &v15, v7);
    }
  }

  else
  {
    if (!self->_soundChannels && !self->_hearingAidStreamSelected && ![(VOTSound *)self isVolumeSound])
    {
      v10 = +[VOTWorkspace sharedWorkspace];
      LODWORD(soundChannels) = [v10 currentCallState];

      if (soundChannels == 1)
      {
        v3 = VOTLogAudio();
        if (!os_log_type_enabled(v3, OS_LOG_TYPE_INFO))
        {
          goto LABEL_11;
        }

        LOWORD(v15) = 0;
        v5 = "Should use AVAudioPlayer for sound. Call is active";
      }

      else
      {
        v11 = +[AXAudioHardwareManager defaultPort];
        portType = [v11 portType];
        v13 = [portType isEqualToString:AVAudioSessionPortBuiltInSpeaker];

        v3 = VOTLogAudio();
        v14 = os_log_type_enabled(v3, OS_LOG_TYPE_INFO);
        if (v13)
        {
          if (v14)
          {
            LOWORD(v15) = 0;
            _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_INFO, "Should not use AVAudioPlayer for sound", &v15, 2u);
          }

          LOBYTE(soundChannels) = 0;
          goto LABEL_11;
        }

        if (!v14)
        {
          LOBYTE(soundChannels) = 1;
          goto LABEL_11;
        }

        LOWORD(v15) = 0;
        v5 = "Should use AVAudioPlayer for sound. Default port is not builtin-speaker";
      }

      LOBYTE(soundChannels) = 1;
      goto LABEL_4;
    }

    v3 = VOTLogAudio();
    LOBYTE(soundChannels) = 1;
    if (os_log_type_enabled(v3, OS_LOG_TYPE_INFO))
    {
      soundChannels = self->_soundChannels;
      hearingAidStreamSelected = self->_hearingAidStreamSelected;
      v15 = 134218496;
      v16 = soundChannels;
      v17 = 2048;
      v18 = hearingAidStreamSelected;
      v19 = 2048;
      isVolumeSound = [(VOTSound *)self isVolumeSound];
      v5 = "Should use AVAudioPlayer for sound. soundChannels=%ld _hearingAidStreamSelected=%ld isVolumeSound=%ld";
      LOBYTE(soundChannels) = 1;
      v6 = v3;
      v7 = 32;
      goto LABEL_10;
    }
  }

LABEL_11:

  return soundChannels;
}

- (void)_updatePlayerWithAudioFile:(BOOL)file
{
  fileCopy = file;
  soundPath = [(VOTSound *)self soundPath];
  v6 = soundPath;
  if (fileCopy)
  {
    pathExtension = [soundPath pathExtension];
    stringByDeletingPathExtension = [v6 stringByDeletingPathExtension];
    v9 = [NSString stringWithFormat:@"%@-mono", stringByDeletingPathExtension];
    v10 = [v9 stringByAppendingPathExtension:pathExtension];

    v6 = v10;
  }

  v11 = [NSBundle bundleForClass:objc_opt_class()];
  resourcePath = [v11 resourcePath];
  v13 = [resourcePath stringByAppendingPathComponent:v6];

  v14 = [objc_allocWithZone(NSURL) initFileURLWithPath:v13 isDirectory:0];
  v20 = 0;
  v15 = [[AVAudioPlayer alloc] initWithContentsOfURL:v14 error:&v20];
  v16 = v20;
  p_player = &self->_player;
  player = self->_player;
  self->_player = v15;

  [(AVAudioPlayer *)self->_player setDelegate:self];
  [(VOTSound *)self setResolvedSoundPath:v6];
  v19 = VOTLogAudio();
  if (os_log_type_enabled(v19, OS_LOG_TYPE_DEBUG))
  {
    sub_10012811C(v6, p_player);
  }
}

- (void)__updateAudioSessionProperties
{
  v3 = +[AXAudioHardwareManager sharedManager];
  v4 = +[AXAudioHardwareManager defaultRouteDescription];
  v5 = [v3 savedChannelsForOutput:v4 forSource:2];

  v6 = VOTLogAudio();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
  {
    v13 = 138543362;
    v14[0] = v5;
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_INFO, "Updating sound properties with new channels: %{public}@", &v13, 0xCu);
  }

  v7 = VOTLogAudio();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
  {
    sub_1001281AC(self, v7);
  }

  soundChannels = self->_soundChannels;
  if (soundChannels != [v5 count] || !self->_player)
  {
    -[VOTSound _updatePlayerWithAudioFile:](self, "_updatePlayerWithAudioFile:", [v5 count] != 2);
  }

  self->_soundChannels = [v5 count];
  numberOfChannels = [(AVAudioPlayer *)self->_player numberOfChannels];
  v10 = VOTLogAudio();
  if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
  {
    v11 = [v5 count];
    v13 = 67109376;
    LODWORD(v14[0]) = numberOfChannels;
    WORD2(v14[0]) = 1024;
    *(v14 + 6) = v11;
    _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_INFO, "Player channels: %d, selected channels: %d", &v13, 0xEu);
  }

  if ([v5 count] && objc_msgSend(v5, "count") == numberOfChannels)
  {
    v12 = [TTSAudioSessionChannel convertChannels:v5];
    [(AVAudioPlayer *)self->_player setChannelAssignments:v12];
  }

  else
  {
    [(AVAudioPlayer *)self->_player setChannelAssignments:0];
  }
}

- (void)_updateAudioSessionProperties
{
  soundThread = [(VOTSound *)self soundThread];
  [soundThread performSelector:"__updateAudioSessionProperties" onTarget:self count:0 objects:0];
}

- (void)dealloc
{
  soundID = self->_soundID;
  if (soundID)
  {
    AudioServicesDisposeSystemSoundID(soundID);
  }

  completionBlock = self->_completionBlock;
  if (completionBlock)
  {
    self->_completionBlock = 0;
  }

  v5.receiver = self;
  v5.super_class = VOTSound;
  [(VOTSound *)&v5 dealloc];
}

- (void)setCompletionBlock:(id)block
{
  blockCopy = block;
  completionBlock = self->_completionBlock;
  if (completionBlock != blockCopy)
  {
    v9 = blockCopy;
    if (completionBlock)
    {
      [(VOTSound *)self _finishedPlaying];
      os_unfair_lock_lock(&self->_completionBlockLock);
      v6 = self->_completionBlock;
      self->_completionBlock = 0;

      os_unfair_lock_unlock(&self->_completionBlockLock);
      blockCopy = v9;
    }

    if (blockCopy)
    {
      os_unfair_lock_lock(&self->_completionBlockLock);
      v7 = [v9 copy];
      v8 = self->_completionBlock;
      self->_completionBlock = v7;

      os_unfair_lock_unlock(&self->_completionBlockLock);
      blockCopy = v9;
    }
  }
}

- (void)_finishedPlaying
{
  os_unfair_lock_lock(&self->_completionBlockLock);
  v3 = objc_retainBlock(self->_completionBlock);
  delegate = [(VOTSound *)self delegate];
  v5 = objc_retainBlock(v3);
  v6 = objc_getAssociatedObject(v5, &unk_1001FEA00);

  v7 = VOTLogAudio();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
  {
    sub_100128228();
  }

  if (([v6 BOOLValue] & 1) == 0)
  {
    if (v3)
    {
      v8 = objc_retainBlock(v3);
      objc_setAssociatedObject(v8, &unk_1001FEA00, &__kCFBooleanTrue, 1);
    }

    soundThread = self->_soundThread;
    v10 = objc_retainBlock(v3);
    [(SCRCThread *)soundThread performSelector:"_sendFinishPlayingNotificationsWithCompletionBlock:delegate:" onTarget:self count:2 objects:v10, delegate];
  }

  if (![(VOTSound *)self shouldUseAVAudioPlayer])
  {
    self->_isPlaying = 0;
  }

  os_unfair_lock_unlock(&self->_completionBlockLock);
}

- (void)_sendFinishPlayingNotificationsWithCompletionBlock:(id)block delegate:(id)delegate
{
  if (block)
  {
    (*(block + 2))(block, self);
  }

  else
  {
    [delegate sound:self didFinishPlaying:1];
  }
}

- (BOOL)isPlaying
{
  isPlaying = self->_isPlaying;
  if (isPlaying)
  {
    if ([(AVAudioPlayer *)self->_player isPlaying])
    {
      LOBYTE(isPlaying) = self->_isPlaying;
    }

    else
    {
      [(VOTSound *)self _finishedPlaying];
      LOBYTE(isPlaying) = 0;
      self->_isPlaying = 0;
    }
  }

  return isPlaying;
}

- (void)_cancelHelperFired:(unint64_t)fired
{
  v5 = VOTLogAudio();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
  {
    soundPlayGeneration = self->_soundPlayGeneration;
    isPlaying = self->_isPlaying;
    v8 = 134218496;
    v9 = soundPlayGeneration;
    v10 = 2048;
    firedCopy = fired;
    v12 = 1024;
    v13 = isPlaying;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_INFO, "Cancel helper fired, %llu = %llu, playing: %d", &v8, 0x1Cu);
  }

  if (self->_soundPlayGeneration == fired && self->_isPlaying)
  {
    [(VOTSound *)self _finishedPlaying];
  }
}

- (void)playAvoidingSSS:(BOOL)s
{
  sCopy = s;
  [(SCRCTargetSelectorTimer *)self->_cancelHelperTimer cancel];
  ++self->_soundPlayGeneration;
  self->_isPlaying = 1;
  if (([VOTSharedWorkspace soundMuted] & 1) != 0 || objc_msgSend(VOTSharedWorkspace, "voiceOverIsIdle"))
  {
    [(VOTSound *)self _finishedPlaying];
    self->_isPlaying = 0;
  }

  else
  {
    shouldUseAVAudioPlayer = [(VOTSound *)self shouldUseAVAudioPlayer];
    v6 = VOTLogAudio();
    v7 = os_log_type_enabled(v6, OS_LOG_TYPE_INFO);
    if ((shouldUseAVAudioPlayer & 1) != 0 || sCopy)
    {
      if (v7)
      {
        v12 = sCopy;
        soundPath = [(VOTSound *)self soundPath];
        *buf = 134218498;
        v20 = shouldUseAVAudioPlayer;
        v21 = 2048;
        v22 = v12;
        v23 = 2112;
        v24 = soundPath;
        _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_INFO, "Will play sound via AVAudioPlayer. useAVAudioPlayer=%ld avoidSSS=%ld path=%@", buf, 0x20u);
      }

      [(AVAudioPlayer *)self->_player play];
      soundPlayGeneration = self->_soundPlayGeneration;
      cancelHelperTimer = self->_cancelHelperTimer;
      v16[0] = _NSConcreteStackBlock;
      v16[1] = 3221225472;
      v16[2] = sub_10001232C;
      v16[3] = &unk_1001C7900;
      v16[4] = self;
      v16[5] = soundPlayGeneration;
      [(SCRCTargetSelectorTimer *)cancelHelperTimer dispatchAfterDelay:v16 withBlock:0.5];
    }

    else
    {
      if (v7)
      {
        v8 = [NSNumber numberWithBool:0];
        soundPath2 = [(VOTSound *)self soundPath];
        *buf = 138412546;
        v20 = v8;
        v21 = 2112;
        v22 = soundPath2;
        _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_INFO, "Will play sound via AudioServices. avoidSSS=%@ path=%@", buf, 0x16u);
      }

      *buf = 1;
      AudioServicesSetProperty(0x61637421u, 4u, &self->_soundID, 4u, buf);
      v18[0] = &off_1001D9A40;
      v17[0] = kAudioServicesPlaySystemSoundOptionBehaviorKey;
      v17[1] = kAudioServicesPlaySystemSoundOptionVolumeKey;
      v10 = [NSNumber numberWithDouble:self->_volume];
      v17[2] = kAudioServicesPlaySystemSoundOptionIgnoreRingerSwitchKey;
      v18[1] = v10;
      v18[2] = &__kCFBooleanTrue;
      v11 = [NSDictionary dictionaryWithObjects:v18 forKeys:v17 count:3];

      AudioServicesPlaySystemSoundWithOptions();
    }
  }
}

- (void)audioPlayerDecodeErrorDidOccur:(id)occur error:(id)error
{
  errorCopy = error;
  v6 = VOTLogAudio();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
  {
    sub_100128364();
  }

  [(VOTSound *)self _finishedPlaying];
  self->_isPlaying = 0;
}

- (void)audioPlayerDidFinishPlaying:(id)playing successfully:(BOOL)successfully
{
  [(SCRCTargetSelectorTimer *)self->_cancelHelperTimer cancel];
  v6 = VOTLogAudio();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEBUG))
  {
    sub_1001283E0(successfully);
  }

  [(VOTSound *)self _finishedPlaying];
  self->_isPlaying = 0;
}

@end