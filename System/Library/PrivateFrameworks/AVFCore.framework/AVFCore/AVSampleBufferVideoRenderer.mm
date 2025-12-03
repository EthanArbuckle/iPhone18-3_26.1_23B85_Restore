@interface AVSampleBufferVideoRenderer
+ (BOOL)automaticallyNotifiesObserversForKey:(id)key;
+ (void)initialize;
- ($8A865F3275AFFA793BA84D73056FEF19)_computeSampleBufferEnqueueingInfoForSampleBuffer:(SEL)buffer;
- (AVQueuedSampleBufferRenderingStatus)status;
- (AVSampleBufferVideoRenderer)init;
- (BOOL)_createVideoQueueFailed;
- (BOOL)_disallowsVideoLayerDisplayCompositing;
- (BOOL)_hasEverEnqueued;
- (BOOL)_setSynchronizerTimebase:(OpaqueCMTimebase *)timebase error:(id *)error;
- (BOOL)_setUpcomingPresentationTimeExpectations:(int)expectations minimumPresentationTime:(id *)time;
- (BOOL)attachedToExternalContentKeySession;
- (BOOL)hasSufficientMediaDataForReliablePlaybackStart;
- (BOOL)isReadyForDisplay;
- (BOOL)isReadyForMoreMediaData;
- (BOOL)outputObscuredDueToInsufficientExternalProtection;
- (BOOL)preventsAutomaticBackgroundingDuringVideoPlayback;
- (BOOL)preventsCapture;
- (BOOL)preventsDisplaySleepDuringVideoPlayback;
- (BOOL)requiresFlushToResumeDecoding;
- (BOOL)shouldWaitForVideoTarget;
- (NSArray)outputs;
- (NSError)error;
- (NSString)_STSLabel;
- (NSString)description;
- (OpaqueCMTimebase)_readOnlyVideoQueueTimebase;
- (OpaqueCMTimebase)controlTimebase;
- (OpaqueCMTimebase)timebase;
- (OpaqueFigVideoQueue)_copyVideoQueue;
- (__CVBuffer)copyDisplayedPixelBuffer;
- (id)_loggingDescription;
- (id)_nameForLogging;
- (id)_statusString:(int64_t)string;
- (id)contentKeySession;
- (id)preferredDynamicRange;
- (id)recommendedPixelBufferAttributes;
- (id)videoPerformanceMetrics;
- (int)_createVideoQueue:(OpaqueFigVideoQueue *)queue errorStep:(id *)step;
- (int)_enqueueSingleSampleBuffer:(opaqueCMSampleBuffer *)buffer bufferEnqueueingInfo:(id *)info;
- (int)_setContentLayerOnFigVideoQueue:(OpaqueFigVideoQueue *)queue;
- (int)attachToContentKeySession:(id)session contentKeyBoss:(OpaqueFigContentKeyBoss *)boss failedSinceAlreadyAttachedToAnotherSession:(BOOL *)anotherSession;
- (int)createVideoQueue:(OpaqueFigVideoQueue *)queue;
- (void)_addFigVideoQueueListeners;
- (void)_callOldPrerollCompletionHandlerWithSuccess:(BOOL)success andSetNewPrerollCompletionHandler:(id)handler forRequestID:(int)d;
- (void)_completedDecodeForPrerollForRequestID:(int)d;
- (void)_didFinishSuspension:(id)suspension;
- (void)_fireDisplayLayerNotificationNowThenReleaseOnMainThread:(id)thread userInfo:(id)info;
- (void)_flushComplete;
- (void)_refreshAboveHighWaterLevelAndAlwaysStartRequestMediaDataIfRequesting:(BOOL)requesting;
- (void)_removeFigVideoQueueListeners;
- (void)_resetStatusWithOSStatus:(int)status;
- (void)_setCreateVideoQueueFailedWithOSStatus:(int)status;
- (void)_setDisallowsVideoLayerDisplayCompositing:(BOOL)compositing;
- (void)_setOutputObscuredDueToInsufficientExternalProtection:(BOOL)protection;
- (void)_setRequiresFlushToResumeDecoding:(BOOL)decoding;
- (void)_setStatus:(int64_t)status error:(id)error;
- (void)_updatePreferredDynamicRange;
- (void)_updateVideoOutputs;
- (void)_updateVideoTargetsOnVideoQueue;
- (void)addOutput:(id)output;
- (void)addSampleBufferDisplayLayer:(id)layer;
- (void)addVideoTarget:(OpaqueFigVideoTarget *)target;
- (void)copyFigSampleBufferAudioRenderer:(OpaqueFigSampleBufferAudioRenderer *)renderer;
- (void)dealloc;
- (void)enqueueSampleBuffer:(opaqueCMSampleBuffer *)buffer;
- (void)enqueueSampleBuffer:(opaqueCMSampleBuffer *)buffer bufferEnqueueingInfo:(id *)info;
- (void)expectMinimumUpcomingSampleBufferPresentationTime:(id *)time;
- (void)expectMonotonicallyIncreasingUpcomingSampleBufferPresentationTimes;
- (void)flushWithRemovalOfDisplayedImage:(BOOL)removeDisplayedImage completionHandler:(void *)handler;
- (void)loadVideoPerformanceMetricsWithCompletionHandler:(id)handler;
- (void)prerollDecodeWithCompletionHandler:(id)handler;
- (void)removeDisplayLayer;
- (void)removeOutput:(id)output;
- (void)requestMediaDataWhenReadyOnQueue:(id)queue usingBlock:(id)block;
- (void)resetUpcomingSampleBufferPresentationTimeExpectations;
- (void)setContentKeySession:(id)session;
- (void)setControlTimebase:(OpaqueCMTimebase *)timebase;
- (void)setDisplayLayerVisibility:(BOOL)visibility;
- (void)setPreferredDynamicRange:(id)range;
- (void)setPreventsAutomaticBackgroundingDuringVideoPlayback:(BOOL)playback;
- (void)setPreventsCapture:(BOOL)capture;
- (void)setPreventsDisplaySleepDuringVideoPlayback:(BOOL)playback;
- (void)setReadyForDisplayWithoutKVO:(BOOL)o;
- (void)setSTSLabel:(id)label;
- (void)setShouldWaitForVideoTarget:(BOOL)target;
- (void)setToneMapToStandardDynamicRange:(BOOL)range;
- (void)setVideoLayerGeometryFlipped:(BOOL)flipped;
- (void)stopRequestingMediaData;
@end

@implementation AVSampleBufferVideoRenderer

+ (void)initialize
{
  if (objc_opt_class() == self)
  {
    FigNote_AllowInternalDefaultLogs();
    fig_note_initialize_category_with_default_work();

    fig_note_initialize_category_with_default_work();
  }
}

- (void)_fireDisplayLayerNotificationNowThenReleaseOnMainThread:(id)thread userInfo:(id)info
{
  v7 = objc_autoreleasePoolPush();
  WeakRetained = objc_loadWeakRetained(&self->_weakDisplayLayer);
  if (WeakRetained)
  {
    v9 = WeakRetained;
    [objc_msgSend(MEMORY[0x1E696AD88] "defaultCenter")];
    objc_autoreleasePoolPop(v7);
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __96__AVSampleBufferVideoRenderer__fireDisplayLayerNotificationNowThenReleaseOnMainThread_userInfo___block_invoke;
    block[3] = &unk_1E7460C00;
    block[4] = v9;
    dispatch_async(MEMORY[0x1E69E96A0], block);
  }

  else
  {

    objc_autoreleasePoolPop(v7);
  }
}

- (void)setControlTimebase:(OpaqueCMTimebase *)timebase
{
  v15 = 0;
  v16 = &v15;
  v17 = 0x2020000000;
  v18 = 0;
  serialQueue = self->_serialQueue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __50__AVSampleBufferVideoRenderer_setControlTimebase___block_invoke;
  block[3] = &unk_1E7462990;
  block[4] = self;
  block[5] = &v15;
  block[6] = timebase;
  dispatch_sync(serialQueue, block);
  if (v16[3])
  {
    v12 = [MEMORY[0x1E695DF30] exceptionWithName:*MEMORY[0x1E695D930] reason:AVMethodExceptionReasonWithObjectAndSelector(self userInfo:{a2, @"The control timebase can not be changed after the display layer or video renderer has been added to a synchronizer", v7, v8, v9, v10, v11, v13), 0}];
    objc_exception_throw(v12);
  }

  if (timebase)
  {
    self->_controlTimebaseSetByUserIsInUse = 1;
    FigReadOnlyTimebaseSetTargetTimebase();
  }

  else
  {
    self->_controlTimebaseSetByUserIsInUse = 0;
    _targetReadOnlyTimebaseAtDummyTimebase();
  }

  _Block_object_dispose(&v15, 8);
}

void __50__AVSampleBufferVideoRenderer_setControlTimebase___block_invoke(void *a1)
{
  v1 = a1[4];
  if (*(v1 + 176) == 1)
  {
    *(*(a1[5] + 8) + 24) = 1;
  }

  else
  {
    v2 = *(v1 + 184);
    v3 = a1[6];
    *(v1 + 184) = v3;
    if (v3)
    {
      CFRetain(v3);
    }

    if (v2)
    {

      CFRelease(v2);
    }
  }
}

- (BOOL)_setSynchronizerTimebase:(OpaqueCMTimebase *)timebase error:(id *)error
{
  v18 = 0;
  v19 = &v18;
  v20 = 0x2020000000;
  v21 = 1;
  v12 = 0;
  v13 = &v12;
  v14 = 0x3052000000;
  v15 = __Block_byref_object_copy__33;
  v16 = __Block_byref_object_dispose__33;
  v17 = 0;
  serialQueue = self->_serialQueue;
  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 3221225472;
  v11[2] = __62__AVSampleBufferVideoRenderer__setSynchronizerTimebase_error___block_invoke;
  v11[3] = &unk_1E74656F0;
  v11[4] = self;
  v11[5] = &v12;
  v11[6] = &v18;
  v11[7] = timebase;
  dispatch_sync(serialQueue, v11);
  v8 = v19;
  v9 = *(v19 + 24);
  if (v9 == 1)
  {
    if (timebase)
    {
      self->_addedToSynchronizer = 1;
      FigReadOnlyTimebaseSetTargetTimebase();
      FigReadOnlyTimebaseSetTargetTimebase();
    }

    else
    {
      self->_addedToSynchronizer = 0;
      _targetReadOnlyTimebaseAtDummyTimebase();
      _targetReadOnlyTimebaseAtDummyTimebase();
    }

    v8 = v19;
    LOBYTE(v9) = 1;
    *(v19 + 24) = 1;
  }

  if (error)
  {
    *error = v13[5];
    LOBYTE(v9) = *(v8 + 24);
  }

  _Block_object_dispose(&v12, 8);
  _Block_object_dispose(&v18, 8);
  return v9 & 1;
}

uint64_t __62__AVSampleBufferVideoRenderer__setSynchronizerTimebase_error___block_invoke(uint64_t result)
{
  *(*(result + 32) + 176) = *(result + 56) != 0;
  if (*(*(result + 32) + 177) == 1)
  {
    v1 = result;
    result = AVErrorForClientProgrammingError([MEMORY[0x1E695DF30] exceptionWithName:*MEMORY[0x1E695D930] reason:@"The display layer or video renderer cannot be added to a synchronizer if the control timebase has already been set." userInfo:0]);
    *(*(*(v1 + 40) + 8) + 40) = result;
    *(*(*(v1 + 48) + 8) + 24) = 0;
  }

  return result;
}

- (OpaqueCMTimebase)_readOnlyVideoQueueTimebase
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x2020000000;
  v9 = 0;
  serialQueue = self->_serialQueue;
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __58__AVSampleBufferVideoRenderer__readOnlyVideoQueueTimebase__block_invoke;
  v5[3] = &unk_1E7460E68;
  v5[4] = self;
  v5[5] = &v6;
  dispatch_sync(serialQueue, v5);
  v3 = v7[3];
  _Block_object_dispose(&v6, 8);
  return v3;
}

CFTypeRef __58__AVSampleBufferVideoRenderer__readOnlyVideoQueueTimebase__block_invoke(uint64_t a1)
{
  result = *(*(a1 + 32) + 192);
  if (result)
  {
    result = CFRetain(result);
  }

  *(*(*(a1 + 40) + 8) + 24) = result;
  return result;
}

- (int)_createVideoQueue:(OpaqueFigVideoQueue *)queue errorStep:(id *)step
{
  v24 = 0;
  v25 = &v24;
  v26 = 0x2020000000;
  v27 = 0;
  v20 = 0;
  v21 = &v20;
  v22 = 0x2020000000;
  v23 = 0;
  Mutable = CFDictionaryCreateMutable(*MEMORY[0x1E695E480], 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
  _nameForLogging = [(AVSampleBufferVideoRenderer *)self _nameForLogging];
  CFDictionarySetValue(Mutable, *MEMORY[0x1E6973CE8], _nameForLogging);
  videoQueueQueue = self->_videoQueueQueue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __59__AVSampleBufferVideoRenderer__createVideoQueue_errorStep___block_invoke;
  block[3] = &unk_1E74630E0;
  block[4] = &v24;
  block[5] = &v20;
  block[6] = Mutable;
  dispatch_sync(videoQueueQueue, block);
  if (!*(v25 + 6))
  {
    v10 = [(AVSampleBufferVideoRenderer *)self _setContentLayerOnFigVideoQueue:v21[3]];
    *(v25 + 6) = v10;
    if (!v10)
    {
      v11 = self->_videoQueueQueue;
      v18[0] = MEMORY[0x1E69E9820];
      v18[1] = 3221225472;
      v18[2] = __59__AVSampleBufferVideoRenderer__createVideoQueue_errorStep___block_invoke_2;
      v18[3] = &unk_1E7465718;
      v18[4] = &v20;
      v18[5] = &v24;
      dispatch_sync(v11, v18);
      if (!*(v25 + 6))
      {
        v12 = self->_videoQueueQueue;
        v17[0] = MEMORY[0x1E69E9820];
        v17[1] = 3221225472;
        v17[2] = __59__AVSampleBufferVideoRenderer__createVideoQueue_errorStep___block_invoke_3;
        v17[3] = &unk_1E7462F88;
        v17[5] = &v24;
        v17[6] = &v20;
        v17[4] = self;
        dispatch_sync(v12, v17);
      }
    }
  }

  if (Mutable)
  {
    CFRelease(Mutable);
  }

  if (*(v25 + 6))
  {
    v13 = v21[3];
    if (v13)
    {
      CFRelease(v13);
      v21[3] = 0;
    }
  }

  if (queue)
  {
    *queue = v21[3];
  }

  v14 = v25;
  v15 = *(v25 + 6);
  if (step && v15)
  {
    *step = 0;
    v15 = *(v14 + 6);
  }

  _Block_object_dispose(&v20, 8);
  _Block_object_dispose(&v24, 8);
  return v15;
}

uint64_t __59__AVSampleBufferVideoRenderer__createVideoQueue_errorStep___block_invoke(uint64_t a1)
{
  result = FigVideoQueueCreateRemoteWithOptions();
  *(*(*(a1 + 32) + 8) + 24) = result;
  return result;
}

uint64_t __59__AVSampleBufferVideoRenderer__createVideoQueue_errorStep___block_invoke_2(uint64_t a1)
{
  CMBaseObject = FigVideoQueueGetCMBaseObject();
  v3 = *(*(CMBaseObjectGetVTable() + 8) + 56);
  if (v3)
  {
    v3(CMBaseObject, *MEMORY[0x1E6973D20], *MEMORY[0x1E695E4D0]);
  }

  v4 = *(*(*(a1 + 32) + 8) + 24);
  v5 = *(*(CMBaseObjectGetVTable() + 16) + 8);
  if (v5)
  {
    result = v5(v4, 0);
  }

  else
  {
    result = 4294954514;
  }

  *(*(*(a1 + 40) + 8) + 24) = result;
  return result;
}

uint64_t __59__AVSampleBufferVideoRenderer__createVideoQueue_errorStep___block_invoke_3(uint64_t a1)
{
  v2 = [*(a1 + 32) _readOnlyVideoQueueTimebase];
  CMBaseObject = FigVideoQueueGetCMBaseObject();
  v4 = *(*(CMBaseObjectGetVTable() + 8) + 56);
  if (v4)
  {
    result = v4(CMBaseObject, *MEMORY[0x1E6973CF0], v2);
  }

  else
  {
    result = 4294954514;
  }

  *(*(*(a1 + 40) + 8) + 24) = result;
  return result;
}

- (int)createVideoQueue:(OpaqueFigVideoQueue *)queue
{
  v5 = 0;
  v11 = 0;
  v12 = [[AVTelemetryInterval alloc] initAndStartWith:59];
  do
  {
    v6 = [(AVSampleBufferVideoRenderer *)self _createVideoQueue:queue errorStep:&v11];
    v7 = [(AVSampleBufferVideoRenderer *)self _isCreateVideoQueueErrorRetryable:v6, v11, v12];
  }

  while (v5++ < 4 && v7);
  AVTelemetryIntervalEnd(&v12);
  return v6;
}

- (OpaqueFigVideoQueue)_copyVideoQueue
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x2020000000;
  v9 = 0;
  serialQueue = self->_serialQueue;
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __46__AVSampleBufferVideoRenderer__copyVideoQueue__block_invoke;
  v5[3] = &unk_1E7460E68;
  v5[4] = self;
  v5[5] = &v6;
  dispatch_sync(serialQueue, v5);
  v3 = v7[3];
  _Block_object_dispose(&v6, 8);
  return v3;
}

CFTypeRef __46__AVSampleBufferVideoRenderer__copyVideoQueue__block_invoke(uint64_t a1)
{
  result = *(*(a1 + 32) + 8);
  if (result)
  {
    result = CFRetain(result);
  }

  *(*(*(a1 + 40) + 8) + 24) = result;
  return result;
}

- (BOOL)_hasEverEnqueued
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x2020000000;
  v9 = 0;
  serialQueue = self->_serialQueue;
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __47__AVSampleBufferVideoRenderer__hasEverEnqueued__block_invoke;
  v5[3] = &unk_1E7460E68;
  v5[4] = self;
  v5[5] = &v6;
  dispatch_sync(serialQueue, v5);
  v3 = *(v7 + 24);
  _Block_object_dispose(&v6, 8);
  return v3;
}

