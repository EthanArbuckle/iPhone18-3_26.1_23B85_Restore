@interface AVSampleBufferAudioRenderer
+ (id)currentFigAudioRendererFactory;
+ (id)sampleBufferAudioRenderer;
+ (void)setFigAudioRendererFactory:(id)a3 forQueue:(id)a4;
- (AVAudioTimePitchAlgorithm)audioTimePitchAlgorithm;
- (AVSampleBufferAudioRenderer)init;
- (BOOL)hasSufficientMediaDataForReliablePlaybackStart;
- (BOOL)isDefunct;
- (BOOL)isReadyForMoreMediaData;
- (BOOL)setRenderSynchronizer:(id)a3 error:(id *)a4;
- (BOOL)willTrimShortDurationSamples;
- (NSError)error;
- (OpaqueCMTimebase)timebase;
- (id)audioSession;
- (id)loggingIdentifier;
- (id)outputContext;
- (int)_attachToContentKeySession:(id)a3 contentKeyBoss:(OpaqueFigContentKeyBoss *)a4 failedSinceAlreadyAttachedToAnotherSession:(BOOL *)a5;
- (int)_initializeTimebase;
- (int)_installNotificationHandlers;
- (void)_transitionToFailedStatusWithOSStatus:(int)a3;
- (void)_transitionToStatus:(int64_t)a3 error:(id)a4;
- (void)_triggerMediaRequestCallback;
- (void)_uninstallNotificationHandlers;
- (void)_wasFlushedAutomaticallyAtTime:(id *)a3;
- (void)copyFigSampleBufferAudioRenderer:(OpaqueFigSampleBufferAudioRenderer *)a3;
- (void)dealloc;
- (void)enqueueSampleBuffer:(opaqueCMSampleBuffer *)a3;
- (void)flush;
- (void)flushFromSourceTime:(CMTime *)time completionHandler:(void *)completionHandler;
- (void)requestMediaDataWhenReadyOnQueue:(id)a3 usingBlock:(id)a4;
- (void)setAllowedAudioSpatializationFormats:(AVAudioSpatializationFormats)allowedAudioSpatializationFormats;
- (void)setAudioOutputDeviceUniqueID:(NSString *)audioOutputDeviceUniqueID;
- (void)setAudioSession:(id)a3;
- (void)setAudioTapProcessor:(opaqueMTAudioProcessingTap *)a3;
- (void)setAudioTimePitchAlgorithm:(AVAudioTimePitchAlgorithm)audioTimePitchAlgorithm;
- (void)setLoggingIdentifier:(id)a3;
- (void)setMuted:(BOOL)muted;
- (void)setOutputContext:(id)a3;
- (void)setSTSLabel:(id)a3;
- (void)setVolume:(float)volume;
- (void)stopRequestingMediaData;
@end

@implementation AVSampleBufferAudioRenderer

- (void)_triggerMediaRequestCallback
{
  FigSimpleMutexLock();
  v3 = self->_audioRendererInternal->mediaDataRequester.requester;
  FigSimpleMutexUnlock();
  [(AVMediaDataRequester *)v3 startRequestingMediaData];
}

- (void)_wasFlushedAutomaticallyAtTime:(id *)a3
{
  v7[1] = *MEMORY[0x1E69E9840];
  v5 = *a3;
  v6 = @"AVSampleBufferAudioRendererFlushTimeKey";
  v7[0] = [MEMORY[0x1E696B098] valueWithCMTime:&v5];
  v4 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v7 forKeys:&v6 count:1];
  [objc_msgSend(MEMORY[0x1E696AD88] "defaultCenter")];
}

- (id)outputContext
{
  cf = 0;
  figAudioRenderer = self->_audioRendererInternal->figAudioRenderer;
  v3 = *(*(CMBaseObjectGetVTable() + 8) + 48);
  if (!v3)
  {
    return 0;
  }

  v4 = v3(figAudioRenderer, *MEMORY[0x1E6973690], *MEMORY[0x1E695E480], &cf);
  v5 = cf;
  if (v4)
  {
    v6 = 0;
    if (!cf)
    {
      return v6;
    }

    goto LABEL_4;
  }

  v6 = [MEMORY[0x1E69587F0] outputContextForID:cf];
  v5 = cf;
  if (cf)
  {
LABEL_4:
    CFRelease(v5);
  }

  return v6;
}

