@interface RCWaveformGenerator
- (BOOL)_appendAveragePowerLevelsByDigestingWaveformSegments:(id)segments;
- (BOOL)_appendPowerMeterValuesFromDataInAudioFile:(id)file progressBlock:(id)block;
- (BOOL)appendAveragePowerLevel:(float)level;
- (BOOL)appendAveragePowerLevelsByDigestingAudioPCMBuffer:(id)buffer;
- (BOOL)appendAveragePowerLevelsByDigestingContentsOfAudioFileURL:(id)l progressBlock:(id)block;
- (BOOL)appendAveragePowerLevelsByDigestingSampleBuffer:(opaqueCMSampleBuffer *)buffer;
- (BOOL)appendAveragePowerLevelsByDigestingWaveform:(id)waveform;
- (BOOL)appendAveragePowerLevelsByDigestingWaveformSegments:(id)segments;
- (BOOL)finished;
- (BOOL)idle;
- (BOOL)loadable;
- (BOOL)paused;
- (RCWaveformGenerator)initWithSamplingParametersFromGenerator:(id)generator;
- (RCWaveformGenerator)initWithSegmentFlushInterval:(double)interval;
- (id).cxx_construct;
- (id)synchronouslyApproximateWaveformForAVContentURL:(id)l byReadingCurrentFileAheadTimeRange:(id)range;
- (void)_appendAveragePowerLevel:(float)level;
- (void)_appendAveragePowerLevelsByDigestingTimeRange:(id)range inAudioFile:(id)file;
- (void)_appendPowerMeterValuesFromAudioPCMBuffer:(id)buffer;
- (void)_appendPowerMeterValuesFromSampleBuffer:(opaqueCMSampleBuffer *)buffer;
- (void)_onQueue_appendAveragePowerLevelsByDigestingTimeRange:(id)range inAudioFile:(id)file;
- (void)_onQueue_appendPowerMeterValuesFromRawAudioData:(void *)data frameCount:(int64_t)count format:(const AudioStreamBasicDescription *)format isPredigest:(BOOL)predigest;
- (void)_onQueue_appendSegment:(id)segment;
- (void)_onQueue_digestAveragePowerLevel:(float)level;
- (void)_onQueue_flushRemainingData;
- (void)_onQueue_flushWaveformSegment:(id)segment;
- (void)_onQueue_flushWithNextSegmentWithEndTime:(double)time isPredigest:(BOOL)predigest;
- (void)_onQueue_performInternalFinishedLoadingBlocksAndFinishObservers;
- (void)_onQueue_performLoadingFinishedBlock:(id)block internalBlockUUID:(id)d isTimeout:(BOOL)timeout;
- (void)_onQueue_performObserversBlock:(id)block;
- (void)_onQueue_pushAveragePowerLevel:(float)level;
- (void)addSegmentOutputObserver:(id)observer;
- (void)async_finishLoadingByTerminating:(BOOL)terminating loadingFinishedBlockTimeout:(unint64_t)timeout loadingFinishedBlock:(id)block;
- (void)beginLoading;
- (void)flushPendingCapturedSampleBuffers;
- (void)removeSegmentOutputObserver:(id)observer;
- (void)setPaused:(BOOL)paused;
@end

@implementation RCWaveformGenerator

- (RCWaveformGenerator)initWithSegmentFlushInterval:(double)interval
{
  v17.receiver = self;
  v17.super_class = RCWaveformGenerator;
  v4 = [(RCWaveformGenerator *)&v17 init];
  if (v4)
  {
    v5 = dispatch_queue_create("com.apple.VoiceMemos.RCWaveformGenerator.queue", 0);
    v6 = *(v4 + 3);
    *(v4 + 3) = v5;

    dispatch_queue_set_specific(*(v4 + 3), v4, v4, 0);
    v7 = dispatch_semaphore_create(0);
    v8 = *(v4 + 2);
    *(v4 + 2) = v7;

    dispatch_semaphore_signal(*(v4 + 2));
    v9 = +[NSHashTable weakObjectsHashTable];
    v10 = *(v4 + 6);
    *(v4 + 6) = v9;

    v11 = +[NSMutableArray array];
    v12 = *(v4 + 7);
    *(v4 + 7) = v11;

    v13 = +[NSMutableArray array];
    v14 = *(v4 + 8);
    *(v4 + 8) = v13;

    *(v4 + 31) = 160;
    intervalCopy = 0.0333333333;
    if (interval > 0.0)
    {
      intervalCopy = interval;
    }

    *(v4 + 30) = intervalCopy;
  }

  return v4;
}

