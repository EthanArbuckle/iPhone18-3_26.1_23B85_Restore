@interface VCRateControlMediaController
- (BOOL)didMediaGetFlushedWithPayloadType:(unsigned __int8)type transactionID:(unsigned __int16)d packetDropped:(unsigned __int16)dropped sequenceNumberArray:(unsigned __int16 *)array;
- (BOOL)increaseFlushCountForAudioStall:(int)stall audioStallBitrate:(unsigned int)bitrate;
- (BOOL)increaseFlushCountForVideoRefresh:(int)refresh transactionID:(unsigned __int16)d;
- (BOOL)isProbingLargeFrameRequiredAtTime:(double)time;
- (BOOL)rampUpAudioFraction;
- (VCRateControlMediaController)initWithMediaQueue:(tagHANDLE *)queue delegate:(id)delegate;
- (int)basebandFlushCount;
- (unsigned)probingLargeFrameSize;
- (unsigned)probingSequencePacketCount;
- (unsigned)probingSequencePacketSize;
- (void)dealloc;
- (void)decreaseFlushCount:(int)count;
- (void)pauseVideoByUser:(BOOL)user;
- (void)printLargeFrameStatsAtTime:(double)time timestamp:(unsigned int)timestamp timeSinceLastProbingSequence:(double)sequence frameSize:(unsigned int)size wastedBytes:(unsigned int)bytes fecRatio:(double)ratio isFrameRequested:(BOOL)requested;
- (void)recordVideoRefreshFrameWithTimestamp:(unsigned int)timestamp payloadType:(unsigned __int8)type packetCount:(unsigned int)count isKeyFrame:(BOOL)frame;
- (void)scheduleProbingSequenceAtTime:(double)time;
- (void)scheduleProbingSequenceWithFrameSize:(unsigned int)size paddingBytes:(unsigned int)bytes timestamp:(unsigned int)timestamp fecRatio:(double)ratio isProbingSequenceScheduled:(BOOL *)scheduled;
- (void)setIsRemoteAudioPaused:(BOOL)paused;
- (void)setServerBag:(id)bag;
- (void)setStatisticsCollector:(id)collector;
- (void)updateBasebandDropPacketCountWithPayloadType:(unsigned __int8)type sequenceNumber:(unsigned __int16)number;
- (void)updateLargeFrameSizeWithBandwidth:(unsigned int)bandwidth;
- (void)updateProbingLargeFrameSizeCap;
@end

@implementation VCRateControlMediaController

- (VCRateControlMediaController)initWithMediaQueue:(tagHANDLE *)queue delegate:(id)delegate
{
  v18 = *MEMORY[0x1E69E9840];
  v11.receiver = self;
  v11.super_class = VCRateControlMediaController;
  v6 = [(VCRateControlMediaController *)&v11 init];
  if (v6)
  {
    v7 = objc_alloc_init(SenderLargeFrameInfo);
    v6->_senderLargeFrameInfo = v7;
    [(SenderLargeFrameInfo *)v7 setIsLargeFrameRequestDisabled:1];
    objc_storeWeak(&v6->_mediaControllerDelegate, delegate);
    v6->_hMediaQueue = queue;
    v6->_minProbingSpacingAggressive = 0.099;
    if (VRTraceGetErrorLogLevelForModule() >= 7)
    {
      v8 = VRTraceErrorLogLevelToCSTR();
      v9 = *MEMORY[0x1E6986650];
      if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
      {
        *buf = 136315650;
        v13 = v8;
        v14 = 2080;
        v15 = "[VCRateControlMediaController initWithMediaQueue:delegate:]";
        v16 = 1024;
        v17 = 207;
        _os_log_impl(&dword_1DB56E000, v9, OS_LOG_TYPE_DEFAULT, "VCRC [%s] %s:%d VCRateControlMediaController init", buf, 0x1Cu);
      }
    }
  }

  return v6;
}

- (void)dealloc
{
  v4 = *MEMORY[0x1E69E9840];
  objc_storeWeak(&self->_mediaControllerDelegate, 0);

  v3.receiver = self;
  v3.super_class = VCRateControlMediaController;
  [(VCRateControlMediaController *)&v3 dealloc];
}