- (void)_refreshAboveHighWaterLevelAndAlwaysStartRequestMediaDataIfRequesting:(BOOL)requesting
{
  v19 = 0;
  v20 = &v19;
  v21 = 0x2020000000;
  v22 = 0;
  v13 = 0;
  v14 = &v13;
  v15 = 0x3052000000;
  v16 = __Block_byref_object_copy__33;
  v17 = __Block_byref_object_dispose__33;
  v18 = 0;
  v11[0] = 0;
  v11[1] = v11;
  v11[2] = 0x2020000000;
  v12 = 0;
  _copyVideoQueue = [(AVSampleBufferVideoRenderer *)self _copyVideoQueue];
  if (_copyVideoQueue)
  {
    videoQueueQueue = self->_videoQueueQueue;
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __101__AVSampleBufferVideoRenderer__refreshAboveHighWaterLevelAndAlwaysStartRequestMediaDataIfRequesting___block_invoke;
    block[3] = &unk_1E7462AC0;
    block[4] = v11;
    block[5] = _copyVideoQueue;
    dispatch_sync(videoQueueQueue, block);
    CFRelease(_copyVideoQueue);
  }

  serialQueue = self->_serialQueue;
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __101__AVSampleBufferVideoRenderer__refreshAboveHighWaterLevelAndAlwaysStartRequestMediaDataIfRequesting___block_invoke_2;
  v8[3] = &unk_1E7465740;
  v8[4] = self;
  v8[5] = v11;
  requestingCopy = requesting;
  v8[6] = &v19;
  v8[7] = &v13;
  dispatch_sync(serialQueue, v8);
  if (*(v20 + 24) == 1)
  {
    [v14[5] startRequestingMediaData];

    v14[5] = 0;
  }

  _Block_object_dispose(v11, 8);
  _Block_object_dispose(&v13, 8);
  _Block_object_dispose(&v19, 8);
}

uint64_t __101__AVSampleBufferVideoRenderer__refreshAboveHighWaterLevelAndAlwaysStartRequestMediaDataIfRequesting___block_invoke(uint64_t a1)
{
  v2 = *(a1 + 40);
  VTable = CMBaseObjectGetVTable();
  v5 = *(VTable + 16);
  result = VTable + 16;
  v6 = *(v5 + 48);
  if (v6)
  {
    result = v6(v2);
    LOBYTE(v6) = result != 0;
  }

  *(*(*(a1 + 32) + 8) + 24) = v6;
  return result;
}

void *__101__AVSampleBufferVideoRenderer__refreshAboveHighWaterLevelAndAlwaysStartRequestMediaDataIfRequesting___block_invoke_2(void *result)
{
  v1 = result[4];
  v2 = *(v1 + 121);
  *(v1 + 121) = *(*(result[5] + 8) + 24);
  v3 = result[4];
  if (*(v3 + 110) == 1)
  {
    v4 = result;
    if ((result[8] & 1) != 0 || v2 && (*(v3 + 121) & 1) == 0)
    {
      *(*(result[6] + 8) + 24) = 1;
      result = *(result[4] + 112);
      *(*(v4[7] + 8) + 40) = result;
    }
  }

  return result;
}

- (void)_setStatus:(int64_t)status error:(id)error
{
  v9 = 0;
  v10 = &v9;
  v11 = 0x2020000000;
  v12 = 0;
  if (self->_status < status)
  {
    [(AVSampleBufferVideoRenderer *)self willChangeValueForKey:@"status"];
    if (error)
    {
      [(AVSampleBufferVideoRenderer *)self willChangeValueForKey:@"error"];
    }

    serialQueue = self->_serialQueue;
    v8[0] = MEMORY[0x1E69E9820];
    v8[1] = 3221225472;
    v8[2] = __48__AVSampleBufferVideoRenderer__setStatus_error___block_invoke;
    v8[3] = &unk_1E7465698;
    v8[4] = self;
    v8[5] = error;
    v8[6] = &v9;
    v8[7] = status;
    dispatch_sync(serialQueue, v8);
    if (*(v10 + 24) == 1)
    {
      [(AVSampleBufferVideoRenderer *)self _setRequiresFlushToResumeDecoding:1];
    }

    [(AVSampleBufferVideoRenderer *)self didChangeValueForKey:@"status"];
    if (error)
    {
      [(AVSampleBufferVideoRenderer *)self didChangeValueForKey:@"error"];
    }
  }

  _Block_object_dispose(&v9, 8);
}

void *__48__AVSampleBufferVideoRenderer__setStatus_error___block_invoke(void *result)
{
  v7 = *MEMORY[0x1E69E9840];
  v1 = result[7];
  v2 = result[4];
  if (v1 > *(v2 + 24))
  {
    v3 = result;
    if (dword_1EAEFCE70)
    {
      os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
      os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
      fig_log_call_emit_and_clean_up_after_send_and_compose();
      v1 = v3[7];
      v2 = v3[4];
    }

    *(v2 + 24) = v1;
    result = *(v3[4] + 32);
    if (result || (result = v3[5]) != 0 && (*(v3[4] + 32) = [result copy], (result = *(v3[4] + 32)) != 0))
    {
      result = [result code];
      if (result == -11847 || (result = [*(v3[4] + 32) code], result == -11819))
      {
        *(*(v3[6] + 8) + 24) = 1;
      }
    }
  }

  return result;
}

- (void)_resetStatusWithOSStatus:(int)status
{
  if (status)
  {
    v4 = AVLocalizedErrorWithUnderlyingOSStatus(status, 0);

    [(AVSampleBufferVideoRenderer *)self _setStatus:2 error:v4];
  }

  else if (self->_status >= 1)
  {
    error = self->_error;
    [(AVSampleBufferVideoRenderer *)self willChangeValueForKey:@"status"];
    if (error)
    {
      [(AVSampleBufferVideoRenderer *)self willChangeValueForKey:@"error"];
    }

    serialQueue = self->_serialQueue;
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __56__AVSampleBufferVideoRenderer__resetStatusWithOSStatus___block_invoke;
    block[3] = &unk_1E7460C00;
    block[4] = self;
    dispatch_sync(serialQueue, block);
    [(AVSampleBufferVideoRenderer *)self didChangeValueForKey:@"status"];
    if (error)
    {
      [(AVSampleBufferVideoRenderer *)self didChangeValueForKey:@"error"];
    }
  }
}

void __56__AVSampleBufferVideoRenderer__resetStatusWithOSStatus___block_invoke(uint64_t a1)
{
  if (dword_1EAEFCE70)
  {
    os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
    fig_log_call_emit_and_clean_up_after_send_and_compose();
  }

  *(*(a1 + 32) + 24) = 0;

  *(*(a1 + 32) + 32) = 0;
}

- (void)_setOutputObscuredDueToInsufficientExternalProtection:(BOOL)protection
{
  if ([(AVSampleBufferVideoRenderer *)self outputObscuredDueToInsufficientExternalProtection]!= protection)
  {
    [(AVSampleBufferVideoRenderer *)self willChangeValueForKey:@"outputObscuredDueToInsufficientExternalProtection"];
    serialQueue = self->_serialQueue;
    v6[0] = MEMORY[0x1E69E9820];
    v6[1] = 3221225472;
    v6[2] = __85__AVSampleBufferVideoRenderer__setOutputObscuredDueToInsufficientExternalProtection___block_invoke;
    v6[3] = &unk_1E7460E40;
    v6[4] = self;
    protectionCopy = protection;
    dispatch_sync(serialQueue, v6);
    [(AVSampleBufferVideoRenderer *)self didChangeValueForKey:@"outputObscuredDueToInsufficientExternalProtection"];
    [objc_msgSend(MEMORY[0x1E696AD88] "defaultCenter")];
    [(AVSampleBufferVideoRenderer *)self _fireDisplayLayerNotificationNowThenReleaseOnMainThread:@"AVSampleBufferDisplayLayerOutputObscuredDueToInsufficientExternalProtectionDidChangeNotification" userInfo:0];
  }
}

- (void)_addFigVideoQueueListeners
{
  _copyVideoQueue = [(AVSampleBufferVideoRenderer *)self _copyVideoQueue];
  if (_copyVideoQueue)
  {
    v3 = _copyVideoQueue;
    CMNotificationCenterGetDefaultLocalCenter();
    FigNotificationCenterAddWeakListeners();

    CFRelease(v3);
  }
}

- (void)_removeFigVideoQueueListeners
{
  _copyVideoQueue = [(AVSampleBufferVideoRenderer *)self _copyVideoQueue];
  if (_copyVideoQueue)
  {
    v3 = _copyVideoQueue;
    CMNotificationCenterGetDefaultLocalCenter();
    FigNotificationCenterRemoveWeakListeners();

    CFRelease(v3);
  }
}

- (void)_setRequiresFlushToResumeDecoding:(BOOL)decoding
{
  v14 = *MEMORY[0x1E69E9840];
  if (decoding)
  {
    [(AVSampleBufferVideoRenderer *)self setReadyForDisplayWithoutKVO:0];
  }

  v10 = 0;
  v11 = &v10;
  v12 = 0x2020000000;
  v13 = 0;
  serialQueue = self->_serialQueue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __65__AVSampleBufferVideoRenderer__setRequiresFlushToResumeDecoding___block_invoke;
  block[3] = &unk_1E7462948;
  decodingCopy = decoding;
  block[4] = self;
  block[5] = &v10;
  dispatch_sync(serialQueue, block);
  if (*(v11 + 24) == 1)
  {
    v6 = [MEMORY[0x1E696AD80] notificationWithName:@"AVSampleBufferVideoRendererRequiresFlushToResumeDecodingDidChangeNotification" object:self];
    [objc_msgSend(MEMORY[0x1E696AD88] "defaultCenter")];
    [(AVSampleBufferVideoRenderer *)self _fireDisplayLayerNotificationNowThenReleaseOnMainThread:@"AVSampleBufferDisplayLayerRequiresFlushToResumeDecodingDidChangeNotification" userInfo:0];
    if (dword_1EAEFCE70)
    {
      os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
      os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
      fig_log_call_emit_and_clean_up_after_send_and_compose();
    }
  }

  _Block_object_dispose(&v10, 8);
}

uint64_t __65__AVSampleBufferVideoRenderer__setRequiresFlushToResumeDecoding___block_invoke(uint64_t result)
{
  v1 = *(result + 32);
  v2 = *(result + 48);
  if (*(v1 + 106) != v2)
  {
    *(v1 + 106) = v2;
    *(*(*(result + 40) + 8) + 24) = 1;
  }

  return result;
}

- (void)_setCreateVideoQueueFailedWithOSStatus:(int)status
{
  serialQueue = self->_serialQueue;
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = __70__AVSampleBufferVideoRenderer__setCreateVideoQueueFailedWithOSStatus___block_invoke;
  v4[3] = &unk_1E74628F8;
  v4[4] = self;
  statusCopy = status;
  dispatch_sync(serialQueue, v4);
}

uint64_t __70__AVSampleBufferVideoRenderer__setCreateVideoQueueFailedWithOSStatus___block_invoke(uint64_t result)
{
  *(*(result + 32) + 122) = *(result + 40) != 0;
  if (dword_1EAEFCE70)
  {
    os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
    return fig_log_call_emit_and_clean_up_after_send_and_compose();
  }

  return result;
}

- (BOOL)_createVideoQueueFailed
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x2020000000;
  v9 = 0;
  serialQueue = self->_serialQueue;
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __54__AVSampleBufferVideoRenderer__createVideoQueueFailed__block_invoke;
  v5[3] = &unk_1E7460E68;
  v5[4] = self;
  v5[5] = &v6;
  dispatch_sync(serialQueue, v5);
  v3 = *(v7 + 24);
  _Block_object_dispose(&v6, 8);
  return v3;
}

- (id)_nameForLogging
{
  if (!self->_loggingIdentifier)
  {
    return [MEMORY[0x1E696AEC0] stringWithFormat:@"%p", self];
  }

  loggingIdentifier = self->_loggingIdentifier;

  return [(AVLoggingIdentifier *)loggingIdentifier name];
}

- (id)_loggingDescription
{
  loggingIdentifier = self->_loggingIdentifier;
  if (loggingIdentifier)
  {
    return [MEMORY[0x1E696AEC0] stringWithFormat:@"<%@|%p>", -[AVLoggingIdentifier name](loggingIdentifier, "name"), self];
  }

  else
  {
    return [MEMORY[0x1E696AEC0] stringWithFormat:@"<%p>", self, v5];
  }
}

- (void)_updatePreferredDynamicRange
{
  preferredDynamicRange = [(AVSampleBufferVideoRenderer *)self preferredDynamicRange];
  _copyVideoQueue = [(AVSampleBufferVideoRenderer *)self _copyVideoQueue];
  if (_copyVideoQueue)
  {
    v5 = _copyVideoQueue;
    v8[0] = 0;
    v8[1] = v8;
    v8[2] = 0x2020000000;
    v9 = 0;
    videoQueueQueue = self->_videoQueueQueue;
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __59__AVSampleBufferVideoRenderer__updatePreferredDynamicRange__block_invoke;
    block[3] = &unk_1E7462A50;
    block[5] = v8;
    block[6] = v5;
    block[4] = preferredDynamicRange;
    dispatch_sync(videoQueueQueue, block);
    CFRelease(v5);
    _Block_object_dispose(v8, 8);
  }
}

uint64_t __59__AVSampleBufferVideoRenderer__updatePreferredDynamicRange__block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  CMBaseObject = FigVideoQueueGetCMBaseObject();
  v4 = *(*(CMBaseObjectGetVTable() + 8) + 56);
  if (v4)
  {
    result = v4(CMBaseObject, *MEMORY[0x1E6973D30], v2);
  }

  else
  {
    result = 4294954514;
  }

  *(*(*(a1 + 40) + 8) + 24) = result;
  return result;
}

- (id)preferredDynamicRange
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x3052000000;
  v9 = __Block_byref_object_copy__33;
  v10 = __Block_byref_object_dispose__33;
  v11 = 0;
  serialQueue = self->_serialQueue;
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __52__AVSampleBufferVideoRenderer_preferredDynamicRange__block_invoke;
  v5[3] = &unk_1E7460E68;
  v5[4] = self;
  v5[5] = &v6;
  dispatch_sync(serialQueue, v5);
  v3 = v7[5];
  _Block_object_dispose(&v6, 8);
  return v3;
}

uint64_t __52__AVSampleBufferVideoRenderer_preferredDynamicRange__block_invoke(uint64_t a1)
{
  result = [*(*(a1 + 32) + 128) copy];
  *(*(*(a1 + 40) + 8) + 40) = result;
  return result;
}

- (void)setPreferredDynamicRange:(id)range
{
  serialQueue = self->_serialQueue;
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __56__AVSampleBufferVideoRenderer_setPreferredDynamicRange___block_invoke;
  v5[3] = &unk_1E7460DF0;
  v5[4] = range;
  v5[5] = self;
  dispatch_sync(serialQueue, v5);
  [(AVSampleBufferVideoRenderer *)self _updatePreferredDynamicRange];
}

void __56__AVSampleBufferVideoRenderer_setPreferredDynamicRange___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) copy];

  *(*(a1 + 40) + 128) = v2;
}

- (AVSampleBufferVideoRenderer)init
{
  v35 = *MEMORY[0x1E69E9840];
  v27.receiver = self;
  v27.super_class = AVSampleBufferVideoRenderer;
  v28 = [[AVTelemetryInterval alloc] initAndStartWith:58];
  v2 = [(AVSampleBufferVideoRenderer *)&v27 init];
  if (v2)
  {
    v2->_loggingIdentifier = [[AVCommonLoggingIdentifier alloc] initWithIdentifierSuffix:0x1F0A918B0 prefixlength:3];
    v2->_figVideoTargets = CFArrayCreateMutable(*MEMORY[0x1E695E480], 0, MEMORY[0x1E695E9C0]);
    v3 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    v2->_serialQueue = dispatch_queue_create("AVSampleBufferVideoRenderer serial", v3);
    v4 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    v2->_videoQueueQueue = dispatch_queue_create("AVSampleBufferVideoRenderer videoQueue", v4);
    v5 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    v2->_layerQueue = dispatch_queue_create("AVSampleBufferVideoRenderer layerQueue", v5);
    v6 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    v2->_videoPerformanceMetricsQueue = dispatch_queue_create("AVSampleBufferVideoRenderer videoPerformanceMetricsQueue", v6);
    v7 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    v2->_flushCallbackListQueue = dispatch_queue_create("AVSampleBufferVideoRendererCallbackListQueue", v7);
    v8 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    v2->_flushCallbackQueue = dispatch_queue_create("AVSampleBufferVideoRendererFlushCallbackQueue", v8);
    v2->_flushCallbacks = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:0];
    v9 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    v2->_queueForProtectingPrerollCompleteCallback = dispatch_queue_create("AVSampleBufferVideoRendererQueueForProtectingPrerollCompleteCallback", v9);
    v10 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    v2->_queueForCallingPrerollCompleteCallback = dispatch_queue_create("AVSampleBufferVideoRendererQueueForCallingPrerollCompleteCallback", v10);
    v2->_applicationStateMonitor = +[AVApplicationStateMonitor sharedApplicationStateMonitor];
    objc_initWeak(&location, v2);
    defaultCenter = [MEMORY[0x1E696AD88] defaultCenter];
    v24[0] = MEMORY[0x1E69E9820];
    v24[1] = 3221225472;
    v24[2] = __35__AVSampleBufferVideoRenderer_init__block_invoke;
    v24[3] = &unk_1E7460BB0;
    objc_copyWeak(&v25, &location);
    v2->_didFinishSuspensionNotificationToken = [defaultCenter addObserverForName:@"_UIApplicationDidFinishSuspensionSnapshotNotification" object:0 queue:0 usingBlock:v24];
    *&v2->_preventsDisplaySleepDuringVideoPlayback = 257;
    v2->_videoOutputs = objc_alloc_init(MEMORY[0x1E695DF70]);
    [(AVSampleBufferVideoRenderer *)v2 setPreferredDynamicRange:*MEMORY[0x1E69792A0]];
    if ([(AVSampleBufferVideoRenderer *)v2 _initializeTimebases])
    {
      objc_destroyWeak(&v25);
      objc_destroyWeak(&location);
      goto LABEL_9;
    }

    v2->_status = 0;
    v2->_error = 0;
    v12 = *(MEMORY[0x1E695F058] + 16);
    v2->_previousSourceRect.origin = *MEMORY[0x1E695F058];
    v2->_previousSourceRect.size = v12;
    v2->_createVideoQueueFailed = 0;
    *v23 = 0;
    v13 = [-[AVSampleBufferVideoRenderer currentFigVideoQueueFactory](v2 "currentFigVideoQueueFactory")];
    if (v13)
    {
      if (dyld_program_sdk_at_least())
      {
        if (dword_1EAEFCE70)
        {
          os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
          os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
          fig_log_call_emit_and_clean_up_after_send_and_compose();
        }

        [(AVSampleBufferVideoRenderer *)v2 _setCreateVideoQueueFailedWithOSStatus:v13, v21, v22];
        [(AVSampleBufferVideoRenderer *)v2 _resetStatusWithOSStatus:v13];
        [(AVSampleBufferVideoRenderer *)v2 _setRequiresFlushToResumeDecoding:1];
        v2->_videoQueue = 0;
        objc_destroyWeak(&v25);
        objc_destroyWeak(&location);
        goto LABEL_11;
      }

      v2->_videoQueue = 0;
      objc_destroyWeak(&v25);
      objc_destroyWeak(&location);
LABEL_9:

      v2 = 0;
      goto LABEL_18;
    }

    v2->_videoQueue = *v23;
    [(AVSampleBufferVideoRenderer *)v2 _addFigVideoQueueListeners];
    objc_destroyWeak(&v25);
    objc_destroyWeak(&location);
  }

