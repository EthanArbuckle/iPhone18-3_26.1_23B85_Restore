@interface VCNWConnectionCongestionDetectorBaseband
- (BOOL)processNWConnectionNotification:(tagVCNWConnectionNotification *)a3;
@end

@implementation VCNWConnectionCongestionDetectorBaseband

- (BOOL)processNWConnectionNotification:(tagVCNWConnectionNotification *)a3
{
  v32 = *MEMORY[0x1E69E9840];
  if (a3)
  {
    if (a3->version < 3u)
    {
      frequency_band = a3->var1.advisory.frequency_band;
      reference_signal_level = a3->var1.advisory.cell_context.reference_signal_level;
      v18 = *(&a3->var1.thermalUpdate + 29);
      quality_score_loss = a3->var1.advisory.quality_score_loss;
      v20 = *&a3->var1.advisory.version;
      interface_type = a3->var1.advisory.header.interface_type;
      timestamp = a3->var1.advisory.timestamp;
      memset(&v31[80], 170, 24);
      memset(&v30[1], 170, 64);
      *&v30[0] = 12;
      *(&v30[0] + 1) = micro();
      LODWORD(v30[1]) = 0x10000;
      WORD4(v30[1]) = v20;
      BYTE10(v30[1]) = interface_type;
      *(&v30[1] + 11) = 0;
      HIBYTE(v30[1]) = 0;
      *&v30[2] = timestamp;
      *(&v30[2] + 8) = 0u;
      *(&v30[3] + 8) = 0u;
      *(&v30[4] + 8) = 0u;
      *(&v30[5] + 1) = 0;
      v31[0] = frequency_band;
      v31[1] = -86;
      *&v31[2] = reference_signal_level;
      v31[6] = 0;
      *&v31[7] = v18;
      v31[9] = quality_score_loss;
      *&v31[10] = 0xAA0000000000AA00;
      memset(&v31[18], 0, 70);
      AVCStatisticsCollector_SetVCStatistics(self->super._statisticsCollector, v30);
      v23 = *&v31[80];
      *(&self->super._previousStatistics.var0.addRemoveEndPoint + 17) = *&v31[64];
      *(&self->super._previousStatistics.var0.addRemoveEndPoint + 19) = v23;
      *(&self->super._previousStatistics.var0.addRemoveEndPoint + 21) = *&v31[96];
      v24 = *&v31[16];
      *(&self->super._previousStatistics.var0.addRemoveEndPoint + 9) = *v31;
      *(&self->super._previousStatistics.var0.addRemoveEndPoint + 11) = v24;
      v25 = *&v31[48];
      *(&self->super._previousStatistics.var0.addRemoveEndPoint + 13) = *&v31[32];
      *(&self->super._previousStatistics.var0.addRemoveEndPoint + 15) = v25;
      v26 = v30[3];
      *&self->super._previousStatistics.var0.rtcpRR.lastSequenceNumber = v30[2];
      *(&self->super._previousStatistics.var0.addRemoveEndPoint + 3) = v26;
      v27 = v30[5];
      *(&self->super._previousStatistics.var0.addRemoveEndPoint + 5) = v30[4];
      *(&self->super._previousStatistics.var0.addRemoveEndPoint + 7) = v27;
      v28 = v30[1];
      LOBYTE(logNWDump) = 1;
      *&self->super._previousStatistics.type = v30[0];
      *&self->super._previousStatistics.isVCRCInternal = v28;
      return logNWDump;
    }

    if (VRTraceGetErrorLogLevelForModule() >= 3)
    {
      v11 = VRTraceErrorLogLevelToCSTR();
      v12 = *MEMORY[0x1E6986650];
      if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
      {
        [(VCNWConnectionCongestionDetectorBaseband *)v11 processNWConnectionNotification:a3, v12];
      }
    }

    logNWDump = self->super._logNWDump;
    if (logNWDump)
    {
      VRLogfilePrint(logNWDump, "NWConnection notification has a bad version=%d\n", v5, v6, v7, v8, v9, v10, a3->var1.advisory.version);
LABEL_11:
      LOBYTE(logNWDump) = 0;
    }
  }

  else
  {
    if (VRTraceGetErrorLogLevelForModule() < 3)
    {
      goto LABEL_11;
    }

    v14 = VRTraceErrorLogLevelToCSTR();
    v15 = *MEMORY[0x1E6986650];
    LODWORD(logNWDump) = os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR);
    if (logNWDump)
    {
      [(VCNWConnectionCongestionDetectorBaseband *)v14 processNWConnectionNotification:v15];
      goto LABEL_11;
    }
  }

  return logNWDump;
}

- (void)processNWConnectionNotification:(os_log_t)log .cold.1(uint64_t a1, uint64_t a2, os_log_t log)
{
  v12 = *MEMORY[0x1E69E9840];
  v3 = *(a2 + 8);
  v4 = 136315906;
  v5 = a1;
  v6 = 2080;
  v7 = "[VCNWConnectionCongestionDetectorBaseband processNWConnectionNotification:]";
  v8 = 1024;
  v9 = 28;
  v10 = 1024;
  v11 = v3;
  _os_log_error_impl(&dword_1DB56E000, log, OS_LOG_TYPE_ERROR, "VCRC [%s] %s:%d NWConnection notification has a bad version=%d", &v4, 0x22u);
}

- (void)processNWConnectionNotification:(uint64_t)a1 .cold.2(uint64_t a1, NSObject *a2)
{
  v8 = *MEMORY[0x1E69E9840];
  v2 = 136315650;
  v3 = a1;
  v4 = 2080;
  v5 = "[VCNWConnectionCongestionDetectorBaseband processNWConnectionNotification:]";
  v6 = 1024;
  v7 = 23;
  _os_log_error_impl(&dword_1DB56E000, a2, OS_LOG_TYPE_ERROR, "VCRC [%s] %s:%d NWConnection notification is nil", &v2, 0x1Cu);
}

@end