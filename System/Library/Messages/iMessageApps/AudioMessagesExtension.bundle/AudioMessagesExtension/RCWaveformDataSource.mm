@interface RCWaveformDataSource
- ($F24F406B2B787EFB06265DBA3D28CBD5)timeRangeToHighlight;
- (BOOL)waitUntilFinished;
- (RCWaveformDataSource)initWithWaveformGenerator:(id)generator generatedWaveformOutputURL:(id)l;
- (double)averagePowerLevelsRate;
- (double)duration;
- (id)waveformSegmentsInTimeRange:(id)range;
- (id)waveformSegmentsIntersectingTimeRange:(id)range;
- (void)_performObserversBlock:(id)block;
- (void)addObserver:(id)observer;
- (void)beginLoading;
- (void)dealloc;
- (void)finishLoadingWithCompletionTimeout:(unint64_t)timeout completionBlock:(id)block;
- (void)mergeGeneratedWaveformIfNecessary;
- (void)removeObserver:(id)observer;
- (void)saveGeneratedWaveformIfNecessary;
- (void)updateAccumulatorWaveformSegmentsWithBlock:(id)block;
- (void)waveformGenerator:(id)generator didLoadWaveformSegment:(id)segment;
- (void)waveformGeneratorDidFinishLoading:(id)loading error:(id)error;
@end

@implementation RCWaveformDataSource

- (RCWaveformDataSource)initWithWaveformGenerator:(id)generator generatedWaveformOutputURL:(id)l
{
  generatorCopy = generator;
  lCopy = l;
  v18.receiver = self;
  v18.super_class = RCWaveformDataSource;
  v9 = [(RCWaveformDataSource *)&v18 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_waveformGenerator, generator);
    v11 = objc_alloc_init(RCMutableWaveform);
    accumulatorWaveform = v10->_accumulatorWaveform;
    v10->_accumulatorWaveform = v11;

    v10->_liveRecordingMergeTime = 0.0;
    objc_storeStrong(&v10->_generatedWaveformOutputURL, l);
    v13 = +[NSHashTable weakObjectsHashTable];
    weakObservers = v10->_weakObservers;
    v10->_weakObservers = v13;

    v15 = dispatch_queue_create("com.apple.waveformDataSourceProcessing", 0);
    queue = v10->_queue;
    v10->_queue = v15;
  }

  return v10;
}

- (void)dealloc
{
  [(RCWaveformGenerator *)self->_waveformGenerator terminateLoadingImmediately];
  v3.receiver = self;
  v3.super_class = RCWaveformDataSource;
  [(RCWaveformDataSource *)&v3 dealloc];
}

- (void)addObserver:(id)observer
{
  observerCopy = observer;
  queue = self->_queue;
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_16BF4;
  v7[3] = &unk_6D430;
  v7[4] = self;
  v8 = observerCopy;
  v6 = observerCopy;
  dispatch_sync(queue, v7);
}

- (void)removeObserver:(id)observer
{
  observerCopy = observer;
  queue = self->_queue;
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_16CE0;
  v7[3] = &unk_6D430;
  v7[4] = self;
  v8 = observerCopy;
  v6 = observerCopy;
  dispatch_sync(queue, v7);
}

- (void)beginLoading
{
  if (!self->_hasStartedLoading)
  {
    self->_hasStartedLoading = 1;
    waveformGenerator = [(RCWaveformDataSource *)self waveformGenerator];
    [waveformGenerator beginLoading];

    waveformGenerator2 = [(RCWaveformDataSource *)self waveformGenerator];
    [waveformGenerator2 addSegmentOutputObserver:self];

    [(RCWaveformDataSource *)self startLoading];
  }
}