- (void)setOutputContext:(id)a3
{
  if (!a3)
  {
    v8 = [MEMORY[0x1E695DF30] exceptionWithName:*MEMORY[0x1E695D940] reason:AVMethodExceptionReasonWithObjectAndSelector(self userInfo:{a2, @"invalid parameter not satisfying: %s", v3, v4, v5, v6, v7, "outputContext != nil"), 0}];
    objc_exception_throw(v8);
  }

  [(AVSampleBufferAudioRenderer *)self setOutputContext:a3];
}

+ (id)sampleBufferAudioRenderer
{
  v2 = objc_alloc_init(AVSampleBufferAudioRenderer);

  return v2;
}

- (void)dealloc
{
  audioRendererInternal = self->_audioRendererInternal;
  if (audioRendererInternal)
  {

    v4 = self->_audioRendererInternal;
    if (v4->mediaDataRequester.mutex)
    {
      FigSimpleMutexDestroy();
      self->_audioRendererInternal->mediaDataRequester.mutex = 0;
      v4 = self->_audioRendererInternal;
    }

    [(AVMediaDataRequester *)v4->mediaDataRequester.requester invalidate];

    [(AVSampleBufferAudioRenderer *)self _uninstallNotificationHandlers];
    v5 = self->_audioRendererInternal;
    figAudioRenderer = v5->figAudioRenderer;
    if (figAudioRenderer)
    {
      CFRelease(figAudioRenderer);
      self->_audioRendererInternal->figAudioRenderer = 0;
      v5 = self->_audioRendererInternal;
    }

    audioProcessingTap = v5->audioProcessingTap;
    if (audioProcessingTap)
    {
      CFRelease(audioProcessingTap);
      self->_audioRendererInternal->audioProcessingTap = 0;
      v5 = self->_audioRendererInternal;
    }

    v8 = self->_audioRendererInternal;
    readOnlyControlTimebase = v8->readOnlyControlTimebase;
    if (readOnlyControlTimebase)
    {
      CFRelease(readOnlyControlTimebase);
      self->_audioRendererInternal->readOnlyControlTimebase = 0;
      v8 = self->_audioRendererInternal;
    }

    lastCryptor = v8->lastCryptor;
    if (lastCryptor)
    {
      CFRelease(lastCryptor);
      v8 = self->_audioRendererInternal;
    }

    lastFormatDescription = v8->lastFormatDescription;
    if (lastFormatDescription)
    {
      CFRelease(lastFormatDescription);
      v8 = self->_audioRendererInternal;
    }

    CFRelease(self->_audioRendererInternal);
  }

  v12.receiver = self;
  v12.super_class = AVSampleBufferAudioRenderer;
  [(AVSampleBufferAudioRenderer *)&v12 dealloc];
}

- (void)setAudioSession:(id)a3
{
  if (!a3)
  {
    v11 = [MEMORY[0x1E695DF30] exceptionWithName:*MEMORY[0x1E695D940] reason:AVMethodExceptionReasonWithObjectAndSelector(self userInfo:{a2, @"invalid parameter not satisfying: %s", v3, v4, v5, v6, v7, "audioSession != nil"), 0}];
    objc_exception_throw(v11);
  }

  [a3 opaqueSessionID];
  SInt32 = FigCFNumberCreateSInt32();
  if (SInt32)
  {
    [(AVSampleBufferAudioRenderer *)self setAudioSession:a3];
  }
}

- (id)audioSession
{
  result = self->_audioRendererInternal->audioSession;
  if (!result)
  {
    v3 = MEMORY[0x1E6958460];

    return [v3 sharedInstance];
  }

  return result;
}

- (void)_transitionToStatus:(int64_t)a3 error:(id)a4
{
  if (self->_audioRendererInternal->status < a3)
  {
    [(AVSampleBufferAudioRenderer *)self willChangeValueForKey:@"status"];
    if (a4)
    {
      v8 = @"error";
      [(AVSampleBufferAudioRenderer *)self willChangeValueForKey:@"error"];
      self->_audioRendererInternal->status = a3;
      self->_audioRendererInternal->error = a4;
      [(AVSampleBufferAudioRenderer *)self didChangeValueForKey:@"status"];
    }

    else
    {
      self->_audioRendererInternal->status = a3;
      self->_audioRendererInternal->error = 0;
      v8 = @"status";
    }

    [(AVSampleBufferAudioRenderer *)self didChangeValueForKey:v8];
  }
}

- (void)_transitionToFailedStatusWithOSStatus:(int)a3
{
  v4 = AVLocalizedErrorWithUnderlyingOSStatus(a3, 0);

  [(AVSampleBufferAudioRenderer *)self _transitionToStatus:2 error:v4];
}

- (NSError)error
{
  v2 = self->_audioRendererInternal->error;

  return v2;
}

