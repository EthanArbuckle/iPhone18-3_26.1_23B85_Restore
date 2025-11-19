@interface VCRateControlAlgorithmLayeredContinuousTierML
- (BOOL)setUpVTable;
- (VCRateControlAlgorithmLayeredContinuousTierML)initWithModelPath:(id)a3;
- (void)dealloc;
@end

@implementation VCRateControlAlgorithmLayeredContinuousTierML

- (VCRateControlAlgorithmLayeredContinuousTierML)initWithModelPath:(id)a3
{
  v25 = *MEMORY[0x1E69E9840];
  v14.receiver = self;
  v14.super_class = VCRateControlAlgorithmLayeredContinuousTierML;
  v4 = [(VCRateControlAlgorithmLayeredContinuousTier *)&v14 init];
  if (v4)
  {
    v4->_model = [[VCRateControlMachineLearningInference alloc] initWithModelPath:a3];
    v4->super.super.super._isMLEngaged = 1;
    v4->_machineLearningModeAfterDisengagement = [objc_msgSend(+[GKSConnectivitySettings getAllSettings](GKSConnectivitySettings "getAllSettings")] ^ 1;
  }

  if (objc_opt_class() == v4)
  {
    if (VRTraceGetErrorLogLevelForModule() >= 6)
    {
      v6 = VRTraceErrorLogLevelToCSTR();
      v7 = *MEMORY[0x1E6986650];
      if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
      {
        *buf = 136315650;
        v16 = v6;
        v17 = 2080;
        v18 = "[VCRateControlAlgorithmLayeredContinuousTierML initWithModelPath:]";
        v19 = 1024;
        v20 = 63;
        v8 = "VCRC [%s] %s:%d Initialized Machine Learning Algorithm";
        v9 = v7;
        v10 = 28;
LABEL_13:
        _os_log_impl(&dword_1DB56E000, v9, OS_LOG_TYPE_DEFAULT, v8, buf, v10);
      }
    }
  }

  else
  {
    if (objc_opt_respondsToSelector())
    {
      v5 = [(VCRateControlAlgorithmLayeredContinuousTierML *)v4 performSelector:sel_logPrefix];
    }

    else
    {
      v5 = &stru_1F570E008;
    }

    if (VRTraceGetErrorLogLevelForModule() >= 6)
    {
      v11 = VRTraceErrorLogLevelToCSTR();
      v12 = *MEMORY[0x1E6986650];
      if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
      {
        *buf = 136316162;
        v16 = v11;
        v17 = 2080;
        v18 = "[VCRateControlAlgorithmLayeredContinuousTierML initWithModelPath:]";
        v19 = 1024;
        v20 = 63;
        v21 = 2112;
        v22 = v5;
        v23 = 2048;
        v24 = v4;
        v8 = "VCRC [%s] %s:%d %@(%p) Initialized Machine Learning Algorithm";
        v9 = v12;
        v10 = 48;
        goto LABEL_13;
      }
    }
  }

  return v4;
}

- (void)dealloc
{
  v4 = *MEMORY[0x1E69E9840];
  [(VCRateControlMachineLearningInference *)self->_model dealloc];
  v3.receiver = self;
  v3.super_class = VCRateControlAlgorithmLayeredContinuousTierML;
  [(VCRateControlAlgorithmLayeredContinuousTier *)&v3 dealloc];
}

- (BOOL)setUpVTable
{
  v4 = *MEMORY[0x1E69E9840];
  self->super.super.super._vTable.configure = _VCRateControlAlgorithmLayeredContinuousTierML_Configure;
  self->super.super.super._vTable.doRateControl = _VCRateControlAlgorithmLayeredContinuousTierML_DoRateControl;
  v3.receiver = self;
  v3.super_class = VCRateControlAlgorithmLayeredContinuousTierML;
  return [(VCRateControlAlgorithmLayeredContinuousTier *)&v3 setUpVTable];
}

@end