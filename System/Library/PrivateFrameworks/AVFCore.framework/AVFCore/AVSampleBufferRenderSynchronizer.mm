@interface AVSampleBufferRenderSynchronizer
+ (id)_makeSTSLabel;
+ (id)_videoRendererForRenderer:(id)a3;
+ (id)currentFigRenderSynchronizerFactory;
+ (void)setFigRenderSynchronizerFactory:(id)a3 forQueue:(id)a4;
- (AVSampleBufferRenderSynchronizer)init;
- (BOOL)_addRenderer:(id)a3 error:(id *)a4;
- (BOOL)_canAddRendererInternal:(id)a3 error:(id *)a4;
- (BOOL)_rendererConfigurationIsValid:(id *)a3;
- (BOOL)_scheduleTimedRendererRemovalAtTime:(id)a3 atTime:(id *)a4 withClientCompletionHandler:(id)a5;
- (BOOL)delaysRateChangeUntilHasSufficientMediaData;
- (BOOL)isDefunct;
- (BOOL)setRate:(float)a3 time:(id *)a4 atHostTime:(id *)a5 error:(id *)a6;
- (CMTime)currentTime;
- (CMTimebaseRef)timebase;
- (NSArray)renderers;
- (float)rate;
- (id)_createOnceTimebaseObserverForRemovalOfRenderer:(id)a3 atTime:(id *)a4;
- (id)_loggingDescription;
- (id)addBoundaryTimeObserverForTimes:(NSArray *)times queue:(dispatch_queue_t)queue usingBlock:(void *)block;
- (id)addPeriodicTimeObserverForInterval:(CMTime *)interval queue:(dispatch_queue_t)queue usingBlock:(void *)block;
- (int)_initializeTimebase;
- (int)_setRate:(float)a3 time:(id *)a4 atHostTime:(id *)a5;
- (int64_t)_addedAudioRendererCount;
- (int64_t)_addedAudioRendererCountInternal;
- (void)_storeObserver:(id)a3 clientCompletionHandler:(id)a4 forRenderer:(id)a5;
- (void)_updateRateFromTimebase;
- (void)addRenderer:(id)renderer;
- (void)dealloc;
- (void)removeRenderer:(id)a3 atTime:(id *)a4 withCompletionHandler:(id)a5;
- (void)removeRenderer:(id)renderer atTime:(CMTime *)time completionHandler:(void *)completionHandler;
- (void)removeTimeObserver:(id)observer;
- (void)setDelaysRateChangeUntilHasSufficientMediaData:(BOOL)delaysRateChangeUntilHasSufficientMediaData;
- (void)setRate:(float)rate;
- (void)setRate:(float)rate time:(CMTime *)time;
- (void)setRate:(float)rate time:(CMTime *)time atHostTime:(CMTime *)hostTime;
@end

@implementation AVSampleBufferRenderSynchronizer

- (id)_loggingDescription
{
  synchronizerInternal = self->_synchronizerInternal;
  if (synchronizerInternal && (loggingIdentifier = synchronizerInternal->loggingIdentifier) != 0)
  {
    return [MEMORY[0x1E696AEC0] stringWithFormat:@"<%@|%p>", -[AVLoggingIdentifier name](loggingIdentifier, "name"), self];
  }

  else
  {
    return [MEMORY[0x1E696AEC0] stringWithFormat:@"<%p>", self, v6];
  }
}

- (AVSampleBufferRenderSynchronizer)init
{
  v16 = [[AVTelemetryInterval alloc] initAndStartWith:16];
  AVTelemetryGenerateID();
  v3 = [objc_opt_class() currentFigRenderSynchronizerFactory];
  v15 = 0;
  v4 = [AVCMNotificationDispatcher notificationDispatcherForCMNotificationCenter:CMNotificationCenterGetDefaultLocalCenter()];
  v14.receiver = self;
  v14.super_class = AVSampleBufferRenderSynchronizer;
  v5 = [(AVSampleBufferRenderSynchronizer *)&v14 init];
  if (v5)
  {
    v6 = objc_alloc_init(AVSampleBufferRenderSynchronizerInternal);
    v5->_synchronizerInternal = v6;
    if (v6 && (v5->_synchronizerInternal->loggingIdentifier = -[AVCommonLoggingIdentifier initWithIdentifierSuffix:prefixlength:]([AVCommonLoggingIdentifier alloc], "initWithIdentifierSuffix:prefixlength:", 0x1F0A918D0, 3), v7 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM), v5->_synchronizerInternal->rateQueue = dispatch_queue_create("com.apple.avfoundation.avsamplebufferrendersynchronizer.ratequeue", v7), v8 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM), v5->_synchronizerInternal->figSynchronizerAccessQueue = dispatch_queue_create("com.apple.avfoundation.avsamplebufferrendersynchronizer.synchronizeraccessqueue", v8), v9 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM), v5->_synchronizerInternal->rendererListQueue = dispatch_queue_create("com.apple.avfoundation.avsamplebufferrendersynchronizer.rendererlistqueue", v9), v5->_synchronizerInternal->renderers = objc_alloc_init(MEMORY[0x1E695DF70]), v5->_synchronizerInternal->timedRenderRemovals = objc_alloc_init(MEMORY[0x1E695DF70]), v10 = v5->_synchronizerInternal, v10->rateQueue) && v10->rendererListQueue && v10->figSynchronizerAccessQueue && v10->renderers && v10->timedRenderRemovals && (v10->rate = 0.0, (v5->_synchronizerInternal->figSynchronizer = [v3 createRenderSynchronizerWithAllocator:0 options:0 error:&v15]) != 0) && !-[AVSampleBufferRenderSynchronizer _initializeTimebase](v5, "_initializeTimebase"))
    {
      synchronizerInternal = v5->_synchronizerInternal;
      CMTimebaseGetTime(&v13, [(AVSampleBufferRenderSynchronizer *)v5 timebase]);
      *(&synchronizerInternal->rate + 1) = v13;
      v5->_synchronizerInternal->STSLabelSinks = objc_alloc_init(MEMORY[0x1E695DF90]);
      v5->_synchronizerInternal->weakObserver = [[AVWeakReference alloc] initWithReferencedObject:v5];
      [v4 addListenerWithWeakReference:v5->_synchronizerInternal->weakObserver callback:avrendersynchronizer_timebaseRateChanged name:*MEMORY[0x1E6960CD0] object:v5->_synchronizerInternal->readOnlyTimebase flags:0];
    }

    else
    {

      v5 = 0;
    }
  }

  AVTelemetryIntervalEnd(&v16);
  return v5;
}