LABEL_11:
  objc_loadWeak(&v2->_weakDisplayLayer);
  FigObjectRecordMethodCallsForObject();
  if (dword_1EAEFCE70)
  {
    LODWORD(location) = 0;
    v23[0] = OS_LOG_TYPE_DEFAULT;
    v15 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    v16 = location;
    if (os_log_type_enabled(v15, v23[0]))
    {
      v17 = v16;
    }

    else
    {
      v17 = v16 & 0xFFFFFFFE;
    }

    if (v17)
    {
      _loggingDescription = [(AVSampleBufferVideoRenderer *)v2 _loggingDescription];
      videoQueue = v2->_videoQueue;
      v29 = 136315650;
      v30 = "[AVSampleBufferVideoRenderer init]";
      v31 = 2114;
      v32 = _loggingDescription;
      v33 = 2048;
      v34 = videoQueue;
      _os_log_send_and_compose_impl();
    }

    fig_log_call_emit_and_clean_up_after_send_and_compose();
  }

LABEL_18:
  AVTelemetryIntervalEnd(&v28);
  return v2;
}

uint64_t __35__AVSampleBufferVideoRenderer_init__block_invoke(uint64_t a1, uint64_t a2)
{
  Weak = objc_loadWeak((a1 + 32));

  return [Weak _didFinishSuspension:a2];
}

- (void)dealloc
{
  v24 = *MEMORY[0x1E69E9840];
  objc_loadWeak(&self->_weakDisplayLayer);
  FigObjectRecordMethodCallsForObject();
  if (dword_1EAEFCE70)
  {
    v23 = 0;
    type = OS_LOG_TYPE_DEFAULT;
    os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
    fig_log_call_emit_and_clean_up_after_send_and_compose();
  }

  if (self->_isRequestingMediaData)
  {
    objc_exception_throw([MEMORY[0x1E695DF30] exceptionWithName:*MEMORY[0x1E695D940] reason:@"An object conforming to AVQueuedSampleBufferRendering userInfo:{configured to request more media data via requestMediaDataWhenReadyOnQueue:usingBlock:, was released without first having been messaged stopRequestingMediaData:.", 0}]);
  }

  [(AVSampleBufferVideoRenderer *)self _callOldPrerollCompletionHandlerWithSuccess:0 andSetNewPrerollCompletionHandler:0 forRequestID:0];
  [(AVSampleBufferVideoRenderer *)self _removeFigVideoQueueListeners];
  error = self->_error;
  if (error)
  {
    CFRelease(error);
  }

  videoQueue = self->_videoQueue;
  if (videoQueue)
  {
    CFRelease(videoQueue);
    self->_videoQueue = 0;
  }

  mediaDataRequester = self->_mediaDataRequester;
  if (mediaDataRequester)
  {
    CFRelease(mediaDataRequester);
  }

  serialQueue = self->_serialQueue;
  if (serialQueue)
  {
    CFRelease(serialQueue);
  }

  videoQueueQueue = self->_videoQueueQueue;
  if (videoQueueQueue)
  {
    CFRelease(videoQueueQueue);
  }

  layerQueue = self->_layerQueue;
  if (layerQueue)
  {
    CFRelease(layerQueue);
  }

  videoPerformanceMetricsQueue = self->_videoPerformanceMetricsQueue;
  if (videoPerformanceMetricsQueue)
  {
    CFRelease(videoPerformanceMetricsQueue);
  }

  flushCallbackListQueue = self->_flushCallbackListQueue;
  if (flushCallbackListQueue)
  {
    dispatch_release(flushCallbackListQueue);
    self->_flushCallbackListQueue = 0;
  }

  flushCallbackQueue = self->_flushCallbackQueue;
  if (flushCallbackQueue)
  {
    dispatch_release(flushCallbackQueue);
    self->_flushCallbackQueue = 0;
  }

  queueForProtectingPrerollCompleteCallback = self->_queueForProtectingPrerollCompleteCallback;
  if (queueForProtectingPrerollCompleteCallback)
  {
    dispatch_release(queueForProtectingPrerollCompleteCallback);
    self->_queueForProtectingPrerollCompleteCallback = 0;
  }

  queueForCallingPrerollCompleteCallback = self->_queueForCallingPrerollCompleteCallback;
  if (queueForCallingPrerollCompleteCallback)
  {
    dispatch_release(queueForCallingPrerollCompleteCallback);
    self->_queueForCallingPrerollCompleteCallback = 0;
  }

  controlTimebaseSetByUser = self->_controlTimebaseSetByUser;
  if (controlTimebaseSetByUser)
  {
    CFRelease(controlTimebaseSetByUser);
  }

  readOnlyVideoQueueTimebase = self->_readOnlyVideoQueueTimebase;
  if (readOnlyVideoQueueTimebase)
  {
    CFRelease(readOnlyVideoQueueTimebase);
  }

  readOnlyRenderingTimebase = self->_readOnlyRenderingTimebase;
  if (readOnlyRenderingTimebase)
  {
    CFRelease(readOnlyRenderingTimebase);
  }

  lastFormatDescription = self->_lastFormatDescription;
  if (lastFormatDescription)
  {
    CFRelease(lastFormatDescription);
  }

  lastCryptor = self->_lastCryptor;
  if (lastCryptor)
  {
    CFRelease(lastCryptor);
  }

  if (self->_didFinishSuspensionNotificationToken)
  {
    [objc_msgSend(MEMORY[0x1E696AD88] "defaultCenter")];
  }

  figVideoTargets = self->_figVideoTargets;
  if (figVideoTargets)
  {
    CFRelease(figVideoTargets);
  }

  v21.receiver = self;
  v21.super_class = AVSampleBufferVideoRenderer;
  [(AVSampleBufferVideoRenderer *)&v21 dealloc];
}

- (OpaqueCMTimebase)controlTimebase
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x2020000000;
  v9 = 0;
  serialQueue = self->_serialQueue;
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __46__AVSampleBufferVideoRenderer_controlTimebase__block_invoke;
  v5[3] = &unk_1E7460E68;
  v5[4] = self;
  v5[5] = &v6;
  dispatch_sync(serialQueue, v5);
  v3 = v7[3];
  _Block_object_dispose(&v6, 8);
  return v3;
}

CFTypeRef __46__AVSampleBufferVideoRenderer_controlTimebase__block_invoke(uint64_t a1)
{
  result = *(*(a1 + 32) + 184);
  if (result)
  {
    result = CFRetain(result);
  }

  *(*(*(a1 + 40) + 8) + 24) = result;
  return result;
}

- (void)setDisplayLayerVisibility:(BOOL)visibility
{
  WeakRetained = objc_loadWeakRetained(&self->_weakDisplayLayer);
  layerQueue = self->_layerQueue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __57__AVSampleBufferVideoRenderer_setDisplayLayerVisibility___block_invoke;
  block[3] = &unk_1E7460E18;
  visibilityCopy = visibility;
  block[4] = self;
  block[5] = WeakRetained;
  dispatch_async(layerQueue, block);
}

void __57__AVSampleBufferVideoRenderer_setDisplayLayerVisibility___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) _copyVideoQueue];
  if (v2)
  {
    v3 = v2;
    v8[0] = 0;
    v8[1] = v8;
    v8[2] = 0x2020000000;
    v9 = 0;
    v4 = *(*(a1 + 32) + 144);
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __57__AVSampleBufferVideoRenderer_setDisplayLayerVisibility___block_invoke_2;
    block[3] = &unk_1E7465768;
    block[4] = v8;
    block[5] = v3;
    v7 = *(a1 + 48);
    dispatch_sync(v4, block);
    CFRelease(v3);
    objc_loadWeak((*(a1 + 32) + 40));
    FigObjectRecordMethodCallsForObject();
    [objc_msgSend(MEMORY[0x1E696AD88] "defaultCenter")];
    [*(a1 + 32) _fireDisplayLayerNotificationNowThenReleaseOnMainThread:@"AVSampleBufferDisplayLayerVisibilityDidChangeNotification" userInfo:0];
    v5[0] = MEMORY[0x1E69E9820];
    v5[1] = 3221225472;
    v5[2] = __57__AVSampleBufferVideoRenderer_setDisplayLayerVisibility___block_invoke_3;
    v5[3] = &unk_1E7460C00;
    v5[4] = *(a1 + 40);
    dispatch_async(MEMORY[0x1E69E96A0], v5);
    _Block_object_dispose(v8, 8);
  }
}

uint64_t __57__AVSampleBufferVideoRenderer_setDisplayLayerVisibility___block_invoke_2(uint64_t a1)
{
  if (*(a1 + 48))
  {
    v2 = MEMORY[0x1E695E4D0];
  }

  else
  {
    v2 = MEMORY[0x1E695E4C0];
  }

  CMBaseObject = FigVideoQueueGetCMBaseObject();
  v4 = *(*(CMBaseObjectGetVTable() + 8) + 56);
  if (v4)
  {
    result = v4(CMBaseObject, *MEMORY[0x1E6973D10], *v2);
  }

  else
  {
    result = 4294954514;
  }

  *(*(*(a1 + 32) + 8) + 24) = result;
  return result;
}

- (void)copyFigSampleBufferAudioRenderer:(OpaqueFigSampleBufferAudioRenderer *)renderer
{
  if (renderer)
  {
    *renderer = 0;
  }
}

- (void)setSTSLabel:(id)label
{
  serialQueue = self->_serialQueue;
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __43__AVSampleBufferVideoRenderer_setSTSLabel___block_invoke;
  v6[3] = &unk_1E7460DF0;
  v6[4] = label;
  v6[5] = self;
  dispatch_sync(serialQueue, v6);
  v5 = [MEMORY[0x1E696AD80] notificationWithName:@"AVSampleBufferSTSLabelDidChangeNotification" object:self];
  [objc_msgSend(MEMORY[0x1E696AD88] "defaultCenter")];
}

void __43__AVSampleBufferVideoRenderer_setSTSLabel___block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);

  *(*(a1 + 40) + 336) = *(a1 + 32);
}

- (NSString)_STSLabel
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x3052000000;
  v9 = __Block_byref_object_copy__33;
  v10 = __Block_byref_object_dispose__33;
  v11 = 0;
  serialQueue = self->_serialQueue;
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __40__AVSampleBufferVideoRenderer__STSLabel__block_invoke;
  v5[3] = &unk_1E7460E68;
  v5[4] = self;
  v5[5] = &v6;
  dispatch_sync(serialQueue, v5);
  v3 = v7[5];
  _Block_object_dispose(&v6, 8);
  return v3;
}

id __40__AVSampleBufferVideoRenderer__STSLabel__block_invoke(uint64_t a1)
{
  result = *(*(a1 + 32) + 336);
  *(*(*(a1 + 40) + 8) + 40) = result;
  return result;
}

- (void)setToneMapToStandardDynamicRange:(BOOL)range
{
  _copyVideoQueue = [(AVSampleBufferVideoRenderer *)self _copyVideoQueue];
  if (_copyVideoQueue)
  {
    v6 = _copyVideoQueue;
    v10[0] = 0;
    v10[1] = v10;
    v10[2] = 0x2020000000;
    v11 = 0;
    videoQueueQueue = self->_videoQueueQueue;
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __64__AVSampleBufferVideoRenderer_setToneMapToStandardDynamicRange___block_invoke;
    block[3] = &unk_1E7465768;
    block[4] = v10;
    block[5] = v6;
    rangeCopy = range;
    dispatch_sync(videoQueueQueue, block);
    CFRelease(v6);
    _Block_object_dispose(v10, 8);
  }
}

uint64_t __64__AVSampleBufferVideoRenderer_setToneMapToStandardDynamicRange___block_invoke(uint64_t a1)
{
  if (*(a1 + 48))
  {
    v2 = MEMORY[0x1E695E4D0];
  }

  else
  {
    v2 = MEMORY[0x1E695E4C0];
  }

  CMBaseObject = FigVideoQueueGetCMBaseObject();
  v4 = *(*(CMBaseObjectGetVTable() + 8) + 56);
  if (v4)
  {
    result = v4(CMBaseObject, *MEMORY[0x1E6973D58], *v2);
  }

  else
  {
    result = 4294954514;
  }

  *(*(*(a1 + 32) + 8) + 24) = result;
  return result;
}

- (void)setReadyForDisplayWithoutKVO:(BOOL)o
{
  v12 = *MEMORY[0x1E69E9840];
  v8 = 0;
  v9 = &v8;
  v10 = 0x2020000000;
  v11 = 0;
  serialQueue = self->_serialQueue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __60__AVSampleBufferVideoRenderer_setReadyForDisplayWithoutKVO___block_invoke;
  block[3] = &unk_1E7465790;
  block[4] = self;
  block[5] = &v8;
  oCopy = o;
  dispatch_sync(serialQueue, block);
  if (*(v9 + 24) == 1)
  {
    [(AVSampleBufferVideoRenderer *)self _fireDisplayLayerNotificationNowThenReleaseOnMainThread:@"AVSampleBufferDisplayLayerReadyForDisplayDidChangeNotification" userInfo:0];
  }

  if (dword_1EAEFCE70)
  {
    os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
    fig_log_call_emit_and_clean_up_after_send_and_compose();
  }

  _Block_object_dispose(&v8, 8);
}

uint64_t __60__AVSampleBufferVideoRenderer_setReadyForDisplayWithoutKVO___block_invoke(uint64_t result)
{
  *(*(*(result + 40) + 8) + 24) = *(*(result + 32) + 120) != *(result + 48);
  *(*(result + 32) + 120) = *(result + 48);
  return result;
}

- (BOOL)isReadyForDisplay
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x2020000000;
  v9 = 0;
  serialQueue = self->_serialQueue;
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __48__AVSampleBufferVideoRenderer_isReadyForDisplay__block_invoke;
  v5[3] = &unk_1E7460E68;
  v5[4] = self;
  v5[5] = &v6;
  dispatch_sync(serialQueue, v5);
  v3 = *(v7 + 24);
  _Block_object_dispose(&v6, 8);
  return v3;
}

- (void)setContentKeySession:(id)session
{
  serialQueue = self->_serialQueue;
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = __52__AVSampleBufferVideoRenderer_setContentKeySession___block_invoke;
  v4[3] = &unk_1E7460DF0;
  v4[4] = self;
  v4[5] = session;
  dispatch_sync(serialQueue, v4);
}

- (int)attachToContentKeySession:(id)session contentKeyBoss:(OpaqueFigContentKeyBoss *)boss failedSinceAlreadyAttachedToAnotherSession:(BOOL *)anotherSession
{
  v9 = 0;
  v10 = &v9;
  v11 = 0x2020000000;
  v12 = 0;
  serialQueue = self->_serialQueue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __115__AVSampleBufferVideoRenderer_attachToContentKeySession_contentKeyBoss_failedSinceAlreadyAttachedToAnotherSession___block_invoke;
  block[3] = &unk_1E7460F30;
  block[4] = self;
  block[5] = session;
  block[6] = &v9;
  dispatch_sync(serialQueue, block);
  if (anotherSession)
  {
    *anotherSession = *(v10 + 24);
  }

  _Block_object_dispose(&v9, 8);
  return 0;
}

id __115__AVSampleBufferVideoRenderer_attachToContentKeySession_contentKeyBoss_failedSinceAlreadyAttachedToAnotherSession___block_invoke(uint64_t a1)
{
  result = objc_loadWeak((*(a1 + 32) + 304));
  if (result)
  {
    v3 = 1;
  }

  else
  {
    result = objc_storeWeak((*(a1 + 32) + 304), *(a1 + 40));
    v3 = 0;
  }

  *(*(*(a1 + 48) + 8) + 24) = v3;
  return result;
}

- (BOOL)attachedToExternalContentKeySession
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x2020000000;
  v9 = 0;
  serialQueue = self->_serialQueue;
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __66__AVSampleBufferVideoRenderer_attachedToExternalContentKeySession__block_invoke;
  v5[3] = &unk_1E7460E68;
  v5[4] = self;
  v5[5] = &v6;
  dispatch_sync(serialQueue, v5);
  v3 = *(v7 + 24) != 0;
  _Block_object_dispose(&v6, 8);
  return v3;
}

id __66__AVSampleBufferVideoRenderer_attachedToExternalContentKeySession__block_invoke(uint64_t a1)
{
  result = objc_loadWeak((*(a1 + 32) + 304));
  *(*(*(a1 + 40) + 8) + 24) = result != 0;
  return result;
}

- (void)removeDisplayLayer
{
  _copyVideoQueue = [(AVSampleBufferVideoRenderer *)self _copyVideoQueue];
  if (_copyVideoQueue)
  {
    v4 = _copyVideoQueue;
    objc_loadWeak(&self->_weakDisplayLayer);
    FigObjectRecordMethodCallsForObject();
    videoQueueQueue = self->_videoQueueQueue;
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __49__AVSampleBufferVideoRenderer_removeDisplayLayer__block_invoke;
    block[3] = &__block_descriptor_40_e5_v8__0l;
    block[4] = v4;
    dispatch_sync(videoQueueQueue, block);
    CFRelease(v4);
  }
}

uint64_t __49__AVSampleBufferVideoRenderer_removeDisplayLayer__block_invoke()
{
  CMBaseObject = FigVideoQueueGetCMBaseObject();
  VTable = CMBaseObjectGetVTable();
  v3 = *(VTable + 8);
  result = VTable + 8;
  v4 = *(v3 + 56);
  if (v4)
  {
    v5 = *MEMORY[0x1E6973D08];

    return v4(CMBaseObject, v5, 0);
  }

  return result;
}