- (void)setServerBag:(id)bag
{
  v36 = *MEMORY[0x1E69E9840];
  serverBag = self->_serverBag;
  if (serverBag != bag)
  {

    serverBag = bag;
    self->_serverBag = serverBag;
  }

  v6 = [(VCRateControlServerBag *)serverBag containsAllSecondaryKeysWithPrimaryKey:@"probingSequence"];
  if (v6)
  {
    self->_enableAggressiveProbingSequence = [-[VCRateControlServerBag valueForSecondaryKeyWithPrimaryKey:secondaryKey:type:](self->_serverBag valueForSecondaryKeyWithPrimaryKey:@"probingSequence" secondaryKey:@"aggModeEnabled" type:{0), "BOOLValue"}];
    [-[VCRateControlServerBag valueForSecondaryKeyWithPrimaryKey:secondaryKey:type:](self->_serverBag valueForSecondaryKeyWithPrimaryKey:@"probingSequence" secondaryKey:@"minAggProbingSpacing" type:{1), "doubleValue"}];
    self->_minProbingSpacingAggressive = v7;
  }

  ErrorLogLevelForModule = VRTraceGetErrorLogLevelForModule();
  v9 = MEMORY[0x1E6986650];
  if (ErrorLogLevelForModule >= 7)
  {
    v10 = VRTraceErrorLogLevelToCSTR();
    v11 = *v9;
    if (os_log_type_enabled(*v9, OS_LOG_TYPE_DEFAULT))
    {
      uTF8String = [@"probingSequence" UTF8String];
      enableAggressiveProbingSequence = self->_enableAggressiveProbingSequence;
      minProbingSpacingAggressive = self->_minProbingSpacingAggressive;
      v20 = 136316930;
      v21 = v10;
      v22 = 2080;
      v23 = "[VCRateControlMediaController setServerBag:]";
      v24 = 1024;
      v25 = 342;
      v26 = 2048;
      selfCopy2 = self;
      v28 = 2080;
      v29 = uTF8String;
      v30 = 1024;
      v31 = v6;
      v32 = 1024;
      v33 = enableAggressiveProbingSequence;
      v34 = 2048;
      v35 = minProbingSpacingAggressive;
      _os_log_impl(&dword_1DB56E000, v11, OS_LOG_TYPE_DEFAULT, "VCRC [%s] %s:%d [%p] config for key=%s serverBagContainsGroup=%d _enableAggressiveProbingSequence=%d _minProbingSpacingAggressive=%f", &v20, 0x46u);
    }
  }

  v15 = [(VCRateControlServerBag *)self->_serverBag containsAllSecondaryKeysWithPrimaryKey:@"baseband"];
  if (v15)
  {
    self->_disableBasebandFlush = [-[VCRateControlServerBag valueForSecondaryKeyWithPrimaryKey:secondaryKey:type:](self->_serverBag valueForSecondaryKeyWithPrimaryKey:@"baseband" secondaryKey:@"disableBBFlush" type:{0), "BOOLValue"}];
  }

  if (VRTraceGetErrorLogLevelForModule() >= 7)
  {
    v16 = VRTraceErrorLogLevelToCSTR();
    v17 = *v9;
    if (os_log_type_enabled(*v9, OS_LOG_TYPE_DEFAULT))
    {
      uTF8String2 = [@"baseband" UTF8String];
      disableBasebandFlush = self->_disableBasebandFlush;
      v20 = 136316674;
      v21 = v16;
      v22 = 2080;
      v23 = "[VCRateControlMediaController setServerBag:]";
      v24 = 1024;
      v25 = 348;
      v26 = 2048;
      selfCopy2 = self;
      v28 = 2080;
      v29 = uTF8String2;
      v30 = 1024;
      v31 = v15;
      v32 = 1024;
      v33 = disableBasebandFlush;
      _os_log_impl(&dword_1DB56E000, v17, OS_LOG_TYPE_DEFAULT, "VCRC [%s] %s:%d [%p] config for key=%s serverBagContainsGroup=%d _disableBasebandFlush=%d", &v20, 0x3Cu);
    }
  }
}

- (void)setStatisticsCollector:(id)collector
{
  v7[5] = *MEMORY[0x1E69E9840];

  self->_statisticsCollector = collector;
  v5 = [MEMORY[0x1E6986630] weakObjectHolderWithObject:self];
  statisticsCollector = self->_statisticsCollector;
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __55__VCRateControlMediaController_setStatisticsCollector___block_invoke;
  v7[3] = &unk_1E85F3998;
  v7[4] = v5;
  [(AVCStatisticsCollector *)statisticsCollector registerStatisticsChangeHandlerWithType:10 handler:v7];
}