- (int)_initializeTimebase
{
  cf = 0;
  figSynchronizer = self->_synchronizerInternal->figSynchronizer;
  v4 = *(*(CMBaseObjectGetVTable() + 16) + 32);
  if (!v4)
  {
    return -12782;
  }

  result = v4(figSynchronizer, &cf);
  if (result)
  {
    v6 = result;
    if (cf)
    {
      CFRelease(cf);
    }

    return v6;
  }

  else
  {
    self->_synchronizerInternal->readOnlyTimebase = cf;
  }

  return result;
}

- (void)dealloc
{
  v21 = *MEMORY[0x1E69E9840];
  synchronizerInternal = self->_synchronizerInternal;
  if (synchronizerInternal)
  {
    if (synchronizerInternal->weakObserver)
    {
      [+[AVCMNotificationDispatcher notificationDispatcherForCMNotificationCenter:](AVCMNotificationDispatcher notificationDispatcherForCMNotificationCenter:{CMNotificationCenterGetDefaultLocalCenter()), "removeListenerWithWeakReference:callback:name:object:", self->_synchronizerInternal->weakObserver, avrendersynchronizer_timebaseRateChanged, *MEMORY[0x1E6960CD0], self->_synchronizerInternal->readOnlyTimebase}];
      synchronizerInternal = self->_synchronizerInternal;
    }

    v4 = [(NSMutableArray *)synchronizerInternal->renderers copy];
    v16 = 0u;
    v17 = 0u;
    v18 = 0u;
    v19 = 0u;
    v5 = [v4 countByEnumeratingWithState:&v16 objects:v20 count:16];
    if (v5)
    {
      v6 = v5;
      v7 = *v17;
      do
      {
        for (i = 0; i != v6; ++i)
        {
          if (*v17 != v7)
          {
            objc_enumerationMutation(v4);
          }

          avrendersynchronize_performRendererRemoval(self, *(*(&v16 + 1) + 8 * i));
        }

        v6 = [v4 countByEnumeratingWithState:&v16 objects:v20 count:16];
      }

      while (v6);
    }

    v9 = self->_synchronizerInternal;
    readOnlyTimebase = v9->readOnlyTimebase;
    if (readOnlyTimebase)
    {
      CFRelease(readOnlyTimebase);
      self->_synchronizerInternal->readOnlyTimebase = 0;
      v9 = self->_synchronizerInternal;
    }

    figSynchronizer = v9->figSynchronizer;
    if (figSynchronizer)
    {
      CFRelease(figSynchronizer);
      self->_synchronizerInternal->figSynchronizer = 0;
      v9 = self->_synchronizerInternal;
    }

    rateQueue = v9->rateQueue;
    if (rateQueue)
    {
      dispatch_release(rateQueue);
      v9 = self->_synchronizerInternal;
    }

    figSynchronizerAccessQueue = v9->figSynchronizerAccessQueue;
    if (figSynchronizerAccessQueue)
    {
      dispatch_release(figSynchronizerAccessQueue);
      v9 = self->_synchronizerInternal;
    }

    rendererListQueue = v9->rendererListQueue;
    if (rendererListQueue)
    {
      dispatch_release(rendererListQueue);
      v9 = self->_synchronizerInternal;
    }
  }

  v15.receiver = self;
  v15.super_class = AVSampleBufferRenderSynchronizer;
  [(AVSampleBufferRenderSynchronizer *)&v15 dealloc];
}

+ (id)_makeSTSLabel
{
  if (_os_feature_enabled_impl())
  {
    return 0;
  }

  if (_makeSTSLabel_onceToken[0] != -1)
  {
    +[AVSampleBufferRenderSynchronizer _makeSTSLabel];
  }

  if (!sParticipatesInSTS)
  {
    return 0;
  }

  v2 = getpid();
  return [MEMORY[0x1E696AEC0] stringWithFormat:@"com.apple.avfoundation.STS.%d-%d", v2, FigAtomicIncrement32()];
}

void __49__AVSampleBufferRenderSynchronizer__makeSTSLabel__block_invoke()
{
  if (!sParticipatesInSTS)
  {
    sParticipatesInSTS = FigGetCFPreferenceNumberWithDefault();
  }
}

