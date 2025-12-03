@interface VCNWConnectionCongestionDetector
- (BOOL)processNWConnectionNotification:(tagVCNWConnectionNotification *)notification;
- (BOOL)processNWConnectionPacketEvent:(packet_id *)event eventType:(int)type;
- (void)dealloc;
- (void)sendCongestionEventWithTimestamp:(unsigned int)timestamp;
@end

@implementation VCNWConnectionCongestionDetector

- (void)dealloc
{
  v4 = *MEMORY[0x1E69E9840];

  v3.receiver = self;
  v3.super_class = VCNWConnectionCongestionDetector;
  [(VCNWConnectionCongestionDetector *)&v3 dealloc];
}

- (BOOL)processNWConnectionNotification:(tagVCNWConnectionNotification *)notification
{
  v37 = *MEMORY[0x1E69E9840];
  if (!notification)
  {
    if (VRTraceGetErrorLogLevelForModule() >= 3)
    {
      v11 = VRTraceErrorLogLevelToCSTR();
      if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
      {
        [VCNWConnectionCongestionDetector processNWConnectionNotification:v11];
      }
    }

    return 0;
  }

  if (notification->version >= 3u)
  {
    logNWDump = self->_logNWDump;
    if (logNWDump)
    {
      VRLogfilePrint(logNWDump, "NWConnection notification has a bad version: %d\n", notification, v3, v4, v5, v6, v7, notification->version);
    }

    return 0;
  }

  timestamp = notification->var1.advisory.timestamp;
  v13 = self->_previousStatistics.var0.nwConnection.timestamp;
  if (timestamp == v13 || (timestamp - v13) >> 32 != 0)
  {
    v15 = self->_logNWDump;
    if (v15)
    {
      VRLogfilePrint(v15, "NWConnection notifications have identical timestamps or out of order [current timestamp:%llu, previous timestamp:%llu]\n", notification, v3, v4, v5, v6, v7, notification->var1.advisory.timestamp);
    }

    return 0;
  }

  v36 = 0;
  v34 = 0u;
  v35 = 0u;
  *&v32[16] = 0u;
  v33 = 0u;
  v31 = 0u;
  *v32 = 0u;
  v29 = 0u;
  v30 = 0u;
  memset(v28, 0, sizeof(v28));
  *&v26 = 11;
  v27 = 0u;
  *(&v26 + 1) = micro();
  v16 = 1;
  BYTE2(v27) = 1;
  WORD4(v27) = *&notification->var1.advisory.version;
  *&v28[0] = timestamp;
  *(v28 + 8) = *(&notification->var1.thermalUpdate + 1);
  *(&v28[1] + 1) = *(&notification->var1.thermalUpdate + 5);
  LODWORD(v29) = notification->var1.advisory.average_delay;
  maxAveragePacketDelayMs = v29;
  *(&v29 + 1) = notification->var1.advisory.average_throughput;
  LODWORD(v30) = notification->var1.advisory.rate_trend_suggestion;
  v19 = *(&notification->var1.thermalUpdate + 65);
  *&v32[24] = *(&notification->var1.thermalUpdate + 81);
  *&v32[8] = v19;
  self->_averageThroughputBps = DWORD2(v29);
  self->_averagePacketDelayMs = maxAveragePacketDelayMs;
  if (self->_maxAveragePacketDelayMs > maxAveragePacketDelayMs)
  {
    maxAveragePacketDelayMs = self->_maxAveragePacketDelayMs;
  }

  self->_maxAveragePacketDelayMs = maxAveragePacketDelayMs;
  AVCStatisticsCollector_SetVCStatistics(self->_statisticsCollector, &v26);
  v20 = v35;
  *(&self->_previousStatistics.var0.addRemoveEndPoint + 17) = v34;
  *(&self->_previousStatistics.var0.addRemoveEndPoint + 19) = v20;
  *(&self->_previousStatistics.var0.addRemoveEndPoint + 21) = v36;
  v21 = *v32;
  *(&self->_previousStatistics.var0.addRemoveEndPoint + 9) = v31;
  *(&self->_previousStatistics.var0.addRemoveEndPoint + 11) = v21;
  v22 = v33;
  *(&self->_previousStatistics.var0.addRemoveEndPoint + 13) = *&v32[16];
  *(&self->_previousStatistics.var0.addRemoveEndPoint + 15) = v22;
  v23 = v28[1];
  *&self->_previousStatistics.var0.rtcpRR.lastSequenceNumber = v28[0];
  *(&self->_previousStatistics.var0.addRemoveEndPoint + 3) = v23;
  v24 = v30;
  *(&self->_previousStatistics.var0.addRemoveEndPoint + 5) = v29;
  *(&self->_previousStatistics.var0.addRemoveEndPoint + 7) = v24;
  v25 = v27;
  *&self->_previousStatistics.type = v26;
  *&self->_previousStatistics.isVCRCInternal = v25;
  return v16;
}

