@interface MultiwayCall
- (BOOL)isVideoDegraded;
- (double)audioErasureTotalTime:(id)time;
- (double)audioErasureTotalTimeAlt:(id)alt;
- (double)avgJBDelay:(id)delay;
- (double)avgJBTargetSizeChanges:(id)changes;
- (double)markHandshakeCompletion:(double)completion;
- (double)significantVideoStallTotalTime:(id)time;
- (id)initCallWithRemoteParticipantID:(id)d andWeeklyID:(id)iD;
- (id)videoDegradedTotalCounter:(id)counter;
- (unsigned)audioErasureCount:(id)count;
- (unsigned)maxAudioErasureCount:(id)count;
- (unsigned)maxJBTargetSizeChanges:(id)changes;
- (unsigned)maxVideoStallCount:(id)count;
- (unsigned)minVideoFrameRate:(id)rate;
- (unsigned)significantVideoStallCount:(id)count;
- (void)addAudioStreamGroupTelemetry:(id)telemetry streamGroupID:(id)d;
- (void)addConnectionTiming:(id)timing streamGroupStats:(id)stats streamGroupID:(id)d;
- (void)addControlChannelTelemetry:(id)telemetry timestamp:(double)timestamp;
- (void)addRTStatsTelemetry:(id)telemetry;
- (void)addRTXStreamGroupTelemetry:(id)telemetry streamGroupID:(id)d;
- (void)addStreamGroupTelemetry:(id)telemetry;
- (void)addVideoStreamGroupTelemetry:(id)telemetry streamGroupID:(id)d;
- (void)dealloc;
- (void)finalizeCall:(double)call;
- (void)finalizeCallTimers:(double)timers;
- (void)incrementAudioStreamSwitchCounterForStreamGroup:(id)group;
- (void)incrementCallDuration;
- (void)incrementVideoStreamSwitchCounterForStreamGroup:(id)group;
- (void)markCameraCompositionCompletionWithTimestamp:(double)timestamp;
- (void)markCameraCompositionStartWithTimestamp:(double)timestamp;
- (void)markHandshakeStart:(double)start;
- (void)markScreenControlCompletionWithTimestamp:(double)timestamp;
- (void)markScreenControlStartWithTimestamp:(double)timestamp;
- (void)processCipherSuites:(id)suites;
- (void)processNetworkQualityUpdatedWithStatus:(unsigned int)status timestamp:(double)timestamp;
- (void)processRTEvent:(id)event;
- (void)processStreamData:(id)data streamGroupID:(id)d;
- (void)updateAudioBitratePerStreamGroup:(id)group;
- (void)updatePerfTimingV1WithFirstVideoFrameProcessingDelta:(double)delta firstMediaReceivedDelta:(double)receivedDelta firstMKIDelta:(double)iDelta totalMediaStallSaveDelta:(double)saveDelta streamGroupID:(id)d;
- (void)updatePerfTimingV2WithMediaCreatedToStartedTime:(double)time mediaStartedToFirstPacketTime:(double)packetTime mediaFirstPacketToFirstFrameTime:(double)frameTime streamGroupID:(id)d;
- (void)updateSliceStatusDuration;
@end

@implementation MultiwayCall

- (id)initCallWithRemoteParticipantID:(id)d andWeeklyID:(id)iD
{
  v11.receiver = self;
  v11.super_class = MultiwayCall;
  v6 = [(VCReportingCommon *)&v11 init];
  v7 = v6;
  if (v6)
  {
    v6->_isAudioEnabled = 0;
    v6->_isVideoEnabled = 0;
    v6->_remoteParticipantID = [d copy];
    v8 = 1;
    v7->_live = 1;
    v7->_hasWebParticipant = 0;
    v7->_streamGroups = [objc_alloc(MEMORY[0x277CBEB38]) initWithCapacity:11];
    v7->_streamGroupStats = [objc_alloc(MEMORY[0x277CBEB38]) initWithCapacity:11];
    do
    {
      v9 = objc_alloc_init(StreamGroupStats);
      -[NSMutableDictionary setObject:forKeyedSubscript:](v7->_streamGroupStats, "setObject:forKeyedSubscript:", v9, [MEMORY[0x277CCABA8] numberWithInt:v8]);

      v8 = (v8 + 1);
    }

    while (v8 != 11);
    reportingGetDefaults(&v7->_interval, &v7->_frequency);
    if (!v7->_interval || !v7->_frequency)
    {
      v7->_interval = 1;
      v7->_frequency = 5;
    }

    v7->_mlEnhance = objc_alloc_init(VCDataMLEnhance);
    v7->_handshakeStartTime = NAN;
    v7->_handshakeDuration = NAN;
    v7->_screenControlStartTime = NAN;
    v7->_cameraCompositionStartTimeMsec = NAN;
    v7->_screenShareStartTime = NAN;
    v7->_thermalDataCollectors = +[VCAggregator newThermalDataCollectors];
    v7->_remoteThermalDurations = [(VCReportingHistogram *)[VCDurationHistogram alloc] initWithType:88 bucketValues:0];
    v7->_cellularSliceStatusDuration = [[VCReportingHistogram alloc] initWithType:93 bucketValues:0];
    v7->_cellularRemoteSliceStatusDuration = [[VCReportingHistogram alloc] initWithType:93 bucketValues:0];
    v7->_fecStatsHolder = objc_alloc_init(VCVideoFECStatsHolder);
    v7->_lossPattern = [[VCReportingHistogram alloc] initWithType:41 bucketValues:0];
    v7->_lossHistogram = [[VCReportingHistogram2D alloc] initWithType:42 bucketValues:0];
    v7->_lossFecHistogram = [[VCReportingHistogram2D alloc] initWithType:42 bucketValues:0];
    v7->_screenShareDurationsMsec = objc_alloc_init(MEMORY[0x277CBEB18]);
    v7->_screenControlDurationsMsec = objc_alloc_init(MEMORY[0x277CBEB18]);
    v7->_weeklyDUID = [iD copy];
    v7->_currentRemoteOrientation = 4;
    v7->_matchedOrientationDurations = [(VCReportingHistogram *)[VCDurationHistogram alloc] initWithType:100 bucketValues:0];
    v7->_matchedOrientationBucketed = [[VCReportingHistogram alloc] initWithType:101 bucketValues:0];
    v7->_mismatchedOrientationBucketed = [[VCReportingHistogram alloc] initWithType:101 bucketValues:0];
  }

  return v7;
}

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = MultiwayCall;
  [(VCReportingCommon *)&v3 dealloc];
}

- (void)finalizeCallTimers:(double)timers
{
  [(VCDataMLEnhance *)self->_mlEnhance finalize:?];
  [(VCDurationHistogram *)self->super._thermalDurations finalize:timers];
  [(VCDurationHistogram *)self->_remoteThermalDurations finalize:timers];
  matchedOrientationDurations = self->_matchedOrientationDurations;

  [(VCDurationHistogram *)matchedOrientationDurations finalize:timers];
}

- (void)finalizeCall:(double)call
{
  self->_isFullSize = 0;
  [(MultiwayCall *)self finalizeCallTimers:?];
  [(MultiwayCall *)self markHandshakeCompletion:call];
  self->_live = 0;
}

- (void)markHandshakeStart:(double)start
{
  v5 = *MEMORY[0x277D85DE8];
  handshakeStartTime = self->_handshakeStartTime;
  v4 = *MEMORY[0x277D85DE8];
}

- (double)markHandshakeCompletion:(double)completion
{
  v6 = *MEMORY[0x277D85DE8];
  handshakeDuration = self->_handshakeDuration;
  result = handshakeDuration;
  v5 = *MEMORY[0x277D85DE8];
  return result;
}

