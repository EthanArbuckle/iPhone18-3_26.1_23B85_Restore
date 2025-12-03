@interface AVAudioPlayer
- (AVAudioPlayer)initWithContentsOfURL:(NSURL *)url fileTypeHint:(NSString *)utiString error:(NSError *)outError;
- (AVAudioPlayer)initWithData:(NSData *)data fileTypeHint:(NSString *)utiString error:(NSError *)outError;
- (BOOL)enableRate;
- (BOOL)isMeteringEnabled;
- (BOOL)isPlaying;
- (NSTimeInterval)currentTime;
- (NSTimeInterval)deviceCurrentTime;
- (NSTimeInterval)duration;
- (NSUInteger)numberOfChannels;
- (float)averagePowerForChannel:(NSUInteger)channelNumber;
- (float)pan;
- (float)peakPowerForChannel:(NSUInteger)channelNumber;
- (float)rate;
- (float)volume;
- (id)STSLabel;
- (id)audioSession;
- (id)initBase;
- (void)beginInterruption;
- (void)dealloc;
- (void)decodeError:(id)error;
- (void)endInterruption;
- (void)endInterruptionWithFlags:(id)flags;
- (void)finalize;
- (void)finishedPlaying:(id)playing;
- (void)handleInterruption:(id)interruption;
- (void)privRemoveSessionListener;
- (void)setAudioSession:(id)session;
- (void)setChannelAssignments:(NSArray *)channelAssignments;
- (void)setCurrentTime:(NSTimeInterval)currentTime;
- (void)setDelegate:(id)delegate;
- (void)setEnableRate:(BOOL)enableRate;
- (void)setMeteringEnabled:(BOOL)meteringEnabled;
- (void)setMixToUplink:(BOOL)uplink;
- (void)setPan:(float)pan;
- (void)setRate:(float)rate;
- (void)setSTSLabel:(id)label;
- (void)setUseInjectionDevice:(BOOL)device;
- (void)setVolume:(float)volume;
- (void)setVolume:(float)volume fadeDuration:(NSTimeInterval)duration;
@end

@implementation AVAudioPlayer

- (id)initBase
{
  v6.receiver = self;
  v6.super_class = AVAudioPlayer;
  v2 = [(AVAudioPlayer *)&v6 init];
  if (v2)
  {
    v3 = objc_alloc_init(AudioPlayerImpl);
    v2->_impl = v3;
    if (!v3)
    {
      v4 = v2;
      return 0;
    }
  }

  return v2;
}

- (id)STSLabel
{
  v2 = *(self->_impl + 11);
  v3 = *(v2 + 536);
  if (v3)
  {
    CFRetain(*(v2 + 536));
    CFRelease(v3);
  }

  return v3;
}

- (void)setSTSLabel:(id)label
{
  labelCopy = label;
  v4 = *(self->_impl + 11);
  if (!label)
  {
LABEL_7:
    v6 = *(v4 + 67);
    *(v4 + 67) = 0;
    v7 = 1;
    if (!v6)
    {
      goto LABEL_9;
    }

    goto LABEL_8;
  }

  CFRetain(label);
  v5 = CFGetTypeID(labelCopy);
  if (v5 != CFStringGetTypeID())
  {
    CFRelease(labelCopy);
    labelCopy = 0;
    goto LABEL_7;
  }

  v6 = *(v4 + 67);
  *(v4 + 67) = labelCopy;
  CFRetain(labelCopy);
  v7 = 0;
  if (v6)
  {
LABEL_8:
    CFRelease(v6);
  }

LABEL_9:
  AVAudioPlayerCpp::applySTSLabelToQueueIfPossible(v4);
  if ((v7 & 1) == 0)
  {
    CFRelease(labelCopy);
  }
}

- (void)setMixToUplink:(BOOL)uplink
{
  if (uplink)
  {
    v3 = 256;
  }

  else
  {
    v3 = 0;
  }

  *(*(self->_impl + 11) + 24) = *(*(self->_impl + 11) + 24) & 0xFFFFFEFF | v3;
}

- (void)setUseInjectionDevice:(BOOL)device
{
  if (device)
  {
    v3 = 0x80000;
  }

  else
  {
    v3 = 0;
  }

  *(*(self->_impl + 11) + 24) = *(*(self->_impl + 11) + 24) & 0xFFF7FFFF | v3;
}

- (void)setAudioSession:(id)session
{
  sessionCopy = session;
  objc_sync_enter(self);
  impl = self->_impl;
  [(AVAudioPlayer *)self stop];
  [(AVAudioPlayer *)self privRemoveSessionListener];
  v7 = *(impl + 11);
  *(v7 + 456) = [session opaqueSessionID];

  *(impl + 8) = session;
  tryToSetPlayerSessionListener(self);

  objc_sync_exit(self);
}