- (CMTimebaseRef)timebase
{
  readOnlyTimebase = self->_synchronizerInternal->readOnlyTimebase;
  if (readOnlyTimebase)
  {
    readOnlyTimebase = CFRetain(readOnlyTimebase);
    v2 = vars8;
  }

  return readOnlyTimebase;
}

- (CMTime)currentTime
{
  memset(&v16, 0, sizeof(v16));
  CMTimebaseGetTime(&v16, [(AVSampleBufferRenderSynchronizer *)self timebase]);
  v10 = 0;
  v11 = &v10;
  v12 = 0x3810000000;
  v13 = &unk_19626E495;
  v14 = *MEMORY[0x1E6960C70];
  v15 = *(MEMORY[0x1E6960C70] + 16);
  rateQueue = self->_synchronizerInternal->rateQueue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __47__AVSampleBufferRenderSynchronizer_currentTime__block_invoke;
  block[3] = &unk_1E7460E68;
  block[4] = self;
  block[5] = &v10;
  dispatch_sync(rateQueue, block);
  time1 = v16;
  v7 = *(v11 + 4);
  CMTimeMaximum(retstr, &time1, &v7);
  _Block_object_dispose(&v10, 8);
  return result;
}

__n128 __47__AVSampleBufferRenderSynchronizer_currentTime__block_invoke(uint64_t a1)
{
  v1 = *(*(a1 + 40) + 8);
  v2 = *(*(a1 + 32) + 8);
  result = *(v2 + 36);
  v1[3].n128_u64[0] = *(v2 + 52);
  v1[2] = result;
  return result;
}

- (float)rate
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x2020000000;
  v9 = 0;
  rateQueue = self->_synchronizerInternal->rateQueue;
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __40__AVSampleBufferRenderSynchronizer_rate__block_invoke;
  v5[3] = &unk_1E7460E68;
  v5[4] = self;
  v5[5] = &v6;
  dispatch_sync(rateQueue, v5);
  v3 = v7[6];
  _Block_object_dispose(&v6, 8);
  return v3;
}

float __40__AVSampleBufferRenderSynchronizer_rate__block_invoke(uint64_t a1)
{
  result = *(*(*(a1 + 32) + 8) + 32);
  *(*(*(a1 + 40) + 8) + 24) = result;
  return result;
}

- (void)setRate:(float)rate
{
  if (*MEMORY[0x1E695FF58] == 1)
  {
    kdebug_trace();
  }

  v5 = *MEMORY[0x1E6960C70];
  v6 = *(MEMORY[0x1E6960C70] + 16);
  [(AVSampleBufferRenderSynchronizer *)self setRate:&v5 time:COERCE_DOUBLE(__PAIR64__(DWORD1(v5), LODWORD(rate)))];
}

- (void)setRate:(float)rate time:(CMTime *)time
{
  v6 = *time;
  v4 = *MEMORY[0x1E6960C70];
  v5 = *(MEMORY[0x1E6960C70] + 16);
  [(AVSampleBufferRenderSynchronizer *)self setRate:&v6 time:&v4 atHostTime:?];
}

- (void)setRate:(float)rate time:(CMTime *)time atHostTime:(CMTime *)hostTime
{
  v9 = [[AVTelemetryInterval alloc] initAndStartWith:67];
  v11 = *time;
  v12 = v9;
  v10 = *hostTime;
  [(AVSampleBufferRenderSynchronizer *)self _setRate:&v11 time:&v10 atHostTime:COERCE_DOUBLE(__PAIR64__(HIDWORD(v10.value), LODWORD(rate)))];
  AVTelemetryIntervalEnd(&v12);
}

- (BOOL)setRate:(float)a3 time:(id *)a4 atHostTime:(id *)a5 error:(id *)a6
{
  v12 = *a4;
  v11 = *a5;
  v7 = [(AVSampleBufferRenderSynchronizer *)self _setRate:&v12 time:&v11 atHostTime:?];
  v8 = v7;
  if (v7)
  {
    v10 = AVLocalizedErrorWithUnderlyingOSStatus(v7, 0);
    if (a6)
    {
      *a6 = v10;
    }
  }

  return v8 == 0;
}

- (int)_setRate:(float)a3 time:(id *)a4 atHostTime:(id *)a5
{
  if (a3 < 0.0)
  {
    v19 = [MEMORY[0x1E695DF30] exceptionWithName:*MEMORY[0x1E695D940] reason:AVMethodExceptionReasonWithObjectAndSelector(self userInfo:{a2, @"invalid parameter not satisfying: %s", a5, v5, v6, v7, v8, "newRate >= 0.0"), 0}];
    objc_exception_throw(v19);
  }

  v12 = a3;
  v32 = 0;
  v28 = 0;
  v29 = &v28;
  v30 = 0x2020000000;
  v31 = 0;
  if (![(AVSampleBufferRenderSynchronizer *)self _rendererConfigurationIsValid:&v32])
  {
    v13 = v12;
    v12 = 0.0;
    NSLog(&cfstr_InvalidRendere.isa, *&v13);
  }

  rateQueue = self->_synchronizerInternal->rateQueue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __61__AVSampleBufferRenderSynchronizer__setRate_time_atHostTime___block_invoke;
  block[3] = &unk_1E7465A78;
  block[4] = self;
  block[5] = &v28;
  v25 = v12;
  v26 = *&a4->var0;
  var3 = a4->var3;
  dispatch_sync(rateQueue, block);
  figSynchronizer = self->_synchronizerInternal->figSynchronizer;
  v22 = *&a4->var0;
  v23 = a4->var3;
  v20 = *&a5->var0;
  v21 = a5->var3;
  v16 = *(*(CMBaseObjectGetVTable() + 16) + 56);
  if (!v16)
  {
    v17 = -12782;
    goto LABEL_8;
  }

  v35 = v22;
  v36 = v23;
  v33 = v20;
  v34 = v21;
  v17 = v16(figSynchronizer, &v35, &v33, v12);
  if (v17)
  {
LABEL_8:
    [(AVSampleBufferRenderSynchronizer *)self _updateRateFromTimebase];
  }

  if (v12 != v29[6])
  {
    [objc_msgSend(MEMORY[0x1E696AD88] "defaultCenter")];
  }

  _Block_object_dispose(&v28, 8);
  return v17;
}