- (RCWaveformGenerator)initWithSamplingParametersFromGenerator:(id)generator
{
  generatorCopy = generator;
  v5 = [(RCWaveformGenerator *)self initWithSegmentFlushInterval:generatorCopy[30]];
  if (v5)
  {
    -[RCWaveformGenerator setOverviewUnitsPerSecond:](v5, "setOverviewUnitsPerSecond:", [generatorCopy overviewUnitsPerSecond]);
  }

  return v5;
}

- (void)addSegmentOutputObserver:(id)observer
{
  observerCopy = observer;
  queue = self->_queue;
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_D500;
  v7[3] = &unk_6D078;
  v7[4] = self;
  v8 = observerCopy;
  v6 = observerCopy;
  dispatch_sync(queue, v7);
}

- (void)removeSegmentOutputObserver:(id)observer
{
  observerCopy = observer;
  if (dispatch_get_specific(self) == self)
  {
    [(NSHashTable *)self->_weakObservers removeObject:observerCopy];
  }

  else
  {
    queue = self->_queue;
    v6[0] = _NSConcreteStackBlock;
    v6[1] = 3221225472;
    v6[2] = sub_D628;
    v6[3] = &unk_6D078;
    v6[4] = self;
    v7 = observerCopy;
    dispatch_sync(queue, v6);
  }
}

- (void)flushPendingCapturedSampleBuffers
{
  queue = self->_queue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_D6A8;
  block[3] = &unk_6D050;
  block[4] = self;
  dispatch_sync(queue, block);
}

- (BOOL)appendAveragePowerLevelsByDigestingSampleBuffer:(opaqueCMSampleBuffer *)buffer
{
  v5 = sub_D6F8(self, a2);
  if (v5)
  {
    [(RCWaveformGenerator *)self _appendPowerMeterValuesFromSampleBuffer:buffer];
  }

  return v5;
}

- (BOOL)appendAveragePowerLevelsByDigestingAudioPCMBuffer:(id)buffer
{
  bufferCopy = buffer;
  v6 = sub_D6F8(self, a2);
  if (v6)
  {
    [(RCWaveformGenerator *)self _appendPowerMeterValuesFromAudioPCMBuffer:bufferCopy];
  }

  return v6;
}

- (BOOL)appendAveragePowerLevelsByDigestingContentsOfAudioFileURL:(id)l progressBlock:(id)block
{
  lCopy = l;
  blockCopy = block;
  if (sub_D6F8(self, a2))
  {
    v9 = OSLogForCategory(@"Default");
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEBUG))
    {
      path = [lCopy path];
      sub_4201C(path, v13, v9);
    }

    v11 = [(RCWaveformGenerator *)self _appendPowerMeterValuesFromDataInAudioFile:lCopy progressBlock:blockCopy];
  }

  else
  {
    v11 = 0;
  }

  return v11;
}

- (BOOL)appendAveragePowerLevelsByDigestingWaveformSegments:(id)segments
{
  segmentsCopy = segments;
  if (sub_D6F8(self, a2))
  {
    v6 = [(RCWaveformGenerator *)self _appendAveragePowerLevelsByDigestingWaveformSegments:segmentsCopy];
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (BOOL)appendAveragePowerLevel:(float)level
{
  v5 = sub_D6F8(self, a2);
  if (v5)
  {
    *&v6 = level;
    [(RCWaveformGenerator *)self _appendAveragePowerLevel:v6];
  }

  return v5;
}

- (BOOL)appendAveragePowerLevelsByDigestingWaveform:(id)waveform
{
  waveformCopy = waveform;
  v6 = sub_D6F8(self, a2);
  if (v6)
  {
    v7 = OSLogForCategory(@"Default");
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
    {
      sub_42088();
    }

    segmentsCopy = [waveformCopy segmentsCopy];
    [(RCWaveformGenerator *)self _appendAveragePowerLevelsByDigestingWaveformSegments:segmentsCopy];
  }

  return v6;
}

- (BOOL)loadable
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x2020000000;
  v9 = 0;
  queue = self->_queue;
  v5[0] = _NSConcreteStackBlock;
  v5[1] = 3221225472;
  v5[2] = sub_DB20;
  v5[3] = &unk_6D110;
  v5[4] = self;
  v5[5] = &v6;
  dispatch_sync(queue, v5);
  v3 = *(v7 + 24);
  _Block_object_dispose(&v6, 8);
  return v3;
}

- (BOOL)finished
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x2020000000;
  v9 = 0;
  queue = self->_queue;
  v5[0] = _NSConcreteStackBlock;
  v5[1] = 3221225472;
  v5[2] = sub_DBE8;
  v5[3] = &unk_6D110;
  v5[4] = self;
  v5[5] = &v6;
  dispatch_sync(queue, v5);
  v3 = *(v7 + 24);
  _Block_object_dispose(&v6, 8);
  return v3;
}

