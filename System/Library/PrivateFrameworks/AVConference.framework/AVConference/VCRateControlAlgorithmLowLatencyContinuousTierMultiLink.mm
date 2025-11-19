@interface VCRateControlAlgorithmLowLatencyContinuousTierMultiLink
- (BOOL)setUpVTable;
- (VCRateControlAlgorithmLowLatencyContinuousTierMultiLink)init;
- (tagVCStatisticsMessage)poorestLinkStatistics;
- (unsigned)targetBitrate;
- (void)dealloc;
@end

@implementation VCRateControlAlgorithmLowLatencyContinuousTierMultiLink

- (VCRateControlAlgorithmLowLatencyContinuousTierMultiLink)init
{
  v24 = *MEMORY[0x1E69E9840];
  v13.receiver = self;
  v13.super_class = VCRateControlAlgorithmLowLatencyContinuousTierMultiLink;
  v2 = [(VCRateControlAlgorithmLowLatencyContinuousTier *)&v13 init];
  v3 = v2;
  if (v2)
  {
    v2->super.super.super._state = 0;
    if (objc_opt_class() == v2)
    {
      if (VRTraceGetErrorLogLevelForModule() >= 7)
      {
        v5 = VRTraceErrorLogLevelToCSTR();
        v6 = *MEMORY[0x1E6986650];
        if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
        {
          *buf = 136315650;
          v15 = v5;
          v16 = 2080;
          v17 = "[VCRateControlAlgorithmLowLatencyContinuousTierMultiLink init]";
          v18 = 1024;
          v19 = 34;
          v7 = "VCRC [%s] %s:%d rate algorithm for multilink created";
          v8 = v6;
          v9 = 28;
LABEL_12:
          _os_log_impl(&dword_1DB56E000, v8, OS_LOG_TYPE_DEFAULT, v7, buf, v9);
        }
      }
    }

    else
    {
      if (objc_opt_respondsToSelector())
      {
        v4 = [(VCRateControlAlgorithmLowLatencyContinuousTierMultiLink *)v3 performSelector:sel_logPrefix];
      }

      else
      {
        v4 = &stru_1F570E008;
      }

      if (VRTraceGetErrorLogLevelForModule() >= 7)
      {
        v10 = VRTraceErrorLogLevelToCSTR();
        v11 = *MEMORY[0x1E6986650];
        if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
        {
          *buf = 136316162;
          v15 = v10;
          v16 = 2080;
          v17 = "[VCRateControlAlgorithmLowLatencyContinuousTierMultiLink init]";
          v18 = 1024;
          v19 = 34;
          v20 = 2112;
          v21 = v4;
          v22 = 2048;
          v23 = v3;
          v7 = "VCRC [%s] %s:%d %@(%p) rate algorithm for multilink created";
          v8 = v11;
          v9 = 48;
          goto LABEL_12;
        }
      }
    }
  }

  return v3;
}

- (void)dealloc
{
  v3 = *MEMORY[0x1E69E9840];
  v2.receiver = self;
  v2.super_class = VCRateControlAlgorithmLowLatencyContinuousTierMultiLink;
  [(VCRateControlAlgorithmLowLatencyContinuousTier *)&v2 dealloc];
}

- (BOOL)setUpVTable
{
  v4 = *MEMORY[0x1E69E9840];
  self->super.super.super._vTable.configure = _VCRateControlAlgorithmLowLatencyContinuousTierMultiLink_Configure;
  self->super.super.super._vTable.doRateControl = _VCRateControlAlgorithmLowLatencyContinousTierMultiLink_DoRateControlWithVCRCStatistics;
  v3.receiver = self;
  v3.super_class = VCRateControlAlgorithmLowLatencyContinuousTierMultiLink;
  return [(VCRateControlAlgorithmLowLatencyContinuousTier *)&v3 setUpVTable];
}

- (unsigned)targetBitrate
{
  if (!self->_numOfLinkSSRCs)
  {
    return self->super.super._multiLinkTargetBitrate;
  }

  v2 = self->super.super.super._targetBitrate / self->_numOfLinkSSRCs;
  self->super.super._multiLinkTargetBitrate = v2;
  return v2;
}

- (tagVCStatisticsMessage)poorestLinkStatistics
{
  v3 = *(&self[28].var0.addRemoveEndPoint + 11);
  *(&retstr->var0.addRemoveEndPoint + 17) = *(&self[28].var0.addRemoveEndPoint + 9);
  *(&retstr->var0.addRemoveEndPoint + 19) = v3;
  *(&retstr->var0.addRemoveEndPoint + 21) = *(&self[28].var0.addRemoveEndPoint + 13);
  v4 = *(&self[28].var0.addRemoveEndPoint + 3);
  *(&retstr->var0.addRemoveEndPoint + 9) = *&self[28].var0.rtcpRR.lastSequenceNumber;
  *(&retstr->var0.addRemoveEndPoint + 11) = v4;
  v5 = *(&self[28].var0.addRemoveEndPoint + 7);
  *(&retstr->var0.addRemoveEndPoint + 13) = *(&self[28].var0.addRemoveEndPoint + 5);
  *(&retstr->var0.addRemoveEndPoint + 15) = v5;
  v6 = *(&self[27].var0.addRemoveEndPoint + 10);
  *&retstr->var0.rtcpRR.lastSequenceNumber = *(&self[27].var0.addRemoveEndPoint + 9);
  *(&retstr->var0.addRemoveEndPoint + 3) = v6;
  v7 = *&self[28].isVCRCInternal;
  *(&retstr->var0.addRemoveEndPoint + 5) = *&self[28].type;
  *(&retstr->var0.addRemoveEndPoint + 7) = v7;
  v8 = *(&self[27].var0.addRemoveEndPoint + 8);
  *&retstr->type = *(&self[27].var0.addRemoveEndPoint + 7);
  *&retstr->isVCRCInternal = v8;
  return self;
}

@end