- (void)finishLoadingWithCompletionTimeout:(unint64_t)timeout completionBlock:(id)block
{
  blockCopy = block;
  objc_initWeak(&location, self);
  waveformGenerator = [(RCWaveformDataSource *)self waveformGenerator];
  v9[0] = _NSConcreteStackBlock;
  v9[1] = 3221225472;
  v9[2] = sub_16F54;
  v9[3] = &unk_6D4A8;
  objc_copyWeak(&v11, &location);
  v8 = blockCopy;
  v10 = v8;
  [waveformGenerator finishLoadingWithCompletionTimeout:timeout completionBlock:v9];

  objc_destroyWeak(&v11);
  objc_destroyWeak(&location);
}

- (BOOL)waitUntilFinished
{
  v5[0] = _NSConcreteStackBlock;
  v5[1] = 3221225472;
  v5[2] = sub_17118;
  v5[3] = &unk_6D4D0;
  v6 = dispatch_semaphore_create(0);
  v3 = v6;
  [(RCWaveformDataSource *)self finishLoadingWithCompletionTimeout:-1 completionBlock:v5];
  dispatch_semaphore_wait(v3, 0xFFFFFFFFFFFFFFFFLL);
  LOBYTE(self) = [(RCWaveformGenerator *)self->_waveformGenerator canceled];

  return self ^ 1;
}

- (double)duration
{
  v8 = 0;
  v9 = &v8;
  v10 = 0x3032000000;
  v11 = sub_17264;
  v12 = sub_17274;
  v13 = 0;
  queue = self->_queue;
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_1727C;
  v7[3] = &unk_6D4F8;
  v7[4] = self;
  v7[5] = &v8;
  dispatch_sync(queue, v7);
  v3 = v9[5];
  if (v3)
  {
    [v3 timeRange];
    v5 = v4;
  }

  else
  {
    v5 = 0.0;
  }

  _Block_object_dispose(&v8, 8);

  return v5;
}

- ($F24F406B2B787EFB06265DBA3D28CBD5)timeRangeToHighlight
{
  [(RCWaveformDataSource *)self duration];

  v3 = RCTimeRangeMake(0.0, v2);
  result.var1 = v4;
  result.var0 = v3;
  return result;
}

- (id)waveformSegmentsInTimeRange:(id)range
{
  v8 = 0;
  v9 = &v8;
  v10 = 0x3032000000;
  v11 = sub_17264;
  v12 = sub_17274;
  v13 = 0;
  queue = self->_queue;
  v6[0] = _NSConcreteStackBlock;
  v6[1] = 3221225472;
  v6[2] = sub_1740C;
  v6[3] = &unk_6D520;
  v6[4] = self;
  v6[5] = &v8;
  rangeCopy = range;
  dispatch_sync(queue, v6);
  v4 = v9[5];
  _Block_object_dispose(&v8, 8);

  return v4;
}

- (id)waveformSegmentsIntersectingTimeRange:(id)range
{
  v8 = 0;
  v9 = &v8;
  v10 = 0x3032000000;
  v11 = sub_17264;
  v12 = sub_17274;
  v13 = 0;
  queue = self->_queue;
  v6[0] = _NSConcreteStackBlock;
  v6[1] = 3221225472;
  v6[2] = sub_1756C;
  v6[3] = &unk_6D520;
  v6[4] = self;
  v6[5] = &v8;
  rangeCopy = range;
  dispatch_sync(queue, v6);
  v4 = v9[5];
  _Block_object_dispose(&v8, 8);

  return v4;
}

- (double)averagePowerLevelsRate
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x2020000000;
  v9 = 0;
  queue = self->_queue;
  v5[0] = _NSConcreteStackBlock;
  v5[1] = 3221225472;
  v5[2] = sub_1768C;
  v5[3] = &unk_6D4F8;
  v5[4] = self;
  v5[5] = &v6;
  dispatch_sync(queue, v5);
  v3 = v7[3];
  _Block_object_dispose(&v6, 8);
  return v3;
}