- (BOOL)idle
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x2020000000;
  v9 = 0;
  queue = self->_queue;
  v5[0] = _NSConcreteStackBlock;
  v5[1] = 3221225472;
  v5[2] = sub_DCB0;
  v5[3] = &unk_6D110;
  v5[4] = self;
  v5[5] = &v6;
  dispatch_sync(queue, v5);
  v3 = *(v7 + 24);
  _Block_object_dispose(&v6, 8);
  return v3;
}

- (void)beginLoading
{
  v4[0] = 0;
  v4[1] = v4;
  v4[2] = 0x2020000000;
  v5 = 1;
  queue = self->_queue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_DD70;
  block[3] = &unk_6D160;
  block[4] = self;
  block[5] = v4;
  block[6] = a2;
  dispatch_sync(queue, block);
  _Block_object_dispose(v4, 8);
}

- (void)setPaused:(BOOL)paused
{
  queue = self->_queue;
  v4[0] = _NSConcreteStackBlock;
  v4[1] = 3221225472;
  v4[2] = sub_E088;
  v4[3] = &unk_6D188;
  pausedCopy = paused;
  v4[4] = self;
  dispatch_sync(queue, v4);
}

- (BOOL)paused
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x2020000000;
  v9 = 0;
  queue = self->_queue;
  v5[0] = _NSConcreteStackBlock;
  v5[1] = 3221225472;
  v5[2] = sub_E29C;
  v5[3] = &unk_6D110;
  v5[4] = self;
  v5[5] = &v6;
  dispatch_sync(queue, v5);
  v3 = *(v7 + 24);
  _Block_object_dispose(&v6, 8);
  return v3;
}

- (void)async_finishLoadingByTerminating:(BOOL)terminating loadingFinishedBlockTimeout:(unint64_t)timeout loadingFinishedBlock:(id)block
{
  v9 = [block copy];
  queue = self->_queue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_E398;
  block[3] = &unk_6D200;
  block[4] = self;
  v13 = v9;
  terminatingCopy = terminating;
  v14 = a2;
  timeoutCopy = timeout;
  v11 = v9;
  dispatch_async(queue, block);
}

- (void)_onQueue_performLoadingFinishedBlock:(id)block internalBlockUUID:(id)d isTimeout:(BOOL)timeout
{
  timeoutCopy = timeout;
  blockCopy = block;
  dCopy = d;
  v10 = [(NSMutableArray *)self->_internalFinishedLoadingBlockUUIDs indexOfObject:dCopy];
  if (v10 != 0x7FFFFFFFFFFFFFFFLL)
  {
    [(NSMutableArray *)self->_internalFinishedLoadingBlockUUIDs removeObjectAtIndex:v10];
    [(NSMutableArray *)self->_internalFinishedLoadingBlocks removeObjectAtIndex:v10];
  }

  if (timeoutCopy)
  {
    v11 = OSLogForCategory(@"Default");
    if (os_log_type_enabled(v11, OS_LOG_TYPE_INFO))
    {
      v15 = 136315394;
      v16 = "[RCWaveformGenerator _onQueue_performLoadingFinishedBlock:internalBlockUUID:isTimeout:]";
      v17 = 2112;
      selfCopy = self;
      _os_log_impl(&dword_0, v11, OS_LOG_TYPE_INFO, "%s -- [FinishLoading] %@ WARNING: Encountered time out while trying to finish loading", &v15, 0x16u);
    }

    if (!self->_canceled && ![(NSMutableArray *)self->_internalFinishedLoadingBlockUUIDs count])
    {
      [(RCWaveformGenerator *)self async_finishLoadingByTerminating:1 loadingFinishedBlockTimeout:0 loadingFinishedBlock:0];
    }
  }

  canceled = self->_canceled;
  v13 = self->_loadingError;
  v14 = v13;
  if (blockCopy)
  {
    blockCopy[2](blockCopy, (v13 == 0) & ~canceled, v13);
  }
}