- (void)setAudioOutputDeviceUniqueID:(NSString *)audioOutputDeviceUniqueID
{
  if (!audioOutputDeviceUniqueID)
  {
    v8 = [MEMORY[0x1E695DF30] exceptionWithName:*MEMORY[0x1E695D940] reason:AVMethodExceptionReasonWithObjectAndSelector(self userInfo:{a2, @"invalid parameter not satisfying: %s", v3, v4, v5, v6, v7, "audioOutputDeviceUniqueID != nil"), 0}];
    objc_exception_throw(v8);
  }

  [(AVSampleBufferAudioRenderer *)self setAudioOutputDeviceUniqueID:?];
}

- (void)setAudioTimePitchAlgorithm:(AVAudioTimePitchAlgorithm)audioTimePitchAlgorithm
{
  if (!audioTimePitchAlgorithm)
  {
    v8 = [MEMORY[0x1E695DF30] exceptionWithName:*MEMORY[0x1E695D940] reason:AVMethodExceptionReasonWithObjectAndSelector(self userInfo:{a2, @"invalid parameter not satisfying: %s", v3, v4, v5, v6, v7, "newAudioTimePitchAlgorithm != nil"), 0}];
    objc_exception_throw(v8);
  }

  [(AVSampleBufferAudioRenderer *)self setAudioTimePitchAlgorithm:?];
}

- (AVAudioTimePitchAlgorithm)audioTimePitchAlgorithm
{
  v2 = self->_audioRendererInternal->audioTimePitchAlgorithm;

  return v2;
}

- (BOOL)willTrimShortDurationSamples
{
  BOOLean = 0;
  figAudioRenderer = self->_audioRendererInternal->figAudioRenderer;
  v3 = *(*(CMBaseObjectGetVTable() + 8) + 48);
  if (!v3)
  {
    return 1;
  }

  v4 = v3(figAudioRenderer, *MEMORY[0x1E69736B0], *MEMORY[0x1E695E480], &BOOLean);
  v5 = BOOLean;
  if (v4)
  {
    v6 = 1;
  }

  else
  {
    v6 = BOOLean == 0;
  }

  if (v6)
  {
    v7 = 1;
    if (!BOOLean)
    {
      return v7;
    }

    goto LABEL_11;
  }

  v7 = CFBooleanGetValue(BOOLean) != 0;
  v5 = BOOLean;
  if (BOOLean)
  {
LABEL_11:
    CFRelease(v5);
  }

  return v7;
}

- (OpaqueCMTimebase)timebase
{
  readOnlyControlTimebase = self->_audioRendererInternal->readOnlyControlTimebase;
  if (readOnlyControlTimebase)
  {
    readOnlyControlTimebase = CFRetain(readOnlyControlTimebase);
    v2 = vars8;
  }

  return readOnlyControlTimebase;
}

- (BOOL)setRenderSynchronizer:(id)a3 error:(id *)a4
{
  timebaseOut = 0;
  weakReferenceToSynchronizer = self->_audioRendererInternal->weakReferenceToSynchronizer;
  if (!a3)
  {

    self->_audioRendererInternal->weakReferenceToSynchronizer = 0;
    HostTimeClock = CMClockGetHostTimeClock();
    OnlyTimebaseSetTargetTimebase = CMTimebaseCreateWithSourceClock(0, HostTimeClock, &timebaseOut);
    if (OnlyTimebaseSetTargetTimebase)
    {
LABEL_9:
      [(AVSampleBufferAudioRenderer *)self _transitionToFailedStatusWithOSStatus:OnlyTimebaseSetTargetTimebase];
LABEL_10:
      v8 = 0;
      if (!a4)
      {
        goto LABEL_12;
      }

      goto LABEL_11;
    }

LABEL_8:
    OnlyTimebaseSetTargetTimebase = FigReadOnlyTimebaseSetTargetTimebase();
    if (!OnlyTimebaseSetTargetTimebase)
    {
      goto LABEL_10;
    }

    goto LABEL_9;
  }

  if (![(AVWeakReference *)weakReferenceToSynchronizer referencedObject])
  {

    self->_audioRendererInternal->weakReferenceToSynchronizer = [[AVWeakReference alloc] initWithReferencedObject:a3];
    [a3 timebase];
    goto LABEL_8;
  }

  v8 = AVErrorForClientProgrammingError([MEMORY[0x1E695DF30] exceptionWithName:*MEMORY[0x1E695D930] reason:@"The AudioRenderer cannot be added to a Synchronizer when it has already been added to a Synchronizer." userInfo:0]);
  if (a4)
  {
LABEL_11:
    *a4 = v8;
  }

LABEL_12:
  if (timebaseOut)
  {
    CFRelease(timebaseOut);
  }

  return v8 == 0;
}