__n128 __61__AVSampleBufferRenderSynchronizer__setRate_time_atHostTime___block_invoke(uint64_t a1)
{
  *(*(*(a1 + 40) + 8) + 24) = *(*(*(a1 + 32) + 8) + 32);
  result.n128_u32[0] = *(a1 + 48);
  *(*(*(a1 + 32) + 8) + 32) = result.n128_u32[0];
  if (*(a1 + 64))
  {
    v2 = *(*(a1 + 32) + 8);
    result = *(a1 + 52);
    *(v2 + 52) = *(a1 + 68);
    *(v2 + 36) = result;
  }

  return result;
}

- (BOOL)delaysRateChangeUntilHasSufficientMediaData
{
  BOOLean = 0;
  v8 = [[AVTelemetryInterval alloc] initAndStartWith:68];
  figSynchronizer = self->_synchronizerInternal->figSynchronizer;
  v4 = *(*(CMBaseObjectGetVTable() + 8) + 48);
  if (v4 && (v4(figSynchronizer, *MEMORY[0x1E69736E0], *MEMORY[0x1E695E480], &BOOLean), BOOLean))
  {
    v5 = CFBooleanGetValue(BOOLean) == 0;
    if (BOOLean)
    {
      CFRelease(BOOLean);
    }
  }

  else
  {
    v5 = 1;
  }

  AVTelemetryIntervalEnd(&v8);
  return v5;
}

- (void)setDelaysRateChangeUntilHasSufficientMediaData:(BOOL)delaysRateChangeUntilHasSufficientMediaData
{
  v3 = delaysRateChangeUntilHasSufficientMediaData;
  v8 = [[AVTelemetryInterval alloc] initAndStartWith:69];
  if (v3)
  {
    v5 = MEMORY[0x1E695E4C0];
  }

  else
  {
    v5 = MEMORY[0x1E695E4D0];
  }

  figSynchronizer = self->_synchronizerInternal->figSynchronizer;
  v7 = *(*(CMBaseObjectGetVTable() + 8) + 56);
  if (v7)
  {
    v7(figSynchronizer, *MEMORY[0x1E69736E0], *v5);
  }

  AVTelemetryIntervalEnd(&v8);
}

- (void)_updateRateFromTimebase
{
  figSynchronizerAccessQueue = self->_synchronizerInternal->figSynchronizerAccessQueue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __59__AVSampleBufferRenderSynchronizer__updateRateFromTimebase__block_invoke;
  block[3] = &unk_1E7460C00;
  block[4] = self;
  dispatch_async(figSynchronizerAccessQueue, block);
}

void __59__AVSampleBufferRenderSynchronizer__updateRateFromTimebase__block_invoke(uint64_t a1)
{
  Rate = CMTimebaseGetRate(*(*(*(a1 + 32) + 8) + 16));
  v7 = 0;
  v8 = &v7;
  v9 = 0x2020000000;
  v10 = 0;
  v3 = *(a1 + 32);
  v4 = *(*(v3 + 8) + 24);
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __59__AVSampleBufferRenderSynchronizer__updateRateFromTimebase__block_invoke_2;
  block[3] = &unk_1E7465AA0;
  block[4] = v3;
  block[5] = &v7;
  v6 = Rate;
  dispatch_sync(v4, block);
  if (v8[6] != Rate)
  {
    [objc_msgSend(MEMORY[0x1E696AD88] "defaultCenter")];
  }

  _Block_object_dispose(&v7, 8);
}

float __59__AVSampleBufferRenderSynchronizer__updateRateFromTimebase__block_invoke_2(uint64_t a1)
{
  *(*(*(a1 + 40) + 8) + 24) = *(*(*(a1 + 32) + 8) + 32);
  result = *(a1 + 48);
  *(*(*(a1 + 32) + 8) + 32) = result;
  return result;
}

+ (id)_videoRendererForRenderer:(id)a3
{
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {

    return [a3 _sampleBufferVideoRenderer];
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      return a3;
    }

    else
    {
      return 0;
    }
  }
}

- (NSArray)renderers
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x3052000000;
  v9 = __Block_byref_object_copy__36;
  v10 = __Block_byref_object_dispose__36;
  v11 = 0;
  rendererListQueue = self->_synchronizerInternal->rendererListQueue;
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __97__AVSampleBufferRenderSynchronizer_AVSampleBufferRenderSynchronizerRendererManagement__renderers__block_invoke;
  v5[3] = &unk_1E7460E68;
  v5[4] = self;
  v5[5] = &v6;
  dispatch_sync(rendererListQueue, v5);
  v3 = v7[5];
  _Block_object_dispose(&v6, 8);
  return v3;
}

