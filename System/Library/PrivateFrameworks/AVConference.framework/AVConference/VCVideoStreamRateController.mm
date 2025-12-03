@interface VCVideoStreamRateController
- (VCVideoStreamRateController)initWithDumpID:(unsigned int)d;
- (id)className;
- (unsigned)maxTierIndex:(unsigned int)index;
- (unsigned)minTierIndex:(unsigned int)index;
- (void)createLogDumpFile:(unsigned int)file;
- (void)dealloc;
- (void)doRateControlWithTime:(double)time roundTripTime:(double)tripTime packetLossRate:(double)rate operatingBitrate:(unsigned int)bitrate averageReceivedBitrate:(unsigned int)receivedBitrate;
- (void)releaseLogDumpFile;
- (void)setMaxTargetBitrate:(unsigned int)bitrate minTargetBitrate:(unsigned int)targetBitrate;
- (void)setOperatingTierIndexWithBitrate:(unsigned int)bitrate;
- (void)setRateControlInterval:(double)interval;
- (void)updateAverageTargetBitrate:(unsigned int)bitrate interval:(double)interval;
- (void)updateRTPReceiveWithTimestamp:(unsigned int)timestamp sampleRate:(unsigned int)rate time:(double)time;
- (void)updateVideoStall:(BOOL)stall withStallDuration:(unsigned int)duration;
@end

@implementation VCVideoStreamRateController