- (void)setVideoLayerGeometryFlipped:(BOOL)flipped
{
  if (_os_feature_enabled_impl())
  {
    _copyVideoQueue = [(AVSampleBufferVideoRenderer *)self _copyVideoQueue];
    if (_copyVideoQueue)
    {
      videoQueueQueue = self->_videoQueueQueue;
      v7[0] = MEMORY[0x1E69E9820];
      v7[1] = 3221225472;
      v7[2] = __60__AVSampleBufferVideoRenderer_setVideoLayerGeometryFlipped___block_invoke;
      v7[3] = &__block_descriptor_41_e5_v8__0l;
      v7[4] = _copyVideoQueue;
      flippedCopy = flipped;
      dispatch_async(videoQueueQueue, v7);
    }
  }
}

void __60__AVSampleBufferVideoRenderer_setVideoLayerGeometryFlipped___block_invoke(uint64_t a1)
{
  if (*(a1 + 40))
  {
    v2 = MEMORY[0x1E695E4D0];
  }

  else
  {
    v2 = MEMORY[0x1E695E4C0];
  }

  CMBaseObject = FigVideoQueueGetCMBaseObject();
  v4 = *(*(CMBaseObjectGetVTable() + 8) + 56);
  if (v4)
  {
    v4(CMBaseObject, @"VideoLayerGeometryFlipped", *v2);
  }

  v5 = *(a1 + 32);

  CFRelease(v5);
}

- (id)contentKeySession
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x3052000000;
  v9 = __Block_byref_object_copy__33;
  v10 = __Block_byref_object_dispose__33;
  v11 = 0;
  serialQueue = self->_serialQueue;
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __48__AVSampleBufferVideoRenderer_contentKeySession__block_invoke;
  v5[3] = &unk_1E7460E68;
  v5[4] = self;
  v5[5] = &v6;
  dispatch_sync(serialQueue, v5);
  v3 = v7[5];
  _Block_object_dispose(&v6, 8);
  return v3;
}

id __48__AVSampleBufferVideoRenderer_contentKeySession__block_invoke(uint64_t a1)
{
  result = objc_loadWeak((*(a1 + 32) + 304));
  *(*(*(a1 + 40) + 8) + 40) = result;
  return result;
}

- (BOOL)isReadyForMoreMediaData
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x2020000000;
  v9 = 1;
  serialQueue = self->_serialQueue;
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __54__AVSampleBufferVideoRenderer_isReadyForMoreMediaData__block_invoke;
  v5[3] = &unk_1E7460E68;
  v5[4] = self;
  v5[5] = &v6;
  dispatch_sync(serialQueue, v5);
  v3 = *(v7 + 24);
  _Block_object_dispose(&v6, 8);
  return v3;
}

const __CFArray *__54__AVSampleBufferVideoRenderer_isReadyForMoreMediaData__block_invoke(const __CFArray *result)
{
  *(*(*(result + 5) + 8) + 24) = *(*(result + 4) + 121) ^ 1;
  v1 = *(result + 4);
  if ((*(v1 + 48) & 1) == 0)
  {
    v2 = result;
    result = *(v1 + 56);
    if (!result || (result = CFArrayGetCount(result)) == 0)
    {
      *(*(*(v2 + 5) + 8) + 24) = 0;
    }
  }

  return result;
}

+ (BOOL)automaticallyNotifiesObserversForKey:(id)key
{
  if ([key isEqualToString:@"outputObscuredDueToInsufficientExternalProtection"])
  {
    return 0;
  }

  v6.receiver = self;
  v6.super_class = &OBJC_METACLASS___AVSampleBufferVideoRenderer;
  return objc_msgSendSuper2(&v6, sel_automaticallyNotifiesObserversForKey_, key);
}

- (id)_statusString:(int64_t)string
{
  if (string > 2)
  {
    return @"Invalid";
  }

  else
  {
    return off_1E7465968[string];
  }
}

- (AVQueuedSampleBufferRenderingStatus)status
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x2020000000;
  v9 = 0;
  serialQueue = self->_serialQueue;
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __37__AVSampleBufferVideoRenderer_status__block_invoke;
  v5[3] = &unk_1E7460E68;
  v5[4] = self;
  v5[5] = &v6;
  dispatch_sync(serialQueue, v5);
  v3 = v7[3];
  _Block_object_dispose(&v6, 8);
  return v3;
}

- (NSError)error
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x3052000000;
  v9 = __Block_byref_object_copy__33;
  v10 = __Block_byref_object_dispose__33;
  v11 = 0;
  serialQueue = self->_serialQueue;
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __36__AVSampleBufferVideoRenderer_error__block_invoke;
  v5[3] = &unk_1E7460E68;
  v5[4] = self;
  v5[5] = &v6;
  dispatch_sync(serialQueue, v5);
  v3 = v7[5];
  _Block_object_dispose(&v6, 8);
  return v3;
}

uint64_t __36__AVSampleBufferVideoRenderer_error__block_invoke(uint64_t a1)
{
  result = [*(*(a1 + 32) + 32) copy];
  *(*(*(a1 + 40) + 8) + 40) = result;
  return result;
}

- (OpaqueCMTimebase)timebase
{
  v2 = self->_readOnlyVideoQueueTimebase;

  return v2;
}

- (int)_enqueueSingleSampleBuffer:(opaqueCMSampleBuffer *)buffer bufferEnqueueingInfo:(id *)info
{
  v26 = 0;
  v27 = &v26;
  v28 = 0x3810000000;
  v30 = *MEMORY[0x1E6960C70];
  v7 = *(MEMORY[0x1E6960C70] + 16);
  v29 = &unk_19626E495;
  v31 = v7;
  v22 = 0;
  v23 = &v22;
  v24 = 0x2020000000;
  v25 = 0;
  serialQueue = self->_serialQueue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __79__AVSampleBufferVideoRenderer__enqueueSingleSampleBuffer_bufferEnqueueingInfo___block_invoke;
  block[3] = &unk_1E74627B8;
  block[4] = self;
  block[5] = &v26;
  block[6] = &v22;
  dispatch_sync(serialQueue, block);
  if (*(v23 + 6) >= 2u)
  {
    memset(&v15, 0, sizeof(v15));
    CMSampleBufferGetOutputPresentationTimeStamp(&v15, buffer);
    time1 = v15;
    time2 = *(v27 + 4);
    CMTimeCompare(&time1, &time2);
    if (*(v23 + 6) == 2)
    {
      v9 = self->_serialQueue;
      v17[0] = MEMORY[0x1E69E9820];
      v17[1] = 3221225472;
      v17[2] = __79__AVSampleBufferVideoRenderer__enqueueSingleSampleBuffer_bufferEnqueueingInfo___block_invoke_2;
      v17[3] = &unk_1E7462FD8;
      v18 = v15;
      v17[4] = self;
      dispatch_sync(v9, v17);
    }
  }

  v15.value = 0;
  *&v15.timescale = &v15;
  v15.epoch = 0x2020000000;
  v16 = 0;
  _copyVideoQueue = [(AVSampleBufferVideoRenderer *)self _copyVideoQueue];
  if (_copyVideoQueue)
  {
    videoQueueQueue = self->_videoQueueQueue;
    v14[0] = MEMORY[0x1E69E9820];
    v14[1] = 3221225472;
    v14[2] = __79__AVSampleBufferVideoRenderer__enqueueSingleSampleBuffer_bufferEnqueueingInfo___block_invoke_3;
    v14[3] = &unk_1E74657B8;
    v14[4] = &v15;
    v14[5] = _copyVideoQueue;
    v14[6] = buffer;
    v14[7] = info;
    dispatch_sync(videoQueueQueue, v14);
    CFRelease(_copyVideoQueue);
  }

  v12 = *(*&v15.timescale + 24);
  _Block_object_dispose(&v15, 8);
  _Block_object_dispose(&v22, 8);
  _Block_object_dispose(&v26, 8);
  return v12;
}

__n128 __79__AVSampleBufferVideoRenderer__enqueueSingleSampleBuffer_bufferEnqueueingInfo___block_invoke(void *a1)
{
  v1 = *(a1[5] + 8);
  result = *(a1[4] + 276);
  v1[3].n128_u64[0] = *(a1[4] + 292);
  v1[2] = result;
  *(*(a1[6] + 8) + 24) = *(a1[4] + 272);
  return result;
}

__n128 __79__AVSampleBufferVideoRenderer__enqueueSingleSampleBuffer_bufferEnqueueingInfo___block_invoke_2(uint64_t a1)
{
  v1 = (*(a1 + 32) + 276);
  result = *(a1 + 40);
  v1[1].n128_u64[0] = *(a1 + 56);
  *v1 = result;
  return result;
}

uint64_t __79__AVSampleBufferVideoRenderer__enqueueSingleSampleBuffer_bufferEnqueueingInfo___block_invoke_3(void *a1)
{
  v2 = a1[5];
  v3 = a1[6];
  v4 = a1[7];
  v5 = *v4;
  v6 = v4[1];
  v7 = v4[2];
  v8 = v4[3];
  v9 = v4[4];
  v10 = v4[5];
  v12 = v4[6];
  v11 = v4[7];
  v13 = *(*(CMBaseObjectGetVTable() + 16) + 16);
  if (v13)
  {
    result = v13(v2, v3, 0, v5, v6, v7, v8, v9, v10, v12, v11);
  }

  else
  {
    result = 4294954514;
  }

  *(*(a1[4] + 8) + 24) = result;
  return result;
}

- ($8A865F3275AFFA793BA84D73056FEF19)_computeSampleBufferEnqueueingInfoForSampleBuffer:(SEL)buffer
{
  retstr->var0.origin.x = 0.0;
  retstr->var0.origin.y = 0.0;
  TaggedBufferGroup = CMSampleBufferGetTaggedBufferGroup(a4);
  if (TaggedBufferGroup)
  {
    v8 = TaggedBufferGroup;
    Count = CMTaggedBufferGroupGetCount(TaggedBufferGroup);
    formatDescriptionOut = 0;
    width = *MEMORY[0x1E695F060];
    height = *(MEMORY[0x1E695F060] + 8);
    if (Count >= 1)
    {
      v12 = Count;
      v13 = 0;
      v14 = *MEMORY[0x1E6960640];
      v15 = *(MEMORY[0x1E6960640] + 8);
      while (1)
      {
        TagCollectionAtIndex = CMTaggedBufferGroupGetTagCollectionAtIndex(v8, v13);
        *&v46.category = v14;
        v46.value = v15;
        if (CMTagCollectionContainsTag(TagCollectionAtIndex, v46))
        {
          CVPixelBufferAtIndex = CMTaggedBufferGroupGetCVPixelBufferAtIndex(v8, v13);
          if (CVPixelBufferAtIndex)
          {
            break;
          }
        }

        if (v12 == ++v13)
        {
          goto LABEL_11;
        }
      }

      CMVideoFormatDescriptionCreateForImageBuffer(*MEMORY[0x1E695E480], CVPixelBufferAtIndex, &formatDescriptionOut);
      PresentationDimensions = CMVideoFormatDescriptionGetPresentationDimensions(formatDescriptionOut, 1u, 1u);
      width = PresentationDimensions.width;
      height = PresentationDimensions.height;
      if (formatDescriptionOut)
      {
        CFRelease(formatDescriptionOut);
      }
    }
  }

  else
  {
    FormatDescription = CMSampleBufferGetFormatDescription(a4);
    v19 = CMVideoFormatDescriptionGetPresentationDimensions(FormatDescription, 1u, 1u);
    width = v19.width;
    height = v19.height;
  }

LABEL_11:
  retstr->var0.size.width = width;
  retstr->var0.size.height = height;
  [AVSampleBufferDisplayLayer _destRectForAspectRatio:width, height];
  retstr->var1.origin.x = v21;
  retstr->var1.origin.y = v22;
  retstr->var1.size.width = v23;
  retstr->var1.size.height = v24;
  formatDescriptionOut = 0;
  p_formatDescriptionOut = &formatDescriptionOut;
  v44 = 0x2020000000;
  v45 = 0;
  serialQueue = self->_serialQueue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __81__AVSampleBufferVideoRenderer__computeSampleBufferEnqueueingInfoForSampleBuffer___block_invoke;
  block[3] = &unk_1E74657E0;
  origin = retstr->var0.origin;
  size = retstr->var0.size;
  v28 = retstr->var1.size;
  v40 = retstr->var1.origin;
  v41 = v28;
  v38 = origin;
  v39 = size;
  block[4] = self;
  block[5] = &formatDescriptionOut;
  dispatch_sync(serialQueue, block);
  if (*(p_formatDescriptionOut + 24) == 1)
  {
    v32[0] = MEMORY[0x1E69E9820];
    v32[1] = 3221225472;
    v29 = retstr->var0.size;
    v33 = retstr->var0.origin;
    v34 = v29;
    v30 = retstr->var1.size;
    v35 = retstr->var1.origin;
    v36 = v30;
    v32[2] = __81__AVSampleBufferVideoRenderer__computeSampleBufferEnqueueingInfoForSampleBuffer___block_invoke_2;
    v32[3] = &unk_1E7465808;
    v32[4] = self;
    AVSerializeOnQueueAsyncIfNecessary(MEMORY[0x1E69E96A0], v32);
  }

  _Block_object_dispose(&formatDescriptionOut, 8);
  return result;
}

__n128 __81__AVSampleBufferVideoRenderer__computeSampleBufferEnqueueingInfoForSampleBuffer___block_invoke(uint64_t a1)
{
  v2 = a1 + 48;
  if (!CGRectEqualToRect(*(*(a1 + 32) + 64), *(a1 + 48)))
  {
    *(*(*(a1 + 40) + 8) + 24) = 1;
    v4 = *(a1 + 32);
    result = *v2;
    v5 = *(v2 + 16);
    *(v4 + 64) = *v2;
    *(v4 + 80) = v5;
  }

  return result;
}

void __81__AVSampleBufferVideoRenderer__computeSampleBufferEnqueueingInfoForSampleBuffer___block_invoke_2(uint64_t a1)
{
  v2 = objc_autoreleasePoolPush();
  [objc_loadWeak((*(a1 + 32) + 40)) _updatePresentationSize:{*(a1 + 56), *(a1 + 64)}];

  objc_autoreleasePoolPop(v2);
}

- (void)enqueueSampleBuffer:(opaqueCMSampleBuffer *)buffer
{
  v16 = 0;
  v17 = &v16;
  v18 = 0x2020000000;
  v19 = 0;
  serialQueue = self->_serialQueue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __51__AVSampleBufferVideoRenderer_enqueueSampleBuffer___block_invoke;
  block[3] = &unk_1E7460E68;
  block[4] = self;
  block[5] = &v16;
  dispatch_sync(serialQueue, block);
  if (*(v17 + 24) == 1)
  {
    if (CMSampleBufferGetFormatDescription(buffer))
    {
      [(AVSampleBufferVideoRenderer *)self _computeSampleBufferEnqueueingInfoForSampleBuffer:buffer, 0, 0, 0, 0, 0, 0, 0, 0];
      [(AVSampleBufferVideoRenderer *)self enqueueSampleBuffer:buffer bufferEnqueueingInfo:v14];
    }
  }

  else
  {
    figVideoTargets = self->_figVideoTargets;
    if ((!figVideoTargets || CFArrayGetCount(figVideoTargets) <= 0) && !self->_shouldWaitForVideoTarget)
    {
      v13 = [MEMORY[0x1E695DF30] exceptionWithName:*MEMORY[0x1E695D940] reason:AVMethodExceptionReasonWithObjectAndSelector(self userInfo:{a2, @"An AVSampleBufferDisplayLayer or video target must be added to the AVSampleBufferVideoRenderer prior to enqueueing sample buffers.", v7, v8, v9, v10, v11, *&v14[0]), 0}];
      objc_exception_throw(v13);
    }

    memset(v14, 0, sizeof(v14));
    [(AVSampleBufferVideoRenderer *)self enqueueSampleBuffer:buffer bufferEnqueueingInfo:v14];
  }

  _Block_object_dispose(&v16, 8);
}

