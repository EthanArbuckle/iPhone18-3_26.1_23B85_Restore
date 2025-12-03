@interface VCBasebandMetrics
- (VCBasebandMetrics)init;
- (double)updateTotalQueueDepth:(unsigned int)depth;
- (tagVCStatisticsMessage)getBasebandMetricsWithNotification:(SEL)notification;
- (void)addBDCDListWithNotificationArrivalTime:(double)time bdcd:(double)bdcd queuingDelay:(double)delay;
- (void)addInfoListWithNotification:(id *)notification;
- (void)calculateBitratesAndDelaysWithTotalQueueDepth:(unsigned int)depth;
- (void)dealloc;
- (void)normalizeBDCD:(double)d;
- (void)setIsTargetBitrateStabilized:(BOOL)stabilized;
@end

@implementation VCBasebandMetrics

- (VCBasebandMetrics)init
{
  v5 = *MEMORY[0x1E69E9840];
  v4.receiver = self;
  v4.super_class = VCBasebandMetrics;
  v2 = [(VCBasebandMetrics *)&v4 init];
  if (v2)
  {
    v2->_useAverageQueueDepthForDelay = VCDefaults_GetBoolValueForKey(@"basebandUseAverageQueueDepthForDelay", 1);
    v2->_averageBitrateMovingAverageFactor = 2.0 / (VCDefaults_GetIntValueForKey(@"basebandBitrateAverageWindow", 20) + 1.0);
  }

  return v2;
}

- (void)dealloc
{
  v4 = *MEMORY[0x1E69E9840];

  v3.receiver = self;
  v3.super_class = VCBasebandMetrics;
  [(VCBasebandMetrics *)&v3 dealloc];
}