uint64_t __97__AVSampleBufferRenderSynchronizer_AVSampleBufferRenderSynchronizerRendererManagement__renderers__block_invoke(uint64_t a1)
{
  result = [*(*(*(a1 + 32) + 8) + 72) copy];
  *(*(*(a1 + 40) + 8) + 40) = result;
  return result;
}

- (BOOL)_addRenderer:(id)a3 error:(id *)a4
{
  v19 = 0;
  v20 = 0;
  v7 = [(AVSampleBufferRenderSynchronizer *)self _canAddRendererInternal:a3 error:&v19];
  if (v7)
  {
    v7 = [a3 setRenderSynchronizer:self error:&v19];
    if (v7)
    {
      [(NSMutableArray *)self->_synchronizerInternal->renderers addObject:a3];
      v8 = [AVSampleBufferRenderSynchronizer _videoRendererForRenderer:a3];
      if (v8)
      {
        v9 = v8;
        objc_initWeak(&location, self);
        v10 = [v9 _STSLabelPublisher];
        v11 = [AVSinkSubscriber alloc];
        v16[0] = MEMORY[0x1E69E9820];
        v16[1] = 3221225472;
        v16[2] = __107__AVSampleBufferRenderSynchronizer_AVSampleBufferRenderSynchronizerRendererManagement___addRenderer_error___block_invoke;
        v16[3] = &unk_1E7465AC8;
        objc_copyWeak(&v17, &location);
        v12 = [(AVSinkSubscriber *)v11 initWithPublisher:v10 requestingInitialValue:0 sink:v16];
        -[NSMutableDictionary setObject:forKey:](self->_synchronizerInternal->STSLabelSinks, "setObject:forKey:", v12, [MEMORY[0x1E696B098] valueWithPointer:v9]);

        objc_destroyWeak(&v17);
        objc_destroyWeak(&location);
      }

      avrendersynchronize_electRendererForSTSAndSendLabelToAudioRenderers(self);
      [a3 copyFigSampleBufferAudioRenderer:&v20];
      if (v20)
      {
        figSynchronizerAccessQueue = self->_synchronizerInternal->figSynchronizerAccessQueue;
        v15[0] = MEMORY[0x1E69E9820];
        v15[1] = 3221225472;
        v15[2] = __107__AVSampleBufferRenderSynchronizer_AVSampleBufferRenderSynchronizerRendererManagement___addRenderer_error___block_invoke_3;
        v15[3] = &unk_1E7460FA8;
        v15[4] = self;
        v15[5] = v20;
        dispatch_async(figSynchronizerAccessQueue, v15);
      }

      LOBYTE(v7) = 1;
    }
  }

  if (a4)
  {
    *a4 = v19;
  }

  return v7;
}

void __107__AVSampleBufferRenderSynchronizer_AVSampleBufferRenderSynchronizerRendererManagement___addRenderer_error___block_invoke(uint64_t a1)
{
  Weak = objc_loadWeak((a1 + 32));
  if (Weak)
  {
    v2 = Weak;
    current_queue = dispatch_get_current_queue();
    v4 = *(*(v2 + 8) + 64);
    if (current_queue == v4)
    {

      avrendersynchronize_electRendererForSTSAndSendLabelToAudioRenderers(v2);
    }

    else
    {
      block[0] = MEMORY[0x1E69E9820];
      block[1] = 3221225472;
      block[2] = __107__AVSampleBufferRenderSynchronizer_AVSampleBufferRenderSynchronizerRendererManagement___addRenderer_error___block_invoke_2;
      block[3] = &unk_1E7460C00;
      block[4] = v2;
      dispatch_sync(v4, block);
    }
  }
}

void __107__AVSampleBufferRenderSynchronizer_AVSampleBufferRenderSynchronizerRendererManagement___addRenderer_error___block_invoke_3(uint64_t a1)
{
  v2 = *(a1 + 40);
  v3 = *(*(*(a1 + 32) + 8) + 96);
  v4 = *(*(CMBaseObjectGetVTable() + 16) + 8);
  if (v4)
  {
    v4(v3, v2);
  }

  v5 = *(a1 + 40);
  if (v5)
  {

    CFRelease(v5);
  }
}

- (void)addRenderer:(id)renderer
{
  v35 = [[AVTelemetryInterval alloc] initAndStartWith:70];
  v31 = 0;
  v32 = &v31;
  v33 = 0x2020000000;
  v34 = 0;
  v25 = 0;
  v26 = &v25;
  v27 = 0x3052000000;
  v28 = __Block_byref_object_copy__36;
  v29 = __Block_byref_object_dispose__36;
  v30 = 0;
  if (([objc_opt_class() conformsToProtocol:&unk_1F0AF7048] & 1) == 0)
  {
    v12 = [MEMORY[0x1E695DF30] exceptionWithName:*MEMORY[0x1E695D940] reason:AVMethodExceptionReasonWithObjectAndSelector(self userInfo:{a2, @"invalid renderer", v6, v7, v8, v9, v10, v23), 0}];
    objc_exception_throw(v12);
  }

  rendererListQueue = self->_synchronizerInternal->rendererListQueue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __100__AVSampleBufferRenderSynchronizer_AVSampleBufferRenderSynchronizerRendererManagement__addRenderer___block_invoke;
  block[3] = &unk_1E7464F40;
  block[4] = self;
  block[5] = renderer;
  block[6] = &v31;
  block[7] = &v25;
  dispatch_sync(rendererListQueue, block);
  if ((v32[3] & 1) == 0 && [v26[5] code] == -11999)
  {
    v13 = [objc_msgSend(v26[5] "userInfo")];
    v14 = [v13 reason];
    v15 = MEMORY[0x1E695DF30];
    v21 = [v13 name];
    if (v14)
    {
      [MEMORY[0x1E696AEC0] stringWithFormat:@": %@", v14];
    }

    v22 = [v15 exceptionWithName:v21 reason:AVMethodExceptionReasonWithObjectAndSelector(self userInfo:{a2, @"Cannot add renderer %p %@", v16, v17, v18, v19, v20, renderer), 0}];
    objc_exception_throw(v22);
  }

  _Block_object_dispose(&v25, 8);
  _Block_object_dispose(&v31, 8);
  AVTelemetryIntervalEnd(&v35);
}

