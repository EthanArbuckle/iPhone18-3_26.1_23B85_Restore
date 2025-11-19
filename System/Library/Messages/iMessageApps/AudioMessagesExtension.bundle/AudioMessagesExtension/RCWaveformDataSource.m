@interface RCWaveformDataSource
- ($F24F406B2B787EFB06265DBA3D28CBD5)timeRangeToHighlight;
- (BOOL)waitUntilFinished;
- (RCWaveformDataSource)initWithWaveformGenerator:(id)a3 generatedWaveformOutputURL:(id)a4;
- (double)averagePowerLevelsRate;
- (double)duration;
- (id)waveformSegmentsInTimeRange:(id)a3;
- (id)waveformSegmentsIntersectingTimeRange:(id)a3;
- (void)_performObserversBlock:(id)a3;
- (void)addObserver:(id)a3;
- (void)beginLoading;
- (void)dealloc;
- (void)finishLoadingWithCompletionTimeout:(unint64_t)a3 completionBlock:(id)a4;
- (void)mergeGeneratedWaveformIfNecessary;
- (void)removeObserver:(id)a3;
- (void)saveGeneratedWaveformIfNecessary;
- (void)updateAccumulatorWaveformSegmentsWithBlock:(id)a3;
- (void)waveformGenerator:(id)a3 didLoadWaveformSegment:(id)a4;
- (void)waveformGeneratorDidFinishLoading:(id)a3 error:(id)a4;
@end

@implementation RCWaveformDataSource

