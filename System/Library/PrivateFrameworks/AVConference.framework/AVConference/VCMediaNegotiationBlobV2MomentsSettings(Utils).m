@interface VCMediaNegotiationBlobV2MomentsSettings(Utils)
@end

@implementation VCMediaNegotiationBlobV2MomentsSettings(Utils)

- (void)initWithVideoCodecs:()Utils imageTypes:capabilitiesOneToOne:capabilitiesMultiway:.cold.1(uint64_t a1, uint64_t a2, void *a3)
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
      v11 = "[VCMediaNegotiationBlobV2MomentsSettings(Utils) initWithVideoCodecs:imageTypes:capabilitiesOneToOne:capabilitiesMultiway:]";
      v12 = 1024;
      v13 = 29;
      v14 = 2112;
      v15 = a1;
      v16 = 2112;
      v17 = a2;
      _os_log_error_impl(&dword_1DB56E000, v7, OS_LOG_TYPE_ERROR, " [%s] %s:%d Failed to negotiate image types and video codecs. imageTypes=%@ videoCodecExpected=%@", &v8, 0x30u);
    }
  }
}

@end