void __55__VCRateControlMediaController_setStatisticsCollector___block_invoke(uint64_t a1, uint64_t a2)
{
  if (*a2 == 10)
  {
    v3 = MEMORY[0x1E1289F20]([*(a1 + 32) weak]);
    if (v3)
    {
      v4 = v3;
      v5 = *(a2 + 24);
      if (v5 <= 1)
      {
        if (v5)
        {
          if (v5 == 1 && [v3 isRTPFlushBasebandFromVCRateControl])
          {
            [v4 setBasebandFlushCount:{*(a2 + 28) + objc_msgSend(v4, "basebandFlushCount")}];
          }
        }

        else if ([v3 isRTPFlushBasebandFromVCRateControl])
        {
          [v4 decreaseFlushCount:1];
        }
      }

      else
      {
        switch(v5)
        {
          case 2:
            if ([v3 isRTPFlushBasebandFromVCRateControl])
            {
              [v4 increaseFlushCountForVideoRefresh:1 transactionID:*(a2 + 32)];
            }

            break;
          case 3:
            if ([v3 isRTPFlushBasebandFromVCRateControl])
            {
              [v4 increaseFlushCountForAudioStall:1 audioStallBitrate:*(a2 + 36)];
            }

            break;
          case 4:
            [v3 recordVideoRefreshFrameWithTimestamp:*(a2 + 64) payloadType:*(a2 + 68) packetCount:*(a2 + 72) isKeyFrame:*(a2 + 44)];
            break;
        }
      }

      CFRelease(v4);
    }
  }
}

- (void)pauseVideoByUser:(BOOL)user
{
  v29 = *MEMORY[0x1E69E9840];
  if (!self->_isAudioOnly)
  {
    userCopy = user;
    if (self->_isVideoPausedByUser && !user)
    {
      VCRateControlMediaController_SetAudioFractionTier(self, 0);
    }

    if (VRTraceGetErrorLogLevelForModule() >= 7)
    {
      v5 = VRTraceErrorLogLevelToCSTR();
      v6 = *MEMORY[0x1E6986650];
      if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
      {
        if (userCopy)
        {
          v7 = "pause";
        }

        else
        {
          v7 = "resume";
        }

        targetBitrate = self->_targetBitrate;
        *buf = 136316418;
        v18 = v5;
        v19 = 2080;
        v20 = "[VCRateControlMediaController pauseVideoByUser:]";
        v21 = 1024;
        v22 = 707;
        v23 = 2080;
        v24 = v7;
        v25 = 1024;
        v26 = targetBitrate;
        v27 = 1024;
        IsVideoStopped = VCRateControlMediaController_IsVideoStopped(self);
        _os_log_impl(&dword_1DB56E000, v6, OS_LOG_TYPE_DEFAULT, "VCRC [%s] %s:%d Video %s by user [rate:%u, videoStopped:%d]", buf, 0x32u);
      }
    }

    logBasebandDump = self->_logBasebandDump;
    if (logBasebandDump)
    {
      if (userCopy)
      {
        v10 = "pause";
      }

      else
      {
        v10 = "resume";
      }

      VCRateControlMediaController_IsVideoStopped(self);
      VRLogfilePrintWithTimestamp(logBasebandDump, "Video %s by user, [rate:%u, BBRate:%u, audioFraction:%d, videoStopped:%d]\n", v11, v12, v13, v14, v15, v16, v10);
    }

    self->_isVideoPausedByUser = userCopy;
  }
}

- (void)setIsRemoteAudioPaused:(BOOL)paused
{
  v20 = *MEMORY[0x1E69E9840];
  if (self->_isRemoteAudioPaused && !paused)
  {
    memset(&v6[4], 0, 13);
    v10 = 0u;
    v11 = 0u;
    v12 = 0u;
    v13 = 0u;
    v14 = 0u;
    v15 = 0u;
    v16 = 0u;
    v17 = 0u;
    v18 = 0u;
    memset(v19, 0, sizeof(v19));
    statisticsCollector = self->_statisticsCollector;
    *v6 = 7;
    v7 = 1;
    v8 = 1;
    v9 = 0x600000000;
    VCRateControlSetStatistics(statisticsCollector, v6);
  }

  self->_isRemoteAudioPaused = paused;
}

- (void)decreaseFlushCount:(int)count
{
  v26 = *MEMORY[0x1E69E9840];
  basebandFlushCount = self->_basebandFlushCount;
  v12 = micro();
  v13 = self->_basebandFlushCount - count;
  self->_basebandFlushCount = v13;
  self->_lastBasebandFlushCountChangeTime = v12;
  if (v13 >= 1)
  {
    self->_lastBasebandHighNBDCDTime = v12;
  }

  logBasebandDump = self->_logBasebandDump;
  if (logBasebandDump)
  {
    VRLogfilePrintWithTimestamp(logBasebandDump, "Decrease basebandFlushCount %d -> %d.\n", v6, v7, v8, v9, v10, v11, basebandFlushCount);
    v13 = self->_basebandFlushCount;
  }

  if (v13 < 0 && VRTraceGetErrorLogLevelForModule() >= 5)
  {
    v15 = VRTraceErrorLogLevelToCSTR();
    v16 = *MEMORY[0x1E6986650];
    if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
    {
      v17 = self->_basebandFlushCount;
      *buf = 136315906;
      v19 = v15;
      v20 = 2080;
      v21 = "[VCRateControlMediaController decreaseFlushCount:]";
      v22 = 1024;
      v23 = 816;
      v24 = 1024;
      v25 = v17;
      _os_log_impl(&dword_1DB56E000, v16, OS_LOG_TYPE_DEFAULT, "VCRC [%s] %s:%d Negative flush count: %d. Bad flush count maintainance!", buf, 0x22u);
    }
  }
}

