@interface AVAudioRecorder
- (AVAudioFormat)format;
- (AVAudioRecorder)initWithURL:(NSURL *)url format:(AVAudioFormat *)format error:(NSError *)outError;
- (AVAudioRecorder)initWithURL:(NSURL *)url settings:(NSDictionary *)settings error:(NSError *)outError;
- (AVAudioSession)audioSession;
- (BOOL)deleteRecording;
- (BOOL)instantaneousMetering;
- (BOOL)isMeteringEnabled;
- (BOOL)isRecording;
- (BOOL)prepareToRecord;
- (BOOL)record;
- (BOOL)recordAtTime:(NSTimeInterval)time;
- (BOOL)recordAtTime:(NSTimeInterval)time forDuration:(NSTimeInterval)duration;
- (BOOL)recordForDuration:(NSTimeInterval)duration;
- (NSArray)channelAssignments;
- (NSDictionary)settings;
- (NSTimeInterval)currentTime;
- (NSURL)url;
- (float)averagePowerForChannel:(NSUInteger)channelNumber;
- (float)peakPowerForChannel:(NSUInteger)channelNumber;
- (id)baseInit;
- (id)delegate;
- (int)processToTap;
- (void)beginInterruption;
- (void)dealloc;
- (void)endInterruption;
- (void)endInterruptionWithFlags:(id)a3;
- (void)finalize;
- (void)finishedRecording:(id)a3;
- (void)handleInterruption:(id)a3;
- (void)pause;
- (void)privCommonCleanup;
- (void)privRemoveSessionPropertyListeners;
- (void)privSetDelegate:(id)a3;
- (void)setAudioSession:(id)a3;
- (void)setChannelAssignments:(NSArray *)channelAssignments;
- (void)setDelegate:(id)delegate;
- (void)setInstantaneousMetering:(BOOL)a3;
- (void)setMeteringEnabled:(BOOL)meteringEnabled;
- (void)setProcessToTap:(int)a3;
- (void)stop;
- (void)updateMeters;
@end

@implementation AVAudioRecorder

- (void)handleInterruption:(id)a3
{
  v4 = [a3 userInfo];
  v5 = [v4 objectForKey:*MEMORY[0x1E698D580]];
  impl = self->_impl;
  os_unfair_lock_lock(impl + 64);
  v7 = self->_impl;
  v8 = objc_autoreleasePoolPush();
  objc_loadWeak(&v7->super.isa);
  if (v5 && [v5 unsignedLongValue] == 1)
  {
    if (BYTE2(v7[11]._impl) == 1)
    {
      closeFile(v7, v9);
      BYTE1(v7[15].super.isa) = 1;
      LOWORD(v7[11]._impl) = 0;
      BYTE2(v7[11]._impl) = 0;
      if (objc_opt_respondsToSelector())
      {
        [(AVAudioRecorder *)self performSelectorOnMainThread:sel_beginInterruption withObject:0 waitUntilDone:0];
      }
    }
  }

  else if (BYTE1(v7[15].super.isa) == 1)
  {
    [v7[15]._impl setActive:1 error:0];
    stopAndDisposeRecordQueue(v7, 0);
    if (objc_opt_respondsToSelector() & 1) != 0 || (objc_opt_respondsToSelector())
    {
      v10 = [v4 objectForKey:*MEMORY[0x1E698D568]];
      if (v10)
      {
        v11 = [v10 unsignedLongValue] == 1;
      }

      else
      {
        v11 = 0;
      }

      -[AVAudioRecorder performSelectorOnMainThread:withObject:waitUntilDone:](self, "performSelectorOnMainThread:withObject:waitUntilDone:", sel_endInterruptionWithFlags_, [objc_alloc(MEMORY[0x1E696AD98]) initWithUnsignedInt:v11], 0);
    }

    else if (objc_opt_respondsToSelector())
    {
      [(AVAudioRecorder *)self performSelectorOnMainThread:sel_endInterruption withObject:0 waitUntilDone:0];
    }

    BYTE1(v7[15].super.isa) = 0;
  }

  objc_autoreleasePoolPop(v8);

  os_unfair_lock_unlock(impl + 64);
}

