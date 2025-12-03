@interface VOTOutputSoundComponent
- (VOTOutputSoundComponent)init;
- (double)_soundVolume;
- (id)_findSound:(id)sound;
- (void)_handlePerformAction:(id)action;
- (void)_handleSoundThreadMediaSessionDied;
- (void)_initializeThread;
- (void)_playSoundFast:(id)fast startedBlock:(id)block completionBlock:(id)completionBlock;
- (void)handleEvent:(id)event;
- (void)playSoundFast:(id)fast startedBlock:(id)block completionBlock:(id)completionBlock;
- (void)sound:(id)sound didFinishPlaying:(BOOL)playing;
@end

@implementation VOTOutputSoundComponent

- (VOTOutputSoundComponent)init
{
  v11.receiver = self;
  v11.super_class = VOTOutputSoundComponent;
  v2 = [(VOTOutputComponent *)&v11 init];
  if (v2)
  {
    v3 = [objc_allocWithZone(NSMutableDictionary) init];
    cachedSounds = v2->_cachedSounds;
    v2->_cachedSounds = v3;

    v5 = objc_alloc_init(SCRCThread);
    soundThread = v2->_soundThread;
    v2->_soundThread = v5;

    [(SCRCThread *)v2->_soundThread performSelector:"_initializeThread" onTarget:v2 count:0 objects:0];
    v7 = +[NSNotificationCenter defaultCenter];
    [v7 addObserver:v2 selector:"_mediaSessionDied:" name:AVAudioSessionMediaServicesWereLostNotification object:0];

    v8 = +[NSNotificationCenter defaultCenter];
    [v8 addObserver:v2 selector:"_mediaSessionDied:" name:AVAudioSessionMediaServicesWereResetNotification object:0];

    v9 = v2;
  }

  return v2;
}

- (void)_initializeThread
{
  AXSetThreadPriority();
  v2 = +[NSThread currentThread];
  [v2 setName:@"SoundThread"];
}

- (void)_handleSoundThreadMediaSessionDied
{
  v7 = 0u;
  v8 = 0u;
  v9 = 0u;
  v10 = 0u;
  allValues = [(NSMutableDictionary *)self->_cachedSounds allValues];
  v3 = [allValues countByEnumeratingWithState:&v7 objects:v11 count:16];
  if (v3)
  {
    v4 = v3;
    v5 = *v8;
    do
    {
      v6 = 0;
      do
      {
        if (*v8 != v5)
        {
          objc_enumerationMutation(allValues);
        }

        [*(*(&v7 + 1) + 8 * v6) resetSoundForLostMediaSession];
        v6 = v6 + 1;
      }

      while (v4 != v6);
      v4 = [allValues countByEnumeratingWithState:&v7 objects:v11 count:16];
    }

    while (v4);
  }
}

- (void)handleEvent:(id)event
{
  eventCopy = event;
  v4 = [eventCopy objectForIndex:1];
  unsignedIntValue = [v4 unsignedIntValue];

  if (unsignedIntValue == 6)
  {
    [(SCRCThread *)self->_soundThread performSelector:"_handlePerformAction:" onTarget:self count:1 objects:eventCopy];
  }
}

- (id)_findSound:(id)sound
{
  soundPath = [sound soundPath];
  v5 = [(NSMutableDictionary *)self->_cachedSounds objectForKey:soundPath];
  if (!v5)
  {
    v5 = [objc_allocWithZone(VOTSound) initWithSoundPath:soundPath thread:self->_soundThread];
    v6 = [[VOSDefaultSoundPack alloc] init];
    v7 = +[VOSOutputEvent DidChangeVolume];
    v8 = [v6 soundAssetURLForOutputEvent:v7];
    lastPathComponent = [v8 lastPathComponent];

    lastPathComponent2 = [soundPath lastPathComponent];
    LODWORD(v7) = [lastPathComponent2 isEqualToString:lastPathComponent];

    if (v7)
    {
      [v5 setIsVolumeSound:1];
    }

    if (v5)
    {
      [(NSMutableDictionary *)self->_cachedSounds setObject:v5 forKey:soundPath];
    }

    else
    {
      [(VOTOutputSoundComponent *)self sound:0 didFinishPlaying:0];
    }
  }

  return v5;
}

- (double)_soundVolume
{
  v2 = +[AXSettings sharedInstance];
  voiceOverAdjustSoundVolumeIndependently = [v2 voiceOverAdjustSoundVolumeIndependently];

  v4 = +[AXSettings sharedInstance];
  v5 = v4;
  if (voiceOverAdjustSoundVolumeIndependently)
  {
    [v4 voiceOverSoundVolume];
    v7 = v6;
  }

  else
  {
    [v4 voiceOverEffectiveSpeakingVolume];
    v7 = v8;
  }

  return v7;
}

- (void)_handlePerformAction:(id)action
{
  actionCopy = action;
  v7 = [actionCopy objectForIndex:14];
  v5 = [actionCopy objectForIndex:13];

  v6 = [(VOTOutputSoundComponent *)self _findSound:v7];
  [v6 setOwner:v5];
  [v6 setDelegate:self];
  [v6 play];
}