- (void)markCameraCompositionCompletionWithTimestamp:(double)timestamp
{
  v22 = *MEMORY[0x277D85DE8];
  v4 = (timestamp - self->_cameraCompositionStartTimeMsec) * 1000.0;
  self->_cameraCompositionTotalDurationMsec = v4 + self->_cameraCompositionTotalDurationMsec;
  if (VRTraceGetErrorLogLevelForModule("") >= 7)
  {
    v5 = VRTraceErrorLogLevelToCSTR(7u);
    v6 = gVRTraceOSLog;
    if (os_log_type_enabled(gVRTraceOSLog, OS_LOG_TYPE_DEFAULT))
    {
      remoteParticipantID = self->_remoteParticipantID;
      cameraCompositionTotalDurationMsec = self->_cameraCompositionTotalDurationMsec;
      v10 = 136316418;
      v11 = v5;
      v12 = 2080;
      v13 = "[MultiwayCall markCameraCompositionCompletionWithTimestamp:]";
      v14 = 1024;
      v15 = 2205;
      v16 = 2112;
      v17 = remoteParticipantID;
      v18 = 2048;
      v19 = v4;
      v20 = 2048;
      v21 = cameraCompositionTotalDurationMsec;
      _os_log_impl(&dword_23D4DF000, v6, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d Camera composition with participant=%@ completed, current duration=%f total duration=%f", &v10, 0x3Au);
    }
  }

  self->_cameraCompositionStartTimeMsec = NAN;
  v9 = *MEMORY[0x277D85DE8];
}

- (void)markScreenControlStartWithTimestamp:(double)timestamp
{
  v5 = *MEMORY[0x277D85DE8];
  screenControlStartTime = self->_screenControlStartTime;
  v4 = *MEMORY[0x277D85DE8];
}

- (void)markScreenControlCompletionWithTimestamp:(double)timestamp
{
  v22 = *MEMORY[0x277D85DE8];
  v4 = (timestamp - self->_screenControlStartTime) * 1000.0;
  self->_screenControlTotalDurationMsec = v4 + self->_screenControlTotalDurationMsec;
  -[NSMutableArray addObject:](self->_screenControlDurationsMsec, "addObject:", [MEMORY[0x277CCABA8] numberWithDouble:v4]);
  if (VRTraceGetErrorLogLevelForModule("") >= 7)
  {
    v5 = VRTraceErrorLogLevelToCSTR(7u);
    v6 = gVRTraceOSLog;
    if (os_log_type_enabled(gVRTraceOSLog, OS_LOG_TYPE_DEFAULT))
    {
      remoteParticipantID = self->_remoteParticipantID;
      screenControlTotalDurationMsec = self->_screenControlTotalDurationMsec;
      v10 = 136316418;
      v11 = v5;
      v12 = 2080;
      v13 = "[MultiwayCall markScreenControlCompletionWithTimestamp:]";
      v14 = 1024;
      v15 = 2222;
      v16 = 2112;
      v17 = remoteParticipantID;
      v18 = 2048;
      v19 = v4;
      v20 = 2048;
      v21 = screenControlTotalDurationMsec;
      _os_log_impl(&dword_23D4DF000, v6, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d Screen Control with participant=%@ completed, current duration=%f total duration=%f", &v10, 0x3Au);
    }
  }

  self->_screenControlStartTime = NAN;
  v9 = *MEMORY[0x277D85DE8];
}

- (void)markCameraCompositionStartWithTimestamp:(double)timestamp
{
  v5 = *MEMORY[0x277D85DE8];
  cameraCompositionStartTimeMsec = self->_cameraCompositionStartTimeMsec;
  v4 = *MEMORY[0x277D85DE8];
}

- (BOOL)isVideoDegraded
{
  v16 = *MEMORY[0x277D85DE8];
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  streamGroupStats = self->_streamGroupStats;
  v4 = [(NSMutableDictionary *)streamGroupStats countByEnumeratingWithState:&v11 objects:v15 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = 0;
    v7 = *v12;
    do
    {
      for (i = 0; i != v5; ++i)
      {
        if (*v12 != v7)
        {
          objc_enumerationMutation(streamGroupStats);
        }

        v6 |= [-[NSMutableDictionary objectForKeyedSubscript:](self->_streamGroupStats objectForKeyedSubscript:{*(*(&v11 + 1) + 8 * i)), "isVideoDegraded"}];
      }

      v5 = [(NSMutableDictionary *)streamGroupStats countByEnumeratingWithState:&v11 objects:v15 count:16];
    }

    while (v5);
  }

  else
  {
    LOBYTE(v6) = 0;
  }

  v9 = *MEMORY[0x277D85DE8];
  return v6 & 1;
}

- (unsigned)significantVideoStallCount:(id)count
{
  v17 = *MEMORY[0x277D85DE8];
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v4 = [count countByEnumeratingWithState:&v12 objects:v16 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = 0;
    v7 = *v13;
    do
    {
      for (i = 0; i != v5; ++i)
      {
        if (*v13 != v7)
        {
          objc_enumerationMutation(count);
        }

        v9 = [count objectForKeyedSubscript:*(*(&v12 + 1) + 8 * i)];
        if (v9)
        {
          v6 += [v9 significantVideoStallCount];
        }
      }

      v5 = [count countByEnumeratingWithState:&v12 objects:v16 count:16];
    }

    while (v5);
  }

  else
  {
    LOWORD(v6) = 0;
  }

  v10 = *MEMORY[0x277D85DE8];
  return v6;
}

- (id)videoDegradedTotalCounter:(id)counter
{
  v3 = [(NSMutableDictionary *)self->_streamGroupStats objectForKeyedSubscript:counter];
  v4 = MEMORY[0x277CCABA8];
  videoDegradedTotalCounter = [v3 videoDegradedTotalCounter];

  return [v4 numberWithUnsignedInt:videoDegradedTotalCounter];
}

- (void)incrementVideoStreamSwitchCounterForStreamGroup:(id)group
{
  v3 = [(NSMutableDictionary *)self->_streamGroupStats objectForKeyedSubscript:group];
  v4 = [v3 videoStreamSwitchCount] + 1;

  [v3 setVideoStreamSwitchCount:v4];
}

- (void)incrementAudioStreamSwitchCounterForStreamGroup:(id)group
{
  v3 = [(NSMutableDictionary *)self->_streamGroupStats objectForKeyedSubscript:group];
  v4 = [v3 audioStreamSwitchCount] + 1;

  [v3 setAudioStreamSwitchCount:v4];
}

- (double)significantVideoStallTotalTime:(id)time
{
  v18 = *MEMORY[0x277D85DE8];
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v4 = [time countByEnumeratingWithState:&v13 objects:v17 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v14;
    v7 = 0.0;
    do
    {
      for (i = 0; i != v5; ++i)
      {
        if (*v14 != v6)
        {
          objc_enumerationMutation(time);
        }

        v9 = [time objectForKeyedSubscript:*(*(&v13 + 1) + 8 * i)];
        if (v9)
        {
          [v9 videoStallTotalTime];
          v7 = v7 + v10;
        }
      }

      v5 = [time countByEnumeratingWithState:&v13 objects:v17 count:16];
    }

    while (v5);
  }

  else
  {
    v7 = 0.0;
  }

  v11 = *MEMORY[0x277D85DE8];
  return v7;
}

- (unsigned)audioErasureCount:(id)count
{
  v17 = *MEMORY[0x277D85DE8];
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v4 = [count countByEnumeratingWithState:&v12 objects:v16 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = 0;
    v7 = *v13;
    do
    {
      for (i = 0; i != v5; ++i)
      {
        if (*v13 != v7)
        {
          objc_enumerationMutation(count);
        }

        v9 = [count objectForKeyedSubscript:*(*(&v12 + 1) + 8 * i)];
        if (v9)
        {
          v6 += [v9 audioErasureCount];
        }
      }

      v5 = [count countByEnumeratingWithState:&v12 objects:v16 count:16];
    }

    while (v5);
  }

  else
  {
    LOWORD(v6) = 0;
  }

  v10 = *MEMORY[0x277D85DE8];
  return v6;
}

- (unsigned)maxAudioErasureCount:(id)count
{
  v17 = *MEMORY[0x277D85DE8];
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v4 = [count countByEnumeratingWithState:&v12 objects:v16 count:16];
  if (v4)
  {
    v5 = v4;
    LOWORD(v6) = 0;
    v7 = *v13;
    do
    {
      for (i = 0; i != v5; ++i)
      {
        if (*v13 != v7)
        {
          objc_enumerationMutation(count);
        }

        v9 = [count objectForKeyedSubscript:*(*(&v12 + 1) + 8 * i)];
        if (v9)
        {
          v6 = fmax(v6, [v9 maxAudioErasureCount]);
        }
      }

      v5 = [count countByEnumeratingWithState:&v12 objects:v16 count:16];
    }

    while (v5);
  }

  else
  {
    LOWORD(v6) = 0;
  }

  v10 = *MEMORY[0x277D85DE8];
  return v6;
}

- (unsigned)maxVideoStallCount:(id)count
{
  v17 = *MEMORY[0x277D85DE8];
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v4 = [count countByEnumeratingWithState:&v12 objects:v16 count:16];
  if (v4)
  {
    v5 = v4;
    LOWORD(v6) = 0;
    v7 = *v13;
    do
    {
      for (i = 0; i != v5; ++i)
      {
        if (*v13 != v7)
        {
          objc_enumerationMutation(count);
        }

        v9 = [count objectForKeyedSubscript:*(*(&v12 + 1) + 8 * i)];
        if (v9)
        {
          v6 = fmax(v6, [v9 maxVideoStallCount]);
        }
      }

      v5 = [count countByEnumeratingWithState:&v12 objects:v16 count:16];
    }

    while (v5);
  }

  else
  {
    LOWORD(v6) = 0;
  }

  v10 = *MEMORY[0x277D85DE8];
  return v6;
}

- (double)avgJBDelay:(id)delay
{
  v21 = *MEMORY[0x277D85DE8];
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v4 = [delay countByEnumeratingWithState:&v16 objects:v20 count:16];
  if (!v4)
  {
    goto LABEL_13;
  }

  v5 = v4;
  v6 = 0;
  v7 = *v17;
  v8 = 0.0;
  do
  {
    for (i = 0; i != v5; ++i)
    {
      if (*v17 != v7)
      {
        objc_enumerationMutation(delay);
      }

      v10 = [delay objectForKeyedSubscript:*(*(&v16 + 1) + 8 * i)];
      if (v10)
      {
        v11 = v10;
        [v10 averageJitterBufferDelay];
        if (v12 != 0.0)
        {
          ++v6;
          [v11 averageJitterBufferDelay];
          v8 = v8 + v13;
        }
      }
    }

    v5 = [delay countByEnumeratingWithState:&v16 objects:v20 count:16];
  }

  while (v5);
  if (v6)
  {
    result = v8 / v6;
  }

  else
  {
LABEL_13:
    result = 0.0;
  }

  v15 = *MEMORY[0x277D85DE8];
  return result;
}

- (double)avgJBTargetSizeChanges:(id)changes
{
  v19 = *MEMORY[0x277D85DE8];
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v4 = [changes countByEnumeratingWithState:&v14 objects:v18 count:16];
  if (!v4)
  {
    goto LABEL_12;
  }

  v5 = v4;
  v6 = 0;
  v7 = *v15;
  v8 = 0.0;
  do
  {
    for (i = 0; i != v5; ++i)
    {
      if (*v15 != v7)
      {
        objc_enumerationMutation(changes);
      }

      v10 = [changes objectForKeyedSubscript:*(*(&v14 + 1) + 8 * i)];
      if (v10)
      {
        ++v6;
        [v10 averageJBTargetSizeChanges];
        v8 = v8 + v11;
      }
    }

    v5 = [changes countByEnumeratingWithState:&v14 objects:v18 count:16];
  }

  while (v5);
  if (v6)
  {
    result = v8 / v6;
  }

  else
  {
LABEL_12:
    result = 0.0;
  }

  v13 = *MEMORY[0x277D85DE8];
  return result;
}

- (unsigned)maxJBTargetSizeChanges:(id)changes
{
  v17 = *MEMORY[0x277D85DE8];
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v4 = [changes countByEnumeratingWithState:&v12 objects:v16 count:16];
  if (v4)
  {
    v5 = v4;
    LOWORD(v6) = 0;
    v7 = *v13;
    do
    {
      for (i = 0; i != v5; ++i)
      {
        if (*v13 != v7)
        {
          objc_enumerationMutation(changes);
        }

        v9 = [changes objectForKeyedSubscript:*(*(&v12 + 1) + 8 * i)];
        if (v9)
        {
          v6 = fmax(v6, [v9 maxJBTargetSizeChanges]);
        }
      }

      v5 = [changes countByEnumeratingWithState:&v12 objects:v16 count:16];
    }

    while (v5);
  }

  else
  {
    LOWORD(v6) = 0;
  }

  v10 = *MEMORY[0x277D85DE8];
  return v6;
}

- (unsigned)minVideoFrameRate:(id)rate
{
  v19 = *MEMORY[0x277D85DE8];
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v4 = [rate countByEnumeratingWithState:&v14 objects:v18 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v15;
    LOWORD(v7) = 60;
    do
    {
      for (i = 0; i != v5; ++i)
      {
        if (*v15 != v6)
        {
          objc_enumerationMutation(rate);
        }

        v9 = [rate objectForKeyedSubscript:*(*(&v14 + 1) + 8 * i)];
        if (v9)
        {
          v10 = v9;
          v11 = v7;
          if ([v9 minVideoFrameRate])
          {
            v11 = fmin(v11, [v10 minVideoFrameRate]);
          }

          v7 = v11;
        }
      }

      v5 = [rate countByEnumeratingWithState:&v14 objects:v18 count:16];
    }

    while (v5);
  }

  else
  {
    LOWORD(v7) = 60;
  }

  v12 = *MEMORY[0x277D85DE8];
  return v7;
}

- (double)audioErasureTotalTime:(id)time
{
  v18 = *MEMORY[0x277D85DE8];
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v4 = [time countByEnumeratingWithState:&v13 objects:v17 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v14;
    v7 = 0.0;
    do
    {
      for (i = 0; i != v5; ++i)
      {
        if (*v14 != v6)
        {
          objc_enumerationMutation(time);
        }

        v9 = [time objectForKeyedSubscript:*(*(&v13 + 1) + 8 * i)];
        if (v9)
        {
          [v9 audioErasureTotalTime];
          v7 = v7 + v10;
        }
      }

      v5 = [time countByEnumeratingWithState:&v13 objects:v17 count:16];
    }

    while (v5);
  }

  else
  {
    v7 = 0.0;
  }

  v11 = *MEMORY[0x277D85DE8];
  return v7;
}

- (double)audioErasureTotalTimeAlt:(id)alt
{
  v18 = *MEMORY[0x277D85DE8];
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v4 = [alt countByEnumeratingWithState:&v13 objects:v17 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v14;
    v7 = 0.0;
    do
    {
      for (i = 0; i != v5; ++i)
      {
        if (*v14 != v6)
        {
          objc_enumerationMutation(alt);
        }

        v9 = [alt objectForKeyedSubscript:*(*(&v13 + 1) + 8 * i)];
        if (v9)
        {
          [v9 audioErasureTotalTime];
          v7 = v7 + v10;
        }
      }

      v5 = [alt countByEnumeratingWithState:&v13 objects:v17 count:16];
    }

    while (v5);
  }

  else
  {
    v7 = 0.0;
  }

  v11 = *MEMORY[0x277D85DE8];
  return v7;
}

- (void)updatePerfTimingV1WithFirstVideoFrameProcessingDelta:(double)delta firstMediaReceivedDelta:(double)receivedDelta firstMKIDelta:(double)iDelta totalMediaStallSaveDelta:(double)saveDelta streamGroupID:(id)d
{
  v11 = [(NSMutableDictionary *)self->_streamGroupStats objectForKeyedSubscript:d];
  if ([v11 perfTimerEventCount] <= 4)
  {
    firstMKIReceived = [v11 firstMKIReceived];
    v13 = MEMORY[0x277CCACA0];
    if (firstMKIReceived)
    {
      firstMKIReceived2 = [v11 firstMKIReceived];
      v15 = [v13 stringWithFormat:@"%@, %@", firstMKIReceived2, objc_msgSend(MEMORY[0x277CCABA8], "numberWithDouble:", iDelta)];
    }

    else
    {
      v15 = [MEMORY[0x277CCACA0] stringWithFormat:@"%@", objc_msgSend(MEMORY[0x277CCABA8], "numberWithDouble:", iDelta), v33];
    }

    [v11 setFirstMKIReceived:v15];
    firstMediaReceived = [v11 firstMediaReceived];
    v17 = MEMORY[0x277CCACA0];
    if (firstMediaReceived)
    {
      firstMediaReceived2 = [v11 firstMediaReceived];
      v19 = [v17 stringWithFormat:@"%@, %@", firstMediaReceived2, objc_msgSend(MEMORY[0x277CCABA8], "numberWithDouble:", receivedDelta)];
    }

    else
    {
      v19 = [MEMORY[0x277CCACA0] stringWithFormat:@"%@", objc_msgSend(MEMORY[0x277CCABA8], "numberWithDouble:", receivedDelta), v34];
    }

    [v11 setFirstMediaReceived:v19];
    firstRemoteMediaFrameDecoded = [v11 firstRemoteMediaFrameDecoded];
    v21 = MEMORY[0x277CCACA0];
    if (firstRemoteMediaFrameDecoded)
    {
      firstRemoteMediaFrameDecoded2 = [v11 firstRemoteMediaFrameDecoded];
      v23 = [v21 stringWithFormat:@"%@, %@", firstRemoteMediaFrameDecoded2, objc_msgSend(MEMORY[0x277CCABA8], "numberWithDouble:", delta)];
    }

    else
    {
      v23 = [MEMORY[0x277CCACA0] stringWithFormat:@"%@", objc_msgSend(MEMORY[0x277CCABA8], "numberWithDouble:", delta), v35];
    }

    [v11 setFirstRemoteMediaFrameDecoded:v23];
    timeToRenderFirstRemoteMediaFrame = [v11 timeToRenderFirstRemoteMediaFrame];
    v25 = MEMORY[0x277CCACA0];
    if (timeToRenderFirstRemoteMediaFrame)
    {
      timeToRenderFirstRemoteMediaFrame2 = [v11 timeToRenderFirstRemoteMediaFrame];
      v27 = [v25 stringWithFormat:@"%@, %@", timeToRenderFirstRemoteMediaFrame2, objc_msgSend(MEMORY[0x277CCABA8], "numberWithDouble:", receivedDelta + iDelta + delta)];
    }

    else
    {
      v27 = [MEMORY[0x277CCACA0] stringWithFormat:@"%@", objc_msgSend(MEMORY[0x277CCABA8], "numberWithDouble:", receivedDelta + iDelta + delta), v36];
    }

    [v11 setTimeToRenderFirstRemoteMediaFrame:v27];
    totalMediaStallSaveDelta = [v11 totalMediaStallSaveDelta];
    v29 = MEMORY[0x277CCACA0];
    if (totalMediaStallSaveDelta)
    {
      totalMediaStallSaveDelta2 = [v11 totalMediaStallSaveDelta];
      v31 = [v29 stringWithFormat:@"%@, %@", totalMediaStallSaveDelta2, objc_msgSend(MEMORY[0x277CCABA8], "numberWithDouble:", saveDelta)];
    }

    else
    {
      v31 = [MEMORY[0x277CCACA0] stringWithFormat:@"%@", objc_msgSend(MEMORY[0x277CCABA8], "numberWithDouble:", saveDelta), v37];
    }

    [v11 setTotalMediaStallSaveDelta:v31];
    v32 = [v11 perfTimerEventCount] + 1;

    [v11 setPerfTimerEventCount:v32];
  }
}

- (void)updatePerfTimingV2WithMediaCreatedToStartedTime:(double)time mediaStartedToFirstPacketTime:(double)packetTime mediaFirstPacketToFirstFrameTime:(double)frameTime streamGroupID:(id)d
{
  v9 = [(NSMutableDictionary *)self->_streamGroupStats objectForKeyedSubscript:?];
  if (packetTime == 0.0 || frameTime == 0.0)
  {
    [MultiwayCall updatePerfTimingV2WithMediaCreatedToStartedTime:mediaStartedToFirstPacketTime:mediaFirstPacketToFirstFrameTime:streamGroupID:];
  }

  else
  {
    v10 = v9;
    if (time != 0.0 && ![v9 mediaCreatedToStartedTime])
    {
      [v10 setMediaCreatedToStartedTime:{objc_msgSend(MEMORY[0x277CCABA8], "numberWithDouble:", time)}];
    }

    mediaStartedToFirstPacketTime = [v10 mediaStartedToFirstPacketTime];
    v12 = MEMORY[0x277CCACA0];
    if (mediaStartedToFirstPacketTime)
    {
      mediaStartedToFirstPacketTime2 = [v10 mediaStartedToFirstPacketTime];
      v14 = [v12 stringWithFormat:@"%@, %@", mediaStartedToFirstPacketTime2, objc_msgSend(MEMORY[0x277CCABA8], "numberWithDouble:", packetTime)];
    }

    else
    {
      v14 = [MEMORY[0x277CCACA0] stringWithFormat:@"%@", objc_msgSend(MEMORY[0x277CCABA8], "numberWithDouble:", packetTime), v20];
    }

    [v10 setMediaStartedToFirstPacketTime:v14];
    mediaFirstPacketToFirstFrameTime = [v10 mediaFirstPacketToFirstFrameTime];
    v16 = MEMORY[0x277CCACA0];
    if (mediaFirstPacketToFirstFrameTime)
    {
      mediaFirstPacketToFirstFrameTime2 = [v10 mediaFirstPacketToFirstFrameTime];
      v18 = [v16 stringWithFormat:@"%@, %@", mediaFirstPacketToFirstFrameTime2, objc_msgSend(MEMORY[0x277CCABA8], "numberWithDouble:", frameTime)];
    }

    else
    {
      v18 = [MEMORY[0x277CCACA0] stringWithFormat:@"%@", objc_msgSend(MEMORY[0x277CCABA8], "numberWithDouble:", frameTime), v21];
    }

    [v10 setMediaFirstPacketToFirstFrameTime:v18];
    v19 = [v10 perfTimerV2EventCount] + 1;

    [v10 setPerfTimerV2EventCount:v19];
  }
}

- (void)updateAudioBitratePerStreamGroup:(id)group
{
  v48 = *MEMORY[0x277D85DE8];
  v4 = [group objectForKeyedSubscript:sRTCReportingStreamCollection];
  v43 = 0u;
  v44 = 0u;
  v45 = 0u;
  v46 = 0u;
  v5 = [v4 countByEnumeratingWithState:&v43 objects:v47 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v44;
    do
    {
      v8 = 0;
      do
      {
        if (*v44 != v7)
        {
          objc_enumerationMutation(v4);
        }

        v9 = [v4 objectForKeyedSubscript:*(*(&v43 + 1) + 8 * v8)];
        v10 = [v9 objectForKeyedSubscript:@"VCMSStreamGroup"];
        v11 = [objc_msgSend(v9 objectForKeyedSubscript:{@"VCMSDirection", "intValue"}];
        if ([v10 unsignedIntValue] == 2 || objc_msgSend(v10, "unsignedIntValue") == 4 || objc_msgSend(v10, "unsignedIntValue") == 6)
        {
          if (v11 == 2)
          {
            v27 = 0.0;
            v28 = 0.0;
            if ([v9 objectForKeyedSubscript:@"ARxR"])
            {
              [objc_msgSend(v9 objectForKeyedSubscript:{@"ARxR", "doubleValue"}];
              v28 = v29 + 0.0;
            }

            v30 = [(NSMutableDictionary *)self->_streamGroupStats objectForKeyedSubscript:v10];
            [v30 averageAudioRxBitrate];
            [v30 setAverageAudioRxBitrate:v28 + v31];
            if ([v9 objectForKeyedSubscript:@"AMRR"])
            {
              [objc_msgSend(v9 objectForKeyedSubscript:{@"AMRR", "doubleValue"}];
              v27 = v32 + 0.0;
            }

            v33 = [(NSMutableDictionary *)self->_streamGroupStats objectForKeyedSubscript:v10];
            [v33 averageAudioMediaRxBitrate];
            [v33 setAverageAudioMediaRxBitrate:v27 + v34];
            v35 = 0.0;
            v36 = 0.0;
            if ([v9 objectForKeyedSubscript:@"ARxDecodeBitrate"])
            {
              [objc_msgSend(v9 objectForKeyedSubscript:{@"ARxDecodeBitrate", "doubleValue"}];
              v36 = v37 + 0.0;
            }

            v38 = [(NSMutableDictionary *)self->_streamGroupStats objectForKeyedSubscript:v10];
            [v38 averageAudioMediaRxDecodeBitrate];
            [v38 setAverageAudioMediaRxDecodeBitrate:v36 + v39];
            if ([v9 objectForKeyedSubscript:@"RedRxBitrate"])
            {
              [objc_msgSend(v9 objectForKeyedSubscript:{@"RedRxBitrate", "doubleValue"}];
              v35 = v40 + 0.0;
            }

            v41 = [(NSMutableDictionary *)self->_streamGroupStats objectForKeyedSubscript:v10];
            [v41 setAverageAudioRedRxBitrate:{(v35 + objc_msgSend(v41, "averageAudioRedRxBitrate"))}];
          }

          else if (v11 == 1)
          {
            v12 = 0.0;
            v13 = 0.0;
            if ([v9 objectForKeyedSubscript:@"ATxR"])
            {
              [objc_msgSend(v9 objectForKeyedSubscript:{@"ATxR", "doubleValue"}];
              v13 = v14 + 0.0;
            }

            v15 = [(NSMutableDictionary *)self->_streamGroupStats objectForKeyedSubscript:v10];
            [v15 averageAudioTxBitrate];
            [v15 setAverageAudioTxBitrate:v13 + v16];
            if ([v9 objectForKeyedSubscript:@"ATxRPrimary"])
            {
              [objc_msgSend(v9 objectForKeyedSubscript:{@"ATxRPrimary", "doubleValue"}];
              v12 = v17 + 0.0;
            }

            v18 = [(NSMutableDictionary *)self->_streamGroupStats objectForKeyedSubscript:v10];
            [v18 averageAudioMediaTxBitrate];
            [v18 setAverageAudioMediaTxBitrate:v12 + v19];
            v20 = 0.0;
            v21 = 0.0;
            if ([v9 objectForKeyedSubscript:@"ATxEncodedBitrate"])
            {
              [objc_msgSend(v9 objectForKeyedSubscript:{@"ATxEncodedBitrate", "doubleValue"}];
              v21 = v22 + 0.0;
            }

            v23 = [(NSMutableDictionary *)self->_streamGroupStats objectForKeyedSubscript:v10];
            [v23 averageAudioMediaTxNoRedBitrate];
            [v23 setAverageAudioMediaTxNoRedBitrate:v21 + v24];
            if ([v9 objectForKeyedSubscript:@"REDPayloadBitrate"])
            {
              [objc_msgSend(v9 objectForKeyedSubscript:{@"REDPayloadBitrate", "doubleValue"}];
              v20 = v25 + 0.0;
            }

            v26 = [(NSMutableDictionary *)self->_streamGroupStats objectForKeyedSubscript:v10];
            [v26 setAverageAudioRedTxBitrate:{(v20 + objc_msgSend(v26, "averageAudioRedTxBitrate"))}];
          }
        }

        ++v8;
      }

      while (v6 != v8);
      v6 = [v4 countByEnumeratingWithState:&v43 objects:v47 count:16];
    }

    while (v6);
  }

  v42 = *MEMORY[0x277D85DE8];
}

- (void)processStreamData:(id)data streamGroupID:(id)d
{
  v6 = [(NSMutableDictionary *)self->_streamGroupStats objectForKeyedSubscript:d];
  if ([d unsignedIntValue] == 1 || objc_msgSend(d, "unsignedIntValue") == 3 || objc_msgSend(d, "unsignedIntValue") == 5 || objc_msgSend(d, "unsignedIntValue") == 7 || objc_msgSend(d, "unsignedIntValue") == 8 || objc_msgSend(d, "unsignedIntValue") == 10)
  {
    [v6 setVideoFrameReceivedCounter:{objc_msgSend(v6, "videoFrameReceivedCounter") + objc_msgSend(objc_msgSend(data, "objectForKeyedSubscript:", @"VFRxCnt", "intValue")}];
    [v6 setVideoFrameExpectedCounter:{objc_msgSend(v6, "videoFrameExpectedCounter") + objc_msgSend(objc_msgSend(data, "objectForKeyedSubscript:", @"VFExCnt", "intValue")}];
    [v6 setPacketLossRateAccumulator:{objc_msgSend(v6, "packetLossRateAccumulator") + objc_msgSend(objc_msgSend(data, "objectForKeyedSubscript:", @"VRxPLR", "unsignedIntValue")}];
    [v6 processMLStreamData:data];
  }

  if ([d unsignedIntValue] == 2 || objc_msgSend(d, "unsignedIntValue") == 4 || objc_msgSend(d, "unsignedIntValue") == 6)
  {
    v7 = [objc_msgSend(data objectForKeyedSubscript:{@"ARxPLR", "unsignedIntValue"}];
    v8 = [v6 packetLossRateAccumulator] + v7;

    [v6 setPacketLossRateAccumulator:v8];
  }
}

- (void)updateSliceStatusDuration
{
  [(VCHistogram *)self->_cellularSliceStatusDuration addValue:self->_currentCellularSliceStatus];
  cellularRemoteSliceStatusDuration = self->_cellularRemoteSliceStatusDuration;
  currentCellularRemoteSliceStatus = self->_currentCellularRemoteSliceStatus;

  [(VCHistogram *)cellularRemoteSliceStatusDuration addValue:currentCellularRemoteSliceStatus];
}

- (void)processRTEvent:(id)event
{
  if ([event objectForKeyedSubscript:@"WPRSZ"])
  {
    self->_averageWireReceiveBytes += [objc_msgSend(event objectForKeyedSubscript:{@"WPRSZ", "integerValue"}];
    ++self->_averageWireReceiveCounter;
  }

  if ([event objectForKeyedSubscript:@"WPSSZ"])
  {
    self->_averageWireSendBytes += [objc_msgSend(event objectForKeyedSubscript:{@"WPSSZ", "integerValue"}];
    ++self->_averageWireSendCounter;
  }

  v5 = [event objectForKeyedSubscript:@"BIFCng"];
  if (v5)
  {
    self->_shouldReportBIFPercentage = 1;
    self->_bifAboveThresholdCount += [v5 intValue];
  }

  if ([event objectForKeyedSubscript:@"SyncIDSFailure"])
  {
    self->_sessionSynchronizerResponseFailure = [objc_msgSend(event objectForKeyedSubscript:{@"SyncIDSFailure", "integerValue"}];
  }

  [(MultiwayCall *)self updateAudioBitratePerStreamGroup:event];

  [(MultiwayCall *)self updateSliceStatusDuration];
}

- (void)addConnectionTiming:(id)timing streamGroupStats:(id)stats streamGroupID:(id)d
{
  [timing setObject:objc_msgSend(stats forKeyedSubscript:{"firstMKIReceived"), objc_msgSend(MEMORY[0x277CCACA0], "stringWithFormat:", @"%@_%@", @"FMKIRD", d)}];
  [timing setObject:objc_msgSend(stats forKeyedSubscript:{"firstMediaReceived"), objc_msgSend(MEMORY[0x277CCACA0], "stringWithFormat:", @"%@_%@", @"MRT", d)}];
  [timing setObject:objc_msgSend(stats forKeyedSubscript:{"firstRemoteMediaFrameDecoded"), objc_msgSend(MEMORY[0x277CCACA0], "stringWithFormat:", @"%@_%@", @"FDVFD", d)}];
  [timing setObject:objc_msgSend(stats forKeyedSubscript:{"totalMediaStallSaveDelta"), objc_msgSend(MEMORY[0x277CCACA0], "stringWithFormat:", @"%@_%@", @"TMSSI", d)}];
  v9 = MEMORY[0x277CCACA0];
  if ([d intValue] == 1 || objc_msgSend(d, "intValue") == 3 || objc_msgSend(d, "intValue") == 5 || objc_msgSend(d, "intValue") == 7)
  {
    v10 = @"TFVF";
  }

  else
  {
    v10 = @"TFVF";
    if ([d intValue] != 8 && objc_msgSend(d, "intValue") != 10)
    {
      v10 = @"TFAF";
    }
  }

  [timing setObject:objc_msgSend(stats forKeyedSubscript:{"timeToRenderFirstRemoteMediaFrame"), objc_msgSend(v9, "stringWithFormat:", @"%@_%@", v10, d)}];
  if (self->_totalConnectionTime_Alt)
  {
    [timing setObject:self->_totalConnectionTime_Alt forKeyedSubscript:{objc_msgSend(MEMORY[0x277CCACA0], "stringWithFormat:", @"%@_%@", @"CTCT", @"A"}];
  }

  if (self->_totalConnectionTimeStarted)
  {
    [timing setObject:self->_totalConnectionTimeStarted forKeyedSubscript:{objc_msgSend(MEMORY[0x277CCACA0], "stringWithFormat:", @"%@_%@", @"CTCT", @"S"}];
  }

  if (self->_totalConnectionTimeSourceStreamGroupID)
  {
    [timing setObject:self->_totalConnectionTimeSourceStreamGroupID forKeyedSubscript:{objc_msgSend(MEMORY[0x277CCACA0], "stringWithFormat:", @"%@_%@", @"CTCT", @"G"}];
  }

  v11 = [MEMORY[0x277CCACA0] stringWithFormat:@"%@_%@", @"CST", @"A"];
  if ([stats mediaCreatedToStartedTime])
  {
    [timing setObject:objc_msgSend(stats forKeyedSubscript:{"mediaCreatedToStartedTime"), objc_msgSend(MEMORY[0x277CCACA0], "stringWithFormat:", @"%@_%@", v11, d)}];
  }

  v12 = [MEMORY[0x277CCACA0] stringWithFormat:@"%@_%@", @"MRT", @"A"];
  if ([stats mediaStartedToFirstPacketTime])
  {
    [timing setObject:objc_msgSend(stats forKeyedSubscript:{"mediaStartedToFirstPacketTime"), objc_msgSend(MEMORY[0x277CCACA0], "stringWithFormat:", @"%@_%@", v12, d)}];
  }

  v13 = [MEMORY[0x277CCACA0] stringWithFormat:@"%@_%@", @"MRPT", @"A"];
  if ([stats mediaFirstPacketToFirstFrameTime])
  {
    v14 = [MEMORY[0x277CCACA0] stringWithFormat:@"%@_%@", v13, d];
    mediaFirstPacketToFirstFrameTime = [stats mediaFirstPacketToFirstFrameTime];

    [timing setObject:mediaFirstPacketToFirstFrameTime forKeyedSubscript:v14];
  }
}

- (void)addVideoStreamGroupTelemetry:(id)telemetry streamGroupID:(id)d
{
  v7 = [(NSMutableDictionary *)self->_streamGroupStats objectForKeyedSubscript:d];
  if ([v7 videoStreamSwitchCount])
  {
    v8 = [MEMORY[0x277CCACA0] stringWithFormat:@"%@_%@", @"VSTSWCNT", d];
    [telemetry setObject:objc_msgSend(MEMORY[0x277CCABA8] forKeyedSubscript:{"numberWithUnsignedInt:", objc_msgSend(v7, "videoStreamSwitchCount")), v8}];
  }

  [(MultiwayCall *)self addConnectionTiming:telemetry streamGroupStats:v7 streamGroupID:d];
  [v7 finalizeStats];
  if ([v7 tickCount] && self->_duration)
  {
    v9 = MEMORY[0x277CCACA0];
    if ([d intValue] == 1 || objc_msgSend(d, "intValue") == 3 || objc_msgSend(d, "intValue") == 5 || objc_msgSend(d, "intValue") == 7)
    {
      v10 = @"TFVF";
    }

    else
    {
      v10 = @"TFVF";
      if ([d intValue] != 8 && objc_msgSend(d, "intValue") != 10)
      {
        v10 = @"TFAF";
      }
    }

    [telemetry setObject:objc_msgSend(v7 forKeyedSubscript:{"timeToRenderFirstRemoteMediaFrame"), objc_msgSend(v9, "stringWithFormat:", @"%@_%@", v10, d)}];
    v11 = [MEMORY[0x277CCACA0] stringWithFormat:@"%@_%@", @"FIRRCVDC", d];
    [telemetry setObject:objc_msgSend(MEMORY[0x277CCABA8] forKeyedSubscript:{"numberWithUnsignedLongLong:", objc_msgSend(v7, "firReceivedCount")), v11}];
    v12 = @"FIRRCVDR";
    if (d && (v12 = [MEMORY[0x277CCACA0] stringWithFormat:@"%@_%@", @"FIRRCVDR", d]) == 0 || (!self->_duration ? (v15 = 0) : (v13 = objc_msgSend(v7, "firReceivedCount") * 1000.0, duration = self->_duration, v15 = (v13 / (-[MultiwayCall RTPeriod](self, "RTPeriod") * duration))), objc_msgSend(telemetry, "setObject:forKeyedSubscript:", objc_msgSend(MEMORY[0x277CCABA8], "numberWithUnsignedInt:", v15), v12), d))
    {
      v16 = [MEMORY[0x277CCACA0] stringWithFormat:@"%@_%@", @"VRRFR", d];
      if (!v16)
      {
        goto LABEL_23;
      }
    }

    else
    {
      v16 = @"VRRFR";
    }

    if (self->_duration)
    {
      v17 = [v7 videoFrameReceivedCounter] * 1000.0;
      v18 = self->_duration;
      v19 = (v17 / ([(MultiwayCall *)self RTPeriod]* v18));
    }

    else
    {
      v19 = 0;
    }

    [telemetry setObject:objc_msgSend(MEMORY[0x277CCABA8] forKeyedSubscript:{"numberWithUnsignedInt:", v19), v16}];
    if (!d)
    {
      v20 = @"VRExFR";
      goto LABEL_27;
    }

LABEL_23:
    v20 = [MEMORY[0x277CCACA0] stringWithFormat:@"%@_%@", @"VRExFR", d];
    if (!v20)
    {
      if (![v7 packetLossRateAccumulator])
      {
        goto LABEL_39;
      }

      goto LABEL_32;
    }

LABEL_27:
    if (self->_duration)
    {
      v21 = [v7 videoFrameExpectedCounter] * 1000.0;
      v22 = self->_duration;
      v23 = (v21 / ([(MultiwayCall *)self RTPeriod]* v22));
    }

    else
    {
      v23 = 0;
    }

    [telemetry setObject:objc_msgSend(MEMORY[0x277CCABA8] forKeyedSubscript:{"numberWithUnsignedInt:", v23), v20}];
    if (![v7 packetLossRateAccumulator])
    {
      goto LABEL_39;
    }

    if (!d)
    {
      v24 = @"AVIDPLR";
      goto LABEL_35;
    }

LABEL_32:
    v24 = [MEMORY[0x277CCACA0] stringWithFormat:@"%@_%@", @"AVIDPLR", d];
    if (!v24)
    {
LABEL_39:
      [telemetry setObject:objc_msgSend(objc_msgSend(v7 forKeyedSubscript:{"mlEnhanceFramePercent"), "description"), objc_msgSend(MEMORY[0x277CCACA0], "stringWithFormat:", @"%@_%@", @"MLFCP", d)}];
      for (i = 0; i != 4; ++i)
      {
        [telemetry setObject:objc_msgSend(objc_msgSend(objc_msgSend(v7 forKeyedSubscript:{"mlEnhancedPercentInputResolutions"), "objectAtIndexedSubscript:", i), "description"), objc_msgSend(MEMORY[0x277CCACA0], "stringWithFormat:", @"%@_%@_%d", @"MLRIFP", d, i)}];
        [telemetry setObject:objc_msgSend(objc_msgSend(objc_msgSend(v7 forKeyedSubscript:{"mlEnhancedPercentOutputResolutions"), "objectAtIndexedSubscript:", i), "description"), objc_msgSend(MEMORY[0x277CCACA0], "stringWithFormat:", @"%@_%@_%d", @"MLROFP", d, i)}];
      }

      return;
    }

LABEL_35:
    if (self->_duration)
    {
      v25 = [v7 packetLossRateAccumulator] / self->_duration;
    }

    else
    {
      v25 = 0;
    }

    [telemetry setObject:objc_msgSend(MEMORY[0x277CCABA8] forKeyedSubscript:{"numberWithUnsignedInt:", v25), v24}];
    goto LABEL_39;
  }
}

- (void)addAudioStreamGroupTelemetry:(id)telemetry streamGroupID:(id)d
{
  v7 = [(NSMutableDictionary *)self->_streamGroupStats objectForKeyedSubscript:d];
  if ([v7 audioStreamSwitchCount])
  {
    v8 = [MEMORY[0x277CCACA0] stringWithFormat:@"%@_%@", @"ASTSWCNT", d];
    [telemetry setObject:objc_msgSend(MEMORY[0x277CCABA8] forKeyedSubscript:{"numberWithUnsignedInt:", objc_msgSend(v7, "audioStreamSwitchCount")), v8}];
  }

  if ([v7 packetLossRateAccumulator])
  {
    v9 = @"AAUDPLR";
    if (!d || (v9 = [MEMORY[0x277CCACA0] stringWithFormat:@"%@_%@", @"AAUDPLR", d]) != 0)
    {
      if (self->_duration)
      {
        v10 = [v7 packetLossRateAccumulator] / self->_duration;
      }

      else
      {
        v10 = 0;
      }

      [telemetry setObject:objc_msgSend(MEMORY[0x277CCABA8] forKeyedSubscript:{"numberWithUnsignedInt:", v10), v9}];
    }
  }

  [(MultiwayCall *)self addConnectionTiming:telemetry streamGroupStats:v7 streamGroupID:d];
}

- (void)addRTXStreamGroupTelemetry:(id)telemetry streamGroupID:(id)d
{
  duration = self->_duration;
  v8 = [(MultiwayCall *)self RTPeriod]* duration;
  v9 = [(NSMutableDictionary *)self->_streamGroupStats objectForKeyedSubscript:d];
  v10 = [MEMORY[0x277CCACA0] stringWithFormat:@"%@_%@", @"NACKS", d];
  [telemetry setObject:objc_msgSend(MEMORY[0x277CCABA8] forKeyedSubscript:{"numberWithUnsignedLongLong:", objc_msgSend(v9, "nacksSent")), v10}];
  v11 = [MEMORY[0x277CCACA0] stringWithFormat:@"%@_%@", @"NACKF", d];
  [telemetry setObject:objc_msgSend(MEMORY[0x277CCABA8] forKeyedSubscript:{"numberWithUnsignedLongLong:", objc_msgSend(v9, "nacksFulfilled")), v11}];
  v12 = [MEMORY[0x277CCACA0] stringWithFormat:@"%@_%@", @"NACKFOT", d];
  [telemetry setObject:objc_msgSend(MEMORY[0x277CCABA8] forKeyedSubscript:{"numberWithUnsignedLongLong:", objc_msgSend(v9, "nacksFulfilledOnTime")), v12}];
  v13 = [MEMORY[0x277CCACA0] stringWithFormat:@"%@_%@", @"NACKSRATE", d];
  if (v8)
  {
    v14 = [MEMORY[0x277CCABA8] numberWithDouble:{objc_msgSend(v9, "nacksSent") / v8}];
  }

  else
  {
    v14 = 0;
  }

  [telemetry setObject:v14 forKeyedSubscript:v13];
  v15 = [MEMORY[0x277CCACA0] stringWithFormat:@"%@_%@", @"NACKFRATE", d];
  if (v8)
  {
    v16 = [MEMORY[0x277CCABA8] numberWithDouble:{objc_msgSend(v9, "nacksFulfilled") / v8}];
  }

  else
  {
    v16 = 0;
  }

  [telemetry setObject:v16 forKeyedSubscript:v15];
  v17 = [MEMORY[0x277CCACA0] stringWithFormat:@"%@_%@", @"NACKFOTRATE", d];
  if (v8)
  {
    v18 = [MEMORY[0x277CCABA8] numberWithDouble:{objc_msgSend(v9, "nacksFulfilledOnTime") / v8}];
  }

  else
  {
    v18 = 0;
  }

  [telemetry setObject:v18 forKeyedSubscript:v17];
  v19 = [MEMORY[0x277CCACA0] stringWithFormat:@"%@_%@", @"NACKLSCHFRTX", d];
  if (v8)
  {
    v20 = [MEMORY[0x277CCABA8] numberWithDouble:{objc_msgSend(v9, "lateFramesScheduledWithRTXCount") / v8}];
  }

  else
  {
    v20 = 0;
  }

  [telemetry setObject:v20 forKeyedSubscript:v19];
  v21 = [MEMORY[0x277CCACA0] stringWithFormat:@"%@_%@", @"NACKFASSMRTX", d];
  if (v8)
  {
    v22 = [MEMORY[0x277CCABA8] numberWithDouble:{objc_msgSend(v9, "assembledFramesWithRTXPacketsCount") / v8}];
  }

  else
  {
    v22 = 0;
  }

  [telemetry setObject:v22 forKeyedSubscript:v21];
  v23 = [MEMORY[0x277CCACA0] stringWithFormat:@"%@_%@", @"NACKFFASSMRTX", d];
  if (v8)
  {
    v24 = [MEMORY[0x277CCABA8] numberWithDouble:{objc_msgSend(v9, "failedToAssembleFramesWithRTXPacketsCount") / v8}];
  }

  else
  {
    v24 = 0;
  }

  [telemetry setObject:v24 forKeyedSubscript:v23];
  v25 = [MEMORY[0x277CCACA0] stringWithFormat:@"%@_%@", @"UNACKS", d];
  [telemetry setObject:objc_msgSend(MEMORY[0x277CCABA8] forKeyedSubscript:{"numberWithUnsignedLongLong:", objc_msgSend(v9, "uniqueNacksSent")), v25}];
  v26 = [MEMORY[0x277CCACA0] stringWithFormat:@"%@_%@", @"UNACKSRATE", d];
  if (v8)
  {
    v27 = [MEMORY[0x277CCABA8] numberWithDouble:{objc_msgSend(v9, "uniqueNacksSent") / v8}];
  }

  else
  {
    v27 = 0;
  }

  [telemetry setObject:v27 forKeyedSubscript:v26];
}

- (void)addStreamGroupTelemetry:(id)telemetry
{
  v23 = *MEMORY[0x277D85DE8];
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  v21 = 0u;
  streamGroupStats = self->_streamGroupStats;
  v6 = [(NSMutableDictionary *)streamGroupStats countByEnumeratingWithState:&v18 objects:v22 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v19;
    do
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v19 != v8)
        {
          objc_enumerationMutation(streamGroupStats);
        }

        v10 = *(*(&v18 + 1) + 8 * i);
        if ([v10 unsignedIntValue] == 1 || objc_msgSend(v10, "unsignedIntValue") == 3 || objc_msgSend(v10, "unsignedIntValue") == 5 || objc_msgSend(v10, "unsignedIntValue") == 7 || objc_msgSend(v10, "unsignedIntValue") == 8 || objc_msgSend(v10, "unsignedIntValue") == 10)
        {
          [(MultiwayCall *)self addVideoStreamGroupTelemetry:telemetry streamGroupID:v10];
        }

        if ([v10 unsignedIntValue] == 2 || objc_msgSend(v10, "unsignedIntValue") == 4 || objc_msgSend(v10, "unsignedIntValue") == 6)
        {
          [(MultiwayCall *)self addAudioStreamGroupTelemetry:telemetry streamGroupID:v10];
        }
      }

      v7 = [(NSMutableDictionary *)streamGroupStats countByEnumeratingWithState:&v18 objects:v22 count:16];
    }

    while (v7);
  }

  averageWireReceiveCounter = self->_averageWireReceiveCounter;
  if (averageWireReceiveCounter)
  {
    v12 = self->_averageWireReceiveBytes * 8.0;
    v13 = (v12 / (averageWireReceiveCounter * [(MultiwayCall *)self RTPeriod]));
  }

  else
  {
    v13 = 0;
  }

  [telemetry setObject:objc_msgSend(MEMORY[0x277CCABA8] forKeyedSubscript:{"numberWithUnsignedInt:", v13), @"AWRB"}];
  averageWireSendCounter = self->_averageWireSendCounter;
  if (averageWireSendCounter)
  {
    v15 = self->_averageWireSendBytes * 8.0;
    v16 = (v15 / (averageWireSendCounter * [(MultiwayCall *)self RTPeriod]));
  }

  else
  {
    v16 = 0;
  }

  [telemetry setObject:objc_msgSend(MEMORY[0x277CCABA8] forKeyedSubscript:{"numberWithUnsignedInt:", v16), @"AWSB"}];
  v17 = *MEMORY[0x277D85DE8];
}

- (void)addControlChannelTelemetry:(id)telemetry timestamp:(double)timestamp
{
  [(MultiwayCall *)self markHandshakeCompletion:timestamp];
  v5 = +[VCAggregatorUtils safeRoundOffNumber:toSignificantDigits:](VCAggregatorUtils, "safeRoundOffNumber:toSignificantDigits:", [MEMORY[0x277CCABA8] numberWithDouble:?], 2);

  [telemetry setObject:v5 forKeyedSubscript:@"CCHDRTN"];
}

- (void)addRTStatsTelemetry:(id)telemetry
{
  if (self->_shouldReportBIFPercentage)
  {
    v11 = v3;
    adjustedDuration = self->_adjustedDuration;
    if (adjustedDuration)
    {
      v9 = 10000 * self->_bifAboveThresholdCount / adjustedDuration;
    }

    else
    {
      v9 = 0;
    }

    v10 = [MEMORY[0x277CCABA8] numberWithUnsignedInt:{v9, v4, v11, v5}];

    [telemetry setObject:v10 forKeyedSubscript:@"BIFCngP"];
  }
}

- (void)processCipherSuites:(id)suites
{
  self->_authTagABTest = [objc_msgSend(suites objectForKeyedSubscript:{objc_msgSend(MEMORY[0x277CCACA0], "stringWithFormat:", @"%@_ABT", @"CPHRS", "BOOLValue"}];
  v5 = 1;
  do
  {
    v6 = [MEMORY[0x277CCACA0] stringWithFormat:@"%@_%d", @"CPHRS", v5];
    if ([suites objectForKeyedSubscript:v6])
    {
      [-[NSMutableDictionary objectForKeyedSubscript:](self->_streamGroupStats objectForKeyedSubscript:{objc_msgSend(MEMORY[0x277CCABA8], "numberWithUnsignedInt:", v5)), "setCipherSuite:", objc_msgSend(objc_msgSend(suites, "objectForKeyedSubscript:", v6), "intValue")}];
    }

    v5 = (v5 + 1);
  }

  while (v5 != 11);
}

- (void)processNetworkQualityUpdatedWithStatus:(unsigned int)status timestamp:(double)timestamp
{
  OUTLINED_FUNCTION_58();
  v19 = *MEMORY[0x277D85DE8];
  if (*(v4 + 592) != v5)
  {
    v7 = v6;
    v8 = v5;
    v9 = v4;
    v10 = *(v4 + 272);
    OUTLINED_FUNCTION_65();
    v11 = [v10 countByEnumeratingWithState:0 objects:? count:?];
    if (v11)
    {
      v12 = v11;
      v13 = MEMORY[0];
      do
      {
        for (i = 0; i != v12; ++i)
        {
          if (MEMORY[0] != v13)
          {
            objc_enumerationMutation(v10);
          }

          v15 = [*(v9 + 272) objectForKeyedSubscript:*(8 * i)];
          [v15 videoDegradedStartTimePerReason];
          if (v16 > 0.0)
          {
            [v15 videoDegradedStartTimePerReason];
            [objc_msgSend(v15 "videoDegradedDurationPerReason")];
          }
        }

        OUTLINED_FUNCTION_65();
        v12 = [v10 countByEnumeratingWithState:? objects:? count:?];
      }

      while (v12);
    }

    *(v9 + 592) = v8;
  }

  v18 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_57();
}

- (void)incrementCallDuration
{
  v14 = *MEMORY[0x277D85DE8];
  if (self->_live)
  {
    if (self->_duration <= 0)
    {
      if (VRTraceGetErrorLogLevelForModule("") >= 8)
      {
        VRTraceErrorLogLevelToCSTR(8u);
        if (gVRTraceLogDebugAsInfo == 1)
        {
          if (os_log_type_enabled(gVRTraceOSLog, OS_LOG_TYPE_DEFAULT))
          {
            remoteParticipantID = self->_remoteParticipantID;
            OUTLINED_FUNCTION_7_1();
            OUTLINED_FUNCTION_12();
            OUTLINED_FUNCTION_8_1();
            OUTLINED_FUNCTION_26();
            _os_log_impl(v5, v6, OS_LOG_TYPE_DEFAULT, v7, v8, 0x26u);
          }
        }

        else if (os_log_type_enabled(gVRTraceOSLog, OS_LOG_TYPE_DEBUG))
        {
          v9 = self->_remoteParticipantID;
          OUTLINED_FUNCTION_7_1();
          OUTLINED_FUNCTION_12();
          OUTLINED_FUNCTION_8_1();
          OUTLINED_FUNCTION_26();
          _os_log_debug_impl(v10, v11, OS_LOG_TYPE_DEBUG, v12, v13, 0x26u);
        }
      }
    }

    else
    {
      ++self->_adjustedDuration;
    }
  }

  ++self->_duration;
  v3 = *MEMORY[0x277D85DE8];
}

- (void)updatePerfTimingV2WithMediaCreatedToStartedTime:mediaStartedToFirstPacketTime:mediaFirstPacketToFirstFrameTime:streamGroupID:.cold.1()
{
  v7 = *MEMORY[0x277D85DE8];
  if (VRTraceGetErrorLogLevelForModule("") >= 3)
  {
    VRTraceErrorLogLevelToCSTR(3u);
    if (OUTLINED_FUNCTION_19())
    {
      OUTLINED_FUNCTION_2_3();
      OUTLINED_FUNCTION_4();
      OUTLINED_FUNCTION_3_4();
      OUTLINED_FUNCTION_6_4();
      _os_log_error_impl(v1, v2, v3, v4, v5, v6);
    }
  }

  v0 = *MEMORY[0x277D85DE8];
}

@end