- (void)setInstantaneousMetering:(BOOL)a3
{
  v3 = a3;
  impl = self->_impl;
  os_unfair_lock_lock(impl + 64);
  v6 = self->_impl;
  *(v6 + 191) = v3;
  v7 = *(v6 + 14);
  if (v7)
  {
    inData = v3;
    AudioQueueSetProperty(v7, 0x71696E6Du, &inData, 4u);
  }

  os_unfair_lock_unlock(impl + 64);
}

- (BOOL)instantaneousMetering
{
  v2 = self;
  impl = self->_impl;
  os_unfair_lock_lock(impl + 64);
  LOBYTE(v2) = *(v2->_impl + 191);
  os_unfair_lock_unlock(impl + 64);
  return v2;
}

- (void)setAudioSession:(id)a3
{
  v5 = a3;
  [(AVAudioRecorder *)self stop];
  impl = self->_impl;
  os_unfair_lock_lock(impl + 64);
  [(AVAudioRecorder *)self privRemoveSessionPropertyListeners];
  v7 = self->_impl;

  v7->var33 = a3;
  tryToSetRecorderSessionListener(self, v7);

  os_unfair_lock_unlock(impl + 64);
}

- (AVAudioSession)audioSession
{
  impl = self->_impl;
  os_unfair_lock_lock(impl + 64);
  v4 = *(self->_impl + 31);
  os_unfair_lock_unlock(impl + 64);
  return v4;
}

- (int)processToTap
{
  v2 = self;
  impl = self->_impl;
  os_unfair_lock_lock(impl + 64);
  LODWORD(v2) = *(v2->_impl + 61);
  os_unfair_lock_unlock(impl + 64);
  return v2;
}

- (void)setProcessToTap:(int)a3
{
  impl = self->_impl;
  os_unfair_lock_lock(impl + 64);
  *(self->_impl + 61) = a3;

  os_unfair_lock_unlock(impl + 64);
}

- (void)setChannelAssignments:(NSArray *)channelAssignments
{
  impl = self->_impl;
  os_unfair_lock_lock(impl + 64);
  v6 = self->_impl;
  var6 = v6->var6;
  if (var6 != channelAssignments)
  {
    v6->var6 = [(NSArray *)channelAssignments copy];
    if (var6)
    {
    }

    makeChannelAssignments(v6);
    if (v6->var10)
    {
      v8 = [v6->var6 count];
      v9 = malloc_type_malloc(16 * v8, 0x1060040ADAFC7CAuLL);
      v10 = v9;
      if (v8)
      {
        v11 = 0;
        v12 = v9 + 2;
        do
        {
          v13 = [(NSArray *)channelAssignments objectAtIndex:v11];
          *(v12 - 1) = [v13 owningPortUID];
          *v12 = [v13 channelNumber];
          v12 += 4;
          ++v11;
        }

        while (v8 != v11);
      }

      AudioQueueSetProperty(v6->var10, 0x61716361u, v10, 16 * v8);
      free(v10);
    }
  }

  os_unfair_lock_unlock(impl + 64);
}

- (NSArray)channelAssignments
{
  impl = self->_impl;
  os_unfair_lock_lock(impl + 64);
  v4 = *(self->_impl + 6);
  os_unfair_lock_unlock(impl + 64);
  return v4;
}

- (void)endInterruption
{
  v3 = objc_autoreleasePoolPush();
  [-[AVAudioRecorder delegate](self "delegate")];

  objc_autoreleasePoolPop(v3);
}

- (void)endInterruptionWithFlags:(id)a3
{
  v4 = objc_autoreleasePoolPush();
  v5 = [(AVAudioRecorder *)self delegate];
  if (objc_opt_respondsToSelector())
  {
    [v5 audioRecorderEndInterruption:self withOptions:{objc_msgSend(a3, "unsignedIntegerValue")}];
  }

  else if (objc_opt_respondsToSelector())
  {
    [v5 audioRecorderEndInterruption:self withFlags:{objc_msgSend(a3, "unsignedIntegerValue")}];
  }

  objc_autoreleasePoolPop(v4);
}

- (void)beginInterruption
{
  v3 = objc_autoreleasePoolPush();
  [-[AVAudioRecorder delegate](self "delegate")];

  objc_autoreleasePoolPop(v3);
}

- (float)averagePowerForChannel:(NSUInteger)channelNumber
{
  impl = self->_impl;
  os_unfair_lock_lock(impl + 64);
  v6 = self->_impl;
  v7 = v6[24];
  if (v7 && *(v6 + 23) > channelNumber)
  {
    v8 = *(v7 + 8 * channelNumber);
  }

  else
  {
    v8 = -160.0;
  }

  os_unfair_lock_unlock(impl + 64);
  return v8;
}