- (tagVCStatisticsMessage)getBasebandMetricsWithNotification:(SEL)notification
{
  selfCopy = self;
  *(&retstr->var0.addRemoveEndPoint + 21) = 0;
  *(&retstr->var0.addRemoveEndPoint + 17) = 0u;
  *(&retstr->var0.addRemoveEndPoint + 19) = 0u;
  *(&retstr->var0.addRemoveEndPoint + 13) = 0u;
  *(&retstr->var0.addRemoveEndPoint + 15) = 0u;
  *(&retstr->var0.addRemoveEndPoint + 9) = 0u;
  *(&retstr->var0.addRemoveEndPoint + 11) = 0u;
  *(&retstr->var0.addRemoveEndPoint + 5) = 0u;
  *(&retstr->var0.addRemoveEndPoint + 7) = 0u;
  *&retstr->var0.rtcpRR.lastSequenceNumber = 0u;
  *(&retstr->var0.addRemoveEndPoint + 3) = 0u;
  *&retstr->type = 0u;
  *&retstr->isVCRCInternal = 0u;
  var7 = a4->var3.var0.var7;
  var8 = a4->var3.var0.var8;
  transmittedBytes = self->var0.baseband.transmittedBytes;
  audioReceivedPackets = self->var0.feedback.audioReceivedPackets;
  if (var8 != audioReceivedPackets || var7 == transmittedBytes)
  {
    v11 = ((var7 - transmittedBytes) & ~((var7 - transmittedBytes) >> 31)) - ((a4->var3.var0.var6 - self->var0.baseband.averageBitrateLong) & ~((a4->var3.var0.var6 - self->var0.baseband.averageBitrateLong) >> 31));
    v12 = (var8 - audioReceivedPackets) / 1000.0;
    if (v11 < 1)
    {
      v13 = 0;
    }

    else
    {
      v13 = ((8 * v11) / v12);
    }

    self[33].var0.feedback.packetReceived.totalPacketsReceived = v13;
    var5 = a4->var3.var0.var5;
    var6 = a4->var3.var0.var6;
    if (var8 == audioReceivedPackets || v12 > 0.005)
    {
      self[33].var0.nwConnection.var0.wifi.wifiObservedTxBitrate[5] = self[33].var0.feedback.packetReceived.totalReceivedKBytes;
      [(tagVCStatisticsMessage *)self addInfoListWithNotification:a4];
      if (selfCopy[33].var0.feedback.packetReceived.packetType < 2u)
      {
        sampleRate = selfCopy[33].var0.feedback.packetReceived.sampleRate;
        selfCopy[33].var0.feedback.packetReceived.totalReceivedKBytes = sampleRate;
        *(&selfCopy[33].var0.addRemoveEndPoint + 31) = sampleRate;
      }

      else
      {
        [(tagVCStatisticsMessage *)selfCopy calculateBitratesAndDelaysWithTotalQueueDepth:var6 + var5];
      }

      memcpy(&selfCopy->isVCRCInternal, a4, 0x17A0uLL);
      targetJitterQueueSize = selfCopy[33].var0.feedback.packetReceived.targetJitterQueueSize;
      v18 = *(&selfCopy[33].var0.addRemoveEndPoint + 18);
      if (targetJitterQueueSize <= v18)
      {
        v19 = 0.0;
      }

      else
      {
        v19 = targetJitterQueueSize - v18;
      }

      [(tagVCStatisticsMessage *)selfCopy normalizeBDCD:v19];
      retstr->type = 1;
      retstr->arrivalTime = a4->var2;
      *&v20 = *(&a4->var3.var2 + 1);
      *(&v20 + 1) = *(&selfCopy[33].var0.addRemoveEndPoint + 108);
      *&retstr->var0.baseband.queueDepth1 = v20;
      retstr->var0.nwConnection.maxThroughputBps = *&selfCopy[33].var0.feedback.packetReceived.receiveTimestamp;
      v21 = a4->var3.var0.var7;
      v22 = a4->var3.var0.var8;
      retstr->var0.baseband.transmittedBytes = v21;
      v23 = selfCopy[33].var0.feedback.packetReceived.targetJitterQueueSize / 1000.0;
      *&retstr->var0.baseband.averageQueueDepth = selfCopy[33].var0.nwConnection.var0.wifi.accumulatedOffChannelTime;
      retstr->var0.baseband.expectedQueuingDelay = v23;
      retstr->var0.baseband.bdcd = v19;
      *(&retstr->var0.addRemoveEndPoint + 7) = *(&selfCopy[30].var0.addRemoveEndPoint + 3);
      var0 = a4->var3.var0.var0;
      retstr->var0.baseband.radioTechnology = var0;
      return snprintf(retstr->var0.baseband.bbString, 0x40uLL, "%2u%2u%2u%2u%2u %6u\t%6u\t%u\t%u", a4->var1, var0, a4->var0, a4->var3.var0.var2, a4->var3.var0.var3, v20, DWORD1(v20), v21, v22);
    }

    else
    {
      retstr->type = 1;
    }
  }

  return self;
}

- (void)addInfoListWithNotification:(id *)notification
{
  rearIndex = self->_infoList.rearIndex;
  if (self->_infoList.size)
  {
    rearIndex = (rearIndex + 1) % 15;
    self->_infoList.rearIndex = rearIndex;
  }

  self->_infoList.time[rearIndex] = notification->var2;
  self->_infoList.transmittedBytes[rearIndex] = notification->var3.var0.var7;
  self->_infoList.nonFlushableQueueDepth[self->_infoList.rearIndex] = notification->var3.var0.var6;
  size = self->_infoList.size;
  if (size >= 0xF)
  {
    v5 = self->_infoList.size;
  }

  else
  {
    v5 = size + 1;
  }

  self->_infoList.size = v5;
  v6 = self->_infoList.rearIndex;
  if (v6 == self->_infoList.frontIndex && v5 >= 2)
  {
    self->_infoList.frontIndex = (v6 + 1) % 15;
  }
}