- (void)saveGeneratedWaveformIfNecessary
{
  hasSavedGeneratedWaveform = [(RCWaveformDataSource *)self hasSavedGeneratedWaveform];
  generatedWaveformOutputURL = [(RCWaveformDataSource *)self generatedWaveformOutputURL];
  if (self->_hasStartedLoading && (hasSavedGeneratedWaveform & 1) == 0)
  {
    waveformGenerator = [(RCWaveformDataSource *)self waveformGenerator];
    if ([waveformGenerator canceled])
    {
LABEL_15:

      goto LABEL_16;
    }

    path = [generatedWaveformOutputURL path];
    v7 = [path length];

    if (v7)
    {
      [(RCWaveformDataSource *)self setHasSavedGeneratedWaveform:1];
      waveformGenerator = [(RCWaveformDataSource *)self saveableWaveform];
      if ([waveformGenerator segmentCount])
      {
        v8 = +[NSThread currentThread];
        [v8 threadPriority];
        v10 = v9;

        v11 = +[NSThread currentThread];
        [v11 setThreadPriority:1.0];

        segmentsCopy = [waveformGenerator segmentsCopy];
        v13 = [RCWaveformSegment segmentsByMergingSegments:segmentsCopy preferredSegmentDuration:30.0];

        if ([v13 count])
        {
          v14 = [(RCWaveform *)[RCMutableWaveform alloc] initWithSegments:v13];

          waveformGenerator = v14;
        }

        v15 = +[NSThread currentThread];
        [v15 setThreadPriority:v10];
      }

      if ([waveformGenerator segmentCount])
      {
        Current = CFAbsoluteTimeGetCurrent();
        v17 = OSLogForCategory(@"Default");
        if (os_log_type_enabled(v17, OS_LOG_TYPE_DEBUG))
        {
          sub_42360(generatedWaveformOutputURL, v17);
        }

        -[RCWaveformDataSource setHasSavedGeneratedWaveform:](self, "setHasSavedGeneratedWaveform:", [waveformGenerator saveContentsToURL:generatedWaveformOutputURL]);
        v18 = CFAbsoluteTimeGetCurrent();
        v19 = OSLogForCategory(@"Default");
        if (os_log_type_enabled(v19, OS_LOG_TYPE_DEBUG))
        {
          *buf = 136315650;
          v22 = "[RCWaveformDataSource saveGeneratedWaveformIfNecessary]";
          v23 = 2048;
          v24 = v18 - Current;
          v25 = 1024;
          segmentCount = [waveformGenerator segmentCount];
          _os_log_debug_impl(&dword_0, v19, OS_LOG_TYPE_DEBUG, "%s -- save: took %.2f sec to save waveform with %d segments", buf, 0x1Cu);
        }
      }

      goto LABEL_15;
    }
  }

LABEL_16:
  v20[0] = _NSConcreteStackBlock;
  v20[1] = 3221225472;
  v20[2] = sub_179D8;
  v20[3] = &unk_6D548;
  v20[4] = self;
  [(RCWaveformDataSource *)self _performObserversBlock:v20];
}

- (void)mergeGeneratedWaveformIfNecessary
{
  if ([(RCWaveformDataSource *)self shouldMergeLiveWaveform])
  {
    segments = [(RCWaveform *)self->_accumulatorWaveform segments];
    lastObject = [segments lastObject];

    if (lastObject)
    {
      [lastObject timeRange];
      v6 = v5 + -15.0;
    }

    else
    {
      v6 = -15.0;
    }

    segments2 = [(RCWaveform *)self->_accumulatorWaveform segments];
    v8 = [segments2 count];

    if (v8)
    {
      Current = CFAbsoluteTimeGetCurrent();
      if (Current - self->_liveRecordingMergeTime > 0.0333333333)
      {
        [(RCWaveformDataSource *)self durationPerWaveformSlice];
        v11 = fmin(v10, 1.79769313e308);
        queue = self->_queue;
        v13[1] = 3221225472;
        v13[0] = _NSConcreteStackBlock;
        v13[2] = sub_17B84;
        v13[3] = &unk_6D570;
        if (v11 < 0.001)
        {
          v11 = 0.001;
        }

        v13[4] = self;
        v13[5] = 0x403E000000000000;
        *&v13[6] = v6;
        *&v13[7] = v11;
        dispatch_sync(queue, v13);
        self->_liveRecordingMergeTime = Current;
      }
    }
  }
}