- (void)_onQueue_performInternalFinishedLoadingBlocksAndFinishObservers
{
  v3 = [(NSMutableArray *)self->_internalFinishedLoadingBlocks copy];
  allObjects = [(NSHashTable *)self->_weakObservers allObjects];
  [(NSMutableArray *)self->_internalFinishedLoadingBlocks removeAllObjects];
  [(NSMutableArray *)self->_internalFinishedLoadingBlockUUIDs removeAllObjects];
  self->_state = 3;
  [v3 enumerateObjectsUsingBlock:{&stru_6D240, sub_11010(&self->_samplePowerMeter.mSampleRate)}];
  v12 = 0u;
  v13 = 0u;
  v10 = 0u;
  v11 = 0u;
  v5 = allObjects;
  v6 = [v5 countByEnumeratingWithState:&v10 objects:v14 count:16];
  if (v6)
  {
    v7 = *v11;
    do
    {
      v8 = 0;
      do
      {
        if (*v11 != v7)
        {
          objc_enumerationMutation(v5);
        }

        v9 = *(*(&v10 + 1) + 8 * v8);
        if (objc_opt_respondsToSelector())
        {
          [v9 waveformGeneratorDidFinishLoading:self error:{self->_loadingError, v10}];
        }

        v8 = v8 + 1;
      }

      while (v6 != v8);
      v6 = [v5 countByEnumeratingWithState:&v10 objects:v14 count:16];
    }

    while (v6);
  }
}

- (void)_onQueue_performObserversBlock:(id)block
{
  blockCopy = block;
  v9 = 0u;
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v5 = self->_weakObservers;
  v6 = [(NSHashTable *)v5 countByEnumeratingWithState:&v9 objects:v13 count:16];
  if (v6)
  {
    v7 = *v10;
    do
    {
      v8 = 0;
      do
      {
        if (*v10 != v7)
        {
          objc_enumerationMutation(v5);
        }

        blockCopy[2](blockCopy, *(*(&v9 + 1) + 8 * v8));
        v8 = v8 + 1;
      }

      while (v6 != v8);
      v6 = [(NSHashTable *)v5 countByEnumeratingWithState:&v9 objects:v13 count:16];
    }

    while (v6);
  }
}

- (void)_appendAveragePowerLevel:(float)level
{
  queue = self->_queue;
  v4[0] = _NSConcreteStackBlock;
  v4[1] = 3221225472;
  v4[2] = sub_ECD0;
  v4[3] = &unk_6D268;
  v4[4] = self;
  levelCopy = level;
  dispatch_sync(queue, v4);
}

- (void)_appendPowerMeterValuesFromSampleBuffer:(opaqueCMSampleBuffer *)buffer
{
  FormatDescription = CMSampleBufferGetFormatDescription(buffer);
  StreamBasicDescription = CMAudioFormatDescriptionGetStreamBasicDescription(FormatDescription);
  if (StreamBasicDescription)
  {
    v7 = StreamBasicDescription;
    bufferListSizeNeededOut = 0;
    if (!CMSampleBufferGetAudioBufferListWithRetainedBlockBuffer(buffer, &bufferListSizeNeededOut, 0, 0, 0, 0, 0, 0))
    {
      v8 = [NSMutableData alloc];
      v9 = [v8 initWithLength:bufferListSizeNeededOut];
      if (v9)
      {
        v10 = v9;
        bufferListSizeNeededOut = 0;
        mutableBytes = [v9 mutableBytes];
        AudioBufferListWithRetainedBlockBuffer = CMSampleBufferGetAudioBufferListWithRetainedBlockBuffer(buffer, 0, mutableBytes, [v10 length], 0, 0, 0, &bufferListSizeNeededOut);
        if (AudioBufferListWithRetainedBlockBuffer)
        {
          v13 = OSLogForCategory(@"Default");
          if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
          {
            sub_42108(AudioBufferListWithRetainedBlockBuffer, v13);
          }
        }

        else
        {
          queue = self->_queue;
          v15[0] = _NSConcreteStackBlock;
          v15[1] = 3221225472;
          v15[2] = sub_EE74;
          v15[3] = &unk_6D290;
          v15[5] = mutableBytes;
          v15[6] = v7;
          v15[4] = self;
          dispatch_sync(queue, v15);
          CFRelease(bufferListSizeNeededOut);
        }
      }
    }
  }
}

- (void)_appendPowerMeterValuesFromAudioPCMBuffer:(id)buffer
{
  bufferCopy = buffer;
  queue = self->_queue;
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_EF8C;
  v7[3] = &unk_6D078;
  v7[4] = self;
  v8 = bufferCopy;
  v6 = bufferCopy;
  dispatch_sync(queue, v7);
}