- (void)setSTSLabel:(id)a3
{
  figAudioRenderer = self->_audioRendererInternal->figAudioRenderer;
  v5 = *(*(CMBaseObjectGetVTable() + 8) + 56);
  if (v5)
  {
    v6 = *MEMORY[0x1E6973698];

    v5(figAudioRenderer, v6, a3);
  }
}

- (void)enqueueSampleBuffer:(opaqueCMSampleBuffer *)a3
{
  if (*MEMORY[0x1E695FF58] == 1)
  {
    kdebug_trace();
  }

  cf = 0;
  v35 = 0;
  if (!a3)
  {
    v25 = MEMORY[0x1E695DF30];
    v26 = *MEMORY[0x1E695D940];
    v27 = AVMethodExceptionReasonWithObjectAndSelector(self, a2, @"invalid parameter not satisfying: %s", v3, v4, v5, v6, v7, "sampleBuffer != NULL");
    goto LABEL_36;
  }

  FormatDescription = CMSampleBufferGetFormatDescription(a3);
  v12 = FormatDescription;
  if (FormatDescription)
  {
    MediaType = CMFormatDescriptionGetMediaType(FormatDescription);
    if (MediaType != 1936684398)
    {
      v25 = MEMORY[0x1E695DF30];
      v26 = *MEMORY[0x1E695D940];
      v28 = AVStringForOSType(MediaType);
      AVStringForOSType(0x736F756Eu);
      v27 = AVMethodExceptionReasonWithObjectAndSelector(self, a2, @"Sample buffer has media type '%@' instead of '%@'", v29, v30, v31, v32, v33, v28);
LABEL_36:
      objc_exception_throw([v25 exceptionWithName:v26 reason:v27 userInfo:0]);
    }
  }

  if (objc_loadWeak(&self->_audioRendererInternal->weakContentKeySession))
  {
    audioRendererInternal = self->_audioRendererInternal;
    if (audioRendererInternal->lastCryptor && (v15 = FigCFEqual(), audioRendererInternal = self->_audioRendererInternal, v15))
    {
      FigSampleBufferSetDecryptor();
    }

    else
    {
      lastFormatDescription = audioRendererInternal->lastFormatDescription;
      audioRendererInternal->lastFormatDescription = v12;
      if (v12)
      {
        CFRetain(v12);
      }

      if (lastFormatDescription)
      {
        CFRelease(lastFormatDescription);
      }

      if (![objc_loadWeak(&self->_audioRendererInternal->weakContentKeySession) copyCryptorForFormatDescription:v12 cryptorOut:&cf errorOut:&v35])
      {
        goto LABEL_27;
      }

      v17 = self->_audioRendererInternal;
      lastCryptor = v17->lastCryptor;
      v19 = cf;
      v17->lastCryptor = cf;
      if (v19)
      {
        CFRetain(v19);
      }

      if (lastCryptor)
      {
        CFRelease(lastCryptor);
      }

      FigSampleBufferSetDecryptor();
      if (cf)
      {
        CFRelease(cf);
        cf = 0;
      }
    }
  }

  v20 = self->_audioRendererInternal;
  status = v20->status;
  if (status == 2)
  {
LABEL_27:
    v24 = 0;
    goto LABEL_28;
  }

  if (!status)
  {
    [(AVSampleBufferAudioRenderer *)self _transitionToStatus:1 error:0];
    v20 = self->_audioRendererInternal;
  }

  figAudioRenderer = v20->figAudioRenderer;
  v23 = *(*(CMBaseObjectGetVTable() + 16) + 16);
  if (v23)
  {
    v24 = v23(figAudioRenderer, a3);
  }

  else
  {
    v24 = -12782;
  }

LABEL_28:
  if (cf)
  {
    CFRelease(cf);
  }

  if (v24 || v35)
  {
    [(AVSampleBufferAudioRenderer *)self _transitionToStatus:2 error:AVLocalizedErrorWithUnderlyingOSStatusAndUnderlyingError(v24, 0, v35, 1)];
  }
}

- (void)flush
{
  figAudioRenderer = self->_audioRendererInternal->figAudioRenderer;
  v4 = *(*(CMBaseObjectGetVTable() + 16) + 24);
  if (v4)
  {
    v5 = v4(figAudioRenderer);
    if (!v5)
    {
      return;
    }
  }

  else
  {
    v5 = 4294954514;
  }

  [(AVSampleBufferAudioRenderer *)self _transitionToFailedStatusWithOSStatus:v5];
}