- (BOOL)didMediaGetFlushedWithPayloadType:(unsigned __int8)type transactionID:(unsigned __int16)d packetDropped:(unsigned __int16)dropped sequenceNumberArray:(unsigned __int16 *)array
{
  if (!self->_isRTPFlushBasebandFromVCRateControl)
  {
    return 1;
  }

  droppedCopy = dropped;
  if (self->_videoPayloadType == type)
  {
    self->_basebandFlushedVideoCount += dropped;
    if (dropped && self->_videoFlushTransactionID < d)
    {
      v8 = MEMORY[0x1E1289F20](&self->_mediaControllerDelegate, a2);
      [v8 mediaController:self mediaSuggestionDidChange:0x10000];
      if (v8)
      {
        CFRelease(v8);
      }

      return 1;
    }
  }

  else
  {
    self->_basebandFlushedAudioCount += dropped;
  }

  if (self->_isAudioStall)
  {
    vcMediaQueue = self->_vcMediaQueue;
    if (vcMediaQueue)
    {
      VCMediaQueue_BasebandFlushAcked(vcMediaQueue, dropped, array, d);
    }

    else
    {
      hMediaQueue = self->_hMediaQueue;
      if (hMediaQueue != 0xFFFFFFFFLL)
      {
        MediaQueue_BBFlushAcked(hMediaQueue, dropped, array, d);
      }
    }

    if (droppedCopy)
    {
      return 1;
    }
  }

  return 0;
}

- (int)basebandFlushCount
{
  if (self->_isRTPFlushBasebandFromVCRateControl)
  {
    return self->_basebandFlushCount;
  }

  else
  {
    return 0;
  }
}

- (void)updateBasebandDropPacketCountWithPayloadType:(unsigned __int8)type sequenceNumber:(unsigned __int16)number
{
  numberCopy = number;
  typeCopy = type;
  v19 = *MEMORY[0x1E69E9840];
  v6 = 244;
  if (self->_videoPayloadType == type)
  {
    v6 = 240;
  }

  ++*(&self->super.isa + v6);
  if (VRTraceGetErrorLogLevelForModule() >= 7)
  {
    v7 = VRTraceErrorLogLevelToCSTR();
    v8 = *MEMORY[0x1E6986650];
    if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
    {
      v9 = 136316162;
      v10 = v7;
      v11 = 2080;
      v12 = "[VCRateControlMediaController updateBasebandDropPacketCountWithPayloadType:sequenceNumber:]";
      v13 = 1024;
      v14 = 868;
      v15 = 1024;
      v16 = typeCopy;
      v17 = 1024;
      v18 = numberCopy;
      _os_log_impl(&dword_1DB56E000, v8, OS_LOG_TYPE_DEFAULT, "VCRC [%s] %s:%d Baseband dropped media packet with payload type=%u, sequenceNumber=%u", &v9, 0x28u);
    }
  }
}

- (BOOL)rampUpAudioFraction
{
  if (self->_isAudioOnly)
  {
    LOBYTE(IsVideoStopped) = 0;
    return IsVideoStopped;
  }

  IsVideoStopped = VCRateControlMediaController_IsVideoStopped(self);
  if (!IsVideoStopped)
  {
    return IsVideoStopped;
  }

  v4 = micro();
  if (v4 - self->_lastAudioFractionChangeTime <= 2.0)
  {
    goto LABEL_8;
  }

  audioFractionTier = self->_audioFractionTier;
  if (audioFractionTier == 1)
  {
    v6 = 0;
    goto LABEL_10;
  }

  if (audioFractionTier != 2)
  {
LABEL_8:
    LOBYTE(IsVideoStopped) = 0;
    return IsVideoStopped;
  }

  v6 = 1;
LABEL_10:
  VCRateControlMediaController_SetAudioFractionTier(self, v6);
  self->_lastAudioFractionChangeTime = v4;
  logBasebandDump = self->_logBasebandDump;
  if (logBasebandDump)
  {
    VRLogfilePrintWithTimestamp(logBasebandDump, "Change audio fraction tier from %d -> %d.\n", v7, v8, v9, v10, v11, v12, audioFractionTier);
  }

  LOBYTE(IsVideoStopped) = 1;
  return IsVideoStopped;
}

