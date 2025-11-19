@interface AVCBasebandCongestionDetector
- (AVCBasebandCongestionDetector)init;
- (BOOL)processBasebandNotification:(id *)a3 arrivalTime:(double)a4 error:(id *)a5;
- (BOOL)processBasebandNotification:(id)a3 metaData:(id)a4 error:(id *)a5;
- (BOOL)processRateControlMessageArray:(id)a3 type:(unsigned int)a4;
- (void)dealloc;
- (void)dumpNWConnectionBasebandLossMessage:(tagVCStatisticsMessage *)a3;
- (void)printFlushAckToBasebandDump:(unsigned __int8)a3 transactionID:(unsigned __int16)a4 packetDropped:(unsigned __int16)a5 sequenceNumberArray:(unsigned __int16 *)a6;
- (void)processBasebandAck:(id *)a3;
- (void)processNWConnectionBasebandStatisticsMessage:(tagVCStatisticsMessage *)a3;
- (void)setMediaController:(id)a3;
- (void)setRadioAccessTechnology:(unsigned int)a3;
- (void)start;
- (void)stop;
@end

@implementation AVCBasebandCongestionDetector

- (AVCBasebandCongestionDetector)init
{
  v5 = *MEMORY[0x1E69E9840];
  v4.receiver = self;
  v4.super_class = AVCBasebandCongestionDetector;
  v2 = [(AVCBasebandCongestionDetector *)&v4 init];
  if (v2)
  {
    v2->_basebandMetrics = objc_alloc_init(VCBasebandMetrics);
  }

  return v2;
}

- (void)dealloc
{
  v14 = *MEMORY[0x1E69E9840];
  if (VRTraceGetErrorLogLevelForModule() >= 7)
  {
    v3 = VRTraceErrorLogLevelToCSTR();
    v4 = *MEMORY[0x1E6986650];
    if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136315906;
      v7 = v3;
      v8 = 2080;
      v9 = "[AVCBasebandCongestionDetector dealloc]";
      v10 = 1024;
      v11 = 357;
      v12 = 2048;
      v13 = self;
      _os_log_impl(&dword_1DB56E000, v4, OS_LOG_TYPE_DEFAULT, "AVCRC [%s] %s:%d Releasing baseband congestion detector:%p", buf, 0x26u);
    }
  }

  v5.receiver = self;
  v5.super_class = AVCBasebandCongestionDetector;
  [(AVCBasebandCongestionDetector *)&v5 dealloc];
}

- (void)start
{
  v5[5] = *MEMORY[0x1E69E9840];
  if (!self->_isStarted)
  {
    self->_isStarted = 1;
    v3 = [MEMORY[0x1E6986630] weakObjectHolderWithObject:self];
    statisticsCollector = self->_statisticsCollector;
    v5[0] = MEMORY[0x1E69E9820];
    v5[1] = 3221225472;
    v5[2] = __38__AVCBasebandCongestionDetector_start__block_invoke;
    v5[3] = &unk_1E85F3998;
    v5[4] = v3;
    self->_statisticsHandlerIndex = [(AVCStatisticsCollector *)statisticsCollector registerStatisticsChangeHandlerWithType:12 handler:v5];
  }
}

void __38__AVCBasebandCongestionDetector_start__block_invoke(uint64_t a1, uint64_t a2)
{
  v12 = *MEMORY[0x1E69E9840];
  v3 = MEMORY[0x1E1289F20]([*(a1 + 32) weak]);
  v4 = *(a2 + 176);
  v10[10] = *(a2 + 160);
  v10[11] = v4;
  v11 = *(a2 + 192);
  v5 = *(a2 + 112);
  v10[6] = *(a2 + 96);
  v10[7] = v5;
  v6 = *(a2 + 144);
  v10[8] = *(a2 + 128);
  v10[9] = v6;
  v7 = *(a2 + 48);
  v10[2] = *(a2 + 32);
  v10[3] = v7;
  v8 = *(a2 + 80);
  v10[4] = *(a2 + 64);
  v10[5] = v8;
  v9 = *(a2 + 16);
  v10[0] = *a2;
  v10[1] = v9;
  [v3 processNWConnectionBasebandStatisticsMessage:v10];
  if (v3)
  {
    CFRelease(v3);
  }
}

- (void)stop
{
  if (self->_isStarted)
  {
    self->_isStarted = 0;
    [(AVCStatisticsCollector *)self->_statisticsCollector unregisterStatisticsChangeHandlerWithType:12 handlerIndex:self->_statisticsHandlerIndex];
  }
}