- (void)flushFromSourceTime:(CMTime *)time completionHandler:(void *)completionHandler
{
  if (!completionHandler)
  {
    v14 = [MEMORY[0x1E695DF30] exceptionWithName:*MEMORY[0x1E695D940] reason:AVMethodExceptionReasonWithObjectAndSelector(self userInfo:{a2, @"invalid parameter not satisfying: %s", 0, v4, v5, v6, v7, "completionHandler != nil"), 0}];
    objc_exception_throw(v14);
  }

  v10 = [completionHandler copy];
  figAudioRenderer = self->_audioRendererInternal->figAudioRenderer;
  v15 = *time;
  v12 = *(*(CMBaseObjectGetVTable() + 16) + 56);
  if (!v12)
  {
    v10[2](v10, 0);

    v13 = 4294954514;
    goto LABEL_6;
  }

  v16 = v15;
  v13 = v12(figAudioRenderer, &v16, AVSampleBufferAudioRendererFlushFromMediaTimeCallback, v10);
  if (v13)
  {
LABEL_6:
    [(AVSampleBufferAudioRenderer *)self _transitionToFailedStatusWithOSStatus:v13];
  }
}

- (BOOL)isReadyForMoreMediaData
{
  audioRendererInternal = self->_audioRendererInternal;
  result = audioRendererInternal->status != 2 && (figAudioRenderer = audioRendererInternal->figAudioRenderer, (v4 = *(*(CMBaseObjectGetVTable() + 16) + 8)) != 0) && v4(figAudioRenderer) == 0;
  return result;
}

- (void)requestMediaDataWhenReadyOnQueue:(id)a3 usingBlock:(id)a4
{
  if (!a3)
  {
    v13 = MEMORY[0x1E695DF30];
    v14 = *MEMORY[0x1E695D940];
    v15 = "queue != NULL";
    goto LABEL_8;
  }

  if (!a4)
  {
    v13 = MEMORY[0x1E695DF30];
    v14 = *MEMORY[0x1E695D940];
    v15 = "block != nil";
LABEL_8:
    v16 = [v13 exceptionWithName:v14 reason:AVMethodExceptionReasonWithObjectAndSelector(self userInfo:{a2, @"invalid parameter not satisfying: %s", a4, v4, v5, v6, v7, v15), 0}];
    objc_exception_throw(v16);
  }

  FigSimpleMutexLock();
  audioRendererInternal = self->_audioRendererInternal;
  requester = audioRendererInternal->mediaDataRequester.requester;
  audioRendererInternal->mediaDataRequester.requester = 0;
  v17 = [[AVMediaDataRequester alloc] initWithMediaDataConsumer:self requestQueue:a3 requestBlock:a4];
  self->_audioRendererInternal->mediaDataRequester.requester = v17;
  FigSimpleMutexUnlock();
  [(AVMediaDataRequester *)requester invalidate];

  [(AVMediaDataRequester *)v17 startRequestingMediaData];
}

- (void)stopRequestingMediaData
{
  FigSimpleMutexLock();
  audioRendererInternal = self->_audioRendererInternal;
  requester = audioRendererInternal->mediaDataRequester.requester;
  audioRendererInternal->mediaDataRequester.requester = 0;
  FigSimpleMutexUnlock();
  [(AVMediaDataRequester *)requester invalidate];
}

- (BOOL)hasSufficientMediaDataForReliablePlaybackStart
{
  BOOLean = 0;
  audioRendererInternal = self->_audioRendererInternal;
  if (audioRendererInternal->status == 2)
  {
    return 0;
  }

  figAudioRenderer = audioRendererInternal->figAudioRenderer;
  v4 = *(*(CMBaseObjectGetVTable() + 8) + 48);
  if (!v4)
  {
    return 0;
  }

  v5 = v4(figAudioRenderer, *MEMORY[0x1E6973678], *MEMORY[0x1E695E480], &BOOLean);
  v6 = BOOLean;
  if (v5)
  {
    v7 = 0;
    if (!BOOLean)
    {
      return v7;
    }

    goto LABEL_9;
  }

  v7 = CFBooleanGetValue(BOOLean) == 0;
  v6 = BOOLean;
  if (BOOLean)
  {
LABEL_9:
    CFRelease(v6);
  }

  return v7;
}

