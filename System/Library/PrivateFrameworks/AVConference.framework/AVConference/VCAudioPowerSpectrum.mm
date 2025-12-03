@interface VCAudioPowerSpectrum
- (NSString)description;
- (VCAudioPowerSpectrum)initWithBinCount:(unsigned int)count streamToken:(int64_t)token sinkContext:(void *)context sinkCallback:(void *)callback;
- (_VCRange)frequencyRange;
- (void)dealloc;
@end

@implementation VCAudioPowerSpectrum

- (VCAudioPowerSpectrum)initWithBinCount:(unsigned int)count streamToken:(int64_t)token sinkContext:(void *)context sinkCallback:(void *)callback
{
  v26 = *MEMORY[0x1E69E9840];
  if (count && context && callback)
  {
    v13.receiver = self;
    v13.super_class = VCAudioPowerSpectrum;
    result = [(VCAudioPowerSpectrum *)&v13 init];
    if (result)
    {
      result->_realtimeContext.outputBinCount = count;
      result->_streamToken = token;
      result->_realtimeContext.sinkContext = context;
      result->_realtimeContext.sinkCallback = callback;
      result->_realtimeContext.averageLevel = -120.0;
      result->_realtimeContext.streamToken = token;
    }
  }

  else
  {

    if (VRTraceGetErrorLogLevelForModule() >= 3)
    {
      v11 = VRTraceErrorLogLevelToCSTR();
      v12 = *MEMORY[0x1E6986650];
      if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
      {
        *buf = 136316418;
        v15 = v11;
        v16 = 2080;
        v17 = "[VCAudioPowerSpectrum initWithBinCount:streamToken:sinkContext:sinkCallback:]";
        v18 = 1024;
        v19 = 35;
        v20 = 1024;
        countCopy = count;
        v22 = 2048;
        contextCopy = context;
        v24 = 2048;
        callbackCopy = callback;
        _os_log_error_impl(&dword_1DB56E000, v12, OS_LOG_TYPE_ERROR, " [%s] %s:%d Power spectrum initialzed with incorrect arguments: binCount[%d] sinkContext[%p] sinkCallback[%p]!", buf, 0x36u);
      }
    }

    return 0;
  }

  return result;
}

- (void)dealloc
{
  v4 = *MEMORY[0x1E69E9840];
  _VCAudioPowerSpectrum_CleanUp(&self->_realtimeContext);
  v3.receiver = self;
  v3.super_class = VCAudioPowerSpectrum;
  [(VCAudioPowerSpectrum *)&v3 dealloc];
}

- (_VCRange)frequencyRange
{
  min = self->_realtimeContext.frequencyRange.min;
  max = self->_realtimeContext.frequencyRange.max;
  result.max = max;
  result.min = min;
  return result;
}

- (NSString)description
{
  v3 = objc_alloc(MEMORY[0x1E696AD60]);
  v4 = objc_opt_class();
  v5 = [v3 initWithFormat:@"%@: [%f;%f] : ", NSStringFromClass(v4), self->_realtimeContext.frequencyRange.min, self->_realtimeContext.frequencyRange.max];
  if (self->_realtimeContext.format.mChannelsPerFrame)
  {
    v6 = 0;
    do
    {
      v7 = self->_realtimeContext.channels + 112 * v6;
      [v5 appendFormat:@"\n channel[%d] bins:", v6];
      if (*(v7 + 24))
      {
        v8 = 0;
        v9 = (*(v7 + 13) + 8);
        do
        {
          [v5 appendFormat:@"[%f;%f;%f]", *v9, *(v9 - 2), *(v9 - 1)];
          ++v8;
          v9 += 3;
        }

        while (v8 < *(v7 + 24));
      }

      ++v6;
    }

    while (v6 < self->_realtimeContext.format.mChannelsPerFrame);
  }

  return v5;
}

@end