- (void)setMediaController:(id)a3
{
  v4 = a3;
  self->_mediaController = v4;
  basebandMetrics = self->_basebandMetrics;

  [(VCBasebandMetrics *)basebandMetrics setMediaController:v4];
}

- (void)setRadioAccessTechnology:(unsigned int)a3
{
  v3 = *&a3;
  v5 = [(AVCBasebandCongestionDetector *)self isRadioAccessTechnologyOnCellular:self->_radioAccessTechnology];
  v6 = [(AVCBasebandCongestionDetector *)self isRadioAccessTechnologyOnCellular:v3];
  if (!v5 && v6)
  {
    [(VCBasebandMetrics *)self->_basebandMetrics resetBBNoteHistoryList];
  }

  self->_radioAccessTechnology = v3;
}

- (void)processNWConnectionBasebandStatisticsMessage:(tagVCStatisticsMessage *)a3
{
  v34 = *MEMORY[0x1E69E9840];
  if (a3->type == 12)
  {
    if (a3->var0.nwConnection.interfaceType == 2)
    {
      if (a3->var0.nwConnection.packetLossPerFrame)
      {
        ++self->_basebandDropPacketCount;
        [(VCRateControlMediaController *)self->_mediaController updateBasebandDropPacketCountWithPayloadType:a3->var0.nwConnection.notificationType sequenceNumber:a3->var0.nwConnection.sequenceNumber];
        v5 = *(&a3->var0.addRemoveEndPoint + 19);
        v31 = *(&a3->var0.addRemoveEndPoint + 17);
        v32 = v5;
        v33 = *(&a3->var0.addRemoveEndPoint + 21);
        v6 = *(&a3->var0.addRemoveEndPoint + 11);
        v27 = *(&a3->var0.addRemoveEndPoint + 9);
        v28 = v6;
        v7 = *(&a3->var0.addRemoveEndPoint + 15);
        v29 = *(&a3->var0.addRemoveEndPoint + 13);
        v30 = v7;
        v8 = *(&a3->var0.addRemoveEndPoint + 3);
        *&buf[32] = *&a3->var0.rtcpRR.lastSequenceNumber;
        v24 = v8;
        v9 = *(&a3->var0.addRemoveEndPoint + 7);
        v25 = *(&a3->var0.addRemoveEndPoint + 5);
        v26 = v9;
        v10 = *&a3->isVCRCInternal;
        *buf = *&a3->type;
        *&buf[16] = v10;
        [(AVCBasebandCongestionDetector *)self dumpNWConnectionBasebandLossMessage:buf];
      }

      else
      {
        if (a3->var0.nwConnection.notificationType != 1 && VRTraceGetErrorLogLevelForModule() >= 7)
        {
          v11 = VRTraceErrorLogLevelToCSTR();
          v12 = *MEMORY[0x1E6986650];
          if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
          {
            notificationType = a3->var0.nwConnection.notificationType;
            *buf = 136315906;
            *&buf[4] = v11;
            *&buf[12] = 2080;
            *&buf[14] = "[AVCBasebandCongestionDetector processNWConnectionBasebandStatisticsMessage:]";
            *&buf[22] = 1024;
            *&buf[24] = 412;
            *&buf[28] = 1024;
            *&buf[30] = notificationType;
            _os_log_impl(&dword_1DB56E000, v12, OS_LOG_TYPE_DEFAULT, "AVCRC [%s] %s:%d Get non-CRA type nwConnection baseband notification, type=%d!", buf, 0x22u);
          }
        }

        bzero(&v15, 0x17A0uLL);
        v15 = 4;
        arrivalTime = a3->arrivalTime;
        timestamp = a3->var0.nwConnection.timestamp;
        totalByteCount = a3->var0.nwConnection.totalByteCount;
        v22 = timestamp;
        averageQueueDepth = a3->var0.baseband.averageQueueDepth;
        frequencyBand = a3->var0.nwConnection.var0.wifi.frequencyBand;
        linkID = a3->var0.serverStats.linkID;
        v19 = a3->var0.nwConnection.notificationType;
        [(AVCBasebandCongestionDetector *)self processBasebandNotification:&v15 arrivalTime:0 error:?];
      }
    }

    else
    {
      [AVCBasebandCongestionDetector processNWConnectionBasebandStatisticsMessage:];
    }
  }

  else
  {
    [AVCBasebandCongestionDetector processNWConnectionBasebandStatisticsMessage:];
  }
}

- (void)dumpNWConnectionBasebandLossMessage:(tagVCStatisticsMessage *)a3
{
  logBasebandDump = self->_logBasebandDump;
  if (logBasebandDump)
  {
    VRLogfilePrintWithTimestamp(logBasebandDump, "[Baseband drop packet count=%u, timestamp=0x%llX, seq=0x%X, type=%u]\n", a3, v3, v4, v5, v6, v7, self->_basebandDropPacketCount);
  }
}