- (void)enqueueSampleBuffer:(opaqueCMSampleBuffer *)buffer bufferEnqueueingInfo:(id *)info
{
  v15 = 0;
  cf = 0;
  if ([(AVSampleBufferVideoRenderer *)self status]== AVQueuedSampleBufferRenderingStatusFailed)
  {
    return;
  }

  if (*MEMORY[0x1E695FF58] == 1)
  {
    kdebug_trace();
  }

  if (objc_loadWeak(&self->_weakContentKeySession))
  {
    FormatDescription = CMSampleBufferGetFormatDescription(buffer);
    if (self->_lastCryptor && FigCFEqual())
    {
      FigSampleBufferSetDecryptor();
    }

    else
    {
      lastFormatDescription = self->_lastFormatDescription;
      self->_lastFormatDescription = FormatDescription;
      if (FormatDescription)
      {
        CFRetain(FormatDescription);
      }

      if (lastFormatDescription)
      {
        CFRelease(lastFormatDescription);
      }

      if (![objc_loadWeak(&self->_weakContentKeySession) copyCryptorForFormatDescription:FormatDescription cryptorOut:&cf errorOut:&v15])
      {
        goto LABEL_20;
      }

      lastCryptor = self->_lastCryptor;
      v10 = cf;
      self->_lastCryptor = cf;
      if (v10)
      {
        CFRetain(v10);
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

  serialQueue = self->_serialQueue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __72__AVSampleBufferVideoRenderer_enqueueSampleBuffer_bufferEnqueueingInfo___block_invoke;
  block[3] = &unk_1E7460C00;
  block[4] = self;
  dispatch_sync(serialQueue, block);
  [(AVSampleBufferVideoRenderer *)self _setStatus:1 error:0];
  refcon[0] = self;
  refcon[1] = info;
  CMSampleBufferCallForEachSample(buffer, _enqueueSingleSampleBufferStatic, refcon);
  [(AVSampleBufferVideoRenderer *)self _refreshAboveHighWaterLevelAndAlwaysStartRequestMediaDataIfRequesting:0];
LABEL_20:
  if (cf)
  {
    CFRelease(cf);
  }

  if (v15)
  {
    [(AVSampleBufferVideoRenderer *)self _setStatus:2 error:?];
  }
}

- (void)flushWithRemovalOfDisplayedImage:(BOOL)removeDisplayedImage completionHandler:(void *)handler
{
  v5 = removeDisplayedImage;
  v29 = 0;
  v30 = &v29;
  v31 = 0x2020000000;
  v32 = 0;
  serialQueue = self->_serialQueue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __82__AVSampleBufferVideoRenderer_flushWithRemovalOfDisplayedImage_completionHandler___block_invoke;
  block[3] = &unk_1E7460C00;
  block[4] = self;
  dispatch_sync(serialQueue, block);
  [(AVSampleBufferVideoRenderer *)self setReadyForDisplayWithoutKVO:0];
  [(AVSampleBufferVideoRenderer *)self _callOldPrerollCompletionHandlerWithSuccess:0 andSetNewPrerollCompletionHandler:0 forRequestID:0];
  if (handler)
  {
    flushCallbackListQueue = self->_flushCallbackListQueue;
    v27[0] = MEMORY[0x1E69E9820];
    v27[1] = 3221225472;
    v27[2] = __82__AVSampleBufferVideoRenderer_flushWithRemovalOfDisplayedImage_completionHandler___block_invoke_2;
    v27[3] = &unk_1E7462650;
    v27[4] = self;
    v27[5] = handler;
    dispatch_sync(flushCallbackListQueue, v27);
    v9 = 2;
    if (!v5)
    {
      goto LABEL_4;
    }

    goto LABEL_3;
  }

  v9 = 0;
  if (v5)
  {
LABEL_3:
    v9 |= 1u;
    v10 = self->_serialQueue;
    v26[0] = MEMORY[0x1E69E9820];
    v26[1] = 3221225472;
    v26[2] = __82__AVSampleBufferVideoRenderer_flushWithRemovalOfDisplayedImage_completionHandler___block_invoke_3;
    v26[3] = &unk_1E7460C00;
    v26[4] = self;
    dispatch_sync(v10, v26);
  }

LABEL_4:
  _copyVideoQueue = [(AVSampleBufferVideoRenderer *)self _copyVideoQueue];
  if (_copyVideoQueue)
  {
    videoQueueQueue = self->_videoQueueQueue;
    v24[0] = MEMORY[0x1E69E9820];
    v24[1] = 3221225472;
    v24[2] = __82__AVSampleBufferVideoRenderer_flushWithRemovalOfDisplayedImage_completionHandler___block_invoke_4;
    v24[3] = &unk_1E7465830;
    v24[4] = &v29;
    v24[5] = _copyVideoQueue;
    v25 = v9;
    dispatch_sync(videoQueueQueue, v24);
    CFRelease(_copyVideoQueue);
  }

  objc_loadWeak(&self->_weakDisplayLayer);
  FigObjectRecordMethodCallsForObject();
  if (![(AVSampleBufferVideoRenderer *)self _createVideoQueueFailed])
  {
    v13 = *(v30 + 6);
    if (v13 != -12083 && v13 != -12785)
    {
      goto LABEL_24;
    }
  }

  [(AVSampleBufferVideoRenderer *)self _removeFigVideoQueueListeners];
  cf = 0;
  v14 = [-[AVSampleBufferVideoRenderer currentFigVideoQueueFactory](self "currentFigVideoQueueFactory")];
  *(v30 + 6) = v14;
  if (!v14)
  {
    v15 = self->_serialQueue;
    v22[0] = MEMORY[0x1E69E9820];
    v22[1] = 3221225472;
    v22[2] = __82__AVSampleBufferVideoRenderer_flushWithRemovalOfDisplayedImage_completionHandler___block_invoke_5;
    v22[3] = &unk_1E7460FA8;
    v22[4] = self;
    v22[5] = cf;
    dispatch_sync(v15, v22);
  }

  [(AVSampleBufferVideoRenderer *)self _addFigVideoQueueListeners];
  [(AVSampleBufferVideoRenderer *)self _resetStatusWithOSStatus:*(v30 + 6)];
  [(AVSampleBufferVideoRenderer *)self _setCreateVideoQueueFailedWithOSStatus:*(v30 + 6)];
  if (cf)
  {
    v16 = self->_videoQueueQueue;
    v20[0] = MEMORY[0x1E69E9820];
    v20[1] = 3221225472;
    v20[2] = __82__AVSampleBufferVideoRenderer_flushWithRemovalOfDisplayedImage_completionHandler___block_invoke_6;
    v20[3] = &unk_1E7465830;
    v20[4] = &v29;
    v20[5] = cf;
    v21 = v9;
    dispatch_sync(v16, v20);
    v17 = cf;
    if (!handler)
    {
      goto LABEL_22;
    }

    v18 = v30;
    if (cf)
    {
      v19 = *(v30 + 6);
      if (!v19)
      {
        goto LABEL_23;
      }

      goto LABEL_21;
    }
  }

  else
  {
    if (!handler)
    {
      goto LABEL_24;
    }

    v18 = v30;
  }

  v19 = *(v18 + 6);
LABEL_21:
  [(AVSampleBufferVideoRenderer *)self _setStatus:2 error:AVLocalizedError(@"AVFoundationErrorDomain", v19, 0)];
  [(AVSampleBufferVideoRenderer *)self _flushComplete];
  v17 = cf;
LABEL_22:
  if (v17)
  {
LABEL_23:
    CFRelease(v17);
  }

LABEL_24:
  [(AVSampleBufferVideoRenderer *)self _setRequiresFlushToResumeDecoding:0];
  [(AVSampleBufferVideoRenderer *)self _refreshAboveHighWaterLevelAndAlwaysStartRequestMediaDataIfRequesting:0];
  [(AVSampleBufferVideoRenderer *)self resetUpcomingSampleBufferPresentationTimeExpectations];
  _Block_object_dispose(&v29, 8);
}

__n128 __82__AVSampleBufferVideoRenderer_flushWithRemovalOfDisplayedImage_completionHandler___block_invoke(uint64_t a1)
{
  v1 = *(a1 + 32);
  result = *MEMORY[0x1E695F058];
  v3 = *(MEMORY[0x1E695F058] + 16);
  *(v1 + 64) = *MEMORY[0x1E695F058];
  *(v1 + 80) = v3;
  return result;
}

void __82__AVSampleBufferVideoRenderer_flushWithRemovalOfDisplayedImage_completionHandler___block_invoke_2(uint64_t a1)
{
  v2 = [*(a1 + 40) copy];
  [*(*(a1 + 32) + 232) addObject:v2];
}

uint64_t __82__AVSampleBufferVideoRenderer_flushWithRemovalOfDisplayedImage_completionHandler___block_invoke_3(uint64_t a1)
{
  v11 = *MEMORY[0x1E69E9840];
  v6 = 0u;
  v7 = 0u;
  v8 = 0u;
  v9 = 0u;
  v1 = *(*(a1 + 32) + 208);
  result = [v1 countByEnumeratingWithState:&v6 objects:v10 count:16];
  if (result)
  {
    v3 = result;
    v4 = *v7;
    do
    {
      v5 = 0;
      do
      {
        if (*v7 != v4)
        {
          objc_enumerationMutation(v1);
        }

        [*(*(&v6 + 1) + 8 * v5++) _resetLastImageTime];
      }

      while (v3 != v5);
      result = [v1 countByEnumeratingWithState:&v6 objects:v10 count:16];
      v3 = result;
    }

    while (result);
  }

  return result;
}

uint64_t __82__AVSampleBufferVideoRenderer_flushWithRemovalOfDisplayedImage_completionHandler___block_invoke_4(uint64_t a1)
{
  v2 = *(a1 + 40);
  v3 = *(a1 + 48);
  v4 = *(*(CMBaseObjectGetVTable() + 16) + 40);
  if (v4)
  {
    result = v4(v2, v3);
  }

  else
  {
    result = 4294954514;
  }

  *(*(*(a1 + 32) + 8) + 24) = result;
  return result;
}

void __82__AVSampleBufferVideoRenderer_flushWithRemovalOfDisplayedImage_completionHandler___block_invoke_5(uint64_t a1)
{
  v2 = *(a1 + 32);
  v1 = *(a1 + 40);
  v3 = *(v2 + 8);
  *(v2 + 8) = v1;
  if (v1)
  {
    CFRetain(v1);
  }

  if (v3)
  {

    CFRelease(v3);
  }
}

uint64_t __82__AVSampleBufferVideoRenderer_flushWithRemovalOfDisplayedImage_completionHandler___block_invoke_6(uint64_t a1)
{
  v2 = *(a1 + 40);
  v3 = *(a1 + 48);
  v4 = *(*(CMBaseObjectGetVTable() + 16) + 40);
  if (v4)
  {
    result = v4(v2, v3);
  }

  else
  {
    result = 4294954514;
  }

  *(*(*(a1 + 32) + 8) + 24) = result;
  return result;
}

- (void)_flushComplete
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x3052000000;
  v9 = __Block_byref_object_copy__109;
  v10 = __Block_byref_object_dispose__110;
  v11 = 0;
  flushCallbackListQueue = self->_flushCallbackListQueue;
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __45__AVSampleBufferVideoRenderer__flushComplete__block_invoke;
  v5[3] = &unk_1E7460EE0;
  v5[4] = self;
  v5[5] = &v6;
  dispatch_sync(flushCallbackListQueue, v5);
  v4 = v7[5];
  if (v4)
  {
    dispatch_async(self->_flushCallbackQueue, v4);
  }

  _Block_object_dispose(&v6, 8);
}

uint64_t __45__AVSampleBufferVideoRenderer__flushComplete__block_invoke(uint64_t a1)
{
  result = [*(*(a1 + 32) + 232) count];
  if (result)
  {
    result = [*(*(a1 + 32) + 232) objectAtIndex:0];
    *(*(*(a1 + 40) + 8) + 40) = result;
    v3 = *(*(*(a1 + 40) + 8) + 40);
    if (v3)
    {
      v4 = v3;
      v5 = *(*(a1 + 32) + 232);

      return [v5 removeObjectAtIndex:0];
    }
  }

  return result;
}

- (void)_callOldPrerollCompletionHandlerWithSuccess:(BOOL)success andSetNewPrerollCompletionHandler:(id)handler forRequestID:(int)d
{
  v13 = 0;
  v14 = &v13;
  v15 = 0x3052000000;
  v16 = __Block_byref_object_copy__109;
  v17 = __Block_byref_object_dispose__110;
  v18 = 0;
  queueForProtectingPrerollCompleteCallback = self->_queueForProtectingPrerollCompleteCallback;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __122__AVSampleBufferVideoRenderer__callOldPrerollCompletionHandlerWithSuccess_andSetNewPrerollCompletionHandler_forRequestID___block_invoke;
  block[3] = &unk_1E7465858;
  block[5] = handler;
  block[6] = &v13;
  block[4] = self;
  dCopy = d;
  dispatch_sync(queueForProtectingPrerollCompleteCallback, block);
  if (v14[5])
  {
    queueForCallingPrerollCompleteCallback = self->_queueForCallingPrerollCompleteCallback;
    v9[0] = MEMORY[0x1E69E9820];
    v9[1] = 3221225472;
    v9[2] = __122__AVSampleBufferVideoRenderer__callOldPrerollCompletionHandlerWithSuccess_andSetNewPrerollCompletionHandler_forRequestID___block_invoke_2;
    v9[3] = &unk_1E7465880;
    v9[4] = &v13;
    successCopy = success;
    dispatch_async(queueForCallingPrerollCompleteCallback, v9);
  }

  _Block_object_dispose(&v13, 8);
}

void *__122__AVSampleBufferVideoRenderer__callOldPrerollCompletionHandlerWithSuccess_andSetNewPrerollCompletionHandler_forRequestID___block_invoke(uint64_t a1)
{
  v2 = *(*(a1 + 32) + 248);
  if (v2)
  {
    *(*(*(a1 + 48) + 8) + 40) = v2;
    *(*(a1 + 32) + 248) = 0;
    *(*(a1 + 32) + 256) = 0;
  }

  result = *(a1 + 40);
  if (result)
  {
    result = _Block_copy(result);
    *(*(a1 + 32) + 248) = result;
    *(*(a1 + 32) + 256) = *(a1 + 56);
  }

  return result;
}

void __122__AVSampleBufferVideoRenderer__callOldPrerollCompletionHandlerWithSuccess_andSetNewPrerollCompletionHandler_forRequestID___block_invoke_2(uint64_t a1)
{
  (*(*(*(*(a1 + 32) + 8) + 40) + 16))();
  v2 = *(*(*(a1 + 32) + 8) + 40);

  _Block_release(v2);
}

- (void)_completedDecodeForPrerollForRequestID:(int)d
{
  v9 = 0;
  v10 = &v9;
  v11 = 0x3052000000;
  v12 = __Block_byref_object_copy__109;
  v13 = __Block_byref_object_dispose__110;
  v14 = 0;
  queueForProtectingPrerollCompleteCallback = self->_queueForProtectingPrerollCompleteCallback;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __70__AVSampleBufferVideoRenderer__completedDecodeForPrerollForRequestID___block_invoke;
  block[3] = &unk_1E7462C08;
  dCopy = d;
  block[4] = self;
  block[5] = &v9;
  dispatch_sync(queueForProtectingPrerollCompleteCallback, block);
  if (v10[5])
  {
    queueForCallingPrerollCompleteCallback = self->_queueForCallingPrerollCompleteCallback;
    v6[0] = MEMORY[0x1E69E9820];
    v6[1] = 3221225472;
    v6[2] = __70__AVSampleBufferVideoRenderer__completedDecodeForPrerollForRequestID___block_invoke_2;
    v6[3] = &unk_1E7462C30;
    v6[4] = &v9;
    dispatch_async(queueForCallingPrerollCompleteCallback, v6);
  }

  _Block_object_dispose(&v9, 8);
}

uint64_t __70__AVSampleBufferVideoRenderer__completedDecodeForPrerollForRequestID___block_invoke(uint64_t result)
{
  v1 = *(result + 32);
  v2 = *(v1 + 248);
  if (v2)
  {
    if (*(result + 48) == *(v1 + 256))
    {
      *(*(*(result + 40) + 8) + 40) = v2;
      *(*(result + 32) + 248) = 0;
    }
  }

  return result;
}

void __70__AVSampleBufferVideoRenderer__completedDecodeForPrerollForRequestID___block_invoke_2(uint64_t a1)
{
  (*(*(*(*(a1 + 32) + 8) + 40) + 16))();
  v2 = *(*(*(a1 + 32) + 8) + 40);

  _Block_release(v2);
}

- (void)prerollDecodeWithCompletionHandler:(id)handler
{
  v20 = *MEMORY[0x1E69E9840];
  v16 = 0;
  v17 = &v16;
  v18 = 0x2020000000;
  v19 = 0;
  v5 = FigAtomicIncrement32();
  [(AVSampleBufferVideoRenderer *)self _callOldPrerollCompletionHandlerWithSuccess:0 andSetNewPrerollCompletionHandler:handler forRequestID:v5];
  _copyVideoQueue = [(AVSampleBufferVideoRenderer *)self _copyVideoQueue];
  if (!_copyVideoQueue)
  {
    goto LABEL_5;
  }

  if (dword_1EAEFCE70)
  {
    v15 = 0;
    type = OS_LOG_TYPE_DEFAULT;
    os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
    fig_log_call_emit_and_clean_up_after_send_and_compose();
  }

  videoQueueQueue = self->_videoQueueQueue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __66__AVSampleBufferVideoRenderer_prerollDecodeWithCompletionHandler___block_invoke;
  block[3] = &unk_1E7465830;
  block[4] = &v16;
  block[5] = _copyVideoQueue;
  v13 = v5;
  dispatch_sync(videoQueueQueue, block);
  v9 = *(v17 + 6);
  CFRelease(_copyVideoQueue);
  if (v9)
  {
LABEL_5:
    [(AVSampleBufferVideoRenderer *)self _callOldPrerollCompletionHandlerWithSuccess:0 andSetNewPrerollCompletionHandler:0 forRequestID:0, v10, v11];
  }

  _Block_object_dispose(&v16, 8);
}

uint64_t __66__AVSampleBufferVideoRenderer_prerollDecodeWithCompletionHandler___block_invoke(uint64_t a1)
{
  v2 = *(a1 + 40);
  v3 = [MEMORY[0x1E696AD98] numberWithInt:*(a1 + 48)];
  v4 = *(*(CMBaseObjectGetVTable() + 16) + 64);
  if (v4)
  {
    result = v4(v2, v3);
  }

  else
  {
    result = 4294954514;
  }

  *(*(*(a1 + 32) + 8) + 24) = result;
  return result;
}

- (void)requestMediaDataWhenReadyOnQueue:(id)queue usingBlock:(id)block
{
  if (!queue)
  {
    v13 = MEMORY[0x1E695DF30];
    v14 = *MEMORY[0x1E695D940];
    v15 = "queue != NULL";
    goto LABEL_6;
  }

  if (!block)
  {
    v13 = MEMORY[0x1E695DF30];
    v14 = *MEMORY[0x1E695D940];
    v15 = "block != nil";
LABEL_6:
    v16 = [v13 exceptionWithName:v14 reason:AVMethodExceptionReasonWithObjectAndSelector(self userInfo:{a2, @"invalid parameter not satisfying: %s", block, v4, v5, v6, v7, v15), 0}];
    objc_exception_throw(v16);
  }

  [(AVSampleBufferVideoRenderer *)self stopRequestingMediaData];
  v11 = [[AVMediaDataRequester alloc] initWithMediaDataConsumer:self requestQueue:queue requestBlock:block];
  serialQueue = self->_serialQueue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __75__AVSampleBufferVideoRenderer_requestMediaDataWhenReadyOnQueue_usingBlock___block_invoke;
  block[3] = &unk_1E7460DF0;
  block[4] = self;
  block[5] = v11;
  dispatch_sync(serialQueue, block);
  [(AVMediaDataRequester *)v11 startRequestingMediaData];
}

id __75__AVSampleBufferVideoRenderer_requestMediaDataWhenReadyOnQueue_usingBlock___block_invoke(uint64_t a1)
{
  *(*(a1 + 32) + 110) = 1;
  result = *(a1 + 40);
  *(*(a1 + 32) + 112) = result;
  return result;
}

- (void)stopRequestingMediaData
{
  v4 = 0;
  v5 = &v4;
  v6 = 0x3052000000;
  v7 = __Block_byref_object_copy__33;
  v8 = __Block_byref_object_dispose__33;
  v9 = 0;
  serialQueue = self->_serialQueue;
  v3[0] = MEMORY[0x1E69E9820];
  v3[1] = 3221225472;
  v3[2] = __54__AVSampleBufferVideoRenderer_stopRequestingMediaData__block_invoke;
  v3[3] = &unk_1E7460EE0;
  v3[4] = self;
  v3[5] = &v4;
  dispatch_sync(serialQueue, v3);
  [v5[5] invalidate];

  _Block_object_dispose(&v4, 8);
}

uint64_t __54__AVSampleBufferVideoRenderer_stopRequestingMediaData__block_invoke(uint64_t result)
{
  v1 = *(result + 32);
  if (*(v1 + 110) == 1)
  {
    *(v1 + 110) = 0;
    *(*(*(result + 40) + 8) + 40) = *(*(result + 32) + 112);
    *(*(result + 32) + 112) = 0;
  }

  return result;
}

- (BOOL)hasSufficientMediaDataForReliablePlaybackStart
{
  selfCopy = self;
  v6 = 0;
  v7 = &v6;
  v8 = 0x2020000000;
  v9 = ![(AVSampleBufferVideoRenderer *)self isReadyForMoreMediaData];
  serialQueue = selfCopy->_serialQueue;
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __77__AVSampleBufferVideoRenderer_hasSufficientMediaDataForReliablePlaybackStart__block_invoke;
  v5[3] = &unk_1E7460EE0;
  v5[4] = selfCopy;
  v5[5] = &v6;
  dispatch_sync(serialQueue, v5);
  LOBYTE(selfCopy) = *(v7 + 24);
  _Block_object_dispose(&v6, 8);
  return selfCopy;
}

const __CFArray *__77__AVSampleBufferVideoRenderer_hasSufficientMediaDataForReliablePlaybackStart__block_invoke(const __CFArray *result)
{
  v1 = *(result + 4);
  if ((*(v1 + 48) & 1) == 0)
  {
    v2 = result;
    result = *(v1 + 56);
    if (!result || (result = CFArrayGetCount(result)) == 0)
    {
      *(*(*(v2 + 5) + 8) + 24) = 0;
    }
  }

  return result;
}

- (BOOL)requiresFlushToResumeDecoding
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x2020000000;
  v9 = 0;
  serialQueue = self->_serialQueue;
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __60__AVSampleBufferVideoRenderer_requiresFlushToResumeDecoding__block_invoke;
  v5[3] = &unk_1E7460E68;
  v5[4] = self;
  v5[5] = &v6;
  dispatch_sync(serialQueue, v5);
  v3 = *(v7 + 24);
  _Block_object_dispose(&v6, 8);
  return v3;
}

- (void)addSampleBufferDisplayLayer:(id)layer
{
  if ([(AVSampleBufferVideoRenderer *)self _hasEverEnqueued]&& ![(AVSampleBufferVideoRenderer *)self shouldWaitForVideoTarget])
  {
    v19 = [MEMORY[0x1E695DF30] exceptionWithName:*MEMORY[0x1E695D940] reason:AVMethodExceptionReasonWithObjectAndSelector(self userInfo:{a2, @"Cannot add AVSampleBufferDisplayLayer while enqueueing sample buffers.", v6, v7, v8, v9, v10, v20), 0}];
    objc_exception_throw(v19);
  }

  v22 = 0;
  v23 = &v22;
  v24 = 0x2020000000;
  v25 = 0;
  serialQueue = self->_serialQueue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __59__AVSampleBufferVideoRenderer_addSampleBufferDisplayLayer___block_invoke;
  block[3] = &unk_1E74658A8;
  block[5] = layer;
  block[6] = &v22;
  block[4] = self;
  dispatch_sync(serialQueue, block);
  if (*(v23 + 24) == 1)
  {
    v18 = [MEMORY[0x1E695DF30] exceptionWithName:*MEMORY[0x1E695D940] reason:AVMethodExceptionReasonWithObjectAndSelector(self userInfo:{a2, @"An AVSampleBufferDisplayLayer is already attached to the AVSampleBufferVideoRenderer.  Only 1 is allowed at a time.", v12, v13, v14, v15, v16, v20), 0}];
    objc_exception_throw(v18);
  }

  _copyVideoQueue = [(AVSampleBufferVideoRenderer *)self _copyVideoQueue];
  if (_copyVideoQueue)
  {
    [(AVSampleBufferVideoRenderer *)self _setContentLayerOnFigVideoQueue:_copyVideoQueue];
    CFRelease(_copyVideoQueue);
  }

  _Block_object_dispose(&v22, 8);
}

id *__59__AVSampleBufferVideoRenderer_addSampleBufferDisplayLayer___block_invoke(id *result)
{
  v1 = result;
  v2 = result[4];
  if (*(v2 + 48) == 1)
  {
    *(*(result[6] + 1) + 24) = 1;
  }

  else
  {
    result = objc_storeWeak(v2 + 5, result[5]);
    *(v1[4] + 48) = 1;
  }

  return result;
}

- (BOOL)shouldWaitForVideoTarget
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x2020000000;
  v9 = 0;
  serialQueue = self->_serialQueue;
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __55__AVSampleBufferVideoRenderer_shouldWaitForVideoTarget__block_invoke;
  v5[3] = &unk_1E7460E68;
  v5[4] = self;
  v5[5] = &v6;
  dispatch_sync(serialQueue, v5);
  v3 = *(v7 + 24);
  _Block_object_dispose(&v6, 8);
  return v3;
}

