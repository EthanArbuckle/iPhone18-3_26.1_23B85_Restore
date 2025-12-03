@interface RCActivityWaveformProcessor
- (BOOL)getAmplitudes:(float *)amplitudes count:(int)count startTime:(double)time endTime:(double)endTime;
- (RCActivityWaveformProcessor)init;
- (RCActivityWaveformProcessorDelegate)delegate;
- (VMFrameRange)_bufferRange;
- (double)availableRangeEnd;
- (double)availableRangeStart;
- (double)recordingStartTime;
- (float)runningAverage;
- (int)_excessFrames;
- (void)_tearDown;
- (void)consumeRingBufferIfNecessary;
- (void)dealloc;
- (void)prepareToProcessWithFormat:(id)format audioTime:(id)time punchInTime:(double)inTime;
- (void)processAudioBuffer:(id)buffer;
@end

@implementation RCActivityWaveformProcessor

- (RCActivityWaveformProcessor)init
{
  v3.receiver = self;
  v3.super_class = RCActivityWaveformProcessor;
  result = [(RCActivityWaveformProcessor *)&v3 init];
  if (result)
  {
    result->_readerLock._os_unfair_lock_opaque = 0;
  }

  return result;
}

- (void)dealloc
{
  [(RCActivityWaveformProcessor *)self _tearDown];
  v3.receiver = self;
  v3.super_class = RCActivityWaveformProcessor;
  [(RCActivityWaveformProcessor *)&v3 dealloc];
}

- (double)recordingStartTime
{
  if (!self->_isPrepared)
  {
    return 0.0;
  }

  [(RCActivityWaveformProcessor *)self referenceMediaTime];
  return result;
}

- (double)availableRangeStart
{
  result = 0.0;
  if (self->_isPrepared)
  {
    return self->_referenceMediaTime + [(RCActivityWaveformProcessor *)self _bufferRange]/ self->_sampleRate;
  }

  return result;
}

- (double)availableRangeEnd
{
  result = 0.0;
  if (self->_isPrepared)
  {
    _bufferRange = [(RCActivityWaveformProcessor *)self _bufferRange];
    return self->_referenceMediaTime + (_bufferRange + v5) / self->_sampleRate;
  }

  return result;
}

- (void)prepareToProcessWithFormat:(id)format audioTime:(id)time punchInTime:(double)inTime
{
  formatCopy = format;
  timeCopy = time;
  if ([formatCopy isStandard])
  {
    if (self->_isPrepared)
    {
      [(RCActivityWaveformProcessor *)self _tearDown];
    }

    [formatCopy sampleRate];
    self->_sampleRate = v10;
    self->_punchInTime = inTime;
    v11 = +[RCRecorderStyleProvider sharedStyleProvider];
    [v11 activityWaveformTimeWindowDuration];
    v13 = v12;

    sampleRate = self->_sampleRate;
    +[AVAudioTime secondsForHostTime:](AVAudioTime, "secondsForHostTime:", [timeCopy hostTime]);
    v15 = v13 + 0.2 + 0.5;
    self->_referenceMediaTime = v16;
    self->_emptyFramesToLeaveInInputBuffer = (self->_sampleRate * 0.5);
    sub_10003F998(&self->_ringBuffer, (sampleRate * v15), 1, 0);
    v17 = objc_alloc_init(RCAmplitudeAnalyzer);
    mainQueueAmplitudeAnalyzer = self->_mainQueueAmplitudeAnalyzer;
    self->_mainQueueAmplitudeAnalyzer = v17;

    v19 = objc_alloc_init(RCAmplitudeAnalyzer);
    audioQueueAmplitudeAnalyzer = self->_audioQueueAmplitudeAnalyzer;
    self->_audioQueueAmplitudeAnalyzer = v19;

    v21 = +[RCRecorderStyleProvider sharedStyleProvider];
    [v21 activityWaveformRunningAverageDuration];

    operator new();
  }

  v22 = OSLogForCategory();
  if (os_log_type_enabled(v22, OS_LOG_TYPE_ERROR))
  {
    sub_1001B6DEC(v22, v23, v24, v25, v26, v27, v28, v29);
  }
}

- (void)_tearDown
{
  sub_10003FB5C(&self->_ringBuffer);
  rollingSumBuffer = self->_rollingSumBuffer;
  if (rollingSumBuffer)
  {
    v4 = *rollingSumBuffer;
    if (*rollingSumBuffer)
    {
      rollingSumBuffer[1] = v4;
      operator delete(v4);
    }

    operator delete();
  }

  self->_isPrepared = 0;
}