- (unsigned)probingLargeFrameSize
{
  statisticsCollector = self->_statisticsCollector;
  if (statisticsCollector && [(AVCStatisticsCollector *)statisticsCollector mode]!= 1 && [(AVCStatisticsCollector *)self->_statisticsCollector mode]!= 3 && [(AVCStatisticsCollector *)self->_statisticsCollector mode]!= 7 || !self->_isSenderProbingEnabled)
  {
    return 0;
  }

  v4 = micro();
  self->_probingLargeFrameSize = 0;
  [(SenderLargeFrameInfo *)self->_senderLargeFrameInfo lastProbingSequenceTimeExpect];
  if (v5 == 0.0)
  {
    [(SenderLargeFrameInfo *)self->_senderLargeFrameInfo setLastProbingSequenceTimeExpect:v4];
    [(SenderLargeFrameInfo *)self->_senderLargeFrameInfo setLastProbingSequenceTimeActual:v4];
    [(SenderLargeFrameInfo *)self->_senderLargeFrameInfo setStartTime:v4];
  }

  v6 = [(VCRateControlMediaController *)self isProbingLargeFrameRequiredAtTime:v4];
  v7 = self->_statisticsCollector;
  if (v7)
  {
    afrcRemoteEstimatedBandwidth = [(AVCStatisticsCollector *)v7 sharedRemoteEstimatedBandwidth];
  }

  else
  {
    afrcRemoteEstimatedBandwidth = self->_afrcRemoteEstimatedBandwidth;
  }

  [(VCRateControlMediaController *)self updateLargeFrameSizeWithBandwidth:afrcRemoteEstimatedBandwidth];
  if (v6)
  {
    probingLargeFrameSize = [(SenderLargeFrameInfo *)self->_senderLargeFrameInfo largeFrameSizeAtCurrentBandwidth];
    self->_probingLargeFrameSize = probingLargeFrameSize;
  }

  else
  {
    probingLargeFrameSize = self->_probingLargeFrameSize;
  }

  [(SenderLargeFrameInfo *)self->_senderLargeFrameInfo setLargeFrameSizeRequested:probingLargeFrameSize];
  return self->_probingLargeFrameSize;
}

- (unsigned)probingSequencePacketCount
{
  if (self->_isSenderProbingEnabled)
  {
    result = [(SenderLargeFrameInfo *)self->_senderLargeFrameInfo isLastFrameProbingSequence];
    if (result)
    {
      result = [(SenderLargeFrameInfo *)self->_senderLargeFrameInfo probingSequencePacketCount];
    }
  }

  else
  {
    result = 0;
  }

  self->_probingSequencePacketCount = result;
  return result;
}

- (unsigned)probingSequencePacketSize
{
  if (self->_isSenderProbingEnabled)
  {
    result = [(SenderLargeFrameInfo *)self->_senderLargeFrameInfo isLastFrameProbingSequence];
    if (result)
    {
      result = [(SenderLargeFrameInfo *)self->_senderLargeFrameInfo probingSequencePacketSize];
    }
  }

  else
  {
    result = 0;
  }

  self->_probingSequencePacketSize = result;
  return result;
}

- (void)scheduleProbingSequenceWithFrameSize:(unsigned int)size paddingBytes:(unsigned int)bytes timestamp:(unsigned int)timestamp fecRatio:(double)ratio isProbingSequenceScheduled:(BOOL *)scheduled
{
  if (self->_isSenderProbingEnabled)
  {
    v9 = *&timestamp;
    LODWORD(v10) = bytes;
    v11 = *&size;
    if ([(SenderLargeFrameInfo *)self->_senderLargeFrameInfo largeFrameSizeAtCurrentBandwidth])
    {
      if (v10 >= 9)
      {
        v10 = v10;
      }

      else
      {
        v10 = 0;
      }

      if ([(SenderLargeFrameInfo *)self->_senderLargeFrameInfo largeFrameSizeAtCurrentBandwidth]> (v11 * ratio))
      {
        goto LABEL_7;
      }

      v13 = micro();
      [(SenderLargeFrameInfo *)self->_senderLargeFrameInfo lastProbingSequenceTimeActual];
      v15 = v13 - v14;
      if ([(SenderLargeFrameInfo *)self->_senderLargeFrameInfo largeFrameSizeRequested])
      {
        [(VCRateControlMediaController *)self scheduleProbingSequenceAtTime:v13];
        selfCopy2 = self;
        v17 = v13;
        v18 = v9;
        v19 = v15;
        v20 = v11;
        v21 = v10;
        ratioCopy2 = ratio;
        v23 = 1;
      }

      else
      {
        minProbingSpacingAggressive = 1.0;
        if (!self->_isInThrottlingMode)
        {
          if (self->_enableAggressiveProbingSequence)
          {
            minProbingSpacingAggressive = self->_minProbingSpacingAggressive;
          }

          else
          {
            minProbingSpacingAggressive = 0.333;
          }
        }

        if (v15 <= minProbingSpacingAggressive)
        {
LABEL_7:
          [(SenderLargeFrameInfo *)self->_senderLargeFrameInfo setIsLastFrameProbingSequence:0];
          if (!scheduled)
          {
            return;
          }

          goto LABEL_8;
        }

        [(VCRateControlMediaController *)self scheduleProbingSequenceAtTime:v13];
        selfCopy2 = self;
        v17 = v13;
        v18 = v9;
        v19 = v15;
        v20 = v11;
        v21 = v10;
        ratioCopy2 = ratio;
        v23 = 0;
      }

      [(VCRateControlMediaController *)selfCopy2 printLargeFrameStatsAtTime:v18 timestamp:v20 timeSinceLastProbingSequence:v21 frameSize:v23 wastedBytes:v17 fecRatio:v19 isFrameRequested:ratioCopy2];
      if (!scheduled)
      {
        return;
      }

LABEL_8:
      *scheduled = [(SenderLargeFrameInfo *)self->_senderLargeFrameInfo isLastFrameProbingSequence];
    }
  }
}

