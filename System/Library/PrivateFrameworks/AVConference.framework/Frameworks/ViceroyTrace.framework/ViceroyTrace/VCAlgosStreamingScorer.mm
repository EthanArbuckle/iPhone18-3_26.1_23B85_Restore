@interface VCAlgosStreamingScorer
- (VCAlgosStreamingScorer)initWithLaunchTime:(double)time;
- (double)finalizeScoreStreamingWithTime:(double)time;
- (double)scoreStreaming;
- (double)streamQuality;
- (void)addCallFailureWithTime:(double)time detailedErrorCode:(int)code;
- (void)addLargeGapErasureWithTime:(double)time largeGapErasureRate:(double)rate;
- (void)addStreamTierSwitchWithTime:(double)time;
- (void)addVideoStallWithStartTime:(double)time endStallTime:(double)stallTime;
- (void)dealloc;
- (void)endWithTime:(double)time streamType:(int)type;
- (void)scoreStreaming;
- (void)setVideoFramerate:(double)framerate;
- (void)setVideoResolutionWithTime:(double)time width:(int)width height:(int)height;
- (void)startWithTime:(double)time streamType:(int)type;
- (void)stopWithTime:(double)time streamType:(int)type;
- (void)updateRelativeTime:(double)time;
@end

@implementation VCAlgosStreamingScorer