- (void)setShouldWaitForVideoTarget:(BOOL)target
{
  v14 = 0;
  v15 = &v14;
  v16 = 0x2020000000;
  v17 = 0;
  serialQueue = self->_serialQueue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __59__AVSampleBufferVideoRenderer_setShouldWaitForVideoTarget___block_invoke;
  block[3] = &unk_1E7462948;
  targetCopy = target;
  block[4] = self;
  block[5] = &v14;
  dispatch_sync(serialQueue, block);
  if (*(v15 + 24) == 1)
  {
    _copyVideoQueue = [(AVSampleBufferVideoRenderer *)self _copyVideoQueue];
    v10[0] = 0;
    v10[1] = v10;
    v10[2] = 0x2020000000;
    v11 = 0;
    if (_copyVideoQueue)
    {
      videoQueueQueue = self->_videoQueueQueue;
      v8[0] = MEMORY[0x1E69E9820];
      v8[1] = 3221225472;
      v8[2] = __59__AVSampleBufferVideoRenderer_setShouldWaitForVideoTarget___block_invoke_2;
      v8[3] = &unk_1E7465768;
      v8[4] = v10;
      v8[5] = _copyVideoQueue;
      targetCopy2 = target;
      dispatch_sync(videoQueueQueue, v8);
      CFRelease(_copyVideoQueue);
    }

    [(AVSampleBufferVideoRenderer *)self _refreshAboveHighWaterLevelAndAlwaysStartRequestMediaDataIfRequesting:1];
    _Block_object_dispose(v10, 8);
  }

  _Block_object_dispose(&v14, 8);
}

uint64_t __59__AVSampleBufferVideoRenderer_setShouldWaitForVideoTarget___block_invoke(uint64_t result)
{
  v1 = *(result + 32);
  v2 = *(result + 48);
  if (*(v1 + 108) != v2)
  {
    *(v1 + 108) = v2;
    *(*(*(result + 40) + 8) + 24) = 1;
  }

  return result;
}

uint64_t __59__AVSampleBufferVideoRenderer_setShouldWaitForVideoTarget___block_invoke_2(uint64_t a1)
{
  if (*(a1 + 48))
  {
    v2 = MEMORY[0x1E695E4D0];
  }

  else
  {
    v2 = MEMORY[0x1E695E4C0];
  }

  CMBaseObject = FigVideoQueueGetCMBaseObject();
  v4 = *(*(CMBaseObjectGetVTable() + 8) + 56);
  if (v4)
  {
    result = v4(CMBaseObject, *MEMORY[0x1E6973D50], *v2);
  }

  else
  {
    result = 4294954514;
  }

  *(*(*(a1 + 32) + 8) + 24) = result;
  return result;
}

- (void)_updateVideoTargetsOnVideoQueue
{
  _copyVideoQueue = [(AVSampleBufferVideoRenderer *)self _copyVideoQueue];
  if (_copyVideoQueue)
  {
    v4 = _copyVideoQueue;
    v11 = 0;
    v12 = &v11;
    v13 = 0x2020000000;
    v14 = 0;
    serialQueue = self->_serialQueue;
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __62__AVSampleBufferVideoRenderer__updateVideoTargetsOnVideoQueue__block_invoke;
    block[3] = &unk_1E7460E68;
    block[4] = self;
    block[5] = &v11;
    dispatch_sync(serialQueue, block);
    if (v12[3])
    {
      v8[0] = 0;
      v8[1] = v8;
      v8[2] = 0x2020000000;
      v9 = 0;
      videoQueueQueue = self->_videoQueueQueue;
      v7[0] = MEMORY[0x1E69E9820];
      v7[1] = 3221225472;
      v7[2] = __62__AVSampleBufferVideoRenderer__updateVideoTargetsOnVideoQueue__block_invoke_2;
      v7[3] = &unk_1E74630E0;
      v7[5] = &v11;
      v7[6] = v4;
      v7[4] = v8;
      dispatch_sync(videoQueueQueue, v7);
      CFRelease(v12[3]);
      _Block_object_dispose(v8, 8);
    }

    CFRelease(v4);
    _Block_object_dispose(&v11, 8);
  }
}

uint64_t __62__AVSampleBufferVideoRenderer__updateVideoTargetsOnVideoQueue__block_invoke(uint64_t a1)
{
  result = FigCFArrayCreateMutableCopy();
  *(*(*(a1 + 40) + 8) + 24) = result;
  return result;
}

uint64_t __62__AVSampleBufferVideoRenderer__updateVideoTargetsOnVideoQueue__block_invoke_2(uint64_t a1)
{
  v2 = *(*(*(a1 + 40) + 8) + 24);
  CMBaseObject = FigVideoQueueGetCMBaseObject();
  v4 = *(*(CMBaseObjectGetVTable() + 8) + 56);
  if (v4)
  {
    result = v4(CMBaseObject, *MEMORY[0x1E6973D68], v2);
  }

  else
  {
    result = 4294954514;
  }

  *(*(*(a1 + 32) + 8) + 24) = result;
  return result;
}

- (void)addVideoTarget:(OpaqueFigVideoTarget *)target
{
  if ([(AVSampleBufferVideoRenderer *)self _hasEverEnqueued]&& ![(AVSampleBufferVideoRenderer *)self shouldWaitForVideoTarget])
  {
    v18 = [MEMORY[0x1E695DF30] exceptionWithName:*MEMORY[0x1E695D940] reason:AVMethodExceptionReasonWithObjectAndSelector(self userInfo:{a2, @"Cannot add video target while enqueueing sample buffers.", v6, v7, v8, v9, v10, v19), 0}];
    objc_exception_throw(v18);
  }

  v21 = 0;
  v22 = &v21;
  v23 = 0x2020000000;
  v24 = 0;
  if (target)
  {
    serialQueue = self->_serialQueue;
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __46__AVSampleBufferVideoRenderer_addVideoTarget___block_invoke;
    block[3] = &unk_1E7462990;
    block[5] = &v21;
    block[6] = target;
    block[4] = self;
    dispatch_sync(serialQueue, block);
    if (*(v22 + 24) == 1)
    {
      v17 = [MEMORY[0x1E695DF30] exceptionWithName:*MEMORY[0x1E695D940] reason:AVMethodExceptionReasonWithObjectAndSelector(self userInfo:{a2, @"The FigVideoTarget is already attached to the AVSampleBufferVideoRenderer.", v12, v13, v14, v15, v16, v19), 0}];
      objc_exception_throw(v17);
    }

    [(AVSampleBufferVideoRenderer *)self _updateVideoTargetsOnVideoQueue];
  }

  [(AVSampleBufferVideoRenderer *)self _refreshAboveHighWaterLevelAndAlwaysStartRequestMediaDataIfRequesting:1];
  _Block_object_dispose(&v21, 8);
}

void __46__AVSampleBufferVideoRenderer_addVideoTarget___block_invoke(void *a1)
{
  v2 = 0;
  while (1)
  {
    Count = *(a1[4] + 56);
    if (Count)
    {
      Count = CFArrayGetCount(Count);
    }

    if (v2 >= Count)
    {
      break;
    }

    v4 = a1[6];
    ValueAtIndex = CFArrayGetValueAtIndex(*(a1[4] + 56), v2++);
    if (v4 == ValueAtIndex)
    {
      *(*(a1[5] + 8) + 24) = 1;
      break;
    }
  }

  if ((*(*(a1[5] + 8) + 24) & 1) == 0)
  {
    v6 = *(a1[4] + 56);
    v7 = a1[6];

    CFArrayAppendValue(v6, v7);
  }
}

- (int)_setContentLayerOnFigVideoQueue:(OpaqueFigVideoQueue *)queue
{
  if (!queue)
  {
    return 0;
  }

  v5 = objc_autoreleasePoolPush();
  WeakRetained = objc_loadWeakRetained(&self->_weakDisplayLayer);
  if (!WeakRetained)
  {
    objc_autoreleasePoolPop(v5);
    return 0;
  }

  v7 = WeakRetained;
  _contentLayer = [WeakRetained _contentLayer];
  if (_contentLayer)
  {
    v9 = _contentLayer;
    v14 = 0;
    v15 = &v14;
    v16 = 0x2020000000;
    v17 = 0;
    CFRetain(queue);
    v13[0] = MEMORY[0x1E69E9820];
    v13[1] = 3221225472;
    v13[2] = __63__AVSampleBufferVideoRenderer__setContentLayerOnFigVideoQueue___block_invoke;
    v13[3] = &unk_1E74658D0;
    v13[6] = &v14;
    v13[7] = queue;
    v13[4] = self;
    v13[5] = v9;
    AVSerializeOnQueueAsyncIfNecessary(MEMORY[0x1E69E96A0], v13);
    if ([MEMORY[0x1E696AF00] isMainThread])
    {
      v10 = *(v15 + 6);
    }

    else
    {
      v10 = 0;
    }

    _Block_object_dispose(&v14, 8);
  }

  else
  {
    v10 = 0;
  }

  objc_autoreleasePoolPop(v5);
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __63__AVSampleBufferVideoRenderer__setContentLayerOnFigVideoQueue___block_invoke_3;
  block[3] = &unk_1E7460C00;
  block[4] = v7;
  dispatch_async(MEMORY[0x1E69E96A0], block);
  return v10;
}

void __63__AVSampleBufferVideoRenderer__setContentLayerOnFigVideoQueue___block_invoke(uint64_t a1)
{
  v1 = *(*(a1 + 32) + 144);
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __63__AVSampleBufferVideoRenderer__setContentLayerOnFigVideoQueue___block_invoke_2;
  block[3] = &unk_1E7462A50;
  v4 = *(a1 + 56);
  v3 = *(a1 + 40);
  dispatch_sync(v1, block);
}

void __63__AVSampleBufferVideoRenderer__setContentLayerOnFigVideoQueue___block_invoke_2(void *a1)
{
  v2 = a1[4];
  CMBaseObject = FigVideoQueueGetCMBaseObject();
  v4 = *(*(CMBaseObjectGetVTable() + 8) + 56);
  if (v4)
  {
    v5 = v4(CMBaseObject, *MEMORY[0x1E6973D08], v2);
  }

  else
  {
    v5 = -12782;
  }

  v6 = a1[6];
  *(*(a1[5] + 8) + 24) = v5;

  CFRelease(v6);
}

void __63__AVSampleBufferVideoRenderer__setContentLayerOnFigVideoQueue___block_invoke_3(uint64_t a1)
{
  FigObjectRecordMethodCallsForObject();
  v2 = *(a1 + 32);
}

- (void)_didFinishSuspension:(id)suspension
{
  v13 = *MEMORY[0x1E69E9840];
  if (dword_1EAEFCE70)
  {
    v12 = 0;
    type = OS_LOG_TYPE_DEFAULT;
    os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
    fig_log_call_emit_and_clean_up_after_send_and_compose();
  }

  v5 = [(AVSampleBufferVideoRenderer *)self _copyVideoQueue:suspension];
  if (v5)
  {
    v6 = v5;
    videoQueueQueue = self->_videoQueueQueue;
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __52__AVSampleBufferVideoRenderer__didFinishSuspension___block_invoke;
    block[3] = &__block_descriptor_40_e5_v8__0l;
    block[4] = v6;
    dispatch_sync(videoQueueQueue, block);
    CFRelease(v6);
  }

  [(AVSampleBufferVideoRenderer *)self _setRequiresFlushToResumeDecoding:1];
  [(AVSampleBufferVideoRenderer *)self _setStatus:2 error:AVLocalizedError(@"AVFoundationErrorDomain", -11847, 0)];
}

uint64_t __52__AVSampleBufferVideoRenderer__didFinishSuspension___block_invoke()
{
  result = FigVideoQueueGetCMBaseObject();
  if (result)
  {
    v1 = result;
    VTable = CMBaseObjectGetVTable();
    v3 = *(VTable + 8);
    result = VTable + 8;
    v4 = *(v3 + 24);
    if (v4)
    {

      return v4(v1);
    }
  }

  return result;
}

- (NSString)description
{
  v14 = 0;
  v15 = &v14;
  v16 = 0x2020000000;
  v17 = 0;
  v10 = 0;
  v11 = &v10;
  v12 = 0x2020000000;
  v13 = 0;
  serialQueue = self->_serialQueue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __42__AVSampleBufferVideoRenderer_description__block_invoke;
  block[3] = &unk_1E74627B8;
  block[4] = self;
  block[5] = &v14;
  block[6] = &v10;
  dispatch_sync(serialQueue, block);
  v4 = MEMORY[0x1E696AEC0];
  v5 = objc_opt_class();
  v6 = NSStringFromClass(v5);
  v7 = [v4 stringWithFormat:@"<%@: %p, AVSBDLs = %d, FVTs = %d>", v6, self, *(v15 + 6), *(v11 + 6)];
  _Block_object_dispose(&v10, 8);
  _Block_object_dispose(&v14, 8);
  return v7;
}

const __CFArray *__42__AVSampleBufferVideoRenderer_description__block_invoke(void *a1)
{
  *(*(a1[5] + 8) + 24) = *(a1[4] + 48);
  result = *(a1[4] + 56);
  if (result)
  {
    result = CFArrayGetCount(result);
  }

  *(*(a1[6] + 8) + 24) = result;
  return result;
}

- (id)videoPerformanceMetrics
{
  v29 = *MEMORY[0x1E69E9840];
  v22 = 0;
  v23 = &v22;
  v24 = 0x3052000000;
  v25 = __Block_byref_object_copy__33;
  v26 = __Block_byref_object_dispose__33;
  v27 = 0;
  _copyVideoQueue = [(AVSampleBufferVideoRenderer *)self _copyVideoQueue];
  if (_copyVideoQueue)
  {
    videoQueueQueue = self->_videoQueueQueue;
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __86__AVSampleBufferVideoRenderer_VideoPerformanceMetricsPrivate__videoPerformanceMetrics__block_invoke;
    block[3] = &unk_1E7462AC0;
    block[4] = &v22;
    block[5] = _copyVideoQueue;
    dispatch_sync(videoQueueQueue, block);
    CFRelease(_copyVideoQueue);
  }

  v5 = [v23[5] objectForKey:*MEMORY[0x1E6973C40]];
  v19 = 0u;
  v20 = 0u;
  v17 = 0u;
  v18 = 0u;
  v6 = [v5 countByEnumeratingWithState:&v17 objects:v28 count:16];
  if (v6)
  {
    v7 = *v18;
    v8 = *MEMORY[0x1E6973C48];
LABEL_5:
    v9 = 0;
    while (1)
    {
      if (*v18 != v7)
      {
        objc_enumerationMutation(v5);
      }

      v10 = *(*(&v17 + 1) + 8 * v9);
      v11 = [v10 objectForKey:v8];
      if (v11)
      {
        if (![v11 intValue])
        {
          break;
        }
      }

      if (v6 == ++v9)
      {
        v6 = [v5 countByEnumeratingWithState:&v17 objects:v28 count:16];
        if (v6)
        {
          goto LABEL_5;
        }

        goto LABEL_12;
      }
    }
  }

  else
  {
LABEL_12:
    v10 = 0;
  }

  v12 = [v23[5] mutableCopy];
  v13 = v12;
  if (v10)
  {
    [v12 addEntriesFromDictionary:v10];
  }

  v14 = [[AVVideoPerformanceMetrics alloc] initWithDictionary:v13];

  v15 = v14;
  _Block_object_dispose(&v22, 8);
  return v15;
}