- (BOOL)processBasebandNotification:(id)a3 metaData:(id)a4 error:(id *)a5
{
  v7 = a3;
  v14 = *MEMORY[0x1E69E9840];
  v9 = [a3 bytes];
  LODWORD(v7) = [v7 length];
  [objc_msgSend(a4 objectForKeyedSubscript:{@"MetaDataMessageArrivalTime", "doubleValue"}];
  v11 = v10;
  self->_notificationArrivalTime = v10;
  bzero(v13, 0x17A0uLL);
  VCBasebandNotificationParser_ParseNotification(v9, v7, v13, v11);
  return [(AVCBasebandCongestionDetector *)self processBasebandNotification:v13 arrivalTime:a5 error:self->_notificationArrivalTime];
}

- (BOOL)processBasebandNotification:(id *)a3 arrivalTime:(double)a4 error:(id *)a5
{
  v35 = *MEMORY[0x1E69E9840];
  self->_notificationArrivalTime = a4;
  var0 = a3->var0;
  if (a3->var0 != 1 && var0 != 4)
  {
    if (var0 == 2)
    {
      [(AVCBasebandCongestionDetector *)self processBasebandAck:a3, a5];
    }

    return 1;
  }

  self->_basebandNotificationType = var0;
  v32 = unk_1DBD49810;
  v33 = xmmword_1DBD49820;
  memset(v34, 170, sizeof(v34));
  v29 = unk_1DBD497D0;
  v30 = xmmword_1DBD497E0;
  memset(v31, 170, sizeof(v31));
  v28[0] = xmmword_1DBD49780;
  memset(&v28[1], 170, 64);
  basebandMetrics = self->_basebandMetrics;
  if (basebandMetrics)
  {
    [(VCBasebandMetrics *)basebandMetrics getBasebandMetricsWithNotification:a3, a5];
  }

  else
  {
    v33 = 0u;
    memset(v34, 0, sizeof(v34));
    v32 = 0u;
    v30 = 0u;
    memset(v31, 0, sizeof(v31));
    v29 = 0u;
    memset(v28, 0, sizeof(v28));
  }

  if (self->_mode - 1 <= 3)
  {
    BYTE2(v28[1]) = 1;
  }

  if (a3->var0 == 4)
  {
    LOBYTE(v28[1]) = 1;
  }

  v14 = *&v28[4];
  *&self->_basebandTxBitrate = *&v28[2];
  v15 = v28[0];
  self->_basebandQueueDepth = HIDWORD(v28[1]) + DWORD2(v28[1]);
  self->_basebandExpectedQueuingDelay = v14;
  if (v15 != 1)
  {
    logBasebandDump = self->_logBasebandDump;
    if (!logBasebandDump)
    {
      return 1;
    }

    v17 = "[Bogus baseband notification, discard]\n";
    goto LABEL_21;
  }

  if (*(v28 + 1) == 0.0)
  {
    logBasebandDump = self->_logBasebandDump;
    if (!logBasebandDump)
    {
      return 1;
    }

    v17 = "[Baseband notification too close to the previous one, discard]\n";
LABEL_21:
    VRLogfilePrintWithTimestamp(logBasebandDump, v17, a3, a5, v5, v6, v7, v8, v27);
    return 1;
  }

  if ([(VCRateControlMediaController *)self->_mediaController basebandFlushCount]> 0 || !DWORD1(v28[2]))
  {
    [(VCBasebandMetrics *)self->_basebandMetrics resetBDCDList];
    v18 = self->_logBasebandDump;
    if (v18)
    {
      v19 = [(VCRateControlMediaController *)self->_mediaController basebandFlushCount];
      VRLogfilePrintWithTimestamp(v18, "Start re-collecting BDCD samples [flushCount %d, BBAvgTxRate %d].\n", v20, v21, v22, v23, v24, v25, v19);
    }
  }

  AVCStatisticsCollector_SetVCStatistics(self->_statisticsCollector, v28);
  return 1;
}

- (BOOL)processRateControlMessageArray:(id)a3 type:(unsigned int)a4
{
  v16 = *MEMORY[0x1E69E9840];
  if (a4 != 7)
  {
    return 0;
  }

  bzero(&v9, 0x17A0uLL);
  v9 = 1;
  [objc_msgSend(a3 objectAtIndexedSubscript:{5), "doubleValue"}];
  v7 = v6;
  v10 = v6;
  v15 = [objc_msgSend(a3 objectAtIndexedSubscript:{0), "unsignedLongLongValue"}];
  v14 = [objc_msgSend(a3 objectAtIndexedSubscript:{2), "unsignedLongLongValue"}];
  v11 = [objc_msgSend(a3 objectAtIndexedSubscript:{1), "unsignedIntValue"}];
  v12 = [objc_msgSend(a3 objectAtIndexedSubscript:{3), "unsignedIntValue"}];
  v13 = [objc_msgSend(a3 objectAtIndexedSubscript:{4), "unsignedIntValue"}];
  return [(AVCBasebandCongestionDetector *)self processBasebandNotification:&v9 arrivalTime:0 error:v7];
}

- (void)processBasebandAck:(id *)a3
{
  [(VCRateControlMediaController *)self->_mediaController decreaseFlushCount:1];
  v11 = bswap32(a3->var3.var0.var0);
  v12 = HIWORD(v11);
  if (a3->var3.var1.var1)
  {
    if (a3->var3.var1.var1 == 0xFFFF)
    {
      logBasebandDump = self->_logBasebandDump;
      if (logBasebandDump)
      {
        VRLogfilePrintWithTimestamp(logBasebandDump, "TID[%04X] Baseband Drop ACK reported failure\n", v5, v6, v7, v8, v9, v10, SBYTE2(v11));
      }
    }

    else
    {
      var2 = a3->var3.var0.var2;
      if (a3->var3.var0.var2)
      {
        v16 = 0;
        v17 = &a3->var3.var2 + 10;
        do
        {
          v18 = *(v17 - 1);
          if (v18 <= 0x1F3)
          {
            v19 = *(v17 - 4);
            [(VCRateControlMediaController *)self->_mediaController didMediaGetFlushedWithPayloadType:v19 transactionID:v12 packetDropped:*(v17 - 1) sequenceNumberArray:v17];
            [(AVCBasebandCongestionDetector *)self printFlushAckToBasebandDump:v19 transactionID:v12 packetDropped:v18 sequenceNumberArray:v17];
            var2 = a3->var3.var0.var2;
          }

          ++v16;
          v17 += 1004;
        }

        while (v16 < var2);
      }
    }
  }

  else
  {
    v14 = self->_logBasebandDump;
    if (v14)
    {
      VRLogfilePrintWithTimestamp(v14, "TID[%04X] Baseband Drop ACK no packet dropped\n", v5, v6, v7, v8, v9, v10, SBYTE2(v11));
    }
  }
}

- (void)printFlushAckToBasebandDump:(unsigned __int8)a3 transactionID:(unsigned __int16)a4 packetDropped:(unsigned __int16)a5 sequenceNumberArray:(unsigned __int16 *)a6
{
  logBasebandDump = self->_logBasebandDump;
  if (logBasebandDump)
  {
    v7 = a4;
    if (a5)
    {
      v10 = a5;
      v11 = &stru_1F570E008;
      do
      {
        v12 = *a6++;
        v11 = [(__CFString *)v11 stringByAppendingFormat:@"%04X ", v12];
        --v10;
      }

      while (v10);
      logBasebandDump = self->_logBasebandDump;
      if (!v11)
      {
        goto LABEL_9;
      }
    }

    else
    {
      v11 = &stru_1F570E008;
    }

    [-[__CFString description](v11 "description")];
LABEL_9:
    VRLogfilePrintWithTimestamp(logBasebandDump, "TID[%04X] Baseband Drop ACK for PT %u: %2u packets dropped [%s]\n", v13, v14, v15, v16, v17, v18, v7);
  }
}

- (void)processNWConnectionBasebandStatisticsMessage:.cold.1()
{
  if (VRTraceGetErrorLogLevelForModule() >= 3)
  {
    VRTraceErrorLogLevelToCSTR();
    if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
    {
      OUTLINED_FUNCTION_3_3();
      OUTLINED_FUNCTION_1_17(&dword_1DB56E000, v0, v1, "AVCRC [%s] %s:%d Unexpected statistics type=%d", v2, v3, v4, v5, v6);
    }
  }
}

- (void)processNWConnectionBasebandStatisticsMessage:.cold.2()
{
  if (VRTraceGetErrorLogLevelForModule() >= 3)
  {
    VRTraceErrorLogLevelToCSTR();
    if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
    {
      OUTLINED_FUNCTION_3_3();
      OUTLINED_FUNCTION_1_17(&dword_1DB56E000, v0, v1, "AVCRC [%s] %s:%d Unexpected nwConnection interface type=%d", v2, v3, v4, v5, v6);
    }
  }
}

@end