- (VCVideoStreamRateController)initWithDumpID:(unsigned int)d
{
  v3 = *&d;
  v13 = *MEMORY[0x1E69E9840];
  v12.receiver = self;
  v12.super_class = VCVideoStreamRateController;
  v4 = [(VCVideoStreamRateController *)&v12 init];
  v5 = v4;
  if (!v4)
  {
    return v5;
  }

  v4->_minBitrate = 10000;
  v4->_maxBitrate = 1949000;
  *&v4->_algorithm = 0x1A00000002;
  algorithm = [+[VCDefaults sharedInstance](VCDefaults videoStreamRateControlAlgorithm];
  if (algorithm < 0)
  {
    algorithm = v5->_algorithm;
  }

  else
  {
    v5->_algorithm = algorithm;
  }

  if (algorithm == 2)
  {
    v7 = VCVideoStreamNOWRDLossEventRateControl;
  }

  else if (algorithm == 1)
  {
    v7 = VCVideoStreamOWRDLossEventRateControl;
  }

  else
  {
    if (algorithm)
    {
      if (VRTraceGetErrorLogLevelForModule() >= 3)
      {
        v10 = VRTraceErrorLogLevelToCSTR();
        v11 = *MEMORY[0x1E6986650];
        if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
        {
          [(VCVideoStreamRateController *)v10 initWithDumpID:v11];
        }
      }

      goto LABEL_12;
    }

    v7 = VCVideoStreamRTTPLRRateControl;
  }

  v5->_rateControl = objc_alloc_init(v7);
LABEL_12:
  if ([+[VCDefaults videoStreamRateControlDumpEnabled] sharedInstance]
  {
    [(VCVideoStreamRateController *)v5 createLogDumpFile:v3];
  }

  CustomRootQueue = VCDispatchQueue_GetCustomRootQueue(37);
  v5->_videoStreamRateControllerQueue = dispatch_queue_create_with_target_V2("com.apple.AVConference.VCVideoStreamRateController.videoStreamRateControllerQueue", 0, CustomRootQueue);
  return v5;
}

- (void)dealloc
{
  v4 = *MEMORY[0x1E69E9840];
  [(VCVideoStreamRateController *)self releaseLogDumpFile];

  dispatch_release(self->_videoStreamRateControllerQueue);
  v3.receiver = self;
  v3.super_class = VCVideoStreamRateController;
  [(VCVideoStreamRateController *)&v3 dealloc];
}

- (void)setMaxTargetBitrate:(unsigned int)bitrate minTargetBitrate:(unsigned int)targetBitrate
{
  v8 = *MEMORY[0x1E69E9840];
  videoStreamRateControllerQueue = self->_videoStreamRateControllerQueue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __68__VCVideoStreamRateController_setMaxTargetBitrate_minTargetBitrate___block_invoke;
  block[3] = &unk_1E85F40E0;
  block[4] = self;
  targetBitrateCopy = targetBitrate;
  bitrateCopy = bitrate;
  dispatch_sync(videoStreamRateControllerQueue, block);
}

uint64_t __68__VCVideoStreamRateController_setMaxTargetBitrate_minTargetBitrate___block_invoke(uint64_t a1)
{
  *(*(a1 + 32) + 22) = [*(a1 + 32) minTierIndex:*(a1 + 40)];
  *(*(a1 + 32) + 20) = [*(a1 + 32) maxTierIndex:*(a1 + 44)];
  *(*(a1 + 32) + 28) = g_adwTxRateTiers[*(*(a1 + 32) + 22)];
  *(*(a1 + 32) + 32) = g_adwTxRateTiers[*(*(a1 + 32) + 20)];
  v2 = *(a1 + 32);
  v3 = *(v2 + 8);
  v4 = *(v2 + 20);
  v5 = *(v2 + 22);

  return [v3 setMaxTierIndex:v4 minTierIndex:v5];
}

- (void)setRateControlInterval:(double)interval
{
  block[6] = *MEMORY[0x1E69E9840];
  videoStreamRateControllerQueue = self->_videoStreamRateControllerQueue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __54__VCVideoStreamRateController_setRateControlInterval___block_invoke;
  block[3] = &unk_1E85F40E0;
  block[4] = self;
  *&block[5] = interval;
  dispatch_sync(videoStreamRateControllerQueue, block);
}

- (void)doRateControlWithTime:(double)time roundTripTime:(double)tripTime packetLossRate:(double)rate operatingBitrate:(unsigned int)bitrate averageReceivedBitrate:(unsigned int)receivedBitrate
{
  v11 = *MEMORY[0x1E69E9840];
  videoStreamRateControllerQueue = self->_videoStreamRateControllerQueue;
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __122__VCVideoStreamRateController_doRateControlWithTime_roundTripTime_packetLossRate_operatingBitrate_averageReceivedBitrate___block_invoke;
  v8[3] = &unk_1E85F7FD0;
  v8[4] = self;
  *&v8[5] = time;
  *&v8[6] = tripTime;
  *&v8[7] = rate;
  bitrateCopy = bitrate;
  receivedBitrateCopy = receivedBitrate;
  dispatch_sync(videoStreamRateControllerQueue, v8);
}

void __122__VCVideoStreamRateController_doRateControlWithTime_roundTripTime_packetLossRate_operatingBitrate_averageReceivedBitrate___block_invoke(uint64_t a1)
{
  v34 = *MEMORY[0x1E69E9840];
  v2 = *(a1 + 32);
  v3 = *(v2 + 40);
  if (v3 != 0.0)
  {
    v4 = *(a1 + 40);
    if (v4 > v3)
    {
      [v2 updateAverageTargetBitrate:*(v2 + 36) interval:v4 - v3];
      v2 = *(a1 + 32);
    }
  }

  *(v2 + 40) = *(a1 + 40);
  [*(a1 + 32) setOperatingTierIndexWithBitrate:*(a1 + 64)];
  [*(*(a1 + 32) + 8) doRateControlWithTime:*(*(a1 + 32) + 24) roundTripTime:*(a1 + 68) packetLossRate:*(*(a1 + 32) + 40) operatingTierIndex:*(a1 + 48) averageReceivedBitrate:*(a1 + 56)];
  *(*(a1 + 32) + 36) = [*(*(a1 + 32) + 8) targetBitrate];
  if (VRTraceGetErrorLogLevelForModule() >= 7)
  {
    v5 = VRTraceErrorLogLevelToCSTR();
    v6 = *MEMORY[0x1E6986650];
    if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
    {
      v7 = [objc_msgSend(*(a1 + 32) "className")];
      v8 = [objc_msgSend(*(*(a1 + 32) + 8) "description")];
      v9 = *(a1 + 32);
      v10 = g_adwTxRateTiers[*(v9 + 24)];
      v12 = *(v9 + 28);
      v11 = *(v9 + 32);
      LODWORD(v9) = *(v9 + 36);
      v13 = *(a1 + 68);
      v14 = 136317442;
      v15 = v5;
      v16 = 2080;
      v17 = "[VCVideoStreamRateController doRateControlWithTime:roundTripTime:packetLossRate:operatingBitrate:averageReceivedBitrate:]_block_invoke";
      v18 = 1024;
      v19 = 126;
      v20 = 2080;
      v21 = v7;
      v22 = 2080;
      v23 = v8;
      v24 = 1024;
      v25 = v11;
      v26 = 1024;
      v27 = v12;
      v28 = 1024;
      v29 = v10;
      v30 = 1024;
      v31 = v9;
      v32 = 1024;
      v33 = v13;
      _os_log_impl(&dword_1DB56E000, v6, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d %s doRateControlWithTime - %s maxTierBitrate:%u minTierBitrate:%u operatingTierBitrate:%u targetBitrate:%u rxBitrate:%u", &v14, 0x4Eu);
    }
  }
}

- (void)updateRTPReceiveWithTimestamp:(unsigned int)timestamp sampleRate:(unsigned int)rate time:(double)time
{
  v9 = *MEMORY[0x1E69E9840];
  videoStreamRateControllerQueue = self->_videoStreamRateControllerQueue;
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __77__VCVideoStreamRateController_updateRTPReceiveWithTimestamp_sampleRate_time___block_invoke;
  v6[3] = &unk_1E85F4090;
  v6[4] = self;
  timestampCopy = timestamp;
  rateCopy = rate;
  *&v6[5] = time;
  dispatch_async(videoStreamRateControllerQueue, v6);
}

uint64_t __77__VCVideoStreamRateController_updateRTPReceiveWithTimestamp_sampleRate_time___block_invoke(uint64_t a1)
{
  result = [*(*(a1 + 32) + 8) updateRTPReceiveWithTimestamp:*(a1 + 48) sampleRate:*(a1 + 52) time:*(a1 + 40)];
  v3 = *(a1 + 32);
  if (*(v3 + 56) != *(a1 + 48))
  {
    result = [*(v3 + 8) printRateControlFullInfoWithLogDump:*(v3 + 96) time:*(v3 + 88) videoStall:*(v3 + 60) videoFrozenDuration:*(a1 + 40) averageTargetBitrate:*(v3 + 80)];
    *(*(a1 + 32) + 56) = *(a1 + 48);
  }

  return result;
}

- (void)updateVideoStall:(BOOL)stall withStallDuration:(unsigned int)duration
{
  v8 = *MEMORY[0x1E69E9840];
  videoStreamRateControllerQueue = self->_videoStreamRateControllerQueue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __66__VCVideoStreamRateController_updateVideoStall_withStallDuration___block_invoke;
  block[3] = &unk_1E85F7418;
  block[4] = self;
  stallCopy = stall;
  durationCopy = duration;
  dispatch_async(videoStreamRateControllerQueue, block);
}

double __66__VCVideoStreamRateController_updateVideoStall_withStallDuration___block_invoke(uint64_t a1, double a2)
{
  *(*(a1 + 32) + 88) = *(a1 + 44);
  LODWORD(a2) = *(a1 + 40);
  v2 = *(a1 + 32);
  result = *(v2 + 80) + *&a2 / 1000.0;
  *(v2 + 80) = result;
  return result;
}

- (unsigned)minTierIndex:(unsigned int)index
{
  if (index <= 0x1DBD48)
  {
    v5 = 0;
    while (g_adwTxRateTiers[v5] < index)
    {
      if (++v5 == 27)
      {
        LOWORD(v5) = 26;
        return v5;
      }
    }
  }

  else
  {
    if (VRTraceGetErrorLogLevelForModule() >= 3)
    {
      v4 = VRTraceErrorLogLevelToCSTR();
      if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
      {
        [(VCVideoStreamRateController *)v4 minTierIndex:?];
      }
    }

    LOWORD(v5) = 26;
  }

  return v5;
}

- (unsigned)maxTierIndex:(unsigned int)index
{
  if (index >= 0x2710)
  {
    v5 = 26;
    while (g_adwTxRateTiers[v5] > index)
    {
      if (--v5 == -1)
      {
        LOWORD(v5) = 0;
        return v5;
      }
    }
  }

  else
  {
    if (VRTraceGetErrorLogLevelForModule() >= 3)
    {
      v4 = VRTraceErrorLogLevelToCSTR();
      if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
      {
        [(VCVideoStreamRateController *)v4 maxTierIndex:?];
      }
    }

    LOWORD(v5) = 0;
  }

  return v5;
}

- (void)setOperatingTierIndexWithBitrate:(unsigned int)bitrate
{
  v23 = *MEMORY[0x1E69E9840];
  if (self->_maxBitrate >= bitrate)
  {
    if (self->_minBitrate <= bitrate)
    {
      minTierIndex = [(VCVideoStreamRateController *)self minTierIndex:?];
    }

    else
    {
      if (VRTraceGetErrorLogLevelForModule() >= 3)
      {
        v7 = VRTraceErrorLogLevelToCSTR();
        v8 = *MEMORY[0x1E6986650];
        if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
        {
          v11 = [-[VCVideoStreamRateController className](self "className")];
          minBitrate = self->_minBitrate;
          v13 = 136316162;
          v14 = v7;
          v15 = 2080;
          v16 = "[VCVideoStreamRateController setOperatingTierIndexWithBitrate:]";
          v17 = 1024;
          v18 = 212;
          v19 = 2080;
          v20 = v11;
          v21 = 1024;
          v22 = minBitrate;
          _os_log_error_impl(&dword_1DB56E000, v8, OS_LOG_TYPE_ERROR, " [%s] %s:%d %s: operating bitrate is less than the configured min bitrate: %u!", &v13, 0x2Cu);
        }
      }

      minTierIndex = self->_minTierIndex;
    }
  }

  else
  {
    if (VRTraceGetErrorLogLevelForModule() >= 3)
    {
      v4 = VRTraceErrorLogLevelToCSTR();
      v5 = *MEMORY[0x1E6986650];
      if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
      {
        v9 = [-[VCVideoStreamRateController className](self "className")];
        maxBitrate = self->_maxBitrate;
        v13 = 136316162;
        v14 = v4;
        v15 = 2080;
        v16 = "[VCVideoStreamRateController setOperatingTierIndexWithBitrate:]";
        v17 = 1024;
        v18 = 209;
        v19 = 2080;
        v20 = v9;
        v21 = 1024;
        v22 = maxBitrate;
        _os_log_error_impl(&dword_1DB56E000, v5, OS_LOG_TYPE_ERROR, " [%s] %s:%d %s: operating bitrate is greater than the configured max bitrate: %u!", &v13, 0x2Cu);
      }
    }

    minTierIndex = self->_maxTierIndex;
  }

  self->_operatingTierIndex = minTierIndex;
}

- (void)updateAverageTargetBitrate:(unsigned int)bitrate interval:(double)interval
{
  totalTime = self->_totalTime;
  if (interval > 0.0)
  {
    totalTime = totalTime + interval;
    self->_totalTime = totalTime;
    self->_accumulatedTargetDataSize = (self->_accumulatedTargetDataSize + (bitrate / 0x3E8) * interval);
  }

  if (totalTime > 0.0)
  {
    self->_averageTargetBitrate = (self->_accumulatedTargetDataSize / totalTime * 1000.0);
  }
}

- (void)createLogDumpFile:(unsigned int)file
{
  v13 = *MEMORY[0x1E69E9840];
  memset(v12, 170, 12);
  __sprintf_chk(v12, 0, 0xCuLL, "%010u", file);
  v4 = VRLogfileAlloc(0, v12, "VCVideoRC", ".afrcdump", "com.apple.VideoConference.AFRClog.VideoStream", 9);
  self->_logDump = v4;
  VRLogfilePrintSync(v4, "STime\t\tdTime/ETxTS\tOWRD\tNOWRD\tNOWRDS\tNOWRDA\tUp\tRTT\tPLR/FEC\tRRx\tMBL\tBR/TR\tMQIn: A/V\tMQOut: A/V\tABRL\tQD\tBDL\tTxAT\tMODE\tTxSTATE\n", v5, v6, v7, v8, v9, v10, v11);
}

- (void)releaseLogDumpFile
{
  v11 = *MEMORY[0x1E69E9840];
  p_logDump = &self->_logDump;
  if (self->_logDump)
  {
    *&v3 = 0xAAAAAAAAAAAAAAAALL;
    *(&v3 + 1) = 0xAAAAAAAAAAAAAAAALL;
    v10[6] = v3;
    v10[7] = v3;
    v10[4] = v3;
    v10[5] = v3;
    v10[2] = v3;
    v10[3] = v3;
    v10[0] = v3;
    v10[1] = v3;
    micro();
    VRLogfileGetTimestamp(v10, 0x80u);
    VRLogfilePrintSync(*p_logDump, "%s\t%8.3f\tEndOfFile\n", v4, v5, v6, v7, v8, v9, v10);
    VRLogfileFree(p_logDump);
    *p_logDump = 0;
  }
}

- (id)className
{
  v2 = objc_opt_class();

  return NSStringFromClass(v2);
}

- (void)initWithDumpID:(uint64_t)a1 .cold.1(uint64_t a1, NSObject *a2)
{
  v8 = *MEMORY[0x1E69E9840];
  v2 = 136315650;
  v3 = a1;
  v4 = 2080;
  v5 = "[VCVideoStreamRateController initWithDumpID:]";
  v6 = 1024;
  v7 = 75;
  _os_log_error_impl(&dword_1DB56E000, a2, OS_LOG_TYPE_ERROR, " [%s] %s:%d Creating a VCVideoStreamRateController with unknown algorithm.", &v2, 0x1Cu);
}

- (void)minTierIndex:(uint64_t)a1 .cold.1(uint64_t a1, void *a2)
{
  [objc_msgSend(a2 "className")];
  OUTLINED_FUNCTION_2_5();
  OUTLINED_FUNCTION_0_21();
  OUTLINED_FUNCTION_2_28(&dword_1DB56E000, v2, v3, " [%s] %s:%d %s:%d bitrate is greater than the maximum possible tier!", v4, v5, v6, v7, v8);
}

- (void)maxTierIndex:(uint64_t)a1 .cold.1(uint64_t a1, void *a2)
{
  [objc_msgSend(a2 "className")];
  OUTLINED_FUNCTION_2_5();
  OUTLINED_FUNCTION_0_21();
  OUTLINED_FUNCTION_2_28(&dword_1DB56E000, v2, v3, " [%s] %s:%d %s:%d bitrate is less than the minimum possible tier!", v4, v5, v6, v7, v8);
}

@end