uint64_t __86__AVSampleBufferVideoRenderer_VideoPerformanceMetricsPrivate__videoPerformanceMetrics__block_invoke(uint64_t a1)
{
  v1 = *(*(a1 + 32) + 8);
  CMBaseObject = FigVideoQueueGetCMBaseObject();
  VTable = CMBaseObjectGetVTable();
  v5 = *(VTable + 8);
  result = VTable + 8;
  v6 = *(v5 + 48);
  if (v6)
  {
    v7 = *MEMORY[0x1E6973D28];
    v8 = *MEMORY[0x1E695E480];

    return v6(CMBaseObject, v7, v8, v1 + 40);
  }

  return result;
}

- (void)loadVideoPerformanceMetricsWithCompletionHandler:(id)handler
{
  videoPerformanceMetricsQueue = self->_videoPerformanceMetricsQueue;
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = __132__AVSampleBufferVideoRenderer_AVSampleBufferVideoRendererVideoPerformanceMetrics__loadVideoPerformanceMetricsWithCompletionHandler___block_invoke;
  v4[3] = &unk_1E7462650;
  v4[4] = self;
  v4[5] = handler;
  dispatch_async(videoPerformanceMetricsQueue, v4);
}

uint64_t __132__AVSampleBufferVideoRenderer_AVSampleBufferVideoRendererVideoPerformanceMetrics__loadVideoPerformanceMetricsWithCompletionHandler___block_invoke(uint64_t a1)
{
  v1 = *(a1 + 40);
  v2 = [*(a1 + 32) videoPerformanceMetrics];
  v3 = *(v1 + 16);

  return v3(v1, v2);
}

- (BOOL)outputObscuredDueToInsufficientExternalProtection
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x2020000000;
  v9 = 0;
  serialQueue = self->_serialQueue;
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __125__AVSampleBufferVideoRenderer_AVSampleBufferVideoRendererProtectedContent__outputObscuredDueToInsufficientExternalProtection__block_invoke;
  v5[3] = &unk_1E7460E68;
  v5[4] = self;
  v5[5] = &v6;
  dispatch_sync(serialQueue, v5);
  v3 = *(v7 + 24);
  _Block_object_dispose(&v6, 8);
  return v3;
}

- (void)setPreventsCapture:(BOOL)capture
{
  _copyVideoQueue = [(AVSampleBufferVideoRenderer *)self _copyVideoQueue];
  v10[0] = 0;
  v10[1] = v10;
  v10[2] = 0x2020000000;
  v11 = 0;
  if (_copyVideoQueue)
  {
    v6 = _copyVideoQueue;
    videoQueueQueue = self->_videoQueueQueue;
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __94__AVSampleBufferVideoRenderer_AVSampleBufferVideoRendererImageProtection__setPreventsCapture___block_invoke;
    block[3] = &unk_1E7465768;
    block[4] = v10;
    block[5] = v6;
    captureCopy = capture;
    dispatch_sync(videoQueueQueue, block);
    CFRelease(v6);
  }

  _Block_object_dispose(v10, 8);
}

uint64_t __94__AVSampleBufferVideoRenderer_AVSampleBufferVideoRendererImageProtection__setPreventsCapture___block_invoke(uint64_t a1)
{
  if (*(a1 + 48))
  {
    v2 = MEMORY[0x1E695E4D0];
  }

  else
  {
    v2 = MEMORY[0x1E695E4C0];
  }

  CMBaseObject = FigVideoQueueGetCMBaseObject();
  v4 = *(*(CMBaseObjectGetVTable() + 8) + 56);
  if (v4)
  {
    result = v4(CMBaseObject, *MEMORY[0x1E6973D48], *v2);
  }

  else
  {
    result = 4294954514;
  }

  *(*(*(a1 + 32) + 8) + 24) = result;
  return result;
}

- (BOOL)preventsCapture
{
  v13[0] = 0;
  v13[1] = v13;
  v13[2] = 0x2020000000;
  v14 = 0;
  v9 = 0;
  v10 = &v9;
  v11 = 0x2020000000;
  v12 = 0;
  _copyVideoQueue = [(AVSampleBufferVideoRenderer *)self _copyVideoQueue];
  if (_copyVideoQueue)
  {
    videoQueueQueue = self->_videoQueueQueue;
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __90__AVSampleBufferVideoRenderer_AVSampleBufferVideoRendererImageProtection__preventsCapture__block_invoke;
    block[3] = &unk_1E74630E0;
    block[4] = v13;
    block[5] = &v9;
    block[6] = _copyVideoQueue;
    dispatch_sync(videoQueueQueue, block);
    CFRelease(_copyVideoQueue);
  }

  v5 = v10[3];
  if (v5)
  {
    CFRelease(v10[3]);
  }

  v6 = *MEMORY[0x1E695E4D0] == v5;
  _Block_object_dispose(&v9, 8);
  _Block_object_dispose(v13, 8);
  return v6;
}

uint64_t __90__AVSampleBufferVideoRenderer_AVSampleBufferVideoRendererImageProtection__preventsCapture__block_invoke(uint64_t a1)
{
  v2 = *(*(a1 + 40) + 8);
  CMBaseObject = FigVideoQueueGetCMBaseObject();
  v4 = *(*(CMBaseObjectGetVTable() + 8) + 48);
  if (v4)
  {
    result = v4(CMBaseObject, *MEMORY[0x1E6973D48], *MEMORY[0x1E695E480], v2 + 24);
  }

  else
  {
    result = 4294954514;
  }

  *(*(*(a1 + 32) + 8) + 24) = result;
  return result;
}

- (void)setPreventsDisplaySleepDuringVideoPlayback:(BOOL)playback
{
  v15 = 0;
  v16 = &v15;
  v17 = 0x2020000000;
  v18 = 0;
  serialQueue = self->_serialQueue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __130__AVSampleBufferVideoRenderer_AVSampleBufferVideoRendererVideoDisplaySleepPrevention__setPreventsDisplaySleepDuringVideoPlayback___block_invoke;
  block[3] = &unk_1E7462948;
  playbackCopy = playback;
  block[4] = self;
  block[5] = &v15;
  dispatch_sync(serialQueue, block);
  if (*(v16 + 24) == 1)
  {
    _copyVideoQueue = [(AVSampleBufferVideoRenderer *)self _copyVideoQueue];
    v11[0] = 0;
    v11[1] = v11;
    v11[2] = 0x2020000000;
    v12 = 0;
    if (_copyVideoQueue)
    {
      videoQueueQueue = self->_videoQueueQueue;
      v8[0] = MEMORY[0x1E69E9820];
      v8[1] = 3221225472;
      v8[2] = __130__AVSampleBufferVideoRenderer_AVSampleBufferVideoRendererVideoDisplaySleepPrevention__setPreventsDisplaySleepDuringVideoPlayback___block_invoke_2;
      v8[3] = &unk_1E74658F8;
      v8[4] = v11;
      v8[5] = _copyVideoQueue;
      playbackCopy2 = playback;
      v10 = 0;
      dispatch_sync(videoQueueQueue, v8);
      CFRelease(_copyVideoQueue);
    }

    _Block_object_dispose(v11, 8);
  }

  _Block_object_dispose(&v15, 8);
}

uint64_t __130__AVSampleBufferVideoRenderer_AVSampleBufferVideoRendererVideoDisplaySleepPrevention__setPreventsDisplaySleepDuringVideoPlayback___block_invoke(uint64_t result)
{
  v1 = *(result + 32);
  v2 = *(result + 48);
  if (*(v1 + 104) != v2)
  {
    *(v1 + 104) = v2;
    *(*(*(result + 40) + 8) + 24) = 1;
  }

  return result;
}

uint64_t __130__AVSampleBufferVideoRenderer_AVSampleBufferVideoRendererVideoDisplaySleepPrevention__setPreventsDisplaySleepDuringVideoPlayback___block_invoke_2(uint64_t a1)
{
  v2 = *MEMORY[0x1E695E4D0];
  v3 = *MEMORY[0x1E695E4C0];
  if (*(a1 + 48))
  {
    v4 = *MEMORY[0x1E695E4D0];
  }

  else
  {
    v4 = *MEMORY[0x1E695E4C0];
  }

  CMBaseObject = FigVideoQueueGetCMBaseObject();
  v6 = *(*(CMBaseObjectGetVTable() + 8) + 56);
  if (v6)
  {
    result = v6(CMBaseObject, *MEMORY[0x1E6973D40], v4);
  }

  else
  {
    result = 4294954514;
  }

  *(*(*(a1 + 32) + 8) + 24) = result;
  if (*(a1 + 49) == 1)
  {
    if (*(a1 + 48))
    {
      v8 = v2;
    }

    else
    {
      v8 = v3;
    }

    v9 = FigVideoQueueGetCMBaseObject();
    v10 = *(*(CMBaseObjectGetVTable() + 8) + 56);
    if (v10)
    {
      result = v10(v9, *MEMORY[0x1E6973D38], v8);
    }

    else
    {
      result = 4294954514;
    }

    *(*(*(a1 + 32) + 8) + 24) = result;
  }

  return result;
}

- (BOOL)preventsDisplaySleepDuringVideoPlayback
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x2020000000;
  v9 = 0;
  serialQueue = self->_serialQueue;
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __126__AVSampleBufferVideoRenderer_AVSampleBufferVideoRendererVideoDisplaySleepPrevention__preventsDisplaySleepDuringVideoPlayback__block_invoke;
  v5[3] = &unk_1E7460E68;
  v5[4] = self;
  v5[5] = &v6;
  dispatch_sync(serialQueue, v5);
  v3 = *(v7 + 24);
  _Block_object_dispose(&v6, 8);
  return v3;
}

- (void)setPreventsAutomaticBackgroundingDuringVideoPlayback:(BOOL)playback
{
  v18 = [[AVTelemetryInterval alloc] initAndStartWith:64];
  v14 = 0;
  v15 = &v14;
  v16 = 0x2020000000;
  v17 = 0;
  serialQueue = self->_serialQueue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __142__AVSampleBufferVideoRenderer_AVSampleBufferVideoRendererAutomaticBackgroundPrevention__setPreventsAutomaticBackgroundingDuringVideoPlayback___block_invoke;
  block[3] = &unk_1E7462948;
  playbackCopy = playback;
  block[4] = self;
  block[5] = &v14;
  dispatch_sync(serialQueue, block);
  if (*(v15 + 24) == 1)
  {
    _copyVideoQueue = [(AVSampleBufferVideoRenderer *)self _copyVideoQueue];
    v10[0] = 0;
    v10[1] = v10;
    v10[2] = 0x2020000000;
    v11 = 0;
    if (_copyVideoQueue)
    {
      videoQueueQueue = self->_videoQueueQueue;
      v8[0] = MEMORY[0x1E69E9820];
      v8[1] = 3221225472;
      v8[2] = __142__AVSampleBufferVideoRenderer_AVSampleBufferVideoRendererAutomaticBackgroundPrevention__setPreventsAutomaticBackgroundingDuringVideoPlayback___block_invoke_2;
      v8[3] = &unk_1E7465768;
      v8[4] = v10;
      v8[5] = _copyVideoQueue;
      playbackCopy2 = playback;
      dispatch_sync(videoQueueQueue, v8);
      CFRelease(_copyVideoQueue);
    }

    _Block_object_dispose(v10, 8);
  }

  _Block_object_dispose(&v14, 8);
  AVTelemetryIntervalEnd(&v18);
}

uint64_t __142__AVSampleBufferVideoRenderer_AVSampleBufferVideoRendererAutomaticBackgroundPrevention__setPreventsAutomaticBackgroundingDuringVideoPlayback___block_invoke(uint64_t result)
{
  v1 = *(result + 32);
  v2 = *(result + 48);
  if (*(v1 + 105) != v2)
  {
    *(v1 + 105) = v2;
    *(*(*(result + 40) + 8) + 24) = 1;
  }

  return result;
}

uint64_t __142__AVSampleBufferVideoRenderer_AVSampleBufferVideoRendererAutomaticBackgroundPrevention__setPreventsAutomaticBackgroundingDuringVideoPlayback___block_invoke_2(uint64_t a1)
{
  if (*(a1 + 48))
  {
    v2 = MEMORY[0x1E695E4D0];
  }

  else
  {
    v2 = MEMORY[0x1E695E4C0];
  }

  CMBaseObject = FigVideoQueueGetCMBaseObject();
  v4 = *(*(CMBaseObjectGetVTable() + 8) + 56);
  if (v4)
  {
    result = v4(CMBaseObject, *MEMORY[0x1E6973D38], *v2);
  }

  else
  {
    result = 4294954514;
  }

  *(*(*(a1 + 32) + 8) + 24) = result;
  return result;
}

- (BOOL)preventsAutomaticBackgroundingDuringVideoPlayback
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x2020000000;
  v9 = 0;
  serialQueue = self->_serialQueue;
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __138__AVSampleBufferVideoRenderer_AVSampleBufferVideoRendererAutomaticBackgroundPrevention__preventsAutomaticBackgroundingDuringVideoPlayback__block_invoke;
  v5[3] = &unk_1E7460E68;
  v5[4] = self;
  v5[5] = &v6;
  dispatch_sync(serialQueue, v5);
  v3 = *(v7 + 24);
  _Block_object_dispose(&v6, 8);
  return v3;
}

- (void)_setDisallowsVideoLayerDisplayCompositing:(BOOL)compositing
{
  v14 = 0;
  v15 = &v14;
  v16 = 0x2020000000;
  v17 = 0;
  serialQueue = self->_serialQueue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __120__AVSampleBufferVideoRenderer_AVSampleBufferVideoRendererDisplayCompositing___setDisallowsVideoLayerDisplayCompositing___block_invoke;
  block[3] = &unk_1E7462948;
  compositingCopy = compositing;
  block[4] = self;
  block[5] = &v14;
  dispatch_sync(serialQueue, block);
  if (*(v15 + 24) == 1)
  {
    _copyVideoQueue = [(AVSampleBufferVideoRenderer *)self _copyVideoQueue];
    v10[0] = 0;
    v10[1] = v10;
    v10[2] = 0x2020000000;
    v11 = 0;
    if (_copyVideoQueue)
    {
      videoQueueQueue = self->_videoQueueQueue;
      v8[0] = MEMORY[0x1E69E9820];
      v8[1] = 3221225472;
      v8[2] = __120__AVSampleBufferVideoRenderer_AVSampleBufferVideoRendererDisplayCompositing___setDisallowsVideoLayerDisplayCompositing___block_invoke_2;
      v8[3] = &unk_1E7465768;
      v8[4] = v10;
      v8[5] = _copyVideoQueue;
      compositingCopy2 = compositing;
      dispatch_sync(videoQueueQueue, v8);
      CFRelease(_copyVideoQueue);
    }

    _Block_object_dispose(v10, 8);
  }

  _Block_object_dispose(&v14, 8);
}

uint64_t __120__AVSampleBufferVideoRenderer_AVSampleBufferVideoRendererDisplayCompositing___setDisallowsVideoLayerDisplayCompositing___block_invoke(uint64_t result)
{
  v1 = *(result + 32);
  v2 = *(result + 48);
  if (*(v1 + 107) != v2)
  {
    *(v1 + 107) = v2;
    *(*(*(result + 40) + 8) + 24) = 1;
  }

  return result;
}

uint64_t __120__AVSampleBufferVideoRenderer_AVSampleBufferVideoRendererDisplayCompositing___setDisallowsVideoLayerDisplayCompositing___block_invoke_2(uint64_t a1)
{
  if (*(a1 + 48))
  {
    v2 = MEMORY[0x1E695E4D0];
  }

  else
  {
    v2 = MEMORY[0x1E695E4C0];
  }

  CMBaseObject = FigVideoQueueGetCMBaseObject();
  v4 = *(*(CMBaseObjectGetVTable() + 8) + 56);
  if (v4)
  {
    result = v4(CMBaseObject, *MEMORY[0x1E6973D00], *v2);
  }

  else
  {
    result = 4294954514;
  }

  *(*(*(a1 + 32) + 8) + 24) = result;
  return result;
}

- (BOOL)_disallowsVideoLayerDisplayCompositing
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x2020000000;
  v9 = 0;
  serialQueue = self->_serialQueue;
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __116__AVSampleBufferVideoRenderer_AVSampleBufferVideoRendererDisplayCompositing___disallowsVideoLayerDisplayCompositing__block_invoke;
  v5[3] = &unk_1E7460E68;
  v5[4] = self;
  v5[5] = &v6;
  dispatch_sync(serialQueue, v5);
  v3 = *(v7 + 24);
  _Block_object_dispose(&v6, 8);
  return v3;
}

- (BOOL)_setUpcomingPresentationTimeExpectations:(int)expectations minimumPresentationTime:(id *)time
{
  v10 = 0;
  v11 = &v10;
  v12 = 0x2020000000;
  v13 = 0;
  serialQueue = self->_serialQueue;
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __115__AVSampleBufferVideoRenderer_PowerOptimization___setUpcomingPresentationTimeExpectations_minimumPresentationTime___block_invoke;
  v7[3] = &unk_1E7465920;
  expectationsCopy = expectations;
  v7[4] = self;
  v7[5] = &v10;
  v9 = *time;
  dispatch_sync(serialQueue, v7);
  v5 = *(v11 + 24);
  _Block_object_dispose(&v10, 8);
  return v5;
}

