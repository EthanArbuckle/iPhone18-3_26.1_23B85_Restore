@interface VCMediaStreamStats
- (VCMediaStreamStats)init;
- (double)framerate;
- (double)getFramerateSinceTime:(double)time;
- (unsigned)bitrateKbps;
- (unsigned)getBitrateKbpsSinceTime:(double)time;
- (void)dealloc;
- (void)init;
- (void)recordDataWithSize:(double)size atTime:(double)time;
- (void)updateMinMaxSinceTime:(double)time;
@end

@implementation VCMediaStreamStats

- (VCMediaStreamStats)init
{
  v8 = *MEMORY[0x1E69E9840];
  v7.receiver = self;
  v7.super_class = VCMediaStreamStats;
  v2 = [(VCMediaStreamStats *)&v7 init];
  v3 = v2;
  if (v2)
  {
    if ((SummerCreateHandle(v2 + 1, 400) & 0x80000000) != 0 && VRTraceGetErrorLogLevelForModule() >= 3)
    {
      v4 = VRTraceErrorLogLevelToCSTR();
      v5 = *MEMORY[0x1E6986650];
      if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
      {
        [(VCMediaStreamStats *)v4 init];
      }
    }

    v3->_minFramerate = 1.79769313e308;
    v3->_minBitrateKbps = -1;
  }

  return v3;
}

- (void)dealloc
{
  v4 = *MEMORY[0x1E69E9840];
  if (self->_summerHandle != 0xFFFFFFFFLL)
  {
    SummerCloseHandle();
  }

  v3.receiver = self;
  v3.super_class = VCMediaStreamStats;
  [(VCMediaStreamStats *)&v3 dealloc];
}

- (void)recordDataWithSize:(double)size atTime:(double)time
{
  SummerAdd(size, time);
  lastRecordingTime = self->_lastRecordingTime;
  if (lastRecordingTime != 0.0)
  {
    v7 = ((time - lastRecordingTime) * 1000.0 + 0.5);
    if (self->_maxFrameDurationMillis < v7)
    {
      self->_maxFrameDurationMillis = v7;
    }
  }

  self->_lastRecordingTime = time;
}

- (double)framerate
{
  v3 = micro() + -1.0;

  [(VCMediaStreamStats *)self getFramerateSinceTime:v3];
  return result;
}

- (unsigned)bitrateKbps
{
  v3 = micro() + -1.0;

  return [(VCMediaStreamStats *)self getBitrateKbpsSinceTime:v3];
}

- (void)updateMinMaxSinceTime:(double)time
{
  [(VCMediaStreamStats *)self getFramerateSinceTime:?];
  if (self->_maxFramerate < v5)
  {
    self->_maxFramerate = v5;
  }

  if (self->_minFramerate > v5)
  {
    self->_minFramerate = v5;
  }

  v6 = [(VCMediaStreamStats *)self getBitrateKbpsSinceTime:time];
  if (self->_maxBitrateKbps < v6)
  {
    self->_maxBitrateKbps = v6;
  }

  if (self->_minBitrateKbps > v6)
  {
    self->_minBitrateKbps = v6;
  }
}

- (double)getFramerateSinceTime:(double)time
{
  v7 = *MEMORY[0x1E69E9840];
  v6 = -1431655766;
  v5 = NAN;
  v3 = SummerLengthPred(time, self->_summerHandle, SummerGreaterThan, &v5, &v6);
  result = 0.0;
  if ((v3 & 0x80000000) == 0 && v5 > 0.0)
  {
    return v6 / v5;
  }

  return result;
}

- (unsigned)getBitrateKbpsSinceTime:(double)time
{
  v6[1] = *MEMORY[0x1E69E9840];
  v5 = NAN;
  v6[0] = NAN;
  v3 = 0.0;
  if ((SummerSumPred(time, 0.0, self->_summerHandle, SummerGreaterThan, SummerIdentity, &v5, v6) & 0x80000000) == 0 && v5 > 0.0)
  {
    v3 = v6[0] * 8.0 / v5;
  }

  return (v3 / 1000.0 + 0.5);
}

- (void)init
{
  v8 = *MEMORY[0x1E69E9840];
  v2 = 136315650;
  selfCopy = self;
  v4 = 2080;
  v5 = "[VCMediaStreamStats init]";
  v6 = 1024;
  v7 = 24;
  _os_log_error_impl(&dword_1DB56E000, a2, OS_LOG_TYPE_ERROR, " [%s] %s:%d failed to create Summer handle!", &v2, 0x1Cu);
}

@end