- (id)audioSession
{
  v2 = *(self->_impl + 8);

  return v2;
}

- (void)setChannelAssignments:(NSArray *)channelAssignments
{
  v31 = *MEMORY[0x1E69E9840];
  impl = self->_impl;
  v6 = [(NSArray *)channelAssignments count];
  if (v6 == [(AVAudioPlayer *)self numberOfChannels])
  {
    v7 = impl[7];
    impl[7] = [(NSArray *)channelAssignments copy];
    if (v7)
    {
    }

    if (!(v6 >> 60))
    {
      v8 = malloc_type_malloc(16 * v6, 0x1060040ADAFC7CAuLL);
      if (v8)
      {
        v9 = v8;
        v28 = 0u;
        v29 = 0u;
        v26 = 0u;
        v27 = 0u;
        v10 = [(NSArray *)channelAssignments countByEnumeratingWithState:&v26 objects:v30 count:16];
        if (v10)
        {
          v11 = v10;
          v12 = 0;
          v13 = *v27;
          do
          {
            v14 = 0;
            v15 = &v9[16 * v12];
            v12 += v11;
            do
            {
              if (*v27 != v13)
              {
                objc_enumerationMutation(channelAssignments);
              }

              v16 = *(*(&v26 + 1) + 8 * v14);
              if (v16)
              {
                *v15 = [*(*(&v26 + 1) + 8 * v14) owningPortUID];
                channelNumber = [v16 channelNumber];
              }

              else
              {
                channelNumber = 0;
                *v15 = 0;
              }

              *(v15 + 2) = channelNumber;
              ++v14;
              v15 += 16;
            }

            while (v11 != v14);
            v11 = [(NSArray *)channelAssignments countByEnumeratingWithState:&v26 objects:v30 count:16];
          }

          while (v11);
        }

        v18 = impl[11];
        AVAudioPlayerCpp::freeChannelAssignments(v18);
        *(v18 + 520) = v6;
        v19 = malloc_type_malloc((16 * v6) & 0xFFFFFFFF0, 0x1060040ADAFC7CAuLL);
        *(v18 + 528) = v19;
        if (v19)
        {
          v20 = *(v18 + 520);
          if (v20)
          {
            v21 = 0;
            for (i = 0; i < v20; ++i)
            {
              v23 = *&v9[v21];
              if (v23)
              {
                CFRetain(*&v9[v21]);
                v23 = *&v9[v21];
                v19 = *(v18 + 528);
                v20 = *(v18 + 520);
              }

              v24 = &v19[v21];
              *v24 = v23;
              *(v24 + 2) = *&v9[v21 + 8];
              v21 += 16;
            }
          }

          AVAudioPlayerCpp::makeChannelAssignments(v18);
        }

        free(v9);
      }
    }
  }

  v25 = *MEMORY[0x1E69E9840];
}

- (float)averagePowerForChannel:(NSUInteger)channelNumber
{
  v3 = *(self->_impl + 11);
  if (*(v3 + 60) > channelNumber && *(v3 + 307) == 1 && (v4 = *(v3 + 384)) != 0)
  {
    return *(v4 + 8 * channelNumber);
  }

  else
  {
    return -160.0;
  }
}

- (float)peakPowerForChannel:(NSUInteger)channelNumber
{
  v3 = *(self->_impl + 11);
  if (*(v3 + 60) > channelNumber && *(v3 + 307) == 1 && (v4 = *(v3 + 384)) != 0)
  {
    return *(v4 + 8 * channelNumber + 4);
  }

  else
  {
    return -160.0;
  }
}

- (void)setMeteringEnabled:(BOOL)meteringEnabled
{
  impl = self->_impl;
  LODWORD(var4) = meteringEnabled;
  AVAudioPlayerCpp::SetProperty(impl[11], 1701735796, 4, &var4);
}

- (BOOL)isMeteringEnabled
{
  impl = self->_impl;
  v4 = 0;
  AudioPlayerImpl_GetProperty<unsigned int>(impl[11], 1701735796, &v4);
  return v4 != 0;
}

- (void)setCurrentTime:(NSTimeInterval)currentTime
{
  impl = self->_impl;
  v4 = currentTime;
  AVAudioPlayerCpp::SetProperty(impl[11], 1668573549, 8, &v4);
}

- (NSTimeInterval)deviceCurrentTime
{
  impl = self->_impl;
  v4 = 0.0;
  AudioPlayerImpl_GetProperty<double>(impl[11], 1685350765, &v4);
  return v4;
}

- (NSTimeInterval)currentTime
{
  impl = self->_impl;
  v4 = 0.0;
  AudioPlayerImpl_GetProperty<double>(impl[11], 1668573549, &v4);
  return v4;
}