- (void)recordVideoRefreshFrameWithTimestamp:(unsigned int)timestamp payloadType:(unsigned __int8)type packetCount:(unsigned int)count isKeyFrame:(BOOL)frame
{
  frameCopy = frame;
  v17 = micro();
  self->_lastVideoRefreshFrameTime = v17;
  self->_videoRefreshFrameTimestamp = timestamp;
  self->_videoRefreshFramePacketCount = count;
  if (frameCopy)
  {
    self->_lastVideoKeyFrameTime = v17;
    self->_videoPayloadType = type;
  }

  logBasebandDump = self->_logBasebandDump;
  if (logBasebandDump)
  {
    v19 = "RefreshFrame";
    if (frameCopy)
    {
      v19 = "KeyFrame";
    }

    VRLogfilePrintWithTimestamp(logBasebandDump, "%s frame (%08X) is generated PT (%u), %d packets.\n", v11, v12, v13, v14, v15, v16, v19);
  }
}

- (BOOL)increaseFlushCountForVideoRefresh:(int)refresh transactionID:(unsigned __int16)d
{
  basebandFlushCount = self->_basebandFlushCount;
  self->_basebandFlushCount = basebandFlushCount + refresh;
  self->_lastBasebandFlushCountChangeTime = micro();
  self->_videoFlushTransactionID = d;
  logBasebandDump = self->_logBasebandDump;
  if (logBasebandDump)
  {
    VRLogfilePrintWithTimestamp(logBasebandDump, "Increase basebandFlushCount %d -> %d due to video refresh [TID:%0X].\n", v7, v8, v9, v10, v11, v12, basebandFlushCount);
  }

  return self->_basebandFlushableQueueDepth != 0;
}

- (BOOL)increaseFlushCountForAudioStall:(int)stall audioStallBitrate:(unsigned int)bitrate
{
  if (bitrate)
  {
    v13 = micro();
    basebandFlushCount = self->_basebandFlushCount;
    self->_basebandFlushCount = basebandFlushCount + stall;
    self->_lastBasebandFlushCountChangeTime = v13;
    self->_lastAudioStallFlushTime = v13;
    logBasebandDump = self->_logBasebandDump;
    if (logBasebandDump)
    {
      VRLogfilePrintWithTimestamp(logBasebandDump, "Increase basebandFlushCount %d -> %d due to audio stall.\n", v7, v8, v9, v10, v11, v12, basebandFlushCount);
    }
  }

  self->_audioStallBitrate = bitrate;
  return self->_basebandFlushableQueueDepth != 0;
}

- (void)scheduleProbingSequenceAtTime:(double)time
{
  senderLargeFrameInfo = self->_senderLargeFrameInfo;
  [(SenderLargeFrameInfo *)senderLargeFrameInfo lastProbingSequenceTimeExpect];
  [(SenderLargeFrameInfo *)senderLargeFrameInfo setLastProbingSequenceTimeExpect:v6 + 0.666];
  [(SenderLargeFrameInfo *)self->_senderLargeFrameInfo setLastProbingSequenceTimeActual:time];
  [(SenderLargeFrameInfo *)self->_senderLargeFrameInfo lastProbingSequenceTimeExpect];
  v7 = self->_senderLargeFrameInfo;
  if (v8 >= time + -0.666)
  {
    [(SenderLargeFrameInfo *)v7 lastProbingSequenceTimeExpect];
    if (v9 <= time + 0.666)
    {
      goto LABEL_5;
    }

    v7 = self->_senderLargeFrameInfo;
  }

  [(SenderLargeFrameInfo *)v7 setLastProbingSequenceTimeExpect:?];
LABEL_5:
  [(SenderLargeFrameInfo *)self->_senderLargeFrameInfo setProbingSequenceCount:[(SenderLargeFrameInfo *)self->_senderLargeFrameInfo probingSequenceCount]+ 1];
  v10 = self->_senderLargeFrameInfo;

  [(SenderLargeFrameInfo *)v10 setIsLastFrameProbingSequence:1];
}