- (BOOL)_appendPowerMeterValuesFromDataInAudioFile:(id)file progressBlock:(id)block
{
  fileCopy = file;
  blockCopy = block;
  if (sub_D6F8(self, a2))
  {
    v43[0] = 0;
    v9 = [[AVAudioFile alloc] initForReading:fileCopy commonFormat:1 interleaved:0 error:v43];
    v10 = v43[0];
    v11 = v9 != 0;
    if (v9)
    {
      queue = self->_queue;
      block[0] = _NSConcreteStackBlock;
      block[1] = 3221225472;
      block[2] = sub_F400;
      block[3] = &unk_6D078;
      block[4] = self;
      v13 = v9;
      v42 = v13;
      dispatch_sync(queue, block);
      v39[0] = 0;
      v39[1] = v39;
      v39[2] = 0x2020000000;
      v40 = 0;
      v38[0] = 0;
      v38[1] = v38;
      v38[2] = 0x2020000000;
      v38[3] = 0;
      v24 = v10;
      v25 = blockCopy;
      v14 = [v13 length];
      processingFormat = [v13 processingFormat];
      v16 = *([processingFormat streamDescription] + 6);

      v35 = 0;
      v36[0] = &v35;
      v36[1] = 0x3032000000;
      v36[2] = sub_E6BC;
      v36[3] = sub_E6CC;
      v37 = 0;
      v17 = self->_queue;
      v26[0] = _NSConcreteStackBlock;
      v26[1] = 3221225472;
      v26[2] = sub_F40C;
      v26[3] = &unk_6D2B8;
      v18 = v13;
      v27 = v18;
      selfCopy = self;
      v30 = &v35;
      v31 = v38;
      v33 = v16;
      blockCopy = v25;
      v19 = v25;
      v34 = v14;
      v29 = v19;
      v32 = v39;
      dispatch_sync(v17, v26);
      v10 = v24;
      if (*(v36[0] + 40))
      {
        v20 = OSLogForCategory(@"Default");
        if (os_log_type_enabled(v20, OS_LOG_TYPE_DEBUG))
        {
          sub_42214(v18, v36, v20);
        }

        [(RCWaveformGenerator *)self terminateLoadingImmediately];
      }

      activeAudioFile = self->_activeAudioFile;
      self->_activeAudioFile = 0;

      if (v19)
      {
        v19[2](v19, 1.0);
      }

      _Block_object_dispose(&v35, 8);
      _Block_object_dispose(v38, 8);
      _Block_object_dispose(v39, 8);
    }

    else
    {
      v22 = OSLogForCategory(@"Default");
      if (os_log_type_enabled(v22, OS_LOG_TYPE_ERROR))
      {
        sub_42194();
      }
    }
  }

  else
  {
    v11 = 0;
  }

  return v11;
}

- (void)_appendAveragePowerLevelsByDigestingTimeRange:(id)range inAudioFile:(id)file
{
  var1 = range.var1;
  var0 = range.var0;
  fileCopy = file;
  queue = self->_queue;
  v10[0] = _NSConcreteStackBlock;
  v10[1] = 3221225472;
  v10[2] = sub_F740;
  v10[3] = &unk_6D2E0;
  v12 = var0;
  v13 = var1;
  v10[4] = self;
  v11 = fileCopy;
  v9 = fileCopy;
  dispatch_sync(queue, v10);
}

- (void)_onQueue_appendAveragePowerLevelsByDigestingTimeRange:(id)range inAudioFile:(id)file
{
  var1 = range.var1;
  var0 = range.var0;
  fileCopy = file;
  queue = self->_queue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_F80C;
  block[3] = &unk_6D308;
  v12 = fileCopy;
  v13 = a2;
  block[4] = self;
  v14 = var0;
  v15 = var1;
  v10 = fileCopy;
  dispatch_sync(queue, block);
}

