@interface VCMediaNegotiationBlobV2StreamGroupPayload(Utils)
@end

@implementation VCMediaNegotiationBlobV2StreamGroupPayload(Utils)

- (void)initWithPayloadConfig:()Utils rtpSampleRate:.cold.1(uint64_t a1)
{
  v5 = *MEMORY[0x1E69E9840];
  v2 = 136315650;
  v3 = a1;
  OUTLINED_FUNCTION_0();
  v4 = 599;
  _os_log_error_impl(&dword_1DB56E000, v1, OS_LOG_TYPE_ERROR, " [%s] %s:%d Invalid payload config", &v2, 0x1Cu);
}

- (void)initWithPayloadConfig:()Utils rtpSampleRate:.cold.2(void *a1)
{
  if (VRTraceGetErrorLogLevelForModule() >= 3)
  {
    VRTraceErrorLogLevelToCSTR();
    if (OUTLINED_FUNCTION_34())
    {
      [a1 cipherSuite];
      OUTLINED_FUNCTION_1_1();
      OUTLINED_FUNCTION_6();
      OUTLINED_FUNCTION_6_23();
      OUTLINED_FUNCTION_1_17(&dword_1DB56E000, v2, v3, " [%s] %s:%d Failed to encode the cipherSuite=%d", v4, v5, v6, v7, v8);
    }
  }
}

- (void)initWithPayloadConfig:()Utils rtpSampleRate:.cold.3(void *a1)
{
  if (VRTraceGetErrorLogLevelForModule() >= 3)
  {
    VRTraceErrorLogLevelToCSTR();
    if (OUTLINED_FUNCTION_34())
    {
      [a1 codecType];
      OUTLINED_FUNCTION_1_1();
      OUTLINED_FUNCTION_6();
      OUTLINED_FUNCTION_1_17(&dword_1DB56E000, v2, v3, " [%s] %s:%d Failed to encode the codec=%d", v4, v5, v6, v7, v8);
    }
  }
}

- (void)initWithPayloadConfig:()Utils index:rtpSampleRate:streamGroupID:.cold.1(void *a1)
{
  if (VRTraceGetErrorLogLevelForModule() >= 3)
  {
    VRTraceErrorLogLevelToCSTR();
    if (OUTLINED_FUNCTION_34())
    {
      [a1 codecType];
      OUTLINED_FUNCTION_1_1();
      OUTLINED_FUNCTION_6();
      OUTLINED_FUNCTION_1_17(&dword_1DB56E000, v2, v3, " [%s] %s:%d Failed to encode the codec=%d", v4, v5, v6, v7, v8);
    }
  }
}

- (void)initWithPayloadConfig:()Utils index:rtpSampleRate:streamGroupID:.cold.2(void *a1)
{
  if (VRTraceGetErrorLogLevelForModule() >= 3)
  {
    VRTraceErrorLogLevelToCSTR();
    if (OUTLINED_FUNCTION_34())
    {
      [a1 cipherSuite];
      OUTLINED_FUNCTION_1_1();
      OUTLINED_FUNCTION_6();
      OUTLINED_FUNCTION_6_23();
      OUTLINED_FUNCTION_1_17(&dword_1DB56E000, v2, v3, " [%s] %s:%d Unsupported cipher suite (%u)", v4, v5, v6, v7, v8);
    }
  }
}

- (void)initWithPayloadConfig:()Utils index:rtpSampleRate:streamGroupID:.cold.3(void *a1)
{
  if (VRTraceGetErrorLogLevelForModule() >= 3)
  {
    VRTraceErrorLogLevelToCSTR();
    if (OUTLINED_FUNCTION_34())
    {
      [a1 H264LevelAsymmetryAllowed];
      OUTLINED_FUNCTION_1_1();
      OUTLINED_FUNCTION_6();
      OUTLINED_FUNCTION_6_23();
      OUTLINED_FUNCTION_1_17(&dword_1DB56E000, v2, v3, " [%s] %s:%d Unsupported H264LevelAsymmetryAllowed=%d", v4, v5, v6, v7, v8);
    }
  }
}

