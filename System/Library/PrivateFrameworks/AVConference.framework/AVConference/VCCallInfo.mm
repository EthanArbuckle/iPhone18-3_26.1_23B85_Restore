@interface VCCallInfo
- (BOOL)updateWithLastDecodedFrameTime:(double)a3 time:(double)a4;
- (VCCallInfo)init;
- (VoiceIOFarEndVersionInfo)audioVersionInfo:(SEL)a3;
- (void)dealloc;
- (void)setAuNumber:(unsigned int)a3;
- (void)setUserAgent:(id)a3;
- (void)setVideoIsPaused:(BOOL)a3;
@end

@implementation VCCallInfo

- (VCCallInfo)init
{
  v19 = *MEMORY[0x1E69E9840];
  v10.receiver = self;
  v10.super_class = VCCallInfo;
  v2 = [(VCCallInfo *)&v10 init];
  v3 = v2;
  if (v2)
  {
    v2->callID = -1;
    v2->participantID = 0;
    *&v2->auNumber = 0x25800000000;
    v2->cellBandwidth = 100;
    [+[GKSConnectivitySettings getClientOption:](GKSConnectivitySettings getClientOption:{@"gk-p2p-video-degraded-threshold", "doubleValue"}];
    if (v4 < 5.0)
    {
      v4 = 5.0;
    }

    v3->videoDegradedThreshold = v4;
    v3->videoDegradedThreshold = VCDefaults_GetDoubleValueForKey(@"videoDegradedThreshold", v4);
    [+[GKSConnectivitySettings getStorebagValueForStorebagKey:userDefaultKey:defaultValue:isDoubleType:](GKSConnectivitySettings getStorebagValueForStorebagKey:@"gk-p2p-video-near-degraded-threshold" userDefaultKey:@"videoNearDegradedThreshold" defaultValue:&unk_1F579E570 isDoubleType:{1), "doubleValue"}];
    v3->_videoNearDegradedThreshold = v5;
    if (VRTraceGetErrorLogLevelForModule() >= 7)
    {
      v6 = VRTraceErrorLogLevelToCSTR();
      v7 = *MEMORY[0x1E6986650];
      if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
      {
        videoDegradedThreshold = v3->videoDegradedThreshold;
        *buf = 136315906;
        v12 = v6;
        v13 = 2080;
        v14 = "[VCCallInfo init]";
        v15 = 1024;
        v16 = 44;
        v17 = 2048;
        v18 = videoDegradedThreshold;
        _os_log_impl(&dword_1DB56E000, v7, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d videoDegradedThreshold = %f", buf, 0x26u);
      }
    }

    v3->u8Version = 1;
    v3->useNewPLCalc = 0;
    v3->isPreLionOS = 0;
  }

  return v3;
}

- (void)dealloc
{
  v4 = *MEMORY[0x1E69E9840];

  self->participantID = 0;
  v3.receiver = self;
  v3.super_class = VCCallInfo;
  [(VCCallInfo *)&v3 dealloc];
}

- (void)setAuNumber:(unsigned int)a3
{
  if (a3)
  {
    self->auNumber = a3;
  }

  else
  {
    is4x = self->is4x;
    if (is4x != 1)
    {
      is4x = 2;
    }

    self->auNumber = is4x;
  }
}

- (BOOL)updateWithLastDecodedFrameTime:(double)a3 time:(double)a4
{
  v29 = *MEMORY[0x1E69E9840];
  if (VRTraceGetErrorLogLevelForModule() >= 8)
  {
    v7 = VRTraceErrorLogLevelToCSTR();
    v8 = *MEMORY[0x1E6986650];
    v9 = *MEMORY[0x1E6986650];
    if (*MEMORY[0x1E6986640] == 1)
    {
      if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
      {
        videoIsPaused = self->videoIsPaused;
        v15 = 136316674;
        v16 = v7;
        v17 = 2080;
        v18 = "[VCCallInfo updateWithLastDecodedFrameTime:time:]";
        v19 = 1024;
        v20 = 87;
        v21 = 2048;
        v22 = a4;
        v23 = 2048;
        v24 = a3;
        v25 = 2048;
        v26 = a4 - a3;
        v27 = 1024;
        v28 = videoIsPaused;
        _os_log_impl(&dword_1DB56E000, v8, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d microTime=%f lastDecodedFrameTime=%f currentFrameTimeDiff=%f videoIsPaused=%d", &v15, 0x40u);
      }
    }

    else if (os_log_type_enabled(v9, OS_LOG_TYPE_DEBUG))
    {
      v14 = self->videoIsPaused;
      v15 = 136316674;
      v16 = v7;
      v17 = 2080;
      v18 = "[VCCallInfo updateWithLastDecodedFrameTime:time:]";
      v19 = 1024;
      v20 = 87;
      v21 = 2048;
      v22 = a4;
      v23 = 2048;
      v24 = a3;
      v25 = 2048;
      v26 = a4 - a3;
      v27 = 1024;
      v28 = v14;
      _os_log_debug_impl(&dword_1DB56E000, v8, OS_LOG_TYPE_DEBUG, " [%s] %s:%d microTime=%f lastDecodedFrameTime=%f currentFrameTimeDiff=%f videoIsPaused=%d", &v15, 0x40u);
    }
  }

  if (self->videoIsPaused)
  {
    return 0;
  }

  if (a4 == 0.0 || (firstDegradedMeasure = self->firstDegradedMeasure, firstDegradedMeasure == 0.0))
  {
    self->firstDegradedMeasure = a4;
    firstDegradedMeasure = a4;
  }

  if (a4 - firstDegradedMeasure < 10.0)
  {
    isVideoQualityDegraded = self->isVideoQualityDegraded;
    self->isVideoQualityDegraded = 0;
    return isVideoQualityDegraded;
  }

  if (a4 - a3 > self->videoDegradedThreshold)
  {
    if (!self->isVideoQualityDegraded)
    {
      isVideoQualityDegraded = 1;
      self->isVideoQualityDegraded = 1;
      return isVideoQualityDegraded;
    }

    return 0;
  }

  if (self->isVideoQualityDegraded)
  {
    self->isVideoQualityDegraded = 0;
    return 1;
  }

  else
  {
    isVideoQualityDegraded = 0;
    self->_isVideoQualityNearDegraded = a4 - a3 > self->_videoNearDegradedThreshold;
  }

  return isVideoQualityDegraded;
}

- (void)setVideoIsPaused:(BOOL)a3
{
  if (self->videoIsPaused != a3)
  {
    self->videoIsPaused = a3;
    self->firstDegradedMeasure = 0.0;
  }
}

- (VoiceIOFarEndVersionInfo)audioVersionInfo:(SEL)a3
{
  *&retstr->farEndOSVersion[32] = 0u;
  *&retstr->farEndOSVersion[48] = 0u;
  *retstr->farEndOSVersion = 0u;
  *&retstr->farEndOSVersion[16] = 0u;
  *&retstr->farEndHwModel[32] = 0u;
  *&retstr->farEndHwModel[48] = 0u;
  *retstr->farEndHwModel = 0u;
  *&retstr->farEndHwModel[16] = 0u;
  if (a4)
  {
    result = 1;
  }

  else
  {
    result = [(VCCallInfo *)self auNumber];
  }

  retstr->farEndAUVersion = result;
  return result;
}

- (void)setUserAgent:(id)a3
{
  self->isIOS = [a3 rangeOfString:@"/GK"] != 0x7FFFFFFFFFFFFFFFLL;
  if ([a3 rangeOfString:@"Viceroy 1.4.0"] == 0x7FFFFFFFFFFFFFFFLL)
  {
    v5 = [a3 rangeOfString:@"Viceroy 1.4.1"];
    self->is4x = v5 != 0x7FFFFFFFFFFFFFFFLL;
    v6 = v5 == 0x7FFFFFFFFFFFFFFFLL && [a3 rangeOfString:@"Viceroy 1.4.2"] == 0x7FFFFFFFFFFFFFFFLL;
  }

  else
  {
    v6 = 0;
    self->is4x = 1;
  }

  self->supportsSpecialAACBundle = v6;
  self->usesInitialFECImplementation = [a3 rangeOfString:@"Viceroy 1.4"] != 0x7FFFFFFFFFFFFFFFLL;
  if (self->isIOS)
  {
    goto LABEL_9;
  }

  if ([a3 rangeOfString:@"Viceroy 1.4"] == 0x7FFFFFFFFFFFFFFFLL)
  {
    [a3 rangeOfString:@"Viceroy 1.5"];
LABEL_9:
    v7 = 1;
    goto LABEL_11;
  }

  v7 = 0;
LABEL_11:
  self->visibleRectCropping = v7;
  if (self->isIOS)
  {
    v8 = @"Viceroy 1.6";
  }

  else
  {
    v8 = @"Viceroy 1.7";
  }

  self->useNewPLCalc = [a3 localizedCaseInsensitiveCompare:v8] != -1;
}

@end