- (VCAlgosStreamingScorer)initWithLaunchTime:(double)time
{
  v25 = *MEMORY[0x277D85DE8];
  v14.receiver = self;
  v14.super_class = VCAlgosStreamingScorer;
  v4 = [(VCAlgosStreamingScorer *)&v14 init];
  if (v4)
  {
    if (objc_opt_class())
    {
      v4->_algosScore = objc_alloc_init(MEMORY[0x277D2CA40]);
    }

    v4->_launchTime = time;
    v4->_blockAlgosScoreLock._os_unfair_lock_opaque = 0;
    __asm { FMOV            V0.2D, #5.0 }

    *&v4->_resolutionPredictedMOS = _Q0;
    if (VRTraceGetErrorLogLevelForModule("") >= 7)
    {
      v10 = VRTraceErrorLogLevelToCSTR(7u);
      v11 = gVRTraceOSLog;
      if (os_log_type_enabled(gVRTraceOSLog, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 136316162;
        v16 = v10;
        v17 = 2080;
        v18 = "[VCAlgosStreamingScorer initWithLaunchTime:]";
        v19 = 1024;
        v20 = 90;
        v21 = 2048;
        v22 = v4;
        v23 = 2048;
        timeCopy = time;
        _os_log_impl(&dword_23D4DF000, v11, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d [%p] init launchTime %f ", buf, 0x30u);
      }
    }
  }

  v12 = *MEMORY[0x277D85DE8];
  return v4;
}

- (void)dealloc
{
  os_unfair_lock_lock(&self->_blockAlgosScoreLock);

  os_unfair_lock_unlock(&self->_blockAlgosScoreLock);
  v3.receiver = self;
  v3.super_class = VCAlgosStreamingScorer;
  [(VCAlgosStreamingScorer *)&v3 dealloc];
}

- (void)updateRelativeTime:(double)time
{
  lastStreamTierSwitch = self->_lastStreamTierSwitch;
  if (lastStreamTierSwitch > 0.0)
  {
    self->_totalStopDuration = time - lastStreamTierSwitch + self->_totalStopDuration;
  }
}

- (void)startWithTime:(double)time streamType:(int)type
{
  v34 = *MEMORY[0x277D85DE8];
  os_unfair_lock_lock(&self->_blockAlgosScoreLock);
  if (self->_didStopStream)
  {
    [(VCAlgosStreamingScorer *)self updateRelativeTime:time];
    [(VCAlgosStreamingScorer *)self relativeTime:time];
    v8 = v7;
    if (VRTraceGetErrorLogLevelForModule("") >= 7)
    {
      v9 = VRTraceErrorLogLevelToCSTR(7u);
      v10 = gVRTraceOSLog;
      if (os_log_type_enabled(gVRTraceOSLog, OS_LOG_TYPE_DEFAULT))
      {
        launchTime = self->_launchTime;
        v16 = 136317186;
        v17 = v9;
        v18 = 2080;
        v19 = "[VCAlgosStreamingScorer startWithTime:streamType:]";
        v20 = 1024;
        v21 = 126;
        v22 = 2048;
        selfCopy2 = self;
        v24 = 2048;
        timeCopy2 = time;
        v26 = 2048;
        v27 = v8;
        v28 = 2048;
        v29 = time - launchTime;
        v30 = 2048;
        v31 = v8 - launchTime;
        v32 = 1024;
        typeCopy = type;
        _os_log_impl(&dword_23D4DF000, v10, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d [%p] stream resume time=%f relativeTime=%f timeSinceLaunch=%f relativeTimeSinceLaunch=%f streamType=%d", &v16, 0x54u);
      }
    }
  }

  else
  {
    if (VRTraceGetErrorLogLevelForModule("") >= 7)
    {
      v12 = VRTraceErrorLogLevelToCSTR(7u);
      v13 = gVRTraceOSLog;
      if (os_log_type_enabled(gVRTraceOSLog, OS_LOG_TYPE_DEFAULT))
      {
        v14 = time - self->_launchTime;
        v16 = 136316674;
        v17 = v12;
        v18 = 2080;
        v19 = "[VCAlgosStreamingScorer startWithTime:streamType:]";
        v20 = 1024;
        v21 = 119;
        v22 = 2048;
        selfCopy2 = self;
        v24 = 2048;
        timeCopy2 = time;
        v26 = 2048;
        v27 = v14;
        v28 = 1024;
        LODWORD(v29) = type;
        _os_log_impl(&dword_23D4DF000, v13, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d [%p] stream start playTime=%f timeSinceLaunch=%f streamType=%d", &v16, 0x40u);
      }
    }

    if (self->_didStartStream)
    {
      [VCAlgosStreamingScorer startWithTime:streamType:];
      goto LABEL_12;
    }

    if (self->_didEndStream)
    {
      [VCAlgosStreamingScorer startWithTime:streamType:];
      goto LABEL_12;
    }

    [(NWSAlgosStreamScore *)self->_algosScore addStreamStart:self->_launchTime play:time];
  }

  self->_didEndStream = 0;
  *&self->_didStartStream = 1;
  self->_lastStreamTierSwitch = time;
LABEL_12:
  os_unfair_lock_unlock(&self->_blockAlgosScoreLock);
  v15 = *MEMORY[0x277D85DE8];
}

- (void)stopWithTime:(double)time streamType:(int)type
{
  v30 = *MEMORY[0x277D85DE8];
  [(VCAlgosStreamingScorer *)self relativeTime:?];
  v8 = v7;
  if (VRTraceGetErrorLogLevelForModule("") >= 7)
  {
    v9 = VRTraceErrorLogLevelToCSTR(7u);
    v10 = gVRTraceOSLog;
    if (os_log_type_enabled(gVRTraceOSLog, OS_LOG_TYPE_DEFAULT))
    {
      v16 = 136316674;
      v17 = v9;
      v18 = 2080;
      v19 = "[VCAlgosStreamingScorer stopWithTime:streamType:]";
      v20 = 1024;
      v21 = 139;
      v22 = 2048;
      selfCopy = self;
      v24 = 2048;
      timeCopy = time;
      v26 = 2048;
      v27 = v8;
      v28 = 1024;
      typeCopy = type;
      _os_log_impl(&dword_23D4DF000, v10, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d [%p] stream stop with time %f relativeTime=%f streamType %d", &v16, 0x40u);
    }
  }

  os_unfair_lock_lock(&self->_blockAlgosScoreLock);
  if (self->_didStopStream)
  {
    [VCAlgosStreamingScorer stopWithTime:streamType:];
  }

  else if (self->_didEndStream)
  {
    [VCAlgosStreamingScorer stopWithTime:streamType:];
  }

  else if (self->_didStartStream)
  {
    [(VCAlgosStreamingScorer *)self relativeTime:self->_lastStreamTierSwitch];
    v12 = v11;
    algosScore = self->_algosScore;
    [(VCAlgosStreamingScorer *)self streamQuality];
    [(NWSAlgosStreamScore *)algosScore addStreamTierSwitch:v12 end:v8 quality:v14 weight:1.0];
    self->_didStopStream = 1;
    self->_lastStreamTierSwitch = time;
    ++self->_pendingScoringEventCount;
  }

  else
  {
    [VCAlgosStreamingScorer stopWithTime:streamType:];
  }

  os_unfair_lock_unlock(&self->_blockAlgosScoreLock);
  v15 = *MEMORY[0x277D85DE8];
}

- (void)endWithTime:(double)time streamType:(int)type
{
  v26 = *MEMORY[0x277D85DE8];
  [(VCAlgosStreamingScorer *)self relativeTime:?];
  v8 = v7;
  if (VRTraceGetErrorLogLevelForModule("") >= 7)
  {
    v9 = VRTraceErrorLogLevelToCSTR(7u);
    v10 = gVRTraceOSLog;
    if (os_log_type_enabled(gVRTraceOSLog, OS_LOG_TYPE_DEFAULT))
    {
      v12 = 136316674;
      v13 = v9;
      v14 = 2080;
      v15 = "[VCAlgosStreamingScorer endWithTime:streamType:]";
      v16 = 1024;
      v17 = 157;
      v18 = 2048;
      selfCopy = self;
      v20 = 2048;
      timeCopy = time;
      v22 = 2048;
      v23 = v8;
      v24 = 1024;
      typeCopy = type;
      _os_log_impl(&dword_23D4DF000, v10, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d [%p] stream end with time %f relativeTime=%f streamType %d", &v12, 0x40u);
    }
  }

  os_unfair_lock_lock(&self->_blockAlgosScoreLock);
  if (self->_didEndStream)
  {
    [VCAlgosStreamingScorer endWithTime:streamType:];
  }

  else if (self->_didStartStream)
  {
    [(NWSAlgosStreamScore *)self->_algosScore addStreamEnd:v8];
    self->_didEndStream = 1;
    ++self->_pendingScoringEventCount;
  }

  else
  {
    [VCAlgosStreamingScorer endWithTime:streamType:];
  }

  os_unfair_lock_unlock(&self->_blockAlgosScoreLock);
  v11 = *MEMORY[0x277D85DE8];
}

- (void)addVideoStallWithStartTime:(double)time endStallTime:(double)stallTime
{
  v35 = *MEMORY[0x277D85DE8];
  v5 = stallTime - time;
  if (stallTime - time >= 0.5)
  {
    [(VCAlgosStreamingScorer *)self relativeTime:time];
    v9 = v8;
    [(VCAlgosStreamingScorer *)self relativeTime:stallTime];
    v11 = v10;
    if (VRTraceGetErrorLogLevelForModule("") >= 7)
    {
      v12 = VRTraceErrorLogLevelToCSTR(7u);
      v13 = gVRTraceOSLog;
      if (os_log_type_enabled(gVRTraceOSLog, OS_LOG_TYPE_DEFAULT))
      {
        v17 = 136317186;
        v18 = v12;
        v19 = 2080;
        v20 = "[VCAlgosStreamingScorer addVideoStallWithStartTime:endStallTime:]";
        v21 = 1024;
        v22 = 176;
        v23 = 2048;
        selfCopy = self;
        v25 = 2048;
        stallTimeCopy = stallTime;
        v27 = 2048;
        timeCopy = time;
        v29 = 2048;
        v30 = v9;
        v31 = 2048;
        v32 = v11;
        v33 = 2048;
        v34 = v5;
        _os_log_impl(&dword_23D4DF000, v13, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d [%p] add video stall endStallTime=%f startStallTime=%f relativeStartStallTime=%f relativeEndStallTime=%f deltaStallTime=%f", &v17, 0x58u);
      }
    }

    os_unfair_lock_lock(&self->_blockAlgosScoreLock);
    if (!self->_didStartStream || self->_didEndStream)
    {
      [VCAlgosStreamingScorer addVideoStallWithStartTime:endStallTime:];
    }

    else
    {
      algosScore = self->_algosScore;
      [(VCAlgosStreamingScorer *)self streamQuality];
      [(NWSAlgosStreamScore *)algosScore addStreamStall:&unk_284FA5358 end:v9 quality:v11 weight:v15 params:1.0];
      ++self->_pendingScoringEventCount;
    }

    os_unfair_lock_unlock(&self->_blockAlgosScoreLock);
  }

  v16 = *MEMORY[0x277D85DE8];
}

- (void)addCallFailureWithTime:(double)time detailedErrorCode:(int)code
{
  v21 = *MEMORY[0x277D85DE8];
  if ((code - 234) >= 2 && code != 0)
  {
    if (VRTraceGetErrorLogLevelForModule("") >= 7)
    {
      v8 = VRTraceErrorLogLevelToCSTR(7u);
      v9 = gVRTraceOSLog;
      if (os_log_type_enabled(gVRTraceOSLog, OS_LOG_TYPE_DEFAULT))
      {
        v11 = 136316162;
        v12 = v8;
        v13 = 2080;
        v14 = "[VCAlgosStreamingScorer addCallFailureWithTime:detailedErrorCode:]";
        v15 = 1024;
        v16 = 193;
        v17 = 2048;
        selfCopy = self;
        v19 = 1024;
        codeCopy = code;
        _os_log_impl(&dword_23D4DF000, v9, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d [%p] Call failure with detailedErrorCode = %d", &v11, 0x2Cu);
      }
    }

    os_unfair_lock_lock(&self->_blockAlgosScoreLock);
    if (self->_didStartStream)
    {
      [(VCAlgosStreamingScorer *)self relativeTime:time];
      [NWSAlgosStreamScore addStreamFailure:"addStreamFailure:weight:" weight:?];
      ++self->_pendingScoringEventCount;
    }

    else
    {
      [VCAlgosStreamingScorer addCallFailureWithTime:detailedErrorCode:];
    }

    os_unfair_lock_unlock(&self->_blockAlgosScoreLock);
  }

  v10 = *MEMORY[0x277D85DE8];
}

- (void)addLargeGapErasureWithTime:(double)time largeGapErasureRate:(double)rate
{
  v20 = *MEMORY[0x277D85DE8];
  if (rate >= 0.0001)
  {
    if (VRTraceGetErrorLogLevelForModule("") >= 7)
    {
      v7 = VRTraceErrorLogLevelToCSTR(7u);
      v8 = gVRTraceOSLog;
      if (os_log_type_enabled(gVRTraceOSLog, OS_LOG_TYPE_DEFAULT))
      {
        v10 = 136316162;
        v11 = v7;
        v12 = 2080;
        v13 = "[VCAlgosStreamingScorer addLargeGapErasureWithTime:largeGapErasureRate:]";
        v14 = 1024;
        v15 = 209;
        v16 = 2048;
        selfCopy = self;
        v18 = 2048;
        rateCopy = rate;
        _os_log_impl(&dword_23D4DF000, v8, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d [%p] add large gap erasure %f", &v10, 0x30u);
      }
    }

    os_unfair_lock_lock(&self->_blockAlgosScoreLock);
    if (!self->_didStartStream || self->_didEndStream)
    {
      [VCAlgosStreamingScorer addLargeGapErasureWithTime:largeGapErasureRate:];
    }

    else
    {
      [(VCAlgosStreamingScorer *)self relativeTime:time];
      [NWSAlgosStreamScore addStreamPenalty:"addStreamPenalty:amount:" amount:?];
      ++self->_pendingScoringEventCount;
    }

    os_unfair_lock_unlock(&self->_blockAlgosScoreLock);
  }

  v9 = *MEMORY[0x277D85DE8];
}

- (void)addStreamTierSwitchWithTime:(double)time
{
  os_unfair_lock_lock(&self->_blockAlgosScoreLock);
  if (!self->_didStartStream || self->_didEndStream)
  {
    [VCAlgosStreamingScorer addStreamTierSwitchWithTime:];
  }

  else
  {
    [(VCAlgosStreamingScorer *)self relativeTime:time];
    v6 = v5;
    if (self->_lastStreamTierSwitch > 0.0)
    {
      [(VCAlgosStreamingScorer *)self relativeTime:?];
      v8 = v7;
      algosScore = self->_algosScore;
      [(VCAlgosStreamingScorer *)self streamQuality];
      [(NWSAlgosStreamScore *)algosScore addStreamTierSwitch:v8 end:v6 quality:v10 weight:1.0];
      ++self->_pendingScoringEventCount;
    }

    self->_lastStreamTierSwitch = time;
  }

  os_unfair_lock_unlock(&self->_blockAlgosScoreLock);
}

- (double)finalizeScoreStreamingWithTime:(double)time
{
  [(VCAlgosStreamingScorer *)self stopWithTime:0 streamType:?];
  [(VCAlgosStreamingScorer *)self endWithTime:0 streamType:time];

  [(VCAlgosStreamingScorer *)self scoreStreaming];
  return result;
}

- (double)scoreStreaming
{
  v20 = *MEMORY[0x277D85DE8];
  if (self->_pendingScoringEventCount <= 0)
  {
    score = self->_score;
  }

  else
  {
    os_unfair_lock_lock(&self->_blockAlgosScoreLock);
    if (self->_didStartStream)
    {
      v3 = [(NWSAlgosStreamScore *)self->_algosScore scoreStreaming:0];
      v4 = v3;
      if (v3)
      {
        [objc_msgSend(v3 objectForKeyedSubscript:{@"score", "doubleValue"}];
        score = v5;

        self->_algosScoreDictionary = [v4 copy];
        if (VRTraceGetErrorLogLevelForModule("") >= 8)
        {
          v7 = VRTraceErrorLogLevelToCSTR(8u);
          v8 = gVRTraceOSLog;
          if (gVRTraceLogDebugAsInfo == 1)
          {
            if (os_log_type_enabled(gVRTraceOSLog, OS_LOG_TYPE_DEFAULT))
            {
              *v11 = 136316162;
              *&v11[4] = v7;
              v12 = 2080;
              v13 = "[VCAlgosStreamingScorer scoreStreaming]";
              v14 = 1024;
              v15 = 262;
              v16 = 2048;
              selfCopy2 = self;
              v18 = 2112;
              v19 = v4;
              _os_log_impl(&dword_23D4DF000, v8, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d [%p] AlgosStreamScore scoreDictionary: %@", v11, 0x30u);
            }
          }

          else if (os_log_type_enabled(gVRTraceOSLog, OS_LOG_TYPE_DEBUG))
          {
            *v11 = 136316162;
            *&v11[4] = v7;
            v12 = 2080;
            v13 = "[VCAlgosStreamingScorer scoreStreaming]";
            v14 = 1024;
            v15 = 262;
            v16 = 2048;
            selfCopy2 = self;
            v18 = 2112;
            v19 = v4;
            _os_log_debug_impl(&dword_23D4DF000, v8, OS_LOG_TYPE_DEBUG, " [%s] %s:%d [%p] AlgosStreamScore scoreDictionary: %@", v11, 0x30u);
          }
        }
      }

      else
      {
        score = 0.0;
      }

      self->_pendingScoringEventCount = 0;
    }

    else
    {
      [(VCAlgosStreamingScorer *)self scoreStreaming];
      score = *v11;
    }

    os_unfair_lock_unlock(&self->_blockAlgosScoreLock);
    self->_score = score;
  }

  v9 = *MEMORY[0x277D85DE8];
  return score;
}

- (void)setVideoResolutionWithTime:(double)time width:(int)width height:(int)height
{
  v27 = *MEMORY[0x277D85DE8];
  self->_resolutionPredictedMOS = fmax(fmin(log((height * width) * 1914160.0) * 0.169076, 5.0), 0.0);
  [(VCAlgosStreamingScorer *)self addStreamTierSwitchWithTime:time];
  if (VRTraceGetErrorLogLevelForModule("") >= 7)
  {
    v9 = VRTraceErrorLogLevelToCSTR(7u);
    v10 = gVRTraceOSLog;
    if (os_log_type_enabled(gVRTraceOSLog, OS_LOG_TYPE_DEFAULT))
    {
      resolutionPredictedMOS = self->_resolutionPredictedMOS;
      v13 = 136316674;
      v14 = v9;
      v15 = 2080;
      v16 = "[VCAlgosStreamingScorer setVideoResolutionWithTime:width:height:]";
      v17 = 1024;
      v18 = 289;
      v19 = 2048;
      selfCopy = self;
      v21 = 2048;
      v22 = resolutionPredictedMOS;
      v23 = 1024;
      widthCopy = width;
      v25 = 1024;
      heightCopy = height;
      _os_log_impl(&dword_23D4DF000, v10, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d [%p] resolutionPredictedMOS = %f vraWidth = %d vraHeight = %d", &v13, 0x3Cu);
    }
  }

  v12 = *MEMORY[0x277D85DE8];
}

- (void)setVideoFramerate:(double)framerate
{
  v21 = *MEMORY[0x277D85DE8];
  self->_frameratePredictedMOS = fmax(fmin((1.0 - exp(framerate / 60.0 * -7.96)) / 0.999650847 * 5.0, 5.0), 0.0);
  if (VRTraceGetErrorLogLevelForModule("") >= 7)
  {
    v5 = VRTraceErrorLogLevelToCSTR(7u);
    v6 = gVRTraceOSLog;
    if (os_log_type_enabled(gVRTraceOSLog, OS_LOG_TYPE_DEFAULT))
    {
      frameratePredictedMOS = self->_frameratePredictedMOS;
      v9 = 136316418;
      v10 = v5;
      v11 = 2080;
      v12 = "[VCAlgosStreamingScorer setVideoFramerate:]";
      v13 = 1024;
      v14 = 300;
      v15 = 2048;
      selfCopy = self;
      v17 = 2048;
      v18 = frameratePredictedMOS;
      v19 = 2048;
      framerateCopy = framerate;
      _os_log_impl(&dword_23D4DF000, v6, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d [%p] _frameratePredictedMOS = %f videoFramerate = %f", &v9, 0x3Au);
    }
  }

  v8 = *MEMORY[0x277D85DE8];
}

- (double)streamQuality
{
  v18 = *MEMORY[0x277D85DE8];
  v3 = self->_resolutionPredictedMOS / 5.0 * (self->_frameratePredictedMOS / 5.0);
  if (VRTraceGetErrorLogLevelForModule("") >= 8)
  {
    v4 = VRTraceErrorLogLevelToCSTR(8u);
    v5 = gVRTraceOSLog;
    if (gVRTraceLogDebugAsInfo == 1)
    {
      if (os_log_type_enabled(gVRTraceOSLog, OS_LOG_TYPE_DEFAULT))
      {
        v8 = 136316162;
        v9 = v4;
        v10 = 2080;
        v11 = "[VCAlgosStreamingScorer streamQuality]";
        v12 = 1024;
        v13 = 305;
        v14 = 2048;
        selfCopy2 = self;
        v16 = 2048;
        v17 = v3;
        _os_log_impl(&dword_23D4DF000, v5, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d [%p] video quality = %f", &v8, 0x30u);
      }
    }

    else if (os_log_type_enabled(gVRTraceOSLog, OS_LOG_TYPE_DEBUG))
    {
      v8 = 136316162;
      v9 = v4;
      v10 = 2080;
      v11 = "[VCAlgosStreamingScorer streamQuality]";
      v12 = 1024;
      v13 = 305;
      v14 = 2048;
      selfCopy2 = self;
      v16 = 2048;
      v17 = v3;
      _os_log_debug_impl(&dword_23D4DF000, v5, OS_LOG_TYPE_DEBUG, " [%s] %s:%d [%p] video quality = %f", &v8, 0x30u);
    }
  }

  v6 = *MEMORY[0x277D85DE8];
  return fmax(fmin(v3, 1.0), 0.0);
}

- (void)startWithTime:streamType:.cold.1()
{
  OUTLINED_FUNCTION_13();
  v10 = *MEMORY[0x277D85DE8];
  if (VRTraceGetErrorLogLevelForModule("") >= 3)
  {
    VRTraceErrorLogLevelToCSTR(3u);
    if (OUTLINED_FUNCTION_18())
    {
      v2 = *v0;
      OUTLINED_FUNCTION_11();
      OUTLINED_FUNCTION_12();
      OUTLINED_FUNCTION_3();
      OUTLINED_FUNCTION_7(&dword_23D4DF000, v3, v4, " [%s] %s:%d [%p] Cannot start streamType %d _didEndStream = %d", v5, v6, v7, v8, v9);
    }
  }

  v1 = *MEMORY[0x277D85DE8];
}

- (void)startWithTime:streamType:.cold.2()
{
  OUTLINED_FUNCTION_16();
  v17 = *MEMORY[0x277D85DE8];
  if (VRTraceGetErrorLogLevelForModule("") >= 8)
  {
    VRTraceErrorLogLevelToCSTR(8u);
    v0 = OUTLINED_FUNCTION_14();
    if (v1)
    {
      if (os_log_type_enabled(v0, OS_LOG_TYPE_DEFAULT))
      {
        OUTLINED_FUNCTION_2();
        OUTLINED_FUNCTION_4();
        OUTLINED_FUNCTION_0_0();
        OUTLINED_FUNCTION_8(&dword_23D4DF000, v2, v3, " [%s] %s:%d [%p] Stream has already started, ignoring stream start for type %d", v4, v5, v6, v7, v16);
      }
    }

    else if (os_log_type_enabled(v0, OS_LOG_TYPE_DEBUG))
    {
      OUTLINED_FUNCTION_2();
      OUTLINED_FUNCTION_4();
      OUTLINED_FUNCTION_0_0();
      OUTLINED_FUNCTION_9(&dword_23D4DF000, v10, v11, " [%s] %s:%d [%p] Stream has already started, ignoring stream start for type %d", v12, v13, v14, v15, v16);
    }
  }

  v9 = *MEMORY[0x277D85DE8];
}

- (void)stopWithTime:streamType:.cold.1()
{
  OUTLINED_FUNCTION_13();
  v10 = *MEMORY[0x277D85DE8];
  if (VRTraceGetErrorLogLevelForModule("") >= 3)
  {
    VRTraceErrorLogLevelToCSTR(3u);
    if (OUTLINED_FUNCTION_18())
    {
      v2 = *v0;
      OUTLINED_FUNCTION_11();
      OUTLINED_FUNCTION_12();
      OUTLINED_FUNCTION_3();
      OUTLINED_FUNCTION_7(&dword_23D4DF000, v3, v4, " [%s] %s:%d [%p] Cannot stop streamType %d _didStartStream = %d", v5, v6, v7, v8, v9);
    }
  }

  v1 = *MEMORY[0x277D85DE8];
}

- (void)stopWithTime:streamType:.cold.2()
{
  OUTLINED_FUNCTION_16();
  v17 = *MEMORY[0x277D85DE8];
  if (VRTraceGetErrorLogLevelForModule("") >= 8)
  {
    VRTraceErrorLogLevelToCSTR(8u);
    v0 = OUTLINED_FUNCTION_14();
    if (v1)
    {
      if (os_log_type_enabled(v0, OS_LOG_TYPE_DEFAULT))
      {
        OUTLINED_FUNCTION_2();
        OUTLINED_FUNCTION_4();
        OUTLINED_FUNCTION_0_0();
        OUTLINED_FUNCTION_8(&dword_23D4DF000, v2, v3, " [%s] %s:%d [%p] Stream has already ended, ignoring stream end for streamType %d", v4, v5, v6, v7, v16);
      }
    }

    else if (os_log_type_enabled(v0, OS_LOG_TYPE_DEBUG))
    {
      OUTLINED_FUNCTION_2();
      OUTLINED_FUNCTION_4();
      OUTLINED_FUNCTION_0_0();
      OUTLINED_FUNCTION_9(&dword_23D4DF000, v10, v11, " [%s] %s:%d [%p] Stream has already ended, ignoring stream end for streamType %d", v12, v13, v14, v15, v16);
    }
  }

  v9 = *MEMORY[0x277D85DE8];
}

- (void)stopWithTime:streamType:.cold.3()
{
  OUTLINED_FUNCTION_16();
  v17 = *MEMORY[0x277D85DE8];
  if (VRTraceGetErrorLogLevelForModule("") >= 8)
  {
    VRTraceErrorLogLevelToCSTR(8u);
    v0 = OUTLINED_FUNCTION_14();
    if (v1)
    {
      if (os_log_type_enabled(v0, OS_LOG_TYPE_DEFAULT))
      {
        OUTLINED_FUNCTION_2();
        OUTLINED_FUNCTION_4();
        OUTLINED_FUNCTION_0_0();
        OUTLINED_FUNCTION_8(&dword_23D4DF000, v2, v3, " [%s] %s:%d [%p] Stream has already stopped, ignoring stream stop for streamType %d", v4, v5, v6, v7, v16);
      }
    }

    else if (os_log_type_enabled(v0, OS_LOG_TYPE_DEBUG))
    {
      OUTLINED_FUNCTION_2();
      OUTLINED_FUNCTION_4();
      OUTLINED_FUNCTION_0_0();
      OUTLINED_FUNCTION_9(&dword_23D4DF000, v10, v11, " [%s] %s:%d [%p] Stream has already stopped, ignoring stream stop for streamType %d", v12, v13, v14, v15, v16);
    }
  }

  v9 = *MEMORY[0x277D85DE8];
}

- (void)endWithTime:streamType:.cold.1()
{
  OUTLINED_FUNCTION_13();
  v10 = *MEMORY[0x277D85DE8];
  if (VRTraceGetErrorLogLevelForModule("") >= 3)
  {
    VRTraceErrorLogLevelToCSTR(3u);
    if (OUTLINED_FUNCTION_18())
    {
      v2 = *v0;
      OUTLINED_FUNCTION_11();
      OUTLINED_FUNCTION_12();
      OUTLINED_FUNCTION_3();
      OUTLINED_FUNCTION_7(&dword_23D4DF000, v3, v4, " [%s] %s:%d [%p] Cannot end streamType %d _didStartStream = %d", v5, v6, v7, v8, v9);
    }
  }

  v1 = *MEMORY[0x277D85DE8];
}

- (void)endWithTime:streamType:.cold.2()
{
  OUTLINED_FUNCTION_16();
  v17 = *MEMORY[0x277D85DE8];
  if (VRTraceGetErrorLogLevelForModule("") >= 8)
  {
    VRTraceErrorLogLevelToCSTR(8u);
    v0 = OUTLINED_FUNCTION_14();
    if (v1)
    {
      if (os_log_type_enabled(v0, OS_LOG_TYPE_DEFAULT))
      {
        OUTLINED_FUNCTION_2();
        OUTLINED_FUNCTION_4();
        OUTLINED_FUNCTION_0_0();
        OUTLINED_FUNCTION_8(&dword_23D4DF000, v2, v3, " [%s] %s:%d [%p] Stream has already ended, ignoring stream end for streamType %d", v4, v5, v6, v7, v16);
      }
    }

    else if (os_log_type_enabled(v0, OS_LOG_TYPE_DEBUG))
    {
      OUTLINED_FUNCTION_2();
      OUTLINED_FUNCTION_4();
      OUTLINED_FUNCTION_0_0();
      OUTLINED_FUNCTION_9(&dword_23D4DF000, v10, v11, " [%s] %s:%d [%p] Stream has already ended, ignoring stream end for streamType %d", v12, v13, v14, v15, v16);
    }
  }

  v9 = *MEMORY[0x277D85DE8];
}

- (void)addVideoStallWithStartTime:endStallTime:.cold.1()
{
  OUTLINED_FUNCTION_17();
  v8 = *MEMORY[0x277D85DE8];
  if (VRTraceGetErrorLogLevelForModule("") >= 3)
  {
    VRTraceErrorLogLevelToCSTR(3u);
    if (OUTLINED_FUNCTION_19())
    {
      OUTLINED_FUNCTION_15();
      OUTLINED_FUNCTION_5();
      OUTLINED_FUNCTION_6();
      OUTLINED_FUNCTION_1_0();
      OUTLINED_FUNCTION_10(&dword_23D4DF000, v1, v2, " [%s] %s:%d [%p] Cannot add video stall event _didStartStream = %d, _didEndStream = %d", v3, v4, v5, v6, v7);
    }
  }

  v0 = *MEMORY[0x277D85DE8];
}

- (void)addCallFailureWithTime:detailedErrorCode:.cold.1()
{
  OUTLINED_FUNCTION_17();
  v8 = *MEMORY[0x277D85DE8];
  if (VRTraceGetErrorLogLevelForModule("") >= 3)
  {
    VRTraceErrorLogLevelToCSTR(3u);
    if (OUTLINED_FUNCTION_19())
    {
      OUTLINED_FUNCTION_15();
      OUTLINED_FUNCTION_5();
      OUTLINED_FUNCTION_6();
      OUTLINED_FUNCTION_1_0();
      OUTLINED_FUNCTION_10(&dword_23D4DF000, v1, v2, " [%s] %s:%d [%p] Cannot add stream failure event _didStartStream = %d, _didEndStream = %d", v3, v4, v5, v6, v7);
    }
  }

  v0 = *MEMORY[0x277D85DE8];
}

- (void)addLargeGapErasureWithTime:largeGapErasureRate:.cold.1()
{
  OUTLINED_FUNCTION_17();
  v8 = *MEMORY[0x277D85DE8];
  if (VRTraceGetErrorLogLevelForModule("") >= 3)
  {
    VRTraceErrorLogLevelToCSTR(3u);
    if (OUTLINED_FUNCTION_19())
    {
      OUTLINED_FUNCTION_15();
      OUTLINED_FUNCTION_5();
      OUTLINED_FUNCTION_6();
      OUTLINED_FUNCTION_1_0();
      OUTLINED_FUNCTION_10(&dword_23D4DF000, v1, v2, " [%s] %s:%d [%p] Cannot add large gap stall erasure _didStartStream = %d, _didEndStream = %d", v3, v4, v5, v6, v7);
    }
  }

  v0 = *MEMORY[0x277D85DE8];
}

- (void)addStreamTierSwitchWithTime:.cold.1()
{
  OUTLINED_FUNCTION_17();
  v8 = *MEMORY[0x277D85DE8];
  if (VRTraceGetErrorLogLevelForModule("") >= 3)
  {
    VRTraceErrorLogLevelToCSTR(3u);
    if (OUTLINED_FUNCTION_19())
    {
      OUTLINED_FUNCTION_15();
      OUTLINED_FUNCTION_5();
      OUTLINED_FUNCTION_6();
      OUTLINED_FUNCTION_1_0();
      OUTLINED_FUNCTION_10(&dword_23D4DF000, v1, v2, " [%s] %s:%d [%p] Cannot add stream tier change _didStartStream = %d, _didEndStream = %d", v3, v4, v5, v6, v7);
    }
  }

  v0 = *MEMORY[0x277D85DE8];
}

- (void)scoreStreaming
{
  v15 = *MEMORY[0x277D85DE8];
  if (VRTraceGetErrorLogLevelForModule("") >= 3)
  {
    VRTraceErrorLogLevelToCSTR(3u);
    if (OUTLINED_FUNCTION_18())
    {
      v7 = *a2;
      v8 = *(self + 38);
      OUTLINED_FUNCTION_6();
      OUTLINED_FUNCTION_7(&dword_23D4DF000, v9, v10, " [%s] %s:%d [%p] Cannot start score streaming _didStartStream = %d, _didEndStream = %d", v11, v12, v13, v14, 2u);
    }
  }

  *a3 = 0;
  v6 = *MEMORY[0x277D85DE8];
}

@end