uint64_t __100__AVSampleBufferRenderSynchronizer_AVSampleBufferRenderSynchronizerRendererManagement__addRenderer___block_invoke(uint64_t a1)
{
  result = [*(a1 + 32) _addRenderer:*(a1 + 40) error:*(*(a1 + 56) + 8) + 40];
  *(*(*(a1 + 48) + 8) + 24) = result;
  return result;
}

- (void)_storeObserver:(id)a3 clientCompletionHandler:(id)a4 forRenderer:(id)a5
{
  v8 = [a4 copy];
  v9 = [MEMORY[0x1E695DF20] dictionaryWithObjectsAndKeys:{a5, @"renderer", a3, @"onceTimebaseObserver", v8, @"clientCompletionHandler", 0}];

  timedRenderRemovals = self->_synchronizerInternal->timedRenderRemovals;

  [(NSMutableArray *)timedRenderRemovals addObject:v9];
}

- (id)_createOnceTimebaseObserverForRemovalOfRenderer:(id)a3 atTime:(id *)a4
{
  v7 = [[AVWeakReference alloc] initWithReferencedObject:self];
  v8 = [[AVWeakReference alloc] initWithReferencedObject:a3];
  v16[0] = MEMORY[0x1E69E9820];
  v16[1] = 3221225472;
  v16[2] = __143__AVSampleBufferRenderSynchronizer_AVSampleBufferRenderSynchronizerRendererManagement___createOnceTimebaseObserverForRemovalOfRenderer_atTime___block_invoke;
  v16[3] = &unk_1E7460DF0;
  v16[4] = v7;
  v16[5] = v8;
  v9 = [AVOnceTimebaseObserver alloc];
  synchronizerInternal = self->_synchronizerInternal;
  readOnlyTimebase = synchronizerInternal->readOnlyTimebase;
  rendererListQueue = synchronizerInternal->rendererListQueue;
  v15 = *a4;
  v13 = [(AVOnceTimebaseObserver *)v9 initWithTimebase:readOnlyTimebase fireTime:&v15 queue:rendererListQueue block:v16];

  return v13;
}

void __143__AVSampleBufferRenderSynchronizer_AVSampleBufferRenderSynchronizerRendererManagement___createOnceTimebaseObserverForRemovalOfRenderer_atTime___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) referencedObject];
  v3 = objc_autoreleasePoolPush();
  v4 = [*(a1 + 40) referencedObject];
  if (v2 && *(a1 + 40))
  {
    [v2 _performRendererRemoval:v4];
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    FigObjectRecordMethodCallsForObject();
    v5 = v4;
    objc_autoreleasePoolPop(v3);
    if (v5)
    {
      block[0] = MEMORY[0x1E69E9820];
      block[1] = 3221225472;
      block[2] = __143__AVSampleBufferRenderSynchronizer_AVSampleBufferRenderSynchronizerRendererManagement___createOnceTimebaseObserverForRemovalOfRenderer_atTime___block_invoke_2;
      block[3] = &unk_1E7460C00;
      block[4] = v5;
      dispatch_async(MEMORY[0x1E69E96A0], block);
    }
  }

  else
  {

    objc_autoreleasePoolPop(v3);
  }
}

void __143__AVSampleBufferRenderSynchronizer_AVSampleBufferRenderSynchronizerRendererManagement___createOnceTimebaseObserverForRemovalOfRenderer_atTime___block_invoke_2(uint64_t a1)
{
  FigObjectRecordMethodCallsForObject();
  v2 = *(a1 + 32);
}

- (BOOL)_scheduleTimedRendererRemovalAtTime:(id)a3 atTime:(id *)a4 withClientCompletionHandler:(id)a5
{
  v9 = [(NSMutableArray *)self->_synchronizerInternal->renderers containsObject:?];
  if (v9)
  {
    v10 = [(AVSampleBufferRenderSynchronizer *)self _getTimebaseObserverForRenderer:a3];
    if (v10)
    {
      v11 = v10;
      if ([v10 didFire])
      {
        LOBYTE(v9) = 0;
        return v9;
      }

      v12 = [(AVSampleBufferRenderSynchronizer *)self _getClientCompletionHandlerForRenderer:a3];
      [(AVSampleBufferRenderSynchronizer *)self _removeTimebaseObserverForRenderer:a3];
      if (v12)
      {
        figSynchronizerAccessQueue = self->_synchronizerInternal->figSynchronizerAccessQueue;
        block[0] = MEMORY[0x1E69E9820];
        block[1] = 3221225472;
        block[2] = __159__AVSampleBufferRenderSynchronizer_AVSampleBufferRenderSynchronizerRendererManagement___scheduleTimedRendererRemovalAtTime_atTime_withClientCompletionHandler___block_invoke;
        block[3] = &unk_1E7462628;
        block[4] = v12;
        dispatch_async(figSynchronizerAccessQueue, block);
      }

      [v11 invalidate];
    }

    v15 = *&a4->var0;
    var3 = a4->var3;
    [(AVSampleBufferRenderSynchronizer *)self _storeObserver:[(AVSampleBufferRenderSynchronizer *)self _createOnceTimebaseObserverForRemovalOfRenderer:a3 atTime:&v15] clientCompletionHandler:a5 forRenderer:a3];
    LOBYTE(v9) = 1;
  }

  return v9;
}