__n128 __115__AVSampleBufferVideoRenderer_PowerOptimization___setUpcomingPresentationTimeExpectations_minimumPresentationTime___block_invoke(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = *(a1 + 48);
  if (*(v1 + 272) != v2)
  {
    *(v1 + 272) = v2;
    *(*(*(a1 + 40) + 8) + 24) = 1;
  }

  if ((*(a1 + 64) & 0x1D) == 1)
  {
    v3 = (*(a1 + 32) + 276);
    result = *(a1 + 52);
    v3[1].n128_u64[0] = *(a1 + 68);
    *v3 = result;
    *(*(*(a1 + 40) + 8) + 24) = 1;
  }

  return result;
}

- (void)expectMinimumUpcomingSampleBufferPresentationTime:(id *)time
{
  v12 = [[AVTelemetryInterval alloc] initAndStartWith:60];
  if ((time->var2 & 0x1D) == 1)
  {
    v9 = *&time->var0;
    var3 = time->var3;
    if ([(AVSampleBufferVideoRenderer *)self _setUpcomingPresentationTimeExpectations:3 minimumPresentationTime:&v9])
    {
      Mutable = CFDictionaryCreateMutable(*MEMORY[0x1E695E480], 2, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
      CFDictionarySetValue(Mutable, *MEMORY[0x1E6973D80], *MEMORY[0x1E695E4D0]);
      v9 = *&time->var0;
      var3 = time->var3;
      FigCFDictionarySetCMTime();
      *&v9 = 0;
      *(&v9 + 1) = &v9;
      var3 = 0x2020000000;
      v11 = 0;
      _copyVideoQueue = [(AVSampleBufferVideoRenderer *)self _copyVideoQueue];
      if (_copyVideoQueue)
      {
        videoQueueQueue = self->_videoQueueQueue;
        block[0] = MEMORY[0x1E69E9820];
        block[1] = 3221225472;
        block[2] = __100__AVSampleBufferVideoRenderer_PowerOptimization__expectMinimumUpcomingSampleBufferPresentationTime___block_invoke;
        block[3] = &unk_1E7462BD8;
        block[4] = &v9;
        block[5] = _copyVideoQueue;
        block[6] = Mutable;
        dispatch_sync(videoQueueQueue, block);
        CFRelease(_copyVideoQueue);
      }

      if (Mutable)
      {
        CFRelease(Mutable);
      }

      _Block_object_dispose(&v9, 8);
    }
  }

  AVTelemetryIntervalEnd(&v12);
}

uint64_t __100__AVSampleBufferVideoRenderer_PowerOptimization__expectMinimumUpcomingSampleBufferPresentationTime___block_invoke(uint64_t a1)
{
  v2 = *(a1 + 48);
  CMBaseObject = FigVideoQueueGetCMBaseObject();
  v4 = *(*(CMBaseObjectGetVTable() + 8) + 56);
  if (v4)
  {
    result = v4(CMBaseObject, *MEMORY[0x1E6973D60], v2);
  }

  else
  {
    result = 4294954514;
  }

  *(*(*(a1 + 32) + 8) + 24) = result;
  return result;
}

- (void)expectMonotonicallyIncreasingUpcomingSampleBufferPresentationTimes
{
  v10 = [[AVTelemetryInterval alloc] initAndStartWith:61];
  v7 = *MEMORY[0x1E6960C70];
  v8 = *(MEMORY[0x1E6960C70] + 16);
  if ([(AVSampleBufferVideoRenderer *)self _setUpcomingPresentationTimeExpectations:2 minimumPresentationTime:&v7])
  {
    Mutable = CFDictionaryCreateMutable(*MEMORY[0x1E695E480], 1, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
    CFDictionarySetValue(Mutable, *MEMORY[0x1E6973D80], *MEMORY[0x1E695E4C0]);
    *&v7 = 0;
    *(&v7 + 1) = &v7;
    v8 = 0x2020000000;
    v9 = 0;
    _copyVideoQueue = [(AVSampleBufferVideoRenderer *)self _copyVideoQueue];
    if (_copyVideoQueue)
    {
      videoQueueQueue = self->_videoQueueQueue;
      block[0] = MEMORY[0x1E69E9820];
      block[1] = 3221225472;
      block[2] = __116__AVSampleBufferVideoRenderer_PowerOptimization__expectMonotonicallyIncreasingUpcomingSampleBufferPresentationTimes__block_invoke;
      block[3] = &unk_1E7462BD8;
      block[4] = &v7;
      block[5] = _copyVideoQueue;
      block[6] = Mutable;
      dispatch_sync(videoQueueQueue, block);
      CFRelease(_copyVideoQueue);
    }

    if (Mutable)
    {
      CFRelease(Mutable);
    }

    _Block_object_dispose(&v7, 8);
  }

  AVTelemetryIntervalEnd(&v10);
}

uint64_t __116__AVSampleBufferVideoRenderer_PowerOptimization__expectMonotonicallyIncreasingUpcomingSampleBufferPresentationTimes__block_invoke(uint64_t a1)
{
  v2 = *(a1 + 48);
  CMBaseObject = FigVideoQueueGetCMBaseObject();
  v4 = *(*(CMBaseObjectGetVTable() + 8) + 56);
  if (v4)
  {
    result = v4(CMBaseObject, *MEMORY[0x1E6973D60], v2);
  }

  else
  {
    result = 4294954514;
  }

  *(*(*(a1 + 32) + 8) + 24) = result;
  return result;
}

- (void)resetUpcomingSampleBufferPresentationTimeExpectations
{
  v12 = [[AVTelemetryInterval alloc] initAndStartWith:62];
  v7 = *MEMORY[0x1E6960C80];
  v9 = *MEMORY[0x1E6960C80];
  v3 = *(MEMORY[0x1E6960C80] + 16);
  v10 = v3;
  if ([(AVSampleBufferVideoRenderer *)self _setUpcomingPresentationTimeExpectations:1 minimumPresentationTime:&v9])
  {
    Mutable = CFDictionaryCreateMutable(*MEMORY[0x1E695E480], 2, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
    CFDictionarySetValue(Mutable, *MEMORY[0x1E6973D80], *MEMORY[0x1E695E4D0]);
    v9 = v7;
    v10 = v3;
    FigCFDictionarySetCMTime();
    *&v9 = 0;
    *(&v9 + 1) = &v9;
    v10 = 0x2020000000;
    v11 = 0;
    _copyVideoQueue = [(AVSampleBufferVideoRenderer *)self _copyVideoQueue];
    if (_copyVideoQueue)
    {
      videoQueueQueue = self->_videoQueueQueue;
      block[0] = MEMORY[0x1E69E9820];
      block[1] = 3221225472;
      block[2] = __103__AVSampleBufferVideoRenderer_PowerOptimization__resetUpcomingSampleBufferPresentationTimeExpectations__block_invoke;
      block[3] = &unk_1E7462BD8;
      block[4] = &v9;
      block[5] = _copyVideoQueue;
      block[6] = Mutable;
      dispatch_sync(videoQueueQueue, block);
      CFRelease(_copyVideoQueue);
    }

    if (Mutable)
    {
      CFRelease(Mutable);
    }

    _Block_object_dispose(&v9, 8);
  }

  AVTelemetryIntervalEnd(&v12);
}

uint64_t __103__AVSampleBufferVideoRenderer_PowerOptimization__resetUpcomingSampleBufferPresentationTimeExpectations__block_invoke(uint64_t a1)
{
  v2 = *(a1 + 48);
  CMBaseObject = FigVideoQueueGetCMBaseObject();
  v4 = *(*(CMBaseObjectGetVTable() + 8) + 56);
  if (v4)
  {
    result = v4(CMBaseObject, *MEMORY[0x1E6973D60], v2);
  }

  else
  {
    result = 4294954514;
  }

  *(*(*(a1 + 32) + 8) + 24) = result;
  return result;
}

- (id)recommendedPixelBufferAttributes
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x3052000000;
  v9 = __Block_byref_object_copy__33;
  v10 = __Block_byref_object_dispose__33;
  v11 = 0;
  serialQueue = self->_serialQueue;
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __82__AVSampleBufferVideoRenderer_PowerOptimization__recommendedPixelBufferAttributes__block_invoke;
  v5[3] = &unk_1E7460EE0;
  v5[4] = self;
  v5[5] = &v6;
  dispatch_sync(serialQueue, v5);
  v3 = v7[5];
  _Block_object_dispose(&v6, 8);
  return v3;
}

uint64_t __82__AVSampleBufferVideoRenderer_PowerOptimization__recommendedPixelBufferAttributes__block_invoke(uint64_t a1)
{
  v12[3] = *MEMORY[0x1E69E9840];
  if (*(*(a1 + 32) + 48) == 1)
  {
    v2 = *MEMORY[0x1E6966190];
    v11[0] = *MEMORY[0x1E69660D0];
    v11[1] = v2;
    v12[0] = MEMORY[0x1E695E118];
    v12[1] = MEMORY[0x1E695E118];
    v11[2] = *MEMORY[0x1E69660D8];
    v12[2] = MEMORY[0x1E695E0F8];
    v3 = MEMORY[0x1E695DF20];
    v4 = v12;
    v5 = v11;
    v6 = 3;
  }

  else
  {
    v7 = *MEMORY[0x1E6966100];
    v9[0] = *MEMORY[0x1E69660D8];
    v9[1] = v7;
    v10[0] = MEMORY[0x1E695E0F8];
    v10[1] = MEMORY[0x1E695E118];
    v3 = MEMORY[0x1E695DF20];
    v4 = v10;
    v5 = v9;
    v6 = 2;
  }

  result = [v3 dictionaryWithObjects:v4 forKeys:v5 count:v6];
  *(*(*(a1 + 40) + 8) + 40) = result;
  return result;
}

- (void)_updateVideoOutputs
{
  _copyVideoQueue = [(AVSampleBufferVideoRenderer *)self _copyVideoQueue];
  if (_copyVideoQueue)
  {
    v4 = _copyVideoQueue;
    serialQueue = self->_serialQueue;
    v6[0] = MEMORY[0x1E69E9820];
    v6[1] = 3221225472;
    v6[2] = __86__AVSampleBufferVideoRenderer_AVSampleBufferVideoRendererOutputs___updateVideoOutputs__block_invoke;
    v6[3] = &unk_1E7460FA8;
    v6[4] = self;
    v6[5] = v4;
    dispatch_sync(serialQueue, v6);
    CFRelease(v4);
  }
}

void __86__AVSampleBufferVideoRenderer_AVSampleBufferVideoRendererOutputs___updateVideoOutputs__block_invoke(uint64_t a1)
{
  v19 = *MEMORY[0x1E69E9840];
  v2 = [MEMORY[0x1E695DF70] array];
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v3 = *(*(a1 + 32) + 208);
  v4 = [v3 countByEnumeratingWithState:&v14 objects:v18 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v15;
    do
    {
      for (i = 0; i != v5; ++i)
      {
        if (*v15 != v6)
        {
          objc_enumerationMutation(v3);
        }

        v8 = [*(*(&v14 + 1) + 8 * i) _visualContext];
        if (v8)
        {
          [v2 addObject:v8];
        }
      }

      v5 = [v3 countByEnumeratingWithState:&v14 objects:v18 count:16];
    }

    while (v5);
  }

  v12[0] = 0;
  v12[1] = v12;
  v12[2] = 0x2020000000;
  v13 = 0;
  v9 = *(*(a1 + 32) + 144);
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __86__AVSampleBufferVideoRenderer_AVSampleBufferVideoRendererOutputs___updateVideoOutputs__block_invoke_2;
  block[3] = &unk_1E7462A50;
  v10 = *(a1 + 40);
  block[5] = v12;
  block[6] = v10;
  block[4] = v2;
  dispatch_sync(v9, block);
  _Block_object_dispose(v12, 8);
}

uint64_t __86__AVSampleBufferVideoRenderer_AVSampleBufferVideoRendererOutputs___updateVideoOutputs__block_invoke_2(uint64_t a1)
{
  v2 = *(a1 + 32);
  CMBaseObject = FigVideoQueueGetCMBaseObject();
  v4 = *(*(CMBaseObjectGetVTable() + 8) + 56);
  if (v4)
  {
    result = v4(CMBaseObject, *MEMORY[0x1E6973D70], v2);
  }

  else
  {
    result = 4294954514;
  }

  *(*(*(a1 + 40) + 8) + 24) = result;
  return result;
}

- (void)addOutput:(id)output
{
  v18 = [[AVTelemetryInterval alloc] initAndStartWith:65];
  v14 = 0;
  v15 = &v14;
  v16 = 0x2020000000;
  v17 = 0;
  if (output)
  {
    serialQueue = self->_serialQueue;
    v13[0] = MEMORY[0x1E69E9820];
    v13[1] = 3221225472;
    v13[2] = __77__AVSampleBufferVideoRenderer_AVSampleBufferVideoRendererOutputs__addOutput___block_invoke;
    v13[3] = &unk_1E7461068;
    v13[5] = output;
    v13[6] = &v14;
    v13[4] = self;
    dispatch_sync(serialQueue, v13);
    if (*(v15 + 24) == 1)
    {
      v12 = [MEMORY[0x1E695DF30] exceptionWithName:*MEMORY[0x1E695D940] reason:AVMethodExceptionReasonWithObjectAndSelector(self userInfo:{a2, @"The AVSampleBufferVideoOutput has already been added to the AVSampleBufferVideoRenderer.", v7, v8, v9, v10, v11, v13[0]), 0}];
      objc_exception_throw(v12);
    }

    [(AVSampleBufferVideoRenderer *)self _updateVideoOutputs];
  }

  _Block_object_dispose(&v14, 8);
  AVTelemetryIntervalEnd(&v18);
}

uint64_t __77__AVSampleBufferVideoRenderer_AVSampleBufferVideoRendererOutputs__addOutput___block_invoke(void *a1)
{
  result = [*(a1[4] + 208) containsObject:a1[5]];
  *(*(a1[6] + 8) + 24) = result;
  if ((*(*(a1[6] + 8) + 24) & 1) == 0)
  {
    v3 = a1[5];
    v4 = *(a1[4] + 208);

    return [v4 addObject:v3];
  }

  return result;
}

- (void)removeOutput:(id)output
{
  v18 = [[AVTelemetryInterval alloc] initAndStartWith:66];
  if (output)
  {
    v14 = 0;
    v15 = &v14;
    v16 = 0x2020000000;
    v17 = 0;
    serialQueue = self->_serialQueue;
    v13[0] = MEMORY[0x1E69E9820];
    v13[1] = 3221225472;
    v13[2] = __80__AVSampleBufferVideoRenderer_AVSampleBufferVideoRendererOutputs__removeOutput___block_invoke;
    v13[3] = &unk_1E7461068;
    v13[5] = output;
    v13[6] = &v14;
    v13[4] = self;
    dispatch_sync(serialQueue, v13);
    if ((v15[3] & 1) == 0)
    {
      v12 = [MEMORY[0x1E695DF30] exceptionWithName:*MEMORY[0x1E695D940] reason:AVMethodExceptionReasonWithObjectAndSelector(self userInfo:{a2, @"The video target was removed, but not already attached to AVSampleBufferVideoRenderer.", v7, v8, v9, v10, v11, v13[0]), 0}];
      objc_exception_throw(v12);
    }

    [(AVSampleBufferVideoRenderer *)self _updateVideoOutputs];
    _Block_object_dispose(&v14, 8);
  }

  AVTelemetryIntervalEnd(&v18);
}

uint64_t __80__AVSampleBufferVideoRenderer_AVSampleBufferVideoRendererOutputs__removeOutput___block_invoke(void *a1)
{
  result = [*(a1[4] + 208) indexOfObject:a1[5]];
  *(*(a1[6] + 8) + 24) = result != 0x7FFFFFFFFFFFFFFFLL;
  if (*(*(a1[6] + 8) + 24) == 1)
  {
    v3 = a1[5];
    v4 = *(a1[4] + 208);

    return [v4 removeObject:v3];
  }

  return result;
}

- (NSArray)outputs
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x3052000000;
  v9 = __Block_byref_object_copy__33;
  v10 = __Block_byref_object_dispose__33;
  v11 = 0;
  serialQueue = self->_serialQueue;
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __74__AVSampleBufferVideoRenderer_AVSampleBufferVideoRendererOutputs__outputs__block_invoke;
  v5[3] = &unk_1E7460E68;
  v5[4] = self;
  v5[5] = &v6;
  dispatch_sync(serialQueue, v5);
  v3 = v7[5];
  _Block_object_dispose(&v6, 8);
  return v3;
}

id __74__AVSampleBufferVideoRenderer_AVSampleBufferVideoRendererOutputs__outputs__block_invoke(uint64_t a1)
{
  result = *(*(a1 + 32) + 208);
  *(*(*(a1 + 40) + 8) + 40) = result;
  return result;
}

- (__CVBuffer)copyDisplayedPixelBuffer
{
  v13 = 0;
  v14 = [[AVTelemetryInterval alloc] initAndStartWith:63];
  v10 = 0;
  v11 = &v10;
  v12 = 0x2020000000;
  v8[0] = 0;
  v8[1] = v8;
  v8[2] = 0x2020000000;
  v9 = 0;
  _copyVideoQueue = [(AVSampleBufferVideoRenderer *)self _copyVideoQueue];
  if (_copyVideoQueue)
  {
    videoQueueQueue = self->_videoQueueQueue;
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __91__AVSampleBufferVideoRenderer_AVSampleBufferVideoRendererOutputs__copyDisplayedPixelBuffer__block_invoke;
    block[3] = &unk_1E7465948;
    block[6] = &v10;
    block[7] = _copyVideoQueue;
    block[4] = self;
    block[5] = v8;
    dispatch_sync(videoQueueQueue, block);
    CFRelease(_copyVideoQueue);
  }

  v5 = v11[3];
  _Block_object_dispose(v8, 8);
  _Block_object_dispose(&v10, 8);
  AVTelemetryIntervalEnd(&v14);
  return v5;
}

uint64_t __91__AVSampleBufferVideoRenderer_AVSampleBufferVideoRendererOutputs__copyDisplayedPixelBuffer__block_invoke(uint64_t a1)
{
  v2 = *(*(a1 + 48) + 8);
  CMBaseObject = FigVideoQueueGetCMBaseObject();
  v4 = *(*(CMBaseObjectGetVTable() + 8) + 48);
  if (v4)
  {
    result = v4(CMBaseObject, *MEMORY[0x1E6973CF8], *MEMORY[0x1E695E480], v2 + 24);
  }

  else
  {
    result = 4294954514;
  }

  *(*(*(a1 + 40) + 8) + 24) = result;
  if (*(*(*(a1 + 40) + 8) + 24))
  {
    v6 = dword_1EAEFCE70 == 0;
  }

  else
  {
    v6 = 1;
  }

  if (!v6)
  {
    os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
    return fig_log_call_emit_and_clean_up_after_send_and_compose();
  }

  return result;
}

@end