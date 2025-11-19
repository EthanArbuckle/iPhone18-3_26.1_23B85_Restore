@interface VCRateControlAlgorithmBase
- (BOOL)setUpVTable;
- (VCRateControlAlgorithmBase)init;
- (tagVCRateControlAlgorithmReportStats)reportStatistics;
- (tagVCRateControlMachineLearningNetworkEnvironment)machineLearningEnvironment;
- (void)dealloc;
- (void)init;
- (void)setUpVTable;
@end

@implementation VCRateControlAlgorithmBase

- (VCRateControlAlgorithmBase)init
{
  v6 = *MEMORY[0x1E69E9840];
  v5.receiver = self;
  v5.super_class = VCRateControlAlgorithmBase;
  v2 = [(VCRateControlAlgorithmBase *)&v5 init];
  v3 = v2;
  if (v2)
  {
    if ([(VCRateControlAlgorithmBase *)v2 setUpVTable])
    {
      v3->_paused = 0;
      *&v3->_packetLossRateThreshold = xmmword_1DBD499F0;
      v3->_rateSharingCount = 1;
    }

    else
    {
      [(VCRateControlAlgorithmBase *)v3 init];
      return 0;
    }
  }

  return v3;
}

- (BOOL)setUpVTable
{
  v5 = *MEMORY[0x1E69E9840];
  if (self->_vTable.configure)
  {
    if (self->_vTable.doRateControl)
    {
      if (!self->_vTable.stateEnter)
      {
        self->_vTable.stateEnter = VCRateControlAlgorithmBasePriv_StateEnter;
      }

      if (!self->_vTable.stateExit)
      {
        self->_vTable.stateExit = VCRateControlAlgorithmBasePriv_StateExit;
      }

      return 1;
    }

    else
    {
      [(VCRateControlAlgorithmBase *)&v3 setUpVTable];
      return v3;
    }
  }

  else
  {
    [(VCRateControlAlgorithmBase *)&v4 setUpVTable];
    return v4;
  }
}

- (void)dealloc
{
  v4 = *MEMORY[0x1E69E9840];

  v3.receiver = self;
  v3.super_class = VCRateControlAlgorithmBase;
  [(VCRateControlAlgorithmBase *)&v3 dealloc];
}

- (tagVCRateControlAlgorithmReportStats)reportStatistics
{
  v3 = *&self[162].var0.smartBrake.targetBitrateStart;
  *&retstr->index = *&self[162].var0.smartBrake.duration;
  *&retstr->var0.smartBrake.bandwidthEnd = v3;
  return self;
}

- (tagVCRateControlMachineLearningNetworkEnvironment)machineLearningEnvironment
{
  rateControlMode = self->_machineLearningEnvironment.rateControlMode;
  v3 = *&self->_machineLearningEnvironment.localRadioAccessTechnology;
  result.localRadioAccessTechnology = v3;
  result.remoteRadioAccessTechnology = HIDWORD(v3);
  result.rateControlMode = rateControlMode;
  return result;
}

- (void)init
{
  if (VRTraceGetErrorLogLevelForModule() >= 3)
  {
    VRTraceErrorLogLevelToCSTR();
    if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
    {
      OUTLINED_FUNCTION_1_0();
      OUTLINED_FUNCTION_0();
      OUTLINED_FUNCTION_3_4(&dword_1DB56E000, v2, v3, "VCRC [%s] %s:%d Failed to initialize the v-table", v4, v5, v6, v7, v8);
    }
  }
}

- (void)setUpVTable
{
  if (VRTraceGetErrorLogLevelForModule() >= 3)
  {
    VRTraceErrorLogLevelToCSTR();
    if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
    {
      OUTLINED_FUNCTION_1_0();
      OUTLINED_FUNCTION_0();
      OUTLINED_FUNCTION_3_4(&dword_1DB56E000, v2, v3, "VCRC [%s] %s:%d Invalid v-table. configure is NULL", v4, v5, v6, v7, v8);
    }
  }

  *a1 = 0;
}

@end