- (float)peakPowerForChannel:(NSUInteger)channelNumber
{
  impl = self->_impl;
  os_unfair_lock_lock(impl + 64);
  v6 = self->_impl;
  v7 = v6[24];
  if (v7 && *(v6 + 23) > channelNumber)
  {
    v8 = *(v7 + 8 * channelNumber + 4);
  }

  else
  {
    v8 = -160.0;
  }

  os_unfair_lock_unlock(impl + 64);
  return v8;
}

- (void)updateMeters
{
  impl = self->_impl;
  os_unfair_lock_lock(impl + 64);
  v4 = self->_impl;
  v5 = v4[23];
  v6 = *(v4 + 24);
  if (!v6)
  {
    v6 = malloc_type_calloc(v4[23], 8uLL, 0x100004000313F17uLL);
    *(v4 + 24) = v6;
  }

  v7 = *(v4 + 14);
  if (v7 && *(v4 + 190) == 1)
  {
    ioDataSize = 8 * v5;
    if (AudioQueueGetProperty(v7, 0x61716D64u, v6, &ioDataSize))
    {
      v8 = v5 == 0;
    }

    else
    {
      v8 = 1;
    }

    if (!v8)
    {
      v9 = *(v4 + 24);
      v10 = 8 * v5;
LABEL_12:
      memset_pattern16(v9, &unk_1BA6CF4F0, v10);
    }
  }

  else if (v5)
  {
    v10 = 8 * v5;
    v9 = v6;
    goto LABEL_12;
  }

  os_unfair_lock_unlock(impl + 64);
}

- (void)setMeteringEnabled:(BOOL)meteringEnabled
{
  v3 = meteringEnabled;
  impl = self->_impl;
  os_unfair_lock_lock(impl + 64);
  v6 = self->_impl;
  *(v6 + 190) = v3;
  v7 = *(v6 + 14);
  if (v7)
  {
    inData = v3;
    if (!AudioQueueSetProperty(v7, 0x61716D65u, &inData, 4u))
    {
      *(v6 + 190) = v3;
    }
  }

  os_unfair_lock_unlock(impl + 64);
}

- (BOOL)isMeteringEnabled
{
  v2 = self;
  impl = self->_impl;
  os_unfair_lock_lock(impl + 64);
  LOBYTE(v2) = *(v2->_impl + 190);
  os_unfair_lock_unlock(impl + 64);
  return v2;
}

- (void)setDelegate:(id)delegate
{
  impl = self->_impl;
  os_unfair_lock_lock(impl + 64);
  [(AVAudioRecorder *)self privSetDelegate:delegate];

  os_unfair_lock_unlock(impl + 64);
}

- (id)delegate
{
  impl = self->_impl;
  os_unfair_lock_lock(impl + 64);
  Weak = objc_loadWeak(self->_impl);
  os_unfair_lock_unlock(impl + 64);
  return Weak;
}

- (NSTimeInterval)currentTime
{
  impl = self->_impl;
  os_unfair_lock_lock(impl + 64);
  v4 = self->_impl;
  v5 = *(v4 + 8);
  v6 = *(v4 + 14);
  if (v6 && !AudioQueueGetCurrentTime(v6, 0, &v9, 0))
  {
    *(v4 + 18) = *&v9.mSampleTime;
  }

  v7 = *(v4 + 18) / v5;
  os_unfair_lock_unlock(impl + 64);
  return v7;
}

- (BOOL)deleteRecording
{
  impl = self->_impl;
  os_unfair_lock_lock(impl + 64);
  v4 = self->_impl;
  if (*(v4 + 184))
  {
    goto LABEL_6;
  }

  v5 = [*(v4 + 5) path];
  if (!v5)
  {
    goto LABEL_7;
  }

  if (*(v4 + 189) != 1)
  {
LABEL_6:
    LOBYTE(v5) = 0;
    goto LABEL_7;
  }

  v7 = 0;
  [objc_msgSend(MEMORY[0x1E696AC08] "defaultManager")];
  LOBYTE(v5) = v7 == 0;
  if (v7)
  {
  }

  else
  {
    *(v4 + 189) = 0;
  }

LABEL_7:
  os_unfair_lock_unlock(impl + 64);
  return v5;
}