void __159__AVSampleBufferRenderSynchronizer_AVSampleBufferRenderSynchronizerRendererManagement___scheduleTimedRendererRemovalAtTime_atTime_withClientCompletionHandler___block_invoke(uint64_t a1)
{
  v2 = objc_autoreleasePoolPush();
  (*(*(a1 + 32) + 16))();

  objc_autoreleasePoolPop(v2);
}

- (void)removeRenderer:(id)a3 atTime:(id *)a4 withCompletionHandler:(id)a5
{
  v9 = [[AVTelemetryInterval alloc] initAndStartWith:71];
  v10 = *a4;
  v11 = v9;
  [(AVSampleBufferRenderSynchronizer *)self removeRenderer:a3 atTime:&v10 completionHandler:a5];
  AVTelemetryIntervalEnd(&v11);
}

- (void)removeRenderer:(id)renderer atTime:(CMTime *)time completionHandler:(void *)completionHandler
{
  if (([objc_opt_class() conformsToProtocol:&unk_1F0AF7048] & 1) == 0)
  {
    v16 = [MEMORY[0x1E695DF30] exceptionWithName:*MEMORY[0x1E695D940] reason:AVMethodExceptionReasonWithObjectAndSelector(self userInfo:{a2, @"invalid renderer", v10, v11, v12, v13, v14, v17), 0}];
    objc_exception_throw(v16);
  }

  v21 = 0;
  v22 = &v21;
  v23 = 0x2020000000;
  v24 = 0;
  rendererListQueue = self->_synchronizerInternal->rendererListQueue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __128__AVSampleBufferRenderSynchronizer_AVSampleBufferRenderSynchronizerRendererManagement__removeRenderer_atTime_completionHandler___block_invoke;
  block[3] = &unk_1E7465AF0;
  block[4] = self;
  block[5] = renderer;
  epoch = time->epoch;
  v19 = *&time->value;
  block[6] = completionHandler;
  block[7] = &v21;
  dispatch_sync(rendererListQueue, block);
  if (completionHandler && (v22[3] & 1) == 0)
  {
    (*(completionHandler + 2))(completionHandler, 0);
  }

  _Block_object_dispose(&v21, 8);
}

uint64_t __128__AVSampleBufferRenderSynchronizer_AVSampleBufferRenderSynchronizerRendererManagement__removeRenderer_atTime_completionHandler___block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = *(a1 + 40);
  v4 = *(a1 + 48);
  v6 = *(a1 + 64);
  v7 = *(a1 + 80);
  result = [v2 _scheduleTimedRendererRemovalAtTime:v3 atTime:&v6 withClientCompletionHandler:v4];
  *(*(*(a1 + 56) + 8) + 24) = result;
  return result;
}

- (BOOL)_canAddRendererInternal:(id)a3 error:(id *)a4
{
  if ([(NSMutableArray *)self->_synchronizerInternal->renderers containsObject:?])
  {
    v7 = MEMORY[0x1E695DF30];
    v8 = *MEMORY[0x1E695D930];
    v9 = @"The SampleBufferRenderer cannot be added to a Synchronizer more than once.";
    goto LABEL_3;
  }

  if (![(AVSampleBufferRenderSynchronizer *)self _multipleAudioRenderersDisallowed])
  {
    goto LABEL_10;
  }

  cf = 0;
  [a3 copyFigSampleBufferAudioRenderer:&cf];
  v10 = cf;
  if (!cf)
  {
    goto LABEL_11;
  }

  CFRelease(cf);
  if ([(AVSampleBufferRenderSynchronizer *)self _addedAudioRendererCountInternal]< 1)
  {
LABEL_10:
    v10 = 0;
LABEL_11:
    v11 = 1;
    if (!a4)
    {
      return v11;
    }

    goto LABEL_4;
  }

  v7 = MEMORY[0x1E695DF30];
  v8 = *MEMORY[0x1E695D930];
  v9 = @"Multiple AudioRenderers not allowed when using Long Form Routing Policy.";
LABEL_3:
  v10 = AVErrorForClientProgrammingError([v7 exceptionWithName:v8 reason:v9 userInfo:0]);
  v11 = 0;
  if (a4)
  {
LABEL_4:
    *a4 = v10;
  }

  return v11;
}