- (void)initWithPayloadConfig:()Utils index:rtpSampleRate:streamGroupID:.cold.4(void *a1)
{
  if (VRTraceGetErrorLogLevelForModule() >= 3)
  {
    VRTraceErrorLogLevelToCSTR();
    if (OUTLINED_FUNCTION_34())
    {
      [a1 H264PacketizationMode];
      OUTLINED_FUNCTION_1_1();
      OUTLINED_FUNCTION_6();
      OUTLINED_FUNCTION_6_23();
      OUTLINED_FUNCTION_1_17(&dword_1DB56E000, v2, v3, " [%s] %s:%d Unsupported H264PacketizationMode=%d", v4, v5, v6, v7, v8);
    }
  }
}

- (void)initWithPayloadConfig:()Utils index:rtpSampleRate:streamGroupID:.cold.5(uint64_t a1)
{
  v5 = *MEMORY[0x1E69E9840];
  v2 = 136315650;
  v3 = a1;
  OUTLINED_FUNCTION_0();
  v4 = 662;
  _os_log_error_impl(&dword_1DB56E000, v1, OS_LOG_TYPE_ERROR, " [%s] %s:%d Invalid payload config", &v2, 0x1Cu);
}

- (void)newCompactPayloadWithPayloadConfig:()Utils rtpSampleRate:.cold.1(void *a1)
{
  if (VRTraceGetErrorLogLevelForModule() >= 3)
  {
    VRTraceErrorLogLevelToCSTR();
    if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
    {
      [a1 pTime];
      OUTLINED_FUNCTION_5_0();
      OUTLINED_FUNCTION_6();
      OUTLINED_FUNCTION_2();
      _os_log_error_impl(v2, v3, v4, v5, v6, 0x26u);
    }
  }

  OUTLINED_FUNCTION_20();
}

- (void)newCompactPayloadWithPayloadConfig:()Utils rtpSampleRate:.cold.2()
{
  if (VRTraceGetErrorLogLevelForModule() >= 3)
  {
    VRTraceErrorLogLevelToCSTR();
    if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
    {
      OUTLINED_FUNCTION_0();
      OUTLINED_FUNCTION_2();
      _os_log_error_impl(v0, v1, v2, v3, v4, 0x1Cu);
    }
  }

  OUTLINED_FUNCTION_20();
}

- (void)newCompactPayloadWithPayloadConfig:()Utils rtpSampleRate:.cold.3()
{
  OUTLINED_FUNCTION_11_0();
  if (VRTraceGetErrorLogLevelForModule() >= 3)
  {
    VRTraceErrorLogLevelToCSTR();
    if (OUTLINED_FUNCTION_40())
    {
      OUTLINED_FUNCTION_5_0();
      OUTLINED_FUNCTION_6();
      OUTLINED_FUNCTION_8_0();
      OUTLINED_FUNCTION_6_0(&dword_1DB56E000, v0, v1, " [%s] %s:%d mediaFlags=%u is too large for packed format", v2, v3, v4, v5, v6);
    }
  }

  OUTLINED_FUNCTION_20();
}

- (void)newCompactPayloadWithPayloadConfig:()Utils rtpSampleRate:.cold.4()
{
  OUTLINED_FUNCTION_11_0();
  if (VRTraceGetErrorLogLevelForModule() >= 3)
  {
    VRTraceErrorLogLevelToCSTR();
    if (OUTLINED_FUNCTION_40())
    {
      OUTLINED_FUNCTION_5_0();
      OUTLINED_FUNCTION_6();
      OUTLINED_FUNCTION_8_0();
      OUTLINED_FUNCTION_6_0(&dword_1DB56E000, v0, v1, " [%s] %s:%d negotiationCipherSuite=%u is too large for packed format", v2, v3, v4, v5, v6);
    }
  }

  OUTLINED_FUNCTION_20();
}