- (NSUInteger)numberOfChannels
{
  impl = self->_impl;
  v4 = 0;
  AudioPlayerImpl_GetProperty<unsigned int>(impl[11], 1667788403, &v4);
  return v4;
}

- (float)pan
{
  impl = self->_impl;
  v4 = 0.0;
  AudioPlayerImpl_GetProperty<double>(impl[11], 1885433376, &v4);
  return v4;
}

- (void)setPan:(float)pan
{
  impl = self->_impl;
  v4 = pan;
  AVAudioPlayerCpp::SetProperty(impl[11], 1885433376, 8, &v4);
}

- (float)rate
{
  impl = self->_impl;
  v4 = 1.0;
  AudioPlayerImpl_GetProperty<double>(impl[11], 1918989413, &v4);
  return v4;
}

- (void)setRate:(float)rate
{
  impl = self->_impl;
  v4 = rate;
  AVAudioPlayerCpp::SetProperty(impl[11], 1918989413, 8, &v4);
}

- (BOOL)enableRate
{
  impl = self->_impl;
  v4 = 0;
  AudioPlayerImpl_GetProperty<unsigned int>(impl[11], 1701737076, &v4);
  return v4 != 0;
}

- (void)setEnableRate:(BOOL)enableRate
{
  impl = self->_impl;
  LODWORD(var4) = enableRate;
  AVAudioPlayerCpp::SetProperty(impl[11], 1701737076, 4, &var4);
}

- (void)setVolume:(float)volume fadeDuration:(NSTimeInterval)duration
{
  impl = self->_impl;
  v7 = duration;
  AVAudioPlayerCpp::SetProperty(impl[11], 1987015284, 8, &v7);
  v6 = volume;
  AVAudioPlayerCpp::SetProperty(impl[11], 1987013749, 8, &v6);
}

- (float)volume
{
  impl = self->_impl;
  v4 = 0.0;
  AudioPlayerImpl_GetProperty<double>(impl[11], 1987013749, &v4);
  return v4;
}

- (void)setVolume:(float)volume
{
  impl = self->_impl;
  v6 = 0;
  AVAudioPlayerCpp::SetProperty(impl[11], 1987015284, 8, &v6);
  v5 = volume;
  AVAudioPlayerCpp::SetProperty(impl[11], 1987013749, 8, &v5);
}

- (NSTimeInterval)duration
{
  impl = self->_impl;
  v4 = 0.0;
  AudioPlayerImpl_GetProperty<double>(impl[11], 1685418593, &v4);
  return v4;
}

- (void)setDelegate:(id)delegate
{
  impl = self->_impl;
  if (objc_loadWeak(impl + 1) != delegate)
  {

    objc_storeWeak(impl + 1, delegate);
  }
}

- (BOOL)isPlaying
{
  impl = self->_impl;
  v4 = 0;
  AudioPlayerImpl_GetProperty<unsigned int>(impl[11], 1886157119, &v4);
  return v4 != 0;
}

- (AVAudioPlayer)initWithData:(NSData *)data fileTypeHint:(NSString *)utiString error:(NSError *)outError
{
  initBase = [(AVAudioPlayer *)self initBase];
  if (initBase)
  {
    if (outError)
    {
      *outError = 0;
    }

    if (data)
    {
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        *(initBase->_impl + 2) = data;
        v8 = data;
        operator new();
      }
    }

    if (outError)
    {
      *outError = [MEMORY[0x1E696ABC0] errorWithDomain:*MEMORY[0x1E696A768] code:-10875 userInfo:0];
    }

    v9 = initBase;
    return 0;
  }

  return initBase;
}

- (AVAudioPlayer)initWithContentsOfURL:(NSURL *)url fileTypeHint:(NSString *)utiString error:(NSError *)outError
{
  initBase = [(AVAudioPlayer *)self initBase];
  v8 = initBase;
  if (initBase)
  {
    if (outError)
    {
      *outError = 0;
      if (!url)
      {
        *outError = [MEMORY[0x1E696ABC0] errorWithDomain:*MEMORY[0x1E696A768] code:-10875 userInfo:0];
LABEL_7:
        v10 = v8;
        return 0;
      }
    }

    else if (!url)
    {
      goto LABEL_7;
    }

    *(initBase->_impl + 3) = url;
    v9 = url;
    operator new();
  }

  return v8;
}

- (void)dealloc
{
  [(AVAudioPlayer *)self privRemoveSessionListener];

  self->_impl = 0;
  v3.receiver = self;
  v3.super_class = AVAudioPlayer;
  [(AVAudioPlayer *)&v3 dealloc];
}

- (void)finalize
{
  self->_impl = 0;
  v3.receiver = self;
  v3.super_class = AVAudioPlayer;
  [(AVAudioPlayer *)&v3 finalize];
}