- (id)synchronouslyApproximateWaveformForAVContentURL:(id)l byReadingCurrentFileAheadTimeRange:(id)range
{
  var1 = range.var1;
  var0 = range.var0;
  lCopy = l;
  v25 = 0;
  v26 = &v25;
  v27 = 0x3032000000;
  v28 = sub_E6BC;
  v29 = sub_E6CC;
  v30 = 0;
  queue = self->_queue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_FE70;
  block[3] = &unk_6D110;
  block[4] = self;
  block[5] = &v25;
  dispatch_sync(queue, block);
  v9 = v26[5];
  if (v9 && ([v9 url], v10 = objc_claimAutoreleasedReturnValue(), v11 = objc_msgSend(v10, "isEqual:", lCopy), v10, (v11 & 1) != 0) && !-[RCWaveformGenerator finished](self, "finished"))
  {
    paused = [(RCWaveformGenerator *)self paused];
    if ((paused & 1) == 0)
    {
      [(RCWaveformGenerator *)self setPaused:1];
    }

    v15 = [[RCWaveformGenerator alloc] initWithSamplingParametersFromGenerator:self];
    v16 = [[RCWaveformSegmentAccumulator alloc] initWithWaveformGenerator:v15];
    [(RCWaveformGenerator *)v15 _appendAveragePowerLevelsByDigestingTimeRange:v26[5] inAudioFile:var0, var1];
    [(RCWaveformSegmentAccumulator *)v16 waitUntilFinished];
    segments = [(RCWaveformSegmentAccumulator *)v16 segments];
    v18 = +[NSMutableArray arrayWithCapacity:](NSMutableArray, "arrayWithCapacity:", [segments count]);

    segments2 = [(RCWaveformSegmentAccumulator *)v16 segments];
    v20[0] = _NSConcreteStackBlock;
    v20[1] = 3221225472;
    v20[2] = sub_FE84;
    v20[3] = &unk_6D330;
    v22 = var0;
    v23 = var1;
    v12 = v18;
    v21 = v12;
    [segments2 enumerateObjectsUsingBlock:v20];

    if ((paused & 1) == 0)
    {
      [(RCWaveformGenerator *)self setPaused:0];
    }
  }

  else
  {
    v12 = 0;
  }

  _Block_object_dispose(&v25, 8);

  return v12;
}

- (BOOL)_appendAveragePowerLevelsByDigestingWaveformSegments:(id)segments
{
  segmentsCopy = segments;
  if (sub_D6F8(self, a2))
  {
    v13 = 0;
    v14 = &v13;
    v15 = 0x2020000000;
    v16 = 0;
    queue = self->_queue;
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_FFF8;
    block[3] = &unk_6D358;
    v10 = segmentsCopy;
    selfCopy = self;
    v12 = &v13;
    dispatch_sync(queue, block);
    v7 = *(v14 + 24);

    _Block_object_dispose(&v13, 8);
  }

  else
  {
    v7 = 0;
  }

  return v7 & 1;
}

- (void)_onQueue_flushWaveformSegment:(id)segment
{
  segmentCopy = segment;
  if (sub_D6F8(self, a2))
  {
    dispatch_semaphore_wait(self->_digestPausedSemaphore, 0xFFFFFFFFFFFFFFFFLL);
    dispatch_semaphore_signal(self->_digestPausedSemaphore);
    if (!self->_canceled)
    {
      [segmentCopy timeRange];
      if (v6 >= self->_totalFlushedTime)
      {
        [(RCWaveformGenerator *)self _onQueue_flushRemainingData];
      }

      else
      {
        [segmentCopy timeRange];
        +[NSException raise:format:](NSException, "raise:format:", NSGenericException, @"Invalid endTime (segment end time %f is less than total flushed time %f. Will regenerate waveform."), v7, *&self->_totalFlushedTime;
      }

      self->_framesConsumedSinceLastFlush = 0;
      [segmentCopy timeRange];
      self->_totalFlushedTime = v8;
      v9[0] = _NSConcreteStackBlock;
      v9[1] = 3221225472;
      v9[2] = sub_102D0;
      v9[3] = &unk_6D380;
      v9[4] = self;
      v10 = segmentCopy;
      [(RCWaveformGenerator *)self _onQueue_performObserversBlock:v9];
      self->_powerLevelBuffer.__end_ = self->_powerLevelBuffer.__begin_;
    }
  }
}

- (void)_onQueue_flushWithNextSegmentWithEndTime:(double)time isPredigest:(BOOL)predigest
{
  if (sub_D6F8(self, a2))
  {
    dispatch_semaphore_wait(self->_digestPausedSemaphore, 0xFFFFFFFFFFFFFFFFLL);
    dispatch_semaphore_signal(self->_digestPausedSemaphore);
    if (!self->_canceled)
    {
      v6 = RCTimeRangeMake(self->_totalFlushedTime, time);
      v8 = v7;
      if (self->_powerLevelBuffer.__end_ == self->_powerLevelBuffer.__begin_)
      {
        sub_1042C(&self->_powerLevelBuffer.__begin_, &self->_powerLevelBufferLastPushedValue);
      }

      v9 = [[RCWaveformSegment alloc] initWithTimeRange:&self->_powerLevelBuffer averagePowerLevelVector:v6, v8];
      [(RCWaveformSegment *)v9 timeRange];
      self->_totalFlushedTime = v10;
      self->_powerLevelsConsumedSinceLastFlush = 0;
      self->_framesConsumedSinceLastFlush = 0;
      v12[0] = _NSConcreteStackBlock;
      v12[1] = 3221225472;
      v12[2] = sub_1050C;
      v12[3] = &unk_6D380;
      v12[4] = self;
      v11 = v9;
      v13 = v11;
      [(RCWaveformGenerator *)self _onQueue_performObserversBlock:v12];
      self->_powerLevelBuffer.__end_ = self->_powerLevelBuffer.__begin_;
    }
  }
}