- (void)stop
{
  impl = self->_impl;
  os_unfair_lock_lock(impl + 64);
  v4 = self->_impl;
  if (stopAndDisposeRecordQueue(v4, 1))
  {
    v5 = [objc_alloc(MEMORY[0x1E696AD98]) initWithBool:BYTE4(v4[11]._impl)];
    v6 = self;
    [(AVAudioRecorder *)self performSelectorOnMainThread:sel_finishedRecording_ withObject:v5 waitUntilDone:0];
  }

  os_unfair_lock_unlock(impl + 64);
}

- (void)pause
{
  impl = self->_impl;
  os_unfair_lock_lock(impl + 64);
  v4 = self->_impl;
  if (*(v4 + 186) == 1)
  {
    AudioQueuePause(v4[14]);
    *(v4 + 186) = 0;
  }

  os_unfair_lock_unlock(impl + 64);
}

- (BOOL)recordAtTime:(NSTimeInterval)time forDuration:(NSTimeInterval)duration
{
  v5 = self;
  v8.mSampleTime = 0.0;
  memset(&v8.mRateScalar, 0, 48);
  v8.mFlags = 2;
  v8.mHostTime = (time * 24000000.0);
  impl = self->_impl;
  os_unfair_lock_lock(impl + 64);
  LOBYTE(v5) = recordQueue(v5, v5->_impl, duration, &v8) == 0;
  os_unfair_lock_unlock(impl + 64);
  return v5;
}

- (BOOL)recordForDuration:(NSTimeInterval)duration
{
  v4 = self;
  impl = self->_impl;
  os_unfair_lock_lock(impl + 64);
  LOBYTE(v4) = recordQueue(v4, v4->_impl, duration, 0) == 0;
  os_unfair_lock_unlock(impl + 64);
  return v4;
}

- (BOOL)recordAtTime:(NSTimeInterval)time
{
  v3 = self;
  v6.mSampleTime = 0.0;
  memset(&v6.mRateScalar, 0, 48);
  v6.mFlags = 2;
  v6.mHostTime = (time * 24000000.0);
  impl = self->_impl;
  os_unfair_lock_lock(impl + 64);
  LOBYTE(v3) = recordQueue(v3, v3->_impl, -1.0, &v6) == 0;
  os_unfair_lock_unlock(impl + 64);
  return v3;
}

- (BOOL)record
{
  v2 = self;
  impl = self->_impl;
  os_unfair_lock_lock(impl + 64);
  LOBYTE(v2) = recordQueue(v2, v2->_impl, -1.0, 0) == 0;
  os_unfair_lock_unlock(impl + 64);
  return v2;
}

- (BOOL)prepareToRecord
{
  v2 = self;
  impl = self->_impl;
  os_unfair_lock_lock(impl + 64);
  LOBYTE(v2) = prepareToRecordQueue(v2, v2->_impl) == 0;
  os_unfair_lock_unlock(impl + 64);
  return v2;
}

- (AVAudioFormat)format
{
  impl = self->_impl;
  os_unfair_lock_lock(impl + 64);
  v4 = *(self->_impl + 4);
  os_unfair_lock_unlock(impl + 64);
  return v4;
}

- (NSDictionary)settings
{
  impl = self->_impl;
  os_unfair_lock_lock(impl + 64);
  v4 = *(self->_impl + 3);
  os_unfair_lock_unlock(impl + 64);
  return v4;
}

- (NSURL)url
{
  impl = self->_impl;
  os_unfair_lock_lock(impl + 64);
  v4 = *(self->_impl + 5);
  os_unfair_lock_unlock(impl + 64);
  return v4;
}

- (BOOL)isRecording
{
  v2 = self;
  impl = self->_impl;
  os_unfair_lock_lock(impl + 64);
  LOBYTE(v2) = *(v2->_impl + 186);
  os_unfair_lock_unlock(impl + 64);
  return v2;
}