- (void)printLargeFrameStatsAtTime:(double)time timestamp:(unsigned int)timestamp timeSinceLastProbingSequence:(double)sequence frameSize:(unsigned int)size wastedBytes:(unsigned int)bytes fecRatio:(double)ratio isFrameRequested:(BOOL)requested
{
  sizeCopy = size;
  [(SenderLargeFrameInfo *)self->_senderLargeFrameInfo startTime];
  [(SenderLargeFrameInfo *)self->_senderLargeFrameInfo probingSequenceCount];
  [(SenderLargeFrameInfo *)self->_senderLargeFrameInfo setTotalLargeFrameWaste:[(SenderLargeFrameInfo *)self->_senderLargeFrameInfo totalLargeFrameWaste]+ bytes];
  [(SenderLargeFrameInfo *)self->_senderLargeFrameInfo totalLargeFrameWaste];
  statisticsCollector = self->_statisticsCollector;
  if (statisticsCollector)
  {
    [(AVCStatisticsCollector *)statisticsCollector sharedRemoteEstimatedBandwidth];
  }

  logBWEDump = self->_logBWEDump;
  [(SenderLargeFrameInfo *)self->_senderLargeFrameInfo largeFrameSizeAtCurrentBandwidth];
  VRLogfilePrintWithTimestamp(logBWEDump, "A LARGE FRAME of %d size %s (actual:%d, req:%d), rate:%f, [waste:%d wastBitrate:%d, avgWastBitrate:%d], txRate:%d, remoteBW:%d, throttling:%d, timestamp:%u\n", v14, v15, v16, v17, v18, v19, sizeCopy);
}

- (BOOL)isProbingLargeFrameRequiredAtTime:(double)time
{
  v42 = *MEMORY[0x1E69E9840];
  if ([(SenderLargeFrameInfo *)self->_senderLargeFrameInfo isLargeFrameRequestDisabled])
  {
    [(SenderLargeFrameInfo *)self->_senderLargeFrameInfo startTime];
    v6 = time - v5;
    if (!self->_shouldDisableLargeFrameRequestsWhenInitialRampUp && v6 >= 3.0 || v6 >= 10.0)
    {
      [(SenderLargeFrameInfo *)self->_senderLargeFrameInfo setIsLargeFrameRequestDisabled:0];
    }
  }

  [(VCRateControlMediaController *)self updateProbingLargeFrameSizeCap];
  if ([(SenderLargeFrameInfo *)self->_senderLargeFrameInfo isLargeFrameRequestDisabled])
  {
    return 0;
  }

  [(SenderLargeFrameInfo *)self->_senderLargeFrameInfo lastProbingSequenceTimeExpect];
  v8 = time - v7;
  [(SenderLargeFrameInfo *)self->_senderLargeFrameInfo lastProbingSequenceTimeActual];
  v10 = time - v9;
  v11 = time - v9 >= 0.333 && v8 >= 0.666;
  if (VRTraceGetErrorLogLevelForModule() < 8)
  {
    goto LABEL_18;
  }

  v12 = VRTraceErrorLogLevelToCSTR();
  v13 = *MEMORY[0x1E6986650];
  v14 = *MEMORY[0x1E6986650];
  if (*MEMORY[0x1E6986640] == 1)
  {
    if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
    {
      if (v11)
      {
        v15 = "";
      }

      else
      {
        v15 = "not";
      }

      [(SenderLargeFrameInfo *)self->_senderLargeFrameInfo lastProbingSequenceTimeExpect];
      v17 = v16;
      [(SenderLargeFrameInfo *)self->_senderLargeFrameInfo lastProbingSequenceTimeActual];
      v24 = 136317186;
      v25 = v12;
      v26 = 2080;
      v27 = "[VCRateControlMediaController isProbingLargeFrameRequiredAtTime:]";
      v28 = 1024;
      v29 = 1260;
      v30 = 2080;
      v31 = v15;
      v32 = 2048;
      timeCopy2 = time;
      v34 = 2048;
      v35 = v17;
      v36 = 2048;
      v37 = v18;
      v38 = 2048;
      v39 = v8;
      v40 = 2048;
      v41 = v10;
      _os_log_impl(&dword_1DB56E000, v13, OS_LOG_TYPE_DEFAULT, "VCRC [%s] %s:%d A fake large frame is %s required [time:%.2f, expected:%.2f, actual:%.2f, timeDiffExpect:%.2f, timeDiffActual:%.2f]", &v24, 0x58u);
      if (!v11)
      {
        return 0;
      }

      goto LABEL_19;
    }

LABEL_18:
    if (!v11)
    {
      return 0;
    }

    goto LABEL_19;
  }

  if (!os_log_type_enabled(v14, OS_LOG_TYPE_DEBUG))
  {
    goto LABEL_18;
  }

  if (v11)
  {
    v20 = "";
  }

  else
  {
    v20 = "not";
  }

  [(SenderLargeFrameInfo *)self->_senderLargeFrameInfo lastProbingSequenceTimeExpect];
  v22 = v21;
  [(SenderLargeFrameInfo *)self->_senderLargeFrameInfo lastProbingSequenceTimeActual];
  v24 = 136317186;
  v25 = v12;
  v26 = 2080;
  v27 = "[VCRateControlMediaController isProbingLargeFrameRequiredAtTime:]";
  v28 = 1024;
  v29 = 1260;
  v30 = 2080;
  v31 = v20;
  v32 = 2048;
  timeCopy2 = time;
  v34 = 2048;
  v35 = v22;
  v36 = 2048;
  v37 = v23;
  v38 = 2048;
  v39 = v8;
  v40 = 2048;
  v41 = v10;
  _os_log_debug_impl(&dword_1DB56E000, v13, OS_LOG_TYPE_DEBUG, "VCRC [%s] %s:%d A fake large frame is %s required [time:%.2f, expected:%.2f, actual:%.2f, timeDiffExpect:%.2f, timeDiffActual:%.2f]", &v24, 0x58u);
  if (!v11)
  {
    return 0;
  }

LABEL_19:
  if (self->_isRateLimitedMaxTimeExceeded)
  {
    return 1;
  }

  if (v10 > 2.0)
  {
    self->_probingLargeFrameSizeCap >>= 1;
    return 1;
  }

  return 0;
}