- (void)_onQueue_flushRemainingData
{
  if (sub_D6F8(self, a2))
  {
    totalFlushedTime = self->_totalFlushedTime;
    v4 = self->_totalDigestedTime - totalFlushedTime;
    if (v4 > 0.0)
    {
      v5 = totalFlushedTime + v4;

      [(RCWaveformGenerator *)self _onQueue_flushWithNextSegmentWithEndTime:0 isPredigest:v5];
    }
  }
}

- (void)_onQueue_digestAveragePowerLevel:(float)level
{
  levelCopy = level;
  if (sub_D6F8(self, a2))
  {
    dispatch_semaphore_wait(self->_digestPausedSemaphore, 0xFFFFFFFFFFFFFFFFLL);
    dispatch_semaphore_signal(self->_digestPausedSemaphore);
    if (!self->_canceled)
    {
      self->_powerLevelBufferLastPushedValue = level;
      sub_1042C(&self->_powerLevelBuffer.__begin_, &levelCopy);
    }
  }
}

- (void)_onQueue_pushAveragePowerLevel:(float)level
{
  if (sub_D6F8(self, a2))
  {
    dispatch_semaphore_wait(self->_digestPausedSemaphore, 0xFFFFFFFFFFFFFFFFLL);
    dispatch_semaphore_signal(self->_digestPausedSemaphore);
    if (!self->_canceled)
    {
      v5 = self->_powerLevelsConsumedSinceLastFlush + 1;
      self->_powerLevelsConsumedSinceLastFlush = v5;
      totalFlushedTime = self->_totalFlushedTime;
      segmentFlushInterval = self->_segmentFlushInterval;
      v8 = totalFlushedTime + v5 / self->_overviewUnitsPerSecond;
      self->_totalDigestedTime = v8;
      v9 = v8 - totalFlushedTime < segmentFlushInterval + 4.4408921e-16;
      v10 = -1.0;
      v11 = v9 ? -1.0 : v8;
      *&v10 = level;
      [(RCWaveformGenerator *)self _onQueue_digestAveragePowerLevel:v10];
      if (v11 > 0.0)
      {

        [(RCWaveformGenerator *)self _onQueue_flushWithNextSegmentWithEndTime:0 isPredigest:v11];
      }
    }
  }
}

- (void)_onQueue_appendSegment:(id)segment
{
  segmentCopy = segment;
  if (sub_D6F8(self, a2))
  {
    [(RCWaveformGenerator *)self _onQueue_flushWaveformSegment:segmentCopy];
  }
}

