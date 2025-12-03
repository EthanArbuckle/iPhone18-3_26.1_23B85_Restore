@interface CRLAnimatedGIFController
+ (BOOL)canInitWithDataType:(id)type;
+ (double)delayTimeForImageProperties:(__CFDictionary *)properties;
- ($3CC8671D27C23BF42ADDB32F2B5E48AE)p_timebaseTimeForHostTime:(SEL)time rate:(id *)rate updatedRate:(double)updatedRate anchorTime:(double *)anchorTime;
- (BOOL)hasNewImageForTime:(double)time sinceTime:(double)sinceTime;
- (CGImage)imageForCurrentTime;
- (CGImage)imageForTime:(double)time;
- (CRLAnimatedGIFController)initWithData:(id)data delegate:(id)delegate;
- (CRLAnimatedGIFController)initWithImageSource:(CGImageSource *)source delegate:(id)delegate;
- (double)absoluteCurrentTime;
- (double)absoluteDuration;
- (double)currentTime;
- (double)duration;
- (double)endTime;
- (double)remainingTime;
- (double)timeForHostTime:(double)time;
- (float)rate;
- (id)addPeriodicTimeObserverForInterval:(double)interval block:(id)block;
- (id)delegate;
- (id)newLayer;
- (id)newRenderable;
- (id)p_frameAtTime:(double)time fromIndex:(unint64_t)index frameIndex:(unint64_t *)frameIndex;
- (void)addLayer:(id)layer;
- (void)beginScrubbing;
- (void)dealloc;
- (void)endScrubbing;
- (void)p_disableDisplayLink;
- (void)p_displayLinkDidTrigger;
- (void)p_enableDisplayLink;
- (void)p_prepareFrames;
- (void)p_setAbsoluteCurrentTime:(double)time;
- (void)p_setRate:(float)rate;
- (void)p_timebaseTimeDidChangeToStartOrEndTime;
- (void)p_updateDisplayLink;
- (void)p_updateLayers;
- (void)p_updateTimebaseTimerSourceNextFireTime;
- (void)removeLayer:(id)layer;
- (void)scrubToTime:(double)time withTolerance:(double)tolerance completionHandler:(id)handler;
- (void)seekToBeginning;
- (void)seekToEnd;
- (void)setEndTime:(double)time;
- (void)setPlaying:(BOOL)playing;
- (void)setRate:(float)rate;
- (void)setRepeatMode:(int64_t)mode;
- (void)setStartTime:(double)time;
- (void)teardown;
@end

@implementation CRLAnimatedGIFController

- (id)newRenderable
{
  newLayer = [(CRLAnimatedGIFController *)self newLayer];
  v3 = [CRLCanvasRenderable renderableFromLayer:newLayer];

  return v3;
}

+ (BOOL)canInitWithDataType:(id)type
{
  typeCopy = type;
  v4 = +[CRLIngestionTypes supportedMovieAnimatedImageTypes];
  v5 = [typeCopy crl_conformsToAnyUTI:v4];

  return v5;
}

