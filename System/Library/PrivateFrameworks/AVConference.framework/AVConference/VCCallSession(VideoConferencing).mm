@interface VCCallSession(VideoConferencing)
@end

@implementation VCCallSession(VideoConferencing)

- (void)processBlackFrame:()VideoConferencing .cold.1(uint64_t a1)
{
  v5 = *MEMORY[0x1E69E9840];
  v2 = 136315650;
  v3 = a1;
  OUTLINED_FUNCTION_0();
  v4 = 63;
  _os_log_error_impl(&dword_1DB56E000, v1, OS_LOG_TYPE_ERROR, "VCCallSession [%s] %s:%d Failed to get image buffer", &v2, 0x1Cu);
}

- (float)onCaptureFrame:()VideoConferencing audioTS:audioHT:videoHT:cameraBits:.cold.1(uint64_t a1, uint64_t a2, os_log_t log)
{
  v16 = *MEMORY[0x1E69E9840];
  v3 = *(a2 + 24);
  v4 = *(a2 + 48);
  v6 = 136316162;
  v7 = a1;
  v8 = 2080;
  v9 = "[VCCallSession(VideoConferencing) onCaptureFrame:audioTS:audioHT:videoHT:cameraBits:]";
  v10 = 1024;
  v11 = 111;
  v12 = 2048;
  v13 = v3;
  v14 = 1024;
  v15 = v4;
  _os_log_debug_impl(&dword_1DB56E000, log, OS_LOG_TYPE_DEBUG, "VCCallSession [%s] %s:%d AFRC Statistics packetLossPercentage=%3.3f burstPacketLoss=%d", &v6, 0x2Cu);
  return result;
}

- (void)initializeDisplayLinkWithError:()VideoConferencing .cold.1()
{
  if (VRTraceGetErrorLogLevelForModule() >= 3)
  {
    VRTraceErrorLogLevelToCSTR();
    if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
    {
      OUTLINED_FUNCTION_0();
      OUTLINED_FUNCTION_17(&dword_1DB56E000, v0, v1, "VCCallSession [%s] %s:%d Failed to activate VCDisplayLink", v2, v3, v4, v5, 2u);
    }
  }
}

- (void)initializeDisplayLinkWithError:()VideoConferencing .cold.2()
{
  if (VRTraceGetErrorLogLevelForModule() >= 3)
  {
    VRTraceErrorLogLevelToCSTR();
    if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
    {
      OUTLINED_FUNCTION_0();
      OUTLINED_FUNCTION_17(&dword_1DB56E000, v0, v1, "VCCallSession [%s] %s:%d Failed to create VCDisplayLink", v2, v3, v4, v5, 2u);
    }
  }
}

- (void)updateSourcePlayoutTime:()VideoConferencing .cold.1(uint64_t a1)
{
  v5 = *MEMORY[0x1E69E9840];
  v2 = 136315650;
  v3 = a1;
  OUTLINED_FUNCTION_0();
  v4 = 954;
  _os_log_error_impl(&dword_1DB56E000, v1, OS_LOG_TYPE_ERROR, "VCCallSession [%s] %s:%d Provided playout time is NULL", &v2, 0x1Cu);
}

@end