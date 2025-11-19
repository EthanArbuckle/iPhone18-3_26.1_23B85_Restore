@interface VCVideoRuleCollectionsMediaRecorder
- (VCVideoRuleCollectionsMediaRecorder)init;
@end

@implementation VCVideoRuleCollectionsMediaRecorder

- (VCVideoRuleCollectionsMediaRecorder)init
{
  v25 = *MEMORY[0x1E69E9840];
  v14.receiver = self;
  v14.super_class = VCVideoRuleCollectionsMediaRecorder;
  v2 = [(VCVideoRuleCollectionsMediaRecorder *)&v14 init];
  if (v2)
  {
    v3 = +[GKSConnectivitySettings getAbTestMasterLocalSwitches]& 0x2000;
    ErrorLogLevelForModule = VRTraceGetErrorLogLevelForModule();
    v5 = MEMORY[0x1E6986650];
    if (ErrorLogLevelForModule >= 7)
    {
      v6 = VRTraceErrorLogLevelToCSTR();
      v7 = *v5;
      if (os_log_type_enabled(*v5, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 136315906;
        v16 = v6;
        v17 = 2080;
        v18 = "[VCVideoRuleCollectionsMediaRecorder init]";
        v19 = 1024;
        v20 = 35;
        v21 = 1024;
        v22 = v3 >> 13;
        _os_log_impl(&dword_1DB56E000, v7, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d Load switch heifHevcLivePhotosEnabled %d", buf, 0x22u);
      }
    }

    v8 = [+[VCDefaults sharedInstance](VCDefaults enableHEIFAndHEVCForMoments];
    if (v3)
    {
      v9 = v8;
    }

    else
    {
      v9 = 0;
    }

    v2->_isHEIFAndHEVCFormatEnabled = v9;
    if (VRTraceGetErrorLogLevelForModule() >= 7)
    {
      v10 = VRTraceErrorLogLevelToCSTR();
      v11 = *v5;
      if (os_log_type_enabled(*v5, OS_LOG_TYPE_DEFAULT))
      {
        isHEIFAndHEVCFormatEnabled = v2->_isHEIFAndHEVCFormatEnabled;
        *buf = 136316162;
        v16 = v10;
        v17 = 2080;
        v18 = "[VCVideoRuleCollectionsMediaRecorder init]";
        v19 = 1024;
        v20 = 38;
        v21 = 1024;
        v22 = isHEIFAndHEVCFormatEnabled;
        v23 = 1024;
        v24 = v3 >> 13;
        _os_log_impl(&dword_1DB56E000, v11, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d Initializing media recorder rule collections with HEIF and HEVC enabled:%d and the storebag settings value was: %d", buf, 0x28u);
      }
    }
  }

  return v2;
}

@end