- (void)_onQueue_appendPowerMeterValuesFromRawAudioData:(void *)data frameCount:(int64_t)count format:(const AudioStreamBasicDescription *)format isPredigest:(BOOL)predigest
{
  predigestCopy = predigest;
  dataCopy = data;
  countCopy = count;
  if (sub_D6F8(self, a2))
  {
    dispatch_semaphore_wait(self->_digestPausedSemaphore, 0xFFFFFFFFFFFFFFFFLL);
    v9 = dispatch_semaphore_signal(self->_digestPausedSemaphore);
    if (!self->_canceled)
    {
      v10 = format->mChannelsPerFrame >= 2 && format->mBytesPerFrame > format->mBytesPerPacket;
      mSampleRate = self->_samplePowerMeter.mSampleRate;
      if (!self->_isSampleRateKnown)
      {
        self->_isSampleRateKnown = 1;
        mSampleRate = format->mSampleRate;
        sub_11030(&self->_samplePowerMeter, format->mSampleRate);
        v12 = mSampleRate * self->_segmentFlushInterval;
        self->_framesNeededForNextDB = (mSampleRate / self->_overviewUnitsPerSecond);
        self->_framesNeededForNextFlush = v12;
      }

      if (countCopy >= 1)
      {
        v13 = countCopy;
        v31 = &dataCopy[4 * countCopy];
        while (1)
        {
          framesNeededForNextDB = v13;
          if (self->_overviewUnitsPerSecond)
          {
            if (self->_framesNeededForNextDB >= v13)
            {
              framesNeededForNextDB = v13;
            }

            else
            {
              framesNeededForNextDB = self->_framesNeededForNextDB;
            }
          }

          if (framesNeededForNextDB >= 1 && self->_canceled)
          {
            return;
          }

          mBitsPerChannel = format->mBitsPerChannel;
          if (mBitsPerChannel == 16)
          {
            v18 = &dataCopy[2 * (countCopy - v13)];
            v17 = framesNeededForNextDB << 32;
            __chkstk_darwin(v9);
            v16 = &v31 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
            bzero(v16, v19);
            if (v10 || format->mChannelsPerFrame < 2)
            {
              if (framesNeededForNextDB >= 1)
              {
                v23 = 0;
                do
                {
                  *&v16[4 * v23] = *&v18[2 * v23] / 32767.0;
                  ++v23;
                }

                while ((framesNeededForNextDB & 0x7FFFFFFF) != v23);
              }
            }

            else if (framesNeededForNextDB >= 1)
            {
              v20 = 0;
              v21 = &v31[-2 * v13];
              do
              {
                v22 = *&v18[2 * v20];
                if (v22 <= *&v21[2 * v20])
                {
                  v22 = *&v21[2 * v20];
                }

                *&v16[4 * v20++] = v22 / 32767.0;
              }

              while ((framesNeededForNextDB & 0x7FFFFFFF) != v20);
            }
          }

          else
          {
            if (mBitsPerChannel != 32)
            {
              v30 = OSLogForCategory(@"Default");
              if (os_log_type_enabled(v30, OS_LOG_TYPE_ERROR))
              {
                sub_422B4(v30);
              }

              return;
            }

            if (!v10 && format->mChannelsPerFrame >= 2)
            {
              sub_1118C(&self->_samplePowerMeter, &v31[4 * (countCopy - v13)], 1, framesNeededForNextDB);
            }

            v16 = &dataCopy[4 * (countCopy - v13)];
            v17 = framesNeededForNextDB << 32;
          }

          sub_1118C(&self->_samplePowerMeter, v16, 1, framesNeededForNextDB);
          framesConsumedSinceLastFlush = self->_framesConsumedSinceLastFlush;
          v25 = self->_framesNeededForNextDB - (v17 >> 32);
          framesNeededForNextFlush = self->_framesNeededForNextFlush - (v17 >> 32);
          self->_framesNeededForNextDB = v25;
          self->_framesNeededForNextFlush = framesNeededForNextFlush;
          v27 = framesConsumedSinceLastFlush + (v17 >> 32);
          self->_framesConsumedSinceLastFlush = v27;
          v28 = 1.0;
          if (v10)
          {
            LODWORD(v28) = format->mChannelsPerFrame;
            v28 = *&v28;
          }

          self->_totalDigestedTime = self->_totalFlushedTime + v27 / mSampleRate / v28;
          if (v25 <= 0)
          {
            break;
          }

LABEL_42:
          if (framesNeededForNextFlush <= 0)
          {
            v9 = [(RCWaveformGenerator *)self _onQueue_flushWithNextSegmentWithEndTime:predigestCopy isPredigest:self->_totalDigestedTime];
            self->_framesNeededForNextFlush = (mSampleRate * self->_segmentFlushInterval);
          }

          v13 -= v17 >> 32;
          if (v13 <= 0)
          {
            return;
          }
        }

        mMaxPeak = self->_samplePowerMeter.mMaxPeak;
        if (mMaxPeak <= 0.000001)
        {
          LODWORD(mMaxPeak) = -1024458752;
          if (predigestCopy)
          {
LABEL_41:
            sub_11010(&self->_samplePowerMeter.mSampleRate);
            self->_framesNeededForNextDB = (mSampleRate / self->_overviewUnitsPerSecond);
            framesNeededForNextFlush = self->_framesNeededForNextFlush;
            goto LABEL_42;
          }
        }

        else
        {
          mMaxPeak = log10(mMaxPeak) * 20.0;
          *&mMaxPeak = mMaxPeak;
          if (predigestCopy)
          {
            goto LABEL_41;
          }
        }

        [(RCWaveformGenerator *)self _onQueue_digestAveragePowerLevel:mMaxPeak, v31];
        goto LABEL_41;
      }
    }
  }
}

- (id).cxx_construct
{
  sub_10FD0(&self->_samplePowerMeter.mSampleRate);
  self->_powerLevelBuffer.__begin_ = 0;
  self->_powerLevelBuffer.__end_ = 0;
  self->_powerLevelBuffer.__cap_ = 0;
  return self;
}

@end