- (void)processAudioBuffer:(id)buffer
{
  bufferCopy = buffer;
  format = [bufferCopy format];
  isStandard = [format isStandard];

  if (isStandard)
  {
    if (!self->_isPrepared)
    {
      v32 = +[NSAssertionHandler currentHandler];
      [v32 handleFailureInMethod:a2 object:self file:@"RCActivityWaveformProcessor.mm" lineNumber:131 description:@"You must call prepareToProcessWithFormat:audioTime:punchInTime: prior to processing."];
    }

    floatChannelData = [bufferCopy floatChannelData];
    frameLength = [bufferCopy frameLength];
    v10 = frameLength;
    if (frameLength)
    {
      mCapacity = self->_ringBuffer.mCapacity;
      v12 = atomic_load(&self->_ringBuffer.mFill);
      if (mCapacity - v12 < frameLength)
      {
        [(RCActivityWaveformProcessor *)self consumeRingBufferIfNecessary];
      }

      v13 = self->_ringBuffer.mCapacity;
      v14 = atomic_load(&self->_ringBuffer.mFill);
      if (v13 - v14 >= v10)
      {
        memcpy(*self->_ringBuffer.mWritePointers, *floatChannelData, 4 * v10);
        sub_10003FE04(&self->_ringBuffer, v10);
        [(RCAmplitudeAnalyzer *)self->_audioQueueAmplitudeAnalyzer calculateAmplitude:floatChannelData sampleCount:v10 channelCount:1];
      }

      else
      {
        v15 = OSLogForCategory();
        if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
        {
          sub_1001B6EDC(v15, v16, v17, v18, v19, v20, v21, v22);
        }

        v23 = -1.0;
      }

      v33[0] = _NSConcreteStackBlock;
      v33[1] = 3221225472;
      v33[2] = sub_10003FE7C;
      v33[3] = &unk_10028AA00;
      v34 = v23;
      v33[4] = self;
      dispatch_async(&_dispatch_main_q, v33);
    }
  }

  else
  {
    v24 = OSLogForCategory();
    if (os_log_type_enabled(v24, OS_LOG_TYPE_ERROR))
    {
      sub_1001B6E64(v24, v25, v26, v27, v28, v29, v30, v31);
    }
  }
}

- (BOOL)getAmplitudes:(float *)amplitudes count:(int)count startTime:(double)time endTime:(double)endTime
{
  if (!self->_isPrepared)
  {
    return 0;
  }

  os_unfair_lock_lock(&self->_readerLock);
  referenceMediaTime = self->_referenceMediaTime;
  sampleRate = self->_sampleRate;
  _bufferRange = [(RCActivityWaveformProcessor *)self _bufferRange];
  if (count < 1)
  {
    v21 = 1;
  }

  else
  {
    v15 = _bufferRange;
    v16 = 0;
    v17 = ((time - referenceMediaTime) * sampleRate);
    v18 = (endTime - time) / count;
    v19 = &_bufferRange[v14];
    countCopy = count;
    v21 = 1;
    do
    {
      v22 = (v18 * self->_sampleRate);
      v23 = (v16 * v22);
      v24 = v23 + v17;
      if (v15 <= v23 + v17)
      {
        v25 = (v23 + v17);
      }

      else
      {
        v25 = v15;
      }

      v26 = (v24 + v22);
      if (v19 < v26)
      {
        v26 = v19;
      }

      v27 = v26 - v25;
      v28 = (v27 & ~(v27 >> 63)) == v22;
      if (v27 < 1)
      {
        v30 = 0.0;
      }

      else
      {
        v29 = &v25[-self->_inputBufferReadPosition];
        v32 = 0;
        v32 = &(*self->_ringBuffer.mReadPointers)[v29];
        [RCAmplitudeAnalyzer calculateAmplitude:"calculateAmplitude:sampleCount:channelCount:" sampleCount:&v32 channelCount:?];
      }

      v21 &= v28;
      amplitudes[v16++] = v30;
    }

    while (countCopy != v16);
  }

  os_unfair_lock_unlock(&self->_readerLock);
  [(RCActivityWaveformProcessor *)self consumeRingBufferIfNecessary];
  return v21;
}

- (int)_excessFrames
{
  mCapacity = self->_ringBuffer.mCapacity;
  v3 = atomic_load(&self->_ringBuffer.mFill);
  v4 = mCapacity - v3;
  emptyFramesToLeaveInInputBuffer = self->_emptyFramesToLeaveInInputBuffer;
  v6 = emptyFramesToLeaveInInputBuffer >= v4;
  v7 = emptyFramesToLeaveInInputBuffer - v4;
  if (v6)
  {
    return v7;
  }

  else
  {
    return 0;
  }
}

- (void)consumeRingBufferIfNecessary
{
  if ([(RCActivityWaveformProcessor *)self _excessFrames]>= 1)
  {
    os_unfair_lock_lock(&self->_readerLock);
    _excessFrames = [(RCActivityWaveformProcessor *)self _excessFrames];
    if (_excessFrames >= 1)
    {
      v4 = _excessFrames;
      sub_100040168(&self->_ringBuffer, _excessFrames);
      self->_inputBufferReadPosition += v4;
    }

    os_unfair_lock_unlock(&self->_readerLock);
  }
}

- (float)runningAverage
{
  result = 0.0;
  if (self->_isPrepared)
  {
    rollingSumBuffer = self->_rollingSumBuffer;
    v4 = rollingSumBuffer[5];
    return v4 / *(rollingSumBuffer + 6);
  }

  return result;
}

- (VMFrameRange)_bufferRange
{
  inputBufferReadPosition = self->_inputBufferReadPosition;
  v3 = atomic_load(&self->_ringBuffer.mFill);
  v4 = v3;
  v5 = inputBufferReadPosition;
  result.var1 = v4;
  result.var0 = v5;
  return result;
}

- (RCActivityWaveformProcessorDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end