- (RCWaveformDataSource)initWithWaveformGenerator:(id)a3 generatedWaveformOutputURL:(id)a4
{
  v7 = a3;
  v8 = a4;
  v18.receiver = self;
  v18.super_class = RCWaveformDataSource;
  v9 = [(RCWaveformDataSource *)&v18 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_waveformGenerator, a3);
    v11 = objc_alloc_init(RCMutableWaveform);
    accumulatorWaveform = v10->_accumulatorWaveform;
    v10->_accumulatorWaveform = v11;

    v10->_liveRecordingMergeTime = 0.0;
    objc_storeStrong(&v10->_generatedWaveformOutputURL, a4);
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

- (void)addObserver:(id)a3
{
  v4 = a3;
  queue = self->_queue;
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_16BF4;
  v7[3] = &unk_6D430;
  v7[4] = self;
  v8 = v4;
  v6 = v4;
  dispatch_sync(queue, v7);
}

- (void)removeObserver:(id)a3
{
  v4 = a3;
  queue = self->_queue;
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_16CE0;
  v7[3] = &unk_6D430;
  v7[4] = self;
  v8 = v4;
  v6 = v4;
  dispatch_sync(queue, v7);
}

- (void)beginLoading
{
  if (!self->_hasStartedLoading)
  {
    self->_hasStartedLoading = 1;
    v4 = [(RCWaveformDataSource *)self waveformGenerator];
    [v4 beginLoading];

    v5 = [(RCWaveformDataSource *)self waveformGenerator];
    [v5 addSegmentOutputObserver:self];

    [(RCWaveformDataSource *)self startLoading];
  }
}

- (void)finishLoadingWithCompletionTimeout:(unint64_t)a3 completionBlock:(id)a4
{
  v6 = a4;
  objc_initWeak(&location, self);
  v7 = [(RCWaveformDataSource *)self waveformGenerator];
  v9[0] = _NSConcreteStackBlock;
  v9[1] = 3221225472;
  v9[2] = sub_16F54;
  v9[3] = &unk_6D4A8;
  objc_copyWeak(&v11, &location);
  v8 = v6;
  v10 = v8;
  [v7 finishLoadingWithCompletionTimeout:a3 completionBlock:v9];

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

- (id)waveformSegmentsInTimeRange:(id)a3
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
  v7 = a3;
  dispatch_sync(queue, v6);
  v4 = v9[5];
  _Block_object_dispose(&v8, 8);

  return v4;
}

- (id)waveformSegmentsIntersectingTimeRange:(id)a3
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
  v7 = a3;
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
  v3 = [(RCWaveformDataSource *)self hasSavedGeneratedWaveform];
  v4 = [(RCWaveformDataSource *)self generatedWaveformOutputURL];
  if (self->_hasStartedLoading && (v3 & 1) == 0)
  {
    v5 = [(RCWaveformDataSource *)self waveformGenerator];
    if ([v5 canceled])
    {
LABEL_15:

      goto LABEL_16;
    }

    v6 = [v4 path];
    v7 = [v6 length];

    if (v7)
    {
      [(RCWaveformDataSource *)self setHasSavedGeneratedWaveform:1];
      v5 = [(RCWaveformDataSource *)self saveableWaveform];
      if ([v5 segmentCount])
      {
        v8 = +[NSThread currentThread];
        [v8 threadPriority];
        v10 = v9;

        v11 = +[NSThread currentThread];
        [v11 setThreadPriority:1.0];

        v12 = [v5 segmentsCopy];
        v13 = [RCWaveformSegment segmentsByMergingSegments:v12 preferredSegmentDuration:30.0];

        if ([v13 count])
        {
          v14 = [(RCWaveform *)[RCMutableWaveform alloc] initWithSegments:v13];

          v5 = v14;
        }

        v15 = +[NSThread currentThread];
        [v15 setThreadPriority:v10];
      }

      if ([v5 segmentCount])
      {
        Current = CFAbsoluteTimeGetCurrent();
        v17 = OSLogForCategory(@"Default");
        if (os_log_type_enabled(v17, OS_LOG_TYPE_DEBUG))
        {
          sub_42360(v4, v17);
        }

        -[RCWaveformDataSource setHasSavedGeneratedWaveform:](self, "setHasSavedGeneratedWaveform:", [v5 saveContentsToURL:v4]);
        v18 = CFAbsoluteTimeGetCurrent();
        v19 = OSLogForCategory(@"Default");
        if (os_log_type_enabled(v19, OS_LOG_TYPE_DEBUG))
        {
          *buf = 136315650;
          v22 = "[RCWaveformDataSource saveGeneratedWaveformIfNecessary]";
          v23 = 2048;
          v24 = v18 - Current;
          v25 = 1024;
          v26 = [v5 segmentCount];
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
    v3 = [(RCWaveform *)self->_accumulatorWaveform segments];
    v4 = [v3 lastObject];

    if (v4)
    {
      [v4 timeRange];
      v6 = v5 + -15.0;
    }

    else
    {
      v6 = -15.0;
    }

    v7 = [(RCWaveform *)self->_accumulatorWaveform segments];
    v8 = [v7 count];

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

- (void)updateAccumulatorWaveformSegmentsWithBlock:(id)a3
{
  v4 = a3;
  queue = self->_queue;
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_17CB8;
  v7[3] = &unk_6D598;
  v7[4] = self;
  v8 = v4;
  v6 = v4;
  dispatch_sync(queue, v7);
}

- (void)waveformGeneratorDidFinishLoading:(id)a3 error:(id)a4
{
  v5 = a4;
  v6 = [(RCWaveformDataSource *)self generatedWaveformOutputURL];
  if (v5)
  {
    v7 = OSLogForCategory(@"Default");
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      sub_423FC(v5, v7);
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
      v10 = [v6 path];
      v11 = [v9 fileExistsAtPath:v10];

      if (v11)
      {
        v12 = +[NSFileManager defaultManager];
        [v12 removeItemAtURL:v6 error:0];

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

- (void)waveformGenerator:(id)a3 didLoadWaveformSegment:(id)a4
{
  v5 = a4;
  queue = self->_queue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_18078;
  block[3] = &unk_6D430;
  block[4] = self;
  v12 = v5;
  v7 = v5;
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

- (void)_performObserversBlock:(id)a3
{
  v4 = a3;
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

        v4[2](v4, *(*(&v10 + 1) + 8 * v9));
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