- (void)calculateBitratesAndDelaysWithTotalQueueDepth:(unsigned int)depth
{
  rearIndex = self->_infoList.rearIndex;
  v5 = (rearIndex + 14) % 15;
  v6 = self->_infoList.time[rearIndex];
  v7 = v5;
  frontIndex = self->_infoList.frontIndex;
  v9 = v6 - self->_infoList.time[v5];
  if (v5 != frontIndex && v9 < 0.5)
  {
    LODWORD(v7) = (rearIndex + 14) % 15;
    do
    {
      v7 = (v7 + 14) % 0xFu;
      v9 = v6 - self->_infoList.time[v7];
    }

    while (v7 != frontIndex && v9 < 0.5);
  }

  v10 = self->_infoList.transmittedBytes[rearIndex] - self->_infoList.nonFlushableQueueDepth[rearIndex] - self->_infoList.transmittedBytes[v7] + self->_infoList.nonFlushableQueueDepth[v7];
  v11 = ((8 * (v10 & ~(v10 >> 31))) / v9);
  if (v9 >= 0.15 || (targetBitrate = self->_targetBitrate, v11 - 1 < targetBitrate))
  {
    targetBitrate = v11;
  }

  self->_averageBitrate = targetBitrate;
  v13 = *&self->_averageBitrateShort;
  v14.i64[0] = v13;
  v14.i64[1] = HIDWORD(v13);
  v15 = &qword_1DBD458B0;
  v16 = vld1q_dup_f64(v15);
  v16.f64[0] = self->_averageBitrateMovingAverageFactor;
  v17 = &qword_1DBD45C18;
  v18 = vld1q_dup_f64(v17);
  v18.f64[0] = 1.0 - v16.f64[0];
  *&self->_averageBitrateShort = vmovn_s64(vcvtq_u64_f64(vmlaq_f64(vmulq_n_f64(v16, targetBitrate), v18, vcvtq_f64_u64(v14))));
  if (targetBitrate)
  {
    if (self->_resetAverageBitrateLong)
    {
      v19 = self->_targetBitrate;
      if (v19 >= targetBitrate)
      {
        v19 = targetBitrate;
      }

      self->_averageBitrateLong = v19;
      self->_resetAverageBitrateLong = 0;
    }

    if (!self->_previousAverageBitrate)
    {
      self->_averageBitrateLong = targetBitrate;
    }
  }

  [(VCBasebandMetrics *)self updateTotalQueueDepth:*&depth];
  v21 = v20;
  if (self->_averageBitrate)
  {
    v22 = *&self->_averageBitrateShort;
    v23.i64[0] = v22;
    v23.i64[1] = HIDWORD(v22);
    *&self->_expectedQueuingDelay = vdivq_f64(vdupq_lane_s64(COERCE__INT64((8000 * v21)), 0), vcvtq_f64_u64(v23));
  }

  else if (v21)
  {
    if (v9 > 0.5 && VCRateControlMediaController_LastVideoKeyFrameTime(self->_mediaController) > 0.0)
    {
      expectedQueuingDelay = self->_expectedQueuingDelay;
      if (expectedQueuingDelay < 2001.0)
      {
        expectedQueuingDelay = 2001.0;
      }

      self->_expectedQueuingDelay = expectedQueuingDelay;
    }

    averageBitrateLong = self->_averageBitrateLong;
    if (averageBitrateLong)
    {
      v26 = (8000 * v21) / averageBitrateLong;
    }

    else
    {
      v26 = self->_expectedQueuingDelay;
      if (v26 < 2001.0)
      {
        v26 = 2001.0;
      }
    }

    self->_expectedQueuingDelayLong = v26;
  }
}

- (double)updateTotalQueueDepth:(unsigned int)depth
{
  if (!self->_useAverageQueueDepthForDelay)
  {
    return depth;
  }

  averageQueueDepth = self->_averageQueueDepth;
  result = depth;
  if (averageQueueDepth != 0.0)
  {
    v5 = 0.1;
    if (averageQueueDepth > result)
    {
      v5 = 0.5;
    }

    result = v5 * result + (1.0 - v5) * averageQueueDepth;
  }

  self->_averageQueueDepth = result;
  return result;
}

