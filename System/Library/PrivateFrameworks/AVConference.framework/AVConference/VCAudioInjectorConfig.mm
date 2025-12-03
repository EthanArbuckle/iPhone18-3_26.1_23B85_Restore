@interface VCAudioInjectorConfig
- (AudioStreamBasicDescription)audioFormat;
- (BOOL)isValid;
- (VCAudioInjectorConfig)init;
- (id)description;
- (void)dealloc;
- (void)isValid;
- (void)setAudioFormat:(AudioStreamBasicDescription *)format;
@end

@implementation VCAudioInjectorConfig

- (VCAudioInjectorConfig)init
{
  v9 = *MEMORY[0x1E69E9840];
  v8.receiver = self;
  v8.super_class = VCAudioInjectorConfig;
  result = [(VCAudioInjectorConfig *)&v8 init];
  if (result)
  {
    __asm { FMOV            V0.2D, #-1.0 }

    *&result->_startHostTime = _Q0;
    result->_loopCount = -1;
    result->_sineWaveAmplitude = 0.05;
  }

  return result;
}

- (void)dealloc
{
  v4 = *MEMORY[0x1E69E9840];

  v3.receiver = self;
  v3.super_class = VCAudioInjectorConfig;
  [(VCAudioInjectorConfig *)&v3 dealloc];
}

- (id)description
{
  v7 = *MEMORY[0x1E69E9840];
  v5 = 0u;
  v6 = 0u;
  *__str = 0u;
  v4 = 0u;
  return [MEMORY[0x1E696AEC0] stringWithFormat:@"[%p] path=%@ fileName=%@ fromBeginning=%d startHostTime=%f loopLength=%f audioFormat=%s reportingAgent=%@", self, self->_path, self->_fileName, self->_fromBeginning, *&self->_startHostTime, *&self->_loopLength, FormatToCStr(&self->_audioFormat, __str, 0x40uLL), self->_reportingAgent];
}

- (BOOL)isValid
{
  v12 = *MEMORY[0x1E69E9840];
  v10 = 0;
  memset(v9, 0, sizeof(v9));
  if (!memcmp(v9, &self->_audioFormat, 0x28uLL))
  {
    [VCAudioInjectorConfig isValid];
    return v11;
  }

  mSampleRate = self->_audioFormat.mSampleRate;
  if (mSampleRate <= 0.0)
  {
    [VCAudioInjectorConfig isValid];
    return v11;
  }

  sineWaveFrequencyHz = self->_sineWaveFrequencyHz;
  if (sineWaveFrequencyHz)
  {
    sineWaveAmplitude = self->_sineWaveAmplitude;
    if (sineWaveAmplitude < 0.0 || sineWaveAmplitude > 1.0)
    {
      [VCAudioInjectorConfig isValid];
      return v11;
    }

    v7 = (mSampleRate * 0.5);
    if (sineWaveFrequencyHz > v7)
    {
      [(VCAudioInjectorConfig *)&self->_sineWaveFrequencyHz isValid];
      return v11;
    }

    if (self->_path)
    {
      [VCAudioInjectorConfig isValid];
      return v11;
    }
  }

  else
  {
    if (self->_loopLength == 0.0)
    {
      [VCAudioInjectorConfig isValid];
      return v11;
    }

    if (!self->_path)
    {
      [VCAudioInjectorConfig isValid];
      return v11;
    }
  }

  return 1;
}

- (AudioStreamBasicDescription)audioFormat
{
  v3 = *&self[1].mBytesPerFrame;
  *&retstr->mSampleRate = *&self[1].mFormatID;
  *&retstr->mBytesPerPacket = v3;
  *&retstr->mBitsPerChannel = self[2].mSampleRate;
  return self;
}

- (void)setAudioFormat:(AudioStreamBasicDescription *)format
{
  v3 = *&format->mSampleRate;
  v4 = *&format->mBytesPerPacket;
  *&self->_audioFormat.mBitsPerChannel = *&format->mBitsPerChannel;
  *&self->_audioFormat.mSampleRate = v3;
  *&self->_audioFormat.mBytesPerPacket = v4;
}

- (void)isValid
{
  if (VRTraceGetErrorLogLevelForModule() >= 3)
  {
    VRTraceErrorLogLevelToCSTR();
    if (OUTLINED_FUNCTION_28())
    {
      OUTLINED_FUNCTION_1_0();
      OUTLINED_FUNCTION_0();
      OUTLINED_FUNCTION_2();
      _os_log_error_impl(v0, v1, v2, v3, v4, 0x1Cu);
    }
  }

  OUTLINED_FUNCTION_18();
}

@end