- (BOOL)isDefunct
{
  v8 = 0;
  figAudioRenderer = self->_audioRendererInternal->figAudioRenderer;
  v3 = *(CMBaseObjectGetVTable() + 8);
  if (*v3 < 5uLL)
  {
    v5 = 0;
    LOBYTE(v4) = 0;
  }

  else
  {
    v4 = v3[11];
    if (v4)
    {
      LOBYTE(v4) = v4(figAudioRenderer, &v8) == 0;
      v5 = v8;
    }

    else
    {
      v5 = 0;
    }
  }

  if (v4)
  {
    v6 = v5;
  }

  else
  {
    v6 = 1;
  }

  if (!v5)
  {
    v5 = v6;
  }

  return v5 == 1;
}

- (int)_attachToContentKeySession:(id)a3 contentKeyBoss:(OpaqueFigContentKeyBoss *)a4 failedSinceAlreadyAttachedToAnotherSession:(BOOL *)a5
{
  Weak = objc_loadWeak(&self->_audioRendererInternal->weakContentKeySession);
  if (!Weak)
  {
    objc_storeWeak(&self->_audioRendererInternal->weakContentKeySession, a3);
  }

  if (a5)
  {
    *a5 = Weak != 0;
  }

  return 0;
}

- (id)loggingIdentifier
{
  v2 = self->_audioRendererInternal->loggingIdentifier;

  return v2;
}

- (void)setLoggingIdentifier:(id)a3
{
  loggingIdentifier = self->_audioRendererInternal->loggingIdentifier;
  if (loggingIdentifier != a3)
  {

    self->_audioRendererInternal->loggingIdentifier = a3;
  }
}

+ (id)currentFigAudioRendererFactory
{
  v2 = objc_alloc_init(AVFigSampleBufferAudioRendererFactory);
  result = dispatch_get_specific(@"AVSampleBufferAudioRendererFigFactoryKey");
  if (!result)
  {
    return v2;
  }

  return result;
}

+ (void)setFigAudioRendererFactory:(id)a3 forQueue:(id)a4
{
  v5 = a3;

  dispatch_queue_set_specific(a4, @"AVSampleBufferAudioRendererFigFactoryKey", v5, AVSampleBufferAudioRendererReleaseObject);
}

- (int)_initializeTimebase
{
  timebaseOut = 0;
  HostTimeClock = CMClockGetHostTimeClock();
  OnlyTimebase = CMTimebaseCreateWithSourceClock(0, HostTimeClock, &timebaseOut);
  if (!OnlyTimebase)
  {
    OnlyTimebase = CMTimebaseCreateReadOnlyTimebase();
  }

  v4 = OnlyTimebase;
  if (timebaseOut)
  {
    CFRelease(timebaseOut);
  }

  return v4;
}

- (int)_installNotificationHandlers
{
  self->_audioRendererInternal->weakReferenceToSelf = [[AVWeakReference alloc] initWithReferencedObject:self];
  if (!self->_audioRendererInternal->weakReferenceToSelf)
  {
    return -12786;
  }

  v3 = [AVCMNotificationDispatcher notificationDispatcherForCMNotificationCenter:CMNotificationCenterGetDefaultLocalCenter()];
  OUTLINED_FUNCTION_4_1();
  OUTLINED_FUNCTION_2_7();
  [v4 addListenerWithWeakReference:? callback:? name:? object:? flags:?];
  OUTLINED_FUNCTION_4_1();
  [OUTLINED_FUNCTION_1_10() addListenerWithWeakReference:? callback:? name:? object:? flags:?];
  OUTLINED_FUNCTION_4_1();
  [OUTLINED_FUNCTION_0_12() addListenerWithWeakReference:? callback:? name:? object:? flags:?];
  OUTLINED_FUNCTION_4_1();
  OUTLINED_FUNCTION_3_2();
  [v3 addListenerWithWeakReference:? callback:? name:? object:? flags:?];
  OUTLINED_FUNCTION_4_1();
  [v3 addListenerWithWeakReference:? callback:? name:? object:? flags:?];
  return 0;
}

- (void)_uninstallNotificationHandlers
{
  if (self->_audioRendererInternal->weakReferenceToSelf)
  {
    v2 = [AVCMNotificationDispatcher notificationDispatcherForCMNotificationCenter:CMNotificationCenterGetDefaultLocalCenter()];
    OUTLINED_FUNCTION_4_1();
    OUTLINED_FUNCTION_2_7();
    [v3 removeListenerWithWeakReference:? callback:? name:? object:?];
    OUTLINED_FUNCTION_4_1();
    [OUTLINED_FUNCTION_1_10() removeListenerWithWeakReference:? callback:? name:? object:?];
    OUTLINED_FUNCTION_4_1();
    [OUTLINED_FUNCTION_0_12() removeListenerWithWeakReference:? callback:? name:? object:?];
    OUTLINED_FUNCTION_4_1();
    OUTLINED_FUNCTION_3_2();
    [v2 removeListenerWithWeakReference:? callback:? name:? object:?];
    OUTLINED_FUNCTION_4_1();

    [v2 removeListenerWithWeakReference:? callback:? name:? object:?];
  }
}