- (BOOL)_rendererConfigurationIsValid:(id *)a3
{
  if ([(AVSampleBufferRenderSynchronizer *)self _multipleAudioRenderersDisallowed]&& [(AVSampleBufferRenderSynchronizer *)self _addedAudioRendererCount]>= 2)
  {
    v5 = AVErrorForClientProgrammingError([MEMORY[0x1E695DF30] exceptionWithName:*MEMORY[0x1E695D930] reason:@"Multiple AudioRenderers not allowed when using Long Form Routing Policy." userInfo:0]);
    v6 = 0;
    if (!a3)
    {
      return v6;
    }

    goto LABEL_6;
  }

  v5 = 0;
  v6 = 1;
  if (a3)
  {
LABEL_6:
    *a3 = v5;
  }

  return v6;
}

- (int64_t)_addedAudioRendererCount
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x2020000000;
  v9 = 0;
  rendererListQueue = self->_synchronizerInternal->rendererListQueue;
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __114__AVSampleBufferRenderSynchronizer_AVSampleBufferRenderSynchronizerRendererRestrictions___addedAudioRendererCount__block_invoke;
  v5[3] = &unk_1E7460E68;
  v5[4] = self;
  v5[5] = &v6;
  dispatch_sync(rendererListQueue, v5);
  v3 = v7[3];
  _Block_object_dispose(&v6, 8);
  return v3;
}

uint64_t __114__AVSampleBufferRenderSynchronizer_AVSampleBufferRenderSynchronizerRendererRestrictions___addedAudioRendererCount__block_invoke(uint64_t a1)
{
  result = [*(a1 + 32) _addedAudioRendererCountInternal];
  *(*(*(a1 + 40) + 8) + 24) = result;
  return result;
}

- (int64_t)_addedAudioRendererCountInternal
{
  v17 = *MEMORY[0x1E69E9840];
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  renderers = self->_synchronizerInternal->renderers;
  v3 = [(NSMutableArray *)renderers countByEnumeratingWithState:&v11 objects:v16 count:16];
  if (!v3)
  {
    return 0;
  }

  v4 = v3;
  v5 = 0;
  v6 = *v12;
  do
  {
    for (i = 0; i != v4; ++i)
    {
      if (*v12 != v6)
      {
        objc_enumerationMutation(renderers);
      }

      v8 = *(*(&v11 + 1) + 8 * i);
      cf = 0;
      [v8 copyFigSampleBufferAudioRenderer:&cf];
      v9 = cf;
      if (cf)
      {
        CFRelease(cf);
      }

      if (v9)
      {
        ++v5;
      }
    }

    v4 = [(NSMutableArray *)renderers countByEnumeratingWithState:&v11 objects:v16 count:16];
  }

  while (v4);
  return v5;
}

- (id)addPeriodicTimeObserverForInterval:(CMTime *)interval queue:(dispatch_queue_t)queue usingBlock:(void *)block
{
  v14 = [[AVTelemetryInterval alloc] initAndStartWith:72];
  readOnlyTimebase = self->_synchronizerInternal->readOnlyTimebase;
  v10 = [AVPeriodicTimebaseObserver alloc];
  v13 = *interval;
  v11 = [(AVPeriodicTimebaseObserver *)v10 initWithTimebase:readOnlyTimebase interval:&v13 queue:queue block:block];
  AVTelemetryIntervalEnd(&v14);
  return v11;
}

- (id)addBoundaryTimeObserverForTimes:(NSArray *)times queue:(dispatch_queue_t)queue usingBlock:(void *)block
{
  v11 = [[AVTelemetryInterval alloc] initAndStartWith:73];
  v9 = [[AVOccasionalTimebaseObserver alloc] initWithTimebase:self->_synchronizerInternal->readOnlyTimebase times:times queue:queue block:block];
  AVTelemetryIntervalEnd(&v11);
  return v9;
}

- (void)removeTimeObserver:(id)observer
{
  v6 = [[AVTelemetryInterval alloc] initAndStartWith:74];
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    objc_exception_throw([MEMORY[0x1E695DF30] exceptionWithName:*MEMORY[0x1E695D940] reason:@"You did not supply a reference to an object returned by either -addPeriodicTimeObserverForInterval:queue:usingBlock: or -addBoundaryTimeObserverForTimes:queue:usingBlock:" userInfo:0]);
  }

  readOnlyTimebase = self->_synchronizerInternal->readOnlyTimebase;
  if (readOnlyTimebase != [observer timebase])
  {
    objc_exception_throw([MEMORY[0x1E695DF30] exceptionWithName:*MEMORY[0x1E695D940] reason:@"An instance of AVSampleBufferRenderSynchronizer cannot remove a time observer that was added by a different instance of AVSampleBufferRenderSynchronizer." userInfo:0]);
  }

  [observer invalidate];
  AVTelemetryIntervalEnd(&v6);
}

- (BOOL)isDefunct
{
  v8 = 0;
  figSynchronizer = self->_synchronizerInternal->figSynchronizer;
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
      LOBYTE(v4) = v4(figSynchronizer, &v8) == 0;
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

+ (id)currentFigRenderSynchronizerFactory
{
  v2 = objc_alloc_init(AVRemoteFigSampleBufferRenderSynchronizerFactory);
  result = dispatch_get_specific(@"AVSampleBufferRenderSynchronizerFigFactoryKey");
  if (!result)
  {
    return v2;
  }

  return result;
}

+ (void)setFigRenderSynchronizerFactory:(id)a3 forQueue:(id)a4
{
  v5 = a3;

  dispatch_queue_set_specific(a4, @"AVSampleBufferRenderSynchronizerFigFactoryKey", v5, AVSampleBufferRenderSynchronizerReleaseObject);
}

@end