- (CRLAnimatedGIFController)initWithImageSource:(CGImageSource *)source delegate:(id)delegate
{
  delegateCopy = delegate;
  v49.receiver = self;
  v49.super_class = CRLAnimatedGIFController;
  v7 = [(CRLAnimatedGIFController *)&v49 init];
  v8 = v7;
  if (v7)
  {
    if (source)
    {
      v7->_imageSource = source;
      CFRetain(source);
    }

    else
    {
      +[CRLAssertionHandler _atomicIncrementAssertCount];
      if (qword_101AD5A10 != -1)
      {
        sub_10139A730();
      }

      if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
      {
        sub_10139A758();
      }

      if (qword_101AD5A10 != -1)
      {
        sub_10139A7F4();
      }

      v9 = off_1019EDA68;
      if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
      {
        sub_10139A81C(v9);
      }

      v10 = [NSString stringWithUTF8String:"[CRLAnimatedGIFController initWithImageSource:delegate:]"];
      v11 = [NSString stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/Freeform/Source/CRLKit/CRLAnimatedGIFController.m"];
      [CRLAssertionHandler handleFailureInFunction:v10 file:v11 lineNumber:143 isFatal:0 description:"invalid nil value for '%{public}s'", "imageSource"];
    }

    v44 = CGImageSourceGetType(v8->_imageSource);
    if (([objc_opt_class() canInitWithDataType:v44] & 1) == 0)
    {
      +[CRLAssertionHandler _atomicIncrementAssertCount];
      if (qword_101AD5A10 != -1)
      {
        sub_10139A8D4();
      }

      v12 = off_1019EDA68;
      if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
      {
        sub_10139A8FC(v12);
      }

      if (qword_101AD5A10 != -1)
      {
        sub_10139A9C8();
      }

      v13 = off_1019EDA68;
      if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
      {
        sub_10139A9F0(v13);
      }

      v14 = [NSString stringWithUTF8String:"[CRLAnimatedGIFController initWithImageSource:delegate:]"];
      v15 = [NSString stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/Freeform/Source/CRLKit/CRLAnimatedGIFController.m"];
      [CRLAssertionHandler handleFailureInFunction:v14 file:v15 lineNumber:151 isFatal:0 description:"%@ can only play GIFs, PNGs or HEIC/Fs.", objc_opt_class()];
    }

    if (CGImageSourceGetCount(v8->_imageSource) <= 1)
    {
      +[CRLAssertionHandler _atomicIncrementAssertCount];
      if (qword_101AD5A10 != -1)
      {
        sub_10139AAA8();
      }

      v16 = off_1019EDA68;
      if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
      {
        sub_10139AAD0(v16);
      }

      if (qword_101AD5A10 != -1)
      {
        sub_10139AB90();
      }

      v17 = off_1019EDA68;
      if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
      {
        sub_10139ABB8(v17);
      }

      v18 = [NSString stringWithUTF8String:"[CRLAnimatedGIFController initWithImageSource:delegate:]"];
      v19 = [NSString stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/Freeform/Source/CRLKit/CRLAnimatedGIFController.m"];
      [CRLAssertionHandler handleFailureInFunction:v18 file:v19 lineNumber:152 isFatal:0 description:"%@ can only play GIFs, HEIFs or PNGs with multiple frames.", objc_opt_class()];
    }

    objc_storeWeak(&v8->_delegate, delegateCopy);
    v20 = objc_alloc_init(NSMutableSet);
    layers = v8->_layers;
    v8->_layers = v20;

    [(CRLAnimatedGIFController *)v8 p_prepareFrames];
    v8->_timebaseLock._os_unfair_lock_opaque = 0;
    __dmb(0xBu);
    HostTimeClock = CMClockGetHostTimeClock();
    v23 = CMTimebaseCreateWithSourceClock(kCFAllocatorDefault, HostTimeClock, &v8->_timebase);
    if (v23)
    {
      +[CRLAssertionHandler _atomicIncrementAssertCount];
      if (qword_101AD5A10 != -1)
      {
        sub_10139AC70();
      }

      if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
      {
        sub_10139AC98();
      }

      if (qword_101AD5A10 != -1)
      {
        sub_10139AD20();
      }

      v24 = off_1019EDA68;
      if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
      {
        sub_10139AD48(v24);
      }

      v25 = [NSString stringWithUTF8String:"[CRLAnimatedGIFController initWithImageSource:delegate:]"];
      v26 = [NSString stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/Freeform/Source/CRLKit/CRLAnimatedGIFController.m"];
      [CRLAssertionHandler handleFailureInFunction:v25 file:v26 lineNumber:164 isFatal:0 description:"CMTimebaseCreateWithMasterClock failed (%d)", v23];
    }

    if (!v8->_timebase)
    {
      +[CRLAssertionHandler _atomicIncrementAssertCount];
      if (qword_101AD5A10 != -1)
      {
        sub_10139AE00();
      }

      if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
      {
        sub_10139AE28();
      }

      if (qword_101AD5A10 != -1)
      {
        sub_10139AEC4();
      }

      v27 = off_1019EDA68;
      if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
      {
        sub_10139AEEC(v27);
      }

      v28 = [NSString stringWithUTF8String:"[CRLAnimatedGIFController initWithImageSource:delegate:]"];
      v29 = [NSString stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/Freeform/Source/CRLKit/CRLAnimatedGIFController.m"];
      [CRLAssertionHandler handleFailureInFunction:v28 file:v29 lineNumber:165 isFatal:0 description:"invalid nil value for '%{public}s'", "_timebase"];
    }

    v30 = dispatch_source_create(&_dispatch_source_type_timer, 0, 0, &_dispatch_main_q);
    timebaseTimerSource = v8->_timebaseTimerSource;
    v8->_timebaseTimerSource = v30;

    objc_initWeak(&location, v8);
    v32 = v8->_timebaseTimerSource;
    handler[0] = _NSConcreteStackBlock;
    handler[1] = 3221225472;
    handler[2] = sub_1005AC9D4;
    handler[3] = &unk_10183AF10;
    objc_copyWeak(&v47, &location);
    dispatch_source_set_event_handler(v32, handler);
    dispatch_resume(v8->_timebaseTimerSource);
    v33 = CMTimebaseAddTimerDispatchSource(v8->_timebase, v8->_timebaseTimerSource);
    if (v33)
    {
      v34 = +[CRLAssertionHandler _atomicIncrementAssertCount];
      if (qword_101AD5A10 != -1)
      {
        sub_10139AFA4();
      }

      if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
      {
        sub_10139AFCC();
      }

      if (qword_101AD5A10 != -1)
      {
        sub_10139B054();
      }

      v35 = off_1019EDA68;
      if (os_log_type_enabled(v35, OS_LOG_TYPE_ERROR))
      {
        v36 = +[CRLAssertionHandler packedBacktraceString];
        sub_101318C3C(v36, buf, v34, v35);
      }

      v37 = [NSString stringWithUTF8String:"[CRLAnimatedGIFController initWithImageSource:delegate:]"];
      v38 = [NSString stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/Freeform/Source/CRLKit/CRLAnimatedGIFController.m"];
      [CRLAssertionHandler handleFailureInFunction:v37 file:v38 lineNumber:176 isFatal:0 description:"CMTimebaseAddTimerDispatchSource failed (%d)", v33];
    }

    *&v8->_timebaseStartTime.value = *&kCMTimeZero.value;
    v8->_timebaseStartTime.epoch = kCMTimeZero.epoch;
    [(CRLAnimatedGIFController *)v8 absoluteDuration];
    CMTimeMakeWithSeconds(&v45, v39, 1000000000);
    *&v8->_timebaseEndTime.value = *&v45.value;
    repeatMode = v8->_repeatMode;
    v8->_timebaseEndTime.epoch = v45.epoch;
    v8->_timebaseRepeatMode = repeatMode;
    v41 = objc_alloc_init(NSMutableSet);
    observationTokens = v8->_observationTokens;
    v8->_observationTokens = v41;

    objc_destroyWeak(&v47);
    objc_destroyWeak(&location);
  }

  return v8;
}

- (CRLAnimatedGIFController)initWithData:(id)data delegate:(id)delegate
{
  delegateCopy = delegate;
  newCGImageSource = [data newCGImageSource];
  v8 = [(CRLAnimatedGIFController *)self initWithImageSource:newCGImageSource delegate:delegateCopy];

  if (newCGImageSource)
  {
    CFRelease(newCGImageSource);
  }

  return v8;
}

- (void)dealloc
{
  if (self->_playing)
  {
    +[CRLAssertionHandler _atomicIncrementAssertCount];
    if (qword_101AD5A10 != -1)
    {
      sub_10139B07C();
    }

    if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
    {
      sub_10139B090();
    }

    if (qword_101AD5A10 != -1)
    {
      sub_10139B118();
    }

    v3 = off_1019EDA68;
    if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
    {
      sub_10130DA10(v3);
    }

    v4 = [NSString stringWithUTF8String:"[CRLAnimatedGIFController dealloc]"];
    v5 = [NSString stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/Freeform/Source/CRLKit/CRLAnimatedGIFController.m"];
    [CRLAssertionHandler handleFailureInFunction:v4 file:v5 lineNumber:198 isFatal:0 description:"Reached -dealloc without teardown being hit."];
  }

  if ([(NSMutableSet *)self->_layers count])
  {
    +[CRLAssertionHandler _atomicIncrementAssertCount];
    if (qword_101AD5A10 != -1)
    {
      sub_10139B140();
    }

    if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
    {
      sub_10139B168();
    }

    if (qword_101AD5A10 != -1)
    {
      sub_10139B1F0();
    }

    v6 = off_1019EDA68;
    if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
    {
      sub_10130DA10(v6);
    }

    v7 = [NSString stringWithUTF8String:"[CRLAnimatedGIFController dealloc]"];
    v8 = [NSString stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/Freeform/Source/CRLKit/CRLAnimatedGIFController.m"];
    [CRLAssertionHandler handleFailureInFunction:v7 file:v8 lineNumber:199 isFatal:0 description:"Reached -dealloc with associated animated GIF layers."];
  }

  imageSource = self->_imageSource;
  if (imageSource)
  {
    CFRelease(imageSource);
  }

  v10.receiver = self;
  v10.super_class = CRLAnimatedGIFController;
  [(CRLAnimatedGIFController *)&v10 dealloc];
}

- (void)teardown
{
  [(CRLDisplayLink *)self->_displayLink invalidate];
  os_unfair_lock_lock(&self->_timebaseLock);
  v3 = CMTimebaseRemoveTimerDispatchSource(self->_timebase, self->_timebaseTimerSource);
  if (v3)
  {
    v4 = v3;
    +[CRLAssertionHandler _atomicIncrementAssertCount];
    if (qword_101AD5A10 != -1)
    {
      sub_10139B218();
    }

    if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
    {
      sub_10139B22C();
    }

    if (qword_101AD5A10 != -1)
    {
      sub_10139B2B4();
    }

    v5 = off_1019EDA68;
    if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
    {
      sub_10130DA10(v5);
    }

    v6 = [NSString stringWithUTF8String:"[CRLAnimatedGIFController teardown]"];
    v7 = [NSString stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/Freeform/Source/CRLKit/CRLAnimatedGIFController.m"];
    [CRLAssertionHandler handleFailureInFunction:v6 file:v7 lineNumber:212 isFatal:0 description:"CMTimebaseRemoveTimerDispatchSource failed (%d)", v4];
  }

  dispatch_source_cancel(self->_timebaseTimerSource);
  os_unfair_lock_unlock(&self->_timebaseLock);
  self->_playing = 0;
  [(CRLAnimatedGIFController *)self p_updateDisplayLink];
  v8 = [(NSMutableSet *)self->_layers copy];
  [v8 makeObjectsPerformSelector:"setController:" withObject:0];

  v16 = 0u;
  v17 = 0u;
  v14 = 0u;
  v15 = 0u;
  v9 = self->_observationTokens;
  v10 = [(NSMutableSet *)v9 countByEnumeratingWithState:&v14 objects:v18 count:16];
  if (v10)
  {
    v11 = v10;
    v12 = *v15;
    do
    {
      for (i = 0; i != v11; i = i + 1)
      {
        if (*v15 != v12)
        {
          objc_enumerationMutation(v9);
        }

        [(CRLAnimatedGIFController *)self crl_removeObserverForToken:*(*(&v14 + 1) + 8 * i)];
      }

      v11 = [(NSMutableSet *)v9 countByEnumeratingWithState:&v14 objects:v18 count:16];
    }

    while (v11);
  }
}

- (void)setPlaying:(BOOL)playing
{
  if (self->_playing != playing)
  {
    v16 = v8;
    v17 = v7;
    v18 = v4;
    v19 = v3;
    self->_playing = playing;
    if (playing)
    {
      [(CRLAnimatedGIFController *)self absoluteCurrentTime];
      v11 = v10;
      [(CRLAnimatedGIFController *)self startTime];
      v13 = v12;
      [(CRLAnimatedGIFController *)self endTime];
      if (v11 < v13 || v11 > v14 + -0.01)
      {
        [(CRLAnimatedGIFController *)self p_setAbsoluteCurrentTime:v13, v16, v17, v4, v19, v5];
      }
    }

    v15 = 0.0;
    if (self->_playing)
    {
      *&v15 = 1.0;
    }

    [(CRLAnimatedGIFController *)self setRate:v15, v16, v17, v18, v19];

    [(CRLAnimatedGIFController *)self p_updateDisplayLink];
  }
}

- (float)rate
{
  os_unfair_lock_lock(&self->_timebaseLock);
  Rate = CMTimebaseGetRate(self->_timebase);
  os_unfair_lock_unlock(&self->_timebaseLock);
  return Rate;
}

- (void)setRate:(float)rate
{
  os_unfair_lock_lock(&self->_timebaseLock);
  *&v5 = rate;
  [(CRLAnimatedGIFController *)self p_setRate:v5];

  os_unfair_lock_unlock(&self->_timebaseLock);
}

- (void)p_setRate:(float)rate
{
  v4 = CMTimebaseSetRate(self->_timebase, rate);
  if (v4)
  {
    v5 = v4;
    +[CRLAssertionHandler _atomicIncrementAssertCount];
    if (qword_101AD5A10 != -1)
    {
      sub_10139B2DC();
    }

    if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
    {
      sub_10139B2F0();
    }

    if (qword_101AD5A10 != -1)
    {
      sub_10139B378();
    }

    v6 = off_1019EDA68;
    if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
    {
      sub_10130DA10(v6);
    }

    v7 = [NSString stringWithUTF8String:"[CRLAnimatedGIFController p_setRate:]"];
    v8 = [NSString stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/Freeform/Source/CRLKit/CRLAnimatedGIFController.m"];
    [CRLAssertionHandler handleFailureInFunction:v7 file:v8 lineNumber:274 isFatal:0 description:"CMTimebaseSetRate failed (%d)", v5];
  }

  [(CRLAnimatedGIFController *)self p_updateTimebaseTimerSourceNextFireTime];
}

- (double)currentTime
{
  [(CRLAnimatedGIFController *)self absoluteCurrentTime];
  v4 = v3;
  [(CRLAnimatedGIFController *)self startTime];
  v6 = v4 - v5;
  [(CRLAnimatedGIFController *)self endTime];

  return sub_1004C3240(v6, 0.0, v7);
}

- (void)p_setAbsoluteCurrentTime:(double)time
{
  os_unfair_lock_lock(&self->_timebaseLock);
  timebase = self->_timebase;
  CMTimeMakeWithSeconds(&time, time, 1000000000);
  CMTimebaseSetTime(timebase, &time);
  os_unfair_lock_unlock(&self->_timebaseLock);
}

- (double)absoluteCurrentTime
{
  memset(&v9, 0, sizeof(v9));
  HostTimeClock = CMClockGetHostTimeClock();
  CMClockGetTime(&v9, HostTimeClock);
  os_unfair_lock_lock(&self->_timebaseLock);
  Rate = CMTimebaseGetRate(self->_timebase);
  v7 = v9;
  [(CRLAnimatedGIFController *)self p_timebaseTimeForHostTime:&v7 rate:0 updatedRate:0 anchorTime:Rate];
  Seconds = CMTimeGetSeconds(&time);
  os_unfair_lock_unlock(&self->_timebaseLock);
  return Seconds;
}

- (double)remainingTime
{
  [(CRLAnimatedGIFController *)self absoluteDuration];
  v4 = v3;
  [(CRLAnimatedGIFController *)self currentTime];
  return v4 - v5;
}

- (double)absoluteDuration
{
  lastObject = [(NSArray *)self->_frames lastObject];
  [lastObject time];
  v4 = v3;

  return v4;
}

- (double)duration
{
  [(CRLAnimatedGIFController *)self endTime];
  v4 = v3;
  [(CRLAnimatedGIFController *)self startTime];
  v6 = v4 - v5;
  [(CRLAnimatedGIFController *)self absoluteDuration];
  v8 = v7;
  [(CRLAnimatedGIFController *)self startTime];

  return sub_1004C3240(v6, 0.0, v8 - v9);
}

- (void)setStartTime:(double)time
{
  if (self->_startTime != time)
  {
    v7 = v3;
    v8 = v4;
    self->_startTime = time;
    os_unfair_lock_lock(&self->_timebaseLock);
    CMTimeMakeWithSeconds(&v6, self->_startTime, 1000000000);
    self->_timebaseStartTime = v6;
    [(CRLAnimatedGIFController *)self p_updateTimebaseTimerSourceNextFireTime];
    os_unfair_lock_unlock(&self->_timebaseLock);
  }
}

- (double)endTime
{
  result = self->_endTime;
  if (result == 0.0)
  {
    [(CRLAnimatedGIFController *)self absoluteDuration];
  }

  return result;
}

- (void)setEndTime:(double)time
{
  if (self->_endTime != time)
  {
    v7 = v3;
    v8 = v4;
    self->_endTime = time;
    os_unfair_lock_lock(&self->_timebaseLock);
    CMTimeMakeWithSeconds(&v6, self->_endTime, 1000000000);
    self->_timebaseEndTime = v6;
    [(CRLAnimatedGIFController *)self p_updateTimebaseTimerSourceNextFireTime];
    os_unfair_lock_unlock(&self->_timebaseLock);
  }
}

- (void)setRepeatMode:(int64_t)mode
{
  if (self->_repeatMode != mode)
  {
    self->_repeatMode = mode;
    if (mode != 2)
    {
      [(CRLAnimatedGIFController *)self rate];
      if (*&v5 < 0.0)
      {
        LODWORD(v5) = 1.0;
        [(CRLAnimatedGIFController *)self setRate:v5];
      }
    }

    os_unfair_lock_lock(&self->_timebaseLock);
    self->_timebaseRepeatMode = self->_repeatMode;
    [(CRLAnimatedGIFController *)self p_updateTimebaseTimerSourceNextFireTime];

    os_unfair_lock_unlock(&self->_timebaseLock);
  }
}

- (void)beginScrubbing
{
  scrubbingCount = self->_scrubbingCount;
  self->_scrubbingCount = scrubbingCount + 1;
  if (!scrubbingCount)
  {
    v9 = v2;
    v10 = v3;
    [(CRLAnimatedGIFController *)self rate];
    self->_rateBeforeScrubbing = v6;
    [(CRLAnimatedGIFController *)self willChangeValueForKey:@"rate"];
    os_unfair_lock_lock(&self->_timebaseLock);
    [(CRLAnimatedGIFController *)self p_setRate:0.0];
    self->_timebaseStartTime = kCMTimeZero;
    [(CRLAnimatedGIFController *)self absoluteDuration];
    CMTimeMakeWithSeconds(&v8, v7, 1000000000);
    self->_timebaseEndTime = v8;
    self->_timebaseRepeatMode = 0;
    os_unfair_lock_unlock(&self->_timebaseLock);
    [(CRLAnimatedGIFController *)self didChangeValueForKey:@"rate"];
  }
}

- (void)scrubToTime:(double)time withTolerance:(double)tolerance completionHandler:(id)handler
{
  handlerCopy = handler;
  if (![(CRLAnimatedGIFController *)self isScrubbing])
  {
    +[CRLAssertionHandler _atomicIncrementAssertCount];
    if (qword_101AD5A10 != -1)
    {
      sub_10139B3A0();
    }

    if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
    {
      sub_10139B3B4();
    }

    if (qword_101AD5A10 != -1)
    {
      sub_10139B43C();
    }

    v8 = off_1019EDA68;
    if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
    {
      sub_10130DA10(v8);
    }

    v9 = [NSString stringWithUTF8String:"[CRLAnimatedGIFController scrubToTime:withTolerance:completionHandler:]"];
    v10 = [NSString stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/Freeform/Source/CRLKit/CRLAnimatedGIFController.m"];
    [CRLAssertionHandler handleFailureInFunction:v9 file:v10 lineNumber:412 isFatal:0 description:"Scrubbing to time when not known to be scrubbing!"];
  }

  Main = CFRunLoopGetMain();
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1005ADB80;
  block[3] = &unk_10183F0D0;
  timeCopy = time;
  block[4] = self;
  v14 = handlerCopy;
  v12 = handlerCopy;
  CFRunLoopPerformBlock(Main, kCFRunLoopCommonModes, block);
}

- (void)endScrubbing
{
  scrubbingCount = self->_scrubbingCount;
  if (scrubbingCount)
  {
    goto LABEL_11;
  }

  +[CRLAssertionHandler _atomicIncrementAssertCount];
  if (qword_101AD5A10 != -1)
  {
    sub_10139B464();
  }

  if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
  {
    sub_10139B478();
  }

  if (qword_101AD5A10 != -1)
  {
    sub_10139B500();
  }

  v4 = off_1019EDA68;
  if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
  {
    sub_10130DA10(v4);
  }

  v5 = [NSString stringWithUTF8String:"[CRLAnimatedGIFController endScrubbing]"];
  v6 = [NSString stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/Freeform/Source/CRLKit/CRLAnimatedGIFController.m"];
  [CRLAssertionHandler handleFailureInFunction:v5 file:v6 lineNumber:430 isFatal:0 description:"Uneven begin/end scrubbing calls!"];

  scrubbingCount = self->_scrubbingCount;
  if (scrubbingCount)
  {
LABEL_11:
    v7 = scrubbingCount - 1;
    self->_scrubbingCount = v7;
    if (!v7)
    {
      [(CRLAnimatedGIFController *)self willChangeValueForKey:@"rate"];
      os_unfair_lock_lock(&self->_timebaseLock);
      CMTimeMakeWithSeconds(&v10, self->_startTime, 1000000000);
      self->_timebaseStartTime = v10;
      CMTimeMakeWithSeconds(&v10, self->_endTime, 1000000000);
      HIDWORD(v8) = HIDWORD(v10.value);
      *&self->_timebaseEndTime.value = *&v10.value;
      repeatMode = self->_repeatMode;
      self->_timebaseEndTime.epoch = v10.epoch;
      self->_timebaseRepeatMode = repeatMode;
      *&v8 = self->_rateBeforeScrubbing;
      [(CRLAnimatedGIFController *)self p_setRate:v8];
      os_unfair_lock_unlock(&self->_timebaseLock);
      [(CRLAnimatedGIFController *)self didChangeValueForKey:@"rate"];
    }
  }
}

- (void)seekToBeginning
{
  [(CRLAnimatedGIFController *)self startTime];

  [(CRLAnimatedGIFController *)self p_setAbsoluteCurrentTime:?];
}

- (void)seekToEnd
{
  [(CRLAnimatedGIFController *)self endTime];

  [(CRLAnimatedGIFController *)self p_setAbsoluteCurrentTime:?];
}

- (double)timeForHostTime:(double)time
{
  os_unfair_lock_lock(&self->_timebaseLock);
  Rate = CMTimebaseGetRate(self->_timebase);
  CMTimeMakeWithSeconds(&v8, time, 1000000000);
  [(CRLAnimatedGIFController *)self p_timebaseTimeForHostTime:&v8 rate:0 updatedRate:0 anchorTime:Rate];
  Seconds = CMTimeGetSeconds(&time);
  os_unfair_lock_unlock(&self->_timebaseLock);
  return Seconds;
}

- (BOOL)hasNewImageForTime:(double)time sinceTime:(double)sinceTime
{
  v12 = 0;
  v7 = [(CRLAnimatedGIFController *)self p_frameAtTime:0 fromIndex:&v12 frameIndex:sinceTime];
  if (time < sinceTime)
  {
    v8 = 0;
  }

  else
  {
    v8 = v12;
  }

  v9 = [(CRLAnimatedGIFController *)self p_frameAtTime:v8 fromIndex:0 frameIndex:time];
  v10 = v9 != v7;

  return v10;
}

- (CGImage)imageForTime:(double)time
{
  v3 = [(CRLAnimatedGIFController *)self p_frameAtTime:0 fromIndex:0 frameIndex:time];
  image = [v3 image];

  return image;
}

- (CGImage)imageForCurrentTime
{
  [(CRLAnimatedGIFController *)self absoluteCurrentTime];

  return [(CRLAnimatedGIFController *)self imageForTime:?];
}

- (id)p_frameAtTime:(double)time fromIndex:(unint64_t)index frameIndex:(unint64_t *)frameIndex
{
  [(CRLAnimatedGIFController *)self absoluteDuration];
  v10 = v9;
  v11 = [(NSArray *)self->_frames objectAtIndexedSubscript:index];
  v12 = [(NSArray *)self->_frames count];
  if ((index + 1) < v12)
  {
    v13 = v12;
    v14 = fmin(time, v10 + -2.22044605e-16);
    v15 = [(NSArray *)self->_frames objectAtIndexedSubscript:?];
    [v15 time];
    if (v16 >= v14)
    {
LABEL_6:
      if (frameIndex)
      {
        *frameIndex = index;
      }
    }

    else
    {
      v17 = v13 - 2;
      while (1)
      {
        v18 = v11;
        v11 = v15;

        if (v17 == index)
        {
          break;
        }

        v15 = [(NSArray *)self->_frames objectAtIndexedSubscript:index + 2];
        [v15 time];
        ++index;
        if (v19 >= v14)
        {
          goto LABEL_6;
        }
      }
    }
  }

  return v11;
}

- (id)addPeriodicTimeObserverForInterval:(double)interval block:(id)block
{
  blockCopy = block;
  v6 = dispatch_source_create(&_dispatch_source_type_timer, 0, 0, &_dispatch_main_q);
  v7 = dispatch_time(0, (interval * 1000000000.0));
  dispatch_source_set_timer(v6, v7, (interval * 1000000000.0), vcvtd_n_f64_u64((interval * 1000000000.0), 2uLL));
  dispatch_source_set_event_handler(v6, blockCopy);

  dispatch_resume(v6);

  return v6;
}

- (void)addLayer:(id)layer
{
  [(NSMutableSet *)self->_layers addObject:layer];

  [(CRLAnimatedGIFController *)self p_updateDisplayLink];
}

- (void)removeLayer:(id)layer
{
  [(NSMutableSet *)self->_layers removeObject:layer];

  [(CRLAnimatedGIFController *)self p_updateDisplayLink];
}

- (id)newLayer
{
  v3 = objc_alloc_init(CRLAnimatedGIFLayer);
  [(CRLAnimatedGIFLayer *)v3 setController:self];
  return v3;
}

- (void)p_prepareFrames
{
  v3 = objc_alloc_init(NSMutableArray);
  Count = CGImageSourceGetCount(self->_imageSource);
  if (Count)
  {
    v6 = Count;
    v7 = 0;
    v8 = 1;
    v9 = 0.0;
    *&v5 = 67109378;
    v27 = v5;
    v28 = v3;
    do
    {
      v10 = CGImageSourceCopyPropertiesAtIndex(self->_imageSource, v7, 0);
      v11 = v10;
      if (!v7)
      {
        Value = CFDictionaryGetValue(v10, kCGImagePropertyPixelWidth);
        v13 = CFDictionaryGetValue(v11, kCGImagePropertyPixelHeight);
        v29 = 0;
        valuePtr = 0;
        CFNumberGetValue(Value, kCFNumberNSIntegerType, &valuePtr);
        CFNumberGetValue(v13, kCFNumberNSIntegerType, &v29);
        v14 = valuePtr * v6 * v29;
        if (v14 <= 0)
        {
          v15 = +[CRLAssertionHandler _atomicIncrementAssertCount];
          if (qword_101AD5A10 != -1)
          {
            sub_10139B528();
          }

          v16 = off_1019EDA68;
          if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
          {
            *buf = 67109890;
            v32 = v15;
            v33 = 2082;
            v34 = "[CRLAnimatedGIFController p_prepareFrames]";
            v35 = 2082;
            v36 = "/Library/Caches/com.apple.xbs/Sources/Freeform/Source/CRLKit/CRLAnimatedGIFController.m";
            v37 = 1024;
            v38 = 604;
            _os_log_error_impl(&_mh_execute_header, v16, OS_LOG_TYPE_ERROR, "#Assert *** Assertion failure #%u: %{public}s %{public}s:%d We expect at least one pixel in the GIF.", buf, 0x22u);
          }

          if (qword_101AD5A10 != -1)
          {
            sub_10139B550();
          }

          v17 = off_1019EDA68;
          if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
          {
            v23 = v17;
            v24 = +[CRLAssertionHandler packedBacktraceString];
            *buf = v27;
            v32 = v15;
            v33 = 2114;
            v34 = v24;
            _os_log_error_impl(&_mh_execute_header, v23, OS_LOG_TYPE_ERROR, "#Assert *** Assertion failure #%u: Assertion backtrace: >>%{public}@<<", buf, 0x12u);
          }

          v18 = [NSString stringWithUTF8String:"[CRLAnimatedGIFController p_prepareFrames]", v27];
          v19 = [NSString stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/Freeform/Source/CRLKit/CRLAnimatedGIFController.m"];
          [CRLAssertionHandler handleFailureInFunction:v18 file:v19 lineNumber:604 isFatal:0 description:"We expect at least one pixel in the GIF."];
        }

        v8 &= v14 < 6500001;
        v3 = v28;
      }

      [CRLAnimatedGIFController delayTimeForImageProperties:v11, v27];
      v21 = v20;
      if (v11)
      {
        CFRelease(v11);
      }

      v22 = [[CRLAnimatedGIFFrame alloc] initWithImageSource:self->_imageSource index:v7 time:v8 & 1 preloadImage:v9];
      [(NSArray *)v3 addObject:v22];
      v9 = v9 + v21;

      ++v7;
    }

    while (v6 != v7);
  }

  else
  {
    v8 = 1;
    v9 = 0.0;
  }

  v25 = [[CRLAnimatedGIFFrame alloc] initWithImageSource:self->_imageSource index:-1 time:v8 & 1 preloadImage:v9];
  [(NSArray *)v3 addObject:v25];
  frames = self->_frames;
  self->_frames = v3;
}

+ (double)delayTimeForImageProperties:(__CFDictionary *)properties
{
  if (!properties)
  {
    return 0.1;
  }

  Value = CFDictionaryGetValue(properties, kCGImagePropertyGIFDictionary);
  v5 = CFDictionaryGetValue(properties, kCGImagePropertyHEICSDictionary);
  v6 = CFDictionaryGetValue(properties, kCGImagePropertyPNGDictionary);
  if (Value)
  {
    v7 = CFDictionaryGetValue(Value, kCGImagePropertyGIFUnclampedDelayTime);
    if (!v7)
    {
      v7 = CFDictionaryGetValue(Value, kCGImagePropertyGIFDelayTime);
      if (!v7)
      {
        return 0.1;
      }
    }

    v8 = v7;
    [v7 doubleValue];
    if (v9 < 0.011)
    {
      v10 = [NSNumber numberWithDouble:0.1];

      v8 = v10;
      if (!v10)
      {
        return 0.1;
      }
    }

LABEL_16:
    [v8 doubleValue];
    v16 = v15;

    return v16;
  }

  if (v5)
  {
    v11 = CFDictionaryGetValue(v5, kCGImagePropertyHEICSUnclampedDelayTime);
    if (!v11)
    {
      v12 = kCGImagePropertyHEICSDelayTime;
      v13 = v5;
      goto LABEL_15;
    }

LABEL_13:
    v8 = v11;
    goto LABEL_16;
  }

  v14 = v6;
  if (!v6)
  {
    return 0.1;
  }

  v11 = CFDictionaryGetValue(v6, kCGImagePropertyAPNGUnclampedDelayTime);
  if (v11)
  {
    goto LABEL_13;
  }

  v12 = kCGImagePropertyAPNGDelayTime;
  v13 = v14;
LABEL_15:
  v8 = CFDictionaryGetValue(v13, v12);
  if (v8)
  {
    goto LABEL_16;
  }

  return 0.1;
}

- ($3CC8671D27C23BF42ADDB32F2B5E48AE)p_timebaseTimeForHostTime:(SEL)time rate:(id *)rate updatedRate:(double)updatedRate anchorTime:(double *)anchorTime
{
  if ((anchorTime != 0) != (a7 != 0))
  {
    +[CRLAssertionHandler _atomicIncrementAssertCount];
    if (qword_101AD5A10 != -1)
    {
      sub_10139B578();
    }

    if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
    {
      sub_10139B58C();
    }

    if (qword_101AD5A10 != -1)
    {
      sub_10139B614();
    }

    v13 = off_1019EDA68;
    if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
    {
      sub_10130DA10(v13);
    }

    v14 = [NSString stringWithUTF8String:"[CRLAnimatedGIFController p_timebaseTimeForHostTime:rate:updatedRate:anchorTime:]"];
    v15 = [NSString stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/Freeform/Source/CRLKit/CRLAnimatedGIFController.m"];
    [CRLAssertionHandler handleFailureInFunction:v14 file:v15 lineNumber:668 isFatal:0 description:"Should not be requesting an updated rate without also requesting an updated anchor time."];
  }

  HostTimeClock = CMClockGetHostTimeClock();
  memset(&v36, 0, sizeof(v36));
  timebase = self->_timebase;
  time = *rate;
  CMSyncConvertTime(&v36, &time, HostTimeClock, timebase);
  v18 = *&v36.value;
  *&retstr->var0 = *&v36.value;
  epoch = v36.epoch;
  retstr->var3 = v36.epoch;
  value = kCMTimeInvalid.value;
  flags = kCMTimeInvalid.flags;
  timescale = kCMTimeInvalid.timescale;
  v21 = kCMTimeInvalid.epoch;
  *&time.value = v18;
  time.epoch = epoch;
  time2 = self->_timebaseEndTime;
  result = CMTimeCompare(&time, &time2);
  if (result < 1)
  {
    time = v36;
    time2 = self->_timebaseStartTime;
    result = CMTimeCompare(&time, &time2);
    if ((result & 0x80000000) != 0)
    {
      *&retstr->var0 = *&self->_timebaseStartTime.value;
      retstr->var3 = self->_timebaseStartTime.epoch;
      if (anchorTime | a7)
      {
        timebaseRepeatMode = self->_timebaseRepeatMode;
        if (timebaseRepeatMode)
        {
          if (timebaseRepeatMode == 2)
          {
            updatedRateCopy9 = updatedRate;
            if (updatedRate < 0.0)
            {
              updatedRateCopy9 = -updatedRate;
            }
          }

          else
          {
            updatedRateCopy9 = updatedRate;
            if (timebaseRepeatMode == 1)
            {
              updatedRateCopy9 = updatedRate;
              if (updatedRate < 0.0)
              {
                *&retstr->var0 = *&self->_timebaseEndTime.value;
                retstr->var3 = self->_timebaseEndTime.epoch;
                updatedRateCopy9 = updatedRate;
              }
            }
          }

          if (updatedRate < 0.0 && updatedRateCopy9 != 0.0)
          {
            time2 = v36;
            *&rhs.value = *&self->_timebaseStartTime.value;
            v27 = self->_timebaseStartTime.epoch;
            goto LABEL_32;
          }

LABEL_38:
          v26 = v21;
          goto LABEL_39;
        }

LABEL_26:
        updatedRateCopy9 = 0.0;
        goto LABEL_38;
      }
    }
  }

  else
  {
    *&retstr->var0 = *&self->_timebaseEndTime.value;
    retstr->var3 = self->_timebaseEndTime.epoch;
    if (anchorTime | a7)
    {
      v23 = self->_timebaseRepeatMode;
      if (v23)
      {
        if (v23 == 2)
        {
          updatedRateCopy9 = updatedRate;
          if (updatedRate > 0.0)
          {
            updatedRateCopy9 = -updatedRate;
          }
        }

        else
        {
          updatedRateCopy9 = updatedRate;
          if (v23 == 1)
          {
            updatedRateCopy9 = updatedRate;
            if (updatedRate > 0.0)
            {
              *&retstr->var0 = *&self->_timebaseStartTime.value;
              retstr->var3 = self->_timebaseStartTime.epoch;
              updatedRateCopy9 = updatedRate;
            }
          }
        }

        if (updatedRate > 0.0 && updatedRateCopy9 != 0.0)
        {
          time2 = self->_timebaseEndTime;
          *&rhs.value = *&v36.value;
          v27 = v36.epoch;
LABEL_32:
          rhs.epoch = v27;
          result = CMTimeSubtract(&time, &time2, &rhs);
          value = time.value;
          flags = time.flags;
          timescale = time.timescale;
          v26 = time.epoch;
          goto LABEL_39;
        }

        goto LABEL_38;
      }

      goto LABEL_26;
    }
  }

  v26 = v21;
  updatedRateCopy9 = updatedRate;
LABEL_39:
  *&time.value = *&kCMTimeInvalid.value;
  time.epoch = v21;
  if (!a7 || (flags & 1) == 0)
  {
LABEL_43:
    if (!anchorTime)
    {
      goto LABEL_45;
    }

    goto LABEL_44;
  }

  v28 = CMTimebaseCopySource(self->_timebase);
  if (v28)
  {
    v29 = v28;
    time2 = *rate;
    rhs.value = value;
    rhs.timescale = timescale;
    rhs.flags = flags;
    rhs.epoch = v26;
    CMTimeAdd(&time, &time2, &rhs);
    rhs = time;
    CMSyncConvertTime(&time2, &rhs, HostTimeClock, v29);
    time = time2;
    CFRelease(v29);
    goto LABEL_43;
  }

  +[CRLAssertionHandler _atomicIncrementAssertCount];
  if (qword_101AD5A10 != -1)
  {
    sub_10139B63C();
  }

  if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
  {
    sub_10139B664();
  }

  if (qword_101AD5A10 != -1)
  {
    sub_10139B700();
  }

  v30 = off_1019EDA68;
  if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
  {
    sub_10130DA10(v30);
  }

  v31 = [NSString stringWithUTF8String:"[CRLAnimatedGIFController p_timebaseTimeForHostTime:rate:updatedRate:anchorTime:]"];
  v32 = [NSString stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/Freeform/Source/CRLKit/CRLAnimatedGIFController.m"];
  [CRLAssertionHandler handleFailureInFunction:v31 file:v32 lineNumber:737 isFatal:0 description:"invalid nil value for '%{public}s'", "masterClockOrTimebase"];

  if (anchorTime)
  {
LABEL_44:
    *anchorTime = updatedRateCopy9;
  }

LABEL_45:
  if (a7)
  {
    *a7 = time;
  }

  return result;
}

- (void)p_updateTimebaseTimerSourceNextFireTime
{
  if (!+[NSThread isMainThread])
  {
    +[CRLAssertionHandler _atomicIncrementAssertCount];
    if (qword_101AD5A10 != -1)
    {
      sub_10139B728();
    }

    if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
    {
      sub_10139B73C();
    }

    if (qword_101AD5A10 != -1)
    {
      sub_10139B7C4();
    }

    v3 = off_1019EDA68;
    if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
    {
      sub_10130DA10(v3);
    }

    v4 = [NSString stringWithUTF8String:"[CRLAnimatedGIFController p_updateTimebaseTimerSourceNextFireTime]"];
    v5 = [NSString stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/Freeform/Source/CRLKit/CRLAnimatedGIFController.m"];
    [CRLAssertionHandler handleFailureInFunction:v4 file:v5 lineNumber:759 isFatal:0 description:"This operation must only be performed on the main thread."];
  }

  v16 = kCMTimeInvalid;
  Rate = CMTimebaseGetRate(self->_timebase);
  if (Rate <= 0.0)
  {
    if (Rate >= 0.0)
    {
      goto LABEL_16;
    }

    v7 = 80;
  }

  else
  {
    v7 = 104;
  }

  v16 = *(&self->super.isa + v7);
LABEL_16:
  timebase = self->_timebase;
  timebaseTimerSource = self->_timebaseTimerSource;
  fireTime = v16;
  v10 = CMTimebaseSetTimerDispatchSourceNextFireTime(timebase, timebaseTimerSource, &fireTime, 0);
  if (v10)
  {
    v11 = v10;
    +[CRLAssertionHandler _atomicIncrementAssertCount];
    if (qword_101AD5A10 != -1)
    {
      sub_10139B7EC();
    }

    if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
    {
      sub_10139B814();
    }

    if (qword_101AD5A10 != -1)
    {
      sub_10139B89C();
    }

    v12 = off_1019EDA68;
    if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
    {
      sub_10130DA10(v12);
    }

    v13 = [NSString stringWithUTF8String:"[CRLAnimatedGIFController p_updateTimebaseTimerSourceNextFireTime]"];
    v14 = [NSString stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/Freeform/Source/CRLKit/CRLAnimatedGIFController.m"];
    [CRLAssertionHandler handleFailureInFunction:v13 file:v14 lineNumber:772 isFatal:0 description:"CMTimebaseSetTimerDispatchSourceNextFireTime failed (%d)", v11];
  }
}

- (void)p_timebaseTimeDidChangeToStartOrEndTime
{
  if (!+[NSThread isMainThread])
  {
    +[CRLAssertionHandler _atomicIncrementAssertCount];
    if (qword_101AD5A10 != -1)
    {
      sub_10139B8C4();
    }

    if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
    {
      sub_10139B8D8();
    }

    if (qword_101AD5A10 != -1)
    {
      sub_10139B960();
    }

    v3 = off_1019EDA68;
    if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
    {
      sub_10130DA10(v3);
    }

    v4 = [NSString stringWithUTF8String:"[CRLAnimatedGIFController p_timebaseTimeDidChangeToStartOrEndTime]"];
    v5 = [NSString stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/Freeform/Source/CRLKit/CRLAnimatedGIFController.m"];
    [CRLAssertionHandler handleFailureInFunction:v4 file:v5 lineNumber:776 isFatal:0 description:"This operation must only be performed on the main thread."];
  }

  memset(&v29, 0, sizeof(v29));
  HostTimeClock = CMClockGetHostTimeClock();
  CMClockGetTime(&v29, HostTimeClock);
  os_unfair_lock_lock(&self->_timebaseLock);
  Rate = CMTimebaseGetRate(self->_timebase);
  v28 = Rate;
  v23 = *&kCMTimeInvalid.value;
  *&v27.value = *&kCMTimeInvalid.value;
  epoch = kCMTimeInvalid.epoch;
  v27.epoch = epoch;
  memset(&v26, 0, sizeof(v26));
  fireTime = v29;
  [(CRLAnimatedGIFController *)self p_timebaseTimeForHostTime:&fireTime rate:&v28 updatedRate:&v27 anchorTime:Rate];
  os_unfair_lock_unlock(&self->_timebaseLock);
  if (v28 == Rate || v28 != 0.0)
  {
    if (v27.flags)
    {
      [(CRLAnimatedGIFController *)self willChangeValueForKey:@"rate", v28];
      os_unfair_lock_lock(&self->_timebaseLock);
      timebase = self->_timebase;
      timebaseTimerSource = self->_timebaseTimerSource;
      *&fireTime.value = v23;
      fireTime.epoch = epoch;
      v12 = CMTimebaseSetTimerDispatchSourceNextFireTime(timebase, timebaseTimerSource, &fireTime, 0);
      if (v12)
      {
        v13 = v12;
        +[CRLAssertionHandler _atomicIncrementAssertCount];
        if (qword_101AD5A10 != -1)
        {
          sub_10139B988();
        }

        if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
        {
          sub_10139B9B0();
        }

        if (qword_101AD5A10 != -1)
        {
          sub_10139BA38();
        }

        v14 = off_1019EDA68;
        if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
        {
          sub_10130DA10(v14);
        }

        v15 = [NSString stringWithUTF8String:"[CRLAnimatedGIFController p_timebaseTimeDidChangeToStartOrEndTime]"];
        v16 = [NSString stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/Freeform/Source/CRLKit/CRLAnimatedGIFController.m"];
        [CRLAssertionHandler handleFailureInFunction:v15 file:v16 lineNumber:802 isFatal:0 description:"CMTimebaseSetTimerDispatchSourceNextFireTime failed (%d)", v13];
      }

      v17 = self->_timebase;
      fireTime = v26;
      immediateSourceTime = v27;
      v18 = CMTimebaseSetRateAndAnchorTime(v17, v28, &fireTime, &immediateSourceTime);
      if (v18)
      {
        v19 = v18;
        +[CRLAssertionHandler _atomicIncrementAssertCount];
        if (qword_101AD5A10 != -1)
        {
          sub_10139BA60();
        }

        if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
        {
          sub_10139BA88();
        }

        if (qword_101AD5A10 != -1)
        {
          sub_10139BB10();
        }

        v20 = off_1019EDA68;
        if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
        {
          sub_10130DA10(v20);
        }

        v21 = [NSString stringWithUTF8String:"[CRLAnimatedGIFController p_timebaseTimeDidChangeToStartOrEndTime]"];
        v22 = [NSString stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/Freeform/Source/CRLKit/CRLAnimatedGIFController.m"];
        [CRLAssertionHandler handleFailureInFunction:v21 file:v22 lineNumber:806 isFatal:0 description:"CMTimebaseSetRateAndAnchorTime failed (%d)", v19];
      }

      [(CRLAnimatedGIFController *)self p_updateTimebaseTimerSourceNextFireTime];
      os_unfair_lock_unlock(&self->_timebaseLock);
      [(CRLAnimatedGIFController *)self didChangeValueForKey:@"rate"];
    }
  }

  else
  {
    [(CRLAnimatedGIFController *)self setPlaying:0];
    delegate = [(CRLAnimatedGIFController *)self delegate];
    [delegate playbackDidStopForPlayerController:self];
  }
}

- (void)p_updateDisplayLink
{
  if ([(NSMutableSet *)self->_layers count]&& self->_playing)
  {
    if (!self->_displayLink)
    {

      [(CRLAnimatedGIFController *)self p_enableDisplayLink];
    }
  }

  else if (self->_displayLink)
  {

    [(CRLAnimatedGIFController *)self p_disableDisplayLink];
  }
}

- (void)p_enableDisplayLink
{
  if (self->_displayLinkCounter)
  {
    +[CRLAssertionHandler _atomicIncrementAssertCount];
    if (qword_101AD5A10 != -1)
    {
      sub_10139BB38();
    }

    if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
    {
      sub_10139BB4C();
    }

    if (qword_101AD5A10 != -1)
    {
      sub_10139BBD4();
    }

    v3 = off_1019EDA68;
    if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
    {
      sub_10139BBFC(v3);
    }

    v4 = [NSString stringWithUTF8String:"[CRLAnimatedGIFController p_enableDisplayLink]"];
    v5 = [NSString stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/Freeform/Source/CRLKit/CRLAnimatedGIFController.m"];
    [CRLAssertionHandler handleFailureInFunction:v4 file:v5 lineNumber:830 isFatal:0 description:"Double-enabling display link"];

    v6 = self->_displayLinkCounter + 1;
  }

  else
  {
    v6 = 1;
  }

  self->_displayLinkCounter = v6;
  objc_initWeak(&location, self);
  v7 = [CRLDisplayLink alloc];
  v10 = _NSConcreteStackBlock;
  v11 = 3221225472;
  v12 = sub_1005AFC44;
  v13 = &unk_101872310;
  objc_copyWeak(&v14, &location);
  v8 = [(CRLDisplayLink *)v7 initWithHandler:&v10];
  displayLink = self->_displayLink;
  self->_displayLink = v8;

  [(CRLDisplayLink *)self->_displayLink setPaused:0, v10, v11, v12, v13];
  objc_destroyWeak(&v14);
  objc_destroyWeak(&location);
}

- (void)p_disableDisplayLink
{
  if (self->_displayLinkCounter == 1)
  {
    v3 = 0;
  }

  else
  {
    +[CRLAssertionHandler _atomicIncrementAssertCount];
    if (qword_101AD5A10 != -1)
    {
      sub_10139BCB4();
    }

    if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
    {
      sub_10139BCC8();
    }

    if (qword_101AD5A10 != -1)
    {
      sub_10139BD50();
    }

    v4 = off_1019EDA68;
    if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
    {
      sub_10130DA10(v4);
    }

    v5 = [NSString stringWithUTF8String:"[CRLAnimatedGIFController p_disableDisplayLink]"];
    v6 = [NSString stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/Freeform/Source/CRLKit/CRLAnimatedGIFController.m"];
    [CRLAssertionHandler handleFailureInFunction:v5 file:v6 lineNumber:841 isFatal:0 description:"Disabling display link unexpectedly!"];

    v3 = self->_displayLinkCounter - 1;
  }

  self->_displayLinkCounter = v3;
  [(CRLDisplayLink *)self->_displayLink invalidate];
  displayLink = self->_displayLink;
  self->_displayLink = 0;
}

- (void)p_displayLinkDidTrigger
{
  if (!+[NSThread isMainThread])
  {
    +[CRLAssertionHandler _atomicIncrementAssertCount];
    if (qword_101AD5A10 != -1)
    {
      sub_10139BD78();
    }

    if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
    {
      sub_10139BD8C();
    }

    if (qword_101AD5A10 != -1)
    {
      sub_10139BE14();
    }

    v3 = off_1019EDA68;
    if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
    {
      sub_10130DA10(v3);
    }

    v4 = [NSString stringWithUTF8String:"[CRLAnimatedGIFController p_displayLinkDidTrigger]"];
    v5 = [NSString stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/Freeform/Source/CRLKit/CRLAnimatedGIFController.m"];
    [CRLAssertionHandler handleFailureInFunction:v4 file:v5 lineNumber:848 isFatal:0 description:"This operation must only be performed on the main thread."];
  }

  [(CRLAnimatedGIFController *)self p_updateLayers];
}

- (void)p_updateLayers
{
  if (!+[NSThread isMainThread])
  {
    +[CRLAssertionHandler _atomicIncrementAssertCount];
    if (qword_101AD5A10 != -1)
    {
      sub_10139BE3C();
    }

    if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
    {
      sub_10139BE50();
    }

    if (qword_101AD5A10 != -1)
    {
      sub_10139BED8();
    }

    v3 = off_1019EDA68;
    if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
    {
      sub_10130DA10(v3);
    }

    v4 = [NSString stringWithUTF8String:"[CRLAnimatedGIFController p_updateLayers]"];
    v5 = [NSString stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/Freeform/Source/CRLKit/CRLAnimatedGIFController.m"];
    [CRLAssertionHandler handleFailureInFunction:v4 file:v5 lineNumber:853 isFatal:0 description:"This operation must only be performed on the main thread."];
  }

  v13 = 0u;
  v14 = 0u;
  v11 = 0u;
  v12 = 0u;
  v6 = self->_layers;
  v7 = [(NSMutableSet *)v6 countByEnumeratingWithState:&v11 objects:v15 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v12;
    do
    {
      for (i = 0; i != v8; i = i + 1)
      {
        if (*v12 != v9)
        {
          objc_enumerationMutation(v6);
        }

        [*(*(&v11 + 1) + 8 * i) setNeedsDisplay];
      }

      v8 = [(NSMutableSet *)v6 countByEnumeratingWithState:&v11 objects:v15 count:16];
    }

    while (v8);
  }
}

- (id)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end