- (AVSampleBufferAudioRenderer)init
{
  v3 = [objc_opt_class() currentFigAudioRendererFactory];
  v12 = 0;
  Mutable = CFDictionaryCreateMutable(*MEMORY[0x1E695E480], 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
  if (Mutable)
  {
    v5 = Mutable;
    v11.receiver = self;
    v11.super_class = AVSampleBufferAudioRenderer;
    self = [(AVSampleBufferAudioRenderer *)&v11 init];
    if (!self)
    {
      goto LABEL_11;
    }

    v6 = objc_alloc_init(AVSampleBufferAudioRendererInternal);
    self->_audioRendererInternal = v6;
    if (!v6)
    {
      goto LABEL_11;
    }

    CFRetain(v6);
    self->_audioRendererInternal->mediaDataRequester.mutex = FigSimpleMutexCreate();
    if (!self->_audioRendererInternal->mediaDataRequester.mutex)
    {
      goto LABEL_11;
    }

    if ([(AVSampleBufferAudioRenderer *)self _initializeTimebase])
    {
      goto LABEL_11;
    }

    self->_audioRendererInternal->rate = 0.0;
    self->_audioRendererInternal->volume = 1.0;
    self->_audioRendererInternal->muted = 0;
    self->_audioRendererInternal->audioOutputDeviceUniqueID = 0;
    self->_audioRendererInternal->outputContext = 0;
    self->_audioRendererInternal->loggingIdentifier = [[AVCommonLoggingIdentifier alloc] initWithIdentifierSuffix:0x1F0A91870 prefixlength:3];
    CFDictionarySetValue(v5, *MEMORY[0x1E6973628], [(AVLoggingIdentifier *)self->_audioRendererInternal->loggingIdentifier name]);
    self->_audioRendererInternal->figAudioRenderer = [v3 createAudioRendererWithAllocator:0 options:v5 error:&v12];
    if (!self->_audioRendererInternal->figAudioRenderer)
    {
      goto LABEL_11;
    }

    v7 = dyld_program_sdk_at_least();
    v8 = &AVAudioTimePitchAlgorithmTimeDomain;
    if (!v7)
    {
      v8 = &AVAudioTimePitchAlgorithmLowQualityZeroLatency;
    }

    [(AVSampleBufferAudioRenderer *)self setAudioTimePitchAlgorithm:*v8];
    self->_audioRendererInternal->allowedAudioSpatializationFormats = 4;
    if (![(AVSampleBufferAudioRenderer *)self _installNotificationHandlers])
    {
      v9 = self;
    }

    else
    {
LABEL_11:
      v9 = 0;
    }

    CFRelease(v5);
  }

  else
  {
    v9 = 0;
  }

  return v9;
}

- (void)setAudioTapProcessor:(opaqueMTAudioProcessingTap *)a3
{
  figAudioRenderer = self->_audioRendererInternal->figAudioRenderer;
  v6 = *(*(CMBaseObjectGetVTable() + 8) + 56);
  if (v6 && !v6(figAudioRenderer, *MEMORY[0x1E6973660], a3))
  {
    audioRendererInternal = self->_audioRendererInternal;
    audioProcessingTap = audioRendererInternal->audioProcessingTap;
    audioRendererInternal->audioProcessingTap = a3;
    if (a3)
    {
      CFRetain(a3);
    }

    if (audioProcessingTap)
    {

      CFRelease(audioProcessingTap);
    }
  }
}

- (void)setAllowedAudioSpatializationFormats:(AVAudioSpatializationFormats)allowedAudioSpatializationFormats
{
  audioRendererInternal = self->_audioRendererInternal;
  v4 = audioRendererInternal->allowedAudioSpatializationFormats;
  if (v4 != allowedAudioSpatializationFormats)
  {
    v7 = MEMORY[0x1E695E4D0];
    if ((v4 & 4) != 0)
    {
      figAudioRenderer = audioRendererInternal->figAudioRenderer;
      v10 = *(*(CMBaseObjectGetVTable() + 8) + 56);
      if (v10)
      {
        v8 = v10(figAudioRenderer, *MEMORY[0x1E6973680], *v7);
      }

      else
      {
        v8 = -12782;
      }
    }

    else
    {
      v8 = 0;
    }

    v11 = self->_audioRendererInternal;
    if ((v11->allowedAudioSpatializationFormats & 3) != 0)
    {
      v12 = v11->figAudioRenderer;
      v13 = *(*(CMBaseObjectGetVTable() + 8) + 56);
      if (!v13)
      {
        return;
      }

      v8 = v13(v12, *MEMORY[0x1E69736A0], *v7);
    }

    if (!v8)
    {
      self->_audioRendererInternal->allowedAudioSpatializationFormats = allowedAudioSpatializationFormats;
    }
  }
}

- (void)setVolume:(float)volume
{
  valuePtr = volume;
  if (self->_audioRendererInternal->volume != volume)
  {
    v4 = CFNumberCreate(0, kCFNumberFloat32Type, &valuePtr);
    FigBaseObject = FigSampleBufferAudioRendererGetFigBaseObject();
    v6 = *(*(CMBaseObjectGetVTable() + 8) + 56);
    if (v6 && !v6(FigBaseObject, *MEMORY[0x1E69736A8], v4))
    {
      self->_audioRendererInternal->volume = valuePtr;
    }

    if (v4)
    {
      CFRelease(v4);
    }
  }
}

- (void)setMuted:(BOOL)muted
{
  if (self->_audioRendererInternal->muted != muted)
  {
    v3 = muted;
    FigBaseObject = FigSampleBufferAudioRendererGetFigBaseObject();
    if (v3)
    {
      v6 = MEMORY[0x1E695E4D0];
    }

    else
    {
      v6 = MEMORY[0x1E695E4C0];
    }

    v7 = *(*(CMBaseObjectGetVTable() + 8) + 56);
    if (v7)
    {
      if (!v7(FigBaseObject, *MEMORY[0x1E6973688], *v6))
      {
        self->_audioRendererInternal->muted = v3;
      }
    }
  }
}

- (void)copyFigSampleBufferAudioRenderer:(OpaqueFigSampleBufferAudioRenderer *)a3
{
  if (a3)
  {
    figAudioRenderer = self->_audioRendererInternal->figAudioRenderer;
    if (figAudioRenderer)
    {
      figAudioRenderer = CFRetain(figAudioRenderer);
    }

    *a3 = figAudioRenderer;
  }
}

- (void)setOutputContext:(void *)result .cold.1(void *result, void *a2)
{
  if (*(result[1] + 160) != a2)
  {
    v3 = result;
    v4 = [a2 contextID];
    v5 = *(v3[1] + 152);
    VTable = CMBaseObjectGetVTable();
    v7 = *(VTable + 8);
    result = (VTable + 8);
    v8 = *(v7 + 56);
    if (v8)
    {
      result = v8(v5, *MEMORY[0x1E6973690], v4);
      if (!result)
      {

        result = a2;
        *(v3[1] + 160) = result;
      }
    }
  }

  return result;
}

- (void)setAudioSession:(void *)a3 .cold.1(uint64_t a1, const void *a2, void *a3)
{
  v6 = *(*(a1 + 8) + 152);
  v7 = *(*(CMBaseObjectGetVTable() + 8) + 56);
  if (v7 && !v7(v6, *MEMORY[0x1E6973668], a2))
  {
    v8 = a3;

    *(*(a1 + 8) + 40) = a3;
  }

  CFRelease(a2);
}

- (void)setAudioOutputDeviceUniqueID:(uint64_t)a1 .cold.1(uint64_t a1, void *a2)
{
  if (([*(*(a1 + 8) + 8) isEqualToString:a2] & 1) == 0)
  {
    FigBaseObject = FigSampleBufferAudioRendererGetFigBaseObject();
    v5 = *(*(CMBaseObjectGetVTable() + 8) + 56);
    if (v5)
    {
      if (!v5(FigBaseObject, *MEMORY[0x1E6973658], a2))
      {
        v6 = [a2 copy];

        *(*(a1 + 8) + 8) = v6;
      }
    }
  }
}

- (void)setAudioTimePitchAlgorithm:(uint64_t)a1 .cold.1(uint64_t a1, void *a2)
{
  if (([*(*(a1 + 8) + 16) isEqualToString:a2] & 1) == 0)
  {
    if ([a2 isEqualToString:@"LowQualityZeroLatency"])
    {
      v4 = *MEMORY[0x1E69736B8];
    }

    else
    {
      v4 = a2;
    }

    v5 = *(*(a1 + 8) + 152);
    v6 = *(*(CMBaseObjectGetVTable() + 8) + 56);
    if (v6)
    {
      if (!v6(v5, *MEMORY[0x1E6973670], v4))
      {
        v7 = [a2 copy];

        *(*(a1 + 8) + 16) = v7;
      }
    }
  }
}

@end