- (void)updateAccumulatorWaveformSegmentsWithBlock:(id)block
{
  blockCopy = block;
  queue = self->_queue;
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_17CB8;
  v7[3] = &unk_6D598;
  v7[4] = self;
  v8 = blockCopy;
  v6 = blockCopy;
  dispatch_sync(queue, v7);
}

- (void)waveformGeneratorDidFinishLoading:(id)loading error:(id)error
{
  errorCopy = error;
  generatedWaveformOutputURL = [(RCWaveformDataSource *)self generatedWaveformOutputURL];
  if (errorCopy)
  {
    v7 = OSLogForCategory(@"Default");
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      sub_423FC(errorCopy, v7);
    }

    if (self->_hasStartedLoading)
    {
      queue = self->_queue;
      block[0] = _NSConcreteStackBlock;
      block[1] = 3221225472;
      block[2] = sub_17F38;
      block[3] = &unk_6D458;
      block[4] = self;
      dispatch_sync(queue, block);
      self->_hasStartedLoading = 0;
      v9 = +[NSFileManager defaultManager];
      path = [generatedWaveformOutputURL path];
      v11 = [v9 fileExistsAtPath:path];

      if (v11)
      {
        v12 = +[NSFileManager defaultManager];
        [v12 removeItemAtURL:generatedWaveformOutputURL error:0];

        v14[0] = _NSConcreteStackBlock;
        v14[1] = 3221225472;
        v14[2] = sub_17F44;
        v14[3] = &unk_6D458;
        v14[4] = self;
        dispatch_async(&_dispatch_main_q, v14);
      }
    }
  }

  else
  {
    [(RCWaveformDataSource *)self saveGeneratedWaveformIfNecessary];
  }

  v13[0] = _NSConcreteStackBlock;
  v13[1] = 3221225472;
  v13[2] = sub_17F4C;
  v13[3] = &unk_6D548;
  v13[4] = self;
  [(RCWaveformDataSource *)self _performObserversBlock:v13];
}

- (void)waveformGenerator:(id)generator didLoadWaveformSegment:(id)segment
{
  segmentCopy = segment;
  queue = self->_queue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_18078;
  block[3] = &unk_6D430;
  block[4] = self;
  v12 = segmentCopy;
  v7 = segmentCopy;
  dispatch_sync(queue, block);
  [(RCWaveformDataSource *)self mergeGeneratedWaveformIfNecessary];
  [(RCWaveformDataSource *)self segmentsInCompositionByConvertingFromActiveLoadingFragment:v7];
  v9[0] = _NSConcreteStackBlock;
  v9[1] = 3221225472;
  v9[2] = sub_18084;
  v9[3] = &unk_6D5C0;
  v10 = v9[4] = self;
  v8 = v10;
  [(RCWaveformDataSource *)self _performObserversBlock:v9];
}

- (void)_performObserversBlock:(id)block
{
  blockCopy = block;
  v15 = 0;
  v16 = &v15;
  v17 = 0x3032000000;
  v18 = sub_17264;
  v19 = sub_17274;
  v20 = 0;
  queue = self->_queue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_18280;
  block[3] = &unk_6D4F8;
  block[4] = self;
  block[5] = &v15;
  dispatch_sync(queue, block);
  v12 = 0u;
  v13 = 0u;
  v10 = 0u;
  v11 = 0u;
  v6 = v16[5];
  v7 = [v6 countByEnumeratingWithState:&v10 objects:v21 count:16];
  if (v7)
  {
    v8 = *v11;
    do
    {
      v9 = 0;
      do
      {
        if (*v11 != v8)
        {
          objc_enumerationMutation(v6);
        }

        blockCopy[2](blockCopy, *(*(&v10 + 1) + 8 * v9));
        v9 = v9 + 1;
      }

      while (v7 != v9);
      v7 = [v6 countByEnumeratingWithState:&v10 objects:v21 count:16];
    }

    while (v7);
  }

  _Block_object_dispose(&v15, 8);
}

@end