- (void)normalizeBDCD:(double)d
{
  if (self->_averageBitrate)
  {
    v10 = &self->_lastBasebandNotification.notes.codecRateChange + 1016;
    if (self->_isTargetBitrateStabilized)
    {
      [(VCBasebandMetrics *)self addBDCDListWithNotificationArrivalTime:self->_lastBasebandNotification.arrivalTime bdcd:d queuingDelay:self->_expectedQueuingDelay];
      size = self->_bdcdList.size;
      if (size >= 4)
      {
        p_bdcdList = &self->_bdcdList;
        if (size == 4)
        {
          logBasebandDump = self->_logBasebandDump;
          if (logBasebandDump)
          {
            VRLogfilePrint(logBasebandDump, "New bitrate stabilized for baseband, collected %d BDCD samples and start normalizing BDCD.\n", v11, v12, v13, v14, v15, v16, 4);
          }
        }

        rearIndex = self->_bdcdList.rearIndex;
        v21 = (rearIndex + 12) % 15;
        frontIndex = self->_bdcdList.frontIndex;
        if (v21 != frontIndex)
        {
          while (p_bdcdList->time[rearIndex] - p_bdcdList->time[v21] <= 0.5)
          {
            v21 = (v21 + 14) % 0xFu;
            if (v21 == frontIndex)
            {
              v21 = self->_bdcdList.frontIndex;
              break;
            }
          }
        }

        if (rearIndex <= v21)
        {
          LODWORD(rearIndex) = rearIndex + 15;
        }

        v23 = rearIndex - v21;
        if (v23 < 0)
        {
          v34 = 0uLL;
          v33 = 0.0;
        }

        else
        {
          v24 = (v21 + (v23 + 1) / 2) % 15;
          v25 = (v23 + 2) >> 1;
          bdcd = self->_bdcdList.bdcd;
          delay = self->_bdcdList.delay;
          v28 = 0uLL;
          v29 = 0.0;
          v30 = 0.0;
          v31 = 0uLL;
          do
          {
            v32.f64[0] = bdcd[v21 % 15];
            v32.f64[1] = delay[v21 % 15];
            v31 = vaddq_f64(v31, v32);
            v32.f64[0] = bdcd[v24 % 15];
            v32.f64[1] = delay[v24 % 15];
            v28 = vaddq_f64(v28, v32);
            v30 = v30 + p_bdcdList->time[v21 % 15];
            v29 = v29 + p_bdcdList->time[v24 % 15];
            ++v24;
            ++v21;
            --v25;
          }

          while (v25);
          v33 = v29 - v30;
          v34 = vsubq_f64(v28, v31);
        }

        v36 = vdivq_f64(v34, vdupq_lane_s64(*&v33, 0));
        __asm { FMOV            V1.2D, #0.5 }

        *&v10[494].currentBitrate = vdivq_f64(vmulq_f64(v36, _Q1), vdupq_n_s64(0x408F400000000000uLL));
      }
    }

    else
    {
      v35 = self->_logBasebandDump;
      if (v35)
      {

        VRLogfilePrint(v35, "Baseband target bitrate changed and not stable.\n", v3, v4, v5, v6, v7, v8, v43);
      }
    }
  }
}

- (void)addBDCDListWithNotificationArrivalTime:(double)time bdcd:(double)bdcd queuingDelay:(double)delay
{
  size = self->_bdcdList.size;
  rearIndex = self->_bdcdList.rearIndex;
  if (size)
  {
    rearIndex = (rearIndex + 1) % 15;
    self->_bdcdList.rearIndex = rearIndex;
  }

  self->_bdcdList.time[rearIndex] = time;
  v7 = (&self->super.isa + rearIndex);
  v7[777] = bdcd;
  v7[792] = delay;
  if (size < 0xF)
  {
    ++size;
  }

  self->_bdcdList.size = size;
  if (size >= 2 && rearIndex == self->_bdcdList.frontIndex)
  {
    self->_bdcdList.frontIndex = (rearIndex + 1) % 15;
  }
}

- (void)setIsTargetBitrateStabilized:(BOOL)stabilized
{
  v5 = &self->_lastBasebandNotification.notes.codecRateChange + 1016;
  isTargetBitrateStabilized = self->_isTargetBitrateStabilized;
  if (stabilized && !isTargetBitrateStabilized)
  {
    self->_resetAverageBitrateLong = 1;
  }

  if (isTargetBitrateStabilized && !stabilized)
  {
    [(VCBasebandMetrics *)self resetBDCDList];
    logBasebandDump = self->_logBasebandDump;
    if (logBasebandDump)
    {
      VRLogfilePrint(logBasebandDump, "Unstable bitrate for baseband, start re-collecting BDCD list...\n", v7, v8, v9, v10, v11, v12, v14);
    }
  }

  LOBYTE(v5[672].currentBitrate) = stabilized;
}

@end