- (AVAudioRecorder)initWithURL:(NSURL *)url settings:(NSDictionary *)settings error:(NSError *)outError
{
  v8 = self;
  if (outError)
  {
    *outError = 0;
  }

  [(AVAudioRecorder *)self baseInit];
  impl = v8->_impl;
  *(impl + 5) = url;
  v10 = url;
  *(impl + 2) = settings;
  v11 = settings;
  v12 = [(NSDictionary *)settings objectForKey:@"AVAudioFileTypeKey"];
  if (v12)
  {
    v13 = [v12 unsignedIntValue];
  }

  else
  {
    v13 = fileTypeFromExtension([(NSString *)[(NSURL *)url path] pathExtension]);
  }

  *(impl + 14) = v13;
  v14 = asbdFromSettingsAndFileType2(settings, 0, v13, (impl + 64));
  if (v14)
  {
    if (outError)
    {
      *outError = [MEMORY[0x1E696ABC0] errorWithDomain:*MEMORY[0x1E696A768] code:v14 userInfo:0];
    }

    return 0;
  }

  return v8;
}

- (AVAudioRecorder)initWithURL:(NSURL *)url format:(AVAudioFormat *)format error:(NSError *)outError
{
  if (outError)
  {
    *outError = 0;
    if (!format)
    {
      *outError = [MEMORY[0x1E696ABC0] errorWithDomain:*MEMORY[0x1E696A768] code:-50 userInfo:0];
LABEL_8:

      return 0;
    }
  }

  else if (!format)
  {
    goto LABEL_8;
  }

  v8 = [MEMORY[0x1E695DF20] dictionaryWithDictionary:{-[AVAudioFormat settings](format, "settings")}];

  return [(AVAudioRecorder *)self initWithURL:url settings:v8 error:outError];
}

- (id)baseInit
{
  v3 = malloc_type_calloc(1uLL, 0x108uLL, 0x10B00404ABBA035uLL);
  self->_impl = v3;
  objc_storeWeak(&v3->var1, self);
  v3->var3 = 0;
  v3->var4 = 0;
  v3->var2 = 0;
  v4 = [MEMORY[0x1E698D708] sharedInstance];
  v3->var33 = v4;
  v5 = v4;
  tryToSetRecorderSessionListener(self, v3);
  return self;
}

- (void)dealloc
{
  impl = self->_impl;
  if (impl)
  {
    os_unfair_lock_lock(impl + 64);
    [(AVAudioRecorder *)self privCommonCleanup];

    os_unfair_lock_unlock(impl + 64);
    v4 = self->_impl;
    if (v4)
    {
      free(v4);
      self->_impl = 0;
    }
  }

  v5.receiver = self;
  v5.super_class = AVAudioRecorder;
  [(AVAudioRecorder *)&v5 dealloc];
}

- (void)finalize
{
  impl = self->_impl;
  os_unfair_lock_lock(impl + 64);
  if (self->_impl)
  {
    [(AVAudioRecorder *)self privCommonCleanup];
  }

  os_unfair_lock_unlock(impl + 64);
  v4 = self->_impl;
  if (v4)
  {
    free(v4);
    self->_impl = 0;
  }

  v5.receiver = self;
  v5.super_class = AVAudioRecorder;
  [(AVAudioRecorder *)&v5 finalize];
}

- (void)privRemoveSessionPropertyListeners
{
  impl = self->_impl;
  if (*(impl + 240) == 1)
  {
    v4 = [MEMORY[0x1E696AD88] defaultCenter];
    [v4 removeObserver:self name:*MEMORY[0x1E698D550] object:impl[31]];
  }

  *(impl + 240) = 0;
}

- (void)privCommonCleanup
{
  impl = self->_impl;
  [(AVAudioRecorder *)self privSetDelegate:0];
  __dmb(0xBu);
  [(AVAudioRecorder *)self privRemoveSessionPropertyListeners];
  stopAndDisposeRecordQueue(impl, 1);
  free(impl[12].super.isa);
  free(impl[11].super.isa);

  impl[15]._impl = 0;

  objc_storeWeak(&impl->_impl, 0);
}

- (void)privSetDelegate:(id)a3
{
  impl = self->_impl;
  if (!a3 || objc_loadWeak(self->_impl) != a3)
  {
    objc_storeWeak(&impl->var0, a3);

    tryToSetRecorderSessionListener(self, impl);
  }
}

- (void)finishedRecording:(id)a3
{
  v4 = objc_autoreleasePoolPush();
  v5 = [(AVAudioRecorder *)self delegate];
  if (objc_opt_respondsToSelector())
  {
    [v5 audioRecorderDidFinishRecording:self successfully:{objc_msgSend(a3, "BOOLValue")}];
  }

  objc_autoreleasePoolPop(v4);
}

@end