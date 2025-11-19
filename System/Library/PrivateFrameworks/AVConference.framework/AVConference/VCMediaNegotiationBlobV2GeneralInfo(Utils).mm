@interface VCMediaNegotiationBlobV2GeneralInfo(Utils)
@end

@implementation VCMediaNegotiationBlobV2GeneralInfo(Utils)

- (void)initWithCreationTime:()Utils screenResolution:abSwitches:fecHeaderVersion:rtxVersion:.cold.1(void *a1, double a2, double a3)
{
  v18 = *MEMORY[0x1E69E9840];
  if (VRTraceGetErrorLogLevelForModule() >= 3)
  {
    v6 = VRTraceErrorLogLevelToCSTR();
    v7 = *MEMORY[0x1E6986650];
    if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
    {
      v8 = 136316162;
      v9 = v6;
      v10 = 2080;
      v11 = "[VCMediaNegotiationBlobV2GeneralInfo(Utils) initWithCreationTime:screenResolution:abSwitches:fecHeaderVersion:rtxVersion:]";
      v12 = 1024;
      v13 = 40;
      v14 = 1024;
      v15 = a2;
      v16 = 1024;
      v17 = a3;
      _os_log_error_impl(&dword_1DB56E000, v7, OS_LOG_TYPE_ERROR, " [%s] %s:%d Screen size error: %dx%d", &v8, 0x28u);
    }
  }
}

@end