- (void)updateProbingLargeFrameSizeCap
{
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_2_1(&dword_1DB56E000, v0, v1, "VCRC [%s] %s:%d Audio sending bitrate used up all available uplink bandwidth, do minimum probing by setting large frame size cap to 0", v2, v3, v4, v5, v6);
}

- (void)updateLargeFrameSizeWithBandwidth:(unsigned int)bandwidth
{
  probingLargeFrameSizeCap = bandwidth / 0x190;
  if (bandwidth / 0x190 >= self->_probingLargeFrameSizeCap)
  {
    probingLargeFrameSizeCap = self->_probingLargeFrameSizeCap;
  }

  if (probingLargeFrameSizeCap < 0xABE)
  {
    if (probingLargeFrameSizeCap <= 0x112)
    {
      v7 = 257;
    }

    else
    {
      v7 = probingLargeFrameSizeCap;
    }

    if (probingLargeFrameSizeCap >= 0x1F4)
    {
      v8 = 2;
    }

    else
    {
      v8 = 1;
    }

    if (probingLargeFrameSizeCap >= 0x1F4)
    {
      v7 = (probingLargeFrameSizeCap >> 1) + 1;
    }

    if (probingLargeFrameSizeCap >= 0x6D6)
    {
      v5 = 3;
    }

    else
    {
      v5 = v8;
    }

    if (probingLargeFrameSizeCap >= 0x6D6)
    {
      v6 = probingLargeFrameSizeCap / 3u + 1;
    }

    else
    {
      v6 = v7;
    }
  }

  else
  {
    LODWORD(v5) = 2;
    do
    {
      v5 = (v5 + 1);
    }

    while (probingLargeFrameSizeCap / v5 > 0x564);
    v6 = probingLargeFrameSizeCap / v5 + 1;
  }

  if (v6 <= 0x101)
  {
    v9 = 257;
  }

  else
  {
    v9 = v6;
  }

  [(SenderLargeFrameInfo *)self->_senderLargeFrameInfo setProbingSequencePacketCount:v5];
  [(SenderLargeFrameInfo *)self->_senderLargeFrameInfo setProbingSequencePacketSize:v9];
  senderLargeFrameInfo = self->_senderLargeFrameInfo;

  [(SenderLargeFrameInfo *)senderLargeFrameInfo setLargeFrameSizeAtCurrentBandwidth:(v9 * v5)];
}

@end