- (void)playSoundFast:(id)fast startedBlock:(id)block completionBlock:(id)completionBlock
{
  soundThread = self->_soundThread;
  completionBlockCopy = completionBlock;
  fastCopy = fast;
  v12 = [block copy];
  v11 = [completionBlockCopy copy];

  [(SCRCThread *)soundThread performSelector:"_playSoundFast:startedBlock:completionBlock:" onTarget:self count:3 objects:fastCopy, v12, v11];
}

- (void)_playSoundFast:(id)fast startedBlock:(id)block completionBlock:(id)completionBlock
{
  fastCopy = fast;
  blockCopy = block;
  completionBlockCopy = completionBlock;
  v11 = VOTLogAudio();
  if (os_log_type_enabled(v11, OS_LOG_TYPE_INFO))
  {
    *buf = 138412290;
    *v35 = fastCopy;
    _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_INFO, "Sound component play: %@", buf, 0xCu);
  }

  soundEffectsEnabled = [VOTSharedWorkspace soundEffectsEnabled];
  soundMuted = [VOTSharedWorkspace soundMuted];
  voiceOverIsIdle = [VOTSharedWorkspace voiceOverIsIdle];
  v15 = [(VOTOutputComponent *)self determineOutputMutedForActivity:fastCopy];
  if (!(soundMuted & 1 | ((soundEffectsEnabled & 1) == 0) | (voiceOverIsIdle | v15) & 1))
  {
    v17 = [(VOTOutputSoundComponent *)self _findSound:fastCopy];
    outputActionID = [fastCopy outputActionID];
    soundPath = [v17 soundPath];
    v20 = [NSString stringWithFormat:@"%llu-%@", outputActionID, soundPath];

    if ([v17 isPlaying])
    {
LABEL_22:

      goto LABEL_23;
    }

    v21 = VOTLogAudio();
    if (os_log_type_enabled(v21, OS_LOG_TYPE_INFO))
    {
      *buf = 138412546;
      *v35 = v17;
      *&v35[8] = 2112;
      v36 = v20;
      _os_log_impl(&_mh_execute_header, v21, OS_LOG_TYPE_INFO, "Sound not playing, start %@, %@", buf, 0x16u);
    }

    v22 = +[VOTOutputManager outputManager];
    audioSessionActive = [v22 audioSessionActive];

    v24 = +[VOTOutputManager outputManager];
    [v24 enableAudioSession:v20];

    objc_initWeak(&location, v17);
    v29[0] = _NSConcreteStackBlock;
    v29[1] = 3221225472;
    v29[2] = sub_100027360;
    v29[3] = &unk_1001C7D78;
    v25 = v20;
    v30 = v25;
    v31 = completionBlockCopy;
    objc_copyWeak(&v32, &location);
    [v17 setCompletionBlock:v29];
    [(VOTOutputSoundComponent *)self _soundVolume];
    *&v26 = v26;
    [v17 setVolume:v26];
    if (audioSessionActive)
    {
      [v17 play];
      v27 = VOTLogAudio();
      if (os_log_type_enabled(v27, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138412290;
        *v35 = v25;
        v28 = "play with SSS: %@";
LABEL_18:
        _os_log_impl(&_mh_execute_header, v27, OS_LOG_TYPE_DEFAULT, v28, buf, 0xCu);
      }
    }

    else
    {
      [v17 playAvoidingSSS];
      v27 = VOTLogAudio();
      if (os_log_type_enabled(v27, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138412290;
        *v35 = v25;
        v28 = "play no SSS: %@";
        goto LABEL_18;
      }
    }

    if (blockCopy)
    {
      blockCopy[2](blockCopy, v17);
    }

    objc_destroyWeak(&v32);

    objc_destroyWeak(&location);
    goto LABEL_22;
  }

  v16 = VOTLogAudio();
  if (os_log_type_enabled(v16, OS_LOG_TYPE_INFO))
  {
    *buf = 67109888;
    *v35 = soundEffectsEnabled;
    *&v35[4] = 1024;
    *&v35[6] = soundMuted;
    LOWORD(v36) = 1024;
    *(&v36 + 2) = voiceOverIsIdle;
    HIWORD(v36) = 1024;
    v37 = v15;
    _os_log_impl(&_mh_execute_header, v16, OS_LOG_TYPE_INFO, "Sound effects enabled: %d, sound muted: %d, idle: %d, activity: %d", buf, 0x1Au);
  }

  [fastCopy setObject:&__kCFBooleanTrue forVariant:82];
  if (blockCopy)
  {
    blockCopy[2](blockCopy, 0);
  }

  if (completionBlockCopy)
  {
    (*(completionBlockCopy + 2))(completionBlockCopy, 0);
  }

LABEL_23:
}

- (void)sound:(id)sound didFinishPlaying:(BOOL)playing
{
  playingCopy = playing;
  soundCopy = sound;
  action = [soundCopy action];
  v7 = [action objectForVariant:12];
  v8 = v7;
  if (v7)
  {
    [v7 sound:soundCopy didFinishPlaying:playingCopy];
  }

  if (([action synchronization] & 2) != 0)
  {
    owner = [soundCopy owner];
    v10 = [objc_allocWithZone(AXIndexMap) init];
    [v10 setObject:action forIndex:11];
    [v10 setObject:owner forIndex:13];
    [(VOTOutputComponent *)self notifyActionComplete:v10];
  }
}

@end