- (void)newCompactPayloadWithPayloadConfig:()Utils rtpSampleRate:.cold.5()
{
  OUTLINED_FUNCTION_11_0();
  if (VRTraceGetErrorLogLevelForModule() >= 3)
  {
    VRTraceErrorLogLevelToCSTR();
    if (OUTLINED_FUNCTION_40())
    {
      OUTLINED_FUNCTION_5_0();
      OUTLINED_FUNCTION_6();
      OUTLINED_FUNCTION_8_0();
      OUTLINED_FUNCTION_6_0(&dword_1DB56E000, v0, v1, " [%s] %s:%d Unknown rtpSampleRate=%u", v2, v3, v4, v5, v6);
    }
  }

  OUTLINED_FUNCTION_20();
}

- (void)newCompactPayloadWithPayloadConfig:()Utils rtpSampleRate:.cold.6()
{
  OUTLINED_FUNCTION_11_0();
  if (VRTraceGetErrorLogLevelForModule() >= 3)
  {
    VRTraceErrorLogLevelToCSTR();
    if (OUTLINED_FUNCTION_40())
    {
      OUTLINED_FUNCTION_5_0();
      OUTLINED_FUNCTION_6();
      OUTLINED_FUNCTION_8_0();
      OUTLINED_FUNCTION_6_0(&dword_1DB56E000, v0, v1, " [%s] %s:%d rtpSampleRate=%u is too large for packed format", v2, v3, v4, v5, v6);
    }
  }

  OUTLINED_FUNCTION_20();
}

- (void)newCompactPayloadWithPayloadConfig:()Utils rtpSampleRate:.cold.7()
{
  OUTLINED_FUNCTION_11_0();
  if (VRTraceGetErrorLogLevelForModule() >= 3)
  {
    VRTraceErrorLogLevelToCSTR();
    if (OUTLINED_FUNCTION_40())
    {
      OUTLINED_FUNCTION_5_0();
      OUTLINED_FUNCTION_6();
      OUTLINED_FUNCTION_8_0();
      OUTLINED_FUNCTION_6_0(&dword_1DB56E000, v0, v1, " [%s] %s:%d rtcpFlags=%u is too large for packed format", v2, v3, v4, v5, v6);
    }
  }

  OUTLINED_FUNCTION_20();
}

- (void)newCompactPayloadWithPayloadConfig:()Utils rtpSampleRate:.cold.8(void *a1)
{
  if (VRTraceGetErrorLogLevelForModule() >= 3)
  {
    VRTraceErrorLogLevelToCSTR();
    if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
    {
      [a1 rtpPayload];
      OUTLINED_FUNCTION_5_0();
      OUTLINED_FUNCTION_6();
      OUTLINED_FUNCTION_6_23();
      OUTLINED_FUNCTION_2();
      _os_log_error_impl(v2, v3, v4, v5, v6, 0x22u);
    }
  }

  OUTLINED_FUNCTION_20();
}

- (void)newCompactPayloadWithPayloadConfig:()Utils rtpSampleRate:.cold.9()
{
  OUTLINED_FUNCTION_11_0();
  if (VRTraceGetErrorLogLevelForModule() >= 3)
  {
    VRTraceErrorLogLevelToCSTR();
    if (OUTLINED_FUNCTION_40())
    {
      OUTLINED_FUNCTION_5_0();
      OUTLINED_FUNCTION_6();
      OUTLINED_FUNCTION_8_0();
      OUTLINED_FUNCTION_6_0(&dword_1DB56E000, v0, v1, " [%s] %s:%d codecType=%u is too large for packed format", v2, v3, v4, v5, v6);
    }
  }

  OUTLINED_FUNCTION_20();
}

@end