- (void)endInterruption
{
  v3 = objc_autoreleasePoolPush();
  [-[AVAudioPlayer delegate](self "delegate")];

  objc_autoreleasePoolPop(v3);
}

- (void)endInterruptionWithFlags:(id)flags
{
  v5 = objc_autoreleasePoolPush();
  delegate = [(AVAudioPlayer *)self delegate];
  if (objc_opt_respondsToSelector())
  {
    [delegate audioPlayerEndInterruption:self withOptions:{objc_msgSend(flags, "unsignedLongLongValue")}];
  }

  else if (objc_opt_respondsToSelector())
  {
    [delegate audioPlayerEndInterruption:self withFlags:{objc_msgSend(flags, "unsignedLongLongValue")}];
  }

  objc_autoreleasePoolPop(v5);
}

- (void)beginInterruption
{
  v3 = objc_autoreleasePoolPush();
  [-[AVAudioPlayer delegate](self "delegate")];

  objc_autoreleasePoolPop(v3);
}

- (void)handleInterruption:(id)interruption
{
  impl = self->_impl;
  userInfo = [interruption userInfo];
  v7 = [objc_msgSend(userInfo valueForKey:{*MEMORY[0x1E698D580]), "intValue"}];
  if (v7)
  {
    if (v7 == 1)
    {
      v8 = *(impl + 11);
      if ((*(v8 + 313) & 1) == 0)
      {
        pthread_mutex_lock(&avap_mutex);
        *(v8 + 460) = 1;
        v9 = *(v8 + 307);
        if ((v9 & 1) != 0 || *(v8 + 305) == 1)
        {
          *(v8 + 461) = v9;
          AVAudioPlayerCpp::getQueueTime(v8, 1);
          v10 = *(v8 + 336);
          *(v8 + 344) = *(v8 + 328);
          *(v8 + 320) = v10;
          *(v8 + 315) = 0;
          *(v8 + 304) = 0;
          *(v8 + 308) = 0;
          *(v8 + 307) = 0;
        }

        pthread_mutex_unlock(&avap_mutex);
        if (v9)
        {

          LocalPlayerHandleCallback(self, 1651076724, 0, 0);
        }
      }
    }
  }

  else
  {
    v11 = *(impl + 11);
    if ((*(v11 + 313) & 1) == 0)
    {
      pthread_mutex_lock(&avap_mutex);
      if (*(v11 + 460) == 1)
      {
        AVAudioPlayerCpp::disposeQueue(v11, 1);
        v12 = *(v11 + 460);
      }

      else
      {
        v12 = 0;
      }

      v13 = *(v11 + 461);
      pthread_mutex_unlock(&avap_mutex);
      if (v12)
      {
        *(impl + 10) = 0;
        if (v13)
        {
          userInfo2 = [interruption userInfo];
          if ([objc_msgSend(userInfo2 valueForKey:{*MEMORY[0x1E698D568]), "intValue"}] == 1)
          {
            *(impl + 10) |= 1uLL;
          }

          LocalPlayerHandleCallback(self, 1701408372, 8, impl + 20);
        }

        v15 = *(impl + 11);
        pthread_mutex_lock(&avap_mutex);
        *(v15 + 460) = 0;
        pthread_mutex_unlock(&avap_mutex);
      }
    }
  }
}

- (void)privRemoveSessionListener
{
  impl = self->_impl;
  if (impl)
  {
    if (*(impl + 72) == 1)
    {
      defaultCenter = [MEMORY[0x1E696AD88] defaultCenter];
      [defaultCenter removeObserver:self name:*MEMORY[0x1E698D550] object:impl[8]];
      *(impl + 72) = 0;
    }
  }
}

- (void)decodeError:(id)error
{
  v5 = objc_autoreleasePoolPush();
  delegate = [(AVAudioPlayer *)self delegate];
  if (objc_opt_respondsToSelector())
  {
    v7 = objc_alloc(MEMORY[0x1E696ABC0]);
    [delegate audioPlayerDecodeErrorDidOccur:self error:{objc_msgSend(v7, "initWithDomain:code:userInfo:", *MEMORY[0x1E696A768], objc_msgSend(error, "unsignedIntValue"), 0)}];
  }

  objc_autoreleasePoolPop(v5);
}

- (void)finishedPlaying:(id)playing
{
  [(AVAudioPlayer *)self stop];
  v5 = objc_autoreleasePoolPush();
  delegate = [(AVAudioPlayer *)self delegate];
  if (objc_opt_respondsToSelector())
  {
    [delegate audioPlayerDidFinishPlaying:self successfully:{objc_msgSend(playing, "BOOLValue")}];
  }

  objc_autoreleasePoolPop(v5);
}

@end