- (BOOL)processNWConnectionPacketEvent:(packet_id *)event eventType:(int)type
{
  if (!event)
  {
    if (VRTraceGetErrorLogLevelForModule() >= 3)
    {
      v13 = VRTraceErrorLogLevelToCSTR();
      LODWORD(logNWDump) = os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR);
      if (!logNWDump)
      {
        return logNWDump;
      }

      [VCNWConnectionCongestionDetector processNWConnectionPacketEvent:v13 eventType:?];
    }

LABEL_12:
    LOBYTE(logNWDump) = 0;
    return logNWDump;
  }

  typeCopy = type;
  if (event->var0 != 1)
  {
    logNWDump = self->_logNWDump;
    if (!logNWDump)
    {
      return logNWDump;
    }

    VRLogfilePrint(logNWDump, "NWConnection packet event has a bad version: %d, type: %d\n", event, *&type, v4, v5, v6, v7, event->var0);
    goto LABEL_12;
  }

  lastTimestampWithPacketDrop = self->_lastTimestampWithPacketDrop;
  ++self->_packetDropCount;
  if (lastTimestampWithPacketDrop == event->var3)
  {
    v12 = self->_packetDropCountPerFrame + 1;
    self->_packetDropCountPerFrame = v12;
    if (!self->_didSendCongestionEvent && v12 >= 0xB)
    {
      self->_didSendCongestionEvent = 1;
      [(VCNWConnectionCongestionDetector *)self sendCongestionEventWithTimestamp:?];
    }
  }

  else
  {
    self->_packetDropCountPerFrame = 1;
    self->_lastTimestampWithPacketDrop = event->var3;
    self->_didSendCongestionEvent = 0;
  }

  v15 = self->_logNWDump;
  if (v15)
  {
    VRLogfilePrint(v15, "NWConnection packet NACK event [type:%d, timestamp:%u, identifier:%u, seq:%u, dropCountPerFrame:%d, dropCount:%d, congestionEvent:%d]\n", lastTimestampWithPacketDrop, *&type, v4, v5, v6, v7, typeCopy);
  }

  LOBYTE(logNWDump) = 1;
  return logNWDump;
}

- (void)sendCongestionEventWithTimestamp:(unsigned int)timestamp
{
  v19 = *MEMORY[0x1E69E9840];
  v18 = 0;
  v16 = 0u;
  v17 = 0u;
  v14 = 0u;
  v15 = 0u;
  v12 = 0u;
  v13 = 0u;
  v10 = 0u;
  v11 = 0u;
  v8 = 0u;
  v9 = 0u;
  v6[0] = 11;
  v7 = 0u;
  v6[1] = micro();
  BYTE2(v7) = 1;
  *&v8 = timestamp;
  packetDropCountPerFrame = self->_packetDropCountPerFrame;
  LODWORD(v11) = 0x80000000;
  DWORD1(v11) = packetDropCountPerFrame;
  AVCStatisticsCollector_SetVCStatistics(self->_statisticsCollector, v6);
}

- (void)processNWConnectionNotification:(uint64_t)a1 .cold.1(uint64_t a1)
{
  v5 = *MEMORY[0x1E69E9840];
  v2 = 136315650;
  v3 = a1;
  OUTLINED_FUNCTION_0();
  v4 = 50;
  _os_log_error_impl(&dword_1DB56E000, v1, OS_LOG_TYPE_ERROR, "VCRC [%s] %s:%d NWConnection notification is nil", &v2, 0x1Cu);
}

- (void)processNWConnectionPacketEvent:(uint64_t)a1 eventType:.cold.1(uint64_t a1)
{
  v5 = *MEMORY[0x1E69E9840];
  v2 = 136315650;
  v3 = a1;
  OUTLINED_FUNCTION_0();
  v4 = 97;
  _os_log_error_impl(&dword_1DB56E000, v1, OS_LOG_TYPE_ERROR, "VCRC [%s] %s:%d NWConnection packet event is nil", &v2, 0x1Cu);
}

@end